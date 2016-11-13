; ModuleID = './t2.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.opj_t2 = type { %struct.opj_image*, %struct.opj_cp* }
%struct.opj_image = type { i32, i32, i32, i32, i32, i32, %struct.opj_image_comp*, i8*, i32 }
%struct.opj_image_comp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i16 }
%struct.opj_cp = type { i32, i32, i32, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i8*, i8*, i32, i32, i32, %struct.opj_tcp*, %union.anon, i8 }
%struct.opj_tcp = type { i32, i32, i32, i32, i32, [100 x float], i32, [32 x %struct.opj_poc], i8*, i8*, i32, i32, [100 x float], %struct.opj_tccp*, i32, i8*, i32, double*, float*, float*, %struct.opj_mct_data*, i32, i32, %struct.opj_simple_mcc_decorrelation_data*, i32, i32, i8 }
%struct.opj_poc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.opj_tccp = type { i32, i32, i32, i32, i32, i32, i32, [97 x %struct.opj_stepsize], i32, i32, [33 x i32], [33 x i32], i32 }
%struct.opj_stepsize = type { i32, i32 }
%struct.opj_mct_data = type { i32, i32, i32, i8*, i32 }
%struct.opj_simple_mcc_decorrelation_data = type { i32, i32, %struct.opj_mct_data*, %struct.opj_mct_data*, i8 }
%union.anon = type { %struct.opj_encoding_param }
%struct.opj_encoding_param = type { i32, i32, i32, i32*, i8, i8 }
%struct.opj_tcd_tile = type { i32, i32, i32, i32, i32, %struct.opj_tcd_tilecomp*, i32, double, [100 x double], i32 }
%struct.opj_tcd_tilecomp = type { i32, i32, i32, i32, i32, i32, %struct.opj_tcd_resolution*, i32, i32*, i32, i32 }
%struct.opj_tcd_resolution = type { i32, i32, i32, i32, i32, i32, i32, [3 x %struct.opj_tcd_band] }
%struct.opj_tcd_band = type { i32, i32, i32, i32, i32, %struct.opj_tcd_precinct*, i32, i32, float }
%struct.opj_tcd_precinct = type { i32, i32, i32, i32, i32, i32, %union.anon.0, i32, %struct.opj_tgt_tree*, %struct.opj_tgt_tree* }
%union.anon.0 = type { %struct.opj_tcd_cblk_enc* }
%struct.opj_tcd_cblk_enc = type { i8*, %struct.opj_tcd_layer*, %struct.opj_tcd_pass*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.opj_tcd_layer = type { i32, i32, double, i8* }
%struct.opj_tcd_pass = type { i32, double, i32, i8 }
%struct.opj_tgt_tree = type { i32, i32, i32, %struct.opj_tgt_node*, i32 }
%struct.opj_tgt_node = type { %struct.opj_tgt_node*, i32, i32, i32 }
%struct.opj_codestream_info = type { double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, %struct.opj_marker_info*, i32, i32, i32, i32, %struct.opj_tile_info* }
%struct.opj_marker_info = type { i16, i64, i32 }
%struct.opj_tile_info = type { double*, i32, i32, i32, i32, [33 x i32], [33 x i32], [33 x i32], [33 x i32], %struct.opj_packet_info*, i32, double, i32, %struct.opj_marker_info*, i32, i32, %struct.opj_tp_info* }
%struct.opj_packet_info = type { i64, i64, i64, double }
%struct.opj_tp_info = type { i32, i32, i32, i32, i32 }
%struct.opj_pi_iterator = type { i8, i16*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.opj_poc, i32, %struct.opj_pi_comp*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.opj_pi_comp = type { i32, i32, i32, %struct.opj_pi_resolution* }
%struct.opj_pi_resolution = type { i32, i32, i32, i32 }
%struct.opj_bio = type { i8*, i8*, i8*, i32, i32 }
%struct.opj_codestream_index = type { i64, i64, i64, i32, %struct.opj_marker_info*, i32, i32, %struct.opj_tile_index* }
%struct.opj_tile_index = type { i32, i32, i32, i32, %struct.opj_tp_index*, i32, %struct.opj_marker_info*, i32, i32, %struct.opj_packet_info* }
%struct.opj_tp_index = type { i64, i64, i64 }
%struct.opj_tcd_cblk_dec = type { i8*, %struct.opj_tcd_seg*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.opj_tcd_seg = type { i8**, i32, i32, i32, i32, i32, i32, i32 }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [42 x i8] c"Not enough space for expected SOP marker\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Expected SOP marker\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Not enough space for expected EPH marker\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Error : expected EPH marker\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @opj_t2_encode_packets(%struct.opj_t2* %p_t2, i32 %p_tile_no, %struct.opj_tcd_tile* %p_tile, i32 %p_maxlayers, i8* %p_dest, i32* %p_data_written, i32 %p_max_len, %struct.opj_codestream_info* %cstr_info, i32 %p_tp_num, i32 %p_tp_pos, i32 %p_pino, i32 %p_t2_mode) #0 {
entry:
  %retval = alloca i32, align 4
  %p_t2.addr = alloca %struct.opj_t2*, align 8
  %p_tile_no.addr = alloca i32, align 4
  %p_tile.addr = alloca %struct.opj_tcd_tile*, align 8
  %p_maxlayers.addr = alloca i32, align 4
  %p_dest.addr = alloca i8*, align 8
  %p_data_written.addr = alloca i32*, align 8
  %p_max_len.addr = alloca i32, align 4
  %cstr_info.addr = alloca %struct.opj_codestream_info*, align 8
  %p_tp_num.addr = alloca i32, align 4
  %p_tp_pos.addr = alloca i32, align 4
  %p_pino.addr = alloca i32, align 4
  %p_t2_mode.addr = alloca i32, align 4
  %l_current_data = alloca i8*, align 8
  %l_nb_bytes = alloca i32, align 4
  %compno = alloca i32, align 4
  %poc = alloca i32, align 4
  %l_pi = alloca %struct.opj_pi_iterator*, align 8
  %l_current_pi = alloca %struct.opj_pi_iterator*, align 8
  %l_image = alloca %struct.opj_image*, align 8
  %l_cp = alloca %struct.opj_cp*, align 8
  %l_tcp = alloca %struct.opj_tcp*, align 8
  %pocno = alloca i32, align 4
  %l_max_comp = alloca i32, align 4
  %l_nb_pocs = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %l_comp_len = alloca i32, align 4
  %l_tp_num = alloca i32, align 4
  %info_TL = alloca %struct.opj_tile_info*, align 8
  %info_PK = alloca %struct.opj_packet_info*, align 8
  store %struct.opj_t2* %p_t2, %struct.opj_t2** %p_t2.addr, align 8, !tbaa !1
  store i32 %p_tile_no, i32* %p_tile_no.addr, align 4, !tbaa !5
  store %struct.opj_tcd_tile* %p_tile, %struct.opj_tcd_tile** %p_tile.addr, align 8, !tbaa !1
  store i32 %p_maxlayers, i32* %p_maxlayers.addr, align 4, !tbaa !5
  store i8* %p_dest, i8** %p_dest.addr, align 8, !tbaa !1
  store i32* %p_data_written, i32** %p_data_written.addr, align 8, !tbaa !1
  store i32 %p_max_len, i32* %p_max_len.addr, align 4, !tbaa !5
  store %struct.opj_codestream_info* %cstr_info, %struct.opj_codestream_info** %cstr_info.addr, align 8, !tbaa !1
  store i32 %p_tp_num, i32* %p_tp_num.addr, align 4, !tbaa !5
  store i32 %p_tp_pos, i32* %p_tp_pos.addr, align 4, !tbaa !5
  store i32 %p_pino, i32* %p_pino.addr, align 4, !tbaa !5
  store i32 %p_t2_mode, i32* %p_t2_mode.addr, align 4, !tbaa !7
  %0 = bitcast i8** %l_current_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %p_dest.addr, align 8, !tbaa !1
  store i8* %1, i8** %l_current_data, align 8, !tbaa !1
  %2 = bitcast i32* %l_nb_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %l_nb_bytes, align 4, !tbaa !5
  %3 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %poc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast %struct.opj_pi_iterator** %l_pi to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store %struct.opj_pi_iterator* null, %struct.opj_pi_iterator** %l_pi, align 8, !tbaa !1
  %6 = bitcast %struct.opj_pi_iterator** %l_current_pi to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store %struct.opj_pi_iterator* null, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !1
  %7 = bitcast %struct.opj_image** %l_image to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.opj_t2*, %struct.opj_t2** %p_t2.addr, align 8, !tbaa !1
  %image = getelementptr inbounds %struct.opj_t2, %struct.opj_t2* %8, i32 0, i32 0
  %9 = load %struct.opj_image*, %struct.opj_image** %image, align 8, !tbaa !8
  store %struct.opj_image* %9, %struct.opj_image** %l_image, align 8, !tbaa !1
  %10 = bitcast %struct.opj_cp** %l_cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.opj_t2*, %struct.opj_t2** %p_t2.addr, align 8, !tbaa !1
  %cp = getelementptr inbounds %struct.opj_t2, %struct.opj_t2* %11, i32 0, i32 1
  %12 = load %struct.opj_cp*, %struct.opj_cp** %cp, align 8, !tbaa !10
  store %struct.opj_cp* %12, %struct.opj_cp** %l_cp, align 8, !tbaa !1
  %13 = bitcast %struct.opj_tcp** %l_tcp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load i32, i32* %p_tile_no.addr, align 4, !tbaa !5
  %idxprom = zext i32 %14 to i64
  %15 = load %struct.opj_cp*, %struct.opj_cp** %l_cp, align 8, !tbaa !1
  %tcps = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %15, i32 0, i32 17
  %16 = load %struct.opj_tcp*, %struct.opj_tcp** %tcps, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %16, i64 %idxprom
  store %struct.opj_tcp* %arrayidx, %struct.opj_tcp** %l_tcp, align 8, !tbaa !1
  %17 = bitcast i32* %pocno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load %struct.opj_cp*, %struct.opj_cp** %l_cp, align 8, !tbaa !1
  %m_specific_param = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %18, i32 0, i32 18
  %m_enc = bitcast %union.anon* %m_specific_param to %struct.opj_encoding_param*
  %m_cinema = getelementptr inbounds %struct.opj_encoding_param, %struct.opj_encoding_param* %m_enc, i32 0, i32 0
  %19 = load i32, i32* %m_cinema, align 4, !tbaa !13
  %cmp = icmp eq i32 %19, 3
  %cond = select i1 %cmp, i32 2, i32 1
  store i32 %cond, i32* %pocno, align 4, !tbaa !5
  %20 = bitcast i32* %l_max_comp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = load %struct.opj_cp*, %struct.opj_cp** %l_cp, align 8, !tbaa !1
  %m_specific_param1 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %21, i32 0, i32 18
  %m_enc2 = bitcast %union.anon* %m_specific_param1 to %struct.opj_encoding_param*
  %m_max_comp_size = getelementptr inbounds %struct.opj_encoding_param, %struct.opj_encoding_param* %m_enc2, i32 0, i32 1
  %22 = load i32, i32* %m_max_comp_size, align 4, !tbaa !15
  %cmp3 = icmp ugt i32 %22, 0
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %23 = load %struct.opj_image*, %struct.opj_image** %l_image, align 8, !tbaa !1
  %numcomps = getelementptr inbounds %struct.opj_image, %struct.opj_image* %23, i32 0, i32 4
  %24 = load i32, i32* %numcomps, align 4, !tbaa !16
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond4 = phi i32 [ %24, %cond.true ], [ 1, %cond.false ]
  store i32 %cond4, i32* %l_max_comp, align 4, !tbaa !5
  %25 = bitcast i32* %l_nb_pocs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  %26 = load %struct.opj_tcp*, %struct.opj_tcp** %l_tcp, align 8, !tbaa !1
  %numpocs = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %26, i32 0, i32 6
  %27 = load i32, i32* %numpocs, align 4, !tbaa !18
  %add = add i32 %27, 1
  store i32 %add, i32* %l_nb_pocs, align 4, !tbaa !5
  %28 = load %struct.opj_image*, %struct.opj_image** %l_image, align 8, !tbaa !1
  %29 = load %struct.opj_cp*, %struct.opj_cp** %l_cp, align 8, !tbaa !1
  %30 = load i32, i32* %p_tile_no.addr, align 4, !tbaa !5
  %31 = load i32, i32* %p_t2_mode.addr, align 4, !tbaa !7
  %call = call %struct.opj_pi_iterator* @opj_pi_initialise_encode(%struct.opj_image* %28, %struct.opj_cp* %29, i32 %30, i32 %31) #5
  store %struct.opj_pi_iterator* %call, %struct.opj_pi_iterator** %l_pi, align 8, !tbaa !1
  %32 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_pi, align 8, !tbaa !1
  %tobool = icmp ne %struct.opj_pi_iterator* %32, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.109

if.end:                                           ; preds = %cond.end
  %33 = load i32*, i32** %p_data_written.addr, align 8, !tbaa !1
  store i32 0, i32* %33, align 4, !tbaa !5
  %34 = load i32, i32* %p_t2_mode.addr, align 4, !tbaa !7
  %cmp5 = icmp eq i32 %34, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %35 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_pi, align 8, !tbaa !1
  store %struct.opj_pi_iterator* %35, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !1
  store i32 0, i32* %compno, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.37, %if.then.6
  %36 = load i32, i32* %compno, align 4, !tbaa !5
  %37 = load i32, i32* %l_max_comp, align 4, !tbaa !5
  %cmp7 = icmp ult i32 %36, %37
  br i1 %cmp7, label %for.body, label %for.end.39

for.body:                                         ; preds = %for.cond
  %38 = bitcast i32* %l_comp_len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #1
  store i32 0, i32* %l_comp_len, align 4, !tbaa !5
  %39 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_pi, align 8, !tbaa !1
  store %struct.opj_pi_iterator* %39, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !1
  store i32 0, i32* %poc, align 4, !tbaa !5
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %for.body
  %40 = load i32, i32* %poc, align 4, !tbaa !5
  %41 = load i32, i32* %pocno, align 4, !tbaa !5
  %cmp9 = icmp ult i32 %40, %41
  br i1 %cmp9, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.8
  %42 = bitcast i32* %l_tp_num to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #1
  %43 = load i32, i32* %compno, align 4, !tbaa !5
  store i32 %43, i32* %l_tp_num, align 4, !tbaa !5
  %44 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_pi, align 8, !tbaa !1
  %45 = load %struct.opj_cp*, %struct.opj_cp** %l_cp, align 8, !tbaa !1
  %46 = load i32, i32* %p_tile_no.addr, align 4, !tbaa !5
  %47 = load i32, i32* %poc, align 4, !tbaa !5
  %48 = load i32, i32* %l_tp_num, align 4, !tbaa !5
  %49 = load i32, i32* %p_tp_pos.addr, align 4, !tbaa !5
  %50 = load i32, i32* %p_t2_mode.addr, align 4, !tbaa !7
  call void @opj_pi_create_encode(%struct.opj_pi_iterator* %44, %struct.opj_cp* %45, i32 %46, i32 %47, i32 %48, i32 %49, i32 %50) #5
  br label %while.cond

while.cond:                                       ; preds = %if.end.21, %for.body.10
  %51 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !1
  %call11 = call i32 @opj_pi_next(%struct.opj_pi_iterator* %51) #5
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %52 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !1
  %layno = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %52, i32 0, i32 9
  %53 = load i32, i32* %layno, align 4, !tbaa !20
  %54 = load i32, i32* %p_maxlayers.addr, align 4, !tbaa !5
  %cmp13 = icmp ult i32 %53, %54
  br i1 %cmp13, label %if.then.14, label %if.end.21

if.then.14:                                       ; preds = %while.body
  store i32 0, i32* %l_nb_bytes, align 4, !tbaa !5
  %55 = load i32, i32* %p_tile_no.addr, align 4, !tbaa !5
  %56 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %p_tile.addr, align 8, !tbaa !1
  %57 = load %struct.opj_tcp*, %struct.opj_tcp** %l_tcp, align 8, !tbaa !1
  %58 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !1
  %59 = load i8*, i8** %l_current_data, align 8, !tbaa !1
  %60 = load i32, i32* %p_max_len.addr, align 4, !tbaa !5
  %61 = load %struct.opj_codestream_info*, %struct.opj_codestream_info** %cstr_info.addr, align 8, !tbaa !1
  %call15 = call i32 @opj_t2_encode_packet(i32 %55, %struct.opj_tcd_tile* %56, %struct.opj_tcp* %57, %struct.opj_pi_iterator* %58, i8* %59, i32* %l_nb_bytes, i32 %60, %struct.opj_codestream_info* %61) #5
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %if.then.14
  %62 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_pi, align 8, !tbaa !1
  %63 = load i32, i32* %l_nb_pocs, align 4, !tbaa !5
  call void @opj_pi_destroy(%struct.opj_pi_iterator* %62, i32 %63) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.then.14
  %64 = load i32, i32* %l_nb_bytes, align 4, !tbaa !5
  %65 = load i32, i32* %l_comp_len, align 4, !tbaa !5
  %add19 = add i32 %65, %64
  store i32 %add19, i32* %l_comp_len, align 4, !tbaa !5
  %66 = load i32, i32* %l_nb_bytes, align 4, !tbaa !5
  %67 = load i8*, i8** %l_current_data, align 8, !tbaa !1
  %idx.ext = zext i32 %66 to i64
  %add.ptr = getelementptr inbounds i8, i8* %67, i64 %idx.ext
  store i8* %add.ptr, i8** %l_current_data, align 8, !tbaa !1
  %68 = load i32, i32* %l_nb_bytes, align 4, !tbaa !5
  %69 = load i32, i32* %p_max_len.addr, align 4, !tbaa !5
  %sub = sub i32 %69, %68
  store i32 %sub, i32* %p_max_len.addr, align 4, !tbaa !5
  %70 = load i32, i32* %l_nb_bytes, align 4, !tbaa !5
  %71 = load i32*, i32** %p_data_written.addr, align 8, !tbaa !1
  %72 = load i32, i32* %71, align 4, !tbaa !5
  %add20 = add i32 %72, %70
  store i32 %add20, i32* %71, align 4, !tbaa !5
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.18, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %73 = load %struct.opj_cp*, %struct.opj_cp** %l_cp, align 8, !tbaa !1
  %m_specific_param22 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %73, i32 0, i32 18
  %m_enc23 = bitcast %union.anon* %m_specific_param22 to %struct.opj_encoding_param*
  %m_max_comp_size24 = getelementptr inbounds %struct.opj_encoding_param, %struct.opj_encoding_param* %m_enc23, i32 0, i32 1
  %74 = load i32, i32* %m_max_comp_size24, align 4, !tbaa !15
  %tobool25 = icmp ne i32 %74, 0
  br i1 %tobool25, label %if.then.26, label %if.end.33

if.then.26:                                       ; preds = %while.end
  %75 = load i32, i32* %l_comp_len, align 4, !tbaa !5
  %76 = load %struct.opj_cp*, %struct.opj_cp** %l_cp, align 8, !tbaa !1
  %m_specific_param27 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %76, i32 0, i32 18
  %m_enc28 = bitcast %union.anon* %m_specific_param27 to %struct.opj_encoding_param*
  %m_max_comp_size29 = getelementptr inbounds %struct.opj_encoding_param, %struct.opj_encoding_param* %m_enc28, i32 0, i32 1
  %77 = load i32, i32* %m_max_comp_size29, align 4, !tbaa !15
  %cmp30 = icmp ugt i32 %75, %77
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.then.26
  %78 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_pi, align 8, !tbaa !1
  %79 = load i32, i32* %l_nb_pocs, align 4, !tbaa !5
  call void @opj_pi_destroy(%struct.opj_pi_iterator* %78, i32 %79) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.32:                                        ; preds = %if.then.26
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %while.end
  %80 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %80, i32 1
  store %struct.opj_pi_iterator* %incdec.ptr, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.33, %if.then.31, %if.then.17
  %81 = bitcast i32* %l_tp_num to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.34 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %82 = load i32, i32* %poc, align 4, !tbaa !5
  %inc = add i32 %82, 1
  store i32 %inc, i32* %poc, align 4, !tbaa !5
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.34

cleanup.34:                                       ; preds = %for.end, %cleanup
  %83 = bitcast i32* %l_comp_len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  %cleanup.dest.35 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.35, label %cleanup.109 [
    i32 0, label %cleanup.cont.36
  ]

cleanup.cont.36:                                  ; preds = %cleanup.34
  br label %for.inc.37

for.inc.37:                                       ; preds = %cleanup.cont.36
  %84 = load i32, i32* %compno, align 4, !tbaa !5
  %inc38 = add i32 %84, 1
  store i32 %inc38, i32* %compno, align 4, !tbaa !5
  br label %for.cond

for.end.39:                                       ; preds = %for.cond
  br label %if.end.108

if.else:                                          ; preds = %if.end
  %85 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_pi, align 8, !tbaa !1
  %86 = load %struct.opj_cp*, %struct.opj_cp** %l_cp, align 8, !tbaa !1
  %87 = load i32, i32* %p_tile_no.addr, align 4, !tbaa !5
  %88 = load i32, i32* %p_pino.addr, align 4, !tbaa !5
  %89 = load i32, i32* %p_tp_num.addr, align 4, !tbaa !5
  %90 = load i32, i32* %p_tp_pos.addr, align 4, !tbaa !5
  %91 = load i32, i32* %p_t2_mode.addr, align 4, !tbaa !7
  call void @opj_pi_create_encode(%struct.opj_pi_iterator* %85, %struct.opj_cp* %86, i32 %87, i32 %88, i32 %89, i32 %90, i32 %91) #5
  %92 = load i32, i32* %p_pino.addr, align 4, !tbaa !5
  %idxprom40 = zext i32 %92 to i64
  %93 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_pi, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %93, i64 %idxprom40
  store %struct.opj_pi_iterator* %arrayidx41, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !1
  br label %while.cond.42

while.cond.42:                                    ; preds = %if.end.106, %if.else
  %94 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !1
  %call43 = call i32 @opj_pi_next(%struct.opj_pi_iterator* %94) #5
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %while.body.45, label %while.end.107

while.body.45:                                    ; preds = %while.cond.42
  %95 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !1
  %layno46 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %95, i32 0, i32 9
  %96 = load i32, i32* %layno46, align 4, !tbaa !20
  %97 = load i32, i32* %p_maxlayers.addr, align 4, !tbaa !5
  %cmp47 = icmp ult i32 %96, %97
  br i1 %cmp47, label %if.then.48, label %if.end.106

if.then.48:                                       ; preds = %while.body.45
  store i32 0, i32* %l_nb_bytes, align 4, !tbaa !5
  %98 = load i32, i32* %p_tile_no.addr, align 4, !tbaa !5
  %99 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %p_tile.addr, align 8, !tbaa !1
  %100 = load %struct.opj_tcp*, %struct.opj_tcp** %l_tcp, align 8, !tbaa !1
  %101 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !1
  %102 = load i8*, i8** %l_current_data, align 8, !tbaa !1
  %103 = load i32, i32* %p_max_len.addr, align 4, !tbaa !5
  %104 = load %struct.opj_codestream_info*, %struct.opj_codestream_info** %cstr_info.addr, align 8, !tbaa !1
  %call49 = call i32 @opj_t2_encode_packet(i32 %98, %struct.opj_tcd_tile* %99, %struct.opj_tcp* %100, %struct.opj_pi_iterator* %101, i8* %102, i32* %l_nb_bytes, i32 %103, %struct.opj_codestream_info* %104) #5
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.end.52, label %if.then.51

if.then.51:                                       ; preds = %if.then.48
  %105 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_pi, align 8, !tbaa !1
  %106 = load i32, i32* %l_nb_pocs, align 4, !tbaa !5
  call void @opj_pi_destroy(%struct.opj_pi_iterator* %105, i32 %106) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.109

if.end.52:                                        ; preds = %if.then.48
  %107 = load i32, i32* %l_nb_bytes, align 4, !tbaa !5
  %108 = load i8*, i8** %l_current_data, align 8, !tbaa !1
  %idx.ext53 = zext i32 %107 to i64
  %add.ptr54 = getelementptr inbounds i8, i8* %108, i64 %idx.ext53
  store i8* %add.ptr54, i8** %l_current_data, align 8, !tbaa !1
  %109 = load i32, i32* %l_nb_bytes, align 4, !tbaa !5
  %110 = load i32, i32* %p_max_len.addr, align 4, !tbaa !5
  %sub55 = sub i32 %110, %109
  store i32 %sub55, i32* %p_max_len.addr, align 4, !tbaa !5
  %111 = load i32, i32* %l_nb_bytes, align 4, !tbaa !5
  %112 = load i32*, i32** %p_data_written.addr, align 8, !tbaa !1
  %113 = load i32, i32* %112, align 4, !tbaa !5
  %add56 = add i32 %113, %111
  store i32 %add56, i32* %112, align 4, !tbaa !5
  %114 = load %struct.opj_codestream_info*, %struct.opj_codestream_info** %cstr_info.addr, align 8, !tbaa !1
  %tobool57 = icmp ne %struct.opj_codestream_info* %114, null
  br i1 %tobool57, label %if.then.58, label %if.end.103

if.then.58:                                       ; preds = %if.end.52
  %115 = load %struct.opj_codestream_info*, %struct.opj_codestream_info** %cstr_info.addr, align 8, !tbaa !1
  %index_write = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %115, i32 0, i32 2
  %116 = load i32, i32* %index_write, align 4, !tbaa !23
  %tobool59 = icmp ne i32 %116, 0
  br i1 %tobool59, label %if.then.60, label %if.end.100

if.then.60:                                       ; preds = %if.then.58
  %117 = bitcast %struct.opj_tile_info** %info_TL to i8*
  call void @llvm.lifetime.start(i64 8, i8* %117) #1
  %118 = load i32, i32* %p_tile_no.addr, align 4, !tbaa !5
  %idxprom61 = zext i32 %118 to i64
  %119 = load %struct.opj_codestream_info*, %struct.opj_codestream_info** %cstr_info.addr, align 8, !tbaa !1
  %tile = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %119, i32 0, i32 21
  %120 = load %struct.opj_tile_info*, %struct.opj_tile_info** %tile, align 8, !tbaa !26
  %arrayidx62 = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %120, i64 %idxprom61
  store %struct.opj_tile_info* %arrayidx62, %struct.opj_tile_info** %info_TL, align 8, !tbaa !1
  %121 = bitcast %struct.opj_packet_info** %info_PK to i8*
  call void @llvm.lifetime.start(i64 8, i8* %121) #1
  %122 = load %struct.opj_codestream_info*, %struct.opj_codestream_info** %cstr_info.addr, align 8, !tbaa !1
  %packno = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %122, i32 0, i32 1
  %123 = load i32, i32* %packno, align 4, !tbaa !27
  %idxprom63 = sext i32 %123 to i64
  %124 = load %struct.opj_tile_info*, %struct.opj_tile_info** %info_TL, align 8, !tbaa !1
  %packet = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %124, i32 0, i32 9
  %125 = load %struct.opj_packet_info*, %struct.opj_packet_info** %packet, align 8, !tbaa !28
  %arrayidx64 = getelementptr inbounds %struct.opj_packet_info, %struct.opj_packet_info* %125, i64 %idxprom63
  store %struct.opj_packet_info* %arrayidx64, %struct.opj_packet_info** %info_PK, align 8, !tbaa !1
  %126 = load %struct.opj_codestream_info*, %struct.opj_codestream_info** %cstr_info.addr, align 8, !tbaa !1
  %packno65 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %126, i32 0, i32 1
  %127 = load i32, i32* %packno65, align 4, !tbaa !27
  %tobool66 = icmp ne i32 %127, 0
  br i1 %tobool66, label %if.else.69, label %if.then.67

if.then.67:                                       ; preds = %if.then.60
  %128 = load %struct.opj_tile_info*, %struct.opj_tile_info** %info_TL, align 8, !tbaa !1
  %end_header = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %128, i32 0, i32 3
  %129 = load i32, i32* %end_header, align 4, !tbaa !30
  %add68 = add nsw i32 %129, 1
  %conv = sext i32 %add68 to i64
  %130 = load %struct.opj_packet_info*, %struct.opj_packet_info** %info_PK, align 8, !tbaa !1
  %start_pos = getelementptr inbounds %struct.opj_packet_info, %struct.opj_packet_info* %130, i32 0, i32 0
  store i64 %conv, i64* %start_pos, align 8, !tbaa !31
  br label %if.end.91

if.else.69:                                       ; preds = %if.then.60
  %131 = load %struct.opj_cp*, %struct.opj_cp** %l_cp, align 8, !tbaa !1
  %m_specific_param70 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %131, i32 0, i32 18
  %m_enc71 = bitcast %union.anon* %m_specific_param70 to %struct.opj_encoding_param*
  %m_tp_on = getelementptr inbounds %struct.opj_encoding_param, %struct.opj_encoding_param* %m_enc71, i32 0, i32 5
  %bf.load = load i8, i8* %m_tp_on, align 1
  %bf.lshr = lshr i8 %bf.load, 3
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %132 = load %struct.opj_tcp*, %struct.opj_tcp** %l_tcp, align 8, !tbaa !1
  %POC = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %132, i32 0, i32 26
  %bf.load72 = load i8, i8* %POC, align 8
  %bf.lshr73 = lshr i8 %bf.load72, 1
  %bf.clear74 = and i8 %bf.lshr73, 1
  %bf.cast75 = zext i8 %bf.clear74 to i32
  %or = or i32 %bf.cast, %bf.cast75
  %tobool76 = icmp ne i32 %or, 0
  br i1 %tobool76, label %land.lhs.true, label %cond.false.81

land.lhs.true:                                    ; preds = %if.else.69
  %133 = load %struct.opj_packet_info*, %struct.opj_packet_info** %info_PK, align 8, !tbaa !1
  %start_pos77 = getelementptr inbounds %struct.opj_packet_info, %struct.opj_packet_info* %133, i32 0, i32 0
  %134 = load i64, i64* %start_pos77, align 8, !tbaa !31
  %tobool78 = icmp ne i64 %134, 0
  br i1 %tobool78, label %cond.true.79, label %cond.false.81

cond.true.79:                                     ; preds = %land.lhs.true
  %135 = load %struct.opj_packet_info*, %struct.opj_packet_info** %info_PK, align 8, !tbaa !1
  %start_pos80 = getelementptr inbounds %struct.opj_packet_info, %struct.opj_packet_info* %135, i32 0, i32 0
  %136 = load i64, i64* %start_pos80, align 8, !tbaa !31
  br label %cond.end.88

cond.false.81:                                    ; preds = %land.lhs.true, %if.else.69
  %137 = load %struct.opj_codestream_info*, %struct.opj_codestream_info** %cstr_info.addr, align 8, !tbaa !1
  %packno82 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %137, i32 0, i32 1
  %138 = load i32, i32* %packno82, align 4, !tbaa !27
  %sub83 = sub nsw i32 %138, 1
  %idxprom84 = sext i32 %sub83 to i64
  %139 = load %struct.opj_tile_info*, %struct.opj_tile_info** %info_TL, align 8, !tbaa !1
  %packet85 = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %139, i32 0, i32 9
  %140 = load %struct.opj_packet_info*, %struct.opj_packet_info** %packet85, align 8, !tbaa !28
  %arrayidx86 = getelementptr inbounds %struct.opj_packet_info, %struct.opj_packet_info* %140, i64 %idxprom84
  %end_pos = getelementptr inbounds %struct.opj_packet_info, %struct.opj_packet_info* %arrayidx86, i32 0, i32 2
  %141 = load i64, i64* %end_pos, align 8, !tbaa !34
  %add87 = add nsw i64 %141, 1
  br label %cond.end.88

cond.end.88:                                      ; preds = %cond.false.81, %cond.true.79
  %cond89 = phi i64 [ %136, %cond.true.79 ], [ %add87, %cond.false.81 ]
  %142 = load %struct.opj_packet_info*, %struct.opj_packet_info** %info_PK, align 8, !tbaa !1
  %start_pos90 = getelementptr inbounds %struct.opj_packet_info, %struct.opj_packet_info* %142, i32 0, i32 0
  store i64 %cond89, i64* %start_pos90, align 8, !tbaa !31
  br label %if.end.91

if.end.91:                                        ; preds = %cond.end.88, %if.then.67
  %143 = load %struct.opj_packet_info*, %struct.opj_packet_info** %info_PK, align 8, !tbaa !1
  %start_pos92 = getelementptr inbounds %struct.opj_packet_info, %struct.opj_packet_info* %143, i32 0, i32 0
  %144 = load i64, i64* %start_pos92, align 8, !tbaa !31
  %145 = load i32, i32* %l_nb_bytes, align 4, !tbaa !5
  %conv93 = zext i32 %145 to i64
  %add94 = add nsw i64 %144, %conv93
  %sub95 = sub nsw i64 %add94, 1
  %146 = load %struct.opj_packet_info*, %struct.opj_packet_info** %info_PK, align 8, !tbaa !1
  %end_pos96 = getelementptr inbounds %struct.opj_packet_info, %struct.opj_packet_info* %146, i32 0, i32 2
  store i64 %sub95, i64* %end_pos96, align 8, !tbaa !34
  %147 = load %struct.opj_packet_info*, %struct.opj_packet_info** %info_PK, align 8, !tbaa !1
  %start_pos97 = getelementptr inbounds %struct.opj_packet_info, %struct.opj_packet_info* %147, i32 0, i32 0
  %148 = load i64, i64* %start_pos97, align 8, !tbaa !31
  %sub98 = sub nsw i64 %148, 1
  %149 = load %struct.opj_packet_info*, %struct.opj_packet_info** %info_PK, align 8, !tbaa !1
  %end_ph_pos = getelementptr inbounds %struct.opj_packet_info, %struct.opj_packet_info* %149, i32 0, i32 1
  %150 = load i64, i64* %end_ph_pos, align 8, !tbaa !35
  %add99 = add nsw i64 %150, %sub98
  store i64 %add99, i64* %end_ph_pos, align 8, !tbaa !35
  %151 = bitcast %struct.opj_packet_info** %info_PK to i8*
  call void @llvm.lifetime.end(i64 8, i8* %151) #1
  %152 = bitcast %struct.opj_tile_info** %info_TL to i8*
  call void @llvm.lifetime.end(i64 8, i8* %152) #1
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.91, %if.then.58
  %153 = load %struct.opj_codestream_info*, %struct.opj_codestream_info** %cstr_info.addr, align 8, !tbaa !1
  %packno101 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %153, i32 0, i32 1
  %154 = load i32, i32* %packno101, align 4, !tbaa !27
  %inc102 = add nsw i32 %154, 1
  store i32 %inc102, i32* %packno101, align 4, !tbaa !27
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.100, %if.end.52
  %155 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %p_tile.addr, align 8, !tbaa !1
  %packno104 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %155, i32 0, i32 9
  %156 = load i32, i32* %packno104, align 4, !tbaa !36
  %inc105 = add i32 %156, 1
  store i32 %inc105, i32* %packno104, align 4, !tbaa !36
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.103, %while.body.45
  br label %while.cond.42

while.end.107:                                    ; preds = %while.cond.42
  br label %if.end.108

if.end.108:                                       ; preds = %while.end.107, %for.end.39
  %157 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_pi, align 8, !tbaa !1
  %158 = load i32, i32* %l_nb_pocs, align 4, !tbaa !5
  call void @opj_pi_destroy(%struct.opj_pi_iterator* %157, i32 %158) #5
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.109

cleanup.109:                                      ; preds = %if.end.108, %if.then.51, %cleanup.34, %if.then
  %159 = bitcast i32* %l_nb_pocs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %159) #1
  %160 = bitcast i32* %l_max_comp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %160) #1
  %161 = bitcast i32* %pocno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %161) #1
  %162 = bitcast %struct.opj_tcp** %l_tcp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %162) #1
  %163 = bitcast %struct.opj_cp** %l_cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %163) #1
  %164 = bitcast %struct.opj_image** %l_image to i8*
  call void @llvm.lifetime.end(i64 8, i8* %164) #1
  %165 = bitcast %struct.opj_pi_iterator** %l_current_pi to i8*
  call void @llvm.lifetime.end(i64 8, i8* %165) #1
  %166 = bitcast %struct.opj_pi_iterator** %l_pi to i8*
  call void @llvm.lifetime.end(i64 8, i8* %166) #1
  %167 = bitcast i32* %poc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %167) #1
  %168 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %168) #1
  %169 = bitcast i32* %l_nb_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #1
  %170 = bitcast i8** %l_current_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %170) #1
  %171 = load i32, i32* %retval
  ret i32 %171
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare %struct.opj_pi_iterator* @opj_pi_initialise_encode(%struct.opj_image*, %struct.opj_cp*, i32, i32) #2

declare void @opj_pi_create_encode(%struct.opj_pi_iterator*, %struct.opj_cp*, i32, i32, i32, i32, i32) #2

declare i32 @opj_pi_next(%struct.opj_pi_iterator*) #2

; Function Attrs: nounwind uwtable
define internal i32 @opj_t2_encode_packet(i32 %tileno, %struct.opj_tcd_tile* %tile, %struct.opj_tcp* %tcp, %struct.opj_pi_iterator* %pi, i8* %dest, i32* %p_data_written, i32 %length, %struct.opj_codestream_info* %cstr_info) #0 {
entry:
  %retval = alloca i32, align 4
  %tileno.addr = alloca i32, align 4
  %tile.addr = alloca %struct.opj_tcd_tile*, align 8
  %tcp.addr = alloca %struct.opj_tcp*, align 8
  %pi.addr = alloca %struct.opj_pi_iterator*, align 8
  %dest.addr = alloca i8*, align 8
  %p_data_written.addr = alloca i32*, align 8
  %length.addr = alloca i32, align 4
  %cstr_info.addr = alloca %struct.opj_codestream_info*, align 8
  %bandno = alloca i32, align 4
  %cblkno = alloca i32, align 4
  %c = alloca i8*, align 8
  %l_nb_bytes = alloca i32, align 4
  %compno = alloca i32, align 4
  %resno = alloca i32, align 4
  %precno = alloca i32, align 4
  %layno = alloca i32, align 4
  %l_nb_blocks = alloca i32, align 4
  %band = alloca %struct.opj_tcd_band*, align 8
  %cblk = alloca %struct.opj_tcd_cblk_enc*, align 8
  %pass = alloca %struct.opj_tcd_pass*, align 8
  %tilec = alloca %struct.opj_tcd_tilecomp*, align 8
  %res = alloca %struct.opj_tcd_resolution*, align 8
  %bio = alloca %struct.opj_bio*, align 8
  %prc = alloca %struct.opj_tcd_precinct*, align 8
  %prc42 = alloca %struct.opj_tcd_precinct*, align 8
  %layer = alloca %struct.opj_tcd_layer*, align 8
  %layer74 = alloca %struct.opj_tcd_layer*, align 8
  %increment = alloca i32, align 4
  %nump = alloca i32, align 4
  %len = alloca i32, align 4
  %passno = alloca i32, align 4
  %l_nb_passes = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %info_PK = alloca %struct.opj_packet_info*, align 8
  %prc216 = alloca %struct.opj_tcd_precinct*, align 8
  %layer229 = alloca %struct.opj_tcd_layer*, align 8
  %info_PK259 = alloca %struct.opj_packet_info*, align 8
  store i32 %tileno, i32* %tileno.addr, align 4, !tbaa !5
  store %struct.opj_tcd_tile* %tile, %struct.opj_tcd_tile** %tile.addr, align 8, !tbaa !1
  store %struct.opj_tcp* %tcp, %struct.opj_tcp** %tcp.addr, align 8, !tbaa !1
  store %struct.opj_pi_iterator* %pi, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !1
  store i8* %dest, i8** %dest.addr, align 8, !tbaa !1
  store i32* %p_data_written, i32** %p_data_written.addr, align 8, !tbaa !1
  store i32 %length, i32* %length.addr, align 4, !tbaa !5
  store %struct.opj_codestream_info* %cstr_info, %struct.opj_codestream_info** %cstr_info.addr, align 8, !tbaa !1
  %0 = bitcast i32* %bandno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %cblkno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i8** %c to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %dest.addr, align 8, !tbaa !1
  store i8* %3, i8** %c, align 8, !tbaa !1
  %4 = bitcast i32* %l_nb_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !1
  %compno1 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %6, i32 0, i32 6
  %7 = load i32, i32* %compno1, align 4, !tbaa !38
  store i32 %7, i32* %compno, align 4, !tbaa !5
  %8 = bitcast i32* %resno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !1
  %resno2 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %9, i32 0, i32 7
  %10 = load i32, i32* %resno2, align 4, !tbaa !39
  store i32 %10, i32* %resno, align 4, !tbaa !5
  %11 = bitcast i32* %precno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !1
  %precno3 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %12, i32 0, i32 8
  %13 = load i32, i32* %precno3, align 4, !tbaa !40
  store i32 %13, i32* %precno, align 4, !tbaa !5
  %14 = bitcast i32* %layno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !1
  %layno4 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %15, i32 0, i32 9
  %16 = load i32, i32* %layno4, align 4, !tbaa !20
  store i32 %16, i32* %layno, align 4, !tbaa !5
  %17 = bitcast i32* %l_nb_blocks to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast %struct.opj_tcd_band** %band to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  store %struct.opj_tcd_band* null, %struct.opj_tcd_band** %band, align 8, !tbaa !1
  %19 = bitcast %struct.opj_tcd_cblk_enc** %cblk to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  store %struct.opj_tcd_cblk_enc* null, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !1
  %20 = bitcast %struct.opj_tcd_pass** %pass to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  store %struct.opj_tcd_pass* null, %struct.opj_tcd_pass** %pass, align 8, !tbaa !1
  %21 = bitcast %struct.opj_tcd_tilecomp** %tilec to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = load i32, i32* %compno, align 4, !tbaa !5
  %idxprom = zext i32 %22 to i64
  %23 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tile.addr, align 8, !tbaa !1
  %comps = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %23, i32 0, i32 5
  %24 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %comps, align 8, !tbaa !41
  %arrayidx = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %24, i64 %idxprom
  store %struct.opj_tcd_tilecomp* %arrayidx, %struct.opj_tcd_tilecomp** %tilec, align 8, !tbaa !1
  %25 = bitcast %struct.opj_tcd_resolution** %res to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  %26 = load i32, i32* %resno, align 4, !tbaa !5
  %idxprom5 = zext i32 %26 to i64
  %27 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %tilec, align 8, !tbaa !1
  %resolutions = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %27, i32 0, i32 6
  %28 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %resolutions, align 8, !tbaa !42
  %arrayidx6 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %28, i64 %idxprom5
  store %struct.opj_tcd_resolution* %arrayidx6, %struct.opj_tcd_resolution** %res, align 8, !tbaa !1
  %29 = bitcast %struct.opj_bio** %bio to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  store %struct.opj_bio* null, %struct.opj_bio** %bio, align 8, !tbaa !1
  %30 = load %struct.opj_tcp*, %struct.opj_tcp** %tcp.addr, align 8, !tbaa !1
  %csty = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %30, i32 0, i32 0
  %31 = load i32, i32* %csty, align 4, !tbaa !44
  %and = and i32 %31, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %32 = load i8*, i8** %c, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8, i8* %32, i64 0
  store i8 -1, i8* %arrayidx7, align 1, !tbaa !7
  %33 = load i8*, i8** %c, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i8, i8* %33, i64 1
  store i8 -111, i8* %arrayidx8, align 1, !tbaa !7
  %34 = load i8*, i8** %c, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i8, i8* %34, i64 2
  store i8 0, i8* %arrayidx9, align 1, !tbaa !7
  %35 = load i8*, i8** %c, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i8, i8* %35, i64 3
  store i8 4, i8* %arrayidx10, align 1, !tbaa !7
  %36 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tile.addr, align 8, !tbaa !1
  %packno = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %36, i32 0, i32 9
  %37 = load i32, i32* %packno, align 4, !tbaa !36
  %rem = urem i32 %37, 65536
  %div = udiv i32 %rem, 256
  %conv = trunc i32 %div to i8
  %38 = load i8*, i8** %c, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %38, i64 4
  store i8 %conv, i8* %arrayidx11, align 1, !tbaa !7
  %39 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tile.addr, align 8, !tbaa !1
  %packno12 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %39, i32 0, i32 9
  %40 = load i32, i32* %packno12, align 4, !tbaa !36
  %rem13 = urem i32 %40, 65536
  %rem14 = urem i32 %rem13, 256
  %conv15 = trunc i32 %rem14 to i8
  %41 = load i8*, i8** %c, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i8, i8* %41, i64 5
  store i8 %conv15, i8* %arrayidx16, align 1, !tbaa !7
  %42 = load i8*, i8** %c, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %42, i64 6
  store i8* %add.ptr, i8** %c, align 8, !tbaa !1
  %43 = load i32, i32* %length.addr, align 4, !tbaa !5
  %sub = sub i32 %43, 6
  store i32 %sub, i32* %length.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %44 = load i32, i32* %layno, align 4, !tbaa !5
  %tobool17 = icmp ne i32 %44, 0
  br i1 %tobool17, label %if.end.34, label %if.then.18

if.then.18:                                       ; preds = %if.end
  %45 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %res, align 8, !tbaa !1
  %bands = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %45, i32 0, i32 7
  %arraydecay = getelementptr inbounds [3 x %struct.opj_tcd_band], [3 x %struct.opj_tcd_band]* %bands, i32 0, i32 0
  store %struct.opj_tcd_band* %arraydecay, %struct.opj_tcd_band** %band, align 8, !tbaa !1
  store i32 0, i32* %bandno, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.31, %if.then.18
  %46 = load i32, i32* %bandno, align 4, !tbaa !5
  %47 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %res, align 8, !tbaa !1
  %numbands = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %47, i32 0, i32 6
  %48 = load i32, i32* %numbands, align 4, !tbaa !45
  %cmp = icmp ult i32 %46, %48
  br i1 %cmp, label %for.body, label %for.end.33

for.body:                                         ; preds = %for.cond
  %49 = bitcast %struct.opj_tcd_precinct** %prc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %49) #1
  %50 = load i32, i32* %precno, align 4, !tbaa !5
  %idxprom20 = zext i32 %50 to i64
  %51 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %band, align 8, !tbaa !1
  %precincts = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %51, i32 0, i32 5
  %52 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %precincts, align 8, !tbaa !47
  %arrayidx21 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %52, i64 %idxprom20
  store %struct.opj_tcd_precinct* %arrayidx21, %struct.opj_tcd_precinct** %prc, align 8, !tbaa !1
  %53 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %prc, align 8, !tbaa !1
  %incltree = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %53, i32 0, i32 8
  %54 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %incltree, align 8, !tbaa !50
  call void @opj_tgt_reset(%struct.opj_tgt_tree* %54) #5
  %55 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %prc, align 8, !tbaa !1
  %imsbtree = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %55, i32 0, i32 9
  %56 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %imsbtree, align 8, !tbaa !52
  call void @opj_tgt_reset(%struct.opj_tgt_tree* %56) #5
  %57 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %prc, align 8, !tbaa !1
  %cw = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %57, i32 0, i32 4
  %58 = load i32, i32* %cw, align 4, !tbaa !53
  %59 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %prc, align 8, !tbaa !1
  %ch = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %59, i32 0, i32 5
  %60 = load i32, i32* %ch, align 4, !tbaa !54
  %mul = mul i32 %58, %60
  store i32 %mul, i32* %l_nb_blocks, align 4, !tbaa !5
  store i32 0, i32* %cblkno, align 4, !tbaa !5
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc, %for.body
  %61 = load i32, i32* %cblkno, align 4, !tbaa !5
  %62 = load i32, i32* %l_nb_blocks, align 4, !tbaa !5
  %cmp23 = icmp ult i32 %61, %62
  br i1 %cmp23, label %for.body.25, label %for.end

for.body.25:                                      ; preds = %for.cond.22
  %63 = load i32, i32* %cblkno, align 4, !tbaa !5
  %idxprom26 = zext i32 %63 to i64
  %64 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %prc, align 8, !tbaa !1
  %cblks = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %64, i32 0, i32 6
  %enc = bitcast %union.anon.0* %cblks to %struct.opj_tcd_cblk_enc**
  %65 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %enc, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %65, i64 %idxprom26
  store %struct.opj_tcd_cblk_enc* %arrayidx27, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !1
  %66 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !1
  %numpasses = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %66, i32 0, i32 9
  store i32 0, i32* %numpasses, align 4, !tbaa !55
  %67 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %prc, align 8, !tbaa !1
  %imsbtree28 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %67, i32 0, i32 9
  %68 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %imsbtree28, align 8, !tbaa !52
  %69 = load i32, i32* %cblkno, align 4, !tbaa !5
  %70 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %band, align 8, !tbaa !1
  %numbps = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %70, i32 0, i32 7
  %71 = load i32, i32* %numbps, align 4, !tbaa !57
  %72 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !1
  %numbps29 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %72, i32 0, i32 7
  %73 = load i32, i32* %numbps29, align 4, !tbaa !58
  %sub30 = sub i32 %71, %73
  call void @opj_tgt_setvalue(%struct.opj_tgt_tree* %68, i32 %69, i32 %sub30) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body.25
  %74 = load i32, i32* %cblkno, align 4, !tbaa !5
  %inc = add i32 %74, 1
  store i32 %inc, i32* %cblkno, align 4, !tbaa !5
  br label %for.cond.22

for.end:                                          ; preds = %for.cond.22
  %75 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %band, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %75, i32 1
  store %struct.opj_tcd_band* %incdec.ptr, %struct.opj_tcd_band** %band, align 8, !tbaa !1
  %76 = bitcast %struct.opj_tcd_precinct** %prc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.end
  %77 = load i32, i32* %bandno, align 4, !tbaa !5
  %inc32 = add i32 %77, 1
  store i32 %inc32, i32* %bandno, align 4, !tbaa !5
  br label %for.cond

for.end.33:                                       ; preds = %for.cond
  br label %if.end.34

if.end.34:                                        ; preds = %for.end.33, %if.end
  %call = call %struct.opj_bio* @opj_bio_create() #5
  store %struct.opj_bio* %call, %struct.opj_bio** %bio, align 8, !tbaa !1
  %78 = load %struct.opj_bio*, %struct.opj_bio** %bio, align 8, !tbaa !1
  %79 = load i8*, i8** %c, align 8, !tbaa !1
  %80 = load i32, i32* %length.addr, align 4, !tbaa !5
  call void @opj_bio_init_enc(%struct.opj_bio* %78, i8* %79, i32 %80) #5
  %81 = load %struct.opj_bio*, %struct.opj_bio** %bio, align 8, !tbaa !1
  call void @opj_bio_write(%struct.opj_bio* %81, i32 1, i32 1) #5
  %82 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %res, align 8, !tbaa !1
  %bands35 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %82, i32 0, i32 7
  %arraydecay36 = getelementptr inbounds [3 x %struct.opj_tcd_band], [3 x %struct.opj_tcd_band]* %bands35, i32 0, i32 0
  store %struct.opj_tcd_band* %arraydecay36, %struct.opj_tcd_band** %band, align 8, !tbaa !1
  store i32 0, i32* %bandno, align 4, !tbaa !5
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.175, %if.end.34
  %83 = load i32, i32* %bandno, align 4, !tbaa !5
  %84 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %res, align 8, !tbaa !1
  %numbands38 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %84, i32 0, i32 6
  %85 = load i32, i32* %numbands38, align 4, !tbaa !45
  %cmp39 = icmp ult i32 %83, %85
  br i1 %cmp39, label %for.body.41, label %for.end.177

for.body.41:                                      ; preds = %for.cond.37
  %86 = bitcast %struct.opj_tcd_precinct** %prc42 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %86) #1
  %87 = load i32, i32* %precno, align 4, !tbaa !5
  %idxprom43 = zext i32 %87 to i64
  %88 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %band, align 8, !tbaa !1
  %precincts44 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %88, i32 0, i32 5
  %89 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %precincts44, align 8, !tbaa !47
  %arrayidx45 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %89, i64 %idxprom43
  store %struct.opj_tcd_precinct* %arrayidx45, %struct.opj_tcd_precinct** %prc42, align 8, !tbaa !1
  %90 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %prc42, align 8, !tbaa !1
  %cw46 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %90, i32 0, i32 4
  %91 = load i32, i32* %cw46, align 4, !tbaa !53
  %92 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %prc42, align 8, !tbaa !1
  %ch47 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %92, i32 0, i32 5
  %93 = load i32, i32* %ch47, align 4, !tbaa !54
  %mul48 = mul i32 %91, %93
  store i32 %mul48, i32* %l_nb_blocks, align 4, !tbaa !5
  %94 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %prc42, align 8, !tbaa !1
  %cblks49 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %94, i32 0, i32 6
  %enc50 = bitcast %union.anon.0* %cblks49 to %struct.opj_tcd_cblk_enc**
  %95 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %enc50, align 8, !tbaa !1
  store %struct.opj_tcd_cblk_enc* %95, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !1
  store i32 0, i32* %cblkno, align 4, !tbaa !5
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.65, %for.body.41
  %96 = load i32, i32* %cblkno, align 4, !tbaa !5
  %97 = load i32, i32* %l_nb_blocks, align 4, !tbaa !5
  %cmp52 = icmp ult i32 %96, %97
  br i1 %cmp52, label %for.body.54, label %for.end.67

for.body.54:                                      ; preds = %for.cond.51
  %98 = bitcast %struct.opj_tcd_layer** %layer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %98) #1
  %99 = load i32, i32* %layno, align 4, !tbaa !5
  %idxprom55 = zext i32 %99 to i64
  %100 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !1
  %layers = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %100, i32 0, i32 1
  %101 = load %struct.opj_tcd_layer*, %struct.opj_tcd_layer** %layers, align 8, !tbaa !59
  %arrayidx56 = getelementptr inbounds %struct.opj_tcd_layer, %struct.opj_tcd_layer* %101, i64 %idxprom55
  store %struct.opj_tcd_layer* %arrayidx56, %struct.opj_tcd_layer** %layer, align 8, !tbaa !1
  %102 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !1
  %numpasses57 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %102, i32 0, i32 9
  %103 = load i32, i32* %numpasses57, align 4, !tbaa !55
  %tobool58 = icmp ne i32 %103, 0
  br i1 %tobool58, label %if.end.63, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body.54
  %104 = load %struct.opj_tcd_layer*, %struct.opj_tcd_layer** %layer, align 8, !tbaa !1
  %numpasses59 = getelementptr inbounds %struct.opj_tcd_layer, %struct.opj_tcd_layer* %104, i32 0, i32 0
  %105 = load i32, i32* %numpasses59, align 4, !tbaa !60
  %tobool60 = icmp ne i32 %105, 0
  br i1 %tobool60, label %if.then.61, label %if.end.63

if.then.61:                                       ; preds = %land.lhs.true
  %106 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %prc42, align 8, !tbaa !1
  %incltree62 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %106, i32 0, i32 8
  %107 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %incltree62, align 8, !tbaa !50
  %108 = load i32, i32* %cblkno, align 4, !tbaa !5
  %109 = load i32, i32* %layno, align 4, !tbaa !5
  call void @opj_tgt_setvalue(%struct.opj_tgt_tree* %107, i32 %108, i32 %109) #5
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.61, %land.lhs.true, %for.body.54
  %110 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !1
  %incdec.ptr64 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %110, i32 1
  store %struct.opj_tcd_cblk_enc* %incdec.ptr64, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !1
  %111 = bitcast %struct.opj_tcd_layer** %layer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #1
  br label %for.inc.65

for.inc.65:                                       ; preds = %if.end.63
  %112 = load i32, i32* %cblkno, align 4, !tbaa !5
  %inc66 = add i32 %112, 1
  store i32 %inc66, i32* %cblkno, align 4, !tbaa !5
  br label %for.cond.51

for.end.67:                                       ; preds = %for.cond.51
  %113 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %prc42, align 8, !tbaa !1
  %cblks68 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %113, i32 0, i32 6
  %enc69 = bitcast %union.anon.0* %cblks68 to %struct.opj_tcd_cblk_enc**
  %114 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %enc69, align 8, !tbaa !1
  store %struct.opj_tcd_cblk_enc* %114, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !1
  store i32 0, i32* %cblkno, align 4, !tbaa !5
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc.171, %for.end.67
  %115 = load i32, i32* %cblkno, align 4, !tbaa !5
  %116 = load i32, i32* %l_nb_blocks, align 4, !tbaa !5
  %cmp71 = icmp ult i32 %115, %116
  br i1 %cmp71, label %for.body.73, label %for.end.173

for.body.73:                                      ; preds = %for.cond.70
  %117 = bitcast %struct.opj_tcd_layer** %layer74 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %117) #1
  %118 = load i32, i32* %layno, align 4, !tbaa !5
  %idxprom75 = zext i32 %118 to i64
  %119 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !1
  %layers76 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %119, i32 0, i32 1
  %120 = load %struct.opj_tcd_layer*, %struct.opj_tcd_layer** %layers76, align 8, !tbaa !59
  %arrayidx77 = getelementptr inbounds %struct.opj_tcd_layer, %struct.opj_tcd_layer* %120, i64 %idxprom75
  store %struct.opj_tcd_layer* %arrayidx77, %struct.opj_tcd_layer** %layer74, align 8, !tbaa !1
  %121 = bitcast i32* %increment to i8*
  call void @llvm.lifetime.start(i64 4, i8* %121) #1
  store i32 0, i32* %increment, align 4, !tbaa !5
  %122 = bitcast i32* %nump to i8*
  call void @llvm.lifetime.start(i64 4, i8* %122) #1
  store i32 0, i32* %nump, align 4, !tbaa !5
  %123 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %123) #1
  store i32 0, i32* %len, align 4, !tbaa !5
  %124 = bitcast i32* %passno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %124) #1
  %125 = bitcast i32* %l_nb_passes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %125) #1
  %126 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !1
  %numpasses78 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %126, i32 0, i32 9
  %127 = load i32, i32* %numpasses78, align 4, !tbaa !55
  %tobool79 = icmp ne i32 %127, 0
  br i1 %tobool79, label %if.else, label %if.then.80

if.then.80:                                       ; preds = %for.body.73
  %128 = load %struct.opj_bio*, %struct.opj_bio** %bio, align 8, !tbaa !1
  %129 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %prc42, align 8, !tbaa !1
  %incltree81 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %129, i32 0, i32 8
  %130 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %incltree81, align 8, !tbaa !50
  %131 = load i32, i32* %cblkno, align 4, !tbaa !5
  %132 = load i32, i32* %layno, align 4, !tbaa !5
  %add = add i32 %132, 1
  call void @opj_tgt_encode(%struct.opj_bio* %128, %struct.opj_tgt_tree* %130, i32 %131, i32 %add) #5
  br label %if.end.85

if.else:                                          ; preds = %for.body.73
  %133 = load %struct.opj_bio*, %struct.opj_bio** %bio, align 8, !tbaa !1
  %134 = load %struct.opj_tcd_layer*, %struct.opj_tcd_layer** %layer74, align 8, !tbaa !1
  %numpasses82 = getelementptr inbounds %struct.opj_tcd_layer, %struct.opj_tcd_layer* %134, i32 0, i32 0
  %135 = load i32, i32* %numpasses82, align 4, !tbaa !60
  %cmp83 = icmp ne i32 %135, 0
  %conv84 = zext i1 %cmp83 to i32
  call void @opj_bio_write(%struct.opj_bio* %133, i32 %conv84, i32 1) #5
  br label %if.end.85

if.end.85:                                        ; preds = %if.else, %if.then.80
  %136 = load %struct.opj_tcd_layer*, %struct.opj_tcd_layer** %layer74, align 8, !tbaa !1
  %numpasses86 = getelementptr inbounds %struct.opj_tcd_layer, %struct.opj_tcd_layer* %136, i32 0, i32 0
  %137 = load i32, i32* %numpasses86, align 4, !tbaa !60
  %tobool87 = icmp ne i32 %137, 0
  br i1 %tobool87, label %if.end.90, label %if.then.88

if.then.88:                                       ; preds = %if.end.85
  %138 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !1
  %incdec.ptr89 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %138, i32 1
  store %struct.opj_tcd_cblk_enc* %incdec.ptr89, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !1
  store i32 16, i32* %cleanup.dest.slot
  br label %cleanup

if.end.90:                                        ; preds = %if.end.85
  %139 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !1
  %numpasses91 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %139, i32 0, i32 9
  %140 = load i32, i32* %numpasses91, align 4, !tbaa !55
  %tobool92 = icmp ne i32 %140, 0
  br i1 %tobool92, label %if.end.95, label %if.then.93

if.then.93:                                       ; preds = %if.end.90
  %141 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !1
  %numlenbits = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %141, i32 0, i32 8
  store i32 3, i32* %numlenbits, align 4, !tbaa !62
  %142 = load %struct.opj_bio*, %struct.opj_bio** %bio, align 8, !tbaa !1
  %143 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %prc42, align 8, !tbaa !1
  %imsbtree94 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %143, i32 0, i32 9
  %144 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %imsbtree94, align 8, !tbaa !52
  %145 = load i32, i32* %cblkno, align 4, !tbaa !5
  call void @opj_tgt_encode(%struct.opj_bio* %142, %struct.opj_tgt_tree* %144, i32 %145, i32 999) #5
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.93, %if.end.90
  %146 = load %struct.opj_bio*, %struct.opj_bio** %bio, align 8, !tbaa !1
  %147 = load %struct.opj_tcd_layer*, %struct.opj_tcd_layer** %layer74, align 8, !tbaa !1
  %numpasses96 = getelementptr inbounds %struct.opj_tcd_layer, %struct.opj_tcd_layer* %147, i32 0, i32 0
  %148 = load i32, i32* %numpasses96, align 4, !tbaa !60
  call void @opj_t2_putnumpasses(%struct.opj_bio* %146, i32 %148) #5
  %149 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !1
  %numpasses97 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %149, i32 0, i32 9
  %150 = load i32, i32* %numpasses97, align 4, !tbaa !55
  %151 = load %struct.opj_tcd_layer*, %struct.opj_tcd_layer** %layer74, align 8, !tbaa !1
  %numpasses98 = getelementptr inbounds %struct.opj_tcd_layer, %struct.opj_tcd_layer* %151, i32 0, i32 0
  %152 = load i32, i32* %numpasses98, align 4, !tbaa !60
  %add99 = add i32 %150, %152
  store i32 %add99, i32* %l_nb_passes, align 4, !tbaa !5
  %153 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !1
  %passes = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %153, i32 0, i32 2
  %154 = load %struct.opj_tcd_pass*, %struct.opj_tcd_pass** %passes, align 8, !tbaa !63
  %155 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !1
  %numpasses100 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %155, i32 0, i32 9
  %156 = load i32, i32* %numpasses100, align 4, !tbaa !55
  %idx.ext = zext i32 %156 to i64
  %add.ptr101 = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %154, i64 %idx.ext
  store %struct.opj_tcd_pass* %add.ptr101, %struct.opj_tcd_pass** %pass, align 8, !tbaa !1
  %157 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !1
  %numpasses102 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %157, i32 0, i32 9
  %158 = load i32, i32* %numpasses102, align 4, !tbaa !55
  store i32 %158, i32* %passno, align 4, !tbaa !5
  br label %for.cond.103

for.cond.103:                                     ; preds = %for.inc.127, %if.end.95
  %159 = load i32, i32* %passno, align 4, !tbaa !5
  %160 = load i32, i32* %l_nb_passes, align 4, !tbaa !5
  %cmp104 = icmp ult i32 %159, %160
  br i1 %cmp104, label %for.body.106, label %for.end.129

for.body.106:                                     ; preds = %for.cond.103
  %161 = load i32, i32* %nump, align 4, !tbaa !5
  %inc107 = add i32 %161, 1
  store i32 %inc107, i32* %nump, align 4, !tbaa !5
  %162 = load %struct.opj_tcd_pass*, %struct.opj_tcd_pass** %pass, align 8, !tbaa !1
  %len108 = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %162, i32 0, i32 2
  %163 = load i32, i32* %len108, align 4, !tbaa !64
  %164 = load i32, i32* %len, align 4, !tbaa !5
  %add109 = add i32 %164, %163
  store i32 %add109, i32* %len, align 4, !tbaa !5
  %165 = load %struct.opj_tcd_pass*, %struct.opj_tcd_pass** %pass, align 8, !tbaa !1
  %term = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %165, i32 0, i32 3
  %bf.load = load i8, i8* %term, align 4
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool110 = icmp ne i32 %bf.cast, 0
  br i1 %tobool110, label %if.then.117, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.106
  %166 = load i32, i32* %passno, align 4, !tbaa !5
  %167 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !1
  %numpasses111 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %167, i32 0, i32 9
  %168 = load i32, i32* %numpasses111, align 4, !tbaa !55
  %169 = load %struct.opj_tcd_layer*, %struct.opj_tcd_layer** %layer74, align 8, !tbaa !1
  %numpasses112 = getelementptr inbounds %struct.opj_tcd_layer, %struct.opj_tcd_layer* %169, i32 0, i32 0
  %170 = load i32, i32* %numpasses112, align 4, !tbaa !60
  %add113 = add i32 %168, %170
  %sub114 = sub i32 %add113, 1
  %cmp115 = icmp eq i32 %166, %sub114
  br i1 %cmp115, label %if.then.117, label %if.end.125

if.then.117:                                      ; preds = %lor.lhs.false, %for.body.106
  %171 = load i32, i32* %increment, align 4, !tbaa !5
  %172 = load i32, i32* %len, align 4, !tbaa !5
  %call118 = call i32 @opj_int_floorlog2(i32 %172) #5
  %add119 = add nsw i32 %call118, 1
  %173 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !1
  %numlenbits120 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %173, i32 0, i32 8
  %174 = load i32, i32* %numlenbits120, align 4, !tbaa !62
  %175 = load i32, i32* %nump, align 4, !tbaa !5
  %call121 = call i32 @opj_int_floorlog2(i32 %175) #5
  %add122 = add i32 %174, %call121
  %sub123 = sub i32 %add119, %add122
  %call124 = call i32 @opj_int_max(i32 %171, i32 %sub123) #5
  store i32 %call124, i32* %increment, align 4, !tbaa !5
  store i32 0, i32* %len, align 4, !tbaa !5
  store i32 0, i32* %nump, align 4, !tbaa !5
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.117, %lor.lhs.false
  %176 = load %struct.opj_tcd_pass*, %struct.opj_tcd_pass** %pass, align 8, !tbaa !1
  %incdec.ptr126 = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %176, i32 1
  store %struct.opj_tcd_pass* %incdec.ptr126, %struct.opj_tcd_pass** %pass, align 8, !tbaa !1
  br label %for.inc.127

for.inc.127:                                      ; preds = %if.end.125
  %177 = load i32, i32* %passno, align 4, !tbaa !5
  %inc128 = add i32 %177, 1
  store i32 %inc128, i32* %passno, align 4, !tbaa !5
  br label %for.cond.103

for.end.129:                                      ; preds = %for.cond.103
  %178 = load %struct.opj_bio*, %struct.opj_bio** %bio, align 8, !tbaa !1
  %179 = load i32, i32* %increment, align 4, !tbaa !5
  call void @opj_t2_putcommacode(%struct.opj_bio* %178, i32 %179) #5
  %180 = load i32, i32* %increment, align 4, !tbaa !5
  %181 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !1
  %numlenbits130 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %181, i32 0, i32 8
  %182 = load i32, i32* %numlenbits130, align 4, !tbaa !62
  %add131 = add i32 %182, %180
  store i32 %add131, i32* %numlenbits130, align 4, !tbaa !62
  %183 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !1
  %passes132 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %183, i32 0, i32 2
  %184 = load %struct.opj_tcd_pass*, %struct.opj_tcd_pass** %passes132, align 8, !tbaa !63
  %185 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !1
  %numpasses133 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %185, i32 0, i32 9
  %186 = load i32, i32* %numpasses133, align 4, !tbaa !55
  %idx.ext134 = zext i32 %186 to i64
  %add.ptr135 = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %184, i64 %idx.ext134
  store %struct.opj_tcd_pass* %add.ptr135, %struct.opj_tcd_pass** %pass, align 8, !tbaa !1
  %187 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !1
  %numpasses136 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %187, i32 0, i32 9
  %188 = load i32, i32* %numpasses136, align 4, !tbaa !55
  store i32 %188, i32* %passno, align 4, !tbaa !5
  br label %for.cond.137

for.cond.137:                                     ; preds = %for.inc.162, %for.end.129
  %189 = load i32, i32* %passno, align 4, !tbaa !5
  %190 = load i32, i32* %l_nb_passes, align 4, !tbaa !5
  %cmp138 = icmp ult i32 %189, %190
  br i1 %cmp138, label %for.body.140, label %for.end.164

for.body.140:                                     ; preds = %for.cond.137
  %191 = load i32, i32* %nump, align 4, !tbaa !5
  %inc141 = add i32 %191, 1
  store i32 %inc141, i32* %nump, align 4, !tbaa !5
  %192 = load %struct.opj_tcd_pass*, %struct.opj_tcd_pass** %pass, align 8, !tbaa !1
  %len142 = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %192, i32 0, i32 2
  %193 = load i32, i32* %len142, align 4, !tbaa !64
  %194 = load i32, i32* %len, align 4, !tbaa !5
  %add143 = add i32 %194, %193
  store i32 %add143, i32* %len, align 4, !tbaa !5
  %195 = load %struct.opj_tcd_pass*, %struct.opj_tcd_pass** %pass, align 8, !tbaa !1
  %term144 = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %195, i32 0, i32 3
  %bf.load145 = load i8, i8* %term144, align 4
  %bf.clear146 = and i8 %bf.load145, 1
  %bf.cast147 = zext i8 %bf.clear146 to i32
  %tobool148 = icmp ne i32 %bf.cast147, 0
  br i1 %tobool148, label %if.then.156, label %lor.lhs.false.149

lor.lhs.false.149:                                ; preds = %for.body.140
  %196 = load i32, i32* %passno, align 4, !tbaa !5
  %197 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !1
  %numpasses150 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %197, i32 0, i32 9
  %198 = load i32, i32* %numpasses150, align 4, !tbaa !55
  %199 = load %struct.opj_tcd_layer*, %struct.opj_tcd_layer** %layer74, align 8, !tbaa !1
  %numpasses151 = getelementptr inbounds %struct.opj_tcd_layer, %struct.opj_tcd_layer* %199, i32 0, i32 0
  %200 = load i32, i32* %numpasses151, align 4, !tbaa !60
  %add152 = add i32 %198, %200
  %sub153 = sub i32 %add152, 1
  %cmp154 = icmp eq i32 %196, %sub153
  br i1 %cmp154, label %if.then.156, label %if.end.160

if.then.156:                                      ; preds = %lor.lhs.false.149, %for.body.140
  %201 = load %struct.opj_bio*, %struct.opj_bio** %bio, align 8, !tbaa !1
  %202 = load i32, i32* %len, align 4, !tbaa !5
  %203 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !1
  %numlenbits157 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %203, i32 0, i32 8
  %204 = load i32, i32* %numlenbits157, align 4, !tbaa !62
  %205 = load i32, i32* %nump, align 4, !tbaa !5
  %call158 = call i32 @opj_int_floorlog2(i32 %205) #5
  %add159 = add i32 %204, %call158
  call void @opj_bio_write(%struct.opj_bio* %201, i32 %202, i32 %add159) #5
  store i32 0, i32* %len, align 4, !tbaa !5
  store i32 0, i32* %nump, align 4, !tbaa !5
  br label %if.end.160

if.end.160:                                       ; preds = %if.then.156, %lor.lhs.false.149
  %206 = load %struct.opj_tcd_pass*, %struct.opj_tcd_pass** %pass, align 8, !tbaa !1
  %incdec.ptr161 = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %206, i32 1
  store %struct.opj_tcd_pass* %incdec.ptr161, %struct.opj_tcd_pass** %pass, align 8, !tbaa !1
  br label %for.inc.162

for.inc.162:                                      ; preds = %if.end.160
  %207 = load i32, i32* %passno, align 4, !tbaa !5
  %inc163 = add i32 %207, 1
  store i32 %inc163, i32* %passno, align 4, !tbaa !5
  br label %for.cond.137

for.end.164:                                      ; preds = %for.cond.137
  %208 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !1
  %incdec.ptr165 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %208, i32 1
  store %struct.opj_tcd_cblk_enc* %incdec.ptr165, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.164, %if.then.88
  %209 = bitcast i32* %l_nb_passes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %209) #1
  %210 = bitcast i32* %passno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %210) #1
  %211 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %211) #1
  %212 = bitcast i32* %nump to i8*
  call void @llvm.lifetime.end(i64 4, i8* %212) #1
  %213 = bitcast i32* %increment to i8*
  call void @llvm.lifetime.end(i64 4, i8* %213) #1
  %214 = bitcast %struct.opj_tcd_layer** %layer74 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %214) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 16, label %for.inc.171
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.171

for.inc.171:                                      ; preds = %cleanup.cont, %cleanup
  %215 = load i32, i32* %cblkno, align 4, !tbaa !5
  %inc172 = add i32 %215, 1
  store i32 %inc172, i32* %cblkno, align 4, !tbaa !5
  br label %for.cond.70

for.end.173:                                      ; preds = %for.cond.70
  %216 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %band, align 8, !tbaa !1
  %incdec.ptr174 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %216, i32 1
  store %struct.opj_tcd_band* %incdec.ptr174, %struct.opj_tcd_band** %band, align 8, !tbaa !1
  %217 = bitcast %struct.opj_tcd_precinct** %prc42 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %217) #1
  br label %for.inc.175

for.inc.175:                                      ; preds = %for.end.173
  %218 = load i32, i32* %bandno, align 4, !tbaa !5
  %inc176 = add i32 %218, 1
  store i32 %inc176, i32* %bandno, align 4, !tbaa !5
  br label %for.cond.37

for.end.177:                                      ; preds = %for.cond.37
  %219 = load %struct.opj_bio*, %struct.opj_bio** %bio, align 8, !tbaa !1
  %call178 = call i32 @opj_bio_flush(%struct.opj_bio* %219) #5
  %tobool179 = icmp ne i32 %call178, 0
  br i1 %tobool179, label %if.end.181, label %if.then.180

if.then.180:                                      ; preds = %for.end.177
  %220 = load %struct.opj_bio*, %struct.opj_bio** %bio, align 8, !tbaa !1
  call void @opj_bio_destroy(%struct.opj_bio* %220) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.297

if.end.181:                                       ; preds = %for.end.177
  %221 = load %struct.opj_bio*, %struct.opj_bio** %bio, align 8, !tbaa !1
  %call182 = call i64 @opj_bio_numbytes(%struct.opj_bio* %221) #5
  %conv183 = trunc i64 %call182 to i32
  store i32 %conv183, i32* %l_nb_bytes, align 4, !tbaa !5
  %222 = load i32, i32* %l_nb_bytes, align 4, !tbaa !5
  %223 = load i8*, i8** %c, align 8, !tbaa !1
  %idx.ext184 = zext i32 %222 to i64
  %add.ptr185 = getelementptr inbounds i8, i8* %223, i64 %idx.ext184
  store i8* %add.ptr185, i8** %c, align 8, !tbaa !1
  %224 = load i32, i32* %l_nb_bytes, align 4, !tbaa !5
  %225 = load i32, i32* %length.addr, align 4, !tbaa !5
  %sub186 = sub i32 %225, %224
  store i32 %sub186, i32* %length.addr, align 4, !tbaa !5
  %226 = load %struct.opj_bio*, %struct.opj_bio** %bio, align 8, !tbaa !1
  call void @opj_bio_destroy(%struct.opj_bio* %226) #5
  %227 = load %struct.opj_tcp*, %struct.opj_tcp** %tcp.addr, align 8, !tbaa !1
  %csty187 = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %227, i32 0, i32 0
  %228 = load i32, i32* %csty187, align 4, !tbaa !44
  %and188 = and i32 %228, 4
  %tobool189 = icmp ne i32 %and188, 0
  br i1 %tobool189, label %if.then.190, label %if.end.195

if.then.190:                                      ; preds = %if.end.181
  %229 = load i8*, i8** %c, align 8, !tbaa !1
  %arrayidx191 = getelementptr inbounds i8, i8* %229, i64 0
  store i8 -1, i8* %arrayidx191, align 1, !tbaa !7
  %230 = load i8*, i8** %c, align 8, !tbaa !1
  %arrayidx192 = getelementptr inbounds i8, i8* %230, i64 1
  store i8 -110, i8* %arrayidx192, align 1, !tbaa !7
  %231 = load i8*, i8** %c, align 8, !tbaa !1
  %add.ptr193 = getelementptr inbounds i8, i8* %231, i64 2
  store i8* %add.ptr193, i8** %c, align 8, !tbaa !1
  %232 = load i32, i32* %length.addr, align 4, !tbaa !5
  %sub194 = sub i32 %232, 2
  store i32 %sub194, i32* %length.addr, align 4, !tbaa !5
  br label %if.end.195

if.end.195:                                       ; preds = %if.then.190, %if.end.181
  %233 = load %struct.opj_codestream_info*, %struct.opj_codestream_info** %cstr_info.addr, align 8, !tbaa !1
  %tobool196 = icmp ne %struct.opj_codestream_info* %233, null
  br i1 %tobool196, label %land.lhs.true.197, label %if.end.208

land.lhs.true.197:                                ; preds = %if.end.195
  %234 = load %struct.opj_codestream_info*, %struct.opj_codestream_info** %cstr_info.addr, align 8, !tbaa !1
  %index_write = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %234, i32 0, i32 2
  %235 = load i32, i32* %index_write, align 4, !tbaa !23
  %tobool198 = icmp ne i32 %235, 0
  br i1 %tobool198, label %if.then.199, label %if.end.208

if.then.199:                                      ; preds = %land.lhs.true.197
  %236 = bitcast %struct.opj_packet_info** %info_PK to i8*
  call void @llvm.lifetime.start(i64 8, i8* %236) #1
  %237 = load %struct.opj_codestream_info*, %struct.opj_codestream_info** %cstr_info.addr, align 8, !tbaa !1
  %packno200 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %237, i32 0, i32 1
  %238 = load i32, i32* %packno200, align 4, !tbaa !27
  %idxprom201 = sext i32 %238 to i64
  %239 = load i32, i32* %tileno.addr, align 4, !tbaa !5
  %idxprom202 = zext i32 %239 to i64
  %240 = load %struct.opj_codestream_info*, %struct.opj_codestream_info** %cstr_info.addr, align 8, !tbaa !1
  %tile203 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %240, i32 0, i32 21
  %241 = load %struct.opj_tile_info*, %struct.opj_tile_info** %tile203, align 8, !tbaa !26
  %arrayidx204 = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %241, i64 %idxprom202
  %packet = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %arrayidx204, i32 0, i32 9
  %242 = load %struct.opj_packet_info*, %struct.opj_packet_info** %packet, align 8, !tbaa !28
  %arrayidx205 = getelementptr inbounds %struct.opj_packet_info, %struct.opj_packet_info* %242, i64 %idxprom201
  store %struct.opj_packet_info* %arrayidx205, %struct.opj_packet_info** %info_PK, align 8, !tbaa !1
  %243 = load i8*, i8** %c, align 8, !tbaa !1
  %244 = load i8*, i8** %dest.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %243 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %244 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv206 = trunc i64 %sub.ptr.sub to i32
  %conv207 = sext i32 %conv206 to i64
  %245 = load %struct.opj_packet_info*, %struct.opj_packet_info** %info_PK, align 8, !tbaa !1
  %end_ph_pos = getelementptr inbounds %struct.opj_packet_info, %struct.opj_packet_info* %245, i32 0, i32 1
  store i64 %conv207, i64* %end_ph_pos, align 8, !tbaa !35
  %246 = bitcast %struct.opj_packet_info** %info_PK to i8*
  call void @llvm.lifetime.end(i64 8, i8* %246) #1
  br label %if.end.208

if.end.208:                                       ; preds = %if.then.199, %land.lhs.true.197, %if.end.195
  %247 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %res, align 8, !tbaa !1
  %bands209 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %247, i32 0, i32 7
  %arraydecay210 = getelementptr inbounds [3 x %struct.opj_tcd_band], [3 x %struct.opj_tcd_band]* %bands209, i32 0, i32 0
  store %struct.opj_tcd_band* %arraydecay210, %struct.opj_tcd_band** %band, align 8, !tbaa !1
  store i32 0, i32* %bandno, align 4, !tbaa !5
  br label %for.cond.211

for.cond.211:                                     ; preds = %for.inc.288, %if.end.208
  %248 = load i32, i32* %bandno, align 4, !tbaa !5
  %249 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %res, align 8, !tbaa !1
  %numbands212 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %249, i32 0, i32 6
  %250 = load i32, i32* %numbands212, align 4, !tbaa !45
  %cmp213 = icmp ult i32 %248, %250
  br i1 %cmp213, label %for.body.215, label %for.end.290

for.body.215:                                     ; preds = %for.cond.211
  %251 = bitcast %struct.opj_tcd_precinct** %prc216 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %251) #1
  %252 = load i32, i32* %precno, align 4, !tbaa !5
  %idxprom217 = zext i32 %252 to i64
  %253 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %band, align 8, !tbaa !1
  %precincts218 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %253, i32 0, i32 5
  %254 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %precincts218, align 8, !tbaa !47
  %arrayidx219 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %254, i64 %idxprom217
  store %struct.opj_tcd_precinct* %arrayidx219, %struct.opj_tcd_precinct** %prc216, align 8, !tbaa !1
  %255 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %prc216, align 8, !tbaa !1
  %cw220 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %255, i32 0, i32 4
  %256 = load i32, i32* %cw220, align 4, !tbaa !53
  %257 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %prc216, align 8, !tbaa !1
  %ch221 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %257, i32 0, i32 5
  %258 = load i32, i32* %ch221, align 4, !tbaa !54
  %mul222 = mul i32 %256, %258
  store i32 %mul222, i32* %l_nb_blocks, align 4, !tbaa !5
  %259 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %prc216, align 8, !tbaa !1
  %cblks223 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %259, i32 0, i32 6
  %enc224 = bitcast %union.anon.0* %cblks223 to %struct.opj_tcd_cblk_enc**
  %260 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %enc224, align 8, !tbaa !1
  store %struct.opj_tcd_cblk_enc* %260, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !1
  store i32 0, i32* %cblkno, align 4, !tbaa !5
  br label %for.cond.225

for.cond.225:                                     ; preds = %for.inc.281, %for.body.215
  %261 = load i32, i32* %cblkno, align 4, !tbaa !5
  %262 = load i32, i32* %l_nb_blocks, align 4, !tbaa !5
  %cmp226 = icmp ult i32 %261, %262
  br i1 %cmp226, label %for.body.228, label %for.end.283

for.body.228:                                     ; preds = %for.cond.225
  %263 = bitcast %struct.opj_tcd_layer** %layer229 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %263) #1
  %264 = load i32, i32* %layno, align 4, !tbaa !5
  %idxprom230 = zext i32 %264 to i64
  %265 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !1
  %layers231 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %265, i32 0, i32 1
  %266 = load %struct.opj_tcd_layer*, %struct.opj_tcd_layer** %layers231, align 8, !tbaa !59
  %arrayidx232 = getelementptr inbounds %struct.opj_tcd_layer, %struct.opj_tcd_layer* %266, i64 %idxprom230
  store %struct.opj_tcd_layer* %arrayidx232, %struct.opj_tcd_layer** %layer229, align 8, !tbaa !1
  %267 = load %struct.opj_tcd_layer*, %struct.opj_tcd_layer** %layer229, align 8, !tbaa !1
  %numpasses233 = getelementptr inbounds %struct.opj_tcd_layer, %struct.opj_tcd_layer* %267, i32 0, i32 0
  %268 = load i32, i32* %numpasses233, align 4, !tbaa !60
  %tobool234 = icmp ne i32 %268, 0
  br i1 %tobool234, label %if.end.237, label %if.then.235

if.then.235:                                      ; preds = %for.body.228
  %269 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !1
  %incdec.ptr236 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %269, i32 1
  store %struct.opj_tcd_cblk_enc* %incdec.ptr236, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !1
  store i32 28, i32* %cleanup.dest.slot
  br label %cleanup.278

if.end.237:                                       ; preds = %for.body.228
  %270 = load %struct.opj_tcd_layer*, %struct.opj_tcd_layer** %layer229, align 8, !tbaa !1
  %len238 = getelementptr inbounds %struct.opj_tcd_layer, %struct.opj_tcd_layer* %270, i32 0, i32 1
  %271 = load i32, i32* %len238, align 4, !tbaa !66
  %272 = load i32, i32* %length.addr, align 4, !tbaa !5
  %cmp239 = icmp ugt i32 %271, %272
  br i1 %cmp239, label %if.then.241, label %if.end.242

if.then.241:                                      ; preds = %if.end.237
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.278

if.end.242:                                       ; preds = %if.end.237
  %273 = load i8*, i8** %c, align 8, !tbaa !1
  %274 = load %struct.opj_tcd_layer*, %struct.opj_tcd_layer** %layer229, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.opj_tcd_layer, %struct.opj_tcd_layer* %274, i32 0, i32 3
  %275 = load i8*, i8** %data, align 8, !tbaa !67
  %276 = load %struct.opj_tcd_layer*, %struct.opj_tcd_layer** %layer229, align 8, !tbaa !1
  %len243 = getelementptr inbounds %struct.opj_tcd_layer, %struct.opj_tcd_layer* %276, i32 0, i32 1
  %277 = load i32, i32* %len243, align 4, !tbaa !66
  %conv244 = zext i32 %277 to i64
  %call245 = call i8* @memcpy(i8* %273, i8* %275, i64 %conv244) #6
  %278 = load %struct.opj_tcd_layer*, %struct.opj_tcd_layer** %layer229, align 8, !tbaa !1
  %numpasses246 = getelementptr inbounds %struct.opj_tcd_layer, %struct.opj_tcd_layer* %278, i32 0, i32 0
  %279 = load i32, i32* %numpasses246, align 4, !tbaa !60
  %280 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !1
  %numpasses247 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %280, i32 0, i32 9
  %281 = load i32, i32* %numpasses247, align 4, !tbaa !55
  %add248 = add i32 %281, %279
  store i32 %add248, i32* %numpasses247, align 4, !tbaa !55
  %282 = load %struct.opj_tcd_layer*, %struct.opj_tcd_layer** %layer229, align 8, !tbaa !1
  %len249 = getelementptr inbounds %struct.opj_tcd_layer, %struct.opj_tcd_layer* %282, i32 0, i32 1
  %283 = load i32, i32* %len249, align 4, !tbaa !66
  %284 = load i8*, i8** %c, align 8, !tbaa !1
  %idx.ext250 = zext i32 %283 to i64
  %add.ptr251 = getelementptr inbounds i8, i8* %284, i64 %idx.ext250
  store i8* %add.ptr251, i8** %c, align 8, !tbaa !1
  %285 = load %struct.opj_tcd_layer*, %struct.opj_tcd_layer** %layer229, align 8, !tbaa !1
  %len252 = getelementptr inbounds %struct.opj_tcd_layer, %struct.opj_tcd_layer* %285, i32 0, i32 1
  %286 = load i32, i32* %len252, align 4, !tbaa !66
  %287 = load i32, i32* %length.addr, align 4, !tbaa !5
  %sub253 = sub i32 %287, %286
  store i32 %sub253, i32* %length.addr, align 4, !tbaa !5
  %288 = load %struct.opj_codestream_info*, %struct.opj_codestream_info** %cstr_info.addr, align 8, !tbaa !1
  %tobool254 = icmp ne %struct.opj_codestream_info* %288, null
  br i1 %tobool254, label %land.lhs.true.255, label %if.end.276

land.lhs.true.255:                                ; preds = %if.end.242
  %289 = load %struct.opj_codestream_info*, %struct.opj_codestream_info** %cstr_info.addr, align 8, !tbaa !1
  %index_write256 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %289, i32 0, i32 2
  %290 = load i32, i32* %index_write256, align 4, !tbaa !23
  %tobool257 = icmp ne i32 %290, 0
  br i1 %tobool257, label %if.then.258, label %if.end.276

if.then.258:                                      ; preds = %land.lhs.true.255
  %291 = bitcast %struct.opj_packet_info** %info_PK259 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %291) #1
  %292 = load %struct.opj_codestream_info*, %struct.opj_codestream_info** %cstr_info.addr, align 8, !tbaa !1
  %packno260 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %292, i32 0, i32 1
  %293 = load i32, i32* %packno260, align 4, !tbaa !27
  %idxprom261 = sext i32 %293 to i64
  %294 = load i32, i32* %tileno.addr, align 4, !tbaa !5
  %idxprom262 = zext i32 %294 to i64
  %295 = load %struct.opj_codestream_info*, %struct.opj_codestream_info** %cstr_info.addr, align 8, !tbaa !1
  %tile263 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %295, i32 0, i32 21
  %296 = load %struct.opj_tile_info*, %struct.opj_tile_info** %tile263, align 8, !tbaa !26
  %arrayidx264 = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %296, i64 %idxprom262
  %packet265 = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %arrayidx264, i32 0, i32 9
  %297 = load %struct.opj_packet_info*, %struct.opj_packet_info** %packet265, align 8, !tbaa !28
  %arrayidx266 = getelementptr inbounds %struct.opj_packet_info, %struct.opj_packet_info* %297, i64 %idxprom261
  store %struct.opj_packet_info* %arrayidx266, %struct.opj_packet_info** %info_PK259, align 8, !tbaa !1
  %298 = load %struct.opj_tcd_layer*, %struct.opj_tcd_layer** %layer229, align 8, !tbaa !1
  %disto = getelementptr inbounds %struct.opj_tcd_layer, %struct.opj_tcd_layer* %298, i32 0, i32 2
  %299 = load double, double* %disto, align 8, !tbaa !68
  %300 = load %struct.opj_packet_info*, %struct.opj_packet_info** %info_PK259, align 8, !tbaa !1
  %disto267 = getelementptr inbounds %struct.opj_packet_info, %struct.opj_packet_info* %300, i32 0, i32 3
  %301 = load double, double* %disto267, align 8, !tbaa !69
  %add268 = fadd double %301, %299
  store double %add268, double* %disto267, align 8, !tbaa !69
  %302 = load %struct.opj_codestream_info*, %struct.opj_codestream_info** %cstr_info.addr, align 8, !tbaa !1
  %D_max = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %302, i32 0, i32 0
  %303 = load double, double* %D_max, align 8, !tbaa !70
  %304 = load %struct.opj_packet_info*, %struct.opj_packet_info** %info_PK259, align 8, !tbaa !1
  %disto269 = getelementptr inbounds %struct.opj_packet_info, %struct.opj_packet_info* %304, i32 0, i32 3
  %305 = load double, double* %disto269, align 8, !tbaa !69
  %cmp270 = fcmp olt double %303, %305
  br i1 %cmp270, label %if.then.272, label %if.end.275

if.then.272:                                      ; preds = %if.then.258
  %306 = load %struct.opj_packet_info*, %struct.opj_packet_info** %info_PK259, align 8, !tbaa !1
  %disto273 = getelementptr inbounds %struct.opj_packet_info, %struct.opj_packet_info* %306, i32 0, i32 3
  %307 = load double, double* %disto273, align 8, !tbaa !69
  %308 = load %struct.opj_codestream_info*, %struct.opj_codestream_info** %cstr_info.addr, align 8, !tbaa !1
  %D_max274 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %308, i32 0, i32 0
  store double %307, double* %D_max274, align 8, !tbaa !70
  br label %if.end.275

if.end.275:                                       ; preds = %if.then.272, %if.then.258
  %309 = bitcast %struct.opj_packet_info** %info_PK259 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %309) #1
  br label %if.end.276

if.end.276:                                       ; preds = %if.end.275, %land.lhs.true.255, %if.end.242
  %310 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !1
  %incdec.ptr277 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %310, i32 1
  store %struct.opj_tcd_cblk_enc* %incdec.ptr277, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.278

cleanup.278:                                      ; preds = %if.end.276, %if.then.241, %if.then.235
  %311 = bitcast %struct.opj_tcd_layer** %layer229 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %311) #1
  %cleanup.dest.279 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.279, label %cleanup.285 [
    i32 0, label %cleanup.cont.280
    i32 28, label %for.inc.281
  ]

cleanup.cont.280:                                 ; preds = %cleanup.278
  br label %for.inc.281

for.inc.281:                                      ; preds = %cleanup.cont.280, %cleanup.278
  %312 = load i32, i32* %cblkno, align 4, !tbaa !5
  %inc282 = add i32 %312, 1
  store i32 %inc282, i32* %cblkno, align 4, !tbaa !5
  br label %for.cond.225

for.end.283:                                      ; preds = %for.cond.225
  %313 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %band, align 8, !tbaa !1
  %incdec.ptr284 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %313, i32 1
  store %struct.opj_tcd_band* %incdec.ptr284, %struct.opj_tcd_band** %band, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.285

cleanup.285:                                      ; preds = %for.end.283, %cleanup.278
  %314 = bitcast %struct.opj_tcd_precinct** %prc216 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %314) #1
  %cleanup.dest.286 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.286, label %cleanup.297 [
    i32 0, label %cleanup.cont.287
  ]

cleanup.cont.287:                                 ; preds = %cleanup.285
  br label %for.inc.288

for.inc.288:                                      ; preds = %cleanup.cont.287
  %315 = load i32, i32* %bandno, align 4, !tbaa !5
  %inc289 = add i32 %315, 1
  store i32 %inc289, i32* %bandno, align 4, !tbaa !5
  br label %for.cond.211

for.end.290:                                      ; preds = %for.cond.211
  %316 = load i8*, i8** %c, align 8, !tbaa !1
  %317 = load i8*, i8** %dest.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast291 = ptrtoint i8* %316 to i64
  %sub.ptr.rhs.cast292 = ptrtoint i8* %317 to i64
  %sub.ptr.sub293 = sub i64 %sub.ptr.lhs.cast291, %sub.ptr.rhs.cast292
  %318 = load i32*, i32** %p_data_written.addr, align 8, !tbaa !1
  %319 = load i32, i32* %318, align 4, !tbaa !5
  %conv294 = zext i32 %319 to i64
  %add295 = add nsw i64 %conv294, %sub.ptr.sub293
  %conv296 = trunc i64 %add295 to i32
  store i32 %conv296, i32* %318, align 4, !tbaa !5
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.297

cleanup.297:                                      ; preds = %for.end.290, %cleanup.285, %if.then.180
  %320 = bitcast %struct.opj_bio** %bio to i8*
  call void @llvm.lifetime.end(i64 8, i8* %320) #1
  %321 = bitcast %struct.opj_tcd_resolution** %res to i8*
  call void @llvm.lifetime.end(i64 8, i8* %321) #1
  %322 = bitcast %struct.opj_tcd_tilecomp** %tilec to i8*
  call void @llvm.lifetime.end(i64 8, i8* %322) #1
  %323 = bitcast %struct.opj_tcd_pass** %pass to i8*
  call void @llvm.lifetime.end(i64 8, i8* %323) #1
  %324 = bitcast %struct.opj_tcd_cblk_enc** %cblk to i8*
  call void @llvm.lifetime.end(i64 8, i8* %324) #1
  %325 = bitcast %struct.opj_tcd_band** %band to i8*
  call void @llvm.lifetime.end(i64 8, i8* %325) #1
  %326 = bitcast i32* %l_nb_blocks to i8*
  call void @llvm.lifetime.end(i64 4, i8* %326) #1
  %327 = bitcast i32* %layno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %327) #1
  %328 = bitcast i32* %precno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %328) #1
  %329 = bitcast i32* %resno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %329) #1
  %330 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %330) #1
  %331 = bitcast i32* %l_nb_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %331) #1
  %332 = bitcast i8** %c to i8*
  call void @llvm.lifetime.end(i64 8, i8* %332) #1
  %333 = bitcast i32* %cblkno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %333) #1
  %334 = bitcast i32* %bandno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %334) #1
  %335 = load i32, i32* %retval
  ret i32 %335

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare void @opj_pi_destroy(%struct.opj_pi_iterator*, i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @opj_t2_decode_packets(%struct.opj_t2* %p_t2, i32 %p_tile_no, %struct.opj_tcd_tile* %p_tile, i8* %p_src, i32* %p_data_read, i32 %p_max_len, %struct.opj_codestream_index* %p_cstr_index) #0 {
entry:
  %retval = alloca i32, align 4
  %p_t2.addr = alloca %struct.opj_t2*, align 8
  %p_tile_no.addr = alloca i32, align 4
  %p_tile.addr = alloca %struct.opj_tcd_tile*, align 8
  %p_src.addr = alloca i8*, align 8
  %p_data_read.addr = alloca i32*, align 8
  %p_max_len.addr = alloca i32, align 4
  %p_cstr_index.addr = alloca %struct.opj_codestream_index*, align 8
  %l_current_data = alloca i8*, align 8
  %l_pi = alloca %struct.opj_pi_iterator*, align 8
  %pino = alloca i32, align 4
  %l_image = alloca %struct.opj_image*, align 8
  %l_cp = alloca %struct.opj_cp*, align 8
  %l_tcp = alloca %struct.opj_tcp*, align 8
  %l_nb_bytes_read = alloca i32, align 4
  %l_nb_pocs = alloca i32, align 4
  %l_current_pi = alloca %struct.opj_pi_iterator*, align 8
  %l_pack_info = alloca %struct.opj_packet_info*, align 8
  %l_img_comp = alloca %struct.opj_image_comp*, align 8
  %cleanup.dest.slot = alloca i32
  %first_pass_failed = alloca i32*, align 8
  store %struct.opj_t2* %p_t2, %struct.opj_t2** %p_t2.addr, align 8, !tbaa !1
  store i32 %p_tile_no, i32* %p_tile_no.addr, align 4, !tbaa !5
  store %struct.opj_tcd_tile* %p_tile, %struct.opj_tcd_tile** %p_tile.addr, align 8, !tbaa !1
  store i8* %p_src, i8** %p_src.addr, align 8, !tbaa !1
  store i32* %p_data_read, i32** %p_data_read.addr, align 8, !tbaa !1
  store i32 %p_max_len, i32* %p_max_len.addr, align 4, !tbaa !5
  store %struct.opj_codestream_index* %p_cstr_index, %struct.opj_codestream_index** %p_cstr_index.addr, align 8, !tbaa !1
  %0 = bitcast i8** %l_current_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %p_src.addr, align 8, !tbaa !1
  store i8* %1, i8** %l_current_data, align 8, !tbaa !1
  %2 = bitcast %struct.opj_pi_iterator** %l_pi to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store %struct.opj_pi_iterator* null, %struct.opj_pi_iterator** %l_pi, align 8, !tbaa !1
  %3 = bitcast i32* %pino to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct.opj_image** %l_image to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.opj_t2*, %struct.opj_t2** %p_t2.addr, align 8, !tbaa !1
  %image = getelementptr inbounds %struct.opj_t2, %struct.opj_t2* %5, i32 0, i32 0
  %6 = load %struct.opj_image*, %struct.opj_image** %image, align 8, !tbaa !8
  store %struct.opj_image* %6, %struct.opj_image** %l_image, align 8, !tbaa !1
  %7 = bitcast %struct.opj_cp** %l_cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.opj_t2*, %struct.opj_t2** %p_t2.addr, align 8, !tbaa !1
  %cp = getelementptr inbounds %struct.opj_t2, %struct.opj_t2* %8, i32 0, i32 1
  %9 = load %struct.opj_cp*, %struct.opj_cp** %cp, align 8, !tbaa !10
  store %struct.opj_cp* %9, %struct.opj_cp** %l_cp, align 8, !tbaa !1
  %10 = bitcast %struct.opj_tcp** %l_tcp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load i32, i32* %p_tile_no.addr, align 4, !tbaa !5
  %idxprom = zext i32 %11 to i64
  %12 = load %struct.opj_t2*, %struct.opj_t2** %p_t2.addr, align 8, !tbaa !1
  %cp1 = getelementptr inbounds %struct.opj_t2, %struct.opj_t2* %12, i32 0, i32 1
  %13 = load %struct.opj_cp*, %struct.opj_cp** %cp1, align 8, !tbaa !10
  %tcps = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %13, i32 0, i32 17
  %14 = load %struct.opj_tcp*, %struct.opj_tcp** %tcps, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %14, i64 %idxprom
  store %struct.opj_tcp* %arrayidx, %struct.opj_tcp** %l_tcp, align 8, !tbaa !1
  %15 = bitcast i32* %l_nb_bytes_read to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %l_nb_pocs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load %struct.opj_tcp*, %struct.opj_tcp** %l_tcp, align 8, !tbaa !1
  %numpocs = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %17, i32 0, i32 6
  %18 = load i32, i32* %numpocs, align 4, !tbaa !18
  %add = add i32 %18, 1
  store i32 %add, i32* %l_nb_pocs, align 4, !tbaa !5
  %19 = bitcast %struct.opj_pi_iterator** %l_current_pi to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  store %struct.opj_pi_iterator* null, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !1
  %20 = bitcast %struct.opj_packet_info** %l_pack_info to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  store %struct.opj_packet_info* null, %struct.opj_packet_info** %l_pack_info, align 8, !tbaa !1
  %21 = bitcast %struct.opj_image_comp** %l_img_comp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  store %struct.opj_image_comp* null, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !1
  %22 = load %struct.opj_codestream_index*, %struct.opj_codestream_index** %p_cstr_index.addr, align 8, !tbaa !1
  %23 = load %struct.opj_image*, %struct.opj_image** %l_image, align 8, !tbaa !1
  %24 = load %struct.opj_cp*, %struct.opj_cp** %l_cp, align 8, !tbaa !1
  %25 = load i32, i32* %p_tile_no.addr, align 4, !tbaa !5
  %call = call %struct.opj_pi_iterator* @opj_pi_create_decode(%struct.opj_image* %23, %struct.opj_cp* %24, i32 %25) #5
  store %struct.opj_pi_iterator* %call, %struct.opj_pi_iterator** %l_pi, align 8, !tbaa !1
  %26 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_pi, align 8, !tbaa !1
  %tobool = icmp ne %struct.opj_pi_iterator* %26, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.67

if.end:                                           ; preds = %entry
  %27 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_pi, align 8, !tbaa !1
  store %struct.opj_pi_iterator* %27, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !1
  store i32 0, i32* %pino, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %28 = load i32, i32* %pino, align 4, !tbaa !5
  %29 = load %struct.opj_tcp*, %struct.opj_tcp** %l_tcp, align 8, !tbaa !1
  %numpocs2 = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %29, i32 0, i32 6
  %30 = load i32, i32* %numpocs2, align 4, !tbaa !18
  %cmp = icmp ule i32 %28, %30
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = bitcast i32** %first_pass_failed to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  %32 = load %struct.opj_image*, %struct.opj_image** %l_image, align 8, !tbaa !1
  %numcomps = getelementptr inbounds %struct.opj_image, %struct.opj_image* %32, i32 0, i32 4
  %33 = load i32, i32* %numcomps, align 4, !tbaa !16
  %conv = zext i32 %33 to i64
  %mul = mul i64 %conv, 4
  %cmp3 = icmp uge i64 %mul, -256
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %34 = load %struct.opj_image*, %struct.opj_image** %l_image, align 8, !tbaa !1
  %numcomps5 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %34, i32 0, i32 4
  %35 = load i32, i32* %numcomps5, align 4, !tbaa !16
  %conv6 = zext i32 %35 to i64
  %mul7 = mul i64 %conv6, 4
  %call8 = call noalias i8* @malloc(i64 %mul7) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %call8, %cond.false ]
  %36 = bitcast i8* %cond to i32*
  store i32* %36, i32** %first_pass_failed, align 8, !tbaa !1
  %37 = load i32*, i32** %first_pass_failed, align 8, !tbaa !1
  %tobool9 = icmp ne i32* %37, null
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %cond.end
  %38 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_pi, align 8, !tbaa !1
  %39 = load i32, i32* %l_nb_pocs, align 4, !tbaa !5
  call void @opj_pi_destroy(%struct.opj_pi_iterator* %38, i32 %39) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %cond.end
  %40 = load i32*, i32** %first_pass_failed, align 8, !tbaa !1
  %41 = bitcast i32* %40 to i8*
  %42 = load %struct.opj_image*, %struct.opj_image** %l_image, align 8, !tbaa !1
  %numcomps12 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %42, i32 0, i32 4
  %43 = load i32, i32* %numcomps12, align 4, !tbaa !16
  %conv13 = zext i32 %43 to i64
  %mul14 = mul i64 %conv13, 4
  %call15 = call i8* @memset(i8* %41, i32 1, i64 %mul14) #6
  br label %while.cond

while.cond:                                       ; preds = %if.end.64, %if.end.11
  %44 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !1
  %call16 = call i32 @opj_pi_next(%struct.opj_pi_iterator* %44) #5
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %45 = load %struct.opj_tcp*, %struct.opj_tcp** %l_tcp, align 8, !tbaa !1
  %num_layers_to_decode = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %45, i32 0, i32 3
  %46 = load i32, i32* %num_layers_to_decode, align 4, !tbaa !71
  %47 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !1
  %layno = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %47, i32 0, i32 9
  %48 = load i32, i32* %layno, align 4, !tbaa !20
  %cmp18 = icmp ugt i32 %46, %48
  br i1 %cmp18, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %49 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !1
  %resno = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %49, i32 0, i32 7
  %50 = load i32, i32* %resno, align 4, !tbaa !39
  %51 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !1
  %compno = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %51, i32 0, i32 6
  %52 = load i32, i32* %compno, align 4, !tbaa !38
  %idxprom20 = zext i32 %52 to i64
  %53 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %p_tile.addr, align 8, !tbaa !1
  %comps = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %53, i32 0, i32 5
  %54 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %comps, align 8, !tbaa !41
  %arrayidx21 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %54, i64 %idxprom20
  %minimum_num_resolutions = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %arrayidx21, i32 0, i32 5
  %55 = load i32, i32* %minimum_num_resolutions, align 4, !tbaa !72
  %cmp22 = icmp ult i32 %50, %55
  br i1 %cmp22, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %land.lhs.true
  store i32 0, i32* %l_nb_bytes_read, align 4, !tbaa !5
  %56 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !1
  %compno25 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %56, i32 0, i32 6
  %57 = load i32, i32* %compno25, align 4, !tbaa !38
  %idxprom26 = zext i32 %57 to i64
  %58 = load i32*, i32** %first_pass_failed, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds i32, i32* %58, i64 %idxprom26
  store i32 0, i32* %arrayidx27, align 4, !tbaa !5
  %59 = load %struct.opj_t2*, %struct.opj_t2** %p_t2.addr, align 8, !tbaa !1
  %60 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %p_tile.addr, align 8, !tbaa !1
  %61 = load %struct.opj_tcp*, %struct.opj_tcp** %l_tcp, align 8, !tbaa !1
  %62 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !1
  %63 = load i8*, i8** %l_current_data, align 8, !tbaa !1
  %64 = load i32, i32* %p_max_len.addr, align 4, !tbaa !5
  %65 = load %struct.opj_packet_info*, %struct.opj_packet_info** %l_pack_info, align 8, !tbaa !1
  %call28 = call i32 @opj_t2_decode_packet(%struct.opj_t2* %59, %struct.opj_tcd_tile* %60, %struct.opj_tcp* %61, %struct.opj_pi_iterator* %62, i8* %63, i32* %l_nb_bytes_read, i32 %64, %struct.opj_packet_info* %65) #5
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.end.31, label %if.then.30

if.then.30:                                       ; preds = %if.then.24
  %66 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_pi, align 8, !tbaa !1
  %67 = load i32, i32* %l_nb_pocs, align 4, !tbaa !5
  call void @opj_pi_destroy(%struct.opj_pi_iterator* %66, i32 %67) #5
  %68 = load i32*, i32** %first_pass_failed, align 8, !tbaa !1
  %69 = bitcast i32* %68 to i8*
  call void @free(i8* %69) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.31:                                        ; preds = %if.then.24
  %70 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !1
  %compno32 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %70, i32 0, i32 6
  %71 = load i32, i32* %compno32, align 4, !tbaa !38
  %idxprom33 = zext i32 %71 to i64
  %72 = load %struct.opj_image*, %struct.opj_image** %l_image, align 8, !tbaa !1
  %comps34 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %72, i32 0, i32 6
  %73 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps34, align 8, !tbaa !73
  %arrayidx35 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %73, i64 %idxprom33
  store %struct.opj_image_comp* %arrayidx35, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !1
  %74 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !1
  %resno36 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %74, i32 0, i32 7
  %75 = load i32, i32* %resno36, align 4, !tbaa !39
  %76 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !1
  %resno_decoded = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %76, i32 0, i32 9
  %77 = load i32, i32* %resno_decoded, align 4, !tbaa !74
  %call37 = call i32 @opj_uint_max(i32 %75, i32 %77) #5
  %78 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !1
  %resno_decoded38 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %78, i32 0, i32 9
  store i32 %call37, i32* %resno_decoded38, align 4, !tbaa !74
  br label %if.end.43

if.else:                                          ; preds = %land.lhs.true, %while.body
  store i32 0, i32* %l_nb_bytes_read, align 4, !tbaa !5
  %79 = load %struct.opj_t2*, %struct.opj_t2** %p_t2.addr, align 8, !tbaa !1
  %80 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %p_tile.addr, align 8, !tbaa !1
  %81 = load %struct.opj_tcp*, %struct.opj_tcp** %l_tcp, align 8, !tbaa !1
  %82 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !1
  %83 = load i8*, i8** %l_current_data, align 8, !tbaa !1
  %84 = load i32, i32* %p_max_len.addr, align 4, !tbaa !5
  %85 = load %struct.opj_packet_info*, %struct.opj_packet_info** %l_pack_info, align 8, !tbaa !1
  %call39 = call i32 @opj_t2_skip_packet(%struct.opj_t2* %79, %struct.opj_tcd_tile* %80, %struct.opj_tcp* %81, %struct.opj_pi_iterator* %82, i8* %83, i32* %l_nb_bytes_read, i32 %84, %struct.opj_packet_info* %85) #5
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.end.42, label %if.then.41

if.then.41:                                       ; preds = %if.else
  %86 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_pi, align 8, !tbaa !1
  %87 = load i32, i32* %l_nb_pocs, align 4, !tbaa !5
  call void @opj_pi_destroy(%struct.opj_pi_iterator* %86, i32 %87) #5
  %88 = load i32*, i32** %first_pass_failed, align 8, !tbaa !1
  %89 = bitcast i32* %88 to i8*
  call void @free(i8* %89) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.42:                                        ; preds = %if.else
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.end.31
  %90 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !1
  %compno44 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %90, i32 0, i32 6
  %91 = load i32, i32* %compno44, align 4, !tbaa !38
  %idxprom45 = zext i32 %91 to i64
  %92 = load i32*, i32** %first_pass_failed, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds i32, i32* %92, i64 %idxprom45
  %93 = load i32, i32* %arrayidx46, align 4, !tbaa !5
  %tobool47 = icmp ne i32 %93, 0
  br i1 %tobool47, label %if.then.48, label %if.end.64

if.then.48:                                       ; preds = %if.end.43
  %94 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !1
  %compno49 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %94, i32 0, i32 6
  %95 = load i32, i32* %compno49, align 4, !tbaa !38
  %idxprom50 = zext i32 %95 to i64
  %96 = load %struct.opj_image*, %struct.opj_image** %l_image, align 8, !tbaa !1
  %comps51 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %96, i32 0, i32 6
  %97 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps51, align 8, !tbaa !73
  %arrayidx52 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %97, i64 %idxprom50
  store %struct.opj_image_comp* %arrayidx52, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !1
  %98 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !1
  %resno_decoded53 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %98, i32 0, i32 9
  %99 = load i32, i32* %resno_decoded53, align 4, !tbaa !74
  %cmp54 = icmp eq i32 %99, 0
  br i1 %cmp54, label %if.then.56, label %if.end.63

if.then.56:                                       ; preds = %if.then.48
  %100 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !1
  %compno57 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %100, i32 0, i32 6
  %101 = load i32, i32* %compno57, align 4, !tbaa !38
  %idxprom58 = zext i32 %101 to i64
  %102 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %p_tile.addr, align 8, !tbaa !1
  %comps59 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %102, i32 0, i32 5
  %103 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %comps59, align 8, !tbaa !41
  %arrayidx60 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %103, i64 %idxprom58
  %minimum_num_resolutions61 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %arrayidx60, i32 0, i32 5
  %104 = load i32, i32* %minimum_num_resolutions61, align 4, !tbaa !72
  %sub = sub i32 %104, 1
  %105 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !1
  %resno_decoded62 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %105, i32 0, i32 9
  store i32 %sub, i32* %resno_decoded62, align 4, !tbaa !74
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.56, %if.then.48
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.end.43
  %106 = load i32, i32* %l_nb_bytes_read, align 4, !tbaa !5
  %107 = load i8*, i8** %l_current_data, align 8, !tbaa !1
  %idx.ext = zext i32 %106 to i64
  %add.ptr = getelementptr inbounds i8, i8* %107, i64 %idx.ext
  store i8* %add.ptr, i8** %l_current_data, align 8, !tbaa !1
  %108 = load i32, i32* %l_nb_bytes_read, align 4, !tbaa !5
  %109 = load i32, i32* %p_max_len.addr, align 4, !tbaa !5
  %sub65 = sub i32 %109, %108
  store i32 %sub65, i32* %p_max_len.addr, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %110 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %110, i32 1
  store %struct.opj_pi_iterator* %incdec.ptr, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !1
  %111 = load i32*, i32** %first_pass_failed, align 8, !tbaa !1
  %112 = bitcast i32* %111 to i8*
  call void @free(i8* %112) #6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then.41, %if.then.30, %if.then.10
  %113 = bitcast i32** %first_pass_failed to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.67 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %114 = load i32, i32* %pino, align 4, !tbaa !5
  %inc = add i32 %114, 1
  store i32 %inc, i32* %pino, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %115 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_pi, align 8, !tbaa !1
  %116 = load i32, i32* %l_nb_pocs, align 4, !tbaa !5
  call void @opj_pi_destroy(%struct.opj_pi_iterator* %115, i32 %116) #5
  %117 = load i8*, i8** %l_current_data, align 8, !tbaa !1
  %118 = load i8*, i8** %p_src.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %117 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %118 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv66 = trunc i64 %sub.ptr.sub to i32
  %119 = load i32*, i32** %p_data_read.addr, align 8, !tbaa !1
  store i32 %conv66, i32* %119, align 4, !tbaa !5
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.67

cleanup.67:                                       ; preds = %for.end, %cleanup, %if.then
  %120 = bitcast %struct.opj_image_comp** %l_img_comp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %120) #1
  %121 = bitcast %struct.opj_packet_info** %l_pack_info to i8*
  call void @llvm.lifetime.end(i64 8, i8* %121) #1
  %122 = bitcast %struct.opj_pi_iterator** %l_current_pi to i8*
  call void @llvm.lifetime.end(i64 8, i8* %122) #1
  %123 = bitcast i32* %l_nb_pocs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #1
  %124 = bitcast i32* %l_nb_bytes_read to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #1
  %125 = bitcast %struct.opj_tcp** %l_tcp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %125) #1
  %126 = bitcast %struct.opj_cp** %l_cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %126) #1
  %127 = bitcast %struct.opj_image** %l_image to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #1
  %128 = bitcast i32* %pino to i8*
  call void @llvm.lifetime.end(i64 4, i8* %128) #1
  %129 = bitcast %struct.opj_pi_iterator** %l_pi to i8*
  call void @llvm.lifetime.end(i64 8, i8* %129) #1
  %130 = bitcast i8** %l_current_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %130) #1
  %131 = load i32, i32* %retval
  ret i32 %131
}

declare %struct.opj_pi_iterator* @opj_pi_create_decode(%struct.opj_image*, %struct.opj_cp*, i32) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @opj_t2_decode_packet(%struct.opj_t2* %p_t2, %struct.opj_tcd_tile* %p_tile, %struct.opj_tcp* %p_tcp, %struct.opj_pi_iterator* %p_pi, i8* %p_src, i32* %p_data_read, i32 %p_max_length, %struct.opj_packet_info* %p_pack_info) #0 {
entry:
  %retval = alloca i32, align 4
  %p_t2.addr = alloca %struct.opj_t2*, align 8
  %p_tile.addr = alloca %struct.opj_tcd_tile*, align 8
  %p_tcp.addr = alloca %struct.opj_tcp*, align 8
  %p_pi.addr = alloca %struct.opj_pi_iterator*, align 8
  %p_src.addr = alloca i8*, align 8
  %p_data_read.addr = alloca i32*, align 8
  %p_max_length.addr = alloca i32, align 4
  %p_pack_info.addr = alloca %struct.opj_packet_info*, align 8
  %l_read_data = alloca i32, align 4
  %l_nb_bytes_read = alloca i32, align 4
  %l_nb_total_bytes_read = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.opj_t2* %p_t2, %struct.opj_t2** %p_t2.addr, align 8, !tbaa !1
  store %struct.opj_tcd_tile* %p_tile, %struct.opj_tcd_tile** %p_tile.addr, align 8, !tbaa !1
  store %struct.opj_tcp* %p_tcp, %struct.opj_tcp** %p_tcp.addr, align 8, !tbaa !1
  store %struct.opj_pi_iterator* %p_pi, %struct.opj_pi_iterator** %p_pi.addr, align 8, !tbaa !1
  store i8* %p_src, i8** %p_src.addr, align 8, !tbaa !1
  store i32* %p_data_read, i32** %p_data_read.addr, align 8, !tbaa !1
  store i32 %p_max_length, i32* %p_max_length.addr, align 4, !tbaa !5
  store %struct.opj_packet_info* %p_pack_info, %struct.opj_packet_info** %p_pack_info.addr, align 8, !tbaa !1
  %0 = bitcast i32* %l_read_data to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %l_nb_bytes_read to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %l_nb_bytes_read, align 4, !tbaa !5
  %2 = bitcast i32* %l_nb_total_bytes_read to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %l_nb_total_bytes_read, align 4, !tbaa !5
  %3 = load i32*, i32** %p_data_read.addr, align 8, !tbaa !1
  store i32 0, i32* %3, align 4, !tbaa !5
  %4 = load %struct.opj_t2*, %struct.opj_t2** %p_t2.addr, align 8, !tbaa !1
  %5 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %p_tile.addr, align 8, !tbaa !1
  %6 = load %struct.opj_tcp*, %struct.opj_tcp** %p_tcp.addr, align 8, !tbaa !1
  %7 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %p_pi.addr, align 8, !tbaa !1
  %8 = load i8*, i8** %p_src.addr, align 8, !tbaa !1
  %9 = load i32, i32* %p_max_length.addr, align 4, !tbaa !5
  %10 = load %struct.opj_packet_info*, %struct.opj_packet_info** %p_pack_info.addr, align 8, !tbaa !1
  %call = call i32 @opj_t2_read_packet_header(%struct.opj_t2* %4, %struct.opj_tcd_tile* %5, %struct.opj_tcp* %6, %struct.opj_pi_iterator* %7, i32* %l_read_data, i8* %8, i32* %l_nb_bytes_read, i32 %9, %struct.opj_packet_info* %10) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load i32, i32* %l_nb_bytes_read, align 4, !tbaa !5
  %12 = load i8*, i8** %p_src.addr, align 8, !tbaa !1
  %idx.ext = zext i32 %11 to i64
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %idx.ext
  store i8* %add.ptr, i8** %p_src.addr, align 8, !tbaa !1
  %13 = load i32, i32* %l_nb_bytes_read, align 4, !tbaa !5
  %14 = load i32, i32* %l_nb_total_bytes_read, align 4, !tbaa !5
  %add = add i32 %14, %13
  store i32 %add, i32* %l_nb_total_bytes_read, align 4, !tbaa !5
  %15 = load i32, i32* %l_nb_bytes_read, align 4, !tbaa !5
  %16 = load i32, i32* %p_max_length.addr, align 4, !tbaa !5
  %sub = sub i32 %16, %15
  store i32 %sub, i32* %p_max_length.addr, align 4, !tbaa !5
  %17 = load i32, i32* %l_read_data, align 4, !tbaa !5
  %tobool1 = icmp ne i32 %17, 0
  br i1 %tobool1, label %if.then.2, label %if.end.8

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %l_nb_bytes_read, align 4, !tbaa !5
  %18 = load %struct.opj_t2*, %struct.opj_t2** %p_t2.addr, align 8, !tbaa !1
  %19 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %p_tile.addr, align 8, !tbaa !1
  %20 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %p_pi.addr, align 8, !tbaa !1
  %21 = load i8*, i8** %p_src.addr, align 8, !tbaa !1
  %22 = load i32, i32* %p_max_length.addr, align 4, !tbaa !5
  %23 = load %struct.opj_packet_info*, %struct.opj_packet_info** %p_pack_info.addr, align 8, !tbaa !1
  %call3 = call i32 @opj_t2_read_packet_data(%struct.opj_t2* %18, %struct.opj_tcd_tile* %19, %struct.opj_pi_iterator* %20, i8* %21, i32* %l_nb_bytes_read, i32 %22, %struct.opj_packet_info* %23) #5
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.then.2
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.then.2
  %24 = load i32, i32* %l_nb_bytes_read, align 4, !tbaa !5
  %25 = load i32, i32* %l_nb_total_bytes_read, align 4, !tbaa !5
  %add7 = add i32 %25, %24
  store i32 %add7, i32* %l_nb_total_bytes_read, align 4, !tbaa !5
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.6, %if.end
  %26 = load i32, i32* %l_nb_total_bytes_read, align 4, !tbaa !5
  %27 = load i32*, i32** %p_data_read.addr, align 8, !tbaa !1
  store i32 %26, i32* %27, align 4, !tbaa !5
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.8, %if.then.5, %if.then
  %28 = bitcast i32* %l_nb_total_bytes_read to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast i32* %l_nb_bytes_read to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = bitcast i32* %l_read_data to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @opj_uint_max(i32 %a, i32 %b) #4 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4, !tbaa !5
  store i32 %b, i32* %b.addr, align 4, !tbaa !5
  %0 = load i32, i32* %a.addr, align 4, !tbaa !5
  %1 = load i32, i32* %b.addr, align 4, !tbaa !5
  %cmp = icmp ugt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %a.addr, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %b.addr, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define internal i32 @opj_t2_skip_packet(%struct.opj_t2* %p_t2, %struct.opj_tcd_tile* %p_tile, %struct.opj_tcp* %p_tcp, %struct.opj_pi_iterator* %p_pi, i8* %p_src, i32* %p_data_read, i32 %p_max_length, %struct.opj_packet_info* %p_pack_info) #0 {
entry:
  %retval = alloca i32, align 4
  %p_t2.addr = alloca %struct.opj_t2*, align 8
  %p_tile.addr = alloca %struct.opj_tcd_tile*, align 8
  %p_tcp.addr = alloca %struct.opj_tcp*, align 8
  %p_pi.addr = alloca %struct.opj_pi_iterator*, align 8
  %p_src.addr = alloca i8*, align 8
  %p_data_read.addr = alloca i32*, align 8
  %p_max_length.addr = alloca i32, align 4
  %p_pack_info.addr = alloca %struct.opj_packet_info*, align 8
  %l_read_data = alloca i32, align 4
  %l_nb_bytes_read = alloca i32, align 4
  %l_nb_total_bytes_read = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.opj_t2* %p_t2, %struct.opj_t2** %p_t2.addr, align 8, !tbaa !1
  store %struct.opj_tcd_tile* %p_tile, %struct.opj_tcd_tile** %p_tile.addr, align 8, !tbaa !1
  store %struct.opj_tcp* %p_tcp, %struct.opj_tcp** %p_tcp.addr, align 8, !tbaa !1
  store %struct.opj_pi_iterator* %p_pi, %struct.opj_pi_iterator** %p_pi.addr, align 8, !tbaa !1
  store i8* %p_src, i8** %p_src.addr, align 8, !tbaa !1
  store i32* %p_data_read, i32** %p_data_read.addr, align 8, !tbaa !1
  store i32 %p_max_length, i32* %p_max_length.addr, align 4, !tbaa !5
  store %struct.opj_packet_info* %p_pack_info, %struct.opj_packet_info** %p_pack_info.addr, align 8, !tbaa !1
  %0 = bitcast i32* %l_read_data to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %l_nb_bytes_read to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %l_nb_bytes_read, align 4, !tbaa !5
  %2 = bitcast i32* %l_nb_total_bytes_read to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %l_nb_total_bytes_read, align 4, !tbaa !5
  %3 = load i32*, i32** %p_data_read.addr, align 8, !tbaa !1
  store i32 0, i32* %3, align 4, !tbaa !5
  %4 = load %struct.opj_t2*, %struct.opj_t2** %p_t2.addr, align 8, !tbaa !1
  %5 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %p_tile.addr, align 8, !tbaa !1
  %6 = load %struct.opj_tcp*, %struct.opj_tcp** %p_tcp.addr, align 8, !tbaa !1
  %7 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %p_pi.addr, align 8, !tbaa !1
  %8 = load i8*, i8** %p_src.addr, align 8, !tbaa !1
  %9 = load i32, i32* %p_max_length.addr, align 4, !tbaa !5
  %10 = load %struct.opj_packet_info*, %struct.opj_packet_info** %p_pack_info.addr, align 8, !tbaa !1
  %call = call i32 @opj_t2_read_packet_header(%struct.opj_t2* %4, %struct.opj_tcd_tile* %5, %struct.opj_tcp* %6, %struct.opj_pi_iterator* %7, i32* %l_read_data, i8* %8, i32* %l_nb_bytes_read, i32 %9, %struct.opj_packet_info* %10) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load i32, i32* %l_nb_bytes_read, align 4, !tbaa !5
  %12 = load i8*, i8** %p_src.addr, align 8, !tbaa !1
  %idx.ext = zext i32 %11 to i64
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %idx.ext
  store i8* %add.ptr, i8** %p_src.addr, align 8, !tbaa !1
  %13 = load i32, i32* %l_nb_bytes_read, align 4, !tbaa !5
  %14 = load i32, i32* %l_nb_total_bytes_read, align 4, !tbaa !5
  %add = add i32 %14, %13
  store i32 %add, i32* %l_nb_total_bytes_read, align 4, !tbaa !5
  %15 = load i32, i32* %l_nb_bytes_read, align 4, !tbaa !5
  %16 = load i32, i32* %p_max_length.addr, align 4, !tbaa !5
  %sub = sub i32 %16, %15
  store i32 %sub, i32* %p_max_length.addr, align 4, !tbaa !5
  %17 = load i32, i32* %l_read_data, align 4, !tbaa !5
  %tobool1 = icmp ne i32 %17, 0
  br i1 %tobool1, label %if.then.2, label %if.end.8

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %l_nb_bytes_read, align 4, !tbaa !5
  %18 = load %struct.opj_t2*, %struct.opj_t2** %p_t2.addr, align 8, !tbaa !1
  %19 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %p_tile.addr, align 8, !tbaa !1
  %20 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %p_pi.addr, align 8, !tbaa !1
  %21 = load i32, i32* %p_max_length.addr, align 4, !tbaa !5
  %22 = load %struct.opj_packet_info*, %struct.opj_packet_info** %p_pack_info.addr, align 8, !tbaa !1
  %call3 = call i32 @opj_t2_skip_packet_data(%struct.opj_t2* %18, %struct.opj_tcd_tile* %19, %struct.opj_pi_iterator* %20, i32* %l_nb_bytes_read, i32 %21, %struct.opj_packet_info* %22) #5
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.then.2
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.then.2
  %23 = load i32, i32* %l_nb_bytes_read, align 4, !tbaa !5
  %24 = load i32, i32* %l_nb_total_bytes_read, align 4, !tbaa !5
  %add7 = add i32 %24, %23
  store i32 %add7, i32* %l_nb_total_bytes_read, align 4, !tbaa !5
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.6, %if.end
  %25 = load i32, i32* %l_nb_total_bytes_read, align 4, !tbaa !5
  %26 = load i32*, i32** %p_data_read.addr, align 8, !tbaa !1
  store i32 %25, i32* %26, align 4, !tbaa !5
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.8, %if.then.5, %if.then
  %27 = bitcast i32* %l_nb_total_bytes_read to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = bitcast i32* %l_nb_bytes_read to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast i32* %l_read_data to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define %struct.opj_t2* @opj_t2_create(%struct.opj_image* %p_image, %struct.opj_cp* %p_cp) #0 {
entry:
  %retval = alloca %struct.opj_t2*, align 8
  %p_image.addr = alloca %struct.opj_image*, align 8
  %p_cp.addr = alloca %struct.opj_cp*, align 8
  %l_t2 = alloca %struct.opj_t2*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.opj_image* %p_image, %struct.opj_image** %p_image.addr, align 8, !tbaa !1
  store %struct.opj_cp* %p_cp, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !1
  %0 = bitcast %struct.opj_t2** %l_t2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %call = call noalias i8* @malloc(i64 16) #6
  %1 = bitcast i8* %call to %struct.opj_t2*
  store %struct.opj_t2* %1, %struct.opj_t2** %l_t2, align 8, !tbaa !1
  %2 = load %struct.opj_t2*, %struct.opj_t2** %l_t2, align 8, !tbaa !1
  %tobool = icmp ne %struct.opj_t2* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.opj_t2* null, %struct.opj_t2** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.opj_t2*, %struct.opj_t2** %l_t2, align 8, !tbaa !1
  %4 = bitcast %struct.opj_t2* %3 to i8*
  %call1 = call i8* @memset(i8* %4, i32 0, i64 16) #6
  %5 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !1
  %6 = load %struct.opj_t2*, %struct.opj_t2** %l_t2, align 8, !tbaa !1
  %image = getelementptr inbounds %struct.opj_t2, %struct.opj_t2* %6, i32 0, i32 0
  store %struct.opj_image* %5, %struct.opj_image** %image, align 8, !tbaa !8
  %7 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !1
  %8 = load %struct.opj_t2*, %struct.opj_t2** %l_t2, align 8, !tbaa !1
  %cp = getelementptr inbounds %struct.opj_t2, %struct.opj_t2* %8, i32 0, i32 1
  store %struct.opj_cp* %7, %struct.opj_cp** %cp, align 8, !tbaa !10
  %9 = load %struct.opj_t2*, %struct.opj_t2** %l_t2, align 8, !tbaa !1
  store %struct.opj_t2* %9, %struct.opj_t2** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %10 = bitcast %struct.opj_t2** %l_t2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  %11 = load %struct.opj_t2*, %struct.opj_t2** %retval
  ret %struct.opj_t2* %11
}

; Function Attrs: nounwind uwtable
define void @opj_t2_destroy(%struct.opj_t2* %t2) #0 {
entry:
  %t2.addr = alloca %struct.opj_t2*, align 8
  store %struct.opj_t2* %t2, %struct.opj_t2** %t2.addr, align 8, !tbaa !1
  %0 = load %struct.opj_t2*, %struct.opj_t2** %t2.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.opj_t2* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.opj_t2*, %struct.opj_t2** %t2.addr, align 8, !tbaa !1
  %2 = bitcast %struct.opj_t2* %1 to i8*
  call void @free(i8* %2) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @opj_t2_read_packet_header(%struct.opj_t2* %p_t2, %struct.opj_tcd_tile* %p_tile, %struct.opj_tcp* %p_tcp, %struct.opj_pi_iterator* %p_pi, i32* %p_is_data_present, i8* %p_src_data, i32* %p_data_read, i32 %p_max_length, %struct.opj_packet_info* %p_pack_info) #0 {
entry:
  %retval = alloca i32, align 4
  %p_t2.addr = alloca %struct.opj_t2*, align 8
  %p_tile.addr = alloca %struct.opj_tcd_tile*, align 8
  %p_tcp.addr = alloca %struct.opj_tcp*, align 8
  %p_pi.addr = alloca %struct.opj_pi_iterator*, align 8
  %p_is_data_present.addr = alloca i32*, align 8
  %p_src_data.addr = alloca i8*, align 8
  %p_data_read.addr = alloca i32*, align 8
  %p_max_length.addr = alloca i32, align 4
  %p_pack_info.addr = alloca %struct.opj_packet_info*, align 8
  %bandno = alloca i32, align 4
  %cblkno = alloca i32, align 4
  %l_nb_code_blocks = alloca i32, align 4
  %l_remaining_length = alloca i32, align 4
  %l_header_length = alloca i32, align 4
  %l_modified_length_ptr = alloca i32*, align 8
  %l_current_data = alloca i8*, align 8
  %l_cp = alloca %struct.opj_cp*, align 8
  %l_bio = alloca %struct.opj_bio*, align 8
  %l_band = alloca %struct.opj_tcd_band*, align 8
  %l_cblk = alloca %struct.opj_tcd_cblk_dec*, align 8
  %l_res = alloca %struct.opj_tcd_resolution*, align 8
  %l_header_data = alloca i8*, align 8
  %l_header_data_start = alloca i8**, align 8
  %l_present = alloca i32, align 4
  %l_prc = alloca %struct.opj_tcd_precinct*, align 8
  %cleanup.dest.slot = alloca i32
  %l_prc110 = alloca %struct.opj_tcd_precinct*, align 8
  %l_included = alloca i32, align 4
  %l_increment = alloca i32, align 4
  %l_segno = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.opj_t2* %p_t2, %struct.opj_t2** %p_t2.addr, align 8, !tbaa !1
  store %struct.opj_tcd_tile* %p_tile, %struct.opj_tcd_tile** %p_tile.addr, align 8, !tbaa !1
  store %struct.opj_tcp* %p_tcp, %struct.opj_tcp** %p_tcp.addr, align 8, !tbaa !1
  store %struct.opj_pi_iterator* %p_pi, %struct.opj_pi_iterator** %p_pi.addr, align 8, !tbaa !1
  store i32* %p_is_data_present, i32** %p_is_data_present.addr, align 8, !tbaa !1
  store i8* %p_src_data, i8** %p_src_data.addr, align 8, !tbaa !1
  store i32* %p_data_read, i32** %p_data_read.addr, align 8, !tbaa !1
  store i32 %p_max_length, i32* %p_max_length.addr, align 4, !tbaa !5
  store %struct.opj_packet_info* %p_pack_info, %struct.opj_packet_info** %p_pack_info.addr, align 8, !tbaa !1
  %0 = bitcast i32* %bandno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %cblkno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %l_nb_code_blocks to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %l_remaining_length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %l_header_length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32** %l_modified_length_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i32* null, i32** %l_modified_length_ptr, align 8, !tbaa !1
  %6 = bitcast i8** %l_current_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i8*, i8** %p_src_data.addr, align 8, !tbaa !1
  store i8* %7, i8** %l_current_data, align 8, !tbaa !1
  %8 = bitcast %struct.opj_cp** %l_cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.opj_t2*, %struct.opj_t2** %p_t2.addr, align 8, !tbaa !1
  %cp = getelementptr inbounds %struct.opj_t2, %struct.opj_t2* %9, i32 0, i32 1
  %10 = load %struct.opj_cp*, %struct.opj_cp** %cp, align 8, !tbaa !10
  store %struct.opj_cp* %10, %struct.opj_cp** %l_cp, align 8, !tbaa !1
  %11 = bitcast %struct.opj_bio** %l_bio to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store %struct.opj_bio* null, %struct.opj_bio** %l_bio, align 8, !tbaa !1
  %12 = bitcast %struct.opj_tcd_band** %l_band to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store %struct.opj_tcd_band* null, %struct.opj_tcd_band** %l_band, align 8, !tbaa !1
  %13 = bitcast %struct.opj_tcd_cblk_dec** %l_cblk to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store %struct.opj_tcd_cblk_dec* null, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %14 = bitcast %struct.opj_tcd_resolution** %l_res to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %p_pi.addr, align 8, !tbaa !1
  %resno = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %15, i32 0, i32 7
  %16 = load i32, i32* %resno, align 4, !tbaa !39
  %idxprom = zext i32 %16 to i64
  %17 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %p_pi.addr, align 8, !tbaa !1
  %compno = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %17, i32 0, i32 6
  %18 = load i32, i32* %compno, align 4, !tbaa !38
  %idxprom1 = zext i32 %18 to i64
  %19 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %p_tile.addr, align 8, !tbaa !1
  %comps = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %19, i32 0, i32 5
  %20 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %comps, align 8, !tbaa !41
  %arrayidx = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %20, i64 %idxprom1
  %resolutions = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %arrayidx, i32 0, i32 6
  %21 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %resolutions, align 8, !tbaa !42
  %arrayidx2 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %21, i64 %idxprom
  store %struct.opj_tcd_resolution* %arrayidx2, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !1
  %22 = bitcast i8** %l_header_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  store i8* null, i8** %l_header_data, align 8, !tbaa !1
  %23 = bitcast i8*** %l_header_data_start to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  store i8** null, i8*** %l_header_data_start, align 8, !tbaa !1
  %24 = bitcast i32* %l_present to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %p_pi.addr, align 8, !tbaa !1
  %layno = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %25, i32 0, i32 9
  %26 = load i32, i32* %layno, align 4, !tbaa !20
  %cmp = icmp eq i32 %26, 0
  br i1 %cmp, label %if.then, label %if.end.17

if.then:                                          ; preds = %entry
  %27 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !1
  %bands = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %27, i32 0, i32 7
  %arraydecay = getelementptr inbounds [3 x %struct.opj_tcd_band], [3 x %struct.opj_tcd_band]* %bands, i32 0, i32 0
  store %struct.opj_tcd_band* %arraydecay, %struct.opj_tcd_band** %l_band, align 8, !tbaa !1
  store i32 0, i32* %bandno, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.14, %if.then
  %28 = load i32, i32* %bandno, align 4, !tbaa !5
  %29 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !1
  %numbands = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %29, i32 0, i32 6
  %30 = load i32, i32* %numbands, align 4, !tbaa !45
  %cmp3 = icmp ult i32 %28, %30
  br i1 %cmp3, label %for.body, label %for.end.16

for.body:                                         ; preds = %for.cond
  %31 = bitcast %struct.opj_tcd_precinct** %l_prc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  %32 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %p_pi.addr, align 8, !tbaa !1
  %precno = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %32, i32 0, i32 8
  %33 = load i32, i32* %precno, align 4, !tbaa !40
  %idxprom4 = zext i32 %33 to i64
  %34 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !1
  %precincts = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %34, i32 0, i32 5
  %35 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %precincts, align 8, !tbaa !47
  %arrayidx5 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %35, i64 %idxprom4
  store %struct.opj_tcd_precinct* %arrayidx5, %struct.opj_tcd_precinct** %l_prc, align 8, !tbaa !1
  %36 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !1
  %x1 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %36, i32 0, i32 2
  %37 = load i32, i32* %x1, align 4, !tbaa !77
  %38 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !1
  %x0 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %38, i32 0, i32 0
  %39 = load i32, i32* %x0, align 4, !tbaa !78
  %sub = sub nsw i32 %37, %39
  %cmp6 = icmp eq i32 %sub, 0
  br i1 %cmp6, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %40 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !1
  %y1 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %40, i32 0, i32 3
  %41 = load i32, i32* %y1, align 4, !tbaa !79
  %42 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !1
  %y0 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %42, i32 0, i32 1
  %43 = load i32, i32* %y0, align 4, !tbaa !80
  %sub7 = sub nsw i32 %41, %43
  %cmp8 = icmp eq i32 %sub7, 0
  br i1 %cmp8, label %if.end, label %if.then.9

if.then.9:                                        ; preds = %lor.lhs.false
  %44 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_prc, align 8, !tbaa !1
  %incltree = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %44, i32 0, i32 8
  %45 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %incltree, align 8, !tbaa !50
  call void @opj_tgt_reset(%struct.opj_tgt_tree* %45) #5
  %46 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_prc, align 8, !tbaa !1
  %imsbtree = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %46, i32 0, i32 9
  %47 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %imsbtree, align 8, !tbaa !52
  call void @opj_tgt_reset(%struct.opj_tgt_tree* %47) #5
  %48 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_prc, align 8, !tbaa !1
  %cblks = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %48, i32 0, i32 6
  %dec = bitcast %union.anon.0* %cblks to %struct.opj_tcd_cblk_dec**
  %49 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %dec, align 8, !tbaa !1
  store %struct.opj_tcd_cblk_dec* %49, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %50 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_prc, align 8, !tbaa !1
  %cw = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %50, i32 0, i32 4
  %51 = load i32, i32* %cw, align 4, !tbaa !53
  %52 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_prc, align 8, !tbaa !1
  %ch = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %52, i32 0, i32 5
  %53 = load i32, i32* %ch, align 4, !tbaa !54
  %mul = mul i32 %51, %53
  store i32 %mul, i32* %l_nb_code_blocks, align 4, !tbaa !5
  store i32 0, i32* %cblkno, align 4, !tbaa !5
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %if.then.9
  %54 = load i32, i32* %cblkno, align 4, !tbaa !5
  %55 = load i32, i32* %l_nb_code_blocks, align 4, !tbaa !5
  %cmp11 = icmp ult i32 %54, %55
  br i1 %cmp11, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.10
  %56 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %numsegs = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %56, i32 0, i32 11
  store i32 0, i32* %numsegs, align 4, !tbaa !81
  %57 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %real_num_segs = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %57, i32 0, i32 12
  store i32 0, i32* %real_num_segs, align 4, !tbaa !83
  %58 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %58, i32 1
  store %struct.opj_tcd_cblk_dec* %incdec.ptr, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body.12
  %59 = load i32, i32* %cblkno, align 4, !tbaa !5
  %inc = add i32 %59, 1
  store i32 %inc, i32* %cblkno, align 4, !tbaa !5
  br label %for.cond.10

for.end:                                          ; preds = %for.cond.10
  br label %if.end

if.end:                                           ; preds = %for.end, %lor.lhs.false, %for.body
  %60 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !1
  %incdec.ptr13 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %60, i32 1
  store %struct.opj_tcd_band* %incdec.ptr13, %struct.opj_tcd_band** %l_band, align 8, !tbaa !1
  %61 = bitcast %struct.opj_tcd_precinct** %l_prc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  br label %for.inc.14

for.inc.14:                                       ; preds = %if.end
  %62 = load i32, i32* %bandno, align 4, !tbaa !5
  %inc15 = add i32 %62, 1
  store i32 %inc15, i32* %bandno, align 4, !tbaa !5
  br label %for.cond

for.end.16:                                       ; preds = %for.cond
  br label %if.end.17

if.end.17:                                        ; preds = %for.end.16, %entry
  %63 = load %struct.opj_tcp*, %struct.opj_tcp** %p_tcp.addr, align 8, !tbaa !1
  %csty = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %63, i32 0, i32 0
  %64 = load i32, i32* %csty, align 4, !tbaa !44
  %and = and i32 %64, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.18, label %if.end.33

if.then.18:                                       ; preds = %if.end.17
  %65 = load i32, i32* %p_max_length.addr, align 4, !tbaa !5
  %cmp19 = icmp ult i32 %65, 6
  br i1 %cmp19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %if.then.18
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i32 0, i32 0)) #5
  br label %if.end.32

if.else:                                          ; preds = %if.then.18
  %67 = load i8*, i8** %l_current_data, align 8, !tbaa !1
  %68 = load i8, i8* %67, align 1, !tbaa !7
  %conv = zext i8 %68 to i32
  %cmp21 = icmp ne i32 %conv, 255
  br i1 %cmp21, label %if.then.27, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %if.else
  %69 = load i8*, i8** %l_current_data, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %69, i64 1
  %70 = load i8, i8* %add.ptr, align 1, !tbaa !7
  %conv24 = zext i8 %70 to i32
  %cmp25 = icmp ne i32 %conv24, 145
  br i1 %cmp25, label %if.then.27, label %if.else.29

if.then.27:                                       ; preds = %lor.lhs.false.23, %if.else
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0)) #5
  br label %if.end.31

if.else.29:                                       ; preds = %lor.lhs.false.23
  %72 = load i8*, i8** %l_current_data, align 8, !tbaa !1
  %add.ptr30 = getelementptr inbounds i8, i8* %72, i64 6
  store i8* %add.ptr30, i8** %l_current_data, align 8, !tbaa !1
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.27
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.end.17
  %call34 = call %struct.opj_bio* @opj_bio_create() #5
  store %struct.opj_bio* %call34, %struct.opj_bio** %l_bio, align 8, !tbaa !1
  %73 = load %struct.opj_bio*, %struct.opj_bio** %l_bio, align 8, !tbaa !1
  %tobool35 = icmp ne %struct.opj_bio* %73, null
  br i1 %tobool35, label %if.end.37, label %if.then.36

if.then.36:                                       ; preds = %if.end.33
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.318

if.end.37:                                        ; preds = %if.end.33
  %74 = load %struct.opj_cp*, %struct.opj_cp** %l_cp, align 8, !tbaa !1
  %ppm = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %74, i32 0, i32 19
  %bf.load = load i8, i8* %ppm, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %cmp38 = icmp eq i32 %bf.cast, 1
  br i1 %cmp38, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %if.end.37
  %75 = load %struct.opj_cp*, %struct.opj_cp** %l_cp, align 8, !tbaa !1
  %ppm_data = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %75, i32 0, i32 8
  store i8** %ppm_data, i8*** %l_header_data_start, align 8, !tbaa !1
  %76 = load i8**, i8*** %l_header_data_start, align 8, !tbaa !1
  %77 = load i8*, i8** %76, align 8, !tbaa !1
  store i8* %77, i8** %l_header_data, align 8, !tbaa !1
  %78 = load %struct.opj_cp*, %struct.opj_cp** %l_cp, align 8, !tbaa !1
  %ppm_len = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %78, i32 0, i32 9
  store i32* %ppm_len, i32** %l_modified_length_ptr, align 8, !tbaa !1
  br label %if.end.52

if.else.41:                                       ; preds = %if.end.37
  %79 = load %struct.opj_tcp*, %struct.opj_tcp** %p_tcp.addr, align 8, !tbaa !1
  %ppt = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %79, i32 0, i32 26
  %bf.load42 = load i8, i8* %ppt, align 8
  %bf.clear43 = and i8 %bf.load42, 1
  %bf.cast44 = zext i8 %bf.clear43 to i32
  %cmp45 = icmp eq i32 %bf.cast44, 1
  br i1 %cmp45, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %if.else.41
  %80 = load %struct.opj_tcp*, %struct.opj_tcp** %p_tcp.addr, align 8, !tbaa !1
  %ppt_data = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %80, i32 0, i32 8
  store i8** %ppt_data, i8*** %l_header_data_start, align 8, !tbaa !1
  %81 = load i8**, i8*** %l_header_data_start, align 8, !tbaa !1
  %82 = load i8*, i8** %81, align 8, !tbaa !1
  store i8* %82, i8** %l_header_data, align 8, !tbaa !1
  %83 = load %struct.opj_tcp*, %struct.opj_tcp** %p_tcp.addr, align 8, !tbaa !1
  %ppt_len = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %83, i32 0, i32 11
  store i32* %ppt_len, i32** %l_modified_length_ptr, align 8, !tbaa !1
  br label %if.end.51

if.else.48:                                       ; preds = %if.else.41
  store i8** %l_current_data, i8*** %l_header_data_start, align 8, !tbaa !1
  %84 = load i8**, i8*** %l_header_data_start, align 8, !tbaa !1
  %85 = load i8*, i8** %84, align 8, !tbaa !1
  store i8* %85, i8** %l_header_data, align 8, !tbaa !1
  %86 = load i8*, i8** %p_src_data.addr, align 8, !tbaa !1
  %87 = load i32, i32* %p_max_length.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %87 to i64
  %add.ptr49 = getelementptr inbounds i8, i8* %86, i64 %idx.ext
  %88 = load i8*, i8** %l_header_data, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr49 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %88 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv50 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv50, i32* %l_remaining_length, align 4, !tbaa !5
  store i32* %l_remaining_length, i32** %l_modified_length_ptr, align 8, !tbaa !1
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.48, %if.then.47
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.then.40
  %89 = load %struct.opj_bio*, %struct.opj_bio** %l_bio, align 8, !tbaa !1
  %90 = load i8*, i8** %l_header_data, align 8, !tbaa !1
  %91 = load i32*, i32** %l_modified_length_ptr, align 8, !tbaa !1
  %92 = load i32, i32* %91, align 4, !tbaa !5
  call void @opj_bio_init_dec(%struct.opj_bio* %89, i8* %90, i32 %92) #5
  %93 = load %struct.opj_bio*, %struct.opj_bio** %l_bio, align 8, !tbaa !1
  %call53 = call i32 @opj_bio_read(%struct.opj_bio* %93, i32 1) #5
  store i32 %call53, i32* %l_present, align 4, !tbaa !5
  %94 = load i32, i32* %l_present, align 4, !tbaa !5
  %tobool54 = icmp ne i32 %94, 0
  br i1 %tobool54, label %if.end.102, label %if.then.55

if.then.55:                                       ; preds = %if.end.52
  %95 = load %struct.opj_bio*, %struct.opj_bio** %l_bio, align 8, !tbaa !1
  %call56 = call i32 @opj_bio_inalign(%struct.opj_bio* %95) #5
  %96 = load %struct.opj_bio*, %struct.opj_bio** %l_bio, align 8, !tbaa !1
  %call57 = call i64 @opj_bio_numbytes(%struct.opj_bio* %96) #5
  %97 = load i8*, i8** %l_header_data, align 8, !tbaa !1
  %add.ptr58 = getelementptr inbounds i8, i8* %97, i64 %call57
  store i8* %add.ptr58, i8** %l_header_data, align 8, !tbaa !1
  %98 = load %struct.opj_bio*, %struct.opj_bio** %l_bio, align 8, !tbaa !1
  call void @opj_bio_destroy(%struct.opj_bio* %98) #5
  %99 = load %struct.opj_tcp*, %struct.opj_tcp** %p_tcp.addr, align 8, !tbaa !1
  %csty59 = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %99, i32 0, i32 0
  %100 = load i32, i32* %csty59, align 4, !tbaa !44
  %and60 = and i32 %100, 4
  %tobool61 = icmp ne i32 %and60, 0
  br i1 %tobool61, label %if.then.62, label %if.end.82

if.then.62:                                       ; preds = %if.then.55
  %101 = load i32, i32* %p_max_length.addr, align 4, !tbaa !5
  %cmp63 = icmp ult i32 %101, 2
  br i1 %cmp63, label %if.then.65, label %if.else.67

if.then.65:                                       ; preds = %if.then.62
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %102, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i32 0, i32 0)) #5
  br label %if.end.81

if.else.67:                                       ; preds = %if.then.62
  %103 = load i8*, i8** %l_header_data, align 8, !tbaa !1
  %104 = load i8, i8* %103, align 1, !tbaa !7
  %conv68 = zext i8 %104 to i32
  %cmp69 = icmp ne i32 %conv68, 255
  br i1 %cmp69, label %if.then.76, label %lor.lhs.false.71

lor.lhs.false.71:                                 ; preds = %if.else.67
  %105 = load i8*, i8** %l_header_data, align 8, !tbaa !1
  %add.ptr72 = getelementptr inbounds i8, i8* %105, i64 1
  %106 = load i8, i8* %add.ptr72, align 1, !tbaa !7
  %conv73 = zext i8 %106 to i32
  %cmp74 = icmp ne i32 %conv73, 146
  br i1 %cmp74, label %if.then.76, label %if.else.78

if.then.76:                                       ; preds = %lor.lhs.false.71, %if.else.67
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call77 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %107, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0)) #5
  br label %if.end.80

if.else.78:                                       ; preds = %lor.lhs.false.71
  %108 = load i8*, i8** %l_header_data, align 8, !tbaa !1
  %add.ptr79 = getelementptr inbounds i8, i8* %108, i64 2
  store i8* %add.ptr79, i8** %l_header_data, align 8, !tbaa !1
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.78, %if.then.76
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.then.65
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.then.55
  %109 = load i8*, i8** %l_header_data, align 8, !tbaa !1
  %110 = load i8**, i8*** %l_header_data_start, align 8, !tbaa !1
  %111 = load i8*, i8** %110, align 8, !tbaa !1
  %sub.ptr.lhs.cast83 = ptrtoint i8* %109 to i64
  %sub.ptr.rhs.cast84 = ptrtoint i8* %111 to i64
  %sub.ptr.sub85 = sub i64 %sub.ptr.lhs.cast83, %sub.ptr.rhs.cast84
  %conv86 = trunc i64 %sub.ptr.sub85 to i32
  store i32 %conv86, i32* %l_header_length, align 4, !tbaa !5
  %112 = load i32, i32* %l_header_length, align 4, !tbaa !5
  %113 = load i32*, i32** %l_modified_length_ptr, align 8, !tbaa !1
  %114 = load i32, i32* %113, align 4, !tbaa !5
  %sub87 = sub i32 %114, %112
  store i32 %sub87, i32* %113, align 4, !tbaa !5
  %115 = load i32, i32* %l_header_length, align 4, !tbaa !5
  %116 = load i8**, i8*** %l_header_data_start, align 8, !tbaa !1
  %117 = load i8*, i8** %116, align 8, !tbaa !1
  %idx.ext88 = zext i32 %115 to i64
  %add.ptr89 = getelementptr inbounds i8, i8* %117, i64 %idx.ext88
  store i8* %add.ptr89, i8** %116, align 8, !tbaa !1
  %118 = load %struct.opj_packet_info*, %struct.opj_packet_info** %p_pack_info.addr, align 8, !tbaa !1
  %tobool90 = icmp ne %struct.opj_packet_info* %118, null
  br i1 %tobool90, label %if.then.91, label %if.end.97

if.then.91:                                       ; preds = %if.end.82
  %119 = load i8*, i8** %l_current_data, align 8, !tbaa !1
  %120 = load i8*, i8** %p_src_data.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast92 = ptrtoint i8* %119 to i64
  %sub.ptr.rhs.cast93 = ptrtoint i8* %120 to i64
  %sub.ptr.sub94 = sub i64 %sub.ptr.lhs.cast92, %sub.ptr.rhs.cast93
  %conv95 = trunc i64 %sub.ptr.sub94 to i32
  %conv96 = sext i32 %conv95 to i64
  %121 = load %struct.opj_packet_info*, %struct.opj_packet_info** %p_pack_info.addr, align 8, !tbaa !1
  %end_ph_pos = getelementptr inbounds %struct.opj_packet_info, %struct.opj_packet_info* %121, i32 0, i32 1
  store i64 %conv96, i64* %end_ph_pos, align 8, !tbaa !35
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.91, %if.end.82
  %122 = load i32*, i32** %p_is_data_present.addr, align 8, !tbaa !1
  store i32 0, i32* %122, align 4, !tbaa !5
  %123 = load i8*, i8** %l_current_data, align 8, !tbaa !1
  %124 = load i8*, i8** %p_src_data.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast98 = ptrtoint i8* %123 to i64
  %sub.ptr.rhs.cast99 = ptrtoint i8* %124 to i64
  %sub.ptr.sub100 = sub i64 %sub.ptr.lhs.cast98, %sub.ptr.rhs.cast99
  %conv101 = trunc i64 %sub.ptr.sub100 to i32
  %125 = load i32*, i32** %p_data_read.addr, align 8, !tbaa !1
  store i32 %conv101, i32* %125, align 4, !tbaa !5
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.318

if.end.102:                                       ; preds = %if.end.52
  %126 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !1
  %bands103 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %126, i32 0, i32 7
  %arraydecay104 = getelementptr inbounds [3 x %struct.opj_tcd_band], [3 x %struct.opj_tcd_band]* %bands103, i32 0, i32 0
  store %struct.opj_tcd_band* %arraydecay104, %struct.opj_tcd_band** %l_band, align 8, !tbaa !1
  store i32 0, i32* %bandno, align 4, !tbaa !5
  br label %for.cond.105

for.cond.105:                                     ; preds = %for.inc.266, %if.end.102
  %127 = load i32, i32* %bandno, align 4, !tbaa !5
  %128 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !1
  %numbands106 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %128, i32 0, i32 6
  %129 = load i32, i32* %numbands106, align 4, !tbaa !45
  %cmp107 = icmp ult i32 %127, %129
  br i1 %cmp107, label %for.body.109, label %for.end.268

for.body.109:                                     ; preds = %for.cond.105
  %130 = bitcast %struct.opj_tcd_precinct** %l_prc110 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %130) #1
  %131 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %p_pi.addr, align 8, !tbaa !1
  %precno111 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %131, i32 0, i32 8
  %132 = load i32, i32* %precno111, align 4, !tbaa !40
  %idxprom112 = zext i32 %132 to i64
  %133 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !1
  %precincts113 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %133, i32 0, i32 5
  %134 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %precincts113, align 8, !tbaa !47
  %arrayidx114 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %134, i64 %idxprom112
  store %struct.opj_tcd_precinct* %arrayidx114, %struct.opj_tcd_precinct** %l_prc110, align 8, !tbaa !1
  %135 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !1
  %x1115 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %135, i32 0, i32 2
  %136 = load i32, i32* %x1115, align 4, !tbaa !77
  %137 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !1
  %x0116 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %137, i32 0, i32 0
  %138 = load i32, i32* %x0116, align 4, !tbaa !78
  %sub117 = sub nsw i32 %136, %138
  %cmp118 = icmp eq i32 %sub117, 0
  br i1 %cmp118, label %if.then.126, label %lor.lhs.false.120

lor.lhs.false.120:                                ; preds = %for.body.109
  %139 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !1
  %y1121 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %139, i32 0, i32 3
  %140 = load i32, i32* %y1121, align 4, !tbaa !79
  %141 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !1
  %y0122 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %141, i32 0, i32 1
  %142 = load i32, i32* %y0122, align 4, !tbaa !80
  %sub123 = sub nsw i32 %140, %142
  %cmp124 = icmp eq i32 %sub123, 0
  br i1 %cmp124, label %if.then.126, label %if.end.128

if.then.126:                                      ; preds = %lor.lhs.false.120, %for.body.109
  %143 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !1
  %incdec.ptr127 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %143, i32 1
  store %struct.opj_tcd_band* %incdec.ptr127, %struct.opj_tcd_band** %l_band, align 8, !tbaa !1
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup.263

if.end.128:                                       ; preds = %lor.lhs.false.120
  %144 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_prc110, align 8, !tbaa !1
  %cw129 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %144, i32 0, i32 4
  %145 = load i32, i32* %cw129, align 4, !tbaa !53
  %146 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_prc110, align 8, !tbaa !1
  %ch130 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %146, i32 0, i32 5
  %147 = load i32, i32* %ch130, align 4, !tbaa !54
  %mul131 = mul i32 %145, %147
  store i32 %mul131, i32* %l_nb_code_blocks, align 4, !tbaa !5
  %148 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_prc110, align 8, !tbaa !1
  %cblks132 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %148, i32 0, i32 6
  %dec133 = bitcast %union.anon.0* %cblks132 to %struct.opj_tcd_cblk_dec**
  %149 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %dec133, align 8, !tbaa !1
  store %struct.opj_tcd_cblk_dec* %149, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  store i32 0, i32* %cblkno, align 4, !tbaa !5
  br label %for.cond.134

for.cond.134:                                     ; preds = %for.inc.259, %if.end.128
  %150 = load i32, i32* %cblkno, align 4, !tbaa !5
  %151 = load i32, i32* %l_nb_code_blocks, align 4, !tbaa !5
  %cmp135 = icmp ult i32 %150, %151
  br i1 %cmp135, label %for.body.137, label %for.end.261

for.body.137:                                     ; preds = %for.cond.134
  %152 = bitcast i32* %l_included to i8*
  call void @llvm.lifetime.start(i64 4, i8* %152) #1
  %153 = bitcast i32* %l_increment to i8*
  call void @llvm.lifetime.start(i64 4, i8* %153) #1
  %154 = bitcast i32* %l_segno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %154) #1
  %155 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %155) #1
  %156 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %numsegs138 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %156, i32 0, i32 11
  %157 = load i32, i32* %numsegs138, align 4, !tbaa !81
  %tobool139 = icmp ne i32 %157, 0
  br i1 %tobool139, label %if.else.144, label %if.then.140

if.then.140:                                      ; preds = %for.body.137
  %158 = load %struct.opj_bio*, %struct.opj_bio** %l_bio, align 8, !tbaa !1
  %159 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_prc110, align 8, !tbaa !1
  %incltree141 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %159, i32 0, i32 8
  %160 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %incltree141, align 8, !tbaa !50
  %161 = load i32, i32* %cblkno, align 4, !tbaa !5
  %162 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %p_pi.addr, align 8, !tbaa !1
  %layno142 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %162, i32 0, i32 9
  %163 = load i32, i32* %layno142, align 4, !tbaa !20
  %add = add i32 %163, 1
  %call143 = call i32 @opj_tgt_decode(%struct.opj_bio* %158, %struct.opj_tgt_tree* %160, i32 %161, i32 %add) #5
  store i32 %call143, i32* %l_included, align 4, !tbaa !5
  br label %if.end.146

if.else.144:                                      ; preds = %for.body.137
  %164 = load %struct.opj_bio*, %struct.opj_bio** %l_bio, align 8, !tbaa !1
  %call145 = call i32 @opj_bio_read(%struct.opj_bio* %164, i32 1) #5
  store i32 %call145, i32* %l_included, align 4, !tbaa !5
  br label %if.end.146

if.end.146:                                       ; preds = %if.else.144, %if.then.140
  %165 = load i32, i32* %l_included, align 4, !tbaa !5
  %tobool147 = icmp ne i32 %165, 0
  br i1 %tobool147, label %if.end.150, label %if.then.148

if.then.148:                                      ; preds = %if.end.146
  %166 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %numnewpasses = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %166, i32 0, i32 10
  store i32 0, i32* %numnewpasses, align 4, !tbaa !84
  %167 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %incdec.ptr149 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %167, i32 1
  store %struct.opj_tcd_cblk_dec* %incdec.ptr149, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  store i32 13, i32* %cleanup.dest.slot
  br label %cleanup

if.end.150:                                       ; preds = %if.end.146
  %168 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %numsegs151 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %168, i32 0, i32 11
  %169 = load i32, i32* %numsegs151, align 4, !tbaa !81
  %tobool152 = icmp ne i32 %169, 0
  br i1 %tobool152, label %if.end.161, label %if.then.153

if.then.153:                                      ; preds = %if.end.150
  %170 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %170) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.153
  %171 = load %struct.opj_bio*, %struct.opj_bio** %l_bio, align 8, !tbaa !1
  %172 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_prc110, align 8, !tbaa !1
  %imsbtree154 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %172, i32 0, i32 9
  %173 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %imsbtree154, align 8, !tbaa !52
  %174 = load i32, i32* %cblkno, align 4, !tbaa !5
  %175 = load i32, i32* %i, align 4, !tbaa !5
  %call155 = call i32 @opj_tgt_decode(%struct.opj_bio* %171, %struct.opj_tgt_tree* %173, i32 %174, i32 %175) #5
  %tobool156 = icmp ne i32 %call155, 0
  %lnot = xor i1 %tobool156, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %176 = load i32, i32* %i, align 4, !tbaa !5
  %inc157 = add i32 %176, 1
  store i32 %inc157, i32* %i, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %177 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !1
  %numbps = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %177, i32 0, i32 7
  %178 = load i32, i32* %numbps, align 4, !tbaa !57
  %add158 = add nsw i32 %178, 1
  %179 = load i32, i32* %i, align 4, !tbaa !5
  %sub159 = sub i32 %add158, %179
  %180 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %numbps160 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %180, i32 0, i32 6
  store i32 %sub159, i32* %numbps160, align 4, !tbaa !85
  %181 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %numlenbits = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %181, i32 0, i32 7
  store i32 3, i32* %numlenbits, align 4, !tbaa !86
  %182 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %182) #1
  br label %if.end.161

if.end.161:                                       ; preds = %while.end, %if.end.150
  %183 = load %struct.opj_bio*, %struct.opj_bio** %l_bio, align 8, !tbaa !1
  %call162 = call i32 @opj_t2_getnumpasses(%struct.opj_bio* %183) #5
  %184 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %numnewpasses163 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %184, i32 0, i32 10
  store i32 %call162, i32* %numnewpasses163, align 4, !tbaa !84
  %185 = load %struct.opj_bio*, %struct.opj_bio** %l_bio, align 8, !tbaa !1
  %call164 = call i32 @opj_t2_getcommacode(%struct.opj_bio* %185) #5
  store i32 %call164, i32* %l_increment, align 4, !tbaa !5
  %186 = load i32, i32* %l_increment, align 4, !tbaa !5
  %187 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %numlenbits165 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %187, i32 0, i32 7
  %188 = load i32, i32* %numlenbits165, align 4, !tbaa !86
  %add166 = add i32 %188, %186
  store i32 %add166, i32* %numlenbits165, align 4, !tbaa !86
  store i32 0, i32* %l_segno, align 4, !tbaa !5
  %189 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %numsegs167 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %189, i32 0, i32 11
  %190 = load i32, i32* %numsegs167, align 4, !tbaa !81
  %tobool168 = icmp ne i32 %190, 0
  br i1 %tobool168, label %if.else.177, label %if.then.169

if.then.169:                                      ; preds = %if.end.161
  %191 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %192 = load i32, i32* %l_segno, align 4, !tbaa !5
  %193 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %p_pi.addr, align 8, !tbaa !1
  %compno170 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %193, i32 0, i32 6
  %194 = load i32, i32* %compno170, align 4, !tbaa !38
  %idxprom171 = zext i32 %194 to i64
  %195 = load %struct.opj_tcp*, %struct.opj_tcp** %p_tcp.addr, align 8, !tbaa !1
  %tccps = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %195, i32 0, i32 13
  %196 = load %struct.opj_tccp*, %struct.opj_tccp** %tccps, align 8, !tbaa !87
  %arrayidx172 = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %196, i64 %idxprom171
  %cblksty = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %arrayidx172, i32 0, i32 4
  %197 = load i32, i32* %cblksty, align 4, !tbaa !88
  %call173 = call i32 @opj_t2_init_seg(%struct.opj_tcd_cblk_dec* %191, i32 %192, i32 %197, i32 1) #5
  %tobool174 = icmp ne i32 %call173, 0
  br i1 %tobool174, label %if.end.176, label %if.then.175

if.then.175:                                      ; preds = %if.then.169
  %198 = load %struct.opj_bio*, %struct.opj_bio** %l_bio, align 8, !tbaa !1
  call void @opj_bio_destroy(%struct.opj_bio* %198) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.176:                                       ; preds = %if.then.169
  br label %if.end.199

if.else.177:                                      ; preds = %if.end.161
  %199 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %numsegs178 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %199, i32 0, i32 11
  %200 = load i32, i32* %numsegs178, align 4, !tbaa !81
  %sub179 = sub i32 %200, 1
  store i32 %sub179, i32* %l_segno, align 4, !tbaa !5
  %201 = load i32, i32* %l_segno, align 4, !tbaa !5
  %idxprom180 = zext i32 %201 to i64
  %202 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %segs = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %202, i32 0, i32 1
  %203 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %segs, align 8, !tbaa !90
  %arrayidx181 = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %203, i64 %idxprom180
  %numpasses = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %arrayidx181, i32 0, i32 2
  %204 = load i32, i32* %numpasses, align 4, !tbaa !91
  %205 = load i32, i32* %l_segno, align 4, !tbaa !5
  %idxprom182 = zext i32 %205 to i64
  %206 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %segs183 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %206, i32 0, i32 1
  %207 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %segs183, align 8, !tbaa !90
  %arrayidx184 = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %207, i64 %idxprom182
  %maxpasses = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %arrayidx184, i32 0, i32 5
  %208 = load i32, i32* %maxpasses, align 4, !tbaa !93
  %cmp185 = icmp eq i32 %204, %208
  br i1 %cmp185, label %if.then.187, label %if.end.198

if.then.187:                                      ; preds = %if.else.177
  %209 = load i32, i32* %l_segno, align 4, !tbaa !5
  %inc188 = add i32 %209, 1
  store i32 %inc188, i32* %l_segno, align 4, !tbaa !5
  %210 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %211 = load i32, i32* %l_segno, align 4, !tbaa !5
  %212 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %p_pi.addr, align 8, !tbaa !1
  %compno189 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %212, i32 0, i32 6
  %213 = load i32, i32* %compno189, align 4, !tbaa !38
  %idxprom190 = zext i32 %213 to i64
  %214 = load %struct.opj_tcp*, %struct.opj_tcp** %p_tcp.addr, align 8, !tbaa !1
  %tccps191 = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %214, i32 0, i32 13
  %215 = load %struct.opj_tccp*, %struct.opj_tccp** %tccps191, align 8, !tbaa !87
  %arrayidx192 = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %215, i64 %idxprom190
  %cblksty193 = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %arrayidx192, i32 0, i32 4
  %216 = load i32, i32* %cblksty193, align 4, !tbaa !88
  %call194 = call i32 @opj_t2_init_seg(%struct.opj_tcd_cblk_dec* %210, i32 %211, i32 %216, i32 0) #5
  %tobool195 = icmp ne i32 %call194, 0
  br i1 %tobool195, label %if.end.197, label %if.then.196

if.then.196:                                      ; preds = %if.then.187
  %217 = load %struct.opj_bio*, %struct.opj_bio** %l_bio, align 8, !tbaa !1
  call void @opj_bio_destroy(%struct.opj_bio* %217) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.197:                                       ; preds = %if.then.187
  br label %if.end.198

if.end.198:                                       ; preds = %if.end.197, %if.else.177
  br label %if.end.199

if.end.199:                                       ; preds = %if.end.198, %if.end.176
  %218 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %numnewpasses200 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %218, i32 0, i32 10
  %219 = load i32, i32* %numnewpasses200, align 4, !tbaa !84
  store i32 %219, i32* %n, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.199
  %220 = load i32, i32* %l_segno, align 4, !tbaa !5
  %idxprom201 = zext i32 %220 to i64
  %221 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %segs202 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %221, i32 0, i32 1
  %222 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %segs202, align 8, !tbaa !90
  %arrayidx203 = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %222, i64 %idxprom201
  %maxpasses204 = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %arrayidx203, i32 0, i32 5
  %223 = load i32, i32* %maxpasses204, align 4, !tbaa !93
  %224 = load i32, i32* %l_segno, align 4, !tbaa !5
  %idxprom205 = zext i32 %224 to i64
  %225 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %segs206 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %225, i32 0, i32 1
  %226 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %segs206, align 8, !tbaa !90
  %arrayidx207 = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %226, i64 %idxprom205
  %numpasses208 = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %arrayidx207, i32 0, i32 2
  %227 = load i32, i32* %numpasses208, align 4, !tbaa !91
  %sub209 = sub i32 %223, %227
  %228 = load i32, i32* %n, align 4, !tbaa !5
  %call210 = call i32 @opj_int_min(i32 %sub209, i32 %228) #5
  %229 = load i32, i32* %l_segno, align 4, !tbaa !5
  %idxprom211 = zext i32 %229 to i64
  %230 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %segs212 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %230, i32 0, i32 1
  %231 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %segs212, align 8, !tbaa !90
  %arrayidx213 = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %231, i64 %idxprom211
  %numnewpasses214 = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %arrayidx213, i32 0, i32 6
  store i32 %call210, i32* %numnewpasses214, align 4, !tbaa !94
  %232 = load %struct.opj_bio*, %struct.opj_bio** %l_bio, align 8, !tbaa !1
  %233 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %numlenbits215 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %233, i32 0, i32 7
  %234 = load i32, i32* %numlenbits215, align 4, !tbaa !86
  %235 = load i32, i32* %l_segno, align 4, !tbaa !5
  %idxprom216 = zext i32 %235 to i64
  %236 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %segs217 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %236, i32 0, i32 1
  %237 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %segs217, align 8, !tbaa !90
  %arrayidx218 = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %237, i64 %idxprom216
  %numnewpasses219 = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %arrayidx218, i32 0, i32 6
  %238 = load i32, i32* %numnewpasses219, align 4, !tbaa !94
  %call220 = call i32 @opj_uint_floorlog2(i32 %238) #5
  %add221 = add i32 %234, %call220
  %call222 = call i32 @opj_bio_read(%struct.opj_bio* %232, i32 %add221) #5
  %239 = load i32, i32* %l_segno, align 4, !tbaa !5
  %idxprom223 = zext i32 %239 to i64
  %240 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %segs224 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %240, i32 0, i32 1
  %241 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %segs224, align 8, !tbaa !90
  %arrayidx225 = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %241, i64 %idxprom223
  %newlen = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %arrayidx225, i32 0, i32 7
  store i32 %call222, i32* %newlen, align 4, !tbaa !95
  %242 = load i32, i32* %l_segno, align 4, !tbaa !5
  %idxprom226 = zext i32 %242 to i64
  %243 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %segs227 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %243, i32 0, i32 1
  %244 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %segs227, align 8, !tbaa !90
  %arrayidx228 = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %244, i64 %idxprom226
  %newlen229 = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %arrayidx228, i32 0, i32 7
  %245 = load i32, i32* %newlen229, align 4, !tbaa !95
  %246 = load i32*, i32** %l_modified_length_ptr, align 8, !tbaa !1
  %247 = load i32, i32* %246, align 4, !tbaa !5
  %cmp230 = icmp ugt i32 %245, %247
  br i1 %cmp230, label %if.then.232, label %if.end.233

if.then.232:                                      ; preds = %do.body
  %248 = load %struct.opj_bio*, %struct.opj_bio** %l_bio, align 8, !tbaa !1
  call void @opj_bio_destroy(%struct.opj_bio* %248) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.233:                                       ; preds = %do.body
  %249 = load i32, i32* %l_segno, align 4, !tbaa !5
  %idxprom234 = zext i32 %249 to i64
  %250 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %segs235 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %250, i32 0, i32 1
  %251 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %segs235, align 8, !tbaa !90
  %arrayidx236 = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %251, i64 %idxprom234
  %numnewpasses237 = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %arrayidx236, i32 0, i32 6
  %252 = load i32, i32* %numnewpasses237, align 4, !tbaa !94
  %253 = load i32, i32* %n, align 4, !tbaa !5
  %sub238 = sub i32 %253, %252
  store i32 %sub238, i32* %n, align 4, !tbaa !5
  %254 = load i32, i32* %n, align 4, !tbaa !5
  %cmp239 = icmp sgt i32 %254, 0
  br i1 %cmp239, label %if.then.241, label %if.end.252

if.then.241:                                      ; preds = %if.end.233
  %255 = load i32, i32* %l_segno, align 4, !tbaa !5
  %inc242 = add i32 %255, 1
  store i32 %inc242, i32* %l_segno, align 4, !tbaa !5
  %256 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %257 = load i32, i32* %l_segno, align 4, !tbaa !5
  %258 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %p_pi.addr, align 8, !tbaa !1
  %compno243 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %258, i32 0, i32 6
  %259 = load i32, i32* %compno243, align 4, !tbaa !38
  %idxprom244 = zext i32 %259 to i64
  %260 = load %struct.opj_tcp*, %struct.opj_tcp** %p_tcp.addr, align 8, !tbaa !1
  %tccps245 = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %260, i32 0, i32 13
  %261 = load %struct.opj_tccp*, %struct.opj_tccp** %tccps245, align 8, !tbaa !87
  %arrayidx246 = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %261, i64 %idxprom244
  %cblksty247 = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %arrayidx246, i32 0, i32 4
  %262 = load i32, i32* %cblksty247, align 4, !tbaa !88
  %call248 = call i32 @opj_t2_init_seg(%struct.opj_tcd_cblk_dec* %256, i32 %257, i32 %262, i32 0) #5
  %tobool249 = icmp ne i32 %call248, 0
  br i1 %tobool249, label %if.end.251, label %if.then.250

if.then.250:                                      ; preds = %if.then.241
  %263 = load %struct.opj_bio*, %struct.opj_bio** %l_bio, align 8, !tbaa !1
  call void @opj_bio_destroy(%struct.opj_bio* %263) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.251:                                       ; preds = %if.then.241
  br label %if.end.252

if.end.252:                                       ; preds = %if.end.251, %if.end.233
  br label %do.cond

do.cond:                                          ; preds = %if.end.252
  %264 = load i32, i32* %n, align 4, !tbaa !5
  %cmp253 = icmp sgt i32 %264, 0
  br i1 %cmp253, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %265 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %incdec.ptr255 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %265, i32 1
  store %struct.opj_tcd_cblk_dec* %incdec.ptr255, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.250, %if.then.232, %if.then.196, %if.then.175, %if.then.148
  %266 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %266) #1
  %267 = bitcast i32* %l_segno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %267) #1
  %268 = bitcast i32* %l_increment to i8*
  call void @llvm.lifetime.end(i64 4, i8* %268) #1
  %269 = bitcast i32* %l_included to i8*
  call void @llvm.lifetime.end(i64 4, i8* %269) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.263 [
    i32 0, label %cleanup.cont
    i32 13, label %for.inc.259
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.259

for.inc.259:                                      ; preds = %cleanup.cont, %cleanup
  %270 = load i32, i32* %cblkno, align 4, !tbaa !5
  %inc260 = add i32 %270, 1
  store i32 %inc260, i32* %cblkno, align 4, !tbaa !5
  br label %for.cond.134

for.end.261:                                      ; preds = %for.cond.134
  %271 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !1
  %incdec.ptr262 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %271, i32 1
  store %struct.opj_tcd_band* %incdec.ptr262, %struct.opj_tcd_band** %l_band, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.263

cleanup.263:                                      ; preds = %for.end.261, %cleanup, %if.then.126
  %272 = bitcast %struct.opj_tcd_precinct** %l_prc110 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %272) #1
  %cleanup.dest.264 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.264, label %cleanup.318 [
    i32 0, label %cleanup.cont.265
    i32 10, label %for.inc.266
  ]

cleanup.cont.265:                                 ; preds = %cleanup.263
  br label %for.inc.266

for.inc.266:                                      ; preds = %cleanup.cont.265, %cleanup.263
  %273 = load i32, i32* %bandno, align 4, !tbaa !5
  %inc267 = add i32 %273, 1
  store i32 %inc267, i32* %bandno, align 4, !tbaa !5
  br label %for.cond.105

for.end.268:                                      ; preds = %for.cond.105
  %274 = load %struct.opj_bio*, %struct.opj_bio** %l_bio, align 8, !tbaa !1
  %call269 = call i32 @opj_bio_inalign(%struct.opj_bio* %274) #5
  %tobool270 = icmp ne i32 %call269, 0
  br i1 %tobool270, label %if.end.272, label %if.then.271

if.then.271:                                      ; preds = %for.end.268
  %275 = load %struct.opj_bio*, %struct.opj_bio** %l_bio, align 8, !tbaa !1
  call void @opj_bio_destroy(%struct.opj_bio* %275) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.318

if.end.272:                                       ; preds = %for.end.268
  %276 = load %struct.opj_bio*, %struct.opj_bio** %l_bio, align 8, !tbaa !1
  %call273 = call i64 @opj_bio_numbytes(%struct.opj_bio* %276) #5
  %277 = load i8*, i8** %l_header_data, align 8, !tbaa !1
  %add.ptr274 = getelementptr inbounds i8, i8* %277, i64 %call273
  store i8* %add.ptr274, i8** %l_header_data, align 8, !tbaa !1
  %278 = load %struct.opj_bio*, %struct.opj_bio** %l_bio, align 8, !tbaa !1
  call void @opj_bio_destroy(%struct.opj_bio* %278) #5
  %279 = load %struct.opj_tcp*, %struct.opj_tcp** %p_tcp.addr, align 8, !tbaa !1
  %csty275 = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %279, i32 0, i32 0
  %280 = load i32, i32* %csty275, align 4, !tbaa !44
  %and276 = and i32 %280, 4
  %tobool277 = icmp ne i32 %and276, 0
  br i1 %tobool277, label %if.then.278, label %if.end.297

if.then.278:                                      ; preds = %if.end.272
  %281 = load i32, i32* %p_max_length.addr, align 4, !tbaa !5
  %cmp279 = icmp ult i32 %281, 2
  br i1 %cmp279, label %if.then.281, label %if.else.283

if.then.281:                                      ; preds = %if.then.278
  %282 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call282 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %282, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i32 0, i32 0)) #5
  br label %if.end.296

if.else.283:                                      ; preds = %if.then.278
  %283 = load i8*, i8** %l_header_data, align 8, !tbaa !1
  %284 = load i8, i8* %283, align 1, !tbaa !7
  %conv284 = zext i8 %284 to i32
  %cmp285 = icmp ne i32 %conv284, 255
  br i1 %cmp285, label %if.then.292, label %lor.lhs.false.287

lor.lhs.false.287:                                ; preds = %if.else.283
  %285 = load i8*, i8** %l_header_data, align 8, !tbaa !1
  %add.ptr288 = getelementptr inbounds i8, i8* %285, i64 1
  %286 = load i8, i8* %add.ptr288, align 1, !tbaa !7
  %conv289 = zext i8 %286 to i32
  %cmp290 = icmp ne i32 %conv289, 146
  br i1 %cmp290, label %if.then.292, label %if.else.293

if.then.292:                                      ; preds = %lor.lhs.false.287, %if.else.283
  br label %if.end.295

if.else.293:                                      ; preds = %lor.lhs.false.287
  %287 = load i8*, i8** %l_header_data, align 8, !tbaa !1
  %add.ptr294 = getelementptr inbounds i8, i8* %287, i64 2
  store i8* %add.ptr294, i8** %l_header_data, align 8, !tbaa !1
  br label %if.end.295

if.end.295:                                       ; preds = %if.else.293, %if.then.292
  br label %if.end.296

if.end.296:                                       ; preds = %if.end.295, %if.then.281
  br label %if.end.297

if.end.297:                                       ; preds = %if.end.296, %if.end.272
  %288 = load i8*, i8** %l_header_data, align 8, !tbaa !1
  %289 = load i8**, i8*** %l_header_data_start, align 8, !tbaa !1
  %290 = load i8*, i8** %289, align 8, !tbaa !1
  %sub.ptr.lhs.cast298 = ptrtoint i8* %288 to i64
  %sub.ptr.rhs.cast299 = ptrtoint i8* %290 to i64
  %sub.ptr.sub300 = sub i64 %sub.ptr.lhs.cast298, %sub.ptr.rhs.cast299
  %conv301 = trunc i64 %sub.ptr.sub300 to i32
  store i32 %conv301, i32* %l_header_length, align 4, !tbaa !5
  %291 = load i32, i32* %l_header_length, align 4, !tbaa !5
  %292 = load i32*, i32** %l_modified_length_ptr, align 8, !tbaa !1
  %293 = load i32, i32* %292, align 4, !tbaa !5
  %sub302 = sub i32 %293, %291
  store i32 %sub302, i32* %292, align 4, !tbaa !5
  %294 = load i32, i32* %l_header_length, align 4, !tbaa !5
  %295 = load i8**, i8*** %l_header_data_start, align 8, !tbaa !1
  %296 = load i8*, i8** %295, align 8, !tbaa !1
  %idx.ext303 = zext i32 %294 to i64
  %add.ptr304 = getelementptr inbounds i8, i8* %296, i64 %idx.ext303
  store i8* %add.ptr304, i8** %295, align 8, !tbaa !1
  %297 = load %struct.opj_packet_info*, %struct.opj_packet_info** %p_pack_info.addr, align 8, !tbaa !1
  %tobool305 = icmp ne %struct.opj_packet_info* %297, null
  br i1 %tobool305, label %if.then.306, label %if.end.313

if.then.306:                                      ; preds = %if.end.297
  %298 = load i8*, i8** %l_current_data, align 8, !tbaa !1
  %299 = load i8*, i8** %p_src_data.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast307 = ptrtoint i8* %298 to i64
  %sub.ptr.rhs.cast308 = ptrtoint i8* %299 to i64
  %sub.ptr.sub309 = sub i64 %sub.ptr.lhs.cast307, %sub.ptr.rhs.cast308
  %conv310 = trunc i64 %sub.ptr.sub309 to i32
  %conv311 = sext i32 %conv310 to i64
  %300 = load %struct.opj_packet_info*, %struct.opj_packet_info** %p_pack_info.addr, align 8, !tbaa !1
  %end_ph_pos312 = getelementptr inbounds %struct.opj_packet_info, %struct.opj_packet_info* %300, i32 0, i32 1
  store i64 %conv311, i64* %end_ph_pos312, align 8, !tbaa !35
  br label %if.end.313

if.end.313:                                       ; preds = %if.then.306, %if.end.297
  %301 = load i32*, i32** %p_is_data_present.addr, align 8, !tbaa !1
  store i32 1, i32* %301, align 4, !tbaa !5
  %302 = load i8*, i8** %l_current_data, align 8, !tbaa !1
  %303 = load i8*, i8** %p_src_data.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast314 = ptrtoint i8* %302 to i64
  %sub.ptr.rhs.cast315 = ptrtoint i8* %303 to i64
  %sub.ptr.sub316 = sub i64 %sub.ptr.lhs.cast314, %sub.ptr.rhs.cast315
  %conv317 = trunc i64 %sub.ptr.sub316 to i32
  %304 = load i32*, i32** %p_data_read.addr, align 8, !tbaa !1
  store i32 %conv317, i32* %304, align 4, !tbaa !5
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.318

cleanup.318:                                      ; preds = %if.end.313, %if.then.271, %cleanup.263, %if.end.97, %if.then.36
  %305 = bitcast i32* %l_present to i8*
  call void @llvm.lifetime.end(i64 4, i8* %305) #1
  %306 = bitcast i8*** %l_header_data_start to i8*
  call void @llvm.lifetime.end(i64 8, i8* %306) #1
  %307 = bitcast i8** %l_header_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %307) #1
  %308 = bitcast %struct.opj_tcd_resolution** %l_res to i8*
  call void @llvm.lifetime.end(i64 8, i8* %308) #1
  %309 = bitcast %struct.opj_tcd_cblk_dec** %l_cblk to i8*
  call void @llvm.lifetime.end(i64 8, i8* %309) #1
  %310 = bitcast %struct.opj_tcd_band** %l_band to i8*
  call void @llvm.lifetime.end(i64 8, i8* %310) #1
  %311 = bitcast %struct.opj_bio** %l_bio to i8*
  call void @llvm.lifetime.end(i64 8, i8* %311) #1
  %312 = bitcast %struct.opj_cp** %l_cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %312) #1
  %313 = bitcast i8** %l_current_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %313) #1
  %314 = bitcast i32** %l_modified_length_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %314) #1
  %315 = bitcast i32* %l_header_length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %315) #1
  %316 = bitcast i32* %l_remaining_length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %316) #1
  %317 = bitcast i32* %l_nb_code_blocks to i8*
  call void @llvm.lifetime.end(i64 4, i8* %317) #1
  %318 = bitcast i32* %cblkno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %318) #1
  %319 = bitcast i32* %bandno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %319) #1
  %320 = load i32, i32* %retval
  ret i32 %320
}

; Function Attrs: nounwind uwtable
define internal i32 @opj_t2_read_packet_data(%struct.opj_t2* %p_t2, %struct.opj_tcd_tile* %p_tile, %struct.opj_pi_iterator* %p_pi, i8* %p_src_data, i32* %p_data_read, i32 %p_max_length, %struct.opj_packet_info* %pack_info) #0 {
entry:
  %retval = alloca i32, align 4
  %p_t2.addr = alloca %struct.opj_t2*, align 8
  %p_tile.addr = alloca %struct.opj_tcd_tile*, align 8
  %p_pi.addr = alloca %struct.opj_pi_iterator*, align 8
  %p_src_data.addr = alloca i8*, align 8
  %p_data_read.addr = alloca i32*, align 8
  %p_max_length.addr = alloca i32, align 4
  %pack_info.addr = alloca %struct.opj_packet_info*, align 8
  %bandno = alloca i32, align 4
  %cblkno = alloca i32, align 4
  %l_nb_code_blocks = alloca i32, align 4
  %l_current_data = alloca i8*, align 8
  %l_band = alloca %struct.opj_tcd_band*, align 8
  %l_cblk = alloca %struct.opj_tcd_cblk_dec*, align 8
  %l_res = alloca %struct.opj_tcd_resolution*, align 8
  %l_prc = alloca %struct.opj_tcd_precinct*, align 8
  %cleanup.dest.slot = alloca i32
  %l_seg = alloca %struct.opj_tcd_seg*, align 8
  %new_cblk_data = alloca i8*, align 8
  store %struct.opj_t2* %p_t2, %struct.opj_t2** %p_t2.addr, align 8, !tbaa !1
  store %struct.opj_tcd_tile* %p_tile, %struct.opj_tcd_tile** %p_tile.addr, align 8, !tbaa !1
  store %struct.opj_pi_iterator* %p_pi, %struct.opj_pi_iterator** %p_pi.addr, align 8, !tbaa !1
  store i8* %p_src_data, i8** %p_src_data.addr, align 8, !tbaa !1
  store i32* %p_data_read, i32** %p_data_read.addr, align 8, !tbaa !1
  store i32 %p_max_length, i32* %p_max_length.addr, align 4, !tbaa !5
  store %struct.opj_packet_info* %pack_info, %struct.opj_packet_info** %pack_info.addr, align 8, !tbaa !1
  %0 = bitcast i32* %bandno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %cblkno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %l_nb_code_blocks to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i8** %l_current_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i8*, i8** %p_src_data.addr, align 8, !tbaa !1
  store i8* %4, i8** %l_current_data, align 8, !tbaa !1
  %5 = bitcast %struct.opj_tcd_band** %l_band to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store %struct.opj_tcd_band* null, %struct.opj_tcd_band** %l_band, align 8, !tbaa !1
  %6 = bitcast %struct.opj_tcd_cblk_dec** %l_cblk to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store %struct.opj_tcd_cblk_dec* null, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %7 = bitcast %struct.opj_tcd_resolution** %l_res to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %p_pi.addr, align 8, !tbaa !1
  %resno = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %8, i32 0, i32 7
  %9 = load i32, i32* %resno, align 4, !tbaa !39
  %idxprom = zext i32 %9 to i64
  %10 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %p_pi.addr, align 8, !tbaa !1
  %compno = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %10, i32 0, i32 6
  %11 = load i32, i32* %compno, align 4, !tbaa !38
  %idxprom1 = zext i32 %11 to i64
  %12 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %p_tile.addr, align 8, !tbaa !1
  %comps = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %12, i32 0, i32 5
  %13 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %comps, align 8, !tbaa !41
  %arrayidx = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %13, i64 %idxprom1
  %resolutions = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %arrayidx, i32 0, i32 6
  %14 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %resolutions, align 8, !tbaa !42
  %arrayidx2 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %14, i64 %idxprom
  store %struct.opj_tcd_resolution* %arrayidx2, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !1
  %15 = load %struct.opj_t2*, %struct.opj_t2** %p_t2.addr, align 8, !tbaa !1
  %16 = load %struct.opj_packet_info*, %struct.opj_packet_info** %pack_info.addr, align 8, !tbaa !1
  %17 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !1
  %bands = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %17, i32 0, i32 7
  %arraydecay = getelementptr inbounds [3 x %struct.opj_tcd_band], [3 x %struct.opj_tcd_band]* %bands, i32 0, i32 0
  store %struct.opj_tcd_band* %arraydecay, %struct.opj_tcd_band** %l_band, align 8, !tbaa !1
  store i32 0, i32* %bandno, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.110, %entry
  %18 = load i32, i32* %bandno, align 4, !tbaa !5
  %19 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !1
  %numbands = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %19, i32 0, i32 6
  %20 = load i32, i32* %numbands, align 4, !tbaa !45
  %cmp = icmp ult i32 %18, %20
  br i1 %cmp, label %for.body, label %for.end.112

for.body:                                         ; preds = %for.cond
  %21 = bitcast %struct.opj_tcd_precinct** %l_prc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %p_pi.addr, align 8, !tbaa !1
  %precno = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %22, i32 0, i32 8
  %23 = load i32, i32* %precno, align 4, !tbaa !40
  %idxprom3 = zext i32 %23 to i64
  %24 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !1
  %precincts = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %24, i32 0, i32 5
  %25 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %precincts, align 8, !tbaa !47
  %arrayidx4 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %25, i64 %idxprom3
  store %struct.opj_tcd_precinct* %arrayidx4, %struct.opj_tcd_precinct** %l_prc, align 8, !tbaa !1
  %26 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !1
  %x1 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %26, i32 0, i32 2
  %27 = load i32, i32* %x1, align 4, !tbaa !77
  %28 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !1
  %x0 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %28, i32 0, i32 0
  %29 = load i32, i32* %x0, align 4, !tbaa !78
  %sub = sub nsw i32 %27, %29
  %cmp5 = icmp eq i32 %sub, 0
  br i1 %cmp5, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %30 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !1
  %y1 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %30, i32 0, i32 3
  %31 = load i32, i32* %y1, align 4, !tbaa !79
  %32 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !1
  %y0 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %32, i32 0, i32 1
  %33 = load i32, i32* %y0, align 4, !tbaa !80
  %sub6 = sub nsw i32 %31, %33
  %cmp7 = icmp eq i32 %sub6, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %34 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %34, i32 1
  store %struct.opj_tcd_band* %incdec.ptr, %struct.opj_tcd_band** %l_band, align 8, !tbaa !1
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.107

if.end:                                           ; preds = %lor.lhs.false
  %35 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_prc, align 8, !tbaa !1
  %cw = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %35, i32 0, i32 4
  %36 = load i32, i32* %cw, align 4, !tbaa !53
  %37 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_prc, align 8, !tbaa !1
  %ch = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %37, i32 0, i32 5
  %38 = load i32, i32* %ch, align 4, !tbaa !54
  %mul = mul i32 %36, %38
  store i32 %mul, i32* %l_nb_code_blocks, align 4, !tbaa !5
  %39 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_prc, align 8, !tbaa !1
  %cblks = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %39, i32 0, i32 6
  %dec = bitcast %union.anon.0* %cblks to %struct.opj_tcd_cblk_dec**
  %40 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %dec, align 8, !tbaa !1
  store %struct.opj_tcd_cblk_dec* %40, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  store i32 0, i32* %cblkno, align 4, !tbaa !5
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %if.end
  %41 = load i32, i32* %cblkno, align 4, !tbaa !5
  %42 = load i32, i32* %l_nb_code_blocks, align 4, !tbaa !5
  %cmp9 = icmp ult i32 %41, %42
  br i1 %cmp9, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.8
  %43 = bitcast %struct.opj_tcd_seg** %l_seg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #1
  store %struct.opj_tcd_seg* null, %struct.opj_tcd_seg** %l_seg, align 8, !tbaa !1
  %44 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %numnewpasses = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %44, i32 0, i32 10
  %45 = load i32, i32* %numnewpasses, align 4, !tbaa !84
  %tobool = icmp ne i32 %45, 0
  br i1 %tobool, label %if.end.13, label %if.then.11

if.then.11:                                       ; preds = %for.body.10
  %46 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %incdec.ptr12 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %46, i32 1
  store %struct.opj_tcd_cblk_dec* %incdec.ptr12, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup.102

if.end.13:                                        ; preds = %for.body.10
  %47 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %numsegs = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %47, i32 0, i32 11
  %48 = load i32, i32* %numsegs, align 4, !tbaa !81
  %tobool14 = icmp ne i32 %48, 0
  br i1 %tobool14, label %if.else, label %if.then.15

if.then.15:                                       ; preds = %if.end.13
  %49 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %segs = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %49, i32 0, i32 1
  %50 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %segs, align 8, !tbaa !90
  store %struct.opj_tcd_seg* %50, %struct.opj_tcd_seg** %l_seg, align 8, !tbaa !1
  %51 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %numsegs16 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %51, i32 0, i32 11
  %52 = load i32, i32* %numsegs16, align 4, !tbaa !81
  %inc = add i32 %52, 1
  store i32 %inc, i32* %numsegs16, align 4, !tbaa !81
  %53 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %data_current_size = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %53, i32 0, i32 9
  store i32 0, i32* %data_current_size, align 4, !tbaa !96
  br label %if.end.28

if.else:                                          ; preds = %if.end.13
  %54 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %numsegs17 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %54, i32 0, i32 11
  %55 = load i32, i32* %numsegs17, align 4, !tbaa !81
  %sub18 = sub i32 %55, 1
  %idxprom19 = zext i32 %sub18 to i64
  %56 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %segs20 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %56, i32 0, i32 1
  %57 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %segs20, align 8, !tbaa !90
  %arrayidx21 = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %57, i64 %idxprom19
  store %struct.opj_tcd_seg* %arrayidx21, %struct.opj_tcd_seg** %l_seg, align 8, !tbaa !1
  %58 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %l_seg, align 8, !tbaa !1
  %numpasses = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %58, i32 0, i32 2
  %59 = load i32, i32* %numpasses, align 4, !tbaa !91
  %60 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %l_seg, align 8, !tbaa !1
  %maxpasses = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %60, i32 0, i32 5
  %61 = load i32, i32* %maxpasses, align 4, !tbaa !93
  %cmp22 = icmp eq i32 %59, %61
  br i1 %cmp22, label %if.then.23, label %if.end.27

if.then.23:                                       ; preds = %if.else
  %62 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %l_seg, align 8, !tbaa !1
  %incdec.ptr24 = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %62, i32 1
  store %struct.opj_tcd_seg* %incdec.ptr24, %struct.opj_tcd_seg** %l_seg, align 8, !tbaa !1
  %63 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %numsegs25 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %63, i32 0, i32 11
  %64 = load i32, i32* %numsegs25, align 4, !tbaa !81
  %inc26 = add i32 %64, 1
  store i32 %inc26, i32* %numsegs25, align 4, !tbaa !81
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.23, %if.else
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.15
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.28
  %65 = load i8*, i8** %l_current_data, align 8, !tbaa !1
  %66 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %l_seg, align 8, !tbaa !1
  %newlen = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %66, i32 0, i32 7
  %67 = load i32, i32* %newlen, align 4, !tbaa !95
  %idx.ext = zext i32 %67 to i64
  %add.ptr = getelementptr inbounds i8, i8* %65, i64 %idx.ext
  %68 = load i8*, i8** %p_src_data.addr, align 8, !tbaa !1
  %69 = load i32, i32* %p_max_length.addr, align 4, !tbaa !5
  %idx.ext29 = zext i32 %69 to i64
  %add.ptr30 = getelementptr inbounds i8, i8* %68, i64 %idx.ext29
  %cmp31 = icmp ugt i8* %add.ptr, %add.ptr30
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %do.body
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.102

if.end.33:                                        ; preds = %do.body
  %70 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %data_current_size34 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %70, i32 0, i32 9
  %71 = load i32, i32* %data_current_size34, align 4, !tbaa !96
  %72 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %l_seg, align 8, !tbaa !1
  %newlen35 = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %72, i32 0, i32 7
  %73 = load i32, i32* %newlen35, align 4, !tbaa !95
  %add = add i32 %71, %73
  %74 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %data_max_size = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %74, i32 0, i32 8
  %75 = load i32, i32* %data_max_size, align 4, !tbaa !97
  %cmp36 = icmp ugt i32 %add, %75
  br i1 %cmp36, label %if.then.37, label %if.end.58

if.then.37:                                       ; preds = %if.end.33
  %76 = bitcast i8** %new_cblk_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %76) #1
  %77 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %data_current_size38 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %77, i32 0, i32 9
  %78 = load i32, i32* %data_current_size38, align 4, !tbaa !96
  %79 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %l_seg, align 8, !tbaa !1
  %newlen39 = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %79, i32 0, i32 7
  %80 = load i32, i32* %newlen39, align 4, !tbaa !95
  %add40 = add i32 %78, %80
  %conv = zext i32 %add40 to i64
  %cmp41 = icmp uge i64 %conv, -256
  br i1 %cmp41, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.37
  br label %cond.end

cond.false:                                       ; preds = %if.then.37
  %81 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %81, i32 0, i32 0
  %82 = load i8*, i8** %data, align 8, !tbaa !98
  %83 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %data_current_size43 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %83, i32 0, i32 9
  %84 = load i32, i32* %data_current_size43, align 4, !tbaa !96
  %85 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %l_seg, align 8, !tbaa !1
  %newlen44 = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %85, i32 0, i32 7
  %86 = load i32, i32* %newlen44, align 4, !tbaa !95
  %add45 = add i32 %84, %86
  %conv46 = zext i32 %add45 to i64
  %call = call i8* @realloc(i8* %82, i64 %conv46) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %call, %cond.false ]
  store i8* %cond, i8** %new_cblk_data, align 8, !tbaa !1
  %87 = load i8*, i8** %new_cblk_data, align 8, !tbaa !1
  %tobool47 = icmp ne i8* %87, null
  br i1 %tobool47, label %if.end.52, label %if.then.48

if.then.48:                                       ; preds = %cond.end
  %88 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %data49 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %88, i32 0, i32 0
  %89 = load i8*, i8** %data49, align 8, !tbaa !98
  call void @free(i8* %89) #6
  %90 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %data50 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %90, i32 0, i32 0
  store i8* null, i8** %data50, align 8, !tbaa !98
  %91 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %data_max_size51 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %91, i32 0, i32 8
  store i32 0, i32* %data_max_size51, align 4, !tbaa !97
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.52:                                        ; preds = %cond.end
  %92 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %data_current_size53 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %92, i32 0, i32 9
  %93 = load i32, i32* %data_current_size53, align 4, !tbaa !96
  %94 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %l_seg, align 8, !tbaa !1
  %newlen54 = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %94, i32 0, i32 7
  %95 = load i32, i32* %newlen54, align 4, !tbaa !95
  %add55 = add i32 %93, %95
  %96 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %data_max_size56 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %96, i32 0, i32 8
  store i32 %add55, i32* %data_max_size56, align 4, !tbaa !97
  %97 = load i8*, i8** %new_cblk_data, align 8, !tbaa !1
  %98 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %data57 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %98, i32 0, i32 0
  store i8* %97, i8** %data57, align 8, !tbaa !98
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.52, %if.then.48
  %99 = bitcast i8** %new_cblk_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.102 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.58

if.end.58:                                        ; preds = %cleanup.cont, %if.end.33
  %100 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %data59 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %100, i32 0, i32 0
  %101 = load i8*, i8** %data59, align 8, !tbaa !98
  %102 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %data_current_size60 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %102, i32 0, i32 9
  %103 = load i32, i32* %data_current_size60, align 4, !tbaa !96
  %idx.ext61 = zext i32 %103 to i64
  %add.ptr62 = getelementptr inbounds i8, i8* %101, i64 %idx.ext61
  %104 = load i8*, i8** %l_current_data, align 8, !tbaa !1
  %105 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %l_seg, align 8, !tbaa !1
  %newlen63 = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %105, i32 0, i32 7
  %106 = load i32, i32* %newlen63, align 4, !tbaa !95
  %conv64 = zext i32 %106 to i64
  %call65 = call i8* @memcpy(i8* %add.ptr62, i8* %104, i64 %conv64) #6
  %107 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %l_seg, align 8, !tbaa !1
  %numpasses66 = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %107, i32 0, i32 2
  %108 = load i32, i32* %numpasses66, align 4, !tbaa !91
  %cmp67 = icmp eq i32 %108, 0
  br i1 %cmp67, label %if.then.69, label %if.end.73

if.then.69:                                       ; preds = %if.end.58
  %109 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %data70 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %109, i32 0, i32 0
  %110 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %l_seg, align 8, !tbaa !1
  %data71 = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %110, i32 0, i32 0
  store i8** %data70, i8*** %data71, align 8, !tbaa !99
  %111 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %data_current_size72 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %111, i32 0, i32 9
  %112 = load i32, i32* %data_current_size72, align 4, !tbaa !96
  %113 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %l_seg, align 8, !tbaa !1
  %dataindex = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %113, i32 0, i32 1
  store i32 %112, i32* %dataindex, align 4, !tbaa !100
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.69, %if.end.58
  %114 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %l_seg, align 8, !tbaa !1
  %newlen74 = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %114, i32 0, i32 7
  %115 = load i32, i32* %newlen74, align 4, !tbaa !95
  %116 = load i8*, i8** %l_current_data, align 8, !tbaa !1
  %idx.ext75 = zext i32 %115 to i64
  %add.ptr76 = getelementptr inbounds i8, i8* %116, i64 %idx.ext75
  store i8* %add.ptr76, i8** %l_current_data, align 8, !tbaa !1
  %117 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %l_seg, align 8, !tbaa !1
  %numnewpasses77 = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %117, i32 0, i32 6
  %118 = load i32, i32* %numnewpasses77, align 4, !tbaa !94
  %119 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %l_seg, align 8, !tbaa !1
  %numpasses78 = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %119, i32 0, i32 2
  %120 = load i32, i32* %numpasses78, align 4, !tbaa !91
  %add79 = add i32 %120, %118
  store i32 %add79, i32* %numpasses78, align 4, !tbaa !91
  %121 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %l_seg, align 8, !tbaa !1
  %numnewpasses80 = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %121, i32 0, i32 6
  %122 = load i32, i32* %numnewpasses80, align 4, !tbaa !94
  %123 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %numnewpasses81 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %123, i32 0, i32 10
  %124 = load i32, i32* %numnewpasses81, align 4, !tbaa !84
  %sub82 = sub i32 %124, %122
  store i32 %sub82, i32* %numnewpasses81, align 4, !tbaa !84
  %125 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %l_seg, align 8, !tbaa !1
  %numpasses83 = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %125, i32 0, i32 2
  %126 = load i32, i32* %numpasses83, align 4, !tbaa !91
  %127 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %l_seg, align 8, !tbaa !1
  %real_num_passes = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %127, i32 0, i32 3
  store i32 %126, i32* %real_num_passes, align 4, !tbaa !101
  %128 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %l_seg, align 8, !tbaa !1
  %newlen84 = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %128, i32 0, i32 7
  %129 = load i32, i32* %newlen84, align 4, !tbaa !95
  %130 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %data_current_size85 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %130, i32 0, i32 9
  %131 = load i32, i32* %data_current_size85, align 4, !tbaa !96
  %add86 = add i32 %131, %129
  store i32 %add86, i32* %data_current_size85, align 4, !tbaa !96
  %132 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %l_seg, align 8, !tbaa !1
  %newlen87 = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %132, i32 0, i32 7
  %133 = load i32, i32* %newlen87, align 4, !tbaa !95
  %134 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %l_seg, align 8, !tbaa !1
  %len = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %134, i32 0, i32 4
  %135 = load i32, i32* %len, align 4, !tbaa !102
  %add88 = add i32 %135, %133
  store i32 %add88, i32* %len, align 4, !tbaa !102
  %136 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %numnewpasses89 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %136, i32 0, i32 10
  %137 = load i32, i32* %numnewpasses89, align 4, !tbaa !84
  %cmp90 = icmp ugt i32 %137, 0
  br i1 %cmp90, label %if.then.92, label %if.end.96

if.then.92:                                       ; preds = %if.end.73
  %138 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %l_seg, align 8, !tbaa !1
  %incdec.ptr93 = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %138, i32 1
  store %struct.opj_tcd_seg* %incdec.ptr93, %struct.opj_tcd_seg** %l_seg, align 8, !tbaa !1
  %139 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %numsegs94 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %139, i32 0, i32 11
  %140 = load i32, i32* %numsegs94, align 4, !tbaa !81
  %inc95 = add i32 %140, 1
  store i32 %inc95, i32* %numsegs94, align 4, !tbaa !81
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.92, %if.end.73
  br label %do.cond

do.cond:                                          ; preds = %if.end.96
  %141 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %numnewpasses97 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %141, i32 0, i32 10
  %142 = load i32, i32* %numnewpasses97, align 4, !tbaa !84
  %cmp98 = icmp ugt i32 %142, 0
  br i1 %cmp98, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %143 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %numsegs100 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %143, i32 0, i32 11
  %144 = load i32, i32* %numsegs100, align 4, !tbaa !81
  %145 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %real_num_segs = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %145, i32 0, i32 12
  store i32 %144, i32* %real_num_segs, align 4, !tbaa !83
  %146 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %incdec.ptr101 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %146, i32 1
  store %struct.opj_tcd_cblk_dec* %incdec.ptr101, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.102

cleanup.102:                                      ; preds = %do.end, %cleanup, %if.then.32, %if.then.11
  %147 = bitcast %struct.opj_tcd_seg** %l_seg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #1
  %cleanup.dest.103 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.103, label %cleanup.107 [
    i32 0, label %cleanup.cont.104
    i32 7, label %for.inc
  ]

cleanup.cont.104:                                 ; preds = %cleanup.102
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont.104, %cleanup.102
  %148 = load i32, i32* %cblkno, align 4, !tbaa !5
  %inc105 = add i32 %148, 1
  store i32 %inc105, i32* %cblkno, align 4, !tbaa !5
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  %149 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !1
  %incdec.ptr106 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %149, i32 1
  store %struct.opj_tcd_band* %incdec.ptr106, %struct.opj_tcd_band** %l_band, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.107

cleanup.107:                                      ; preds = %for.end, %cleanup.102, %if.then
  %150 = bitcast %struct.opj_tcd_precinct** %l_prc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %150) #1
  %cleanup.dest.108 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.108, label %cleanup.114 [
    i32 0, label %cleanup.cont.109
    i32 4, label %for.inc.110
  ]

cleanup.cont.109:                                 ; preds = %cleanup.107
  br label %for.inc.110

for.inc.110:                                      ; preds = %cleanup.cont.109, %cleanup.107
  %151 = load i32, i32* %bandno, align 4, !tbaa !5
  %inc111 = add i32 %151, 1
  store i32 %inc111, i32* %bandno, align 4, !tbaa !5
  br label %for.cond

for.end.112:                                      ; preds = %for.cond
  %152 = load i8*, i8** %l_current_data, align 8, !tbaa !1
  %153 = load i8*, i8** %p_src_data.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %152 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %153 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv113 = trunc i64 %sub.ptr.sub to i32
  %154 = load i32*, i32** %p_data_read.addr, align 8, !tbaa !1
  store i32 %conv113, i32* %154, align 4, !tbaa !5
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.114

cleanup.114:                                      ; preds = %for.end.112, %cleanup.107
  %155 = bitcast %struct.opj_tcd_resolution** %l_res to i8*
  call void @llvm.lifetime.end(i64 8, i8* %155) #1
  %156 = bitcast %struct.opj_tcd_cblk_dec** %l_cblk to i8*
  call void @llvm.lifetime.end(i64 8, i8* %156) #1
  %157 = bitcast %struct.opj_tcd_band** %l_band to i8*
  call void @llvm.lifetime.end(i64 8, i8* %157) #1
  %158 = bitcast i8** %l_current_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %158) #1
  %159 = bitcast i32* %l_nb_code_blocks to i8*
  call void @llvm.lifetime.end(i64 4, i8* %159) #1
  %160 = bitcast i32* %cblkno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %160) #1
  %161 = bitcast i32* %bandno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %161) #1
  %162 = load i32, i32* %retval
  ret i32 %162
}

declare void @opj_tgt_reset(%struct.opj_tgt_tree*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare %struct.opj_bio* @opj_bio_create() #2

declare void @opj_bio_init_dec(%struct.opj_bio*, i8*, i32) #2

declare i32 @opj_bio_read(%struct.opj_bio*, i32) #2

declare i32 @opj_bio_inalign(%struct.opj_bio*) #2

declare i64 @opj_bio_numbytes(%struct.opj_bio*) #2

declare void @opj_bio_destroy(%struct.opj_bio*) #2

declare i32 @opj_tgt_decode(%struct.opj_bio*, %struct.opj_tgt_tree*, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @opj_t2_getnumpasses(%struct.opj_bio* %bio) #0 {
entry:
  %retval = alloca i32, align 4
  %bio.addr = alloca %struct.opj_bio*, align 8
  %n = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.opj_bio* %bio, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %0 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %call = call i32 @opj_bio_read(%struct.opj_bio* %1, i32 1) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %call1 = call i32 @opj_bio_read(%struct.opj_bio* %2, i32 1) #5
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store i32 2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %3 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %call5 = call i32 @opj_bio_read(%struct.opj_bio* %3, i32 2) #5
  store i32 %call5, i32* %n, align 4, !tbaa !5
  %cmp = icmp ne i32 %call5, 3
  br i1 %cmp, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  %4 = load i32, i32* %n, align 4, !tbaa !5
  %add = add i32 3, %4
  store i32 %add, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end.4
  %5 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %call8 = call i32 @opj_bio_read(%struct.opj_bio* %5, i32 5) #5
  store i32 %call8, i32* %n, align 4, !tbaa !5
  %cmp9 = icmp ne i32 %call8, 31
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.7
  %6 = load i32, i32* %n, align 4, !tbaa !5
  %add11 = add i32 6, %6
  store i32 %add11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end.7
  %7 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %call13 = call i32 @opj_bio_read(%struct.opj_bio* %7, i32 7) #5
  %add14 = add i32 37, %call13
  store i32 %add14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.12, %if.then.10, %if.then.6, %if.then.3, %if.then
  %8 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @opj_t2_getcommacode(%struct.opj_bio* %bio) #0 {
entry:
  %bio.addr = alloca %struct.opj_bio*, align 8
  %n = alloca i32, align 4
  store %struct.opj_bio* %bio, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %0 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %n, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %call = call i32 @opj_bio_read(%struct.opj_bio* %1, i32 1) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %n, align 4, !tbaa !5
  %inc = add i32 %2, 1
  store i32 %inc, i32* %n, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %3 = load i32, i32* %n, align 4, !tbaa !5
  %4 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %4) #1
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @opj_t2_init_seg(%struct.opj_tcd_cblk_dec* %cblk, i32 %index, i32 %cblksty, i32 %first) #0 {
entry:
  %retval = alloca i32, align 4
  %cblk.addr = alloca %struct.opj_tcd_cblk_dec*, align 8
  %index.addr = alloca i32, align 4
  %cblksty.addr = alloca i32, align 4
  %first.addr = alloca i32, align 4
  %seg = alloca %struct.opj_tcd_seg*, align 8
  %l_nb_segs = alloca i32, align 4
  %new_segs = alloca %struct.opj_tcd_seg*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.opj_tcd_cblk_dec* %cblk, %struct.opj_tcd_cblk_dec** %cblk.addr, align 8, !tbaa !1
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store i32 %cblksty, i32* %cblksty.addr, align 4, !tbaa !5
  store i32 %first, i32* %first.addr, align 4, !tbaa !5
  %0 = bitcast %struct.opj_tcd_seg** %seg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store %struct.opj_tcd_seg* null, %struct.opj_tcd_seg** %seg, align 8, !tbaa !1
  %1 = bitcast i32* %l_nb_segs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i32, i32* %index.addr, align 4, !tbaa !5
  %add = add i32 %2, 1
  store i32 %add, i32* %l_nb_segs, align 4, !tbaa !5
  %3 = load i32, i32* %l_nb_segs, align 4, !tbaa !5
  %4 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %cblk.addr, align 8, !tbaa !1
  %m_current_max_segs = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %4, i32 0, i32 13
  %5 = load i32, i32* %m_current_max_segs, align 4, !tbaa !103
  %cmp = icmp ugt i32 %3, %5
  br i1 %cmp, label %if.then, label %if.end.14

if.then:                                          ; preds = %entry
  %6 = bitcast %struct.opj_tcd_seg** %new_segs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %cblk.addr, align 8, !tbaa !1
  %m_current_max_segs1 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %7, i32 0, i32 13
  %8 = load i32, i32* %m_current_max_segs1, align 4, !tbaa !103
  %add2 = add i32 %8, 10
  store i32 %add2, i32* %m_current_max_segs1, align 4, !tbaa !103
  %9 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %cblk.addr, align 8, !tbaa !1
  %m_current_max_segs3 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %9, i32 0, i32 13
  %10 = load i32, i32* %m_current_max_segs3, align 4, !tbaa !103
  %conv = zext i32 %10 to i64
  %mul = mul i64 %conv, 40
  %cmp4 = icmp uge i64 %mul, -256
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %11 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %cblk.addr, align 8, !tbaa !1
  %segs = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %11, i32 0, i32 1
  %12 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %segs, align 8, !tbaa !90
  %13 = bitcast %struct.opj_tcd_seg* %12 to i8*
  %14 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %cblk.addr, align 8, !tbaa !1
  %m_current_max_segs6 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %14, i32 0, i32 13
  %15 = load i32, i32* %m_current_max_segs6, align 4, !tbaa !103
  %conv7 = zext i32 %15 to i64
  %mul8 = mul i64 %conv7, 40
  %call = call i8* @realloc(i8* %13, i64 %mul8) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %call, %cond.false ]
  %16 = bitcast i8* %cond to %struct.opj_tcd_seg*
  store %struct.opj_tcd_seg* %16, %struct.opj_tcd_seg** %new_segs, align 8, !tbaa !1
  %17 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %new_segs, align 8, !tbaa !1
  %tobool = icmp ne %struct.opj_tcd_seg* %17, null
  br i1 %tobool, label %if.end, label %if.then.9

if.then.9:                                        ; preds = %cond.end
  %18 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %cblk.addr, align 8, !tbaa !1
  %segs10 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %18, i32 0, i32 1
  %19 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %segs10, align 8, !tbaa !90
  %20 = bitcast %struct.opj_tcd_seg* %19 to i8*
  call void @free(i8* %20) #6
  %21 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %cblk.addr, align 8, !tbaa !1
  %segs11 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %21, i32 0, i32 1
  store %struct.opj_tcd_seg* null, %struct.opj_tcd_seg** %segs11, align 8, !tbaa !90
  %22 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %cblk.addr, align 8, !tbaa !1
  %m_current_max_segs12 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %22, i32 0, i32 13
  store i32 0, i32* %m_current_max_segs12, align 4, !tbaa !103
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %23 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %new_segs, align 8, !tbaa !1
  %24 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %cblk.addr, align 8, !tbaa !1
  %segs13 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %24, i32 0, i32 1
  store %struct.opj_tcd_seg* %23, %struct.opj_tcd_seg** %segs13, align 8, !tbaa !90
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.9
  %25 = bitcast %struct.opj_tcd_seg** %new_segs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.40 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.14

if.end.14:                                        ; preds = %cleanup.cont, %entry
  %26 = load i32, i32* %index.addr, align 4, !tbaa !5
  %idxprom = zext i32 %26 to i64
  %27 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %cblk.addr, align 8, !tbaa !1
  %segs15 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %27, i32 0, i32 1
  %28 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %segs15, align 8, !tbaa !90
  %arrayidx = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %28, i64 %idxprom
  store %struct.opj_tcd_seg* %arrayidx, %struct.opj_tcd_seg** %seg, align 8, !tbaa !1
  %29 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %seg, align 8, !tbaa !1
  %30 = bitcast %struct.opj_tcd_seg* %29 to i8*
  %call16 = call i8* @memset(i8* %30, i32 0, i64 40) #6
  %31 = load i32, i32* %cblksty.addr, align 4, !tbaa !5
  %and = and i32 %31, 4
  %tobool17 = icmp ne i32 %and, 0
  br i1 %tobool17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.end.14
  %32 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %seg, align 8, !tbaa !1
  %maxpasses = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %32, i32 0, i32 5
  store i32 1, i32* %maxpasses, align 4, !tbaa !93
  br label %if.end.39

if.else:                                          ; preds = %if.end.14
  %33 = load i32, i32* %cblksty.addr, align 4, !tbaa !5
  %and19 = and i32 %33, 1
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %if.then.21, label %if.else.36

if.then.21:                                       ; preds = %if.else
  %34 = load i32, i32* %first.addr, align 4, !tbaa !5
  %tobool22 = icmp ne i32 %34, 0
  br i1 %tobool22, label %if.then.23, label %if.else.25

if.then.23:                                       ; preds = %if.then.21
  %35 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %seg, align 8, !tbaa !1
  %maxpasses24 = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %35, i32 0, i32 5
  store i32 10, i32* %maxpasses24, align 4, !tbaa !93
  br label %if.end.35

if.else.25:                                       ; preds = %if.then.21
  %36 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %seg, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %36, i64 -1
  %maxpasses26 = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %add.ptr, i32 0, i32 5
  %37 = load i32, i32* %maxpasses26, align 4, !tbaa !93
  %cmp27 = icmp eq i32 %37, 1
  br i1 %cmp27, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.else.25
  %38 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %seg, align 8, !tbaa !1
  %add.ptr29 = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %38, i64 -1
  %maxpasses30 = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %add.ptr29, i32 0, i32 5
  %39 = load i32, i32* %maxpasses30, align 4, !tbaa !93
  %cmp31 = icmp eq i32 %39, 10
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.else.25
  %40 = phi i1 [ true, %if.else.25 ], [ %cmp31, %lor.rhs ]
  %cond33 = select i1 %40, i32 2, i32 1
  %41 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %seg, align 8, !tbaa !1
  %maxpasses34 = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %41, i32 0, i32 5
  store i32 %cond33, i32* %maxpasses34, align 4, !tbaa !93
  br label %if.end.35

if.end.35:                                        ; preds = %lor.end, %if.then.23
  br label %if.end.38

if.else.36:                                       ; preds = %if.else
  %42 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %seg, align 8, !tbaa !1
  %maxpasses37 = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %42, i32 0, i32 5
  store i32 109, i32* %maxpasses37, align 4, !tbaa !93
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.36, %if.end.35
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.18
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.40

cleanup.40:                                       ; preds = %if.end.39, %cleanup
  %43 = bitcast i32* %l_nb_segs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast %struct.opj_tcd_seg** %seg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = load i32, i32* %retval
  ret i32 %45
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @opj_int_min(i32 %a, i32 %b) #4 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4, !tbaa !5
  store i32 %b, i32* %b.addr, align 4, !tbaa !5
  %0 = load i32, i32* %a.addr, align 4, !tbaa !5
  %1 = load i32, i32* %b.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %a.addr, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %b.addr, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @opj_uint_floorlog2(i32 %a) #4 {
entry:
  %a.addr = alloca i32, align 4
  %l = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4, !tbaa !5
  %0 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %l, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %a.addr, align 4, !tbaa !5
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %a.addr, align 4, !tbaa !5
  %shr = lshr i32 %2, 1
  store i32 %shr, i32* %a.addr, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %l, align 4, !tbaa !5
  %inc = add i32 %3, 1
  store i32 %inc, i32* %l, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %4 = load i32, i32* %l, align 4, !tbaa !5
  %5 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %5) #1
  ret i32 %4
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #3

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

declare void @opj_tgt_setvalue(%struct.opj_tgt_tree*, i32, i32) #2

declare void @opj_bio_init_enc(%struct.opj_bio*, i8*, i32) #2

declare void @opj_bio_write(%struct.opj_bio*, i32, i32) #2

declare void @opj_tgt_encode(%struct.opj_bio*, %struct.opj_tgt_tree*, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal void @opj_t2_putnumpasses(%struct.opj_bio* %bio, i32 %n) #0 {
entry:
  %bio.addr = alloca %struct.opj_bio*, align 8
  %n.addr = alloca i32, align 4
  store %struct.opj_bio* %bio, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  store i32 %n, i32* %n.addr, align 4, !tbaa !5
  %0 = load i32, i32* %n.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  call void @opj_bio_write(%struct.opj_bio* %1, i32 0, i32 1) #5
  br label %if.end.19

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %n.addr, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %2, 2
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  %3 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  call void @opj_bio_write(%struct.opj_bio* %3, i32 2, i32 2) #5
  br label %if.end.18

if.else.3:                                        ; preds = %if.else
  %4 = load i32, i32* %n.addr, align 4, !tbaa !5
  %cmp4 = icmp ule i32 %4, 5
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.else.3
  %5 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %6 = load i32, i32* %n.addr, align 4, !tbaa !5
  %sub = sub i32 %6, 3
  %or = or i32 12, %sub
  call void @opj_bio_write(%struct.opj_bio* %5, i32 %or, i32 4) #5
  br label %if.end.17

if.else.6:                                        ; preds = %if.else.3
  %7 = load i32, i32* %n.addr, align 4, !tbaa !5
  %cmp7 = icmp ule i32 %7, 36
  br i1 %cmp7, label %if.then.8, label %if.else.11

if.then.8:                                        ; preds = %if.else.6
  %8 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %9 = load i32, i32* %n.addr, align 4, !tbaa !5
  %sub9 = sub i32 %9, 6
  %or10 = or i32 480, %sub9
  call void @opj_bio_write(%struct.opj_bio* %8, i32 %or10, i32 9) #5
  br label %if.end.16

if.else.11:                                       ; preds = %if.else.6
  %10 = load i32, i32* %n.addr, align 4, !tbaa !5
  %cmp12 = icmp ule i32 %10, 164
  br i1 %cmp12, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.else.11
  %11 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %12 = load i32, i32* %n.addr, align 4, !tbaa !5
  %sub14 = sub i32 %12, 37
  %or15 = or i32 65408, %sub14
  call void @opj_bio_write(%struct.opj_bio* %11, i32 %or15, i32 16) #5
  br label %if.end

if.end:                                           ; preds = %if.then.13, %if.else.11
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %if.then.8
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then.5
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.2
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @opj_int_max(i32 %a, i32 %b) #4 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4, !tbaa !5
  store i32 %b, i32* %b.addr, align 4, !tbaa !5
  %0 = load i32, i32* %a.addr, align 4, !tbaa !5
  %1 = load i32, i32* %b.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %a.addr, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %b.addr, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @opj_int_floorlog2(i32 %a) #4 {
entry:
  %a.addr = alloca i32, align 4
  %l = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4, !tbaa !5
  %0 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %l, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %a.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %a.addr, align 4, !tbaa !5
  %shr = ashr i32 %2, 1
  store i32 %shr, i32* %a.addr, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %l, align 4, !tbaa !5
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %l, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %4 = load i32, i32* %l, align 4, !tbaa !5
  %5 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %5) #1
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal void @opj_t2_putcommacode(%struct.opj_bio* %bio, i32 %n) #0 {
entry:
  %bio.addr = alloca %struct.opj_bio*, align 8
  %n.addr = alloca i32, align 4
  store %struct.opj_bio* %bio, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  store i32 %n, i32* %n.addr, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %n.addr, align 4, !tbaa !5
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %n.addr, align 4, !tbaa !5
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  call void @opj_bio_write(%struct.opj_bio* %1, i32 1, i32 1) #5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %2 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  call void @opj_bio_write(%struct.opj_bio* %2, i32 0, i32 1) #5
  ret void
}

declare i32 @opj_bio_flush(%struct.opj_bio*) #2

; Function Attrs: nounwind uwtable
define internal i32 @opj_t2_skip_packet_data(%struct.opj_t2* %p_t2, %struct.opj_tcd_tile* %p_tile, %struct.opj_pi_iterator* %p_pi, i32* %p_data_read, i32 %p_max_length, %struct.opj_packet_info* %pack_info) #0 {
entry:
  %retval = alloca i32, align 4
  %p_t2.addr = alloca %struct.opj_t2*, align 8
  %p_tile.addr = alloca %struct.opj_tcd_tile*, align 8
  %p_pi.addr = alloca %struct.opj_pi_iterator*, align 8
  %p_data_read.addr = alloca i32*, align 8
  %p_max_length.addr = alloca i32, align 4
  %pack_info.addr = alloca %struct.opj_packet_info*, align 8
  %bandno = alloca i32, align 4
  %cblkno = alloca i32, align 4
  %l_nb_code_blocks = alloca i32, align 4
  %l_band = alloca %struct.opj_tcd_band*, align 8
  %l_cblk = alloca %struct.opj_tcd_cblk_dec*, align 8
  %l_res = alloca %struct.opj_tcd_resolution*, align 8
  %l_prc = alloca %struct.opj_tcd_precinct*, align 8
  %cleanup.dest.slot = alloca i32
  %l_seg = alloca %struct.opj_tcd_seg*, align 8
  store %struct.opj_t2* %p_t2, %struct.opj_t2** %p_t2.addr, align 8, !tbaa !1
  store %struct.opj_tcd_tile* %p_tile, %struct.opj_tcd_tile** %p_tile.addr, align 8, !tbaa !1
  store %struct.opj_pi_iterator* %p_pi, %struct.opj_pi_iterator** %p_pi.addr, align 8, !tbaa !1
  store i32* %p_data_read, i32** %p_data_read.addr, align 8, !tbaa !1
  store i32 %p_max_length, i32* %p_max_length.addr, align 4, !tbaa !5
  store %struct.opj_packet_info* %pack_info, %struct.opj_packet_info** %pack_info.addr, align 8, !tbaa !1
  %0 = bitcast i32* %bandno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %cblkno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %l_nb_code_blocks to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast %struct.opj_tcd_band** %l_band to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store %struct.opj_tcd_band* null, %struct.opj_tcd_band** %l_band, align 8, !tbaa !1
  %4 = bitcast %struct.opj_tcd_cblk_dec** %l_cblk to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store %struct.opj_tcd_cblk_dec* null, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %5 = bitcast %struct.opj_tcd_resolution** %l_res to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %p_pi.addr, align 8, !tbaa !1
  %resno = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %6, i32 0, i32 7
  %7 = load i32, i32* %resno, align 4, !tbaa !39
  %idxprom = zext i32 %7 to i64
  %8 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %p_pi.addr, align 8, !tbaa !1
  %compno = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %8, i32 0, i32 6
  %9 = load i32, i32* %compno, align 4, !tbaa !38
  %idxprom1 = zext i32 %9 to i64
  %10 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %p_tile.addr, align 8, !tbaa !1
  %comps = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %10, i32 0, i32 5
  %11 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %comps, align 8, !tbaa !41
  %arrayidx = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %11, i64 %idxprom1
  %resolutions = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %arrayidx, i32 0, i32 6
  %12 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %resolutions, align 8, !tbaa !42
  %arrayidx2 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %12, i64 %idxprom
  store %struct.opj_tcd_resolution* %arrayidx2, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !1
  %13 = load %struct.opj_t2*, %struct.opj_t2** %p_t2.addr, align 8, !tbaa !1
  %14 = load %struct.opj_packet_info*, %struct.opj_packet_info** %pack_info.addr, align 8, !tbaa !1
  %15 = load i32*, i32** %p_data_read.addr, align 8, !tbaa !1
  store i32 0, i32* %15, align 4, !tbaa !5
  %16 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !1
  %bands = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %16, i32 0, i32 7
  %arraydecay = getelementptr inbounds [3 x %struct.opj_tcd_band], [3 x %struct.opj_tcd_band]* %bands, i32 0, i32 0
  store %struct.opj_tcd_band* %arraydecay, %struct.opj_tcd_band** %l_band, align 8, !tbaa !1
  store i32 0, i32* %bandno, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.55, %entry
  %17 = load i32, i32* %bandno, align 4, !tbaa !5
  %18 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !1
  %numbands = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %18, i32 0, i32 6
  %19 = load i32, i32* %numbands, align 4, !tbaa !45
  %cmp = icmp ult i32 %17, %19
  br i1 %cmp, label %for.body, label %for.end.57

for.body:                                         ; preds = %for.cond
  %20 = bitcast %struct.opj_tcd_precinct** %l_prc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %p_pi.addr, align 8, !tbaa !1
  %precno = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %21, i32 0, i32 8
  %22 = load i32, i32* %precno, align 4, !tbaa !40
  %idxprom3 = zext i32 %22 to i64
  %23 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !1
  %precincts = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %23, i32 0, i32 5
  %24 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %precincts, align 8, !tbaa !47
  %arrayidx4 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %24, i64 %idxprom3
  store %struct.opj_tcd_precinct* %arrayidx4, %struct.opj_tcd_precinct** %l_prc, align 8, !tbaa !1
  %25 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !1
  %x1 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %25, i32 0, i32 2
  %26 = load i32, i32* %x1, align 4, !tbaa !77
  %27 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !1
  %x0 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %27, i32 0, i32 0
  %28 = load i32, i32* %x0, align 4, !tbaa !78
  %sub = sub nsw i32 %26, %28
  %cmp5 = icmp eq i32 %sub, 0
  br i1 %cmp5, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %29 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !1
  %y1 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %29, i32 0, i32 3
  %30 = load i32, i32* %y1, align 4, !tbaa !79
  %31 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !1
  %y0 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %31, i32 0, i32 1
  %32 = load i32, i32* %y0, align 4, !tbaa !80
  %sub6 = sub nsw i32 %30, %32
  %cmp7 = icmp eq i32 %sub6, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %33 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %33, i32 1
  store %struct.opj_tcd_band* %incdec.ptr, %struct.opj_tcd_band** %l_band, align 8, !tbaa !1
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.52

if.end:                                           ; preds = %lor.lhs.false
  %34 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_prc, align 8, !tbaa !1
  %cw = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %34, i32 0, i32 4
  %35 = load i32, i32* %cw, align 4, !tbaa !53
  %36 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_prc, align 8, !tbaa !1
  %ch = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %36, i32 0, i32 5
  %37 = load i32, i32* %ch, align 4, !tbaa !54
  %mul = mul i32 %35, %37
  store i32 %mul, i32* %l_nb_code_blocks, align 4, !tbaa !5
  %38 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_prc, align 8, !tbaa !1
  %cblks = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %38, i32 0, i32 6
  %dec = bitcast %union.anon.0* %cblks to %struct.opj_tcd_cblk_dec**
  %39 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %dec, align 8, !tbaa !1
  store %struct.opj_tcd_cblk_dec* %39, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  store i32 0, i32* %cblkno, align 4, !tbaa !5
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %if.end
  %40 = load i32, i32* %cblkno, align 4, !tbaa !5
  %41 = load i32, i32* %l_nb_code_blocks, align 4, !tbaa !5
  %cmp9 = icmp ult i32 %40, %41
  br i1 %cmp9, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.8
  %42 = bitcast %struct.opj_tcd_seg** %l_seg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %42) #1
  store %struct.opj_tcd_seg* null, %struct.opj_tcd_seg** %l_seg, align 8, !tbaa !1
  %43 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %numnewpasses = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %43, i32 0, i32 10
  %44 = load i32, i32* %numnewpasses, align 4, !tbaa !84
  %tobool = icmp ne i32 %44, 0
  br i1 %tobool, label %if.end.13, label %if.then.11

if.then.11:                                       ; preds = %for.body.10
  %45 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %incdec.ptr12 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %45, i32 1
  store %struct.opj_tcd_cblk_dec* %incdec.ptr12, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %for.body.10
  %46 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %numsegs = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %46, i32 0, i32 11
  %47 = load i32, i32* %numsegs, align 4, !tbaa !81
  %tobool14 = icmp ne i32 %47, 0
  br i1 %tobool14, label %if.else, label %if.then.15

if.then.15:                                       ; preds = %if.end.13
  %48 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %segs = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %48, i32 0, i32 1
  %49 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %segs, align 8, !tbaa !90
  store %struct.opj_tcd_seg* %49, %struct.opj_tcd_seg** %l_seg, align 8, !tbaa !1
  %50 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %numsegs16 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %50, i32 0, i32 11
  %51 = load i32, i32* %numsegs16, align 4, !tbaa !81
  %inc = add i32 %51, 1
  store i32 %inc, i32* %numsegs16, align 4, !tbaa !81
  %52 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %data_current_size = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %52, i32 0, i32 9
  store i32 0, i32* %data_current_size, align 4, !tbaa !96
  br label %if.end.28

if.else:                                          ; preds = %if.end.13
  %53 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %numsegs17 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %53, i32 0, i32 11
  %54 = load i32, i32* %numsegs17, align 4, !tbaa !81
  %sub18 = sub i32 %54, 1
  %idxprom19 = zext i32 %sub18 to i64
  %55 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %segs20 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %55, i32 0, i32 1
  %56 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %segs20, align 8, !tbaa !90
  %arrayidx21 = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %56, i64 %idxprom19
  store %struct.opj_tcd_seg* %arrayidx21, %struct.opj_tcd_seg** %l_seg, align 8, !tbaa !1
  %57 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %l_seg, align 8, !tbaa !1
  %numpasses = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %57, i32 0, i32 2
  %58 = load i32, i32* %numpasses, align 4, !tbaa !91
  %59 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %l_seg, align 8, !tbaa !1
  %maxpasses = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %59, i32 0, i32 5
  %60 = load i32, i32* %maxpasses, align 4, !tbaa !93
  %cmp22 = icmp eq i32 %58, %60
  br i1 %cmp22, label %if.then.23, label %if.end.27

if.then.23:                                       ; preds = %if.else
  %61 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %l_seg, align 8, !tbaa !1
  %incdec.ptr24 = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %61, i32 1
  store %struct.opj_tcd_seg* %incdec.ptr24, %struct.opj_tcd_seg** %l_seg, align 8, !tbaa !1
  %62 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %numsegs25 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %62, i32 0, i32 11
  %63 = load i32, i32* %numsegs25, align 4, !tbaa !81
  %inc26 = add i32 %63, 1
  store i32 %inc26, i32* %numsegs25, align 4, !tbaa !81
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.23, %if.else
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.15
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.28
  %64 = load i32*, i32** %p_data_read.addr, align 8, !tbaa !1
  %65 = load i32, i32* %64, align 4, !tbaa !5
  %66 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %l_seg, align 8, !tbaa !1
  %newlen = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %66, i32 0, i32 7
  %67 = load i32, i32* %newlen, align 4, !tbaa !95
  %add = add i32 %65, %67
  %68 = load i32, i32* %p_max_length.addr, align 4, !tbaa !5
  %cmp29 = icmp ugt i32 %add, %68
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %do.body
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.31:                                        ; preds = %do.body
  %69 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %l_seg, align 8, !tbaa !1
  %newlen32 = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %69, i32 0, i32 7
  %70 = load i32, i32* %newlen32, align 4, !tbaa !95
  %71 = load i32*, i32** %p_data_read.addr, align 8, !tbaa !1
  %72 = load i32, i32* %71, align 4, !tbaa !5
  %add33 = add i32 %72, %70
  store i32 %add33, i32* %71, align 4, !tbaa !5
  %73 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %l_seg, align 8, !tbaa !1
  %numnewpasses34 = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %73, i32 0, i32 6
  %74 = load i32, i32* %numnewpasses34, align 4, !tbaa !94
  %75 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %l_seg, align 8, !tbaa !1
  %numpasses35 = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %75, i32 0, i32 2
  %76 = load i32, i32* %numpasses35, align 4, !tbaa !91
  %add36 = add i32 %76, %74
  store i32 %add36, i32* %numpasses35, align 4, !tbaa !91
  %77 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %l_seg, align 8, !tbaa !1
  %numnewpasses37 = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %77, i32 0, i32 6
  %78 = load i32, i32* %numnewpasses37, align 4, !tbaa !94
  %79 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %numnewpasses38 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %79, i32 0, i32 10
  %80 = load i32, i32* %numnewpasses38, align 4, !tbaa !84
  %sub39 = sub i32 %80, %78
  store i32 %sub39, i32* %numnewpasses38, align 4, !tbaa !84
  %81 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %numnewpasses40 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %81, i32 0, i32 10
  %82 = load i32, i32* %numnewpasses40, align 4, !tbaa !84
  %cmp41 = icmp ugt i32 %82, 0
  br i1 %cmp41, label %if.then.42, label %if.end.46

if.then.42:                                       ; preds = %if.end.31
  %83 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %l_seg, align 8, !tbaa !1
  %incdec.ptr43 = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %83, i32 1
  store %struct.opj_tcd_seg* %incdec.ptr43, %struct.opj_tcd_seg** %l_seg, align 8, !tbaa !1
  %84 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %numsegs44 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %84, i32 0, i32 11
  %85 = load i32, i32* %numsegs44, align 4, !tbaa !81
  %inc45 = add i32 %85, 1
  store i32 %inc45, i32* %numsegs44, align 4, !tbaa !81
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.42, %if.end.31
  br label %do.cond

do.cond:                                          ; preds = %if.end.46
  %86 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %numnewpasses47 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %86, i32 0, i32 10
  %87 = load i32, i32* %numnewpasses47, align 4, !tbaa !84
  %cmp48 = icmp ugt i32 %87, 0
  br i1 %cmp48, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %88 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  %incdec.ptr49 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %88, i32 1
  store %struct.opj_tcd_cblk_dec* %incdec.ptr49, %struct.opj_tcd_cblk_dec** %l_cblk, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.30, %if.then.11
  %89 = bitcast %struct.opj_tcd_seg** %l_seg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.52 [
    i32 0, label %cleanup.cont
    i32 7, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %90 = load i32, i32* %cblkno, align 4, !tbaa !5
  %inc50 = add i32 %90, 1
  store i32 %inc50, i32* %cblkno, align 4, !tbaa !5
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  %91 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !1
  %incdec.ptr51 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %91, i32 1
  store %struct.opj_tcd_band* %incdec.ptr51, %struct.opj_tcd_band** %l_band, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.52

cleanup.52:                                       ; preds = %for.end, %cleanup, %if.then
  %92 = bitcast %struct.opj_tcd_precinct** %l_prc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #1
  %cleanup.dest.53 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.53, label %cleanup.58 [
    i32 0, label %cleanup.cont.54
    i32 4, label %for.inc.55
  ]

cleanup.cont.54:                                  ; preds = %cleanup.52
  br label %for.inc.55

for.inc.55:                                       ; preds = %cleanup.cont.54, %cleanup.52
  %93 = load i32, i32* %bandno, align 4, !tbaa !5
  %inc56 = add i32 %93, 1
  store i32 %inc56, i32* %bandno, align 4, !tbaa !5
  br label %for.cond

for.end.57:                                       ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.58

cleanup.58:                                       ; preds = %for.end.57, %cleanup.52
  %94 = bitcast %struct.opj_tcd_resolution** %l_res to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  %95 = bitcast %struct.opj_tcd_cblk_dec** %l_cblk to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #1
  %96 = bitcast %struct.opj_tcd_band** %l_band to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #1
  %97 = bitcast i32* %l_nb_code_blocks to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #1
  %98 = bitcast i32* %cblkno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #1
  %99 = bitcast i32* %bandno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #1
  %100 = load i32, i32* %retval
  ret i32 %100
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!3, !3, i64 0}
!8 = !{!9, !2, i64 0}
!9 = !{!"opj_t2", !2, i64 0, !2, i64 8}
!10 = !{!9, !2, i64 8}
!11 = !{!12, !2, i64 96}
!12 = !{!"opj_cp", !3, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !2, i64 24, !6, i64 32, !6, i64 36, !2, i64 40, !6, i64 48, !6, i64 52, !2, i64 56, !2, i64 64, !2, i64 72, !6, i64 80, !6, i64 84, !6, i64 88, !2, i64 96, !3, i64 104, !6, i64 136, !6, i64 136}
!13 = !{!14, !3, i64 0}
!14 = !{!"opj_encoding_param", !3, i64 0, !6, i64 4, !6, i64 8, !2, i64 16, !3, i64 24, !6, i64 25, !6, i64 25, !6, i64 25, !6, i64 25}
!15 = !{!14, !6, i64 4}
!16 = !{!17, !6, i64 16}
!17 = !{!"opj_image", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !3, i64 20, !2, i64 24, !2, i64 32, !6, i64 40}
!18 = !{!19, !6, i64 420}
!19 = !{!"opj_tcp", !6, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !3, i64 20, !6, i64 420, !3, i64 424, !2, i64 5160, !2, i64 5168, !6, i64 5176, !6, i64 5180, !3, i64 5184, !2, i64 5584, !6, i64 5592, !2, i64 5600, !6, i64 5608, !2, i64 5616, !2, i64 5624, !2, i64 5632, !2, i64 5640, !6, i64 5648, !6, i64 5652, !2, i64 5656, !6, i64 5664, !6, i64 5668, !6, i64 5672, !6, i64 5672}
!20 = !{!21, !6, i64 44}
!21 = !{!"opj_pi_iterator", !3, i64 0, !2, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !22, i64 52, !6, i64 200, !2, i64 208, !6, i64 216, !6, i64 220, !6, i64 224, !6, i64 228, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244}
!22 = !{!"opj_poc", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !3, i64 32, !3, i64 36, !3, i64 40, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !6, i64 132, !6, i64 136, !6, i64 140, !6, i64 144}
!23 = !{!24, !6, i64 12}
!24 = !{!"opj_codestream_info", !25, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !3, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !2, i64 64, !6, i64 72, !2, i64 80, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !2, i64 104}
!25 = !{!"double", !3, i64 0}
!26 = !{!24, !2, i64 104}
!27 = !{!24, !6, i64 8}
!28 = !{!29, !2, i64 552}
!29 = !{!"opj_tile_info", !2, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !3, i64 24, !3, i64 156, !3, i64 288, !3, i64 420, !2, i64 552, !6, i64 560, !25, i64 568, !6, i64 576, !2, i64 584, !6, i64 592, !6, i64 596, !2, i64 600}
!30 = !{!29, !6, i64 16}
!31 = !{!32, !33, i64 0}
!32 = !{!"opj_packet_info", !33, i64 0, !33, i64 8, !33, i64 16, !25, i64 24}
!33 = !{!"long", !3, i64 0}
!34 = !{!32, !33, i64 16}
!35 = !{!32, !33, i64 8}
!36 = !{!37, !6, i64 848}
!37 = !{!"opj_tcd_tile", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !2, i64 24, !6, i64 32, !25, i64 40, !3, i64 48, !6, i64 848}
!38 = !{!21, !6, i64 32}
!39 = !{!21, !6, i64 36}
!40 = !{!21, !6, i64 40}
!41 = !{!37, !2, i64 24}
!42 = !{!43, !2, i64 24}
!43 = !{!"opj_tcd_tilecomp", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !2, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !6, i64 52}
!44 = !{!19, !6, i64 0}
!45 = !{!46, !6, i64 24}
!46 = !{!"opj_tcd_resolution", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !3, i64 32}
!47 = !{!48, !2, i64 24}
!48 = !{!"opj_tcd_band", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !2, i64 24, !6, i64 32, !6, i64 36, !49, i64 40}
!49 = !{!"float", !3, i64 0}
!50 = !{!51, !2, i64 40}
!51 = !{!"opj_tcd_precinct", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !3, i64 24, !6, i64 32, !2, i64 40, !2, i64 48}
!52 = !{!51, !2, i64 48}
!53 = !{!51, !6, i64 16}
!54 = !{!51, !6, i64 20}
!55 = !{!56, !6, i64 48}
!56 = !{!"opj_tcd_cblk_enc", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56}
!57 = !{!48, !6, i64 36}
!58 = !{!56, !6, i64 40}
!59 = !{!56, !2, i64 8}
!60 = !{!61, !6, i64 0}
!61 = !{!"opj_tcd_layer", !6, i64 0, !6, i64 4, !25, i64 8, !2, i64 16}
!62 = !{!56, !6, i64 44}
!63 = !{!56, !2, i64 16}
!64 = !{!65, !6, i64 16}
!65 = !{!"opj_tcd_pass", !6, i64 0, !25, i64 8, !6, i64 16, !6, i64 20}
!66 = !{!61, !6, i64 4}
!67 = !{!61, !2, i64 16}
!68 = !{!61, !25, i64 8}
!69 = !{!32, !25, i64 24}
!70 = !{!24, !25, i64 0}
!71 = !{!19, !6, i64 12}
!72 = !{!43, !6, i64 20}
!73 = !{!17, !2, i64 24}
!74 = !{!75, !6, i64 36}
!75 = !{!"opj_image_comp", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !2, i64 48, !76, i64 56}
!76 = !{!"short", !3, i64 0}
!77 = !{!48, !6, i64 8}
!78 = !{!48, !6, i64 0}
!79 = !{!48, !6, i64 12}
!80 = !{!48, !6, i64 4}
!81 = !{!82, !6, i64 52}
!82 = !{!"opj_tcd_cblk_dec", !2, i64 0, !2, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60}
!83 = !{!82, !6, i64 56}
!84 = !{!82, !6, i64 48}
!85 = !{!82, !6, i64 32}
!86 = !{!82, !6, i64 36}
!87 = !{!19, !2, i64 5584}
!88 = !{!89, !6, i64 16}
!89 = !{!"opj_tccp", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !3, i64 28, !6, i64 804, !6, i64 808, !3, i64 812, !3, i64 944, !6, i64 1076}
!90 = !{!82, !2, i64 8}
!91 = !{!92, !6, i64 12}
!92 = !{!"opj_tcd_seg", !2, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!93 = !{!92, !6, i64 24}
!94 = !{!92, !6, i64 28}
!95 = !{!92, !6, i64 32}
!96 = !{!82, !6, i64 44}
!97 = !{!82, !6, i64 40}
!98 = !{!82, !2, i64 0}
!99 = !{!92, !2, i64 0}
!100 = !{!92, !6, i64 8}
!101 = !{!92, !6, i64 16}
!102 = !{!92, !6, i64 20}
!103 = !{!82, !6, i64 60}
