; ModuleID = './MultiSource.Applications.JM/31.ldecod.fmo.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_par = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x [16 x i16]], [6 x [32 x i32]], [16 x [16 x i32]], [4 x [12 x [4 x [4 x i32]]]], [16 x i32], i8**, i32*, i32***, i32**, i32, i32, i32, i32, %struct.Slice*, %struct.macroblock*, i32, i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32***, i32***, i32****, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [3 x [2 x i32]], i32, i32, i64, i64, %struct.timeb, %struct.timeb, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.Slice = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.datapartition*, %struct.MotionInfoContexts*, %struct.TextureInfoContexts*, i32, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32 (%struct.img_par*, %struct.inp_par*)*, i32, i32, i32, i32 }
%struct.datapartition = type { %struct.Bitstream*, %struct.DecodingEnvironment, i32 (%struct.syntaxelement*, %struct.img_par*, %struct.datapartition*)* }
%struct.Bitstream = type { i32, i32, i32, i32, i8*, i32 }
%struct.DecodingEnvironment = type { i32, i32, i32, i32, i32, i8*, i32* }
%struct.syntaxelement = type { i32, i32, i32, i32, i32, i32, i32, i32, void (i32, i32, i32*, i32*)*, void (%struct.syntaxelement*, %struct.img_par*, %struct.DecodingEnvironment*)* }
%struct.MotionInfoContexts = type { [4 x [11 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]], [2 x [10 x %struct.BiContextType]], [2 x [6 x %struct.BiContextType]], [4 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x %struct.BiContextType] }
%struct.BiContextType = type { i16, i8 }
%struct.TextureInfoContexts = type { [2 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x [4 x %struct.BiContextType]], [10 x [4 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]] }
%struct.inp_par = type { [1000 x i8], [1000 x i8], [1000 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.macroblock = type { i32, [2 x i32], i32, i32, %struct.macroblock*, %struct.macroblock*, i32, [2 x [4 x [4 x [2 x i32]]]], i32, i64, i64, i32, i32, [4 x i8], [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.DecRefPicMarking_s = type { i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s* }
%struct.timeb = type { i64, i16, i16, i16 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], [6 x [16 x i32]], [2 x [64 x i32]], [6 x i32], [2 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [6 x [16 x i32]], [2 x [64 x i32]], [6 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@MbToSliceGroupMap = global i32* null, align 8
@MapUnitToSliceGroupMap = global i32* null, align 8
@NumberOfSliceGroups = internal global i32 0, align 4
@img = external global %struct.img_par*, align 8
@active_pps = common global %struct.pic_parameter_set_rbsp_t* null, align 8
@active_sps = common global %struct.seq_parameter_set_rbsp_t* null, align 8
@imgY_ref = common global i16** null, align 8
@imgUV_ref = common global i16*** null, align 8
@PicPos = common global i32** null, align 8
@ReMapRef = common global [20 x i32] zeroinitializer, align 16
@Bframe_ctr = common global i32 0, align 4
@frame_no = common global i32 0, align 4
@g_nFrame = common global i32 0, align 4
@TopFieldForSkip_Y = common global [16 x [16 x i32]] zeroinitializer, align 16
@TopFieldForSkip_UV = common global [2 x [16 x [16 x i32]]] zeroinitializer, align 16
@InvLevelScale4x4Luma_Intra = common global [6 x [4 x [4 x i32]]] zeroinitializer, align 16
@InvLevelScale4x4Chroma_Intra = common global [2 x [6 x [4 x [4 x i32]]]] zeroinitializer, align 16
@InvLevelScale4x4Luma_Inter = common global [6 x [4 x [4 x i32]]] zeroinitializer, align 16
@InvLevelScale4x4Chroma_Inter = common global [2 x [6 x [4 x [4 x i32]]]] zeroinitializer, align 16
@InvLevelScale8x8Luma_Intra = common global [6 x [8 x [8 x i32]]] zeroinitializer, align 16
@InvLevelScale8x8Luma_Inter = common global [6 x [8 x [8 x i32]]] zeroinitializer, align 16
@qmatrix = common global [8 x i32*] zeroinitializer, align 16
@errortext = common global [300 x i8] zeroinitializer, align 16
@tot_time = common global i64 0, align 8
@p_out = common global i32 0, align 4
@p_ref = common global i32 0, align 4
@p_log = common global %struct._IO_FILE* null, align 8
@previous_frame_num = common global i32 0, align 4
@ref_flag = common global [17 x i32] zeroinitializer, align 16
@Is_primary_correct = common global i32 0, align 4
@Is_redundant_correct = common global i32 0, align 4
@redundant_slice_ref_idx = common global i32 0, align 4
@nal_startcode_follows = common global i32 (%struct.img_par*, i32)* null, align 8
@.str = private unnamed_addr constant [72 x i8] c"wrong pps->num_slice_group_map_units_minus1 for used SPS and FMO type 6\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"cannot allocated %d bytes for MapUnitToSliceGroupMap, exit\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Illegal slice_group_map_type %d , exit \0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"cannot allocate %d bytes for MbToSliceGroupMap, exit\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @FmoInit(%struct.pic_parameter_set_rbsp_t* %pps, %struct.seq_parameter_set_rbsp_t* %sps) #0 {
entry:
  %pps.addr = alloca %struct.pic_parameter_set_rbsp_t*, align 8
  %sps.addr = alloca %struct.seq_parameter_set_rbsp_t*, align 8
  store %struct.pic_parameter_set_rbsp_t* %pps, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  store %struct.seq_parameter_set_rbsp_t* %sps, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %0 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %1 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %call = call i32 @FmoGenerateMapUnitToSliceGroupMap(%struct.pic_parameter_set_rbsp_t* %0, %struct.seq_parameter_set_rbsp_t* %1)
  %2 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %3 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %call1 = call i32 @FmoGenerateMbToSliceGroupMap(%struct.pic_parameter_set_rbsp_t* %2, %struct.seq_parameter_set_rbsp_t* %3)
  %4 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_slice_groups_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %4, i32 0, i32 12
  %5 = load i32, i32* %num_slice_groups_minus1, align 4
  %add = add i32 %5, 1
  store i32 %add, i32* @NumberOfSliceGroups, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @FmoGenerateMapUnitToSliceGroupMap(%struct.pic_parameter_set_rbsp_t* %pps, %struct.seq_parameter_set_rbsp_t* %sps) #0 {
entry:
  %retval = alloca i32, align 4
  %pps.addr = alloca %struct.pic_parameter_set_rbsp_t*, align 8
  %sps.addr = alloca %struct.seq_parameter_set_rbsp_t*, align 8
  %NumSliceGroupMapUnits = alloca i32, align 4
  store %struct.pic_parameter_set_rbsp_t* %pps, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  store %struct.seq_parameter_set_rbsp_t* %sps, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %0 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %pic_height_in_map_units_minus1 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %0, i32 0, i32 28
  %1 = load i32, i32* %pic_height_in_map_units_minus1, align 4
  %add = add i32 %1, 1
  %2 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %pic_width_in_mbs_minus1 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %2, i32 0, i32 27
  %3 = load i32, i32* %pic_width_in_mbs_minus1, align 4
  %add1 = add i32 %3, 1
  %mul = mul i32 %add, %add1
  store i32 %mul, i32* %NumSliceGroupMapUnits, align 4
  %4 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_map_type = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %4, i32 0, i32 13
  %5 = load i32, i32* %slice_group_map_type, align 4
  %cmp = icmp eq i32 %5, 6
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %6 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_slice_group_map_units_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %6, i32 0, i32 19
  %7 = load i32, i32* %num_slice_group_map_units_minus1, align 4
  %add2 = add i32 %7, 1
  %8 = load i32, i32* %NumSliceGroupMapUnits, align 4
  %cmp3 = icmp ne i32 %add2, %8
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  call void @error(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i32 0, i32 0), i32 500)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %9 = load i32*, i32** @MapUnitToSliceGroupMap, align 8
  %tobool = icmp ne i32* %9, null
  br i1 %tobool, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.5
  %10 = load i32*, i32** @MapUnitToSliceGroupMap, align 8
  %11 = bitcast i32* %10 to i8*
  call void @free(i8* %11) #4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end.5
  %12 = load i32, i32* %NumSliceGroupMapUnits, align 4
  %conv = zext i32 %12 to i64
  %mul8 = mul i64 %conv, 4
  %call = call noalias i8* @malloc(i64 %mul8) #4
  %13 = bitcast i8* %call to i32*
  store i32* %13, i32** @MapUnitToSliceGroupMap, align 8
  %cmp9 = icmp eq i32* %13, null
  br i1 %cmp9, label %if.then.11, label %if.end.18

if.then.11:                                       ; preds = %if.end.7
  %14 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_slice_group_map_units_minus112 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %14, i32 0, i32 19
  %15 = load i32, i32* %num_slice_group_map_units_minus112, align 4
  %add13 = add i32 %15, 1
  %conv14 = zext i32 %add13 to i64
  %mul15 = mul i64 %conv14, 4
  %conv16 = trunc i64 %mul15 to i32
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i32 0, i32 0), i32 %conv16)
  call void @exit(i32 -1) #6
  unreachable

if.end.18:                                        ; preds = %if.end.7
  %16 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_slice_groups_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %16, i32 0, i32 12
  %17 = load i32, i32* %num_slice_groups_minus1, align 4
  %cmp19 = icmp eq i32 %17, 0
  br i1 %cmp19, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %if.end.18
  %18 = load i32*, i32** @MapUnitToSliceGroupMap, align 8
  %19 = bitcast i32* %18 to i8*
  %20 = load i32, i32* %NumSliceGroupMapUnits, align 4
  %conv22 = zext i32 %20 to i64
  %mul23 = mul i64 %conv22, 4
  call void @llvm.memset.p0i8.i64(i8* %19, i8 0, i64 %mul23, i32 4, i1 false)
  store i32 0, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.end.18
  %21 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_map_type25 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %21, i32 0, i32 13
  %22 = load i32, i32* %slice_group_map_type25, align 4
  switch i32 %22, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.26
    i32 2, label %sw.bb.27
    i32 3, label %sw.bb.28
    i32 4, label %sw.bb.29
    i32 5, label %sw.bb.30
    i32 6, label %sw.bb.31
  ]

sw.bb:                                            ; preds = %if.end.24
  %23 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %24 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %25 = load i32, i32* %NumSliceGroupMapUnits, align 4
  call void @FmoGenerateType0MapUnitMap(%struct.pic_parameter_set_rbsp_t* %23, %struct.seq_parameter_set_rbsp_t* %24, i32 %25)
  br label %sw.epilog

sw.bb.26:                                         ; preds = %if.end.24
  %26 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %27 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %28 = load i32, i32* %NumSliceGroupMapUnits, align 4
  call void @FmoGenerateType1MapUnitMap(%struct.pic_parameter_set_rbsp_t* %26, %struct.seq_parameter_set_rbsp_t* %27, i32 %28)
  br label %sw.epilog

sw.bb.27:                                         ; preds = %if.end.24
  %29 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %30 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %31 = load i32, i32* %NumSliceGroupMapUnits, align 4
  call void @FmoGenerateType2MapUnitMap(%struct.pic_parameter_set_rbsp_t* %29, %struct.seq_parameter_set_rbsp_t* %30, i32 %31)
  br label %sw.epilog

sw.bb.28:                                         ; preds = %if.end.24
  %32 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %33 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %34 = load i32, i32* %NumSliceGroupMapUnits, align 4
  call void @FmoGenerateType3MapUnitMap(%struct.pic_parameter_set_rbsp_t* %32, %struct.seq_parameter_set_rbsp_t* %33, i32 %34)
  br label %sw.epilog

sw.bb.29:                                         ; preds = %if.end.24
  %35 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %36 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %37 = load i32, i32* %NumSliceGroupMapUnits, align 4
  call void @FmoGenerateType4MapUnitMap(%struct.pic_parameter_set_rbsp_t* %35, %struct.seq_parameter_set_rbsp_t* %36, i32 %37)
  br label %sw.epilog

sw.bb.30:                                         ; preds = %if.end.24
  %38 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %39 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %40 = load i32, i32* %NumSliceGroupMapUnits, align 4
  call void @FmoGenerateType5MapUnitMap(%struct.pic_parameter_set_rbsp_t* %38, %struct.seq_parameter_set_rbsp_t* %39, i32 %40)
  br label %sw.epilog

sw.bb.31:                                         ; preds = %if.end.24
  %41 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %42 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %43 = load i32, i32* %NumSliceGroupMapUnits, align 4
  call void @FmoGenerateType6MapUnitMap(%struct.pic_parameter_set_rbsp_t* %41, %struct.seq_parameter_set_rbsp_t* %42, i32 %43)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.24
  %44 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_map_type32 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %44, i32 0, i32 13
  %45 = load i32, i32* %slice_group_map_type32, align 4
  %call33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0), i32 %45)
  call void @exit(i32 -1) #6
  unreachable

sw.epilog:                                        ; preds = %sw.bb.31, %sw.bb.30, %sw.bb.29, %sw.bb.28, %sw.bb.27, %sw.bb.26, %sw.bb
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then.21
  %46 = load i32, i32* %retval
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define internal i32 @FmoGenerateMbToSliceGroupMap(%struct.pic_parameter_set_rbsp_t* %pps, %struct.seq_parameter_set_rbsp_t* %sps) #0 {
entry:
  %pps.addr = alloca %struct.pic_parameter_set_rbsp_t*, align 8
  %sps.addr = alloca %struct.seq_parameter_set_rbsp_t*, align 8
  %i = alloca i32, align 4
  store %struct.pic_parameter_set_rbsp_t* %pps, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  store %struct.seq_parameter_set_rbsp_t* %sps, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %0 = load i32*, i32** @MbToSliceGroupMap, align 8
  %tobool = icmp ne i32* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** @MbToSliceGroupMap, align 8
  %2 = bitcast i32* %1 to i8*
  call void @free(i8* %2) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.img_par*, %struct.img_par** @img, align 8
  %PicSizeInMbs = getelementptr inbounds %struct.img_par, %struct.img_par* %3, i32 0, i32 91
  %4 = load i32, i32* %PicSizeInMbs, align 4
  %conv = zext i32 %4 to i64
  %mul = mul i64 %conv, 4
  %call = call noalias i8* @malloc(i64 %mul) #4
  %5 = bitcast i8* %call to i32*
  store i32* %5, i32** @MbToSliceGroupMap, align 8
  %cmp = icmp eq i32* %5, null
  br i1 %cmp, label %if.then.2, label %if.end.8

if.then.2:                                        ; preds = %if.end
  %6 = load %struct.img_par*, %struct.img_par** @img, align 8
  %PicSizeInMbs3 = getelementptr inbounds %struct.img_par, %struct.img_par* %6, i32 0, i32 91
  %7 = load i32, i32* %PicSizeInMbs3, align 4
  %conv4 = zext i32 %7 to i64
  %mul5 = mul i64 %conv4, 4
  %conv6 = trunc i64 %mul5 to i32
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i32 0, i32 0), i32 %conv6)
  call void @exit(i32 -1) #6
  unreachable

if.end.8:                                         ; preds = %if.end
  %8 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %8, i32 0, i32 29
  %9 = load i32, i32* %frame_mbs_only_flag, align 4
  %tobool9 = icmp ne i32 %9, 0
  br i1 %tobool9, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.8
  %10 = load %struct.img_par*, %struct.img_par** @img, align 8
  %field_pic_flag = getelementptr inbounds %struct.img_par, %struct.img_par* %10, i32 0, i32 57
  %11 = load i32, i32* %field_pic_flag, align 4
  %tobool10 = icmp ne i32 %11, 0
  br i1 %tobool10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %lor.lhs.false, %if.end.8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.11
  %12 = load i32, i32* %i, align 4
  %13 = load %struct.img_par*, %struct.img_par** @img, align 8
  %PicSizeInMbs12 = getelementptr inbounds %struct.img_par, %struct.img_par* %13, i32 0, i32 91
  %14 = load i32, i32* %PicSizeInMbs12, align 4
  %cmp13 = icmp ult i32 %12, %14
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4
  %idxprom = zext i32 %15 to i64
  %16 = load i32*, i32** @MapUnitToSliceGroupMap, align 8
  %arrayidx = getelementptr inbounds i32, i32* %16, i64 %idxprom
  %17 = load i32, i32* %arrayidx, align 4
  %18 = load i32, i32* %i, align 4
  %idxprom15 = zext i32 %18 to i64
  %19 = load i32*, i32** @MbToSliceGroupMap, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %19, i64 %idxprom15
  store i32 %17, i32* %arrayidx16, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4
  %inc = add i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.52

if.else:                                          ; preds = %lor.lhs.false
  %21 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %mb_adaptive_frame_field_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %21, i32 0, i32 30
  %22 = load i32, i32* %mb_adaptive_frame_field_flag, align 4
  %tobool17 = icmp ne i32 %22, 0
  br i1 %tobool17, label %land.lhs.true, label %if.else.33

land.lhs.true:                                    ; preds = %if.else
  %23 = load %struct.img_par*, %struct.img_par** @img, align 8
  %field_pic_flag18 = getelementptr inbounds %struct.img_par, %struct.img_par* %23, i32 0, i32 57
  %24 = load i32, i32* %field_pic_flag18, align 4
  %tobool19 = icmp ne i32 %24, 0
  br i1 %tobool19, label %if.else.33, label %if.then.20

if.then.20:                                       ; preds = %land.lhs.true
  store i32 0, i32* %i, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.30, %if.then.20
  %25 = load i32, i32* %i, align 4
  %26 = load %struct.img_par*, %struct.img_par** @img, align 8
  %PicSizeInMbs22 = getelementptr inbounds %struct.img_par, %struct.img_par* %26, i32 0, i32 91
  %27 = load i32, i32* %PicSizeInMbs22, align 4
  %cmp23 = icmp ult i32 %25, %27
  br i1 %cmp23, label %for.body.25, label %for.end.32

for.body.25:                                      ; preds = %for.cond.21
  %28 = load i32, i32* %i, align 4
  %div = udiv i32 %28, 2
  %idxprom26 = zext i32 %div to i64
  %29 = load i32*, i32** @MapUnitToSliceGroupMap, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %29, i64 %idxprom26
  %30 = load i32, i32* %arrayidx27, align 4
  %31 = load i32, i32* %i, align 4
  %idxprom28 = zext i32 %31 to i64
  %32 = load i32*, i32** @MbToSliceGroupMap, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %32, i64 %idxprom28
  store i32 %30, i32* %arrayidx29, align 4
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.body.25
  %33 = load i32, i32* %i, align 4
  %inc31 = add i32 %33, 1
  store i32 %inc31, i32* %i, align 4
  br label %for.cond.21

for.end.32:                                       ; preds = %for.cond.21
  br label %if.end.51

if.else.33:                                       ; preds = %land.lhs.true, %if.else
  store i32 0, i32* %i, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.48, %if.else.33
  %34 = load i32, i32* %i, align 4
  %35 = load %struct.img_par*, %struct.img_par** @img, align 8
  %PicSizeInMbs35 = getelementptr inbounds %struct.img_par, %struct.img_par* %35, i32 0, i32 91
  %36 = load i32, i32* %PicSizeInMbs35, align 4
  %cmp36 = icmp ult i32 %34, %36
  br i1 %cmp36, label %for.body.38, label %for.end.50

for.body.38:                                      ; preds = %for.cond.34
  %37 = load i32, i32* %i, align 4
  %38 = load %struct.img_par*, %struct.img_par** @img, align 8
  %PicWidthInMbs = getelementptr inbounds %struct.img_par, %struct.img_par* %38, i32 0, i32 87
  %39 = load i32, i32* %PicWidthInMbs, align 4
  %mul39 = mul i32 2, %39
  %div40 = udiv i32 %37, %mul39
  %40 = load %struct.img_par*, %struct.img_par** @img, align 8
  %PicWidthInMbs41 = getelementptr inbounds %struct.img_par, %struct.img_par* %40, i32 0, i32 87
  %41 = load i32, i32* %PicWidthInMbs41, align 4
  %mul42 = mul i32 %div40, %41
  %42 = load i32, i32* %i, align 4
  %43 = load %struct.img_par*, %struct.img_par** @img, align 8
  %PicWidthInMbs43 = getelementptr inbounds %struct.img_par, %struct.img_par* %43, i32 0, i32 87
  %44 = load i32, i32* %PicWidthInMbs43, align 4
  %rem = urem i32 %42, %44
  %add = add i32 %mul42, %rem
  %idxprom44 = zext i32 %add to i64
  %45 = load i32*, i32** @MapUnitToSliceGroupMap, align 8
  %arrayidx45 = getelementptr inbounds i32, i32* %45, i64 %idxprom44
  %46 = load i32, i32* %arrayidx45, align 4
  %47 = load i32, i32* %i, align 4
  %idxprom46 = zext i32 %47 to i64
  %48 = load i32*, i32** @MbToSliceGroupMap, align 8
  %arrayidx47 = getelementptr inbounds i32, i32* %48, i64 %idxprom46
  store i32 %46, i32* %arrayidx47, align 4
  br label %for.inc.48

for.inc.48:                                       ; preds = %for.body.38
  %49 = load i32, i32* %i, align 4
  %inc49 = add i32 %49, 1
  store i32 %inc49, i32* %i, align 4
  br label %for.cond.34

for.end.50:                                       ; preds = %for.cond.34
  br label %if.end.51

if.end.51:                                        ; preds = %for.end.50, %for.end.32
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %for.end
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @FmoFinit() #0 {
entry:
  %0 = load i32*, i32** @MbToSliceGroupMap, align 8
  %tobool = icmp ne i32* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** @MbToSliceGroupMap, align 8
  %2 = bitcast i32* %1 to i8*
  call void @free(i8* %2) #4
  store i32* null, i32** @MbToSliceGroupMap, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32*, i32** @MapUnitToSliceGroupMap, align 8
  %tobool1 = icmp ne i32* %3, null
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %4 = load i32*, i32** @MapUnitToSliceGroupMap, align 8
  %5 = bitcast i32* %4 to i8*
  call void @free(i8* %5) #4
  store i32* null, i32** @MapUnitToSliceGroupMap, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  ret i32 0
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @FmoGetNumberOfSliceGroup() #0 {
entry:
  %0 = load i32, i32* @NumberOfSliceGroups, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define i32 @FmoGetLastMBOfPicture() #0 {
entry:
  %call = call i32 @FmoGetNumberOfSliceGroup()
  %sub = sub nsw i32 %call, 1
  %call1 = call i32 @FmoGetLastMBInSliceGroup(i32 %sub)
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define i32 @FmoGetLastMBInSliceGroup(i32 %SliceGroup) #0 {
entry:
  %retval = alloca i32, align 4
  %SliceGroup.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %SliceGroup, i32* %SliceGroup.addr, align 4
  %0 = load %struct.img_par*, %struct.img_par** @img, align 8
  %PicSizeInMbs = getelementptr inbounds %struct.img_par, %struct.img_par* %0, i32 0, i32 91
  %1 = load i32, i32* %PicSizeInMbs, align 4
  %sub = sub i32 %1, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %call = call i32 @FmoGetSliceGroupId(i32 %3)
  %4 = load i32, i32* %SliceGroup.addr, align 4
  %cmp1 = icmp eq i32 %call, %4
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  store i32 %5, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @FmoGetSliceGroupId(i32 %mb) #0 {
entry:
  %mb.addr = alloca i32, align 4
  store i32 %mb, i32* %mb.addr, align 4
  %0 = load i32, i32* %mb.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i32*, i32** @MbToSliceGroupMap, align 8
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define i32 @FmoGetNextMBNr(i32 %CurrentMbNr) #0 {
entry:
  %retval = alloca i32, align 4
  %CurrentMbNr.addr = alloca i32, align 4
  %SliceGroup = alloca i32, align 4
  store i32 %CurrentMbNr, i32* %CurrentMbNr.addr, align 4
  %0 = load i32, i32* %CurrentMbNr.addr, align 4
  %call = call i32 @FmoGetSliceGroupId(i32 %0)
  store i32 %call, i32* %SliceGroup, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, i32* %CurrentMbNr.addr, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %CurrentMbNr.addr, align 4
  %2 = load %struct.img_par*, %struct.img_par** @img, align 8
  %PicSizeInMbs = getelementptr inbounds %struct.img_par, %struct.img_par* %2, i32 0, i32 91
  %3 = load i32, i32* %PicSizeInMbs, align 4
  %cmp = icmp slt i32 %inc, %3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i32, i32* %CurrentMbNr.addr, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32*, i32** @MbToSliceGroupMap, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %7 = load i32, i32* %SliceGroup, align 4
  %cmp1 = icmp ne i32 %6, %7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %while.cond

while.end:                                        ; preds = %land.end
  %9 = load i32, i32* %CurrentMbNr.addr, align 4
  %10 = load %struct.img_par*, %struct.img_par** @img, align 8
  %PicSizeInMbs2 = getelementptr inbounds %struct.img_par, %struct.img_par* %10, i32 0, i32 91
  %11 = load i32, i32* %PicSizeInMbs2, align 4
  %cmp3 = icmp sge i32 %9, %11
  br i1 %cmp3, label %if.then, label %if.else

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

declare void @error(i8*, i32) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define internal void @FmoGenerateType0MapUnitMap(%struct.pic_parameter_set_rbsp_t* %pps, %struct.seq_parameter_set_rbsp_t* %sps, i32 %PicSizeInMapUnits) #0 {
entry:
  %pps.addr = alloca %struct.pic_parameter_set_rbsp_t*, align 8
  %sps.addr = alloca %struct.seq_parameter_set_rbsp_t*, align 8
  %PicSizeInMapUnits.addr = alloca i32, align 4
  %iGroup = alloca i32, align 4
  %j = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.pic_parameter_set_rbsp_t* %pps, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  store %struct.seq_parameter_set_rbsp_t* %sps, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  store i32 %PicSizeInMapUnits, i32* %PicSizeInMapUnits.addr, align 4
  store i32 0, i32* %i, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  store i32 0, i32* %iGroup, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.11, %do.body
  %0 = load i32, i32* %iGroup, align 4
  %1 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_slice_groups_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %1, i32 0, i32 12
  %2 = load i32, i32* %num_slice_groups_minus1, align 4
  %cmp = icmp ule i32 %0, %2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %PicSizeInMapUnits.addr, align 4
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
  %run_length_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %8, i32 0, i32 14
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %run_length_minus1, i32 0, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4
  %cmp3 = icmp ule i32 %6, %9
  br i1 %cmp3, label %land.rhs.4, label %land.end.6

land.rhs.4:                                       ; preds = %for.cond.2
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %j, align 4
  %add = add i32 %10, %11
  %12 = load i32, i32* %PicSizeInMapUnits.addr, align 4
  %cmp5 = icmp ult i32 %add, %12
  br label %land.end.6

land.end.6:                                       ; preds = %land.rhs.4, %for.cond.2
  %13 = phi i1 [ false, %for.cond.2 ], [ %cmp5, %land.rhs.4 ]
  br i1 %13, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %land.end.6
  %14 = load i32, i32* %iGroup, align 4
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %j, align 4
  %add8 = add i32 %15, %16
  %idxprom9 = zext i32 %add8 to i64
  %17 = load i32*, i32** @MapUnitToSliceGroupMap, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %17, i64 %idxprom9
  store i32 %14, i32* %arrayidx10, align 4
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
  %run_length_minus114 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %20, i32 0, i32 14
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
  %24 = load i32, i32* %PicSizeInMapUnits.addr, align 4
  %cmp19 = icmp ult i32 %23, %24
  br i1 %cmp19, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @FmoGenerateType1MapUnitMap(%struct.pic_parameter_set_rbsp_t* %pps, %struct.seq_parameter_set_rbsp_t* %sps, i32 %PicSizeInMapUnits) #0 {
entry:
  %pps.addr = alloca %struct.pic_parameter_set_rbsp_t*, align 8
  %sps.addr = alloca %struct.seq_parameter_set_rbsp_t*, align 8
  %PicSizeInMapUnits.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.pic_parameter_set_rbsp_t* %pps, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  store %struct.seq_parameter_set_rbsp_t* %sps, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  store i32 %PicSizeInMapUnits, i32* %PicSizeInMapUnits.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %PicSizeInMapUnits.addr, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.img_par*, %struct.img_par** @img, align 8
  %PicWidthInMbs = getelementptr inbounds %struct.img_par, %struct.img_par* %3, i32 0, i32 87
  %4 = load i32, i32* %PicWidthInMbs, align 4
  %rem = urem i32 %2, %4
  %5 = load i32, i32* %i, align 4
  %6 = load %struct.img_par*, %struct.img_par** @img, align 8
  %PicWidthInMbs1 = getelementptr inbounds %struct.img_par, %struct.img_par* %6, i32 0, i32 87
  %7 = load i32, i32* %PicWidthInMbs1, align 4
  %div = udiv i32 %5, %7
  %8 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_slice_groups_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %8, i32 0, i32 12
  %9 = load i32, i32* %num_slice_groups_minus1, align 4
  %add = add i32 %9, 1
  %mul = mul i32 %div, %add
  %div2 = udiv i32 %mul, 2
  %add3 = add i32 %rem, %div2
  %10 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_slice_groups_minus14 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %10, i32 0, i32 12
  %11 = load i32, i32* %num_slice_groups_minus14, align 4
  %add5 = add i32 %11, 1
  %rem6 = urem i32 %add3, %add5
  %12 = load i32, i32* %i, align 4
  %idxprom = zext i32 %12 to i64
  %13 = load i32*, i32** @MapUnitToSliceGroupMap, align 8
  %arrayidx = getelementptr inbounds i32, i32* %13, i64 %idxprom
  store i32 %rem6, i32* %arrayidx, align 4
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
define internal void @FmoGenerateType2MapUnitMap(%struct.pic_parameter_set_rbsp_t* %pps, %struct.seq_parameter_set_rbsp_t* %sps, i32 %PicSizeInMapUnits) #0 {
entry:
  %pps.addr = alloca %struct.pic_parameter_set_rbsp_t*, align 8
  %sps.addr = alloca %struct.seq_parameter_set_rbsp_t*, align 8
  %PicSizeInMapUnits.addr = alloca i32, align 4
  %iGroup = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %yTopLeft = alloca i32, align 4
  %xTopLeft = alloca i32, align 4
  %yBottomRight = alloca i32, align 4
  %xBottomRight = alloca i32, align 4
  store %struct.pic_parameter_set_rbsp_t* %pps, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  store %struct.seq_parameter_set_rbsp_t* %sps, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  store i32 %PicSizeInMapUnits, i32* %PicSizeInMapUnits.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %PicSizeInMapUnits.addr, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_slice_groups_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %2, i32 0, i32 12
  %3 = load i32, i32* %num_slice_groups_minus1, align 4
  %4 = load i32, i32* %i, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load i32*, i32** @MapUnitToSliceGroupMap, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  store i32 %3, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_slice_groups_minus11 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %7, i32 0, i32 12
  %8 = load i32, i32* %num_slice_groups_minus11, align 4
  %sub = sub i32 %8, 1
  store i32 %sub, i32* %iGroup, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.35, %for.end
  %9 = load i32, i32* %iGroup, align 4
  %cmp3 = icmp sge i32 %9, 0
  br i1 %cmp3, label %for.body.4, label %for.end.36

for.body.4:                                       ; preds = %for.cond.2
  %10 = load i32, i32* %iGroup, align 4
  %idxprom5 = sext i32 %10 to i64
  %11 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %top_left = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %11, i32 0, i32 15
  %arrayidx6 = getelementptr inbounds [8 x i32], [8 x i32]* %top_left, i32 0, i64 %idxprom5
  %12 = load i32, i32* %arrayidx6, align 4
  %13 = load %struct.img_par*, %struct.img_par** @img, align 8
  %PicWidthInMbs = getelementptr inbounds %struct.img_par, %struct.img_par* %13, i32 0, i32 87
  %14 = load i32, i32* %PicWidthInMbs, align 4
  %div = udiv i32 %12, %14
  store i32 %div, i32* %yTopLeft, align 4
  %15 = load i32, i32* %iGroup, align 4
  %idxprom7 = sext i32 %15 to i64
  %16 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %top_left8 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %16, i32 0, i32 15
  %arrayidx9 = getelementptr inbounds [8 x i32], [8 x i32]* %top_left8, i32 0, i64 %idxprom7
  %17 = load i32, i32* %arrayidx9, align 4
  %18 = load %struct.img_par*, %struct.img_par** @img, align 8
  %PicWidthInMbs10 = getelementptr inbounds %struct.img_par, %struct.img_par* %18, i32 0, i32 87
  %19 = load i32, i32* %PicWidthInMbs10, align 4
  %rem = urem i32 %17, %19
  store i32 %rem, i32* %xTopLeft, align 4
  %20 = load i32, i32* %iGroup, align 4
  %idxprom11 = sext i32 %20 to i64
  %21 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %bottom_right = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %21, i32 0, i32 16
  %arrayidx12 = getelementptr inbounds [8 x i32], [8 x i32]* %bottom_right, i32 0, i64 %idxprom11
  %22 = load i32, i32* %arrayidx12, align 4
  %23 = load %struct.img_par*, %struct.img_par** @img, align 8
  %PicWidthInMbs13 = getelementptr inbounds %struct.img_par, %struct.img_par* %23, i32 0, i32 87
  %24 = load i32, i32* %PicWidthInMbs13, align 4
  %div14 = udiv i32 %22, %24
  store i32 %div14, i32* %yBottomRight, align 4
  %25 = load i32, i32* %iGroup, align 4
  %idxprom15 = sext i32 %25 to i64
  %26 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %bottom_right16 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %26, i32 0, i32 16
  %arrayidx17 = getelementptr inbounds [8 x i32], [8 x i32]* %bottom_right16, i32 0, i64 %idxprom15
  %27 = load i32, i32* %arrayidx17, align 4
  %28 = load %struct.img_par*, %struct.img_par** @img, align 8
  %PicWidthInMbs18 = getelementptr inbounds %struct.img_par, %struct.img_par* %28, i32 0, i32 87
  %29 = load i32, i32* %PicWidthInMbs18, align 4
  %rem19 = urem i32 %27, %29
  store i32 %rem19, i32* %xBottomRight, align 4
  %30 = load i32, i32* %yTopLeft, align 4
  store i32 %30, i32* %y, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.32, %for.body.4
  %31 = load i32, i32* %y, align 4
  %32 = load i32, i32* %yBottomRight, align 4
  %cmp21 = icmp ule i32 %31, %32
  br i1 %cmp21, label %for.body.22, label %for.end.34

for.body.22:                                      ; preds = %for.cond.20
  %33 = load i32, i32* %xTopLeft, align 4
  store i32 %33, i32* %x, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.29, %for.body.22
  %34 = load i32, i32* %x, align 4
  %35 = load i32, i32* %xBottomRight, align 4
  %cmp24 = icmp ule i32 %34, %35
  br i1 %cmp24, label %for.body.25, label %for.end.31

for.body.25:                                      ; preds = %for.cond.23
  %36 = load i32, i32* %iGroup, align 4
  %37 = load i32, i32* %y, align 4
  %38 = load %struct.img_par*, %struct.img_par** @img, align 8
  %PicWidthInMbs26 = getelementptr inbounds %struct.img_par, %struct.img_par* %38, i32 0, i32 87
  %39 = load i32, i32* %PicWidthInMbs26, align 4
  %mul = mul i32 %37, %39
  %40 = load i32, i32* %x, align 4
  %add = add i32 %mul, %40
  %idxprom27 = zext i32 %add to i64
  %41 = load i32*, i32** @MapUnitToSliceGroupMap, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %41, i64 %idxprom27
  store i32 %36, i32* %arrayidx28, align 4
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.body.25
  %42 = load i32, i32* %x, align 4
  %inc30 = add i32 %42, 1
  store i32 %inc30, i32* %x, align 4
  br label %for.cond.23

for.end.31:                                       ; preds = %for.cond.23
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.end.31
  %43 = load i32, i32* %y, align 4
  %inc33 = add i32 %43, 1
  store i32 %inc33, i32* %y, align 4
  br label %for.cond.20

for.end.34:                                       ; preds = %for.cond.20
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.end.34
  %44 = load i32, i32* %iGroup, align 4
  %dec = add nsw i32 %44, -1
  store i32 %dec, i32* %iGroup, align 4
  br label %for.cond.2

for.end.36:                                       ; preds = %for.cond.2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @FmoGenerateType3MapUnitMap(%struct.pic_parameter_set_rbsp_t* %pps, %struct.seq_parameter_set_rbsp_t* %sps, i32 %PicSizeInMapUnits) #0 {
entry:
  %pps.addr = alloca %struct.pic_parameter_set_rbsp_t*, align 8
  %sps.addr = alloca %struct.seq_parameter_set_rbsp_t*, align 8
  %PicSizeInMapUnits.addr = alloca i32, align 4
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
  store %struct.pic_parameter_set_rbsp_t* %pps, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  store %struct.seq_parameter_set_rbsp_t* %sps, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  store i32 %PicSizeInMapUnits, i32* %PicSizeInMapUnits.addr, align 4
  %0 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_rate_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %0, i32 0, i32 18
  %1 = load i32, i32* %slice_group_change_rate_minus1, align 4
  %add = add i32 %1, 1
  %2 = load %struct.img_par*, %struct.img_par** @img, align 8
  %slice_group_change_cycle = getelementptr inbounds %struct.img_par, %struct.img_par* %2, i32 0, i32 49
  %3 = load i32, i32* %slice_group_change_cycle, align 4
  %mul = mul i32 %add, %3
  %4 = load i32, i32* %PicSizeInMapUnits.addr, align 4
  %call = call i32 @imin(i32 %mul, i32 %4)
  store i32 %call, i32* %mapUnitsInSliceGroup0, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %PicSizeInMapUnits.addr, align 4
  %cmp = icmp ult i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = zext i32 %7 to i64
  %8 = load i32*, i32** @MapUnitToSliceGroupMap, align 8
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %idxprom
  store i32 2, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %struct.img_par*, %struct.img_par** @img, align 8
  %PicWidthInMbs = getelementptr inbounds %struct.img_par, %struct.img_par* %10, i32 0, i32 87
  %11 = load i32, i32* %PicWidthInMbs, align 4
  %12 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_direction_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %12, i32 0, i32 17
  %13 = load i32, i32* %slice_group_change_direction_flag, align 4
  %sub = sub i32 %11, %13
  %div = udiv i32 %sub, 2
  store i32 %div, i32* %x, align 4
  %14 = load %struct.img_par*, %struct.img_par** @img, align 8
  %PicHeightInMapUnits = getelementptr inbounds %struct.img_par, %struct.img_par* %14, i32 0, i32 88
  %15 = load i32, i32* %PicHeightInMapUnits, align 4
  %16 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_direction_flag1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %16, i32 0, i32 17
  %17 = load i32, i32* %slice_group_change_direction_flag1, align 4
  %sub2 = sub i32 %15, %17
  %div3 = udiv i32 %sub2, 2
  store i32 %div3, i32* %y, align 4
  %18 = load i32, i32* %x, align 4
  store i32 %18, i32* %leftBound, align 4
  %19 = load i32, i32* %y, align 4
  store i32 %19, i32* %topBound, align 4
  %20 = load i32, i32* %x, align 4
  store i32 %20, i32* %rightBound, align 4
  %21 = load i32, i32* %y, align 4
  store i32 %21, i32* %bottomBound, align 4
  %22 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_direction_flag4 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %22, i32 0, i32 17
  %23 = load i32, i32* %slice_group_change_direction_flag4, align 4
  %sub5 = sub i32 %23, 1
  store i32 %sub5, i32* %xDir, align 4
  %24 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_direction_flag6 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %24, i32 0, i32 17
  %25 = load i32, i32* %slice_group_change_direction_flag6, align 4
  store i32 %25, i32* %yDir, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.79, %for.end
  %26 = load i32, i32* %k, align 4
  %27 = load i32, i32* %PicSizeInMapUnits.addr, align 4
  %cmp8 = icmp ult i32 %26, %27
  br i1 %cmp8, label %for.body.9, label %for.end.81

for.body.9:                                       ; preds = %for.cond.7
  %28 = load i32, i32* %y, align 4
  %29 = load %struct.img_par*, %struct.img_par** @img, align 8
  %PicWidthInMbs10 = getelementptr inbounds %struct.img_par, %struct.img_par* %29, i32 0, i32 87
  %30 = load i32, i32* %PicWidthInMbs10, align 4
  %mul11 = mul i32 %28, %30
  %31 = load i32, i32* %x, align 4
  %add12 = add i32 %mul11, %31
  %idxprom13 = zext i32 %add12 to i64
  %32 = load i32*, i32** @MapUnitToSliceGroupMap, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %32, i64 %idxprom13
  %33 = load i32, i32* %arrayidx14, align 4
  %cmp15 = icmp eq i32 %33, 2
  %conv = zext i1 %cmp15 to i32
  store i32 %conv, i32* %mapUnitVacant, align 4
  %34 = load i32, i32* %mapUnitVacant, align 4
  %tobool = icmp ne i32 %34, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.9
  %35 = load i32, i32* %k, align 4
  %36 = load i32, i32* %mapUnitsInSliceGroup0, align 4
  %cmp16 = icmp uge i32 %35, %36
  %conv17 = zext i1 %cmp16 to i32
  %37 = load i32, i32* %y, align 4
  %38 = load %struct.img_par*, %struct.img_par** @img, align 8
  %PicWidthInMbs18 = getelementptr inbounds %struct.img_par, %struct.img_par* %38, i32 0, i32 87
  %39 = load i32, i32* %PicWidthInMbs18, align 4
  %mul19 = mul i32 %37, %39
  %40 = load i32, i32* %x, align 4
  %add20 = add i32 %mul19, %40
  %idxprom21 = zext i32 %add20 to i64
  %41 = load i32*, i32** @MapUnitToSliceGroupMap, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %41, i64 %idxprom21
  store i32 %conv17, i32* %arrayidx22, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.9
  %42 = load i32, i32* %xDir, align 4
  %cmp23 = icmp eq i32 %42, -1
  br i1 %cmp23, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %43 = load i32, i32* %x, align 4
  %44 = load i32, i32* %leftBound, align 4
  %cmp25 = icmp eq i32 %43, %44
  br i1 %cmp25, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %land.lhs.true
  %45 = load i32, i32* %leftBound, align 4
  %sub28 = sub nsw i32 %45, 1
  %call29 = call i32 @imax(i32 %sub28, i32 0)
  store i32 %call29, i32* %leftBound, align 4
  %46 = load i32, i32* %leftBound, align 4
  store i32 %46, i32* %x, align 4
  store i32 0, i32* %xDir, align 4
  %47 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_direction_flag30 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %47, i32 0, i32 17
  %48 = load i32, i32* %slice_group_change_direction_flag30, align 4
  %mul31 = mul i32 2, %48
  %sub32 = sub i32 %mul31, 1
  store i32 %sub32, i32* %yDir, align 4
  br label %if.end.78

if.else:                                          ; preds = %land.lhs.true, %if.end
  %49 = load i32, i32* %xDir, align 4
  %cmp33 = icmp eq i32 %49, 1
  br i1 %cmp33, label %land.lhs.true.35, label %if.else.46

land.lhs.true.35:                                 ; preds = %if.else
  %50 = load i32, i32* %x, align 4
  %51 = load i32, i32* %rightBound, align 4
  %cmp36 = icmp eq i32 %50, %51
  br i1 %cmp36, label %if.then.38, label %if.else.46

if.then.38:                                       ; preds = %land.lhs.true.35
  %52 = load i32, i32* %rightBound, align 4
  %add39 = add nsw i32 %52, 1
  %53 = load %struct.img_par*, %struct.img_par** @img, align 8
  %PicWidthInMbs40 = getelementptr inbounds %struct.img_par, %struct.img_par* %53, i32 0, i32 87
  %54 = load i32, i32* %PicWidthInMbs40, align 4
  %sub41 = sub nsw i32 %54, 1
  %call42 = call i32 @imin(i32 %add39, i32 %sub41)
  store i32 %call42, i32* %rightBound, align 4
  %55 = load i32, i32* %rightBound, align 4
  store i32 %55, i32* %x, align 4
  store i32 0, i32* %xDir, align 4
  %56 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_direction_flag43 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %56, i32 0, i32 17
  %57 = load i32, i32* %slice_group_change_direction_flag43, align 4
  %mul44 = mul i32 2, %57
  %sub45 = sub i32 1, %mul44
  store i32 %sub45, i32* %yDir, align 4
  br label %if.end.77

if.else.46:                                       ; preds = %land.lhs.true.35, %if.else
  %58 = load i32, i32* %yDir, align 4
  %cmp47 = icmp eq i32 %58, -1
  br i1 %cmp47, label %land.lhs.true.49, label %if.else.58

land.lhs.true.49:                                 ; preds = %if.else.46
  %59 = load i32, i32* %y, align 4
  %60 = load i32, i32* %topBound, align 4
  %cmp50 = icmp eq i32 %59, %60
  br i1 %cmp50, label %if.then.52, label %if.else.58

if.then.52:                                       ; preds = %land.lhs.true.49
  %61 = load i32, i32* %topBound, align 4
  %sub53 = sub nsw i32 %61, 1
  %call54 = call i32 @imax(i32 %sub53, i32 0)
  store i32 %call54, i32* %topBound, align 4
  %62 = load i32, i32* %topBound, align 4
  store i32 %62, i32* %y, align 4
  %63 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_direction_flag55 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %63, i32 0, i32 17
  %64 = load i32, i32* %slice_group_change_direction_flag55, align 4
  %mul56 = mul i32 2, %64
  %sub57 = sub i32 1, %mul56
  store i32 %sub57, i32* %xDir, align 4
  store i32 0, i32* %yDir, align 4
  br label %if.end.76

if.else.58:                                       ; preds = %land.lhs.true.49, %if.else.46
  %65 = load i32, i32* %yDir, align 4
  %cmp59 = icmp eq i32 %65, 1
  br i1 %cmp59, label %land.lhs.true.61, label %if.else.72

land.lhs.true.61:                                 ; preds = %if.else.58
  %66 = load i32, i32* %y, align 4
  %67 = load i32, i32* %bottomBound, align 4
  %cmp62 = icmp eq i32 %66, %67
  br i1 %cmp62, label %if.then.64, label %if.else.72

if.then.64:                                       ; preds = %land.lhs.true.61
  %68 = load i32, i32* %bottomBound, align 4
  %add65 = add nsw i32 %68, 1
  %69 = load %struct.img_par*, %struct.img_par** @img, align 8
  %PicHeightInMapUnits66 = getelementptr inbounds %struct.img_par, %struct.img_par* %69, i32 0, i32 88
  %70 = load i32, i32* %PicHeightInMapUnits66, align 4
  %sub67 = sub nsw i32 %70, 1
  %call68 = call i32 @imin(i32 %add65, i32 %sub67)
  store i32 %call68, i32* %bottomBound, align 4
  %71 = load i32, i32* %bottomBound, align 4
  store i32 %71, i32* %y, align 4
  %72 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_direction_flag69 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %72, i32 0, i32 17
  %73 = load i32, i32* %slice_group_change_direction_flag69, align 4
  %mul70 = mul i32 2, %73
  %sub71 = sub i32 %mul70, 1
  store i32 %sub71, i32* %xDir, align 4
  store i32 0, i32* %yDir, align 4
  br label %if.end.75

if.else.72:                                       ; preds = %land.lhs.true.61, %if.else.58
  %74 = load i32, i32* %x, align 4
  %75 = load i32, i32* %xDir, align 4
  %add73 = add nsw i32 %74, %75
  store i32 %add73, i32* %x, align 4
  %76 = load i32, i32* %y, align 4
  %77 = load i32, i32* %yDir, align 4
  %add74 = add nsw i32 %76, %77
  store i32 %add74, i32* %y, align 4
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.72, %if.then.64
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.then.52
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.then.38
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.then.27
  br label %for.inc.79

for.inc.79:                                       ; preds = %if.end.78
  %78 = load i32, i32* %mapUnitVacant, align 4
  %79 = load i32, i32* %k, align 4
  %add80 = add i32 %79, %78
  store i32 %add80, i32* %k, align 4
  br label %for.cond.7

for.end.81:                                       ; preds = %for.cond.7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @FmoGenerateType4MapUnitMap(%struct.pic_parameter_set_rbsp_t* %pps, %struct.seq_parameter_set_rbsp_t* %sps, i32 %PicSizeInMapUnits) #0 {
entry:
  %pps.addr = alloca %struct.pic_parameter_set_rbsp_t*, align 8
  %sps.addr = alloca %struct.seq_parameter_set_rbsp_t*, align 8
  %PicSizeInMapUnits.addr = alloca i32, align 4
  %mapUnitsInSliceGroup0 = alloca i32, align 4
  %sizeOfUpperLeftGroup = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.pic_parameter_set_rbsp_t* %pps, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  store %struct.seq_parameter_set_rbsp_t* %sps, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  store i32 %PicSizeInMapUnits, i32* %PicSizeInMapUnits.addr, align 4
  %0 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_rate_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %0, i32 0, i32 18
  %1 = load i32, i32* %slice_group_change_rate_minus1, align 4
  %add = add i32 %1, 1
  %2 = load %struct.img_par*, %struct.img_par** @img, align 8
  %slice_group_change_cycle = getelementptr inbounds %struct.img_par, %struct.img_par* %2, i32 0, i32 49
  %3 = load i32, i32* %slice_group_change_cycle, align 4
  %mul = mul i32 %add, %3
  %4 = load i32, i32* %PicSizeInMapUnits.addr, align 4
  %call = call i32 @imin(i32 %mul, i32 %4)
  store i32 %call, i32* %mapUnitsInSliceGroup0, align 4
  %5 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_direction_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %5, i32 0, i32 17
  %6 = load i32, i32* %slice_group_change_direction_flag, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load i32, i32* %PicSizeInMapUnits.addr, align 4
  %8 = load i32, i32* %mapUnitsInSliceGroup0, align 4
  %sub = sub i32 %7, %8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load i32, i32* %mapUnitsInSliceGroup0, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %9, %cond.false ]
  store i32 %cond, i32* %sizeOfUpperLeftGroup, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %PicSizeInMapUnits.addr, align 4
  %cmp = icmp ult i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %sizeOfUpperLeftGroup, align 4
  %cmp1 = icmp ult i32 %12, %13
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %14 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_direction_flag2 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %14, i32 0, i32 17
  %15 = load i32, i32* %slice_group_change_direction_flag2, align 4
  %16 = load i32, i32* %i, align 4
  %idxprom = zext i32 %16 to i64
  %17 = load i32*, i32** @MapUnitToSliceGroupMap, align 8
  %arrayidx = getelementptr inbounds i32, i32* %17, i64 %idxprom
  store i32 %15, i32* %arrayidx, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %18 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_direction_flag3 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %18, i32 0, i32 17
  %19 = load i32, i32* %slice_group_change_direction_flag3, align 4
  %sub4 = sub i32 1, %19
  %20 = load i32, i32* %i, align 4
  %idxprom5 = zext i32 %20 to i64
  %21 = load i32*, i32** @MapUnitToSliceGroupMap, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %21, i64 %idxprom5
  store i32 %sub4, i32* %arrayidx6, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load i32, i32* %i, align 4
  %inc = add i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @FmoGenerateType5MapUnitMap(%struct.pic_parameter_set_rbsp_t* %pps, %struct.seq_parameter_set_rbsp_t* %sps, i32 %PicSizeInMapUnits) #0 {
entry:
  %pps.addr = alloca %struct.pic_parameter_set_rbsp_t*, align 8
  %sps.addr = alloca %struct.seq_parameter_set_rbsp_t*, align 8
  %PicSizeInMapUnits.addr = alloca i32, align 4
  %mapUnitsInSliceGroup0 = alloca i32, align 4
  %sizeOfUpperLeftGroup = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store %struct.pic_parameter_set_rbsp_t* %pps, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  store %struct.seq_parameter_set_rbsp_t* %sps, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  store i32 %PicSizeInMapUnits, i32* %PicSizeInMapUnits.addr, align 4
  %0 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_rate_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %0, i32 0, i32 18
  %1 = load i32, i32* %slice_group_change_rate_minus1, align 4
  %add = add i32 %1, 1
  %2 = load %struct.img_par*, %struct.img_par** @img, align 8
  %slice_group_change_cycle = getelementptr inbounds %struct.img_par, %struct.img_par* %2, i32 0, i32 49
  %3 = load i32, i32* %slice_group_change_cycle, align 4
  %mul = mul i32 %add, %3
  %4 = load i32, i32* %PicSizeInMapUnits.addr, align 4
  %call = call i32 @imin(i32 %mul, i32 %4)
  store i32 %call, i32* %mapUnitsInSliceGroup0, align 4
  %5 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_direction_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %5, i32 0, i32 17
  %6 = load i32, i32* %slice_group_change_direction_flag, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load i32, i32* %PicSizeInMapUnits.addr, align 4
  %8 = load i32, i32* %mapUnitsInSliceGroup0, align 4
  %sub = sub i32 %7, %8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load i32, i32* %mapUnitsInSliceGroup0, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %9, %cond.false ]
  store i32 %cond, i32* %sizeOfUpperLeftGroup, align 4
  store i32 0, i32* %k, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.17, %cond.end
  %10 = load i32, i32* %j, align 4
  %11 = load %struct.img_par*, %struct.img_par** @img, align 8
  %PicWidthInMbs = getelementptr inbounds %struct.img_par, %struct.img_par* %11, i32 0, i32 87
  %12 = load i32, i32* %PicWidthInMbs, align 4
  %cmp = icmp ult i32 %10, %12
  br i1 %cmp, label %for.body, label %for.end.19

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %13 = load i32, i32* %i, align 4
  %14 = load %struct.img_par*, %struct.img_par** @img, align 8
  %PicHeightInMapUnits = getelementptr inbounds %struct.img_par, %struct.img_par* %14, i32 0, i32 88
  %15 = load i32, i32* %PicHeightInMapUnits, align 4
  %cmp2 = icmp ult i32 %13, %15
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %16 = load i32, i32* %k, align 4
  %inc = add i32 %16, 1
  store i32 %inc, i32* %k, align 4
  %17 = load i32, i32* %sizeOfUpperLeftGroup, align 4
  %cmp4 = icmp ult i32 %16, %17
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.3
  %18 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_direction_flag5 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %18, i32 0, i32 17
  %19 = load i32, i32* %slice_group_change_direction_flag5, align 4
  %20 = load i32, i32* %i, align 4
  %21 = load %struct.img_par*, %struct.img_par** @img, align 8
  %PicWidthInMbs6 = getelementptr inbounds %struct.img_par, %struct.img_par* %21, i32 0, i32 87
  %22 = load i32, i32* %PicWidthInMbs6, align 4
  %mul7 = mul i32 %20, %22
  %23 = load i32, i32* %j, align 4
  %add8 = add i32 %mul7, %23
  %idxprom = zext i32 %add8 to i64
  %24 = load i32*, i32** @MapUnitToSliceGroupMap, align 8
  %arrayidx = getelementptr inbounds i32, i32* %24, i64 %idxprom
  store i32 %19, i32* %arrayidx, align 4
  br label %if.end

if.else:                                          ; preds = %for.body.3
  %25 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_direction_flag9 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %25, i32 0, i32 17
  %26 = load i32, i32* %slice_group_change_direction_flag9, align 4
  %sub10 = sub i32 1, %26
  %27 = load i32, i32* %i, align 4
  %28 = load %struct.img_par*, %struct.img_par** @img, align 8
  %PicWidthInMbs11 = getelementptr inbounds %struct.img_par, %struct.img_par* %28, i32 0, i32 87
  %29 = load i32, i32* %PicWidthInMbs11, align 4
  %mul12 = mul i32 %27, %29
  %30 = load i32, i32* %j, align 4
  %add13 = add i32 %mul12, %30
  %idxprom14 = zext i32 %add13 to i64
  %31 = load i32*, i32** @MapUnitToSliceGroupMap, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %31, i64 %idxprom14
  store i32 %sub10, i32* %arrayidx15, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %32 = load i32, i32* %i, align 4
  %inc16 = add i32 %32, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.end
  %33 = load i32, i32* %j, align 4
  %inc18 = add i32 %33, 1
  store i32 %inc18, i32* %j, align 4
  br label %for.cond

for.end.19:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @FmoGenerateType6MapUnitMap(%struct.pic_parameter_set_rbsp_t* %pps, %struct.seq_parameter_set_rbsp_t* %sps, i32 %PicSizeInMapUnits) #0 {
entry:
  %pps.addr = alloca %struct.pic_parameter_set_rbsp_t*, align 8
  %sps.addr = alloca %struct.seq_parameter_set_rbsp_t*, align 8
  %PicSizeInMapUnits.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.pic_parameter_set_rbsp_t* %pps, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  store %struct.seq_parameter_set_rbsp_t* %sps, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  store i32 %PicSizeInMapUnits, i32* %PicSizeInMapUnits.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %PicSizeInMapUnits.addr, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = zext i32 %2 to i64
  %3 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_id = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %3, i32 0, i32 20
  %4 = load i32*, i32** %slice_group_id, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %6 = load i32, i32* %i, align 4
  %idxprom1 = zext i32 %6 to i64
  %7 = load i32*, i32** @MapUnitToSliceGroupMap, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %7, i64 %idxprom1
  store i32 %5, i32* %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @imin(i32 %a, i32 %b) #5 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %1 = load i32, i32* %b.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %a.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %b.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @imax(i32 %a, i32 %b) #5 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %1 = load i32, i32* %b.addr, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %a.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %b.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
