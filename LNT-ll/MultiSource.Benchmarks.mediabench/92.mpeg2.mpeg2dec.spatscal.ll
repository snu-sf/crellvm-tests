; ModuleID = './MultiSource.Benchmarks.mediabench/92.mpeg2.mpeg2dec.spatscal.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@Frame_Store_Flag = external global i32, align 4
@lower_layer_prediction_horizontal_size = external global i32, align 4
@lower_layer_prediction_vertical_size = external global i32, align 4
@progressive_frame = external global i32, align 4
@lower_layer_progressive_frame = external global i32, align 4
@llframe0 = external global [3 x i8*], align 16
@llframe1 = external global [3 x i8*], align 16
@lltmp = external global i16*, align 8
@current_frame = external global [3 x i8*], align 16
@lower_layer_horizontal_offset = external global i32, align 4
@lower_layer_vertical_offset = external global i32, align 4
@horizontal_size = external global i32, align 4
@vertical_size = external global i32, align 4
@vertical_subsampling_factor_m = external global i32, align 4
@vertical_subsampling_factor_n = external global i32, align 4
@horizontal_subsampling_factor_m = external global i32, align 4
@horizontal_subsampling_factor_n = external global i32, align 4
@picture_structure = external global i32, align 4
@Read_Lower_Layer_Component_Framewise.ext = private unnamed_addr constant [3 x [3 x i8]] [[3 x i8] c".Y\00", [3 x i8] c".U\00", [3 x i8] c".V\00"], align 1
@Lower_Layer_Picture_Filename = external global i8*, align 8
@True_Framenum = external global i32, align 4
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@Read_Lower_Layer_Component_Fieldwise.ext = private unnamed_addr constant [3 x [3 x i8]] [[3 x i8] c".Y\00", [3 x i8] c".U\00", [3 x i8] c".V\00"], align 1
@lower_layer_deinterlaced_field_select = external global i32, align 4
@Clip = external global i8*, align 8

; Function Attrs: nounwind uwtable
define void @Spatial_Prediction() #0 {
entry:
  %0 = load i32, i32* @Frame_Store_Flag, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @lower_layer_prediction_horizontal_size, align 4
  %2 = load i32, i32* @lower_layer_prediction_vertical_size, align 4
  call void @Read_Lower_Layer_Component_Framewise(i32 0, i32 %1, i32 %2)
  %3 = load i32, i32* @lower_layer_prediction_horizontal_size, align 4
  %shr = ashr i32 %3, 1
  %4 = load i32, i32* @lower_layer_prediction_vertical_size, align 4
  %shr1 = ashr i32 %4, 1
  call void @Read_Lower_Layer_Component_Framewise(i32 1, i32 %shr, i32 %shr1)
  %5 = load i32, i32* @lower_layer_prediction_horizontal_size, align 4
  %shr2 = ashr i32 %5, 1
  %6 = load i32, i32* @lower_layer_prediction_vertical_size, align 4
  %shr3 = ashr i32 %6, 1
  call void @Read_Lower_Layer_Component_Framewise(i32 2, i32 %shr2, i32 %shr3)
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load i32, i32* @lower_layer_prediction_horizontal_size, align 4
  %8 = load i32, i32* @lower_layer_prediction_vertical_size, align 4
  call void @Read_Lower_Layer_Component_Fieldwise(i32 0, i32 %7, i32 %8)
  %9 = load i32, i32* @lower_layer_prediction_horizontal_size, align 4
  %shr4 = ashr i32 %9, 1
  %10 = load i32, i32* @lower_layer_prediction_vertical_size, align 4
  %shr5 = ashr i32 %10, 1
  call void @Read_Lower_Layer_Component_Fieldwise(i32 1, i32 %shr4, i32 %shr5)
  %11 = load i32, i32* @lower_layer_prediction_horizontal_size, align 4
  %shr6 = ashr i32 %11, 1
  %12 = load i32, i32* @lower_layer_prediction_vertical_size, align 4
  %shr7 = ashr i32 %12, 1
  call void @Read_Lower_Layer_Component_Fieldwise(i32 2, i32 %shr6, i32 %shr7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load i32, i32* @progressive_frame, align 4
  %14 = load i32, i32* @lower_layer_progressive_frame, align 4
  %15 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @llframe0, i32 0, i64 0), align 8
  %16 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @llframe1, i32 0, i64 0), align 8
  %17 = load i16*, i16** @lltmp, align 8
  %18 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i32 0, i64 0), align 8
  %19 = load i32, i32* @lower_layer_horizontal_offset, align 4
  %20 = load i32, i32* @lower_layer_vertical_offset, align 4
  %21 = load i32, i32* @lower_layer_prediction_horizontal_size, align 4
  %22 = load i32, i32* @lower_layer_prediction_vertical_size, align 4
  %23 = load i32, i32* @horizontal_size, align 4
  %24 = load i32, i32* @vertical_size, align 4
  %25 = load i32, i32* @vertical_subsampling_factor_m, align 4
  %26 = load i32, i32* @vertical_subsampling_factor_n, align 4
  %27 = load i32, i32* @horizontal_subsampling_factor_m, align 4
  %28 = load i32, i32* @horizontal_subsampling_factor_n, align 4
  %29 = load i32, i32* @picture_structure, align 4
  %cmp = icmp ne i32 %29, 3
  %conv = zext i1 %cmp to i32
  call void @Make_Spatial_Prediction_Frame(i32 %13, i32 %14, i8* %15, i8* %16, i16* %17, i8* %18, i32 %19, i32 %20, i32 %21, i32 %22, i32 %23, i32 %24, i32 %25, i32 %26, i32 %27, i32 %28, i32 %conv)
  %30 = load i32, i32* @progressive_frame, align 4
  %31 = load i32, i32* @lower_layer_progressive_frame, align 4
  %32 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @llframe0, i32 0, i64 1), align 8
  %33 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @llframe1, i32 0, i64 1), align 8
  %34 = load i16*, i16** @lltmp, align 8
  %35 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i32 0, i64 1), align 8
  %36 = load i32, i32* @lower_layer_horizontal_offset, align 4
  %div = sdiv i32 %36, 2
  %37 = load i32, i32* @lower_layer_vertical_offset, align 4
  %div8 = sdiv i32 %37, 2
  %38 = load i32, i32* @lower_layer_prediction_horizontal_size, align 4
  %shr9 = ashr i32 %38, 1
  %39 = load i32, i32* @lower_layer_prediction_vertical_size, align 4
  %shr10 = ashr i32 %39, 1
  %40 = load i32, i32* @horizontal_size, align 4
  %shr11 = ashr i32 %40, 1
  %41 = load i32, i32* @vertical_size, align 4
  %shr12 = ashr i32 %41, 1
  %42 = load i32, i32* @vertical_subsampling_factor_m, align 4
  %43 = load i32, i32* @vertical_subsampling_factor_n, align 4
  %44 = load i32, i32* @horizontal_subsampling_factor_m, align 4
  %45 = load i32, i32* @horizontal_subsampling_factor_n, align 4
  call void @Make_Spatial_Prediction_Frame(i32 %30, i32 %31, i8* %32, i8* %33, i16* %34, i8* %35, i32 %div, i32 %div8, i32 %shr9, i32 %shr10, i32 %shr11, i32 %shr12, i32 %42, i32 %43, i32 %44, i32 %45, i32 1)
  %46 = load i32, i32* @progressive_frame, align 4
  %47 = load i32, i32* @lower_layer_progressive_frame, align 4
  %48 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @llframe0, i32 0, i64 2), align 8
  %49 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @llframe1, i32 0, i64 2), align 8
  %50 = load i16*, i16** @lltmp, align 8
  %51 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i32 0, i64 2), align 8
  %52 = load i32, i32* @lower_layer_horizontal_offset, align 4
  %div13 = sdiv i32 %52, 2
  %53 = load i32, i32* @lower_layer_vertical_offset, align 4
  %div14 = sdiv i32 %53, 2
  %54 = load i32, i32* @lower_layer_prediction_horizontal_size, align 4
  %shr15 = ashr i32 %54, 1
  %55 = load i32, i32* @lower_layer_prediction_vertical_size, align 4
  %shr16 = ashr i32 %55, 1
  %56 = load i32, i32* @horizontal_size, align 4
  %shr17 = ashr i32 %56, 1
  %57 = load i32, i32* @vertical_size, align 4
  %shr18 = ashr i32 %57, 1
  %58 = load i32, i32* @vertical_subsampling_factor_m, align 4
  %59 = load i32, i32* @vertical_subsampling_factor_n, align 4
  %60 = load i32, i32* @horizontal_subsampling_factor_m, align 4
  %61 = load i32, i32* @horizontal_subsampling_factor_n, align 4
  call void @Make_Spatial_Prediction_Frame(i32 %46, i32 %47, i8* %48, i8* %49, i16* %50, i8* %51, i32 %div13, i32 %div14, i32 %shr15, i32 %shr16, i32 %shr17, i32 %shr18, i32 %58, i32 %59, i32 %60, i32 %61, i32 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Read_Lower_Layer_Component_Framewise(i32 %comp, i32 %lw, i32 %lh) #0 {
entry:
  %comp.addr = alloca i32, align 4
  %lw.addr = alloca i32, align 4
  %lh.addr = alloca i32, align 4
  %fd = alloca %struct._IO_FILE*, align 8
  %fname = alloca [256 x i8], align 16
  %ext = alloca [3 x [3 x i8]], align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %comp, i32* %comp.addr, align 4
  store i32 %lw, i32* %lw.addr, align 4
  store i32 %lh, i32* %lh.addr, align 4
  %0 = bitcast [3 x [3 x i8]]* %ext to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([3 x [3 x i8]], [3 x [3 x i8]]* @Read_Lower_Layer_Component_Framewise.ext, i32 0, i32 0, i32 0), i64 9, i32 1, i1 false)
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %fname, i32 0, i32 0
  %1 = load i8*, i8** @Lower_Layer_Picture_Filename, align 8
  %2 = load i32, i32* @True_Framenum, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* %1, i32 %2) #1
  %arraydecay1 = getelementptr inbounds [256 x i8], [256 x i8]* %fname, i32 0, i32 0
  %3 = load i32, i32* %comp.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %ext, i32 0, i64 %idxprom
  %arraydecay2 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx, i32 0, i32 0
  %call3 = call i8* @strcat(i8* %arraydecay1, i8* %arraydecay2) #1
  %arraydecay4 = getelementptr inbounds [256 x i8], [256 x i8]* %fname, i32 0, i32 0
  %call5 = call %struct._IO_FILE* @fopen(i8* %arraydecay4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0))
  store %struct._IO_FILE* %call5, %struct._IO_FILE** %fd, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %cmp = icmp eq %struct._IO_FILE* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.33, %if.end
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %lh.addr, align 4
  %cmp6 = icmp slt i32 %5, %6
  br i1 %cmp6, label %for.body, label %for.end.35

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %for.body
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %lw.addr, align 4
  %cmp8 = icmp slt i32 %7, %8
  br i1 %cmp8, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.7
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call10 = call i32 @_IO_getc(%struct._IO_FILE* %9)
  %conv = trunc i32 %call10 to i8
  %10 = load i32, i32* %lw.addr, align 4
  %11 = load i32, i32* %j, align 4
  %mul = mul nsw i32 %10, %11
  %12 = load i32, i32* %i, align 4
  %add = add nsw i32 %mul, %12
  %idxprom11 = sext i32 %add to i64
  %13 = load i32, i32* %comp.addr, align 4
  %idxprom12 = sext i32 %13 to i64
  %arrayidx13 = getelementptr inbounds [3 x i8*], [3 x i8*]* @llframe0, i32 0, i64 %idxprom12
  %14 = load i8*, i8** %arrayidx13, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %14, i64 %idxprom11
  store i8 %conv, i8* %arrayidx14, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.9
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.7

for.end:                                          ; preds = %for.cond.7
  %16 = load i32, i32* @lower_layer_progressive_frame, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.end.32, label %if.then.15

if.then.15:                                       ; preds = %for.end
  %17 = load i32, i32* %j, align 4
  %inc16 = add nsw i32 %17, 1
  store i32 %inc16, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.29, %if.then.15
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %lw.addr, align 4
  %cmp18 = icmp slt i32 %18, %19
  br i1 %cmp18, label %for.body.20, label %for.end.31

for.body.20:                                      ; preds = %for.cond.17
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call21 = call i32 @_IO_getc(%struct._IO_FILE* %20)
  %conv22 = trunc i32 %call21 to i8
  %21 = load i32, i32* %lw.addr, align 4
  %22 = load i32, i32* %j, align 4
  %mul23 = mul nsw i32 %21, %22
  %23 = load i32, i32* %i, align 4
  %add24 = add nsw i32 %mul23, %23
  %idxprom25 = sext i32 %add24 to i64
  %24 = load i32, i32* %comp.addr, align 4
  %idxprom26 = sext i32 %24 to i64
  %arrayidx27 = getelementptr inbounds [3 x i8*], [3 x i8*]* @llframe1, i32 0, i64 %idxprom26
  %25 = load i8*, i8** %arrayidx27, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %25, i64 %idxprom25
  store i8 %conv22, i8* %arrayidx28, align 1
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.body.20
  %26 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %26, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond.17

for.end.31:                                       ; preds = %for.cond.17
  br label %if.end.32

if.end.32:                                        ; preds = %for.end.31, %for.end
  br label %for.inc.33

for.inc.33:                                       ; preds = %if.end.32
  %27 = load i32, i32* %j, align 4
  %inc34 = add nsw i32 %27, 1
  store i32 %inc34, i32* %j, align 4
  br label %for.cond

for.end.35:                                       ; preds = %for.cond
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call36 = call i32 @fclose(%struct._IO_FILE* %28)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Read_Lower_Layer_Component_Fieldwise(i32 %comp, i32 %lw, i32 %lh) #0 {
entry:
  %comp.addr = alloca i32, align 4
  %lw.addr = alloca i32, align 4
  %lh.addr = alloca i32, align 4
  %fd = alloca %struct._IO_FILE*, align 8
  %fname = alloca [256 x i8], align 16
  %ext = alloca [3 x [3 x i8]], align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %comp, i32* %comp.addr, align 4
  store i32 %lw, i32* %lw.addr, align 4
  store i32 %lh, i32* %lh.addr, align 4
  %0 = bitcast [3 x [3 x i8]]* %ext to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([3 x [3 x i8]], [3 x [3 x i8]]* @Read_Lower_Layer_Component_Fieldwise.ext, i32 0, i32 0, i32 0), i64 9, i32 1, i1 false)
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %fname, i32 0, i32 0
  %1 = load i8*, i8** @Lower_Layer_Picture_Filename, align 8
  %2 = load i32, i32* @True_Framenum, align 4
  %3 = load i32, i32* @lower_layer_progressive_frame, align 4
  %tobool = icmp ne i32 %3, 0
  %cond = select i1 %tobool, i32 102, i32 97
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* %1, i32 %2, i32 %cond) #1
  %arraydecay1 = getelementptr inbounds [256 x i8], [256 x i8]* %fname, i32 0, i32 0
  %4 = load i32, i32* %comp.addr, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %ext, i32 0, i64 %idxprom
  %arraydecay2 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx, i32 0, i32 0
  %call3 = call i8* @strcat(i8* %arraydecay1, i8* %arraydecay2) #1
  %arraydecay4 = getelementptr inbounds [256 x i8], [256 x i8]* %fname, i32 0, i32 0
  %call5 = call %struct._IO_FILE* @fopen(i8* %arraydecay4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0))
  store %struct._IO_FILE* %call5, %struct._IO_FILE** %fd, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %cmp = icmp eq %struct._IO_FILE* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.15, %if.end
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* %lh.addr, align 4
  %cmp6 = icmp slt i32 %6, %7
  br i1 %cmp6, label %for.body, label %for.end.19

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %for.body
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %lw.addr, align 4
  %cmp8 = icmp slt i32 %8, %9
  br i1 %cmp8, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.7
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call10 = call i32 @_IO_getc(%struct._IO_FILE* %10)
  %conv = trunc i32 %call10 to i8
  %11 = load i32, i32* %lw.addr, align 4
  %12 = load i32, i32* %j, align 4
  %mul = mul nsw i32 %11, %12
  %13 = load i32, i32* %i, align 4
  %add = add nsw i32 %mul, %13
  %idxprom11 = sext i32 %add to i64
  %14 = load i32, i32* %comp.addr, align 4
  %idxprom12 = sext i32 %14 to i64
  %arrayidx13 = getelementptr inbounds [3 x i8*], [3 x i8*]* @llframe0, i32 0, i64 %idxprom12
  %15 = load i8*, i8** %arrayidx13, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %15, i64 %idxprom11
  store i8 %conv, i8* %arrayidx14, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.9
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.7

for.end:                                          ; preds = %for.cond.7
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.end
  %17 = load i32, i32* @lower_layer_progressive_frame, align 4
  %tobool16 = icmp ne i32 %17, 0
  %cond17 = select i1 %tobool16, i32 1, i32 2
  %18 = load i32, i32* %j, align 4
  %add18 = add nsw i32 %18, %cond17
  store i32 %add18, i32* %j, align 4
  br label %for.cond

for.end.19:                                       ; preds = %for.cond
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call20 = call i32 @fclose(%struct._IO_FILE* %19)
  %20 = load i32, i32* @lower_layer_progressive_frame, align 4
  %tobool21 = icmp ne i32 %20, 0
  br i1 %tobool21, label %if.end.59, label %if.then.22

if.then.22:                                       ; preds = %for.end.19
  %arraydecay23 = getelementptr inbounds [256 x i8], [256 x i8]* %fname, i32 0, i32 0
  %21 = load i8*, i8** @Lower_Layer_Picture_Filename, align 8
  %22 = load i32, i32* @True_Framenum, align 4
  %call24 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay23, i8* %21, i32 %22, i32 98) #1
  %arraydecay25 = getelementptr inbounds [256 x i8], [256 x i8]* %fname, i32 0, i32 0
  %23 = load i32, i32* %comp.addr, align 4
  %idxprom26 = sext i32 %23 to i64
  %arrayidx27 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %ext, i32 0, i64 %idxprom26
  %arraydecay28 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx27, i32 0, i32 0
  %call29 = call i8* @strcat(i8* %arraydecay25, i8* %arraydecay28) #1
  %arraydecay30 = getelementptr inbounds [256 x i8], [256 x i8]* %fname, i32 0, i32 0
  %call31 = call %struct._IO_FILE* @fopen(i8* %arraydecay30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0))
  store %struct._IO_FILE* %call31, %struct._IO_FILE** %fd, align 8
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %cmp32 = icmp eq %struct._IO_FILE* %24, null
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.then.22
  call void @exit(i32 -1) #5
  unreachable

if.end.35:                                        ; preds = %if.then.22
  store i32 1, i32* %j, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.55, %if.end.35
  %25 = load i32, i32* %j, align 4
  %26 = load i32, i32* %lh.addr, align 4
  %cmp37 = icmp slt i32 %25, %26
  br i1 %cmp37, label %for.body.39, label %for.end.57

for.body.39:                                      ; preds = %for.cond.36
  store i32 0, i32* %i, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.52, %for.body.39
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %lw.addr, align 4
  %cmp41 = icmp slt i32 %27, %28
  br i1 %cmp41, label %for.body.43, label %for.end.54

for.body.43:                                      ; preds = %for.cond.40
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call44 = call i32 @_IO_getc(%struct._IO_FILE* %29)
  %conv45 = trunc i32 %call44 to i8
  %30 = load i32, i32* %lw.addr, align 4
  %31 = load i32, i32* %j, align 4
  %mul46 = mul nsw i32 %30, %31
  %32 = load i32, i32* %i, align 4
  %add47 = add nsw i32 %mul46, %32
  %idxprom48 = sext i32 %add47 to i64
  %33 = load i32, i32* %comp.addr, align 4
  %idxprom49 = sext i32 %33 to i64
  %arrayidx50 = getelementptr inbounds [3 x i8*], [3 x i8*]* @llframe1, i32 0, i64 %idxprom49
  %34 = load i8*, i8** %arrayidx50, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %34, i64 %idxprom48
  store i8 %conv45, i8* %arrayidx51, align 1
  br label %for.inc.52

for.inc.52:                                       ; preds = %for.body.43
  %35 = load i32, i32* %i, align 4
  %inc53 = add nsw i32 %35, 1
  store i32 %inc53, i32* %i, align 4
  br label %for.cond.40

for.end.54:                                       ; preds = %for.cond.40
  br label %for.inc.55

for.inc.55:                                       ; preds = %for.end.54
  %36 = load i32, i32* %j, align 4
  %add56 = add nsw i32 %36, 2
  store i32 %add56, i32* %j, align 4
  br label %for.cond.36

for.end.57:                                       ; preds = %for.cond.36
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call58 = call i32 @fclose(%struct._IO_FILE* %37)
  br label %if.end.59

if.end.59:                                        ; preds = %for.end.57, %for.end.19
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Make_Spatial_Prediction_Frame(i32 %progressive_frame, i32 %llprogressive_frame, i8* %fld0, i8* %fld1, i16* %tmp, i8* %dst, i32 %llx0, i32 %lly0, i32 %llw, i32 %llh, i32 %horizontal_size, i32 %vertical_size, i32 %vm, i32 %vn, i32 %hm, i32 %hn, i32 %aperture) #0 {
entry:
  %progressive_frame.addr = alloca i32, align 4
  %llprogressive_frame.addr = alloca i32, align 4
  %fld0.addr = alloca i8*, align 8
  %fld1.addr = alloca i8*, align 8
  %tmp.addr = alloca i16*, align 8
  %dst.addr = alloca i8*, align 8
  %llx0.addr = alloca i32, align 4
  %lly0.addr = alloca i32, align 4
  %llw.addr = alloca i32, align 4
  %llh.addr = alloca i32, align 4
  %horizontal_size.addr = alloca i32, align 4
  %vertical_size.addr = alloca i32, align 4
  %vm.addr = alloca i32, align 4
  %vn.addr = alloca i32, align 4
  %hm.addr = alloca i32, align 4
  %hn.addr = alloca i32, align 4
  %aperture.addr = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %x0 = alloca i32, align 4
  %llw2 = alloca i32, align 4
  %llh2 = alloca i32, align 4
  store i32 %progressive_frame, i32* %progressive_frame.addr, align 4
  store i32 %llprogressive_frame, i32* %llprogressive_frame.addr, align 4
  store i8* %fld0, i8** %fld0.addr, align 8
  store i8* %fld1, i8** %fld1.addr, align 8
  store i16* %tmp, i16** %tmp.addr, align 8
  store i8* %dst, i8** %dst.addr, align 8
  store i32 %llx0, i32* %llx0.addr, align 4
  store i32 %lly0, i32* %lly0.addr, align 4
  store i32 %llw, i32* %llw.addr, align 4
  store i32 %llh, i32* %llh.addr, align 4
  store i32 %horizontal_size, i32* %horizontal_size.addr, align 4
  store i32 %vertical_size, i32* %vertical_size.addr, align 4
  store i32 %vm, i32* %vm.addr, align 4
  store i32 %vn, i32* %vn.addr, align 4
  store i32 %hm, i32* %hm.addr, align 4
  store i32 %hn, i32* %hn.addr, align 4
  store i32 %aperture, i32* %aperture.addr, align 4
  %0 = load i32, i32* %llw.addr, align 4
  %1 = load i32, i32* %hn.addr, align 4
  %mul = mul nsw i32 %0, %1
  %2 = load i32, i32* %hm.addr, align 4
  %div = sdiv i32 %mul, %2
  store i32 %div, i32* %llw2, align 4
  %3 = load i32, i32* %llh.addr, align 4
  %4 = load i32, i32* %vn.addr, align 4
  %mul6 = mul nsw i32 %3, %4
  %5 = load i32, i32* %vm.addr, align 4
  %div7 = sdiv i32 %mul6, %5
  store i32 %div7, i32* %llh2, align 4
  %6 = load i32, i32* %llprogressive_frame.addr, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** %fld0.addr, align 8
  %8 = load i16*, i16** %tmp.addr, align 8
  %9 = load i32, i32* %llw.addr, align 4
  %10 = load i32, i32* %llh.addr, align 4
  %11 = load i32, i32* %llh2, align 4
  %12 = load i32, i32* %vm.addr, align 4
  %13 = load i32, i32* %vn.addr, align 4
  call void @Subsample_Vertical(i8* %7, i16* %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 0, i32 1)
  br label %if.end.15

if.else:                                          ; preds = %entry
  %14 = load i32, i32* %progressive_frame.addr, align 4
  %tobool8 = icmp ne i32 %14, 0
  br i1 %tobool8, label %if.then.9, label %if.else.13

if.then.9:                                        ; preds = %if.else
  %15 = load i32, i32* @lower_layer_deinterlaced_field_select, align 4
  %tobool10 = icmp ne i32 %15, 0
  br i1 %tobool10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.then.9
  %16 = load i8*, i8** %fld1.addr, align 8
  %17 = load i8*, i8** %fld0.addr, align 8
  %18 = load i32, i32* %llw.addr, align 4
  %19 = load i32, i32* %llh.addr, align 4
  %20 = load i32, i32* %aperture.addr, align 4
  call void @Deinterlace(i8* %16, i8* %17, i32 0, i32 %18, i32 %19, i32 %20)
  %21 = load i8*, i8** %fld1.addr, align 8
  %22 = load i16*, i16** %tmp.addr, align 8
  %23 = load i32, i32* %llw.addr, align 4
  %24 = load i32, i32* %llh.addr, align 4
  %25 = load i32, i32* %llh2, align 4
  %26 = load i32, i32* %vm.addr, align 4
  %27 = load i32, i32* %vn.addr, align 4
  call void @Subsample_Vertical(i8* %21, i16* %22, i32 %23, i32 %24, i32 %25, i32 %26, i32 %27, i32 0, i32 1)
  br label %if.end

if.else.12:                                       ; preds = %if.then.9
  %28 = load i8*, i8** %fld0.addr, align 8
  %29 = load i8*, i8** %fld1.addr, align 8
  %30 = load i32, i32* %llw.addr, align 4
  %31 = load i32, i32* %llh.addr, align 4
  %32 = load i32, i32* %aperture.addr, align 4
  call void @Deinterlace(i8* %28, i8* %29, i32 1, i32 %30, i32 %31, i32 %32)
  %33 = load i8*, i8** %fld0.addr, align 8
  %34 = load i16*, i16** %tmp.addr, align 8
  %35 = load i32, i32* %llw.addr, align 4
  %36 = load i32, i32* %llh.addr, align 4
  %37 = load i32, i32* %llh2, align 4
  %38 = load i32, i32* %vm.addr, align 4
  %39 = load i32, i32* %vn.addr, align 4
  call void @Subsample_Vertical(i8* %33, i16* %34, i32 %35, i32 %36, i32 %37, i32 %38, i32 %39, i32 0, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.else.12, %if.then.11
  br label %if.end.14

if.else.13:                                       ; preds = %if.else
  %40 = load i8*, i8** %fld0.addr, align 8
  %41 = load i8*, i8** %fld1.addr, align 8
  %42 = load i32, i32* %llw.addr, align 4
  %43 = load i32, i32* %llh.addr, align 4
  %44 = load i32, i32* %aperture.addr, align 4
  call void @Deinterlace(i8* %40, i8* %41, i32 1, i32 %42, i32 %43, i32 %44)
  %45 = load i8*, i8** %fld1.addr, align 8
  %46 = load i8*, i8** %fld0.addr, align 8
  %47 = load i32, i32* %llw.addr, align 4
  %48 = load i32, i32* %llh.addr, align 4
  %49 = load i32, i32* %aperture.addr, align 4
  call void @Deinterlace(i8* %45, i8* %46, i32 0, i32 %47, i32 %48, i32 %49)
  %50 = load i8*, i8** %fld0.addr, align 8
  %51 = load i16*, i16** %tmp.addr, align 8
  %52 = load i32, i32* %llw.addr, align 4
  %53 = load i32, i32* %llh.addr, align 4
  %54 = load i32, i32* %llh2, align 4
  %55 = load i32, i32* %vm.addr, align 4
  %56 = load i32, i32* %vn.addr, align 4
  call void @Subsample_Vertical(i8* %50, i16* %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56, i32 0, i32 2)
  %57 = load i8*, i8** %fld1.addr, align 8
  %58 = load i16*, i16** %tmp.addr, align 8
  %59 = load i32, i32* %llw.addr, align 4
  %60 = load i32, i32* %llh.addr, align 4
  %61 = load i32, i32* %llh2, align 4
  %62 = load i32, i32* %vm.addr, align 4
  %63 = load i32, i32* %vn.addr, align 4
  call void @Subsample_Vertical(i8* %57, i16* %58, i32 %59, i32 %60, i32 %61, i32 %62, i32 %63, i32 1, i32 2)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.13, %if.end
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then
  %64 = load i32, i32* %lly0.addr, align 4
  %cmp = icmp slt i32 %64, 0
  br i1 %cmp, label %if.then.16, label %if.else.22

if.then.16:                                       ; preds = %if.end.15
  %65 = load i32, i32* %llw.addr, align 4
  %66 = load i32, i32* %lly0.addr, align 4
  %mul17 = mul nsw i32 %65, %66
  %67 = load i16*, i16** %tmp.addr, align 8
  %idx.ext = sext i32 %mul17 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i16, i16* %67, i64 %idx.neg
  store i16* %add.ptr, i16** %tmp.addr, align 8
  %68 = load i32, i32* %lly0.addr, align 4
  %69 = load i32, i32* %llh2, align 4
  %add = add nsw i32 %69, %68
  store i32 %add, i32* %llh2, align 4
  %70 = load i32, i32* %llh2, align 4
  %cmp18 = icmp slt i32 %70, 0
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.16
  store i32 0, i32* %llh2, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.then.16
  %71 = load i32, i32* %vertical_size.addr, align 4
  %72 = load i32, i32* %llh2, align 4
  %cmp21 = icmp slt i32 %71, %72
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.20
  %73 = load i32, i32* %vertical_size.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.20
  %74 = load i32, i32* %llh2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %73, %cond.true ], [ %74, %cond.false ]
  store i32 %cond, i32* %h, align 4
  br label %if.end.29

if.else.22:                                       ; preds = %if.end.15
  %75 = load i32, i32* %horizontal_size.addr, align 4
  %76 = load i32, i32* %lly0.addr, align 4
  %mul23 = mul nsw i32 %75, %76
  %77 = load i8*, i8** %dst.addr, align 8
  %idx.ext24 = sext i32 %mul23 to i64
  %add.ptr25 = getelementptr inbounds i8, i8* %77, i64 %idx.ext24
  store i8* %add.ptr25, i8** %dst.addr, align 8
  %78 = load i32, i32* %vertical_size.addr, align 4
  %79 = load i32, i32* %lly0.addr, align 4
  %sub = sub nsw i32 %78, %79
  store i32 %sub, i32* %h, align 4
  %80 = load i32, i32* %h, align 4
  %81 = load i32, i32* %llh2, align 4
  %cmp26 = icmp sgt i32 %80, %81
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.else.22
  %82 = load i32, i32* %llh2, align 4
  store i32 %82, i32* %h, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.else.22
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %cond.end
  %83 = load i32, i32* %llx0.addr, align 4
  %cmp30 = icmp slt i32 %83, 0
  br i1 %cmp30, label %if.then.31, label %if.else.42

if.then.31:                                       ; preds = %if.end.29
  %84 = load i32, i32* %llx0.addr, align 4
  %sub32 = sub nsw i32 0, %84
  store i32 %sub32, i32* %x0, align 4
  %85 = load i32, i32* %llx0.addr, align 4
  %86 = load i32, i32* %llw2, align 4
  %add33 = add nsw i32 %86, %85
  store i32 %add33, i32* %llw2, align 4
  %87 = load i32, i32* %llw2, align 4
  %cmp34 = icmp slt i32 %87, 0
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.then.31
  store i32 0, i32* %llw2, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %if.then.31
  %88 = load i32, i32* %horizontal_size.addr, align 4
  %89 = load i32, i32* %llw2, align 4
  %cmp37 = icmp slt i32 %88, %89
  br i1 %cmp37, label %cond.true.38, label %cond.false.39

cond.true.38:                                     ; preds = %if.end.36
  %90 = load i32, i32* %horizontal_size.addr, align 4
  br label %cond.end.40

cond.false.39:                                    ; preds = %if.end.36
  %91 = load i32, i32* %llw2, align 4
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.39, %cond.true.38
  %cond41 = phi i32 [ %90, %cond.true.38 ], [ %91, %cond.false.39 ]
  store i32 %cond41, i32* %w, align 4
  br label %if.end.49

if.else.42:                                       ; preds = %if.end.29
  %92 = load i32, i32* %llx0.addr, align 4
  %93 = load i8*, i8** %dst.addr, align 8
  %idx.ext43 = sext i32 %92 to i64
  %add.ptr44 = getelementptr inbounds i8, i8* %93, i64 %idx.ext43
  store i8* %add.ptr44, i8** %dst.addr, align 8
  store i32 0, i32* %x0, align 4
  %94 = load i32, i32* %horizontal_size.addr, align 4
  %95 = load i32, i32* %llx0.addr, align 4
  %sub45 = sub nsw i32 %94, %95
  store i32 %sub45, i32* %w, align 4
  %96 = load i32, i32* %w, align 4
  %97 = load i32, i32* %llw2, align 4
  %cmp46 = icmp sgt i32 %96, %97
  br i1 %cmp46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.else.42
  %98 = load i32, i32* %llw2, align 4
  store i32 %98, i32* %w, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %if.else.42
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %cond.end.40
  %99 = load i16*, i16** %tmp.addr, align 8
  %100 = load i8*, i8** %dst.addr, align 8
  %101 = load i32, i32* %x0, align 4
  %102 = load i32, i32* %w, align 4
  %103 = load i32, i32* %llw.addr, align 4
  %104 = load i32, i32* %horizontal_size.addr, align 4
  %105 = load i32, i32* %h, align 4
  %106 = load i32, i32* %hm.addr, align 4
  %107 = load i32, i32* %hn.addr, align 4
  call void @Subsample_Horizontal(i16* %99, i8* %100, i32 %101, i32 %102, i32 %103, i32 %104, i32 %105, i32 %106, i32 %107)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

declare i32 @_IO_getc(%struct._IO_FILE*) #3

declare i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define internal void @Subsample_Vertical(i8* %s, i16* %d, i32 %lx, i32 %lys, i32 %lyd, i32 %m, i32 %n, i32 %j0, i32 %dj) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %d.addr = alloca i16*, align 8
  %lx.addr = alloca i32, align 4
  %lys.addr = alloca i32, align 4
  %lyd.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %j0.addr = alloca i32, align 4
  %dj.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  %jd = alloca i32, align 4
  %s1 = alloca i8*, align 8
  %s2 = alloca i8*, align 8
  %d1 = alloca i16*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i16* %d, i16** %d.addr, align 8
  store i32 %lx, i32* %lx.addr, align 4
  store i32 %lys, i32* %lys.addr, align 4
  store i32 %lyd, i32* %lyd.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %j0, i32* %j0.addr, align 4
  store i32 %dj, i32* %dj.addr, align 4
  %0 = load i32, i32* %j0.addr, align 4
  store i32 %0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.24, %entry
  %1 = load i32, i32* %j, align 4
  %2 = load i32, i32* %lyd.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.26

for.body:                                         ; preds = %for.cond
  %3 = load i16*, i16** %d.addr, align 8
  %4 = load i32, i32* %lx.addr, align 4
  %5 = load i32, i32* %j, align 4
  %mul = mul nsw i32 %4, %5
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i16, i16* %3, i64 %idx.ext
  store i16* %add.ptr, i16** %d1, align 8
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* %m.addr, align 4
  %mul1 = mul nsw i32 %6, %7
  %8 = load i32, i32* %n.addr, align 4
  %div = sdiv i32 %mul1, %8
  store i32 %div, i32* %jd, align 4
  %9 = load i8*, i8** %s.addr, align 8
  %10 = load i32, i32* %lx.addr, align 4
  %11 = load i32, i32* %jd, align 4
  %mul2 = mul nsw i32 %10, %11
  %idx.ext3 = sext i32 %mul2 to i64
  %add.ptr4 = getelementptr inbounds i8, i8* %9, i64 %idx.ext3
  store i8* %add.ptr4, i8** %s1, align 8
  %12 = load i32, i32* %jd, align 4
  %13 = load i32, i32* %lys.addr, align 4
  %sub = sub nsw i32 %13, 1
  %cmp5 = icmp slt i32 %12, %sub
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %14 = load i8*, i8** %s1, align 8
  %15 = load i32, i32* %lx.addr, align 4
  %idx.ext6 = sext i32 %15 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %14, i64 %idx.ext6
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %16 = load i8*, i8** %s1, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr7, %cond.true ], [ %16, %cond.false ]
  store i8* %cond, i8** %s2, align 8
  %17 = load i32, i32* %j, align 4
  %18 = load i32, i32* %m.addr, align 4
  %mul8 = mul nsw i32 %17, %18
  %19 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %mul8, %19
  %mul9 = mul nsw i32 16, %rem
  %20 = load i32, i32* %n.addr, align 4
  %shr = ashr i32 %20, 1
  %add = add nsw i32 %mul9, %shr
  %21 = load i32, i32* %n.addr, align 4
  %div10 = sdiv i32 %add, %21
  store i32 %div10, i32* %c2, align 4
  %22 = load i32, i32* %c2, align 4
  %sub11 = sub nsw i32 16, %22
  store i32 %sub11, i32* %c1, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc, %cond.end
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %lx.addr, align 4
  %cmp13 = icmp slt i32 %23, %24
  br i1 %cmp13, label %for.body.14, label %for.end

for.body.14:                                      ; preds = %for.cond.12
  %25 = load i32, i32* %c1, align 4
  %26 = load i32, i32* %i, align 4
  %idxprom = sext i32 %26 to i64
  %27 = load i8*, i8** %s1, align 8
  %arrayidx = getelementptr inbounds i8, i8* %27, i64 %idxprom
  %28 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %28 to i32
  %mul15 = mul nsw i32 %25, %conv
  %29 = load i32, i32* %c2, align 4
  %30 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %30 to i64
  %31 = load i8*, i8** %s2, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %31, i64 %idxprom16
  %32 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %32 to i32
  %mul19 = mul nsw i32 %29, %conv18
  %add20 = add nsw i32 %mul15, %mul19
  %conv21 = trunc i32 %add20 to i16
  %33 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %33 to i64
  %34 = load i16*, i16** %d1, align 8
  %arrayidx23 = getelementptr inbounds i16, i16* %34, i64 %idxprom22
  store i16 %conv21, i16* %arrayidx23, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body.14
  %35 = load i32, i32* %i, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.12

for.end:                                          ; preds = %for.cond.12
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.end
  %36 = load i32, i32* %dj.addr, align 4
  %37 = load i32, i32* %j, align 4
  %add25 = add nsw i32 %37, %36
  store i32 %add25, i32* %j, align 4
  br label %for.cond

for.end.26:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Deinterlace(i8* %fld0, i8* %fld1, i32 %j0, i32 %lx, i32 %ly, i32 %aperture) #0 {
entry:
  %fld0.addr = alloca i8*, align 8
  %fld1.addr = alloca i8*, align 8
  %j0.addr = alloca i32, align 4
  %lx.addr = alloca i32, align 4
  %ly.addr = alloca i32, align 4
  %aperture.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %v = alloca i32, align 4
  %p0 = alloca i8*, align 8
  %p0m1 = alloca i8*, align 8
  %p0p1 = alloca i8*, align 8
  %p1 = alloca i8*, align 8
  %p1m2 = alloca i8*, align 8
  %p1p2 = alloca i8*, align 8
  store i8* %fld0, i8** %fld0.addr, align 8
  store i8* %fld1, i8** %fld1.addr, align 8
  store i32 %j0, i32* %j0.addr, align 4
  store i32 %lx, i32* %lx.addr, align 4
  store i32 %ly, i32* %ly.addr, align 4
  store i32 %aperture, i32* %aperture.addr, align 4
  %0 = load i32, i32* %j0.addr, align 4
  store i32 %0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.86, %entry
  %1 = load i32, i32* %j, align 4
  %2 = load i32, i32* %ly.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.88

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %fld0.addr, align 8
  %4 = load i32, i32* %lx.addr, align 4
  %5 = load i32, i32* %j, align 4
  %mul = mul nsw i32 %4, %5
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %idx.ext
  store i8* %add.ptr, i8** %p0, align 8
  %6 = load i32, i32* %j, align 4
  %cmp1 = icmp eq i32 %6, 0
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %7 = load i8*, i8** %p0, align 8
  %8 = load i32, i32* %lx.addr, align 4
  %idx.ext2 = sext i32 %8 to i64
  %add.ptr3 = getelementptr inbounds i8, i8* %7, i64 %idx.ext2
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %9 = load i8*, i8** %p0, align 8
  %10 = load i32, i32* %lx.addr, align 4
  %idx.ext4 = sext i32 %10 to i64
  %idx.neg = sub i64 0, %idx.ext4
  %add.ptr5 = getelementptr inbounds i8, i8* %9, i64 %idx.neg
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr3, %cond.true ], [ %add.ptr5, %cond.false ]
  store i8* %cond, i8** %p0m1, align 8
  %11 = load i32, i32* %j, align 4
  %12 = load i32, i32* %ly.addr, align 4
  %sub = sub nsw i32 %12, 1
  %cmp6 = icmp eq i32 %11, %sub
  br i1 %cmp6, label %cond.true.7, label %cond.false.11

cond.true.7:                                      ; preds = %cond.end
  %13 = load i8*, i8** %p0, align 8
  %14 = load i32, i32* %lx.addr, align 4
  %idx.ext8 = sext i32 %14 to i64
  %idx.neg9 = sub i64 0, %idx.ext8
  %add.ptr10 = getelementptr inbounds i8, i8* %13, i64 %idx.neg9
  br label %cond.end.14

cond.false.11:                                    ; preds = %cond.end
  %15 = load i8*, i8** %p0, align 8
  %16 = load i32, i32* %lx.addr, align 4
  %idx.ext12 = sext i32 %16 to i64
  %add.ptr13 = getelementptr inbounds i8, i8* %15, i64 %idx.ext12
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.11, %cond.true.7
  %cond15 = phi i8* [ %add.ptr10, %cond.true.7 ], [ %add.ptr13, %cond.false.11 ]
  store i8* %cond15, i8** %p0p1, align 8
  %17 = load i32, i32* %aperture.addr, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.14
  store i32 0, i32* %i, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc, %if.then
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %lx.addr, align 4
  %cmp17 = icmp slt i32 %18, %19
  br i1 %cmp17, label %for.body.18, label %for.end

for.body.18:                                      ; preds = %for.cond.16
  %20 = load i32, i32* %i, align 4
  %idxprom = sext i32 %20 to i64
  %21 = load i8*, i8** %p0m1, align 8
  %arrayidx = getelementptr inbounds i8, i8* %21, i64 %idxprom
  %22 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %22 to i32
  %23 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %23 to i64
  %24 = load i8*, i8** %p0p1, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %24, i64 %idxprom19
  %25 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %25 to i32
  %add = add nsw i32 %conv, %conv21
  %add22 = add nsw i32 %add, 1
  %shr = lshr i32 %add22, 1
  %conv23 = trunc i32 %shr to i8
  %26 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %26 to i64
  %27 = load i8*, i8** %p0, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %27, i64 %idxprom24
  store i8 %conv23, i8* %arrayidx25, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.18
  %28 = load i32, i32* %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.16

for.end:                                          ; preds = %for.cond.16
  br label %if.end

if.else:                                          ; preds = %cond.end.14
  %29 = load i8*, i8** %fld1.addr, align 8
  %30 = load i32, i32* %lx.addr, align 4
  %31 = load i32, i32* %j, align 4
  %mul26 = mul nsw i32 %30, %31
  %idx.ext27 = sext i32 %mul26 to i64
  %add.ptr28 = getelementptr inbounds i8, i8* %29, i64 %idx.ext27
  store i8* %add.ptr28, i8** %p1, align 8
  %32 = load i32, i32* %j, align 4
  %cmp29 = icmp slt i32 %32, 2
  br i1 %cmp29, label %cond.true.31, label %cond.false.32

cond.true.31:                                     ; preds = %if.else
  %33 = load i8*, i8** %p1, align 8
  br label %cond.end.37

cond.false.32:                                    ; preds = %if.else
  %34 = load i8*, i8** %p1, align 8
  %35 = load i32, i32* %lx.addr, align 4
  %mul33 = mul nsw i32 2, %35
  %idx.ext34 = sext i32 %mul33 to i64
  %idx.neg35 = sub i64 0, %idx.ext34
  %add.ptr36 = getelementptr inbounds i8, i8* %34, i64 %idx.neg35
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.32, %cond.true.31
  %cond38 = phi i8* [ %33, %cond.true.31 ], [ %add.ptr36, %cond.false.32 ]
  store i8* %cond38, i8** %p1m2, align 8
  %36 = load i32, i32* %j, align 4
  %37 = load i32, i32* %ly.addr, align 4
  %sub39 = sub nsw i32 %37, 2
  %cmp40 = icmp sge i32 %36, %sub39
  br i1 %cmp40, label %cond.true.42, label %cond.false.43

cond.true.42:                                     ; preds = %cond.end.37
  %38 = load i8*, i8** %p1, align 8
  br label %cond.end.47

cond.false.43:                                    ; preds = %cond.end.37
  %39 = load i8*, i8** %p1, align 8
  %40 = load i32, i32* %lx.addr, align 4
  %mul44 = mul nsw i32 2, %40
  %idx.ext45 = sext i32 %mul44 to i64
  %add.ptr46 = getelementptr inbounds i8, i8* %39, i64 %idx.ext45
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.43, %cond.true.42
  %cond48 = phi i8* [ %38, %cond.true.42 ], [ %add.ptr46, %cond.false.43 ]
  store i8* %cond48, i8** %p1p2, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.83, %cond.end.47
  %41 = load i32, i32* %i, align 4
  %42 = load i32, i32* %lx.addr, align 4
  %cmp50 = icmp slt i32 %41, %42
  br i1 %cmp50, label %for.body.52, label %for.end.85

for.body.52:                                      ; preds = %for.cond.49
  %43 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %43 to i64
  %44 = load i8*, i8** %p0m1, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %44, i64 %idxprom53
  %45 = load i8, i8* %arrayidx54, align 1
  %conv55 = zext i8 %45 to i32
  %46 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %46 to i64
  %47 = load i8*, i8** %p0p1, align 8
  %arrayidx57 = getelementptr inbounds i8, i8* %47, i64 %idxprom56
  %48 = load i8, i8* %arrayidx57, align 1
  %conv58 = zext i8 %48 to i32
  %add59 = add nsw i32 %conv55, %conv58
  %mul60 = mul nsw i32 8, %add59
  %49 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %49 to i64
  %50 = load i8*, i8** %p1, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %50, i64 %idxprom61
  %51 = load i8, i8* %arrayidx62, align 1
  %conv63 = zext i8 %51 to i32
  %mul64 = mul nsw i32 2, %conv63
  %add65 = add nsw i32 %mul60, %mul64
  %52 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %52 to i64
  %53 = load i8*, i8** %p1m2, align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %53, i64 %idxprom66
  %54 = load i8, i8* %arrayidx67, align 1
  %conv68 = zext i8 %54 to i32
  %sub69 = sub nsw i32 %add65, %conv68
  %55 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %55 to i64
  %56 = load i8*, i8** %p1p2, align 8
  %arrayidx71 = getelementptr inbounds i8, i8* %56, i64 %idxprom70
  %57 = load i8, i8* %arrayidx71, align 1
  %conv72 = zext i8 %57 to i32
  %sub73 = sub nsw i32 %sub69, %conv72
  store i32 %sub73, i32* %v, align 4
  %58 = load i32, i32* %v, align 4
  %59 = load i32, i32* %v, align 4
  %cmp74 = icmp sge i32 %59, 0
  %cond76 = select i1 %cmp74, i32 8, i32 7
  %add77 = add nsw i32 %58, %cond76
  %shr78 = ashr i32 %add77, 4
  %idxprom79 = sext i32 %shr78 to i64
  %60 = load i8*, i8** @Clip, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %60, i64 %idxprom79
  %61 = load i8, i8* %arrayidx80, align 1
  %62 = load i32, i32* %i, align 4
  %idxprom81 = sext i32 %62 to i64
  %63 = load i8*, i8** %p0, align 8
  %arrayidx82 = getelementptr inbounds i8, i8* %63, i64 %idxprom81
  store i8 %61, i8* %arrayidx82, align 1
  br label %for.inc.83

for.inc.83:                                       ; preds = %for.body.52
  %64 = load i32, i32* %i, align 4
  %inc84 = add nsw i32 %64, 1
  store i32 %inc84, i32* %i, align 4
  br label %for.cond.49

for.end.85:                                       ; preds = %for.cond.49
  br label %if.end

if.end:                                           ; preds = %for.end.85, %for.end
  br label %for.inc.86

for.inc.86:                                       ; preds = %if.end
  %65 = load i32, i32* %j, align 4
  %add87 = add nsw i32 %65, 2
  store i32 %add87, i32* %j, align 4
  br label %for.cond

for.end.88:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Subsample_Horizontal(i16* %s, i8* %d, i32 %x0, i32 %lx, i32 %lxs, i32 %lxd, i32 %ly, i32 %m, i32 %n) #0 {
entry:
  %s.addr = alloca i16*, align 8
  %d.addr = alloca i8*, align 8
  %x0.addr = alloca i32, align 4
  %lx.addr = alloca i32, align 4
  %lxs.addr = alloca i32, align 4
  %lxd.addr = alloca i32, align 4
  %ly.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  %j = alloca i32, align 4
  %id = alloca i32, align 4
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  %v = alloca i32, align 4
  %s1 = alloca i16*, align 8
  %s2 = alloca i16*, align 8
  %d1 = alloca i8*, align 8
  store i16* %s, i16** %s.addr, align 8
  store i8* %d, i8** %d.addr, align 8
  store i32 %x0, i32* %x0.addr, align 4
  store i32 %lx, i32* %lx.addr, align 4
  store i32 %lxs, i32* %lxs.addr, align 4
  store i32 %lxd, i32* %lxd.addr, align 4
  store i32 %ly, i32* %ly.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 0, i32* %i1, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.29, %entry
  %0 = load i32, i32* %i1, align 4
  %1 = load i32, i32* %lx.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.31

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %d.addr, align 8
  %3 = load i32, i32* %i1, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.ext
  store i8* %add.ptr, i8** %d1, align 8
  %4 = load i32, i32* %x0.addr, align 4
  %5 = load i32, i32* %i1, align 4
  %add = add nsw i32 %4, %5
  store i32 %add, i32* %i, align 4
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %m.addr, align 4
  %mul = mul nsw i32 %6, %7
  %8 = load i32, i32* %n.addr, align 4
  %div = sdiv i32 %mul, %8
  store i32 %div, i32* %id, align 4
  %9 = load i16*, i16** %s.addr, align 8
  %10 = load i32, i32* %id, align 4
  %idx.ext1 = sext i32 %10 to i64
  %add.ptr2 = getelementptr inbounds i16, i16* %9, i64 %idx.ext1
  store i16* %add.ptr2, i16** %s1, align 8
  %11 = load i32, i32* %id, align 4
  %12 = load i32, i32* %lxs.addr, align 4
  %sub = sub nsw i32 %12, 1
  %cmp3 = icmp slt i32 %11, %sub
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %13 = load i16*, i16** %s1, align 8
  %add.ptr4 = getelementptr inbounds i16, i16* %13, i64 1
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %14 = load i16*, i16** %s1, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i16* [ %add.ptr4, %cond.true ], [ %14, %cond.false ]
  store i16* %cond, i16** %s2, align 8
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %m.addr, align 4
  %mul5 = mul nsw i32 %15, %16
  %17 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %mul5, %17
  %mul6 = mul nsw i32 16, %rem
  %18 = load i32, i32* %n.addr, align 4
  %shr = ashr i32 %18, 1
  %add7 = add nsw i32 %mul6, %shr
  %19 = load i32, i32* %n.addr, align 4
  %div8 = sdiv i32 %add7, %19
  store i32 %div8, i32* %c2, align 4
  %20 = load i32, i32* %c2, align 4
  %sub9 = sub nsw i32 16, %20
  store i32 %sub9, i32* %c1, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %cond.end
  %21 = load i32, i32* %j, align 4
  %22 = load i32, i32* %ly.addr, align 4
  %cmp11 = icmp slt i32 %21, %22
  br i1 %cmp11, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.10
  %23 = load i32, i32* %c1, align 4
  %24 = load i16*, i16** %s1, align 8
  %25 = load i16, i16* %24, align 2
  %conv = sext i16 %25 to i32
  %mul13 = mul nsw i32 %23, %conv
  %26 = load i32, i32* %c2, align 4
  %27 = load i16*, i16** %s2, align 8
  %28 = load i16, i16* %27, align 2
  %conv14 = sext i16 %28 to i32
  %mul15 = mul nsw i32 %26, %conv14
  %add16 = add nsw i32 %mul13, %mul15
  store i32 %add16, i32* %v, align 4
  %29 = load i32, i32* %v, align 4
  %30 = load i32, i32* %v, align 4
  %cmp17 = icmp sge i32 %30, 0
  %cond19 = select i1 %cmp17, i32 128, i32 127
  %add20 = add nsw i32 %29, %cond19
  %shr21 = ashr i32 %add20, 8
  %conv22 = trunc i32 %shr21 to i8
  %31 = load i8*, i8** %d1, align 8
  store i8 %conv22, i8* %31, align 1
  %32 = load i32, i32* %lxd.addr, align 4
  %33 = load i8*, i8** %d1, align 8
  %idx.ext23 = sext i32 %32 to i64
  %add.ptr24 = getelementptr inbounds i8, i8* %33, i64 %idx.ext23
  store i8* %add.ptr24, i8** %d1, align 8
  %34 = load i32, i32* %lxs.addr, align 4
  %35 = load i16*, i16** %s1, align 8
  %idx.ext25 = sext i32 %34 to i64
  %add.ptr26 = getelementptr inbounds i16, i16* %35, i64 %idx.ext25
  store i16* %add.ptr26, i16** %s1, align 8
  %36 = load i32, i32* %lxs.addr, align 4
  %37 = load i16*, i16** %s2, align 8
  %idx.ext27 = sext i32 %36 to i64
  %add.ptr28 = getelementptr inbounds i16, i16* %37, i64 %idx.ext27
  store i16* %add.ptr28, i16** %s2, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.12
  %38 = load i32, i32* %j, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.10

for.end:                                          ; preds = %for.cond.10
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.end
  %39 = load i32, i32* %i1, align 4
  %inc30 = add nsw i32 %39, 1
  store i32 %inc30, i32* %i1, align 4
  br label %for.cond

for.end.31:                                       ; preds = %for.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
