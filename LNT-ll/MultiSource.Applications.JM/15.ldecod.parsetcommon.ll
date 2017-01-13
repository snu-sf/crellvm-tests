; ModuleID = './MultiSource.Applications.JM/15.ldecod.parsetcommon.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], [6 x [16 x i32]], [2 x [64 x i32]], [6 x i32], [2 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [6 x [16 x i32]], [2 x [64 x i32]], [6 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
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

@.str = private unnamed_addr constant [14 x i8] c"AllocPPS: PPS\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"AllocPPS: slice_group_id\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"AllocSPS: SPS\00", align 1
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

; Function Attrs: nounwind uwtable
define %struct.pic_parameter_set_rbsp_t* @AllocPPS() #0 {
entry:
  %p = alloca %struct.pic_parameter_set_rbsp_t*, align 8
  %call = call noalias i8* @calloc(i64 1160, i64 1) #3
  %0 = bitcast i8* %call to %struct.pic_parameter_set_rbsp_t*
  store %struct.pic_parameter_set_rbsp_t* %0, %struct.pic_parameter_set_rbsp_t** %p, align 8
  %cmp = icmp eq %struct.pic_parameter_set_rbsp_t* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call noalias i8* @calloc(i64 240000, i64 1) #3
  %1 = bitcast i8* %call1 to i32*
  %2 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %p, align 8
  %slice_group_id = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %2, i32 0, i32 20
  store i32* %1, i32** %slice_group_id, align 8
  %cmp2 = icmp eq i32* %1, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %3 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %p, align 8
  ret %struct.pic_parameter_set_rbsp_t* %3
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

declare void @no_mem_exit(i8*) #2

; Function Attrs: nounwind uwtable
define %struct.seq_parameter_set_rbsp_t* @AllocSPS() #0 {
entry:
  %p = alloca %struct.seq_parameter_set_rbsp_t*, align 8
  %call = call noalias i8* @calloc(i64 3064, i64 1) #3
  %0 = bitcast i8* %call to %struct.seq_parameter_set_rbsp_t*
  store %struct.seq_parameter_set_rbsp_t* %0, %struct.seq_parameter_set_rbsp_t** %p, align 8
  %cmp = icmp eq %struct.seq_parameter_set_rbsp_t* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %p, align 8
  ret %struct.seq_parameter_set_rbsp_t* %1
}

; Function Attrs: nounwind uwtable
define void @FreePPS(%struct.pic_parameter_set_rbsp_t* %pps) #0 {
entry:
  %pps.addr = alloca %struct.pic_parameter_set_rbsp_t*, align 8
  store %struct.pic_parameter_set_rbsp_t* %pps, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %0 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_id = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %0, i32 0, i32 20
  %1 = load i32*, i32** %slice_group_id, align 8
  %cmp = icmp ne i32* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_id1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %2, i32 0, i32 20
  %3 = load i32*, i32** %slice_group_id1, align 8
  %4 = bitcast i32* %3 to i8*
  call void @free(i8* %4) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %6 = bitcast %struct.pic_parameter_set_rbsp_t* %5 to i8*
  call void @free(i8* %6) #3
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @FreeSPS(%struct.seq_parameter_set_rbsp_t* %sps) #0 {
entry:
  %sps.addr = alloca %struct.seq_parameter_set_rbsp_t*, align 8
  store %struct.seq_parameter_set_rbsp_t* %sps, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %0 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %1 = bitcast %struct.seq_parameter_set_rbsp_t* %0 to i8*
  call void @free(i8* %1) #3
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @sps_is_equal(%struct.seq_parameter_set_rbsp_t* %sps1, %struct.seq_parameter_set_rbsp_t* %sps2) #0 {
entry:
  %retval = alloca i32, align 4
  %sps1.addr = alloca %struct.seq_parameter_set_rbsp_t*, align 8
  %sps2.addr = alloca %struct.seq_parameter_set_rbsp_t*, align 8
  %i = alloca i32, align 4
  %equal = alloca i32, align 4
  store %struct.seq_parameter_set_rbsp_t* %sps1, %struct.seq_parameter_set_rbsp_t** %sps1.addr, align 8
  store %struct.seq_parameter_set_rbsp_t* %sps2, %struct.seq_parameter_set_rbsp_t** %sps2.addr, align 8
  store i32 1, i32* %equal, align 4
  %0 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps1.addr, align 8
  %Valid = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %0, i32 0, i32 0
  %1 = load i32, i32* %Valid, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps2.addr, align 8
  %Valid1 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %2, i32 0, i32 0
  %3 = load i32, i32* %Valid1, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps1.addr, align 8
  %profile_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %4, i32 0, i32 1
  %5 = load i32, i32* %profile_idc, align 4
  %6 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps2.addr, align 8
  %profile_idc3 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %6, i32 0, i32 1
  %7 = load i32, i32* %profile_idc3, align 4
  %cmp = icmp eq i32 %5, %7
  %conv = zext i1 %cmp to i32
  %8 = load i32, i32* %equal, align 4
  %and = and i32 %8, %conv
  store i32 %and, i32* %equal, align 4
  %9 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps1.addr, align 8
  %constrained_set0_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %9, i32 0, i32 2
  %10 = load i32, i32* %constrained_set0_flag, align 4
  %11 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps2.addr, align 8
  %constrained_set0_flag4 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %11, i32 0, i32 2
  %12 = load i32, i32* %constrained_set0_flag4, align 4
  %cmp5 = icmp eq i32 %10, %12
  %conv6 = zext i1 %cmp5 to i32
  %13 = load i32, i32* %equal, align 4
  %and7 = and i32 %13, %conv6
  store i32 %and7, i32* %equal, align 4
  %14 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps1.addr, align 8
  %constrained_set1_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %14, i32 0, i32 3
  %15 = load i32, i32* %constrained_set1_flag, align 4
  %16 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps2.addr, align 8
  %constrained_set1_flag8 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %16, i32 0, i32 3
  %17 = load i32, i32* %constrained_set1_flag8, align 4
  %cmp9 = icmp eq i32 %15, %17
  %conv10 = zext i1 %cmp9 to i32
  %18 = load i32, i32* %equal, align 4
  %and11 = and i32 %18, %conv10
  store i32 %and11, i32* %equal, align 4
  %19 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps1.addr, align 8
  %constrained_set2_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %19, i32 0, i32 4
  %20 = load i32, i32* %constrained_set2_flag, align 4
  %21 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps2.addr, align 8
  %constrained_set2_flag12 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %21, i32 0, i32 4
  %22 = load i32, i32* %constrained_set2_flag12, align 4
  %cmp13 = icmp eq i32 %20, %22
  %conv14 = zext i1 %cmp13 to i32
  %23 = load i32, i32* %equal, align 4
  %and15 = and i32 %23, %conv14
  store i32 %and15, i32* %equal, align 4
  %24 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps1.addr, align 8
  %level_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %24, i32 0, i32 6
  %25 = load i32, i32* %level_idc, align 4
  %26 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps2.addr, align 8
  %level_idc16 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %26, i32 0, i32 6
  %27 = load i32, i32* %level_idc16, align 4
  %cmp17 = icmp eq i32 %25, %27
  %conv18 = zext i1 %cmp17 to i32
  %28 = load i32, i32* %equal, align 4
  %and19 = and i32 %28, %conv18
  store i32 %and19, i32* %equal, align 4
  %29 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps1.addr, align 8
  %seq_parameter_set_id = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %29, i32 0, i32 7
  %30 = load i32, i32* %seq_parameter_set_id, align 4
  %31 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps2.addr, align 8
  %seq_parameter_set_id20 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %31, i32 0, i32 7
  %32 = load i32, i32* %seq_parameter_set_id20, align 4
  %cmp21 = icmp eq i32 %30, %32
  %conv22 = zext i1 %cmp21 to i32
  %33 = load i32, i32* %equal, align 4
  %and23 = and i32 %33, %conv22
  store i32 %and23, i32* %equal, align 4
  %34 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps1.addr, align 8
  %log2_max_frame_num_minus4 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %34, i32 0, i32 17
  %35 = load i32, i32* %log2_max_frame_num_minus4, align 4
  %36 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps2.addr, align 8
  %log2_max_frame_num_minus424 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %36, i32 0, i32 17
  %37 = load i32, i32* %log2_max_frame_num_minus424, align 4
  %cmp25 = icmp eq i32 %35, %37
  %conv26 = zext i1 %cmp25 to i32
  %38 = load i32, i32* %equal, align 4
  %and27 = and i32 %38, %conv26
  store i32 %and27, i32* %equal, align 4
  %39 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps1.addr, align 8
  %pic_order_cnt_type = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %39, i32 0, i32 18
  %40 = load i32, i32* %pic_order_cnt_type, align 4
  %41 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps2.addr, align 8
  %pic_order_cnt_type28 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %41, i32 0, i32 18
  %42 = load i32, i32* %pic_order_cnt_type28, align 4
  %cmp29 = icmp eq i32 %40, %42
  %conv30 = zext i1 %cmp29 to i32
  %43 = load i32, i32* %equal, align 4
  %and31 = and i32 %43, %conv30
  store i32 %and31, i32* %equal, align 4
  %44 = load i32, i32* %equal, align 4
  %tobool32 = icmp ne i32 %44, 0
  br i1 %tobool32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %if.end
  %45 = load i32, i32* %equal, align 4
  store i32 %45, i32* %retval
  br label %return

if.end.34:                                        ; preds = %if.end
  %46 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps1.addr, align 8
  %pic_order_cnt_type35 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %46, i32 0, i32 18
  %47 = load i32, i32* %pic_order_cnt_type35, align 4
  %cmp36 = icmp eq i32 %47, 0
  br i1 %cmp36, label %if.then.38, label %if.else

if.then.38:                                       ; preds = %if.end.34
  %48 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps1.addr, align 8
  %log2_max_pic_order_cnt_lsb_minus4 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %48, i32 0, i32 19
  %49 = load i32, i32* %log2_max_pic_order_cnt_lsb_minus4, align 4
  %50 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps2.addr, align 8
  %log2_max_pic_order_cnt_lsb_minus439 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %50, i32 0, i32 19
  %51 = load i32, i32* %log2_max_pic_order_cnt_lsb_minus439, align 4
  %cmp40 = icmp eq i32 %49, %51
  %conv41 = zext i1 %cmp40 to i32
  %52 = load i32, i32* %equal, align 4
  %and42 = and i32 %52, %conv41
  store i32 %and42, i32* %equal, align 4
  br label %if.end.76

if.else:                                          ; preds = %if.end.34
  %53 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps1.addr, align 8
  %pic_order_cnt_type43 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %53, i32 0, i32 18
  %54 = load i32, i32* %pic_order_cnt_type43, align 4
  %cmp44 = icmp eq i32 %54, 1
  br i1 %cmp44, label %if.then.46, label %if.end.75

if.then.46:                                       ; preds = %if.else
  %55 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps1.addr, align 8
  %delta_pic_order_always_zero_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %55, i32 0, i32 20
  %56 = load i32, i32* %delta_pic_order_always_zero_flag, align 4
  %57 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps2.addr, align 8
  %delta_pic_order_always_zero_flag47 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %57, i32 0, i32 20
  %58 = load i32, i32* %delta_pic_order_always_zero_flag47, align 4
  %cmp48 = icmp eq i32 %56, %58
  %conv49 = zext i1 %cmp48 to i32
  %59 = load i32, i32* %equal, align 4
  %and50 = and i32 %59, %conv49
  store i32 %and50, i32* %equal, align 4
  %60 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps1.addr, align 8
  %offset_for_non_ref_pic = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %60, i32 0, i32 21
  %61 = load i32, i32* %offset_for_non_ref_pic, align 4
  %62 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps2.addr, align 8
  %offset_for_non_ref_pic51 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %62, i32 0, i32 21
  %63 = load i32, i32* %offset_for_non_ref_pic51, align 4
  %cmp52 = icmp eq i32 %61, %63
  %conv53 = zext i1 %cmp52 to i32
  %64 = load i32, i32* %equal, align 4
  %and54 = and i32 %64, %conv53
  store i32 %and54, i32* %equal, align 4
  %65 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps1.addr, align 8
  %offset_for_top_to_bottom_field = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %65, i32 0, i32 22
  %66 = load i32, i32* %offset_for_top_to_bottom_field, align 4
  %67 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps2.addr, align 8
  %offset_for_top_to_bottom_field55 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %67, i32 0, i32 22
  %68 = load i32, i32* %offset_for_top_to_bottom_field55, align 4
  %cmp56 = icmp eq i32 %66, %68
  %conv57 = zext i1 %cmp56 to i32
  %69 = load i32, i32* %equal, align 4
  %and58 = and i32 %69, %conv57
  store i32 %and58, i32* %equal, align 4
  %70 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps1.addr, align 8
  %num_ref_frames_in_pic_order_cnt_cycle = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %70, i32 0, i32 23
  %71 = load i32, i32* %num_ref_frames_in_pic_order_cnt_cycle, align 4
  %72 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps2.addr, align 8
  %num_ref_frames_in_pic_order_cnt_cycle59 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %72, i32 0, i32 23
  %73 = load i32, i32* %num_ref_frames_in_pic_order_cnt_cycle59, align 4
  %cmp60 = icmp eq i32 %71, %73
  %conv61 = zext i1 %cmp60 to i32
  %74 = load i32, i32* %equal, align 4
  %and62 = and i32 %74, %conv61
  store i32 %and62, i32* %equal, align 4
  %75 = load i32, i32* %equal, align 4
  %tobool63 = icmp ne i32 %75, 0
  br i1 %tobool63, label %if.end.65, label %if.then.64

if.then.64:                                       ; preds = %if.then.46
  %76 = load i32, i32* %equal, align 4
  store i32 %76, i32* %retval
  br label %return

if.end.65:                                        ; preds = %if.then.46
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.65
  %77 = load i32, i32* %i, align 4
  %78 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps1.addr, align 8
  %num_ref_frames_in_pic_order_cnt_cycle66 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %78, i32 0, i32 23
  %79 = load i32, i32* %num_ref_frames_in_pic_order_cnt_cycle66, align 4
  %cmp67 = icmp ult i32 %77, %79
  br i1 %cmp67, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %80 = load i32, i32* %i, align 4
  %idxprom = zext i32 %80 to i64
  %81 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps1.addr, align 8
  %offset_for_ref_frame = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %81, i32 0, i32 24
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* %offset_for_ref_frame, i32 0, i64 %idxprom
  %82 = load i32, i32* %arrayidx, align 4
  %83 = load i32, i32* %i, align 4
  %idxprom69 = zext i32 %83 to i64
  %84 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps2.addr, align 8
  %offset_for_ref_frame70 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %84, i32 0, i32 24
  %arrayidx71 = getelementptr inbounds [256 x i32], [256 x i32]* %offset_for_ref_frame70, i32 0, i64 %idxprom69
  %85 = load i32, i32* %arrayidx71, align 4
  %cmp72 = icmp eq i32 %82, %85
  %conv73 = zext i1 %cmp72 to i32
  %86 = load i32, i32* %equal, align 4
  %and74 = and i32 %86, %conv73
  store i32 %and74, i32* %equal, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %87 = load i32, i32* %i, align 4
  %inc = add i32 %87, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.75

if.end.75:                                        ; preds = %for.end, %if.else
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.then.38
  %88 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps1.addr, align 8
  %num_ref_frames = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %88, i32 0, i32 25
  %89 = load i32, i32* %num_ref_frames, align 4
  %90 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps2.addr, align 8
  %num_ref_frames77 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %90, i32 0, i32 25
  %91 = load i32, i32* %num_ref_frames77, align 4
  %cmp78 = icmp eq i32 %89, %91
  %conv79 = zext i1 %cmp78 to i32
  %92 = load i32, i32* %equal, align 4
  %and80 = and i32 %92, %conv79
  store i32 %and80, i32* %equal, align 4
  %93 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps1.addr, align 8
  %gaps_in_frame_num_value_allowed_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %93, i32 0, i32 26
  %94 = load i32, i32* %gaps_in_frame_num_value_allowed_flag, align 4
  %95 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps2.addr, align 8
  %gaps_in_frame_num_value_allowed_flag81 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %95, i32 0, i32 26
  %96 = load i32, i32* %gaps_in_frame_num_value_allowed_flag81, align 4
  %cmp82 = icmp eq i32 %94, %96
  %conv83 = zext i1 %cmp82 to i32
  %97 = load i32, i32* %equal, align 4
  %and84 = and i32 %97, %conv83
  store i32 %and84, i32* %equal, align 4
  %98 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps1.addr, align 8
  %pic_width_in_mbs_minus1 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %98, i32 0, i32 27
  %99 = load i32, i32* %pic_width_in_mbs_minus1, align 4
  %100 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps2.addr, align 8
  %pic_width_in_mbs_minus185 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %100, i32 0, i32 27
  %101 = load i32, i32* %pic_width_in_mbs_minus185, align 4
  %cmp86 = icmp eq i32 %99, %101
  %conv87 = zext i1 %cmp86 to i32
  %102 = load i32, i32* %equal, align 4
  %and88 = and i32 %102, %conv87
  store i32 %and88, i32* %equal, align 4
  %103 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps1.addr, align 8
  %pic_height_in_map_units_minus1 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %103, i32 0, i32 28
  %104 = load i32, i32* %pic_height_in_map_units_minus1, align 4
  %105 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps2.addr, align 8
  %pic_height_in_map_units_minus189 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %105, i32 0, i32 28
  %106 = load i32, i32* %pic_height_in_map_units_minus189, align 4
  %cmp90 = icmp eq i32 %104, %106
  %conv91 = zext i1 %cmp90 to i32
  %107 = load i32, i32* %equal, align 4
  %and92 = and i32 %107, %conv91
  store i32 %and92, i32* %equal, align 4
  %108 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps1.addr, align 8
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %108, i32 0, i32 29
  %109 = load i32, i32* %frame_mbs_only_flag, align 4
  %110 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps2.addr, align 8
  %frame_mbs_only_flag93 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %110, i32 0, i32 29
  %111 = load i32, i32* %frame_mbs_only_flag93, align 4
  %cmp94 = icmp eq i32 %109, %111
  %conv95 = zext i1 %cmp94 to i32
  %112 = load i32, i32* %equal, align 4
  %and96 = and i32 %112, %conv95
  store i32 %and96, i32* %equal, align 4
  %113 = load i32, i32* %equal, align 4
  %tobool97 = icmp ne i32 %113, 0
  br i1 %tobool97, label %if.end.99, label %if.then.98

if.then.98:                                       ; preds = %if.end.76
  %114 = load i32, i32* %equal, align 4
  store i32 %114, i32* %retval
  br label %return

if.end.99:                                        ; preds = %if.end.76
  %115 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps1.addr, align 8
  %frame_mbs_only_flag100 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %115, i32 0, i32 29
  %116 = load i32, i32* %frame_mbs_only_flag100, align 4
  %tobool101 = icmp ne i32 %116, 0
  br i1 %tobool101, label %if.end.107, label %if.then.102

if.then.102:                                      ; preds = %if.end.99
  %117 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps1.addr, align 8
  %mb_adaptive_frame_field_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %117, i32 0, i32 30
  %118 = load i32, i32* %mb_adaptive_frame_field_flag, align 4
  %119 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps2.addr, align 8
  %mb_adaptive_frame_field_flag103 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %119, i32 0, i32 30
  %120 = load i32, i32* %mb_adaptive_frame_field_flag103, align 4
  %cmp104 = icmp eq i32 %118, %120
  %conv105 = zext i1 %cmp104 to i32
  %121 = load i32, i32* %equal, align 4
  %and106 = and i32 %121, %conv105
  store i32 %and106, i32* %equal, align 4
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.102, %if.end.99
  %122 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps1.addr, align 8
  %direct_8x8_inference_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %122, i32 0, i32 31
  %123 = load i32, i32* %direct_8x8_inference_flag, align 4
  %124 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps2.addr, align 8
  %direct_8x8_inference_flag108 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %124, i32 0, i32 31
  %125 = load i32, i32* %direct_8x8_inference_flag108, align 4
  %cmp109 = icmp eq i32 %123, %125
  %conv110 = zext i1 %cmp109 to i32
  %126 = load i32, i32* %equal, align 4
  %and111 = and i32 %126, %conv110
  store i32 %and111, i32* %equal, align 4
  %127 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps1.addr, align 8
  %frame_cropping_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %127, i32 0, i32 32
  %128 = load i32, i32* %frame_cropping_flag, align 4
  %129 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps2.addr, align 8
  %frame_cropping_flag112 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %129, i32 0, i32 32
  %130 = load i32, i32* %frame_cropping_flag112, align 4
  %cmp113 = icmp eq i32 %128, %130
  %conv114 = zext i1 %cmp113 to i32
  %131 = load i32, i32* %equal, align 4
  %and115 = and i32 %131, %conv114
  store i32 %and115, i32* %equal, align 4
  %132 = load i32, i32* %equal, align 4
  %tobool116 = icmp ne i32 %132, 0
  br i1 %tobool116, label %if.end.118, label %if.then.117

if.then.117:                                      ; preds = %if.end.107
  %133 = load i32, i32* %equal, align 4
  store i32 %133, i32* %retval
  br label %return

if.end.118:                                       ; preds = %if.end.107
  %134 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps1.addr, align 8
  %frame_cropping_flag119 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %134, i32 0, i32 32
  %135 = load i32, i32* %frame_cropping_flag119, align 4
  %tobool120 = icmp ne i32 %135, 0
  br i1 %tobool120, label %if.then.121, label %if.end.138

if.then.121:                                      ; preds = %if.end.118
  %136 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps1.addr, align 8
  %frame_cropping_rect_left_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %136, i32 0, i32 33
  %137 = load i32, i32* %frame_cropping_rect_left_offset, align 4
  %138 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps2.addr, align 8
  %frame_cropping_rect_left_offset122 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %138, i32 0, i32 33
  %139 = load i32, i32* %frame_cropping_rect_left_offset122, align 4
  %cmp123 = icmp eq i32 %137, %139
  %conv124 = zext i1 %cmp123 to i32
  %140 = load i32, i32* %equal, align 4
  %and125 = and i32 %140, %conv124
  store i32 %and125, i32* %equal, align 4
  %141 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps1.addr, align 8
  %frame_cropping_rect_right_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %141, i32 0, i32 34
  %142 = load i32, i32* %frame_cropping_rect_right_offset, align 4
  %143 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps2.addr, align 8
  %frame_cropping_rect_right_offset126 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %143, i32 0, i32 34
  %144 = load i32, i32* %frame_cropping_rect_right_offset126, align 4
  %cmp127 = icmp eq i32 %142, %144
  %conv128 = zext i1 %cmp127 to i32
  %145 = load i32, i32* %equal, align 4
  %and129 = and i32 %145, %conv128
  store i32 %and129, i32* %equal, align 4
  %146 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps1.addr, align 8
  %frame_cropping_rect_top_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %146, i32 0, i32 35
  %147 = load i32, i32* %frame_cropping_rect_top_offset, align 4
  %148 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps2.addr, align 8
  %frame_cropping_rect_top_offset130 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %148, i32 0, i32 35
  %149 = load i32, i32* %frame_cropping_rect_top_offset130, align 4
  %cmp131 = icmp eq i32 %147, %149
  %conv132 = zext i1 %cmp131 to i32
  %150 = load i32, i32* %equal, align 4
  %and133 = and i32 %150, %conv132
  store i32 %and133, i32* %equal, align 4
  %151 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps1.addr, align 8
  %frame_cropping_rect_bottom_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %151, i32 0, i32 36
  %152 = load i32, i32* %frame_cropping_rect_bottom_offset, align 4
  %153 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps2.addr, align 8
  %frame_cropping_rect_bottom_offset134 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %153, i32 0, i32 36
  %154 = load i32, i32* %frame_cropping_rect_bottom_offset134, align 4
  %cmp135 = icmp eq i32 %152, %154
  %conv136 = zext i1 %cmp135 to i32
  %155 = load i32, i32* %equal, align 4
  %and137 = and i32 %155, %conv136
  store i32 %and137, i32* %equal, align 4
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.121, %if.end.118
  %156 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps1.addr, align 8
  %vui_parameters_present_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %156, i32 0, i32 37
  %157 = load i32, i32* %vui_parameters_present_flag, align 4
  %158 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps2.addr, align 8
  %vui_parameters_present_flag139 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %158, i32 0, i32 37
  %159 = load i32, i32* %vui_parameters_present_flag139, align 4
  %cmp140 = icmp eq i32 %157, %159
  %conv141 = zext i1 %cmp140 to i32
  %160 = load i32, i32* %equal, align 4
  %and142 = and i32 %160, %conv141
  store i32 %and142, i32* %equal, align 4
  %161 = load i32, i32* %equal, align 4
  store i32 %161, i32* %retval
  br label %return

return:                                           ; preds = %if.end.138, %if.then.117, %if.then.98, %if.then.64, %if.then.33, %if.then
  %162 = load i32, i32* %retval
  ret i32 %162
}

; Function Attrs: nounwind uwtable
define i32 @pps_is_equal(%struct.pic_parameter_set_rbsp_t* %pps1, %struct.pic_parameter_set_rbsp_t* %pps2) #0 {
entry:
  %retval = alloca i32, align 4
  %pps1.addr = alloca %struct.pic_parameter_set_rbsp_t*, align 8
  %pps2.addr = alloca %struct.pic_parameter_set_rbsp_t*, align 8
  %i = alloca i32, align 4
  %equal = alloca i32, align 4
  store %struct.pic_parameter_set_rbsp_t* %pps1, %struct.pic_parameter_set_rbsp_t** %pps1.addr, align 8
  store %struct.pic_parameter_set_rbsp_t* %pps2, %struct.pic_parameter_set_rbsp_t** %pps2.addr, align 8
  store i32 1, i32* %equal, align 4
  %0 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps1.addr, align 8
  %Valid = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %0, i32 0, i32 0
  %1 = load i32, i32* %Valid, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps2.addr, align 8
  %Valid1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %2, i32 0, i32 0
  %3 = load i32, i32* %Valid1, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps1.addr, align 8
  %pic_parameter_set_id = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %4, i32 0, i32 1
  %5 = load i32, i32* %pic_parameter_set_id, align 4
  %6 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps2.addr, align 8
  %pic_parameter_set_id3 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %6, i32 0, i32 1
  %7 = load i32, i32* %pic_parameter_set_id3, align 4
  %cmp = icmp eq i32 %5, %7
  %conv = zext i1 %cmp to i32
  %8 = load i32, i32* %equal, align 4
  %and = and i32 %8, %conv
  store i32 %and, i32* %equal, align 4
  %9 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps1.addr, align 8
  %seq_parameter_set_id = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %9, i32 0, i32 2
  %10 = load i32, i32* %seq_parameter_set_id, align 4
  %11 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps2.addr, align 8
  %seq_parameter_set_id4 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %11, i32 0, i32 2
  %12 = load i32, i32* %seq_parameter_set_id4, align 4
  %cmp5 = icmp eq i32 %10, %12
  %conv6 = zext i1 %cmp5 to i32
  %13 = load i32, i32* %equal, align 4
  %and7 = and i32 %13, %conv6
  store i32 %and7, i32* %equal, align 4
  %14 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps1.addr, align 8
  %entropy_coding_mode_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %14, i32 0, i32 3
  %15 = load i32, i32* %entropy_coding_mode_flag, align 4
  %16 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps2.addr, align 8
  %entropy_coding_mode_flag8 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %16, i32 0, i32 3
  %17 = load i32, i32* %entropy_coding_mode_flag8, align 4
  %cmp9 = icmp eq i32 %15, %17
  %conv10 = zext i1 %cmp9 to i32
  %18 = load i32, i32* %equal, align 4
  %and11 = and i32 %18, %conv10
  store i32 %and11, i32* %equal, align 4
  %19 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps1.addr, align 8
  %pic_order_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %19, i32 0, i32 11
  %20 = load i32, i32* %pic_order_present_flag, align 4
  %21 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps2.addr, align 8
  %pic_order_present_flag12 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %21, i32 0, i32 11
  %22 = load i32, i32* %pic_order_present_flag12, align 4
  %cmp13 = icmp eq i32 %20, %22
  %conv14 = zext i1 %cmp13 to i32
  %23 = load i32, i32* %equal, align 4
  %and15 = and i32 %23, %conv14
  store i32 %and15, i32* %equal, align 4
  %24 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps1.addr, align 8
  %num_slice_groups_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %24, i32 0, i32 12
  %25 = load i32, i32* %num_slice_groups_minus1, align 4
  %26 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps2.addr, align 8
  %num_slice_groups_minus116 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %26, i32 0, i32 12
  %27 = load i32, i32* %num_slice_groups_minus116, align 4
  %cmp17 = icmp eq i32 %25, %27
  %conv18 = zext i1 %cmp17 to i32
  %28 = load i32, i32* %equal, align 4
  %and19 = and i32 %28, %conv18
  store i32 %and19, i32* %equal, align 4
  %29 = load i32, i32* %equal, align 4
  %tobool20 = icmp ne i32 %29, 0
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %if.end
  %30 = load i32, i32* %equal, align 4
  store i32 %30, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.end
  %31 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps1.addr, align 8
  %num_slice_groups_minus123 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %31, i32 0, i32 12
  %32 = load i32, i32* %num_slice_groups_minus123, align 4
  %cmp24 = icmp ugt i32 %32, 0
  br i1 %cmp24, label %if.then.26, label %if.end.128

if.then.26:                                       ; preds = %if.end.22
  %33 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps1.addr, align 8
  %slice_group_map_type = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %33, i32 0, i32 13
  %34 = load i32, i32* %slice_group_map_type, align 4
  %35 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps2.addr, align 8
  %slice_group_map_type27 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %35, i32 0, i32 13
  %36 = load i32, i32* %slice_group_map_type27, align 4
  %cmp28 = icmp eq i32 %34, %36
  %conv29 = zext i1 %cmp28 to i32
  %37 = load i32, i32* %equal, align 4
  %and30 = and i32 %37, %conv29
  store i32 %and30, i32* %equal, align 4
  %38 = load i32, i32* %equal, align 4
  %tobool31 = icmp ne i32 %38, 0
  br i1 %tobool31, label %if.end.33, label %if.then.32

if.then.32:                                       ; preds = %if.then.26
  %39 = load i32, i32* %equal, align 4
  store i32 %39, i32* %retval
  br label %return

if.end.33:                                        ; preds = %if.then.26
  %40 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps1.addr, align 8
  %slice_group_map_type34 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %40, i32 0, i32 13
  %41 = load i32, i32* %slice_group_map_type34, align 4
  %cmp35 = icmp eq i32 %41, 0
  br i1 %cmp35, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %if.end.33
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.37
  %42 = load i32, i32* %i, align 4
  %43 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps1.addr, align 8
  %num_slice_groups_minus138 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %43, i32 0, i32 12
  %44 = load i32, i32* %num_slice_groups_minus138, align 4
  %cmp39 = icmp ule i32 %42, %44
  br i1 %cmp39, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %45 = load i32, i32* %i, align 4
  %idxprom = zext i32 %45 to i64
  %46 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps1.addr, align 8
  %run_length_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %46, i32 0, i32 14
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %run_length_minus1, i32 0, i64 %idxprom
  %47 = load i32, i32* %arrayidx, align 4
  %48 = load i32, i32* %i, align 4
  %idxprom41 = zext i32 %48 to i64
  %49 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps2.addr, align 8
  %run_length_minus142 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %49, i32 0, i32 14
  %arrayidx43 = getelementptr inbounds [8 x i32], [8 x i32]* %run_length_minus142, i32 0, i64 %idxprom41
  %50 = load i32, i32* %arrayidx43, align 4
  %cmp44 = icmp eq i32 %47, %50
  %conv45 = zext i1 %cmp44 to i32
  %51 = load i32, i32* %equal, align 4
  %and46 = and i32 %51, %conv45
  store i32 %and46, i32* %equal, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %52 = load i32, i32* %i, align 4
  %inc = add i32 %52, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.127

if.else:                                          ; preds = %if.end.33
  %53 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps1.addr, align 8
  %slice_group_map_type47 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %53, i32 0, i32 13
  %54 = load i32, i32* %slice_group_map_type47, align 4
  %cmp48 = icmp eq i32 %54, 2
  br i1 %cmp48, label %if.then.50, label %if.else.75

if.then.50:                                       ; preds = %if.else
  store i32 0, i32* %i, align 4
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.72, %if.then.50
  %55 = load i32, i32* %i, align 4
  %56 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps1.addr, align 8
  %num_slice_groups_minus152 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %56, i32 0, i32 12
  %57 = load i32, i32* %num_slice_groups_minus152, align 4
  %cmp53 = icmp ult i32 %55, %57
  br i1 %cmp53, label %for.body.55, label %for.end.74

for.body.55:                                      ; preds = %for.cond.51
  %58 = load i32, i32* %i, align 4
  %idxprom56 = zext i32 %58 to i64
  %59 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps1.addr, align 8
  %top_left = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %59, i32 0, i32 15
  %arrayidx57 = getelementptr inbounds [8 x i32], [8 x i32]* %top_left, i32 0, i64 %idxprom56
  %60 = load i32, i32* %arrayidx57, align 4
  %61 = load i32, i32* %i, align 4
  %idxprom58 = zext i32 %61 to i64
  %62 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps2.addr, align 8
  %top_left59 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %62, i32 0, i32 15
  %arrayidx60 = getelementptr inbounds [8 x i32], [8 x i32]* %top_left59, i32 0, i64 %idxprom58
  %63 = load i32, i32* %arrayidx60, align 4
  %cmp61 = icmp eq i32 %60, %63
  %conv62 = zext i1 %cmp61 to i32
  %64 = load i32, i32* %equal, align 4
  %and63 = and i32 %64, %conv62
  store i32 %and63, i32* %equal, align 4
  %65 = load i32, i32* %i, align 4
  %idxprom64 = zext i32 %65 to i64
  %66 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps1.addr, align 8
  %bottom_right = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %66, i32 0, i32 16
  %arrayidx65 = getelementptr inbounds [8 x i32], [8 x i32]* %bottom_right, i32 0, i64 %idxprom64
  %67 = load i32, i32* %arrayidx65, align 4
  %68 = load i32, i32* %i, align 4
  %idxprom66 = zext i32 %68 to i64
  %69 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps2.addr, align 8
  %bottom_right67 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %69, i32 0, i32 16
  %arrayidx68 = getelementptr inbounds [8 x i32], [8 x i32]* %bottom_right67, i32 0, i64 %idxprom66
  %70 = load i32, i32* %arrayidx68, align 4
  %cmp69 = icmp eq i32 %67, %70
  %conv70 = zext i1 %cmp69 to i32
  %71 = load i32, i32* %equal, align 4
  %and71 = and i32 %71, %conv70
  store i32 %and71, i32* %equal, align 4
  br label %for.inc.72

for.inc.72:                                       ; preds = %for.body.55
  %72 = load i32, i32* %i, align 4
  %inc73 = add i32 %72, 1
  store i32 %inc73, i32* %i, align 4
  br label %for.cond.51

for.end.74:                                       ; preds = %for.cond.51
  br label %if.end.126

if.else.75:                                       ; preds = %if.else
  %73 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps1.addr, align 8
  %slice_group_map_type76 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %73, i32 0, i32 13
  %74 = load i32, i32* %slice_group_map_type76, align 4
  %cmp77 = icmp eq i32 %74, 3
  br i1 %cmp77, label %if.then.87, label %lor.lhs.false.79

lor.lhs.false.79:                                 ; preds = %if.else.75
  %75 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps1.addr, align 8
  %slice_group_map_type80 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %75, i32 0, i32 13
  %76 = load i32, i32* %slice_group_map_type80, align 4
  %cmp81 = icmp eq i32 %76, 4
  br i1 %cmp81, label %if.then.87, label %lor.lhs.false.83

lor.lhs.false.83:                                 ; preds = %lor.lhs.false.79
  %77 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps1.addr, align 8
  %slice_group_map_type84 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %77, i32 0, i32 13
  %78 = load i32, i32* %slice_group_map_type84, align 4
  %cmp85 = icmp eq i32 %78, 5
  br i1 %cmp85, label %if.then.87, label %if.else.96

if.then.87:                                       ; preds = %lor.lhs.false.83, %lor.lhs.false.79, %if.else.75
  %79 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps1.addr, align 8
  %slice_group_change_direction_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %79, i32 0, i32 17
  %80 = load i32, i32* %slice_group_change_direction_flag, align 4
  %81 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps2.addr, align 8
  %slice_group_change_direction_flag88 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %81, i32 0, i32 17
  %82 = load i32, i32* %slice_group_change_direction_flag88, align 4
  %cmp89 = icmp eq i32 %80, %82
  %conv90 = zext i1 %cmp89 to i32
  %83 = load i32, i32* %equal, align 4
  %and91 = and i32 %83, %conv90
  store i32 %and91, i32* %equal, align 4
  %84 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps1.addr, align 8
  %slice_group_change_rate_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %84, i32 0, i32 18
  %85 = load i32, i32* %slice_group_change_rate_minus1, align 4
  %86 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps2.addr, align 8
  %slice_group_change_rate_minus192 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %86, i32 0, i32 18
  %87 = load i32, i32* %slice_group_change_rate_minus192, align 4
  %cmp93 = icmp eq i32 %85, %87
  %conv94 = zext i1 %cmp93 to i32
  %88 = load i32, i32* %equal, align 4
  %and95 = and i32 %88, %conv94
  store i32 %and95, i32* %equal, align 4
  br label %if.end.125

if.else.96:                                       ; preds = %lor.lhs.false.83
  %89 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps1.addr, align 8
  %slice_group_map_type97 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %89, i32 0, i32 13
  %90 = load i32, i32* %slice_group_map_type97, align 4
  %cmp98 = icmp eq i32 %90, 6
  br i1 %cmp98, label %if.then.100, label %if.end.124

if.then.100:                                      ; preds = %if.else.96
  %91 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps1.addr, align 8
  %num_slice_group_map_units_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %91, i32 0, i32 19
  %92 = load i32, i32* %num_slice_group_map_units_minus1, align 4
  %93 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps2.addr, align 8
  %num_slice_group_map_units_minus1101 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %93, i32 0, i32 19
  %94 = load i32, i32* %num_slice_group_map_units_minus1101, align 4
  %cmp102 = icmp eq i32 %92, %94
  %conv103 = zext i1 %cmp102 to i32
  %95 = load i32, i32* %equal, align 4
  %and104 = and i32 %95, %conv103
  store i32 %and104, i32* %equal, align 4
  %96 = load i32, i32* %equal, align 4
  %tobool105 = icmp ne i32 %96, 0
  br i1 %tobool105, label %if.end.107, label %if.then.106

if.then.106:                                      ; preds = %if.then.100
  %97 = load i32, i32* %equal, align 4
  store i32 %97, i32* %retval
  br label %return

if.end.107:                                       ; preds = %if.then.100
  store i32 0, i32* %i, align 4
  br label %for.cond.108

for.cond.108:                                     ; preds = %for.inc.121, %if.end.107
  %98 = load i32, i32* %i, align 4
  %99 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps1.addr, align 8
  %num_slice_group_map_units_minus1109 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %99, i32 0, i32 19
  %100 = load i32, i32* %num_slice_group_map_units_minus1109, align 4
  %cmp110 = icmp ule i32 %98, %100
  br i1 %cmp110, label %for.body.112, label %for.end.123

for.body.112:                                     ; preds = %for.cond.108
  %101 = load i32, i32* %i, align 4
  %idxprom113 = zext i32 %101 to i64
  %102 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps1.addr, align 8
  %slice_group_id = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %102, i32 0, i32 20
  %103 = load i32*, i32** %slice_group_id, align 8
  %arrayidx114 = getelementptr inbounds i32, i32* %103, i64 %idxprom113
  %104 = load i32, i32* %arrayidx114, align 4
  %105 = load i32, i32* %i, align 4
  %idxprom115 = zext i32 %105 to i64
  %106 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps2.addr, align 8
  %slice_group_id116 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %106, i32 0, i32 20
  %107 = load i32*, i32** %slice_group_id116, align 8
  %arrayidx117 = getelementptr inbounds i32, i32* %107, i64 %idxprom115
  %108 = load i32, i32* %arrayidx117, align 4
  %cmp118 = icmp eq i32 %104, %108
  %conv119 = zext i1 %cmp118 to i32
  %109 = load i32, i32* %equal, align 4
  %and120 = and i32 %109, %conv119
  store i32 %and120, i32* %equal, align 4
  br label %for.inc.121

for.inc.121:                                      ; preds = %for.body.112
  %110 = load i32, i32* %i, align 4
  %inc122 = add i32 %110, 1
  store i32 %inc122, i32* %i, align 4
  br label %for.cond.108

for.end.123:                                      ; preds = %for.cond.108
  br label %if.end.124

if.end.124:                                       ; preds = %for.end.123, %if.else.96
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.124, %if.then.87
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.125, %for.end.74
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126, %for.end
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %if.end.22
  %111 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps1.addr, align 8
  %num_ref_idx_l0_active_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %111, i32 0, i32 21
  %112 = load i32, i32* %num_ref_idx_l0_active_minus1, align 4
  %113 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps2.addr, align 8
  %num_ref_idx_l0_active_minus1129 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %113, i32 0, i32 21
  %114 = load i32, i32* %num_ref_idx_l0_active_minus1129, align 4
  %cmp130 = icmp eq i32 %112, %114
  %conv131 = zext i1 %cmp130 to i32
  %115 = load i32, i32* %equal, align 4
  %and132 = and i32 %115, %conv131
  store i32 %and132, i32* %equal, align 4
  %116 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps1.addr, align 8
  %num_ref_idx_l1_active_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %116, i32 0, i32 22
  %117 = load i32, i32* %num_ref_idx_l1_active_minus1, align 4
  %118 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps2.addr, align 8
  %num_ref_idx_l1_active_minus1133 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %118, i32 0, i32 22
  %119 = load i32, i32* %num_ref_idx_l1_active_minus1133, align 4
  %cmp134 = icmp eq i32 %117, %119
  %conv135 = zext i1 %cmp134 to i32
  %120 = load i32, i32* %equal, align 4
  %and136 = and i32 %120, %conv135
  store i32 %and136, i32* %equal, align 4
  %121 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps1.addr, align 8
  %weighted_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %121, i32 0, i32 23
  %122 = load i32, i32* %weighted_pred_flag, align 4
  %123 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps2.addr, align 8
  %weighted_pred_flag137 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %123, i32 0, i32 23
  %124 = load i32, i32* %weighted_pred_flag137, align 4
  %cmp138 = icmp eq i32 %122, %124
  %conv139 = zext i1 %cmp138 to i32
  %125 = load i32, i32* %equal, align 4
  %and140 = and i32 %125, %conv139
  store i32 %and140, i32* %equal, align 4
  %126 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps1.addr, align 8
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %126, i32 0, i32 24
  %127 = load i32, i32* %weighted_bipred_idc, align 4
  %128 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps2.addr, align 8
  %weighted_bipred_idc141 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %128, i32 0, i32 24
  %129 = load i32, i32* %weighted_bipred_idc141, align 4
  %cmp142 = icmp eq i32 %127, %129
  %conv143 = zext i1 %cmp142 to i32
  %130 = load i32, i32* %equal, align 4
  %and144 = and i32 %130, %conv143
  store i32 %and144, i32* %equal, align 4
  %131 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps1.addr, align 8
  %pic_init_qp_minus26 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %131, i32 0, i32 25
  %132 = load i32, i32* %pic_init_qp_minus26, align 4
  %133 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps2.addr, align 8
  %pic_init_qp_minus26145 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %133, i32 0, i32 25
  %134 = load i32, i32* %pic_init_qp_minus26145, align 4
  %cmp146 = icmp eq i32 %132, %134
  %conv147 = zext i1 %cmp146 to i32
  %135 = load i32, i32* %equal, align 4
  %and148 = and i32 %135, %conv147
  store i32 %and148, i32* %equal, align 4
  %136 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps1.addr, align 8
  %pic_init_qs_minus26 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %136, i32 0, i32 26
  %137 = load i32, i32* %pic_init_qs_minus26, align 4
  %138 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps2.addr, align 8
  %pic_init_qs_minus26149 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %138, i32 0, i32 26
  %139 = load i32, i32* %pic_init_qs_minus26149, align 4
  %cmp150 = icmp eq i32 %137, %139
  %conv151 = zext i1 %cmp150 to i32
  %140 = load i32, i32* %equal, align 4
  %and152 = and i32 %140, %conv151
  store i32 %and152, i32* %equal, align 4
  %141 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps1.addr, align 8
  %chroma_qp_index_offset = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %141, i32 0, i32 27
  %142 = load i32, i32* %chroma_qp_index_offset, align 4
  %143 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps2.addr, align 8
  %chroma_qp_index_offset153 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %143, i32 0, i32 27
  %144 = load i32, i32* %chroma_qp_index_offset153, align 4
  %cmp154 = icmp eq i32 %142, %144
  %conv155 = zext i1 %cmp154 to i32
  %145 = load i32, i32* %equal, align 4
  %and156 = and i32 %145, %conv155
  store i32 %and156, i32* %equal, align 4
  %146 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps1.addr, align 8
  %deblocking_filter_control_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %146, i32 0, i32 29
  %147 = load i32, i32* %deblocking_filter_control_present_flag, align 4
  %148 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps2.addr, align 8
  %deblocking_filter_control_present_flag157 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %148, i32 0, i32 29
  %149 = load i32, i32* %deblocking_filter_control_present_flag157, align 4
  %cmp158 = icmp eq i32 %147, %149
  %conv159 = zext i1 %cmp158 to i32
  %150 = load i32, i32* %equal, align 4
  %and160 = and i32 %150, %conv159
  store i32 %and160, i32* %equal, align 4
  %151 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps1.addr, align 8
  %constrained_intra_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %151, i32 0, i32 30
  %152 = load i32, i32* %constrained_intra_pred_flag, align 4
  %153 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps2.addr, align 8
  %constrained_intra_pred_flag161 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %153, i32 0, i32 30
  %154 = load i32, i32* %constrained_intra_pred_flag161, align 4
  %cmp162 = icmp eq i32 %152, %154
  %conv163 = zext i1 %cmp162 to i32
  %155 = load i32, i32* %equal, align 4
  %and164 = and i32 %155, %conv163
  store i32 %and164, i32* %equal, align 4
  %156 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps1.addr, align 8
  %redundant_pic_cnt_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %156, i32 0, i32 31
  %157 = load i32, i32* %redundant_pic_cnt_present_flag, align 4
  %158 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps2.addr, align 8
  %redundant_pic_cnt_present_flag165 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %158, i32 0, i32 31
  %159 = load i32, i32* %redundant_pic_cnt_present_flag165, align 4
  %cmp166 = icmp eq i32 %157, %159
  %conv167 = zext i1 %cmp166 to i32
  %160 = load i32, i32* %equal, align 4
  %and168 = and i32 %160, %conv167
  store i32 %and168, i32* %equal, align 4
  %161 = load i32, i32* %equal, align 4
  store i32 %161, i32* %retval
  br label %return

return:                                           ; preds = %if.end.128, %if.then.106, %if.then.32, %if.then.21, %if.then
  %162 = load i32, i32* %retval
  ret i32 %162
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
