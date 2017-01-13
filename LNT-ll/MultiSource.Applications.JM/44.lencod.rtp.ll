; ModuleID = './MultiSource.Applications.JM/44.lencod.rtp.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
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
%struct.NALU_t = type { i32, i32, i32, i32, i32, i32, i8* }
%struct.RTPpacket_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i8*, i32 }

@CurrentRTPTimestamp = global i32 0, align 4
@CurrentRTPSequenceNumber = global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"RTPWriteNALU-1\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"RTPWriteNALU-2\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"RTPWriteNALU-3\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Cannot compose RTP packet, exit\0A\00", align 1
@f = common global %struct._IO_FILE* null, align 8
@.str.4 = private unnamed_addr constant [54 x i8] c"Cannot write %d bytes of RTP packet to outfile, exit\0A\00", align 1
@RTPUpdateTimestamp.oldtr = internal global i32 -1, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"Fatal: cannot open bitstream file '%s', exit (-1)\0A\00", align 1
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
define i32 @ComposeRTPPacket(%struct.RTPpacket_t* %p) #0 {
entry:
  %p.addr = alloca %struct.RTPpacket_t*, align 8
  %temp32 = alloca i32, align 4
  %temp16 = alloca i16, align 2
  store %struct.RTPpacket_t* %p, %struct.RTPpacket_t** %p.addr, align 8
  %0 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %v = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %0, i32 0, i32 0
  %1 = load i32, i32* %v, align 4
  %and = and i32 %1, 3
  %shl = shl i32 %and, 6
  %2 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %p1 = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %2, i32 0, i32 1
  %3 = load i32, i32* %p1, align 4
  %and2 = and i32 %3, 1
  %shl3 = shl i32 %and2, 5
  %or = or i32 %shl, %shl3
  %4 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %x = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %4, i32 0, i32 2
  %5 = load i32, i32* %x, align 4
  %and4 = and i32 %5, 1
  %shl5 = shl i32 %and4, 4
  %or6 = or i32 %or, %shl5
  %6 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %cc = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %6, i32 0, i32 3
  %7 = load i32, i32* %cc, align 4
  %and7 = and i32 %7, 15
  %shl8 = shl i32 %and7, 0
  %or9 = or i32 %or6, %shl8
  %conv = trunc i32 %or9 to i8
  %8 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %packet = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %8, i32 0, i32 11
  %9 = load i8*, i8** %packet, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 0
  store i8 %conv, i8* %arrayidx, align 1
  %10 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %m = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %10, i32 0, i32 4
  %11 = load i32, i32* %m, align 4
  %and10 = and i32 %11, 1
  %shl11 = shl i32 %and10, 7
  %12 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %pt = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %12, i32 0, i32 5
  %13 = load i32, i32* %pt, align 4
  %and12 = and i32 %13, 127
  %shl13 = shl i32 %and12, 0
  %or14 = or i32 %shl11, %shl13
  %conv15 = trunc i32 %or14 to i8
  %14 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %packet16 = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %14, i32 0, i32 11
  %15 = load i8*, i8** %packet16, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %15, i64 1
  store i8 %conv15, i8* %arrayidx17, align 1
  %16 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %seq = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %16, i32 0, i32 6
  %17 = load i32, i32* %seq, align 4
  %conv18 = trunc i32 %17 to i16
  %call = call zeroext i16 @htons(i16 zeroext %conv18) #6
  store i16 %call, i16* %temp16, align 2
  %18 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %packet19 = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %18, i32 0, i32 11
  %19 = load i8*, i8** %packet19, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %19, i64 2
  %20 = bitcast i16* %temp16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx20, i8* %20, i64 2, i32 1, i1 false)
  %21 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %timestamp = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %21, i32 0, i32 7
  %22 = load i32, i32* %timestamp, align 4
  %call21 = call i32 @htonl(i32 %22) #6
  store i32 %call21, i32* %temp32, align 4
  %23 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %packet22 = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %23, i32 0, i32 11
  %24 = load i8*, i8** %packet22, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %24, i64 4
  %25 = bitcast i32* %temp32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx23, i8* %25, i64 4, i32 1, i1 false)
  %26 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %ssrc = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %26, i32 0, i32 8
  %27 = load i32, i32* %ssrc, align 4
  %call24 = call i32 @htonl(i32 %27) #6
  store i32 %call24, i32* %temp32, align 4
  %28 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %packet25 = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %28, i32 0, i32 11
  %29 = load i8*, i8** %packet25, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %29, i64 8
  %30 = bitcast i32* %temp32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx26, i8* %30, i64 4, i32 1, i1 false)
  %31 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %packet27 = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %31, i32 0, i32 11
  %32 = load i8*, i8** %packet27, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %32, i64 12
  %33 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %payload = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %33, i32 0, i32 9
  %34 = load i8*, i8** %payload, align 8
  %35 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %paylen = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %35, i32 0, i32 10
  %36 = load i32, i32* %paylen, align 4
  %conv29 = zext i32 %36 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx28, i8* %34, i64 %conv29, i32 1, i1 false)
  %37 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %paylen30 = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %37, i32 0, i32 10
  %38 = load i32, i32* %paylen30, align 4
  %add = add i32 %38, 12
  %39 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %packlen = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %39, i32 0, i32 12
  store i32 %add, i32* %packlen, align 4
  ret i32 0
}

; Function Attrs: nounwind readnone
declare zeroext i16 @htons(i16 zeroext) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind readnone
declare i32 @htonl(i32) #1

; Function Attrs: nounwind uwtable
define i32 @WriteRTPPacket(%struct.RTPpacket_t* %p, %struct._IO_FILE* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.RTPpacket_t*, align 8
  %f.addr = alloca %struct._IO_FILE*, align 8
  %intime = alloca i32, align 4
  store %struct.RTPpacket_t* %p, %struct.RTPpacket_t** %p.addr, align 8
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store i32 -1, i32* %intime, align 4
  %0 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %packlen = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %0, i32 0, i32 12
  %1 = bitcast i32* %packlen to i8*
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call = call i64 @fwrite(i8* %1, i64 4, i64 1, %struct._IO_FILE* %2)
  %cmp = icmp ne i64 1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = bitcast i32* %intime to i8*
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call1 = call i64 @fwrite(i8* %3, i64 4, i64 1, %struct._IO_FILE* %4)
  %cmp2 = icmp ne i64 1, %call1
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %5 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %packet = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %5, i32 0, i32 11
  %6 = load i8*, i8** %packet, align 8
  %7 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %packlen5 = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %7, i32 0, i32 12
  %8 = load i32, i32* %packlen5, align 4
  %conv = zext i32 %8 to i64
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call6 = call i64 @fwrite(i8* %6, i64 %conv, i64 1, %struct._IO_FILE* %9)
  %cmp7 = icmp ne i64 1, %call6
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.4
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.9, %if.then.3, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define i32 @WriteRTPNALU(%struct.NALU_t* %n) #0 {
entry:
  %n.addr = alloca %struct.NALU_t*, align 8
  %p = alloca %struct.RTPpacket_t*, align 8
  store %struct.NALU_t* %n, %struct.NALU_t** %n.addr, align 8
  %0 = load %struct.NALU_t*, %struct.NALU_t** %n.addr, align 8
  %forbidden_bit = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %0, i32 0, i32 5
  %1 = load i32, i32* %forbidden_bit, align 4
  %shl = shl i32 %1, 7
  %2 = load %struct.NALU_t*, %struct.NALU_t** %n.addr, align 8
  %nal_reference_idc = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %2, i32 0, i32 4
  %3 = load i32, i32* %nal_reference_idc, align 4
  %shl1 = shl i32 %3, 5
  %or = or i32 %shl, %shl1
  %4 = load %struct.NALU_t*, %struct.NALU_t** %n.addr, align 8
  %nal_unit_type = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %4, i32 0, i32 3
  %5 = load i32, i32* %nal_unit_type, align 4
  %or2 = or i32 %or, %5
  %conv = trunc i32 %or2 to i8
  %6 = load %struct.NALU_t*, %struct.NALU_t** %n.addr, align 8
  %buf = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %6, i32 0, i32 6
  %7 = load i8*, i8** %buf, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 0
  store i8 %conv, i8* %arrayidx, align 1
  %call = call noalias i8* @malloc(i64 72) #2
  %8 = bitcast i8* %call to %struct.RTPpacket_t*
  store %struct.RTPpacket_t* %8, %struct.RTPpacket_t** %p, align 8
  %cmp = icmp eq %struct.RTPpacket_t* %8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call4 = call noalias i8* @malloc(i64 65508) #2
  %9 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p, align 8
  %packet = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %9, i32 0, i32 11
  store i8* %call4, i8** %packet, align 8
  %cmp5 = icmp eq i8* %call4, null
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end
  %call9 = call noalias i8* @malloc(i64 65508) #2
  %10 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p, align 8
  %payload = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %10, i32 0, i32 9
  store i8* %call9, i8** %payload, align 8
  %cmp10 = icmp eq i8* %call9, null
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.8
  call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end.8
  %11 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p, align 8
  %v = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %11, i32 0, i32 0
  store i32 2, i32* %v, align 4
  %12 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p, align 8
  %p14 = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %12, i32 0, i32 1
  store i32 0, i32* %p14, align 4
  %13 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p, align 8
  %x = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %13, i32 0, i32 2
  store i32 0, i32* %x, align 4
  %14 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p, align 8
  %cc = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %14, i32 0, i32 3
  store i32 0, i32* %cc, align 4
  %15 = load %struct.NALU_t*, %struct.NALU_t** %n.addr, align 8
  %startcodeprefix_len = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %15, i32 0, i32 0
  %16 = load i32, i32* %startcodeprefix_len, align 4
  %cmp15 = icmp eq i32 %16, 4
  %conv16 = zext i1 %cmp15 to i32
  %and = and i32 %conv16, 1
  %17 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p, align 8
  %m = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %17, i32 0, i32 4
  store i32 %and, i32* %m, align 4
  %18 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p, align 8
  %pt = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %18, i32 0, i32 5
  store i32 105, i32* %pt, align 4
  %19 = load i32, i32* @CurrentRTPSequenceNumber, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* @CurrentRTPSequenceNumber, align 4
  %20 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p, align 8
  %seq = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %20, i32 0, i32 6
  store i32 %19, i32* %seq, align 4
  %21 = load i32, i32* @CurrentRTPTimestamp, align 4
  %22 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p, align 8
  %timestamp = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %22, i32 0, i32 7
  store i32 %21, i32* %timestamp, align 4
  %23 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p, align 8
  %ssrc = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %23, i32 0, i32 8
  store i32 305419896, i32* %ssrc, align 4
  %24 = load %struct.NALU_t*, %struct.NALU_t** %n.addr, align 8
  %len = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %24, i32 0, i32 1
  %25 = load i32, i32* %len, align 4
  %26 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p, align 8
  %paylen = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %26, i32 0, i32 10
  store i32 %25, i32* %paylen, align 4
  %27 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p, align 8
  %payload17 = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %27, i32 0, i32 9
  %28 = load i8*, i8** %payload17, align 8
  %29 = load %struct.NALU_t*, %struct.NALU_t** %n.addr, align 8
  %buf18 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %29, i32 0, i32 6
  %30 = load i8*, i8** %buf18, align 8
  %31 = load %struct.NALU_t*, %struct.NALU_t** %n.addr, align 8
  %len19 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %31, i32 0, i32 1
  %32 = load i32, i32* %len19, align 4
  %conv20 = zext i32 %32 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %30, i64 %conv20, i32 1, i1 false)
  %33 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p, align 8
  %call21 = call i32 @ComposeRTPPacket(%struct.RTPpacket_t* %33)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.end.13
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0))
  call void @exit(i32 -1) #7
  unreachable

if.end.26:                                        ; preds = %if.end.13
  %34 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p, align 8
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @f, align 8
  %call27 = call i32 @WriteRTPPacket(%struct.RTPpacket_t* %34, %struct._IO_FILE* %35)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.end.26
  %36 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p, align 8
  %packlen = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %36, i32 0, i32 12
  %37 = load i32, i32* %packlen, align 4
  %call31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i32 0, i32 0), i32 %37)
  call void @exit(i32 -1) #7
  unreachable

if.end.32:                                        ; preds = %if.end.26
  %38 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p, align 8
  %packet33 = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %38, i32 0, i32 11
  %39 = load i8*, i8** %packet33, align 8
  call void @free(i8* %39) #2
  %40 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p, align 8
  %payload34 = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %40, i32 0, i32 9
  %41 = load i8*, i8** %payload34, align 8
  call void @free(i8* %41) #2
  %42 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p, align 8
  %43 = bitcast %struct.RTPpacket_t* %42 to i8*
  call void @free(i8* %43) #2
  %44 = load %struct.NALU_t*, %struct.NALU_t** %n.addr, align 8
  %len35 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %44, i32 0, i32 1
  %45 = load i32, i32* %len35, align 4
  %mul = mul i32 %45, 8
  ret i32 %mul
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #4

declare void @no_mem_exit(i8*) #3

declare i32 @printf(i8*, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind uwtable
define void @RTPUpdateTimestamp(i32 %tr) #0 {
entry:
  %tr.addr = alloca i32, align 4
  %delta = alloca i32, align 4
  store i32 %tr, i32* %tr.addr, align 4
  %0 = load i32, i32* @RTPUpdateTimestamp.oldtr, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* @CurrentRTPTimestamp, align 4
  store i32 0, i32* @RTPUpdateTimestamp.oldtr, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %tr.addr, align 4
  %2 = load i32, i32* @RTPUpdateTimestamp.oldtr, align 4
  %sub = sub nsw i32 %1, %2
  store i32 %sub, i32* %delta, align 4
  %3 = load i32, i32* %delta, align 4
  %cmp1 = icmp slt i32 %3, -10
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %4 = load i32, i32* %delta, align 4
  %add = add nsw i32 %4, 256
  store i32 %add, i32* %delta, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %5 = load i32, i32* %delta, align 4
  %mul = mul nsw i32 %5, 1000
  %6 = load i32, i32* @CurrentRTPTimestamp, align 4
  %add4 = add nsw i32 %6, %mul
  store i32 %add4, i32* @CurrentRTPTimestamp, align 4
  %7 = load i32, i32* %tr.addr, align 4
  store i32 %7, i32* @RTPUpdateTimestamp.oldtr, align 4
  br label %return

return:                                           ; preds = %if.end.3, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @OpenRTPFile(i8* %Filename) #0 {
entry:
  %Filename.addr = alloca i8*, align 8
  store i8* %Filename, i8** %Filename.addr, align 8
  %0 = load i8*, i8** %Filename.addr, align 8
  %call = call %struct._IO_FILE* @fopen64(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** @f, align 8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %Filename.addr, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i32 0, i32 0), i8* %1)
  call void @exit(i32 -1) #7
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

declare %struct._IO_FILE* @fopen64(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define void @CloseRTPFile() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @f, align 8
  %call = call i32 @fclose(%struct._IO_FILE* %0)
  ret void
}

declare i32 @fclose(%struct._IO_FILE*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
