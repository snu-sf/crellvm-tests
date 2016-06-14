; ModuleID = 'fmo.c'
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
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }

@MBAmap = global i8* null, align 8
@MapUnitToSliceGroupMap = global i8* null, align 8
@FirstMBInSlice = internal global [8 x i32] zeroinitializer, align 16
@img = external global %struct.ImageParameters*, align 8
@PicSizeInMapUnits = common global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"wrong pps->pic_size_in_map_units_minus1 for used SPS and FMO type 6\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"cannot allocated %d bytes for MapUnitToSliceGroupMap, exit\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Illegal slice_group_map_type %d , exit \0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"cannot allocated %d bytes for MBAmap, exit\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @FmoInit(%struct.ImageParameters* %img, %struct.pic_parameter_set_rbsp_t* %pps, %struct.seq_parameter_set_rbsp_t* %sps) #0 {
entry:
  %img.addr = alloca %struct.ImageParameters*, align 8
  %pps.addr = alloca %struct.pic_parameter_set_rbsp_t*, align 8
  %sps.addr = alloca %struct.seq_parameter_set_rbsp_t*, align 8
  %k = alloca i32, align 4
  store %struct.ImageParameters* %img, %struct.ImageParameters** %img.addr, align 8
  store %struct.pic_parameter_set_rbsp_t* %pps, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  store %struct.seq_parameter_set_rbsp_t* %sps, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %k, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* @FirstMBInSlice, i32 0, i64 %idxprom
  store i32 -1, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %k, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %3 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %4 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %call = call i32 @FmoGenerateMapUnitToSliceGroupMap(%struct.ImageParameters* %3, %struct.pic_parameter_set_rbsp_t* %4)
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %6 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %call1 = call i32 @FmoGenerateMBAmap(%struct.ImageParameters* %5, %struct.seq_parameter_set_rbsp_t* %6)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @FmoGenerateMapUnitToSliceGroupMap(%struct.ImageParameters* %img, %struct.pic_parameter_set_rbsp_t* %pps) #0 {
entry:
  %retval = alloca i32, align 4
  %img.addr = alloca %struct.ImageParameters*, align 8
  %pps.addr = alloca %struct.pic_parameter_set_rbsp_t*, align 8
  store %struct.ImageParameters* %img, %struct.ImageParameters** %img.addr, align 8
  store %struct.pic_parameter_set_rbsp_t* %pps, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicHeightInMapUnits = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 107
  %1 = load i32, i32* %PicHeightInMapUnits, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicWidthInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 106
  %3 = load i32, i32* %PicWidthInMbs, align 4
  %mul = mul i32 %1, %3
  store i32 %mul, i32* @PicSizeInMapUnits, align 4
  %4 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_map_type = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %4, i32 0, i32 9
  %5 = load i32, i32* %slice_group_map_type, align 4
  %cmp = icmp eq i32 %5, 6
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %6 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %pic_size_in_map_units_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %6, i32 0, i32 15
  %7 = load i32, i32* %pic_size_in_map_units_minus1, align 4
  %add = add i32 %7, 1
  %8 = load i32, i32* @PicSizeInMapUnits, align 4
  %cmp1 = icmp ne i32 %add, %8
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  call void @error(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i32 0, i32 0), i32 500)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %9 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %tobool = icmp ne i8* %9, null
  br i1 %tobool, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end.3
  %10 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  call void @free(i8* %10) #4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end.3
  %11 = load i32, i32* @PicSizeInMapUnits, align 4
  %conv = zext i32 %11 to i64
  %mul6 = mul i64 %conv, 1
  %call = call noalias i8* @malloc(i64 %mul6) #4
  store i8* %call, i8** @MapUnitToSliceGroupMap, align 8
  %cmp7 = icmp eq i8* %call, null
  br i1 %cmp7, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %if.end.5
  %12 = load i32, i32* @PicSizeInMapUnits, align 4
  %conv10 = zext i32 %12 to i64
  %mul11 = mul i64 %conv10, 1
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i32 0, i32 0), i64 %mul11)
  call void @exit(i32 -1) #5
  unreachable

if.end.13:                                        ; preds = %if.end.5
  %13 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_slice_groups_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %13, i32 0, i32 8
  %14 = load i32, i32* %num_slice_groups_minus1, align 4
  %cmp14 = icmp eq i32 %14, 0
  br i1 %cmp14, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %if.end.13
  %15 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %16 = load i32, i32* @PicSizeInMapUnits, align 4
  %conv17 = zext i32 %16 to i64
  %mul18 = mul i64 %conv17, 1
  call void @llvm.memset.p0i8.i64(i8* %15, i8 0, i64 %mul18, i32 1, i1 false)
  store i32 0, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.end.13
  %17 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_map_type20 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %17, i32 0, i32 9
  %18 = load i32, i32* %slice_group_map_type20, align 4
  switch i32 %18, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.21
    i32 2, label %sw.bb.22
    i32 3, label %sw.bb.23
    i32 4, label %sw.bb.24
    i32 5, label %sw.bb.25
    i32 6, label %sw.bb.26
  ]

sw.bb:                                            ; preds = %if.end.19
  %19 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %20 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  call void @FmoGenerateType0MapUnitMap(%struct.ImageParameters* %19, %struct.pic_parameter_set_rbsp_t* %20)
  br label %sw.epilog

sw.bb.21:                                         ; preds = %if.end.19
  %21 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %22 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  call void @FmoGenerateType1MapUnitMap(%struct.ImageParameters* %21, %struct.pic_parameter_set_rbsp_t* %22)
  br label %sw.epilog

sw.bb.22:                                         ; preds = %if.end.19
  %23 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %24 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  call void @FmoGenerateType2MapUnitMap(%struct.ImageParameters* %23, %struct.pic_parameter_set_rbsp_t* %24)
  br label %sw.epilog

sw.bb.23:                                         ; preds = %if.end.19
  %25 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %26 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  call void @FmoGenerateType3MapUnitMap(%struct.ImageParameters* %25, %struct.pic_parameter_set_rbsp_t* %26)
  br label %sw.epilog

sw.bb.24:                                         ; preds = %if.end.19
  %27 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %28 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  call void @FmoGenerateType4MapUnitMap(%struct.ImageParameters* %27, %struct.pic_parameter_set_rbsp_t* %28)
  br label %sw.epilog

sw.bb.25:                                         ; preds = %if.end.19
  %29 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %30 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  call void @FmoGenerateType5MapUnitMap(%struct.ImageParameters* %29, %struct.pic_parameter_set_rbsp_t* %30)
  br label %sw.epilog

sw.bb.26:                                         ; preds = %if.end.19
  %31 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %32 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  call void @FmoGenerateType6MapUnitMap(%struct.ImageParameters* %31, %struct.pic_parameter_set_rbsp_t* %32)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.19
  %33 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_map_type27 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %33, i32 0, i32 9
  %34 = load i32, i32* %slice_group_map_type27, align 4
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0), i32 %34)
  call void @exit(i32 -1) #5
  unreachable

sw.epilog:                                        ; preds = %sw.bb.26, %sw.bb.25, %sw.bb.24, %sw.bb.23, %sw.bb.22, %sw.bb.21, %sw.bb
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then.16
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define internal i32 @FmoGenerateMBAmap(%struct.ImageParameters* %img, %struct.seq_parameter_set_rbsp_t* %sps) #0 {
entry:
  %img.addr = alloca %struct.ImageParameters*, align 8
  %sps.addr = alloca %struct.seq_parameter_set_rbsp_t*, align 8
  %i = alloca i32, align 4
  store %struct.ImageParameters* %img, %struct.ImageParameters** %img.addr, align 8
  store %struct.seq_parameter_set_rbsp_t* %sps, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %0 = load i8*, i8** @MBAmap, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** @MBAmap, align 8
  call void @free(i8* %1) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 110
  %3 = load i32, i32* %PicSizeInMbs, align 4
  %conv = zext i32 %3 to i64
  %mul = mul i64 %conv, 1
  %call = call noalias i8* @malloc(i64 %mul) #4
  store i8* %call, i8** @MBAmap, align 8
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %if.end
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicSizeInMbs3 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 110
  %5 = load i32, i32* %PicSizeInMbs3, align 4
  %conv4 = zext i32 %5 to i64
  %mul5 = mul i64 %conv4, 1
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i32 0, i32 0), i64 %mul5)
  call void @exit(i32 -1) #5
  unreachable

if.end.7:                                         ; preds = %if.end
  %6 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %6, i32 0, i32 25
  %7 = load i32, i32* %frame_mbs_only_flag, align 4
  %tobool8 = icmp ne i32 %7, 0
  br i1 %tobool8, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.7
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %field_picture = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 100
  %9 = load i32, i32* %field_picture, align 4
  %tobool9 = icmp ne i32 %9, 0
  br i1 %tobool9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %lor.lhs.false, %if.end.7
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.10
  %10 = load i32, i32* %i, align 4
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicSizeInMbs11 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i32 0, i32 110
  %12 = load i32, i32* %PicSizeInMbs11, align 4
  %cmp12 = icmp ult i32 %10, %12
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %idxprom = zext i32 %13 to i64
  %14 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 %idxprom
  %15 = load i8, i8* %arrayidx, align 1
  %16 = load i32, i32* %i, align 4
  %idxprom14 = zext i32 %16 to i64
  %17 = load i8*, i8** @MBAmap, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %17, i64 %idxprom14
  store i8 %15, i8* %arrayidx15, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.51

if.else:                                          ; preds = %lor.lhs.false
  %19 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %mb_adaptive_frame_field_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %19, i32 0, i32 26
  %20 = load i32, i32* %mb_adaptive_frame_field_flag, align 4
  %tobool16 = icmp ne i32 %20, 0
  br i1 %tobool16, label %land.lhs.true, label %if.else.32

land.lhs.true:                                    ; preds = %if.else
  %21 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %field_picture17 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %21, i32 0, i32 100
  %22 = load i32, i32* %field_picture17, align 4
  %tobool18 = icmp ne i32 %22, 0
  br i1 %tobool18, label %if.else.32, label %if.then.19

if.then.19:                                       ; preds = %land.lhs.true
  store i32 0, i32* %i, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.29, %if.then.19
  %23 = load i32, i32* %i, align 4
  %24 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicSizeInMbs21 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %24, i32 0, i32 110
  %25 = load i32, i32* %PicSizeInMbs21, align 4
  %cmp22 = icmp ult i32 %23, %25
  br i1 %cmp22, label %for.body.24, label %for.end.31

for.body.24:                                      ; preds = %for.cond.20
  %26 = load i32, i32* %i, align 4
  %div = udiv i32 %26, 2
  %idxprom25 = zext i32 %div to i64
  %27 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %27, i64 %idxprom25
  %28 = load i8, i8* %arrayidx26, align 1
  %29 = load i32, i32* %i, align 4
  %idxprom27 = zext i32 %29 to i64
  %30 = load i8*, i8** @MBAmap, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %30, i64 %idxprom27
  store i8 %28, i8* %arrayidx28, align 1
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.body.24
  %31 = load i32, i32* %i, align 4
  %inc30 = add i32 %31, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond.20

for.end.31:                                       ; preds = %for.cond.20
  br label %if.end.50

if.else.32:                                       ; preds = %land.lhs.true, %if.else
  store i32 0, i32* %i, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.47, %if.else.32
  %32 = load i32, i32* %i, align 4
  %33 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicSizeInMbs34 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %33, i32 0, i32 110
  %34 = load i32, i32* %PicSizeInMbs34, align 4
  %cmp35 = icmp ult i32 %32, %34
  br i1 %cmp35, label %for.body.37, label %for.end.49

for.body.37:                                      ; preds = %for.cond.33
  %35 = load i32, i32* %i, align 4
  %36 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicWidthInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %36, i32 0, i32 106
  %37 = load i32, i32* %PicWidthInMbs, align 4
  %mul38 = mul i32 2, %37
  %div39 = udiv i32 %35, %mul38
  %38 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicWidthInMbs40 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %38, i32 0, i32 106
  %39 = load i32, i32* %PicWidthInMbs40, align 4
  %mul41 = mul i32 %div39, %39
  %40 = load i32, i32* %i, align 4
  %41 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicWidthInMbs42 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %41, i32 0, i32 106
  %42 = load i32, i32* %PicWidthInMbs42, align 4
  %rem = urem i32 %40, %42
  %add = add i32 %mul41, %rem
  %idxprom43 = zext i32 %add to i64
  %43 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %43, i64 %idxprom43
  %44 = load i8, i8* %arrayidx44, align 1
  %45 = load i32, i32* %i, align 4
  %idxprom45 = zext i32 %45 to i64
  %46 = load i8*, i8** @MBAmap, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %46, i64 %idxprom45
  store i8 %44, i8* %arrayidx46, align 1
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.body.37
  %47 = load i32, i32* %i, align 4
  %inc48 = add i32 %47, 1
  store i32 %inc48, i32* %i, align 4
  br label %for.cond.33

for.end.49:                                       ; preds = %for.cond.33
  br label %if.end.50

if.end.50:                                        ; preds = %for.end.49, %for.end.31
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %for.end
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @FmoUninit() #0 {
entry:
  %0 = load i8*, i8** @MBAmap, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** @MBAmap, align 8
  call void @free(i8* %1) #4
  store i8* null, i8** @MBAmap, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %3 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  call void @free(i8* %3) #4
  store i8* null, i8** @MapUnitToSliceGroupMap, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @FmoStartPicture() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %call = call i32 @FmoGetFirstMBOfSliceGroup(i32 %1)
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* @FirstMBInSlice, i32 0, i64 %idxprom
  store i32 %call, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @FmoGetFirstMBOfSliceGroup(i32 %SliceGroupID) #0 {
entry:
  %retval = alloca i32, align 4
  %SliceGroupID.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %SliceGroupID, i32* %SliceGroupID.addr, align 4
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1, i32 0, i32 110
  %2 = load i32, i32* %PicSizeInMbs, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load i32, i32* %i, align 4
  %call = call i32 @FmoMB2SliceGroup(i32 %3)
  %4 = load i32, i32* %SliceGroupID.addr, align 4
  %cmp1 = icmp ne i32 %call, %4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %7 = load i32, i32* %i, align 4
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicSizeInMbs2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 110
  %9 = load i32, i32* %PicSizeInMbs2, align 4
  %cmp3 = icmp slt i32 %7, %9
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  %10 = load i32, i32* %i, align 4
  store i32 %10, i32* %retval
  br label %return

if.else:                                          ; preds = %while.end
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @FmoEndPicture() #0 {
entry:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @FmoMB2SliceGroup(i32 %mb) #0 {
entry:
  %mb.addr = alloca i32, align 4
  store i32 %mb, i32* %mb.addr, align 4
  %0 = load i32, i32* %mb.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i8*, i8** @MBAmap, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @FmoGetNextMBNr(i32 %CurrentMbNr) #0 {
entry:
  %retval = alloca i32, align 4
  %CurrentMbNr.addr = alloca i32, align 4
  %SliceGroupID = alloca i32, align 4
  store i32 %CurrentMbNr, i32* %CurrentMbNr.addr, align 4
  %0 = load i32, i32* %CurrentMbNr.addr, align 4
  %call = call i32 @FmoMB2SliceGroup(i32 %0)
  store i32 %call, i32* %SliceGroupID, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, i32* %CurrentMbNr.addr, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %CurrentMbNr.addr, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 110
  %3 = load i32, i32* %PicSizeInMbs, align 4
  %cmp = icmp slt i32 %inc, %3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i32, i32* %CurrentMbNr.addr, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i8*, i8** @MBAmap, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %7 = load i32, i32* %SliceGroupID, align 4
  %cmp1 = icmp ne i32 %conv, %7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %while.cond

while.end:                                        ; preds = %land.end
  %9 = load i32, i32* %CurrentMbNr.addr, align 4
  %10 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicSizeInMbs3 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %10, i32 0, i32 110
  %11 = load i32, i32* %PicSizeInMbs3, align 4
  %cmp4 = icmp sge i32 %9, %11
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %while.end
  %12 = load i32, i32* %CurrentMbNr.addr, align 4
  store i32 %12, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @FmoGetPreviousMBNr(i32 %CurrentMbNr) #0 {
entry:
  %retval = alloca i32, align 4
  %CurrentMbNr.addr = alloca i32, align 4
  %SliceGroupID = alloca i32, align 4
  store i32 %CurrentMbNr, i32* %CurrentMbNr.addr, align 4
  %0 = load i32, i32* %CurrentMbNr.addr, align 4
  %call = call i32 @FmoMB2SliceGroup(i32 %0)
  store i32 %call, i32* %SliceGroupID, align 4
  %1 = load i32, i32* %CurrentMbNr.addr, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %CurrentMbNr.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i32, i32* %CurrentMbNr.addr, align 4
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load i32, i32* %CurrentMbNr.addr, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8*, i8** @MBAmap, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %6 = load i32, i32* %SliceGroupID, align 4
  %cmp1 = icmp ne i32 %conv, %6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load i32, i32* %CurrentMbNr.addr, align 4
  %dec3 = add nsw i32 %8, -1
  store i32 %dec3, i32* %CurrentMbNr.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %9 = load i32, i32* %CurrentMbNr.addr, align 4
  %cmp4 = icmp slt i32 %9, 0
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %while.end
  %10 = load i32, i32* %CurrentMbNr.addr, align 4
  store i32 %10, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @FmoGetLastCodedMBOfSliceGroup(i32 %SliceGroupID) #0 {
entry:
  %SliceGroupID.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %LastMB = alloca i32, align 4
  store i32 %SliceGroupID, i32* %SliceGroupID.addr, align 4
  store i32 -1, i32* %LastMB, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1, i32 0, i32 110
  %2 = load i32, i32* %PicSizeInMbs, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %call = call i32 @FmoMB2SliceGroup(i32 %3)
  %4 = load i32, i32* %SliceGroupID.addr, align 4
  %cmp1 = icmp eq i32 %call, %4
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  store i32 %5, i32* %LastMB, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %LastMB, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define void @FmoSetLastMacroblockInSlice(i32 %mb) #0 {
entry:
  %mb.addr = alloca i32, align 4
  %currSliceGroup = alloca i32, align 4
  store i32 %mb, i32* %mb.addr, align 4
  %0 = load i32, i32* %mb.addr, align 4
  %call = call i32 @FmoMB2SliceGroup(i32 %0)
  store i32 %call, i32* %currSliceGroup, align 4
  %1 = load i32, i32* %mb.addr, align 4
  %call1 = call i32 @FmoGetNextMBNr(i32 %1)
  store i32 %call1, i32* %mb.addr, align 4
  %2 = load i32, i32* %mb.addr, align 4
  %3 = load i32, i32* %currSliceGroup, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* @FirstMBInSlice, i32 0, i64 %idxprom
  store i32 %2, i32* %arrayidx, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @FmoGetFirstMacroblockInSlice(i32 %SliceGroup) #0 {
entry:
  %SliceGroup.addr = alloca i32, align 4
  store i32 %SliceGroup, i32* %SliceGroup.addr, align 4
  %0 = load i32, i32* %SliceGroup.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* @FirstMBInSlice, i32 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @FmoSliceGroupCompletelyCoded(i32 %SliceGroupID) #0 {
entry:
  %retval = alloca i32, align 4
  %SliceGroupID.addr = alloca i32, align 4
  store i32 %SliceGroupID, i32* %SliceGroupID.addr, align 4
  %0 = load i32, i32* %SliceGroupID.addr, align 4
  %call = call i32 @FmoGetFirstMacroblockInSlice(i32 %0)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %1 = load i32, i32* %retval
  ret i32 %1
}

declare void @error(i8*, i32) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define internal void @FmoGenerateType0MapUnitMap(%struct.ImageParameters* %img, %struct.pic_parameter_set_rbsp_t* %pps) #0 {
entry:
  %img.addr = alloca %struct.ImageParameters*, align 8
  %pps.addr = alloca %struct.pic_parameter_set_rbsp_t*, align 8
  %iGroup = alloca i32, align 4
  %j = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.ImageParameters* %img, %struct.ImageParameters** %img.addr, align 8
  store %struct.pic_parameter_set_rbsp_t* %pps, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  store i32 0, i32* %i, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  store i32 0, i32* %iGroup, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.11, %do.body
  %0 = load i32, i32* %iGroup, align 4
  %1 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_slice_groups_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %1, i32 0, i32 8
  %2 = load i32, i32* %num_slice_groups_minus1, align 4
  %cmp = icmp ule i32 %0, %2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* @PicSizeInMapUnits, align 4
  %cmp1 = icmp ult i32 %3, %4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %5, label %for.body, label %for.end.18

for.body:                                         ; preds = %land.end
  store i32 0, i32* %j, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* %iGroup, align 4
  %idxprom = zext i32 %7 to i64
  %8 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %run_length_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %8, i32 0, i32 10
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %run_length_minus1, i32 0, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4
  %cmp3 = icmp ule i32 %6, %9
  br i1 %cmp3, label %land.rhs.4, label %land.end.6

land.rhs.4:                                       ; preds = %for.cond.2
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %j, align 4
  %add = add i32 %10, %11
  %12 = load i32, i32* @PicSizeInMapUnits, align 4
  %cmp5 = icmp ult i32 %add, %12
  br label %land.end.6

land.end.6:                                       ; preds = %land.rhs.4, %for.cond.2
  %13 = phi i1 [ false, %for.cond.2 ], [ %cmp5, %land.rhs.4 ]
  br i1 %13, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %land.end.6
  %14 = load i32, i32* %iGroup, align 4
  %conv = trunc i32 %14 to i8
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %j, align 4
  %add8 = add i32 %15, %16
  %idxprom9 = zext i32 %add8 to i64
  %17 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %17, i64 %idxprom9
  store i8 %conv, i8* %arrayidx10, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.7
  %18 = load i32, i32* %j, align 4
  %inc = add i32 %18, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.2

for.end:                                          ; preds = %land.end.6
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.end
  %19 = load i32, i32* %iGroup, align 4
  %inc12 = add i32 %19, 1
  store i32 %inc12, i32* %iGroup, align 4
  %idxprom13 = zext i32 %19 to i64
  %20 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %run_length_minus114 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %20, i32 0, i32 10
  %arrayidx15 = getelementptr inbounds [8 x i32], [8 x i32]* %run_length_minus114, i32 0, i64 %idxprom13
  %21 = load i32, i32* %arrayidx15, align 4
  %add16 = add i32 %21, 1
  %22 = load i32, i32* %i, align 4
  %add17 = add i32 %22, %add16
  store i32 %add17, i32* %i, align 4
  br label %for.cond

for.end.18:                                       ; preds = %land.end
  br label %do.cond

do.cond:                                          ; preds = %for.end.18
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* @PicSizeInMapUnits, align 4
  %cmp19 = icmp ult i32 %23, %24
  br i1 %cmp19, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @FmoGenerateType1MapUnitMap(%struct.ImageParameters* %img, %struct.pic_parameter_set_rbsp_t* %pps) #0 {
entry:
  %img.addr = alloca %struct.ImageParameters*, align 8
  %pps.addr = alloca %struct.pic_parameter_set_rbsp_t*, align 8
  %i = alloca i32, align 4
  store %struct.ImageParameters* %img, %struct.ImageParameters** %img.addr, align 8
  store %struct.pic_parameter_set_rbsp_t* %pps, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @PicSizeInMapUnits, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicWidthInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %3, i32 0, i32 106
  %4 = load i32, i32* %PicWidthInMbs, align 4
  %rem = urem i32 %2, %4
  %5 = load i32, i32* %i, align 4
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicWidthInMbs1 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 106
  %7 = load i32, i32* %PicWidthInMbs1, align 4
  %div = udiv i32 %5, %7
  %8 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_slice_groups_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %8, i32 0, i32 8
  %9 = load i32, i32* %num_slice_groups_minus1, align 4
  %add = add i32 %9, 1
  %mul = mul i32 %div, %add
  %div2 = udiv i32 %mul, 2
  %add3 = add i32 %rem, %div2
  %10 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_slice_groups_minus14 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %10, i32 0, i32 8
  %11 = load i32, i32* %num_slice_groups_minus14, align 4
  %add5 = add i32 %11, 1
  %rem6 = urem i32 %add3, %add5
  %conv = trunc i32 %rem6 to i8
  %12 = load i32, i32* %i, align 4
  %idxprom = zext i32 %12 to i64
  %13 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @FmoGenerateType2MapUnitMap(%struct.ImageParameters* %img, %struct.pic_parameter_set_rbsp_t* %pps) #0 {
entry:
  %img.addr = alloca %struct.ImageParameters*, align 8
  %pps.addr = alloca %struct.pic_parameter_set_rbsp_t*, align 8
  %iGroup = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %yTopLeft = alloca i32, align 4
  %xTopLeft = alloca i32, align 4
  %yBottomRight = alloca i32, align 4
  %xBottomRight = alloca i32, align 4
  store %struct.ImageParameters* %img, %struct.ImageParameters** %img.addr, align 8
  store %struct.pic_parameter_set_rbsp_t* %pps, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @PicSizeInMapUnits, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_slice_groups_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %2, i32 0, i32 8
  %3 = load i32, i32* %num_slice_groups_minus1, align 4
  %conv = trunc i32 %3 to i8
  %4 = load i32, i32* %i, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_slice_groups_minus11 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %7, i32 0, i32 8
  %8 = load i32, i32* %num_slice_groups_minus11, align 4
  %sub = sub i32 %8, 1
  store i32 %sub, i32* %iGroup, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.39, %for.end
  %9 = load i32, i32* %iGroup, align 4
  %cmp3 = icmp sge i32 %9, 0
  br i1 %cmp3, label %for.body.5, label %for.end.40

for.body.5:                                       ; preds = %for.cond.2
  %10 = load i32, i32* %iGroup, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %top_left = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %11, i32 0, i32 11
  %arrayidx7 = getelementptr inbounds [8 x i32], [8 x i32]* %top_left, i32 0, i64 %idxprom6
  %12 = load i32, i32* %arrayidx7, align 4
  %13 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicWidthInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %13, i32 0, i32 106
  %14 = load i32, i32* %PicWidthInMbs, align 4
  %div = udiv i32 %12, %14
  store i32 %div, i32* %yTopLeft, align 4
  %15 = load i32, i32* %iGroup, align 4
  %idxprom8 = sext i32 %15 to i64
  %16 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %top_left9 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %16, i32 0, i32 11
  %arrayidx10 = getelementptr inbounds [8 x i32], [8 x i32]* %top_left9, i32 0, i64 %idxprom8
  %17 = load i32, i32* %arrayidx10, align 4
  %18 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicWidthInMbs11 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %18, i32 0, i32 106
  %19 = load i32, i32* %PicWidthInMbs11, align 4
  %rem = urem i32 %17, %19
  store i32 %rem, i32* %xTopLeft, align 4
  %20 = load i32, i32* %iGroup, align 4
  %idxprom12 = sext i32 %20 to i64
  %21 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %bottom_right = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %21, i32 0, i32 12
  %arrayidx13 = getelementptr inbounds [8 x i32], [8 x i32]* %bottom_right, i32 0, i64 %idxprom12
  %22 = load i32, i32* %arrayidx13, align 4
  %23 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicWidthInMbs14 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %23, i32 0, i32 106
  %24 = load i32, i32* %PicWidthInMbs14, align 4
  %div15 = udiv i32 %22, %24
  store i32 %div15, i32* %yBottomRight, align 4
  %25 = load i32, i32* %iGroup, align 4
  %idxprom16 = sext i32 %25 to i64
  %26 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %bottom_right17 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %26, i32 0, i32 12
  %arrayidx18 = getelementptr inbounds [8 x i32], [8 x i32]* %bottom_right17, i32 0, i64 %idxprom16
  %27 = load i32, i32* %arrayidx18, align 4
  %28 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicWidthInMbs19 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %28, i32 0, i32 106
  %29 = load i32, i32* %PicWidthInMbs19, align 4
  %rem20 = urem i32 %27, %29
  store i32 %rem20, i32* %xBottomRight, align 4
  %30 = load i32, i32* %yTopLeft, align 4
  store i32 %30, i32* %y, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.36, %for.body.5
  %31 = load i32, i32* %y, align 4
  %32 = load i32, i32* %yBottomRight, align 4
  %cmp22 = icmp ule i32 %31, %32
  br i1 %cmp22, label %for.body.24, label %for.end.38

for.body.24:                                      ; preds = %for.cond.21
  %33 = load i32, i32* %xTopLeft, align 4
  store i32 %33, i32* %x, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.33, %for.body.24
  %34 = load i32, i32* %x, align 4
  %35 = load i32, i32* %xBottomRight, align 4
  %cmp26 = icmp ule i32 %34, %35
  br i1 %cmp26, label %for.body.28, label %for.end.35

for.body.28:                                      ; preds = %for.cond.25
  %36 = load i32, i32* %iGroup, align 4
  %conv29 = trunc i32 %36 to i8
  %37 = load i32, i32* %y, align 4
  %38 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicWidthInMbs30 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %38, i32 0, i32 106
  %39 = load i32, i32* %PicWidthInMbs30, align 4
  %mul = mul i32 %37, %39
  %40 = load i32, i32* %x, align 4
  %add = add i32 %mul, %40
  %idxprom31 = zext i32 %add to i64
  %41 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %41, i64 %idxprom31
  store i8 %conv29, i8* %arrayidx32, align 1
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.body.28
  %42 = load i32, i32* %x, align 4
  %inc34 = add i32 %42, 1
  store i32 %inc34, i32* %x, align 4
  br label %for.cond.25

for.end.35:                                       ; preds = %for.cond.25
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.end.35
  %43 = load i32, i32* %y, align 4
  %inc37 = add i32 %43, 1
  store i32 %inc37, i32* %y, align 4
  br label %for.cond.21

for.end.38:                                       ; preds = %for.cond.21
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.end.38
  %44 = load i32, i32* %iGroup, align 4
  %dec = add nsw i32 %44, -1
  store i32 %dec, i32* %iGroup, align 4
  br label %for.cond.2

for.end.40:                                       ; preds = %for.cond.2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @FmoGenerateType3MapUnitMap(%struct.ImageParameters* %img, %struct.pic_parameter_set_rbsp_t* %pps) #0 {
entry:
  %img.addr = alloca %struct.ImageParameters*, align 8
  %pps.addr = alloca %struct.pic_parameter_set_rbsp_t*, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %leftBound = alloca i32, align 4
  %topBound = alloca i32, align 4
  %rightBound = alloca i32, align 4
  %bottomBound = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %xDir = alloca i32, align 4
  %yDir = alloca i32, align 4
  %mapUnitVacant = alloca i32, align 4
  %mapUnitsInSliceGroup0 = alloca i32, align 4
  store %struct.ImageParameters* %img, %struct.ImageParameters** %img.addr, align 8
  store %struct.pic_parameter_set_rbsp_t* %pps, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %0 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_rate_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %0, i32 0, i32 14
  %1 = load i32, i32* %slice_group_change_rate_minus1, align 4
  %add = add i32 %1, 1
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %slice_group_change_cycle = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 147
  %3 = load i32, i32* %slice_group_change_cycle, align 4
  %mul = mul i32 %add, %3
  %4 = load i32, i32* @PicSizeInMapUnits, align 4
  %cmp = icmp ult i32 %mul, %4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_rate_minus11 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %5, i32 0, i32 14
  %6 = load i32, i32* %slice_group_change_rate_minus11, align 4
  %add2 = add i32 %6, 1
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %slice_group_change_cycle3 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 147
  %8 = load i32, i32* %slice_group_change_cycle3, align 4
  %mul4 = mul i32 %add2, %8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load i32, i32* @PicSizeInMapUnits, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %mul4, %cond.true ], [ %9, %cond.false ]
  store i32 %cond, i32* %mapUnitsInSliceGroup0, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* @PicSizeInMapUnits, align 4
  %cmp5 = icmp ult i32 %10, %11
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4
  %idxprom = zext i32 %12 to i64
  %13 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %idxprom
  store i8 2, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicWidthInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %15, i32 0, i32 106
  %16 = load i32, i32* %PicWidthInMbs, align 4
  %17 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_direction_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %17, i32 0, i32 13
  %18 = load i32, i32* %slice_group_change_direction_flag, align 4
  %sub = sub i32 %16, %18
  %div = udiv i32 %sub, 2
  store i32 %div, i32* %x, align 4
  %19 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicHeightInMapUnits = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %19, i32 0, i32 107
  %20 = load i32, i32* %PicHeightInMapUnits, align 4
  %21 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_direction_flag6 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %21, i32 0, i32 13
  %22 = load i32, i32* %slice_group_change_direction_flag6, align 4
  %sub7 = sub i32 %20, %22
  %div8 = udiv i32 %sub7, 2
  store i32 %div8, i32* %y, align 4
  %23 = load i32, i32* %x, align 4
  store i32 %23, i32* %leftBound, align 4
  %24 = load i32, i32* %y, align 4
  store i32 %24, i32* %topBound, align 4
  %25 = load i32, i32* %x, align 4
  store i32 %25, i32* %rightBound, align 4
  %26 = load i32, i32* %y, align 4
  store i32 %26, i32* %bottomBound, align 4
  %27 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_direction_flag9 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %27, i32 0, i32 13
  %28 = load i32, i32* %slice_group_change_direction_flag9, align 4
  %sub10 = sub i32 %28, 1
  store i32 %sub10, i32* %xDir, align 4
  %29 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_direction_flag11 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %29, i32 0, i32 13
  %30 = load i32, i32* %slice_group_change_direction_flag11, align 4
  store i32 %30, i32* %yDir, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.114, %for.end
  %31 = load i32, i32* %k, align 4
  %32 = load i32, i32* @PicSizeInMapUnits, align 4
  %cmp13 = icmp ult i32 %31, %32
  br i1 %cmp13, label %for.body.14, label %for.end.116

for.body.14:                                      ; preds = %for.cond.12
  %33 = load i32, i32* %y, align 4
  %34 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicWidthInMbs15 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %34, i32 0, i32 106
  %35 = load i32, i32* %PicWidthInMbs15, align 4
  %mul16 = mul i32 %33, %35
  %36 = load i32, i32* %x, align 4
  %add17 = add i32 %mul16, %36
  %idxprom18 = zext i32 %add17 to i64
  %37 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %37, i64 %idxprom18
  %38 = load i8, i8* %arrayidx19, align 1
  %conv = zext i8 %38 to i32
  %cmp20 = icmp eq i32 %conv, 2
  %conv21 = zext i1 %cmp20 to i32
  store i32 %conv21, i32* %mapUnitVacant, align 4
  %39 = load i32, i32* %mapUnitVacant, align 4
  %tobool = icmp ne i32 %39, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.14
  %40 = load i32, i32* %k, align 4
  %41 = load i32, i32* %mapUnitsInSliceGroup0, align 4
  %cmp22 = icmp uge i32 %40, %41
  %conv23 = zext i1 %cmp22 to i32
  %conv24 = trunc i32 %conv23 to i8
  %42 = load i32, i32* %y, align 4
  %43 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicWidthInMbs25 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %43, i32 0, i32 106
  %44 = load i32, i32* %PicWidthInMbs25, align 4
  %mul26 = mul i32 %42, %44
  %45 = load i32, i32* %x, align 4
  %add27 = add i32 %mul26, %45
  %idxprom28 = zext i32 %add27 to i64
  %46 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %46, i64 %idxprom28
  store i8 %conv24, i8* %arrayidx29, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.14
  %47 = load i32, i32* %xDir, align 4
  %cmp30 = icmp eq i32 %47, -1
  br i1 %cmp30, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %48 = load i32, i32* %x, align 4
  %49 = load i32, i32* %leftBound, align 4
  %cmp32 = icmp eq i32 %48, %49
  br i1 %cmp32, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %land.lhs.true
  %50 = load i32, i32* %leftBound, align 4
  %sub35 = sub nsw i32 %50, 1
  %cmp36 = icmp sgt i32 %sub35, 0
  br i1 %cmp36, label %cond.true.38, label %cond.false.40

cond.true.38:                                     ; preds = %if.then.34
  %51 = load i32, i32* %leftBound, align 4
  %sub39 = sub nsw i32 %51, 1
  br label %cond.end.41

cond.false.40:                                    ; preds = %if.then.34
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.40, %cond.true.38
  %cond42 = phi i32 [ %sub39, %cond.true.38 ], [ 0, %cond.false.40 ]
  store i32 %cond42, i32* %leftBound, align 4
  %52 = load i32, i32* %leftBound, align 4
  store i32 %52, i32* %x, align 4
  store i32 0, i32* %xDir, align 4
  %53 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_direction_flag43 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %53, i32 0, i32 13
  %54 = load i32, i32* %slice_group_change_direction_flag43, align 4
  %mul44 = mul i32 2, %54
  %sub45 = sub i32 %mul44, 1
  store i32 %sub45, i32* %yDir, align 4
  br label %if.end.113

if.else:                                          ; preds = %land.lhs.true, %if.end
  %55 = load i32, i32* %xDir, align 4
  %cmp46 = icmp eq i32 %55, 1
  br i1 %cmp46, label %land.lhs.true.48, label %if.else.67

land.lhs.true.48:                                 ; preds = %if.else
  %56 = load i32, i32* %x, align 4
  %57 = load i32, i32* %rightBound, align 4
  %cmp49 = icmp eq i32 %56, %57
  br i1 %cmp49, label %if.then.51, label %if.else.67

if.then.51:                                       ; preds = %land.lhs.true.48
  %58 = load i32, i32* %rightBound, align 4
  %add52 = add nsw i32 %58, 1
  %59 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicWidthInMbs53 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %59, i32 0, i32 106
  %60 = load i32, i32* %PicWidthInMbs53, align 4
  %sub54 = sub nsw i32 %60, 1
  %cmp55 = icmp slt i32 %add52, %sub54
  br i1 %cmp55, label %cond.true.57, label %cond.false.59

cond.true.57:                                     ; preds = %if.then.51
  %61 = load i32, i32* %rightBound, align 4
  %add58 = add nsw i32 %61, 1
  br label %cond.end.62

cond.false.59:                                    ; preds = %if.then.51
  %62 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicWidthInMbs60 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %62, i32 0, i32 106
  %63 = load i32, i32* %PicWidthInMbs60, align 4
  %sub61 = sub nsw i32 %63, 1
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.false.59, %cond.true.57
  %cond63 = phi i32 [ %add58, %cond.true.57 ], [ %sub61, %cond.false.59 ]
  store i32 %cond63, i32* %rightBound, align 4
  %64 = load i32, i32* %rightBound, align 4
  store i32 %64, i32* %x, align 4
  store i32 0, i32* %xDir, align 4
  %65 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_direction_flag64 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %65, i32 0, i32 13
  %66 = load i32, i32* %slice_group_change_direction_flag64, align 4
  %mul65 = mul i32 2, %66
  %sub66 = sub i32 1, %mul65
  store i32 %sub66, i32* %yDir, align 4
  br label %if.end.112

if.else.67:                                       ; preds = %land.lhs.true.48, %if.else
  %67 = load i32, i32* %yDir, align 4
  %cmp68 = icmp eq i32 %67, -1
  br i1 %cmp68, label %land.lhs.true.70, label %if.else.85

land.lhs.true.70:                                 ; preds = %if.else.67
  %68 = load i32, i32* %y, align 4
  %69 = load i32, i32* %topBound, align 4
  %cmp71 = icmp eq i32 %68, %69
  br i1 %cmp71, label %if.then.73, label %if.else.85

if.then.73:                                       ; preds = %land.lhs.true.70
  %70 = load i32, i32* %topBound, align 4
  %sub74 = sub nsw i32 %70, 1
  %cmp75 = icmp sgt i32 %sub74, 0
  br i1 %cmp75, label %cond.true.77, label %cond.false.79

cond.true.77:                                     ; preds = %if.then.73
  %71 = load i32, i32* %topBound, align 4
  %sub78 = sub nsw i32 %71, 1
  br label %cond.end.80

cond.false.79:                                    ; preds = %if.then.73
  br label %cond.end.80

cond.end.80:                                      ; preds = %cond.false.79, %cond.true.77
  %cond81 = phi i32 [ %sub78, %cond.true.77 ], [ 0, %cond.false.79 ]
  store i32 %cond81, i32* %topBound, align 4
  %72 = load i32, i32* %topBound, align 4
  store i32 %72, i32* %y, align 4
  %73 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_direction_flag82 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %73, i32 0, i32 13
  %74 = load i32, i32* %slice_group_change_direction_flag82, align 4
  %mul83 = mul i32 2, %74
  %sub84 = sub i32 1, %mul83
  store i32 %sub84, i32* %xDir, align 4
  store i32 0, i32* %yDir, align 4
  br label %if.end.111

if.else.85:                                       ; preds = %land.lhs.true.70, %if.else.67
  %75 = load i32, i32* %yDir, align 4
  %cmp86 = icmp eq i32 %75, 1
  br i1 %cmp86, label %land.lhs.true.88, label %if.else.107

land.lhs.true.88:                                 ; preds = %if.else.85
  %76 = load i32, i32* %y, align 4
  %77 = load i32, i32* %bottomBound, align 4
  %cmp89 = icmp eq i32 %76, %77
  br i1 %cmp89, label %if.then.91, label %if.else.107

if.then.91:                                       ; preds = %land.lhs.true.88
  %78 = load i32, i32* %bottomBound, align 4
  %add92 = add nsw i32 %78, 1
  %79 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicHeightInMapUnits93 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %79, i32 0, i32 107
  %80 = load i32, i32* %PicHeightInMapUnits93, align 4
  %sub94 = sub nsw i32 %80, 1
  %cmp95 = icmp slt i32 %add92, %sub94
  br i1 %cmp95, label %cond.true.97, label %cond.false.99

cond.true.97:                                     ; preds = %if.then.91
  %81 = load i32, i32* %bottomBound, align 4
  %add98 = add nsw i32 %81, 1
  br label %cond.end.102

cond.false.99:                                    ; preds = %if.then.91
  %82 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicHeightInMapUnits100 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %82, i32 0, i32 107
  %83 = load i32, i32* %PicHeightInMapUnits100, align 4
  %sub101 = sub nsw i32 %83, 1
  br label %cond.end.102

cond.end.102:                                     ; preds = %cond.false.99, %cond.true.97
  %cond103 = phi i32 [ %add98, %cond.true.97 ], [ %sub101, %cond.false.99 ]
  store i32 %cond103, i32* %bottomBound, align 4
  %84 = load i32, i32* %bottomBound, align 4
  store i32 %84, i32* %y, align 4
  %85 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_direction_flag104 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %85, i32 0, i32 13
  %86 = load i32, i32* %slice_group_change_direction_flag104, align 4
  %mul105 = mul i32 2, %86
  %sub106 = sub i32 %mul105, 1
  store i32 %sub106, i32* %xDir, align 4
  store i32 0, i32* %yDir, align 4
  br label %if.end.110

if.else.107:                                      ; preds = %land.lhs.true.88, %if.else.85
  %87 = load i32, i32* %x, align 4
  %88 = load i32, i32* %xDir, align 4
  %add108 = add nsw i32 %87, %88
  store i32 %add108, i32* %x, align 4
  %89 = load i32, i32* %y, align 4
  %90 = load i32, i32* %yDir, align 4
  %add109 = add nsw i32 %89, %90
  store i32 %add109, i32* %y, align 4
  br label %if.end.110

if.end.110:                                       ; preds = %if.else.107, %cond.end.102
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %cond.end.80
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %cond.end.62
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %cond.end.41
  br label %for.inc.114

for.inc.114:                                      ; preds = %if.end.113
  %91 = load i32, i32* %mapUnitVacant, align 4
  %92 = load i32, i32* %k, align 4
  %add115 = add i32 %92, %91
  store i32 %add115, i32* %k, align 4
  br label %for.cond.12

for.end.116:                                      ; preds = %for.cond.12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @FmoGenerateType4MapUnitMap(%struct.ImageParameters* %img, %struct.pic_parameter_set_rbsp_t* %pps) #0 {
entry:
  %img.addr = alloca %struct.ImageParameters*, align 8
  %pps.addr = alloca %struct.pic_parameter_set_rbsp_t*, align 8
  %mapUnitsInSliceGroup0 = alloca i32, align 4
  %sizeOfUpperLeftGroup = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.ImageParameters* %img, %struct.ImageParameters** %img.addr, align 8
  store %struct.pic_parameter_set_rbsp_t* %pps, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %0 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_rate_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %0, i32 0, i32 14
  %1 = load i32, i32* %slice_group_change_rate_minus1, align 4
  %add = add i32 %1, 1
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %slice_group_change_cycle = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 147
  %3 = load i32, i32* %slice_group_change_cycle, align 4
  %mul = mul i32 %add, %3
  %4 = load i32, i32* @PicSizeInMapUnits, align 4
  %cmp = icmp ult i32 %mul, %4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_rate_minus11 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %5, i32 0, i32 14
  %6 = load i32, i32* %slice_group_change_rate_minus11, align 4
  %add2 = add i32 %6, 1
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %slice_group_change_cycle3 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 147
  %8 = load i32, i32* %slice_group_change_cycle3, align 4
  %mul4 = mul i32 %add2, %8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load i32, i32* @PicSizeInMapUnits, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %mul4, %cond.true ], [ %9, %cond.false ]
  store i32 %cond, i32* %mapUnitsInSliceGroup0, align 4
  %10 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_direction_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %10, i32 0, i32 13
  %11 = load i32, i32* %slice_group_change_direction_flag, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %cond.end
  %12 = load i32, i32* @PicSizeInMapUnits, align 4
  %13 = load i32, i32* %mapUnitsInSliceGroup0, align 4
  %sub = sub i32 %12, %13
  br label %cond.end.7

cond.false.6:                                     ; preds = %cond.end
  %14 = load i32, i32* %mapUnitsInSliceGroup0, align 4
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.false.6, %cond.true.5
  %cond8 = phi i32 [ %sub, %cond.true.5 ], [ %14, %cond.false.6 ]
  store i32 %cond8, i32* %sizeOfUpperLeftGroup, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.7
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* @PicSizeInMapUnits, align 4
  %cmp9 = icmp ult i32 %15, %16
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %sizeOfUpperLeftGroup, align 4
  %cmp10 = icmp ult i32 %17, %18
  br i1 %cmp10, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %19 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_direction_flag11 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %19, i32 0, i32 13
  %20 = load i32, i32* %slice_group_change_direction_flag11, align 4
  %conv = trunc i32 %20 to i8
  %21 = load i32, i32* %i, align 4
  %idxprom = zext i32 %21 to i64
  %22 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %arrayidx = getelementptr inbounds i8, i8* %22, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  br label %if.end

if.else:                                          ; preds = %for.body
  %23 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_direction_flag12 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %23, i32 0, i32 13
  %24 = load i32, i32* %slice_group_change_direction_flag12, align 4
  %sub13 = sub i32 1, %24
  %conv14 = trunc i32 %sub13 to i8
  %25 = load i32, i32* %i, align 4
  %idxprom15 = zext i32 %25 to i64
  %26 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %26, i64 %idxprom15
  store i8 %conv14, i8* %arrayidx16, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %27 = load i32, i32* %i, align 4
  %inc = add i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @FmoGenerateType5MapUnitMap(%struct.ImageParameters* %img, %struct.pic_parameter_set_rbsp_t* %pps) #0 {
entry:
  %img.addr = alloca %struct.ImageParameters*, align 8
  %pps.addr = alloca %struct.pic_parameter_set_rbsp_t*, align 8
  %mapUnitsInSliceGroup0 = alloca i32, align 4
  %sizeOfUpperLeftGroup = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store %struct.ImageParameters* %img, %struct.ImageParameters** %img.addr, align 8
  store %struct.pic_parameter_set_rbsp_t* %pps, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %0 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_rate_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %0, i32 0, i32 14
  %1 = load i32, i32* %slice_group_change_rate_minus1, align 4
  %add = add i32 %1, 1
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %slice_group_change_cycle = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 147
  %3 = load i32, i32* %slice_group_change_cycle, align 4
  %mul = mul i32 %add, %3
  %4 = load i32, i32* @PicSizeInMapUnits, align 4
  %cmp = icmp ult i32 %mul, %4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_rate_minus11 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %5, i32 0, i32 14
  %6 = load i32, i32* %slice_group_change_rate_minus11, align 4
  %add2 = add i32 %6, 1
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %slice_group_change_cycle3 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 147
  %8 = load i32, i32* %slice_group_change_cycle3, align 4
  %mul4 = mul i32 %add2, %8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load i32, i32* @PicSizeInMapUnits, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %mul4, %cond.true ], [ %9, %cond.false ]
  store i32 %cond, i32* %mapUnitsInSliceGroup0, align 4
  %10 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_direction_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %10, i32 0, i32 13
  %11 = load i32, i32* %slice_group_change_direction_flag, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %cond.end
  %12 = load i32, i32* @PicSizeInMapUnits, align 4
  %13 = load i32, i32* %mapUnitsInSliceGroup0, align 4
  %sub = sub i32 %12, %13
  br label %cond.end.7

cond.false.6:                                     ; preds = %cond.end
  %14 = load i32, i32* %mapUnitsInSliceGroup0, align 4
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.false.6, %cond.true.5
  %cond8 = phi i32 [ %sub, %cond.true.5 ], [ %14, %cond.false.6 ]
  store i32 %cond8, i32* %sizeOfUpperLeftGroup, align 4
  store i32 0, i32* %k, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.27, %cond.end.7
  %15 = load i32, i32* %j, align 4
  %16 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicWidthInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %16, i32 0, i32 106
  %17 = load i32, i32* %PicWidthInMbs, align 4
  %cmp9 = icmp ult i32 %15, %17
  br i1 %cmp9, label %for.body, label %for.end.29

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %for.body
  %18 = load i32, i32* %i, align 4
  %19 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicHeightInMapUnits = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %19, i32 0, i32 107
  %20 = load i32, i32* %PicHeightInMapUnits, align 4
  %cmp11 = icmp ult i32 %18, %20
  br i1 %cmp11, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.10
  %21 = load i32, i32* %k, align 4
  %inc = add i32 %21, 1
  store i32 %inc, i32* %k, align 4
  %22 = load i32, i32* %sizeOfUpperLeftGroup, align 4
  %cmp13 = icmp ult i32 %21, %22
  br i1 %cmp13, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.12
  %23 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_direction_flag14 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %23, i32 0, i32 13
  %24 = load i32, i32* %slice_group_change_direction_flag14, align 4
  %sub15 = sub i32 1, %24
  %conv = trunc i32 %sub15 to i8
  %25 = load i32, i32* %i, align 4
  %26 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicWidthInMbs16 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %26, i32 0, i32 106
  %27 = load i32, i32* %PicWidthInMbs16, align 4
  %mul17 = mul i32 %25, %27
  %28 = load i32, i32* %j, align 4
  %add18 = add i32 %mul17, %28
  %idxprom = zext i32 %add18 to i64
  %29 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %arrayidx = getelementptr inbounds i8, i8* %29, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  br label %if.end

if.else:                                          ; preds = %for.body.12
  %30 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_direction_flag19 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %30, i32 0, i32 13
  %31 = load i32, i32* %slice_group_change_direction_flag19, align 4
  %conv20 = trunc i32 %31 to i8
  %32 = load i32, i32* %i, align 4
  %33 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicWidthInMbs21 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %33, i32 0, i32 106
  %34 = load i32, i32* %PicWidthInMbs21, align 4
  %mul22 = mul i32 %32, %34
  %35 = load i32, i32* %j, align 4
  %add23 = add i32 %mul22, %35
  %idxprom24 = zext i32 %add23 to i64
  %36 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %36, i64 %idxprom24
  store i8 %conv20, i8* %arrayidx25, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %37 = load i32, i32* %i, align 4
  %inc26 = add i32 %37, 1
  store i32 %inc26, i32* %i, align 4
  br label %for.cond.10

for.end:                                          ; preds = %for.cond.10
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.end
  %38 = load i32, i32* %j, align 4
  %inc28 = add i32 %38, 1
  store i32 %inc28, i32* %j, align 4
  br label %for.cond

for.end.29:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @FmoGenerateType6MapUnitMap(%struct.ImageParameters* %img, %struct.pic_parameter_set_rbsp_t* %pps) #0 {
entry:
  %img.addr = alloca %struct.ImageParameters*, align 8
  %pps.addr = alloca %struct.pic_parameter_set_rbsp_t*, align 8
  %i = alloca i32, align 4
  store %struct.ImageParameters* %img, %struct.ImageParameters** %img.addr, align 8
  store %struct.pic_parameter_set_rbsp_t* %pps, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @PicSizeInMapUnits, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = zext i32 %2 to i64
  %3 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_id = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %3, i32 0, i32 16
  %4 = load i8*, i8** %slice_group_id, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %6 = load i32, i32* %i, align 4
  %idxprom1 = zext i32 %6 to i64
  %7 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %7, i64 %idxprom1
  store i8 %5, i8* %arrayidx2, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
