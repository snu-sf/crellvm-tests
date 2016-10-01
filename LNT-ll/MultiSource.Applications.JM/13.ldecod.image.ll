; ModuleID = './MultiSource.Applications.JM/13.ldecod.image.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.storable_picture = type { i32, i32, i32, i32, i32, [50 x [6 x [33 x i64]]], [50 x [6 x [33 x i64]]], [50 x [6 x [33 x i64]]], [50 x [6 x [33 x i64]]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16***, i8*, i16**, i8***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, %struct.DecRefPicMarking_s*, i32 }
%struct.DecRefPicMarking_s = type { i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s* }
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
%struct.timeb = type { i64, i16, i16, i16 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [6 x [16 x i32]], [2 x [64 x i32]], [6 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], [6 x [16 x i32]], [2 x [64 x i32]], [6 x i32], [2 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ercVariables_s = type { i32, i32, i32*, i32*, i32*, %struct.ercSegment_s*, i32, i32*, i32, i32, i32 }
%struct.ercSegment_s = type { i32, i32, i32 }
%struct.pix_pos = type { i32, i32, i32, i32, i32, i32 }
%struct.objectBuffer_t = type { i8, i32, i32, [3 x i32] }
%struct.snr_par = type { i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.old_slice_par = type { i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32 }
%struct.colocated_params = type { i32, i32, i32, [6 x [33 x i64]], i8***, i64***, i16****, i8**, [6 x [33 x i64]], i8***, i64***, i16****, i8**, [6 x [33 x i64]], i8***, i64***, i16****, i8**, i8, i8** }
%struct.frame_store = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture* }
%struct.NALU_t = type { i32, i32, i32, i32, i32, i32, i8* }
%struct.frame = type { i16*, i16*, i16* }

@dec_picture = common global %struct.storable_picture* null, align 8
@img = external global %struct.img_par*, align 8
@previous_frame_num = common global i32 0, align 4
@Is_primary_correct = common global i32 0, align 4
@ref_flag = common global [17 x i32] zeroinitializer, align 16
@Is_redundant_correct = common global i32 0, align 4
@.str = private unnamed_addr constant [110 x i8] c"Source picture has higher bit depth than imgpel data type. Please recompile with larger data type for imgpel.\00", align 1
@.str.1 = private unnamed_addr constant [80 x i8] c"reading only from formats of 8, 16 or 32 bit allowed on big endian architecture\00", align 1
@find_snr.SubWidthC = internal constant [4 x i32] [i32 1, i32 2, i32 2, i32 1], align 16
@find_snr.SubHeightC = internal constant [4 x i32] [i32 1, i32 2, i32 1, i32 1], align 16
@active_sps = common global %struct.seq_parameter_set_rbsp_t* null, align 8
@find_snr.yuv_types = private unnamed_addr constant [4 x [6 x i8]] [[6 x i8] c"4:0:0\00", [6 x i8] c"4:2:0\00", [6 x i8] c"4:2:2\00", [6 x i8] c"4:4:4\00"], align 16
@input = external global %struct.inp_par*, align 8
@frame_no = common global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"find_snr: buf\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"Error in seeking frame number: %d\0A\00", align 1
@imgY_ref = common global i16** null, align 8
@imgUV_ref = common global i16*** null, align 8
@stdout = external global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [48 x i8] c"%04d(P)  %8d %5d %5d %7.4f %7.4f %7.4f  %s %5d\0A\00", align 1
@get_block.COEF = internal constant [6 x i32] [i32 1, i32 -5, i32 20, i32 20, i32 -5, i32 1], align 16
@get_block.cur_imgY = internal global i16** null, align 8
@get_block.cur_lineY = internal global i16* null, align 8
@get_block.jpos_m2 = internal global i32 0, align 4
@get_block.jpos_m1 = internal global i32 0, align 4
@get_block.jpos = internal global i32 0, align 4
@get_block.jpos_p1 = internal global i32 0, align 4
@get_block.jpos_p2 = internal global i32 0, align 4
@get_block.jpos_p3 = internal global i32 0, align 4
@get_block.ipos_m2 = internal global i32 0, align 4
@get_block.ipos_m1 = internal global i32 0, align 4
@get_block.ipos = internal global i32 0, align 4
@get_block.ipos_p1 = internal global i32 0, align 4
@get_block.ipos_p2 = internal global i32 0, align 4
@get_block.ipos_p3 = internal global i32 0, align 4
@no_reference_picture = external global %struct.storable_picture*, align 8
@.str.5 = private unnamed_addr constant [63 x i8] c"list[ref_frame] is equal to 'no reference picture' before RAP\0A\00", align 1
@listX = external global [6 x %struct.storable_picture**], align 16
@listXsize = external global [6 x i32], align 16
@non_conforming_stream = common global i32 0, align 4
@.str.6 = private unnamed_addr constant [80 x i8] c"RefPicList0[ num_ref_idx_l0_active_minus1 ] is equal to 'no reference picture'\0A\00", align 1
@.str.7 = private unnamed_addr constant [98 x i8] c"RefPicList0[ num_ref_idx_l0_active_minus1 ] is equal to 'no reference picture', invalid bitstream\00", align 1
@.str.8 = private unnamed_addr constant [80 x i8] c"RefPicList1[ num_ref_idx_l1_active_minus1 ] is equal to 'no reference picture'\0A\00", align 1
@.str.9 = private unnamed_addr constant [98 x i8] c"RefPicList1[ num_ref_idx_l1_active_minus1 ] is equal to 'no reference picture', invalid bitstream\00", align 1
@bits = external global %struct._IO_FILE*, align 8
@.str.10 = private unnamed_addr constant [54 x i8] c"Error while getting the NALU in file format %s, exit\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"Annex B\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"RTP\00", align 1
@.str.13 = private unnamed_addr constant [59 x i8] c"Found NALU w/ forbidden_bit set, bit error?  Let's try...\0A\00", align 1
@.str.14 = private unnamed_addr constant [55 x i8] c"Warning: Decoding does not start with an IDR picture.\0A\00", align 1
@active_pps = common global %struct.pic_parameter_set_rbsp_t* null, align 8
@.str.15 = private unnamed_addr constant [58 x i8] c"Data partiton A cannot have idr_flag set, trying anyway \0A\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"NALU: DP_A slice_id\00", align 1
@.str.17 = private unnamed_addr constant [56 x i8] c"received data partition with CABAC, this is not allowed\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"NALU: DP_B slice_id\00", align 1
@.str.19 = private unnamed_addr constant [50 x i8] c"got a data partition B which does not match DP_A\0A\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"NALU: DP_B redudant_pic_cnt\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"NALU: DP_C slice_id\00", align 1
@.str.22 = private unnamed_addr constant [50 x i8] c"got a data partition C which does not match DP_A\0A\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"NALU:SLICE_C redudand_pic_cnt\00", align 1
@.str.24 = private unnamed_addr constant [58 x i8] c"found data partition B without matching DP A, discarding\0A\00", align 1
@.str.25 = private unnamed_addr constant [58 x i8] c"found data partition C without matching DP A, discarding\0A\00", align 1
@.str.26 = private unnamed_addr constant [45 x i8] c"read_new_slice: Found NALU_TYPE_SEI, len %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [46 x i8] c"read_new_slice: Found NALU_TYPE_FILL, len %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [54 x i8] c"Skipping these filling bits, proceeding w/ next NALU\0A\00", align 1
@.str.29 = private unnamed_addr constant [62 x i8] c"Found NALU type %d, len %d undefined, ignore NALU, moving on\0A\00", align 1
@.str.30 = private unnamed_addr constant [48 x i8] c"An unintentional loss of pictures occurs! Exit\0A\00", align 1
@erc_errorVar = external global %struct.ercVariables_s*, align 8
@erc_mvperMB = external global i32, align 4
@.str.31 = private unnamed_addr constant [31 x i8] c"img->structure not initialized\00", align 1
@get_mb_block_pos = common global void (i32, i32*, i32*)* null, align 8
@getNeighbour = common global void (i32, i32, i32, i32, %struct.pix_pos*)* null, align 8
@exit_picture.yuv_types = private unnamed_addr constant [4 x [6 x i8]] [[6 x i8] c"4:0:0\00", [6 x i8] c"4:2:0\00", [6 x i8] c"4:2:2\00", [6 x i8] c"4:4:4\00"], align 16
@erc_img = external global %struct.img_par*, align 8
@erc_object_list = external global %struct.objectBuffer_t*, align 8
@.str.32 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.33 = private unnamed_addr constant [48 x i8] c"%04d(I)  %8d %5d %5d %7.4f %7.4f %7.4f  %s %5d\0A\00", align 1
@snr = external global %struct.snr_par*, align 8
@.str.34 = private unnamed_addr constant [48 x i8] c"%04d(SP) %8d %5d %5d %7.4f %7.4f %7.4f  %s %5d\0A\00", align 1
@.str.35 = private unnamed_addr constant [48 x i8] c"%04d(SI) %8d %5d %5d %7.4f %7.4f %7.4f  %s %5d\0A\00", align 1
@.str.36 = private unnamed_addr constant [48 x i8] c"%04d(RB) %8d %5d %5d %7.4f %7.4f %7.4f  %s %5d\0A\00", align 1
@.str.37 = private unnamed_addr constant [48 x i8] c"%04d(B)  %8d %5d %5d %7.4f %7.4f %7.4f  %s %5d\0A\00", align 1
@.str.38 = private unnamed_addr constant [32 x i8] c"Completed Decoding frame %05d.\0D\00", align 1
@Bframe_ctr = common global i32 0, align 4
@g_nFrame = common global i32 0, align 4
@old_slice = common global %struct.old_slice_par zeroinitializer, align 4
@Co_located = external global %struct.colocated_params*, align 8
@redundant_slice_ref_idx = common global i32 0, align 4
@PicPos = common global i32** null, align 8
@ReMapRef = common global [20 x i32] zeroinitializer, align 16
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
@nal_startcode_follows = common global i32 (%struct.img_par*, i32)* null, align 8
@last_out_fs = common global %struct.frame_store* null, align 8
@pocs_in_dpb = common global [100 x i32] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define void @MbAffPostProc() #0 {
entry:
  %temp = alloca [16 x [32 x i16]], align 16
  %imgY = alloca i16**, align 8
  %imgUV = alloca i16***, align 8
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %x0 = alloca i32, align 4
  %y0 = alloca i32, align 4
  %uv = alloca i32, align 4
  %0 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %imgY1 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %0, i32 0, i32 32
  %1 = load i16**, i16*** %imgY1, align 8
  store i16** %1, i16*** %imgY, align 8
  %2 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %imgUV2 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %2, i32 0, i32 33
  %3 = load i16***, i16**** %imgUV2, align 8
  store i16*** %3, i16**** %imgUV, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.138, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %PicSizeInMbs = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %5, i32 0, i32 31
  %6 = load i32, i32* %PicSizeInMbs, align 4
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end.140

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %mb_field = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %8, i32 0, i32 34
  %9 = load i8*, i8** %mb_field, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %10, 0
  br i1 %tobool, label %if.then, label %if.end.137

if.then:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  call void @get_mb_pos(i32 %11, i32* %x0, i32* %y0, i32 0)
  store i32 0, i32* %y, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.18, %if.then
  %12 = load i32, i32* %y, align 4
  %cmp4 = icmp slt i32 %12, 32
  br i1 %cmp4, label %for.body.5, label %for.end.20

for.body.5:                                       ; preds = %for.cond.3
  store i32 0, i32* %x, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body.5
  %13 = load i32, i32* %x, align 4
  %cmp7 = icmp slt i32 %13, 16
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.6
  %14 = load i32, i32* %x0, align 4
  %15 = load i32, i32* %x, align 4
  %add = add nsw i32 %14, %15
  %idxprom9 = sext i32 %add to i64
  %16 = load i32, i32* %y0, align 4
  %17 = load i32, i32* %y, align 4
  %add10 = add nsw i32 %16, %17
  %idxprom11 = sext i32 %add10 to i64
  %18 = load i16**, i16*** %imgY, align 8
  %arrayidx12 = getelementptr inbounds i16*, i16** %18, i64 %idxprom11
  %19 = load i16*, i16** %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds i16, i16* %19, i64 %idxprom9
  %20 = load i16, i16* %arrayidx13, align 2
  %21 = load i32, i32* %y, align 4
  %idxprom14 = sext i32 %21 to i64
  %22 = load i32, i32* %x, align 4
  %idxprom15 = sext i32 %22 to i64
  %arrayidx16 = getelementptr inbounds [16 x [32 x i16]], [16 x [32 x i16]]* %temp, i32 0, i64 %idxprom15
  %arrayidx17 = getelementptr inbounds [32 x i16], [32 x i16]* %arrayidx16, i32 0, i64 %idxprom14
  store i16 %20, i16* %arrayidx17, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body.8
  %23 = load i32, i32* %x, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.end
  %24 = load i32, i32* %y, align 4
  %inc19 = add nsw i32 %24, 1
  store i32 %inc19, i32* %y, align 4
  br label %for.cond.3

for.end.20:                                       ; preds = %for.cond.3
  store i32 0, i32* %y, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.53, %for.end.20
  %25 = load i32, i32* %y, align 4
  %cmp22 = icmp slt i32 %25, 16
  br i1 %cmp22, label %for.body.23, label %for.end.55

for.body.23:                                      ; preds = %for.cond.21
  store i32 0, i32* %x, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.50, %for.body.23
  %26 = load i32, i32* %x, align 4
  %cmp25 = icmp slt i32 %26, 16
  br i1 %cmp25, label %for.body.26, label %for.end.52

for.body.26:                                      ; preds = %for.cond.24
  %27 = load i32, i32* %y, align 4
  %idxprom27 = sext i32 %27 to i64
  %28 = load i32, i32* %x, align 4
  %idxprom28 = sext i32 %28 to i64
  %arrayidx29 = getelementptr inbounds [16 x [32 x i16]], [16 x [32 x i16]]* %temp, i32 0, i64 %idxprom28
  %arrayidx30 = getelementptr inbounds [32 x i16], [32 x i16]* %arrayidx29, i32 0, i64 %idxprom27
  %29 = load i16, i16* %arrayidx30, align 2
  %30 = load i32, i32* %x0, align 4
  %31 = load i32, i32* %x, align 4
  %add31 = add nsw i32 %30, %31
  %idxprom32 = sext i32 %add31 to i64
  %32 = load i32, i32* %y0, align 4
  %33 = load i32, i32* %y, align 4
  %mul = mul nsw i32 2, %33
  %add33 = add nsw i32 %32, %mul
  %idxprom34 = sext i32 %add33 to i64
  %34 = load i16**, i16*** %imgY, align 8
  %arrayidx35 = getelementptr inbounds i16*, i16** %34, i64 %idxprom34
  %35 = load i16*, i16** %arrayidx35, align 8
  %arrayidx36 = getelementptr inbounds i16, i16* %35, i64 %idxprom32
  store i16 %29, i16* %arrayidx36, align 2
  %36 = load i32, i32* %y, align 4
  %add37 = add nsw i32 %36, 16
  %idxprom38 = sext i32 %add37 to i64
  %37 = load i32, i32* %x, align 4
  %idxprom39 = sext i32 %37 to i64
  %arrayidx40 = getelementptr inbounds [16 x [32 x i16]], [16 x [32 x i16]]* %temp, i32 0, i64 %idxprom39
  %arrayidx41 = getelementptr inbounds [32 x i16], [32 x i16]* %arrayidx40, i32 0, i64 %idxprom38
  %38 = load i16, i16* %arrayidx41, align 2
  %39 = load i32, i32* %x0, align 4
  %40 = load i32, i32* %x, align 4
  %add42 = add nsw i32 %39, %40
  %idxprom43 = sext i32 %add42 to i64
  %41 = load i32, i32* %y0, align 4
  %42 = load i32, i32* %y, align 4
  %mul44 = mul nsw i32 2, %42
  %add45 = add nsw i32 %mul44, 1
  %add46 = add nsw i32 %41, %add45
  %idxprom47 = sext i32 %add46 to i64
  %43 = load i16**, i16*** %imgY, align 8
  %arrayidx48 = getelementptr inbounds i16*, i16** %43, i64 %idxprom47
  %44 = load i16*, i16** %arrayidx48, align 8
  %arrayidx49 = getelementptr inbounds i16, i16* %44, i64 %idxprom43
  store i16 %38, i16* %arrayidx49, align 2
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.body.26
  %45 = load i32, i32* %x, align 4
  %inc51 = add nsw i32 %45, 1
  store i32 %inc51, i32* %x, align 4
  br label %for.cond.24

for.end.52:                                       ; preds = %for.cond.24
  br label %for.inc.53

for.inc.53:                                       ; preds = %for.end.52
  %46 = load i32, i32* %y, align 4
  %inc54 = add nsw i32 %46, 1
  store i32 %inc54, i32* %y, align 4
  br label %for.cond.21

for.end.55:                                       ; preds = %for.cond.21
  %47 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %chroma_format_idc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %47, i32 0, i32 50
  %48 = load i32, i32* %chroma_format_idc, align 4
  %cmp56 = icmp ne i32 %48, 0
  br i1 %cmp56, label %if.then.57, label %if.end

if.then.57:                                       ; preds = %for.end.55
  %49 = load i32, i32* %x0, align 4
  %50 = load %struct.img_par*, %struct.img_par** @img, align 8
  %mb_cr_size_x = getelementptr inbounds %struct.img_par, %struct.img_par* %50, i32 0, i32 115
  %51 = load i32, i32* %mb_cr_size_x, align 4
  %div = sdiv i32 16, %51
  %div58 = sdiv i32 %49, %div
  store i32 %div58, i32* %x0, align 4
  %52 = load i32, i32* %y0, align 4
  %53 = load %struct.img_par*, %struct.img_par** @img, align 8
  %mb_cr_size_y = getelementptr inbounds %struct.img_par, %struct.img_par* %53, i32 0, i32 116
  %54 = load i32, i32* %mb_cr_size_y, align 4
  %div59 = sdiv i32 16, %54
  %div60 = sdiv i32 %52, %div59
  store i32 %div60, i32* %y0, align 4
  store i32 0, i32* %uv, align 4
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.134, %if.then.57
  %55 = load i32, i32* %uv, align 4
  %cmp62 = icmp slt i32 %55, 2
  br i1 %cmp62, label %for.body.63, label %for.end.136

for.body.63:                                      ; preds = %for.cond.61
  store i32 0, i32* %y, align 4
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc.88, %for.body.63
  %56 = load i32, i32* %y, align 4
  %57 = load %struct.img_par*, %struct.img_par** @img, align 8
  %mb_cr_size_y65 = getelementptr inbounds %struct.img_par, %struct.img_par* %57, i32 0, i32 116
  %58 = load i32, i32* %mb_cr_size_y65, align 4
  %mul66 = mul nsw i32 2, %58
  %cmp67 = icmp slt i32 %56, %mul66
  br i1 %cmp67, label %for.body.68, label %for.end.90

for.body.68:                                      ; preds = %for.cond.64
  store i32 0, i32* %x, align 4
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.85, %for.body.68
  %59 = load i32, i32* %x, align 4
  %60 = load %struct.img_par*, %struct.img_par** @img, align 8
  %mb_cr_size_x70 = getelementptr inbounds %struct.img_par, %struct.img_par* %60, i32 0, i32 115
  %61 = load i32, i32* %mb_cr_size_x70, align 4
  %cmp71 = icmp slt i32 %59, %61
  br i1 %cmp71, label %for.body.72, label %for.end.87

for.body.72:                                      ; preds = %for.cond.69
  %62 = load i32, i32* %x0, align 4
  %63 = load i32, i32* %x, align 4
  %add73 = add nsw i32 %62, %63
  %idxprom74 = sext i32 %add73 to i64
  %64 = load i32, i32* %y0, align 4
  %65 = load i32, i32* %y, align 4
  %add75 = add nsw i32 %64, %65
  %idxprom76 = sext i32 %add75 to i64
  %66 = load i32, i32* %uv, align 4
  %idxprom77 = sext i32 %66 to i64
  %67 = load i16***, i16**** %imgUV, align 8
  %arrayidx78 = getelementptr inbounds i16**, i16*** %67, i64 %idxprom77
  %68 = load i16**, i16*** %arrayidx78, align 8
  %arrayidx79 = getelementptr inbounds i16*, i16** %68, i64 %idxprom76
  %69 = load i16*, i16** %arrayidx79, align 8
  %arrayidx80 = getelementptr inbounds i16, i16* %69, i64 %idxprom74
  %70 = load i16, i16* %arrayidx80, align 2
  %71 = load i32, i32* %y, align 4
  %idxprom81 = sext i32 %71 to i64
  %72 = load i32, i32* %x, align 4
  %idxprom82 = sext i32 %72 to i64
  %arrayidx83 = getelementptr inbounds [16 x [32 x i16]], [16 x [32 x i16]]* %temp, i32 0, i64 %idxprom82
  %arrayidx84 = getelementptr inbounds [32 x i16], [32 x i16]* %arrayidx83, i32 0, i64 %idxprom81
  store i16 %70, i16* %arrayidx84, align 2
  br label %for.inc.85

for.inc.85:                                       ; preds = %for.body.72
  %73 = load i32, i32* %x, align 4
  %inc86 = add nsw i32 %73, 1
  store i32 %inc86, i32* %x, align 4
  br label %for.cond.69

for.end.87:                                       ; preds = %for.cond.69
  br label %for.inc.88

for.inc.88:                                       ; preds = %for.end.87
  %74 = load i32, i32* %y, align 4
  %inc89 = add nsw i32 %74, 1
  store i32 %inc89, i32* %y, align 4
  br label %for.cond.64

for.end.90:                                       ; preds = %for.cond.64
  store i32 0, i32* %y, align 4
  br label %for.cond.91

for.cond.91:                                      ; preds = %for.inc.131, %for.end.90
  %75 = load i32, i32* %y, align 4
  %76 = load %struct.img_par*, %struct.img_par** @img, align 8
  %mb_cr_size_y92 = getelementptr inbounds %struct.img_par, %struct.img_par* %76, i32 0, i32 116
  %77 = load i32, i32* %mb_cr_size_y92, align 4
  %cmp93 = icmp slt i32 %75, %77
  br i1 %cmp93, label %for.body.94, label %for.end.133

for.body.94:                                      ; preds = %for.cond.91
  store i32 0, i32* %x, align 4
  br label %for.cond.95

for.cond.95:                                      ; preds = %for.inc.128, %for.body.94
  %78 = load i32, i32* %x, align 4
  %79 = load %struct.img_par*, %struct.img_par** @img, align 8
  %mb_cr_size_x96 = getelementptr inbounds %struct.img_par, %struct.img_par* %79, i32 0, i32 115
  %80 = load i32, i32* %mb_cr_size_x96, align 4
  %cmp97 = icmp slt i32 %78, %80
  br i1 %cmp97, label %for.body.98, label %for.end.130

for.body.98:                                      ; preds = %for.cond.95
  %81 = load i32, i32* %y, align 4
  %idxprom99 = sext i32 %81 to i64
  %82 = load i32, i32* %x, align 4
  %idxprom100 = sext i32 %82 to i64
  %arrayidx101 = getelementptr inbounds [16 x [32 x i16]], [16 x [32 x i16]]* %temp, i32 0, i64 %idxprom100
  %arrayidx102 = getelementptr inbounds [32 x i16], [32 x i16]* %arrayidx101, i32 0, i64 %idxprom99
  %83 = load i16, i16* %arrayidx102, align 2
  %84 = load i32, i32* %x0, align 4
  %85 = load i32, i32* %x, align 4
  %add103 = add nsw i32 %84, %85
  %idxprom104 = sext i32 %add103 to i64
  %86 = load i32, i32* %y0, align 4
  %87 = load i32, i32* %y, align 4
  %mul105 = mul nsw i32 2, %87
  %add106 = add nsw i32 %86, %mul105
  %idxprom107 = sext i32 %add106 to i64
  %88 = load i32, i32* %uv, align 4
  %idxprom108 = sext i32 %88 to i64
  %89 = load i16***, i16**** %imgUV, align 8
  %arrayidx109 = getelementptr inbounds i16**, i16*** %89, i64 %idxprom108
  %90 = load i16**, i16*** %arrayidx109, align 8
  %arrayidx110 = getelementptr inbounds i16*, i16** %90, i64 %idxprom107
  %91 = load i16*, i16** %arrayidx110, align 8
  %arrayidx111 = getelementptr inbounds i16, i16* %91, i64 %idxprom104
  store i16 %83, i16* %arrayidx111, align 2
  %92 = load i32, i32* %y, align 4
  %93 = load %struct.img_par*, %struct.img_par** @img, align 8
  %mb_cr_size_y112 = getelementptr inbounds %struct.img_par, %struct.img_par* %93, i32 0, i32 116
  %94 = load i32, i32* %mb_cr_size_y112, align 4
  %add113 = add nsw i32 %92, %94
  %idxprom114 = sext i32 %add113 to i64
  %95 = load i32, i32* %x, align 4
  %idxprom115 = sext i32 %95 to i64
  %arrayidx116 = getelementptr inbounds [16 x [32 x i16]], [16 x [32 x i16]]* %temp, i32 0, i64 %idxprom115
  %arrayidx117 = getelementptr inbounds [32 x i16], [32 x i16]* %arrayidx116, i32 0, i64 %idxprom114
  %96 = load i16, i16* %arrayidx117, align 2
  %97 = load i32, i32* %x0, align 4
  %98 = load i32, i32* %x, align 4
  %add118 = add nsw i32 %97, %98
  %idxprom119 = sext i32 %add118 to i64
  %99 = load i32, i32* %y0, align 4
  %100 = load i32, i32* %y, align 4
  %mul120 = mul nsw i32 2, %100
  %add121 = add nsw i32 %mul120, 1
  %add122 = add nsw i32 %99, %add121
  %idxprom123 = sext i32 %add122 to i64
  %101 = load i32, i32* %uv, align 4
  %idxprom124 = sext i32 %101 to i64
  %102 = load i16***, i16**** %imgUV, align 8
  %arrayidx125 = getelementptr inbounds i16**, i16*** %102, i64 %idxprom124
  %103 = load i16**, i16*** %arrayidx125, align 8
  %arrayidx126 = getelementptr inbounds i16*, i16** %103, i64 %idxprom123
  %104 = load i16*, i16** %arrayidx126, align 8
  %arrayidx127 = getelementptr inbounds i16, i16* %104, i64 %idxprom119
  store i16 %96, i16* %arrayidx127, align 2
  br label %for.inc.128

for.inc.128:                                      ; preds = %for.body.98
  %105 = load i32, i32* %x, align 4
  %inc129 = add nsw i32 %105, 1
  store i32 %inc129, i32* %x, align 4
  br label %for.cond.95

for.end.130:                                      ; preds = %for.cond.95
  br label %for.inc.131

for.inc.131:                                      ; preds = %for.end.130
  %106 = load i32, i32* %y, align 4
  %inc132 = add nsw i32 %106, 1
  store i32 %inc132, i32* %y, align 4
  br label %for.cond.91

for.end.133:                                      ; preds = %for.cond.91
  br label %for.inc.134

for.inc.134:                                      ; preds = %for.end.133
  %107 = load i32, i32* %uv, align 4
  %inc135 = add nsw i32 %107, 1
  store i32 %inc135, i32* %uv, align 4
  br label %for.cond.61

for.end.136:                                      ; preds = %for.cond.61
  br label %if.end

if.end:                                           ; preds = %for.end.136, %for.end.55
  br label %if.end.137

if.end.137:                                       ; preds = %if.end, %for.body
  br label %for.inc.138

for.inc.138:                                      ; preds = %if.end.137
  %108 = load i32, i32* %i, align 4
  %add139 = add nsw i32 %108, 2
  store i32 %add139, i32* %i, align 4
  br label %for.cond

for.end.140:                                      ; preds = %for.cond
  ret void
}

declare void @get_mb_pos(i32, i32*, i32*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @decode_one_frame(%struct.img_par* %img, %struct.inp_par* %inp, %struct.snr_par* %snr) #0 {
entry:
  %retval = alloca i32, align 4
  %img.addr = alloca %struct.img_par*, align 8
  %inp.addr = alloca %struct.inp_par*, align 8
  %snr.addr = alloca %struct.snr_par*, align 8
  %current_header = alloca i32, align 4
  %currSlice = alloca %struct.Slice*, align 8
  %i = alloca i32, align 4
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  store %struct.inp_par* %inp, %struct.inp_par** %inp.addr, align 8
  store %struct.snr_par* %snr, %struct.snr_par** %snr.addr, align 8
  %0 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %currentSlice = getelementptr inbounds %struct.img_par, %struct.img_par* %0, i32 0, i32 38
  %1 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  store %struct.Slice* %1, %struct.Slice** %currSlice, align 8
  %2 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %current_slice_nr = getelementptr inbounds %struct.img_par, %struct.img_par* %2, i32 0, i32 3
  store i32 0, i32* %current_slice_nr, align 4
  %3 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %current_mb_nr = getelementptr inbounds %struct.img_par, %struct.img_par* %3, i32 0, i32 1
  store i32 -4711, i32* %current_mb_nr, align 4
  %4 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %next_header = getelementptr inbounds %struct.Slice, %struct.Slice* %4, i32 0, i32 8
  store i32 -8888, i32* %next_header, align 4
  %5 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %num_dec_mb = getelementptr inbounds %struct.img_par, %struct.img_par* %5, i32 0, i32 2
  store i32 0, i32* %num_dec_mb, align 4
  %6 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %newframe = getelementptr inbounds %struct.img_par, %struct.img_par* %6, i32 0, i32 35
  store i32 1, i32* %newframe, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.25, %if.then, %entry
  %7 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %next_header1 = getelementptr inbounds %struct.Slice, %struct.Slice* %7, i32 0, i32 8
  %8 = load i32, i32* %next_header1, align 4
  %cmp = icmp ne i32 %8, 1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %9 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %next_header2 = getelementptr inbounds %struct.Slice, %struct.Slice* %9, i32 0, i32 8
  %10 = load i32, i32* %next_header2, align 4
  %cmp3 = icmp ne i32 %10, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %11 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %call = call i32 @read_new_slice()
  store i32 %call, i32* %current_header, align 4
  call void @Error_tracking()
  %12 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %frame_num = getelementptr inbounds %struct.img_par, %struct.img_par* %12, i32 0, i32 56
  %13 = load i32, i32* %frame_num, align 4
  %14 = load i32, i32* @previous_frame_num, align 4
  %cmp4 = icmp eq i32 %13, %14
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %15 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %redundant_pic_cnt = getelementptr inbounds %struct.img_par, %struct.img_par* %15, i32 0, i32 50
  %16 = load i32, i32* %redundant_pic_cnt, align 4
  %cmp5 = icmp ne i32 %16, 0
  br i1 %cmp5, label %land.lhs.true.6, label %if.end

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %17 = load i32, i32* @Is_primary_correct, align 4
  %cmp7 = icmp ne i32 %17, 0
  br i1 %cmp7, label %land.lhs.true.8, label %if.end

land.lhs.true.8:                                  ; preds = %land.lhs.true.6
  %18 = load i32, i32* %current_header, align 4
  %cmp9 = icmp ne i32 %18, 1
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.8
  br label %while.cond

if.end:                                           ; preds = %land.lhs.true.8, %land.lhs.true.6, %land.lhs.true, %while.body
  %19 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %redundant_pic_cnt10 = getelementptr inbounds %struct.img_par, %struct.img_par* %19, i32 0, i32 50
  %20 = load i32, i32* %redundant_pic_cnt10, align 4
  %cmp11 = icmp ne i32 %20, 0
  br i1 %cmp11, label %land.lhs.true.12, label %if.then.15

land.lhs.true.12:                                 ; preds = %if.end
  %21 = load i32, i32* @previous_frame_num, align 4
  %22 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %frame_num13 = getelementptr inbounds %struct.img_par, %struct.img_par* %22, i32 0, i32 56
  %23 = load i32, i32* %frame_num13, align 4
  %cmp14 = icmp eq i32 %21, %23
  br i1 %cmp14, label %if.end.19, label %if.then.15

if.then.15:                                       ; preds = %land.lhs.true.12, %if.end
  store i32 16, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.15
  %24 = load i32, i32* %i, align 4
  %cmp16 = icmp sgt i32 %24, 0
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %25, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [17 x i32], [17 x i32]* @ref_flag, i32 0, i64 %idxprom
  %26 = load i32, i32* %arrayidx, align 4
  %27 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %27 to i64
  %arrayidx18 = getelementptr inbounds [17 x i32], [17 x i32]* @ref_flag, i32 0, i64 %idxprom17
  store i32 %26, i32* %arrayidx18, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %i, align 4
  %dec = add nsw i32 %28, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.19

if.end.19:                                        ; preds = %for.end, %land.lhs.true.12
  %29 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %redundant_pic_cnt20 = getelementptr inbounds %struct.img_par, %struct.img_par* %29, i32 0, i32 50
  %30 = load i32, i32* %redundant_pic_cnt20, align 4
  %cmp21 = icmp eq i32 %30, 0
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.19
  %31 = load i32, i32* @Is_primary_correct, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.19
  %32 = load i32, i32* @Is_redundant_correct, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %31, %cond.true ], [ %32, %cond.false ]
  store i32 %cond, i32* getelementptr inbounds ([17 x i32], [17 x i32]* @ref_flag, i32 0, i64 0), align 4
  %33 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %frame_num22 = getelementptr inbounds %struct.img_par, %struct.img_par* %33, i32 0, i32 56
  %34 = load i32, i32* %frame_num22, align 4
  store i32 %34, i32* @previous_frame_num, align 4
  %35 = load i32, i32* %current_header, align 4
  %cmp23 = icmp eq i32 %35, 1
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %cond.end
  call void @exit_picture()
  store i32 1, i32* %retval
  br label %return

if.end.25:                                        ; preds = %cond.end
  %36 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %37 = load %struct.inp_par*, %struct.inp_par** %inp.addr, align 8
  %38 = load i32, i32* %current_header, align 4
  call void @decode_slice(%struct.img_par* %36, %struct.inp_par* %37, i32 %38)
  %39 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %newframe26 = getelementptr inbounds %struct.img_par, %struct.img_par* %39, i32 0, i32 35
  store i32 0, i32* %newframe26, align 4
  %40 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %current_slice_nr27 = getelementptr inbounds %struct.img_par, %struct.img_par* %40, i32 0, i32 3
  %41 = load i32, i32* %current_slice_nr27, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %current_slice_nr27, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  call void @exit_picture()
  store i32 2, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.24
  %42 = load i32, i32* %retval
  ret i32 %42
}

; Function Attrs: nounwind uwtable
define void @Error_tracking() #0 {
entry:
  %i = alloca i32, align 4
  %0 = load %struct.img_par*, %struct.img_par** @img, align 8
  %redundant_pic_cnt = getelementptr inbounds %struct.img_par, %struct.img_par* %0, i32 0, i32 50
  %1 = load i32, i32* %redundant_pic_cnt, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* @Is_redundant_correct, align 4
  store i32 1, i32* @Is_primary_correct, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.img_par*, %struct.img_par** @img, align 8
  %redundant_pic_cnt1 = getelementptr inbounds %struct.img_par, %struct.img_par* %2, i32 0, i32 50
  %3 = load i32, i32* %redundant_pic_cnt1, align 4
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct.img_par*, %struct.img_par** @img, align 8
  %type = getelementptr inbounds %struct.img_par, %struct.img_par* %4, i32 0, i32 10
  %5 = load i32, i32* %type, align 4
  %cmp3 = icmp ne i32 %5, 2
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %land.lhs.true
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.4
  %6 = load i32, i32* %i, align 4
  %7 = load %struct.img_par*, %struct.img_par** @img, align 8
  %num_ref_idx_l0_active = getelementptr inbounds %struct.img_par, %struct.img_par* %7, i32 0, i32 47
  %8 = load i32, i32* %num_ref_idx_l0_active, align 4
  %cmp5 = icmp slt i32 %6, %8
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [17 x i32], [17 x i32]* @ref_flag, i32 0, i64 %idxprom
  %10 = load i32, i32* %arrayidx, align 4
  %cmp6 = icmp eq i32 %10, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %for.body
  store i32 0, i32* @Is_primary_correct, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.21

if.else:                                          ; preds = %land.lhs.true, %if.end
  %12 = load %struct.img_par*, %struct.img_par** @img, align 8
  %redundant_pic_cnt9 = getelementptr inbounds %struct.img_par, %struct.img_par* %12, i32 0, i32 50
  %13 = load i32, i32* %redundant_pic_cnt9, align 4
  %cmp10 = icmp ne i32 %13, 0
  br i1 %cmp10, label %land.lhs.true.11, label %if.end.20

land.lhs.true.11:                                 ; preds = %if.else
  %14 = load %struct.img_par*, %struct.img_par** @img, align 8
  %type12 = getelementptr inbounds %struct.img_par, %struct.img_par* %14, i32 0, i32 10
  %15 = load i32, i32* %type12, align 4
  %cmp13 = icmp ne i32 %15, 2
  br i1 %cmp13, label %if.then.14, label %if.end.20

if.then.14:                                       ; preds = %land.lhs.true.11
  %16 = load i32, i32* @redundant_slice_ref_idx, align 4
  %idxprom15 = sext i32 %16 to i64
  %arrayidx16 = getelementptr inbounds [17 x i32], [17 x i32]* @ref_flag, i32 0, i64 %idxprom15
  %17 = load i32, i32* %arrayidx16, align 4
  %cmp17 = icmp eq i32 %17, 0
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.then.14
  store i32 0, i32* @Is_redundant_correct, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.then.14
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %land.lhs.true.11, %if.else
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @decode_slice(%struct.img_par* %img, %struct.inp_par* %inp, i32 %current_header) #0 {
entry:
  %img.addr = alloca %struct.img_par*, align 8
  %inp.addr = alloca %struct.inp_par*, align 8
  %current_header.addr = alloca i32, align 4
  %currSlice = alloca %struct.Slice*, align 8
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  store %struct.inp_par* %inp, %struct.inp_par** %inp.addr, align 8
  store i32 %current_header, i32* %current_header.addr, align 4
  %0 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %currentSlice = getelementptr inbounds %struct.img_par, %struct.img_par* %0, i32 0, i32 38
  %1 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  store %struct.Slice* %1, %struct.Slice** %currSlice, align 8
  %2 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %entropy_coding_mode_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %2, i32 0, i32 3
  %3 = load i32, i32* %entropy_coding_mode_flag, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  call void @init_contexts(%struct.img_par* %4)
  call void (...) @cabac_new_slice()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %5, i32 0, i32 24
  %6 = load i32, i32* %weighted_bipred_idc, align 4
  %cmp = icmp ugt i32 %6, 0
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end
  %7 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %type = getelementptr inbounds %struct.img_par, %struct.img_par* %7, i32 0, i32 10
  %8 = load i32, i32* %type, align 4
  %cmp1 = icmp eq i32 %8, 1
  br i1 %cmp1, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end
  %9 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %9, i32 0, i32 23
  %10 = load i32, i32* %weighted_pred_flag, align 4
  %tobool2 = icmp ne i32 %10, 0
  br i1 %tobool2, label %land.lhs.true.3, label %if.end.7

land.lhs.true.3:                                  ; preds = %lor.lhs.false
  %11 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %type4 = getelementptr inbounds %struct.img_par, %struct.img_par* %11, i32 0, i32 10
  %12 = load i32, i32* %type4, align 4
  %cmp5 = icmp ne i32 %12, 2
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %land.lhs.true.3, %land.lhs.true
  %13 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  call void @fill_wp_params(%struct.img_par* %13)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %land.lhs.true.3, %lor.lhs.false
  %14 = load i32, i32* %current_header.addr, align 4
  %cmp8 = icmp eq i32 %14, 2
  br i1 %cmp8, label %land.lhs.true.11, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %if.end.7
  %15 = load i32, i32* %current_header.addr, align 4
  %cmp10 = icmp eq i32 %15, 3
  br i1 %cmp10, label %land.lhs.true.11, label %if.end.14

land.lhs.true.11:                                 ; preds = %lor.lhs.false.9, %if.end.7
  %16 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %ei_flag = getelementptr inbounds %struct.Slice, %struct.Slice* %16, i32 0, i32 0
  %17 = load i32, i32* %ei_flag, align 4
  %cmp12 = icmp eq i32 %17, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %land.lhs.true.11
  %18 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %19 = load %struct.inp_par*, %struct.inp_par** %inp.addr, align 8
  call void @decode_one_slice(%struct.img_par* %18, %struct.inp_par* %19)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %land.lhs.true.11, %lor.lhs.false.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @buf2img(i16** %imgX, i8* %buf, i32 %size_x, i32 %size_y, i32 %symbol_size_in_bytes) #0 {
entry:
  %imgX.addr = alloca i16**, align 8
  %buf.addr = alloca i8*, align 8
  %size_x.addr = alloca i32, align 4
  %size_y.addr = alloca i32, align 4
  %symbol_size_in_bytes.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %tmp16 = alloca i16, align 2
  %ui16 = alloca i16, align 2
  %tmp32 = alloca i64, align 8
  %ui32 = alloca i64, align 8
  %jpos = alloca i32, align 4
  store i16** %imgX, i16*** %imgX.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %size_x, i32* %size_x.addr, align 4
  store i32 %size_y, i32* %size_y.addr, align 4
  store i32 %symbol_size_in_bytes, i32* %symbol_size_in_bytes.addr, align 4
  %0 = load i32, i32* %symbol_size_in_bytes.addr, align 4
  %conv = sext i32 %0 to i64
  %cmp = icmp ugt i64 %conv, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @error(i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str, i32 0, i32 0), i32 500)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call i32 (...) @testEndian()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %1 = load i32, i32* %symbol_size_in_bytes.addr, align 4
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.17
    i32 4, label %sw.bb.42
  ]

sw.bb:                                            ; preds = %if.then.2
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.14, %sw.bb
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %size_y.addr, align 4
  %cmp3 = icmp slt i32 %2, %3
  br i1 %cmp3, label %for.body, label %for.end.16

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %size_x.addr, align 4
  %cmp6 = icmp slt i32 %4, %5
  br i1 %cmp6, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.5
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %j, align 4
  %8 = load i32, i32* %size_x.addr, align 4
  %mul = mul nsw i32 %7, %8
  %add = add nsw i32 %6, %mul
  %idxprom = sext i32 %add to i64
  %9 = load i8*, i8** %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %conv9 = zext i8 %10 to i16
  %11 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %11 to i64
  %12 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %12 to i64
  %13 = load i16**, i16*** %imgX.addr, align 8
  %arrayidx12 = getelementptr inbounds i16*, i16** %13, i64 %idxprom11
  %14 = load i16*, i16** %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds i16, i16* %14, i64 %idxprom10
  store i16 %conv9, i16* %arrayidx13, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body.8
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.end
  %16 = load i32, i32* %j, align 4
  %inc15 = add nsw i32 %16, 1
  store i32 %inc15, i32* %j, align 4
  br label %for.cond

for.end.16:                                       ; preds = %for.cond
  br label %sw.epilog

sw.bb.17:                                         ; preds = %if.then.2
  store i32 0, i32* %j, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.39, %sw.bb.17
  %17 = load i32, i32* %j, align 4
  %18 = load i32, i32* %size_y.addr, align 4
  %cmp19 = icmp slt i32 %17, %18
  br i1 %cmp19, label %for.body.21, label %for.end.41

for.body.21:                                      ; preds = %for.cond.18
  store i32 0, i32* %i, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.36, %for.body.21
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %size_x.addr, align 4
  %cmp23 = icmp slt i32 %19, %20
  br i1 %cmp23, label %for.body.25, label %for.end.38

for.body.25:                                      ; preds = %for.cond.22
  %21 = bitcast i16* %tmp16 to i8*
  %22 = load i8*, i8** %buf.addr, align 8
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %j, align 4
  %25 = load i32, i32* %size_x.addr, align 4
  %mul26 = mul nsw i32 %24, %25
  %add27 = add nsw i32 %23, %mul26
  %mul28 = mul nsw i32 %add27, 2
  %idx.ext = sext i32 %mul28 to i64
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %idx.ext
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %add.ptr, i64 2, i32 1, i1 false)
  %26 = load i16, i16* %tmp16, align 2
  %conv29 = zext i16 %26 to i32
  %shr = ashr i32 %conv29, 8
  %27 = load i16, i16* %tmp16, align 2
  %conv30 = zext i16 %27 to i32
  %and = and i32 %conv30, 255
  %shl = shl i32 %and, 8
  %or = or i32 %shr, %shl
  %conv31 = trunc i32 %or to i16
  store i16 %conv31, i16* %ui16, align 2
  %28 = load i16, i16* %ui16, align 2
  %29 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %29 to i64
  %30 = load i32, i32* %j, align 4
  %idxprom33 = sext i32 %30 to i64
  %31 = load i16**, i16*** %imgX.addr, align 8
  %arrayidx34 = getelementptr inbounds i16*, i16** %31, i64 %idxprom33
  %32 = load i16*, i16** %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds i16, i16* %32, i64 %idxprom32
  store i16 %28, i16* %arrayidx35, align 2
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.body.25
  %33 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %33, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond.22

for.end.38:                                       ; preds = %for.cond.22
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.end.38
  %34 = load i32, i32* %j, align 4
  %inc40 = add nsw i32 %34, 1
  store i32 %inc40, i32* %j, align 4
  br label %for.cond.18

for.end.41:                                       ; preds = %for.cond.18
  br label %sw.epilog

sw.bb.42:                                         ; preds = %if.then.2
  store i32 0, i32* %j, align 4
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.75, %sw.bb.42
  %35 = load i32, i32* %j, align 4
  %36 = load i32, i32* %size_y.addr, align 4
  %cmp44 = icmp slt i32 %35, %36
  br i1 %cmp44, label %for.body.46, label %for.end.77

for.body.46:                                      ; preds = %for.cond.43
  store i32 0, i32* %i, align 4
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc.72, %for.body.46
  %37 = load i32, i32* %i, align 4
  %38 = load i32, i32* %size_x.addr, align 4
  %cmp48 = icmp slt i32 %37, %38
  br i1 %cmp48, label %for.body.50, label %for.end.74

for.body.50:                                      ; preds = %for.cond.47
  %39 = bitcast i64* %tmp32 to i8*
  %40 = load i8*, i8** %buf.addr, align 8
  %41 = load i32, i32* %i, align 4
  %42 = load i32, i32* %j, align 4
  %43 = load i32, i32* %size_x.addr, align 4
  %mul51 = mul nsw i32 %42, %43
  %add52 = add nsw i32 %41, %mul51
  %mul53 = mul nsw i32 %add52, 4
  %idx.ext54 = sext i32 %mul53 to i64
  %add.ptr55 = getelementptr inbounds i8, i8* %40, i64 %idx.ext54
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %add.ptr55, i64 4, i32 1, i1 false)
  %44 = load i64, i64* %tmp32, align 8
  %and56 = and i64 %44, 65280
  %shl57 = shl i64 %and56, 8
  %45 = load i64, i64* %tmp32, align 8
  %and58 = and i64 %45, 255
  %shl59 = shl i64 %and58, 24
  %or60 = or i64 %shl57, %shl59
  %46 = load i64, i64* %tmp32, align 8
  %and61 = and i64 %46, 16711680
  %shr62 = lshr i64 %and61, 8
  %or63 = or i64 %or60, %shr62
  %47 = load i64, i64* %tmp32, align 8
  %and64 = and i64 %47, 4278190080
  %shr65 = lshr i64 %and64, 24
  %or66 = or i64 %or63, %shr65
  store i64 %or66, i64* %ui32, align 8
  %48 = load i64, i64* %ui32, align 8
  %conv67 = trunc i64 %48 to i16
  %49 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %49 to i64
  %50 = load i32, i32* %j, align 4
  %idxprom69 = sext i32 %50 to i64
  %51 = load i16**, i16*** %imgX.addr, align 8
  %arrayidx70 = getelementptr inbounds i16*, i16** %51, i64 %idxprom69
  %52 = load i16*, i16** %arrayidx70, align 8
  %arrayidx71 = getelementptr inbounds i16, i16* %52, i64 %idxprom68
  store i16 %conv67, i16* %arrayidx71, align 2
  br label %for.inc.72

for.inc.72:                                       ; preds = %for.body.50
  %53 = load i32, i32* %i, align 4
  %inc73 = add nsw i32 %53, 1
  store i32 %inc73, i32* %i, align 4
  br label %for.cond.47

for.end.74:                                       ; preds = %for.cond.47
  br label %for.inc.75

for.inc.75:                                       ; preds = %for.end.74
  %54 = load i32, i32* %j, align 4
  %inc76 = add nsw i32 %54, 1
  store i32 %inc76, i32* %j, align 4
  br label %for.cond.43

for.end.77:                                       ; preds = %for.cond.43
  br label %sw.default

sw.default:                                       ; preds = %if.then.2, %for.end.77
  call void @error(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i32 0, i32 0), i32 500)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end.41, %for.end.16
  br label %if.end.130

if.else:                                          ; preds = %if.end
  %55 = load i32, i32* %symbol_size_in_bytes.addr, align 4
  %cmp78 = icmp eq i32 %55, 1
  br i1 %cmp78, label %if.then.80, label %if.else.100

if.then.80:                                       ; preds = %if.else
  store i32 0, i32* %j, align 4
  br label %for.cond.81

for.cond.81:                                      ; preds = %for.inc.97, %if.then.80
  %56 = load i32, i32* %j, align 4
  %57 = load i32, i32* %size_y.addr, align 4
  %cmp82 = icmp slt i32 %56, %57
  br i1 %cmp82, label %for.body.84, label %for.end.99

for.body.84:                                      ; preds = %for.cond.81
  store i32 0, i32* %i, align 4
  br label %for.cond.85

for.cond.85:                                      ; preds = %for.inc.94, %for.body.84
  %58 = load i32, i32* %i, align 4
  %59 = load i32, i32* %size_x.addr, align 4
  %cmp86 = icmp slt i32 %58, %59
  br i1 %cmp86, label %for.body.88, label %for.end.96

for.body.88:                                      ; preds = %for.cond.85
  %60 = load i8*, i8** %buf.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %incdec.ptr, i8** %buf.addr, align 8
  %61 = load i8, i8* %60, align 1
  %conv89 = zext i8 %61 to i16
  %62 = load i32, i32* %i, align 4
  %idxprom90 = sext i32 %62 to i64
  %63 = load i32, i32* %j, align 4
  %idxprom91 = sext i32 %63 to i64
  %64 = load i16**, i16*** %imgX.addr, align 8
  %arrayidx92 = getelementptr inbounds i16*, i16** %64, i64 %idxprom91
  %65 = load i16*, i16** %arrayidx92, align 8
  %arrayidx93 = getelementptr inbounds i16, i16* %65, i64 %idxprom90
  store i16 %conv89, i16* %arrayidx93, align 2
  br label %for.inc.94

for.inc.94:                                       ; preds = %for.body.88
  %66 = load i32, i32* %i, align 4
  %inc95 = add nsw i32 %66, 1
  store i32 %inc95, i32* %i, align 4
  br label %for.cond.85

for.end.96:                                       ; preds = %for.cond.85
  br label %for.inc.97

for.inc.97:                                       ; preds = %for.end.96
  %67 = load i32, i32* %j, align 4
  %inc98 = add nsw i32 %67, 1
  store i32 %inc98, i32* %j, align 4
  br label %for.cond.81

for.end.99:                                       ; preds = %for.cond.81
  br label %if.end.129

if.else.100:                                      ; preds = %if.else
  store i32 0, i32* %j, align 4
  br label %for.cond.101

for.cond.101:                                     ; preds = %for.inc.126, %if.else.100
  %68 = load i32, i32* %j, align 4
  %69 = load i32, i32* %size_y.addr, align 4
  %cmp102 = icmp slt i32 %68, %69
  br i1 %cmp102, label %for.body.104, label %for.end.128

for.body.104:                                     ; preds = %for.cond.101
  %70 = load i32, i32* %j, align 4
  %71 = load i32, i32* %size_x.addr, align 4
  %mul105 = mul nsw i32 %70, %71
  store i32 %mul105, i32* %jpos, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.106

for.cond.106:                                     ; preds = %for.inc.123, %for.body.104
  %72 = load i32, i32* %i, align 4
  %73 = load i32, i32* %size_x.addr, align 4
  %cmp107 = icmp slt i32 %72, %73
  br i1 %cmp107, label %for.body.109, label %for.end.125

for.body.109:                                     ; preds = %for.cond.106
  %74 = load i32, i32* %i, align 4
  %idxprom110 = sext i32 %74 to i64
  %75 = load i32, i32* %j, align 4
  %idxprom111 = sext i32 %75 to i64
  %76 = load i16**, i16*** %imgX.addr, align 8
  %arrayidx112 = getelementptr inbounds i16*, i16** %76, i64 %idxprom111
  %77 = load i16*, i16** %arrayidx112, align 8
  %arrayidx113 = getelementptr inbounds i16, i16* %77, i64 %idxprom110
  store i16 0, i16* %arrayidx113, align 2
  %78 = load i32, i32* %i, align 4
  %idxprom114 = sext i32 %78 to i64
  %79 = load i32, i32* %j, align 4
  %idxprom115 = sext i32 %79 to i64
  %80 = load i16**, i16*** %imgX.addr, align 8
  %arrayidx116 = getelementptr inbounds i16*, i16** %80, i64 %idxprom115
  %81 = load i16*, i16** %arrayidx116, align 8
  %arrayidx117 = getelementptr inbounds i16, i16* %81, i64 %idxprom114
  %82 = bitcast i16* %arrayidx117 to i8*
  %83 = load i8*, i8** %buf.addr, align 8
  %84 = load i32, i32* %i, align 4
  %85 = load i32, i32* %jpos, align 4
  %add118 = add nsw i32 %84, %85
  %86 = load i32, i32* %symbol_size_in_bytes.addr, align 4
  %mul119 = mul nsw i32 %add118, %86
  %idx.ext120 = sext i32 %mul119 to i64
  %add.ptr121 = getelementptr inbounds i8, i8* %83, i64 %idx.ext120
  %87 = load i32, i32* %symbol_size_in_bytes.addr, align 4
  %conv122 = sext i32 %87 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %82, i8* %add.ptr121, i64 %conv122, i32 1, i1 false)
  br label %for.inc.123

for.inc.123:                                      ; preds = %for.body.109
  %88 = load i32, i32* %i, align 4
  %inc124 = add nsw i32 %88, 1
  store i32 %inc124, i32* %i, align 4
  br label %for.cond.106

for.end.125:                                      ; preds = %for.cond.106
  br label %for.inc.126

for.inc.126:                                      ; preds = %for.end.125
  %89 = load i32, i32* %j, align 4
  %inc127 = add nsw i32 %89, 1
  store i32 %inc127, i32* %j, align 4
  br label %for.cond.101

for.end.128:                                      ; preds = %for.cond.101
  br label %if.end.129

if.end.129:                                       ; preds = %for.end.128, %for.end.99
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.129, %sw.epilog
  ret void
}

declare void @error(i8*, i32) #1

declare i32 @testEndian(...) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define void @find_snr(%struct.snr_par* %snr, %struct.storable_picture* %p, i32 %p_ref) #0 {
entry:
  %snr.addr = alloca %struct.snr_par*, align 8
  %p.addr = alloca %struct.storable_picture*, align 8
  %p_ref.addr = alloca i32, align 4
  %crop_left = alloca i32, align 4
  %crop_right = alloca i32, align 4
  %crop_top = alloca i32, align 4
  %crop_bottom = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %diff_y = alloca i64, align 8
  %diff_u = alloca i64, align 8
  %diff_v = alloca i64, align 8
  %uv = alloca i32, align 4
  %status = alloca i64, align 8
  %symbol_size_in_bytes = alloca i32, align 4
  %size_x = alloca i32, align 4
  %size_y = alloca i32, align 4
  %size_x_cr = alloca i32, align 4
  %size_y_cr = alloca i32, align 4
  %framesize_in_bytes = alloca i64, align 8
  %max_pix_value_sqd = alloca i32, align 4
  %max_pix_value_sqd_uv = alloca i32, align 4
  %rgb_output = alloca i32, align 4
  %buf = alloca i8*, align 8
  %yuv_types = alloca [4 x [6 x i8]], align 16
  %psnrPOC = alloca i32, align 4
  store %struct.snr_par* %snr, %struct.snr_par** %snr.addr, align 8
  store %struct.storable_picture* %p, %struct.storable_picture** %p.addr, align 8
  store i32 %p_ref, i32* %p_ref.addr, align 4
  %0 = load %struct.img_par*, %struct.img_par** @img, align 8
  %pic_unit_bitsize_on_disk = getelementptr inbounds %struct.img_par, %struct.img_par* %0, i32 0, i32 100
  %1 = load i32, i32* %pic_unit_bitsize_on_disk, align 4
  %div = sdiv i32 %1, 8
  store i32 %div, i32* %symbol_size_in_bytes, align 4
  %2 = load %struct.img_par*, %struct.img_par** @img, align 8
  %max_imgpel_value = getelementptr inbounds %struct.img_par, %struct.img_par* %2, i32 0, i32 107
  %3 = load i32, i32* %max_imgpel_value, align 4
  %4 = load %struct.img_par*, %struct.img_par** @img, align 8
  %max_imgpel_value1 = getelementptr inbounds %struct.img_par, %struct.img_par* %4, i32 0, i32 107
  %5 = load i32, i32* %max_imgpel_value1, align 4
  %mul = mul nsw i32 %3, %5
  store i32 %mul, i32* %max_pix_value_sqd, align 4
  %6 = load %struct.img_par*, %struct.img_par** @img, align 8
  %max_imgpel_value_uv = getelementptr inbounds %struct.img_par, %struct.img_par* %6, i32 0, i32 108
  %7 = load i32, i32* %max_imgpel_value_uv, align 4
  %8 = load %struct.img_par*, %struct.img_par** @img, align 8
  %max_imgpel_value_uv2 = getelementptr inbounds %struct.img_par, %struct.img_par* %8, i32 0, i32 108
  %9 = load i32, i32* %max_imgpel_value_uv2, align 4
  %mul3 = mul nsw i32 %7, %9
  store i32 %mul3, i32* %max_pix_value_sqd_uv, align 4
  %10 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %vui_seq_parameters = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %10, i32 0, i32 38
  %matrix_coefficients = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters, i32 0, i32 12
  %11 = load i32, i32* %matrix_coefficients, align 4
  %cmp = icmp eq i32 %11, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %rgb_output, align 4
  %12 = bitcast [4 x [6 x i8]]* %yuv_types to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* getelementptr inbounds ([4 x [6 x i8]], [4 x [6 x i8]]* @find_snr.yuv_types, i32 0, i32 0, i32 0), i64 24, i32 16, i1 false)
  %13 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %mb_adaptive_frame_field_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %13, i32 0, i32 30
  %14 = load i32, i32* %mb_adaptive_frame_field_flag, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %15 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %poc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %15, i32 0, i32 1
  %16 = load i32, i32* %poc, align 4
  %17 = load %struct.inp_par*, %struct.inp_par** @input, align 8
  %poc_scale = getelementptr inbounds %struct.inp_par, %struct.inp_par* %17, i32 0, i32 5
  %18 = load i32, i32* %poc_scale, align 4
  %div4 = sdiv i32 %16, %18
  br label %cond.end

cond.false:                                       ; preds = %entry
  %19 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %poc5 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %19, i32 0, i32 1
  %20 = load i32, i32* %poc5, align 4
  %21 = load %struct.inp_par*, %struct.inp_par** @input, align 8
  %poc_scale6 = getelementptr inbounds %struct.inp_par, %struct.inp_par* %21, i32 0, i32 5
  %22 = load i32, i32* %poc_scale6, align 4
  %div7 = sdiv i32 %20, %22
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div4, %cond.true ], [ %div7, %cond.false ]
  store i32 %cond, i32* %psnrPOC, align 4
  %23 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_flag = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %23, i32 0, i32 52
  %24 = load i32, i32* %frame_cropping_flag, align 4
  %tobool8 = icmp ne i32 %24, 0
  br i1 %tobool8, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %25 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %chroma_format_idc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %25, i32 0, i32 50
  %26 = load i32, i32* %chroma_format_idc, align 4
  %idxprom = sext i32 %26 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* @find_snr.SubWidthC, i32 0, i64 %idxprom
  %27 = load i32, i32* %arrayidx, align 4
  %28 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_rect_left_offset = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %28, i32 0, i32 53
  %29 = load i32, i32* %frame_cropping_rect_left_offset, align 4
  %mul9 = mul nsw i32 %27, %29
  store i32 %mul9, i32* %crop_left, align 4
  %30 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %chroma_format_idc10 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %30, i32 0, i32 50
  %31 = load i32, i32* %chroma_format_idc10, align 4
  %idxprom11 = sext i32 %31 to i64
  %arrayidx12 = getelementptr inbounds [4 x i32], [4 x i32]* @find_snr.SubWidthC, i32 0, i64 %idxprom11
  %32 = load i32, i32* %arrayidx12, align 4
  %33 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_rect_right_offset = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %33, i32 0, i32 54
  %34 = load i32, i32* %frame_cropping_rect_right_offset, align 4
  %mul13 = mul nsw i32 %32, %34
  store i32 %mul13, i32* %crop_right, align 4
  %35 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %chroma_format_idc14 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %35, i32 0, i32 50
  %36 = load i32, i32* %chroma_format_idc14, align 4
  %idxprom15 = sext i32 %36 to i64
  %arrayidx16 = getelementptr inbounds [4 x i32], [4 x i32]* @find_snr.SubHeightC, i32 0, i64 %idxprom15
  %37 = load i32, i32* %arrayidx16, align 4
  %38 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_mbs_only_flag = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %38, i32 0, i32 51
  %39 = load i32, i32* %frame_mbs_only_flag, align 4
  %sub = sub nsw i32 2, %39
  %mul17 = mul nsw i32 %37, %sub
  %40 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_rect_top_offset = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %40, i32 0, i32 55
  %41 = load i32, i32* %frame_cropping_rect_top_offset, align 4
  %mul18 = mul nsw i32 %mul17, %41
  store i32 %mul18, i32* %crop_top, align 4
  %42 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %chroma_format_idc19 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %42, i32 0, i32 50
  %43 = load i32, i32* %chroma_format_idc19, align 4
  %idxprom20 = sext i32 %43 to i64
  %arrayidx21 = getelementptr inbounds [4 x i32], [4 x i32]* @find_snr.SubHeightC, i32 0, i64 %idxprom20
  %44 = load i32, i32* %arrayidx21, align 4
  %45 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_mbs_only_flag22 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %45, i32 0, i32 51
  %46 = load i32, i32* %frame_mbs_only_flag22, align 4
  %sub23 = sub nsw i32 2, %46
  %mul24 = mul nsw i32 %44, %sub23
  %47 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_rect_bottom_offset = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %47, i32 0, i32 56
  %48 = load i32, i32* %frame_cropping_rect_bottom_offset, align 4
  %mul25 = mul nsw i32 %mul24, %48
  store i32 %mul25, i32* %crop_bottom, align 4
  br label %if.end

if.else:                                          ; preds = %cond.end
  store i32 0, i32* %crop_bottom, align 4
  store i32 0, i32* %crop_top, align 4
  store i32 0, i32* %crop_right, align 4
  store i32 0, i32* %crop_left, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %49 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_x26 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %49, i32 0, i32 19
  %50 = load i32, i32* %size_x26, align 4
  %51 = load i32, i32* %crop_left, align 4
  %sub27 = sub nsw i32 %50, %51
  %52 = load i32, i32* %crop_right, align 4
  %sub28 = sub nsw i32 %sub27, %52
  store i32 %sub28, i32* %size_x, align 4
  %53 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_y29 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %53, i32 0, i32 20
  %54 = load i32, i32* %size_y29, align 4
  %55 = load i32, i32* %crop_top, align 4
  %sub30 = sub nsw i32 %54, %55
  %56 = load i32, i32* %crop_bottom, align 4
  %sub31 = sub nsw i32 %sub30, %56
  store i32 %sub31, i32* %size_y, align 4
  %57 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_flag32 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %57, i32 0, i32 52
  %58 = load i32, i32* %frame_cropping_flag32, align 4
  %tobool33 = icmp ne i32 %58, 0
  br i1 %tobool33, label %if.then.34, label %if.else.45

if.then.34:                                       ; preds = %if.end
  %59 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_rect_left_offset35 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %59, i32 0, i32 53
  %60 = load i32, i32* %frame_cropping_rect_left_offset35, align 4
  store i32 %60, i32* %crop_left, align 4
  %61 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_rect_right_offset36 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %61, i32 0, i32 54
  %62 = load i32, i32* %frame_cropping_rect_right_offset36, align 4
  store i32 %62, i32* %crop_right, align 4
  %63 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_mbs_only_flag37 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %63, i32 0, i32 51
  %64 = load i32, i32* %frame_mbs_only_flag37, align 4
  %sub38 = sub nsw i32 2, %64
  %65 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_rect_top_offset39 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %65, i32 0, i32 55
  %66 = load i32, i32* %frame_cropping_rect_top_offset39, align 4
  %mul40 = mul nsw i32 %sub38, %66
  store i32 %mul40, i32* %crop_top, align 4
  %67 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_mbs_only_flag41 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %67, i32 0, i32 51
  %68 = load i32, i32* %frame_mbs_only_flag41, align 4
  %sub42 = sub nsw i32 2, %68
  %69 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_rect_bottom_offset43 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %69, i32 0, i32 56
  %70 = load i32, i32* %frame_cropping_rect_bottom_offset43, align 4
  %mul44 = mul nsw i32 %sub42, %70
  store i32 %mul44, i32* %crop_bottom, align 4
  br label %if.end.46

if.else.45:                                       ; preds = %if.end
  store i32 0, i32* %crop_bottom, align 4
  store i32 0, i32* %crop_top, align 4
  store i32 0, i32* %crop_right, align 4
  store i32 0, i32* %crop_left, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.45, %if.then.34
  %71 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %chroma_format_idc47 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %71, i32 0, i32 50
  %72 = load i32, i32* %chroma_format_idc47, align 4
  %cmp48 = icmp eq i32 %72, 0
  br i1 %cmp48, label %land.lhs.true, label %if.else.56

land.lhs.true:                                    ; preds = %if.end.46
  %73 = load %struct.inp_par*, %struct.inp_par** @input, align 8
  %write_uv = getelementptr inbounds %struct.inp_par, %struct.inp_par* %73, i32 0, i32 6
  %74 = load i32, i32* %write_uv, align 4
  %tobool50 = icmp ne i32 %74, 0
  br i1 %tobool50, label %if.then.51, label %if.else.56

if.then.51:                                       ; preds = %land.lhs.true
  %75 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_x52 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %75, i32 0, i32 19
  %76 = load i32, i32* %size_x52, align 4
  %div53 = sdiv i32 %76, 2
  store i32 %div53, i32* %size_x_cr, align 4
  %77 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_y54 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %77, i32 0, i32 20
  %78 = load i32, i32* %size_y54, align 4
  %div55 = sdiv i32 %78, 2
  store i32 %div55, i32* %size_y_cr, align 4
  br label %if.end.63

if.else.56:                                       ; preds = %land.lhs.true, %if.end.46
  %79 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_x_cr57 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %79, i32 0, i32 21
  %80 = load i32, i32* %size_x_cr57, align 4
  %81 = load i32, i32* %crop_left, align 4
  %sub58 = sub nsw i32 %80, %81
  %82 = load i32, i32* %crop_right, align 4
  %sub59 = sub nsw i32 %sub58, %82
  store i32 %sub59, i32* %size_x_cr, align 4
  %83 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_y_cr60 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %83, i32 0, i32 22
  %84 = load i32, i32* %size_y_cr60, align 4
  %85 = load i32, i32* %crop_top, align 4
  %sub61 = sub nsw i32 %84, %85
  %86 = load i32, i32* %crop_bottom, align 4
  %sub62 = sub nsw i32 %sub61, %86
  store i32 %sub62, i32* %size_y_cr, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.56, %if.then.51
  %87 = load i32, i32* %size_y, align 4
  %conv64 = sext i32 %87 to i64
  %88 = load i32, i32* %size_x, align 4
  %conv65 = sext i32 %88 to i64
  %mul66 = mul nsw i64 %conv64, %conv65
  %89 = load i32, i32* %size_y_cr, align 4
  %conv67 = sext i32 %89 to i64
  %90 = load i32, i32* %size_x_cr, align 4
  %conv68 = sext i32 %90 to i64
  %mul69 = mul nsw i64 %conv67, %conv68
  %mul70 = mul nsw i64 %mul69, 2
  %add = add nsw i64 %mul66, %mul70
  %91 = load i32, i32* %symbol_size_in_bytes, align 4
  %conv71 = sext i32 %91 to i64
  %mul72 = mul nsw i64 %add, %conv71
  store i64 %mul72, i64* %framesize_in_bytes, align 8
  %92 = load i32, i32* %psnrPOC, align 4
  %cmp73 = icmp eq i32 %92, 0
  br i1 %cmp73, label %land.lhs.true.75, label %if.end.81

land.lhs.true.75:                                 ; preds = %if.end.63
  %93 = load %struct.img_par*, %struct.img_par** @img, align 8
  %psnr_number = getelementptr inbounds %struct.img_par, %struct.img_par* %93, i32 0, i32 122
  %94 = load i32, i32* %psnr_number, align 4
  %tobool76 = icmp ne i32 %94, 0
  br i1 %tobool76, label %if.then.77, label %if.end.81

if.then.77:                                       ; preds = %land.lhs.true.75
  %95 = load %struct.img_par*, %struct.img_par** @img, align 8
  %number = getelementptr inbounds %struct.img_par, %struct.img_par* %95, i32 0, i32 0
  %96 = load i32, i32* %number, align 4
  %97 = load %struct.img_par*, %struct.img_par** @img, align 8
  %ref_poc_gap = getelementptr inbounds %struct.img_par, %struct.img_par* %97, i32 0, i32 128
  %98 = load i32, i32* %ref_poc_gap, align 4
  %mul78 = mul nsw i32 %96, %98
  %99 = load %struct.inp_par*, %struct.inp_par** @input, align 8
  %poc_scale79 = getelementptr inbounds %struct.inp_par, %struct.inp_par* %99, i32 0, i32 5
  %100 = load i32, i32* %poc_scale79, align 4
  %div80 = sdiv i32 %mul78, %100
  %101 = load %struct.img_par*, %struct.img_par** @img, align 8
  %idr_psnr_number = getelementptr inbounds %struct.img_par, %struct.img_par* %101, i32 0, i32 121
  store i32 %div80, i32* %idr_psnr_number, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.77, %land.lhs.true.75, %if.end.63
  %102 = load %struct.img_par*, %struct.img_par** @img, align 8
  %psnr_number82 = getelementptr inbounds %struct.img_par, %struct.img_par* %102, i32 0, i32 122
  %103 = load i32, i32* %psnr_number82, align 4
  %104 = load %struct.img_par*, %struct.img_par** @img, align 8
  %idr_psnr_number83 = getelementptr inbounds %struct.img_par, %struct.img_par* %104, i32 0, i32 121
  %105 = load i32, i32* %idr_psnr_number83, align 4
  %106 = load i32, i32* %psnrPOC, align 4
  %add84 = add nsw i32 %105, %106
  %call = call i32 @imax(i32 %103, i32 %add84)
  %107 = load %struct.img_par*, %struct.img_par** @img, align 8
  %psnr_number85 = getelementptr inbounds %struct.img_par, %struct.img_par* %107, i32 0, i32 122
  store i32 %call, i32* %psnr_number85, align 4
  %108 = load %struct.img_par*, %struct.img_par** @img, align 8
  %idr_psnr_number86 = getelementptr inbounds %struct.img_par, %struct.img_par* %108, i32 0, i32 121
  %109 = load i32, i32* %idr_psnr_number86, align 4
  %110 = load i32, i32* %psnrPOC, align 4
  %add87 = add nsw i32 %109, %110
  store i32 %add87, i32* @frame_no, align 4
  %111 = load i32, i32* %size_y, align 4
  %112 = load i32, i32* %size_x, align 4
  %mul88 = mul nsw i32 %111, %112
  %113 = load i32, i32* %symbol_size_in_bytes, align 4
  %mul89 = mul nsw i32 %mul88, %113
  %conv90 = sext i32 %mul89 to i64
  %call91 = call noalias i8* @malloc(i64 %conv90) #2
  store i8* %call91, i8** %buf, align 8
  %114 = load i8*, i8** %buf, align 8
  %cmp92 = icmp eq i8* null, %114
  br i1 %cmp92, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %if.end.81
  call void @no_mem_exit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.94, %if.end.81
  %115 = load i32, i32* %p_ref.addr, align 4
  %116 = load i64, i64* %framesize_in_bytes, align 8
  %117 = load i32, i32* @frame_no, align 4
  %conv96 = sext i32 %117 to i64
  %mul97 = mul nsw i64 %116, %conv96
  %call98 = call i64 @lseek64(i32 %115, i64 %mul97, i32 0) #2
  store i64 %call98, i64* %status, align 8
  %118 = load i64, i64* %status, align 8
  %cmp99 = icmp eq i64 %118, -1
  br i1 %cmp99, label %if.then.101, label %if.end.103

if.then.101:                                      ; preds = %if.end.95
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %120 = load i32, i32* @frame_no, align 4
  %call102 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %119, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i32 0, i32 0), i32 %120)
  %121 = load i8*, i8** %buf, align 8
  call void @free(i8* %121) #2
  br label %if.end.328

if.end.103:                                       ; preds = %if.end.95
  %122 = load i32, i32* %rgb_output, align 4
  %tobool104 = icmp ne i32 %122, 0
  br i1 %tobool104, label %if.then.105, label %if.end.108

if.then.105:                                      ; preds = %if.end.103
  %123 = load i32, i32* %p_ref.addr, align 4
  %124 = load i64, i64* %framesize_in_bytes, align 8
  %div106 = sdiv i64 %124, 3
  %call107 = call i64 @lseek64(i32 %123, i64 %div106, i32 1) #2
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.105, %if.end.103
  %125 = load i32, i32* %p_ref.addr, align 4
  %126 = load i8*, i8** %buf, align 8
  %127 = load i32, i32* %size_y, align 4
  %128 = load i32, i32* %size_x, align 4
  %mul109 = mul nsw i32 %127, %128
  %129 = load i32, i32* %symbol_size_in_bytes, align 4
  %mul110 = mul nsw i32 %mul109, %129
  %conv111 = sext i32 %mul110 to i64
  %call112 = call i64 @read(i32 %125, i8* %126, i64 %conv111)
  %130 = load i16**, i16*** @imgY_ref, align 8
  %131 = load i8*, i8** %buf, align 8
  %132 = load i32, i32* %size_x, align 4
  %133 = load i32, i32* %size_y, align 4
  %134 = load i32, i32* %symbol_size_in_bytes, align 4
  call void @buf2img(i16** %130, i8* %131, i32 %132, i32 %133, i32 %134)
  %135 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %chroma_format_idc113 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %135, i32 0, i32 50
  %136 = load i32, i32* %chroma_format_idc113, align 4
  %cmp114 = icmp ne i32 %136, 0
  br i1 %cmp114, label %if.then.116, label %if.end.133

if.then.116:                                      ; preds = %if.end.108
  store i32 0, i32* %uv, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.116
  %137 = load i32, i32* %uv, align 4
  %cmp117 = icmp slt i32 %137, 2
  br i1 %cmp117, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %138 = load i32, i32* %rgb_output, align 4
  %tobool119 = icmp ne i32 %138, 0
  br i1 %tobool119, label %land.lhs.true.120, label %if.end.126

land.lhs.true.120:                                ; preds = %for.body
  %139 = load i32, i32* %uv, align 4
  %cmp121 = icmp eq i32 %139, 1
  br i1 %cmp121, label %if.then.123, label %if.end.126

if.then.123:                                      ; preds = %land.lhs.true.120
  %140 = load i32, i32* %p_ref.addr, align 4
  %141 = load i64, i64* %framesize_in_bytes, align 8
  %sub124 = sub nsw i64 0, %141
  %call125 = call i64 @lseek64(i32 %140, i64 %sub124, i32 1) #2
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.123, %land.lhs.true.120, %for.body
  %142 = load i32, i32* %p_ref.addr, align 4
  %143 = load i8*, i8** %buf, align 8
  %144 = load i32, i32* %size_y_cr, align 4
  %145 = load i32, i32* %size_x_cr, align 4
  %mul127 = mul nsw i32 %144, %145
  %146 = load i32, i32* %symbol_size_in_bytes, align 4
  %mul128 = mul nsw i32 %mul127, %146
  %conv129 = sext i32 %mul128 to i64
  %call130 = call i64 @read(i32 %142, i8* %143, i64 %conv129)
  %147 = load i32, i32* %uv, align 4
  %idxprom131 = sext i32 %147 to i64
  %148 = load i16***, i16**** @imgUV_ref, align 8
  %arrayidx132 = getelementptr inbounds i16**, i16*** %148, i64 %idxprom131
  %149 = load i16**, i16*** %arrayidx132, align 8
  %150 = load i8*, i8** %buf, align 8
  %151 = load i32, i32* %size_x_cr, align 4
  %152 = load i32, i32* %size_y_cr, align 4
  %153 = load i32, i32* %symbol_size_in_bytes, align 4
  call void @buf2img(i16** %149, i8* %150, i32 %151, i32 %152, i32 %153)
  br label %for.inc

for.inc:                                          ; preds = %if.end.126
  %154 = load i32, i32* %uv, align 4
  %inc = add nsw i32 %154, 1
  store i32 %inc, i32* %uv, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.133

if.end.133:                                       ; preds = %for.end, %if.end.108
  %155 = load i32, i32* %rgb_output, align 4
  %tobool134 = icmp ne i32 %155, 0
  br i1 %tobool134, label %if.then.135, label %if.end.139

if.then.135:                                      ; preds = %if.end.133
  %156 = load i32, i32* %p_ref.addr, align 4
  %157 = load i64, i64* %framesize_in_bytes, align 8
  %mul136 = mul nsw i64 %157, 2
  %div137 = sdiv i64 %mul136, 3
  %call138 = call i64 @lseek64(i32 %156, i64 %div137, i32 1) #2
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.135, %if.end.133
  %158 = load i8*, i8** %buf, align 8
  call void @free(i8* %158) #2
  %159 = load %struct.img_par*, %struct.img_par** @img, align 8
  %quad = getelementptr inbounds %struct.img_par, %struct.img_par* %159, i32 0, i32 31
  %160 = load i32*, i32** %quad, align 8
  %arrayidx140 = getelementptr inbounds i32, i32* %160, i64 0
  store i32 0, i32* %arrayidx140, align 4
  store i64 0, i64* %diff_y, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.141

for.cond.141:                                     ; preds = %for.inc.168, %if.end.139
  %161 = load i32, i32* %j, align 4
  %162 = load i32, i32* %size_y, align 4
  %cmp142 = icmp slt i32 %161, %162
  br i1 %cmp142, label %for.body.144, label %for.end.170

for.body.144:                                     ; preds = %for.cond.141
  store i32 0, i32* %i, align 4
  br label %for.cond.145

for.cond.145:                                     ; preds = %for.inc.165, %for.body.144
  %163 = load i32, i32* %i, align 4
  %164 = load i32, i32* %size_x, align 4
  %cmp146 = icmp slt i32 %163, %164
  br i1 %cmp146, label %for.body.148, label %for.end.167

for.body.148:                                     ; preds = %for.cond.145
  %165 = load i32, i32* %i, align 4
  %idxprom149 = sext i32 %165 to i64
  %166 = load i32, i32* %j, align 4
  %idxprom150 = sext i32 %166 to i64
  %167 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %imgY = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %167, i32 0, i32 32
  %168 = load i16**, i16*** %imgY, align 8
  %arrayidx151 = getelementptr inbounds i16*, i16** %168, i64 %idxprom150
  %169 = load i16*, i16** %arrayidx151, align 8
  %arrayidx152 = getelementptr inbounds i16, i16* %169, i64 %idxprom149
  %170 = load i16, i16* %arrayidx152, align 2
  %conv153 = zext i16 %170 to i32
  %171 = load i32, i32* %i, align 4
  %idxprom154 = sext i32 %171 to i64
  %172 = load i32, i32* %j, align 4
  %idxprom155 = sext i32 %172 to i64
  %173 = load i16**, i16*** @imgY_ref, align 8
  %arrayidx156 = getelementptr inbounds i16*, i16** %173, i64 %idxprom155
  %174 = load i16*, i16** %arrayidx156, align 8
  %arrayidx157 = getelementptr inbounds i16, i16* %174, i64 %idxprom154
  %175 = load i16, i16* %arrayidx157, align 2
  %conv158 = zext i16 %175 to i32
  %sub159 = sub nsw i32 %conv153, %conv158
  %idxprom160 = sext i32 %sub159 to i64
  %176 = load %struct.img_par*, %struct.img_par** @img, align 8
  %quad161 = getelementptr inbounds %struct.img_par, %struct.img_par* %176, i32 0, i32 31
  %177 = load i32*, i32** %quad161, align 8
  %arrayidx162 = getelementptr inbounds i32, i32* %177, i64 %idxprom160
  %178 = load i32, i32* %arrayidx162, align 4
  %conv163 = sext i32 %178 to i64
  %179 = load i64, i64* %diff_y, align 8
  %add164 = add nsw i64 %179, %conv163
  store i64 %add164, i64* %diff_y, align 8
  br label %for.inc.165

for.inc.165:                                      ; preds = %for.body.148
  %180 = load i32, i32* %i, align 4
  %inc166 = add nsw i32 %180, 1
  store i32 %inc166, i32* %i, align 4
  br label %for.cond.145

for.end.167:                                      ; preds = %for.cond.145
  br label %for.inc.168

for.inc.168:                                      ; preds = %for.end.167
  %181 = load i32, i32* %j, align 4
  %inc169 = add nsw i32 %181, 1
  store i32 %inc169, i32* %j, align 4
  br label %for.cond.141

for.end.170:                                      ; preds = %for.cond.141
  store i64 0, i64* %diff_u, align 8
  store i64 0, i64* %diff_v, align 8
  %182 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %chroma_format_idc171 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %182, i32 0, i32 50
  %183 = load i32, i32* %chroma_format_idc171, align 4
  %cmp172 = icmp ne i32 %183, 0
  br i1 %cmp172, label %if.then.174, label %if.end.226

if.then.174:                                      ; preds = %for.end.170
  store i32 0, i32* %j, align 4
  br label %for.cond.175

for.cond.175:                                     ; preds = %for.inc.223, %if.then.174
  %184 = load i32, i32* %j, align 4
  %185 = load i32, i32* %size_y_cr, align 4
  %cmp176 = icmp slt i32 %184, %185
  br i1 %cmp176, label %for.body.178, label %for.end.225

for.body.178:                                     ; preds = %for.cond.175
  store i32 0, i32* %i, align 4
  br label %for.cond.179

for.cond.179:                                     ; preds = %for.inc.220, %for.body.178
  %186 = load i32, i32* %i, align 4
  %187 = load i32, i32* %size_x_cr, align 4
  %cmp180 = icmp slt i32 %186, %187
  br i1 %cmp180, label %for.body.182, label %for.end.222

for.body.182:                                     ; preds = %for.cond.179
  %188 = load i32, i32* %i, align 4
  %idxprom183 = sext i32 %188 to i64
  %189 = load i32, i32* %j, align 4
  %idxprom184 = sext i32 %189 to i64
  %190 = load i16***, i16**** @imgUV_ref, align 8
  %arrayidx185 = getelementptr inbounds i16**, i16*** %190, i64 0
  %191 = load i16**, i16*** %arrayidx185, align 8
  %arrayidx186 = getelementptr inbounds i16*, i16** %191, i64 %idxprom184
  %192 = load i16*, i16** %arrayidx186, align 8
  %arrayidx187 = getelementptr inbounds i16, i16* %192, i64 %idxprom183
  %193 = load i16, i16* %arrayidx187, align 2
  %conv188 = zext i16 %193 to i32
  %194 = load i32, i32* %i, align 4
  %idxprom189 = sext i32 %194 to i64
  %195 = load i32, i32* %j, align 4
  %idxprom190 = sext i32 %195 to i64
  %196 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %imgUV = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %196, i32 0, i32 33
  %197 = load i16***, i16**** %imgUV, align 8
  %arrayidx191 = getelementptr inbounds i16**, i16*** %197, i64 0
  %198 = load i16**, i16*** %arrayidx191, align 8
  %arrayidx192 = getelementptr inbounds i16*, i16** %198, i64 %idxprom190
  %199 = load i16*, i16** %arrayidx192, align 8
  %arrayidx193 = getelementptr inbounds i16, i16* %199, i64 %idxprom189
  %200 = load i16, i16* %arrayidx193, align 2
  %conv194 = zext i16 %200 to i32
  %sub195 = sub nsw i32 %conv188, %conv194
  %idxprom196 = sext i32 %sub195 to i64
  %201 = load %struct.img_par*, %struct.img_par** @img, align 8
  %quad197 = getelementptr inbounds %struct.img_par, %struct.img_par* %201, i32 0, i32 31
  %202 = load i32*, i32** %quad197, align 8
  %arrayidx198 = getelementptr inbounds i32, i32* %202, i64 %idxprom196
  %203 = load i32, i32* %arrayidx198, align 4
  %conv199 = sext i32 %203 to i64
  %204 = load i64, i64* %diff_u, align 8
  %add200 = add nsw i64 %204, %conv199
  store i64 %add200, i64* %diff_u, align 8
  %205 = load i32, i32* %i, align 4
  %idxprom201 = sext i32 %205 to i64
  %206 = load i32, i32* %j, align 4
  %idxprom202 = sext i32 %206 to i64
  %207 = load i16***, i16**** @imgUV_ref, align 8
  %arrayidx203 = getelementptr inbounds i16**, i16*** %207, i64 1
  %208 = load i16**, i16*** %arrayidx203, align 8
  %arrayidx204 = getelementptr inbounds i16*, i16** %208, i64 %idxprom202
  %209 = load i16*, i16** %arrayidx204, align 8
  %arrayidx205 = getelementptr inbounds i16, i16* %209, i64 %idxprom201
  %210 = load i16, i16* %arrayidx205, align 2
  %conv206 = zext i16 %210 to i32
  %211 = load i32, i32* %i, align 4
  %idxprom207 = sext i32 %211 to i64
  %212 = load i32, i32* %j, align 4
  %idxprom208 = sext i32 %212 to i64
  %213 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %imgUV209 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %213, i32 0, i32 33
  %214 = load i16***, i16**** %imgUV209, align 8
  %arrayidx210 = getelementptr inbounds i16**, i16*** %214, i64 1
  %215 = load i16**, i16*** %arrayidx210, align 8
  %arrayidx211 = getelementptr inbounds i16*, i16** %215, i64 %idxprom208
  %216 = load i16*, i16** %arrayidx211, align 8
  %arrayidx212 = getelementptr inbounds i16, i16* %216, i64 %idxprom207
  %217 = load i16, i16* %arrayidx212, align 2
  %conv213 = zext i16 %217 to i32
  %sub214 = sub nsw i32 %conv206, %conv213
  %idxprom215 = sext i32 %sub214 to i64
  %218 = load %struct.img_par*, %struct.img_par** @img, align 8
  %quad216 = getelementptr inbounds %struct.img_par, %struct.img_par* %218, i32 0, i32 31
  %219 = load i32*, i32** %quad216, align 8
  %arrayidx217 = getelementptr inbounds i32, i32* %219, i64 %idxprom215
  %220 = load i32, i32* %arrayidx217, align 4
  %conv218 = sext i32 %220 to i64
  %221 = load i64, i64* %diff_v, align 8
  %add219 = add nsw i64 %221, %conv218
  store i64 %add219, i64* %diff_v, align 8
  br label %for.inc.220

for.inc.220:                                      ; preds = %for.body.182
  %222 = load i32, i32* %i, align 4
  %inc221 = add nsw i32 %222, 1
  store i32 %inc221, i32* %i, align 4
  br label %for.cond.179

for.end.222:                                      ; preds = %for.cond.179
  br label %for.inc.223

for.inc.223:                                      ; preds = %for.end.222
  %223 = load i32, i32* %j, align 4
  %inc224 = add nsw i32 %223, 1
  store i32 %inc224, i32* %j, align 4
  br label %for.cond.175

for.end.225:                                      ; preds = %for.cond.175
  br label %if.end.226

if.end.226:                                       ; preds = %for.end.225, %for.end.170
  %224 = load i64, i64* %diff_y, align 8
  %cmp227 = icmp ne i64 %224, 0
  br i1 %cmp227, label %if.then.229, label %if.else.240

if.then.229:                                      ; preds = %if.end.226
  %225 = load i32, i32* %max_pix_value_sqd, align 4
  %conv230 = uitofp i32 %225 to double
  %226 = load i32, i32* %size_x, align 4
  %conv231 = sitofp i32 %226 to double
  %227 = load i32, i32* %size_y, align 4
  %conv232 = sitofp i32 %227 to double
  %mul233 = fmul double %conv231, %conv232
  %228 = load i64, i64* %diff_y, align 8
  %conv234 = sitofp i64 %228 to double
  %div235 = fdiv double %mul233, %conv234
  %mul236 = fmul double %conv230, %div235
  %call237 = call double @log10(double %mul236) #2
  %mul238 = fmul double 1.000000e+01, %call237
  %conv239 = fptrunc double %mul238 to float
  %229 = load %struct.snr_par*, %struct.snr_par** %snr.addr, align 8
  %snr_y = getelementptr inbounds %struct.snr_par, %struct.snr_par* %229, i32 0, i32 1
  store float %conv239, float* %snr_y, align 4
  br label %if.end.242

if.else.240:                                      ; preds = %if.end.226
  %230 = load %struct.snr_par*, %struct.snr_par** %snr.addr, align 8
  %snr_y241 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %230, i32 0, i32 1
  store float 0.000000e+00, float* %snr_y241, align 4
  br label %if.end.242

if.end.242:                                       ; preds = %if.else.240, %if.then.229
  %231 = load i64, i64* %diff_u, align 8
  %cmp243 = icmp ne i64 %231, 0
  br i1 %cmp243, label %if.then.245, label %if.else.256

if.then.245:                                      ; preds = %if.end.242
  %232 = load i32, i32* %max_pix_value_sqd_uv, align 4
  %conv246 = uitofp i32 %232 to double
  %233 = load i32, i32* %size_x_cr, align 4
  %conv247 = sitofp i32 %233 to double
  %234 = load i32, i32* %size_y_cr, align 4
  %conv248 = sitofp i32 %234 to double
  %mul249 = fmul double %conv247, %conv248
  %235 = load i64, i64* %diff_u, align 8
  %conv250 = sitofp i64 %235 to double
  %div251 = fdiv double %mul249, %conv250
  %mul252 = fmul double %conv246, %div251
  %call253 = call double @log10(double %mul252) #2
  %mul254 = fmul double 1.000000e+01, %call253
  %conv255 = fptrunc double %mul254 to float
  %236 = load %struct.snr_par*, %struct.snr_par** %snr.addr, align 8
  %snr_u = getelementptr inbounds %struct.snr_par, %struct.snr_par* %236, i32 0, i32 2
  store float %conv255, float* %snr_u, align 4
  br label %if.end.258

if.else.256:                                      ; preds = %if.end.242
  %237 = load %struct.snr_par*, %struct.snr_par** %snr.addr, align 8
  %snr_u257 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %237, i32 0, i32 2
  store float 0.000000e+00, float* %snr_u257, align 4
  br label %if.end.258

if.end.258:                                       ; preds = %if.else.256, %if.then.245
  %238 = load i64, i64* %diff_v, align 8
  %cmp259 = icmp ne i64 %238, 0
  br i1 %cmp259, label %if.then.261, label %if.else.272

if.then.261:                                      ; preds = %if.end.258
  %239 = load i32, i32* %max_pix_value_sqd_uv, align 4
  %conv262 = uitofp i32 %239 to double
  %240 = load i32, i32* %size_x_cr, align 4
  %conv263 = sitofp i32 %240 to double
  %241 = load i32, i32* %size_y_cr, align 4
  %conv264 = sitofp i32 %241 to double
  %mul265 = fmul double %conv263, %conv264
  %242 = load i64, i64* %diff_v, align 8
  %conv266 = sitofp i64 %242 to double
  %div267 = fdiv double %mul265, %conv266
  %mul268 = fmul double %conv262, %div267
  %call269 = call double @log10(double %mul268) #2
  %mul270 = fmul double 1.000000e+01, %call269
  %conv271 = fptrunc double %mul270 to float
  %243 = load %struct.snr_par*, %struct.snr_par** %snr.addr, align 8
  %snr_v = getelementptr inbounds %struct.snr_par, %struct.snr_par* %243, i32 0, i32 3
  store float %conv271, float* %snr_v, align 4
  br label %if.end.274

if.else.272:                                      ; preds = %if.end.258
  %244 = load %struct.snr_par*, %struct.snr_par** %snr.addr, align 8
  %snr_v273 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %244, i32 0, i32 3
  store float 0.000000e+00, float* %snr_v273, align 4
  br label %if.end.274

if.end.274:                                       ; preds = %if.else.272, %if.then.261
  %245 = load %struct.img_par*, %struct.img_par** @img, align 8
  %number275 = getelementptr inbounds %struct.img_par, %struct.img_par* %245, i32 0, i32 0
  %246 = load i32, i32* %number275, align 4
  %cmp276 = icmp eq i32 %246, 0
  br i1 %cmp276, label %if.then.278, label %if.else.282

if.then.278:                                      ; preds = %if.end.274
  %247 = load %struct.snr_par*, %struct.snr_par** %snr.addr, align 8
  %snr_y279 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %247, i32 0, i32 1
  %248 = load float, float* %snr_y279, align 4
  %249 = load %struct.snr_par*, %struct.snr_par** %snr.addr, align 8
  %snr_y1 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %249, i32 0, i32 4
  store float %248, float* %snr_y1, align 4
  %250 = load %struct.snr_par*, %struct.snr_par** %snr.addr, align 8
  %snr_ya = getelementptr inbounds %struct.snr_par, %struct.snr_par* %250, i32 0, i32 7
  store float %248, float* %snr_ya, align 4
  %251 = load %struct.snr_par*, %struct.snr_par** %snr.addr, align 8
  %snr_u280 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %251, i32 0, i32 2
  %252 = load float, float* %snr_u280, align 4
  %253 = load %struct.snr_par*, %struct.snr_par** %snr.addr, align 8
  %snr_u1 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %253, i32 0, i32 5
  store float %252, float* %snr_u1, align 4
  %254 = load %struct.snr_par*, %struct.snr_par** %snr.addr, align 8
  %snr_ua = getelementptr inbounds %struct.snr_par, %struct.snr_par* %254, i32 0, i32 8
  store float %252, float* %snr_ua, align 4
  %255 = load %struct.snr_par*, %struct.snr_par** %snr.addr, align 8
  %snr_v281 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %255, i32 0, i32 3
  %256 = load float, float* %snr_v281, align 4
  %257 = load %struct.snr_par*, %struct.snr_par** %snr.addr, align 8
  %snr_v1 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %257, i32 0, i32 6
  store float %256, float* %snr_v1, align 4
  %258 = load %struct.snr_par*, %struct.snr_par** %snr.addr, align 8
  %snr_va = getelementptr inbounds %struct.snr_par, %struct.snr_par* %258, i32 0, i32 9
  store float %256, float* %snr_va, align 4
  br label %if.end.315

if.else.282:                                      ; preds = %if.end.274
  %259 = load %struct.snr_par*, %struct.snr_par** %snr.addr, align 8
  %snr_ya283 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %259, i32 0, i32 7
  %260 = load float, float* %snr_ya283, align 4
  %261 = load %struct.snr_par*, %struct.snr_par** %snr.addr, align 8
  %frame_ctr = getelementptr inbounds %struct.snr_par, %struct.snr_par* %261, i32 0, i32 0
  %262 = load i32, i32* %frame_ctr, align 4
  %conv284 = sitofp i32 %262 to float
  %mul285 = fmul float %260, %conv284
  %263 = load %struct.snr_par*, %struct.snr_par** %snr.addr, align 8
  %snr_y286 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %263, i32 0, i32 1
  %264 = load float, float* %snr_y286, align 4
  %add287 = fadd float %mul285, %264
  %265 = load %struct.snr_par*, %struct.snr_par** %snr.addr, align 8
  %frame_ctr288 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %265, i32 0, i32 0
  %266 = load i32, i32* %frame_ctr288, align 4
  %add289 = add nsw i32 %266, 1
  %conv290 = sitofp i32 %add289 to float
  %div291 = fdiv float %add287, %conv290
  %267 = load %struct.snr_par*, %struct.snr_par** %snr.addr, align 8
  %snr_ya292 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %267, i32 0, i32 7
  store float %div291, float* %snr_ya292, align 4
  %268 = load %struct.snr_par*, %struct.snr_par** %snr.addr, align 8
  %snr_ua293 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %268, i32 0, i32 8
  %269 = load float, float* %snr_ua293, align 4
  %270 = load %struct.snr_par*, %struct.snr_par** %snr.addr, align 8
  %frame_ctr294 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %270, i32 0, i32 0
  %271 = load i32, i32* %frame_ctr294, align 4
  %conv295 = sitofp i32 %271 to float
  %mul296 = fmul float %269, %conv295
  %272 = load %struct.snr_par*, %struct.snr_par** %snr.addr, align 8
  %snr_u297 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %272, i32 0, i32 2
  %273 = load float, float* %snr_u297, align 4
  %add298 = fadd float %mul296, %273
  %274 = load %struct.snr_par*, %struct.snr_par** %snr.addr, align 8
  %frame_ctr299 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %274, i32 0, i32 0
  %275 = load i32, i32* %frame_ctr299, align 4
  %add300 = add nsw i32 %275, 1
  %conv301 = sitofp i32 %add300 to float
  %div302 = fdiv float %add298, %conv301
  %276 = load %struct.snr_par*, %struct.snr_par** %snr.addr, align 8
  %snr_ua303 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %276, i32 0, i32 8
  store float %div302, float* %snr_ua303, align 4
  %277 = load %struct.snr_par*, %struct.snr_par** %snr.addr, align 8
  %snr_va304 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %277, i32 0, i32 9
  %278 = load float, float* %snr_va304, align 4
  %279 = load %struct.snr_par*, %struct.snr_par** %snr.addr, align 8
  %frame_ctr305 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %279, i32 0, i32 0
  %280 = load i32, i32* %frame_ctr305, align 4
  %conv306 = sitofp i32 %280 to float
  %mul307 = fmul float %278, %conv306
  %281 = load %struct.snr_par*, %struct.snr_par** %snr.addr, align 8
  %snr_v308 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %281, i32 0, i32 3
  %282 = load float, float* %snr_v308, align 4
  %add309 = fadd float %mul307, %282
  %283 = load %struct.snr_par*, %struct.snr_par** %snr.addr, align 8
  %frame_ctr310 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %283, i32 0, i32 0
  %284 = load i32, i32* %frame_ctr310, align 4
  %add311 = add nsw i32 %284, 1
  %conv312 = sitofp i32 %add311 to float
  %div313 = fdiv float %add309, %conv312
  %285 = load %struct.snr_par*, %struct.snr_par** %snr.addr, align 8
  %snr_va314 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %285, i32 0, i32 9
  store float %div313, float* %snr_va314, align 4
  br label %if.end.315

if.end.315:                                       ; preds = %if.else.282, %if.then.278
  %286 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %concealed_pic = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %286, i32 0, i32 61
  %287 = load i32, i32* %concealed_pic, align 4
  %tobool316 = icmp ne i32 %287, 0
  br i1 %tobool316, label %if.then.317, label %if.end.328

if.then.317:                                      ; preds = %if.end.315
  %288 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %289 = load i32, i32* @frame_no, align 4
  %290 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_poc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %290, i32 0, i32 4
  %291 = load i32, i32* %frame_poc, align 4
  %292 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %pic_num = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %292, i32 0, i32 11
  %293 = load i32, i32* %pic_num, align 4
  %294 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %qp = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %294, i32 0, i32 57
  %295 = load i32, i32* %qp, align 4
  %296 = load %struct.snr_par*, %struct.snr_par** %snr.addr, align 8
  %snr_y318 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %296, i32 0, i32 1
  %297 = load float, float* %snr_y318, align 4
  %conv319 = fpext float %297 to double
  %298 = load %struct.snr_par*, %struct.snr_par** %snr.addr, align 8
  %snr_u320 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %298, i32 0, i32 2
  %299 = load float, float* %snr_u320, align 4
  %conv321 = fpext float %299 to double
  %300 = load %struct.snr_par*, %struct.snr_par** %snr.addr, align 8
  %snr_v322 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %300, i32 0, i32 3
  %301 = load float, float* %snr_v322, align 4
  %conv323 = fpext float %301 to double
  %302 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %chroma_format_idc324 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %302, i32 0, i32 50
  %303 = load i32, i32* %chroma_format_idc324, align 4
  %idxprom325 = sext i32 %303 to i64
  %arrayidx326 = getelementptr inbounds [4 x [6 x i8]], [4 x [6 x i8]]* %yuv_types, i32 0, i64 %idxprom325
  %arraydecay = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx326, i32 0, i32 0
  %call327 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %288, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i32 0, i32 0), i32 %289, i32 %291, i32 %293, i32 %295, double %conv319, double %conv321, double %conv323, i8* %arraydecay, i32 0)
  br label %if.end.328

if.end.328:                                       ; preds = %if.then.101, %if.then.317, %if.end.315
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @imax(i32 %a, i32 %b) #3 {
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

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #4

declare void @no_mem_exit(i8*) #1

; Function Attrs: nounwind
declare i64 @lseek64(i32, i64, i32) #4

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare void @free(i8*) #4

declare i64 @read(i32, i8*, i64) #1

; Function Attrs: nounwind
declare double @log10(double) #4

; Function Attrs: nounwind uwtable
define void @get_block(i32 %ref_frame, %struct.storable_picture** %list, i32 %x_pos, i32 %y_pos, %struct.img_par* %img, [4 x i32]* %block) #0 {
entry:
  %ref_frame.addr = alloca i32, align 4
  %list.addr = alloca %struct.storable_picture**, align 8
  %x_pos.addr = alloca i32, align 4
  %y_pos.addr = alloca i32, align 4
  %img.addr = alloca %struct.img_par*, align 8
  %block.addr = alloca [4 x i32]*, align 8
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %maxold_x = alloca i32, align 4
  %maxold_y = alloca i32, align 4
  %result = alloca i32, align 4
  %pres_x = alloca i32, align 4
  %pres_y = alloca i32, align 4
  %tmp_res = alloca [9 x [9 x i32]], align 16
  %curr_ref = alloca %struct.storable_picture*, align 8
  store i32 %ref_frame, i32* %ref_frame.addr, align 4
  store %struct.storable_picture** %list, %struct.storable_picture*** %list.addr, align 8
  store i32 %x_pos, i32* %x_pos.addr, align 4
  store i32 %y_pos, i32* %y_pos.addr, align 4
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  store [4 x i32]* %block, [4 x i32]** %block.addr, align 8
  %0 = load i32, i32* %ref_frame.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.storable_picture**, %struct.storable_picture*** %list.addr, align 8
  %arrayidx = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %1, i64 %idxprom
  %2 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx, align 8
  store %struct.storable_picture* %2, %struct.storable_picture** %curr_ref, align 8
  %3 = load %struct.storable_picture*, %struct.storable_picture** %curr_ref, align 8
  %4 = load %struct.storable_picture*, %struct.storable_picture** @no_reference_picture, align 8
  %cmp = icmp eq %struct.storable_picture* %3, %4
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %framepoc = getelementptr inbounds %struct.img_par, %struct.img_par* %5, i32 0, i32 55
  %6 = load i32, i32* %framepoc, align 4
  %7 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %recovery_poc = getelementptr inbounds %struct.img_par, %struct.img_par* %7, i32 0, i32 139
  %8 = load i32, i32* %recovery_poc, align 4
  %cmp1 = icmp slt i32 %6, %8
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.10, %if.then
  %9 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %9, 4
  br i1 %cmp2, label %for.body, label %for.end.12

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %10 = load i32, i32* %i, align 4
  %cmp4 = icmp slt i32 %10, 4
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.3
  %11 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %12 to i64
  %13 = load [4 x i32]*, [4 x i32]** %block.addr, align 8
  %arrayidx8 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 %idxprom7
  %arrayidx9 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx8, i32 0, i64 %idxprom6
  store i32 128, i32* %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.5
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.end
  %15 = load i32, i32* %j, align 4
  %inc11 = add nsw i32 %15, 1
  store i32 %inc11, i32* %j, align 4
  br label %for.cond

for.end.12:                                       ; preds = %for.cond
  br label %if.end.993

if.end:                                           ; preds = %land.lhs.true, %entry
  %16 = load %struct.storable_picture*, %struct.storable_picture** %curr_ref, align 8
  %imgY = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %16, i32 0, i32 32
  %17 = load i16**, i16*** %imgY, align 8
  store i16** %17, i16*** @get_block.cur_imgY, align 8
  %18 = load i32, i32* %x_pos.addr, align 4
  %and = and i32 %18, 3
  store i32 %and, i32* %dx, align 4
  %19 = load i32, i32* %y_pos.addr, align 4
  %and13 = and i32 %19, 3
  store i32 %and13, i32* %dy, align 4
  %20 = load i32, i32* %x_pos.addr, align 4
  %21 = load i32, i32* %dx, align 4
  %sub = sub nsw i32 %20, %21
  %shr = ashr i32 %sub, 2
  store i32 %shr, i32* %x_pos.addr, align 4
  %22 = load i32, i32* %y_pos.addr, align 4
  %23 = load i32, i32* %dy, align 4
  %sub14 = sub nsw i32 %22, %23
  %shr15 = ashr i32 %sub14, 2
  store i32 %shr15, i32* %y_pos.addr, align 4
  %24 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %size_x_m1 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %24, i32 0, i32 23
  %25 = load i32, i32* %size_x_m1, align 4
  store i32 %25, i32* %maxold_x, align 4
  %26 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %size_y_m1 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %26, i32 0, i32 24
  %27 = load i32, i32* %size_y_m1, align 4
  store i32 %27, i32* %maxold_y, align 4
  %28 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %current_mb_nr = getelementptr inbounds %struct.img_par, %struct.img_par* %28, i32 0, i32 1
  %29 = load i32, i32* %current_mb_nr, align 4
  %idxprom16 = zext i32 %29 to i64
  %30 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %mb_field = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %30, i32 0, i32 34
  %31 = load i8*, i8** %mb_field, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %31, i64 %idxprom16
  %32 = load i8, i8* %arrayidx17, align 1
  %tobool = icmp ne i8 %32, 0
  br i1 %tobool, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %if.end
  %33 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %size_y = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %33, i32 0, i32 20
  %34 = load i32, i32* %size_y, align 4
  %shr19 = ashr i32 %34, 1
  %sub20 = sub nsw i32 %shr19, 1
  store i32 %sub20, i32* %maxold_y, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %if.end
  %35 = load i32, i32* %dx, align 4
  %cmp22 = icmp eq i32 %35, 0
  br i1 %cmp22, label %land.lhs.true.23, label %if.else

land.lhs.true.23:                                 ; preds = %if.end.21
  %36 = load i32, i32* %dy, align 4
  %cmp24 = icmp eq i32 %36, 0
  br i1 %cmp24, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %land.lhs.true.23
  store i32 0, i32* %j, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.62, %if.then.25
  %37 = load i32, i32* %j, align 4
  %cmp27 = icmp slt i32 %37, 4
  br i1 %cmp27, label %for.body.28, label %for.end.64

for.body.28:                                      ; preds = %for.cond.26
  %38 = load i32, i32* %maxold_y, align 4
  %39 = load i32, i32* %y_pos.addr, align 4
  %40 = load i32, i32* %j, align 4
  %add = add nsw i32 %39, %40
  %call29 = call i32 @iClip3(i32 0, i32 %38, i32 %add)
  %idxprom30 = sext i32 %call29 to i64
  %41 = load i16**, i16*** @get_block.cur_imgY, align 8
  %arrayidx31 = getelementptr inbounds i16*, i16** %41, i64 %idxprom30
  %42 = load i16*, i16** %arrayidx31, align 8
  store i16* %42, i16** @get_block.cur_lineY, align 8
  %43 = load i32, i32* %maxold_x, align 4
  %44 = load i32, i32* %x_pos.addr, align 4
  %call32 = call i32 @iClip3(i32 0, i32 %43, i32 %44)
  %idxprom33 = sext i32 %call32 to i64
  %45 = load i16*, i16** @get_block.cur_lineY, align 8
  %arrayidx34 = getelementptr inbounds i16, i16* %45, i64 %idxprom33
  %46 = load i16, i16* %arrayidx34, align 2
  %conv = zext i16 %46 to i32
  %47 = load i32, i32* %j, align 4
  %idxprom35 = sext i32 %47 to i64
  %48 = load [4 x i32]*, [4 x i32]** %block.addr, align 8
  %arrayidx36 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i64 %idxprom35
  %arrayidx37 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx36, i32 0, i64 0
  store i32 %conv, i32* %arrayidx37, align 4
  %49 = load i32, i32* %maxold_x, align 4
  %50 = load i32, i32* %x_pos.addr, align 4
  %add38 = add nsw i32 %50, 1
  %call39 = call i32 @iClip3(i32 0, i32 %49, i32 %add38)
  %idxprom40 = sext i32 %call39 to i64
  %51 = load i16*, i16** @get_block.cur_lineY, align 8
  %arrayidx41 = getelementptr inbounds i16, i16* %51, i64 %idxprom40
  %52 = load i16, i16* %arrayidx41, align 2
  %conv42 = zext i16 %52 to i32
  %53 = load i32, i32* %j, align 4
  %idxprom43 = sext i32 %53 to i64
  %54 = load [4 x i32]*, [4 x i32]** %block.addr, align 8
  %arrayidx44 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i64 %idxprom43
  %arrayidx45 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx44, i32 0, i64 1
  store i32 %conv42, i32* %arrayidx45, align 4
  %55 = load i32, i32* %maxold_x, align 4
  %56 = load i32, i32* %x_pos.addr, align 4
  %add46 = add nsw i32 %56, 2
  %call47 = call i32 @iClip3(i32 0, i32 %55, i32 %add46)
  %idxprom48 = sext i32 %call47 to i64
  %57 = load i16*, i16** @get_block.cur_lineY, align 8
  %arrayidx49 = getelementptr inbounds i16, i16* %57, i64 %idxprom48
  %58 = load i16, i16* %arrayidx49, align 2
  %conv50 = zext i16 %58 to i32
  %59 = load i32, i32* %j, align 4
  %idxprom51 = sext i32 %59 to i64
  %60 = load [4 x i32]*, [4 x i32]** %block.addr, align 8
  %arrayidx52 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i64 %idxprom51
  %arrayidx53 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx52, i32 0, i64 2
  store i32 %conv50, i32* %arrayidx53, align 4
  %61 = load i32, i32* %maxold_x, align 4
  %62 = load i32, i32* %x_pos.addr, align 4
  %add54 = add nsw i32 %62, 3
  %call55 = call i32 @iClip3(i32 0, i32 %61, i32 %add54)
  %idxprom56 = sext i32 %call55 to i64
  %63 = load i16*, i16** @get_block.cur_lineY, align 8
  %arrayidx57 = getelementptr inbounds i16, i16* %63, i64 %idxprom56
  %64 = load i16, i16* %arrayidx57, align 2
  %conv58 = zext i16 %64 to i32
  %65 = load i32, i32* %j, align 4
  %idxprom59 = sext i32 %65 to i64
  %66 = load [4 x i32]*, [4 x i32]** %block.addr, align 8
  %arrayidx60 = getelementptr inbounds [4 x i32], [4 x i32]* %66, i64 %idxprom59
  %arrayidx61 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx60, i32 0, i64 3
  store i32 %conv58, i32* %arrayidx61, align 4
  br label %for.inc.62

for.inc.62:                                       ; preds = %for.body.28
  %67 = load i32, i32* %j, align 4
  %inc63 = add nsw i32 %67, 1
  store i32 %inc63, i32* %j, align 4
  br label %for.cond.26

for.end.64:                                       ; preds = %for.cond.26
  br label %if.end.993

if.else:                                          ; preds = %land.lhs.true.23, %if.end.21
  %68 = load i32, i32* %dy, align 4
  %cmp65 = icmp eq i32 %68, 0
  br i1 %cmp65, label %if.then.67, label %if.else.214

if.then.67:                                       ; preds = %if.else
  store i32 0, i32* %i, align 4
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc.132, %if.then.67
  %69 = load i32, i32* %i, align 4
  %cmp69 = icmp slt i32 %69, 4
  br i1 %cmp69, label %for.body.71, label %for.end.134

for.body.71:                                      ; preds = %for.cond.68
  %70 = load i32, i32* %maxold_x, align 4
  %71 = load i32, i32* %x_pos.addr, align 4
  %72 = load i32, i32* %i, align 4
  %add72 = add nsw i32 %71, %72
  %sub73 = sub nsw i32 %add72, 2
  %call74 = call i32 @iClip3(i32 0, i32 %70, i32 %sub73)
  store i32 %call74, i32* @get_block.ipos_m2, align 4
  %73 = load i32, i32* %maxold_x, align 4
  %74 = load i32, i32* %x_pos.addr, align 4
  %75 = load i32, i32* %i, align 4
  %add75 = add nsw i32 %74, %75
  %sub76 = sub nsw i32 %add75, 1
  %call77 = call i32 @iClip3(i32 0, i32 %73, i32 %sub76)
  store i32 %call77, i32* @get_block.ipos_m1, align 4
  %76 = load i32, i32* %maxold_x, align 4
  %77 = load i32, i32* %x_pos.addr, align 4
  %78 = load i32, i32* %i, align 4
  %add78 = add nsw i32 %77, %78
  %call79 = call i32 @iClip3(i32 0, i32 %76, i32 %add78)
  store i32 %call79, i32* @get_block.ipos, align 4
  %79 = load i32, i32* %maxold_x, align 4
  %80 = load i32, i32* %x_pos.addr, align 4
  %81 = load i32, i32* %i, align 4
  %add80 = add nsw i32 %80, %81
  %add81 = add nsw i32 %add80, 1
  %call82 = call i32 @iClip3(i32 0, i32 %79, i32 %add81)
  store i32 %call82, i32* @get_block.ipos_p1, align 4
  %82 = load i32, i32* %maxold_x, align 4
  %83 = load i32, i32* %x_pos.addr, align 4
  %84 = load i32, i32* %i, align 4
  %add83 = add nsw i32 %83, %84
  %add84 = add nsw i32 %add83, 2
  %call85 = call i32 @iClip3(i32 0, i32 %82, i32 %add84)
  store i32 %call85, i32* @get_block.ipos_p2, align 4
  %85 = load i32, i32* %maxold_x, align 4
  %86 = load i32, i32* %x_pos.addr, align 4
  %87 = load i32, i32* %i, align 4
  %add86 = add nsw i32 %86, %87
  %add87 = add nsw i32 %add86, 3
  %call88 = call i32 @iClip3(i32 0, i32 %85, i32 %add87)
  store i32 %call88, i32* @get_block.ipos_p3, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.89

for.cond.89:                                      ; preds = %for.inc.129, %for.body.71
  %88 = load i32, i32* %j, align 4
  %cmp90 = icmp slt i32 %88, 4
  br i1 %cmp90, label %for.body.92, label %for.end.131

for.body.92:                                      ; preds = %for.cond.89
  %89 = load i32, i32* %maxold_y, align 4
  %90 = load i32, i32* %y_pos.addr, align 4
  %91 = load i32, i32* %j, align 4
  %add93 = add nsw i32 %90, %91
  %call94 = call i32 @iClip3(i32 0, i32 %89, i32 %add93)
  %idxprom95 = sext i32 %call94 to i64
  %92 = load i16**, i16*** @get_block.cur_imgY, align 8
  %arrayidx96 = getelementptr inbounds i16*, i16** %92, i64 %idxprom95
  %93 = load i16*, i16** %arrayidx96, align 8
  store i16* %93, i16** @get_block.cur_lineY, align 8
  %94 = load i32, i32* @get_block.ipos_m2, align 4
  %idxprom97 = sext i32 %94 to i64
  %95 = load i16*, i16** @get_block.cur_lineY, align 8
  %arrayidx98 = getelementptr inbounds i16, i16* %95, i64 %idxprom97
  %96 = load i16, i16* %arrayidx98, align 2
  %conv99 = zext i16 %96 to i32
  %97 = load i32, i32* @get_block.ipos_p3, align 4
  %idxprom100 = sext i32 %97 to i64
  %98 = load i16*, i16** @get_block.cur_lineY, align 8
  %arrayidx101 = getelementptr inbounds i16, i16* %98, i64 %idxprom100
  %99 = load i16, i16* %arrayidx101, align 2
  %conv102 = zext i16 %99 to i32
  %add103 = add nsw i32 %conv99, %conv102
  %100 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @get_block.COEF, i32 0, i64 0), align 4
  %mul = mul nsw i32 %add103, %100
  store i32 %mul, i32* %result, align 4
  %101 = load i32, i32* @get_block.ipos_m1, align 4
  %idxprom104 = sext i32 %101 to i64
  %102 = load i16*, i16** @get_block.cur_lineY, align 8
  %arrayidx105 = getelementptr inbounds i16, i16* %102, i64 %idxprom104
  %103 = load i16, i16* %arrayidx105, align 2
  %conv106 = zext i16 %103 to i32
  %104 = load i32, i32* @get_block.ipos_p2, align 4
  %idxprom107 = sext i32 %104 to i64
  %105 = load i16*, i16** @get_block.cur_lineY, align 8
  %arrayidx108 = getelementptr inbounds i16, i16* %105, i64 %idxprom107
  %106 = load i16, i16* %arrayidx108, align 2
  %conv109 = zext i16 %106 to i32
  %add110 = add nsw i32 %conv106, %conv109
  %107 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @get_block.COEF, i32 0, i64 1), align 4
  %mul111 = mul nsw i32 %add110, %107
  %108 = load i32, i32* %result, align 4
  %add112 = add nsw i32 %108, %mul111
  store i32 %add112, i32* %result, align 4
  %109 = load i32, i32* @get_block.ipos, align 4
  %idxprom113 = sext i32 %109 to i64
  %110 = load i16*, i16** @get_block.cur_lineY, align 8
  %arrayidx114 = getelementptr inbounds i16, i16* %110, i64 %idxprom113
  %111 = load i16, i16* %arrayidx114, align 2
  %conv115 = zext i16 %111 to i32
  %112 = load i32, i32* @get_block.ipos_p1, align 4
  %idxprom116 = sext i32 %112 to i64
  %113 = load i16*, i16** @get_block.cur_lineY, align 8
  %arrayidx117 = getelementptr inbounds i16, i16* %113, i64 %idxprom116
  %114 = load i16, i16* %arrayidx117, align 2
  %conv118 = zext i16 %114 to i32
  %add119 = add nsw i32 %conv115, %conv118
  %115 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @get_block.COEF, i32 0, i64 2), align 4
  %mul120 = mul nsw i32 %add119, %115
  %116 = load i32, i32* %result, align 4
  %add121 = add nsw i32 %116, %mul120
  store i32 %add121, i32* %result, align 4
  %117 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %max_imgpel_value = getelementptr inbounds %struct.img_par, %struct.img_par* %117, i32 0, i32 107
  %118 = load i32, i32* %max_imgpel_value, align 4
  %119 = load i32, i32* %result, align 4
  %add122 = add nsw i32 %119, 16
  %shr123 = ashr i32 %add122, 5
  %call124 = call i32 @iClip1(i32 %118, i32 %shr123)
  %120 = load i32, i32* %i, align 4
  %idxprom125 = sext i32 %120 to i64
  %121 = load i32, i32* %j, align 4
  %idxprom126 = sext i32 %121 to i64
  %122 = load [4 x i32]*, [4 x i32]** %block.addr, align 8
  %arrayidx127 = getelementptr inbounds [4 x i32], [4 x i32]* %122, i64 %idxprom126
  %arrayidx128 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx127, i32 0, i64 %idxprom125
  store i32 %call124, i32* %arrayidx128, align 4
  br label %for.inc.129

for.inc.129:                                      ; preds = %for.body.92
  %123 = load i32, i32* %j, align 4
  %inc130 = add nsw i32 %123, 1
  store i32 %inc130, i32* %j, align 4
  br label %for.cond.89

for.end.131:                                      ; preds = %for.cond.89
  br label %for.inc.132

for.inc.132:                                      ; preds = %for.end.131
  %124 = load i32, i32* %i, align 4
  %inc133 = add nsw i32 %124, 1
  store i32 %inc133, i32* %i, align 4
  br label %for.cond.68

for.end.134:                                      ; preds = %for.cond.68
  %125 = load i32, i32* %dx, align 4
  %and135 = and i32 %125, 1
  %cmp136 = icmp eq i32 %and135, 1
  br i1 %cmp136, label %if.then.138, label %if.end.213

if.then.138:                                      ; preds = %for.end.134
  store i32 0, i32* %j, align 4
  br label %for.cond.139

for.cond.139:                                     ; preds = %for.inc.210, %if.then.138
  %126 = load i32, i32* %j, align 4
  %cmp140 = icmp slt i32 %126, 4
  br i1 %cmp140, label %for.body.142, label %for.end.212

for.body.142:                                     ; preds = %for.cond.139
  %127 = load i32, i32* %maxold_y, align 4
  %128 = load i32, i32* %y_pos.addr, align 4
  %129 = load i32, i32* %j, align 4
  %add143 = add nsw i32 %128, %129
  %call144 = call i32 @iClip3(i32 0, i32 %127, i32 %add143)
  %idxprom145 = sext i32 %call144 to i64
  %130 = load i16**, i16*** @get_block.cur_imgY, align 8
  %arrayidx146 = getelementptr inbounds i16*, i16** %130, i64 %idxprom145
  %131 = load i16*, i16** %arrayidx146, align 8
  store i16* %131, i16** @get_block.cur_lineY, align 8
  %132 = load i32, i32* %j, align 4
  %idxprom147 = sext i32 %132 to i64
  %133 = load [4 x i32]*, [4 x i32]** %block.addr, align 8
  %arrayidx148 = getelementptr inbounds [4 x i32], [4 x i32]* %133, i64 %idxprom147
  %arrayidx149 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx148, i32 0, i64 0
  %134 = load i32, i32* %arrayidx149, align 4
  %135 = load i32, i32* %maxold_x, align 4
  %136 = load i32, i32* %x_pos.addr, align 4
  %137 = load i32, i32* %dx, align 4
  %shr150 = ashr i32 %137, 1
  %add151 = add nsw i32 %136, %shr150
  %call152 = call i32 @iClip3(i32 0, i32 %135, i32 %add151)
  %idxprom153 = sext i32 %call152 to i64
  %138 = load i16*, i16** @get_block.cur_lineY, align 8
  %arrayidx154 = getelementptr inbounds i16, i16* %138, i64 %idxprom153
  %139 = load i16, i16* %arrayidx154, align 2
  %conv155 = zext i16 %139 to i32
  %add156 = add nsw i32 %134, %conv155
  %add157 = add nsw i32 %add156, 1
  %shr158 = ashr i32 %add157, 1
  %140 = load i32, i32* %j, align 4
  %idxprom159 = sext i32 %140 to i64
  %141 = load [4 x i32]*, [4 x i32]** %block.addr, align 8
  %arrayidx160 = getelementptr inbounds [4 x i32], [4 x i32]* %141, i64 %idxprom159
  %arrayidx161 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx160, i32 0, i64 0
  store i32 %shr158, i32* %arrayidx161, align 4
  %142 = load i32, i32* %j, align 4
  %idxprom162 = sext i32 %142 to i64
  %143 = load [4 x i32]*, [4 x i32]** %block.addr, align 8
  %arrayidx163 = getelementptr inbounds [4 x i32], [4 x i32]* %143, i64 %idxprom162
  %arrayidx164 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx163, i32 0, i64 1
  %144 = load i32, i32* %arrayidx164, align 4
  %145 = load i32, i32* %maxold_x, align 4
  %146 = load i32, i32* %x_pos.addr, align 4
  %add165 = add nsw i32 %146, 1
  %147 = load i32, i32* %dx, align 4
  %shr166 = ashr i32 %147, 1
  %add167 = add nsw i32 %add165, %shr166
  %call168 = call i32 @iClip3(i32 0, i32 %145, i32 %add167)
  %idxprom169 = sext i32 %call168 to i64
  %148 = load i16*, i16** @get_block.cur_lineY, align 8
  %arrayidx170 = getelementptr inbounds i16, i16* %148, i64 %idxprom169
  %149 = load i16, i16* %arrayidx170, align 2
  %conv171 = zext i16 %149 to i32
  %add172 = add nsw i32 %144, %conv171
  %add173 = add nsw i32 %add172, 1
  %shr174 = ashr i32 %add173, 1
  %150 = load i32, i32* %j, align 4
  %idxprom175 = sext i32 %150 to i64
  %151 = load [4 x i32]*, [4 x i32]** %block.addr, align 8
  %arrayidx176 = getelementptr inbounds [4 x i32], [4 x i32]* %151, i64 %idxprom175
  %arrayidx177 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx176, i32 0, i64 1
  store i32 %shr174, i32* %arrayidx177, align 4
  %152 = load i32, i32* %j, align 4
  %idxprom178 = sext i32 %152 to i64
  %153 = load [4 x i32]*, [4 x i32]** %block.addr, align 8
  %arrayidx179 = getelementptr inbounds [4 x i32], [4 x i32]* %153, i64 %idxprom178
  %arrayidx180 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx179, i32 0, i64 2
  %154 = load i32, i32* %arrayidx180, align 4
  %155 = load i32, i32* %maxold_x, align 4
  %156 = load i32, i32* %x_pos.addr, align 4
  %add181 = add nsw i32 %156, 2
  %157 = load i32, i32* %dx, align 4
  %shr182 = ashr i32 %157, 1
  %add183 = add nsw i32 %add181, %shr182
  %call184 = call i32 @iClip3(i32 0, i32 %155, i32 %add183)
  %idxprom185 = sext i32 %call184 to i64
  %158 = load i16*, i16** @get_block.cur_lineY, align 8
  %arrayidx186 = getelementptr inbounds i16, i16* %158, i64 %idxprom185
  %159 = load i16, i16* %arrayidx186, align 2
  %conv187 = zext i16 %159 to i32
  %add188 = add nsw i32 %154, %conv187
  %add189 = add nsw i32 %add188, 1
  %shr190 = ashr i32 %add189, 1
  %160 = load i32, i32* %j, align 4
  %idxprom191 = sext i32 %160 to i64
  %161 = load [4 x i32]*, [4 x i32]** %block.addr, align 8
  %arrayidx192 = getelementptr inbounds [4 x i32], [4 x i32]* %161, i64 %idxprom191
  %arrayidx193 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx192, i32 0, i64 2
  store i32 %shr190, i32* %arrayidx193, align 4
  %162 = load i32, i32* %j, align 4
  %idxprom194 = sext i32 %162 to i64
  %163 = load [4 x i32]*, [4 x i32]** %block.addr, align 8
  %arrayidx195 = getelementptr inbounds [4 x i32], [4 x i32]* %163, i64 %idxprom194
  %arrayidx196 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx195, i32 0, i64 3
  %164 = load i32, i32* %arrayidx196, align 4
  %165 = load i32, i32* %maxold_x, align 4
  %166 = load i32, i32* %x_pos.addr, align 4
  %add197 = add nsw i32 %166, 3
  %167 = load i32, i32* %dx, align 4
  %shr198 = ashr i32 %167, 1
  %add199 = add nsw i32 %add197, %shr198
  %call200 = call i32 @iClip3(i32 0, i32 %165, i32 %add199)
  %idxprom201 = sext i32 %call200 to i64
  %168 = load i16*, i16** @get_block.cur_lineY, align 8
  %arrayidx202 = getelementptr inbounds i16, i16* %168, i64 %idxprom201
  %169 = load i16, i16* %arrayidx202, align 2
  %conv203 = zext i16 %169 to i32
  %add204 = add nsw i32 %164, %conv203
  %add205 = add nsw i32 %add204, 1
  %shr206 = ashr i32 %add205, 1
  %170 = load i32, i32* %j, align 4
  %idxprom207 = sext i32 %170 to i64
  %171 = load [4 x i32]*, [4 x i32]** %block.addr, align 8
  %arrayidx208 = getelementptr inbounds [4 x i32], [4 x i32]* %171, i64 %idxprom207
  %arrayidx209 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx208, i32 0, i64 3
  store i32 %shr206, i32* %arrayidx209, align 4
  br label %for.inc.210

for.inc.210:                                      ; preds = %for.body.142
  %172 = load i32, i32* %j, align 4
  %inc211 = add nsw i32 %172, 1
  store i32 %inc211, i32* %j, align 4
  br label %for.cond.139

for.end.212:                                      ; preds = %for.cond.139
  br label %if.end.213

if.end.213:                                       ; preds = %for.end.212, %for.end.134
  br label %if.end.992

if.else.214:                                      ; preds = %if.else
  %173 = load i32, i32* %dx, align 4
  %cmp215 = icmp eq i32 %173, 0
  br i1 %cmp215, label %if.then.217, label %if.else.370

if.then.217:                                      ; preds = %if.else.214
  store i32 0, i32* %j, align 4
  br label %for.cond.218

for.cond.218:                                     ; preds = %for.inc.294, %if.then.217
  %174 = load i32, i32* %j, align 4
  %cmp219 = icmp slt i32 %174, 4
  br i1 %cmp219, label %for.body.221, label %for.end.296

for.body.221:                                     ; preds = %for.cond.218
  %175 = load i32, i32* %maxold_y, align 4
  %176 = load i32, i32* %y_pos.addr, align 4
  %177 = load i32, i32* %j, align 4
  %add222 = add nsw i32 %176, %177
  %sub223 = sub nsw i32 %add222, 2
  %call224 = call i32 @iClip3(i32 0, i32 %175, i32 %sub223)
  store i32 %call224, i32* @get_block.jpos_m2, align 4
  %178 = load i32, i32* %maxold_y, align 4
  %179 = load i32, i32* %y_pos.addr, align 4
  %180 = load i32, i32* %j, align 4
  %add225 = add nsw i32 %179, %180
  %sub226 = sub nsw i32 %add225, 1
  %call227 = call i32 @iClip3(i32 0, i32 %178, i32 %sub226)
  store i32 %call227, i32* @get_block.jpos_m1, align 4
  %181 = load i32, i32* %maxold_y, align 4
  %182 = load i32, i32* %y_pos.addr, align 4
  %183 = load i32, i32* %j, align 4
  %add228 = add nsw i32 %182, %183
  %call229 = call i32 @iClip3(i32 0, i32 %181, i32 %add228)
  store i32 %call229, i32* @get_block.jpos, align 4
  %184 = load i32, i32* %maxold_y, align 4
  %185 = load i32, i32* %y_pos.addr, align 4
  %186 = load i32, i32* %j, align 4
  %add230 = add nsw i32 %185, %186
  %add231 = add nsw i32 %add230, 1
  %call232 = call i32 @iClip3(i32 0, i32 %184, i32 %add231)
  store i32 %call232, i32* @get_block.jpos_p1, align 4
  %187 = load i32, i32* %maxold_y, align 4
  %188 = load i32, i32* %y_pos.addr, align 4
  %189 = load i32, i32* %j, align 4
  %add233 = add nsw i32 %188, %189
  %add234 = add nsw i32 %add233, 2
  %call235 = call i32 @iClip3(i32 0, i32 %187, i32 %add234)
  store i32 %call235, i32* @get_block.jpos_p2, align 4
  %190 = load i32, i32* %maxold_y, align 4
  %191 = load i32, i32* %y_pos.addr, align 4
  %192 = load i32, i32* %j, align 4
  %add236 = add nsw i32 %191, %192
  %add237 = add nsw i32 %add236, 3
  %call238 = call i32 @iClip3(i32 0, i32 %190, i32 %add237)
  store i32 %call238, i32* @get_block.jpos_p3, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.239

for.cond.239:                                     ; preds = %for.inc.291, %for.body.221
  %193 = load i32, i32* %i, align 4
  %cmp240 = icmp slt i32 %193, 4
  br i1 %cmp240, label %for.body.242, label %for.end.293

for.body.242:                                     ; preds = %for.cond.239
  %194 = load i32, i32* %maxold_x, align 4
  %195 = load i32, i32* %x_pos.addr, align 4
  %196 = load i32, i32* %i, align 4
  %add243 = add nsw i32 %195, %196
  %call244 = call i32 @iClip3(i32 0, i32 %194, i32 %add243)
  store i32 %call244, i32* %pres_x, align 4
  %197 = load i32, i32* %pres_x, align 4
  %idxprom245 = sext i32 %197 to i64
  %198 = load i32, i32* @get_block.jpos_m2, align 4
  %idxprom246 = sext i32 %198 to i64
  %199 = load i16**, i16*** @get_block.cur_imgY, align 8
  %arrayidx247 = getelementptr inbounds i16*, i16** %199, i64 %idxprom246
  %200 = load i16*, i16** %arrayidx247, align 8
  %arrayidx248 = getelementptr inbounds i16, i16* %200, i64 %idxprom245
  %201 = load i16, i16* %arrayidx248, align 2
  %conv249 = zext i16 %201 to i32
  %202 = load i32, i32* %pres_x, align 4
  %idxprom250 = sext i32 %202 to i64
  %203 = load i32, i32* @get_block.jpos_p3, align 4
  %idxprom251 = sext i32 %203 to i64
  %204 = load i16**, i16*** @get_block.cur_imgY, align 8
  %arrayidx252 = getelementptr inbounds i16*, i16** %204, i64 %idxprom251
  %205 = load i16*, i16** %arrayidx252, align 8
  %arrayidx253 = getelementptr inbounds i16, i16* %205, i64 %idxprom250
  %206 = load i16, i16* %arrayidx253, align 2
  %conv254 = zext i16 %206 to i32
  %add255 = add nsw i32 %conv249, %conv254
  %207 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @get_block.COEF, i32 0, i64 0), align 4
  %mul256 = mul nsw i32 %add255, %207
  store i32 %mul256, i32* %result, align 4
  %208 = load i32, i32* %pres_x, align 4
  %idxprom257 = sext i32 %208 to i64
  %209 = load i32, i32* @get_block.jpos_m1, align 4
  %idxprom258 = sext i32 %209 to i64
  %210 = load i16**, i16*** @get_block.cur_imgY, align 8
  %arrayidx259 = getelementptr inbounds i16*, i16** %210, i64 %idxprom258
  %211 = load i16*, i16** %arrayidx259, align 8
  %arrayidx260 = getelementptr inbounds i16, i16* %211, i64 %idxprom257
  %212 = load i16, i16* %arrayidx260, align 2
  %conv261 = zext i16 %212 to i32
  %213 = load i32, i32* %pres_x, align 4
  %idxprom262 = sext i32 %213 to i64
  %214 = load i32, i32* @get_block.jpos_p2, align 4
  %idxprom263 = sext i32 %214 to i64
  %215 = load i16**, i16*** @get_block.cur_imgY, align 8
  %arrayidx264 = getelementptr inbounds i16*, i16** %215, i64 %idxprom263
  %216 = load i16*, i16** %arrayidx264, align 8
  %arrayidx265 = getelementptr inbounds i16, i16* %216, i64 %idxprom262
  %217 = load i16, i16* %arrayidx265, align 2
  %conv266 = zext i16 %217 to i32
  %add267 = add nsw i32 %conv261, %conv266
  %218 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @get_block.COEF, i32 0, i64 1), align 4
  %mul268 = mul nsw i32 %add267, %218
  %219 = load i32, i32* %result, align 4
  %add269 = add nsw i32 %219, %mul268
  store i32 %add269, i32* %result, align 4
  %220 = load i32, i32* %pres_x, align 4
  %idxprom270 = sext i32 %220 to i64
  %221 = load i32, i32* @get_block.jpos, align 4
  %idxprom271 = sext i32 %221 to i64
  %222 = load i16**, i16*** @get_block.cur_imgY, align 8
  %arrayidx272 = getelementptr inbounds i16*, i16** %222, i64 %idxprom271
  %223 = load i16*, i16** %arrayidx272, align 8
  %arrayidx273 = getelementptr inbounds i16, i16* %223, i64 %idxprom270
  %224 = load i16, i16* %arrayidx273, align 2
  %conv274 = zext i16 %224 to i32
  %225 = load i32, i32* %pres_x, align 4
  %idxprom275 = sext i32 %225 to i64
  %226 = load i32, i32* @get_block.jpos_p1, align 4
  %idxprom276 = sext i32 %226 to i64
  %227 = load i16**, i16*** @get_block.cur_imgY, align 8
  %arrayidx277 = getelementptr inbounds i16*, i16** %227, i64 %idxprom276
  %228 = load i16*, i16** %arrayidx277, align 8
  %arrayidx278 = getelementptr inbounds i16, i16* %228, i64 %idxprom275
  %229 = load i16, i16* %arrayidx278, align 2
  %conv279 = zext i16 %229 to i32
  %add280 = add nsw i32 %conv274, %conv279
  %230 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @get_block.COEF, i32 0, i64 2), align 4
  %mul281 = mul nsw i32 %add280, %230
  %231 = load i32, i32* %result, align 4
  %add282 = add nsw i32 %231, %mul281
  store i32 %add282, i32* %result, align 4
  %232 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %max_imgpel_value283 = getelementptr inbounds %struct.img_par, %struct.img_par* %232, i32 0, i32 107
  %233 = load i32, i32* %max_imgpel_value283, align 4
  %234 = load i32, i32* %result, align 4
  %add284 = add nsw i32 %234, 16
  %shr285 = ashr i32 %add284, 5
  %call286 = call i32 @iClip1(i32 %233, i32 %shr285)
  %235 = load i32, i32* %i, align 4
  %idxprom287 = sext i32 %235 to i64
  %236 = load i32, i32* %j, align 4
  %idxprom288 = sext i32 %236 to i64
  %237 = load [4 x i32]*, [4 x i32]** %block.addr, align 8
  %arrayidx289 = getelementptr inbounds [4 x i32], [4 x i32]* %237, i64 %idxprom288
  %arrayidx290 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx289, i32 0, i64 %idxprom287
  store i32 %call286, i32* %arrayidx290, align 4
  br label %for.inc.291

for.inc.291:                                      ; preds = %for.body.242
  %238 = load i32, i32* %i, align 4
  %inc292 = add nsw i32 %238, 1
  store i32 %inc292, i32* %i, align 4
  br label %for.cond.239

for.end.293:                                      ; preds = %for.cond.239
  br label %for.inc.294

for.inc.294:                                      ; preds = %for.end.293
  %239 = load i32, i32* %j, align 4
  %inc295 = add nsw i32 %239, 1
  store i32 %inc295, i32* %j, align 4
  br label %for.cond.218

for.end.296:                                      ; preds = %for.cond.218
  %240 = load i32, i32* %dy, align 4
  %and297 = and i32 %240, 1
  %cmp298 = icmp eq i32 %and297, 1
  br i1 %cmp298, label %if.then.300, label %if.end.369

if.then.300:                                      ; preds = %for.end.296
  store i32 0, i32* %j, align 4
  br label %for.cond.301

for.cond.301:                                     ; preds = %for.inc.366, %if.then.300
  %241 = load i32, i32* %j, align 4
  %cmp302 = icmp slt i32 %241, 4
  br i1 %cmp302, label %for.body.304, label %for.end.368

for.body.304:                                     ; preds = %for.cond.301
  %242 = load i32, i32* %maxold_y, align 4
  %243 = load i32, i32* %y_pos.addr, align 4
  %244 = load i32, i32* %j, align 4
  %add305 = add nsw i32 %243, %244
  %245 = load i32, i32* %dy, align 4
  %shr306 = ashr i32 %245, 1
  %add307 = add nsw i32 %add305, %shr306
  %call308 = call i32 @iClip3(i32 0, i32 %242, i32 %add307)
  %idxprom309 = sext i32 %call308 to i64
  %246 = load i16**, i16*** @get_block.cur_imgY, align 8
  %arrayidx310 = getelementptr inbounds i16*, i16** %246, i64 %idxprom309
  %247 = load i16*, i16** %arrayidx310, align 8
  store i16* %247, i16** @get_block.cur_lineY, align 8
  %248 = load i32, i32* %j, align 4
  %idxprom311 = sext i32 %248 to i64
  %249 = load [4 x i32]*, [4 x i32]** %block.addr, align 8
  %arrayidx312 = getelementptr inbounds [4 x i32], [4 x i32]* %249, i64 %idxprom311
  %arrayidx313 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx312, i32 0, i64 0
  %250 = load i32, i32* %arrayidx313, align 4
  %251 = load i32, i32* %maxold_x, align 4
  %252 = load i32, i32* %x_pos.addr, align 4
  %call314 = call i32 @iClip3(i32 0, i32 %251, i32 %252)
  %idxprom315 = sext i32 %call314 to i64
  %253 = load i16*, i16** @get_block.cur_lineY, align 8
  %arrayidx316 = getelementptr inbounds i16, i16* %253, i64 %idxprom315
  %254 = load i16, i16* %arrayidx316, align 2
  %conv317 = zext i16 %254 to i32
  %add318 = add nsw i32 %250, %conv317
  %add319 = add nsw i32 %add318, 1
  %shr320 = ashr i32 %add319, 1
  %255 = load i32, i32* %j, align 4
  %idxprom321 = sext i32 %255 to i64
  %256 = load [4 x i32]*, [4 x i32]** %block.addr, align 8
  %arrayidx322 = getelementptr inbounds [4 x i32], [4 x i32]* %256, i64 %idxprom321
  %arrayidx323 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx322, i32 0, i64 0
  store i32 %shr320, i32* %arrayidx323, align 4
  %257 = load i32, i32* %j, align 4
  %idxprom324 = sext i32 %257 to i64
  %258 = load [4 x i32]*, [4 x i32]** %block.addr, align 8
  %arrayidx325 = getelementptr inbounds [4 x i32], [4 x i32]* %258, i64 %idxprom324
  %arrayidx326 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx325, i32 0, i64 1
  %259 = load i32, i32* %arrayidx326, align 4
  %260 = load i32, i32* %maxold_x, align 4
  %261 = load i32, i32* %x_pos.addr, align 4
  %add327 = add nsw i32 %261, 1
  %call328 = call i32 @iClip3(i32 0, i32 %260, i32 %add327)
  %idxprom329 = sext i32 %call328 to i64
  %262 = load i16*, i16** @get_block.cur_lineY, align 8
  %arrayidx330 = getelementptr inbounds i16, i16* %262, i64 %idxprom329
  %263 = load i16, i16* %arrayidx330, align 2
  %conv331 = zext i16 %263 to i32
  %add332 = add nsw i32 %259, %conv331
  %add333 = add nsw i32 %add332, 1
  %shr334 = ashr i32 %add333, 1
  %264 = load i32, i32* %j, align 4
  %idxprom335 = sext i32 %264 to i64
  %265 = load [4 x i32]*, [4 x i32]** %block.addr, align 8
  %arrayidx336 = getelementptr inbounds [4 x i32], [4 x i32]* %265, i64 %idxprom335
  %arrayidx337 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx336, i32 0, i64 1
  store i32 %shr334, i32* %arrayidx337, align 4
  %266 = load i32, i32* %j, align 4
  %idxprom338 = sext i32 %266 to i64
  %267 = load [4 x i32]*, [4 x i32]** %block.addr, align 8
  %arrayidx339 = getelementptr inbounds [4 x i32], [4 x i32]* %267, i64 %idxprom338
  %arrayidx340 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx339, i32 0, i64 2
  %268 = load i32, i32* %arrayidx340, align 4
  %269 = load i32, i32* %maxold_x, align 4
  %270 = load i32, i32* %x_pos.addr, align 4
  %add341 = add nsw i32 %270, 2
  %call342 = call i32 @iClip3(i32 0, i32 %269, i32 %add341)
  %idxprom343 = sext i32 %call342 to i64
  %271 = load i16*, i16** @get_block.cur_lineY, align 8
  %arrayidx344 = getelementptr inbounds i16, i16* %271, i64 %idxprom343
  %272 = load i16, i16* %arrayidx344, align 2
  %conv345 = zext i16 %272 to i32
  %add346 = add nsw i32 %268, %conv345
  %add347 = add nsw i32 %add346, 1
  %shr348 = ashr i32 %add347, 1
  %273 = load i32, i32* %j, align 4
  %idxprom349 = sext i32 %273 to i64
  %274 = load [4 x i32]*, [4 x i32]** %block.addr, align 8
  %arrayidx350 = getelementptr inbounds [4 x i32], [4 x i32]* %274, i64 %idxprom349
  %arrayidx351 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx350, i32 0, i64 2
  store i32 %shr348, i32* %arrayidx351, align 4
  %275 = load i32, i32* %j, align 4
  %idxprom352 = sext i32 %275 to i64
  %276 = load [4 x i32]*, [4 x i32]** %block.addr, align 8
  %arrayidx353 = getelementptr inbounds [4 x i32], [4 x i32]* %276, i64 %idxprom352
  %arrayidx354 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx353, i32 0, i64 3
  %277 = load i32, i32* %arrayidx354, align 4
  %278 = load i32, i32* %maxold_x, align 4
  %279 = load i32, i32* %x_pos.addr, align 4
  %add355 = add nsw i32 %279, 3
  %call356 = call i32 @iClip3(i32 0, i32 %278, i32 %add355)
  %idxprom357 = sext i32 %call356 to i64
  %280 = load i16*, i16** @get_block.cur_lineY, align 8
  %arrayidx358 = getelementptr inbounds i16, i16* %280, i64 %idxprom357
  %281 = load i16, i16* %arrayidx358, align 2
  %conv359 = zext i16 %281 to i32
  %add360 = add nsw i32 %277, %conv359
  %add361 = add nsw i32 %add360, 1
  %shr362 = ashr i32 %add361, 1
  %282 = load i32, i32* %j, align 4
  %idxprom363 = sext i32 %282 to i64
  %283 = load [4 x i32]*, [4 x i32]** %block.addr, align 8
  %arrayidx364 = getelementptr inbounds [4 x i32], [4 x i32]* %283, i64 %idxprom363
  %arrayidx365 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx364, i32 0, i64 3
  store i32 %shr362, i32* %arrayidx365, align 4
  br label %for.inc.366

for.inc.366:                                      ; preds = %for.body.304
  %284 = load i32, i32* %j, align 4
  %inc367 = add nsw i32 %284, 1
  store i32 %inc367, i32* %j, align 4
  br label %for.cond.301

for.end.368:                                      ; preds = %for.cond.301
  br label %if.end.369

if.end.369:                                       ; preds = %for.end.368, %for.end.296
  br label %if.end.991

if.else.370:                                      ; preds = %if.else.214
  %285 = load i32, i32* %dx, align 4
  %cmp371 = icmp eq i32 %285, 2
  br i1 %cmp371, label %if.then.373, label %if.else.586

if.then.373:                                      ; preds = %if.else.370
  store i32 0, i32* %i, align 4
  br label %for.cond.374

for.cond.374:                                     ; preds = %for.inc.445, %if.then.373
  %286 = load i32, i32* %i, align 4
  %cmp375 = icmp slt i32 %286, 4
  br i1 %cmp375, label %for.body.377, label %for.end.447

for.body.377:                                     ; preds = %for.cond.374
  %287 = load i32, i32* %maxold_x, align 4
  %288 = load i32, i32* %x_pos.addr, align 4
  %289 = load i32, i32* %i, align 4
  %add378 = add nsw i32 %288, %289
  %sub379 = sub nsw i32 %add378, 2
  %call380 = call i32 @iClip3(i32 0, i32 %287, i32 %sub379)
  store i32 %call380, i32* @get_block.ipos_m2, align 4
  %290 = load i32, i32* %maxold_x, align 4
  %291 = load i32, i32* %x_pos.addr, align 4
  %292 = load i32, i32* %i, align 4
  %add381 = add nsw i32 %291, %292
  %sub382 = sub nsw i32 %add381, 1
  %call383 = call i32 @iClip3(i32 0, i32 %290, i32 %sub382)
  store i32 %call383, i32* @get_block.ipos_m1, align 4
  %293 = load i32, i32* %maxold_x, align 4
  %294 = load i32, i32* %x_pos.addr, align 4
  %295 = load i32, i32* %i, align 4
  %add384 = add nsw i32 %294, %295
  %call385 = call i32 @iClip3(i32 0, i32 %293, i32 %add384)
  store i32 %call385, i32* @get_block.ipos, align 4
  %296 = load i32, i32* %maxold_x, align 4
  %297 = load i32, i32* %x_pos.addr, align 4
  %298 = load i32, i32* %i, align 4
  %add386 = add nsw i32 %297, %298
  %add387 = add nsw i32 %add386, 1
  %call388 = call i32 @iClip3(i32 0, i32 %296, i32 %add387)
  store i32 %call388, i32* @get_block.ipos_p1, align 4
  %299 = load i32, i32* %maxold_x, align 4
  %300 = load i32, i32* %x_pos.addr, align 4
  %301 = load i32, i32* %i, align 4
  %add389 = add nsw i32 %300, %301
  %add390 = add nsw i32 %add389, 2
  %call391 = call i32 @iClip3(i32 0, i32 %299, i32 %add390)
  store i32 %call391, i32* @get_block.ipos_p2, align 4
  %302 = load i32, i32* %maxold_x, align 4
  %303 = load i32, i32* %x_pos.addr, align 4
  %304 = load i32, i32* %i, align 4
  %add392 = add nsw i32 %303, %304
  %add393 = add nsw i32 %add392, 3
  %call394 = call i32 @iClip3(i32 0, i32 %302, i32 %add393)
  store i32 %call394, i32* @get_block.ipos_p3, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.395

for.cond.395:                                     ; preds = %for.inc.442, %for.body.377
  %305 = load i32, i32* %j, align 4
  %cmp396 = icmp slt i32 %305, 9
  br i1 %cmp396, label %for.body.398, label %for.end.444

for.body.398:                                     ; preds = %for.cond.395
  %306 = load i32, i32* %maxold_y, align 4
  %307 = load i32, i32* %y_pos.addr, align 4
  %308 = load i32, i32* %j, align 4
  %add399 = add nsw i32 %307, %308
  %sub400 = sub nsw i32 %add399, 2
  %call401 = call i32 @iClip3(i32 0, i32 %306, i32 %sub400)
  %idxprom402 = sext i32 %call401 to i64
  %309 = load i16**, i16*** @get_block.cur_imgY, align 8
  %arrayidx403 = getelementptr inbounds i16*, i16** %309, i64 %idxprom402
  %310 = load i16*, i16** %arrayidx403, align 8
  store i16* %310, i16** @get_block.cur_lineY, align 8
  %311 = load i32, i32* @get_block.ipos_m2, align 4
  %idxprom404 = sext i32 %311 to i64
  %312 = load i16*, i16** @get_block.cur_lineY, align 8
  %arrayidx405 = getelementptr inbounds i16, i16* %312, i64 %idxprom404
  %313 = load i16, i16* %arrayidx405, align 2
  %conv406 = zext i16 %313 to i32
  %314 = load i32, i32* @get_block.ipos_p3, align 4
  %idxprom407 = sext i32 %314 to i64
  %315 = load i16*, i16** @get_block.cur_lineY, align 8
  %arrayidx408 = getelementptr inbounds i16, i16* %315, i64 %idxprom407
  %316 = load i16, i16* %arrayidx408, align 2
  %conv409 = zext i16 %316 to i32
  %add410 = add nsw i32 %conv406, %conv409
  %317 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @get_block.COEF, i32 0, i64 0), align 4
  %mul411 = mul nsw i32 %add410, %317
  %318 = load i32, i32* %i, align 4
  %idxprom412 = sext i32 %318 to i64
  %319 = load i32, i32* %j, align 4
  %idxprom413 = sext i32 %319 to i64
  %arrayidx414 = getelementptr inbounds [9 x [9 x i32]], [9 x [9 x i32]]* %tmp_res, i32 0, i64 %idxprom413
  %arrayidx415 = getelementptr inbounds [9 x i32], [9 x i32]* %arrayidx414, i32 0, i64 %idxprom412
  store i32 %mul411, i32* %arrayidx415, align 4
  %320 = load i32, i32* @get_block.ipos_m1, align 4
  %idxprom416 = sext i32 %320 to i64
  %321 = load i16*, i16** @get_block.cur_lineY, align 8
  %arrayidx417 = getelementptr inbounds i16, i16* %321, i64 %idxprom416
  %322 = load i16, i16* %arrayidx417, align 2
  %conv418 = zext i16 %322 to i32
  %323 = load i32, i32* @get_block.ipos_p2, align 4
  %idxprom419 = sext i32 %323 to i64
  %324 = load i16*, i16** @get_block.cur_lineY, align 8
  %arrayidx420 = getelementptr inbounds i16, i16* %324, i64 %idxprom419
  %325 = load i16, i16* %arrayidx420, align 2
  %conv421 = zext i16 %325 to i32
  %add422 = add nsw i32 %conv418, %conv421
  %326 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @get_block.COEF, i32 0, i64 1), align 4
  %mul423 = mul nsw i32 %add422, %326
  %327 = load i32, i32* %i, align 4
  %idxprom424 = sext i32 %327 to i64
  %328 = load i32, i32* %j, align 4
  %idxprom425 = sext i32 %328 to i64
  %arrayidx426 = getelementptr inbounds [9 x [9 x i32]], [9 x [9 x i32]]* %tmp_res, i32 0, i64 %idxprom425
  %arrayidx427 = getelementptr inbounds [9 x i32], [9 x i32]* %arrayidx426, i32 0, i64 %idxprom424
  %329 = load i32, i32* %arrayidx427, align 4
  %add428 = add nsw i32 %329, %mul423
  store i32 %add428, i32* %arrayidx427, align 4
  %330 = load i32, i32* @get_block.ipos, align 4
  %idxprom429 = sext i32 %330 to i64
  %331 = load i16*, i16** @get_block.cur_lineY, align 8
  %arrayidx430 = getelementptr inbounds i16, i16* %331, i64 %idxprom429
  %332 = load i16, i16* %arrayidx430, align 2
  %conv431 = zext i16 %332 to i32
  %333 = load i32, i32* @get_block.ipos_p1, align 4
  %idxprom432 = sext i32 %333 to i64
  %334 = load i16*, i16** @get_block.cur_lineY, align 8
  %arrayidx433 = getelementptr inbounds i16, i16* %334, i64 %idxprom432
  %335 = load i16, i16* %arrayidx433, align 2
  %conv434 = zext i16 %335 to i32
  %add435 = add nsw i32 %conv431, %conv434
  %336 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @get_block.COEF, i32 0, i64 2), align 4
  %mul436 = mul nsw i32 %add435, %336
  %337 = load i32, i32* %i, align 4
  %idxprom437 = sext i32 %337 to i64
  %338 = load i32, i32* %j, align 4
  %idxprom438 = sext i32 %338 to i64
  %arrayidx439 = getelementptr inbounds [9 x [9 x i32]], [9 x [9 x i32]]* %tmp_res, i32 0, i64 %idxprom438
  %arrayidx440 = getelementptr inbounds [9 x i32], [9 x i32]* %arrayidx439, i32 0, i64 %idxprom437
  %339 = load i32, i32* %arrayidx440, align 4
  %add441 = add nsw i32 %339, %mul436
  store i32 %add441, i32* %arrayidx440, align 4
  br label %for.inc.442

for.inc.442:                                      ; preds = %for.body.398
  %340 = load i32, i32* %j, align 4
  %inc443 = add nsw i32 %340, 1
  store i32 %inc443, i32* %j, align 4
  br label %for.cond.395

for.end.444:                                      ; preds = %for.cond.395
  br label %for.inc.445

for.inc.445:                                      ; preds = %for.end.444
  %341 = load i32, i32* %i, align 4
  %inc446 = add nsw i32 %341, 1
  store i32 %inc446, i32* %i, align 4
  br label %for.cond.374

for.end.447:                                      ; preds = %for.cond.374
  store i32 0, i32* %j, align 4
  br label %for.cond.448

for.cond.448:                                     ; preds = %for.inc.504, %for.end.447
  %342 = load i32, i32* %j, align 4
  %cmp449 = icmp slt i32 %342, 4
  br i1 %cmp449, label %for.body.451, label %for.end.506

for.body.451:                                     ; preds = %for.cond.448
  %343 = load i32, i32* %j, align 4
  store i32 %343, i32* @get_block.jpos_m2, align 4
  %344 = load i32, i32* %j, align 4
  %add452 = add nsw i32 %344, 1
  store i32 %add452, i32* @get_block.jpos_m1, align 4
  %345 = load i32, i32* %j, align 4
  %add453 = add nsw i32 %345, 2
  store i32 %add453, i32* @get_block.jpos, align 4
  %346 = load i32, i32* %j, align 4
  %add454 = add nsw i32 %346, 3
  store i32 %add454, i32* @get_block.jpos_p1, align 4
  %347 = load i32, i32* %j, align 4
  %add455 = add nsw i32 %347, 4
  store i32 %add455, i32* @get_block.jpos_p2, align 4
  %348 = load i32, i32* %j, align 4
  %add456 = add nsw i32 %348, 5
  store i32 %add456, i32* @get_block.jpos_p3, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.457

for.cond.457:                                     ; preds = %for.inc.501, %for.body.451
  %349 = load i32, i32* %i, align 4
  %cmp458 = icmp slt i32 %349, 4
  br i1 %cmp458, label %for.body.460, label %for.end.503

for.body.460:                                     ; preds = %for.cond.457
  %350 = load i32, i32* %i, align 4
  %idxprom461 = sext i32 %350 to i64
  %351 = load i32, i32* @get_block.jpos_m2, align 4
  %idxprom462 = sext i32 %351 to i64
  %arrayidx463 = getelementptr inbounds [9 x [9 x i32]], [9 x [9 x i32]]* %tmp_res, i32 0, i64 %idxprom462
  %arrayidx464 = getelementptr inbounds [9 x i32], [9 x i32]* %arrayidx463, i32 0, i64 %idxprom461
  %352 = load i32, i32* %arrayidx464, align 4
  %353 = load i32, i32* %i, align 4
  %idxprom465 = sext i32 %353 to i64
  %354 = load i32, i32* @get_block.jpos_p3, align 4
  %idxprom466 = sext i32 %354 to i64
  %arrayidx467 = getelementptr inbounds [9 x [9 x i32]], [9 x [9 x i32]]* %tmp_res, i32 0, i64 %idxprom466
  %arrayidx468 = getelementptr inbounds [9 x i32], [9 x i32]* %arrayidx467, i32 0, i64 %idxprom465
  %355 = load i32, i32* %arrayidx468, align 4
  %add469 = add nsw i32 %352, %355
  %356 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @get_block.COEF, i32 0, i64 0), align 4
  %mul470 = mul nsw i32 %add469, %356
  store i32 %mul470, i32* %result, align 4
  %357 = load i32, i32* %i, align 4
  %idxprom471 = sext i32 %357 to i64
  %358 = load i32, i32* @get_block.jpos_m1, align 4
  %idxprom472 = sext i32 %358 to i64
  %arrayidx473 = getelementptr inbounds [9 x [9 x i32]], [9 x [9 x i32]]* %tmp_res, i32 0, i64 %idxprom472
  %arrayidx474 = getelementptr inbounds [9 x i32], [9 x i32]* %arrayidx473, i32 0, i64 %idxprom471
  %359 = load i32, i32* %arrayidx474, align 4
  %360 = load i32, i32* %i, align 4
  %idxprom475 = sext i32 %360 to i64
  %361 = load i32, i32* @get_block.jpos_p2, align 4
  %idxprom476 = sext i32 %361 to i64
  %arrayidx477 = getelementptr inbounds [9 x [9 x i32]], [9 x [9 x i32]]* %tmp_res, i32 0, i64 %idxprom476
  %arrayidx478 = getelementptr inbounds [9 x i32], [9 x i32]* %arrayidx477, i32 0, i64 %idxprom475
  %362 = load i32, i32* %arrayidx478, align 4
  %add479 = add nsw i32 %359, %362
  %363 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @get_block.COEF, i32 0, i64 1), align 4
  %mul480 = mul nsw i32 %add479, %363
  %364 = load i32, i32* %result, align 4
  %add481 = add nsw i32 %364, %mul480
  store i32 %add481, i32* %result, align 4
  %365 = load i32, i32* %i, align 4
  %idxprom482 = sext i32 %365 to i64
  %366 = load i32, i32* @get_block.jpos, align 4
  %idxprom483 = sext i32 %366 to i64
  %arrayidx484 = getelementptr inbounds [9 x [9 x i32]], [9 x [9 x i32]]* %tmp_res, i32 0, i64 %idxprom483
  %arrayidx485 = getelementptr inbounds [9 x i32], [9 x i32]* %arrayidx484, i32 0, i64 %idxprom482
  %367 = load i32, i32* %arrayidx485, align 4
  %368 = load i32, i32* %i, align 4
  %idxprom486 = sext i32 %368 to i64
  %369 = load i32, i32* @get_block.jpos_p1, align 4
  %idxprom487 = sext i32 %369 to i64
  %arrayidx488 = getelementptr inbounds [9 x [9 x i32]], [9 x [9 x i32]]* %tmp_res, i32 0, i64 %idxprom487
  %arrayidx489 = getelementptr inbounds [9 x i32], [9 x i32]* %arrayidx488, i32 0, i64 %idxprom486
  %370 = load i32, i32* %arrayidx489, align 4
  %add490 = add nsw i32 %367, %370
  %371 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @get_block.COEF, i32 0, i64 2), align 4
  %mul491 = mul nsw i32 %add490, %371
  %372 = load i32, i32* %result, align 4
  %add492 = add nsw i32 %372, %mul491
  store i32 %add492, i32* %result, align 4
  %373 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %max_imgpel_value493 = getelementptr inbounds %struct.img_par, %struct.img_par* %373, i32 0, i32 107
  %374 = load i32, i32* %max_imgpel_value493, align 4
  %375 = load i32, i32* %result, align 4
  %add494 = add nsw i32 %375, 512
  %shr495 = ashr i32 %add494, 10
  %call496 = call i32 @iClip1(i32 %374, i32 %shr495)
  %376 = load i32, i32* %i, align 4
  %idxprom497 = sext i32 %376 to i64
  %377 = load i32, i32* %j, align 4
  %idxprom498 = sext i32 %377 to i64
  %378 = load [4 x i32]*, [4 x i32]** %block.addr, align 8
  %arrayidx499 = getelementptr inbounds [4 x i32], [4 x i32]* %378, i64 %idxprom498
  %arrayidx500 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx499, i32 0, i64 %idxprom497
  store i32 %call496, i32* %arrayidx500, align 4
  br label %for.inc.501

for.inc.501:                                      ; preds = %for.body.460
  %379 = load i32, i32* %i, align 4
  %inc502 = add nsw i32 %379, 1
  store i32 %inc502, i32* %i, align 4
  br label %for.cond.457

for.end.503:                                      ; preds = %for.cond.457
  br label %for.inc.504

for.inc.504:                                      ; preds = %for.end.503
  %380 = load i32, i32* %j, align 4
  %inc505 = add nsw i32 %380, 1
  store i32 %inc505, i32* %j, align 4
  br label %for.cond.448

for.end.506:                                      ; preds = %for.cond.448
  %381 = load i32, i32* %dy, align 4
  %and507 = and i32 %381, 1
  %cmp508 = icmp eq i32 %and507, 1
  br i1 %cmp508, label %if.then.510, label %if.end.585

if.then.510:                                      ; preds = %for.end.506
  store i32 0, i32* %j, align 4
  br label %for.cond.511

for.cond.511:                                     ; preds = %for.inc.582, %if.then.510
  %382 = load i32, i32* %j, align 4
  %cmp512 = icmp slt i32 %382, 4
  br i1 %cmp512, label %for.body.514, label %for.end.584

for.body.514:                                     ; preds = %for.cond.511
  %383 = load i32, i32* %j, align 4
  %add515 = add nsw i32 %383, 2
  %384 = load i32, i32* %dy, align 4
  %shr516 = ashr i32 %384, 1
  %add517 = add nsw i32 %add515, %shr516
  store i32 %add517, i32* %pres_y, align 4
  %385 = load i32, i32* %j, align 4
  %idxprom518 = sext i32 %385 to i64
  %386 = load [4 x i32]*, [4 x i32]** %block.addr, align 8
  %arrayidx519 = getelementptr inbounds [4 x i32], [4 x i32]* %386, i64 %idxprom518
  %arrayidx520 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx519, i32 0, i64 0
  %387 = load i32, i32* %arrayidx520, align 4
  %388 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %max_imgpel_value521 = getelementptr inbounds %struct.img_par, %struct.img_par* %388, i32 0, i32 107
  %389 = load i32, i32* %max_imgpel_value521, align 4
  %390 = load i32, i32* %pres_y, align 4
  %idxprom522 = sext i32 %390 to i64
  %arrayidx523 = getelementptr inbounds [9 x [9 x i32]], [9 x [9 x i32]]* %tmp_res, i32 0, i64 %idxprom522
  %arrayidx524 = getelementptr inbounds [9 x i32], [9 x i32]* %arrayidx523, i32 0, i64 0
  %391 = load i32, i32* %arrayidx524, align 4
  %add525 = add nsw i32 %391, 16
  %shr526 = ashr i32 %add525, 5
  %call527 = call i32 @iClip1(i32 %389, i32 %shr526)
  %add528 = add nsw i32 %387, %call527
  %add529 = add nsw i32 %add528, 1
  %shr530 = ashr i32 %add529, 1
  %392 = load i32, i32* %j, align 4
  %idxprom531 = sext i32 %392 to i64
  %393 = load [4 x i32]*, [4 x i32]** %block.addr, align 8
  %arrayidx532 = getelementptr inbounds [4 x i32], [4 x i32]* %393, i64 %idxprom531
  %arrayidx533 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx532, i32 0, i64 0
  store i32 %shr530, i32* %arrayidx533, align 4
  %394 = load i32, i32* %j, align 4
  %idxprom534 = sext i32 %394 to i64
  %395 = load [4 x i32]*, [4 x i32]** %block.addr, align 8
  %arrayidx535 = getelementptr inbounds [4 x i32], [4 x i32]* %395, i64 %idxprom534
  %arrayidx536 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx535, i32 0, i64 1
  %396 = load i32, i32* %arrayidx536, align 4
  %397 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %max_imgpel_value537 = getelementptr inbounds %struct.img_par, %struct.img_par* %397, i32 0, i32 107
  %398 = load i32, i32* %max_imgpel_value537, align 4
  %399 = load i32, i32* %pres_y, align 4
  %idxprom538 = sext i32 %399 to i64
  %arrayidx539 = getelementptr inbounds [9 x [9 x i32]], [9 x [9 x i32]]* %tmp_res, i32 0, i64 %idxprom538
  %arrayidx540 = getelementptr inbounds [9 x i32], [9 x i32]* %arrayidx539, i32 0, i64 1
  %400 = load i32, i32* %arrayidx540, align 4
  %add541 = add nsw i32 %400, 16
  %shr542 = ashr i32 %add541, 5
  %call543 = call i32 @iClip1(i32 %398, i32 %shr542)
  %add544 = add nsw i32 %396, %call543
  %add545 = add nsw i32 %add544, 1
  %shr546 = ashr i32 %add545, 1
  %401 = load i32, i32* %j, align 4
  %idxprom547 = sext i32 %401 to i64
  %402 = load [4 x i32]*, [4 x i32]** %block.addr, align 8
  %arrayidx548 = getelementptr inbounds [4 x i32], [4 x i32]* %402, i64 %idxprom547
  %arrayidx549 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx548, i32 0, i64 1
  store i32 %shr546, i32* %arrayidx549, align 4
  %403 = load i32, i32* %j, align 4
  %idxprom550 = sext i32 %403 to i64
  %404 = load [4 x i32]*, [4 x i32]** %block.addr, align 8
  %arrayidx551 = getelementptr inbounds [4 x i32], [4 x i32]* %404, i64 %idxprom550
  %arrayidx552 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx551, i32 0, i64 2
  %405 = load i32, i32* %arrayidx552, align 4
  %406 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %max_imgpel_value553 = getelementptr inbounds %struct.img_par, %struct.img_par* %406, i32 0, i32 107
  %407 = load i32, i32* %max_imgpel_value553, align 4
  %408 = load i32, i32* %pres_y, align 4
  %idxprom554 = sext i32 %408 to i64
  %arrayidx555 = getelementptr inbounds [9 x [9 x i32]], [9 x [9 x i32]]* %tmp_res, i32 0, i64 %idxprom554
  %arrayidx556 = getelementptr inbounds [9 x i32], [9 x i32]* %arrayidx555, i32 0, i64 2
  %409 = load i32, i32* %arrayidx556, align 4
  %add557 = add nsw i32 %409, 16
  %shr558 = ashr i32 %add557, 5
  %call559 = call i32 @iClip1(i32 %407, i32 %shr558)
  %add560 = add nsw i32 %405, %call559
  %add561 = add nsw i32 %add560, 1
  %shr562 = ashr i32 %add561, 1
  %410 = load i32, i32* %j, align 4
  %idxprom563 = sext i32 %410 to i64
  %411 = load [4 x i32]*, [4 x i32]** %block.addr, align 8
  %arrayidx564 = getelementptr inbounds [4 x i32], [4 x i32]* %411, i64 %idxprom563
  %arrayidx565 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx564, i32 0, i64 2
  store i32 %shr562, i32* %arrayidx565, align 4
  %412 = load i32, i32* %j, align 4
  %idxprom566 = sext i32 %412 to i64
  %413 = load [4 x i32]*, [4 x i32]** %block.addr, align 8
  %arrayidx567 = getelementptr inbounds [4 x i32], [4 x i32]* %413, i64 %idxprom566
  %arrayidx568 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx567, i32 0, i64 3
  %414 = load i32, i32* %arrayidx568, align 4
  %415 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %max_imgpel_value569 = getelementptr inbounds %struct.img_par, %struct.img_par* %415, i32 0, i32 107
  %416 = load i32, i32* %max_imgpel_value569, align 4
  %417 = load i32, i32* %pres_y, align 4
  %idxprom570 = sext i32 %417 to i64
  %arrayidx571 = getelementptr inbounds [9 x [9 x i32]], [9 x [9 x i32]]* %tmp_res, i32 0, i64 %idxprom570
  %arrayidx572 = getelementptr inbounds [9 x i32], [9 x i32]* %arrayidx571, i32 0, i64 3
  %418 = load i32, i32* %arrayidx572, align 4
  %add573 = add nsw i32 %418, 16
  %shr574 = ashr i32 %add573, 5
  %call575 = call i32 @iClip1(i32 %416, i32 %shr574)
  %add576 = add nsw i32 %414, %call575
  %add577 = add nsw i32 %add576, 1
  %shr578 = ashr i32 %add577, 1
  %419 = load i32, i32* %j, align 4
  %idxprom579 = sext i32 %419 to i64
  %420 = load [4 x i32]*, [4 x i32]** %block.addr, align 8
  %arrayidx580 = getelementptr inbounds [4 x i32], [4 x i32]* %420, i64 %idxprom579
  %arrayidx581 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx580, i32 0, i64 3
  store i32 %shr578, i32* %arrayidx581, align 4
  br label %for.inc.582

for.inc.582:                                      ; preds = %for.body.514
  %421 = load i32, i32* %j, align 4
  %inc583 = add nsw i32 %421, 1
  store i32 %inc583, i32* %j, align 4
  br label %for.cond.511

for.end.584:                                      ; preds = %for.cond.511
  br label %if.end.585

if.end.585:                                       ; preds = %for.end.584, %for.end.506
  br label %if.end.990

if.else.586:                                      ; preds = %if.else.370
  %422 = load i32, i32* %dy, align 4
  %cmp587 = icmp eq i32 %422, 2
  br i1 %cmp587, label %if.then.589, label %if.else.821

if.then.589:                                      ; preds = %if.else.586
  store i32 0, i32* %j, align 4
  br label %for.cond.590

for.cond.590:                                     ; preds = %for.inc.671, %if.then.589
  %423 = load i32, i32* %j, align 4
  %cmp591 = icmp slt i32 %423, 4
  br i1 %cmp591, label %for.body.593, label %for.end.673

for.body.593:                                     ; preds = %for.cond.590
  %424 = load i32, i32* %maxold_y, align 4
  %425 = load i32, i32* %y_pos.addr, align 4
  %426 = load i32, i32* %j, align 4
  %add594 = add nsw i32 %425, %426
  %sub595 = sub nsw i32 %add594, 2
  %call596 = call i32 @iClip3(i32 0, i32 %424, i32 %sub595)
  store i32 %call596, i32* @get_block.jpos_m2, align 4
  %427 = load i32, i32* %maxold_y, align 4
  %428 = load i32, i32* %y_pos.addr, align 4
  %429 = load i32, i32* %j, align 4
  %add597 = add nsw i32 %428, %429
  %sub598 = sub nsw i32 %add597, 1
  %call599 = call i32 @iClip3(i32 0, i32 %427, i32 %sub598)
  store i32 %call599, i32* @get_block.jpos_m1, align 4
  %430 = load i32, i32* %maxold_y, align 4
  %431 = load i32, i32* %y_pos.addr, align 4
  %432 = load i32, i32* %j, align 4
  %add600 = add nsw i32 %431, %432
  %call601 = call i32 @iClip3(i32 0, i32 %430, i32 %add600)
  store i32 %call601, i32* @get_block.jpos, align 4
  %433 = load i32, i32* %maxold_y, align 4
  %434 = load i32, i32* %y_pos.addr, align 4
  %435 = load i32, i32* %j, align 4
  %add602 = add nsw i32 %434, %435
  %add603 = add nsw i32 %add602, 1
  %call604 = call i32 @iClip3(i32 0, i32 %433, i32 %add603)
  store i32 %call604, i32* @get_block.jpos_p1, align 4
  %436 = load i32, i32* %maxold_y, align 4
  %437 = load i32, i32* %y_pos.addr, align 4
  %438 = load i32, i32* %j, align 4
  %add605 = add nsw i32 %437, %438
  %add606 = add nsw i32 %add605, 2
  %call607 = call i32 @iClip3(i32 0, i32 %436, i32 %add606)
  store i32 %call607, i32* @get_block.jpos_p2, align 4
  %439 = load i32, i32* %maxold_y, align 4
  %440 = load i32, i32* %y_pos.addr, align 4
  %441 = load i32, i32* %j, align 4
  %add608 = add nsw i32 %440, %441
  %add609 = add nsw i32 %add608, 3
  %call610 = call i32 @iClip3(i32 0, i32 %439, i32 %add609)
  store i32 %call610, i32* @get_block.jpos_p3, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.611

for.cond.611:                                     ; preds = %for.inc.668, %for.body.593
  %442 = load i32, i32* %i, align 4
  %cmp612 = icmp slt i32 %442, 9
  br i1 %cmp612, label %for.body.614, label %for.end.670

for.body.614:                                     ; preds = %for.cond.611
  %443 = load i32, i32* %maxold_x, align 4
  %444 = load i32, i32* %x_pos.addr, align 4
  %445 = load i32, i32* %i, align 4
  %add615 = add nsw i32 %444, %445
  %sub616 = sub nsw i32 %add615, 2
  %call617 = call i32 @iClip3(i32 0, i32 %443, i32 %sub616)
  store i32 %call617, i32* %pres_x, align 4
  %446 = load i32, i32* %pres_x, align 4
  %idxprom618 = sext i32 %446 to i64
  %447 = load i32, i32* @get_block.jpos_m2, align 4
  %idxprom619 = sext i32 %447 to i64
  %448 = load i16**, i16*** @get_block.cur_imgY, align 8
  %arrayidx620 = getelementptr inbounds i16*, i16** %448, i64 %idxprom619
  %449 = load i16*, i16** %arrayidx620, align 8
  %arrayidx621 = getelementptr inbounds i16, i16* %449, i64 %idxprom618
  %450 = load i16, i16* %arrayidx621, align 2
  %conv622 = zext i16 %450 to i32
  %451 = load i32, i32* %pres_x, align 4
  %idxprom623 = sext i32 %451 to i64
  %452 = load i32, i32* @get_block.jpos_p3, align 4
  %idxprom624 = sext i32 %452 to i64
  %453 = load i16**, i16*** @get_block.cur_imgY, align 8
  %arrayidx625 = getelementptr inbounds i16*, i16** %453, i64 %idxprom624
  %454 = load i16*, i16** %arrayidx625, align 8
  %arrayidx626 = getelementptr inbounds i16, i16* %454, i64 %idxprom623
  %455 = load i16, i16* %arrayidx626, align 2
  %conv627 = zext i16 %455 to i32
  %add628 = add nsw i32 %conv622, %conv627
  %456 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @get_block.COEF, i32 0, i64 0), align 4
  %mul629 = mul nsw i32 %add628, %456
  %457 = load i32, i32* %i, align 4
  %idxprom630 = sext i32 %457 to i64
  %458 = load i32, i32* %j, align 4
  %idxprom631 = sext i32 %458 to i64
  %arrayidx632 = getelementptr inbounds [9 x [9 x i32]], [9 x [9 x i32]]* %tmp_res, i32 0, i64 %idxprom631
  %arrayidx633 = getelementptr inbounds [9 x i32], [9 x i32]* %arrayidx632, i32 0, i64 %idxprom630
  store i32 %mul629, i32* %arrayidx633, align 4
  %459 = load i32, i32* %pres_x, align 4
  %idxprom634 = sext i32 %459 to i64
  %460 = load i32, i32* @get_block.jpos_m1, align 4
  %idxprom635 = sext i32 %460 to i64
  %461 = load i16**, i16*** @get_block.cur_imgY, align 8
  %arrayidx636 = getelementptr inbounds i16*, i16** %461, i64 %idxprom635
  %462 = load i16*, i16** %arrayidx636, align 8
  %arrayidx637 = getelementptr inbounds i16, i16* %462, i64 %idxprom634
  %463 = load i16, i16* %arrayidx637, align 2
  %conv638 = zext i16 %463 to i32
  %464 = load i32, i32* %pres_x, align 4
  %idxprom639 = sext i32 %464 to i64
  %465 = load i32, i32* @get_block.jpos_p2, align 4
  %idxprom640 = sext i32 %465 to i64
  %466 = load i16**, i16*** @get_block.cur_imgY, align 8
  %arrayidx641 = getelementptr inbounds i16*, i16** %466, i64 %idxprom640
  %467 = load i16*, i16** %arrayidx641, align 8
  %arrayidx642 = getelementptr inbounds i16, i16* %467, i64 %idxprom639
  %468 = load i16, i16* %arrayidx642, align 2
  %conv643 = zext i16 %468 to i32
  %add644 = add nsw i32 %conv638, %conv643
  %469 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @get_block.COEF, i32 0, i64 1), align 4
  %mul645 = mul nsw i32 %add644, %469
  %470 = load i32, i32* %i, align 4
  %idxprom646 = sext i32 %470 to i64
  %471 = load i32, i32* %j, align 4
  %idxprom647 = sext i32 %471 to i64
  %arrayidx648 = getelementptr inbounds [9 x [9 x i32]], [9 x [9 x i32]]* %tmp_res, i32 0, i64 %idxprom647
  %arrayidx649 = getelementptr inbounds [9 x i32], [9 x i32]* %arrayidx648, i32 0, i64 %idxprom646
  %472 = load i32, i32* %arrayidx649, align 4
  %add650 = add nsw i32 %472, %mul645
  store i32 %add650, i32* %arrayidx649, align 4
  %473 = load i32, i32* %pres_x, align 4
  %idxprom651 = sext i32 %473 to i64
  %474 = load i32, i32* @get_block.jpos, align 4
  %idxprom652 = sext i32 %474 to i64
  %475 = load i16**, i16*** @get_block.cur_imgY, align 8
  %arrayidx653 = getelementptr inbounds i16*, i16** %475, i64 %idxprom652
  %476 = load i16*, i16** %arrayidx653, align 8
  %arrayidx654 = getelementptr inbounds i16, i16* %476, i64 %idxprom651
  %477 = load i16, i16* %arrayidx654, align 2
  %conv655 = zext i16 %477 to i32
  %478 = load i32, i32* %pres_x, align 4
  %idxprom656 = sext i32 %478 to i64
  %479 = load i32, i32* @get_block.jpos_p1, align 4
  %idxprom657 = sext i32 %479 to i64
  %480 = load i16**, i16*** @get_block.cur_imgY, align 8
  %arrayidx658 = getelementptr inbounds i16*, i16** %480, i64 %idxprom657
  %481 = load i16*, i16** %arrayidx658, align 8
  %arrayidx659 = getelementptr inbounds i16, i16* %481, i64 %idxprom656
  %482 = load i16, i16* %arrayidx659, align 2
  %conv660 = zext i16 %482 to i32
  %add661 = add nsw i32 %conv655, %conv660
  %483 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @get_block.COEF, i32 0, i64 2), align 4
  %mul662 = mul nsw i32 %add661, %483
  %484 = load i32, i32* %i, align 4
  %idxprom663 = sext i32 %484 to i64
  %485 = load i32, i32* %j, align 4
  %idxprom664 = sext i32 %485 to i64
  %arrayidx665 = getelementptr inbounds [9 x [9 x i32]], [9 x [9 x i32]]* %tmp_res, i32 0, i64 %idxprom664
  %arrayidx666 = getelementptr inbounds [9 x i32], [9 x i32]* %arrayidx665, i32 0, i64 %idxprom663
  %486 = load i32, i32* %arrayidx666, align 4
  %add667 = add nsw i32 %486, %mul662
  store i32 %add667, i32* %arrayidx666, align 4
  br label %for.inc.668

for.inc.668:                                      ; preds = %for.body.614
  %487 = load i32, i32* %i, align 4
  %inc669 = add nsw i32 %487, 1
  store i32 %inc669, i32* %i, align 4
  br label %for.cond.611

for.end.670:                                      ; preds = %for.cond.611
  br label %for.inc.671

for.inc.671:                                      ; preds = %for.end.670
  %488 = load i32, i32* %j, align 4
  %inc672 = add nsw i32 %488, 1
  store i32 %inc672, i32* %j, align 4
  br label %for.cond.590

for.end.673:                                      ; preds = %for.cond.590
  store i32 0, i32* %j, align 4
  br label %for.cond.674

for.cond.674:                                     ; preds = %for.inc.730, %for.end.673
  %489 = load i32, i32* %j, align 4
  %cmp675 = icmp slt i32 %489, 4
  br i1 %cmp675, label %for.body.677, label %for.end.732

for.body.677:                                     ; preds = %for.cond.674
  store i32 0, i32* %i, align 4
  br label %for.cond.678

for.cond.678:                                     ; preds = %for.inc.727, %for.body.677
  %490 = load i32, i32* %i, align 4
  %cmp679 = icmp slt i32 %490, 4
  br i1 %cmp679, label %for.body.681, label %for.end.729

for.body.681:                                     ; preds = %for.cond.678
  %491 = load i32, i32* %i, align 4
  %idxprom682 = sext i32 %491 to i64
  %492 = load i32, i32* %j, align 4
  %idxprom683 = sext i32 %492 to i64
  %arrayidx684 = getelementptr inbounds [9 x [9 x i32]], [9 x [9 x i32]]* %tmp_res, i32 0, i64 %idxprom683
  %arrayidx685 = getelementptr inbounds [9 x i32], [9 x i32]* %arrayidx684, i32 0, i64 %idxprom682
  %493 = load i32, i32* %arrayidx685, align 4
  %494 = load i32, i32* %i, align 4
  %add686 = add nsw i32 %494, 5
  %idxprom687 = sext i32 %add686 to i64
  %495 = load i32, i32* %j, align 4
  %idxprom688 = sext i32 %495 to i64
  %arrayidx689 = getelementptr inbounds [9 x [9 x i32]], [9 x [9 x i32]]* %tmp_res, i32 0, i64 %idxprom688
  %arrayidx690 = getelementptr inbounds [9 x i32], [9 x i32]* %arrayidx689, i32 0, i64 %idxprom687
  %496 = load i32, i32* %arrayidx690, align 4
  %add691 = add nsw i32 %493, %496
  %497 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @get_block.COEF, i32 0, i64 0), align 4
  %mul692 = mul nsw i32 %add691, %497
  store i32 %mul692, i32* %result, align 4
  %498 = load i32, i32* %i, align 4
  %add693 = add nsw i32 %498, 1
  %idxprom694 = sext i32 %add693 to i64
  %499 = load i32, i32* %j, align 4
  %idxprom695 = sext i32 %499 to i64
  %arrayidx696 = getelementptr inbounds [9 x [9 x i32]], [9 x [9 x i32]]* %tmp_res, i32 0, i64 %idxprom695
  %arrayidx697 = getelementptr inbounds [9 x i32], [9 x i32]* %arrayidx696, i32 0, i64 %idxprom694
  %500 = load i32, i32* %arrayidx697, align 4
  %501 = load i32, i32* %i, align 4
  %add698 = add nsw i32 %501, 4
  %idxprom699 = sext i32 %add698 to i64
  %502 = load i32, i32* %j, align 4
  %idxprom700 = sext i32 %502 to i64
  %arrayidx701 = getelementptr inbounds [9 x [9 x i32]], [9 x [9 x i32]]* %tmp_res, i32 0, i64 %idxprom700
  %arrayidx702 = getelementptr inbounds [9 x i32], [9 x i32]* %arrayidx701, i32 0, i64 %idxprom699
  %503 = load i32, i32* %arrayidx702, align 4
  %add703 = add nsw i32 %500, %503
  %504 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @get_block.COEF, i32 0, i64 1), align 4
  %mul704 = mul nsw i32 %add703, %504
  %505 = load i32, i32* %result, align 4
  %add705 = add nsw i32 %505, %mul704
  store i32 %add705, i32* %result, align 4
  %506 = load i32, i32* %i, align 4
  %add706 = add nsw i32 %506, 2
  %idxprom707 = sext i32 %add706 to i64
  %507 = load i32, i32* %j, align 4
  %idxprom708 = sext i32 %507 to i64
  %arrayidx709 = getelementptr inbounds [9 x [9 x i32]], [9 x [9 x i32]]* %tmp_res, i32 0, i64 %idxprom708
  %arrayidx710 = getelementptr inbounds [9 x i32], [9 x i32]* %arrayidx709, i32 0, i64 %idxprom707
  %508 = load i32, i32* %arrayidx710, align 4
  %509 = load i32, i32* %i, align 4
  %add711 = add nsw i32 %509, 3
  %idxprom712 = sext i32 %add711 to i64
  %510 = load i32, i32* %j, align 4
  %idxprom713 = sext i32 %510 to i64
  %arrayidx714 = getelementptr inbounds [9 x [9 x i32]], [9 x [9 x i32]]* %tmp_res, i32 0, i64 %idxprom713
  %arrayidx715 = getelementptr inbounds [9 x i32], [9 x i32]* %arrayidx714, i32 0, i64 %idxprom712
  %511 = load i32, i32* %arrayidx715, align 4
  %add716 = add nsw i32 %508, %511
  %512 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @get_block.COEF, i32 0, i64 2), align 4
  %mul717 = mul nsw i32 %add716, %512
  %513 = load i32, i32* %result, align 4
  %add718 = add nsw i32 %513, %mul717
  store i32 %add718, i32* %result, align 4
  %514 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %max_imgpel_value719 = getelementptr inbounds %struct.img_par, %struct.img_par* %514, i32 0, i32 107
  %515 = load i32, i32* %max_imgpel_value719, align 4
  %516 = load i32, i32* %result, align 4
  %add720 = add nsw i32 %516, 512
  %shr721 = ashr i32 %add720, 10
  %call722 = call i32 @iClip1(i32 %515, i32 %shr721)
  %517 = load i32, i32* %i, align 4
  %idxprom723 = sext i32 %517 to i64
  %518 = load i32, i32* %j, align 4
  %idxprom724 = sext i32 %518 to i64
  %519 = load [4 x i32]*, [4 x i32]** %block.addr, align 8
  %arrayidx725 = getelementptr inbounds [4 x i32], [4 x i32]* %519, i64 %idxprom724
  %arrayidx726 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx725, i32 0, i64 %idxprom723
  store i32 %call722, i32* %arrayidx726, align 4
  br label %for.inc.727

for.inc.727:                                      ; preds = %for.body.681
  %520 = load i32, i32* %i, align 4
  %inc728 = add nsw i32 %520, 1
  store i32 %inc728, i32* %i, align 4
  br label %for.cond.678

for.end.729:                                      ; preds = %for.cond.678
  br label %for.inc.730

for.inc.730:                                      ; preds = %for.end.729
  %521 = load i32, i32* %j, align 4
  %inc731 = add nsw i32 %521, 1
  store i32 %inc731, i32* %j, align 4
  br label %for.cond.674

for.end.732:                                      ; preds = %for.cond.674
  %522 = load i32, i32* %dx, align 4
  %and733 = and i32 %522, 1
  %cmp734 = icmp eq i32 %and733, 1
  br i1 %cmp734, label %if.then.736, label %if.end.820

if.then.736:                                      ; preds = %for.end.732
  store i32 0, i32* %j, align 4
  br label %for.cond.737

for.cond.737:                                     ; preds = %for.inc.817, %if.then.736
  %523 = load i32, i32* %j, align 4
  %cmp738 = icmp slt i32 %523, 4
  br i1 %cmp738, label %for.body.740, label %for.end.819

for.body.740:                                     ; preds = %for.cond.737
  %524 = load i32, i32* %j, align 4
  %idxprom741 = sext i32 %524 to i64
  %525 = load [4 x i32]*, [4 x i32]** %block.addr, align 8
  %arrayidx742 = getelementptr inbounds [4 x i32], [4 x i32]* %525, i64 %idxprom741
  %arrayidx743 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx742, i32 0, i64 0
  %526 = load i32, i32* %arrayidx743, align 4
  %527 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %max_imgpel_value744 = getelementptr inbounds %struct.img_par, %struct.img_par* %527, i32 0, i32 107
  %528 = load i32, i32* %max_imgpel_value744, align 4
  %529 = load i32, i32* %dx, align 4
  %shr745 = ashr i32 %529, 1
  %add746 = add nsw i32 2, %shr745
  %idxprom747 = sext i32 %add746 to i64
  %530 = load i32, i32* %j, align 4
  %idxprom748 = sext i32 %530 to i64
  %arrayidx749 = getelementptr inbounds [9 x [9 x i32]], [9 x [9 x i32]]* %tmp_res, i32 0, i64 %idxprom748
  %arrayidx750 = getelementptr inbounds [9 x i32], [9 x i32]* %arrayidx749, i32 0, i64 %idxprom747
  %531 = load i32, i32* %arrayidx750, align 4
  %add751 = add nsw i32 %531, 16
  %shr752 = ashr i32 %add751, 5
  %call753 = call i32 @iClip1(i32 %528, i32 %shr752)
  %add754 = add nsw i32 %526, %call753
  %add755 = add nsw i32 %add754, 1
  %shr756 = ashr i32 %add755, 1
  %532 = load i32, i32* %j, align 4
  %idxprom757 = sext i32 %532 to i64
  %533 = load [4 x i32]*, [4 x i32]** %block.addr, align 8
  %arrayidx758 = getelementptr inbounds [4 x i32], [4 x i32]* %533, i64 %idxprom757
  %arrayidx759 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx758, i32 0, i64 0
  store i32 %shr756, i32* %arrayidx759, align 4
  %534 = load i32, i32* %j, align 4
  %idxprom760 = sext i32 %534 to i64
  %535 = load [4 x i32]*, [4 x i32]** %block.addr, align 8
  %arrayidx761 = getelementptr inbounds [4 x i32], [4 x i32]* %535, i64 %idxprom760
  %arrayidx762 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx761, i32 0, i64 1
  %536 = load i32, i32* %arrayidx762, align 4
  %537 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %max_imgpel_value763 = getelementptr inbounds %struct.img_par, %struct.img_par* %537, i32 0, i32 107
  %538 = load i32, i32* %max_imgpel_value763, align 4
  %539 = load i32, i32* %dx, align 4
  %shr764 = ashr i32 %539, 1
  %add765 = add nsw i32 3, %shr764
  %idxprom766 = sext i32 %add765 to i64
  %540 = load i32, i32* %j, align 4
  %idxprom767 = sext i32 %540 to i64
  %arrayidx768 = getelementptr inbounds [9 x [9 x i32]], [9 x [9 x i32]]* %tmp_res, i32 0, i64 %idxprom767
  %arrayidx769 = getelementptr inbounds [9 x i32], [9 x i32]* %arrayidx768, i32 0, i64 %idxprom766
  %541 = load i32, i32* %arrayidx769, align 4
  %add770 = add nsw i32 %541, 16
  %shr771 = ashr i32 %add770, 5
  %call772 = call i32 @iClip1(i32 %538, i32 %shr771)
  %add773 = add nsw i32 %536, %call772
  %add774 = add nsw i32 %add773, 1
  %shr775 = ashr i32 %add774, 1
  %542 = load i32, i32* %j, align 4
  %idxprom776 = sext i32 %542 to i64
  %543 = load [4 x i32]*, [4 x i32]** %block.addr, align 8
  %arrayidx777 = getelementptr inbounds [4 x i32], [4 x i32]* %543, i64 %idxprom776
  %arrayidx778 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx777, i32 0, i64 1
  store i32 %shr775, i32* %arrayidx778, align 4
  %544 = load i32, i32* %j, align 4
  %idxprom779 = sext i32 %544 to i64
  %545 = load [4 x i32]*, [4 x i32]** %block.addr, align 8
  %arrayidx780 = getelementptr inbounds [4 x i32], [4 x i32]* %545, i64 %idxprom779
  %arrayidx781 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx780, i32 0, i64 2
  %546 = load i32, i32* %arrayidx781, align 4
  %547 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %max_imgpel_value782 = getelementptr inbounds %struct.img_par, %struct.img_par* %547, i32 0, i32 107
  %548 = load i32, i32* %max_imgpel_value782, align 4
  %549 = load i32, i32* %dx, align 4
  %shr783 = ashr i32 %549, 1
  %add784 = add nsw i32 4, %shr783
  %idxprom785 = sext i32 %add784 to i64
  %550 = load i32, i32* %j, align 4
  %idxprom786 = sext i32 %550 to i64
  %arrayidx787 = getelementptr inbounds [9 x [9 x i32]], [9 x [9 x i32]]* %tmp_res, i32 0, i64 %idxprom786
  %arrayidx788 = getelementptr inbounds [9 x i32], [9 x i32]* %arrayidx787, i32 0, i64 %idxprom785
  %551 = load i32, i32* %arrayidx788, align 4
  %add789 = add nsw i32 %551, 16
  %shr790 = ashr i32 %add789, 5
  %call791 = call i32 @iClip1(i32 %548, i32 %shr790)
  %add792 = add nsw i32 %546, %call791
  %add793 = add nsw i32 %add792, 1
  %shr794 = ashr i32 %add793, 1
  %552 = load i32, i32* %j, align 4
  %idxprom795 = sext i32 %552 to i64
  %553 = load [4 x i32]*, [4 x i32]** %block.addr, align 8
  %arrayidx796 = getelementptr inbounds [4 x i32], [4 x i32]* %553, i64 %idxprom795
  %arrayidx797 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx796, i32 0, i64 2
  store i32 %shr794, i32* %arrayidx797, align 4
  %554 = load i32, i32* %j, align 4
  %idxprom798 = sext i32 %554 to i64
  %555 = load [4 x i32]*, [4 x i32]** %block.addr, align 8
  %arrayidx799 = getelementptr inbounds [4 x i32], [4 x i32]* %555, i64 %idxprom798
  %arrayidx800 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx799, i32 0, i64 3
  %556 = load i32, i32* %arrayidx800, align 4
  %557 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %max_imgpel_value801 = getelementptr inbounds %struct.img_par, %struct.img_par* %557, i32 0, i32 107
  %558 = load i32, i32* %max_imgpel_value801, align 4
  %559 = load i32, i32* %dx, align 4
  %shr802 = ashr i32 %559, 1
  %add803 = add nsw i32 5, %shr802
  %idxprom804 = sext i32 %add803 to i64
  %560 = load i32, i32* %j, align 4
  %idxprom805 = sext i32 %560 to i64
  %arrayidx806 = getelementptr inbounds [9 x [9 x i32]], [9 x [9 x i32]]* %tmp_res, i32 0, i64 %idxprom805
  %arrayidx807 = getelementptr inbounds [9 x i32], [9 x i32]* %arrayidx806, i32 0, i64 %idxprom804
  %561 = load i32, i32* %arrayidx807, align 4
  %add808 = add nsw i32 %561, 16
  %shr809 = ashr i32 %add808, 5
  %call810 = call i32 @iClip1(i32 %558, i32 %shr809)
  %add811 = add nsw i32 %556, %call810
  %add812 = add nsw i32 %add811, 1
  %shr813 = ashr i32 %add812, 1
  %562 = load i32, i32* %j, align 4
  %idxprom814 = sext i32 %562 to i64
  %563 = load [4 x i32]*, [4 x i32]** %block.addr, align 8
  %arrayidx815 = getelementptr inbounds [4 x i32], [4 x i32]* %563, i64 %idxprom814
  %arrayidx816 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx815, i32 0, i64 3
  store i32 %shr813, i32* %arrayidx816, align 4
  br label %for.inc.817

for.inc.817:                                      ; preds = %for.body.740
  %564 = load i32, i32* %j, align 4
  %inc818 = add nsw i32 %564, 1
  store i32 %inc818, i32* %j, align 4
  br label %for.cond.737

for.end.819:                                      ; preds = %for.cond.737
  br label %if.end.820

if.end.820:                                       ; preds = %for.end.819, %for.end.732
  br label %if.end.989

if.else.821:                                      ; preds = %if.else.586
  store i32 0, i32* %i, align 4
  br label %for.cond.822

for.cond.822:                                     ; preds = %for.inc.892, %if.else.821
  %565 = load i32, i32* %i, align 4
  %cmp823 = icmp slt i32 %565, 4
  br i1 %cmp823, label %for.body.825, label %for.end.894

for.body.825:                                     ; preds = %for.cond.822
  %566 = load i32, i32* %maxold_x, align 4
  %567 = load i32, i32* %x_pos.addr, align 4
  %568 = load i32, i32* %i, align 4
  %add826 = add nsw i32 %567, %568
  %sub827 = sub nsw i32 %add826, 2
  %call828 = call i32 @iClip3(i32 0, i32 %566, i32 %sub827)
  store i32 %call828, i32* @get_block.ipos_m2, align 4
  %569 = load i32, i32* %maxold_x, align 4
  %570 = load i32, i32* %x_pos.addr, align 4
  %571 = load i32, i32* %i, align 4
  %add829 = add nsw i32 %570, %571
  %sub830 = sub nsw i32 %add829, 1
  %call831 = call i32 @iClip3(i32 0, i32 %569, i32 %sub830)
  store i32 %call831, i32* @get_block.ipos_m1, align 4
  %572 = load i32, i32* %maxold_x, align 4
  %573 = load i32, i32* %x_pos.addr, align 4
  %574 = load i32, i32* %i, align 4
  %add832 = add nsw i32 %573, %574
  %call833 = call i32 @iClip3(i32 0, i32 %572, i32 %add832)
  store i32 %call833, i32* @get_block.ipos, align 4
  %575 = load i32, i32* %maxold_x, align 4
  %576 = load i32, i32* %x_pos.addr, align 4
  %577 = load i32, i32* %i, align 4
  %add834 = add nsw i32 %576, %577
  %add835 = add nsw i32 %add834, 1
  %call836 = call i32 @iClip3(i32 0, i32 %575, i32 %add835)
  store i32 %call836, i32* @get_block.ipos_p1, align 4
  %578 = load i32, i32* %maxold_x, align 4
  %579 = load i32, i32* %x_pos.addr, align 4
  %580 = load i32, i32* %i, align 4
  %add837 = add nsw i32 %579, %580
  %add838 = add nsw i32 %add837, 2
  %call839 = call i32 @iClip3(i32 0, i32 %578, i32 %add838)
  store i32 %call839, i32* @get_block.ipos_p2, align 4
  %581 = load i32, i32* %maxold_x, align 4
  %582 = load i32, i32* %x_pos.addr, align 4
  %583 = load i32, i32* %i, align 4
  %add840 = add nsw i32 %582, %583
  %add841 = add nsw i32 %add840, 3
  %call842 = call i32 @iClip3(i32 0, i32 %581, i32 %add841)
  store i32 %call842, i32* @get_block.ipos_p3, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.843

for.cond.843:                                     ; preds = %for.inc.889, %for.body.825
  %584 = load i32, i32* %j, align 4
  %cmp844 = icmp slt i32 %584, 4
  br i1 %cmp844, label %for.body.846, label %for.end.891

for.body.846:                                     ; preds = %for.cond.843
  %585 = load i32, i32* %maxold_y, align 4
  %586 = load i32, i32* %dy, align 4
  %cmp847 = icmp eq i32 %586, 1
  br i1 %cmp847, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.846
  %587 = load i32, i32* %y_pos.addr, align 4
  %588 = load i32, i32* %j, align 4
  %add849 = add nsw i32 %587, %588
  br label %cond.end

cond.false:                                       ; preds = %for.body.846
  %589 = load i32, i32* %y_pos.addr, align 4
  %590 = load i32, i32* %j, align 4
  %add850 = add nsw i32 %589, %590
  %add851 = add nsw i32 %add850, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add849, %cond.true ], [ %add851, %cond.false ]
  %call852 = call i32 @iClip3(i32 0, i32 %585, i32 %cond)
  %idxprom853 = sext i32 %call852 to i64
  %591 = load i16**, i16*** @get_block.cur_imgY, align 8
  %arrayidx854 = getelementptr inbounds i16*, i16** %591, i64 %idxprom853
  %592 = load i16*, i16** %arrayidx854, align 8
  store i16* %592, i16** @get_block.cur_lineY, align 8
  %593 = load i32, i32* @get_block.ipos_m2, align 4
  %idxprom855 = sext i32 %593 to i64
  %594 = load i16*, i16** @get_block.cur_lineY, align 8
  %arrayidx856 = getelementptr inbounds i16, i16* %594, i64 %idxprom855
  %595 = load i16, i16* %arrayidx856, align 2
  %conv857 = zext i16 %595 to i32
  %596 = load i32, i32* @get_block.ipos_p3, align 4
  %idxprom858 = sext i32 %596 to i64
  %597 = load i16*, i16** @get_block.cur_lineY, align 8
  %arrayidx859 = getelementptr inbounds i16, i16* %597, i64 %idxprom858
  %598 = load i16, i16* %arrayidx859, align 2
  %conv860 = zext i16 %598 to i32
  %add861 = add nsw i32 %conv857, %conv860
  %599 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @get_block.COEF, i32 0, i64 0), align 4
  %mul862 = mul nsw i32 %add861, %599
  store i32 %mul862, i32* %result, align 4
  %600 = load i32, i32* @get_block.ipos_m1, align 4
  %idxprom863 = sext i32 %600 to i64
  %601 = load i16*, i16** @get_block.cur_lineY, align 8
  %arrayidx864 = getelementptr inbounds i16, i16* %601, i64 %idxprom863
  %602 = load i16, i16* %arrayidx864, align 2
  %conv865 = zext i16 %602 to i32
  %603 = load i32, i32* @get_block.ipos_p2, align 4
  %idxprom866 = sext i32 %603 to i64
  %604 = load i16*, i16** @get_block.cur_lineY, align 8
  %arrayidx867 = getelementptr inbounds i16, i16* %604, i64 %idxprom866
  %605 = load i16, i16* %arrayidx867, align 2
  %conv868 = zext i16 %605 to i32
  %add869 = add nsw i32 %conv865, %conv868
  %606 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @get_block.COEF, i32 0, i64 1), align 4
  %mul870 = mul nsw i32 %add869, %606
  %607 = load i32, i32* %result, align 4
  %add871 = add nsw i32 %607, %mul870
  store i32 %add871, i32* %result, align 4
  %608 = load i32, i32* @get_block.ipos, align 4
  %idxprom872 = sext i32 %608 to i64
  %609 = load i16*, i16** @get_block.cur_lineY, align 8
  %arrayidx873 = getelementptr inbounds i16, i16* %609, i64 %idxprom872
  %610 = load i16, i16* %arrayidx873, align 2
  %conv874 = zext i16 %610 to i32
  %611 = load i32, i32* @get_block.ipos_p1, align 4
  %idxprom875 = sext i32 %611 to i64
  %612 = load i16*, i16** @get_block.cur_lineY, align 8
  %arrayidx876 = getelementptr inbounds i16, i16* %612, i64 %idxprom875
  %613 = load i16, i16* %arrayidx876, align 2
  %conv877 = zext i16 %613 to i32
  %add878 = add nsw i32 %conv874, %conv877
  %614 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @get_block.COEF, i32 0, i64 2), align 4
  %mul879 = mul nsw i32 %add878, %614
  %615 = load i32, i32* %result, align 4
  %add880 = add nsw i32 %615, %mul879
  store i32 %add880, i32* %result, align 4
  %616 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %max_imgpel_value881 = getelementptr inbounds %struct.img_par, %struct.img_par* %616, i32 0, i32 107
  %617 = load i32, i32* %max_imgpel_value881, align 4
  %618 = load i32, i32* %result, align 4
  %add882 = add nsw i32 %618, 16
  %shr883 = ashr i32 %add882, 5
  %call884 = call i32 @iClip1(i32 %617, i32 %shr883)
  %619 = load i32, i32* %i, align 4
  %idxprom885 = sext i32 %619 to i64
  %620 = load i32, i32* %j, align 4
  %idxprom886 = sext i32 %620 to i64
  %621 = load [4 x i32]*, [4 x i32]** %block.addr, align 8
  %arrayidx887 = getelementptr inbounds [4 x i32], [4 x i32]* %621, i64 %idxprom886
  %arrayidx888 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx887, i32 0, i64 %idxprom885
  store i32 %call884, i32* %arrayidx888, align 4
  br label %for.inc.889

for.inc.889:                                      ; preds = %cond.end
  %622 = load i32, i32* %j, align 4
  %inc890 = add nsw i32 %622, 1
  store i32 %inc890, i32* %j, align 4
  br label %for.cond.843

for.end.891:                                      ; preds = %for.cond.843
  br label %for.inc.892

for.inc.892:                                      ; preds = %for.end.891
  %623 = load i32, i32* %i, align 4
  %inc893 = add nsw i32 %623, 1
  store i32 %inc893, i32* %i, align 4
  br label %for.cond.822

for.end.894:                                      ; preds = %for.cond.822
  store i32 0, i32* %j, align 4
  br label %for.cond.895

for.cond.895:                                     ; preds = %for.inc.986, %for.end.894
  %624 = load i32, i32* %j, align 4
  %cmp896 = icmp slt i32 %624, 4
  br i1 %cmp896, label %for.body.898, label %for.end.988

for.body.898:                                     ; preds = %for.cond.895
  %625 = load i32, i32* %maxold_y, align 4
  %626 = load i32, i32* %y_pos.addr, align 4
  %627 = load i32, i32* %j, align 4
  %add899 = add nsw i32 %626, %627
  %sub900 = sub nsw i32 %add899, 2
  %call901 = call i32 @iClip3(i32 0, i32 %625, i32 %sub900)
  store i32 %call901, i32* @get_block.jpos_m2, align 4
  %628 = load i32, i32* %maxold_y, align 4
  %629 = load i32, i32* %y_pos.addr, align 4
  %630 = load i32, i32* %j, align 4
  %add902 = add nsw i32 %629, %630
  %sub903 = sub nsw i32 %add902, 1
  %call904 = call i32 @iClip3(i32 0, i32 %628, i32 %sub903)
  store i32 %call904, i32* @get_block.jpos_m1, align 4
  %631 = load i32, i32* %maxold_y, align 4
  %632 = load i32, i32* %y_pos.addr, align 4
  %633 = load i32, i32* %j, align 4
  %add905 = add nsw i32 %632, %633
  %call906 = call i32 @iClip3(i32 0, i32 %631, i32 %add905)
  store i32 %call906, i32* @get_block.jpos, align 4
  %634 = load i32, i32* %maxold_y, align 4
  %635 = load i32, i32* %y_pos.addr, align 4
  %636 = load i32, i32* %j, align 4
  %add907 = add nsw i32 %635, %636
  %add908 = add nsw i32 %add907, 1
  %call909 = call i32 @iClip3(i32 0, i32 %634, i32 %add908)
  store i32 %call909, i32* @get_block.jpos_p1, align 4
  %637 = load i32, i32* %maxold_y, align 4
  %638 = load i32, i32* %y_pos.addr, align 4
  %639 = load i32, i32* %j, align 4
  %add910 = add nsw i32 %638, %639
  %add911 = add nsw i32 %add910, 2
  %call912 = call i32 @iClip3(i32 0, i32 %637, i32 %add911)
  store i32 %call912, i32* @get_block.jpos_p2, align 4
  %640 = load i32, i32* %maxold_y, align 4
  %641 = load i32, i32* %y_pos.addr, align 4
  %642 = load i32, i32* %j, align 4
  %add913 = add nsw i32 %641, %642
  %add914 = add nsw i32 %add913, 3
  %call915 = call i32 @iClip3(i32 0, i32 %640, i32 %add914)
  store i32 %call915, i32* @get_block.jpos_p3, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.916

for.cond.916:                                     ; preds = %for.inc.983, %for.body.898
  %643 = load i32, i32* %i, align 4
  %cmp917 = icmp slt i32 %643, 4
  br i1 %cmp917, label %for.body.919, label %for.end.985

for.body.919:                                     ; preds = %for.cond.916
  %644 = load i32, i32* %dx, align 4
  %cmp920 = icmp eq i32 %644, 1
  br i1 %cmp920, label %cond.true.922, label %cond.false.924

cond.true.922:                                    ; preds = %for.body.919
  %645 = load i32, i32* %x_pos.addr, align 4
  %646 = load i32, i32* %i, align 4
  %add923 = add nsw i32 %645, %646
  br label %cond.end.927

cond.false.924:                                   ; preds = %for.body.919
  %647 = load i32, i32* %x_pos.addr, align 4
  %648 = load i32, i32* %i, align 4
  %add925 = add nsw i32 %647, %648
  %add926 = add nsw i32 %add925, 1
  br label %cond.end.927

cond.end.927:                                     ; preds = %cond.false.924, %cond.true.922
  %cond928 = phi i32 [ %add923, %cond.true.922 ], [ %add926, %cond.false.924 ]
  store i32 %cond928, i32* %pres_x, align 4
  %649 = load i32, i32* %maxold_x, align 4
  %650 = load i32, i32* %pres_x, align 4
  %call929 = call i32 @iClip3(i32 0, i32 %649, i32 %650)
  store i32 %call929, i32* %pres_x, align 4
  %651 = load i32, i32* %pres_x, align 4
  %idxprom930 = sext i32 %651 to i64
  %652 = load i32, i32* @get_block.jpos_m2, align 4
  %idxprom931 = sext i32 %652 to i64
  %653 = load i16**, i16*** @get_block.cur_imgY, align 8
  %arrayidx932 = getelementptr inbounds i16*, i16** %653, i64 %idxprom931
  %654 = load i16*, i16** %arrayidx932, align 8
  %arrayidx933 = getelementptr inbounds i16, i16* %654, i64 %idxprom930
  %655 = load i16, i16* %arrayidx933, align 2
  %conv934 = zext i16 %655 to i32
  %656 = load i32, i32* %pres_x, align 4
  %idxprom935 = sext i32 %656 to i64
  %657 = load i32, i32* @get_block.jpos_p3, align 4
  %idxprom936 = sext i32 %657 to i64
  %658 = load i16**, i16*** @get_block.cur_imgY, align 8
  %arrayidx937 = getelementptr inbounds i16*, i16** %658, i64 %idxprom936
  %659 = load i16*, i16** %arrayidx937, align 8
  %arrayidx938 = getelementptr inbounds i16, i16* %659, i64 %idxprom935
  %660 = load i16, i16* %arrayidx938, align 2
  %conv939 = zext i16 %660 to i32
  %add940 = add nsw i32 %conv934, %conv939
  %661 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @get_block.COEF, i32 0, i64 0), align 4
  %mul941 = mul nsw i32 %add940, %661
  store i32 %mul941, i32* %result, align 4
  %662 = load i32, i32* %pres_x, align 4
  %idxprom942 = sext i32 %662 to i64
  %663 = load i32, i32* @get_block.jpos_m1, align 4
  %idxprom943 = sext i32 %663 to i64
  %664 = load i16**, i16*** @get_block.cur_imgY, align 8
  %arrayidx944 = getelementptr inbounds i16*, i16** %664, i64 %idxprom943
  %665 = load i16*, i16** %arrayidx944, align 8
  %arrayidx945 = getelementptr inbounds i16, i16* %665, i64 %idxprom942
  %666 = load i16, i16* %arrayidx945, align 2
  %conv946 = zext i16 %666 to i32
  %667 = load i32, i32* %pres_x, align 4
  %idxprom947 = sext i32 %667 to i64
  %668 = load i32, i32* @get_block.jpos_p2, align 4
  %idxprom948 = sext i32 %668 to i64
  %669 = load i16**, i16*** @get_block.cur_imgY, align 8
  %arrayidx949 = getelementptr inbounds i16*, i16** %669, i64 %idxprom948
  %670 = load i16*, i16** %arrayidx949, align 8
  %arrayidx950 = getelementptr inbounds i16, i16* %670, i64 %idxprom947
  %671 = load i16, i16* %arrayidx950, align 2
  %conv951 = zext i16 %671 to i32
  %add952 = add nsw i32 %conv946, %conv951
  %672 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @get_block.COEF, i32 0, i64 1), align 4
  %mul953 = mul nsw i32 %add952, %672
  %673 = load i32, i32* %result, align 4
  %add954 = add nsw i32 %673, %mul953
  store i32 %add954, i32* %result, align 4
  %674 = load i32, i32* %pres_x, align 4
  %idxprom955 = sext i32 %674 to i64
  %675 = load i32, i32* @get_block.jpos, align 4
  %idxprom956 = sext i32 %675 to i64
  %676 = load i16**, i16*** @get_block.cur_imgY, align 8
  %arrayidx957 = getelementptr inbounds i16*, i16** %676, i64 %idxprom956
  %677 = load i16*, i16** %arrayidx957, align 8
  %arrayidx958 = getelementptr inbounds i16, i16* %677, i64 %idxprom955
  %678 = load i16, i16* %arrayidx958, align 2
  %conv959 = zext i16 %678 to i32
  %679 = load i32, i32* %pres_x, align 4
  %idxprom960 = sext i32 %679 to i64
  %680 = load i32, i32* @get_block.jpos_p1, align 4
  %idxprom961 = sext i32 %680 to i64
  %681 = load i16**, i16*** @get_block.cur_imgY, align 8
  %arrayidx962 = getelementptr inbounds i16*, i16** %681, i64 %idxprom961
  %682 = load i16*, i16** %arrayidx962, align 8
  %arrayidx963 = getelementptr inbounds i16, i16* %682, i64 %idxprom960
  %683 = load i16, i16* %arrayidx963, align 2
  %conv964 = zext i16 %683 to i32
  %add965 = add nsw i32 %conv959, %conv964
  %684 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @get_block.COEF, i32 0, i64 2), align 4
  %mul966 = mul nsw i32 %add965, %684
  %685 = load i32, i32* %result, align 4
  %add967 = add nsw i32 %685, %mul966
  store i32 %add967, i32* %result, align 4
  %686 = load i32, i32* %i, align 4
  %idxprom968 = sext i32 %686 to i64
  %687 = load i32, i32* %j, align 4
  %idxprom969 = sext i32 %687 to i64
  %688 = load [4 x i32]*, [4 x i32]** %block.addr, align 8
  %arrayidx970 = getelementptr inbounds [4 x i32], [4 x i32]* %688, i64 %idxprom969
  %arrayidx971 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx970, i32 0, i64 %idxprom968
  %689 = load i32, i32* %arrayidx971, align 4
  %690 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %max_imgpel_value972 = getelementptr inbounds %struct.img_par, %struct.img_par* %690, i32 0, i32 107
  %691 = load i32, i32* %max_imgpel_value972, align 4
  %692 = load i32, i32* %result, align 4
  %add973 = add nsw i32 %692, 16
  %shr974 = ashr i32 %add973, 5
  %call975 = call i32 @iClip1(i32 %691, i32 %shr974)
  %add976 = add nsw i32 %689, %call975
  %add977 = add nsw i32 %add976, 1
  %shr978 = ashr i32 %add977, 1
  %693 = load i32, i32* %i, align 4
  %idxprom979 = sext i32 %693 to i64
  %694 = load i32, i32* %j, align 4
  %idxprom980 = sext i32 %694 to i64
  %695 = load [4 x i32]*, [4 x i32]** %block.addr, align 8
  %arrayidx981 = getelementptr inbounds [4 x i32], [4 x i32]* %695, i64 %idxprom980
  %arrayidx982 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx981, i32 0, i64 %idxprom979
  store i32 %shr978, i32* %arrayidx982, align 4
  br label %for.inc.983

for.inc.983:                                      ; preds = %cond.end.927
  %696 = load i32, i32* %i, align 4
  %inc984 = add nsw i32 %696, 1
  store i32 %inc984, i32* %i, align 4
  br label %for.cond.916

for.end.985:                                      ; preds = %for.cond.916
  br label %for.inc.986

for.inc.986:                                      ; preds = %for.end.985
  %697 = load i32, i32* %j, align 4
  %inc987 = add nsw i32 %697, 1
  store i32 %inc987, i32* %j, align 4
  br label %for.cond.895

for.end.988:                                      ; preds = %for.cond.895
  br label %if.end.989

if.end.989:                                       ; preds = %for.end.988, %if.end.820
  br label %if.end.990

if.end.990:                                       ; preds = %if.end.989, %if.end.585
  br label %if.end.991

if.end.991:                                       ; preds = %if.end.990, %if.end.369
  br label %if.end.992

if.end.992:                                       ; preds = %if.end.991, %if.end.213
  br label %if.end.993

if.end.993:                                       ; preds = %for.end.12, %if.end.992, %for.end.64
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @iClip3(i32 %low, i32 %high, i32 %x) #3 {
entry:
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  store i32 %low, i32* %low.addr, align 4
  store i32 %high, i32* %high.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %low.addr, align 4
  %call = call i32 @imax(i32 %0, i32 %1)
  store i32 %call, i32* %x.addr, align 4
  %2 = load i32, i32* %x.addr, align 4
  %3 = load i32, i32* %high.addr, align 4
  %call1 = call i32 @imin(i32 %2, i32 %3)
  store i32 %call1, i32* %x.addr, align 4
  %4 = load i32, i32* %x.addr, align 4
  ret i32 %4
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @iClip1(i32 %high, i32 %x) #3 {
entry:
  %high.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  store i32 %high, i32* %high.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %call = call i32 @imax(i32 %0, i32 0)
  store i32 %call, i32* %x.addr, align 4
  %1 = load i32, i32* %x.addr, align 4
  %2 = load i32, i32* %high.addr, align 4
  %call1 = call i32 @imin(i32 %1, i32 %2)
  store i32 %call1, i32* %x.addr, align 4
  %3 = load i32, i32* %x.addr, align 4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define void @reorder_lists(i32 %currSliceType, %struct.Slice* %currSlice) #0 {
entry:
  %currSliceType.addr = alloca i32, align 4
  %currSlice.addr = alloca %struct.Slice*, align 8
  store i32 %currSliceType, i32* %currSliceType.addr, align 4
  store %struct.Slice* %currSlice, %struct.Slice** %currSlice.addr, align 8
  %0 = load i32, i32* %currSliceType.addr, align 4
  %cmp = icmp ne i32 %0, 2
  br i1 %cmp, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %currSliceType.addr, align 4
  %cmp1 = icmp ne i32 %1, 4
  br i1 %cmp1, label %if.then, label %if.end.12

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct.Slice*, %struct.Slice** %currSlice.addr, align 8
  %ref_pic_list_reordering_flag_l0 = getelementptr inbounds %struct.Slice, %struct.Slice* %2, i32 0, i32 12
  %3 = load i32, i32* %ref_pic_list_reordering_flag_l0, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %4 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %5 = load %struct.img_par*, %struct.img_par** @img, align 8
  %num_ref_idx_l0_active = getelementptr inbounds %struct.img_par, %struct.img_par* %5, i32 0, i32 47
  %6 = load i32, i32* %num_ref_idx_l0_active, align 4
  %sub = sub nsw i32 %6, 1
  %7 = load %struct.Slice*, %struct.Slice** %currSlice.addr, align 8
  %reordering_of_pic_nums_idc_l0 = getelementptr inbounds %struct.Slice, %struct.Slice* %7, i32 0, i32 13
  %8 = load i32*, i32** %reordering_of_pic_nums_idc_l0, align 8
  %9 = load %struct.Slice*, %struct.Slice** %currSlice.addr, align 8
  %abs_diff_pic_num_minus1_l0 = getelementptr inbounds %struct.Slice, %struct.Slice* %9, i32 0, i32 14
  %10 = load i32*, i32** %abs_diff_pic_num_minus1_l0, align 8
  %11 = load %struct.Slice*, %struct.Slice** %currSlice.addr, align 8
  %long_term_pic_idx_l0 = getelementptr inbounds %struct.Slice, %struct.Slice* %11, i32 0, i32 15
  %12 = load i32*, i32** %long_term_pic_idx_l0, align 8
  call void @reorder_ref_pic_list(%struct.storable_picture** %4, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), i32 %sub, i32* %8, i32* %10, i32* %12)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %13 = load %struct.storable_picture*, %struct.storable_picture** @no_reference_picture, align 8
  %14 = load %struct.img_par*, %struct.img_par** @img, align 8
  %num_ref_idx_l0_active3 = getelementptr inbounds %struct.img_par, %struct.img_par* %14, i32 0, i32 47
  %15 = load i32, i32* %num_ref_idx_l0_active3, align 4
  %sub4 = sub nsw i32 %15, 1
  %idxprom = sext i32 %sub4 to i64
  %16 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %16, i64 %idxprom
  %17 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx, align 8
  %cmp5 = icmp eq %struct.storable_picture* %13, %17
  br i1 %cmp5, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %if.end
  %18 = load i32, i32* @non_conforming_stream, align 4
  %tobool7 = icmp ne i32 %18, 0
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then.6
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.9

if.else:                                          ; preds = %if.then.6
  call void @error(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.7, i32 0, i32 0), i32 500)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.end
  %19 = load %struct.img_par*, %struct.img_par** @img, align 8
  %num_ref_idx_l0_active11 = getelementptr inbounds %struct.img_par, %struct.img_par* %19, i32 0, i32 47
  %20 = load i32, i32* %num_ref_idx_l0_active11, align 4
  store i32 %20, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.10, %land.lhs.true, %entry
  %21 = load i32, i32* %currSliceType.addr, align 4
  %cmp13 = icmp eq i32 %21, 1
  br i1 %cmp13, label %if.then.14, label %if.end.32

if.then.14:                                       ; preds = %if.end.12
  %22 = load %struct.Slice*, %struct.Slice** %currSlice.addr, align 8
  %ref_pic_list_reordering_flag_l1 = getelementptr inbounds %struct.Slice, %struct.Slice* %22, i32 0, i32 16
  %23 = load i32, i32* %ref_pic_list_reordering_flag_l1, align 4
  %tobool15 = icmp ne i32 %23, 0
  br i1 %tobool15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.then.14
  %24 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 1), align 8
  %25 = load %struct.img_par*, %struct.img_par** @img, align 8
  %num_ref_idx_l1_active = getelementptr inbounds %struct.img_par, %struct.img_par* %25, i32 0, i32 48
  %26 = load i32, i32* %num_ref_idx_l1_active, align 4
  %sub17 = sub nsw i32 %26, 1
  %27 = load %struct.Slice*, %struct.Slice** %currSlice.addr, align 8
  %reordering_of_pic_nums_idc_l1 = getelementptr inbounds %struct.Slice, %struct.Slice* %27, i32 0, i32 17
  %28 = load i32*, i32** %reordering_of_pic_nums_idc_l1, align 8
  %29 = load %struct.Slice*, %struct.Slice** %currSlice.addr, align 8
  %abs_diff_pic_num_minus1_l1 = getelementptr inbounds %struct.Slice, %struct.Slice* %29, i32 0, i32 18
  %30 = load i32*, i32** %abs_diff_pic_num_minus1_l1, align 8
  %31 = load %struct.Slice*, %struct.Slice** %currSlice.addr, align 8
  %long_term_pic_idx_l1 = getelementptr inbounds %struct.Slice, %struct.Slice* %31, i32 0, i32 19
  %32 = load i32*, i32** %long_term_pic_idx_l1, align 8
  call void @reorder_ref_pic_list(%struct.storable_picture** %24, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 1), i32 %sub17, i32* %28, i32* %30, i32* %32)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.then.14
  %33 = load %struct.storable_picture*, %struct.storable_picture** @no_reference_picture, align 8
  %34 = load %struct.img_par*, %struct.img_par** @img, align 8
  %num_ref_idx_l1_active19 = getelementptr inbounds %struct.img_par, %struct.img_par* %34, i32 0, i32 48
  %35 = load i32, i32* %num_ref_idx_l1_active19, align 4
  %sub20 = sub nsw i32 %35, 1
  %idxprom21 = sext i32 %sub20 to i64
  %36 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 1), align 8
  %arrayidx22 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %36, i64 %idxprom21
  %37 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx22, align 8
  %cmp23 = icmp eq %struct.storable_picture* %33, %37
  br i1 %cmp23, label %if.then.24, label %if.end.30

if.then.24:                                       ; preds = %if.end.18
  %38 = load i32, i32* @non_conforming_stream, align 4
  %tobool25 = icmp ne i32 %38, 0
  br i1 %tobool25, label %if.then.26, label %if.else.28

if.then.26:                                       ; preds = %if.then.24
  %call27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.29

if.else.28:                                       ; preds = %if.then.24
  call void @error(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.9, i32 0, i32 0), i32 500)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.28, %if.then.26
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.end.18
  %39 = load %struct.img_par*, %struct.img_par** @img, align 8
  %num_ref_idx_l1_active31 = getelementptr inbounds %struct.img_par, %struct.img_par* %39, i32 0, i32 48
  %40 = load i32, i32* %num_ref_idx_l1_active31, align 4
  store i32 %40, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 1), align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.30, %if.end.12
  %41 = load %struct.Slice*, %struct.Slice** %currSlice.addr, align 8
  call void @free_ref_pic_list_reordering_buffer(%struct.Slice* %41)
  ret void
}

declare void @reorder_ref_pic_list(%struct.storable_picture**, i32*, i32, i32*, i32*, i32*) #1

declare void @free_ref_pic_list_reordering_buffer(%struct.Slice*) #1

; Function Attrs: nounwind uwtable
define void @set_ref_pic_num() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %slice_id = alloca i32, align 4
  %0 = load %struct.img_par*, %struct.img_par** @img, align 8
  %current_slice_nr = getelementptr inbounds %struct.img_par, %struct.img_par* %0, i32 0, i32 3
  %1 = load i32, i32* %current_slice_nr, align 4
  store i32 %1, i32* %slice_id, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %5, i64 %idxprom
  %6 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx, align 8
  %poc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %6, i32 0, i32 1
  %7 = load i32, i32* %poc, align 4
  %mul = mul nsw i32 %7, 2
  %8 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %8 to i64
  %9 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx2 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %9, i64 %idxprom1
  %10 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx2, align 8
  %structure = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %10, i32 0, i32 0
  %11 = load i32, i32* %structure, align 4
  %cmp3 = icmp eq i32 %11, 2
  %cond = select i1 %cmp3, i32 1, i32 0
  %add = add nsw i32 %mul, %cond
  %conv = sext i32 %add to i64
  %12 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %12 to i64
  %13 = load i32, i32* %slice_id, align 4
  %idxprom5 = sext i32 %13 to i64
  %14 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %ref_pic_num = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %14, i32 0, i32 5
  %arrayidx6 = getelementptr inbounds [50 x [6 x [33 x i64]]], [50 x [6 x [33 x i64]]]* %ref_pic_num, i32 0, i64 %idxprom5
  %arrayidx7 = getelementptr inbounds [6 x [33 x i64]], [6 x [33 x i64]]* %arrayidx6, i32 0, i64 0
  %arrayidx8 = getelementptr inbounds [33 x i64], [33 x i64]* %arrayidx7, i32 0, i64 %idxprom4
  store i64 %conv, i64* %arrayidx8, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %15 to i64
  %16 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx10 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %16, i64 %idxprom9
  %17 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx10, align 8
  %frame_poc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %17, i32 0, i32 4
  %18 = load i32, i32* %frame_poc, align 4
  %mul11 = mul nsw i32 %18, 2
  %conv12 = sext i32 %mul11 to i64
  %19 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %19 to i64
  %20 = load i32, i32* %slice_id, align 4
  %idxprom14 = sext i32 %20 to i64
  %21 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %frm_ref_pic_num = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %21, i32 0, i32 6
  %arrayidx15 = getelementptr inbounds [50 x [6 x [33 x i64]]], [50 x [6 x [33 x i64]]]* %frm_ref_pic_num, i32 0, i64 %idxprom14
  %arrayidx16 = getelementptr inbounds [6 x [33 x i64]], [6 x [33 x i64]]* %arrayidx15, i32 0, i64 0
  %arrayidx17 = getelementptr inbounds [33 x i64], [33 x i64]* %arrayidx16, i32 0, i64 %idxprom13
  store i64 %conv12, i64* %arrayidx17, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %22 to i64
  %23 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx19 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %23, i64 %idxprom18
  %24 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx19, align 8
  %top_poc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %24, i32 0, i32 2
  %25 = load i32, i32* %top_poc, align 4
  %mul20 = mul nsw i32 %25, 2
  %conv21 = sext i32 %mul20 to i64
  %26 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %26 to i64
  %27 = load i32, i32* %slice_id, align 4
  %idxprom23 = sext i32 %27 to i64
  %28 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %top_ref_pic_num = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %28, i32 0, i32 7
  %arrayidx24 = getelementptr inbounds [50 x [6 x [33 x i64]]], [50 x [6 x [33 x i64]]]* %top_ref_pic_num, i32 0, i64 %idxprom23
  %arrayidx25 = getelementptr inbounds [6 x [33 x i64]], [6 x [33 x i64]]* %arrayidx24, i32 0, i64 0
  %arrayidx26 = getelementptr inbounds [33 x i64], [33 x i64]* %arrayidx25, i32 0, i64 %idxprom22
  store i64 %conv21, i64* %arrayidx26, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %29 to i64
  %30 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx28 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %30, i64 %idxprom27
  %31 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx28, align 8
  %bottom_poc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %31, i32 0, i32 3
  %32 = load i32, i32* %bottom_poc, align 4
  %mul29 = mul nsw i32 %32, 2
  %add30 = add nsw i32 %mul29, 1
  %conv31 = sext i32 %add30 to i64
  %33 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %33 to i64
  %34 = load i32, i32* %slice_id, align 4
  %idxprom33 = sext i32 %34 to i64
  %35 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %bottom_ref_pic_num = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %35, i32 0, i32 8
  %arrayidx34 = getelementptr inbounds [50 x [6 x [33 x i64]]], [50 x [6 x [33 x i64]]]* %bottom_ref_pic_num, i32 0, i64 %idxprom33
  %arrayidx35 = getelementptr inbounds [6 x [33 x i64]], [6 x [33 x i64]]* %arrayidx34, i32 0, i64 0
  %arrayidx36 = getelementptr inbounds [33 x i64], [33 x i64]* %arrayidx35, i32 0, i64 %idxprom32
  store i64 %conv31, i64* %arrayidx36, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i32, i32* %i, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.93, %for.end
  %37 = load i32, i32* %i, align 4
  %38 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 1), align 4
  %cmp38 = icmp slt i32 %37, %38
  br i1 %cmp38, label %for.body.40, label %for.end.95

for.body.40:                                      ; preds = %for.cond.37
  %39 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %39 to i64
  %40 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 1), align 8
  %arrayidx42 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %40, i64 %idxprom41
  %41 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx42, align 8
  %poc43 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %41, i32 0, i32 1
  %42 = load i32, i32* %poc43, align 4
  %mul44 = mul nsw i32 %42, 2
  %43 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %43 to i64
  %44 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 1), align 8
  %arrayidx46 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %44, i64 %idxprom45
  %45 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx46, align 8
  %structure47 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %45, i32 0, i32 0
  %46 = load i32, i32* %structure47, align 4
  %cmp48 = icmp eq i32 %46, 2
  %cond50 = select i1 %cmp48, i32 1, i32 0
  %add51 = add nsw i32 %mul44, %cond50
  %conv52 = sext i32 %add51 to i64
  %47 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %47 to i64
  %48 = load i32, i32* %slice_id, align 4
  %idxprom54 = sext i32 %48 to i64
  %49 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %ref_pic_num55 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %49, i32 0, i32 5
  %arrayidx56 = getelementptr inbounds [50 x [6 x [33 x i64]]], [50 x [6 x [33 x i64]]]* %ref_pic_num55, i32 0, i64 %idxprom54
  %arrayidx57 = getelementptr inbounds [6 x [33 x i64]], [6 x [33 x i64]]* %arrayidx56, i32 0, i64 1
  %arrayidx58 = getelementptr inbounds [33 x i64], [33 x i64]* %arrayidx57, i32 0, i64 %idxprom53
  store i64 %conv52, i64* %arrayidx58, align 8
  %50 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %50 to i64
  %51 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 1), align 8
  %arrayidx60 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %51, i64 %idxprom59
  %52 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx60, align 8
  %frame_poc61 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %52, i32 0, i32 4
  %53 = load i32, i32* %frame_poc61, align 4
  %mul62 = mul nsw i32 %53, 2
  %conv63 = sext i32 %mul62 to i64
  %54 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %54 to i64
  %55 = load i32, i32* %slice_id, align 4
  %idxprom65 = sext i32 %55 to i64
  %56 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %frm_ref_pic_num66 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %56, i32 0, i32 6
  %arrayidx67 = getelementptr inbounds [50 x [6 x [33 x i64]]], [50 x [6 x [33 x i64]]]* %frm_ref_pic_num66, i32 0, i64 %idxprom65
  %arrayidx68 = getelementptr inbounds [6 x [33 x i64]], [6 x [33 x i64]]* %arrayidx67, i32 0, i64 1
  %arrayidx69 = getelementptr inbounds [33 x i64], [33 x i64]* %arrayidx68, i32 0, i64 %idxprom64
  store i64 %conv63, i64* %arrayidx69, align 8
  %57 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %57 to i64
  %58 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 1), align 8
  %arrayidx71 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %58, i64 %idxprom70
  %59 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx71, align 8
  %top_poc72 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %59, i32 0, i32 2
  %60 = load i32, i32* %top_poc72, align 4
  %mul73 = mul nsw i32 %60, 2
  %conv74 = sext i32 %mul73 to i64
  %61 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %61 to i64
  %62 = load i32, i32* %slice_id, align 4
  %idxprom76 = sext i32 %62 to i64
  %63 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %top_ref_pic_num77 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %63, i32 0, i32 7
  %arrayidx78 = getelementptr inbounds [50 x [6 x [33 x i64]]], [50 x [6 x [33 x i64]]]* %top_ref_pic_num77, i32 0, i64 %idxprom76
  %arrayidx79 = getelementptr inbounds [6 x [33 x i64]], [6 x [33 x i64]]* %arrayidx78, i32 0, i64 1
  %arrayidx80 = getelementptr inbounds [33 x i64], [33 x i64]* %arrayidx79, i32 0, i64 %idxprom75
  store i64 %conv74, i64* %arrayidx80, align 8
  %64 = load i32, i32* %i, align 4
  %idxprom81 = sext i32 %64 to i64
  %65 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 1), align 8
  %arrayidx82 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %65, i64 %idxprom81
  %66 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx82, align 8
  %bottom_poc83 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %66, i32 0, i32 3
  %67 = load i32, i32* %bottom_poc83, align 4
  %mul84 = mul nsw i32 %67, 2
  %add85 = add nsw i32 %mul84, 1
  %conv86 = sext i32 %add85 to i64
  %68 = load i32, i32* %i, align 4
  %idxprom87 = sext i32 %68 to i64
  %69 = load i32, i32* %slice_id, align 4
  %idxprom88 = sext i32 %69 to i64
  %70 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %bottom_ref_pic_num89 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %70, i32 0, i32 8
  %arrayidx90 = getelementptr inbounds [50 x [6 x [33 x i64]]], [50 x [6 x [33 x i64]]]* %bottom_ref_pic_num89, i32 0, i64 %idxprom88
  %arrayidx91 = getelementptr inbounds [6 x [33 x i64]], [6 x [33 x i64]]* %arrayidx90, i32 0, i64 1
  %arrayidx92 = getelementptr inbounds [33 x i64], [33 x i64]* %arrayidx91, i32 0, i64 %idxprom87
  store i64 %conv86, i64* %arrayidx92, align 8
  br label %for.inc.93

for.inc.93:                                       ; preds = %for.body.40
  %71 = load i32, i32* %i, align 4
  %inc94 = add nsw i32 %71, 1
  store i32 %inc94, i32* %i, align 4
  br label %for.cond.37

for.end.95:                                       ; preds = %for.cond.37
  %72 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %72, i32 0, i32 29
  %73 = load i32, i32* %frame_mbs_only_flag, align 4
  %tobool = icmp ne i32 %73, 0
  br i1 %tobool, label %if.end.182, label %if.then

if.then:                                          ; preds = %for.end.95
  %74 = load %struct.img_par*, %struct.img_par** @img, align 8
  %structure96 = getelementptr inbounds %struct.img_par, %struct.img_par* %74, i32 0, i32 36
  %75 = load i32, i32* %structure96, align 4
  %cmp97 = icmp eq i32 %75, 0
  br i1 %cmp97, label %if.then.99, label %if.end

if.then.99:                                       ; preds = %if.then
  store i32 2, i32* %j, align 4
  br label %for.cond.100

for.cond.100:                                     ; preds = %for.inc.179, %if.then.99
  %76 = load i32, i32* %j, align 4
  %cmp101 = icmp slt i32 %76, 6
  br i1 %cmp101, label %for.body.103, label %for.end.181

for.body.103:                                     ; preds = %for.cond.100
  store i32 0, i32* %i, align 4
  br label %for.cond.104

for.cond.104:                                     ; preds = %for.inc.176, %for.body.103
  %77 = load i32, i32* %i, align 4
  %78 = load i32, i32* %j, align 4
  %idxprom105 = sext i32 %78 to i64
  %arrayidx106 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom105
  %79 = load i32, i32* %arrayidx106, align 4
  %cmp107 = icmp slt i32 %77, %79
  br i1 %cmp107, label %for.body.109, label %for.end.178

for.body.109:                                     ; preds = %for.cond.104
  %80 = load i32, i32* %i, align 4
  %idxprom110 = sext i32 %80 to i64
  %81 = load i32, i32* %j, align 4
  %idxprom111 = sext i32 %81 to i64
  %arrayidx112 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom111
  %82 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx112, align 8
  %arrayidx113 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %82, i64 %idxprom110
  %83 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx113, align 8
  %poc114 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %83, i32 0, i32 1
  %84 = load i32, i32* %poc114, align 4
  %mul115 = mul nsw i32 %84, 2
  %85 = load i32, i32* %i, align 4
  %idxprom116 = sext i32 %85 to i64
  %86 = load i32, i32* %j, align 4
  %idxprom117 = sext i32 %86 to i64
  %arrayidx118 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom117
  %87 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx118, align 8
  %arrayidx119 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %87, i64 %idxprom116
  %88 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx119, align 8
  %structure120 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %88, i32 0, i32 0
  %89 = load i32, i32* %structure120, align 4
  %cmp121 = icmp eq i32 %89, 2
  %cond123 = select i1 %cmp121, i32 1, i32 0
  %add124 = add nsw i32 %mul115, %cond123
  %conv125 = sext i32 %add124 to i64
  %90 = load i32, i32* %i, align 4
  %idxprom126 = sext i32 %90 to i64
  %91 = load i32, i32* %j, align 4
  %idxprom127 = sext i32 %91 to i64
  %92 = load i32, i32* %slice_id, align 4
  %idxprom128 = sext i32 %92 to i64
  %93 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %ref_pic_num129 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %93, i32 0, i32 5
  %arrayidx130 = getelementptr inbounds [50 x [6 x [33 x i64]]], [50 x [6 x [33 x i64]]]* %ref_pic_num129, i32 0, i64 %idxprom128
  %arrayidx131 = getelementptr inbounds [6 x [33 x i64]], [6 x [33 x i64]]* %arrayidx130, i32 0, i64 %idxprom127
  %arrayidx132 = getelementptr inbounds [33 x i64], [33 x i64]* %arrayidx131, i32 0, i64 %idxprom126
  store i64 %conv125, i64* %arrayidx132, align 8
  %94 = load i32, i32* %i, align 4
  %idxprom133 = sext i32 %94 to i64
  %95 = load i32, i32* %j, align 4
  %idxprom134 = sext i32 %95 to i64
  %arrayidx135 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom134
  %96 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx135, align 8
  %arrayidx136 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %96, i64 %idxprom133
  %97 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx136, align 8
  %frame_poc137 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %97, i32 0, i32 4
  %98 = load i32, i32* %frame_poc137, align 4
  %mul138 = mul nsw i32 %98, 2
  %conv139 = sext i32 %mul138 to i64
  %99 = load i32, i32* %i, align 4
  %idxprom140 = sext i32 %99 to i64
  %100 = load i32, i32* %j, align 4
  %idxprom141 = sext i32 %100 to i64
  %101 = load i32, i32* %slice_id, align 4
  %idxprom142 = sext i32 %101 to i64
  %102 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %frm_ref_pic_num143 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %102, i32 0, i32 6
  %arrayidx144 = getelementptr inbounds [50 x [6 x [33 x i64]]], [50 x [6 x [33 x i64]]]* %frm_ref_pic_num143, i32 0, i64 %idxprom142
  %arrayidx145 = getelementptr inbounds [6 x [33 x i64]], [6 x [33 x i64]]* %arrayidx144, i32 0, i64 %idxprom141
  %arrayidx146 = getelementptr inbounds [33 x i64], [33 x i64]* %arrayidx145, i32 0, i64 %idxprom140
  store i64 %conv139, i64* %arrayidx146, align 8
  %103 = load i32, i32* %i, align 4
  %idxprom147 = sext i32 %103 to i64
  %104 = load i32, i32* %j, align 4
  %idxprom148 = sext i32 %104 to i64
  %arrayidx149 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom148
  %105 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx149, align 8
  %arrayidx150 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %105, i64 %idxprom147
  %106 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx150, align 8
  %top_poc151 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %106, i32 0, i32 2
  %107 = load i32, i32* %top_poc151, align 4
  %mul152 = mul nsw i32 %107, 2
  %conv153 = sext i32 %mul152 to i64
  %108 = load i32, i32* %i, align 4
  %idxprom154 = sext i32 %108 to i64
  %109 = load i32, i32* %j, align 4
  %idxprom155 = sext i32 %109 to i64
  %110 = load i32, i32* %slice_id, align 4
  %idxprom156 = sext i32 %110 to i64
  %111 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %top_ref_pic_num157 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %111, i32 0, i32 7
  %arrayidx158 = getelementptr inbounds [50 x [6 x [33 x i64]]], [50 x [6 x [33 x i64]]]* %top_ref_pic_num157, i32 0, i64 %idxprom156
  %arrayidx159 = getelementptr inbounds [6 x [33 x i64]], [6 x [33 x i64]]* %arrayidx158, i32 0, i64 %idxprom155
  %arrayidx160 = getelementptr inbounds [33 x i64], [33 x i64]* %arrayidx159, i32 0, i64 %idxprom154
  store i64 %conv153, i64* %arrayidx160, align 8
  %112 = load i32, i32* %i, align 4
  %idxprom161 = sext i32 %112 to i64
  %113 = load i32, i32* %j, align 4
  %idxprom162 = sext i32 %113 to i64
  %arrayidx163 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom162
  %114 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx163, align 8
  %arrayidx164 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %114, i64 %idxprom161
  %115 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx164, align 8
  %bottom_poc165 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %115, i32 0, i32 3
  %116 = load i32, i32* %bottom_poc165, align 4
  %mul166 = mul nsw i32 %116, 2
  %add167 = add nsw i32 %mul166, 1
  %conv168 = sext i32 %add167 to i64
  %117 = load i32, i32* %i, align 4
  %idxprom169 = sext i32 %117 to i64
  %118 = load i32, i32* %j, align 4
  %idxprom170 = sext i32 %118 to i64
  %119 = load i32, i32* %slice_id, align 4
  %idxprom171 = sext i32 %119 to i64
  %120 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %bottom_ref_pic_num172 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %120, i32 0, i32 8
  %arrayidx173 = getelementptr inbounds [50 x [6 x [33 x i64]]], [50 x [6 x [33 x i64]]]* %bottom_ref_pic_num172, i32 0, i64 %idxprom171
  %arrayidx174 = getelementptr inbounds [6 x [33 x i64]], [6 x [33 x i64]]* %arrayidx173, i32 0, i64 %idxprom170
  %arrayidx175 = getelementptr inbounds [33 x i64], [33 x i64]* %arrayidx174, i32 0, i64 %idxprom169
  store i64 %conv168, i64* %arrayidx175, align 8
  br label %for.inc.176

for.inc.176:                                      ; preds = %for.body.109
  %121 = load i32, i32* %i, align 4
  %inc177 = add nsw i32 %121, 1
  store i32 %inc177, i32* %i, align 4
  br label %for.cond.104

for.end.178:                                      ; preds = %for.cond.104
  br label %for.inc.179

for.inc.179:                                      ; preds = %for.end.178
  %122 = load i32, i32* %j, align 4
  %inc180 = add nsw i32 %122, 1
  store i32 %inc180, i32* %j, align 4
  br label %for.cond.100

for.end.181:                                      ; preds = %for.cond.100
  br label %if.end

if.end:                                           ; preds = %for.end.181, %if.then
  br label %if.end.182

if.end.182:                                       ; preds = %if.end, %for.end.95
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @read_new_slice() #0 {
entry:
  %retval = alloca i32, align 4
  %nalu = alloca %struct.NALU_t*, align 8
  %current_header = alloca i32, align 4
  %ret = alloca i32, align 4
  %BitsUsedByHeader = alloca i32, align 4
  %currSlice = alloca %struct.Slice*, align 8
  %currStream = alloca %struct.Bitstream*, align 8
  %slice_id_a = alloca i32, align 4
  %slice_id_b = alloca i32, align 4
  %slice_id_c = alloca i32, align 4
  %redundant_pic_cnt_b = alloca i32, align 4
  %redundant_pic_cnt_c = alloca i32, align 4
  %ftell_position = alloca i64, align 8
  %ByteStartPosition = alloca i32, align 4
  %call = call %struct.NALU_t* (i32, ...) bitcast (%struct.NALU_t* (...)* @AllocNALU to %struct.NALU_t* (i32, ...)*)(i32 8000000)
  store %struct.NALU_t* %call, %struct.NALU_t** %nalu, align 8
  store i32 0, i32* %current_header, align 4
  %0 = load %struct.img_par*, %struct.img_par** @img, align 8
  %currentSlice = getelementptr inbounds %struct.img_par, %struct.img_par* %0, i32 0, i32 38
  %1 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  store %struct.Slice* %1, %struct.Slice** %currSlice, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %sw.epilog
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @bits, align 8
  %call1 = call i64 @ftell(%struct._IO_FILE* %2)
  store i64 %call1, i64* %ftell_position, align 8
  %3 = load %struct.inp_par*, %struct.inp_par** @input, align 8
  %FileFormat = getelementptr inbounds %struct.inp_par, %struct.inp_par* %3, i32 0, i32 3
  %4 = load i32, i32* %FileFormat, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %5 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %call2 = call i32 @GetAnnexbNALU(%struct.NALU_t* %5)
  store i32 %call2, i32* %ret, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  %6 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %call3 = call i32 @GetRTPNALU(%struct.NALU_t* %6)
  store i32 %call3, i32* %ret, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  call void @CheckZeroByteNonVCL(%struct.NALU_t* %7, i32* %ret)
  %8 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %call4 = call i32 @NALUtoRBSP(%struct.NALU_t* %8)
  %9 = load i32, i32* %ret, align 4
  %cmp5 = icmp slt i32 %9, 0
  br i1 %cmp5, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %if.end
  %10 = load %struct.inp_par*, %struct.inp_par** @input, align 8
  %FileFormat7 = getelementptr inbounds %struct.inp_par, %struct.inp_par* %10, i32 0, i32 3
  %11 = load i32, i32* %FileFormat7, align 4
  %cmp8 = icmp eq i32 %11, 0
  %cond = select i1 %cmp8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0)
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i32 0, i32 0), i8* %cond)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.6, %if.end
  %12 = load i32, i32* %ret, align 4
  %cmp11 = icmp eq i32 %12, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.10
  %13 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  call void @FreeNALU(%struct.NALU_t* %13)
  store i32 1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.10
  %14 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %forbidden_bit = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %14, i32 0, i32 5
  %15 = load i32, i32* %forbidden_bit, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.13
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end.13
  %16 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %nal_unit_type = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %16, i32 0, i32 3
  %17 = load i32, i32* %nal_unit_type, align 4
  switch i32 %17, label %sw.default [
    i32 1, label %sw.bb
    i32 5, label %sw.bb
    i32 2, label %sw.bb.91
    i32 3, label %sw.bb.284
    i32 4, label %sw.bb.286
    i32 6, label %sw.bb.288
    i32 8, label %sw.bb.293
    i32 7, label %sw.bb.294
    i32 9, label %sw.bb.295
    i32 10, label %sw.bb.296
    i32 11, label %sw.bb.297
    i32 12, label %sw.bb.298
  ]

sw.bb:                                            ; preds = %if.end.16, %if.end.16
  %18 = load %struct.img_par*, %struct.img_par** @img, align 8
  %recovery_point = getelementptr inbounds %struct.img_par, %struct.img_par* %18, i32 0, i32 135
  %19 = load i32, i32* %recovery_point, align 4
  %tobool17 = icmp ne i32 %19, 0
  br i1 %tobool17, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %20 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %nal_unit_type18 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %20, i32 0, i32 3
  %21 = load i32, i32* %nal_unit_type18, align 4
  %cmp19 = icmp eq i32 %21, 5
  br i1 %cmp19, label %if.then.20, label %if.end.31

if.then.20:                                       ; preds = %lor.lhs.false, %sw.bb
  %22 = load %struct.img_par*, %struct.img_par** @img, align 8
  %recovery_point_found = getelementptr inbounds %struct.img_par, %struct.img_par* %22, i32 0, i32 136
  %23 = load i32, i32* %recovery_point_found, align 4
  %cmp21 = icmp eq i32 %23, 0
  br i1 %cmp21, label %if.then.22, label %if.end.29

if.then.22:                                       ; preds = %if.then.20
  %24 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %nal_unit_type23 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %24, i32 0, i32 3
  %25 = load i32, i32* %nal_unit_type23, align 4
  %cmp24 = icmp ne i32 %25, 5
  br i1 %cmp24, label %if.then.25, label %if.else.27

if.then.25:                                       ; preds = %if.then.22
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.14, i32 0, i32 0))
  store i32 1, i32* @non_conforming_stream, align 4
  br label %if.end.28

if.else.27:                                       ; preds = %if.then.22
  store i32 0, i32* @non_conforming_stream, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.27, %if.then.25
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then.20
  %26 = load %struct.img_par*, %struct.img_par** @img, align 8
  %recovery_point_found30 = getelementptr inbounds %struct.img_par, %struct.img_par* %26, i32 0, i32 136
  store i32 1, i32* %recovery_point_found30, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.29, %lor.lhs.false
  %27 = load %struct.img_par*, %struct.img_par** @img, align 8
  %recovery_point_found32 = getelementptr inbounds %struct.img_par, %struct.img_par* %27, i32 0, i32 136
  %28 = load i32, i32* %recovery_point_found32, align 4
  %cmp33 = icmp eq i32 %28, 0
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.31
  br label %sw.epilog

if.end.35:                                        ; preds = %if.end.31
  %29 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %nal_unit_type36 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %29, i32 0, i32 3
  %30 = load i32, i32* %nal_unit_type36, align 4
  %cmp37 = icmp eq i32 %30, 5
  %conv = zext i1 %cmp37 to i32
  %31 = load %struct.img_par*, %struct.img_par** @img, align 8
  %idr_flag = getelementptr inbounds %struct.img_par, %struct.img_par* %31, i32 0, i32 83
  store i32 %conv, i32* %idr_flag, align 4
  %32 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %nal_reference_idc = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %32, i32 0, i32 4
  %33 = load i32, i32* %nal_reference_idc, align 4
  %34 = load %struct.img_par*, %struct.img_par** @img, align 8
  %nal_reference_idc38 = getelementptr inbounds %struct.img_par, %struct.img_par* %34, i32 0, i32 84
  store i32 %33, i32* %nal_reference_idc38, align 4
  %35 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %dp_mode = getelementptr inbounds %struct.Slice, %struct.Slice* %35, i32 0, i32 7
  store i32 0, i32* %dp_mode, align 4
  %36 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %max_part_nr = getelementptr inbounds %struct.Slice, %struct.Slice* %36, i32 0, i32 6
  store i32 1, i32* %max_part_nr, align 4
  %37 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %ei_flag = getelementptr inbounds %struct.Slice, %struct.Slice* %37, i32 0, i32 0
  store i32 0, i32* %ei_flag, align 4
  %38 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %partArr = getelementptr inbounds %struct.Slice, %struct.Slice* %38, i32 0, i32 9
  %39 = load %struct.datapartition*, %struct.datapartition** %partArr, align 8
  %arrayidx = getelementptr inbounds %struct.datapartition, %struct.datapartition* %39, i64 0
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %arrayidx, i32 0, i32 0
  %40 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  store %struct.Bitstream* %40, %struct.Bitstream** %currStream, align 8
  %41 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %ei_flag39 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %41, i32 0, i32 5
  store i32 0, i32* %ei_flag39, align 4
  %42 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %read_len = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %42, i32 0, i32 0
  store i32 0, i32* %read_len, align 4
  %43 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %frame_bitoffset = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %43, i32 0, i32 2
  store i32 0, i32* %frame_bitoffset, align 4
  %44 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %44, i32 0, i32 4
  %45 = load i8*, i8** %streamBuffer, align 8
  %46 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %buf = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %46, i32 0, i32 6
  %47 = load i8*, i8** %buf, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %47, i64 1
  %48 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %len = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %48, i32 0, i32 1
  %49 = load i32, i32* %len, align 4
  %sub = sub i32 %49, 1
  %conv41 = zext i32 %sub to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %arrayidx40, i64 %conv41, i32 1, i1 false)
  %50 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %streamBuffer42 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %50, i32 0, i32 4
  %51 = load i8*, i8** %streamBuffer42, align 8
  %52 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %len43 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %52, i32 0, i32 1
  %53 = load i32, i32* %len43, align 4
  %sub44 = sub i32 %53, 1
  %call45 = call i32 @RBSPtoSODB(i8* %51, i32 %sub44)
  %54 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %bitstream_length = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %54, i32 0, i32 3
  store i32 %call45, i32* %bitstream_length, align 4
  %55 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %code_len = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %55, i32 0, i32 1
  store i32 %call45, i32* %code_len, align 4
  %call46 = call i32 (...) @FirstPartOfSliceHeader()
  store i32 %call46, i32* %BitsUsedByHeader, align 4
  %56 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %pic_parameter_set_id = getelementptr inbounds %struct.Slice, %struct.Slice* %56, i32 0, i32 24
  %57 = load i32, i32* %pic_parameter_set_id, align 4
  call void @UseParameterSet(i32 %57)
  %call47 = call i32 (...) @RestOfSliceHeader()
  %58 = load i32, i32* %BitsUsedByHeader, align 4
  %add = add nsw i32 %58, %call47
  store i32 %add, i32* %BitsUsedByHeader, align 4
  %59 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %60 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %call48 = call i32 @FmoInit(%struct.pic_parameter_set_rbsp_t* %59, %struct.seq_parameter_set_rbsp_t* %60)
  %61 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %62 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  call void @AssignQuantParam(%struct.pic_parameter_set_rbsp_t* %61, %struct.seq_parameter_set_rbsp_t* %62)
  %63 = load %struct.img_par*, %struct.img_par** @img, align 8
  %redundant_pic_cnt = getelementptr inbounds %struct.img_par, %struct.img_par* %63, i32 0, i32 50
  %64 = load i32, i32* %redundant_pic_cnt, align 4
  %tobool49 = icmp ne i32 %64, 0
  br i1 %tobool49, label %land.lhs.true, label %if.end.55

land.lhs.true:                                    ; preds = %if.end.35
  %65 = load i32, i32* @Is_primary_correct, align 4
  %cmp50 = icmp eq i32 %65, 0
  br i1 %cmp50, label %land.lhs.true.52, label %if.end.55

land.lhs.true.52:                                 ; preds = %land.lhs.true
  %66 = load i32, i32* @Is_redundant_correct, align 4
  %tobool53 = icmp ne i32 %66, 0
  br i1 %tobool53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %land.lhs.true.52
  %67 = load %struct.img_par*, %struct.img_par** @img, align 8
  %type = getelementptr inbounds %struct.img_par, %struct.img_par* %67, i32 0, i32 10
  %68 = load i32, i32* %type, align 4
  %69 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %slice_type = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %69, i32 0, i32 45
  store i32 %68, i32* %slice_type, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %land.lhs.true.52, %land.lhs.true, %if.end.35
  %call56 = call i32 @is_new_picture()
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %if.end.55
  %70 = load %struct.img_par*, %struct.img_par** @img, align 8
  %71 = load %struct.inp_par*, %struct.inp_par** @input, align 8
  call void @init_picture(%struct.img_par* %70, %struct.inp_par* %71)
  store i32 2, i32* %current_header, align 4
  %72 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  call void @CheckZeroByteVCL(%struct.NALU_t* %72, i32* %ret)
  br label %if.end.60

if.else.59:                                       ; preds = %if.end.55
  store i32 3, i32* %current_header, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.59, %if.then.58
  %73 = load %struct.img_par*, %struct.img_par** @img, align 8
  %type61 = getelementptr inbounds %struct.img_par, %struct.img_par* %73, i32 0, i32 10
  %74 = load i32, i32* %type61, align 4
  %75 = load %struct.img_par*, %struct.img_par** @img, align 8
  %currentSlice62 = getelementptr inbounds %struct.img_par, %struct.img_par* %75, i32 0, i32 38
  %76 = load %struct.Slice*, %struct.Slice** %currentSlice62, align 8
  %structure = getelementptr inbounds %struct.Slice, %struct.Slice* %76, i32 0, i32 4
  %77 = load i32, i32* %structure, align 4
  call void @init_lists(i32 %74, i32 %77)
  %78 = load %struct.img_par*, %struct.img_par** @img, align 8
  %type63 = getelementptr inbounds %struct.img_par, %struct.img_par* %78, i32 0, i32 10
  %79 = load i32, i32* %type63, align 4
  %80 = load %struct.img_par*, %struct.img_par** @img, align 8
  %currentSlice64 = getelementptr inbounds %struct.img_par, %struct.img_par* %80, i32 0, i32 38
  %81 = load %struct.Slice*, %struct.Slice** %currentSlice64, align 8
  call void @reorder_lists(i32 %79, %struct.Slice* %81)
  %82 = load %struct.img_par*, %struct.img_par** @img, align 8
  %structure65 = getelementptr inbounds %struct.img_par, %struct.img_par* %82, i32 0, i32 36
  %83 = load i32, i32* %structure65, align 4
  %cmp66 = icmp eq i32 %83, 0
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %if.end.60
  call void (...) @init_mbaff_lists()
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.68, %if.end.60
  %84 = load %struct.img_par*, %struct.img_par** @img, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.img_par, %struct.img_par* %84, i32 0, i32 44
  %85 = load i32, i32* %MbaffFrameFlag, align 4
  %tobool70 = icmp ne i32 %85, 0
  br i1 %tobool70, label %if.then.71, label %if.else.72

if.then.71:                                       ; preds = %if.end.69
  %86 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %start_mb_nr = getelementptr inbounds %struct.Slice, %struct.Slice* %86, i32 0, i32 5
  %87 = load i32, i32* %start_mb_nr, align 4
  %shl = shl i32 %87, 1
  %88 = load %struct.img_par*, %struct.img_par** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.img_par, %struct.img_par* %88, i32 0, i32 1
  store i32 %shl, i32* %current_mb_nr, align 4
  br label %if.end.75

if.else.72:                                       ; preds = %if.end.69
  %89 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %start_mb_nr73 = getelementptr inbounds %struct.Slice, %struct.Slice* %89, i32 0, i32 5
  %90 = load i32, i32* %start_mb_nr73, align 4
  %91 = load %struct.img_par*, %struct.img_par** @img, align 8
  %current_mb_nr74 = getelementptr inbounds %struct.img_par, %struct.img_par* %91, i32 0, i32 1
  store i32 %90, i32* %current_mb_nr74, align 4
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.72, %if.then.71
  %92 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %entropy_coding_mode_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %92, i32 0, i32 3
  %93 = load i32, i32* %entropy_coding_mode_flag, align 4
  %tobool76 = icmp ne i32 %93, 0
  br i1 %tobool76, label %if.then.77, label %if.end.89

if.then.77:                                       ; preds = %if.end.75
  %94 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %frame_bitoffset78 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %94, i32 0, i32 2
  %95 = load i32, i32* %frame_bitoffset78, align 4
  %div = sdiv i32 %95, 8
  store i32 %div, i32* %ByteStartPosition, align 4
  %96 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %frame_bitoffset79 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %96, i32 0, i32 2
  %97 = load i32, i32* %frame_bitoffset79, align 4
  %rem = srem i32 %97, 8
  %cmp80 = icmp ne i32 %rem, 0
  br i1 %cmp80, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.then.77
  %98 = load i32, i32* %ByteStartPosition, align 4
  %inc = add nsw i32 %98, 1
  store i32 %inc, i32* %ByteStartPosition, align 4
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.82, %if.then.77
  %99 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %partArr84 = getelementptr inbounds %struct.Slice, %struct.Slice* %99, i32 0, i32 9
  %100 = load %struct.datapartition*, %struct.datapartition** %partArr84, align 8
  %arrayidx85 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %100, i64 0
  %de_cabac = getelementptr inbounds %struct.datapartition, %struct.datapartition* %arrayidx85, i32 0, i32 1
  %101 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %streamBuffer86 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %101, i32 0, i32 4
  %102 = load i8*, i8** %streamBuffer86, align 8
  %103 = load i32, i32* %ByteStartPosition, align 4
  %104 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %read_len87 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %104, i32 0, i32 0
  %105 = load %struct.img_par*, %struct.img_par** @img, align 8
  %type88 = getelementptr inbounds %struct.img_par, %struct.img_par* %105, i32 0, i32 10
  %106 = load i32, i32* %type88, align 4
  call void @arideco_start_decoding(%struct.DecodingEnvironment* %de_cabac, i8* %102, i32 %103, i32* %read_len87, i32 %106)
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.83, %if.end.75
  %107 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  call void @FreeNALU(%struct.NALU_t* %107)
  %108 = load %struct.img_par*, %struct.img_par** @img, align 8
  %recovery_point90 = getelementptr inbounds %struct.img_par, %struct.img_par* %108, i32 0, i32 135
  store i32 0, i32* %recovery_point90, align 4
  %109 = load i32, i32* %current_header, align 4
  store i32 %109, i32* %retval
  br label %return

sw.bb.91:                                         ; preds = %if.end.16
  %110 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %nal_unit_type92 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %110, i32 0, i32 3
  %111 = load i32, i32* %nal_unit_type92, align 4
  %cmp93 = icmp eq i32 %111, 5
  %conv94 = zext i1 %cmp93 to i32
  %112 = load %struct.img_par*, %struct.img_par** @img, align 8
  %idr_flag95 = getelementptr inbounds %struct.img_par, %struct.img_par* %112, i32 0, i32 83
  store i32 %conv94, i32* %idr_flag95, align 4
  %113 = load %struct.img_par*, %struct.img_par** @img, align 8
  %idr_flag96 = getelementptr inbounds %struct.img_par, %struct.img_par* %113, i32 0, i32 83
  %114 = load i32, i32* %idr_flag96, align 4
  %tobool97 = icmp ne i32 %114, 0
  br i1 %tobool97, label %if.then.98, label %if.end.100

if.then.98:                                       ; preds = %sw.bb.91
  %call99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.98, %sw.bb.91
  %115 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %nal_reference_idc101 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %115, i32 0, i32 4
  %116 = load i32, i32* %nal_reference_idc101, align 4
  %117 = load %struct.img_par*, %struct.img_par** @img, align 8
  %nal_reference_idc102 = getelementptr inbounds %struct.img_par, %struct.img_par* %117, i32 0, i32 84
  store i32 %116, i32* %nal_reference_idc102, align 4
  %118 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %dp_mode103 = getelementptr inbounds %struct.Slice, %struct.Slice* %118, i32 0, i32 7
  store i32 1, i32* %dp_mode103, align 4
  %119 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %max_part_nr104 = getelementptr inbounds %struct.Slice, %struct.Slice* %119, i32 0, i32 6
  store i32 3, i32* %max_part_nr104, align 4
  %120 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %ei_flag105 = getelementptr inbounds %struct.Slice, %struct.Slice* %120, i32 0, i32 0
  store i32 0, i32* %ei_flag105, align 4
  %121 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %partArr106 = getelementptr inbounds %struct.Slice, %struct.Slice* %121, i32 0, i32 9
  %122 = load %struct.datapartition*, %struct.datapartition** %partArr106, align 8
  %arrayidx107 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %122, i64 0
  %bitstream108 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %arrayidx107, i32 0, i32 0
  %123 = load %struct.Bitstream*, %struct.Bitstream** %bitstream108, align 8
  store %struct.Bitstream* %123, %struct.Bitstream** %currStream, align 8
  %124 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %ei_flag109 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %124, i32 0, i32 5
  store i32 0, i32* %ei_flag109, align 4
  %125 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %read_len110 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %125, i32 0, i32 0
  store i32 0, i32* %read_len110, align 4
  %126 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %frame_bitoffset111 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %126, i32 0, i32 2
  store i32 0, i32* %frame_bitoffset111, align 4
  %127 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %streamBuffer112 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %127, i32 0, i32 4
  %128 = load i8*, i8** %streamBuffer112, align 8
  %129 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %buf113 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %129, i32 0, i32 6
  %130 = load i8*, i8** %buf113, align 8
  %arrayidx114 = getelementptr inbounds i8, i8* %130, i64 1
  %131 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %len115 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %131, i32 0, i32 1
  %132 = load i32, i32* %len115, align 4
  %sub116 = sub i32 %132, 1
  %conv117 = zext i32 %sub116 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %128, i8* %arrayidx114, i64 %conv117, i32 1, i1 false)
  %133 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %streamBuffer118 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %133, i32 0, i32 4
  %134 = load i8*, i8** %streamBuffer118, align 8
  %135 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %len119 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %135, i32 0, i32 1
  %136 = load i32, i32* %len119, align 4
  %sub120 = sub i32 %136, 1
  %call121 = call i32 @RBSPtoSODB(i8* %134, i32 %sub120)
  %137 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %bitstream_length122 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %137, i32 0, i32 3
  store i32 %call121, i32* %bitstream_length122, align 4
  %138 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %code_len123 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %138, i32 0, i32 1
  store i32 %call121, i32* %code_len123, align 4
  %call124 = call i32 (...) @FirstPartOfSliceHeader()
  store i32 %call124, i32* %BitsUsedByHeader, align 4
  %139 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %pic_parameter_set_id125 = getelementptr inbounds %struct.Slice, %struct.Slice* %139, i32 0, i32 24
  %140 = load i32, i32* %pic_parameter_set_id125, align 4
  call void @UseParameterSet(i32 %140)
  %call126 = call i32 (...) @RestOfSliceHeader()
  %141 = load i32, i32* %BitsUsedByHeader, align 4
  %add127 = add nsw i32 %141, %call126
  store i32 %add127, i32* %BitsUsedByHeader, align 4
  %142 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %143 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %call128 = call i32 @FmoInit(%struct.pic_parameter_set_rbsp_t* %142, %struct.seq_parameter_set_rbsp_t* %143)
  %call129 = call i32 @is_new_picture()
  %tobool130 = icmp ne i32 %call129, 0
  br i1 %tobool130, label %if.then.131, label %if.else.132

if.then.131:                                      ; preds = %if.end.100
  %144 = load %struct.img_par*, %struct.img_par** @img, align 8
  %145 = load %struct.inp_par*, %struct.inp_par** @input, align 8
  call void @init_picture(%struct.img_par* %144, %struct.inp_par* %145)
  store i32 2, i32* %current_header, align 4
  %146 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  call void @CheckZeroByteVCL(%struct.NALU_t* %146, i32* %ret)
  br label %if.end.133

if.else.132:                                      ; preds = %if.end.100
  store i32 3, i32* %current_header, align 4
  br label %if.end.133

if.end.133:                                       ; preds = %if.else.132, %if.then.131
  %147 = load %struct.img_par*, %struct.img_par** @img, align 8
  %type134 = getelementptr inbounds %struct.img_par, %struct.img_par* %147, i32 0, i32 10
  %148 = load i32, i32* %type134, align 4
  %149 = load %struct.img_par*, %struct.img_par** @img, align 8
  %currentSlice135 = getelementptr inbounds %struct.img_par, %struct.img_par* %149, i32 0, i32 38
  %150 = load %struct.Slice*, %struct.Slice** %currentSlice135, align 8
  %structure136 = getelementptr inbounds %struct.Slice, %struct.Slice* %150, i32 0, i32 4
  %151 = load i32, i32* %structure136, align 4
  call void @init_lists(i32 %148, i32 %151)
  %152 = load %struct.img_par*, %struct.img_par** @img, align 8
  %type137 = getelementptr inbounds %struct.img_par, %struct.img_par* %152, i32 0, i32 10
  %153 = load i32, i32* %type137, align 4
  %154 = load %struct.img_par*, %struct.img_par** @img, align 8
  %currentSlice138 = getelementptr inbounds %struct.img_par, %struct.img_par* %154, i32 0, i32 38
  %155 = load %struct.Slice*, %struct.Slice** %currentSlice138, align 8
  call void @reorder_lists(i32 %153, %struct.Slice* %155)
  %156 = load %struct.img_par*, %struct.img_par** @img, align 8
  %structure139 = getelementptr inbounds %struct.img_par, %struct.img_par* %156, i32 0, i32 36
  %157 = load i32, i32* %structure139, align 4
  %cmp140 = icmp eq i32 %157, 0
  br i1 %cmp140, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %if.end.133
  call void (...) @init_mbaff_lists()
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.142, %if.end.133
  %158 = load %struct.img_par*, %struct.img_par** @img, align 8
  %MbaffFrameFlag144 = getelementptr inbounds %struct.img_par, %struct.img_par* %158, i32 0, i32 44
  %159 = load i32, i32* %MbaffFrameFlag144, align 4
  %tobool145 = icmp ne i32 %159, 0
  br i1 %tobool145, label %if.then.146, label %if.else.150

if.then.146:                                      ; preds = %if.end.143
  %160 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %start_mb_nr147 = getelementptr inbounds %struct.Slice, %struct.Slice* %160, i32 0, i32 5
  %161 = load i32, i32* %start_mb_nr147, align 4
  %shl148 = shl i32 %161, 1
  %162 = load %struct.img_par*, %struct.img_par** @img, align 8
  %current_mb_nr149 = getelementptr inbounds %struct.img_par, %struct.img_par* %162, i32 0, i32 1
  store i32 %shl148, i32* %current_mb_nr149, align 4
  br label %if.end.153

if.else.150:                                      ; preds = %if.end.143
  %163 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %start_mb_nr151 = getelementptr inbounds %struct.Slice, %struct.Slice* %163, i32 0, i32 5
  %164 = load i32, i32* %start_mb_nr151, align 4
  %165 = load %struct.img_par*, %struct.img_par** @img, align 8
  %current_mb_nr152 = getelementptr inbounds %struct.img_par, %struct.img_par* %165, i32 0, i32 1
  store i32 %164, i32* %current_mb_nr152, align 4
  br label %if.end.153

if.end.153:                                       ; preds = %if.else.150, %if.then.146
  %166 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %call154 = call i32 @ue_v(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0), %struct.Bitstream* %166)
  store i32 %call154, i32* %slice_id_a, align 4
  %167 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %entropy_coding_mode_flag155 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %167, i32 0, i32 3
  %168 = load i32, i32* %entropy_coding_mode_flag155, align 4
  %tobool156 = icmp ne i32 %168, 0
  br i1 %tobool156, label %if.then.157, label %if.end.158

if.then.157:                                      ; preds = %if.end.153
  call void @error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.17, i32 0, i32 0), i32 500)
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.157, %if.end.153
  %169 = load %struct._IO_FILE*, %struct._IO_FILE** @bits, align 8
  %call159 = call i64 @ftell(%struct._IO_FILE* %169)
  store i64 %call159, i64* %ftell_position, align 8
  %170 = load %struct.inp_par*, %struct.inp_par** @input, align 8
  %FileFormat160 = getelementptr inbounds %struct.inp_par, %struct.inp_par* %170, i32 0, i32 3
  %171 = load i32, i32* %FileFormat160, align 4
  %cmp161 = icmp eq i32 %171, 0
  br i1 %cmp161, label %if.then.163, label %if.else.165

if.then.163:                                      ; preds = %if.end.158
  %172 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %call164 = call i32 @GetAnnexbNALU(%struct.NALU_t* %172)
  store i32 %call164, i32* %ret, align 4
  br label %if.end.167

if.else.165:                                      ; preds = %if.end.158
  %173 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %call166 = call i32 @GetRTPNALU(%struct.NALU_t* %173)
  store i32 %call166, i32* %ret, align 4
  br label %if.end.167

if.end.167:                                       ; preds = %if.else.165, %if.then.163
  %174 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  call void @CheckZeroByteNonVCL(%struct.NALU_t* %174, i32* %ret)
  %175 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %call168 = call i32 @NALUtoRBSP(%struct.NALU_t* %175)
  %176 = load i32, i32* %ret, align 4
  %cmp169 = icmp slt i32 %176, 0
  br i1 %cmp169, label %if.then.171, label %if.end.177

if.then.171:                                      ; preds = %if.end.167
  %177 = load %struct.inp_par*, %struct.inp_par** @input, align 8
  %FileFormat172 = getelementptr inbounds %struct.inp_par, %struct.inp_par* %177, i32 0, i32 3
  %178 = load i32, i32* %FileFormat172, align 4
  %cmp173 = icmp eq i32 %178, 0
  %cond175 = select i1 %cmp173, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0)
  %call176 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i32 0, i32 0), i8* %cond175)
  br label %if.end.177

if.end.177:                                       ; preds = %if.then.171, %if.end.167
  %179 = load i32, i32* %ret, align 4
  %cmp178 = icmp eq i32 %179, 0
  br i1 %cmp178, label %if.then.180, label %if.end.181

if.then.180:                                      ; preds = %if.end.177
  %180 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  call void @FreeNALU(%struct.NALU_t* %180)
  %181 = load i32, i32* %current_header, align 4
  store i32 %181, i32* %retval
  br label %return

if.end.181:                                       ; preds = %if.end.177
  %182 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %nal_unit_type182 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %182, i32 0, i32 3
  %183 = load i32, i32* %nal_unit_type182, align 4
  %cmp183 = icmp eq i32 3, %183
  br i1 %cmp183, label %if.then.185, label %if.end.238

if.then.185:                                      ; preds = %if.end.181
  %184 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %partArr186 = getelementptr inbounds %struct.Slice, %struct.Slice* %184, i32 0, i32 9
  %185 = load %struct.datapartition*, %struct.datapartition** %partArr186, align 8
  %arrayidx187 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %185, i64 1
  %bitstream188 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %arrayidx187, i32 0, i32 0
  %186 = load %struct.Bitstream*, %struct.Bitstream** %bitstream188, align 8
  store %struct.Bitstream* %186, %struct.Bitstream** %currStream, align 8
  %187 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %ei_flag189 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %187, i32 0, i32 5
  store i32 0, i32* %ei_flag189, align 4
  %188 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %read_len190 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %188, i32 0, i32 0
  store i32 0, i32* %read_len190, align 4
  %189 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %frame_bitoffset191 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %189, i32 0, i32 2
  store i32 0, i32* %frame_bitoffset191, align 4
  %190 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %streamBuffer192 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %190, i32 0, i32 4
  %191 = load i8*, i8** %streamBuffer192, align 8
  %192 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %buf193 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %192, i32 0, i32 6
  %193 = load i8*, i8** %buf193, align 8
  %arrayidx194 = getelementptr inbounds i8, i8* %193, i64 1
  %194 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %len195 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %194, i32 0, i32 1
  %195 = load i32, i32* %len195, align 4
  %sub196 = sub i32 %195, 1
  %conv197 = zext i32 %sub196 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %191, i8* %arrayidx194, i64 %conv197, i32 1, i1 false)
  %196 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %streamBuffer198 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %196, i32 0, i32 4
  %197 = load i8*, i8** %streamBuffer198, align 8
  %198 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %len199 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %198, i32 0, i32 1
  %199 = load i32, i32* %len199, align 4
  %sub200 = sub i32 %199, 1
  %call201 = call i32 @RBSPtoSODB(i8* %197, i32 %sub200)
  %200 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %bitstream_length202 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %200, i32 0, i32 3
  store i32 %call201, i32* %bitstream_length202, align 4
  %201 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %code_len203 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %201, i32 0, i32 1
  store i32 %call201, i32* %code_len203, align 4
  %202 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %call204 = call i32 @ue_v(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0), %struct.Bitstream* %202)
  store i32 %call204, i32* %slice_id_b, align 4
  %203 = load i32, i32* %slice_id_b, align 4
  %204 = load i32, i32* %slice_id_a, align 4
  %cmp205 = icmp ne i32 %203, %204
  br i1 %cmp205, label %if.then.207, label %if.end.209

if.then.207:                                      ; preds = %if.then.185
  %call208 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.19, i32 0, i32 0))
  br label %if.end.209

if.end.209:                                       ; preds = %if.then.207, %if.then.185
  %205 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %redundant_pic_cnt_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %205, i32 0, i32 31
  %206 = load i32, i32* %redundant_pic_cnt_present_flag, align 4
  %tobool210 = icmp ne i32 %206, 0
  br i1 %tobool210, label %if.then.211, label %if.else.213

if.then.211:                                      ; preds = %if.end.209
  %207 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %call212 = call i32 @ue_v(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i32 0, i32 0), %struct.Bitstream* %207)
  store i32 %call212, i32* %redundant_pic_cnt_b, align 4
  br label %if.end.214

if.else.213:                                      ; preds = %if.end.209
  store i32 0, i32* %redundant_pic_cnt_b, align 4
  br label %if.end.214

if.end.214:                                       ; preds = %if.else.213, %if.then.211
  %208 = load %struct._IO_FILE*, %struct._IO_FILE** @bits, align 8
  %call215 = call i64 @ftell(%struct._IO_FILE* %208)
  store i64 %call215, i64* %ftell_position, align 8
  %209 = load %struct.inp_par*, %struct.inp_par** @input, align 8
  %FileFormat216 = getelementptr inbounds %struct.inp_par, %struct.inp_par* %209, i32 0, i32 3
  %210 = load i32, i32* %FileFormat216, align 4
  %cmp217 = icmp eq i32 %210, 0
  br i1 %cmp217, label %if.then.219, label %if.else.221

if.then.219:                                      ; preds = %if.end.214
  %211 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %call220 = call i32 @GetAnnexbNALU(%struct.NALU_t* %211)
  store i32 %call220, i32* %ret, align 4
  br label %if.end.223

if.else.221:                                      ; preds = %if.end.214
  %212 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %call222 = call i32 @GetRTPNALU(%struct.NALU_t* %212)
  store i32 %call222, i32* %ret, align 4
  br label %if.end.223

if.end.223:                                       ; preds = %if.else.221, %if.then.219
  %213 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  call void @CheckZeroByteNonVCL(%struct.NALU_t* %213, i32* %ret)
  %214 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %call224 = call i32 @NALUtoRBSP(%struct.NALU_t* %214)
  %215 = load i32, i32* %ret, align 4
  %cmp225 = icmp slt i32 %215, 0
  br i1 %cmp225, label %if.then.227, label %if.end.233

if.then.227:                                      ; preds = %if.end.223
  %216 = load %struct.inp_par*, %struct.inp_par** @input, align 8
  %FileFormat228 = getelementptr inbounds %struct.inp_par, %struct.inp_par* %216, i32 0, i32 3
  %217 = load i32, i32* %FileFormat228, align 4
  %cmp229 = icmp eq i32 %217, 0
  %cond231 = select i1 %cmp229, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0)
  %call232 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i32 0, i32 0), i8* %cond231)
  br label %if.end.233

if.end.233:                                       ; preds = %if.then.227, %if.end.223
  %218 = load i32, i32* %ret, align 4
  %cmp234 = icmp eq i32 %218, 0
  br i1 %cmp234, label %if.then.236, label %if.end.237

if.then.236:                                      ; preds = %if.end.233
  %219 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  call void @FreeNALU(%struct.NALU_t* %219)
  %220 = load i32, i32* %current_header, align 4
  store i32 %220, i32* %retval
  br label %return

if.end.237:                                       ; preds = %if.end.233
  br label %if.end.238

if.end.238:                                       ; preds = %if.end.237, %if.end.181
  %221 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %nal_unit_type239 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %221, i32 0, i32 3
  %222 = load i32, i32* %nal_unit_type239, align 4
  %cmp240 = icmp eq i32 4, %222
  br i1 %cmp240, label %if.then.242, label %if.end.273

if.then.242:                                      ; preds = %if.end.238
  %223 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %partArr243 = getelementptr inbounds %struct.Slice, %struct.Slice* %223, i32 0, i32 9
  %224 = load %struct.datapartition*, %struct.datapartition** %partArr243, align 8
  %arrayidx244 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %224, i64 2
  %bitstream245 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %arrayidx244, i32 0, i32 0
  %225 = load %struct.Bitstream*, %struct.Bitstream** %bitstream245, align 8
  store %struct.Bitstream* %225, %struct.Bitstream** %currStream, align 8
  %226 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %ei_flag246 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %226, i32 0, i32 5
  store i32 0, i32* %ei_flag246, align 4
  %227 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %read_len247 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %227, i32 0, i32 0
  store i32 0, i32* %read_len247, align 4
  %228 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %frame_bitoffset248 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %228, i32 0, i32 2
  store i32 0, i32* %frame_bitoffset248, align 4
  %229 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %streamBuffer249 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %229, i32 0, i32 4
  %230 = load i8*, i8** %streamBuffer249, align 8
  %231 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %buf250 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %231, i32 0, i32 6
  %232 = load i8*, i8** %buf250, align 8
  %arrayidx251 = getelementptr inbounds i8, i8* %232, i64 1
  %233 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %len252 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %233, i32 0, i32 1
  %234 = load i32, i32* %len252, align 4
  %sub253 = sub i32 %234, 1
  %conv254 = zext i32 %sub253 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %230, i8* %arrayidx251, i64 %conv254, i32 1, i1 false)
  %235 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %streamBuffer255 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %235, i32 0, i32 4
  %236 = load i8*, i8** %streamBuffer255, align 8
  %237 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %len256 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %237, i32 0, i32 1
  %238 = load i32, i32* %len256, align 4
  %sub257 = sub i32 %238, 1
  %call258 = call i32 @RBSPtoSODB(i8* %236, i32 %sub257)
  %239 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %bitstream_length259 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %239, i32 0, i32 3
  store i32 %call258, i32* %bitstream_length259, align 4
  %240 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %code_len260 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %240, i32 0, i32 1
  store i32 %call258, i32* %code_len260, align 4
  %241 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %call261 = call i32 @ue_v(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0), %struct.Bitstream* %241)
  store i32 %call261, i32* %slice_id_c, align 4
  %242 = load i32, i32* %slice_id_c, align 4
  %243 = load i32, i32* %slice_id_a, align 4
  %cmp262 = icmp ne i32 %242, %243
  br i1 %cmp262, label %if.then.264, label %if.end.266

if.then.264:                                      ; preds = %if.then.242
  %call265 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end.266

if.end.266:                                       ; preds = %if.then.264, %if.then.242
  %244 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %redundant_pic_cnt_present_flag267 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %244, i32 0, i32 31
  %245 = load i32, i32* %redundant_pic_cnt_present_flag267, align 4
  %tobool268 = icmp ne i32 %245, 0
  br i1 %tobool268, label %if.then.269, label %if.else.271

if.then.269:                                      ; preds = %if.end.266
  %246 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %call270 = call i32 @ue_v(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.23, i32 0, i32 0), %struct.Bitstream* %246)
  store i32 %call270, i32* %redundant_pic_cnt_c, align 4
  br label %if.end.272

if.else.271:                                      ; preds = %if.end.266
  store i32 0, i32* %redundant_pic_cnt_c, align 4
  br label %if.end.272

if.end.272:                                       ; preds = %if.else.271, %if.then.269
  br label %if.end.273

if.end.273:                                       ; preds = %if.end.272, %if.end.238
  %247 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %nal_unit_type274 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %247, i32 0, i32 3
  %248 = load i32, i32* %nal_unit_type274, align 4
  %cmp275 = icmp ne i32 %248, 3
  br i1 %cmp275, label %land.lhs.true.277, label %if.end.283

land.lhs.true.277:                                ; preds = %if.end.273
  %249 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %nal_unit_type278 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %249, i32 0, i32 3
  %250 = load i32, i32* %nal_unit_type278, align 4
  %cmp279 = icmp ne i32 %250, 4
  br i1 %cmp279, label %if.then.281, label %if.end.283

if.then.281:                                      ; preds = %land.lhs.true.277
  %251 = load %struct._IO_FILE*, %struct._IO_FILE** @bits, align 8
  %252 = load i64, i64* %ftell_position, align 8
  %call282 = call i32 @fseek(%struct._IO_FILE* %251, i64 %252, i32 0)
  br label %if.end.283

if.end.283:                                       ; preds = %if.then.281, %land.lhs.true.277, %if.end.273
  %253 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  call void @FreeNALU(%struct.NALU_t* %253)
  %254 = load i32, i32* %current_header, align 4
  store i32 %254, i32* %retval
  br label %return

sw.bb.284:                                        ; preds = %if.end.16
  %call285 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.24, i32 0, i32 0))
  br label %sw.epilog

sw.bb.286:                                        ; preds = %if.end.16
  %call287 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.25, i32 0, i32 0))
  br label %sw.epilog

sw.bb.288:                                        ; preds = %if.end.16
  %255 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %len289 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %255, i32 0, i32 1
  %256 = load i32, i32* %len289, align 4
  %call290 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.26, i32 0, i32 0), i32 %256)
  %257 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %buf291 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %257, i32 0, i32 6
  %258 = load i8*, i8** %buf291, align 8
  %259 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %len292 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %259, i32 0, i32 1
  %260 = load i32, i32* %len292, align 4
  %261 = load %struct.img_par*, %struct.img_par** @img, align 8
  call void @InterpretSEIMessage(i8* %258, i32 %260, %struct.img_par* %261)
  br label %sw.epilog

sw.bb.293:                                        ; preds = %if.end.16
  %262 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  call void @ProcessPPS(%struct.NALU_t* %262)
  br label %sw.epilog

sw.bb.294:                                        ; preds = %if.end.16
  %263 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  call void @ProcessSPS(%struct.NALU_t* %263)
  br label %sw.epilog

sw.bb.295:                                        ; preds = %if.end.16
  br label %sw.epilog

sw.bb.296:                                        ; preds = %if.end.16
  br label %sw.epilog

sw.bb.297:                                        ; preds = %if.end.16
  br label %sw.epilog

sw.bb.298:                                        ; preds = %if.end.16
  %264 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %len299 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %264, i32 0, i32 1
  %265 = load i32, i32* %len299, align 4
  %call300 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.27, i32 0, i32 0), i32 %265)
  %call301 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.28, i32 0, i32 0))
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.16
  %266 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %nal_unit_type302 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %266, i32 0, i32 3
  %267 = load i32, i32* %nal_unit_type302, align 4
  %268 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %len303 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %268, i32 0, i32 1
  %269 = load i32, i32* %len303, align 4
  %call304 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.29, i32 0, i32 0), i32 %267, i32 %269)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.298, %sw.bb.297, %sw.bb.296, %sw.bb.295, %sw.bb.294, %sw.bb.293, %sw.bb.288, %sw.bb.286, %sw.bb.284, %if.then.34
  br label %while.body

return:                                           ; preds = %if.end.283, %if.then.236, %if.then.180, %if.end.89, %if.then.12
  %270 = load i32, i32* %retval
  ret i32 %270
}

declare %struct.NALU_t* @AllocNALU(...) #1

declare i64 @ftell(%struct._IO_FILE*) #1

declare i32 @GetAnnexbNALU(%struct.NALU_t*) #1

declare i32 @GetRTPNALU(%struct.NALU_t*) #1

declare void @CheckZeroByteNonVCL(%struct.NALU_t*, i32*) #1

declare i32 @NALUtoRBSP(%struct.NALU_t*) #1

declare void @FreeNALU(%struct.NALU_t*) #1

declare i32 @RBSPtoSODB(i8*, i32) #1

declare i32 @FirstPartOfSliceHeader(...) #1

declare void @UseParameterSet(i32) #1

declare i32 @RestOfSliceHeader(...) #1

declare i32 @FmoInit(%struct.pic_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t*) #1

declare void @AssignQuantParam(%struct.pic_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t*) #1

; Function Attrs: nounwind uwtable
define void @init_picture(%struct.img_par* %img, %struct.inp_par* %inp) #0 {
entry:
  %img.addr = alloca %struct.img_par*, align 8
  %inp.addr = alloca %struct.inp_par*, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %currSlice = alloca %struct.Slice*, align 8
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  store %struct.inp_par* %inp, %struct.inp_par** %inp.addr, align 8
  %0 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %currentSlice = getelementptr inbounds %struct.img_par, %struct.img_par* %0, i32 0, i32 38
  %1 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  store %struct.Slice* %1, %struct.Slice** %currSlice, align 8
  %2 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %tobool = icmp ne %struct.storable_picture* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @exit_picture()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %recovery_point = getelementptr inbounds %struct.img_par, %struct.img_par* %3, i32 0, i32 135
  %4 = load i32, i32* %recovery_point, align 4
  %tobool1 = icmp ne i32 %4, 0
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %5 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %frame_num = getelementptr inbounds %struct.img_par, %struct.img_par* %5, i32 0, i32 56
  %6 = load i32, i32* %frame_num, align 4
  %7 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %recovery_frame_cnt = getelementptr inbounds %struct.img_par, %struct.img_par* %7, i32 0, i32 137
  %8 = load i32, i32* %recovery_frame_cnt, align 4
  %add = add i32 %6, %8
  %9 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %MaxFrameNum = getelementptr inbounds %struct.img_par, %struct.img_par* %9, i32 0, i32 86
  %10 = load i32, i32* %MaxFrameNum, align 4
  %rem = urem i32 %add, %10
  %11 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %recovery_frame_num = getelementptr inbounds %struct.img_par, %struct.img_par* %11, i32 0, i32 138
  store i32 %rem, i32* %recovery_frame_num, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %12 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %idr_flag = getelementptr inbounds %struct.img_par, %struct.img_par* %12, i32 0, i32 83
  %13 = load i32, i32* %idr_flag, align 4
  %tobool4 = icmp ne i32 %13, 0
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end.3
  %14 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %frame_num6 = getelementptr inbounds %struct.img_par, %struct.img_par* %14, i32 0, i32 56
  %15 = load i32, i32* %frame_num6, align 4
  %16 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %recovery_frame_num7 = getelementptr inbounds %struct.img_par, %struct.img_par* %16, i32 0, i32 138
  store i32 %15, i32* %recovery_frame_num7, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end.3
  %17 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %recovery_point9 = getelementptr inbounds %struct.img_par, %struct.img_par* %17, i32 0, i32 135
  %18 = load i32, i32* %recovery_point9, align 4
  %cmp = icmp eq i32 %18, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.45

land.lhs.true:                                    ; preds = %if.end.8
  %19 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %frame_num10 = getelementptr inbounds %struct.img_par, %struct.img_par* %19, i32 0, i32 56
  %20 = load i32, i32* %frame_num10, align 4
  %21 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %pre_frame_num = getelementptr inbounds %struct.img_par, %struct.img_par* %21, i32 0, i32 52
  %22 = load i32, i32* %pre_frame_num, align 4
  %cmp11 = icmp ne i32 %20, %22
  br i1 %cmp11, label %land.lhs.true.12, label %if.end.45

land.lhs.true.12:                                 ; preds = %land.lhs.true
  %23 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %frame_num13 = getelementptr inbounds %struct.img_par, %struct.img_par* %23, i32 0, i32 56
  %24 = load i32, i32* %frame_num13, align 4
  %25 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %pre_frame_num14 = getelementptr inbounds %struct.img_par, %struct.img_par* %25, i32 0, i32 52
  %26 = load i32, i32* %pre_frame_num14, align 4
  %add15 = add i32 %26, 1
  %27 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %MaxFrameNum16 = getelementptr inbounds %struct.img_par, %struct.img_par* %27, i32 0, i32 86
  %28 = load i32, i32* %MaxFrameNum16, align 4
  %rem17 = urem i32 %add15, %28
  %cmp18 = icmp ne i32 %24, %rem17
  br i1 %cmp18, label %if.then.19, label %if.end.45

if.then.19:                                       ; preds = %land.lhs.true.12
  %29 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %gaps_in_frame_num_value_allowed_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %29, i32 0, i32 26
  %30 = load i32, i32* %gaps_in_frame_num_value_allowed_flag, align 4
  %cmp20 = icmp eq i32 %30, 0
  br i1 %cmp20, label %if.then.21, label %if.end.40

if.then.21:                                       ; preds = %if.then.19
  %31 = load %struct.inp_par*, %struct.inp_par** %inp.addr, align 8
  %conceal_mode = getelementptr inbounds %struct.inp_par, %struct.inp_par* %31, i32 0, i32 8
  %32 = load i32, i32* %conceal_mode, align 4
  %cmp22 = icmp ne i32 %32, 0
  br i1 %cmp22, label %if.then.23, label %if.else.38

if.then.23:                                       ; preds = %if.then.21
  %33 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %frame_num24 = getelementptr inbounds %struct.img_par, %struct.img_par* %33, i32 0, i32 56
  %34 = load i32, i32* %frame_num24, align 4
  %35 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %pre_frame_num25 = getelementptr inbounds %struct.img_par, %struct.img_par* %35, i32 0, i32 52
  %36 = load i32, i32* %pre_frame_num25, align 4
  %add26 = add i32 %36, 1
  %37 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %MaxFrameNum27 = getelementptr inbounds %struct.img_par, %struct.img_par* %37, i32 0, i32 86
  %38 = load i32, i32* %MaxFrameNum27, align 4
  %rem28 = urem i32 %add26, %38
  %cmp29 = icmp ult i32 %34, %rem28
  br i1 %cmp29, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %if.then.23
  %39 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %conceal_mode31 = getelementptr inbounds %struct.img_par, %struct.img_par* %39, i32 0, i32 130
  store i32 1, i32* %conceal_mode31, align 4
  %40 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %IDR_concealment_flag = getelementptr inbounds %struct.img_par, %struct.img_par* %40, i32 0, i32 133
  store i32 1, i32* %IDR_concealment_flag, align 4
  %41 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  call void @conceal_lost_frames(%struct.img_par* %41)
  %42 = load %struct.inp_par*, %struct.inp_par** %inp.addr, align 8
  %conceal_mode32 = getelementptr inbounds %struct.inp_par, %struct.inp_par* %42, i32 0, i32 8
  %43 = load i32, i32* %conceal_mode32, align 4
  %44 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %conceal_mode33 = getelementptr inbounds %struct.img_par, %struct.img_par* %44, i32 0, i32 130
  store i32 %43, i32* %conceal_mode33, align 4
  br label %if.end.37

if.else:                                          ; preds = %if.then.23
  %45 = load %struct.inp_par*, %struct.inp_par** %inp.addr, align 8
  %conceal_mode34 = getelementptr inbounds %struct.inp_par, %struct.inp_par* %45, i32 0, i32 8
  %46 = load i32, i32* %conceal_mode34, align 4
  %47 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %conceal_mode35 = getelementptr inbounds %struct.img_par, %struct.img_par* %47, i32 0, i32 130
  store i32 %46, i32* %conceal_mode35, align 4
  %48 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %IDR_concealment_flag36 = getelementptr inbounds %struct.img_par, %struct.img_par* %48, i32 0, i32 133
  store i32 0, i32* %IDR_concealment_flag36, align 4
  %49 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  call void @conceal_lost_frames(%struct.img_par* %49)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else, %if.then.30
  br label %if.end.39

if.else.38:                                       ; preds = %if.then.21
  call void @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.30, i32 0, i32 0), i32 100)
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.38, %if.end.37
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.19
  %50 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %conceal_mode41 = getelementptr inbounds %struct.img_par, %struct.img_par* %50, i32 0, i32 130
  %51 = load i32, i32* %conceal_mode41, align 4
  %cmp42 = icmp eq i32 %51, 0
  br i1 %cmp42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.40
  %52 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  call void @fill_frame_num_gap(%struct.img_par* %52)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %if.end.40
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %land.lhs.true.12, %land.lhs.true, %if.end.8
  %53 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %nal_reference_idc = getelementptr inbounds %struct.img_par, %struct.img_par* %53, i32 0, i32 84
  %54 = load i32, i32* %nal_reference_idc, align 4
  %tobool46 = icmp ne i32 %54, 0
  br i1 %tobool46, label %if.then.47, label %if.end.50

if.then.47:                                       ; preds = %if.end.45
  %55 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %frame_num48 = getelementptr inbounds %struct.img_par, %struct.img_par* %55, i32 0, i32 56
  %56 = load i32, i32* %frame_num48, align 4
  %57 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %pre_frame_num49 = getelementptr inbounds %struct.img_par, %struct.img_par* %57, i32 0, i32 52
  store i32 %56, i32* %pre_frame_num49, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.47, %if.end.45
  %58 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  call void @decode_poc(%struct.img_par* %58)
  %59 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %recovery_frame_num51 = getelementptr inbounds %struct.img_par, %struct.img_par* %59, i32 0, i32 138
  %60 = load i32, i32* %recovery_frame_num51, align 4
  %61 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %frame_num52 = getelementptr inbounds %struct.img_par, %struct.img_par* %61, i32 0, i32 56
  %62 = load i32, i32* %frame_num52, align 4
  %cmp53 = icmp eq i32 %60, %62
  br i1 %cmp53, label %land.lhs.true.54, label %if.end.58

land.lhs.true.54:                                 ; preds = %if.end.50
  %63 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %recovery_poc = getelementptr inbounds %struct.img_par, %struct.img_par* %63, i32 0, i32 139
  %64 = load i32, i32* %recovery_poc, align 4
  %cmp55 = icmp eq i32 %64, 2147483647
  br i1 %cmp55, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %land.lhs.true.54
  %65 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %framepoc = getelementptr inbounds %struct.img_par, %struct.img_par* %65, i32 0, i32 55
  %66 = load i32, i32* %framepoc, align 4
  %67 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %recovery_poc57 = getelementptr inbounds %struct.img_par, %struct.img_par* %67, i32 0, i32 139
  store i32 %66, i32* %recovery_poc57, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.56, %land.lhs.true.54, %if.end.50
  %68 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %nal_reference_idc59 = getelementptr inbounds %struct.img_par, %struct.img_par* %68, i32 0, i32 84
  %69 = load i32, i32* %nal_reference_idc59, align 4
  %tobool60 = icmp ne i32 %69, 0
  br i1 %tobool60, label %if.then.61, label %if.end.63

if.then.61:                                       ; preds = %if.end.58
  %70 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %framepoc62 = getelementptr inbounds %struct.img_par, %struct.img_par* %70, i32 0, i32 55
  %71 = load i32, i32* %framepoc62, align 4
  %72 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %last_ref_pic_poc = getelementptr inbounds %struct.img_par, %struct.img_par* %72, i32 0, i32 127
  store i32 %71, i32* %last_ref_pic_poc, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.61, %if.end.58
  %73 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %structure = getelementptr inbounds %struct.img_par, %struct.img_par* %73, i32 0, i32 36
  %74 = load i32, i32* %structure, align 4
  %cmp64 = icmp eq i32 %74, 0
  br i1 %cmp64, label %if.then.67, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.63
  %75 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %structure65 = getelementptr inbounds %struct.img_par, %struct.img_par* %75, i32 0, i32 36
  %76 = load i32, i32* %structure65, align 4
  %cmp66 = icmp eq i32 %76, 1
  br i1 %cmp66, label %if.then.67, label %if.end.69

if.then.67:                                       ; preds = %lor.lhs.false, %if.end.63
  %77 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %tstruct_start = getelementptr inbounds %struct.img_par, %struct.img_par* %77, i32 0, i32 125
  %call = call i32 @ftime(%struct.timeb* %tstruct_start)
  %78 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %ltime_start = getelementptr inbounds %struct.img_par, %struct.img_par* %78, i32 0, i32 123
  %call68 = call i64 @time(i64* %ltime_start) #2
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.67, %lor.lhs.false
  %79 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %structure70 = getelementptr inbounds %struct.img_par, %struct.img_par* %79, i32 0, i32 36
  %80 = load i32, i32* %structure70, align 4
  %81 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %width = getelementptr inbounds %struct.img_par, %struct.img_par* %81, i32 0, i32 11
  %82 = load i32, i32* %width, align 4
  %83 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %height = getelementptr inbounds %struct.img_par, %struct.img_par* %83, i32 0, i32 12
  %84 = load i32, i32* %height, align 4
  %85 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %width_cr = getelementptr inbounds %struct.img_par, %struct.img_par* %85, i32 0, i32 13
  %86 = load i32, i32* %width_cr, align 4
  %87 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %height_cr = getelementptr inbounds %struct.img_par, %struct.img_par* %87, i32 0, i32 15
  %88 = load i32, i32* %height_cr, align 4
  %call71 = call %struct.storable_picture* @alloc_storable_picture(i32 %80, i32 %82, i32 %84, i32 %86, i32 %88)
  store %struct.storable_picture* %call71, %struct.storable_picture** @dec_picture, align 8
  %89 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %toppoc = getelementptr inbounds %struct.img_par, %struct.img_par* %89, i32 0, i32 53
  %90 = load i32, i32* %toppoc, align 4
  %91 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %top_poc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %91, i32 0, i32 2
  store i32 %90, i32* %top_poc, align 4
  %92 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %bottompoc = getelementptr inbounds %struct.img_par, %struct.img_par* %92, i32 0, i32 54
  %93 = load i32, i32* %bottompoc, align 4
  %94 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %bottom_poc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %94, i32 0, i32 3
  store i32 %93, i32* %bottom_poc, align 4
  %95 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %framepoc72 = getelementptr inbounds %struct.img_par, %struct.img_par* %95, i32 0, i32 55
  %96 = load i32, i32* %framepoc72, align 4
  %97 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %frame_poc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %97, i32 0, i32 4
  store i32 %96, i32* %frame_poc, align 4
  %98 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %qp = getelementptr inbounds %struct.img_par, %struct.img_par* %98, i32 0, i32 6
  %99 = load i32, i32* %qp, align 4
  %100 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %qp73 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %100, i32 0, i32 57
  store i32 %99, i32* %qp73, align 4
  %101 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %slice_qp_delta = getelementptr inbounds %struct.Slice, %struct.Slice* %101, i32 0, i32 2
  %102 = load i32, i32* %slice_qp_delta, align 4
  %103 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %slice_qp_delta74 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %103, i32 0, i32 59
  store i32 %102, i32* %slice_qp_delta74, align 4
  %104 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %chroma_qp_index_offset = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %104, i32 0, i32 27
  %105 = load i32, i32* %chroma_qp_index_offset, align 4
  %106 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %chroma_qp_offset = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %106, i32 0, i32 58
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %chroma_qp_offset, i32 0, i64 0
  store i32 %105, i32* %arrayidx, align 4
  %107 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %second_chroma_qp_index_offset = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %107, i32 0, i32 28
  %108 = load i32, i32* %second_chroma_qp_index_offset, align 4
  %109 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %chroma_qp_offset75 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %109, i32 0, i32 58
  %arrayidx76 = getelementptr inbounds [2 x i32], [2 x i32]* %chroma_qp_offset75, i32 0, i64 1
  store i32 %108, i32* %arrayidx76, align 4
  %110 = load %struct.ercVariables_s*, %struct.ercVariables_s** @erc_errorVar, align 8
  %111 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %PicSizeInMbs = getelementptr inbounds %struct.img_par, %struct.img_par* %111, i32 0, i32 91
  %112 = load i32, i32* %PicSizeInMbs, align 4
  %113 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %PicSizeInMbs77 = getelementptr inbounds %struct.img_par, %struct.img_par* %113, i32 0, i32 91
  %114 = load i32, i32* %PicSizeInMbs77, align 4
  %115 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %size_x = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %115, i32 0, i32 19
  %116 = load i32, i32* %size_x, align 4
  call void @ercReset(%struct.ercVariables_s* %110, i32 %112, i32 %114, i32 %116)
  store i32 0, i32* @erc_mvperMB, align 4
  %117 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %structure78 = getelementptr inbounds %struct.img_par, %struct.img_par* %117, i32 0, i32 36
  %118 = load i32, i32* %structure78, align 4
  switch i32 %118, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.80
    i32 0, label %sw.bb.87
  ]

sw.bb:                                            ; preds = %if.end.69
  %119 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %toppoc79 = getelementptr inbounds %struct.img_par, %struct.img_par* %119, i32 0, i32 53
  %120 = load i32, i32* %toppoc79, align 4
  %121 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %poc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %121, i32 0, i32 1
  store i32 %120, i32* %poc, align 4
  %122 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %number = getelementptr inbounds %struct.img_par, %struct.img_par* %122, i32 0, i32 0
  %123 = load i32, i32* %number, align 4
  %mul = mul nsw i32 %123, 2
  store i32 %mul, i32* %number, align 4
  br label %sw.epilog

sw.bb.80:                                         ; preds = %if.end.69
  %124 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %bottompoc81 = getelementptr inbounds %struct.img_par, %struct.img_par* %124, i32 0, i32 54
  %125 = load i32, i32* %bottompoc81, align 4
  %126 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %poc82 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %126, i32 0, i32 1
  store i32 %125, i32* %poc82, align 4
  %127 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %number83 = getelementptr inbounds %struct.img_par, %struct.img_par* %127, i32 0, i32 0
  %128 = load i32, i32* %number83, align 4
  %mul84 = mul nsw i32 %128, 2
  %add85 = add nsw i32 %mul84, 1
  %129 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %number86 = getelementptr inbounds %struct.img_par, %struct.img_par* %129, i32 0, i32 0
  store i32 %add85, i32* %number86, align 4
  br label %sw.epilog

sw.bb.87:                                         ; preds = %if.end.69
  %130 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %framepoc88 = getelementptr inbounds %struct.img_par, %struct.img_par* %130, i32 0, i32 55
  %131 = load i32, i32* %framepoc88, align 4
  %132 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %poc89 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %132, i32 0, i32 1
  store i32 %131, i32* %poc89, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.69
  call void @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.31, i32 0, i32 0), i32 235)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.87, %sw.bb.80, %sw.bb
  %133 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %current_slice_nr = getelementptr inbounds %struct.img_par, %struct.img_par* %133, i32 0, i32 3
  store i32 0, i32* %current_slice_nr, align 4
  %134 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %type = getelementptr inbounds %struct.img_par, %struct.img_par* %134, i32 0, i32 10
  %135 = load i32, i32* %type, align 4
  %cmp90 = icmp sgt i32 %135, 4
  br i1 %cmp90, label %if.then.91, label %if.end.94

if.then.91:                                       ; preds = %sw.epilog
  %call92 = call i32 @set_ec_flag(i32 1)
  %136 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %type93 = getelementptr inbounds %struct.img_par, %struct.img_par* %136, i32 0, i32 10
  store i32 0, i32* %type93, align 4
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.91, %sw.epilog
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.112, %if.end.94
  %137 = load i32, i32* %i, align 4
  %138 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %PicSizeInMbs95 = getelementptr inbounds %struct.img_par, %struct.img_par* %138, i32 0, i32 91
  %139 = load i32, i32* %PicSizeInMbs95, align 4
  %cmp96 = icmp slt i32 %137, %139
  br i1 %cmp96, label %for.body, label %for.end.114

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %k, align 4
  br label %for.cond.97

for.cond.97:                                      ; preds = %for.inc.109, %for.body
  %140 = load i32, i32* %k, align 4
  %cmp98 = icmp slt i32 %140, 4
  br i1 %cmp98, label %for.body.99, label %for.end.111

for.body.99:                                      ; preds = %for.cond.97
  store i32 0, i32* %l, align 4
  br label %for.cond.100

for.cond.100:                                     ; preds = %for.inc, %for.body.99
  %141 = load i32, i32* %l, align 4
  %142 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %num_blk8x8_uv = getelementptr inbounds %struct.img_par, %struct.img_par* %142, i32 0, i32 113
  %143 = load i32, i32* %num_blk8x8_uv, align 4
  %add101 = add nsw i32 4, %143
  %cmp102 = icmp slt i32 %141, %add101
  br i1 %cmp102, label %for.body.103, label %for.end

for.body.103:                                     ; preds = %for.cond.100
  %144 = load i32, i32* %l, align 4
  %idxprom = sext i32 %144 to i64
  %145 = load i32, i32* %k, align 4
  %idxprom104 = sext i32 %145 to i64
  %146 = load i32, i32* %i, align 4
  %idxprom105 = sext i32 %146 to i64
  %147 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %nz_coeff = getelementptr inbounds %struct.img_par, %struct.img_par* %147, i32 0, i32 32
  %148 = load i32***, i32**** %nz_coeff, align 8
  %arrayidx106 = getelementptr inbounds i32**, i32*** %148, i64 %idxprom105
  %149 = load i32**, i32*** %arrayidx106, align 8
  %arrayidx107 = getelementptr inbounds i32*, i32** %149, i64 %idxprom104
  %150 = load i32*, i32** %arrayidx107, align 8
  %arrayidx108 = getelementptr inbounds i32, i32* %150, i64 %idxprom
  store i32 -1, i32* %arrayidx108, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.103
  %151 = load i32, i32* %l, align 4
  %inc = add nsw i32 %151, 1
  store i32 %inc, i32* %l, align 4
  br label %for.cond.100

for.end:                                          ; preds = %for.cond.100
  br label %for.inc.109

for.inc.109:                                      ; preds = %for.end
  %152 = load i32, i32* %k, align 4
  %inc110 = add nsw i32 %152, 1
  store i32 %inc110, i32* %k, align 4
  br label %for.cond.97

for.end.111:                                      ; preds = %for.cond.97
  br label %for.inc.112

for.inc.112:                                      ; preds = %for.end.111
  %153 = load i32, i32* %i, align 4
  %inc113 = add nsw i32 %153, 1
  store i32 %inc113, i32* %i, align 4
  br label %for.cond

for.end.114:                                      ; preds = %for.cond
  %154 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %constrained_intra_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %154, i32 0, i32 30
  %155 = load i32, i32* %constrained_intra_pred_flag, align 4
  %tobool115 = icmp ne i32 %155, 0
  br i1 %tobool115, label %if.then.116, label %if.end.126

if.then.116:                                      ; preds = %for.end.114
  store i32 0, i32* %i, align 4
  br label %for.cond.117

for.cond.117:                                     ; preds = %for.inc.123, %if.then.116
  %156 = load i32, i32* %i, align 4
  %157 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %PicSizeInMbs118 = getelementptr inbounds %struct.img_par, %struct.img_par* %157, i32 0, i32 91
  %158 = load i32, i32* %PicSizeInMbs118, align 4
  %cmp119 = icmp slt i32 %156, %158
  br i1 %cmp119, label %for.body.120, label %for.end.125

for.body.120:                                     ; preds = %for.cond.117
  %159 = load i32, i32* %i, align 4
  %idxprom121 = sext i32 %159 to i64
  %160 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %intra_block = getelementptr inbounds %struct.img_par, %struct.img_par* %160, i32 0, i32 4
  %161 = load i32*, i32** %intra_block, align 8
  %arrayidx122 = getelementptr inbounds i32, i32* %161, i64 %idxprom121
  store i32 1, i32* %arrayidx122, align 4
  br label %for.inc.123

for.inc.123:                                      ; preds = %for.body.120
  %162 = load i32, i32* %i, align 4
  %inc124 = add nsw i32 %162, 1
  store i32 %inc124, i32* %i, align 4
  br label %for.cond.117

for.end.125:                                      ; preds = %for.cond.117
  br label %if.end.126

if.end.126:                                       ; preds = %for.end.125, %for.end.114
  store i32 0, i32* %i, align 4
  br label %for.cond.127

for.cond.127:                                     ; preds = %for.inc.136, %if.end.126
  %163 = load i32, i32* %i, align 4
  %164 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %PicSizeInMbs128 = getelementptr inbounds %struct.img_par, %struct.img_par* %164, i32 0, i32 91
  %165 = load i32, i32* %PicSizeInMbs128, align 4
  %cmp129 = icmp slt i32 %163, %165
  br i1 %cmp129, label %for.body.130, label %for.end.138

for.body.130:                                     ; preds = %for.cond.127
  %166 = load i32, i32* %i, align 4
  %idxprom131 = sext i32 %166 to i64
  %167 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_data = getelementptr inbounds %struct.img_par, %struct.img_par* %167, i32 0, i32 39
  %168 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx132 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %168, i64 %idxprom131
  %slice_nr = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx132, i32 0, i32 2
  store i32 -1, i32* %slice_nr, align 4
  %169 = load i32, i32* %i, align 4
  %idxprom133 = sext i32 %169 to i64
  %170 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_data134 = getelementptr inbounds %struct.img_par, %struct.img_par* %170, i32 0, i32 39
  %171 = load %struct.macroblock*, %struct.macroblock** %mb_data134, align 8
  %arrayidx135 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %171, i64 %idxprom133
  %ei_flag = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx135, i32 0, i32 15
  store i32 1, i32* %ei_flag, align 4
  br label %for.inc.136

for.inc.136:                                      ; preds = %for.body.130
  %172 = load i32, i32* %i, align 4
  %inc137 = add nsw i32 %172, 1
  store i32 %inc137, i32* %i, align 4
  br label %for.cond.127

for.end.138:                                      ; preds = %for.cond.127
  %173 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_x = getelementptr inbounds %struct.img_par, %struct.img_par* %173, i32 0, i32 17
  store i32 0, i32* %mb_x, align 4
  %174 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_y = getelementptr inbounds %struct.img_par, %struct.img_par* %174, i32 0, i32 16
  store i32 0, i32* %mb_y, align 4
  %175 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %pix_c_y = getelementptr inbounds %struct.img_par, %struct.img_par* %175, i32 0, i32 21
  store i32 0, i32* %pix_c_y, align 4
  %176 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %pix_y = getelementptr inbounds %struct.img_par, %struct.img_par* %176, i32 0, i32 19
  store i32 0, i32* %pix_y, align 4
  %177 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %block_y = getelementptr inbounds %struct.img_par, %struct.img_par* %177, i32 0, i32 18
  store i32 0, i32* %block_y, align 4
  %178 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %pix_c_x = getelementptr inbounds %struct.img_par, %struct.img_par* %178, i32 0, i32 23
  store i32 0, i32* %pix_c_x, align 4
  %179 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %pix_x = getelementptr inbounds %struct.img_par, %struct.img_par* %179, i32 0, i32 20
  store i32 0, i32* %pix_x, align 4
  %180 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %block_x = getelementptr inbounds %struct.img_par, %struct.img_par* %180, i32 0, i32 22
  store i32 0, i32* %block_x, align 4
  %181 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %type139 = getelementptr inbounds %struct.img_par, %struct.img_par* %181, i32 0, i32 10
  %182 = load i32, i32* %type139, align 4
  %183 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %slice_type = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %183, i32 0, i32 45
  store i32 %182, i32* %slice_type, align 4
  %184 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %nal_reference_idc140 = getelementptr inbounds %struct.img_par, %struct.img_par* %184, i32 0, i32 84
  %185 = load i32, i32* %nal_reference_idc140, align 4
  %cmp141 = icmp ne i32 %185, 0
  %conv = zext i1 %cmp141 to i32
  %186 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %used_for_reference = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %186, i32 0, i32 15
  store i32 %conv, i32* %used_for_reference, align 4
  %187 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %idr_flag142 = getelementptr inbounds %struct.img_par, %struct.img_par* %187, i32 0, i32 83
  %188 = load i32, i32* %idr_flag142, align 4
  %189 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %idr_flag143 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %189, i32 0, i32 46
  store i32 %188, i32* %idr_flag143, align 4
  %190 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %no_output_of_prior_pics_flag = getelementptr inbounds %struct.img_par, %struct.img_par* %190, i32 0, i32 94
  %191 = load i32, i32* %no_output_of_prior_pics_flag, align 4
  %192 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %no_output_of_prior_pics_flag144 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %192, i32 0, i32 47
  store i32 %191, i32* %no_output_of_prior_pics_flag144, align 4
  %193 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %long_term_reference_flag = getelementptr inbounds %struct.img_par, %struct.img_par* %193, i32 0, i32 95
  %194 = load i32, i32* %long_term_reference_flag, align 4
  %195 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %long_term_reference_flag145 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %195, i32 0, i32 48
  store i32 %194, i32* %long_term_reference_flag145, align 4
  %196 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %adaptive_ref_pic_buffering_flag = getelementptr inbounds %struct.img_par, %struct.img_par* %196, i32 0, i32 96
  %197 = load i32, i32* %adaptive_ref_pic_buffering_flag, align 4
  %198 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %adaptive_ref_pic_buffering_flag146 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %198, i32 0, i32 49
  store i32 %197, i32* %adaptive_ref_pic_buffering_flag146, align 4
  %199 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %dec_ref_pic_marking_buffer = getelementptr inbounds %struct.img_par, %struct.img_par* %199, i32 0, i32 46
  %200 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %dec_ref_pic_marking_buffer, align 8
  %201 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %dec_ref_pic_marking_buffer147 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %201, i32 0, i32 60
  store %struct.DecRefPicMarking_s* %200, %struct.DecRefPicMarking_s** %dec_ref_pic_marking_buffer147, align 8
  %202 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %dec_ref_pic_marking_buffer148 = getelementptr inbounds %struct.img_par, %struct.img_par* %202, i32 0, i32 46
  store %struct.DecRefPicMarking_s* null, %struct.DecRefPicMarking_s** %dec_ref_pic_marking_buffer148, align 8
  %203 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.img_par, %struct.img_par* %203, i32 0, i32 44
  %204 = load i32, i32* %MbaffFrameFlag, align 4
  %205 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %MbaffFrameFlag149 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %205, i32 0, i32 29
  store i32 %204, i32* %MbaffFrameFlag149, align 4
  %206 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %PicWidthInMbs = getelementptr inbounds %struct.img_par, %struct.img_par* %206, i32 0, i32 87
  %207 = load i32, i32* %PicWidthInMbs, align 4
  %208 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %PicWidthInMbs150 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %208, i32 0, i32 30
  store i32 %207, i32* %PicWidthInMbs150, align 4
  %209 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %MbaffFrameFlag151 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %209, i32 0, i32 29
  %210 = load i32, i32* %MbaffFrameFlag151, align 4
  %tobool152 = icmp ne i32 %210, 0
  %cond = select i1 %tobool152, void (i32, i32*, i32*)* @get_mb_block_pos_mbaff, void (i32, i32*, i32*)* @get_mb_block_pos_normal
  store void (i32, i32*, i32*)* %cond, void (i32, i32*, i32*)** @get_mb_block_pos, align 8
  %211 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %MbaffFrameFlag153 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %211, i32 0, i32 29
  %212 = load i32, i32* %MbaffFrameFlag153, align 4
  %tobool154 = icmp ne i32 %212, 0
  %cond155 = select i1 %tobool154, void (i32, i32, i32, i32, %struct.pix_pos*)* @getAffNeighbour, void (i32, i32, i32, i32, %struct.pix_pos*)* @getNonAffNeighbour
  store void (i32, i32, i32, i32, %struct.pix_pos*)* %cond155, void (i32, i32, i32, i32, %struct.pix_pos*)** @getNeighbour, align 8
  %213 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %frame_num156 = getelementptr inbounds %struct.img_par, %struct.img_par* %213, i32 0, i32 56
  %214 = load i32, i32* %frame_num156, align 4
  %215 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %pic_num = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %215, i32 0, i32 11
  store i32 %214, i32* %pic_num, align 4
  %216 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %frame_num157 = getelementptr inbounds %struct.img_par, %struct.img_par* %216, i32 0, i32 56
  %217 = load i32, i32* %frame_num157, align 4
  %218 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %frame_num158 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %218, i32 0, i32 9
  store i32 %217, i32* %frame_num158, align 4
  %219 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %frame_num159 = getelementptr inbounds %struct.img_par, %struct.img_par* %219, i32 0, i32 56
  %220 = load i32, i32* %frame_num159, align 4
  %221 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %recovery_frame_num160 = getelementptr inbounds %struct.img_par, %struct.img_par* %221, i32 0, i32 138
  %222 = load i32, i32* %recovery_frame_num160, align 4
  %cmp161 = icmp eq i32 %220, %222
  %conv162 = zext i1 %cmp161 to i32
  %223 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %recovery_frame = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %223, i32 0, i32 10
  store i32 %conv162, i32* %recovery_frame, align 4
  %224 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %structure163 = getelementptr inbounds %struct.img_par, %struct.img_par* %224, i32 0, i32 36
  %225 = load i32, i32* %structure163, align 4
  %cmp164 = icmp eq i32 %225, 0
  %conv165 = zext i1 %cmp164 to i32
  %226 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %coded_frame = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %226, i32 0, i32 28
  store i32 %conv165, i32* %coded_frame, align 4
  %227 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %chroma_format_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %227, i32 0, i32 8
  %228 = load i32, i32* %chroma_format_idc, align 4
  %229 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %chroma_format_idc166 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %229, i32 0, i32 50
  store i32 %228, i32* %chroma_format_idc166, align 4
  %230 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %230, i32 0, i32 29
  %231 = load i32, i32* %frame_mbs_only_flag, align 4
  %232 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %frame_mbs_only_flag167 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %232, i32 0, i32 51
  store i32 %231, i32* %frame_mbs_only_flag167, align 4
  %233 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_cropping_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %233, i32 0, i32 32
  %234 = load i32, i32* %frame_cropping_flag, align 4
  %235 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %frame_cropping_flag168 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %235, i32 0, i32 52
  store i32 %234, i32* %frame_cropping_flag168, align 4
  %236 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %frame_cropping_flag169 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %236, i32 0, i32 52
  %237 = load i32, i32* %frame_cropping_flag169, align 4
  %tobool170 = icmp ne i32 %237, 0
  br i1 %tobool170, label %if.then.171, label %if.end.176

if.then.171:                                      ; preds = %for.end.138
  %238 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_cropping_rect_left_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %238, i32 0, i32 33
  %239 = load i32, i32* %frame_cropping_rect_left_offset, align 4
  %240 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %frame_cropping_rect_left_offset172 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %240, i32 0, i32 53
  store i32 %239, i32* %frame_cropping_rect_left_offset172, align 4
  %241 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_cropping_rect_right_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %241, i32 0, i32 34
  %242 = load i32, i32* %frame_cropping_rect_right_offset, align 4
  %243 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %frame_cropping_rect_right_offset173 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %243, i32 0, i32 54
  store i32 %242, i32* %frame_cropping_rect_right_offset173, align 4
  %244 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_cropping_rect_top_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %244, i32 0, i32 35
  %245 = load i32, i32* %frame_cropping_rect_top_offset, align 4
  %246 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %frame_cropping_rect_top_offset174 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %246, i32 0, i32 55
  store i32 %245, i32* %frame_cropping_rect_top_offset174, align 4
  %247 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_cropping_rect_bottom_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %247, i32 0, i32 36
  %248 = load i32, i32* %frame_cropping_rect_bottom_offset, align 4
  %249 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %frame_cropping_rect_bottom_offset175 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %249, i32 0, i32 56
  store i32 %248, i32* %frame_cropping_rect_bottom_offset175, align 4
  br label %if.end.176

if.end.176:                                       ; preds = %if.then.171, %for.end.138
  ret void
}

declare void @CheckZeroByteVCL(%struct.NALU_t*, i32*) #1

declare void @init_lists(i32, i32) #1

declare void @init_mbaff_lists(...) #1

declare void @arideco_start_decoding(%struct.DecodingEnvironment*, i8*, i32, i32*, i32) #1

declare i32 @ue_v(i8*, %struct.Bitstream*) #1

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #1

declare void @InterpretSEIMessage(i8*, i32, %struct.img_par*) #1

declare void @ProcessPPS(%struct.NALU_t*) #1

declare void @ProcessSPS(%struct.NALU_t*) #1

declare void @conceal_lost_frames(%struct.img_par*) #1

declare void @fill_frame_num_gap(%struct.img_par*) #1

declare void @decode_poc(%struct.img_par*) #1

declare i32 @ftime(%struct.timeb*) #1

; Function Attrs: nounwind
declare i64 @time(i64*) #4

declare %struct.storable_picture* @alloc_storable_picture(i32, i32, i32, i32, i32) #1

declare void @ercReset(%struct.ercVariables_s*, i32, i32, i32) #1

declare i32 @set_ec_flag(i32) #1

declare void @get_mb_block_pos_mbaff(i32, i32*, i32*) #1

declare void @get_mb_block_pos_normal(i32, i32*, i32*) #1

declare void @getAffNeighbour(i32, i32, i32, i32, %struct.pix_pos*) #1

declare void @getNonAffNeighbour(i32, i32, i32, i32, %struct.pix_pos*) #1

; Function Attrs: nounwind uwtable
define void @exit_picture() #0 {
entry:
  %yuv_types = alloca [4 x [6 x i8]], align 16
  %ercStartMB = alloca i32, align 4
  %ercSegment = alloca i32, align 4
  %recfr = alloca %struct.frame, align 8
  %i = alloca i32, align 4
  %structure = alloca i32, align 4
  %frame_poc = alloca i32, align 4
  %slice_type = alloca i32, align 4
  %refpic = alloca i32, align 4
  %qp = alloca i32, align 4
  %pic_num = alloca i32, align 4
  %chroma_format_idc = alloca i32, align 4
  %yuvFormat = alloca [10 x i8], align 1
  %0 = bitcast [4 x [6 x i8]]* %yuv_types to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([4 x [6 x i8]], [4 x [6 x i8]]* @exit_picture.yuv_types, i32 0, i32 0, i32 0), i64 24, i32 16, i1 false)
  %1 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %cmp = icmp eq %struct.storable_picture* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.img_par*, %struct.img_par** @img, align 8
  %3 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  call void @DeblockPicture(%struct.img_par* %2, %struct.storable_picture* %3)
  %4 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %4, i32 0, i32 29
  %5 = load i32, i32* %MbaffFrameFlag, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  call void @MbAffPostProc()
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  %6 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %imgY = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %6, i32 0, i32 32
  %7 = load i16**, i16*** %imgY, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %7, i64 0
  %8 = load i16*, i16** %arrayidx, align 8
  %arrayidx3 = getelementptr inbounds i16, i16* %8, i64 0
  %yptr = getelementptr inbounds %struct.frame, %struct.frame* %recfr, i32 0, i32 0
  store i16* %arrayidx3, i16** %yptr, align 8
  %9 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %chroma_format_idc4 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %9, i32 0, i32 50
  %10 = load i32, i32* %chroma_format_idc4, align 4
  %cmp5 = icmp ne i32 %10, 0
  br i1 %cmp5, label %if.then.6, label %if.end.14

if.then.6:                                        ; preds = %if.end.2
  %11 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %imgUV = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %11, i32 0, i32 33
  %12 = load i16***, i16**** %imgUV, align 8
  %arrayidx7 = getelementptr inbounds i16**, i16*** %12, i64 0
  %13 = load i16**, i16*** %arrayidx7, align 8
  %arrayidx8 = getelementptr inbounds i16*, i16** %13, i64 0
  %14 = load i16*, i16** %arrayidx8, align 8
  %arrayidx9 = getelementptr inbounds i16, i16* %14, i64 0
  %uptr = getelementptr inbounds %struct.frame, %struct.frame* %recfr, i32 0, i32 1
  store i16* %arrayidx9, i16** %uptr, align 8
  %15 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %imgUV10 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %15, i32 0, i32 33
  %16 = load i16***, i16**** %imgUV10, align 8
  %arrayidx11 = getelementptr inbounds i16**, i16*** %16, i64 1
  %17 = load i16**, i16*** %arrayidx11, align 8
  %arrayidx12 = getelementptr inbounds i16*, i16** %17, i64 0
  %18 = load i16*, i16** %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds i16, i16* %18, i64 0
  %vptr = getelementptr inbounds %struct.frame, %struct.frame* %recfr, i32 0, i32 2
  store i16* %arrayidx13, i16** %vptr, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.6, %if.end.2
  store i32 0, i32* %ercStartMB, align 4
  store i32 0, i32* %ercSegment, align 4
  %19 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %MbaffFrameFlag15 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %19, i32 0, i32 29
  %20 = load i32, i32* %MbaffFrameFlag15, align 4
  %tobool16 = icmp ne i32 %20, 0
  br i1 %tobool16, label %if.end.64, label %if.then.17

if.then.17:                                       ; preds = %if.end.14
  %21 = load i32, i32* %ercSegment, align 4
  %22 = load %struct.ercVariables_s*, %struct.ercVariables_s** @erc_errorVar, align 8
  call void @ercStartSegment(i32 0, i32 %21, i32 0, %struct.ercVariables_s* %22)
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.17
  %23 = load i32, i32* %i, align 4
  %24 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %PicSizeInMbs = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %24, i32 0, i32 31
  %25 = load i32, i32* %PicSizeInMbs, align 4
  %cmp18 = icmp ult i32 %23, %25
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load i32, i32* %i, align 4
  %idxprom = zext i32 %26 to i64
  %27 = load %struct.img_par*, %struct.img_par** @img, align 8
  %mb_data = getelementptr inbounds %struct.img_par, %struct.img_par* %27, i32 0, i32 39
  %28 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx19 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %28, i64 %idxprom
  %ei_flag = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx19, i32 0, i32 15
  %29 = load i32, i32* %ei_flag, align 4
  %30 = load i32, i32* %i, align 4
  %sub = sub i32 %30, 1
  %idxprom20 = zext i32 %sub to i64
  %31 = load %struct.img_par*, %struct.img_par** @img, align 8
  %mb_data21 = getelementptr inbounds %struct.img_par, %struct.img_par* %31, i32 0, i32 39
  %32 = load %struct.macroblock*, %struct.macroblock** %mb_data21, align 8
  %arrayidx22 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %32, i64 %idxprom20
  %ei_flag23 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx22, i32 0, i32 15
  %33 = load i32, i32* %ei_flag23, align 4
  %cmp24 = icmp ne i32 %29, %33
  br i1 %cmp24, label %if.then.25, label %if.end.36

if.then.25:                                       ; preds = %for.body
  %34 = load i32, i32* %i, align 4
  %sub26 = sub i32 %34, 1
  %35 = load i32, i32* %ercSegment, align 4
  %36 = load %struct.ercVariables_s*, %struct.ercVariables_s** @erc_errorVar, align 8
  call void @ercStopSegment(i32 %sub26, i32 %35, i32 0, %struct.ercVariables_s* %36)
  %37 = load i32, i32* %i, align 4
  %sub27 = sub i32 %37, 1
  %idxprom28 = zext i32 %sub27 to i64
  %38 = load %struct.img_par*, %struct.img_par** @img, align 8
  %mb_data29 = getelementptr inbounds %struct.img_par, %struct.img_par* %38, i32 0, i32 39
  %39 = load %struct.macroblock*, %struct.macroblock** %mb_data29, align 8
  %arrayidx30 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %39, i64 %idxprom28
  %ei_flag31 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx30, i32 0, i32 15
  %40 = load i32, i32* %ei_flag31, align 4
  %tobool32 = icmp ne i32 %40, 0
  br i1 %tobool32, label %if.then.33, label %if.else

if.then.33:                                       ; preds = %if.then.25
  %41 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %size_x = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %41, i32 0, i32 19
  %42 = load i32, i32* %size_x, align 4
  %43 = load %struct.ercVariables_s*, %struct.ercVariables_s** @erc_errorVar, align 8
  call void @ercMarkCurrSegmentLost(i32 %42, %struct.ercVariables_s* %43)
  br label %if.end.35

if.else:                                          ; preds = %if.then.25
  %44 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %size_x34 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %44, i32 0, i32 19
  %45 = load i32, i32* %size_x34, align 4
  %46 = load %struct.ercVariables_s*, %struct.ercVariables_s** @erc_errorVar, align 8
  call void @ercMarkCurrSegmentOK(i32 %45, %struct.ercVariables_s* %46)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else, %if.then.33
  %47 = load i32, i32* %ercSegment, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %ercSegment, align 4
  %48 = load i32, i32* %i, align 4
  %49 = load i32, i32* %ercSegment, align 4
  %50 = load %struct.ercVariables_s*, %struct.ercVariables_s** @erc_errorVar, align 8
  call void @ercStartSegment(i32 %48, i32 %49, i32 0, %struct.ercVariables_s* %50)
  %51 = load i32, i32* %i, align 4
  store i32 %51, i32* %ercStartMB, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.36
  %52 = load i32, i32* %i, align 4
  %inc37 = add i32 %52, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %53 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %PicSizeInMbs38 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %53, i32 0, i32 31
  %54 = load i32, i32* %PicSizeInMbs38, align 4
  %sub39 = sub i32 %54, 1
  %55 = load i32, i32* %ercSegment, align 4
  %56 = load %struct.ercVariables_s*, %struct.ercVariables_s** @erc_errorVar, align 8
  call void @ercStopSegment(i32 %sub39, i32 %55, i32 0, %struct.ercVariables_s* %56)
  %57 = load i32, i32* %i, align 4
  %sub40 = sub i32 %57, 1
  %idxprom41 = zext i32 %sub40 to i64
  %58 = load %struct.img_par*, %struct.img_par** @img, align 8
  %mb_data42 = getelementptr inbounds %struct.img_par, %struct.img_par* %58, i32 0, i32 39
  %59 = load %struct.macroblock*, %struct.macroblock** %mb_data42, align 8
  %arrayidx43 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %59, i64 %idxprom41
  %ei_flag44 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx43, i32 0, i32 15
  %60 = load i32, i32* %ei_flag44, align 4
  %tobool45 = icmp ne i32 %60, 0
  br i1 %tobool45, label %if.then.46, label %if.else.48

if.then.46:                                       ; preds = %for.end
  %61 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %size_x47 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %61, i32 0, i32 19
  %62 = load i32, i32* %size_x47, align 4
  %63 = load %struct.ercVariables_s*, %struct.ercVariables_s** @erc_errorVar, align 8
  call void @ercMarkCurrSegmentLost(i32 %62, %struct.ercVariables_s* %63)
  br label %if.end.50

if.else.48:                                       ; preds = %for.end
  %64 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %size_x49 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %64, i32 0, i32 19
  %65 = load i32, i32* %size_x49, align 4
  %66 = load %struct.ercVariables_s*, %struct.ercVariables_s** @erc_errorVar, align 8
  call void @ercMarkCurrSegmentOK(i32 %65, %struct.ercVariables_s* %66)
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.48, %if.then.46
  %67 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %PicSizeInMbs51 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %67, i32 0, i32 31
  %68 = load i32, i32* %PicSizeInMbs51, align 4
  %69 = load i32, i32* @erc_mvperMB, align 4
  %div = udiv i32 %69, %68
  store i32 %div, i32* @erc_mvperMB, align 4
  %70 = load %struct.img_par*, %struct.img_par** @img, align 8
  store %struct.img_par* %70, %struct.img_par** @erc_img, align 8
  %71 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %slice_type52 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %71, i32 0, i32 45
  %72 = load i32, i32* %slice_type52, align 4
  %cmp53 = icmp eq i32 %72, 2
  br i1 %cmp53, label %if.then.56, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.50
  %73 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %slice_type54 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %73, i32 0, i32 45
  %74 = load i32, i32* %slice_type54, align 4
  %cmp55 = icmp eq i32 %74, 4
  br i1 %cmp55, label %if.then.56, label %if.else.58

if.then.56:                                       ; preds = %lor.lhs.false, %if.end.50
  %75 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %size_x57 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %75, i32 0, i32 19
  %76 = load i32, i32* %size_x57, align 4
  %77 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %size_y = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %77, i32 0, i32 20
  %78 = load i32, i32* %size_y, align 4
  %79 = load %struct.ercVariables_s*, %struct.ercVariables_s** @erc_errorVar, align 8
  %call = call i32 @ercConcealIntraFrame(%struct.frame* %recfr, i32 %76, i32 %78, %struct.ercVariables_s* %79)
  br label %if.end.63

if.else.58:                                       ; preds = %lor.lhs.false
  %80 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** @erc_object_list, align 8
  %81 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %size_x59 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %81, i32 0, i32 19
  %82 = load i32, i32* %size_x59, align 4
  %83 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %size_y60 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %83, i32 0, i32 20
  %84 = load i32, i32* %size_y60, align 4
  %85 = load %struct.ercVariables_s*, %struct.ercVariables_s** @erc_errorVar, align 8
  %86 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %chroma_format_idc61 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %86, i32 0, i32 50
  %87 = load i32, i32* %chroma_format_idc61, align 4
  %call62 = call i32 @ercConcealInterFrame(%struct.frame* %recfr, %struct.objectBuffer_t* %80, i32 %82, i32 %84, %struct.ercVariables_s* %85, i32 %87)
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.58, %if.then.56
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.end.14
  %88 = load %struct.img_par*, %struct.img_par** @img, align 8
  %structure65 = getelementptr inbounds %struct.img_par, %struct.img_par* %88, i32 0, i32 36
  %89 = load i32, i32* %structure65, align 4
  %cmp66 = icmp eq i32 %89, 0
  br i1 %cmp66, label %if.then.67, label %if.else.68

if.then.67:                                       ; preds = %if.end.64
  %90 = load %struct.img_par*, %struct.img_par** @img, align 8
  %91 = load %struct.inp_par*, %struct.inp_par** @input, align 8
  call void @frame_postprocessing(%struct.img_par* %90, %struct.inp_par* %91)
  br label %if.end.69

if.else.68:                                       ; preds = %if.end.64
  %92 = load %struct.img_par*, %struct.img_par** @img, align 8
  %93 = load %struct.inp_par*, %struct.inp_par** @input, align 8
  call void @field_postprocessing(%struct.img_par* %92, %struct.inp_par* %93)
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.68, %if.then.67
  %94 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %structure70 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %94, i32 0, i32 0
  %95 = load i32, i32* %structure70, align 4
  store i32 %95, i32* %structure, align 4
  %96 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %slice_type71 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %96, i32 0, i32 45
  %97 = load i32, i32* %slice_type71, align 4
  store i32 %97, i32* %slice_type, align 4
  %98 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %frame_poc72 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %98, i32 0, i32 4
  %99 = load i32, i32* %frame_poc72, align 4
  store i32 %99, i32* %frame_poc, align 4
  %100 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %used_for_reference = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %100, i32 0, i32 15
  %101 = load i32, i32* %used_for_reference, align 4
  store i32 %101, i32* %refpic, align 4
  %102 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %qp73 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %102, i32 0, i32 57
  %103 = load i32, i32* %qp73, align 4
  store i32 %103, i32* %qp, align 4
  %104 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %pic_num74 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %104, i32 0, i32 11
  %105 = load i32, i32* %pic_num74, align 4
  store i32 %105, i32* %pic_num, align 4
  %106 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %chroma_format_idc75 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %106, i32 0, i32 50
  %107 = load i32, i32* %chroma_format_idc75, align 4
  store i32 %107, i32* %chroma_format_idc, align 4
  %108 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  call void @store_picture_in_dpb(%struct.storable_picture* %108)
  store %struct.storable_picture* null, %struct.storable_picture** @dec_picture, align 8
  %109 = load %struct.img_par*, %struct.img_par** @img, align 8
  %last_has_mmco_5 = getelementptr inbounds %struct.img_par, %struct.img_par* %109, i32 0, i32 97
  %110 = load i32, i32* %last_has_mmco_5, align 4
  %tobool76 = icmp ne i32 %110, 0
  br i1 %tobool76, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %if.end.69
  %111 = load %struct.img_par*, %struct.img_par** @img, align 8
  %pre_frame_num = getelementptr inbounds %struct.img_par, %struct.img_par* %111, i32 0, i32 52
  store i32 0, i32* %pre_frame_num, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.77, %if.end.69
  %112 = load i32, i32* %structure, align 4
  %cmp79 = icmp eq i32 %112, 0
  br i1 %cmp79, label %if.then.82, label %lor.lhs.false.80

lor.lhs.false.80:                                 ; preds = %if.end.78
  %113 = load i32, i32* %structure, align 4
  %cmp81 = icmp eq i32 %113, 2
  br i1 %cmp81, label %if.then.82, label %if.end.180

if.then.82:                                       ; preds = %lor.lhs.false.80, %if.end.78
  %114 = load %struct.img_par*, %struct.img_par** @img, align 8
  %tstruct_end = getelementptr inbounds %struct.img_par, %struct.img_par* %114, i32 0, i32 126
  %call83 = call i32 @ftime(%struct.timeb* %tstruct_end)
  %115 = load %struct.img_par*, %struct.img_par** @img, align 8
  %ltime_end = getelementptr inbounds %struct.img_par, %struct.img_par* %115, i32 0, i32 124
  %call84 = call i64 @time(i64* %ltime_end) #2
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %yuvFormat, i32 0, i32 0
  %116 = load i32, i32* %chroma_format_idc, align 4
  %idxprom85 = sext i32 %116 to i64
  %arrayidx86 = getelementptr inbounds [4 x [6 x i8]], [4 x [6 x i8]]* %yuv_types, i32 0, i64 %idxprom85
  %arraydecay87 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx86, i32 0, i32 0
  %call88 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), i8* %arraydecay87) #2
  %117 = load %struct.inp_par*, %struct.inp_par** @input, align 8
  %silent = getelementptr inbounds %struct.inp_par, %struct.inp_par* %117, i32 0, i32 7
  %118 = load i32, i32* %silent, align 4
  %cmp89 = icmp eq i32 %118, 0
  br i1 %cmp89, label %if.then.90, label %if.else.158

if.then.90:                                       ; preds = %if.then.82
  %119 = load i32, i32* %slice_type, align 4
  %cmp91 = icmp eq i32 %119, 2
  br i1 %cmp91, label %if.then.92, label %if.else.97

if.then.92:                                       ; preds = %if.then.90
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %121 = load i32, i32* @frame_no, align 4
  %122 = load i32, i32* %frame_poc, align 4
  %123 = load i32, i32* %pic_num, align 4
  %124 = load i32, i32* %qp, align 4
  %125 = load %struct.snr_par*, %struct.snr_par** @snr, align 8
  %snr_y = getelementptr inbounds %struct.snr_par, %struct.snr_par* %125, i32 0, i32 1
  %126 = load float, float* %snr_y, align 4
  %conv = fpext float %126 to double
  %127 = load %struct.snr_par*, %struct.snr_par** @snr, align 8
  %snr_u = getelementptr inbounds %struct.snr_par, %struct.snr_par* %127, i32 0, i32 2
  %128 = load float, float* %snr_u, align 4
  %conv93 = fpext float %128 to double
  %129 = load %struct.snr_par*, %struct.snr_par** @snr, align 8
  %snr_v = getelementptr inbounds %struct.snr_par, %struct.snr_par* %129, i32 0, i32 3
  %130 = load float, float* %snr_v, align 4
  %conv94 = fpext float %130 to double
  %arraydecay95 = getelementptr inbounds [10 x i8], [10 x i8]* %yuvFormat, i32 0, i32 0
  %call96 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %120, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.33, i32 0, i32 0), i32 %121, i32 %122, i32 %123, i32 %124, double %conv, double %conv93, double %conv94, i8* %arraydecay95, i32 0)
  br label %if.end.157

if.else.97:                                       ; preds = %if.then.90
  %131 = load i32, i32* %slice_type, align 4
  %cmp98 = icmp eq i32 %131, 0
  br i1 %cmp98, label %if.then.100, label %if.else.109

if.then.100:                                      ; preds = %if.else.97
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %133 = load i32, i32* @frame_no, align 4
  %134 = load i32, i32* %frame_poc, align 4
  %135 = load i32, i32* %pic_num, align 4
  %136 = load i32, i32* %qp, align 4
  %137 = load %struct.snr_par*, %struct.snr_par** @snr, align 8
  %snr_y101 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %137, i32 0, i32 1
  %138 = load float, float* %snr_y101, align 4
  %conv102 = fpext float %138 to double
  %139 = load %struct.snr_par*, %struct.snr_par** @snr, align 8
  %snr_u103 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %139, i32 0, i32 2
  %140 = load float, float* %snr_u103, align 4
  %conv104 = fpext float %140 to double
  %141 = load %struct.snr_par*, %struct.snr_par** @snr, align 8
  %snr_v105 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %141, i32 0, i32 3
  %142 = load float, float* %snr_v105, align 4
  %conv106 = fpext float %142 to double
  %arraydecay107 = getelementptr inbounds [10 x i8], [10 x i8]* %yuvFormat, i32 0, i32 0
  %call108 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %132, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i32 0, i32 0), i32 %133, i32 %134, i32 %135, i32 %136, double %conv102, double %conv104, double %conv106, i8* %arraydecay107, i32 0)
  br label %if.end.156

if.else.109:                                      ; preds = %if.else.97
  %143 = load i32, i32* %slice_type, align 4
  %cmp110 = icmp eq i32 %143, 3
  br i1 %cmp110, label %if.then.112, label %if.else.121

if.then.112:                                      ; preds = %if.else.109
  %144 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %145 = load i32, i32* @frame_no, align 4
  %146 = load i32, i32* %frame_poc, align 4
  %147 = load i32, i32* %pic_num, align 4
  %148 = load i32, i32* %qp, align 4
  %149 = load %struct.snr_par*, %struct.snr_par** @snr, align 8
  %snr_y113 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %149, i32 0, i32 1
  %150 = load float, float* %snr_y113, align 4
  %conv114 = fpext float %150 to double
  %151 = load %struct.snr_par*, %struct.snr_par** @snr, align 8
  %snr_u115 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %151, i32 0, i32 2
  %152 = load float, float* %snr_u115, align 4
  %conv116 = fpext float %152 to double
  %153 = load %struct.snr_par*, %struct.snr_par** @snr, align 8
  %snr_v117 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %153, i32 0, i32 3
  %154 = load float, float* %snr_v117, align 4
  %conv118 = fpext float %154 to double
  %arraydecay119 = getelementptr inbounds [10 x i8], [10 x i8]* %yuvFormat, i32 0, i32 0
  %call120 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %144, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.34, i32 0, i32 0), i32 %145, i32 %146, i32 %147, i32 %148, double %conv114, double %conv116, double %conv118, i8* %arraydecay119, i32 0)
  br label %if.end.155

if.else.121:                                      ; preds = %if.else.109
  %155 = load i32, i32* %slice_type, align 4
  %cmp122 = icmp eq i32 %155, 4
  br i1 %cmp122, label %if.then.124, label %if.else.133

if.then.124:                                      ; preds = %if.else.121
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %157 = load i32, i32* @frame_no, align 4
  %158 = load i32, i32* %frame_poc, align 4
  %159 = load i32, i32* %pic_num, align 4
  %160 = load i32, i32* %qp, align 4
  %161 = load %struct.snr_par*, %struct.snr_par** @snr, align 8
  %snr_y125 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %161, i32 0, i32 1
  %162 = load float, float* %snr_y125, align 4
  %conv126 = fpext float %162 to double
  %163 = load %struct.snr_par*, %struct.snr_par** @snr, align 8
  %snr_u127 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %163, i32 0, i32 2
  %164 = load float, float* %snr_u127, align 4
  %conv128 = fpext float %164 to double
  %165 = load %struct.snr_par*, %struct.snr_par** @snr, align 8
  %snr_v129 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %165, i32 0, i32 3
  %166 = load float, float* %snr_v129, align 4
  %conv130 = fpext float %166 to double
  %arraydecay131 = getelementptr inbounds [10 x i8], [10 x i8]* %yuvFormat, i32 0, i32 0
  %call132 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %156, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.35, i32 0, i32 0), i32 %157, i32 %158, i32 %159, i32 %160, double %conv126, double %conv128, double %conv130, i8* %arraydecay131, i32 0)
  br label %if.end.154

if.else.133:                                      ; preds = %if.else.121
  %167 = load i32, i32* %refpic, align 4
  %tobool134 = icmp ne i32 %167, 0
  br i1 %tobool134, label %if.then.135, label %if.else.144

if.then.135:                                      ; preds = %if.else.133
  %168 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %169 = load i32, i32* @frame_no, align 4
  %170 = load i32, i32* %frame_poc, align 4
  %171 = load i32, i32* %pic_num, align 4
  %172 = load i32, i32* %qp, align 4
  %173 = load %struct.snr_par*, %struct.snr_par** @snr, align 8
  %snr_y136 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %173, i32 0, i32 1
  %174 = load float, float* %snr_y136, align 4
  %conv137 = fpext float %174 to double
  %175 = load %struct.snr_par*, %struct.snr_par** @snr, align 8
  %snr_u138 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %175, i32 0, i32 2
  %176 = load float, float* %snr_u138, align 4
  %conv139 = fpext float %176 to double
  %177 = load %struct.snr_par*, %struct.snr_par** @snr, align 8
  %snr_v140 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %177, i32 0, i32 3
  %178 = load float, float* %snr_v140, align 4
  %conv141 = fpext float %178 to double
  %arraydecay142 = getelementptr inbounds [10 x i8], [10 x i8]* %yuvFormat, i32 0, i32 0
  %call143 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %168, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.36, i32 0, i32 0), i32 %169, i32 %170, i32 %171, i32 %172, double %conv137, double %conv139, double %conv141, i8* %arraydecay142, i32 0)
  br label %if.end.153

if.else.144:                                      ; preds = %if.else.133
  %179 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %180 = load i32, i32* @frame_no, align 4
  %181 = load i32, i32* %frame_poc, align 4
  %182 = load i32, i32* %pic_num, align 4
  %183 = load i32, i32* %qp, align 4
  %184 = load %struct.snr_par*, %struct.snr_par** @snr, align 8
  %snr_y145 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %184, i32 0, i32 1
  %185 = load float, float* %snr_y145, align 4
  %conv146 = fpext float %185 to double
  %186 = load %struct.snr_par*, %struct.snr_par** @snr, align 8
  %snr_u147 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %186, i32 0, i32 2
  %187 = load float, float* %snr_u147, align 4
  %conv148 = fpext float %187 to double
  %188 = load %struct.snr_par*, %struct.snr_par** @snr, align 8
  %snr_v149 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %188, i32 0, i32 3
  %189 = load float, float* %snr_v149, align 4
  %conv150 = fpext float %189 to double
  %arraydecay151 = getelementptr inbounds [10 x i8], [10 x i8]* %yuvFormat, i32 0, i32 0
  %call152 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %179, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.37, i32 0, i32 0), i32 %180, i32 %181, i32 %182, i32 %183, double %conv146, double %conv148, double %conv150, i8* %arraydecay151, i32 0)
  br label %if.end.153

if.end.153:                                       ; preds = %if.else.144, %if.then.135
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.153, %if.then.124
  br label %if.end.155

if.end.155:                                       ; preds = %if.end.154, %if.then.112
  br label %if.end.156

if.end.156:                                       ; preds = %if.end.155, %if.then.100
  br label %if.end.157

if.end.157:                                       ; preds = %if.end.156, %if.then.92
  br label %if.end.160

if.else.158:                                      ; preds = %if.then.82
  %190 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %191 = load %struct.snr_par*, %struct.snr_par** @snr, align 8
  %frame_ctr = getelementptr inbounds %struct.snr_par, %struct.snr_par* %191, i32 0, i32 0
  %192 = load i32, i32* %frame_ctr, align 4
  %call159 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %190, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.38, i32 0, i32 0), i32 %192)
  br label %if.end.160

if.end.160:                                       ; preds = %if.else.158, %if.end.157
  %193 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call161 = call i32 @fflush(%struct._IO_FILE* %193)
  %194 = load i32, i32* %slice_type, align 4
  %cmp162 = icmp eq i32 %194, 2
  br i1 %cmp162, label %if.then.172, label %lor.lhs.false.164

lor.lhs.false.164:                                ; preds = %if.end.160
  %195 = load i32, i32* %slice_type, align 4
  %cmp165 = icmp eq i32 %195, 4
  br i1 %cmp165, label %if.then.172, label %lor.lhs.false.167

lor.lhs.false.167:                                ; preds = %lor.lhs.false.164
  %196 = load i32, i32* %slice_type, align 4
  %cmp168 = icmp eq i32 %196, 0
  br i1 %cmp168, label %if.then.172, label %lor.lhs.false.170

lor.lhs.false.170:                                ; preds = %lor.lhs.false.167
  %197 = load i32, i32* %refpic, align 4
  %tobool171 = icmp ne i32 %197, 0
  br i1 %tobool171, label %if.then.172, label %if.else.174

if.then.172:                                      ; preds = %lor.lhs.false.170, %lor.lhs.false.167, %lor.lhs.false.164, %if.end.160
  %198 = load %struct.img_par*, %struct.img_par** @img, align 8
  %number = getelementptr inbounds %struct.img_par, %struct.img_par* %198, i32 0, i32 0
  %199 = load i32, i32* %number, align 4
  %inc173 = add nsw i32 %199, 1
  store i32 %inc173, i32* %number, align 4
  br label %if.end.176

if.else.174:                                      ; preds = %lor.lhs.false.170
  %200 = load i32, i32* @Bframe_ctr, align 4
  %inc175 = add nsw i32 %200, 1
  store i32 %inc175, i32* @Bframe_ctr, align 4
  br label %if.end.176

if.end.176:                                       ; preds = %if.else.174, %if.then.172
  %201 = load %struct.snr_par*, %struct.snr_par** @snr, align 8
  %frame_ctr177 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %201, i32 0, i32 0
  %202 = load i32, i32* %frame_ctr177, align 4
  %inc178 = add nsw i32 %202, 1
  store i32 %inc178, i32* %frame_ctr177, align 4
  %203 = load i32, i32* @g_nFrame, align 4
  %inc179 = add nsw i32 %203, 1
  store i32 %inc179, i32* @g_nFrame, align 4
  br label %if.end.180

if.end.180:                                       ; preds = %if.end.176, %lor.lhs.false.80
  %204 = load %struct.img_par*, %struct.img_par** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.img_par, %struct.img_par* %204, i32 0, i32 1
  store i32 -4712, i32* %current_mb_nr, align 4
  %205 = load %struct.img_par*, %struct.img_par** @img, align 8
  %current_slice_nr = getelementptr inbounds %struct.img_par, %struct.img_par* %205, i32 0, i32 3
  store i32 0, i32* %current_slice_nr, align 4
  br label %return

return:                                           ; preds = %if.end.180, %if.then
  ret void
}

declare void @DeblockPicture(%struct.img_par*, %struct.storable_picture*) #1

declare void @ercStartSegment(i32, i32, i32, %struct.ercVariables_s*) #1

declare void @ercStopSegment(i32, i32, i32, %struct.ercVariables_s*) #1

declare void @ercMarkCurrSegmentLost(i32, %struct.ercVariables_s*) #1

declare void @ercMarkCurrSegmentOK(i32, %struct.ercVariables_s*) #1

declare i32 @ercConcealIntraFrame(%struct.frame*, i32, i32, %struct.ercVariables_s*) #1

declare i32 @ercConcealInterFrame(%struct.frame*, %struct.objectBuffer_t*, i32, i32, %struct.ercVariables_s*, i32) #1

; Function Attrs: nounwind uwtable
define void @frame_postprocessing(%struct.img_par* %img, %struct.inp_par* %inp) #0 {
entry:
  %img.addr = alloca %struct.img_par*, align 8
  %inp.addr = alloca %struct.inp_par*, align 8
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  store %struct.inp_par* %inp, %struct.inp_par** %inp.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @field_postprocessing(%struct.img_par* %img, %struct.inp_par* %inp) #0 {
entry:
  %img.addr = alloca %struct.img_par*, align 8
  %inp.addr = alloca %struct.inp_par*, align 8
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  store %struct.inp_par* %inp, %struct.inp_par** %inp.addr, align 8
  %0 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %number = getelementptr inbounds %struct.img_par, %struct.img_par* %0, i32 0, i32 0
  %1 = load i32, i32* %number, align 4
  %div = sdiv i32 %1, 2
  store i32 %div, i32* %number, align 4
  ret void
}

declare void @store_picture_in_dpb(%struct.storable_picture*) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #4

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @ercWriteMBMODEandMV(%struct.img_par* %img, %struct.inp_par* %inp) #0 {
entry:
  %img.addr = alloca %struct.img_par*, align 8
  %inp.addr = alloca %struct.inp_par*, align 8
  %i = alloca i32, align 4
  %ii = alloca i32, align 4
  %jj = alloca i32, align 4
  %currMBNum = alloca i32, align 4
  %mbx = alloca i32, align 4
  %mby = alloca i32, align 4
  %currRegion = alloca %struct.objectBuffer_t*, align 8
  %pRegion = alloca %struct.objectBuffer_t*, align 8
  %currMB = alloca %struct.macroblock*, align 8
  %mv = alloca i16***, align 8
  %idx = alloca i32, align 4
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  store %struct.inp_par* %inp, %struct.inp_par** %inp.addr, align 8
  %0 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %current_mb_nr = getelementptr inbounds %struct.img_par, %struct.img_par* %0, i32 0, i32 1
  %1 = load i32, i32* %current_mb_nr, align 4
  store i32 %1, i32* %currMBNum, align 4
  %2 = load i32, i32* %currMBNum, align 4
  %3 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %size_x = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %3, i32 0, i32 19
  %4 = load i32, i32* %size_x, align 4
  %shr = ashr i32 %4, 4
  %rem = srem i32 %2, %shr
  store i32 %rem, i32* %mbx, align 4
  %5 = load i32, i32* %currMBNum, align 4
  %6 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %size_x1 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %6, i32 0, i32 19
  %7 = load i32, i32* %size_x1, align 4
  %shr2 = ashr i32 %7, 4
  %div = sdiv i32 %5, %shr2
  store i32 %div, i32* %mby, align 4
  %8 = load i32, i32* %currMBNum, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_data = getelementptr inbounds %struct.img_par, %struct.img_par* %9, i32 0, i32 39
  %10 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %10, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %11 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** @erc_object_list, align 8
  %12 = load i32, i32* %currMBNum, align 4
  %shl = shl i32 %12, 2
  %idx.ext = sext i32 %shl to i64
  %add.ptr = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %11, i64 %idx.ext
  store %struct.objectBuffer_t* %add.ptr, %struct.objectBuffer_t** %currRegion, align 8
  %13 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %type = getelementptr inbounds %struct.img_par, %struct.img_par* %13, i32 0, i32 10
  %14 = load i32, i32* %type, align 4
  %cmp = icmp ne i32 %14, 1
  br i1 %cmp, label %if.then, label %if.else.214

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %15 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %15, 4
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %currRegion, align 8
  %17 = load i32, i32* %i, align 4
  %idx.ext4 = sext i32 %17 to i64
  %add.ptr5 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %16, i64 %idx.ext4
  store %struct.objectBuffer_t* %add.ptr5, %struct.objectBuffer_t** %pRegion, align 8
  %18 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type = getelementptr inbounds %struct.macroblock, %struct.macroblock* %18, i32 0, i32 6
  %19 = load i32, i32* %mb_type, align 4
  %cmp6 = icmp eq i32 %19, 10
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end.30

cond.false:                                       ; preds = %for.body
  %20 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %20 to i64
  %21 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8mode = getelementptr inbounds %struct.macroblock, %struct.macroblock* %21, i32 0, i32 13
  %arrayidx8 = getelementptr inbounds [4 x i8], [4 x i8]* %b8mode, i32 0, i64 %idxprom7
  %22 = load i8, i8* %arrayidx8, align 1
  %conv = sext i8 %22 to i32
  %cmp9 = icmp eq i32 %conv, 11
  br i1 %cmp9, label %cond.true.11, label %cond.false.12

cond.true.11:                                     ; preds = %cond.false
  br label %cond.end.28

cond.false.12:                                    ; preds = %cond.false
  %23 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %23 to i64
  %24 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8mode14 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %24, i32 0, i32 13
  %arrayidx15 = getelementptr inbounds [4 x i8], [4 x i8]* %b8mode14, i32 0, i64 %idxprom13
  %25 = load i8, i8* %arrayidx15, align 1
  %conv16 = sext i8 %25 to i32
  %cmp17 = icmp eq i32 %conv16, 0
  br i1 %cmp17, label %cond.true.19, label %cond.false.20

cond.true.19:                                     ; preds = %cond.false.12
  br label %cond.end

cond.false.20:                                    ; preds = %cond.false.12
  %26 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %26 to i64
  %27 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8mode22 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %27, i32 0, i32 13
  %arrayidx23 = getelementptr inbounds [4 x i8], [4 x i8]* %b8mode22, i32 0, i64 %idxprom21
  %28 = load i8, i8* %arrayidx23, align 1
  %conv24 = sext i8 %28 to i32
  %cmp25 = icmp eq i32 %conv24, 1
  %cond = select i1 %cmp25, i32 1, i32 5
  br label %cond.end

cond.end:                                         ; preds = %cond.false.20, %cond.true.19
  %cond27 = phi i32 [ 0, %cond.true.19 ], [ %cond, %cond.false.20 ]
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.end, %cond.true.11
  %cond29 = phi i32 [ 6, %cond.true.11 ], [ %cond27, %cond.end ]
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.end.28, %cond.true
  %cond31 = phi i32 [ 2, %cond.true ], [ %cond29, %cond.end.28 ]
  %conv32 = trunc i32 %cond31 to i8
  %29 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %pRegion, align 8
  %regionMode = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %29, i32 0, i32 0
  store i8 %conv32, i8* %regionMode, align 1
  %30 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %30 to i64
  %31 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8mode34 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %31, i32 0, i32 13
  %arrayidx35 = getelementptr inbounds [4 x i8], [4 x i8]* %b8mode34, i32 0, i64 %idxprom33
  %32 = load i8, i8* %arrayidx35, align 1
  %conv36 = sext i8 %32 to i32
  %cmp37 = icmp eq i32 %conv36, 0
  br i1 %cmp37, label %if.then.45, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.30
  %33 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %33 to i64
  %34 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8mode40 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %34, i32 0, i32 13
  %arrayidx41 = getelementptr inbounds [4 x i8], [4 x i8]* %b8mode40, i32 0, i64 %idxprom39
  %35 = load i8, i8* %arrayidx41, align 1
  %conv42 = sext i8 %35 to i32
  %cmp43 = icmp eq i32 %conv42, 11
  br i1 %cmp43, label %if.then.45, label %if.else

if.then.45:                                       ; preds = %lor.lhs.false, %cond.end.30
  %36 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %pRegion, align 8
  %mv46 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %36, i32 0, i32 3
  %arrayidx47 = getelementptr inbounds [3 x i32], [3 x i32]* %mv46, i32 0, i64 0
  store i32 0, i32* %arrayidx47, align 4
  %37 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %pRegion, align 8
  %mv48 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %37, i32 0, i32 3
  %arrayidx49 = getelementptr inbounds [3 x i32], [3 x i32]* %mv48, i32 0, i64 1
  store i32 0, i32* %arrayidx49, align 4
  %38 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %pRegion, align 8
  %mv50 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %38, i32 0, i32 3
  %arrayidx51 = getelementptr inbounds [3 x i32], [3 x i32]* %mv50, i32 0, i64 2
  store i32 0, i32* %arrayidx51, align 4
  br label %if.end.213

if.else:                                          ; preds = %lor.lhs.false
  %39 = load i32, i32* %mbx, align 4
  %mul = mul nsw i32 4, %39
  %40 = load i32, i32* %i, align 4
  %rem52 = srem i32 %40, 2
  %mul53 = mul nsw i32 %rem52, 2
  %add = add nsw i32 %mul, %mul53
  store i32 %add, i32* %ii, align 4
  %41 = load i32, i32* %mby, align 4
  %mul54 = mul nsw i32 4, %41
  %42 = load i32, i32* %i, align 4
  %div55 = sdiv i32 %42, 2
  %mul56 = mul nsw i32 %div55, 2
  %add57 = add nsw i32 %mul54, %mul56
  store i32 %add57, i32* %jj, align 4
  %43 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %43 to i64
  %44 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8mode59 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %44, i32 0, i32 13
  %arrayidx60 = getelementptr inbounds [4 x i8], [4 x i8]* %b8mode59, i32 0, i64 %idxprom58
  %45 = load i8, i8* %arrayidx60, align 1
  %conv61 = sext i8 %45 to i32
  %cmp62 = icmp sge i32 %conv61, 5
  br i1 %cmp62, label %land.lhs.true, label %if.else.157

land.lhs.true:                                    ; preds = %if.else
  %46 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %46 to i64
  %47 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8mode65 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %47, i32 0, i32 13
  %arrayidx66 = getelementptr inbounds [4 x i8], [4 x i8]* %b8mode65, i32 0, i64 %idxprom64
  %48 = load i8, i8* %arrayidx66, align 1
  %conv67 = sext i8 %48 to i32
  %cmp68 = icmp sle i32 %conv67, 7
  br i1 %cmp68, label %if.then.70, label %if.else.157

if.then.70:                                       ; preds = %land.lhs.true
  %49 = load i32, i32* %ii, align 4
  %idxprom71 = sext i32 %49 to i64
  %50 = load i32, i32* %jj, align 4
  %idxprom72 = sext i32 %50 to i64
  %51 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %mv73 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %51, i32 0, i32 39
  %52 = load i16****, i16***** %mv73, align 8
  %arrayidx74 = getelementptr inbounds i16***, i16**** %52, i64 0
  %53 = load i16***, i16**** %arrayidx74, align 8
  %arrayidx75 = getelementptr inbounds i16**, i16*** %53, i64 %idxprom72
  %54 = load i16**, i16*** %arrayidx75, align 8
  %arrayidx76 = getelementptr inbounds i16*, i16** %54, i64 %idxprom71
  %55 = load i16*, i16** %arrayidx76, align 8
  %arrayidx77 = getelementptr inbounds i16, i16* %55, i64 0
  %56 = load i16, i16* %arrayidx77, align 2
  %conv78 = sext i16 %56 to i32
  %57 = load i32, i32* %ii, align 4
  %add79 = add nsw i32 %57, 1
  %idxprom80 = sext i32 %add79 to i64
  %58 = load i32, i32* %jj, align 4
  %idxprom81 = sext i32 %58 to i64
  %59 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %mv82 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %59, i32 0, i32 39
  %60 = load i16****, i16***** %mv82, align 8
  %arrayidx83 = getelementptr inbounds i16***, i16**** %60, i64 0
  %61 = load i16***, i16**** %arrayidx83, align 8
  %arrayidx84 = getelementptr inbounds i16**, i16*** %61, i64 %idxprom81
  %62 = load i16**, i16*** %arrayidx84, align 8
  %arrayidx85 = getelementptr inbounds i16*, i16** %62, i64 %idxprom80
  %63 = load i16*, i16** %arrayidx85, align 8
  %arrayidx86 = getelementptr inbounds i16, i16* %63, i64 0
  %64 = load i16, i16* %arrayidx86, align 2
  %conv87 = sext i16 %64 to i32
  %add88 = add nsw i32 %conv78, %conv87
  %65 = load i32, i32* %ii, align 4
  %idxprom89 = sext i32 %65 to i64
  %66 = load i32, i32* %jj, align 4
  %add90 = add nsw i32 %66, 1
  %idxprom91 = sext i32 %add90 to i64
  %67 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %mv92 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %67, i32 0, i32 39
  %68 = load i16****, i16***** %mv92, align 8
  %arrayidx93 = getelementptr inbounds i16***, i16**** %68, i64 0
  %69 = load i16***, i16**** %arrayidx93, align 8
  %arrayidx94 = getelementptr inbounds i16**, i16*** %69, i64 %idxprom91
  %70 = load i16**, i16*** %arrayidx94, align 8
  %arrayidx95 = getelementptr inbounds i16*, i16** %70, i64 %idxprom89
  %71 = load i16*, i16** %arrayidx95, align 8
  %arrayidx96 = getelementptr inbounds i16, i16* %71, i64 0
  %72 = load i16, i16* %arrayidx96, align 2
  %conv97 = sext i16 %72 to i32
  %add98 = add nsw i32 %add88, %conv97
  %73 = load i32, i32* %ii, align 4
  %add99 = add nsw i32 %73, 1
  %idxprom100 = sext i32 %add99 to i64
  %74 = load i32, i32* %jj, align 4
  %add101 = add nsw i32 %74, 1
  %idxprom102 = sext i32 %add101 to i64
  %75 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %mv103 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %75, i32 0, i32 39
  %76 = load i16****, i16***** %mv103, align 8
  %arrayidx104 = getelementptr inbounds i16***, i16**** %76, i64 0
  %77 = load i16***, i16**** %arrayidx104, align 8
  %arrayidx105 = getelementptr inbounds i16**, i16*** %77, i64 %idxprom102
  %78 = load i16**, i16*** %arrayidx105, align 8
  %arrayidx106 = getelementptr inbounds i16*, i16** %78, i64 %idxprom100
  %79 = load i16*, i16** %arrayidx106, align 8
  %arrayidx107 = getelementptr inbounds i16, i16* %79, i64 0
  %80 = load i16, i16* %arrayidx107, align 2
  %conv108 = sext i16 %80 to i32
  %add109 = add nsw i32 %add98, %conv108
  %add110 = add nsw i32 %add109, 2
  %div111 = sdiv i32 %add110, 4
  %81 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %pRegion, align 8
  %mv112 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %81, i32 0, i32 3
  %arrayidx113 = getelementptr inbounds [3 x i32], [3 x i32]* %mv112, i32 0, i64 0
  store i32 %div111, i32* %arrayidx113, align 4
  %82 = load i32, i32* %ii, align 4
  %idxprom114 = sext i32 %82 to i64
  %83 = load i32, i32* %jj, align 4
  %idxprom115 = sext i32 %83 to i64
  %84 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %mv116 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %84, i32 0, i32 39
  %85 = load i16****, i16***** %mv116, align 8
  %arrayidx117 = getelementptr inbounds i16***, i16**** %85, i64 0
  %86 = load i16***, i16**** %arrayidx117, align 8
  %arrayidx118 = getelementptr inbounds i16**, i16*** %86, i64 %idxprom115
  %87 = load i16**, i16*** %arrayidx118, align 8
  %arrayidx119 = getelementptr inbounds i16*, i16** %87, i64 %idxprom114
  %88 = load i16*, i16** %arrayidx119, align 8
  %arrayidx120 = getelementptr inbounds i16, i16* %88, i64 1
  %89 = load i16, i16* %arrayidx120, align 2
  %conv121 = sext i16 %89 to i32
  %90 = load i32, i32* %ii, align 4
  %add122 = add nsw i32 %90, 1
  %idxprom123 = sext i32 %add122 to i64
  %91 = load i32, i32* %jj, align 4
  %idxprom124 = sext i32 %91 to i64
  %92 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %mv125 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %92, i32 0, i32 39
  %93 = load i16****, i16***** %mv125, align 8
  %arrayidx126 = getelementptr inbounds i16***, i16**** %93, i64 0
  %94 = load i16***, i16**** %arrayidx126, align 8
  %arrayidx127 = getelementptr inbounds i16**, i16*** %94, i64 %idxprom124
  %95 = load i16**, i16*** %arrayidx127, align 8
  %arrayidx128 = getelementptr inbounds i16*, i16** %95, i64 %idxprom123
  %96 = load i16*, i16** %arrayidx128, align 8
  %arrayidx129 = getelementptr inbounds i16, i16* %96, i64 1
  %97 = load i16, i16* %arrayidx129, align 2
  %conv130 = sext i16 %97 to i32
  %add131 = add nsw i32 %conv121, %conv130
  %98 = load i32, i32* %ii, align 4
  %idxprom132 = sext i32 %98 to i64
  %99 = load i32, i32* %jj, align 4
  %add133 = add nsw i32 %99, 1
  %idxprom134 = sext i32 %add133 to i64
  %100 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %mv135 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %100, i32 0, i32 39
  %101 = load i16****, i16***** %mv135, align 8
  %arrayidx136 = getelementptr inbounds i16***, i16**** %101, i64 0
  %102 = load i16***, i16**** %arrayidx136, align 8
  %arrayidx137 = getelementptr inbounds i16**, i16*** %102, i64 %idxprom134
  %103 = load i16**, i16*** %arrayidx137, align 8
  %arrayidx138 = getelementptr inbounds i16*, i16** %103, i64 %idxprom132
  %104 = load i16*, i16** %arrayidx138, align 8
  %arrayidx139 = getelementptr inbounds i16, i16* %104, i64 1
  %105 = load i16, i16* %arrayidx139, align 2
  %conv140 = sext i16 %105 to i32
  %add141 = add nsw i32 %add131, %conv140
  %106 = load i32, i32* %ii, align 4
  %add142 = add nsw i32 %106, 1
  %idxprom143 = sext i32 %add142 to i64
  %107 = load i32, i32* %jj, align 4
  %add144 = add nsw i32 %107, 1
  %idxprom145 = sext i32 %add144 to i64
  %108 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %mv146 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %108, i32 0, i32 39
  %109 = load i16****, i16***** %mv146, align 8
  %arrayidx147 = getelementptr inbounds i16***, i16**** %109, i64 0
  %110 = load i16***, i16**** %arrayidx147, align 8
  %arrayidx148 = getelementptr inbounds i16**, i16*** %110, i64 %idxprom145
  %111 = load i16**, i16*** %arrayidx148, align 8
  %arrayidx149 = getelementptr inbounds i16*, i16** %111, i64 %idxprom143
  %112 = load i16*, i16** %arrayidx149, align 8
  %arrayidx150 = getelementptr inbounds i16, i16* %112, i64 1
  %113 = load i16, i16* %arrayidx150, align 2
  %conv151 = sext i16 %113 to i32
  %add152 = add nsw i32 %add141, %conv151
  %add153 = add nsw i32 %add152, 2
  %div154 = sdiv i32 %add153, 4
  %114 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %pRegion, align 8
  %mv155 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %114, i32 0, i32 3
  %arrayidx156 = getelementptr inbounds [3 x i32], [3 x i32]* %mv155, i32 0, i64 1
  store i32 %div154, i32* %arrayidx156, align 4
  br label %if.end

if.else.157:                                      ; preds = %land.lhs.true, %if.else
  %115 = load i32, i32* %ii, align 4
  %idxprom158 = sext i32 %115 to i64
  %116 = load i32, i32* %jj, align 4
  %idxprom159 = sext i32 %116 to i64
  %117 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %mv160 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %117, i32 0, i32 39
  %118 = load i16****, i16***** %mv160, align 8
  %arrayidx161 = getelementptr inbounds i16***, i16**** %118, i64 0
  %119 = load i16***, i16**** %arrayidx161, align 8
  %arrayidx162 = getelementptr inbounds i16**, i16*** %119, i64 %idxprom159
  %120 = load i16**, i16*** %arrayidx162, align 8
  %arrayidx163 = getelementptr inbounds i16*, i16** %120, i64 %idxprom158
  %121 = load i16*, i16** %arrayidx163, align 8
  %arrayidx164 = getelementptr inbounds i16, i16* %121, i64 0
  %122 = load i16, i16* %arrayidx164, align 2
  %conv165 = sext i16 %122 to i32
  %123 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %pRegion, align 8
  %mv166 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %123, i32 0, i32 3
  %arrayidx167 = getelementptr inbounds [3 x i32], [3 x i32]* %mv166, i32 0, i64 0
  store i32 %conv165, i32* %arrayidx167, align 4
  %124 = load i32, i32* %ii, align 4
  %idxprom168 = sext i32 %124 to i64
  %125 = load i32, i32* %jj, align 4
  %idxprom169 = sext i32 %125 to i64
  %126 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %mv170 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %126, i32 0, i32 39
  %127 = load i16****, i16***** %mv170, align 8
  %arrayidx171 = getelementptr inbounds i16***, i16**** %127, i64 0
  %128 = load i16***, i16**** %arrayidx171, align 8
  %arrayidx172 = getelementptr inbounds i16**, i16*** %128, i64 %idxprom169
  %129 = load i16**, i16*** %arrayidx172, align 8
  %arrayidx173 = getelementptr inbounds i16*, i16** %129, i64 %idxprom168
  %130 = load i16*, i16** %arrayidx173, align 8
  %arrayidx174 = getelementptr inbounds i16, i16* %130, i64 1
  %131 = load i16, i16* %arrayidx174, align 2
  %conv175 = sext i16 %131 to i32
  %132 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %pRegion, align 8
  %mv176 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %132, i32 0, i32 3
  %arrayidx177 = getelementptr inbounds [3 x i32], [3 x i32]* %mv176, i32 0, i64 1
  store i32 %conv175, i32* %arrayidx177, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.157, %if.then.70
  %133 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %pRegion, align 8
  %mv178 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %133, i32 0, i32 3
  %arrayidx179 = getelementptr inbounds [3 x i32], [3 x i32]* %mv178, i32 0, i64 0
  %134 = load i32, i32* %arrayidx179, align 4
  %cmp180 = icmp slt i32 %134, 0
  br i1 %cmp180, label %cond.true.182, label %cond.false.185

cond.true.182:                                    ; preds = %if.end
  %135 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %pRegion, align 8
  %mv183 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %135, i32 0, i32 3
  %arrayidx184 = getelementptr inbounds [3 x i32], [3 x i32]* %mv183, i32 0, i64 0
  %136 = load i32, i32* %arrayidx184, align 4
  %sub = sub nsw i32 0, %136
  br label %cond.end.188

cond.false.185:                                   ; preds = %if.end
  %137 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %pRegion, align 8
  %mv186 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %137, i32 0, i32 3
  %arrayidx187 = getelementptr inbounds [3 x i32], [3 x i32]* %mv186, i32 0, i64 0
  %138 = load i32, i32* %arrayidx187, align 4
  br label %cond.end.188

cond.end.188:                                     ; preds = %cond.false.185, %cond.true.182
  %cond189 = phi i32 [ %sub, %cond.true.182 ], [ %138, %cond.false.185 ]
  %139 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %pRegion, align 8
  %mv190 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %139, i32 0, i32 3
  %arrayidx191 = getelementptr inbounds [3 x i32], [3 x i32]* %mv190, i32 0, i64 1
  %140 = load i32, i32* %arrayidx191, align 4
  %cmp192 = icmp slt i32 %140, 0
  br i1 %cmp192, label %cond.true.194, label %cond.false.198

cond.true.194:                                    ; preds = %cond.end.188
  %141 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %pRegion, align 8
  %mv195 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %141, i32 0, i32 3
  %arrayidx196 = getelementptr inbounds [3 x i32], [3 x i32]* %mv195, i32 0, i64 1
  %142 = load i32, i32* %arrayidx196, align 4
  %sub197 = sub nsw i32 0, %142
  br label %cond.end.201

cond.false.198:                                   ; preds = %cond.end.188
  %143 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %pRegion, align 8
  %mv199 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %143, i32 0, i32 3
  %arrayidx200 = getelementptr inbounds [3 x i32], [3 x i32]* %mv199, i32 0, i64 1
  %144 = load i32, i32* %arrayidx200, align 4
  br label %cond.end.201

cond.end.201:                                     ; preds = %cond.false.198, %cond.true.194
  %cond202 = phi i32 [ %sub197, %cond.true.194 ], [ %144, %cond.false.198 ]
  %add203 = add nsw i32 %cond189, %cond202
  %145 = load i32, i32* @erc_mvperMB, align 4
  %add204 = add nsw i32 %145, %add203
  store i32 %add204, i32* @erc_mvperMB, align 4
  %146 = load i32, i32* %ii, align 4
  %idxprom205 = sext i32 %146 to i64
  %147 = load i32, i32* %jj, align 4
  %idxprom206 = sext i32 %147 to i64
  %148 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %ref_idx = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %148, i32 0, i32 36
  %149 = load i8***, i8**** %ref_idx, align 8
  %arrayidx207 = getelementptr inbounds i8**, i8*** %149, i64 0
  %150 = load i8**, i8*** %arrayidx207, align 8
  %arrayidx208 = getelementptr inbounds i8*, i8** %150, i64 %idxprom206
  %151 = load i8*, i8** %arrayidx208, align 8
  %arrayidx209 = getelementptr inbounds i8, i8* %151, i64 %idxprom205
  %152 = load i8, i8* %arrayidx209, align 1
  %conv210 = sext i8 %152 to i32
  %153 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %pRegion, align 8
  %mv211 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %153, i32 0, i32 3
  %arrayidx212 = getelementptr inbounds [3 x i32], [3 x i32]* %mv211, i32 0, i64 2
  store i32 %conv210, i32* %arrayidx212, align 4
  br label %if.end.213

if.end.213:                                       ; preds = %cond.end.201, %if.then.45
  br label %for.inc

for.inc:                                          ; preds = %if.end.213
  %154 = load i32, i32* %i, align 4
  %inc = add nsw i32 %154, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.388

if.else.214:                                      ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond.215

for.cond.215:                                     ; preds = %for.inc.385, %if.else.214
  %155 = load i32, i32* %i, align 4
  %cmp216 = icmp slt i32 %155, 4
  br i1 %cmp216, label %for.body.218, label %for.end.387

for.body.218:                                     ; preds = %for.cond.215
  %156 = load i32, i32* %mbx, align 4
  %mul219 = mul nsw i32 4, %156
  %157 = load i32, i32* %i, align 4
  %rem220 = srem i32 %157, 2
  %mul221 = mul nsw i32 %rem220, 2
  %add222 = add nsw i32 %mul219, %mul221
  store i32 %add222, i32* %ii, align 4
  %158 = load i32, i32* %mby, align 4
  %mul223 = mul nsw i32 4, %158
  %159 = load i32, i32* %i, align 4
  %div224 = sdiv i32 %159, 2
  %mul225 = mul nsw i32 %div224, 2
  %add226 = add nsw i32 %mul223, %mul225
  store i32 %add226, i32* %jj, align 4
  %160 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %currRegion, align 8
  %161 = load i32, i32* %i, align 4
  %idx.ext227 = sext i32 %161 to i64
  %add.ptr228 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %160, i64 %idx.ext227
  store %struct.objectBuffer_t* %add.ptr228, %struct.objectBuffer_t** %pRegion, align 8
  %162 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type229 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %162, i32 0, i32 6
  %163 = load i32, i32* %mb_type229, align 4
  %cmp230 = icmp eq i32 %163, 10
  br i1 %cmp230, label %cond.true.232, label %cond.false.233

cond.true.232:                                    ; preds = %for.body.218
  br label %cond.end.241

cond.false.233:                                   ; preds = %for.body.218
  %164 = load i32, i32* %i, align 4
  %idxprom234 = sext i32 %164 to i64
  %165 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8mode235 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %165, i32 0, i32 13
  %arrayidx236 = getelementptr inbounds [4 x i8], [4 x i8]* %b8mode235, i32 0, i64 %idxprom234
  %166 = load i8, i8* %arrayidx236, align 1
  %conv237 = sext i8 %166 to i32
  %cmp238 = icmp eq i32 %conv237, 11
  %cond240 = select i1 %cmp238, i32 6, i32 5
  br label %cond.end.241

cond.end.241:                                     ; preds = %cond.false.233, %cond.true.232
  %cond242 = phi i32 [ 2, %cond.true.232 ], [ %cond240, %cond.false.233 ]
  %conv243 = trunc i32 %cond242 to i8
  %167 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %pRegion, align 8
  %regionMode244 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %167, i32 0, i32 0
  store i8 %conv243, i8* %regionMode244, align 1
  %168 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type245 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %168, i32 0, i32 6
  %169 = load i32, i32* %mb_type245, align 4
  %cmp246 = icmp eq i32 %169, 10
  br i1 %cmp246, label %if.then.255, label %lor.lhs.false.248

lor.lhs.false.248:                                ; preds = %cond.end.241
  %170 = load i32, i32* %i, align 4
  %idxprom249 = sext i32 %170 to i64
  %171 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8mode250 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %171, i32 0, i32 13
  %arrayidx251 = getelementptr inbounds [4 x i8], [4 x i8]* %b8mode250, i32 0, i64 %idxprom249
  %172 = load i8, i8* %arrayidx251, align 1
  %conv252 = sext i8 %172 to i32
  %cmp253 = icmp eq i32 %conv252, 11
  br i1 %cmp253, label %if.then.255, label %if.else.262

if.then.255:                                      ; preds = %lor.lhs.false.248, %cond.end.241
  %173 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %pRegion, align 8
  %mv256 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %173, i32 0, i32 3
  %arrayidx257 = getelementptr inbounds [3 x i32], [3 x i32]* %mv256, i32 0, i64 0
  store i32 0, i32* %arrayidx257, align 4
  %174 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %pRegion, align 8
  %mv258 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %174, i32 0, i32 3
  %arrayidx259 = getelementptr inbounds [3 x i32], [3 x i32]* %mv258, i32 0, i64 1
  store i32 0, i32* %arrayidx259, align 4
  %175 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %pRegion, align 8
  %mv260 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %175, i32 0, i32 3
  %arrayidx261 = getelementptr inbounds [3 x i32], [3 x i32]* %mv260, i32 0, i64 2
  store i32 0, i32* %arrayidx261, align 4
  br label %if.end.384

if.else.262:                                      ; preds = %lor.lhs.false.248
  %176 = load i32, i32* %ii, align 4
  %idxprom263 = sext i32 %176 to i64
  %177 = load i32, i32* %jj, align 4
  %idxprom264 = sext i32 %177 to i64
  %178 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %ref_idx265 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %178, i32 0, i32 36
  %179 = load i8***, i8**** %ref_idx265, align 8
  %arrayidx266 = getelementptr inbounds i8**, i8*** %179, i64 0
  %180 = load i8**, i8*** %arrayidx266, align 8
  %arrayidx267 = getelementptr inbounds i8*, i8** %180, i64 %idxprom264
  %181 = load i8*, i8** %arrayidx267, align 8
  %arrayidx268 = getelementptr inbounds i8, i8* %181, i64 %idxprom263
  %182 = load i8, i8* %arrayidx268, align 1
  %conv269 = sext i8 %182 to i32
  %cmp270 = icmp slt i32 %conv269, 0
  %cond272 = select i1 %cmp270, i32 1, i32 0
  store i32 %cond272, i32* %idx, align 4
  %183 = load i32, i32* %idx, align 4
  %idxprom273 = sext i32 %183 to i64
  %184 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %mv274 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %184, i32 0, i32 39
  %185 = load i16****, i16***** %mv274, align 8
  %arrayidx275 = getelementptr inbounds i16***, i16**** %185, i64 %idxprom273
  %186 = load i16***, i16**** %arrayidx275, align 8
  store i16*** %186, i16**** %mv, align 8
  %187 = load i32, i32* %ii, align 4
  %idxprom276 = sext i32 %187 to i64
  %188 = load i32, i32* %jj, align 4
  %idxprom277 = sext i32 %188 to i64
  %189 = load i16***, i16**** %mv, align 8
  %arrayidx278 = getelementptr inbounds i16**, i16*** %189, i64 %idxprom277
  %190 = load i16**, i16*** %arrayidx278, align 8
  %arrayidx279 = getelementptr inbounds i16*, i16** %190, i64 %idxprom276
  %191 = load i16*, i16** %arrayidx279, align 8
  %arrayidx280 = getelementptr inbounds i16, i16* %191, i64 0
  %192 = load i16, i16* %arrayidx280, align 2
  %conv281 = sext i16 %192 to i32
  %193 = load i32, i32* %ii, align 4
  %add282 = add nsw i32 %193, 1
  %idxprom283 = sext i32 %add282 to i64
  %194 = load i32, i32* %jj, align 4
  %idxprom284 = sext i32 %194 to i64
  %195 = load i16***, i16**** %mv, align 8
  %arrayidx285 = getelementptr inbounds i16**, i16*** %195, i64 %idxprom284
  %196 = load i16**, i16*** %arrayidx285, align 8
  %arrayidx286 = getelementptr inbounds i16*, i16** %196, i64 %idxprom283
  %197 = load i16*, i16** %arrayidx286, align 8
  %arrayidx287 = getelementptr inbounds i16, i16* %197, i64 0
  %198 = load i16, i16* %arrayidx287, align 2
  %conv288 = sext i16 %198 to i32
  %add289 = add nsw i32 %conv281, %conv288
  %199 = load i32, i32* %ii, align 4
  %idxprom290 = sext i32 %199 to i64
  %200 = load i32, i32* %jj, align 4
  %add291 = add nsw i32 %200, 1
  %idxprom292 = sext i32 %add291 to i64
  %201 = load i16***, i16**** %mv, align 8
  %arrayidx293 = getelementptr inbounds i16**, i16*** %201, i64 %idxprom292
  %202 = load i16**, i16*** %arrayidx293, align 8
  %arrayidx294 = getelementptr inbounds i16*, i16** %202, i64 %idxprom290
  %203 = load i16*, i16** %arrayidx294, align 8
  %arrayidx295 = getelementptr inbounds i16, i16* %203, i64 0
  %204 = load i16, i16* %arrayidx295, align 2
  %conv296 = sext i16 %204 to i32
  %add297 = add nsw i32 %add289, %conv296
  %205 = load i32, i32* %ii, align 4
  %add298 = add nsw i32 %205, 1
  %idxprom299 = sext i32 %add298 to i64
  %206 = load i32, i32* %jj, align 4
  %add300 = add nsw i32 %206, 1
  %idxprom301 = sext i32 %add300 to i64
  %207 = load i16***, i16**** %mv, align 8
  %arrayidx302 = getelementptr inbounds i16**, i16*** %207, i64 %idxprom301
  %208 = load i16**, i16*** %arrayidx302, align 8
  %arrayidx303 = getelementptr inbounds i16*, i16** %208, i64 %idxprom299
  %209 = load i16*, i16** %arrayidx303, align 8
  %arrayidx304 = getelementptr inbounds i16, i16* %209, i64 0
  %210 = load i16, i16* %arrayidx304, align 2
  %conv305 = sext i16 %210 to i32
  %add306 = add nsw i32 %add297, %conv305
  %add307 = add nsw i32 %add306, 2
  %div308 = sdiv i32 %add307, 4
  %211 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %pRegion, align 8
  %mv309 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %211, i32 0, i32 3
  %arrayidx310 = getelementptr inbounds [3 x i32], [3 x i32]* %mv309, i32 0, i64 0
  store i32 %div308, i32* %arrayidx310, align 4
  %212 = load i32, i32* %ii, align 4
  %idxprom311 = sext i32 %212 to i64
  %213 = load i32, i32* %jj, align 4
  %idxprom312 = sext i32 %213 to i64
  %214 = load i16***, i16**** %mv, align 8
  %arrayidx313 = getelementptr inbounds i16**, i16*** %214, i64 %idxprom312
  %215 = load i16**, i16*** %arrayidx313, align 8
  %arrayidx314 = getelementptr inbounds i16*, i16** %215, i64 %idxprom311
  %216 = load i16*, i16** %arrayidx314, align 8
  %arrayidx315 = getelementptr inbounds i16, i16* %216, i64 1
  %217 = load i16, i16* %arrayidx315, align 2
  %conv316 = sext i16 %217 to i32
  %218 = load i32, i32* %ii, align 4
  %add317 = add nsw i32 %218, 1
  %idxprom318 = sext i32 %add317 to i64
  %219 = load i32, i32* %jj, align 4
  %idxprom319 = sext i32 %219 to i64
  %220 = load i16***, i16**** %mv, align 8
  %arrayidx320 = getelementptr inbounds i16**, i16*** %220, i64 %idxprom319
  %221 = load i16**, i16*** %arrayidx320, align 8
  %arrayidx321 = getelementptr inbounds i16*, i16** %221, i64 %idxprom318
  %222 = load i16*, i16** %arrayidx321, align 8
  %arrayidx322 = getelementptr inbounds i16, i16* %222, i64 1
  %223 = load i16, i16* %arrayidx322, align 2
  %conv323 = sext i16 %223 to i32
  %add324 = add nsw i32 %conv316, %conv323
  %224 = load i32, i32* %ii, align 4
  %idxprom325 = sext i32 %224 to i64
  %225 = load i32, i32* %jj, align 4
  %add326 = add nsw i32 %225, 1
  %idxprom327 = sext i32 %add326 to i64
  %226 = load i16***, i16**** %mv, align 8
  %arrayidx328 = getelementptr inbounds i16**, i16*** %226, i64 %idxprom327
  %227 = load i16**, i16*** %arrayidx328, align 8
  %arrayidx329 = getelementptr inbounds i16*, i16** %227, i64 %idxprom325
  %228 = load i16*, i16** %arrayidx329, align 8
  %arrayidx330 = getelementptr inbounds i16, i16* %228, i64 1
  %229 = load i16, i16* %arrayidx330, align 2
  %conv331 = sext i16 %229 to i32
  %add332 = add nsw i32 %add324, %conv331
  %230 = load i32, i32* %ii, align 4
  %add333 = add nsw i32 %230, 1
  %idxprom334 = sext i32 %add333 to i64
  %231 = load i32, i32* %jj, align 4
  %add335 = add nsw i32 %231, 1
  %idxprom336 = sext i32 %add335 to i64
  %232 = load i16***, i16**** %mv, align 8
  %arrayidx337 = getelementptr inbounds i16**, i16*** %232, i64 %idxprom336
  %233 = load i16**, i16*** %arrayidx337, align 8
  %arrayidx338 = getelementptr inbounds i16*, i16** %233, i64 %idxprom334
  %234 = load i16*, i16** %arrayidx338, align 8
  %arrayidx339 = getelementptr inbounds i16, i16* %234, i64 1
  %235 = load i16, i16* %arrayidx339, align 2
  %conv340 = sext i16 %235 to i32
  %add341 = add nsw i32 %add332, %conv340
  %add342 = add nsw i32 %add341, 2
  %div343 = sdiv i32 %add342, 4
  %236 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %pRegion, align 8
  %mv344 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %236, i32 0, i32 3
  %arrayidx345 = getelementptr inbounds [3 x i32], [3 x i32]* %mv344, i32 0, i64 1
  store i32 %div343, i32* %arrayidx345, align 4
  %237 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %pRegion, align 8
  %mv346 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %237, i32 0, i32 3
  %arrayidx347 = getelementptr inbounds [3 x i32], [3 x i32]* %mv346, i32 0, i64 0
  %238 = load i32, i32* %arrayidx347, align 4
  %cmp348 = icmp slt i32 %238, 0
  br i1 %cmp348, label %cond.true.350, label %cond.false.354

cond.true.350:                                    ; preds = %if.else.262
  %239 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %pRegion, align 8
  %mv351 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %239, i32 0, i32 3
  %arrayidx352 = getelementptr inbounds [3 x i32], [3 x i32]* %mv351, i32 0, i64 0
  %240 = load i32, i32* %arrayidx352, align 4
  %sub353 = sub nsw i32 0, %240
  br label %cond.end.357

cond.false.354:                                   ; preds = %if.else.262
  %241 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %pRegion, align 8
  %mv355 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %241, i32 0, i32 3
  %arrayidx356 = getelementptr inbounds [3 x i32], [3 x i32]* %mv355, i32 0, i64 0
  %242 = load i32, i32* %arrayidx356, align 4
  br label %cond.end.357

cond.end.357:                                     ; preds = %cond.false.354, %cond.true.350
  %cond358 = phi i32 [ %sub353, %cond.true.350 ], [ %242, %cond.false.354 ]
  %243 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %pRegion, align 8
  %mv359 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %243, i32 0, i32 3
  %arrayidx360 = getelementptr inbounds [3 x i32], [3 x i32]* %mv359, i32 0, i64 1
  %244 = load i32, i32* %arrayidx360, align 4
  %cmp361 = icmp slt i32 %244, 0
  br i1 %cmp361, label %cond.true.363, label %cond.false.367

cond.true.363:                                    ; preds = %cond.end.357
  %245 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %pRegion, align 8
  %mv364 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %245, i32 0, i32 3
  %arrayidx365 = getelementptr inbounds [3 x i32], [3 x i32]* %mv364, i32 0, i64 1
  %246 = load i32, i32* %arrayidx365, align 4
  %sub366 = sub nsw i32 0, %246
  br label %cond.end.370

cond.false.367:                                   ; preds = %cond.end.357
  %247 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %pRegion, align 8
  %mv368 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %247, i32 0, i32 3
  %arrayidx369 = getelementptr inbounds [3 x i32], [3 x i32]* %mv368, i32 0, i64 1
  %248 = load i32, i32* %arrayidx369, align 4
  br label %cond.end.370

cond.end.370:                                     ; preds = %cond.false.367, %cond.true.363
  %cond371 = phi i32 [ %sub366, %cond.true.363 ], [ %248, %cond.false.367 ]
  %add372 = add nsw i32 %cond358, %cond371
  %249 = load i32, i32* @erc_mvperMB, align 4
  %add373 = add nsw i32 %249, %add372
  store i32 %add373, i32* @erc_mvperMB, align 4
  %250 = load i32, i32* %ii, align 4
  %idxprom374 = sext i32 %250 to i64
  %251 = load i32, i32* %jj, align 4
  %idxprom375 = sext i32 %251 to i64
  %252 = load i32, i32* %idx, align 4
  %idxprom376 = sext i32 %252 to i64
  %253 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %ref_idx377 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %253, i32 0, i32 36
  %254 = load i8***, i8**** %ref_idx377, align 8
  %arrayidx378 = getelementptr inbounds i8**, i8*** %254, i64 %idxprom376
  %255 = load i8**, i8*** %arrayidx378, align 8
  %arrayidx379 = getelementptr inbounds i8*, i8** %255, i64 %idxprom375
  %256 = load i8*, i8** %arrayidx379, align 8
  %arrayidx380 = getelementptr inbounds i8, i8* %256, i64 %idxprom374
  %257 = load i8, i8* %arrayidx380, align 1
  %conv381 = sext i8 %257 to i32
  %258 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %pRegion, align 8
  %mv382 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %258, i32 0, i32 3
  %arrayidx383 = getelementptr inbounds [3 x i32], [3 x i32]* %mv382, i32 0, i64 2
  store i32 %conv381, i32* %arrayidx383, align 4
  br label %if.end.384

if.end.384:                                       ; preds = %cond.end.370, %if.then.255
  br label %for.inc.385

for.inc.385:                                      ; preds = %if.end.384
  %259 = load i32, i32* %i, align 4
  %inc386 = add nsw i32 %259, 1
  store i32 %inc386, i32* %i, align 4
  br label %for.cond.215

for.end.387:                                      ; preds = %for.cond.215
  br label %if.end.388

if.end.388:                                       ; preds = %for.end.387, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_old_slice() #0 {
entry:
  store i32 0, i32* getelementptr inbounds (%struct.old_slice_par, %struct.old_slice_par* @old_slice, i32 0, i32 0), align 4
  store i32 2147483647, i32* getelementptr inbounds (%struct.old_slice_par, %struct.old_slice_par* @old_slice, i32 0, i32 9), align 4
  store i32 2147483647, i32* getelementptr inbounds (%struct.old_slice_par, %struct.old_slice_par* @old_slice, i32 0, i32 2), align 4
  store i32 2147483647, i32* getelementptr inbounds (%struct.old_slice_par, %struct.old_slice_par* @old_slice, i32 0, i32 3), align 4
  store i32 0, i32* getelementptr inbounds (%struct.old_slice_par, %struct.old_slice_par* @old_slice, i32 0, i32 7), align 4
  store i32 -1, i32* getelementptr inbounds (%struct.old_slice_par, %struct.old_slice_par* @old_slice, i32 0, i32 4), align 4
  store i32 2147483647, i32* getelementptr inbounds (%struct.old_slice_par, %struct.old_slice_par* @old_slice, i32 0, i32 5), align 4
  store i32 2147483647, i32* getelementptr inbounds (%struct.old_slice_par, %struct.old_slice_par* @old_slice, i32 0, i32 6, i64 0), align 4
  store i32 2147483647, i32* getelementptr inbounds (%struct.old_slice_par, %struct.old_slice_par* @old_slice, i32 0, i32 6, i64 1), align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @exit_slice() #0 {
entry:
  %0 = load %struct.img_par*, %struct.img_par** @img, align 8
  %currentSlice = getelementptr inbounds %struct.img_par, %struct.img_par* %0, i32 0, i32 38
  %1 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %pic_parameter_set_id = getelementptr inbounds %struct.Slice, %struct.Slice* %1, i32 0, i32 24
  %2 = load i32, i32* %pic_parameter_set_id, align 4
  store i32 %2, i32* getelementptr inbounds (%struct.old_slice_par, %struct.old_slice_par* @old_slice, i32 0, i32 9), align 4
  %3 = load %struct.img_par*, %struct.img_par** @img, align 8
  %frame_num = getelementptr inbounds %struct.img_par, %struct.img_par* %3, i32 0, i32 56
  %4 = load i32, i32* %frame_num, align 4
  store i32 %4, i32* getelementptr inbounds (%struct.old_slice_par, %struct.old_slice_par* @old_slice, i32 0, i32 2), align 4
  %5 = load %struct.img_par*, %struct.img_par** @img, align 8
  %field_pic_flag = getelementptr inbounds %struct.img_par, %struct.img_par* %5, i32 0, i32 57
  %6 = load i32, i32* %field_pic_flag, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.old_slice_par, %struct.old_slice_par* @old_slice, i32 0, i32 0), align 4
  %7 = load %struct.img_par*, %struct.img_par** @img, align 8
  %field_pic_flag1 = getelementptr inbounds %struct.img_par, %struct.img_par* %7, i32 0, i32 57
  %8 = load i32, i32* %field_pic_flag1, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.img_par*, %struct.img_par** @img, align 8
  %bottom_field_flag = getelementptr inbounds %struct.img_par, %struct.img_par* %9, i32 0, i32 58
  %10 = load i32, i32* %bottom_field_flag, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.old_slice_par, %struct.old_slice_par* @old_slice, i32 0, i32 1), align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct.img_par*, %struct.img_par** @img, align 8
  %nal_reference_idc = getelementptr inbounds %struct.img_par, %struct.img_par* %11, i32 0, i32 84
  %12 = load i32, i32* %nal_reference_idc, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.old_slice_par, %struct.old_slice_par* @old_slice, i32 0, i32 3), align 4
  %13 = load %struct.img_par*, %struct.img_par** @img, align 8
  %idr_flag = getelementptr inbounds %struct.img_par, %struct.img_par* %13, i32 0, i32 83
  %14 = load i32, i32* %idr_flag, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.old_slice_par, %struct.old_slice_par* @old_slice, i32 0, i32 7), align 4
  %15 = load %struct.img_par*, %struct.img_par** @img, align 8
  %idr_flag2 = getelementptr inbounds %struct.img_par, %struct.img_par* %15, i32 0, i32 83
  %16 = load i32, i32* %idr_flag2, align 4
  %tobool3 = icmp ne i32 %16, 0
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %17 = load %struct.img_par*, %struct.img_par** @img, align 8
  %idr_pic_id = getelementptr inbounds %struct.img_par, %struct.img_par* %17, i32 0, i32 85
  %18 = load i32, i32* %idr_pic_id, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.old_slice_par, %struct.old_slice_par* @old_slice, i32 0, i32 8), align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %19 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %pic_order_cnt_type = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %19, i32 0, i32 18
  %20 = load i32, i32* %pic_order_cnt_type, align 4
  %cmp = icmp eq i32 %20, 0
  br i1 %cmp, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.5
  %21 = load %struct.img_par*, %struct.img_par** @img, align 8
  %pic_order_cnt_lsb = getelementptr inbounds %struct.img_par, %struct.img_par* %21, i32 0, i32 59
  %22 = load i32, i32* %pic_order_cnt_lsb, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.old_slice_par, %struct.old_slice_par* @old_slice, i32 0, i32 4), align 4
  %23 = load %struct.img_par*, %struct.img_par** @img, align 8
  %delta_pic_order_cnt_bottom = getelementptr inbounds %struct.img_par, %struct.img_par* %23, i32 0, i32 60
  %24 = load i32, i32* %delta_pic_order_cnt_bottom, align 4
  store i32 %24, i32* getelementptr inbounds (%struct.old_slice_par, %struct.old_slice_par* @old_slice, i32 0, i32 5), align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end.5
  %25 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %pic_order_cnt_type8 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %25, i32 0, i32 18
  %26 = load i32, i32* %pic_order_cnt_type8, align 4
  %cmp9 = icmp eq i32 %26, 1
  br i1 %cmp9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.end.7
  %27 = load %struct.img_par*, %struct.img_par** @img, align 8
  %delta_pic_order_cnt = getelementptr inbounds %struct.img_par, %struct.img_par* %27, i32 0, i32 61
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %delta_pic_order_cnt, i32 0, i64 0
  %28 = load i32, i32* %arrayidx, align 4
  store i32 %28, i32* getelementptr inbounds (%struct.old_slice_par, %struct.old_slice_par* @old_slice, i32 0, i32 6, i64 0), align 4
  %29 = load %struct.img_par*, %struct.img_par** @img, align 8
  %delta_pic_order_cnt11 = getelementptr inbounds %struct.img_par, %struct.img_par* %29, i32 0, i32 61
  %arrayidx12 = getelementptr inbounds [3 x i32], [3 x i32]* %delta_pic_order_cnt11, i32 0, i64 1
  %30 = load i32, i32* %arrayidx12, align 4
  store i32 %30, i32* getelementptr inbounds (%struct.old_slice_par, %struct.old_slice_par* @old_slice, i32 0, i32 6, i64 1), align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %if.end.7
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @is_new_picture() #0 {
entry:
  %result = alloca i32, align 4
  store i32 0, i32* %result, align 4
  %0 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %cmp = icmp eq %struct.storable_picture* null, %0
  %conv = zext i1 %cmp to i32
  %1 = load i32, i32* %result, align 4
  %or = or i32 %1, %conv
  store i32 %or, i32* %result, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.old_slice_par, %struct.old_slice_par* @old_slice, i32 0, i32 9), align 4
  %3 = load %struct.img_par*, %struct.img_par** @img, align 8
  %currentSlice = getelementptr inbounds %struct.img_par, %struct.img_par* %3, i32 0, i32 38
  %4 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %pic_parameter_set_id = getelementptr inbounds %struct.Slice, %struct.Slice* %4, i32 0, i32 24
  %5 = load i32, i32* %pic_parameter_set_id, align 4
  %cmp1 = icmp ne i32 %2, %5
  %conv2 = zext i1 %cmp1 to i32
  %6 = load i32, i32* %result, align 4
  %or3 = or i32 %6, %conv2
  store i32 %or3, i32* %result, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.old_slice_par, %struct.old_slice_par* @old_slice, i32 0, i32 2), align 4
  %8 = load %struct.img_par*, %struct.img_par** @img, align 8
  %frame_num = getelementptr inbounds %struct.img_par, %struct.img_par* %8, i32 0, i32 56
  %9 = load i32, i32* %frame_num, align 4
  %cmp4 = icmp ne i32 %7, %9
  %conv5 = zext i1 %cmp4 to i32
  %10 = load i32, i32* %result, align 4
  %or6 = or i32 %10, %conv5
  store i32 %or6, i32* %result, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.old_slice_par, %struct.old_slice_par* @old_slice, i32 0, i32 0), align 4
  %12 = load %struct.img_par*, %struct.img_par** @img, align 8
  %field_pic_flag = getelementptr inbounds %struct.img_par, %struct.img_par* %12, i32 0, i32 57
  %13 = load i32, i32* %field_pic_flag, align 4
  %cmp7 = icmp ne i32 %11, %13
  %conv8 = zext i1 %cmp7 to i32
  %14 = load i32, i32* %result, align 4
  %or9 = or i32 %14, %conv8
  store i32 %or9, i32* %result, align 4
  %15 = load %struct.img_par*, %struct.img_par** @img, align 8
  %field_pic_flag10 = getelementptr inbounds %struct.img_par, %struct.img_par* %15, i32 0, i32 57
  %16 = load i32, i32* %field_pic_flag10, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %17 = load i32, i32* getelementptr inbounds (%struct.old_slice_par, %struct.old_slice_par* @old_slice, i32 0, i32 0), align 4
  %tobool11 = icmp ne i32 %17, 0
  br i1 %tobool11, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %18 = load i32, i32* getelementptr inbounds (%struct.old_slice_par, %struct.old_slice_par* @old_slice, i32 0, i32 1), align 4
  %19 = load %struct.img_par*, %struct.img_par** @img, align 8
  %bottom_field_flag = getelementptr inbounds %struct.img_par, %struct.img_par* %19, i32 0, i32 58
  %20 = load i32, i32* %bottom_field_flag, align 4
  %cmp12 = icmp ne i32 %18, %20
  %conv13 = zext i1 %cmp12 to i32
  %21 = load i32, i32* %result, align 4
  %or14 = or i32 %21, %conv13
  store i32 %or14, i32* %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %22 = load i32, i32* getelementptr inbounds (%struct.old_slice_par, %struct.old_slice_par* @old_slice, i32 0, i32 3), align 4
  %23 = load %struct.img_par*, %struct.img_par** @img, align 8
  %nal_reference_idc = getelementptr inbounds %struct.img_par, %struct.img_par* %23, i32 0, i32 84
  %24 = load i32, i32* %nal_reference_idc, align 4
  %cmp15 = icmp ne i32 %22, %24
  br i1 %cmp15, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %25 = load i32, i32* getelementptr inbounds (%struct.old_slice_par, %struct.old_slice_par* @old_slice, i32 0, i32 3), align 4
  %cmp17 = icmp eq i32 %25, 0
  br i1 %cmp17, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %26 = load %struct.img_par*, %struct.img_par** @img, align 8
  %nal_reference_idc19 = getelementptr inbounds %struct.img_par, %struct.img_par* %26, i32 0, i32 84
  %27 = load i32, i32* %nal_reference_idc19, align 4
  %cmp20 = icmp eq i32 %27, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %28 = phi i1 [ true, %land.rhs ], [ %cmp20, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %if.end
  %29 = phi i1 [ false, %if.end ], [ %28, %lor.end ]
  %land.ext = zext i1 %29 to i32
  %30 = load i32, i32* %result, align 4
  %or22 = or i32 %30, %land.ext
  store i32 %or22, i32* %result, align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.old_slice_par, %struct.old_slice_par* @old_slice, i32 0, i32 7), align 4
  %32 = load %struct.img_par*, %struct.img_par** @img, align 8
  %idr_flag = getelementptr inbounds %struct.img_par, %struct.img_par* %32, i32 0, i32 83
  %33 = load i32, i32* %idr_flag, align 4
  %cmp23 = icmp ne i32 %31, %33
  %conv24 = zext i1 %cmp23 to i32
  %34 = load i32, i32* %result, align 4
  %or25 = or i32 %34, %conv24
  store i32 %or25, i32* %result, align 4
  %35 = load %struct.img_par*, %struct.img_par** @img, align 8
  %idr_flag26 = getelementptr inbounds %struct.img_par, %struct.img_par* %35, i32 0, i32 83
  %36 = load i32, i32* %idr_flag26, align 4
  %tobool27 = icmp ne i32 %36, 0
  br i1 %tobool27, label %land.lhs.true.28, label %if.end.34

land.lhs.true.28:                                 ; preds = %land.end
  %37 = load i32, i32* getelementptr inbounds (%struct.old_slice_par, %struct.old_slice_par* @old_slice, i32 0, i32 7), align 4
  %tobool29 = icmp ne i32 %37, 0
  br i1 %tobool29, label %if.then.30, label %if.end.34

if.then.30:                                       ; preds = %land.lhs.true.28
  %38 = load i32, i32* getelementptr inbounds (%struct.old_slice_par, %struct.old_slice_par* @old_slice, i32 0, i32 8), align 4
  %39 = load %struct.img_par*, %struct.img_par** @img, align 8
  %idr_pic_id = getelementptr inbounds %struct.img_par, %struct.img_par* %39, i32 0, i32 85
  %40 = load i32, i32* %idr_pic_id, align 4
  %cmp31 = icmp ne i32 %38, %40
  %conv32 = zext i1 %cmp31 to i32
  %41 = load i32, i32* %result, align 4
  %or33 = or i32 %41, %conv32
  store i32 %or33, i32* %result, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.30, %land.lhs.true.28, %land.end
  %42 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %pic_order_cnt_type = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %42, i32 0, i32 18
  %43 = load i32, i32* %pic_order_cnt_type, align 4
  %cmp35 = icmp eq i32 %43, 0
  br i1 %cmp35, label %if.then.37, label %if.end.44

if.then.37:                                       ; preds = %if.end.34
  %44 = load i32, i32* getelementptr inbounds (%struct.old_slice_par, %struct.old_slice_par* @old_slice, i32 0, i32 4), align 4
  %45 = load %struct.img_par*, %struct.img_par** @img, align 8
  %pic_order_cnt_lsb = getelementptr inbounds %struct.img_par, %struct.img_par* %45, i32 0, i32 59
  %46 = load i32, i32* %pic_order_cnt_lsb, align 4
  %cmp38 = icmp ne i32 %44, %46
  %conv39 = zext i1 %cmp38 to i32
  %47 = load i32, i32* %result, align 4
  %or40 = or i32 %47, %conv39
  store i32 %or40, i32* %result, align 4
  %48 = load i32, i32* getelementptr inbounds (%struct.old_slice_par, %struct.old_slice_par* @old_slice, i32 0, i32 5), align 4
  %49 = load %struct.img_par*, %struct.img_par** @img, align 8
  %delta_pic_order_cnt_bottom = getelementptr inbounds %struct.img_par, %struct.img_par* %49, i32 0, i32 60
  %50 = load i32, i32* %delta_pic_order_cnt_bottom, align 4
  %cmp41 = icmp ne i32 %48, %50
  %conv42 = zext i1 %cmp41 to i32
  %51 = load i32, i32* %result, align 4
  %or43 = or i32 %51, %conv42
  store i32 %or43, i32* %result, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.37, %if.end.34
  %52 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %pic_order_cnt_type45 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %52, i32 0, i32 18
  %53 = load i32, i32* %pic_order_cnt_type45, align 4
  %cmp46 = icmp eq i32 %53, 1
  br i1 %cmp46, label %if.then.48, label %if.end.57

if.then.48:                                       ; preds = %if.end.44
  %54 = load i32, i32* getelementptr inbounds (%struct.old_slice_par, %struct.old_slice_par* @old_slice, i32 0, i32 6, i64 0), align 4
  %55 = load %struct.img_par*, %struct.img_par** @img, align 8
  %delta_pic_order_cnt = getelementptr inbounds %struct.img_par, %struct.img_par* %55, i32 0, i32 61
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %delta_pic_order_cnt, i32 0, i64 0
  %56 = load i32, i32* %arrayidx, align 4
  %cmp49 = icmp ne i32 %54, %56
  %conv50 = zext i1 %cmp49 to i32
  %57 = load i32, i32* %result, align 4
  %or51 = or i32 %57, %conv50
  store i32 %or51, i32* %result, align 4
  %58 = load i32, i32* getelementptr inbounds (%struct.old_slice_par, %struct.old_slice_par* @old_slice, i32 0, i32 6, i64 1), align 4
  %59 = load %struct.img_par*, %struct.img_par** @img, align 8
  %delta_pic_order_cnt52 = getelementptr inbounds %struct.img_par, %struct.img_par* %59, i32 0, i32 61
  %arrayidx53 = getelementptr inbounds [3 x i32], [3 x i32]* %delta_pic_order_cnt52, i32 0, i64 1
  %60 = load i32, i32* %arrayidx53, align 4
  %cmp54 = icmp ne i32 %58, %60
  %conv55 = zext i1 %cmp54 to i32
  %61 = load i32, i32* %result, align 4
  %or56 = or i32 %61, %conv55
  store i32 %or56, i32* %result, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.48, %if.end.44
  %62 = load i32, i32* %result, align 4
  ret i32 %62
}

; Function Attrs: nounwind uwtable
define void @decode_one_slice(%struct.img_par* %img, %struct.inp_par* %inp) #0 {
entry:
  %img.addr = alloca %struct.img_par*, align 8
  %inp.addr = alloca %struct.inp_par*, align 8
  %end_of_slice = alloca i32, align 4
  %read_flag = alloca i32, align 4
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  store %struct.inp_par* %inp, %struct.inp_par** %inp.addr, align 8
  store i32 0, i32* %end_of_slice, align 4
  %0 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %cod_counter = getelementptr inbounds %struct.img_par, %struct.img_par* %0, i32 0, i32 34
  store i32 -1, i32* %cod_counter, align 4
  call void @set_ref_pic_num()
  %1 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %type = getelementptr inbounds %struct.img_par, %struct.img_par* %1, i32 0, i32 10
  %2 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.colocated_params*, %struct.colocated_params** @Co_located, align 8
  call void @compute_colocated(%struct.colocated_params* %3, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %lor.end, %if.end
  %4 = load i32, i32* %end_of_slice, align 4
  %cmp1 = icmp eq i32 %4, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %6 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %current_mb_nr = getelementptr inbounds %struct.img_par, %struct.img_par* %6, i32 0, i32 1
  %7 = load i32, i32* %current_mb_nr, align 4
  call void @start_macroblock(%struct.img_par* %5, i32 %7)
  %8 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %9 = load %struct.inp_par*, %struct.inp_par** %inp.addr, align 8
  %call = call i32 @read_one_macroblock(%struct.img_par* %8, %struct.inp_par* %9)
  store i32 %call, i32* %read_flag, align 4
  %10 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %11 = load %struct.inp_par*, %struct.inp_par** %inp.addr, align 8
  %call2 = call i32 @decode_one_macroblock(%struct.img_par* %10, %struct.inp_par* %11)
  %12 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.img_par, %struct.img_par* %12, i32 0, i32 44
  %13 = load i32, i32* %MbaffFrameFlag, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %while.body
  %14 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %current_mb_nr3 = getelementptr inbounds %struct.img_par, %struct.img_par* %14, i32 0, i32 1
  %15 = load i32, i32* %current_mb_nr3, align 4
  %idxprom = zext i32 %15 to i64
  %16 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %mb_field = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %16, i32 0, i32 34
  %17 = load i8*, i8** %mb_field, align 8
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 %idxprom
  %18 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %18 to i32
  %tobool4 = icmp ne i32 %conv, 0
  br i1 %tobool4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %land.lhs.true
  %19 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %num_ref_idx_l0_active = getelementptr inbounds %struct.img_par, %struct.img_par* %19, i32 0, i32 47
  %20 = load i32, i32* %num_ref_idx_l0_active, align 4
  %shr = ashr i32 %20, 1
  store i32 %shr, i32* %num_ref_idx_l0_active, align 4
  %21 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %num_ref_idx_l1_active = getelementptr inbounds %struct.img_par, %struct.img_par* %21, i32 0, i32 48
  %22 = load i32, i32* %num_ref_idx_l1_active, align 4
  %shr6 = ashr i32 %22, 1
  store i32 %shr6, i32* %num_ref_idx_l1_active, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %land.lhs.true, %while.body
  %23 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %24 = load %struct.inp_par*, %struct.inp_par** %inp.addr, align 8
  call void @ercWriteMBMODEandMV(%struct.img_par* %23, %struct.inp_par* %24)
  %25 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %26 = load %struct.inp_par*, %struct.inp_par** %inp.addr, align 8
  %27 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %MbaffFrameFlag8 = getelementptr inbounds %struct.img_par, %struct.img_par* %27, i32 0, i32 44
  %28 = load i32, i32* %MbaffFrameFlag8, align 4
  %tobool9 = icmp ne i32 %28, 0
  br i1 %tobool9, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %if.end.7
  %29 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %current_mb_nr10 = getelementptr inbounds %struct.img_par, %struct.img_par* %29, i32 0, i32 1
  %30 = load i32, i32* %current_mb_nr10, align 4
  %rem = urem i32 %30, 2
  %tobool11 = icmp ne i32 %rem, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end.7
  %31 = phi i1 [ true, %if.end.7 ], [ %tobool11, %lor.rhs ]
  %lor.ext = zext i1 %31 to i32
  %call12 = call i32 @exit_macroblock(%struct.img_par* %25, %struct.inp_par* %26, i32 %lor.ext)
  store i32 %call12, i32* %end_of_slice, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @exit_slice()
  ret void
}

declare void @compute_colocated(%struct.colocated_params*, %struct.storable_picture***) #1

declare void @start_macroblock(%struct.img_par*, i32) #1

declare i32 @read_one_macroblock(%struct.img_par*, %struct.inp_par*) #1

declare i32 @decode_one_macroblock(%struct.img_par*, %struct.inp_par*) #1

declare i32 @exit_macroblock(%struct.img_par*, %struct.inp_par*, i32) #1

declare void @init_contexts(%struct.img_par*) #1

declare void @cabac_new_slice(...) #1

; Function Attrs: nounwind uwtable
define void @fill_wp_params(%struct.img_par* %img) #0 {
entry:
  %img.addr = alloca %struct.img_par*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %comp = alloca i32, align 4
  %log_weight_denom = alloca i32, align 4
  %tb = alloca i32, align 4
  %td = alloca i32, align 4
  %bframe = alloca i32, align 4
  %max_bwd_ref = alloca i32, align 4
  %max_fwd_ref = alloca i32, align 4
  %tx = alloca i32, align 4
  %DistScaleFactor = alloca i32, align 4
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  %0 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %type = getelementptr inbounds %struct.img_par, %struct.img_par* %0, i32 0, i32 10
  %1 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %1, 1
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %bframe, align 4
  %2 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %num_ref_idx_l0_active = getelementptr inbounds %struct.img_par, %struct.img_par* %2, i32 0, i32 47
  %3 = load i32, i32* %num_ref_idx_l0_active, align 4
  store i32 %3, i32* %max_fwd_ref, align 4
  %4 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %num_ref_idx_l1_active = getelementptr inbounds %struct.img_par, %struct.img_par* %4, i32 0, i32 48
  %5 = load i32, i32* %num_ref_idx_l1_active, align 4
  store i32 %5, i32* %max_bwd_ref, align 4
  %6 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %6, i32 0, i32 24
  %7 = load i32, i32* %weighted_bipred_idc, align 4
  %cmp1 = icmp eq i32 %7, 2
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %8 = load i32, i32* %bframe, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %luma_log2_weight_denom = getelementptr inbounds %struct.img_par, %struct.img_par* %9, i32 0, i32 75
  store i32 5, i32* %luma_log2_weight_denom, align 4
  %10 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %chroma_log2_weight_denom = getelementptr inbounds %struct.img_par, %struct.img_par* %10, i32 0, i32 76
  store i32 5, i32* %chroma_log2_weight_denom, align 4
  %11 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %wp_round_luma = getelementptr inbounds %struct.img_par, %struct.img_par* %11, i32 0, i32 80
  store i32 16, i32* %wp_round_luma, align 4
  %12 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %wp_round_chroma = getelementptr inbounds %struct.img_par, %struct.img_par* %12, i32 0, i32 81
  store i32 16, i32* %wp_round_chroma, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.34, %if.then
  %13 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %13, 32
  br i1 %cmp3, label %for.body, label %for.end.36

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %comp, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body
  %14 = load i32, i32* %comp, align 4
  %cmp6 = icmp slt i32 %14, 3
  br i1 %cmp6, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.5
  %15 = load i32, i32* %comp, align 4
  %cmp9 = icmp eq i32 %15, 0
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.8
  %16 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %luma_log2_weight_denom11 = getelementptr inbounds %struct.img_par, %struct.img_par* %16, i32 0, i32 75
  %17 = load i32, i32* %luma_log2_weight_denom11, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body.8
  %18 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %chroma_log2_weight_denom12 = getelementptr inbounds %struct.img_par, %struct.img_par* %18, i32 0, i32 76
  %19 = load i32, i32* %chroma_log2_weight_denom12, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %17, %cond.true ], [ %19, %cond.false ]
  store i32 %cond, i32* %log_weight_denom, align 4
  %20 = load i32, i32* %log_weight_denom, align 4
  %shl = shl i32 1, %20
  %21 = load i32, i32* %comp, align 4
  %idxprom = sext i32 %21 to i64
  %22 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %22 to i64
  %23 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %wp_weight = getelementptr inbounds %struct.img_par, %struct.img_par* %23, i32 0, i32 77
  %24 = load i32***, i32**** %wp_weight, align 8
  %arrayidx = getelementptr inbounds i32**, i32*** %24, i64 0
  %25 = load i32**, i32*** %arrayidx, align 8
  %arrayidx14 = getelementptr inbounds i32*, i32** %25, i64 %idxprom13
  %26 = load i32*, i32** %arrayidx14, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %26, i64 %idxprom
  store i32 %shl, i32* %arrayidx15, align 4
  %27 = load i32, i32* %log_weight_denom, align 4
  %shl16 = shl i32 1, %27
  %28 = load i32, i32* %comp, align 4
  %idxprom17 = sext i32 %28 to i64
  %29 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %29 to i64
  %30 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %wp_weight19 = getelementptr inbounds %struct.img_par, %struct.img_par* %30, i32 0, i32 77
  %31 = load i32***, i32**** %wp_weight19, align 8
  %arrayidx20 = getelementptr inbounds i32**, i32*** %31, i64 1
  %32 = load i32**, i32*** %arrayidx20, align 8
  %arrayidx21 = getelementptr inbounds i32*, i32** %32, i64 %idxprom18
  %33 = load i32*, i32** %arrayidx21, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %33, i64 %idxprom17
  store i32 %shl16, i32* %arrayidx22, align 4
  %34 = load i32, i32* %comp, align 4
  %idxprom23 = sext i32 %34 to i64
  %35 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %35 to i64
  %36 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %wp_offset = getelementptr inbounds %struct.img_par, %struct.img_par* %36, i32 0, i32 78
  %37 = load i32***, i32**** %wp_offset, align 8
  %arrayidx25 = getelementptr inbounds i32**, i32*** %37, i64 0
  %38 = load i32**, i32*** %arrayidx25, align 8
  %arrayidx26 = getelementptr inbounds i32*, i32** %38, i64 %idxprom24
  %39 = load i32*, i32** %arrayidx26, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %39, i64 %idxprom23
  store i32 0, i32* %arrayidx27, align 4
  %40 = load i32, i32* %comp, align 4
  %idxprom28 = sext i32 %40 to i64
  %41 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %41 to i64
  %42 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %wp_offset30 = getelementptr inbounds %struct.img_par, %struct.img_par* %42, i32 0, i32 78
  %43 = load i32***, i32**** %wp_offset30, align 8
  %arrayidx31 = getelementptr inbounds i32**, i32*** %43, i64 1
  %44 = load i32**, i32*** %arrayidx31, align 8
  %arrayidx32 = getelementptr inbounds i32*, i32** %44, i64 %idxprom29
  %45 = load i32*, i32** %arrayidx32, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %45, i64 %idxprom28
  store i32 0, i32* %arrayidx33, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %46 = load i32, i32* %comp, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %comp, align 4
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.end
  %47 = load i32, i32* %i, align 4
  %inc35 = add nsw i32 %47, 1
  store i32 %inc35, i32* %i, align 4
  br label %for.cond

for.end.36:                                       ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end.36, %land.lhs.true, %entry
  %48 = load i32, i32* %bframe, align 4
  %tobool37 = icmp ne i32 %48, 0
  br i1 %tobool37, label %if.then.38, label %if.end.225

if.then.38:                                       ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.222, %if.then.38
  %49 = load i32, i32* %i, align 4
  %50 = load i32, i32* %max_fwd_ref, align 4
  %cmp40 = icmp slt i32 %49, %50
  br i1 %cmp40, label %for.body.42, label %for.end.224

for.body.42:                                      ; preds = %for.cond.39
  store i32 0, i32* %j, align 4
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.219, %for.body.42
  %51 = load i32, i32* %j, align 4
  %52 = load i32, i32* %max_bwd_ref, align 4
  %cmp44 = icmp slt i32 %51, %52
  br i1 %cmp44, label %for.body.46, label %for.end.221

for.body.46:                                      ; preds = %for.cond.43
  store i32 0, i32* %comp, align 4
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc.216, %for.body.46
  %53 = load i32, i32* %comp, align 4
  %cmp48 = icmp slt i32 %53, 3
  br i1 %cmp48, label %for.body.50, label %for.end.218

for.body.50:                                      ; preds = %for.cond.47
  %54 = load i32, i32* %comp, align 4
  %cmp51 = icmp eq i32 %54, 0
  br i1 %cmp51, label %cond.true.53, label %cond.false.55

cond.true.53:                                     ; preds = %for.body.50
  %55 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %luma_log2_weight_denom54 = getelementptr inbounds %struct.img_par, %struct.img_par* %55, i32 0, i32 75
  %56 = load i32, i32* %luma_log2_weight_denom54, align 4
  br label %cond.end.57

cond.false.55:                                    ; preds = %for.body.50
  %57 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %chroma_log2_weight_denom56 = getelementptr inbounds %struct.img_par, %struct.img_par* %57, i32 0, i32 76
  %58 = load i32, i32* %chroma_log2_weight_denom56, align 4
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.55, %cond.true.53
  %cond58 = phi i32 [ %56, %cond.true.53 ], [ %58, %cond.false.55 ]
  store i32 %cond58, i32* %log_weight_denom, align 4
  %59 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_bipred_idc59 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %59, i32 0, i32 24
  %60 = load i32, i32* %weighted_bipred_idc59, align 4
  %cmp60 = icmp eq i32 %60, 1
  br i1 %cmp60, label %if.then.62, label %if.else

if.then.62:                                       ; preds = %cond.end.57
  %61 = load i32, i32* %comp, align 4
  %idxprom63 = sext i32 %61 to i64
  %62 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %62 to i64
  %63 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %wp_weight65 = getelementptr inbounds %struct.img_par, %struct.img_par* %63, i32 0, i32 77
  %64 = load i32***, i32**** %wp_weight65, align 8
  %arrayidx66 = getelementptr inbounds i32**, i32*** %64, i64 0
  %65 = load i32**, i32*** %arrayidx66, align 8
  %arrayidx67 = getelementptr inbounds i32*, i32** %65, i64 %idxprom64
  %66 = load i32*, i32** %arrayidx67, align 8
  %arrayidx68 = getelementptr inbounds i32, i32* %66, i64 %idxprom63
  %67 = load i32, i32* %arrayidx68, align 4
  %68 = load i32, i32* %comp, align 4
  %idxprom69 = sext i32 %68 to i64
  %69 = load i32, i32* %j, align 4
  %idxprom70 = sext i32 %69 to i64
  %70 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %70 to i64
  %71 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %wbp_weight = getelementptr inbounds %struct.img_par, %struct.img_par* %71, i32 0, i32 79
  %72 = load i32****, i32***** %wbp_weight, align 8
  %arrayidx72 = getelementptr inbounds i32***, i32**** %72, i64 0
  %73 = load i32***, i32**** %arrayidx72, align 8
  %arrayidx73 = getelementptr inbounds i32**, i32*** %73, i64 %idxprom71
  %74 = load i32**, i32*** %arrayidx73, align 8
  %arrayidx74 = getelementptr inbounds i32*, i32** %74, i64 %idxprom70
  %75 = load i32*, i32** %arrayidx74, align 8
  %arrayidx75 = getelementptr inbounds i32, i32* %75, i64 %idxprom69
  store i32 %67, i32* %arrayidx75, align 4
  %76 = load i32, i32* %comp, align 4
  %idxprom76 = sext i32 %76 to i64
  %77 = load i32, i32* %j, align 4
  %idxprom77 = sext i32 %77 to i64
  %78 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %wp_weight78 = getelementptr inbounds %struct.img_par, %struct.img_par* %78, i32 0, i32 77
  %79 = load i32***, i32**** %wp_weight78, align 8
  %arrayidx79 = getelementptr inbounds i32**, i32*** %79, i64 1
  %80 = load i32**, i32*** %arrayidx79, align 8
  %arrayidx80 = getelementptr inbounds i32*, i32** %80, i64 %idxprom77
  %81 = load i32*, i32** %arrayidx80, align 8
  %arrayidx81 = getelementptr inbounds i32, i32* %81, i64 %idxprom76
  %82 = load i32, i32* %arrayidx81, align 4
  %83 = load i32, i32* %comp, align 4
  %idxprom82 = sext i32 %83 to i64
  %84 = load i32, i32* %j, align 4
  %idxprom83 = sext i32 %84 to i64
  %85 = load i32, i32* %i, align 4
  %idxprom84 = sext i32 %85 to i64
  %86 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %wbp_weight85 = getelementptr inbounds %struct.img_par, %struct.img_par* %86, i32 0, i32 79
  %87 = load i32****, i32***** %wbp_weight85, align 8
  %arrayidx86 = getelementptr inbounds i32***, i32**** %87, i64 1
  %88 = load i32***, i32**** %arrayidx86, align 8
  %arrayidx87 = getelementptr inbounds i32**, i32*** %88, i64 %idxprom84
  %89 = load i32**, i32*** %arrayidx87, align 8
  %arrayidx88 = getelementptr inbounds i32*, i32** %89, i64 %idxprom83
  %90 = load i32*, i32** %arrayidx88, align 8
  %arrayidx89 = getelementptr inbounds i32, i32* %90, i64 %idxprom82
  store i32 %82, i32* %arrayidx89, align 4
  br label %if.end.215

if.else:                                          ; preds = %cond.end.57
  %91 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_bipred_idc90 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %91, i32 0, i32 24
  %92 = load i32, i32* %weighted_bipred_idc90, align 4
  %cmp91 = icmp eq i32 %92, 2
  br i1 %cmp91, label %if.then.93, label %if.end.214

if.then.93:                                       ; preds = %if.else
  %93 = load i32, i32* %j, align 4
  %idxprom94 = sext i32 %93 to i64
  %94 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 1), align 8
  %arrayidx95 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %94, i64 %idxprom94
  %95 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx95, align 8
  %poc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %95, i32 0, i32 1
  %96 = load i32, i32* %poc, align 4
  %97 = load i32, i32* %i, align 4
  %idxprom96 = sext i32 %97 to i64
  %98 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx97 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %98, i64 %idxprom96
  %99 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx97, align 8
  %poc98 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %99, i32 0, i32 1
  %100 = load i32, i32* %poc98, align 4
  %sub = sub nsw i32 %96, %100
  %call = call i32 @iClip3(i32 -128, i32 127, i32 %sub)
  store i32 %call, i32* %td, align 4
  %101 = load i32, i32* %td, align 4
  %cmp99 = icmp eq i32 %101, 0
  br i1 %cmp99, label %if.then.109, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.93
  %102 = load i32, i32* %j, align 4
  %idxprom101 = sext i32 %102 to i64
  %103 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 1), align 8
  %arrayidx102 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %103, i64 %idxprom101
  %104 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx102, align 8
  %is_long_term = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %104, i32 0, i32 14
  %105 = load i32, i32* %is_long_term, align 4
  %tobool103 = icmp ne i32 %105, 0
  br i1 %tobool103, label %if.then.109, label %lor.lhs.false.104

lor.lhs.false.104:                                ; preds = %lor.lhs.false
  %106 = load i32, i32* %i, align 4
  %idxprom105 = sext i32 %106 to i64
  %107 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx106 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %107, i64 %idxprom105
  %108 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx106, align 8
  %is_long_term107 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %108, i32 0, i32 14
  %109 = load i32, i32* %is_long_term107, align 4
  %tobool108 = icmp ne i32 %109, 0
  br i1 %tobool108, label %if.then.109, label %if.else.126

if.then.109:                                      ; preds = %lor.lhs.false.104, %lor.lhs.false, %if.then.93
  %110 = load i32, i32* %comp, align 4
  %idxprom110 = sext i32 %110 to i64
  %111 = load i32, i32* %j, align 4
  %idxprom111 = sext i32 %111 to i64
  %112 = load i32, i32* %i, align 4
  %idxprom112 = sext i32 %112 to i64
  %113 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %wbp_weight113 = getelementptr inbounds %struct.img_par, %struct.img_par* %113, i32 0, i32 79
  %114 = load i32****, i32***** %wbp_weight113, align 8
  %arrayidx114 = getelementptr inbounds i32***, i32**** %114, i64 0
  %115 = load i32***, i32**** %arrayidx114, align 8
  %arrayidx115 = getelementptr inbounds i32**, i32*** %115, i64 %idxprom112
  %116 = load i32**, i32*** %arrayidx115, align 8
  %arrayidx116 = getelementptr inbounds i32*, i32** %116, i64 %idxprom111
  %117 = load i32*, i32** %arrayidx116, align 8
  %arrayidx117 = getelementptr inbounds i32, i32* %117, i64 %idxprom110
  store i32 32, i32* %arrayidx117, align 4
  %118 = load i32, i32* %comp, align 4
  %idxprom118 = sext i32 %118 to i64
  %119 = load i32, i32* %j, align 4
  %idxprom119 = sext i32 %119 to i64
  %120 = load i32, i32* %i, align 4
  %idxprom120 = sext i32 %120 to i64
  %121 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %wbp_weight121 = getelementptr inbounds %struct.img_par, %struct.img_par* %121, i32 0, i32 79
  %122 = load i32****, i32***** %wbp_weight121, align 8
  %arrayidx122 = getelementptr inbounds i32***, i32**** %122, i64 1
  %123 = load i32***, i32**** %arrayidx122, align 8
  %arrayidx123 = getelementptr inbounds i32**, i32*** %123, i64 %idxprom120
  %124 = load i32**, i32*** %arrayidx123, align 8
  %arrayidx124 = getelementptr inbounds i32*, i32** %124, i64 %idxprom119
  %125 = load i32*, i32** %arrayidx124, align 8
  %arrayidx125 = getelementptr inbounds i32, i32* %125, i64 %idxprom118
  store i32 32, i32* %arrayidx125, align 4
  br label %if.end.213

if.else.126:                                      ; preds = %lor.lhs.false.104
  %126 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %ThisPOC = getelementptr inbounds %struct.img_par, %struct.img_par* %126, i32 0, i32 73
  %127 = load i32, i32* %ThisPOC, align 4
  %128 = load i32, i32* %i, align 4
  %idxprom127 = sext i32 %128 to i64
  %129 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx128 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %129, i64 %idxprom127
  %130 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx128, align 8
  %poc129 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %130, i32 0, i32 1
  %131 = load i32, i32* %poc129, align 4
  %sub130 = sub nsw i32 %127, %131
  %call131 = call i32 @iClip3(i32 -128, i32 127, i32 %sub130)
  store i32 %call131, i32* %tb, align 4
  %132 = load i32, i32* %td, align 4
  %div = sdiv i32 %132, 2
  %call132 = call i32 @iabs(i32 %div)
  %add = add nsw i32 16384, %call132
  %133 = load i32, i32* %td, align 4
  %div133 = sdiv i32 %add, %133
  store i32 %div133, i32* %tx, align 4
  %134 = load i32, i32* %tx, align 4
  %135 = load i32, i32* %tb, align 4
  %mul = mul nsw i32 %134, %135
  %add134 = add nsw i32 %mul, 32
  %shr = ashr i32 %add134, 6
  %call135 = call i32 @iClip3(i32 -1024, i32 1023, i32 %shr)
  store i32 %call135, i32* %DistScaleFactor, align 4
  %136 = load i32, i32* %DistScaleFactor, align 4
  %shr136 = ashr i32 %136, 2
  %137 = load i32, i32* %comp, align 4
  %idxprom137 = sext i32 %137 to i64
  %138 = load i32, i32* %j, align 4
  %idxprom138 = sext i32 %138 to i64
  %139 = load i32, i32* %i, align 4
  %idxprom139 = sext i32 %139 to i64
  %140 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %wbp_weight140 = getelementptr inbounds %struct.img_par, %struct.img_par* %140, i32 0, i32 79
  %141 = load i32****, i32***** %wbp_weight140, align 8
  %arrayidx141 = getelementptr inbounds i32***, i32**** %141, i64 1
  %142 = load i32***, i32**** %arrayidx141, align 8
  %arrayidx142 = getelementptr inbounds i32**, i32*** %142, i64 %idxprom139
  %143 = load i32**, i32*** %arrayidx142, align 8
  %arrayidx143 = getelementptr inbounds i32*, i32** %143, i64 %idxprom138
  %144 = load i32*, i32** %arrayidx143, align 8
  %arrayidx144 = getelementptr inbounds i32, i32* %144, i64 %idxprom137
  store i32 %shr136, i32* %arrayidx144, align 4
  %145 = load i32, i32* %comp, align 4
  %idxprom145 = sext i32 %145 to i64
  %146 = load i32, i32* %j, align 4
  %idxprom146 = sext i32 %146 to i64
  %147 = load i32, i32* %i, align 4
  %idxprom147 = sext i32 %147 to i64
  %148 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %wbp_weight148 = getelementptr inbounds %struct.img_par, %struct.img_par* %148, i32 0, i32 79
  %149 = load i32****, i32***** %wbp_weight148, align 8
  %arrayidx149 = getelementptr inbounds i32***, i32**** %149, i64 1
  %150 = load i32***, i32**** %arrayidx149, align 8
  %arrayidx150 = getelementptr inbounds i32**, i32*** %150, i64 %idxprom147
  %151 = load i32**, i32*** %arrayidx150, align 8
  %arrayidx151 = getelementptr inbounds i32*, i32** %151, i64 %idxprom146
  %152 = load i32*, i32** %arrayidx151, align 8
  %arrayidx152 = getelementptr inbounds i32, i32* %152, i64 %idxprom145
  %153 = load i32, i32* %arrayidx152, align 4
  %sub153 = sub nsw i32 64, %153
  %154 = load i32, i32* %comp, align 4
  %idxprom154 = sext i32 %154 to i64
  %155 = load i32, i32* %j, align 4
  %idxprom155 = sext i32 %155 to i64
  %156 = load i32, i32* %i, align 4
  %idxprom156 = sext i32 %156 to i64
  %157 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %wbp_weight157 = getelementptr inbounds %struct.img_par, %struct.img_par* %157, i32 0, i32 79
  %158 = load i32****, i32***** %wbp_weight157, align 8
  %arrayidx158 = getelementptr inbounds i32***, i32**** %158, i64 0
  %159 = load i32***, i32**** %arrayidx158, align 8
  %arrayidx159 = getelementptr inbounds i32**, i32*** %159, i64 %idxprom156
  %160 = load i32**, i32*** %arrayidx159, align 8
  %arrayidx160 = getelementptr inbounds i32*, i32** %160, i64 %idxprom155
  %161 = load i32*, i32** %arrayidx160, align 8
  %arrayidx161 = getelementptr inbounds i32, i32* %161, i64 %idxprom154
  store i32 %sub153, i32* %arrayidx161, align 4
  %162 = load i32, i32* %comp, align 4
  %idxprom162 = sext i32 %162 to i64
  %163 = load i32, i32* %j, align 4
  %idxprom163 = sext i32 %163 to i64
  %164 = load i32, i32* %i, align 4
  %idxprom164 = sext i32 %164 to i64
  %165 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %wbp_weight165 = getelementptr inbounds %struct.img_par, %struct.img_par* %165, i32 0, i32 79
  %166 = load i32****, i32***** %wbp_weight165, align 8
  %arrayidx166 = getelementptr inbounds i32***, i32**** %166, i64 1
  %167 = load i32***, i32**** %arrayidx166, align 8
  %arrayidx167 = getelementptr inbounds i32**, i32*** %167, i64 %idxprom164
  %168 = load i32**, i32*** %arrayidx167, align 8
  %arrayidx168 = getelementptr inbounds i32*, i32** %168, i64 %idxprom163
  %169 = load i32*, i32** %arrayidx168, align 8
  %arrayidx169 = getelementptr inbounds i32, i32* %169, i64 %idxprom162
  %170 = load i32, i32* %arrayidx169, align 4
  %cmp170 = icmp slt i32 %170, -64
  br i1 %cmp170, label %if.then.183, label %lor.lhs.false.172

lor.lhs.false.172:                                ; preds = %if.else.126
  %171 = load i32, i32* %comp, align 4
  %idxprom173 = sext i32 %171 to i64
  %172 = load i32, i32* %j, align 4
  %idxprom174 = sext i32 %172 to i64
  %173 = load i32, i32* %i, align 4
  %idxprom175 = sext i32 %173 to i64
  %174 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %wbp_weight176 = getelementptr inbounds %struct.img_par, %struct.img_par* %174, i32 0, i32 79
  %175 = load i32****, i32***** %wbp_weight176, align 8
  %arrayidx177 = getelementptr inbounds i32***, i32**** %175, i64 1
  %176 = load i32***, i32**** %arrayidx177, align 8
  %arrayidx178 = getelementptr inbounds i32**, i32*** %176, i64 %idxprom175
  %177 = load i32**, i32*** %arrayidx178, align 8
  %arrayidx179 = getelementptr inbounds i32*, i32** %177, i64 %idxprom174
  %178 = load i32*, i32** %arrayidx179, align 8
  %arrayidx180 = getelementptr inbounds i32, i32* %178, i64 %idxprom173
  %179 = load i32, i32* %arrayidx180, align 4
  %cmp181 = icmp sgt i32 %179, 128
  br i1 %cmp181, label %if.then.183, label %if.end.212

if.then.183:                                      ; preds = %lor.lhs.false.172, %if.else.126
  %180 = load i32, i32* %comp, align 4
  %idxprom184 = sext i32 %180 to i64
  %181 = load i32, i32* %j, align 4
  %idxprom185 = sext i32 %181 to i64
  %182 = load i32, i32* %i, align 4
  %idxprom186 = sext i32 %182 to i64
  %183 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %wbp_weight187 = getelementptr inbounds %struct.img_par, %struct.img_par* %183, i32 0, i32 79
  %184 = load i32****, i32***** %wbp_weight187, align 8
  %arrayidx188 = getelementptr inbounds i32***, i32**** %184, i64 0
  %185 = load i32***, i32**** %arrayidx188, align 8
  %arrayidx189 = getelementptr inbounds i32**, i32*** %185, i64 %idxprom186
  %186 = load i32**, i32*** %arrayidx189, align 8
  %arrayidx190 = getelementptr inbounds i32*, i32** %186, i64 %idxprom185
  %187 = load i32*, i32** %arrayidx190, align 8
  %arrayidx191 = getelementptr inbounds i32, i32* %187, i64 %idxprom184
  store i32 32, i32* %arrayidx191, align 4
  %188 = load i32, i32* %comp, align 4
  %idxprom192 = sext i32 %188 to i64
  %189 = load i32, i32* %j, align 4
  %idxprom193 = sext i32 %189 to i64
  %190 = load i32, i32* %i, align 4
  %idxprom194 = sext i32 %190 to i64
  %191 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %wbp_weight195 = getelementptr inbounds %struct.img_par, %struct.img_par* %191, i32 0, i32 79
  %192 = load i32****, i32***** %wbp_weight195, align 8
  %arrayidx196 = getelementptr inbounds i32***, i32**** %192, i64 1
  %193 = load i32***, i32**** %arrayidx196, align 8
  %arrayidx197 = getelementptr inbounds i32**, i32*** %193, i64 %idxprom194
  %194 = load i32**, i32*** %arrayidx197, align 8
  %arrayidx198 = getelementptr inbounds i32*, i32** %194, i64 %idxprom193
  %195 = load i32*, i32** %arrayidx198, align 8
  %arrayidx199 = getelementptr inbounds i32, i32* %195, i64 %idxprom192
  store i32 32, i32* %arrayidx199, align 4
  %196 = load i32, i32* %comp, align 4
  %idxprom200 = sext i32 %196 to i64
  %197 = load i32, i32* %i, align 4
  %idxprom201 = sext i32 %197 to i64
  %198 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %wp_offset202 = getelementptr inbounds %struct.img_par, %struct.img_par* %198, i32 0, i32 78
  %199 = load i32***, i32**** %wp_offset202, align 8
  %arrayidx203 = getelementptr inbounds i32**, i32*** %199, i64 0
  %200 = load i32**, i32*** %arrayidx203, align 8
  %arrayidx204 = getelementptr inbounds i32*, i32** %200, i64 %idxprom201
  %201 = load i32*, i32** %arrayidx204, align 8
  %arrayidx205 = getelementptr inbounds i32, i32* %201, i64 %idxprom200
  store i32 0, i32* %arrayidx205, align 4
  %202 = load i32, i32* %comp, align 4
  %idxprom206 = sext i32 %202 to i64
  %203 = load i32, i32* %j, align 4
  %idxprom207 = sext i32 %203 to i64
  %204 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %wp_offset208 = getelementptr inbounds %struct.img_par, %struct.img_par* %204, i32 0, i32 78
  %205 = load i32***, i32**** %wp_offset208, align 8
  %arrayidx209 = getelementptr inbounds i32**, i32*** %205, i64 1
  %206 = load i32**, i32*** %arrayidx209, align 8
  %arrayidx210 = getelementptr inbounds i32*, i32** %206, i64 %idxprom207
  %207 = load i32*, i32** %arrayidx210, align 8
  %arrayidx211 = getelementptr inbounds i32, i32* %207, i64 %idxprom206
  store i32 0, i32* %arrayidx211, align 4
  br label %if.end.212

if.end.212:                                       ; preds = %if.then.183, %lor.lhs.false.172
  br label %if.end.213

if.end.213:                                       ; preds = %if.end.212, %if.then.109
  br label %if.end.214

if.end.214:                                       ; preds = %if.end.213, %if.else
  br label %if.end.215

if.end.215:                                       ; preds = %if.end.214, %if.then.62
  br label %for.inc.216

for.inc.216:                                      ; preds = %if.end.215
  %208 = load i32, i32* %comp, align 4
  %inc217 = add nsw i32 %208, 1
  store i32 %inc217, i32* %comp, align 4
  br label %for.cond.47

for.end.218:                                      ; preds = %for.cond.47
  br label %for.inc.219

for.inc.219:                                      ; preds = %for.end.218
  %209 = load i32, i32* %j, align 4
  %inc220 = add nsw i32 %209, 1
  store i32 %inc220, i32* %j, align 4
  br label %for.cond.43

for.end.221:                                      ; preds = %for.cond.43
  br label %for.inc.222

for.inc.222:                                      ; preds = %for.end.221
  %210 = load i32, i32* %i, align 4
  %inc223 = add nsw i32 %210, 1
  store i32 %inc223, i32* %i, align 4
  br label %for.cond.39

for.end.224:                                      ; preds = %for.cond.39
  br label %if.end.225

if.end.225:                                       ; preds = %for.end.224, %if.end
  %211 = load i32, i32* %bframe, align 4
  %tobool226 = icmp ne i32 %211, 0
  br i1 %tobool226, label %land.lhs.true.227, label %if.end.515

land.lhs.true.227:                                ; preds = %if.end.225
  %212 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.img_par, %struct.img_par* %212, i32 0, i32 44
  %213 = load i32, i32* %MbaffFrameFlag, align 4
  %tobool228 = icmp ne i32 %213, 0
  br i1 %tobool228, label %if.then.229, label %if.end.515

if.then.229:                                      ; preds = %land.lhs.true.227
  store i32 0, i32* %i, align 4
  br label %for.cond.230

for.cond.230:                                     ; preds = %for.inc.512, %if.then.229
  %214 = load i32, i32* %i, align 4
  %215 = load i32, i32* %max_fwd_ref, align 4
  %mul231 = mul nsw i32 2, %215
  %cmp232 = icmp slt i32 %214, %mul231
  br i1 %cmp232, label %for.body.234, label %for.end.514

for.body.234:                                     ; preds = %for.cond.230
  store i32 0, i32* %j, align 4
  br label %for.cond.235

for.cond.235:                                     ; preds = %for.inc.509, %for.body.234
  %216 = load i32, i32* %j, align 4
  %217 = load i32, i32* %max_bwd_ref, align 4
  %mul236 = mul nsw i32 2, %217
  %cmp237 = icmp slt i32 %216, %mul236
  br i1 %cmp237, label %for.body.239, label %for.end.511

for.body.239:                                     ; preds = %for.cond.235
  store i32 0, i32* %comp, align 4
  br label %for.cond.240

for.cond.240:                                     ; preds = %for.inc.506, %for.body.239
  %218 = load i32, i32* %comp, align 4
  %cmp241 = icmp slt i32 %218, 3
  br i1 %cmp241, label %for.body.243, label %for.end.508

for.body.243:                                     ; preds = %for.cond.240
  store i32 2, i32* %k, align 4
  br label %for.cond.244

for.cond.244:                                     ; preds = %for.inc.503, %for.body.243
  %219 = load i32, i32* %k, align 4
  %cmp245 = icmp slt i32 %219, 6
  br i1 %cmp245, label %for.body.247, label %for.end.505

for.body.247:                                     ; preds = %for.cond.244
  %220 = load i32, i32* %comp, align 4
  %idxprom248 = sext i32 %220 to i64
  %221 = load i32, i32* %i, align 4
  %div249 = sdiv i32 %221, 2
  %idxprom250 = sext i32 %div249 to i64
  %222 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %wp_offset251 = getelementptr inbounds %struct.img_par, %struct.img_par* %222, i32 0, i32 78
  %223 = load i32***, i32**** %wp_offset251, align 8
  %arrayidx252 = getelementptr inbounds i32**, i32*** %223, i64 0
  %224 = load i32**, i32*** %arrayidx252, align 8
  %arrayidx253 = getelementptr inbounds i32*, i32** %224, i64 %idxprom250
  %225 = load i32*, i32** %arrayidx253, align 8
  %arrayidx254 = getelementptr inbounds i32, i32* %225, i64 %idxprom248
  %226 = load i32, i32* %arrayidx254, align 4
  %227 = load i32, i32* %comp, align 4
  %idxprom255 = sext i32 %227 to i64
  %228 = load i32, i32* %i, align 4
  %idxprom256 = sext i32 %228 to i64
  %229 = load i32, i32* %k, align 4
  %add257 = add nsw i32 %229, 0
  %idxprom258 = sext i32 %add257 to i64
  %230 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %wp_offset259 = getelementptr inbounds %struct.img_par, %struct.img_par* %230, i32 0, i32 78
  %231 = load i32***, i32**** %wp_offset259, align 8
  %arrayidx260 = getelementptr inbounds i32**, i32*** %231, i64 %idxprom258
  %232 = load i32**, i32*** %arrayidx260, align 8
  %arrayidx261 = getelementptr inbounds i32*, i32** %232, i64 %idxprom256
  %233 = load i32*, i32** %arrayidx261, align 8
  %arrayidx262 = getelementptr inbounds i32, i32* %233, i64 %idxprom255
  store i32 %226, i32* %arrayidx262, align 4
  %234 = load i32, i32* %comp, align 4
  %idxprom263 = sext i32 %234 to i64
  %235 = load i32, i32* %j, align 4
  %div264 = sdiv i32 %235, 2
  %idxprom265 = sext i32 %div264 to i64
  %236 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %wp_offset266 = getelementptr inbounds %struct.img_par, %struct.img_par* %236, i32 0, i32 78
  %237 = load i32***, i32**** %wp_offset266, align 8
  %arrayidx267 = getelementptr inbounds i32**, i32*** %237, i64 1
  %238 = load i32**, i32*** %arrayidx267, align 8
  %arrayidx268 = getelementptr inbounds i32*, i32** %238, i64 %idxprom265
  %239 = load i32*, i32** %arrayidx268, align 8
  %arrayidx269 = getelementptr inbounds i32, i32* %239, i64 %idxprom263
  %240 = load i32, i32* %arrayidx269, align 4
  %241 = load i32, i32* %comp, align 4
  %idxprom270 = sext i32 %241 to i64
  %242 = load i32, i32* %j, align 4
  %idxprom271 = sext i32 %242 to i64
  %243 = load i32, i32* %k, align 4
  %add272 = add nsw i32 %243, 1
  %idxprom273 = sext i32 %add272 to i64
  %244 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %wp_offset274 = getelementptr inbounds %struct.img_par, %struct.img_par* %244, i32 0, i32 78
  %245 = load i32***, i32**** %wp_offset274, align 8
  %arrayidx275 = getelementptr inbounds i32**, i32*** %245, i64 %idxprom273
  %246 = load i32**, i32*** %arrayidx275, align 8
  %arrayidx276 = getelementptr inbounds i32*, i32** %246, i64 %idxprom271
  %247 = load i32*, i32** %arrayidx276, align 8
  %arrayidx277 = getelementptr inbounds i32, i32* %247, i64 %idxprom270
  store i32 %240, i32* %arrayidx277, align 4
  %248 = load i32, i32* %comp, align 4
  %cmp278 = icmp eq i32 %248, 0
  br i1 %cmp278, label %cond.true.280, label %cond.false.282

cond.true.280:                                    ; preds = %for.body.247
  %249 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %luma_log2_weight_denom281 = getelementptr inbounds %struct.img_par, %struct.img_par* %249, i32 0, i32 75
  %250 = load i32, i32* %luma_log2_weight_denom281, align 4
  br label %cond.end.284

cond.false.282:                                   ; preds = %for.body.247
  %251 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %chroma_log2_weight_denom283 = getelementptr inbounds %struct.img_par, %struct.img_par* %251, i32 0, i32 76
  %252 = load i32, i32* %chroma_log2_weight_denom283, align 4
  br label %cond.end.284

cond.end.284:                                     ; preds = %cond.false.282, %cond.true.280
  %cond285 = phi i32 [ %250, %cond.true.280 ], [ %252, %cond.false.282 ]
  store i32 %cond285, i32* %log_weight_denom, align 4
  %253 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_bipred_idc286 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %253, i32 0, i32 24
  %254 = load i32, i32* %weighted_bipred_idc286, align 4
  %cmp287 = icmp eq i32 %254, 1
  br i1 %cmp287, label %if.then.289, label %if.else.324

if.then.289:                                      ; preds = %cond.end.284
  %255 = load i32, i32* %comp, align 4
  %idxprom290 = sext i32 %255 to i64
  %256 = load i32, i32* %i, align 4
  %div291 = sdiv i32 %256, 2
  %idxprom292 = sext i32 %div291 to i64
  %257 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %wp_weight293 = getelementptr inbounds %struct.img_par, %struct.img_par* %257, i32 0, i32 77
  %258 = load i32***, i32**** %wp_weight293, align 8
  %arrayidx294 = getelementptr inbounds i32**, i32*** %258, i64 0
  %259 = load i32**, i32*** %arrayidx294, align 8
  %arrayidx295 = getelementptr inbounds i32*, i32** %259, i64 %idxprom292
  %260 = load i32*, i32** %arrayidx295, align 8
  %arrayidx296 = getelementptr inbounds i32, i32* %260, i64 %idxprom290
  %261 = load i32, i32* %arrayidx296, align 4
  %262 = load i32, i32* %comp, align 4
  %idxprom297 = sext i32 %262 to i64
  %263 = load i32, i32* %j, align 4
  %idxprom298 = sext i32 %263 to i64
  %264 = load i32, i32* %i, align 4
  %idxprom299 = sext i32 %264 to i64
  %265 = load i32, i32* %k, align 4
  %add300 = add nsw i32 %265, 0
  %idxprom301 = sext i32 %add300 to i64
  %266 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %wbp_weight302 = getelementptr inbounds %struct.img_par, %struct.img_par* %266, i32 0, i32 79
  %267 = load i32****, i32***** %wbp_weight302, align 8
  %arrayidx303 = getelementptr inbounds i32***, i32**** %267, i64 %idxprom301
  %268 = load i32***, i32**** %arrayidx303, align 8
  %arrayidx304 = getelementptr inbounds i32**, i32*** %268, i64 %idxprom299
  %269 = load i32**, i32*** %arrayidx304, align 8
  %arrayidx305 = getelementptr inbounds i32*, i32** %269, i64 %idxprom298
  %270 = load i32*, i32** %arrayidx305, align 8
  %arrayidx306 = getelementptr inbounds i32, i32* %270, i64 %idxprom297
  store i32 %261, i32* %arrayidx306, align 4
  %271 = load i32, i32* %comp, align 4
  %idxprom307 = sext i32 %271 to i64
  %272 = load i32, i32* %j, align 4
  %div308 = sdiv i32 %272, 2
  %idxprom309 = sext i32 %div308 to i64
  %273 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %wp_weight310 = getelementptr inbounds %struct.img_par, %struct.img_par* %273, i32 0, i32 77
  %274 = load i32***, i32**** %wp_weight310, align 8
  %arrayidx311 = getelementptr inbounds i32**, i32*** %274, i64 1
  %275 = load i32**, i32*** %arrayidx311, align 8
  %arrayidx312 = getelementptr inbounds i32*, i32** %275, i64 %idxprom309
  %276 = load i32*, i32** %arrayidx312, align 8
  %arrayidx313 = getelementptr inbounds i32, i32* %276, i64 %idxprom307
  %277 = load i32, i32* %arrayidx313, align 4
  %278 = load i32, i32* %comp, align 4
  %idxprom314 = sext i32 %278 to i64
  %279 = load i32, i32* %j, align 4
  %idxprom315 = sext i32 %279 to i64
  %280 = load i32, i32* %i, align 4
  %idxprom316 = sext i32 %280 to i64
  %281 = load i32, i32* %k, align 4
  %add317 = add nsw i32 %281, 1
  %idxprom318 = sext i32 %add317 to i64
  %282 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %wbp_weight319 = getelementptr inbounds %struct.img_par, %struct.img_par* %282, i32 0, i32 79
  %283 = load i32****, i32***** %wbp_weight319, align 8
  %arrayidx320 = getelementptr inbounds i32***, i32**** %283, i64 %idxprom318
  %284 = load i32***, i32**** %arrayidx320, align 8
  %arrayidx321 = getelementptr inbounds i32**, i32*** %284, i64 %idxprom316
  %285 = load i32**, i32*** %arrayidx321, align 8
  %arrayidx322 = getelementptr inbounds i32*, i32** %285, i64 %idxprom315
  %286 = load i32*, i32** %arrayidx322, align 8
  %arrayidx323 = getelementptr inbounds i32, i32* %286, i64 %idxprom314
  store i32 %277, i32* %arrayidx323, align 4
  br label %if.end.502

if.else.324:                                      ; preds = %cond.end.284
  %287 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_bipred_idc325 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %287, i32 0, i32 24
  %288 = load i32, i32* %weighted_bipred_idc325, align 4
  %cmp326 = icmp eq i32 %288, 2
  br i1 %cmp326, label %if.then.328, label %if.end.501

if.then.328:                                      ; preds = %if.else.324
  %289 = load i32, i32* %j, align 4
  %idxprom329 = sext i32 %289 to i64
  %290 = load i32, i32* %k, align 4
  %add330 = add nsw i32 %290, 1
  %idxprom331 = sext i32 %add330 to i64
  %arrayidx332 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom331
  %291 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx332, align 8
  %arrayidx333 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %291, i64 %idxprom329
  %292 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx333, align 8
  %poc334 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %292, i32 0, i32 1
  %293 = load i32, i32* %poc334, align 4
  %294 = load i32, i32* %i, align 4
  %idxprom335 = sext i32 %294 to i64
  %295 = load i32, i32* %k, align 4
  %add336 = add nsw i32 %295, 0
  %idxprom337 = sext i32 %add336 to i64
  %arrayidx338 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom337
  %296 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx338, align 8
  %arrayidx339 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %296, i64 %idxprom335
  %297 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx339, align 8
  %poc340 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %297, i32 0, i32 1
  %298 = load i32, i32* %poc340, align 4
  %sub341 = sub nsw i32 %293, %298
  %call342 = call i32 @iClip3(i32 -128, i32 127, i32 %sub341)
  store i32 %call342, i32* %td, align 4
  %299 = load i32, i32* %td, align 4
  %cmp343 = icmp eq i32 %299, 0
  br i1 %cmp343, label %if.then.361, label %lor.lhs.false.345

lor.lhs.false.345:                                ; preds = %if.then.328
  %300 = load i32, i32* %j, align 4
  %idxprom346 = sext i32 %300 to i64
  %301 = load i32, i32* %k, align 4
  %add347 = add nsw i32 %301, 1
  %idxprom348 = sext i32 %add347 to i64
  %arrayidx349 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom348
  %302 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx349, align 8
  %arrayidx350 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %302, i64 %idxprom346
  %303 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx350, align 8
  %is_long_term351 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %303, i32 0, i32 14
  %304 = load i32, i32* %is_long_term351, align 4
  %tobool352 = icmp ne i32 %304, 0
  br i1 %tobool352, label %if.then.361, label %lor.lhs.false.353

lor.lhs.false.353:                                ; preds = %lor.lhs.false.345
  %305 = load i32, i32* %i, align 4
  %idxprom354 = sext i32 %305 to i64
  %306 = load i32, i32* %k, align 4
  %add355 = add nsw i32 %306, 0
  %idxprom356 = sext i32 %add355 to i64
  %arrayidx357 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom356
  %307 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx357, align 8
  %arrayidx358 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %307, i64 %idxprom354
  %308 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx358, align 8
  %is_long_term359 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %308, i32 0, i32 14
  %309 = load i32, i32* %is_long_term359, align 4
  %tobool360 = icmp ne i32 %309, 0
  br i1 %tobool360, label %if.then.361, label %if.else.382

if.then.361:                                      ; preds = %lor.lhs.false.353, %lor.lhs.false.345, %if.then.328
  %310 = load i32, i32* %comp, align 4
  %idxprom362 = sext i32 %310 to i64
  %311 = load i32, i32* %j, align 4
  %idxprom363 = sext i32 %311 to i64
  %312 = load i32, i32* %i, align 4
  %idxprom364 = sext i32 %312 to i64
  %313 = load i32, i32* %k, align 4
  %add365 = add nsw i32 %313, 0
  %idxprom366 = sext i32 %add365 to i64
  %314 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %wbp_weight367 = getelementptr inbounds %struct.img_par, %struct.img_par* %314, i32 0, i32 79
  %315 = load i32****, i32***** %wbp_weight367, align 8
  %arrayidx368 = getelementptr inbounds i32***, i32**** %315, i64 %idxprom366
  %316 = load i32***, i32**** %arrayidx368, align 8
  %arrayidx369 = getelementptr inbounds i32**, i32*** %316, i64 %idxprom364
  %317 = load i32**, i32*** %arrayidx369, align 8
  %arrayidx370 = getelementptr inbounds i32*, i32** %317, i64 %idxprom363
  %318 = load i32*, i32** %arrayidx370, align 8
  %arrayidx371 = getelementptr inbounds i32, i32* %318, i64 %idxprom362
  store i32 32, i32* %arrayidx371, align 4
  %319 = load i32, i32* %comp, align 4
  %idxprom372 = sext i32 %319 to i64
  %320 = load i32, i32* %j, align 4
  %idxprom373 = sext i32 %320 to i64
  %321 = load i32, i32* %i, align 4
  %idxprom374 = sext i32 %321 to i64
  %322 = load i32, i32* %k, align 4
  %add375 = add nsw i32 %322, 1
  %idxprom376 = sext i32 %add375 to i64
  %323 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %wbp_weight377 = getelementptr inbounds %struct.img_par, %struct.img_par* %323, i32 0, i32 79
  %324 = load i32****, i32***** %wbp_weight377, align 8
  %arrayidx378 = getelementptr inbounds i32***, i32**** %324, i64 %idxprom376
  %325 = load i32***, i32**** %arrayidx378, align 8
  %arrayidx379 = getelementptr inbounds i32**, i32*** %325, i64 %idxprom374
  %326 = load i32**, i32*** %arrayidx379, align 8
  %arrayidx380 = getelementptr inbounds i32*, i32** %326, i64 %idxprom373
  %327 = load i32*, i32** %arrayidx380, align 8
  %arrayidx381 = getelementptr inbounds i32, i32* %327, i64 %idxprom372
  store i32 32, i32* %arrayidx381, align 4
  br label %if.end.500

if.else.382:                                      ; preds = %lor.lhs.false.353
  %328 = load i32, i32* %k, align 4
  %cmp383 = icmp eq i32 %328, 2
  br i1 %cmp383, label %cond.true.385, label %cond.false.386

cond.true.385:                                    ; preds = %if.else.382
  %329 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %toppoc = getelementptr inbounds %struct.img_par, %struct.img_par* %329, i32 0, i32 53
  %330 = load i32, i32* %toppoc, align 4
  br label %cond.end.387

cond.false.386:                                   ; preds = %if.else.382
  %331 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %bottompoc = getelementptr inbounds %struct.img_par, %struct.img_par* %331, i32 0, i32 54
  %332 = load i32, i32* %bottompoc, align 4
  br label %cond.end.387

cond.end.387:                                     ; preds = %cond.false.386, %cond.true.385
  %cond388 = phi i32 [ %330, %cond.true.385 ], [ %332, %cond.false.386 ]
  %333 = load i32, i32* %i, align 4
  %idxprom389 = sext i32 %333 to i64
  %334 = load i32, i32* %k, align 4
  %add390 = add nsw i32 %334, 0
  %idxprom391 = sext i32 %add390 to i64
  %arrayidx392 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom391
  %335 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx392, align 8
  %arrayidx393 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %335, i64 %idxprom389
  %336 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx393, align 8
  %poc394 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %336, i32 0, i32 1
  %337 = load i32, i32* %poc394, align 4
  %sub395 = sub nsw i32 %cond388, %337
  %call396 = call i32 @iClip3(i32 -128, i32 127, i32 %sub395)
  store i32 %call396, i32* %tb, align 4
  %338 = load i32, i32* %td, align 4
  %div397 = sdiv i32 %338, 2
  %call398 = call i32 @iabs(i32 %div397)
  %add399 = add nsw i32 16384, %call398
  %339 = load i32, i32* %td, align 4
  %div400 = sdiv i32 %add399, %339
  store i32 %div400, i32* %tx, align 4
  %340 = load i32, i32* %tx, align 4
  %341 = load i32, i32* %tb, align 4
  %mul401 = mul nsw i32 %340, %341
  %add402 = add nsw i32 %mul401, 32
  %shr403 = ashr i32 %add402, 6
  %call404 = call i32 @iClip3(i32 -1024, i32 1023, i32 %shr403)
  store i32 %call404, i32* %DistScaleFactor, align 4
  %342 = load i32, i32* %DistScaleFactor, align 4
  %shr405 = ashr i32 %342, 2
  %343 = load i32, i32* %comp, align 4
  %idxprom406 = sext i32 %343 to i64
  %344 = load i32, i32* %j, align 4
  %idxprom407 = sext i32 %344 to i64
  %345 = load i32, i32* %i, align 4
  %idxprom408 = sext i32 %345 to i64
  %346 = load i32, i32* %k, align 4
  %add409 = add nsw i32 %346, 1
  %idxprom410 = sext i32 %add409 to i64
  %347 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %wbp_weight411 = getelementptr inbounds %struct.img_par, %struct.img_par* %347, i32 0, i32 79
  %348 = load i32****, i32***** %wbp_weight411, align 8
  %arrayidx412 = getelementptr inbounds i32***, i32**** %348, i64 %idxprom410
  %349 = load i32***, i32**** %arrayidx412, align 8
  %arrayidx413 = getelementptr inbounds i32**, i32*** %349, i64 %idxprom408
  %350 = load i32**, i32*** %arrayidx413, align 8
  %arrayidx414 = getelementptr inbounds i32*, i32** %350, i64 %idxprom407
  %351 = load i32*, i32** %arrayidx414, align 8
  %arrayidx415 = getelementptr inbounds i32, i32* %351, i64 %idxprom406
  store i32 %shr405, i32* %arrayidx415, align 4
  %352 = load i32, i32* %comp, align 4
  %idxprom416 = sext i32 %352 to i64
  %353 = load i32, i32* %j, align 4
  %idxprom417 = sext i32 %353 to i64
  %354 = load i32, i32* %i, align 4
  %idxprom418 = sext i32 %354 to i64
  %355 = load i32, i32* %k, align 4
  %add419 = add nsw i32 %355, 1
  %idxprom420 = sext i32 %add419 to i64
  %356 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %wbp_weight421 = getelementptr inbounds %struct.img_par, %struct.img_par* %356, i32 0, i32 79
  %357 = load i32****, i32***** %wbp_weight421, align 8
  %arrayidx422 = getelementptr inbounds i32***, i32**** %357, i64 %idxprom420
  %358 = load i32***, i32**** %arrayidx422, align 8
  %arrayidx423 = getelementptr inbounds i32**, i32*** %358, i64 %idxprom418
  %359 = load i32**, i32*** %arrayidx423, align 8
  %arrayidx424 = getelementptr inbounds i32*, i32** %359, i64 %idxprom417
  %360 = load i32*, i32** %arrayidx424, align 8
  %arrayidx425 = getelementptr inbounds i32, i32* %360, i64 %idxprom416
  %361 = load i32, i32* %arrayidx425, align 4
  %sub426 = sub nsw i32 64, %361
  %362 = load i32, i32* %comp, align 4
  %idxprom427 = sext i32 %362 to i64
  %363 = load i32, i32* %j, align 4
  %idxprom428 = sext i32 %363 to i64
  %364 = load i32, i32* %i, align 4
  %idxprom429 = sext i32 %364 to i64
  %365 = load i32, i32* %k, align 4
  %add430 = add nsw i32 %365, 0
  %idxprom431 = sext i32 %add430 to i64
  %366 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %wbp_weight432 = getelementptr inbounds %struct.img_par, %struct.img_par* %366, i32 0, i32 79
  %367 = load i32****, i32***** %wbp_weight432, align 8
  %arrayidx433 = getelementptr inbounds i32***, i32**** %367, i64 %idxprom431
  %368 = load i32***, i32**** %arrayidx433, align 8
  %arrayidx434 = getelementptr inbounds i32**, i32*** %368, i64 %idxprom429
  %369 = load i32**, i32*** %arrayidx434, align 8
  %arrayidx435 = getelementptr inbounds i32*, i32** %369, i64 %idxprom428
  %370 = load i32*, i32** %arrayidx435, align 8
  %arrayidx436 = getelementptr inbounds i32, i32* %370, i64 %idxprom427
  store i32 %sub426, i32* %arrayidx436, align 4
  %371 = load i32, i32* %comp, align 4
  %idxprom437 = sext i32 %371 to i64
  %372 = load i32, i32* %j, align 4
  %idxprom438 = sext i32 %372 to i64
  %373 = load i32, i32* %i, align 4
  %idxprom439 = sext i32 %373 to i64
  %374 = load i32, i32* %k, align 4
  %add440 = add nsw i32 %374, 1
  %idxprom441 = sext i32 %add440 to i64
  %375 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %wbp_weight442 = getelementptr inbounds %struct.img_par, %struct.img_par* %375, i32 0, i32 79
  %376 = load i32****, i32***** %wbp_weight442, align 8
  %arrayidx443 = getelementptr inbounds i32***, i32**** %376, i64 %idxprom441
  %377 = load i32***, i32**** %arrayidx443, align 8
  %arrayidx444 = getelementptr inbounds i32**, i32*** %377, i64 %idxprom439
  %378 = load i32**, i32*** %arrayidx444, align 8
  %arrayidx445 = getelementptr inbounds i32*, i32** %378, i64 %idxprom438
  %379 = load i32*, i32** %arrayidx445, align 8
  %arrayidx446 = getelementptr inbounds i32, i32* %379, i64 %idxprom437
  %380 = load i32, i32* %arrayidx446, align 4
  %cmp447 = icmp slt i32 %380, -64
  br i1 %cmp447, label %if.then.462, label %lor.lhs.false.449

lor.lhs.false.449:                                ; preds = %cond.end.387
  %381 = load i32, i32* %comp, align 4
  %idxprom450 = sext i32 %381 to i64
  %382 = load i32, i32* %j, align 4
  %idxprom451 = sext i32 %382 to i64
  %383 = load i32, i32* %i, align 4
  %idxprom452 = sext i32 %383 to i64
  %384 = load i32, i32* %k, align 4
  %add453 = add nsw i32 %384, 1
  %idxprom454 = sext i32 %add453 to i64
  %385 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %wbp_weight455 = getelementptr inbounds %struct.img_par, %struct.img_par* %385, i32 0, i32 79
  %386 = load i32****, i32***** %wbp_weight455, align 8
  %arrayidx456 = getelementptr inbounds i32***, i32**** %386, i64 %idxprom454
  %387 = load i32***, i32**** %arrayidx456, align 8
  %arrayidx457 = getelementptr inbounds i32**, i32*** %387, i64 %idxprom452
  %388 = load i32**, i32*** %arrayidx457, align 8
  %arrayidx458 = getelementptr inbounds i32*, i32** %388, i64 %idxprom451
  %389 = load i32*, i32** %arrayidx458, align 8
  %arrayidx459 = getelementptr inbounds i32, i32* %389, i64 %idxprom450
  %390 = load i32, i32* %arrayidx459, align 4
  %cmp460 = icmp sgt i32 %390, 128
  br i1 %cmp460, label %if.then.462, label %if.end.499

if.then.462:                                      ; preds = %lor.lhs.false.449, %cond.end.387
  %391 = load i32, i32* %comp, align 4
  %idxprom463 = sext i32 %391 to i64
  %392 = load i32, i32* %j, align 4
  %idxprom464 = sext i32 %392 to i64
  %393 = load i32, i32* %i, align 4
  %idxprom465 = sext i32 %393 to i64
  %394 = load i32, i32* %k, align 4
  %add466 = add nsw i32 %394, 1
  %idxprom467 = sext i32 %add466 to i64
  %395 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %wbp_weight468 = getelementptr inbounds %struct.img_par, %struct.img_par* %395, i32 0, i32 79
  %396 = load i32****, i32***** %wbp_weight468, align 8
  %arrayidx469 = getelementptr inbounds i32***, i32**** %396, i64 %idxprom467
  %397 = load i32***, i32**** %arrayidx469, align 8
  %arrayidx470 = getelementptr inbounds i32**, i32*** %397, i64 %idxprom465
  %398 = load i32**, i32*** %arrayidx470, align 8
  %arrayidx471 = getelementptr inbounds i32*, i32** %398, i64 %idxprom464
  %399 = load i32*, i32** %arrayidx471, align 8
  %arrayidx472 = getelementptr inbounds i32, i32* %399, i64 %idxprom463
  store i32 32, i32* %arrayidx472, align 4
  %400 = load i32, i32* %comp, align 4
  %idxprom473 = sext i32 %400 to i64
  %401 = load i32, i32* %j, align 4
  %idxprom474 = sext i32 %401 to i64
  %402 = load i32, i32* %i, align 4
  %idxprom475 = sext i32 %402 to i64
  %403 = load i32, i32* %k, align 4
  %add476 = add nsw i32 %403, 0
  %idxprom477 = sext i32 %add476 to i64
  %404 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %wbp_weight478 = getelementptr inbounds %struct.img_par, %struct.img_par* %404, i32 0, i32 79
  %405 = load i32****, i32***** %wbp_weight478, align 8
  %arrayidx479 = getelementptr inbounds i32***, i32**** %405, i64 %idxprom477
  %406 = load i32***, i32**** %arrayidx479, align 8
  %arrayidx480 = getelementptr inbounds i32**, i32*** %406, i64 %idxprom475
  %407 = load i32**, i32*** %arrayidx480, align 8
  %arrayidx481 = getelementptr inbounds i32*, i32** %407, i64 %idxprom474
  %408 = load i32*, i32** %arrayidx481, align 8
  %arrayidx482 = getelementptr inbounds i32, i32* %408, i64 %idxprom473
  store i32 32, i32* %arrayidx482, align 4
  %409 = load i32, i32* %comp, align 4
  %idxprom483 = sext i32 %409 to i64
  %410 = load i32, i32* %i, align 4
  %idxprom484 = sext i32 %410 to i64
  %411 = load i32, i32* %k, align 4
  %add485 = add nsw i32 %411, 0
  %idxprom486 = sext i32 %add485 to i64
  %412 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %wp_offset487 = getelementptr inbounds %struct.img_par, %struct.img_par* %412, i32 0, i32 78
  %413 = load i32***, i32**** %wp_offset487, align 8
  %arrayidx488 = getelementptr inbounds i32**, i32*** %413, i64 %idxprom486
  %414 = load i32**, i32*** %arrayidx488, align 8
  %arrayidx489 = getelementptr inbounds i32*, i32** %414, i64 %idxprom484
  %415 = load i32*, i32** %arrayidx489, align 8
  %arrayidx490 = getelementptr inbounds i32, i32* %415, i64 %idxprom483
  store i32 0, i32* %arrayidx490, align 4
  %416 = load i32, i32* %comp, align 4
  %idxprom491 = sext i32 %416 to i64
  %417 = load i32, i32* %j, align 4
  %idxprom492 = sext i32 %417 to i64
  %418 = load i32, i32* %k, align 4
  %add493 = add nsw i32 %418, 1
  %idxprom494 = sext i32 %add493 to i64
  %419 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %wp_offset495 = getelementptr inbounds %struct.img_par, %struct.img_par* %419, i32 0, i32 78
  %420 = load i32***, i32**** %wp_offset495, align 8
  %arrayidx496 = getelementptr inbounds i32**, i32*** %420, i64 %idxprom494
  %421 = load i32**, i32*** %arrayidx496, align 8
  %arrayidx497 = getelementptr inbounds i32*, i32** %421, i64 %idxprom492
  %422 = load i32*, i32** %arrayidx497, align 8
  %arrayidx498 = getelementptr inbounds i32, i32* %422, i64 %idxprom491
  store i32 0, i32* %arrayidx498, align 4
  br label %if.end.499

if.end.499:                                       ; preds = %if.then.462, %lor.lhs.false.449
  br label %if.end.500

if.end.500:                                       ; preds = %if.end.499, %if.then.361
  br label %if.end.501

if.end.501:                                       ; preds = %if.end.500, %if.else.324
  br label %if.end.502

if.end.502:                                       ; preds = %if.end.501, %if.then.289
  br label %for.inc.503

for.inc.503:                                      ; preds = %if.end.502
  %423 = load i32, i32* %k, align 4
  %add504 = add nsw i32 %423, 2
  store i32 %add504, i32* %k, align 4
  br label %for.cond.244

for.end.505:                                      ; preds = %for.cond.244
  br label %for.inc.506

for.inc.506:                                      ; preds = %for.end.505
  %424 = load i32, i32* %comp, align 4
  %inc507 = add nsw i32 %424, 1
  store i32 %inc507, i32* %comp, align 4
  br label %for.cond.240

for.end.508:                                      ; preds = %for.cond.240
  br label %for.inc.509

for.inc.509:                                      ; preds = %for.end.508
  %425 = load i32, i32* %j, align 4
  %inc510 = add nsw i32 %425, 1
  store i32 %inc510, i32* %j, align 4
  br label %for.cond.235

for.end.511:                                      ; preds = %for.cond.235
  br label %for.inc.512

for.inc.512:                                      ; preds = %for.end.511
  %426 = load i32, i32* %i, align 4
  %inc513 = add nsw i32 %426, 1
  store i32 %inc513, i32* %i, align 4
  br label %for.cond.230

for.end.514:                                      ; preds = %for.cond.230
  br label %if.end.515

if.end.515:                                       ; preds = %for.end.514, %land.lhs.true.227, %if.end.225
  ret void
}

; Function Attrs: nounwind uwtable
define void @reset_wp_params(%struct.img_par* %img) #0 {
entry:
  %img.addr = alloca %struct.img_par*, align 8
  %i = alloca i32, align 4
  %comp = alloca i32, align 4
  %log_weight_denom = alloca i32, align 4
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.15, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 32
  br i1 %cmp, label %for.body, label %for.end.17

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %comp, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* %comp, align 4
  %cmp2 = icmp slt i32 %1, 3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %2 = load i32, i32* %comp, align 4
  %cmp4 = icmp eq i32 %2, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.3
  %3 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %luma_log2_weight_denom = getelementptr inbounds %struct.img_par, %struct.img_par* %3, i32 0, i32 75
  %4 = load i32, i32* %luma_log2_weight_denom, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body.3
  %5 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %chroma_log2_weight_denom = getelementptr inbounds %struct.img_par, %struct.img_par* %5, i32 0, i32 76
  %6 = load i32, i32* %chroma_log2_weight_denom, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ %6, %cond.false ]
  store i32 %cond, i32* %log_weight_denom, align 4
  %7 = load i32, i32* %log_weight_denom, align 4
  %shl = shl i32 1, %7
  %8 = load i32, i32* %comp, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %9 to i64
  %10 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %wp_weight = getelementptr inbounds %struct.img_par, %struct.img_par* %10, i32 0, i32 77
  %11 = load i32***, i32**** %wp_weight, align 8
  %arrayidx = getelementptr inbounds i32**, i32*** %11, i64 0
  %12 = load i32**, i32*** %arrayidx, align 8
  %arrayidx6 = getelementptr inbounds i32*, i32** %12, i64 %idxprom5
  %13 = load i32*, i32** %arrayidx6, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %13, i64 %idxprom
  store i32 %shl, i32* %arrayidx7, align 4
  %14 = load i32, i32* %log_weight_denom, align 4
  %shl8 = shl i32 1, %14
  %15 = load i32, i32* %comp, align 4
  %idxprom9 = sext i32 %15 to i64
  %16 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %16 to i64
  %17 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %wp_weight11 = getelementptr inbounds %struct.img_par, %struct.img_par* %17, i32 0, i32 77
  %18 = load i32***, i32**** %wp_weight11, align 8
  %arrayidx12 = getelementptr inbounds i32**, i32*** %18, i64 1
  %19 = load i32**, i32*** %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds i32*, i32** %19, i64 %idxprom10
  %20 = load i32*, i32** %arrayidx13, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %20, i64 %idxprom9
  store i32 %shl8, i32* %arrayidx14, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %21 = load i32, i32* %comp, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %comp, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.end
  %22 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %22, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond

for.end.17:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @iabs(i32 %x) #3 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, i32* %x.addr, align 4
  %sub = sub nsw i32 0, %1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, i32* %x.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %2, %cond.false ]
  ret i32 %cond
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @imin(i32 %a, i32 %b) #3 {
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

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
