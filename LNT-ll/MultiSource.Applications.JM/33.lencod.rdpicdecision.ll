; ModuleID = './MultiSource.Applications.JM/33.lencod.rdpicdecision.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ImageParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8**, i8**, i32, i32***, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x [16 x [16 x i16]]], [5 x [16 x [16 x i16]]], [9 x [8 x [8 x i16]]], [2 x [4 x [16 x [16 x i16]]]], [16 x [16 x i16]], [16 x [16 x i32]], i32****, i32***, i32***, i32***, i32****, i32****, %struct.Picture*, %struct.Slice*, %struct.macroblock*, i32*, i32*, i32, i32, i32, i32, [4 x [4 x i32]], i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i16******, i16******, i16******, i16******, [15 x i16], i32, i32, i32, i32, i32, i32, i32, i32, [6 x [32 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32], i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double**, double***, i32***, double**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [2 x i32], i32, i32, i16, i32, i32, i32, i32, i32 }
%struct.Picture = type { i32, i32, [100 x %struct.Slice*], i32, float, float, float }
%struct.Slice = type { i32, i32, i32, i32, i32, i32, %struct.datapartition*, %struct.MotionInfoContexts*, %struct.TextureInfoContexts*, i32, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32 (i32)*, [3 x [2 x i32]] }
%struct.datapartition = type { %struct.Bitstream*, %struct.EncodingEnvironment, %struct.EncodingEnvironment }
%struct.Bitstream = type { i32, i32, i8, i32, i32, i8, i8, i32, i32, i8*, i32 }
%struct.EncodingEnvironment = type { i32, i32, i32, i32, i32, i8*, i32*, i32, i32 }
%struct.MotionInfoContexts = type { [3 x [11 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]], [2 x [10 x %struct.BiContextType]], [2 x [6 x %struct.BiContextType]], [4 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x %struct.BiContextType] }
%struct.BiContextType = type { i16, i8, i64 }
%struct.TextureInfoContexts = type { [2 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x [4 x %struct.BiContextType]], [10 x [4 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]] }
%struct.macroblock = type { i32, i32, i32, [2 x i32], i32, [8 x i32], %struct.macroblock*, %struct.macroblock*, i32, [2 x [4 x [4 x [2 x i32]]]], [16 x i8], [16 x i8], i32, i64, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, double, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.DecRefPicMarking_s = type { i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s* }
%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], [4 x [4 x i32]], i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, [500 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, [5 x double], i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [6 x double], [256 x i8], i32, i32, i32, i32, [2 x [5 x i32]], [2 x [5 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], i32****, i32***, i32, i16, [4 x i32], [4 x i32], i8**, [16 x i8], [16 x i8], i32, i64, i32, i16******, i16******, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@img = external global %struct.ImageParameters*, align 8
@input = external global %struct.InputParameters*, align 8
@color_formats = common global i32 0, align 4
@top_pic = common global %struct.Picture* null, align 8
@bottom_pic = common global %struct.Picture* null, align 8
@frame_pic = common global %struct.Picture* null, align 8
@frame_pic_1 = common global %struct.Picture* null, align 8
@frame_pic_2 = common global %struct.Picture* null, align 8
@frame_pic_3 = common global %struct.Picture* null, align 8
@frame_pic_si = common global %struct.Picture* null, align 8
@Bit_Buffer = common global i64* null, align 8
@imgY_org = common global i16** null, align 8
@imgUV_org = common global i16*** null, align 8
@imgY_sub_tmp = common global i32** null, align 8
@PicPos = common global i32** null, align 8
@log2_max_frame_num_minus4 = common global i32 0, align 4
@log2_max_pic_order_cnt_lsb_minus4 = common global i32 0, align 4
@me_tot_time = common global i64 0, align 8
@me_time = common global i64 0, align 8
@active_pps = common global %struct.pic_parameter_set_rbsp_t* null, align 8
@active_sps = common global %struct.seq_parameter_set_rbsp_t* null, align 8
@dsr_new_search_range = common global i32 0, align 4
@mb_adaptive = common global i32 0, align 4
@MBPairIsField = common global i32 0, align 4
@wp_weight = common global i32*** null, align 8
@wp_offset = common global i32*** null, align 8
@wbp_weight = common global i32**** null, align 8
@luma_log_weight_denom = common global i32 0, align 4
@chroma_log_weight_denom = common global i32 0, align 4
@wp_luma_round = common global i32 0, align 4
@wp_chroma_round = common global i32 0, align 4
@imgY_org_top = common global i16** null, align 8
@imgY_org_bot = common global i16** null, align 8
@imgUV_org_top = common global i16*** null, align 8
@imgUV_org_bot = common global i16*** null, align 8
@imgY_org_frm = common global i16** null, align 8
@imgUV_org_frm = common global i16*** null, align 8
@imgY_com = common global i16** null, align 8
@imgUV_com = common global i16*** null, align 8
@direct_ref_idx = common global i8*** null, align 8
@direct_pdir = common global i8** null, align 8
@pixel_map = common global i8** null, align 8
@refresh_map = common global i8** null, align 8
@intras = common global i32 0, align 4
@frame_ctr = common global [5 x i32] zeroinitializer, align 16
@frame_no = common global i32 0, align 4
@nextP_tr_fld = common global i32 0, align 4
@nextP_tr_frm = common global i32 0, align 4
@tot_time = common global i64 0, align 8
@errortext = common global [300 x i8] zeroinitializer, align 16
@b8_ipredmode8x8 = common global [4 x [4 x i8]] zeroinitializer, align 16
@b8_intra_pred_modes8x8 = common global [16 x i8] zeroinitializer, align 16
@gop_structure = common global %struct.GOP_DATA* null, align 8
@rdopt = common global %struct.RD_DATA* null, align 8
@rddata_top_frame_mb = common global %struct.RD_DATA zeroinitializer, align 8
@rddata_bot_frame_mb = common global %struct.RD_DATA zeroinitializer, align 8
@rddata_top_field_mb = common global %struct.RD_DATA zeroinitializer, align 8
@rddata_bot_field_mb = common global %struct.RD_DATA zeroinitializer, align 8
@p_stat = common global %struct._IO_FILE* null, align 8
@p_log = common global %struct._IO_FILE* null, align 8
@p_trace = common global %struct._IO_FILE* null, align 8
@p_in = common global i32 0, align 4
@p_dec = common global i32 0, align 4
@mb16x16_cost_frame = common global double* null, align 8
@Bytes_After_Header = common global i32 0, align 4
@encode_one_macroblock = common global void ()* null, align 8
@lrec = common global i32** null, align 8
@lrec_uv = common global i32*** null, align 8
@si_frame_indicator = common global i32 0, align 4
@sp2_frame_indicator = common global i32 0, align 4
@number_sp2_frames = common global i32 0, align 4
@giRDOpt_B8OnlyFlag = common global i32 0, align 4
@imgY_tmp = common global i16** null, align 8
@imgUV_tmp = common global [2 x i16**] zeroinitializer, align 16
@frameNuminGOP = common global i32 0, align 4
@redundant_coding = common global i32 0, align 4
@key_frame = common global i32 0, align 4
@redundant_ref_idx = common global i32 0, align 4
@img_pad_size_uv_x = common global i32 0, align 4
@img_pad_size_uv_y = common global i32 0, align 4
@chroma_mask_mv_y = common global i8 0, align 1
@chroma_mask_mv_x = common global i8 0, align 1
@chroma_shift_y = common global i32 0, align 4
@chroma_shift_x = common global i32 0, align 4
@shift_cr_x = common global i32 0, align 4
@shift_cr_y = common global i32 0, align 4
@img_padded_size_x = common global i32 0, align 4
@img_cr_padded_size_x = common global i32 0, align 4
@start_me_refinement_hp = common global i32 0, align 4
@start_me_refinement_qp = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define i32 @rd_pic_decision(double %snrY_version1, double %snrY_version2, i32 %bits_version1, i32 %bits_version2, double %lambda_picture) #0 {
entry:
  %retval = alloca i32, align 4
  %snrY_version1.addr = alloca double, align 8
  %snrY_version2.addr = alloca double, align 8
  %bits_version1.addr = alloca i32, align 4
  %bits_version2.addr = alloca i32, align 4
  %lambda_picture.addr = alloca double, align 8
  %cost_version1 = alloca double, align 8
  %cost_version2 = alloca double, align 8
  store double %snrY_version1, double* %snrY_version1.addr, align 8
  store double %snrY_version2, double* %snrY_version2.addr, align 8
  store i32 %bits_version1, i32* %bits_version1.addr, align 4
  store i32 %bits_version2, i32* %bits_version2.addr, align 4
  store double %lambda_picture, double* %lambda_picture.addr, align 8
  %0 = load i32, i32* %bits_version1.addr, align 4
  %conv = sitofp i32 %0 to double
  %1 = load double, double* %lambda_picture.addr, align 8
  %mul = fmul double %conv, %1
  %2 = load double, double* %snrY_version1.addr, align 8
  %add = fadd double %mul, %2
  store double %add, double* %cost_version1, align 8
  %3 = load i32, i32* %bits_version2.addr, align 4
  %conv1 = sitofp i32 %3 to double
  %4 = load double, double* %lambda_picture.addr, align 8
  %mul2 = fmul double %conv1, %4
  %5 = load double, double* %snrY_version2.addr, align 8
  %add3 = fadd double %mul2, %5
  store double %add3, double* %cost_version2, align 8
  %6 = load double, double* %cost_version2, align 8
  %7 = load double, double* %cost_version1, align 8
  %cmp = fcmp ogt double %6, %7
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load double, double* %cost_version2, align 8
  %9 = load double, double* %cost_version1, align 8
  %cmp5 = fcmp oeq double %8, %9
  br i1 %cmp5, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false
  %10 = load double, double* %snrY_version2.addr, align 8
  %11 = load double, double* %snrY_version1.addr, align 8
  %cmp7 = fcmp oge double %10, %11
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define i32 @picture_coding_decision(%struct.Picture* %picture1, %struct.Picture* %picture2, i32 %qp) #0 {
entry:
  %picture1.addr = alloca %struct.Picture*, align 8
  %picture2.addr = alloca %struct.Picture*, align 8
  %qp.addr = alloca i32, align 4
  %lambda_picture = alloca double, align 8
  %spframe = alloca i32, align 4
  %bframe = alloca i32, align 4
  %snr_picture1 = alloca double, align 8
  %snr_picture2 = alloca double, align 8
  %bit_picture1 = alloca i32, align 4
  %bit_picture2 = alloca i32, align 4
  store %struct.Picture* %picture1, %struct.Picture** %picture1.addr, align 8
  store %struct.Picture* %picture2, %struct.Picture** %picture2.addr, align 8
  store i32 %qp, i32* %qp.addr, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 5
  %1 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %1, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %spframe, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type1 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 5
  %3 = load i32, i32* %type1, align 4
  %cmp2 = icmp eq i32 %3, 1
  %conv3 = zext i1 %cmp2 to i32
  store i32 %conv3, i32* %bframe, align 4
  %4 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %4, i32 0, i32 40
  %5 = load i32, i32* %successive_Bframe, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %qp.addr, align 4
  %sub = sub nsw i32 %6, 12
  %conv4 = sitofp i32 %sub to double
  %div = fdiv double %conv4, 3.000000e+00
  %call = call double @pow(double 2.000000e+00, double %div) #2
  %mul = fmul double 6.800000e-01, %call
  %7 = load i32, i32* %bframe, align 4
  %tobool5 = icmp ne i32 %7, 0
  br i1 %tobool5, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then
  %8 = load i32, i32* %spframe, align 4
  %tobool6 = icmp ne i32 %8, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then
  %9 = phi i1 [ true, %if.then ], [ %tobool6, %lor.rhs ]
  %cond = select i1 %9, i32 2, i32 1
  %conv7 = sitofp i32 %cond to double
  %mul8 = fmul double %mul, %conv7
  store double %mul8, double* %lambda_picture, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load i32, i32* %qp.addr, align 4
  %sub9 = sub nsw i32 %10, 12
  %conv10 = sitofp i32 %sub9 to double
  %div11 = fdiv double %conv10, 3.000000e+00
  %call12 = call double @pow(double 2.000000e+00, double %div11) #2
  %mul13 = fmul double 6.800000e-01, %call12
  store double %mul13, double* %lambda_picture, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %lor.end
  %11 = load %struct.Picture*, %struct.Picture** %picture1.addr, align 8
  %distortion_y = getelementptr inbounds %struct.Picture, %struct.Picture* %11, i32 0, i32 4
  %12 = load float, float* %distortion_y, align 4
  %13 = load %struct.Picture*, %struct.Picture** %picture1.addr, align 8
  %distortion_u = getelementptr inbounds %struct.Picture, %struct.Picture* %13, i32 0, i32 5
  %14 = load float, float* %distortion_u, align 4
  %add = fadd float %12, %14
  %15 = load %struct.Picture*, %struct.Picture** %picture1.addr, align 8
  %distortion_v = getelementptr inbounds %struct.Picture, %struct.Picture* %15, i32 0, i32 6
  %16 = load float, float* %distortion_v, align 4
  %add14 = fadd float %add, %16
  %conv15 = fpext float %add14 to double
  store double %conv15, double* %snr_picture1, align 8
  %17 = load %struct.Picture*, %struct.Picture** %picture2.addr, align 8
  %distortion_y16 = getelementptr inbounds %struct.Picture, %struct.Picture* %17, i32 0, i32 4
  %18 = load float, float* %distortion_y16, align 4
  %19 = load %struct.Picture*, %struct.Picture** %picture2.addr, align 8
  %distortion_u17 = getelementptr inbounds %struct.Picture, %struct.Picture* %19, i32 0, i32 5
  %20 = load float, float* %distortion_u17, align 4
  %add18 = fadd float %18, %20
  %21 = load %struct.Picture*, %struct.Picture** %picture2.addr, align 8
  %distortion_v19 = getelementptr inbounds %struct.Picture, %struct.Picture* %21, i32 0, i32 6
  %22 = load float, float* %distortion_v19, align 4
  %add20 = fadd float %add18, %22
  %conv21 = fpext float %add20 to double
  store double %conv21, double* %snr_picture2, align 8
  %23 = load %struct.Picture*, %struct.Picture** %picture2.addr, align 8
  %bits_per_picture = getelementptr inbounds %struct.Picture, %struct.Picture* %23, i32 0, i32 3
  %24 = load i32, i32* %bits_per_picture, align 4
  store i32 %24, i32* %bit_picture2, align 4
  %25 = load %struct.Picture*, %struct.Picture** %picture1.addr, align 8
  %bits_per_picture22 = getelementptr inbounds %struct.Picture, %struct.Picture* %25, i32 0, i32 3
  %26 = load i32, i32* %bits_per_picture22, align 4
  store i32 %26, i32* %bit_picture1, align 4
  %27 = load double, double* %snr_picture1, align 8
  %28 = load double, double* %snr_picture2, align 8
  %29 = load i32, i32* %bit_picture1, align 4
  %30 = load i32, i32* %bit_picture2, align 4
  %31 = load double, double* %lambda_picture, align 8
  %call23 = call i32 @rd_pic_decision(double %27, double %28, i32 %29, i32 %30, double %31)
  ret i32 %call23
}

; Function Attrs: nounwind
declare double @pow(double, double) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
