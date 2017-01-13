; ModuleID = './MultiSource.Benchmarks.mediabench/89.mpeg2.mpeg2dec.getpic.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.layer_data = type { i32, [2048 x i8], i8*, [16 x i8], i32, i8*, i32, i32, [64 x i32], [64 x i32], [64 x i32], [64 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x [64 x i16]] }

@picture_structure = external global i32, align 4
@Second_Field = external global i32, align 4
@.str = private unnamed_addr constant [30 x i8] c"odd number of field pictures\0A\00", align 1
@Ersatz_Flag = external global i32, align 4
@base = external global %struct.layer_data, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"last frame incomplete, not stored\0A\00", align 1
@backward_reference_frame = external global [3 x i8*], align 16
@mb_width = external global i32, align 4
@mb_height = external global i32, align 4
@Two_Streams = external global i32, align 4
@enhan = external global %struct.layer_data, align 8
@Fault_Flag = external global i32, align 4
@ld = external global %struct.layer_data*, align 8
@Quiet_Flag = external global i32, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Too many macroblocks in picture\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"start_of_slice(): Premature end of picture\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"DP: Premature end of picture\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"start_of_slice(): MBAinc unsuccessful\0A\00", align 1
@Non_Linear_quantizer_scale = external global [32 x i8], align 16
@concealment_motion_vectors = external global i32, align 4
@f_code = external global [2 x [2 x i32]], align 16
@forward_f_code = external global i32, align 4
@full_pel_forward_vector = external global i32, align 4
@backward_f_code = external global i32, align 4
@full_pel_backward_vector = external global i32, align 4
@chroma_format = external global i32, align 4
@block_count = external global i32, align 4
@picture_coding_type = external global i32, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"D picture end_of_macroblock bit\00", align 1
@macroblock_modes.stwc_table = internal global [3 x [4 x i8]] [[4 x i8] c"\06\03\07\04", [4 x i8] c"\02\01\05\04", [4 x i8] c"\02\05\07\04"], align 1
@macroblock_modes.stwclass_table = internal global [9 x i8] c"\00\01\02\01\01\02\03\03\04", align 1
@spatial_temporal_weight_code_table_index = external global i32, align 4
@frame_pred_frame_dct = external global i32, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"SNR: Premature end of picture\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Cant't synchronize streams\0A\00", align 1
@Reference_IDCT_Flag = external global i32, align 4
@current_frame = external global [3 x i8*], align 16
@Coded_Picture_Width = external global i32, align 4
@Chroma_Width = external global i32, align 4
@Clip = external global i8*, align 8
@auxframe = external global [3 x i8*], align 16
@forward_reference_frame = external global [3 x i8*], align 16
@frame_reorder.Oldref_progressive_frame = internal global i32 0, align 4
@frame_reorder.Newref_progressive_frame = internal global i32 0, align 4
@progressive_frame = external global i32, align 4

; Function Attrs: nounwind uwtable
define void @Decode_Picture(i32 %bitstream_framenum, i32 %sequence_framenum) #0 {
entry:
  %bitstream_framenum.addr = alloca i32, align 4
  %sequence_framenum.addr = alloca i32, align 4
  store i32 %bitstream_framenum, i32* %bitstream_framenum.addr, align 4
  store i32 %sequence_framenum, i32* %sequence_framenum.addr, align 4
  %0 = load i32, i32* @picture_structure, align 4
  %cmp = icmp eq i32 %0, 3
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @Second_Field, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* @Second_Field, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  call void @Update_Picture_Buffers()
  %2 = load i32, i32* @Ersatz_Flag, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %3 = load i32, i32* %bitstream_framenum.addr, align 4
  %4 = load i32, i32* %sequence_framenum.addr, align 4
  call void @Substitute_Frame_Buffer(i32 %3, i32 %4)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %5 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 20), align 4
  %tobool4 = icmp ne i32 %5, 0
  br i1 %tobool4, label %land.lhs.true.5, label %if.end.8

land.lhs.true.5:                                  ; preds = %if.end.3
  %6 = load i32, i32* @Second_Field, align 4
  %tobool6 = icmp ne i32 %6, 0
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %land.lhs.true.5
  call void @Spatial_Prediction()
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %land.lhs.true.5, %if.end.3
  %7 = load i32, i32* %bitstream_framenum.addr, align 4
  call void @picture_data(i32 %7)
  %8 = load i32, i32* %bitstream_framenum.addr, align 4
  %9 = load i32, i32* %sequence_framenum.addr, align 4
  call void @frame_reorder(i32 %8, i32 %9)
  %10 = load i32, i32* @picture_structure, align 4
  %cmp9 = icmp ne i32 %10, 3
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.8
  %11 = load i32, i32* @Second_Field, align 4
  %tobool11 = icmp ne i32 %11, 0
  %lnot = xor i1 %tobool11, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* @Second_Field, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end.8
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @Update_Picture_Buffers() #0 {
entry:
  %cc = alloca i32, align 4
  %tmp = alloca i8*, align 8
  store i32 0, i32* %cc, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %cc, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* @picture_coding_type, align 4
  %cmp1 = icmp eq i32 %1, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %2 = load i32, i32* %cc, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [3 x i8*], [3 x i8*]* @auxframe, i32 0, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8
  %4 = load i32, i32* %cc, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [3 x i8*], [3 x i8*]* @current_frame, i32 0, i64 %idxprom2
  store i8* %3, i8** %arrayidx3, align 8
  br label %if.end.17

if.else:                                          ; preds = %for.body
  %5 = load i32, i32* @Second_Field, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.else
  %6 = load i32, i32* %cc, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [3 x i8*], [3 x i8*]* @forward_reference_frame, i32 0, i64 %idxprom5
  %7 = load i8*, i8** %arrayidx6, align 8
  store i8* %7, i8** %tmp, align 8
  %8 = load i32, i32* %cc, align 4
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [3 x i8*], [3 x i8*]* @backward_reference_frame, i32 0, i64 %idxprom7
  %9 = load i8*, i8** %arrayidx8, align 8
  %10 = load i32, i32* %cc, align 4
  %idxprom9 = sext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds [3 x i8*], [3 x i8*]* @forward_reference_frame, i32 0, i64 %idxprom9
  store i8* %9, i8** %arrayidx10, align 8
  %11 = load i8*, i8** %tmp, align 8
  %12 = load i32, i32* %cc, align 4
  %idxprom11 = sext i32 %12 to i64
  %arrayidx12 = getelementptr inbounds [3 x i8*], [3 x i8*]* @backward_reference_frame, i32 0, i64 %idxprom11
  store i8* %11, i8** %arrayidx12, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.else
  %13 = load i32, i32* %cc, align 4
  %idxprom13 = sext i32 %13 to i64
  %arrayidx14 = getelementptr inbounds [3 x i8*], [3 x i8*]* @backward_reference_frame, i32 0, i64 %idxprom13
  %14 = load i8*, i8** %arrayidx14, align 8
  %15 = load i32, i32* %cc, align 4
  %idxprom15 = sext i32 %15 to i64
  %arrayidx16 = getelementptr inbounds [3 x i8*], [3 x i8*]* @current_frame, i32 0, i64 %idxprom15
  store i8* %14, i8** %arrayidx16, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %if.then
  %16 = load i32, i32* @picture_structure, align 4
  %cmp18 = icmp eq i32 %16, 2
  br i1 %cmp18, label %if.then.19, label %if.end.23

if.then.19:                                       ; preds = %if.end.17
  %17 = load i32, i32* %cc, align 4
  %cmp20 = icmp eq i32 %17, 0
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.19
  %18 = load i32, i32* @Coded_Picture_Width, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.19
  %19 = load i32, i32* @Chroma_Width, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %18, %cond.true ], [ %19, %cond.false ]
  %20 = load i32, i32* %cc, align 4
  %idxprom21 = sext i32 %20 to i64
  %arrayidx22 = getelementptr inbounds [3 x i8*], [3 x i8*]* @current_frame, i32 0, i64 %idxprom21
  %21 = load i8*, i8** %arrayidx22, align 8
  %idx.ext = sext i32 %cond to i64
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 %idx.ext
  store i8* %add.ptr, i8** %arrayidx22, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %cond.end, %if.end.17
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %22 = load i32, i32* %cc, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %cc, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @Substitute_Frame_Buffer(i32, i32) #1

declare void @Spatial_Prediction() #1

; Function Attrs: nounwind uwtable
define internal void @picture_data(i32 %framenum) #0 {
entry:
  %framenum.addr = alloca i32, align 4
  %MBAmax = alloca i32, align 4
  %ret = alloca i32, align 4
  store i32 %framenum, i32* %framenum.addr, align 4
  %0 = load i32, i32* @mb_width, align 4
  %1 = load i32, i32* @mb_height, align 4
  %mul = mul nsw i32 %0, %1
  store i32 %mul, i32* %MBAmax, align 4
  %2 = load i32, i32* @picture_structure, align 4
  %cmp = icmp ne i32 %2, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %MBAmax, align 4
  %shr = ashr i32 %3, 1
  store i32 %shr, i32* %MBAmax, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %for.cond

for.cond:                                         ; preds = %if.end.3, %if.end
  %4 = load i32, i32* %framenum.addr, align 4
  %5 = load i32, i32* %MBAmax, align 4
  %call = call i32 @slice(i32 %4, i32 %5)
  store i32 %call, i32* %ret, align 4
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %for.cond
  ret void

if.end.3:                                         ; preds = %for.cond
  br label %for.cond
}

; Function Attrs: nounwind uwtable
define internal void @frame_reorder(i32 %Bitstream_Framenum, i32 %Sequence_Framenum) #0 {
entry:
  %Bitstream_Framenum.addr = alloca i32, align 4
  %Sequence_Framenum.addr = alloca i32, align 4
  store i32 %Bitstream_Framenum, i32* %Bitstream_Framenum.addr, align 4
  store i32 %Sequence_Framenum, i32* %Sequence_Framenum.addr, align 4
  %0 = load i32, i32* %Sequence_Framenum.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else.7

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @picture_structure, align 4
  %cmp1 = icmp eq i32 %1, 3
  br i1 %cmp1, label %if.then.2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %2 = load i32, i32* @Second_Field, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then.2, label %if.end.6

if.then.2:                                        ; preds = %lor.lhs.false, %if.then
  %3 = load i32, i32* @picture_coding_type, align 4
  %cmp3 = icmp eq i32 %3, 3
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then.2
  %4 = load i32, i32* %Bitstream_Framenum.addr, align 4
  %sub = sub nsw i32 %4, 1
  call void @Write_Frame(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @auxframe, i32 0, i32 0), i32 %sub)
  br label %if.end

if.else:                                          ; preds = %if.then.2
  %5 = load i32, i32* @progressive_frame, align 4
  store i32 %5, i32* @frame_reorder.Newref_progressive_frame, align 4
  %6 = load i32, i32* @frame_reorder.Oldref_progressive_frame, align 4
  store i32 %6, i32* @progressive_frame, align 4
  %7 = load i32, i32* %Bitstream_Framenum.addr, align 4
  %sub5 = sub nsw i32 %7, 1
  call void @Write_Frame(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @forward_reference_frame, i32 0, i32 0), i32 %sub5)
  %8 = load i32, i32* @frame_reorder.Newref_progressive_frame, align 4
  store i32 %8, i32* @progressive_frame, align 4
  store i32 %8, i32* @frame_reorder.Oldref_progressive_frame, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %lor.lhs.false
  br label %if.end.8

if.else.7:                                        ; preds = %entry
  %9 = load i32, i32* @progressive_frame, align 4
  store i32 %9, i32* @frame_reorder.Oldref_progressive_frame, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.else.7, %if.end.6
  ret void
}

; Function Attrs: nounwind uwtable
define void @Output_Last_Frame_of_Sequence(i32 %Framenum) #0 {
entry:
  %Framenum.addr = alloca i32, align 4
  store i32 %Framenum, i32* %Framenum.addr, align 4
  %0 = load i32, i32* @Second_Field, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %Framenum.addr, align 4
  %sub = sub nsw i32 %1, 1
  call void @Write_Frame(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @backward_reference_frame, i32 0, i32 0), i32 %sub)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @Write_Frame(i8**, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @slice(i32 %framenum, i32 %MBAmax) #0 {
entry:
  %retval = alloca i32, align 4
  %framenum.addr = alloca i32, align 4
  %MBAmax.addr = alloca i32, align 4
  %MBA = alloca i32, align 4
  %MBAinc = alloca i32, align 4
  %macroblock_type = alloca i32, align 4
  %motion_type = alloca i32, align 4
  %dct_type = alloca i32, align 4
  %dc_dct_pred = alloca [3 x i32], align 4
  %PMV = alloca [2 x [2 x [2 x i32]]], align 16
  %motion_vertical_field_select = alloca [2 x [2 x i32]], align 16
  %dmvector = alloca [2 x i32], align 4
  %stwtype = alloca i32, align 4
  %stwclass = alloca i32, align 4
  %SNRMBA = alloca i32, align 4
  %SNRMBAinc = alloca i32, align 4
  %ret = alloca i32, align 4
  store i32 %framenum, i32* %framenum.addr, align 4
  store i32 %MBAmax, i32* %MBAmax.addr, align 4
  store i32 0, i32* %MBA, align 4
  store i32 0, i32* %MBAinc, align 4
  %0 = load i32, i32* %MBAmax.addr, align 4
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %dc_dct_pred, i32 0, i32 0
  %arraydecay1 = getelementptr inbounds [2 x [2 x [2 x i32]]], [2 x [2 x [2 x i32]]]* %PMV, i32 0, i32 0
  %call = call i32 @start_of_slice(i32 %0, i32* %MBA, i32* %MBAinc, i32* %arraydecay, [2 x [2 x i32]]* %arraydecay1)
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %ret, align 4
  store i32 %1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* @Two_Streams, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %if.end
  %3 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @enhan, i32 0, i32 17), align 4
  %cmp2 = icmp eq i32 %3, 3
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 0, i32* %SNRMBA, align 4
  store i32 0, i32* %SNRMBAinc, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %land.lhs.true, %if.end
  store i32 0, i32* @Fault_Flag, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.72, %if.end.4
  %4 = load i32, i32* %MBA, align 4
  %5 = load i32, i32* %MBAmax.addr, align 4
  %cmp5 = icmp sge i32 %4, %5
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %for.cond
  store i32 -1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %for.cond
  store %struct.layer_data* @base, %struct.layer_data** @ld, align 8
  %6 = load i32, i32* %MBAinc, align 4
  %cmp8 = icmp eq i32 %6, 0
  br i1 %cmp8, label %if.then.9, label %if.end.29

if.then.9:                                        ; preds = %if.end.7
  %7 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 17), align 4
  %cmp10 = icmp eq i32 %7, 1
  br i1 %cmp10, label %land.lhs.true.11, label %if.end.14

land.lhs.true.11:                                 ; preds = %if.then.9
  %8 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 21), align 4
  %cmp12 = icmp eq i32 %8, 1
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %land.lhs.true.11
  store %struct.layer_data* @enhan, %struct.layer_data** @ld, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %land.lhs.true.11, %if.then.9
  %call15 = call i32 @Show_Bits(i32 23)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %lor.lhs.false, label %if.then.18

lor.lhs.false:                                    ; preds = %if.end.14
  %9 = load i32, i32* @Fault_Flag, align 4
  %tobool17 = icmp ne i32 %9, 0
  br i1 %tobool17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %lor.lhs.false, %if.end.14
  br label %resync

resync:                                           ; preds = %if.then.48, %if.then.26, %if.then.18
  store i32 0, i32* @Fault_Flag, align 4
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %10 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 17), align 4
  %cmp19 = icmp eq i32 %10, 1
  br i1 %cmp19, label %land.lhs.true.20, label %if.end.23

land.lhs.true.20:                                 ; preds = %if.else
  %11 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 21), align 4
  %cmp21 = icmp eq i32 %11, 1
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %land.lhs.true.20
  store %struct.layer_data* @enhan, %struct.layer_data** @ld, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %land.lhs.true.20, %if.else
  %call24 = call i32 @Get_macroblock_address_increment()
  store i32 %call24, i32* %MBAinc, align 4
  %12 = load i32, i32* @Fault_Flag, align 4
  %tobool25 = icmp ne i32 %12, 0
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.23
  br label %resync

if.end.27:                                        ; preds = %if.end.23
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.end.7
  %13 = load i32, i32* %MBA, align 4
  %14 = load i32, i32* %MBAmax.addr, align 4
  %cmp30 = icmp sge i32 %13, %14
  br i1 %cmp30, label %if.then.31, label %if.end.36

if.then.31:                                       ; preds = %if.end.29
  %15 = load i32, i32* @Quiet_Flag, align 4
  %tobool32 = icmp ne i32 %15, 0
  br i1 %tobool32, label %if.end.35, label %if.then.33

if.then.33:                                       ; preds = %if.then.31
  %call34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %if.then.31
  store i32 -1, i32* %retval
  br label %return

if.end.36:                                        ; preds = %if.end.29
  %16 = load i32, i32* %MBAinc, align 4
  %cmp37 = icmp eq i32 %16, 1
  br i1 %cmp37, label %if.then.38, label %if.else.50

if.then.38:                                       ; preds = %if.end.36
  %arraydecay39 = getelementptr inbounds [2 x [2 x [2 x i32]]], [2 x [2 x [2 x i32]]]* %PMV, i32 0, i32 0
  %arraydecay40 = getelementptr inbounds [3 x i32], [3 x i32]* %dc_dct_pred, i32 0, i32 0
  %arraydecay41 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %motion_vertical_field_select, i32 0, i32 0
  %arraydecay42 = getelementptr inbounds [2 x i32], [2 x i32]* %dmvector, i32 0, i32 0
  %call43 = call i32 @decode_macroblock(i32* %macroblock_type, i32* %stwtype, i32* %stwclass, i32* %motion_type, i32* %dct_type, [2 x [2 x i32]]* %arraydecay39, i32* %arraydecay40, [2 x i32]* %arraydecay41, i32* %arraydecay42)
  store i32 %call43, i32* %ret, align 4
  %17 = load i32, i32* %ret, align 4
  %cmp44 = icmp eq i32 %17, -1
  br i1 %cmp44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.then.38
  store i32 -1, i32* %retval
  br label %return

if.end.46:                                        ; preds = %if.then.38
  %18 = load i32, i32* %ret, align 4
  %cmp47 = icmp eq i32 %18, 0
  br i1 %cmp47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.end.46
  br label %resync

if.end.49:                                        ; preds = %if.end.46
  br label %if.end.54

if.else.50:                                       ; preds = %if.end.36
  %arraydecay51 = getelementptr inbounds [3 x i32], [3 x i32]* %dc_dct_pred, i32 0, i32 0
  %arraydecay52 = getelementptr inbounds [2 x [2 x [2 x i32]]], [2 x [2 x [2 x i32]]]* %PMV, i32 0, i32 0
  %arraydecay53 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %motion_vertical_field_select, i32 0, i32 0
  call void @skipped_macroblock(i32* %arraydecay51, [2 x [2 x i32]]* %arraydecay52, i32* %motion_type, [2 x i32]* %arraydecay53, i32* %stwtype, i32* %macroblock_type)
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.50, %if.end.49
  %19 = load i32, i32* @Two_Streams, align 4
  %tobool55 = icmp ne i32 %19, 0
  br i1 %tobool55, label %land.lhs.true.56, label %if.end.59

land.lhs.true.56:                                 ; preds = %if.end.54
  %20 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @enhan, i32 0, i32 17), align 4
  %cmp57 = icmp eq i32 %20, 3
  br i1 %cmp57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %land.lhs.true.56
  %21 = load i32, i32* %MBA, align 4
  %22 = load i32, i32* %MBAmax.addr, align 4
  call void @Decode_SNR_Macroblock(i32* %SNRMBA, i32* %SNRMBAinc, i32 %21, i32 %22, i32* %dct_type)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.58, %land.lhs.true.56, %if.end.54
  %23 = load i32, i32* %MBA, align 4
  %24 = load i32, i32* %macroblock_type, align 4
  %25 = load i32, i32* %motion_type, align 4
  %arraydecay60 = getelementptr inbounds [2 x [2 x [2 x i32]]], [2 x [2 x [2 x i32]]]* %PMV, i32 0, i32 0
  %arraydecay61 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %motion_vertical_field_select, i32 0, i32 0
  %arraydecay62 = getelementptr inbounds [2 x i32], [2 x i32]* %dmvector, i32 0, i32 0
  %26 = load i32, i32* %stwtype, align 4
  %27 = load i32, i32* %dct_type, align 4
  call void @motion_compensation(i32 %23, i32 %24, i32 %25, [2 x [2 x i32]]* %arraydecay60, [2 x i32]* %arraydecay61, i32* %arraydecay62, i32 %26, i32 %27)
  %28 = load i32, i32* %MBA, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %MBA, align 4
  %29 = load i32, i32* %MBAinc, align 4
  %dec = add nsw i32 %29, -1
  store i32 %dec, i32* %MBAinc, align 4
  %30 = load i32, i32* @Two_Streams, align 4
  %tobool63 = icmp ne i32 %30, 0
  br i1 %tobool63, label %land.lhs.true.64, label %if.end.69

land.lhs.true.64:                                 ; preds = %if.end.59
  %31 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @enhan, i32 0, i32 17), align 4
  %cmp65 = icmp eq i32 %31, 3
  br i1 %cmp65, label %if.then.66, label %if.end.69

if.then.66:                                       ; preds = %land.lhs.true.64
  %32 = load i32, i32* %SNRMBA, align 4
  %inc67 = add nsw i32 %32, 1
  store i32 %inc67, i32* %SNRMBA, align 4
  %33 = load i32, i32* %SNRMBAinc, align 4
  %dec68 = add nsw i32 %33, -1
  store i32 %dec68, i32* %SNRMBAinc, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.66, %land.lhs.true.64, %if.end.59
  %34 = load i32, i32* %MBA, align 4
  %35 = load i32, i32* %MBAmax.addr, align 4
  %cmp70 = icmp sge i32 %34, %35
  br i1 %cmp70, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.end.69
  store i32 -1, i32* %retval
  br label %return

if.end.72:                                        ; preds = %if.end.69
  br label %for.cond

return:                                           ; preds = %if.then.71, %if.then.45, %if.end.35, %resync, %if.then.6, %if.then
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal i32 @start_of_slice(i32 %MBAmax, i32* %MBA, i32* %MBAinc, i32* %dc_dct_pred, [2 x [2 x i32]]* %PMV) #0 {
entry:
  %retval = alloca i32, align 4
  %MBAmax.addr = alloca i32, align 4
  %MBA.addr = alloca i32*, align 8
  %MBAinc.addr = alloca i32*, align 8
  %dc_dct_pred.addr = alloca i32*, align 8
  %PMV.addr = alloca [2 x [2 x i32]]*, align 8
  %code = alloca i32, align 4
  %slice_vert_pos_ext = alloca i32, align 4
  store i32 %MBAmax, i32* %MBAmax.addr, align 4
  store i32* %MBA, i32** %MBA.addr, align 8
  store i32* %MBAinc, i32** %MBAinc.addr, align 8
  store i32* %dc_dct_pred, i32** %dc_dct_pred.addr, align 8
  store [2 x [2 x i32]]* %PMV, [2 x [2 x i32]]** %PMV.addr, align 8
  store %struct.layer_data* @base, %struct.layer_data** @ld, align 8
  store i32 0, i32* @Fault_Flag, align 4
  call void @next_start_code()
  %call = call i32 @Show_Bits(i32 32)
  store i32 %call, i32* %code, align 4
  %0 = load i32, i32* %code, align 4
  %cmp = icmp ult i32 %0, 257
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %code, align 4
  %cmp1 = icmp ugt i32 %1, 431
  br i1 %cmp1, label %if.then, label %if.end.4

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load i32, i32* @Quiet_Flag, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  store i32 -1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %lor.lhs.false
  call void @Flush_Buffer32()
  %call5 = call i32 @slice_header()
  store i32 %call5, i32* %slice_vert_pos_ext, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 17), align 4
  %cmp6 = icmp eq i32 %3, 1
  br i1 %cmp6, label %if.then.7, label %if.end.22

if.then.7:                                        ; preds = %if.end.4
  store %struct.layer_data* @enhan, %struct.layer_data** @ld, align 8
  call void @next_start_code()
  %call8 = call i32 @Show_Bits(i32 32)
  store i32 %call8, i32* %code, align 4
  %4 = load i32, i32* %code, align 4
  %cmp9 = icmp ult i32 %4, 257
  br i1 %cmp9, label %if.then.12, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %if.then.7
  %5 = load i32, i32* %code, align 4
  %cmp11 = icmp ugt i32 %5, 431
  br i1 %cmp11, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %lor.lhs.false.10, %if.then.7
  %6 = load i32, i32* @Quiet_Flag, align 4
  %tobool13 = icmp ne i32 %6, 0
  br i1 %tobool13, label %if.end.16, label %if.then.14

if.then.14:                                       ; preds = %if.then.12
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.then.12
  store i32 -1, i32* %retval
  br label %return

if.end.17:                                        ; preds = %lor.lhs.false.10
  call void @Flush_Buffer32()
  %call18 = call i32 @slice_header()
  store i32 %call18, i32* %slice_vert_pos_ext, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 21), align 4
  %cmp19 = icmp ne i32 %7, 1
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.17
  store %struct.layer_data* @base, %struct.layer_data** @ld, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.end.17
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end.4
  %call23 = call i32 @Get_macroblock_address_increment()
  %8 = load i32*, i32** %MBAinc.addr, align 8
  store i32 %call23, i32* %8, align 4
  %9 = load i32, i32* @Fault_Flag, align 4
  %tobool24 = icmp ne i32 %9, 0
  br i1 %tobool24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.end.22
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.27:                                        ; preds = %if.end.22
  %10 = load i32, i32* %slice_vert_pos_ext, align 4
  %shl = shl i32 %10, 7
  %11 = load i32, i32* %code, align 4
  %and = and i32 %11, 255
  %add = add i32 %shl, %and
  %sub = sub i32 %add, 1
  %12 = load i32, i32* @mb_width, align 4
  %mul = mul i32 %sub, %12
  %13 = load i32*, i32** %MBAinc.addr, align 8
  %14 = load i32, i32* %13, align 4
  %add28 = add i32 %mul, %14
  %sub29 = sub i32 %add28, 1
  %15 = load i32*, i32** %MBA.addr, align 8
  store i32 %sub29, i32* %15, align 4
  %16 = load i32*, i32** %MBAinc.addr, align 8
  store i32 1, i32* %16, align 4
  %17 = load i32*, i32** %dc_dct_pred.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %17, i64 2
  store i32 0, i32* %arrayidx, align 4
  %18 = load i32*, i32** %dc_dct_pred.addr, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 0, i32* %arrayidx30, align 4
  %19 = load i32*, i32** %dc_dct_pred.addr, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 0, i32* %arrayidx31, align 4
  %20 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx32 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %20, i64 1
  %arrayidx33 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx32, i32 0, i64 0
  %arrayidx34 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx33, i32 0, i64 1
  store i32 0, i32* %arrayidx34, align 4
  %21 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx35 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %21, i64 1
  %arrayidx36 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx35, i32 0, i64 0
  %arrayidx37 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx36, i32 0, i64 0
  store i32 0, i32* %arrayidx37, align 4
  %22 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx38 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %22, i64 0
  %arrayidx39 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx38, i32 0, i64 0
  %arrayidx40 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx39, i32 0, i64 1
  store i32 0, i32* %arrayidx40, align 4
  %23 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx41 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %23, i64 0
  %arrayidx42 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx41, i32 0, i64 0
  %arrayidx43 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx42, i32 0, i64 0
  store i32 0, i32* %arrayidx43, align 4
  %24 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx44 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %24, i64 1
  %arrayidx45 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx44, i32 0, i64 1
  %arrayidx46 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx45, i32 0, i64 1
  store i32 0, i32* %arrayidx46, align 4
  %25 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx47 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %25, i64 1
  %arrayidx48 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx47, i32 0, i64 1
  %arrayidx49 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx48, i32 0, i64 0
  store i32 0, i32* %arrayidx49, align 4
  %26 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx50 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %26, i64 0
  %arrayidx51 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx50, i32 0, i64 1
  %arrayidx52 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx51, i32 0, i64 1
  store i32 0, i32* %arrayidx52, align 4
  %27 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx53 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %27, i64 0
  %arrayidx54 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx53, i32 0, i64 1
  %arrayidx55 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx54, i32 0, i64 0
  store i32 0, i32* %arrayidx55, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.27, %if.then.25, %if.end.16, %if.end
  %28 = load i32, i32* %retval
  ret i32 %28
}

declare i32 @Show_Bits(i32) #1

declare i32 @Get_macroblock_address_increment() #1

; Function Attrs: nounwind uwtable
define internal i32 @decode_macroblock(i32* %macroblock_type, i32* %stwtype, i32* %stwclass, i32* %motion_type, i32* %dct_type, [2 x [2 x i32]]* %PMV, i32* %dc_dct_pred, [2 x i32]* %motion_vertical_field_select, i32* %dmvector) #0 {
entry:
  %retval = alloca i32, align 4
  %macroblock_type.addr = alloca i32*, align 8
  %stwtype.addr = alloca i32*, align 8
  %stwclass.addr = alloca i32*, align 8
  %motion_type.addr = alloca i32*, align 8
  %dct_type.addr = alloca i32*, align 8
  %PMV.addr = alloca [2 x [2 x i32]]*, align 8
  %dc_dct_pred.addr = alloca i32*, align 8
  %motion_vertical_field_select.addr = alloca [2 x i32]*, align 8
  %dmvector.addr = alloca i32*, align 8
  %quantizer_scale_code = alloca i32, align 4
  %comp = alloca i32, align 4
  %motion_vector_count = alloca i32, align 4
  %mv_format = alloca i32, align 4
  %dmv = alloca i32, align 4
  %mvscale = alloca i32, align 4
  %coded_block_pattern = alloca i32, align 4
  store i32* %macroblock_type, i32** %macroblock_type.addr, align 8
  store i32* %stwtype, i32** %stwtype.addr, align 8
  store i32* %stwclass, i32** %stwclass.addr, align 8
  store i32* %motion_type, i32** %motion_type.addr, align 8
  store i32* %dct_type, i32** %dct_type.addr, align 8
  store [2 x [2 x i32]]* %PMV, [2 x [2 x i32]]** %PMV.addr, align 8
  store i32* %dc_dct_pred, i32** %dc_dct_pred.addr, align 8
  store [2 x i32]* %motion_vertical_field_select, [2 x i32]** %motion_vertical_field_select.addr, align 8
  store i32* %dmvector, i32** %dmvector.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 17), align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 21), align 4
  %cmp1 = icmp sle i32 %1, 2
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  store %struct.layer_data* @enhan, %struct.layer_data** @ld, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  store %struct.layer_data* @base, %struct.layer_data** @ld, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %2 = load i32*, i32** %macroblock_type.addr, align 8
  %3 = load i32*, i32** %stwtype.addr, align 8
  %4 = load i32*, i32** %stwclass.addr, align 8
  %5 = load i32*, i32** %motion_type.addr, align 8
  %6 = load i32*, i32** %dct_type.addr, align 8
  call void @macroblock_modes(i32* %2, i32* %3, i32* %4, i32* %5, i32* %motion_vector_count, i32* %mv_format, i32* %dmv, i32* %mvscale, i32* %6)
  %7 = load i32, i32* @Fault_Flag, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end.3
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end.3
  %8 = load i32*, i32** %macroblock_type.addr, align 8
  %9 = load i32, i32* %8, align 4
  %and = and i32 %9, 16
  %tobool6 = icmp ne i32 %and, 0
  br i1 %tobool6, label %if.then.7, label %if.end.19

if.then.7:                                        ; preds = %if.end.5
  %call = call i32 @Get_Bits(i32 5)
  store i32 %call, i32* %quantizer_scale_code, align 4
  %10 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %MPEG2_Flag = getelementptr inbounds %struct.layer_data, %struct.layer_data* %10, i32 0, i32 16
  %11 = load i32, i32* %MPEG2_Flag, align 4
  %tobool8 = icmp ne i32 %11, 0
  br i1 %tobool8, label %if.then.9, label %if.else.11

if.then.9:                                        ; preds = %if.then.7
  %12 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %q_scale_type = getelementptr inbounds %struct.layer_data, %struct.layer_data* %12, i32 0, i32 18
  %13 = load i32, i32* %q_scale_type, align 4
  %tobool10 = icmp ne i32 %13, 0
  br i1 %tobool10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.9
  %14 = load i32, i32* %quantizer_scale_code, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds [32 x i8], [32 x i8]* @Non_Linear_quantizer_scale, i32 0, i64 %idxprom
  %15 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %15 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then.9
  %16 = load i32, i32* %quantizer_scale_code, align 4
  %shl = shl i32 %16, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %shl, %cond.false ]
  %17 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %quantizer_scale = getelementptr inbounds %struct.layer_data, %struct.layer_data* %17, i32 0, i32 22
  store i32 %cond, i32* %quantizer_scale, align 4
  br label %if.end.13

if.else.11:                                       ; preds = %if.then.7
  %18 = load i32, i32* %quantizer_scale_code, align 4
  %19 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %quantizer_scale12 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %19, i32 0, i32 22
  store i32 %18, i32* %quantizer_scale12, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.11, %cond.end
  %20 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 17), align 4
  %cmp14 = icmp eq i32 %20, 1
  br i1 %cmp14, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end.13
  %21 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %quantizer_scale17 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %21, i32 0, i32 22
  %22 = load i32, i32* %quantizer_scale17, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 22), align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.end.13
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.end.5
  %23 = load i32*, i32** %macroblock_type.addr, align 8
  %24 = load i32, i32* %23, align 4
  %and20 = and i32 %24, 8
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.then.25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.19
  %25 = load i32*, i32** %macroblock_type.addr, align 8
  %26 = load i32, i32* %25, align 4
  %and22 = and i32 %26, 1
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %land.lhs.true, label %if.end.36

land.lhs.true:                                    ; preds = %lor.lhs.false
  %27 = load i32, i32* @concealment_motion_vectors, align 4
  %tobool24 = icmp ne i32 %27, 0
  br i1 %tobool24, label %if.then.25, label %if.end.36

if.then.25:                                       ; preds = %land.lhs.true, %if.end.19
  %28 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %MPEG2_Flag26 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %28, i32 0, i32 16
  %29 = load i32, i32* %MPEG2_Flag26, align 4
  %tobool27 = icmp ne i32 %29, 0
  br i1 %tobool27, label %if.then.28, label %if.else.30

if.then.28:                                       ; preds = %if.then.25
  %30 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %31 = load i32*, i32** %dmvector.addr, align 8
  %32 = load [2 x i32]*, [2 x i32]** %motion_vertical_field_select.addr, align 8
  %33 = load i32, i32* %motion_vector_count, align 4
  %34 = load i32, i32* %mv_format, align 4
  %35 = load i32, i32* getelementptr inbounds ([2 x [2 x i32]], [2 x [2 x i32]]* @f_code, i32 0, i64 0, i64 0), align 4
  %sub = sub nsw i32 %35, 1
  %36 = load i32, i32* getelementptr inbounds ([2 x [2 x i32]], [2 x [2 x i32]]* @f_code, i32 0, i64 0, i64 1), align 4
  %sub29 = sub nsw i32 %36, 1
  %37 = load i32, i32* %dmv, align 4
  %38 = load i32, i32* %mvscale, align 4
  call void @motion_vectors([2 x [2 x i32]]* %30, i32* %31, [2 x i32]* %32, i32 0, i32 %33, i32 %34, i32 %sub, i32 %sub29, i32 %37, i32 %38)
  br label %if.end.35

if.else.30:                                       ; preds = %if.then.25
  %39 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx31 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %39, i64 0
  %arrayidx32 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx31, i32 0, i64 0
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx32, i32 0, i32 0
  %40 = load i32*, i32** %dmvector.addr, align 8
  %41 = load i32, i32* @forward_f_code, align 4
  %sub33 = sub nsw i32 %41, 1
  %42 = load i32, i32* @forward_f_code, align 4
  %sub34 = sub nsw i32 %42, 1
  %43 = load i32, i32* @full_pel_forward_vector, align 4
  call void @motion_vector(i32* %arraydecay, i32* %40, i32 %sub33, i32 %sub34, i32 0, i32 0, i32 %43)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.30, %if.then.28
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %land.lhs.true, %lor.lhs.false
  %44 = load i32, i32* @Fault_Flag, align 4
  %tobool37 = icmp ne i32 %44, 0
  br i1 %tobool37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.36
  store i32 0, i32* %retval
  br label %return

if.end.39:                                        ; preds = %if.end.36
  %45 = load i32*, i32** %macroblock_type.addr, align 8
  %46 = load i32, i32* %45, align 4
  %and40 = and i32 %46, 4
  %tobool41 = icmp ne i32 %and40, 0
  br i1 %tobool41, label %if.then.42, label %if.end.55

if.then.42:                                       ; preds = %if.end.39
  %47 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %MPEG2_Flag43 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %47, i32 0, i32 16
  %48 = load i32, i32* %MPEG2_Flag43, align 4
  %tobool44 = icmp ne i32 %48, 0
  br i1 %tobool44, label %if.then.45, label %if.else.48

if.then.45:                                       ; preds = %if.then.42
  %49 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %50 = load i32*, i32** %dmvector.addr, align 8
  %51 = load [2 x i32]*, [2 x i32]** %motion_vertical_field_select.addr, align 8
  %52 = load i32, i32* %motion_vector_count, align 4
  %53 = load i32, i32* %mv_format, align 4
  %54 = load i32, i32* getelementptr inbounds ([2 x [2 x i32]], [2 x [2 x i32]]* @f_code, i32 0, i64 1, i64 0), align 4
  %sub46 = sub nsw i32 %54, 1
  %55 = load i32, i32* getelementptr inbounds ([2 x [2 x i32]], [2 x [2 x i32]]* @f_code, i32 0, i64 1, i64 1), align 4
  %sub47 = sub nsw i32 %55, 1
  %56 = load i32, i32* %mvscale, align 4
  call void @motion_vectors([2 x [2 x i32]]* %49, i32* %50, [2 x i32]* %51, i32 1, i32 %52, i32 %53, i32 %sub46, i32 %sub47, i32 0, i32 %56)
  br label %if.end.54

if.else.48:                                       ; preds = %if.then.42
  %57 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx49 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %57, i64 0
  %arrayidx50 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx49, i32 0, i64 1
  %arraydecay51 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx50, i32 0, i32 0
  %58 = load i32*, i32** %dmvector.addr, align 8
  %59 = load i32, i32* @backward_f_code, align 4
  %sub52 = sub nsw i32 %59, 1
  %60 = load i32, i32* @backward_f_code, align 4
  %sub53 = sub nsw i32 %60, 1
  %61 = load i32, i32* @full_pel_backward_vector, align 4
  call void @motion_vector(i32* %arraydecay51, i32* %58, i32 %sub52, i32 %sub53, i32 0, i32 0, i32 %61)
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.48, %if.then.45
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.end.39
  %62 = load i32, i32* @Fault_Flag, align 4
  %tobool56 = icmp ne i32 %62, 0
  br i1 %tobool56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.end.55
  store i32 0, i32* %retval
  br label %return

if.end.58:                                        ; preds = %if.end.55
  %63 = load i32*, i32** %macroblock_type.addr, align 8
  %64 = load i32, i32* %63, align 4
  %and59 = and i32 %64, 1
  %tobool60 = icmp ne i32 %and59, 0
  br i1 %tobool60, label %land.lhs.true.61, label %if.end.64

land.lhs.true.61:                                 ; preds = %if.end.58
  %65 = load i32, i32* @concealment_motion_vectors, align 4
  %tobool62 = icmp ne i32 %65, 0
  br i1 %tobool62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %land.lhs.true.61
  call void @Flush_Buffer(i32 1)
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %land.lhs.true.61, %if.end.58
  %66 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 17), align 4
  %cmp65 = icmp eq i32 %66, 1
  br i1 %cmp65, label %land.lhs.true.67, label %if.end.71

land.lhs.true.67:                                 ; preds = %if.end.64
  %67 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 21), align 4
  %cmp68 = icmp eq i32 %67, 3
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %land.lhs.true.67
  store %struct.layer_data* @enhan, %struct.layer_data** @ld, align 8
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.70, %land.lhs.true.67, %if.end.64
  %68 = load i32*, i32** %macroblock_type.addr, align 8
  %69 = load i32, i32* %68, align 4
  %and72 = and i32 %69, 2
  %tobool73 = icmp ne i32 %and72, 0
  br i1 %tobool73, label %if.then.74, label %if.else.90

if.then.74:                                       ; preds = %if.end.71
  %call75 = call i32 @Get_coded_block_pattern()
  store i32 %call75, i32* %coded_block_pattern, align 4
  %70 = load i32, i32* @chroma_format, align 4
  %cmp76 = icmp eq i32 %70, 2
  br i1 %cmp76, label %if.then.78, label %if.else.81

if.then.78:                                       ; preds = %if.then.74
  %71 = load i32, i32* %coded_block_pattern, align 4
  %shl79 = shl i32 %71, 2
  %call80 = call i32 @Get_Bits(i32 2)
  %or = or i32 %shl79, %call80
  store i32 %or, i32* %coded_block_pattern, align 4
  br label %if.end.89

if.else.81:                                       ; preds = %if.then.74
  %72 = load i32, i32* @chroma_format, align 4
  %cmp82 = icmp eq i32 %72, 3
  br i1 %cmp82, label %if.then.84, label %if.end.88

if.then.84:                                       ; preds = %if.else.81
  %73 = load i32, i32* %coded_block_pattern, align 4
  %shl85 = shl i32 %73, 6
  %call86 = call i32 @Get_Bits(i32 6)
  %or87 = or i32 %shl85, %call86
  store i32 %or87, i32* %coded_block_pattern, align 4
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.84, %if.else.81
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.then.78
  br label %if.end.99

if.else.90:                                       ; preds = %if.end.71
  %74 = load i32*, i32** %macroblock_type.addr, align 8
  %75 = load i32, i32* %74, align 4
  %and91 = and i32 %75, 1
  %tobool92 = icmp ne i32 %and91, 0
  br i1 %tobool92, label %cond.true.93, label %cond.false.96

cond.true.93:                                     ; preds = %if.else.90
  %76 = load i32, i32* @block_count, align 4
  %shl94 = shl i32 1, %76
  %sub95 = sub nsw i32 %shl94, 1
  br label %cond.end.97

cond.false.96:                                    ; preds = %if.else.90
  br label %cond.end.97

cond.end.97:                                      ; preds = %cond.false.96, %cond.true.93
  %cond98 = phi i32 [ %sub95, %cond.true.93 ], [ 0, %cond.false.96 ]
  store i32 %cond98, i32* %coded_block_pattern, align 4
  br label %if.end.99

if.end.99:                                        ; preds = %cond.end.97, %if.end.89
  %77 = load i32, i32* @Fault_Flag, align 4
  %tobool100 = icmp ne i32 %77, 0
  br i1 %tobool100, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %if.end.99
  store i32 0, i32* %retval
  br label %return

if.end.102:                                       ; preds = %if.end.99
  store i32 0, i32* %comp, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.102
  %78 = load i32, i32* %comp, align 4
  %79 = load i32, i32* @block_count, align 4
  %cmp103 = icmp slt i32 %78, %79
  br i1 %cmp103, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %80 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 17), align 4
  %cmp105 = icmp eq i32 %80, 1
  br i1 %cmp105, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %for.body
  store %struct.layer_data* @base, %struct.layer_data** @ld, align 8
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.107, %for.body
  %81 = load i32, i32* %comp, align 4
  call void @Clear_Block(i32 %81)
  %82 = load i32, i32* %coded_block_pattern, align 4
  %83 = load i32, i32* @block_count, align 4
  %sub109 = sub nsw i32 %83, 1
  %84 = load i32, i32* %comp, align 4
  %sub110 = sub nsw i32 %sub109, %84
  %shl111 = shl i32 1, %sub110
  %and112 = and i32 %82, %shl111
  %tobool113 = icmp ne i32 %and112, 0
  br i1 %tobool113, label %if.then.114, label %if.end.133

if.then.114:                                      ; preds = %if.end.108
  %85 = load i32*, i32** %macroblock_type.addr, align 8
  %86 = load i32, i32* %85, align 4
  %and115 = and i32 %86, 1
  %tobool116 = icmp ne i32 %and115, 0
  br i1 %tobool116, label %if.then.117, label %if.else.123

if.then.117:                                      ; preds = %if.then.114
  %87 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %MPEG2_Flag118 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %87, i32 0, i32 16
  %88 = load i32, i32* %MPEG2_Flag118, align 4
  %tobool119 = icmp ne i32 %88, 0
  br i1 %tobool119, label %if.then.120, label %if.else.121

if.then.120:                                      ; preds = %if.then.117
  %89 = load i32, i32* %comp, align 4
  %90 = load i32*, i32** %dc_dct_pred.addr, align 8
  call void @Decode_MPEG2_Intra_Block(i32 %89, i32* %90)
  br label %if.end.122

if.else.121:                                      ; preds = %if.then.117
  %91 = load i32, i32* %comp, align 4
  %92 = load i32*, i32** %dc_dct_pred.addr, align 8
  call void @Decode_MPEG1_Intra_Block(i32 %91, i32* %92)
  br label %if.end.122

if.end.122:                                       ; preds = %if.else.121, %if.then.120
  br label %if.end.129

if.else.123:                                      ; preds = %if.then.114
  %93 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %MPEG2_Flag124 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %93, i32 0, i32 16
  %94 = load i32, i32* %MPEG2_Flag124, align 4
  %tobool125 = icmp ne i32 %94, 0
  br i1 %tobool125, label %if.then.126, label %if.else.127

if.then.126:                                      ; preds = %if.else.123
  %95 = load i32, i32* %comp, align 4
  call void @Decode_MPEG2_Non_Intra_Block(i32 %95)
  br label %if.end.128

if.else.127:                                      ; preds = %if.else.123
  %96 = load i32, i32* %comp, align 4
  call void @Decode_MPEG1_Non_Intra_Block(i32 %96)
  br label %if.end.128

if.end.128:                                       ; preds = %if.else.127, %if.then.126
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.128, %if.end.122
  %97 = load i32, i32* @Fault_Flag, align 4
  %tobool130 = icmp ne i32 %97, 0
  br i1 %tobool130, label %if.then.131, label %if.end.132

if.then.131:                                      ; preds = %if.end.129
  store i32 0, i32* %retval
  br label %return

if.end.132:                                       ; preds = %if.end.129
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %if.end.108
  br label %for.inc

for.inc:                                          ; preds = %if.end.133
  %98 = load i32, i32* %comp, align 4
  %inc = add nsw i32 %98, 1
  store i32 %inc, i32* %comp, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %99 = load i32, i32* @picture_coding_type, align 4
  %cmp134 = icmp eq i32 %99, 4
  br i1 %cmp134, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %for.end
  call void @marker_bit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.136, %for.end
  %100 = load i32*, i32** %macroblock_type.addr, align 8
  %101 = load i32, i32* %100, align 4
  %and138 = and i32 %101, 1
  %tobool139 = icmp ne i32 %and138, 0
  br i1 %tobool139, label %if.end.144, label %if.then.140

if.then.140:                                      ; preds = %if.end.137
  %102 = load i32*, i32** %dc_dct_pred.addr, align 8
  %arrayidx141 = getelementptr inbounds i32, i32* %102, i64 2
  store i32 0, i32* %arrayidx141, align 4
  %103 = load i32*, i32** %dc_dct_pred.addr, align 8
  %arrayidx142 = getelementptr inbounds i32, i32* %103, i64 1
  store i32 0, i32* %arrayidx142, align 4
  %104 = load i32*, i32** %dc_dct_pred.addr, align 8
  %arrayidx143 = getelementptr inbounds i32, i32* %104, i64 0
  store i32 0, i32* %arrayidx143, align 4
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.140, %if.end.137
  %105 = load i32*, i32** %macroblock_type.addr, align 8
  %106 = load i32, i32* %105, align 4
  %and145 = and i32 %106, 1
  %tobool146 = icmp ne i32 %and145, 0
  br i1 %tobool146, label %land.lhs.true.147, label %if.end.174

land.lhs.true.147:                                ; preds = %if.end.144
  %107 = load i32, i32* @concealment_motion_vectors, align 4
  %tobool148 = icmp ne i32 %107, 0
  br i1 %tobool148, label %if.end.174, label %if.then.149

if.then.149:                                      ; preds = %land.lhs.true.147
  %108 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx150 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %108, i64 1
  %arrayidx151 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx150, i32 0, i64 0
  %arrayidx152 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx151, i32 0, i64 1
  store i32 0, i32* %arrayidx152, align 4
  %109 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx153 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %109, i64 1
  %arrayidx154 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx153, i32 0, i64 0
  %arrayidx155 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx154, i32 0, i64 0
  store i32 0, i32* %arrayidx155, align 4
  %110 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx156 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %110, i64 0
  %arrayidx157 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx156, i32 0, i64 0
  %arrayidx158 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx157, i32 0, i64 1
  store i32 0, i32* %arrayidx158, align 4
  %111 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx159 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %111, i64 0
  %arrayidx160 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx159, i32 0, i64 0
  %arrayidx161 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx160, i32 0, i64 0
  store i32 0, i32* %arrayidx161, align 4
  %112 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx162 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %112, i64 1
  %arrayidx163 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx162, i32 0, i64 1
  %arrayidx164 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx163, i32 0, i64 1
  store i32 0, i32* %arrayidx164, align 4
  %113 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx165 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %113, i64 1
  %arrayidx166 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx165, i32 0, i64 1
  %arrayidx167 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx166, i32 0, i64 0
  store i32 0, i32* %arrayidx167, align 4
  %114 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx168 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %114, i64 0
  %arrayidx169 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx168, i32 0, i64 1
  %arrayidx170 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx169, i32 0, i64 1
  store i32 0, i32* %arrayidx170, align 4
  %115 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx171 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %115, i64 0
  %arrayidx172 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx171, i32 0, i64 1
  %arrayidx173 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx172, i32 0, i64 0
  store i32 0, i32* %arrayidx173, align 4
  br label %if.end.174

if.end.174:                                       ; preds = %if.then.149, %land.lhs.true.147, %if.end.144
  %116 = load i32, i32* @picture_coding_type, align 4
  %cmp175 = icmp eq i32 %116, 2
  br i1 %cmp175, label %land.lhs.true.177, label %if.end.202

land.lhs.true.177:                                ; preds = %if.end.174
  %117 = load i32*, i32** %macroblock_type.addr, align 8
  %118 = load i32, i32* %117, align 4
  %and178 = and i32 %118, 9
  %tobool179 = icmp ne i32 %and178, 0
  br i1 %tobool179, label %if.end.202, label %if.then.180

if.then.180:                                      ; preds = %land.lhs.true.177
  %119 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx181 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %119, i64 1
  %arrayidx182 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx181, i32 0, i64 0
  %arrayidx183 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx182, i32 0, i64 1
  store i32 0, i32* %arrayidx183, align 4
  %120 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx184 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %120, i64 1
  %arrayidx185 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx184, i32 0, i64 0
  %arrayidx186 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx185, i32 0, i64 0
  store i32 0, i32* %arrayidx186, align 4
  %121 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx187 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %121, i64 0
  %arrayidx188 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx187, i32 0, i64 0
  %arrayidx189 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx188, i32 0, i64 1
  store i32 0, i32* %arrayidx189, align 4
  %122 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx190 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %122, i64 0
  %arrayidx191 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx190, i32 0, i64 0
  %arrayidx192 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx191, i32 0, i64 0
  store i32 0, i32* %arrayidx192, align 4
  %123 = load i32, i32* @picture_structure, align 4
  %cmp193 = icmp eq i32 %123, 3
  br i1 %cmp193, label %if.then.195, label %if.else.196

if.then.195:                                      ; preds = %if.then.180
  %124 = load i32*, i32** %motion_type.addr, align 8
  store i32 2, i32* %124, align 4
  br label %if.end.201

if.else.196:                                      ; preds = %if.then.180
  %125 = load i32*, i32** %motion_type.addr, align 8
  store i32 1, i32* %125, align 4
  %126 = load i32, i32* @picture_structure, align 4
  %cmp197 = icmp eq i32 %126, 2
  %conv198 = zext i1 %cmp197 to i32
  %127 = load [2 x i32]*, [2 x i32]** %motion_vertical_field_select.addr, align 8
  %arrayidx199 = getelementptr inbounds [2 x i32], [2 x i32]* %127, i64 0
  %arrayidx200 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx199, i32 0, i64 0
  store i32 %conv198, i32* %arrayidx200, align 4
  br label %if.end.201

if.end.201:                                       ; preds = %if.else.196, %if.then.195
  br label %if.end.202

if.end.202:                                       ; preds = %if.end.201, %land.lhs.true.177, %if.end.174
  %128 = load i32*, i32** %stwclass.addr, align 8
  %129 = load i32, i32* %128, align 4
  %cmp203 = icmp eq i32 %129, 4
  br i1 %cmp203, label %if.then.205, label %if.end.230

if.then.205:                                      ; preds = %if.end.202
  %130 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx206 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %130, i64 1
  %arrayidx207 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx206, i32 0, i64 0
  %arrayidx208 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx207, i32 0, i64 1
  store i32 0, i32* %arrayidx208, align 4
  %131 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx209 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %131, i64 1
  %arrayidx210 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx209, i32 0, i64 0
  %arrayidx211 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx210, i32 0, i64 0
  store i32 0, i32* %arrayidx211, align 4
  %132 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx212 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %132, i64 0
  %arrayidx213 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx212, i32 0, i64 0
  %arrayidx214 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx213, i32 0, i64 1
  store i32 0, i32* %arrayidx214, align 4
  %133 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx215 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %133, i64 0
  %arrayidx216 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx215, i32 0, i64 0
  %arrayidx217 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx216, i32 0, i64 0
  store i32 0, i32* %arrayidx217, align 4
  %134 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx218 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %134, i64 1
  %arrayidx219 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx218, i32 0, i64 1
  %arrayidx220 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx219, i32 0, i64 1
  store i32 0, i32* %arrayidx220, align 4
  %135 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx221 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %135, i64 1
  %arrayidx222 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx221, i32 0, i64 1
  %arrayidx223 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx222, i32 0, i64 0
  store i32 0, i32* %arrayidx223, align 4
  %136 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx224 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %136, i64 0
  %arrayidx225 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx224, i32 0, i64 1
  %arrayidx226 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx225, i32 0, i64 1
  store i32 0, i32* %arrayidx226, align 4
  %137 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx227 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %137, i64 0
  %arrayidx228 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx227, i32 0, i64 1
  %arrayidx229 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx228, i32 0, i64 0
  store i32 0, i32* %arrayidx229, align 4
  br label %if.end.230

if.end.230:                                       ; preds = %if.then.205, %if.end.202
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.230, %if.then.131, %if.then.101, %if.then.57, %if.then.38, %if.then.4
  %138 = load i32, i32* %retval
  ret i32 %138
}

; Function Attrs: nounwind uwtable
define internal void @skipped_macroblock(i32* %dc_dct_pred, [2 x [2 x i32]]* %PMV, i32* %motion_type, [2 x i32]* %motion_vertical_field_select, i32* %stwtype, i32* %macroblock_type) #0 {
entry:
  %dc_dct_pred.addr = alloca i32*, align 8
  %PMV.addr = alloca [2 x [2 x i32]]*, align 8
  %motion_type.addr = alloca i32*, align 8
  %motion_vertical_field_select.addr = alloca [2 x i32]*, align 8
  %stwtype.addr = alloca i32*, align 8
  %macroblock_type.addr = alloca i32*, align 8
  %comp = alloca i32, align 4
  store i32* %dc_dct_pred, i32** %dc_dct_pred.addr, align 8
  store [2 x [2 x i32]]* %PMV, [2 x [2 x i32]]** %PMV.addr, align 8
  store i32* %motion_type, i32** %motion_type.addr, align 8
  store [2 x i32]* %motion_vertical_field_select, [2 x i32]** %motion_vertical_field_select.addr, align 8
  store i32* %stwtype, i32** %stwtype.addr, align 8
  store i32* %macroblock_type, i32** %macroblock_type.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 17), align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.layer_data* @base, %struct.layer_data** @ld, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %comp, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %comp, align 4
  %2 = load i32, i32* @block_count, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %comp, align 4
  call void @Clear_Block(i32 %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %comp, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %comp, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load i32*, i32** %dc_dct_pred.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 2
  store i32 0, i32* %arrayidx, align 4
  %6 = load i32*, i32** %dc_dct_pred.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %6, i64 1
  store i32 0, i32* %arrayidx2, align 4
  %7 = load i32*, i32** %dc_dct_pred.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %7, i64 0
  store i32 0, i32* %arrayidx3, align 4
  %8 = load i32, i32* @picture_coding_type, align 4
  %cmp4 = icmp eq i32 %8, 2
  br i1 %cmp4, label %if.then.5, label %if.end.18

if.then.5:                                        ; preds = %for.end
  %9 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx6 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %9, i64 1
  %arrayidx7 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx6, i32 0, i64 0
  %arrayidx8 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx7, i32 0, i64 1
  store i32 0, i32* %arrayidx8, align 4
  %10 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx9 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %10, i64 1
  %arrayidx10 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx9, i32 0, i64 0
  %arrayidx11 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx10, i32 0, i64 0
  store i32 0, i32* %arrayidx11, align 4
  %11 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx12 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %11, i64 0
  %arrayidx13 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx12, i32 0, i64 0
  %arrayidx14 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx13, i32 0, i64 1
  store i32 0, i32* %arrayidx14, align 4
  %12 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx15 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %12, i64 0
  %arrayidx16 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx15, i32 0, i64 0
  %arrayidx17 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx16, i32 0, i64 0
  store i32 0, i32* %arrayidx17, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.5, %for.end
  %13 = load i32, i32* @picture_structure, align 4
  %cmp19 = icmp eq i32 %13, 3
  br i1 %cmp19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %if.end.18
  %14 = load i32*, i32** %motion_type.addr, align 8
  store i32 2, i32* %14, align 4
  br label %if.end.26

if.else:                                          ; preds = %if.end.18
  %15 = load i32*, i32** %motion_type.addr, align 8
  store i32 1, i32* %15, align 4
  %16 = load i32, i32* @picture_structure, align 4
  %cmp21 = icmp eq i32 %16, 2
  %conv = zext i1 %cmp21 to i32
  %17 = load [2 x i32]*, [2 x i32]** %motion_vertical_field_select.addr, align 8
  %arrayidx22 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0
  %arrayidx23 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx22, i32 0, i64 1
  store i32 %conv, i32* %arrayidx23, align 4
  %18 = load [2 x i32]*, [2 x i32]** %motion_vertical_field_select.addr, align 8
  %arrayidx24 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0
  %arrayidx25 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx24, i32 0, i64 0
  store i32 %conv, i32* %arrayidx25, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.else, %if.then.20
  %19 = load i32, i32* @picture_coding_type, align 4
  %cmp27 = icmp eq i32 %19, 1
  %cond = select i1 %cmp27, i32 8, i32 0
  %20 = load i32*, i32** %stwtype.addr, align 8
  store i32 %cond, i32* %20, align 4
  %21 = load i32*, i32** %macroblock_type.addr, align 8
  %22 = load i32, i32* %21, align 4
  %and = and i32 %22, -2
  store i32 %and, i32* %21, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Decode_SNR_Macroblock(i32* %SNRMBA, i32* %SNRMBAinc, i32 %MBA, i32 %MBAmax, i32* %dct_type) #0 {
entry:
  %SNRMBA.addr = alloca i32*, align 8
  %SNRMBAinc.addr = alloca i32*, align 8
  %MBA.addr = alloca i32, align 4
  %MBAmax.addr = alloca i32, align 4
  %dct_type.addr = alloca i32*, align 8
  %SNRmacroblock_type = alloca i32, align 4
  %SNRcoded_block_pattern = alloca i32, align 4
  %SNRdct_type = alloca i32, align 4
  %dummy = alloca i32, align 4
  %slice_vert_pos_ext = alloca i32, align 4
  %quantizer_scale_code = alloca i32, align 4
  %comp = alloca i32, align 4
  %code = alloca i32, align 4
  store i32* %SNRMBA, i32** %SNRMBA.addr, align 8
  store i32* %SNRMBAinc, i32** %SNRMBAinc.addr, align 8
  store i32 %MBA, i32* %MBA.addr, align 4
  store i32 %MBAmax, i32* %MBAmax.addr, align 4
  store i32* %dct_type, i32** %dct_type.addr, align 8
  store %struct.layer_data* @enhan, %struct.layer_data** @ld, align 8
  %0 = load i32*, i32** %SNRMBAinc.addr, align 8
  %1 = load i32, i32* %0, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.23

if.then:                                          ; preds = %entry
  %call = call i32 @Show_Bits(i32 23)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then.1

if.then.1:                                        ; preds = %if.then
  call void @next_start_code()
  %call2 = call i32 @Show_Bits(i32 32)
  store i32 %call2, i32* %code, align 4
  %2 = load i32, i32* %code, align 4
  %cmp3 = icmp slt i32 %2, 257
  br i1 %cmp3, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.1
  %3 = load i32, i32* %code, align 4
  %cmp4 = icmp sgt i32 %3, 431
  br i1 %cmp4, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %lor.lhs.false, %if.then.1
  %4 = load i32, i32* @Quiet_Flag, align 4
  %tobool6 = icmp ne i32 %4, 0
  br i1 %tobool6, label %if.end, label %if.then.7

if.then.7:                                        ; preds = %if.then.5
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then.5
  br label %return

if.end.9:                                         ; preds = %lor.lhs.false
  call void @Flush_Buffer32()
  %call10 = call i32 @slice_header()
  store i32 %call10, i32* %slice_vert_pos_ext, align 4
  %call11 = call i32 @Get_macroblock_address_increment()
  %5 = load i32*, i32** %SNRMBAinc.addr, align 8
  store i32 %call11, i32* %5, align 4
  %6 = load i32, i32* %slice_vert_pos_ext, align 4
  %shl = shl i32 %6, 7
  %7 = load i32, i32* %code, align 4
  %and = and i32 %7, 255
  %add = add nsw i32 %shl, %and
  %sub = sub nsw i32 %add, 1
  %8 = load i32, i32* @mb_width, align 4
  %mul = mul nsw i32 %sub, %8
  %9 = load i32*, i32** %SNRMBAinc.addr, align 8
  %10 = load i32, i32* %9, align 4
  %add12 = add nsw i32 %mul, %10
  %sub13 = sub nsw i32 %add12, 1
  %11 = load i32*, i32** %SNRMBA.addr, align 8
  store i32 %sub13, i32* %11, align 4
  %12 = load i32*, i32** %SNRMBAinc.addr, align 8
  store i32 1, i32* %12, align 4
  br label %if.end.22

if.else:                                          ; preds = %if.then
  %13 = load i32*, i32** %SNRMBA.addr, align 8
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %MBAmax.addr, align 4
  %cmp14 = icmp sge i32 %14, %15
  br i1 %cmp14, label %if.then.15, label %if.end.20

if.then.15:                                       ; preds = %if.else
  %16 = load i32, i32* @Quiet_Flag, align 4
  %tobool16 = icmp ne i32 %16, 0
  br i1 %tobool16, label %if.end.19, label %if.then.17

if.then.17:                                       ; preds = %if.then.15
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %if.then.15
  br label %return

if.end.20:                                        ; preds = %if.else
  %call21 = call i32 @Get_macroblock_address_increment()
  %17 = load i32*, i32** %SNRMBAinc.addr, align 8
  store i32 %call21, i32* %17, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.20, %if.end.9
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %entry
  %18 = load i32*, i32** %SNRMBA.addr, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %MBA.addr, align 4
  %cmp24 = icmp ne i32 %19, %20
  br i1 %cmp24, label %if.then.25, label %if.end.30

if.then.25:                                       ; preds = %if.end.23
  %21 = load i32, i32* @Quiet_Flag, align 4
  %tobool26 = icmp ne i32 %21, 0
  br i1 %tobool26, label %if.end.29, label %if.then.27

if.then.27:                                       ; preds = %if.then.25
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %if.then.25
  br label %return

if.end.30:                                        ; preds = %if.end.23
  %22 = load i32*, i32** %SNRMBAinc.addr, align 8
  %23 = load i32, i32* %22, align 4
  %cmp31 = icmp eq i32 %23, 1
  br i1 %cmp31, label %if.then.32, label %if.else.73

if.then.32:                                       ; preds = %if.end.30
  call void @macroblock_modes(i32* %SNRmacroblock_type, i32* %dummy, i32* %dummy, i32* %dummy, i32* %dummy, i32* %dummy, i32* %dummy, i32* %dummy, i32* %SNRdct_type)
  %24 = load i32, i32* %SNRmacroblock_type, align 4
  %and33 = and i32 %24, 2
  %tobool34 = icmp ne i32 %and33, 0
  br i1 %tobool34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.then.32
  %25 = load i32, i32* %SNRdct_type, align 4
  %26 = load i32*, i32** %dct_type.addr, align 8
  store i32 %25, i32* %26, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %if.then.32
  %27 = load i32, i32* %SNRmacroblock_type, align 4
  %and37 = and i32 %27, 16
  %tobool38 = icmp ne i32 %and37, 0
  br i1 %tobool38, label %if.then.39, label %if.end.43

if.then.39:                                       ; preds = %if.end.36
  %call40 = call i32 @Get_Bits(i32 5)
  store i32 %call40, i32* %quantizer_scale_code, align 4
  %28 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %q_scale_type = getelementptr inbounds %struct.layer_data, %struct.layer_data* %28, i32 0, i32 18
  %29 = load i32, i32* %q_scale_type, align 4
  %tobool41 = icmp ne i32 %29, 0
  br i1 %tobool41, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.39
  %30 = load i32, i32* %quantizer_scale_code, align 4
  %idxprom = sext i32 %30 to i64
  %arrayidx = getelementptr inbounds [32 x i8], [32 x i8]* @Non_Linear_quantizer_scale, i32 0, i64 %idxprom
  %31 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %31 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then.39
  %32 = load i32, i32* %quantizer_scale_code, align 4
  %shl42 = shl i32 %32, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %shl42, %cond.false ]
  %33 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %quantizer_scale = getelementptr inbounds %struct.layer_data, %struct.layer_data* %33, i32 0, i32 22
  store i32 %cond, i32* %quantizer_scale, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %cond.end, %if.end.36
  %34 = load i32, i32* %SNRmacroblock_type, align 4
  %and44 = and i32 %34, 2
  %tobool45 = icmp ne i32 %and44, 0
  br i1 %tobool45, label %if.then.46, label %if.else.62

if.then.46:                                       ; preds = %if.end.43
  %call47 = call i32 @Get_coded_block_pattern()
  store i32 %call47, i32* %SNRcoded_block_pattern, align 4
  %35 = load i32, i32* @chroma_format, align 4
  %cmp48 = icmp eq i32 %35, 2
  br i1 %cmp48, label %if.then.50, label %if.else.53

if.then.50:                                       ; preds = %if.then.46
  %36 = load i32, i32* %SNRcoded_block_pattern, align 4
  %shl51 = shl i32 %36, 2
  %call52 = call i32 @Get_Bits(i32 2)
  %or = or i32 %shl51, %call52
  store i32 %or, i32* %SNRcoded_block_pattern, align 4
  br label %if.end.61

if.else.53:                                       ; preds = %if.then.46
  %37 = load i32, i32* @chroma_format, align 4
  %cmp54 = icmp eq i32 %37, 3
  br i1 %cmp54, label %if.then.56, label %if.end.60

if.then.56:                                       ; preds = %if.else.53
  %38 = load i32, i32* %SNRcoded_block_pattern, align 4
  %shl57 = shl i32 %38, 6
  %call58 = call i32 @Get_Bits(i32 6)
  %or59 = or i32 %shl57, %call58
  store i32 %or59, i32* %SNRcoded_block_pattern, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.56, %if.else.53
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.50
  br label %if.end.63

if.else.62:                                       ; preds = %if.end.43
  store i32 0, i32* %SNRcoded_block_pattern, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.62, %if.end.61
  store i32 0, i32* %comp, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.63
  %39 = load i32, i32* %comp, align 4
  %40 = load i32, i32* @block_count, align 4
  %cmp64 = icmp slt i32 %39, %40
  br i1 %cmp64, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %41 = load i32, i32* %comp, align 4
  call void @Clear_Block(i32 %41)
  %42 = load i32, i32* %SNRcoded_block_pattern, align 4
  %43 = load i32, i32* @block_count, align 4
  %sub66 = sub nsw i32 %43, 1
  %44 = load i32, i32* %comp, align 4
  %sub67 = sub nsw i32 %sub66, %44
  %shl68 = shl i32 1, %sub67
  %and69 = and i32 %42, %shl68
  %tobool70 = icmp ne i32 %and69, 0
  br i1 %tobool70, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %for.body
  %45 = load i32, i32* %comp, align 4
  call void @Decode_MPEG2_Non_Intra_Block(i32 %45)
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.71, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.72
  %46 = load i32, i32* %comp, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %comp, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.81

if.else.73:                                       ; preds = %if.end.30
  store i32 0, i32* %comp, align 4
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc.78, %if.else.73
  %47 = load i32, i32* %comp, align 4
  %48 = load i32, i32* @block_count, align 4
  %cmp75 = icmp slt i32 %47, %48
  br i1 %cmp75, label %for.body.77, label %for.end.80

for.body.77:                                      ; preds = %for.cond.74
  %49 = load i32, i32* %comp, align 4
  call void @Clear_Block(i32 %49)
  br label %for.inc.78

for.inc.78:                                       ; preds = %for.body.77
  %50 = load i32, i32* %comp, align 4
  %inc79 = add nsw i32 %50, 1
  store i32 %inc79, i32* %comp, align 4
  br label %for.cond.74

for.end.80:                                       ; preds = %for.cond.74
  br label %if.end.81

if.end.81:                                        ; preds = %for.end.80, %for.end
  store %struct.layer_data* @base, %struct.layer_data** @ld, align 8
  br label %return

return:                                           ; preds = %if.end.81, %if.end.29, %if.end.19, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @motion_compensation(i32 %MBA, i32 %macroblock_type, i32 %motion_type, [2 x [2 x i32]]* %PMV, [2 x i32]* %motion_vertical_field_select, i32* %dmvector, i32 %stwtype, i32 %dct_type) #0 {
entry:
  %MBA.addr = alloca i32, align 4
  %macroblock_type.addr = alloca i32, align 4
  %motion_type.addr = alloca i32, align 4
  %PMV.addr = alloca [2 x [2 x i32]]*, align 8
  %motion_vertical_field_select.addr = alloca [2 x i32]*, align 8
  %dmvector.addr = alloca i32*, align 8
  %stwtype.addr = alloca i32, align 4
  %dct_type.addr = alloca i32, align 4
  %bx = alloca i32, align 4
  %by = alloca i32, align 4
  %comp = alloca i32, align 4
  store i32 %MBA, i32* %MBA.addr, align 4
  store i32 %macroblock_type, i32* %macroblock_type.addr, align 4
  store i32 %motion_type, i32* %motion_type.addr, align 4
  store [2 x [2 x i32]]* %PMV, [2 x [2 x i32]]** %PMV.addr, align 8
  store [2 x i32]* %motion_vertical_field_select, [2 x i32]** %motion_vertical_field_select.addr, align 8
  store i32* %dmvector, i32** %dmvector.addr, align 8
  store i32 %stwtype, i32* %stwtype.addr, align 4
  store i32 %dct_type, i32* %dct_type.addr, align 4
  %0 = load i32, i32* %MBA.addr, align 4
  %1 = load i32, i32* @mb_width, align 4
  %rem = srem i32 %0, %1
  %mul = mul nsw i32 16, %rem
  store i32 %mul, i32* %bx, align 4
  %2 = load i32, i32* %MBA.addr, align 4
  %3 = load i32, i32* @mb_width, align 4
  %div = sdiv i32 %2, %3
  %mul1 = mul nsw i32 16, %div
  store i32 %mul1, i32* %by, align 4
  %4 = load i32, i32* %macroblock_type.addr, align 4
  %and = and i32 %4, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %bx, align 4
  %6 = load i32, i32* %by, align 4
  %7 = load i32, i32* %macroblock_type.addr, align 4
  %8 = load i32, i32* %motion_type.addr, align 4
  %9 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %10 = load [2 x i32]*, [2 x i32]** %motion_vertical_field_select.addr, align 8
  %11 = load i32*, i32** %dmvector.addr, align 8
  %12 = load i32, i32* %stwtype.addr, align 4
  call void @form_predictions(i32 %5, i32 %6, i32 %7, i32 %8, [2 x [2 x i32]]* %9, [2 x i32]* %10, i32* %11, i32 %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 17), align 4
  %cmp = icmp eq i32 %13, 1
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct.layer_data* @base, %struct.layer_data** @ld, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  store i32 0, i32* %comp, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.3
  %14 = load i32, i32* %comp, align 4
  %15 = load i32, i32* @block_count, align 4
  %cmp4 = icmp slt i32 %14, %15
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* @Two_Streams, align 4
  %tobool5 = icmp ne i32 %16, 0
  br i1 %tobool5, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %for.body
  %17 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @enhan, i32 0, i32 17), align 4
  %cmp6 = icmp eq i32 %17, 3
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %land.lhs.true
  %18 = load i32, i32* %comp, align 4
  call void @Sum_Block(i32 %18)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %land.lhs.true, %for.body
  %19 = load i32, i32* @Two_Streams, align 4
  %tobool9 = icmp ne i32 %19, 0
  br i1 %tobool9, label %land.lhs.true.10, label %lor.lhs.false

land.lhs.true.10:                                 ; preds = %if.end.8
  %20 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @enhan, i32 0, i32 17), align 4
  %cmp11 = icmp eq i32 %20, 3
  br i1 %cmp11, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.10, %if.end.8
  %21 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %MPEG2_Flag = getelementptr inbounds %struct.layer_data, %struct.layer_data* %21, i32 0, i32 16
  %22 = load i32, i32* %MPEG2_Flag, align 4
  %tobool12 = icmp ne i32 %22, 0
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %lor.lhs.false, %land.lhs.true.10
  %23 = load i32, i32* %comp, align 4
  %idxprom = sext i32 %23 to i64
  %24 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %block = getelementptr inbounds %struct.layer_data, %struct.layer_data* %24, i32 0, i32 24
  %arrayidx = getelementptr inbounds [12 x [64 x i16]], [12 x [64 x i16]]* %block, i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx, i32 0, i32 0
  call void @Saturate(i16* %arraydecay)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %lor.lhs.false
  %25 = load i32, i32* @Reference_IDCT_Flag, align 4
  %tobool15 = icmp ne i32 %25, 0
  br i1 %tobool15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.end.14
  %26 = load i32, i32* %comp, align 4
  %idxprom17 = sext i32 %26 to i64
  %27 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %block18 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %27, i32 0, i32 24
  %arrayidx19 = getelementptr inbounds [12 x [64 x i16]], [12 x [64 x i16]]* %block18, i32 0, i64 %idxprom17
  %arraydecay20 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx19, i32 0, i32 0
  call void @Reference_IDCT(i16* %arraydecay20)
  br label %if.end.25

if.else:                                          ; preds = %if.end.14
  %28 = load i32, i32* %comp, align 4
  %idxprom21 = sext i32 %28 to i64
  %29 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %block22 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %29, i32 0, i32 24
  %arrayidx23 = getelementptr inbounds [12 x [64 x i16]], [12 x [64 x i16]]* %block22, i32 0, i64 %idxprom21
  %arraydecay24 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx23, i32 0, i32 0
  call void @Fast_IDCT(i16* %arraydecay24)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %if.then.16
  %30 = load i32, i32* %comp, align 4
  %31 = load i32, i32* %bx, align 4
  %32 = load i32, i32* %by, align 4
  %33 = load i32, i32* %dct_type.addr, align 4
  %34 = load i32, i32* %macroblock_type.addr, align 4
  %and26 = and i32 %34, 1
  %cmp27 = icmp eq i32 %and26, 0
  %conv = zext i1 %cmp27 to i32
  call void @Add_Block(i32 %30, i32 %31, i32 %32, i32 %33, i32 %conv)
  br label %for.inc

for.inc:                                          ; preds = %if.end.25
  %35 = load i32, i32* %comp, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %comp, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @next_start_code() #1

declare void @Flush_Buffer32() #1

declare i32 @slice_header() #1

; Function Attrs: nounwind uwtable
define internal void @macroblock_modes(i32* %pmacroblock_type, i32* %pstwtype, i32* %pstwclass, i32* %pmotion_type, i32* %pmotion_vector_count, i32* %pmv_format, i32* %pdmv, i32* %pmvscale, i32* %pdct_type) #0 {
entry:
  %pmacroblock_type.addr = alloca i32*, align 8
  %pstwtype.addr = alloca i32*, align 8
  %pstwclass.addr = alloca i32*, align 8
  %pmotion_type.addr = alloca i32*, align 8
  %pmotion_vector_count.addr = alloca i32*, align 8
  %pmv_format.addr = alloca i32*, align 8
  %pdmv.addr = alloca i32*, align 8
  %pmvscale.addr = alloca i32*, align 8
  %pdct_type.addr = alloca i32*, align 8
  %macroblock_type = alloca i32, align 4
  %stwtype = alloca i32, align 4
  %stwcode = alloca i32, align 4
  %stwclass = alloca i32, align 4
  %motion_type = alloca i32, align 4
  %motion_vector_count = alloca i32, align 4
  %mv_format = alloca i32, align 4
  %dmv = alloca i32, align 4
  %mvscale = alloca i32, align 4
  %dct_type = alloca i32, align 4
  store i32* %pmacroblock_type, i32** %pmacroblock_type.addr, align 8
  store i32* %pstwtype, i32** %pstwtype.addr, align 8
  store i32* %pstwclass, i32** %pstwclass.addr, align 8
  store i32* %pmotion_type, i32** %pmotion_type.addr, align 8
  store i32* %pmotion_vector_count, i32** %pmotion_vector_count.addr, align 8
  store i32* %pmv_format, i32** %pmv_format.addr, align 8
  store i32* %pdmv, i32** %pdmv.addr, align 8
  store i32* %pmvscale, i32** %pmvscale.addr, align 8
  store i32* %pdct_type, i32** %pdct_type.addr, align 8
  store i32 0, i32* %motion_type, align 4
  %call = call i32 @Get_macroblock_type()
  store i32 %call, i32* %macroblock_type, align 4
  %0 = load i32, i32* @Fault_Flag, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %macroblock_type, align 4
  %and = and i32 %1, 32
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then.2, label %if.else.8

if.then.2:                                        ; preds = %if.end
  %2 = load i32, i32* @spatial_temporal_weight_code_table_index, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then.2
  store i32 4, i32* %stwtype, align 4
  br label %if.end.7

if.else:                                          ; preds = %if.then.2
  %call4 = call i32 @Get_Bits(i32 2)
  store i32 %call4, i32* %stwcode, align 4
  %3 = load i32, i32* %stwcode, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32, i32* @spatial_temporal_weight_code_table_index, align 4
  %sub = sub nsw i32 %4, 1
  %idxprom5 = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [3 x [4 x i8]], [3 x [4 x i8]]* @macroblock_modes.stwc_table, i32 0, i64 %idxprom5
  %arrayidx6 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx, i32 0, i64 %idxprom
  %5 = load i8, i8* %arrayidx6, align 1
  %conv = zext i8 %5 to i32
  store i32 %conv, i32* %stwtype, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.3
  br label %if.end.11

if.else.8:                                        ; preds = %if.end
  %6 = load i32, i32* %macroblock_type, align 4
  %and9 = and i32 %6, 64
  %tobool10 = icmp ne i32 %and9, 0
  %cond = select i1 %tobool10, i32 8, i32 0
  store i32 %cond, i32* %stwtype, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.8, %if.end.7
  %7 = load i32, i32* %stwtype, align 4
  %idxprom12 = sext i32 %7 to i64
  %arrayidx13 = getelementptr inbounds [9 x i8], [9 x i8]* @macroblock_modes.stwclass_table, i32 0, i64 %idxprom12
  %8 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %8 to i32
  store i32 %conv14, i32* %stwclass, align 4
  %9 = load i32, i32* %macroblock_type, align 4
  %and15 = and i32 %9, 12
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %if.then.17, label %if.else.27

if.then.17:                                       ; preds = %if.end.11
  %10 = load i32, i32* @picture_structure, align 4
  %cmp18 = icmp eq i32 %10, 3
  br i1 %cmp18, label %if.then.20, label %if.else.24

if.then.20:                                       ; preds = %if.then.17
  %11 = load i32, i32* @frame_pred_frame_dct, align 4
  %tobool21 = icmp ne i32 %11, 0
  br i1 %tobool21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.20
  br label %cond.end

cond.false:                                       ; preds = %if.then.20
  %call22 = call i32 @Get_Bits(i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond23 = phi i32 [ 2, %cond.true ], [ %call22, %cond.false ]
  store i32 %cond23, i32* %motion_type, align 4
  br label %if.end.26

if.else.24:                                       ; preds = %if.then.17
  %call25 = call i32 @Get_Bits(i32 2)
  store i32 %call25, i32* %motion_type, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.24, %cond.end
  br label %if.end.36

if.else.27:                                       ; preds = %if.end.11
  %12 = load i32, i32* %macroblock_type, align 4
  %and28 = and i32 %12, 1
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %land.lhs.true, label %if.end.35

land.lhs.true:                                    ; preds = %if.else.27
  %13 = load i32, i32* @concealment_motion_vectors, align 4
  %tobool30 = icmp ne i32 %13, 0
  br i1 %tobool30, label %if.then.31, label %if.end.35

if.then.31:                                       ; preds = %land.lhs.true
  %14 = load i32, i32* @picture_structure, align 4
  %cmp32 = icmp eq i32 %14, 3
  %cond34 = select i1 %cmp32, i32 2, i32 1
  store i32 %cond34, i32* %motion_type, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.31, %land.lhs.true, %if.else.27
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end.26
  %15 = load i32, i32* @picture_structure, align 4
  %cmp37 = icmp eq i32 %15, 3
  br i1 %cmp37, label %if.then.39, label %if.else.48

if.then.39:                                       ; preds = %if.end.36
  %16 = load i32, i32* %motion_type, align 4
  %cmp40 = icmp eq i32 %16, 1
  br i1 %cmp40, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.39
  %17 = load i32, i32* %stwclass, align 4
  %cmp42 = icmp slt i32 %17, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.39
  %18 = phi i1 [ false, %if.then.39 ], [ %cmp42, %land.rhs ]
  %cond44 = select i1 %18, i32 2, i32 1
  store i32 %cond44, i32* %motion_vector_count, align 4
  %19 = load i32, i32* %motion_type, align 4
  %cmp45 = icmp eq i32 %19, 2
  %cond47 = select i1 %cmp45, i32 1, i32 0
  store i32 %cond47, i32* %mv_format, align 4
  br label %if.end.52

if.else.48:                                       ; preds = %if.end.36
  %20 = load i32, i32* %motion_type, align 4
  %cmp49 = icmp eq i32 %20, 2
  %cond51 = select i1 %cmp49, i32 2, i32 1
  store i32 %cond51, i32* %motion_vector_count, align 4
  store i32 0, i32* %mv_format, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.48, %land.end
  %21 = load i32, i32* %motion_type, align 4
  %cmp53 = icmp eq i32 %21, 3
  %conv54 = zext i1 %cmp53 to i32
  store i32 %conv54, i32* %dmv, align 4
  %22 = load i32, i32* %mv_format, align 4
  %cmp55 = icmp eq i32 %22, 0
  br i1 %cmp55, label %land.rhs.57, label %land.end.60

land.rhs.57:                                      ; preds = %if.end.52
  %23 = load i32, i32* @picture_structure, align 4
  %cmp58 = icmp eq i32 %23, 3
  br label %land.end.60

land.end.60:                                      ; preds = %land.rhs.57, %if.end.52
  %24 = phi i1 [ false, %if.end.52 ], [ %cmp58, %land.rhs.57 ]
  %land.ext = zext i1 %24 to i32
  store i32 %land.ext, i32* %mvscale, align 4
  %25 = load i32, i32* @picture_structure, align 4
  %cmp61 = icmp eq i32 %25, 3
  br i1 %cmp61, label %land.lhs.true.63, label %cond.false.70

land.lhs.true.63:                                 ; preds = %land.end.60
  %26 = load i32, i32* @frame_pred_frame_dct, align 4
  %tobool64 = icmp ne i32 %26, 0
  br i1 %tobool64, label %cond.false.70, label %land.lhs.true.65

land.lhs.true.65:                                 ; preds = %land.lhs.true.63
  %27 = load i32, i32* %macroblock_type, align 4
  %and66 = and i32 %27, 3
  %tobool67 = icmp ne i32 %and66, 0
  br i1 %tobool67, label %cond.true.68, label %cond.false.70

cond.true.68:                                     ; preds = %land.lhs.true.65
  %call69 = call i32 @Get_Bits(i32 1)
  br label %cond.end.71

cond.false.70:                                    ; preds = %land.lhs.true.65, %land.lhs.true.63, %land.end.60
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.false.70, %cond.true.68
  %cond72 = phi i32 [ %call69, %cond.true.68 ], [ 0, %cond.false.70 ]
  store i32 %cond72, i32* %dct_type, align 4
  %28 = load i32, i32* %macroblock_type, align 4
  %29 = load i32*, i32** %pmacroblock_type.addr, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %stwtype, align 4
  %31 = load i32*, i32** %pstwtype.addr, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %stwclass, align 4
  %33 = load i32*, i32** %pstwclass.addr, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %motion_type, align 4
  %35 = load i32*, i32** %pmotion_type.addr, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %motion_vector_count, align 4
  %37 = load i32*, i32** %pmotion_vector_count.addr, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %mv_format, align 4
  %39 = load i32*, i32** %pmv_format.addr, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %dmv, align 4
  %41 = load i32*, i32** %pdmv.addr, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* %mvscale, align 4
  %43 = load i32*, i32** %pmvscale.addr, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* %dct_type, align 4
  %45 = load i32*, i32** %pdct_type.addr, align 8
  store i32 %44, i32* %45, align 4
  br label %return

return:                                           ; preds = %cond.end.71, %if.then
  ret void
}

declare i32 @Get_Bits(i32) #1

declare void @motion_vectors([2 x [2 x i32]]*, i32*, [2 x i32]*, i32, i32, i32, i32, i32, i32, i32) #1

declare void @motion_vector(i32*, i32*, i32, i32, i32, i32, i32) #1

declare void @Flush_Buffer(i32) #1

declare i32 @Get_coded_block_pattern() #1

; Function Attrs: nounwind uwtable
define internal void @Clear_Block(i32 %comp) #0 {
entry:
  %comp.addr = alloca i32, align 4
  %Block_Ptr = alloca i16*, align 8
  %i = alloca i32, align 4
  store i32 %comp, i32* %comp.addr, align 4
  %0 = load i32, i32* %comp.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %block = getelementptr inbounds %struct.layer_data, %struct.layer_data* %1, i32 0, i32 24
  %arrayidx = getelementptr inbounds [12 x [64 x i16]], [12 x [64 x i16]]* %block, i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx, i32 0, i32 0
  store i16* %arraydecay, i16** %Block_Ptr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i16*, i16** %Block_Ptr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %3, i32 1
  store i16* %incdec.ptr, i16** %Block_Ptr, align 8
  store i16 0, i16* %3, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @Decode_MPEG2_Intra_Block(i32, i32*) #1

declare void @Decode_MPEG1_Intra_Block(i32, i32*) #1

declare void @Decode_MPEG2_Non_Intra_Block(i32) #1

declare void @Decode_MPEG1_Non_Intra_Block(i32) #1

declare void @marker_bit(i8*) #1

declare i32 @Get_macroblock_type() #1

declare void @form_predictions(i32, i32, i32, i32, [2 x [2 x i32]]*, [2 x i32]*, i32*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @Sum_Block(i32 %comp) #0 {
entry:
  %comp.addr = alloca i32, align 4
  %Block_Ptr1 = alloca i16*, align 8
  %Block_Ptr2 = alloca i16*, align 8
  %i = alloca i32, align 4
  store i32 %comp, i32* %comp.addr, align 4
  %0 = load i32, i32* %comp.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [12 x [64 x i16]], [12 x [64 x i16]]* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 24), i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx, i32 0, i32 0
  store i16* %arraydecay, i16** %Block_Ptr1, align 8
  %1 = load i32, i32* %comp.addr, align 4
  %idxprom1 = sext i32 %1 to i64
  %arrayidx2 = getelementptr inbounds [12 x [64 x i16]], [12 x [64 x i16]]* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @enhan, i32 0, i32 24), i32 0, i64 %idxprom1
  %arraydecay3 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx2, i32 0, i32 0
  store i16* %arraydecay3, i16** %Block_Ptr2, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i16*, i16** %Block_Ptr2, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %3, i32 1
  store i16* %incdec.ptr, i16** %Block_Ptr2, align 8
  %4 = load i16, i16* %3, align 2
  %conv = sext i16 %4 to i32
  %5 = load i16*, i16** %Block_Ptr1, align 8
  %incdec.ptr4 = getelementptr inbounds i16, i16* %5, i32 1
  store i16* %incdec.ptr4, i16** %Block_Ptr1, align 8
  %6 = load i16, i16* %5, align 2
  %conv5 = sext i16 %6 to i32
  %add = add nsw i32 %conv5, %conv
  %conv6 = trunc i32 %add to i16
  store i16 %conv6, i16* %5, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Saturate(i16* %Block_Ptr) #0 {
entry:
  %Block_Ptr.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  %sum = alloca i32, align 4
  %val = alloca i32, align 4
  store i16* %Block_Ptr, i16** %Block_Ptr.addr, align 8
  store i32 0, i32* %sum, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i16*, i16** %Block_Ptr.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %2, i64 %idxprom
  %3 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %3 to i32
  store i32 %conv, i32* %val, align 4
  %4 = load i32, i32* %val, align 4
  %cmp1 = icmp sgt i32 %4, 2047
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store i32 2047, i32* %val, align 4
  br label %if.end.6

if.else:                                          ; preds = %for.body
  %5 = load i32, i32* %val, align 4
  %cmp3 = icmp slt i32 %5, -2048
  br i1 %cmp3, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.else
  store i32 -2048, i32* %val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.else
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %6 = load i32, i32* %val, align 4
  %conv7 = trunc i32 %6 to i16
  %7 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %7 to i64
  %8 = load i16*, i16** %Block_Ptr.addr, align 8
  %arrayidx9 = getelementptr inbounds i16, i16* %8, i64 %idxprom8
  store i16 %conv7, i16* %arrayidx9, align 2
  %9 = load i32, i32* %val, align 4
  %10 = load i32, i32* %sum, align 4
  %add = add nsw i32 %10, %9
  store i32 %add, i32* %sum, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %sum, align 4
  %and = and i32 %12, 1
  %cmp10 = icmp eq i32 %and, 0
  br i1 %cmp10, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %for.end
  %13 = load i16*, i16** %Block_Ptr.addr, align 8
  %arrayidx13 = getelementptr inbounds i16, i16* %13, i64 63
  %14 = load i16, i16* %arrayidx13, align 2
  %conv14 = sext i16 %14 to i32
  %xor = xor i32 %conv14, 1
  %conv15 = trunc i32 %xor to i16
  store i16 %conv15, i16* %arrayidx13, align 2
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.12, %for.end
  ret void
}

declare void @Reference_IDCT(i16*) #1

declare void @Fast_IDCT(i16*) #1

; Function Attrs: nounwind uwtable
define internal void @Add_Block(i32 %comp, i32 %bx, i32 %by, i32 %dct_type, i32 %addflag) #0 {
entry:
  %comp.addr = alloca i32, align 4
  %bx.addr = alloca i32, align 4
  %by.addr = alloca i32, align 4
  %dct_type.addr = alloca i32, align 4
  %addflag.addr = alloca i32, align 4
  %cc = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %iincr = alloca i32, align 4
  %rfp = alloca i8*, align 8
  %bp = alloca i16*, align 8
  store i32 %comp, i32* %comp.addr, align 4
  store i32 %bx, i32* %bx.addr, align 4
  store i32 %by, i32* %by.addr, align 4
  store i32 %dct_type, i32* %dct_type.addr, align 4
  store i32 %addflag, i32* %addflag.addr, align 4
  %0 = load i32, i32* %comp.addr, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i32, i32* %comp.addr, align 4
  %and = and i32 %1, 1
  %add = add nsw i32 %and, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %add, %cond.false ]
  store i32 %cond, i32* %cc, align 4
  %2 = load i32, i32* %cc, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %if.then, label %if.else.43

if.then:                                          ; preds = %cond.end
  %3 = load i32, i32* @picture_structure, align 4
  %cmp2 = icmp eq i32 %3, 3
  br i1 %cmp2, label %if.then.3, label %if.else.26

if.then.3:                                        ; preds = %if.then
  %4 = load i32, i32* %dct_type.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then.3
  %5 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i32 0, i64 0), align 8
  %6 = load i32, i32* @Coded_Picture_Width, align 4
  %7 = load i32, i32* %by.addr, align 4
  %8 = load i32, i32* %comp.addr, align 4
  %and5 = and i32 %8, 2
  %shr = ashr i32 %and5, 1
  %add6 = add nsw i32 %7, %shr
  %mul = mul nsw i32 %6, %add6
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %idx.ext
  %9 = load i32, i32* %bx.addr, align 4
  %idx.ext7 = sext i32 %9 to i64
  %add.ptr8 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext7
  %10 = load i32, i32* %comp.addr, align 4
  %and9 = and i32 %10, 1
  %shl = shl i32 %and9, 3
  %idx.ext10 = sext i32 %shl to i64
  %add.ptr11 = getelementptr inbounds i8, i8* %add.ptr8, i64 %idx.ext10
  store i8* %add.ptr11, i8** %rfp, align 8
  %11 = load i32, i32* @Coded_Picture_Width, align 4
  %shl12 = shl i32 %11, 1
  %sub = sub nsw i32 %shl12, 8
  store i32 %sub, i32* %iincr, align 4
  br label %if.end

if.else:                                          ; preds = %if.then.3
  %12 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i32 0, i64 0), align 8
  %13 = load i32, i32* @Coded_Picture_Width, align 4
  %14 = load i32, i32* %by.addr, align 4
  %15 = load i32, i32* %comp.addr, align 4
  %and13 = and i32 %15, 2
  %shl14 = shl i32 %and13, 2
  %add15 = add nsw i32 %14, %shl14
  %mul16 = mul nsw i32 %13, %add15
  %idx.ext17 = sext i32 %mul16 to i64
  %add.ptr18 = getelementptr inbounds i8, i8* %12, i64 %idx.ext17
  %16 = load i32, i32* %bx.addr, align 4
  %idx.ext19 = sext i32 %16 to i64
  %add.ptr20 = getelementptr inbounds i8, i8* %add.ptr18, i64 %idx.ext19
  %17 = load i32, i32* %comp.addr, align 4
  %and21 = and i32 %17, 1
  %shl22 = shl i32 %and21, 3
  %idx.ext23 = sext i32 %shl22 to i64
  %add.ptr24 = getelementptr inbounds i8, i8* %add.ptr20, i64 %idx.ext23
  store i8* %add.ptr24, i8** %rfp, align 8
  %18 = load i32, i32* @Coded_Picture_Width, align 4
  %sub25 = sub nsw i32 %18, 8
  store i32 %sub25, i32* %iincr, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %if.end.42

if.else.26:                                       ; preds = %if.then
  %19 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i32 0, i64 0), align 8
  %20 = load i32, i32* @Coded_Picture_Width, align 4
  %shl27 = shl i32 %20, 1
  %21 = load i32, i32* %by.addr, align 4
  %22 = load i32, i32* %comp.addr, align 4
  %and28 = and i32 %22, 2
  %shl29 = shl i32 %and28, 2
  %add30 = add nsw i32 %21, %shl29
  %mul31 = mul nsw i32 %shl27, %add30
  %idx.ext32 = sext i32 %mul31 to i64
  %add.ptr33 = getelementptr inbounds i8, i8* %19, i64 %idx.ext32
  %23 = load i32, i32* %bx.addr, align 4
  %idx.ext34 = sext i32 %23 to i64
  %add.ptr35 = getelementptr inbounds i8, i8* %add.ptr33, i64 %idx.ext34
  %24 = load i32, i32* %comp.addr, align 4
  %and36 = and i32 %24, 1
  %shl37 = shl i32 %and36, 3
  %idx.ext38 = sext i32 %shl37 to i64
  %add.ptr39 = getelementptr inbounds i8, i8* %add.ptr35, i64 %idx.ext38
  store i8* %add.ptr39, i8** %rfp, align 8
  %25 = load i32, i32* @Coded_Picture_Width, align 4
  %shl40 = shl i32 %25, 1
  %sub41 = sub nsw i32 %shl40, 8
  store i32 %sub41, i32* %iincr, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.26, %if.end
  br label %if.end.104

if.else.43:                                       ; preds = %cond.end
  %26 = load i32, i32* @chroma_format, align 4
  %cmp44 = icmp ne i32 %26, 3
  br i1 %cmp44, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %if.else.43
  %27 = load i32, i32* %bx.addr, align 4
  %shr46 = ashr i32 %27, 1
  store i32 %shr46, i32* %bx.addr, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %if.else.43
  %28 = load i32, i32* @chroma_format, align 4
  %cmp48 = icmp eq i32 %28, 1
  br i1 %cmp48, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %if.end.47
  %29 = load i32, i32* %by.addr, align 4
  %shr50 = ashr i32 %29, 1
  store i32 %shr50, i32* %by.addr, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %if.end.47
  %30 = load i32, i32* @picture_structure, align 4
  %cmp52 = icmp eq i32 %30, 3
  br i1 %cmp52, label %if.then.53, label %if.else.86

if.then.53:                                       ; preds = %if.end.51
  %31 = load i32, i32* %dct_type.addr, align 4
  %tobool54 = icmp ne i32 %31, 0
  br i1 %tobool54, label %land.lhs.true, label %if.else.70

land.lhs.true:                                    ; preds = %if.then.53
  %32 = load i32, i32* @chroma_format, align 4
  %cmp55 = icmp ne i32 %32, 1
  br i1 %cmp55, label %if.then.56, label %if.else.70

if.then.56:                                       ; preds = %land.lhs.true
  %33 = load i32, i32* %cc, align 4
  %idxprom = sext i32 %33 to i64
  %arrayidx = getelementptr inbounds [3 x i8*], [3 x i8*]* @current_frame, i32 0, i64 %idxprom
  %34 = load i8*, i8** %arrayidx, align 8
  %35 = load i32, i32* @Chroma_Width, align 4
  %36 = load i32, i32* %by.addr, align 4
  %37 = load i32, i32* %comp.addr, align 4
  %and57 = and i32 %37, 2
  %shr58 = ashr i32 %and57, 1
  %add59 = add nsw i32 %36, %shr58
  %mul60 = mul nsw i32 %35, %add59
  %idx.ext61 = sext i32 %mul60 to i64
  %add.ptr62 = getelementptr inbounds i8, i8* %34, i64 %idx.ext61
  %38 = load i32, i32* %bx.addr, align 4
  %idx.ext63 = sext i32 %38 to i64
  %add.ptr64 = getelementptr inbounds i8, i8* %add.ptr62, i64 %idx.ext63
  %39 = load i32, i32* %comp.addr, align 4
  %and65 = and i32 %39, 8
  %idx.ext66 = sext i32 %and65 to i64
  %add.ptr67 = getelementptr inbounds i8, i8* %add.ptr64, i64 %idx.ext66
  store i8* %add.ptr67, i8** %rfp, align 8
  %40 = load i32, i32* @Chroma_Width, align 4
  %shl68 = shl i32 %40, 1
  %sub69 = sub nsw i32 %shl68, 8
  store i32 %sub69, i32* %iincr, align 4
  br label %if.end.85

if.else.70:                                       ; preds = %land.lhs.true, %if.then.53
  %41 = load i32, i32* %cc, align 4
  %idxprom71 = sext i32 %41 to i64
  %arrayidx72 = getelementptr inbounds [3 x i8*], [3 x i8*]* @current_frame, i32 0, i64 %idxprom71
  %42 = load i8*, i8** %arrayidx72, align 8
  %43 = load i32, i32* @Chroma_Width, align 4
  %44 = load i32, i32* %by.addr, align 4
  %45 = load i32, i32* %comp.addr, align 4
  %and73 = and i32 %45, 2
  %shl74 = shl i32 %and73, 2
  %add75 = add nsw i32 %44, %shl74
  %mul76 = mul nsw i32 %43, %add75
  %idx.ext77 = sext i32 %mul76 to i64
  %add.ptr78 = getelementptr inbounds i8, i8* %42, i64 %idx.ext77
  %46 = load i32, i32* %bx.addr, align 4
  %idx.ext79 = sext i32 %46 to i64
  %add.ptr80 = getelementptr inbounds i8, i8* %add.ptr78, i64 %idx.ext79
  %47 = load i32, i32* %comp.addr, align 4
  %and81 = and i32 %47, 8
  %idx.ext82 = sext i32 %and81 to i64
  %add.ptr83 = getelementptr inbounds i8, i8* %add.ptr80, i64 %idx.ext82
  store i8* %add.ptr83, i8** %rfp, align 8
  %48 = load i32, i32* @Chroma_Width, align 4
  %sub84 = sub nsw i32 %48, 8
  store i32 %sub84, i32* %iincr, align 4
  br label %if.end.85

if.end.85:                                        ; preds = %if.else.70, %if.then.56
  br label %if.end.103

if.else.86:                                       ; preds = %if.end.51
  %49 = load i32, i32* %cc, align 4
  %idxprom87 = sext i32 %49 to i64
  %arrayidx88 = getelementptr inbounds [3 x i8*], [3 x i8*]* @current_frame, i32 0, i64 %idxprom87
  %50 = load i8*, i8** %arrayidx88, align 8
  %51 = load i32, i32* @Chroma_Width, align 4
  %shl89 = shl i32 %51, 1
  %52 = load i32, i32* %by.addr, align 4
  %53 = load i32, i32* %comp.addr, align 4
  %and90 = and i32 %53, 2
  %shl91 = shl i32 %and90, 2
  %add92 = add nsw i32 %52, %shl91
  %mul93 = mul nsw i32 %shl89, %add92
  %idx.ext94 = sext i32 %mul93 to i64
  %add.ptr95 = getelementptr inbounds i8, i8* %50, i64 %idx.ext94
  %54 = load i32, i32* %bx.addr, align 4
  %idx.ext96 = sext i32 %54 to i64
  %add.ptr97 = getelementptr inbounds i8, i8* %add.ptr95, i64 %idx.ext96
  %55 = load i32, i32* %comp.addr, align 4
  %and98 = and i32 %55, 8
  %idx.ext99 = sext i32 %and98 to i64
  %add.ptr100 = getelementptr inbounds i8, i8* %add.ptr97, i64 %idx.ext99
  store i8* %add.ptr100, i8** %rfp, align 8
  %56 = load i32, i32* @Chroma_Width, align 4
  %shl101 = shl i32 %56, 1
  %sub102 = sub nsw i32 %shl101, 8
  store i32 %sub102, i32* %iincr, align 4
  br label %if.end.103

if.end.103:                                       ; preds = %if.else.86, %if.end.85
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %if.end.42
  %57 = load i32, i32* %comp.addr, align 4
  %idxprom105 = sext i32 %57 to i64
  %58 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %block = getelementptr inbounds %struct.layer_data, %struct.layer_data* %58, i32 0, i32 24
  %arrayidx106 = getelementptr inbounds [12 x [64 x i16]], [12 x [64 x i16]]* %block, i32 0, i64 %idxprom105
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx106, i32 0, i32 0
  store i16* %arraydecay, i16** %bp, align 8
  %59 = load i32, i32* %addflag.addr, align 4
  %tobool107 = icmp ne i32 %59, 0
  br i1 %tobool107, label %if.then.108, label %if.else.123

if.then.108:                                      ; preds = %if.end.104
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.120, %if.then.108
  %60 = load i32, i32* %i, align 4
  %cmp109 = icmp slt i32 %60, 8
  br i1 %cmp109, label %for.body, label %for.end.122

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.110

for.cond.110:                                     ; preds = %for.inc, %for.body
  %61 = load i32, i32* %j, align 4
  %cmp111 = icmp slt i32 %61, 8
  br i1 %cmp111, label %for.body.112, label %for.end

for.body.112:                                     ; preds = %for.cond.110
  %62 = load i16*, i16** %bp, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %62, i32 1
  store i16* %incdec.ptr, i16** %bp, align 8
  %63 = load i16, i16* %62, align 2
  %conv = sext i16 %63 to i32
  %64 = load i8*, i8** %rfp, align 8
  %65 = load i8, i8* %64, align 1
  %conv113 = zext i8 %65 to i32
  %add114 = add nsw i32 %conv, %conv113
  %idxprom115 = sext i32 %add114 to i64
  %66 = load i8*, i8** @Clip, align 8
  %arrayidx116 = getelementptr inbounds i8, i8* %66, i64 %idxprom115
  %67 = load i8, i8* %arrayidx116, align 1
  %68 = load i8*, i8** %rfp, align 8
  store i8 %67, i8* %68, align 1
  %69 = load i8*, i8** %rfp, align 8
  %incdec.ptr117 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %incdec.ptr117, i8** %rfp, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.112
  %70 = load i32, i32* %j, align 4
  %inc = add nsw i32 %70, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.110

for.end:                                          ; preds = %for.cond.110
  %71 = load i32, i32* %iincr, align 4
  %72 = load i8*, i8** %rfp, align 8
  %idx.ext118 = sext i32 %71 to i64
  %add.ptr119 = getelementptr inbounds i8, i8* %72, i64 %idx.ext118
  store i8* %add.ptr119, i8** %rfp, align 8
  br label %for.inc.120

for.inc.120:                                      ; preds = %for.end
  %73 = load i32, i32* %i, align 4
  %inc121 = add nsw i32 %73, 1
  store i32 %inc121, i32* %i, align 4
  br label %for.cond

for.end.122:                                      ; preds = %for.cond
  br label %if.end.146

if.else.123:                                      ; preds = %if.end.104
  store i32 0, i32* %i, align 4
  br label %for.cond.124

for.cond.124:                                     ; preds = %for.inc.143, %if.else.123
  %74 = load i32, i32* %i, align 4
  %cmp125 = icmp slt i32 %74, 8
  br i1 %cmp125, label %for.body.127, label %for.end.145

for.body.127:                                     ; preds = %for.cond.124
  store i32 0, i32* %j, align 4
  br label %for.cond.128

for.cond.128:                                     ; preds = %for.inc.138, %for.body.127
  %75 = load i32, i32* %j, align 4
  %cmp129 = icmp slt i32 %75, 8
  br i1 %cmp129, label %for.body.131, label %for.end.140

for.body.131:                                     ; preds = %for.cond.128
  %76 = load i16*, i16** %bp, align 8
  %incdec.ptr132 = getelementptr inbounds i16, i16* %76, i32 1
  store i16* %incdec.ptr132, i16** %bp, align 8
  %77 = load i16, i16* %76, align 2
  %conv133 = sext i16 %77 to i32
  %add134 = add nsw i32 %conv133, 128
  %idxprom135 = sext i32 %add134 to i64
  %78 = load i8*, i8** @Clip, align 8
  %arrayidx136 = getelementptr inbounds i8, i8* %78, i64 %idxprom135
  %79 = load i8, i8* %arrayidx136, align 1
  %80 = load i8*, i8** %rfp, align 8
  %incdec.ptr137 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %incdec.ptr137, i8** %rfp, align 8
  store i8 %79, i8* %80, align 1
  br label %for.inc.138

for.inc.138:                                      ; preds = %for.body.131
  %81 = load i32, i32* %j, align 4
  %inc139 = add nsw i32 %81, 1
  store i32 %inc139, i32* %j, align 4
  br label %for.cond.128

for.end.140:                                      ; preds = %for.cond.128
  %82 = load i32, i32* %iincr, align 4
  %83 = load i8*, i8** %rfp, align 8
  %idx.ext141 = sext i32 %82 to i64
  %add.ptr142 = getelementptr inbounds i8, i8* %83, i64 %idx.ext141
  store i8* %add.ptr142, i8** %rfp, align 8
  br label %for.inc.143

for.inc.143:                                      ; preds = %for.end.140
  %84 = load i32, i32* %i, align 4
  %inc144 = add nsw i32 %84, 1
  store i32 %inc144, i32* %i, align 4
  br label %for.cond.124

for.end.145:                                      ; preds = %for.cond.124
  br label %if.end.146

if.end.146:                                       ; preds = %for.end.145, %for.end.122
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
