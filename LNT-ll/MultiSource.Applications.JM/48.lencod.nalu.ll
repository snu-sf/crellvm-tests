; ModuleID = './MultiSource.Applications.JM/48.lencod.nalu.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Picture = type { i32, i32, [100 x %struct.Slice*], i32, float, float, float }
%struct.Slice = type { i32, i32, i32, i32, i32, i32, %struct.datapartition*, %struct.MotionInfoContexts*, %struct.TextureInfoContexts*, i32, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32 (i32)*, [3 x [2 x i32]] }
%struct.datapartition = type { %struct.Bitstream*, %struct.EncodingEnvironment, %struct.EncodingEnvironment }
%struct.Bitstream = type { i32, i32, i8, i32, i32, i8, i8, i32, i32, i8*, i32 }
%struct.EncodingEnvironment = type { i32, i32, i32, i32, i32, i8*, i32*, i32, i32 }
%struct.MotionInfoContexts = type { [3 x [11 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]], [2 x [10 x %struct.BiContextType]], [2 x [6 x %struct.BiContextType]], [4 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x %struct.BiContextType] }
%struct.BiContextType = type { i16, i8, i64 }
%struct.TextureInfoContexts = type { [2 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x [4 x %struct.BiContextType]], [10 x [4 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]] }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], i32****, i32***, i32, i16, [4 x i32], [4 x i32], i8**, [16 x i8], [16 x i8], i32, i64, i32, i16******, i16******, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.NALU_t = type { i32, i32, i32, i32, i32, i32, i8* }

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
@WriteNALU = common global i32 (%struct.NALU_t*)* null, align 8

; Function Attrs: nounwind uwtable
define i32 @RBSPtoNALU(i8* %rbsp, %struct.NALU_t* %nalu, i32 %rbsp_size, i32 %nal_unit_type, i32 %nal_reference_idc, i32 %min_num_bytes, i32 %UseAnnexbLongStartcode) #0 {
entry:
  %rbsp.addr = alloca i8*, align 8
  %nalu.addr = alloca %struct.NALU_t*, align 8
  %rbsp_size.addr = alloca i32, align 4
  %nal_unit_type.addr = alloca i32, align 4
  %nal_reference_idc.addr = alloca i32, align 4
  %min_num_bytes.addr = alloca i32, align 4
  %UseAnnexbLongStartcode.addr = alloca i32, align 4
  %len = alloca i32, align 4
  store i8* %rbsp, i8** %rbsp.addr, align 8
  store %struct.NALU_t* %nalu, %struct.NALU_t** %nalu.addr, align 8
  store i32 %rbsp_size, i32* %rbsp_size.addr, align 4
  store i32 %nal_unit_type, i32* %nal_unit_type.addr, align 4
  store i32 %nal_reference_idc, i32* %nal_reference_idc.addr, align 4
  store i32 %min_num_bytes, i32* %min_num_bytes.addr, align 4
  store i32 %UseAnnexbLongStartcode, i32* %UseAnnexbLongStartcode.addr, align 4
  %0 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %forbidden_bit = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %0, i32 0, i32 5
  store i32 0, i32* %forbidden_bit, align 4
  %1 = load i32, i32* %nal_reference_idc.addr, align 4
  %2 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %nal_reference_idc1 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %2, i32 0, i32 4
  store i32 %1, i32* %nal_reference_idc1, align 4
  %3 = load i32, i32* %nal_unit_type.addr, align 4
  %4 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %nal_unit_type2 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %4, i32 0, i32 3
  store i32 %3, i32* %nal_unit_type2, align 4
  %5 = load i32, i32* %UseAnnexbLongStartcode.addr, align 4
  %tobool = icmp ne i32 %5, 0
  %cond = select i1 %tobool, i32 4, i32 3
  %6 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %startcodeprefix_len = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %6, i32 0, i32 0
  store i32 %cond, i32* %startcodeprefix_len, align 4
  %7 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %forbidden_bit3 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %7, i32 0, i32 5
  %8 = load i32, i32* %forbidden_bit3, align 4
  %shl = shl i32 %8, 7
  %9 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %nal_reference_idc4 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %9, i32 0, i32 4
  %10 = load i32, i32* %nal_reference_idc4, align 4
  %shl5 = shl i32 %10, 5
  %or = or i32 %shl, %shl5
  %11 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %nal_unit_type6 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %11, i32 0, i32 3
  %12 = load i32, i32* %nal_unit_type6, align 4
  %or7 = or i32 %or, %12
  %conv = trunc i32 %or7 to i8
  %13 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %buf = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %13, i32 0, i32 6
  %14 = load i8*, i8** %buf, align 8
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 0
  store i8 %conv, i8* %arrayidx, align 1
  %15 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %buf8 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %15, i32 0, i32 6
  %16 = load i8*, i8** %buf8, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %16, i64 1
  %17 = load i8*, i8** %rbsp.addr, align 8
  %18 = load i32, i32* %rbsp_size.addr, align 4
  %conv10 = sext i32 %18 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx9, i8* %17, i64 %conv10, i32 1, i1 false)
  %19 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %buf11 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %19, i32 0, i32 6
  %20 = load i8*, i8** %buf11, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %20, i64 1
  %21 = load i32, i32* %rbsp_size.addr, align 4
  %22 = load i32, i32* %min_num_bytes.addr, align 4
  %call = call i32 @RBSPtoEBSP(i8* %arrayidx12, i32 0, i32 %21, i32 %22)
  %add = add nsw i32 1, %call
  store i32 %add, i32* %len, align 4
  %23 = load i32, i32* %len, align 4
  %24 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %len13 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %24, i32 0, i32 1
  store i32 %23, i32* %len13, align 4
  %25 = load i32, i32* %len, align 4
  ret i32 %25
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @RBSPtoEBSP(i8*, i32, i32, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
