; ModuleID = './openjpeg.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.opj_codec_private = type { %union.anon, i8*, %struct.opj_event_mgr, i32, void (i8*, i32, %struct._IO_FILE*)*, %struct.opj_codestream_info_v2* (i8*)*, %struct.opj_codestream_index* (i8*)* }
%union.anon = type { %struct.opj_decompression }
%struct.opj_decompression = type { i32 (%struct.opj_stream_private*, i8*, %struct.opj_image**, %struct.opj_event_mgr*)*, i32 (i8*, %struct.opj_stream_private*, %struct.opj_image*, %struct.opj_event_mgr*)*, i32 (i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.opj_stream_private*, %struct.opj_event_mgr*)*, i32 (i8*, i32, i8*, i32, %struct.opj_stream_private*, %struct.opj_event_mgr*)*, i32 (i8*, %struct.opj_stream_private*, %struct.opj_event_mgr*)*, void (i8*)*, void (i8*, %struct.opj_dparameters*)*, i32 (i8*, %struct.opj_image*, i32, i32, i32, i32, %struct.opj_event_mgr*)*, i32 (i8*, %struct.opj_stream_private*, %struct.opj_image*, %struct.opj_event_mgr*, i32)*, i32 (i8*, i32, %struct.opj_event_mgr*)* }
%struct.opj_stream_private = type { i8*, i64, i64 (i8*, i64, i8*)*, i64 (i8*, i64, i8*)*, i64 (i64, i8*)*, i32 (i64, i8*)*, i8*, i8*, i64 (%struct.opj_stream_private*, i64, %struct.opj_event_mgr*)*, i32 (%struct.opj_stream_private*, i64, %struct.opj_event_mgr*)*, i64, i64, i64, i32 }
%struct.opj_image = type { i32, i32, i32, i32, i32, i32, %struct.opj_image_comp*, i8*, i32 }
%struct.opj_image_comp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i16 }
%struct.opj_dparameters = type { i32, i32, [4096 x i8], [4096 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.opj_event_mgr = type { i8*, i8*, i8*, void (i8*, i8*)*, void (i8*, i8*)*, void (i8*, i8*)* }
%struct.opj_codestream_info_v2 = type { i32, i32, i32, i32, i32, i32, i32, %struct.opj_tile_v2_info, %struct.opj_tile_v2_info* }
%struct.opj_tile_v2_info = type { i32, i32, i32, i32, i32, %struct.opj_tccp_info* }
%struct.opj_tccp_info = type { i32, i32, i32, i32, i32, i32, i32, i32, [97 x i32], [97 x i32], i32, i32, [33 x i32], [33 x i32] }
%struct.opj_codestream_index = type { i64, i64, i64, i32, %struct.opj_marker_info*, i32, i32, %struct.opj_tile_index* }
%struct.opj_marker_info = type { i16, i64, i32 }
%struct.opj_tile_index = type { i32, i32, i32, i32, %struct.opj_tp_index*, i32, %struct.opj_marker_info*, i32, i32, %struct.opj_packet_info* }
%struct.opj_tp_index = type { i64, i64, i64 }
%struct.opj_packet_info = type { i64, i64, i64, double }
%struct.opj_j2k = type { i32, %union.anon.0, %struct.opj_image*, %struct.opj_image*, %struct.opj_cp, %struct.opj_procedure_list*, %struct.opj_procedure_list*, %struct.opj_codestream_index*, i32, %struct.opj_tcd* }
%union.anon.0 = type { %struct.opj_j2k_dec }
%struct.opj_j2k_dec = type { i32, %struct.opj_tcp*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i8 }
%struct.opj_tcp = type { i32, i32, i32, i32, i32, [100 x float], i32, [32 x %struct.opj_poc], i8*, i8*, i32, i32, [100 x float], %struct.opj_tccp*, i32, i8*, i32, double*, float*, float*, %struct.opj_mct_data*, i32, i32, %struct.opj_simple_mcc_decorrelation_data*, i32, i32, i8 }
%struct.opj_poc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.opj_tccp = type { i32, i32, i32, i32, i32, i32, i32, [97 x %struct.opj_stepsize], i32, i32, [33 x i32], [33 x i32], i32 }
%struct.opj_stepsize = type { i32, i32 }
%struct.opj_mct_data = type { i32, i32, i32, i8*, i32 }
%struct.opj_simple_mcc_decorrelation_data = type { i32, i32, %struct.opj_mct_data*, %struct.opj_mct_data*, i8 }
%struct.opj_cp = type { i32, i32, i32, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i8*, i8*, i32, i32, i32, %struct.opj_tcp*, %union.anon.1, i8 }
%union.anon.1 = type { %struct.opj_encoding_param }
%struct.opj_encoding_param = type { i32, i32, i32, i32*, i8, i8 }
%struct.opj_procedure_list = type { i32, i32, void ()** }
%struct.opj_tcd = type { i32, i32, i32, i32, i32, %struct.opj_tcd_image*, %struct.opj_image*, %struct.opj_cp*, %struct.opj_tcp*, i32, i8 }
%struct.opj_tcd_image = type { %struct.opj_tcd_tile* }
%struct.opj_tcd_tile = type { i32, i32, i32, i32, i32, %struct.opj_tcd_tilecomp*, i32, double, [100 x double], i32 }
%struct.opj_tcd_tilecomp = type { i32, i32, i32, i32, i32, i32, %struct.opj_tcd_resolution*, i32, i32*, i32, i32 }
%struct.opj_tcd_resolution = type { i32, i32, i32, i32, i32, i32, i32, [3 x %struct.opj_tcd_band] }
%struct.opj_tcd_band = type { i32, i32, i32, i32, i32, %struct.opj_tcd_precinct*, i32, i32, float }
%struct.opj_tcd_precinct = type { i32, i32, i32, i32, i32, i32, %union.anon.2, i32, %struct.opj_tgt_tree*, %struct.opj_tgt_tree* }
%union.anon.2 = type { %struct.opj_tcd_cblk_enc* }
%struct.opj_tcd_cblk_enc = type { i8*, %struct.opj_tcd_layer*, %struct.opj_tcd_pass*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.opj_tcd_layer = type { i32, i32, double, i8* }
%struct.opj_tcd_pass = type { i32, double, i32, i8 }
%struct.opj_tgt_tree = type { i32, i32, i32, %struct.opj_tgt_node*, i32 }
%struct.opj_tgt_node = type { %struct.opj_tgt_node*, i32, i32, i32 }
%struct.opj_jp2 = type { %struct.opj_j2k*, %struct.opj_procedure_list*, %struct.opj_procedure_list*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, %struct.opj_jp2_comps*, i64, i64, i32, i32, i32, %struct.opj_jp2_color, i32 }
%struct.opj_jp2_comps = type { i32, i32, i32 }
%struct.opj_jp2_color = type { i8*, i32, %struct.opj_jp2_cdef*, %struct.opj_jp2_pclr*, i8 }
%struct.opj_jp2_cdef = type { %struct.opj_jp2_cdef_info*, i16 }
%struct.opj_jp2_cdef_info = type { i16, i16, i16 }
%struct.opj_jp2_pclr = type { i32*, i8*, i8*, %struct.opj_jp2_cmap_comp*, i16, i8 }
%struct.opj_jp2_cmap_comp = type { i16, i8, i8 }
%struct.opj_compression = type { i32 (i8*, %struct.opj_stream_private*, %struct.opj_image*, %struct.opj_event_mgr*)*, i32 (i8*, %struct.opj_stream_private*, %struct.opj_event_mgr*)*, i32 (i8*, i32, i8*, i32, %struct.opj_stream_private*, %struct.opj_event_mgr*)*, i32 (i8*, %struct.opj_stream_private*, %struct.opj_event_mgr*)*, void (i8*)*, void (i8*, %struct.opj_cparameters*, %struct.opj_image*, %struct.opj_event_mgr*)* }
%struct.opj_cparameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i8*, i32, i32, [32 x %struct.opj_poc], i32, i32, [100 x float], [100 x float], i32, i32, i32, i32, i32, i32, i32, i32, [33 x i32], [33 x i32], [4096 x i8], [4096 x i8], i32, [4096 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], i32, i32, i32, i32, [16 x i32], [16 x i32], i32, i32, i32, i8, i8, i8, i32, i8* }

@.str = private unnamed_addr constant [6 x i8] c"2.0.0\00", align 1
@.str.1 = private unnamed_addr constant [81 x i8] c"Codec provided to the opj_setup_decoder function is not a decompressor handler.\0A\00", align 1
@.str.2 = private unnamed_addr constant [79 x i8] c"Codec provided to the opj_read_header function is not a decompressor handler.\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [71 x i8] c"[ERROR] Input parameters of the setup_decoder function are incorrect.\0A\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"[ERROR] Input parameter of the dump_codec function are incorrect.\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"wb\00", align 1

; Function Attrs: nounwind uwtable
define i32 @opj_set_info_handler(i8** %p_codec, void (i8*, i8*)* %p_callback, i8* %p_user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %p_codec.addr = alloca i8**, align 8
  %p_callback.addr = alloca void (i8*, i8*)*, align 8
  %p_user_data.addr = alloca i8*, align 8
  %l_codec = alloca %struct.opj_codec_private*, align 8
  %cleanup.dest.slot = alloca i32
  store i8** %p_codec, i8*** %p_codec.addr, align 8, !tbaa !1
  store void (i8*, i8*)* %p_callback, void (i8*, i8*)** %p_callback.addr, align 8, !tbaa !1
  store i8* %p_user_data, i8** %p_user_data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.opj_codec_private** %l_codec to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8**, i8*** %p_codec.addr, align 8, !tbaa !1
  %2 = bitcast i8** %1 to %struct.opj_codec_private*
  store %struct.opj_codec_private* %2, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %3 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %tobool = icmp ne %struct.opj_codec_private* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load void (i8*, i8*)*, void (i8*, i8*)** %p_callback.addr, align 8, !tbaa !1
  %5 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_event_mgr = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %5, i32 0, i32 2
  %info_handler = getelementptr inbounds %struct.opj_event_mgr, %struct.opj_event_mgr* %m_event_mgr, i32 0, i32 5
  store void (i8*, i8*)* %4, void (i8*, i8*)** %info_handler, align 8, !tbaa !5
  %6 = load i8*, i8** %p_user_data.addr, align 8, !tbaa !1
  %7 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_event_mgr1 = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %7, i32 0, i32 2
  %m_info_data = getelementptr inbounds %struct.opj_event_mgr, %struct.opj_event_mgr* %m_event_mgr1, i32 0, i32 2
  store i8* %6, i8** %m_info_data, align 8, !tbaa !9
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %8 = bitcast %struct.opj_codec_private** %l_codec to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @opj_set_warning_handler(i8** %p_codec, void (i8*, i8*)* %p_callback, i8* %p_user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %p_codec.addr = alloca i8**, align 8
  %p_callback.addr = alloca void (i8*, i8*)*, align 8
  %p_user_data.addr = alloca i8*, align 8
  %l_codec = alloca %struct.opj_codec_private*, align 8
  %cleanup.dest.slot = alloca i32
  store i8** %p_codec, i8*** %p_codec.addr, align 8, !tbaa !1
  store void (i8*, i8*)* %p_callback, void (i8*, i8*)** %p_callback.addr, align 8, !tbaa !1
  store i8* %p_user_data, i8** %p_user_data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.opj_codec_private** %l_codec to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8**, i8*** %p_codec.addr, align 8, !tbaa !1
  %2 = bitcast i8** %1 to %struct.opj_codec_private*
  store %struct.opj_codec_private* %2, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %3 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %tobool = icmp ne %struct.opj_codec_private* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load void (i8*, i8*)*, void (i8*, i8*)** %p_callback.addr, align 8, !tbaa !1
  %5 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_event_mgr = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %5, i32 0, i32 2
  %warning_handler = getelementptr inbounds %struct.opj_event_mgr, %struct.opj_event_mgr* %m_event_mgr, i32 0, i32 4
  store void (i8*, i8*)* %4, void (i8*, i8*)** %warning_handler, align 8, !tbaa !10
  %6 = load i8*, i8** %p_user_data.addr, align 8, !tbaa !1
  %7 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_event_mgr1 = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %7, i32 0, i32 2
  %m_warning_data = getelementptr inbounds %struct.opj_event_mgr, %struct.opj_event_mgr* %m_event_mgr1, i32 0, i32 1
  store i8* %6, i8** %m_warning_data, align 8, !tbaa !11
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %8 = bitcast %struct.opj_codec_private** %l_codec to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @opj_set_error_handler(i8** %p_codec, void (i8*, i8*)* %p_callback, i8* %p_user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %p_codec.addr = alloca i8**, align 8
  %p_callback.addr = alloca void (i8*, i8*)*, align 8
  %p_user_data.addr = alloca i8*, align 8
  %l_codec = alloca %struct.opj_codec_private*, align 8
  %cleanup.dest.slot = alloca i32
  store i8** %p_codec, i8*** %p_codec.addr, align 8, !tbaa !1
  store void (i8*, i8*)* %p_callback, void (i8*, i8*)** %p_callback.addr, align 8, !tbaa !1
  store i8* %p_user_data, i8** %p_user_data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.opj_codec_private** %l_codec to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8**, i8*** %p_codec.addr, align 8, !tbaa !1
  %2 = bitcast i8** %1 to %struct.opj_codec_private*
  store %struct.opj_codec_private* %2, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %3 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %tobool = icmp ne %struct.opj_codec_private* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load void (i8*, i8*)*, void (i8*, i8*)** %p_callback.addr, align 8, !tbaa !1
  %5 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_event_mgr = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %5, i32 0, i32 2
  %error_handler = getelementptr inbounds %struct.opj_event_mgr, %struct.opj_event_mgr* %m_event_mgr, i32 0, i32 3
  store void (i8*, i8*)* %4, void (i8*, i8*)** %error_handler, align 8, !tbaa !12
  %6 = load i8*, i8** %p_user_data.addr, align 8, !tbaa !1
  %7 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_event_mgr1 = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %7, i32 0, i32 2
  %m_error_data = getelementptr inbounds %struct.opj_event_mgr, %struct.opj_event_mgr* %m_event_mgr1, i32 0, i32 0
  store i8* %6, i8** %m_error_data, align 8, !tbaa !13
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %8 = bitcast %struct.opj_codec_private** %l_codec to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i8* @opj_version() #0 {
entry:
  ret i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define i8** @opj_create_decompress(i32 %p_format) #0 {
entry:
  %retval = alloca i8**, align 8
  %p_format.addr = alloca i32, align 4
  %l_codec = alloca %struct.opj_codec_private*, align 8
  %cleanup.dest.slot = alloca i32
  store i32 %p_format, i32* %p_format.addr, align 4, !tbaa !14
  %0 = bitcast %struct.opj_codec_private** %l_codec to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store %struct.opj_codec_private* null, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %call = call noalias i8* @calloc(i64 1, i64 168) #4
  %1 = bitcast i8* %call to %struct.opj_codec_private*
  store %struct.opj_codec_private* %1, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %2 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %tobool = icmp ne %struct.opj_codec_private* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8** null, i8*** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %4 = bitcast %struct.opj_codec_private* %3 to i8*
  %call1 = call i8* @memset(i8* %4, i32 0, i64 168) #4
  %5 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %is_decompressor = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %5, i32 0, i32 3
  store i32 1, i32* %is_decompressor, align 4, !tbaa !15
  %6 = load i32, i32* %p_format.addr, align 4, !tbaa !14
  switch i32 %6, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb.25
    i32 -1, label %sw.bb.65
    i32 1, label %sw.bb.65
  ]

sw.bb:                                            ; preds = %if.end
  %7 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %opj_dump_codec = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %7, i32 0, i32 4
  store void (i8*, i32, %struct._IO_FILE*)* bitcast (void (%struct.opj_j2k*, i32, %struct._IO_FILE*)* @j2k_dump to void (i8*, i32, %struct._IO_FILE*)*), void (i8*, i32, %struct._IO_FILE*)** %opj_dump_codec, align 8, !tbaa !16
  %8 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %opj_get_codec_info = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %8, i32 0, i32 5
  store %struct.opj_codestream_info_v2* (i8*)* bitcast (%struct.opj_codestream_info_v2* (%struct.opj_j2k*)* @j2k_get_cstr_info to %struct.opj_codestream_info_v2* (i8*)*), %struct.opj_codestream_info_v2* (i8*)** %opj_get_codec_info, align 8, !tbaa !17
  %9 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %opj_get_codec_index = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %9, i32 0, i32 6
  store %struct.opj_codestream_index* (i8*)* bitcast (%struct.opj_codestream_index* (%struct.opj_j2k*)* @j2k_get_cstr_index to %struct.opj_codestream_index* (i8*)*), %struct.opj_codestream_index* (i8*)** %opj_get_codec_index, align 8, !tbaa !18
  %10 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec_data = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %10, i32 0, i32 0
  %m_decompression = bitcast %union.anon* %m_codec_data to %struct.opj_decompression*
  %opj_decode = getelementptr inbounds %struct.opj_decompression, %struct.opj_decompression* %m_decompression, i32 0, i32 1
  store i32 (i8*, %struct.opj_stream_private*, %struct.opj_image*, %struct.opj_event_mgr*)* bitcast (i32 (%struct.opj_j2k*, %struct.opj_stream_private*, %struct.opj_image*, %struct.opj_event_mgr*)* @opj_j2k_decode to i32 (i8*, %struct.opj_stream_private*, %struct.opj_image*, %struct.opj_event_mgr*)*), i32 (i8*, %struct.opj_stream_private*, %struct.opj_image*, %struct.opj_event_mgr*)** %opj_decode, align 8, !tbaa !19
  %11 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec_data2 = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %11, i32 0, i32 0
  %m_decompression3 = bitcast %union.anon* %m_codec_data2 to %struct.opj_decompression*
  %opj_end_decompress = getelementptr inbounds %struct.opj_decompression, %struct.opj_decompression* %m_decompression3, i32 0, i32 4
  store i32 (i8*, %struct.opj_stream_private*, %struct.opj_event_mgr*)* bitcast (i32 (%struct.opj_j2k*, %struct.opj_stream_private*, %struct.opj_event_mgr*)* @opj_j2k_end_decompress to i32 (i8*, %struct.opj_stream_private*, %struct.opj_event_mgr*)*), i32 (i8*, %struct.opj_stream_private*, %struct.opj_event_mgr*)** %opj_end_decompress, align 8, !tbaa !21
  %12 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec_data4 = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %12, i32 0, i32 0
  %m_decompression5 = bitcast %union.anon* %m_codec_data4 to %struct.opj_decompression*
  %opj_read_header = getelementptr inbounds %struct.opj_decompression, %struct.opj_decompression* %m_decompression5, i32 0, i32 0
  store i32 (%struct.opj_stream_private*, i8*, %struct.opj_image**, %struct.opj_event_mgr*)* bitcast (i32 (%struct.opj_stream_private*, %struct.opj_j2k*, %struct.opj_image**, %struct.opj_event_mgr*)* @opj_j2k_read_header to i32 (%struct.opj_stream_private*, i8*, %struct.opj_image**, %struct.opj_event_mgr*)*), i32 (%struct.opj_stream_private*, i8*, %struct.opj_image**, %struct.opj_event_mgr*)** %opj_read_header, align 8, !tbaa !22
  %13 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec_data6 = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %13, i32 0, i32 0
  %m_decompression7 = bitcast %union.anon* %m_codec_data6 to %struct.opj_decompression*
  %opj_destroy = getelementptr inbounds %struct.opj_decompression, %struct.opj_decompression* %m_decompression7, i32 0, i32 5
  store void (i8*)* bitcast (void (%struct.opj_j2k*)* @opj_j2k_destroy to void (i8*)*), void (i8*)** %opj_destroy, align 8, !tbaa !23
  %14 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec_data8 = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %14, i32 0, i32 0
  %m_decompression9 = bitcast %union.anon* %m_codec_data8 to %struct.opj_decompression*
  %opj_setup_decoder = getelementptr inbounds %struct.opj_decompression, %struct.opj_decompression* %m_decompression9, i32 0, i32 6
  store void (i8*, %struct.opj_dparameters*)* bitcast (void (%struct.opj_j2k*, %struct.opj_dparameters*)* @opj_j2k_setup_decoder to void (i8*, %struct.opj_dparameters*)*), void (i8*, %struct.opj_dparameters*)** %opj_setup_decoder, align 8, !tbaa !24
  %15 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec_data10 = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %15, i32 0, i32 0
  %m_decompression11 = bitcast %union.anon* %m_codec_data10 to %struct.opj_decompression*
  %opj_read_tile_header = getelementptr inbounds %struct.opj_decompression, %struct.opj_decompression* %m_decompression11, i32 0, i32 2
  store i32 (i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.opj_stream_private*, %struct.opj_event_mgr*)* bitcast (i32 (%struct.opj_j2k*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.opj_stream_private*, %struct.opj_event_mgr*)* @opj_j2k_read_tile_header to i32 (i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.opj_stream_private*, %struct.opj_event_mgr*)*), i32 (i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.opj_stream_private*, %struct.opj_event_mgr*)** %opj_read_tile_header, align 8, !tbaa !25
  %16 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec_data12 = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %16, i32 0, i32 0
  %m_decompression13 = bitcast %union.anon* %m_codec_data12 to %struct.opj_decompression*
  %opj_decode_tile_data = getelementptr inbounds %struct.opj_decompression, %struct.opj_decompression* %m_decompression13, i32 0, i32 3
  store i32 (i8*, i32, i8*, i32, %struct.opj_stream_private*, %struct.opj_event_mgr*)* bitcast (i32 (%struct.opj_j2k*, i32, i8*, i32, %struct.opj_stream_private*, %struct.opj_event_mgr*)* @opj_j2k_decode_tile to i32 (i8*, i32, i8*, i32, %struct.opj_stream_private*, %struct.opj_event_mgr*)*), i32 (i8*, i32, i8*, i32, %struct.opj_stream_private*, %struct.opj_event_mgr*)** %opj_decode_tile_data, align 8, !tbaa !26
  %17 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec_data14 = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %17, i32 0, i32 0
  %m_decompression15 = bitcast %union.anon* %m_codec_data14 to %struct.opj_decompression*
  %opj_set_decode_area = getelementptr inbounds %struct.opj_decompression, %struct.opj_decompression* %m_decompression15, i32 0, i32 7
  store i32 (i8*, %struct.opj_image*, i32, i32, i32, i32, %struct.opj_event_mgr*)* bitcast (i32 (%struct.opj_j2k*, %struct.opj_image*, i32, i32, i32, i32, %struct.opj_event_mgr*)* @opj_j2k_set_decode_area to i32 (i8*, %struct.opj_image*, i32, i32, i32, i32, %struct.opj_event_mgr*)*), i32 (i8*, %struct.opj_image*, i32, i32, i32, i32, %struct.opj_event_mgr*)** %opj_set_decode_area, align 8, !tbaa !27
  %18 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec_data16 = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %18, i32 0, i32 0
  %m_decompression17 = bitcast %union.anon* %m_codec_data16 to %struct.opj_decompression*
  %opj_get_decoded_tile = getelementptr inbounds %struct.opj_decompression, %struct.opj_decompression* %m_decompression17, i32 0, i32 8
  store i32 (i8*, %struct.opj_stream_private*, %struct.opj_image*, %struct.opj_event_mgr*, i32)* bitcast (i32 (%struct.opj_j2k*, %struct.opj_stream_private*, %struct.opj_image*, %struct.opj_event_mgr*, i32)* @opj_j2k_get_tile to i32 (i8*, %struct.opj_stream_private*, %struct.opj_image*, %struct.opj_event_mgr*, i32)*), i32 (i8*, %struct.opj_stream_private*, %struct.opj_image*, %struct.opj_event_mgr*, i32)** %opj_get_decoded_tile, align 8, !tbaa !28
  %19 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec_data18 = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %19, i32 0, i32 0
  %m_decompression19 = bitcast %union.anon* %m_codec_data18 to %struct.opj_decompression*
  %opj_set_decoded_resolution_factor = getelementptr inbounds %struct.opj_decompression, %struct.opj_decompression* %m_decompression19, i32 0, i32 9
  store i32 (i8*, i32, %struct.opj_event_mgr*)* bitcast (i32 (%struct.opj_j2k*, i32, %struct.opj_event_mgr*)* @opj_j2k_set_decoded_resolution_factor to i32 (i8*, i32, %struct.opj_event_mgr*)*), i32 (i8*, i32, %struct.opj_event_mgr*)** %opj_set_decoded_resolution_factor, align 8, !tbaa !29
  %call20 = call %struct.opj_j2k* @opj_j2k_create_decompress() #5
  %20 = bitcast %struct.opj_j2k* %call20 to i8*
  %21 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %21, i32 0, i32 1
  store i8* %20, i8** %m_codec, align 8, !tbaa !30
  %22 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec21 = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %22, i32 0, i32 1
  %23 = load i8*, i8** %m_codec21, align 8, !tbaa !30
  %tobool22 = icmp ne i8* %23, null
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %sw.bb
  %24 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %25 = bitcast %struct.opj_codec_private* %24 to i8*
  call void @free(i8* %25) #4
  store i8** null, i8*** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %sw.bb
  br label %sw.epilog

sw.bb.25:                                         ; preds = %if.end
  %26 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %opj_dump_codec26 = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %26, i32 0, i32 4
  store void (i8*, i32, %struct._IO_FILE*)* bitcast (void (%struct.opj_jp2*, i32, %struct._IO_FILE*)* @jp2_dump to void (i8*, i32, %struct._IO_FILE*)*), void (i8*, i32, %struct._IO_FILE*)** %opj_dump_codec26, align 8, !tbaa !16
  %27 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %opj_get_codec_info27 = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %27, i32 0, i32 5
  store %struct.opj_codestream_info_v2* (i8*)* bitcast (%struct.opj_codestream_info_v2* (%struct.opj_jp2*)* @jp2_get_cstr_info to %struct.opj_codestream_info_v2* (i8*)*), %struct.opj_codestream_info_v2* (i8*)** %opj_get_codec_info27, align 8, !tbaa !17
  %28 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %opj_get_codec_index28 = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %28, i32 0, i32 6
  store %struct.opj_codestream_index* (i8*)* bitcast (%struct.opj_codestream_index* (%struct.opj_jp2*)* @jp2_get_cstr_index to %struct.opj_codestream_index* (i8*)*), %struct.opj_codestream_index* (i8*)** %opj_get_codec_index28, align 8, !tbaa !18
  %29 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec_data29 = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %29, i32 0, i32 0
  %m_decompression30 = bitcast %union.anon* %m_codec_data29 to %struct.opj_decompression*
  %opj_decode31 = getelementptr inbounds %struct.opj_decompression, %struct.opj_decompression* %m_decompression30, i32 0, i32 1
  store i32 (i8*, %struct.opj_stream_private*, %struct.opj_image*, %struct.opj_event_mgr*)* bitcast (i32 (%struct.opj_jp2*, %struct.opj_stream_private*, %struct.opj_image*, %struct.opj_event_mgr*)* @opj_jp2_decode to i32 (i8*, %struct.opj_stream_private*, %struct.opj_image*, %struct.opj_event_mgr*)*), i32 (i8*, %struct.opj_stream_private*, %struct.opj_image*, %struct.opj_event_mgr*)** %opj_decode31, align 8, !tbaa !19
  %30 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec_data32 = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %30, i32 0, i32 0
  %m_decompression33 = bitcast %union.anon* %m_codec_data32 to %struct.opj_decompression*
  %opj_end_decompress34 = getelementptr inbounds %struct.opj_decompression, %struct.opj_decompression* %m_decompression33, i32 0, i32 4
  store i32 (i8*, %struct.opj_stream_private*, %struct.opj_event_mgr*)* bitcast (i32 (%struct.opj_jp2*, %struct.opj_stream_private*, %struct.opj_event_mgr*)* @opj_jp2_end_decompress to i32 (i8*, %struct.opj_stream_private*, %struct.opj_event_mgr*)*), i32 (i8*, %struct.opj_stream_private*, %struct.opj_event_mgr*)** %opj_end_decompress34, align 8, !tbaa !21
  %31 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec_data35 = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %31, i32 0, i32 0
  %m_decompression36 = bitcast %union.anon* %m_codec_data35 to %struct.opj_decompression*
  %opj_read_header37 = getelementptr inbounds %struct.opj_decompression, %struct.opj_decompression* %m_decompression36, i32 0, i32 0
  store i32 (%struct.opj_stream_private*, i8*, %struct.opj_image**, %struct.opj_event_mgr*)* bitcast (i32 (%struct.opj_stream_private*, %struct.opj_jp2*, %struct.opj_image**, %struct.opj_event_mgr*)* @opj_jp2_read_header to i32 (%struct.opj_stream_private*, i8*, %struct.opj_image**, %struct.opj_event_mgr*)*), i32 (%struct.opj_stream_private*, i8*, %struct.opj_image**, %struct.opj_event_mgr*)** %opj_read_header37, align 8, !tbaa !22
  %32 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec_data38 = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %32, i32 0, i32 0
  %m_decompression39 = bitcast %union.anon* %m_codec_data38 to %struct.opj_decompression*
  %opj_read_tile_header40 = getelementptr inbounds %struct.opj_decompression, %struct.opj_decompression* %m_decompression39, i32 0, i32 2
  store i32 (i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.opj_stream_private*, %struct.opj_event_mgr*)* bitcast (i32 (%struct.opj_jp2*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.opj_stream_private*, %struct.opj_event_mgr*)* @opj_jp2_read_tile_header to i32 (i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.opj_stream_private*, %struct.opj_event_mgr*)*), i32 (i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.opj_stream_private*, %struct.opj_event_mgr*)** %opj_read_tile_header40, align 8, !tbaa !25
  %33 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec_data41 = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %33, i32 0, i32 0
  %m_decompression42 = bitcast %union.anon* %m_codec_data41 to %struct.opj_decompression*
  %opj_decode_tile_data43 = getelementptr inbounds %struct.opj_decompression, %struct.opj_decompression* %m_decompression42, i32 0, i32 3
  store i32 (i8*, i32, i8*, i32, %struct.opj_stream_private*, %struct.opj_event_mgr*)* bitcast (i32 (%struct.opj_jp2*, i32, i8*, i32, %struct.opj_stream_private*, %struct.opj_event_mgr*)* @opj_jp2_decode_tile to i32 (i8*, i32, i8*, i32, %struct.opj_stream_private*, %struct.opj_event_mgr*)*), i32 (i8*, i32, i8*, i32, %struct.opj_stream_private*, %struct.opj_event_mgr*)** %opj_decode_tile_data43, align 8, !tbaa !26
  %34 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec_data44 = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %34, i32 0, i32 0
  %m_decompression45 = bitcast %union.anon* %m_codec_data44 to %struct.opj_decompression*
  %opj_destroy46 = getelementptr inbounds %struct.opj_decompression, %struct.opj_decompression* %m_decompression45, i32 0, i32 5
  store void (i8*)* bitcast (void (%struct.opj_jp2*)* @opj_jp2_destroy to void (i8*)*), void (i8*)** %opj_destroy46, align 8, !tbaa !23
  %35 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec_data47 = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %35, i32 0, i32 0
  %m_decompression48 = bitcast %union.anon* %m_codec_data47 to %struct.opj_decompression*
  %opj_setup_decoder49 = getelementptr inbounds %struct.opj_decompression, %struct.opj_decompression* %m_decompression48, i32 0, i32 6
  store void (i8*, %struct.opj_dparameters*)* bitcast (void (%struct.opj_jp2*, %struct.opj_dparameters*)* @opj_jp2_setup_decoder to void (i8*, %struct.opj_dparameters*)*), void (i8*, %struct.opj_dparameters*)** %opj_setup_decoder49, align 8, !tbaa !24
  %36 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec_data50 = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %36, i32 0, i32 0
  %m_decompression51 = bitcast %union.anon* %m_codec_data50 to %struct.opj_decompression*
  %opj_set_decode_area52 = getelementptr inbounds %struct.opj_decompression, %struct.opj_decompression* %m_decompression51, i32 0, i32 7
  store i32 (i8*, %struct.opj_image*, i32, i32, i32, i32, %struct.opj_event_mgr*)* bitcast (i32 (%struct.opj_jp2*, %struct.opj_image*, i32, i32, i32, i32, %struct.opj_event_mgr*)* @opj_jp2_set_decode_area to i32 (i8*, %struct.opj_image*, i32, i32, i32, i32, %struct.opj_event_mgr*)*), i32 (i8*, %struct.opj_image*, i32, i32, i32, i32, %struct.opj_event_mgr*)** %opj_set_decode_area52, align 8, !tbaa !27
  %37 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec_data53 = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %37, i32 0, i32 0
  %m_decompression54 = bitcast %union.anon* %m_codec_data53 to %struct.opj_decompression*
  %opj_get_decoded_tile55 = getelementptr inbounds %struct.opj_decompression, %struct.opj_decompression* %m_decompression54, i32 0, i32 8
  store i32 (i8*, %struct.opj_stream_private*, %struct.opj_image*, %struct.opj_event_mgr*, i32)* bitcast (i32 (%struct.opj_jp2*, %struct.opj_stream_private*, %struct.opj_image*, %struct.opj_event_mgr*, i32)* @opj_jp2_get_tile to i32 (i8*, %struct.opj_stream_private*, %struct.opj_image*, %struct.opj_event_mgr*, i32)*), i32 (i8*, %struct.opj_stream_private*, %struct.opj_image*, %struct.opj_event_mgr*, i32)** %opj_get_decoded_tile55, align 8, !tbaa !28
  %38 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec_data56 = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %38, i32 0, i32 0
  %m_decompression57 = bitcast %union.anon* %m_codec_data56 to %struct.opj_decompression*
  %opj_set_decoded_resolution_factor58 = getelementptr inbounds %struct.opj_decompression, %struct.opj_decompression* %m_decompression57, i32 0, i32 9
  store i32 (i8*, i32, %struct.opj_event_mgr*)* bitcast (i32 (%struct.opj_jp2*, i32, %struct.opj_event_mgr*)* @opj_jp2_set_decoded_resolution_factor to i32 (i8*, i32, %struct.opj_event_mgr*)*), i32 (i8*, i32, %struct.opj_event_mgr*)** %opj_set_decoded_resolution_factor58, align 8, !tbaa !29
  %call59 = call %struct.opj_jp2* @opj_jp2_create(i32 1) #5
  %39 = bitcast %struct.opj_jp2* %call59 to i8*
  %40 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec60 = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %40, i32 0, i32 1
  store i8* %39, i8** %m_codec60, align 8, !tbaa !30
  %41 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec61 = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %41, i32 0, i32 1
  %42 = load i8*, i8** %m_codec61, align 8, !tbaa !30
  %tobool62 = icmp ne i8* %42, null
  br i1 %tobool62, label %if.end.64, label %if.then.63

if.then.63:                                       ; preds = %sw.bb.25
  %43 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %44 = bitcast %struct.opj_codec_private* %43 to i8*
  call void @free(i8* %44) #4
  store i8** null, i8*** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.64:                                        ; preds = %sw.bb.25
  br label %sw.epilog

sw.bb.65:                                         ; preds = %if.end, %if.end
  br label %sw.default

sw.default:                                       ; preds = %if.end, %sw.bb.65
  %45 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %46 = bitcast %struct.opj_codec_private* %45 to i8*
  call void @free(i8* %46) #4
  store i8** null, i8*** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.64, %if.end.24
  %47 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_event_mgr = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %47, i32 0, i32 2
  call void @opj_set_default_event_handler(%struct.opj_event_mgr* %m_event_mgr) #5
  %48 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %49 = bitcast %struct.opj_codec_private* %48 to i8**
  store i8** %49, i8*** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then.63, %if.then.23, %if.then
  %50 = bitcast %struct.opj_codec_private** %l_codec to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = load i8**, i8*** %retval
  ret i8** %51
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #2

declare void @j2k_dump(%struct.opj_j2k*, i32, %struct._IO_FILE*) #3

declare %struct.opj_codestream_info_v2* @j2k_get_cstr_info(%struct.opj_j2k*) #3

declare %struct.opj_codestream_index* @j2k_get_cstr_index(%struct.opj_j2k*) #3

declare i32 @opj_j2k_decode(%struct.opj_j2k*, %struct.opj_stream_private*, %struct.opj_image*, %struct.opj_event_mgr*) #3

declare i32 @opj_j2k_end_decompress(%struct.opj_j2k*, %struct.opj_stream_private*, %struct.opj_event_mgr*) #3

declare i32 @opj_j2k_read_header(%struct.opj_stream_private*, %struct.opj_j2k*, %struct.opj_image**, %struct.opj_event_mgr*) #3

declare void @opj_j2k_destroy(%struct.opj_j2k*) #3

declare void @opj_j2k_setup_decoder(%struct.opj_j2k*, %struct.opj_dparameters*) #3

declare i32 @opj_j2k_read_tile_header(%struct.opj_j2k*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.opj_stream_private*, %struct.opj_event_mgr*) #3

declare i32 @opj_j2k_decode_tile(%struct.opj_j2k*, i32, i8*, i32, %struct.opj_stream_private*, %struct.opj_event_mgr*) #3

declare i32 @opj_j2k_set_decode_area(%struct.opj_j2k*, %struct.opj_image*, i32, i32, i32, i32, %struct.opj_event_mgr*) #3

declare i32 @opj_j2k_get_tile(%struct.opj_j2k*, %struct.opj_stream_private*, %struct.opj_image*, %struct.opj_event_mgr*, i32) #3

declare i32 @opj_j2k_set_decoded_resolution_factor(%struct.opj_j2k*, i32, %struct.opj_event_mgr*) #3

declare %struct.opj_j2k* @opj_j2k_create_decompress() #3

; Function Attrs: nounwind
declare void @free(i8*) #2

declare void @jp2_dump(%struct.opj_jp2*, i32, %struct._IO_FILE*) #3

declare %struct.opj_codestream_info_v2* @jp2_get_cstr_info(%struct.opj_jp2*) #3

declare %struct.opj_codestream_index* @jp2_get_cstr_index(%struct.opj_jp2*) #3

declare i32 @opj_jp2_decode(%struct.opj_jp2*, %struct.opj_stream_private*, %struct.opj_image*, %struct.opj_event_mgr*) #3

declare i32 @opj_jp2_end_decompress(%struct.opj_jp2*, %struct.opj_stream_private*, %struct.opj_event_mgr*) #3

declare i32 @opj_jp2_read_header(%struct.opj_stream_private*, %struct.opj_jp2*, %struct.opj_image**, %struct.opj_event_mgr*) #3

declare i32 @opj_jp2_read_tile_header(%struct.opj_jp2*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.opj_stream_private*, %struct.opj_event_mgr*) #3

declare i32 @opj_jp2_decode_tile(%struct.opj_jp2*, i32, i8*, i32, %struct.opj_stream_private*, %struct.opj_event_mgr*) #3

declare void @opj_jp2_destroy(%struct.opj_jp2*) #3

declare void @opj_jp2_setup_decoder(%struct.opj_jp2*, %struct.opj_dparameters*) #3

declare i32 @opj_jp2_set_decode_area(%struct.opj_jp2*, %struct.opj_image*, i32, i32, i32, i32, %struct.opj_event_mgr*) #3

declare i32 @opj_jp2_get_tile(%struct.opj_jp2*, %struct.opj_stream_private*, %struct.opj_image*, %struct.opj_event_mgr*, i32) #3

declare i32 @opj_jp2_set_decoded_resolution_factor(%struct.opj_jp2*, i32, %struct.opj_event_mgr*) #3

declare %struct.opj_jp2* @opj_jp2_create(i32) #3

declare void @opj_set_default_event_handler(%struct.opj_event_mgr*) #3

; Function Attrs: nounwind uwtable
define void @opj_set_default_decoder_parameters(%struct.opj_dparameters* %parameters) #0 {
entry:
  %parameters.addr = alloca %struct.opj_dparameters*, align 8
  store %struct.opj_dparameters* %parameters, %struct.opj_dparameters** %parameters.addr, align 8, !tbaa !1
  %0 = load %struct.opj_dparameters*, %struct.opj_dparameters** %parameters.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.opj_dparameters* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.opj_dparameters*, %struct.opj_dparameters** %parameters.addr, align 8, !tbaa !1
  %2 = bitcast %struct.opj_dparameters* %1 to i8*
  %call = call i8* @memset(i8* %2, i32 0, i64 8252) #4
  %3 = load %struct.opj_dparameters*, %struct.opj_dparameters** %parameters.addr, align 8, !tbaa !1
  %cp_layer = getelementptr inbounds %struct.opj_dparameters, %struct.opj_dparameters* %3, i32 0, i32 1
  store i32 0, i32* %cp_layer, align 4, !tbaa !31
  %4 = load %struct.opj_dparameters*, %struct.opj_dparameters** %parameters.addr, align 8, !tbaa !1
  %cp_reduce = getelementptr inbounds %struct.opj_dparameters, %struct.opj_dparameters* %4, i32 0, i32 0
  store i32 0, i32* %cp_reduce, align 4, !tbaa !33
  %5 = load %struct.opj_dparameters*, %struct.opj_dparameters** %parameters.addr, align 8, !tbaa !1
  %decod_format = getelementptr inbounds %struct.opj_dparameters, %struct.opj_dparameters* %5, i32 0, i32 4
  store i32 -1, i32* %decod_format, align 4, !tbaa !34
  %6 = load %struct.opj_dparameters*, %struct.opj_dparameters** %parameters.addr, align 8, !tbaa !1
  %cod_format = getelementptr inbounds %struct.opj_dparameters, %struct.opj_dparameters* %6, i32 0, i32 5
  store i32 -1, i32* %cod_format, align 4, !tbaa !35
  %7 = load %struct.opj_dparameters*, %struct.opj_dparameters** %parameters.addr, align 8, !tbaa !1
  %flags = getelementptr inbounds %struct.opj_dparameters, %struct.opj_dparameters* %7, i32 0, i32 16
  store i32 0, i32* %flags, align 4, !tbaa !36
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @opj_setup_decoder(i8** %p_codec, %struct.opj_dparameters* %parameters) #0 {
entry:
  %retval = alloca i32, align 4
  %p_codec.addr = alloca i8**, align 8
  %parameters.addr = alloca %struct.opj_dparameters*, align 8
  %l_codec = alloca %struct.opj_codec_private*, align 8
  %cleanup.dest.slot = alloca i32
  store i8** %p_codec, i8*** %p_codec.addr, align 8, !tbaa !1
  store %struct.opj_dparameters* %parameters, %struct.opj_dparameters** %parameters.addr, align 8, !tbaa !1
  %0 = load i8**, i8*** %p_codec.addr, align 8, !tbaa !1
  %tobool = icmp ne i8** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.opj_dparameters*, %struct.opj_dparameters** %parameters.addr, align 8, !tbaa !1
  %tobool1 = icmp ne %struct.opj_dparameters* %1, null
  br i1 %tobool1, label %if.then, label %if.end.4

if.then:                                          ; preds = %land.lhs.true
  %2 = bitcast %struct.opj_codec_private** %l_codec to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8**, i8*** %p_codec.addr, align 8, !tbaa !1
  %4 = bitcast i8** %3 to %struct.opj_codec_private*
  store %struct.opj_codec_private* %4, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %5 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %is_decompressor = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %5, i32 0, i32 3
  %6 = load i32, i32* %is_decompressor, align 4, !tbaa !15
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  %7 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_event_mgr = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %7, i32 0, i32 2
  %call = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %m_event_mgr, i32 1, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i32 0, i32 0)) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %8 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec_data = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %8, i32 0, i32 0
  %m_decompression = bitcast %union.anon* %m_codec_data to %struct.opj_decompression*
  %opj_setup_decoder = getelementptr inbounds %struct.opj_decompression, %struct.opj_decompression* %m_decompression, i32 0, i32 6
  %9 = load void (i8*, %struct.opj_dparameters*)*, void (i8*, %struct.opj_dparameters*)** %opj_setup_decoder, align 8, !tbaa !24
  %10 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %10, i32 0, i32 1
  %11 = load i8*, i8** %m_codec, align 8, !tbaa !30
  %12 = load %struct.opj_dparameters*, %struct.opj_dparameters** %parameters.addr, align 8, !tbaa !1
  call void %9(i8* %11, %struct.opj_dparameters* %12) #5
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.3
  %13 = bitcast %struct.opj_codec_private** %l_codec to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  br label %return

if.end.4:                                         ; preds = %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %cleanup
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare i32 @opj_event_msg(%struct.opj_event_mgr*, i32, i8*, ...) #3

; Function Attrs: nounwind uwtable
define i32 @opj_read_header(i8** %p_stream, i8** %p_codec, %struct.opj_image** %p_image) #0 {
entry:
  %retval = alloca i32, align 4
  %p_stream.addr = alloca i8**, align 8
  %p_codec.addr = alloca i8**, align 8
  %p_image.addr = alloca %struct.opj_image**, align 8
  %l_codec = alloca %struct.opj_codec_private*, align 8
  %l_stream = alloca %struct.opj_stream_private*, align 8
  %cleanup.dest.slot = alloca i32
  store i8** %p_stream, i8*** %p_stream.addr, align 8, !tbaa !1
  store i8** %p_codec, i8*** %p_codec.addr, align 8, !tbaa !1
  store %struct.opj_image** %p_image, %struct.opj_image*** %p_image.addr, align 8, !tbaa !1
  %0 = load i8**, i8*** %p_codec.addr, align 8, !tbaa !1
  %tobool = icmp ne i8** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %entry
  %1 = load i8**, i8*** %p_stream.addr, align 8, !tbaa !1
  %tobool1 = icmp ne i8** %1, null
  br i1 %tobool1, label %if.then, label %if.end.7

if.then:                                          ; preds = %land.lhs.true
  %2 = bitcast %struct.opj_codec_private** %l_codec to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8**, i8*** %p_codec.addr, align 8, !tbaa !1
  %4 = bitcast i8** %3 to %struct.opj_codec_private*
  store %struct.opj_codec_private* %4, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %5 = bitcast %struct.opj_stream_private** %l_stream to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load i8**, i8*** %p_stream.addr, align 8, !tbaa !1
  %7 = bitcast i8** %6 to %struct.opj_stream_private*
  store %struct.opj_stream_private* %7, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %8 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %is_decompressor = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %8, i32 0, i32 3
  %9 = load i32, i32* %is_decompressor, align 4, !tbaa !15
  %tobool2 = icmp ne i32 %9, 0
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  %10 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_event_mgr = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %10, i32 0, i32 2
  %call = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %m_event_mgr, i32 1, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i32 0, i32 0)) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %11 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec_data = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %11, i32 0, i32 0
  %m_decompression = bitcast %union.anon* %m_codec_data to %struct.opj_decompression*
  %opj_read_header = getelementptr inbounds %struct.opj_decompression, %struct.opj_decompression* %m_decompression, i32 0, i32 0
  %12 = load i32 (%struct.opj_stream_private*, i8*, %struct.opj_image**, %struct.opj_event_mgr*)*, i32 (%struct.opj_stream_private*, i8*, %struct.opj_image**, %struct.opj_event_mgr*)** %opj_read_header, align 8, !tbaa !22
  %13 = load %struct.opj_stream_private*, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %14 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %14, i32 0, i32 1
  %15 = load i8*, i8** %m_codec, align 8, !tbaa !30
  %16 = load %struct.opj_image**, %struct.opj_image*** %p_image.addr, align 8, !tbaa !1
  %17 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_event_mgr4 = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %17, i32 0, i32 2
  %call5 = call i32 %12(%struct.opj_stream_private* %13, i8* %15, %struct.opj_image** %16, %struct.opj_event_mgr* %m_event_mgr4) #5
  store i32 %call5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.3
  %18 = bitcast %struct.opj_stream_private** %l_stream to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = bitcast %struct.opj_codec_private** %l_codec to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  br label %return

if.end.7:                                         ; preds = %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.7, %cleanup
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define i32 @opj_decode(i8** %p_codec, i8** %p_stream, %struct.opj_image* %p_image) #0 {
entry:
  %retval = alloca i32, align 4
  %p_codec.addr = alloca i8**, align 8
  %p_stream.addr = alloca i8**, align 8
  %p_image.addr = alloca %struct.opj_image*, align 8
  %l_codec = alloca %struct.opj_codec_private*, align 8
  %l_stream = alloca %struct.opj_stream_private*, align 8
  %cleanup.dest.slot = alloca i32
  store i8** %p_codec, i8*** %p_codec.addr, align 8, !tbaa !1
  store i8** %p_stream, i8*** %p_stream.addr, align 8, !tbaa !1
  store %struct.opj_image* %p_image, %struct.opj_image** %p_image.addr, align 8, !tbaa !1
  %0 = load i8**, i8*** %p_codec.addr, align 8, !tbaa !1
  %tobool = icmp ne i8** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %entry
  %1 = load i8**, i8*** %p_stream.addr, align 8, !tbaa !1
  %tobool1 = icmp ne i8** %1, null
  br i1 %tobool1, label %if.then, label %if.end.5

if.then:                                          ; preds = %land.lhs.true
  %2 = bitcast %struct.opj_codec_private** %l_codec to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8**, i8*** %p_codec.addr, align 8, !tbaa !1
  %4 = bitcast i8** %3 to %struct.opj_codec_private*
  store %struct.opj_codec_private* %4, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %5 = bitcast %struct.opj_stream_private** %l_stream to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load i8**, i8*** %p_stream.addr, align 8, !tbaa !1
  %7 = bitcast i8** %6 to %struct.opj_stream_private*
  store %struct.opj_stream_private* %7, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %8 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %is_decompressor = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %8, i32 0, i32 3
  %9 = load i32, i32* %is_decompressor, align 4, !tbaa !15
  %tobool2 = icmp ne i32 %9, 0
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %10 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec_data = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %10, i32 0, i32 0
  %m_decompression = bitcast %union.anon* %m_codec_data to %struct.opj_decompression*
  %opj_decode = getelementptr inbounds %struct.opj_decompression, %struct.opj_decompression* %m_decompression, i32 0, i32 1
  %11 = load i32 (i8*, %struct.opj_stream_private*, %struct.opj_image*, %struct.opj_event_mgr*)*, i32 (i8*, %struct.opj_stream_private*, %struct.opj_image*, %struct.opj_event_mgr*)** %opj_decode, align 8, !tbaa !19
  %12 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %12, i32 0, i32 1
  %13 = load i8*, i8** %m_codec, align 8, !tbaa !30
  %14 = load %struct.opj_stream_private*, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %15 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !1
  %16 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_event_mgr = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %16, i32 0, i32 2
  %call = call i32 %11(i8* %13, %struct.opj_stream_private* %14, %struct.opj_image* %15, %struct.opj_event_mgr* %m_event_mgr) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.3
  %17 = bitcast %struct.opj_stream_private** %l_stream to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  %18 = bitcast %struct.opj_codec_private** %l_codec to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  br label %return

if.end.5:                                         ; preds = %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %cleanup
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define i32 @opj_set_decode_area(i8** %p_codec, %struct.opj_image* %p_image, i32 %p_start_x, i32 %p_start_y, i32 %p_end_x, i32 %p_end_y) #0 {
entry:
  %retval = alloca i32, align 4
  %p_codec.addr = alloca i8**, align 8
  %p_image.addr = alloca %struct.opj_image*, align 8
  %p_start_x.addr = alloca i32, align 4
  %p_start_y.addr = alloca i32, align 4
  %p_end_x.addr = alloca i32, align 4
  %p_end_y.addr = alloca i32, align 4
  %l_codec = alloca %struct.opj_codec_private*, align 8
  %cleanup.dest.slot = alloca i32
  store i8** %p_codec, i8*** %p_codec.addr, align 8, !tbaa !1
  store %struct.opj_image* %p_image, %struct.opj_image** %p_image.addr, align 8, !tbaa !1
  store i32 %p_start_x, i32* %p_start_x.addr, align 4, !tbaa !37
  store i32 %p_start_y, i32* %p_start_y.addr, align 4, !tbaa !37
  store i32 %p_end_x, i32* %p_end_x.addr, align 4, !tbaa !37
  store i32 %p_end_y, i32* %p_end_y.addr, align 4, !tbaa !37
  %0 = load i8**, i8*** %p_codec.addr, align 8, !tbaa !1
  %tobool = icmp ne i8** %0, null
  br i1 %tobool, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.opj_codec_private** %l_codec to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i8**, i8*** %p_codec.addr, align 8, !tbaa !1
  %3 = bitcast i8** %2 to %struct.opj_codec_private*
  store %struct.opj_codec_private* %3, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %4 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %is_decompressor = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %4, i32 0, i32 3
  %5 = load i32, i32* %is_decompressor, align 4, !tbaa !15
  %tobool1 = icmp ne i32 %5, 0
  br i1 %tobool1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %6 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec_data = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %6, i32 0, i32 0
  %m_decompression = bitcast %union.anon* %m_codec_data to %struct.opj_decompression*
  %opj_set_decode_area = getelementptr inbounds %struct.opj_decompression, %struct.opj_decompression* %m_decompression, i32 0, i32 7
  %7 = load i32 (i8*, %struct.opj_image*, i32, i32, i32, i32, %struct.opj_event_mgr*)*, i32 (i8*, %struct.opj_image*, i32, i32, i32, i32, %struct.opj_event_mgr*)** %opj_set_decode_area, align 8, !tbaa !27
  %8 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %8, i32 0, i32 1
  %9 = load i8*, i8** %m_codec, align 8, !tbaa !30
  %10 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !1
  %11 = load i32, i32* %p_start_x.addr, align 4, !tbaa !37
  %12 = load i32, i32* %p_start_y.addr, align 4, !tbaa !37
  %13 = load i32, i32* %p_end_x.addr, align 4, !tbaa !37
  %14 = load i32, i32* %p_end_y.addr, align 4, !tbaa !37
  %15 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_event_mgr = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %15, i32 0, i32 2
  %call = call i32 %7(i8* %9, %struct.opj_image* %10, i32 %11, i32 %12, i32 %13, i32 %14, %struct.opj_event_mgr* %m_event_mgr) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.2
  %16 = bitcast %struct.opj_codec_private** %l_codec to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  br label %return

if.end.3:                                         ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %cleanup
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i32 @opj_read_tile_header(i8** %p_codec, i8** %p_stream, i32* %p_tile_index, i32* %p_data_size, i32* %p_tile_x0, i32* %p_tile_y0, i32* %p_tile_x1, i32* %p_tile_y1, i32* %p_nb_comps, i32* %p_should_go_on) #0 {
entry:
  %retval = alloca i32, align 4
  %p_codec.addr = alloca i8**, align 8
  %p_stream.addr = alloca i8**, align 8
  %p_tile_index.addr = alloca i32*, align 8
  %p_data_size.addr = alloca i32*, align 8
  %p_tile_x0.addr = alloca i32*, align 8
  %p_tile_y0.addr = alloca i32*, align 8
  %p_tile_x1.addr = alloca i32*, align 8
  %p_tile_y1.addr = alloca i32*, align 8
  %p_nb_comps.addr = alloca i32*, align 8
  %p_should_go_on.addr = alloca i32*, align 8
  %l_codec = alloca %struct.opj_codec_private*, align 8
  %l_stream = alloca %struct.opj_stream_private*, align 8
  %cleanup.dest.slot = alloca i32
  store i8** %p_codec, i8*** %p_codec.addr, align 8, !tbaa !1
  store i8** %p_stream, i8*** %p_stream.addr, align 8, !tbaa !1
  store i32* %p_tile_index, i32** %p_tile_index.addr, align 8, !tbaa !1
  store i32* %p_data_size, i32** %p_data_size.addr, align 8, !tbaa !1
  store i32* %p_tile_x0, i32** %p_tile_x0.addr, align 8, !tbaa !1
  store i32* %p_tile_y0, i32** %p_tile_y0.addr, align 8, !tbaa !1
  store i32* %p_tile_x1, i32** %p_tile_x1.addr, align 8, !tbaa !1
  store i32* %p_tile_y1, i32** %p_tile_y1.addr, align 8, !tbaa !1
  store i32* %p_nb_comps, i32** %p_nb_comps.addr, align 8, !tbaa !1
  store i32* %p_should_go_on, i32** %p_should_go_on.addr, align 8, !tbaa !1
  %0 = load i8**, i8*** %p_codec.addr, align 8, !tbaa !1
  %tobool = icmp ne i8** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %entry
  %1 = load i8**, i8*** %p_stream.addr, align 8, !tbaa !1
  %tobool1 = icmp ne i8** %1, null
  br i1 %tobool1, label %land.lhs.true.2, label %if.end.9

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %2 = load i32*, i32** %p_data_size.addr, align 8, !tbaa !1
  %tobool3 = icmp ne i32* %2, null
  br i1 %tobool3, label %land.lhs.true.4, label %if.end.9

land.lhs.true.4:                                  ; preds = %land.lhs.true.2
  %3 = load i32*, i32** %p_tile_index.addr, align 8, !tbaa !1
  %tobool5 = icmp ne i32* %3, null
  br i1 %tobool5, label %if.then, label %if.end.9

if.then:                                          ; preds = %land.lhs.true.4
  %4 = bitcast %struct.opj_codec_private** %l_codec to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i8**, i8*** %p_codec.addr, align 8, !tbaa !1
  %6 = bitcast i8** %5 to %struct.opj_codec_private*
  store %struct.opj_codec_private* %6, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %7 = bitcast %struct.opj_stream_private** %l_stream to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load i8**, i8*** %p_stream.addr, align 8, !tbaa !1
  %9 = bitcast i8** %8 to %struct.opj_stream_private*
  store %struct.opj_stream_private* %9, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %10 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %is_decompressor = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %10, i32 0, i32 3
  %11 = load i32, i32* %is_decompressor, align 4, !tbaa !15
  %tobool6 = icmp ne i32 %11, 0
  br i1 %tobool6, label %if.end, label %if.then.7

if.then.7:                                        ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %12 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec_data = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %12, i32 0, i32 0
  %m_decompression = bitcast %union.anon* %m_codec_data to %struct.opj_decompression*
  %opj_read_tile_header = getelementptr inbounds %struct.opj_decompression, %struct.opj_decompression* %m_decompression, i32 0, i32 2
  %13 = load i32 (i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.opj_stream_private*, %struct.opj_event_mgr*)*, i32 (i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.opj_stream_private*, %struct.opj_event_mgr*)** %opj_read_tile_header, align 8, !tbaa !25
  %14 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %14, i32 0, i32 1
  %15 = load i8*, i8** %m_codec, align 8, !tbaa !30
  %16 = load i32*, i32** %p_tile_index.addr, align 8, !tbaa !1
  %17 = load i32*, i32** %p_data_size.addr, align 8, !tbaa !1
  %18 = load i32*, i32** %p_tile_x0.addr, align 8, !tbaa !1
  %19 = load i32*, i32** %p_tile_y0.addr, align 8, !tbaa !1
  %20 = load i32*, i32** %p_tile_x1.addr, align 8, !tbaa !1
  %21 = load i32*, i32** %p_tile_y1.addr, align 8, !tbaa !1
  %22 = load i32*, i32** %p_nb_comps.addr, align 8, !tbaa !1
  %23 = load i32*, i32** %p_should_go_on.addr, align 8, !tbaa !1
  %24 = load %struct.opj_stream_private*, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %25 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_event_mgr = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %25, i32 0, i32 2
  %call = call i32 %13(i8* %15, i32* %16, i32* %17, i32* %18, i32* %19, i32* %20, i32* %21, i32* %22, i32* %23, %struct.opj_stream_private* %24, %struct.opj_event_mgr* %m_event_mgr) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.7
  %26 = bitcast %struct.opj_stream_private** %l_stream to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = bitcast %struct.opj_codec_private** %l_codec to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  br label %return

if.end.9:                                         ; preds = %land.lhs.true.4, %land.lhs.true.2, %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %cleanup
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define i32 @opj_decode_tile_data(i8** %p_codec, i32 %p_tile_index, i8* %p_data, i32 %p_data_size, i8** %p_stream) #0 {
entry:
  %retval = alloca i32, align 4
  %p_codec.addr = alloca i8**, align 8
  %p_tile_index.addr = alloca i32, align 4
  %p_data.addr = alloca i8*, align 8
  %p_data_size.addr = alloca i32, align 4
  %p_stream.addr = alloca i8**, align 8
  %l_codec = alloca %struct.opj_codec_private*, align 8
  %l_stream = alloca %struct.opj_stream_private*, align 8
  %cleanup.dest.slot = alloca i32
  store i8** %p_codec, i8*** %p_codec.addr, align 8, !tbaa !1
  store i32 %p_tile_index, i32* %p_tile_index.addr, align 4, !tbaa !37
  store i8* %p_data, i8** %p_data.addr, align 8, !tbaa !1
  store i32 %p_data_size, i32* %p_data_size.addr, align 4, !tbaa !37
  store i8** %p_stream, i8*** %p_stream.addr, align 8, !tbaa !1
  %0 = load i8**, i8*** %p_codec.addr, align 8, !tbaa !1
  %tobool = icmp ne i8** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %p_data.addr, align 8, !tbaa !1
  %tobool1 = icmp ne i8* %1, null
  br i1 %tobool1, label %land.lhs.true.2, label %if.end.7

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %2 = load i8**, i8*** %p_stream.addr, align 8, !tbaa !1
  %tobool3 = icmp ne i8** %2, null
  br i1 %tobool3, label %if.then, label %if.end.7

if.then:                                          ; preds = %land.lhs.true.2
  %3 = bitcast %struct.opj_codec_private** %l_codec to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i8**, i8*** %p_codec.addr, align 8, !tbaa !1
  %5 = bitcast i8** %4 to %struct.opj_codec_private*
  store %struct.opj_codec_private* %5, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %6 = bitcast %struct.opj_stream_private** %l_stream to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i8**, i8*** %p_stream.addr, align 8, !tbaa !1
  %8 = bitcast i8** %7 to %struct.opj_stream_private*
  store %struct.opj_stream_private* %8, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %9 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %is_decompressor = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %9, i32 0, i32 3
  %10 = load i32, i32* %is_decompressor, align 4, !tbaa !15
  %tobool4 = icmp ne i32 %10, 0
  br i1 %tobool4, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %11 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec_data = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %11, i32 0, i32 0
  %m_decompression = bitcast %union.anon* %m_codec_data to %struct.opj_decompression*
  %opj_decode_tile_data = getelementptr inbounds %struct.opj_decompression, %struct.opj_decompression* %m_decompression, i32 0, i32 3
  %12 = load i32 (i8*, i32, i8*, i32, %struct.opj_stream_private*, %struct.opj_event_mgr*)*, i32 (i8*, i32, i8*, i32, %struct.opj_stream_private*, %struct.opj_event_mgr*)** %opj_decode_tile_data, align 8, !tbaa !26
  %13 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %13, i32 0, i32 1
  %14 = load i8*, i8** %m_codec, align 8, !tbaa !30
  %15 = load i32, i32* %p_tile_index.addr, align 4, !tbaa !37
  %16 = load i8*, i8** %p_data.addr, align 8, !tbaa !1
  %17 = load i32, i32* %p_data_size.addr, align 4, !tbaa !37
  %18 = load %struct.opj_stream_private*, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %19 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_event_mgr = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %19, i32 0, i32 2
  %call = call i32 %12(i8* %14, i32 %15, i8* %16, i32 %17, %struct.opj_stream_private* %18, %struct.opj_event_mgr* %m_event_mgr) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.5
  %20 = bitcast %struct.opj_stream_private** %l_stream to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %21 = bitcast %struct.opj_codec_private** %l_codec to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  br label %return

if.end.7:                                         ; preds = %land.lhs.true.2, %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.7, %cleanup
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define i32 @opj_get_decoded_tile(i8** %p_codec, i8** %p_stream, %struct.opj_image* %p_image, i32 %tile_index) #0 {
entry:
  %retval = alloca i32, align 4
  %p_codec.addr = alloca i8**, align 8
  %p_stream.addr = alloca i8**, align 8
  %p_image.addr = alloca %struct.opj_image*, align 8
  %tile_index.addr = alloca i32, align 4
  %l_codec = alloca %struct.opj_codec_private*, align 8
  %l_stream = alloca %struct.opj_stream_private*, align 8
  %cleanup.dest.slot = alloca i32
  store i8** %p_codec, i8*** %p_codec.addr, align 8, !tbaa !1
  store i8** %p_stream, i8*** %p_stream.addr, align 8, !tbaa !1
  store %struct.opj_image* %p_image, %struct.opj_image** %p_image.addr, align 8, !tbaa !1
  store i32 %tile_index, i32* %tile_index.addr, align 4, !tbaa !37
  %0 = load i8**, i8*** %p_codec.addr, align 8, !tbaa !1
  %tobool = icmp ne i8** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %entry
  %1 = load i8**, i8*** %p_stream.addr, align 8, !tbaa !1
  %tobool1 = icmp ne i8** %1, null
  br i1 %tobool1, label %if.then, label %if.end.5

if.then:                                          ; preds = %land.lhs.true
  %2 = bitcast %struct.opj_codec_private** %l_codec to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8**, i8*** %p_codec.addr, align 8, !tbaa !1
  %4 = bitcast i8** %3 to %struct.opj_codec_private*
  store %struct.opj_codec_private* %4, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %5 = bitcast %struct.opj_stream_private** %l_stream to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load i8**, i8*** %p_stream.addr, align 8, !tbaa !1
  %7 = bitcast i8** %6 to %struct.opj_stream_private*
  store %struct.opj_stream_private* %7, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %8 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %is_decompressor = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %8, i32 0, i32 3
  %9 = load i32, i32* %is_decompressor, align 4, !tbaa !15
  %tobool2 = icmp ne i32 %9, 0
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %10 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec_data = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %10, i32 0, i32 0
  %m_decompression = bitcast %union.anon* %m_codec_data to %struct.opj_decompression*
  %opj_get_decoded_tile = getelementptr inbounds %struct.opj_decompression, %struct.opj_decompression* %m_decompression, i32 0, i32 8
  %11 = load i32 (i8*, %struct.opj_stream_private*, %struct.opj_image*, %struct.opj_event_mgr*, i32)*, i32 (i8*, %struct.opj_stream_private*, %struct.opj_image*, %struct.opj_event_mgr*, i32)** %opj_get_decoded_tile, align 8, !tbaa !28
  %12 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %12, i32 0, i32 1
  %13 = load i8*, i8** %m_codec, align 8, !tbaa !30
  %14 = load %struct.opj_stream_private*, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %15 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !1
  %16 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_event_mgr = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %16, i32 0, i32 2
  %17 = load i32, i32* %tile_index.addr, align 4, !tbaa !37
  %call = call i32 %11(i8* %13, %struct.opj_stream_private* %14, %struct.opj_image* %15, %struct.opj_event_mgr* %m_event_mgr, i32 %17) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.3
  %18 = bitcast %struct.opj_stream_private** %l_stream to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = bitcast %struct.opj_codec_private** %l_codec to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  br label %return

if.end.5:                                         ; preds = %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %cleanup
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define i32 @opj_set_decoded_resolution_factor(i8** %p_codec, i32 %res_factor) #0 {
entry:
  %retval = alloca i32, align 4
  %p_codec.addr = alloca i8**, align 8
  %res_factor.addr = alloca i32, align 4
  %l_codec = alloca %struct.opj_codec_private*, align 8
  %cleanup.dest.slot = alloca i32
  store i8** %p_codec, i8*** %p_codec.addr, align 8, !tbaa !1
  store i32 %res_factor, i32* %res_factor.addr, align 4, !tbaa !37
  %0 = bitcast %struct.opj_codec_private** %l_codec to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8**, i8*** %p_codec.addr, align 8, !tbaa !1
  %2 = bitcast i8** %1 to %struct.opj_codec_private*
  store %struct.opj_codec_private* %2, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %3 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %tobool = icmp ne %struct.opj_codec_private* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i32 0, i32 0)) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec_data = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %5, i32 0, i32 0
  %m_decompression = bitcast %union.anon* %m_codec_data to %struct.opj_decompression*
  %opj_set_decoded_resolution_factor = getelementptr inbounds %struct.opj_decompression, %struct.opj_decompression* %m_decompression, i32 0, i32 9
  %6 = load i32 (i8*, i32, %struct.opj_event_mgr*)*, i32 (i8*, i32, %struct.opj_event_mgr*)** %opj_set_decoded_resolution_factor, align 8, !tbaa !29
  %7 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %7, i32 0, i32 1
  %8 = load i8*, i8** %m_codec, align 8, !tbaa !30
  %9 = load i32, i32* %res_factor.addr, align 4, !tbaa !37
  %10 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_event_mgr = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %10, i32 0, i32 2
  %call1 = call i32 %6(i8* %8, i32 %9, %struct.opj_event_mgr* %m_event_mgr) #5
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %11 = bitcast %struct.opj_codec_private** %l_codec to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define i8** @opj_create_compress(i32 %p_format) #0 {
entry:
  %retval = alloca i8**, align 8
  %p_format.addr = alloca i32, align 4
  %l_codec = alloca %struct.opj_codec_private*, align 8
  %cleanup.dest.slot = alloca i32
  store i32 %p_format, i32* %p_format.addr, align 4, !tbaa !14
  %0 = bitcast %struct.opj_codec_private** %l_codec to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store %struct.opj_codec_private* null, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %call = call noalias i8* @calloc(i64 1, i64 168) #4
  %1 = bitcast i8* %call to %struct.opj_codec_private*
  store %struct.opj_codec_private* %1, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %2 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %tobool = icmp ne %struct.opj_codec_private* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8** null, i8*** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %4 = bitcast %struct.opj_codec_private* %3 to i8*
  %call1 = call i8* @memset(i8* %4, i32 0, i64 168) #4
  %5 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %is_decompressor = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %5, i32 0, i32 3
  store i32 0, i32* %is_decompressor, align 4, !tbaa !15
  %6 = load i32, i32* %p_format.addr, align 4, !tbaa !14
  switch i32 %6, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb.17
    i32 -1, label %sw.bb.42
    i32 1, label %sw.bb.42
  ]

sw.bb:                                            ; preds = %if.end
  %7 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec_data = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %7, i32 0, i32 0
  %m_compression = bitcast %union.anon* %m_codec_data to %struct.opj_compression*
  %opj_encode = getelementptr inbounds %struct.opj_compression, %struct.opj_compression* %m_compression, i32 0, i32 1
  store i32 (i8*, %struct.opj_stream_private*, %struct.opj_event_mgr*)* bitcast (i32 (%struct.opj_j2k*, %struct.opj_stream_private*, %struct.opj_event_mgr*)* @opj_j2k_encode to i32 (i8*, %struct.opj_stream_private*, %struct.opj_event_mgr*)*), i32 (i8*, %struct.opj_stream_private*, %struct.opj_event_mgr*)** %opj_encode, align 8, !tbaa !38
  %8 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec_data2 = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %8, i32 0, i32 0
  %m_compression3 = bitcast %union.anon* %m_codec_data2 to %struct.opj_compression*
  %opj_end_compress = getelementptr inbounds %struct.opj_compression, %struct.opj_compression* %m_compression3, i32 0, i32 3
  store i32 (i8*, %struct.opj_stream_private*, %struct.opj_event_mgr*)* bitcast (i32 (%struct.opj_j2k*, %struct.opj_stream_private*, %struct.opj_event_mgr*)* @opj_j2k_end_compress to i32 (i8*, %struct.opj_stream_private*, %struct.opj_event_mgr*)*), i32 (i8*, %struct.opj_stream_private*, %struct.opj_event_mgr*)** %opj_end_compress, align 8, !tbaa !40
  %9 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec_data4 = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %9, i32 0, i32 0
  %m_compression5 = bitcast %union.anon* %m_codec_data4 to %struct.opj_compression*
  %opj_start_compress = getelementptr inbounds %struct.opj_compression, %struct.opj_compression* %m_compression5, i32 0, i32 0
  store i32 (i8*, %struct.opj_stream_private*, %struct.opj_image*, %struct.opj_event_mgr*)* bitcast (i32 (%struct.opj_j2k*, %struct.opj_stream_private*, %struct.opj_image*, %struct.opj_event_mgr*)* @opj_j2k_start_compress to i32 (i8*, %struct.opj_stream_private*, %struct.opj_image*, %struct.opj_event_mgr*)*), i32 (i8*, %struct.opj_stream_private*, %struct.opj_image*, %struct.opj_event_mgr*)** %opj_start_compress, align 8, !tbaa !41
  %10 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec_data6 = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %10, i32 0, i32 0
  %m_compression7 = bitcast %union.anon* %m_codec_data6 to %struct.opj_compression*
  %opj_write_tile = getelementptr inbounds %struct.opj_compression, %struct.opj_compression* %m_compression7, i32 0, i32 2
  store i32 (i8*, i32, i8*, i32, %struct.opj_stream_private*, %struct.opj_event_mgr*)* bitcast (i32 (%struct.opj_j2k*, i32, i8*, i32, %struct.opj_stream_private*, %struct.opj_event_mgr*)* @opj_j2k_write_tile to i32 (i8*, i32, i8*, i32, %struct.opj_stream_private*, %struct.opj_event_mgr*)*), i32 (i8*, i32, i8*, i32, %struct.opj_stream_private*, %struct.opj_event_mgr*)** %opj_write_tile, align 8, !tbaa !42
  %11 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec_data8 = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %11, i32 0, i32 0
  %m_compression9 = bitcast %union.anon* %m_codec_data8 to %struct.opj_compression*
  %opj_destroy = getelementptr inbounds %struct.opj_compression, %struct.opj_compression* %m_compression9, i32 0, i32 4
  store void (i8*)* bitcast (void (%struct.opj_j2k*)* @opj_j2k_destroy to void (i8*)*), void (i8*)** %opj_destroy, align 8, !tbaa !43
  %12 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec_data10 = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %12, i32 0, i32 0
  %m_compression11 = bitcast %union.anon* %m_codec_data10 to %struct.opj_compression*
  %opj_setup_encoder = getelementptr inbounds %struct.opj_compression, %struct.opj_compression* %m_compression11, i32 0, i32 5
  store void (i8*, %struct.opj_cparameters*, %struct.opj_image*, %struct.opj_event_mgr*)* bitcast (void (%struct.opj_j2k*, %struct.opj_cparameters*, %struct.opj_image*, %struct.opj_event_mgr*)* @opj_j2k_setup_encoder to void (i8*, %struct.opj_cparameters*, %struct.opj_image*, %struct.opj_event_mgr*)*), void (i8*, %struct.opj_cparameters*, %struct.opj_image*, %struct.opj_event_mgr*)** %opj_setup_encoder, align 8, !tbaa !44
  %call12 = call %struct.opj_j2k* @opj_j2k_create_compress() #5
  %13 = bitcast %struct.opj_j2k* %call12 to i8*
  %14 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %14, i32 0, i32 1
  store i8* %13, i8** %m_codec, align 8, !tbaa !30
  %15 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec13 = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %15, i32 0, i32 1
  %16 = load i8*, i8** %m_codec13, align 8, !tbaa !30
  %tobool14 = icmp ne i8* %16, null
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %sw.bb
  %17 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %18 = bitcast %struct.opj_codec_private* %17 to i8*
  call void @free(i8* %18) #4
  store i8** null, i8*** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %sw.bb
  br label %sw.epilog

sw.bb.17:                                         ; preds = %if.end
  %19 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec_data18 = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %19, i32 0, i32 0
  %m_compression19 = bitcast %union.anon* %m_codec_data18 to %struct.opj_compression*
  %opj_encode20 = getelementptr inbounds %struct.opj_compression, %struct.opj_compression* %m_compression19, i32 0, i32 1
  store i32 (i8*, %struct.opj_stream_private*, %struct.opj_event_mgr*)* bitcast (i32 (%struct.opj_jp2*, %struct.opj_stream_private*, %struct.opj_event_mgr*)* @opj_jp2_encode to i32 (i8*, %struct.opj_stream_private*, %struct.opj_event_mgr*)*), i32 (i8*, %struct.opj_stream_private*, %struct.opj_event_mgr*)** %opj_encode20, align 8, !tbaa !38
  %20 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec_data21 = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %20, i32 0, i32 0
  %m_compression22 = bitcast %union.anon* %m_codec_data21 to %struct.opj_compression*
  %opj_end_compress23 = getelementptr inbounds %struct.opj_compression, %struct.opj_compression* %m_compression22, i32 0, i32 3
  store i32 (i8*, %struct.opj_stream_private*, %struct.opj_event_mgr*)* bitcast (i32 (%struct.opj_jp2*, %struct.opj_stream_private*, %struct.opj_event_mgr*)* @opj_jp2_end_compress to i32 (i8*, %struct.opj_stream_private*, %struct.opj_event_mgr*)*), i32 (i8*, %struct.opj_stream_private*, %struct.opj_event_mgr*)** %opj_end_compress23, align 8, !tbaa !40
  %21 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec_data24 = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %21, i32 0, i32 0
  %m_compression25 = bitcast %union.anon* %m_codec_data24 to %struct.opj_compression*
  %opj_start_compress26 = getelementptr inbounds %struct.opj_compression, %struct.opj_compression* %m_compression25, i32 0, i32 0
  store i32 (i8*, %struct.opj_stream_private*, %struct.opj_image*, %struct.opj_event_mgr*)* bitcast (i32 (%struct.opj_jp2*, %struct.opj_stream_private*, %struct.opj_image*, %struct.opj_event_mgr*)* @opj_jp2_start_compress to i32 (i8*, %struct.opj_stream_private*, %struct.opj_image*, %struct.opj_event_mgr*)*), i32 (i8*, %struct.opj_stream_private*, %struct.opj_image*, %struct.opj_event_mgr*)** %opj_start_compress26, align 8, !tbaa !41
  %22 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec_data27 = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %22, i32 0, i32 0
  %m_compression28 = bitcast %union.anon* %m_codec_data27 to %struct.opj_compression*
  %opj_write_tile29 = getelementptr inbounds %struct.opj_compression, %struct.opj_compression* %m_compression28, i32 0, i32 2
  store i32 (i8*, i32, i8*, i32, %struct.opj_stream_private*, %struct.opj_event_mgr*)* bitcast (i32 (%struct.opj_jp2*, i32, i8*, i32, %struct.opj_stream_private*, %struct.opj_event_mgr*)* @opj_jp2_write_tile to i32 (i8*, i32, i8*, i32, %struct.opj_stream_private*, %struct.opj_event_mgr*)*), i32 (i8*, i32, i8*, i32, %struct.opj_stream_private*, %struct.opj_event_mgr*)** %opj_write_tile29, align 8, !tbaa !42
  %23 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec_data30 = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %23, i32 0, i32 0
  %m_compression31 = bitcast %union.anon* %m_codec_data30 to %struct.opj_compression*
  %opj_destroy32 = getelementptr inbounds %struct.opj_compression, %struct.opj_compression* %m_compression31, i32 0, i32 4
  store void (i8*)* bitcast (void (%struct.opj_jp2*)* @opj_jp2_destroy to void (i8*)*), void (i8*)** %opj_destroy32, align 8, !tbaa !43
  %24 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec_data33 = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %24, i32 0, i32 0
  %m_compression34 = bitcast %union.anon* %m_codec_data33 to %struct.opj_compression*
  %opj_setup_encoder35 = getelementptr inbounds %struct.opj_compression, %struct.opj_compression* %m_compression34, i32 0, i32 5
  store void (i8*, %struct.opj_cparameters*, %struct.opj_image*, %struct.opj_event_mgr*)* bitcast (void (%struct.opj_jp2*, %struct.opj_cparameters*, %struct.opj_image*, %struct.opj_event_mgr*)* @opj_jp2_setup_encoder to void (i8*, %struct.opj_cparameters*, %struct.opj_image*, %struct.opj_event_mgr*)*), void (i8*, %struct.opj_cparameters*, %struct.opj_image*, %struct.opj_event_mgr*)** %opj_setup_encoder35, align 8, !tbaa !44
  %call36 = call %struct.opj_jp2* @opj_jp2_create(i32 0) #5
  %25 = bitcast %struct.opj_jp2* %call36 to i8*
  %26 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec37 = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %26, i32 0, i32 1
  store i8* %25, i8** %m_codec37, align 8, !tbaa !30
  %27 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec38 = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %27, i32 0, i32 1
  %28 = load i8*, i8** %m_codec38, align 8, !tbaa !30
  %tobool39 = icmp ne i8* %28, null
  br i1 %tobool39, label %if.end.41, label %if.then.40

if.then.40:                                       ; preds = %sw.bb.17
  %29 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %30 = bitcast %struct.opj_codec_private* %29 to i8*
  call void @free(i8* %30) #4
  store i8** null, i8*** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.41:                                        ; preds = %sw.bb.17
  br label %sw.epilog

sw.bb.42:                                         ; preds = %if.end, %if.end
  br label %sw.default

sw.default:                                       ; preds = %if.end, %sw.bb.42
  %31 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %32 = bitcast %struct.opj_codec_private* %31 to i8*
  call void @free(i8* %32) #4
  store i8** null, i8*** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.41, %if.end.16
  %33 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_event_mgr = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %33, i32 0, i32 2
  call void @opj_set_default_event_handler(%struct.opj_event_mgr* %m_event_mgr) #5
  %34 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %35 = bitcast %struct.opj_codec_private* %34 to i8**
  store i8** %35, i8*** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then.40, %if.then.15, %if.then
  %36 = bitcast %struct.opj_codec_private** %l_codec to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = load i8**, i8*** %retval
  ret i8** %37
}

declare i32 @opj_j2k_encode(%struct.opj_j2k*, %struct.opj_stream_private*, %struct.opj_event_mgr*) #3

declare i32 @opj_j2k_end_compress(%struct.opj_j2k*, %struct.opj_stream_private*, %struct.opj_event_mgr*) #3

declare i32 @opj_j2k_start_compress(%struct.opj_j2k*, %struct.opj_stream_private*, %struct.opj_image*, %struct.opj_event_mgr*) #3

declare i32 @opj_j2k_write_tile(%struct.opj_j2k*, i32, i8*, i32, %struct.opj_stream_private*, %struct.opj_event_mgr*) #3

declare void @opj_j2k_setup_encoder(%struct.opj_j2k*, %struct.opj_cparameters*, %struct.opj_image*, %struct.opj_event_mgr*) #3

declare %struct.opj_j2k* @opj_j2k_create_compress() #3

declare i32 @opj_jp2_encode(%struct.opj_jp2*, %struct.opj_stream_private*, %struct.opj_event_mgr*) #3

declare i32 @opj_jp2_end_compress(%struct.opj_jp2*, %struct.opj_stream_private*, %struct.opj_event_mgr*) #3

declare i32 @opj_jp2_start_compress(%struct.opj_jp2*, %struct.opj_stream_private*, %struct.opj_image*, %struct.opj_event_mgr*) #3

declare i32 @opj_jp2_write_tile(%struct.opj_jp2*, i32, i8*, i32, %struct.opj_stream_private*, %struct.opj_event_mgr*) #3

declare void @opj_jp2_setup_encoder(%struct.opj_jp2*, %struct.opj_cparameters*, %struct.opj_image*, %struct.opj_event_mgr*) #3

; Function Attrs: nounwind uwtable
define void @opj_set_default_encoder_parameters(%struct.opj_cparameters* %parameters) #0 {
entry:
  %parameters.addr = alloca %struct.opj_cparameters*, align 8
  store %struct.opj_cparameters* %parameters, %struct.opj_cparameters** %parameters.addr, align 8, !tbaa !1
  %0 = load %struct.opj_cparameters*, %struct.opj_cparameters** %parameters.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.opj_cparameters* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.opj_cparameters*, %struct.opj_cparameters** %parameters.addr, align 8, !tbaa !1
  %2 = bitcast %struct.opj_cparameters* %1 to i8*
  %call = call i8* @memset(i8* %2, i32 0, i64 18712) #4
  %3 = load %struct.opj_cparameters*, %struct.opj_cparameters** %parameters.addr, align 8, !tbaa !1
  %cp_cinema = getelementptr inbounds %struct.opj_cparameters, %struct.opj_cparameters* %3, i32 0, i32 50
  store i32 0, i32* %cp_cinema, align 4, !tbaa !45
  %4 = load %struct.opj_cparameters*, %struct.opj_cparameters** %parameters.addr, align 8, !tbaa !1
  %max_comp_size = getelementptr inbounds %struct.opj_cparameters, %struct.opj_cparameters* %4, i32 0, i32 51
  store i32 0, i32* %max_comp_size, align 4, !tbaa !47
  %5 = load %struct.opj_cparameters*, %struct.opj_cparameters** %parameters.addr, align 8, !tbaa !1
  %numresolution = getelementptr inbounds %struct.opj_cparameters, %struct.opj_cparameters* %5, i32 0, i32 17
  store i32 6, i32* %numresolution, align 4, !tbaa !48
  %6 = load %struct.opj_cparameters*, %struct.opj_cparameters** %parameters.addr, align 8, !tbaa !1
  %cp_rsiz = getelementptr inbounds %struct.opj_cparameters, %struct.opj_cparameters* %6, i32 0, i32 52
  store i32 0, i32* %cp_rsiz, align 4, !tbaa !49
  %7 = load %struct.opj_cparameters*, %struct.opj_cparameters** %parameters.addr, align 8, !tbaa !1
  %cblockw_init = getelementptr inbounds %struct.opj_cparameters, %struct.opj_cparameters* %7, i32 0, i32 18
  store i32 64, i32* %cblockw_init, align 4, !tbaa !50
  %8 = load %struct.opj_cparameters*, %struct.opj_cparameters** %parameters.addr, align 8, !tbaa !1
  %cblockh_init = getelementptr inbounds %struct.opj_cparameters, %struct.opj_cparameters* %8, i32 0, i32 19
  store i32 64, i32* %cblockh_init, align 4, !tbaa !51
  %9 = load %struct.opj_cparameters*, %struct.opj_cparameters** %parameters.addr, align 8, !tbaa !1
  %prog_order = getelementptr inbounds %struct.opj_cparameters, %struct.opj_cparameters* %9, i32 0, i32 11
  store i32 0, i32* %prog_order, align 4, !tbaa !52
  %10 = load %struct.opj_cparameters*, %struct.opj_cparameters** %parameters.addr, align 8, !tbaa !1
  %roi_compno = getelementptr inbounds %struct.opj_cparameters, %struct.opj_cparameters* %10, i32 0, i32 22
  store i32 -1, i32* %roi_compno, align 4, !tbaa !53
  %11 = load %struct.opj_cparameters*, %struct.opj_cparameters** %parameters.addr, align 8, !tbaa !1
  %subsampling_dx = getelementptr inbounds %struct.opj_cparameters, %struct.opj_cparameters* %11, i32 0, i32 33
  store i32 1, i32* %subsampling_dx, align 4, !tbaa !54
  %12 = load %struct.opj_cparameters*, %struct.opj_cparameters** %parameters.addr, align 8, !tbaa !1
  %subsampling_dy = getelementptr inbounds %struct.opj_cparameters, %struct.opj_cparameters* %12, i32 0, i32 34
  store i32 1, i32* %subsampling_dy, align 4, !tbaa !55
  %13 = load %struct.opj_cparameters*, %struct.opj_cparameters** %parameters.addr, align 8, !tbaa !1
  %tp_on = getelementptr inbounds %struct.opj_cparameters, %struct.opj_cparameters* %13, i32 0, i32 53
  store i8 0, i8* %tp_on, align 1, !tbaa !56
  %14 = load %struct.opj_cparameters*, %struct.opj_cparameters** %parameters.addr, align 8, !tbaa !1
  %decod_format = getelementptr inbounds %struct.opj_cparameters, %struct.opj_cparameters* %14, i32 0, i32 35
  store i32 -1, i32* %decod_format, align 4, !tbaa !57
  %15 = load %struct.opj_cparameters*, %struct.opj_cparameters** %parameters.addr, align 8, !tbaa !1
  %cod_format = getelementptr inbounds %struct.opj_cparameters, %struct.opj_cparameters* %15, i32 0, i32 36
  store i32 -1, i32* %cod_format, align 4, !tbaa !58
  %16 = load %struct.opj_cparameters*, %struct.opj_cparameters** %parameters.addr, align 8, !tbaa !1
  %tcp_rates = getelementptr inbounds %struct.opj_cparameters, %struct.opj_cparameters* %16, i32 0, i32 15
  %arrayidx = getelementptr inbounds [100 x float], [100 x float]* %tcp_rates, i32 0, i64 0
  store float 0.000000e+00, float* %arrayidx, align 4, !tbaa !59
  %17 = load %struct.opj_cparameters*, %struct.opj_cparameters** %parameters.addr, align 8, !tbaa !1
  %tcp_numlayers = getelementptr inbounds %struct.opj_cparameters, %struct.opj_cparameters* %17, i32 0, i32 14
  store i32 0, i32* %tcp_numlayers, align 4, !tbaa !61
  %18 = load %struct.opj_cparameters*, %struct.opj_cparameters** %parameters.addr, align 8, !tbaa !1
  %cp_disto_alloc = getelementptr inbounds %struct.opj_cparameters, %struct.opj_cparameters* %18, i32 0, i32 5
  store i32 0, i32* %cp_disto_alloc, align 4, !tbaa !62
  %19 = load %struct.opj_cparameters*, %struct.opj_cparameters** %parameters.addr, align 8, !tbaa !1
  %cp_fixed_alloc = getelementptr inbounds %struct.opj_cparameters, %struct.opj_cparameters* %19, i32 0, i32 6
  store i32 0, i32* %cp_fixed_alloc, align 4, !tbaa !63
  %20 = load %struct.opj_cparameters*, %struct.opj_cparameters** %parameters.addr, align 8, !tbaa !1
  %cp_fixed_quality = getelementptr inbounds %struct.opj_cparameters, %struct.opj_cparameters* %20, i32 0, i32 7
  store i32 0, i32* %cp_fixed_quality, align 4, !tbaa !64
  %21 = load %struct.opj_cparameters*, %struct.opj_cparameters** %parameters.addr, align 8, !tbaa !1
  %jpip_on = getelementptr inbounds %struct.opj_cparameters, %struct.opj_cparameters* %21, i32 0, i32 56
  store i32 0, i32* %jpip_on, align 4, !tbaa !65
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @opj_setup_encoder(i8** %p_codec, %struct.opj_cparameters* %parameters, %struct.opj_image* %p_image) #0 {
entry:
  %retval = alloca i32, align 4
  %p_codec.addr = alloca i8**, align 8
  %parameters.addr = alloca %struct.opj_cparameters*, align 8
  %p_image.addr = alloca %struct.opj_image*, align 8
  %l_codec = alloca %struct.opj_codec_private*, align 8
  %cleanup.dest.slot = alloca i32
  store i8** %p_codec, i8*** %p_codec.addr, align 8, !tbaa !1
  store %struct.opj_cparameters* %parameters, %struct.opj_cparameters** %parameters.addr, align 8, !tbaa !1
  store %struct.opj_image* %p_image, %struct.opj_image** %p_image.addr, align 8, !tbaa !1
  %0 = load i8**, i8*** %p_codec.addr, align 8, !tbaa !1
  %tobool = icmp ne i8** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.opj_cparameters*, %struct.opj_cparameters** %parameters.addr, align 8, !tbaa !1
  %tobool1 = icmp ne %struct.opj_cparameters* %1, null
  br i1 %tobool1, label %land.lhs.true.2, label %if.end.6

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %2 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !1
  %tobool3 = icmp ne %struct.opj_image* %2, null
  br i1 %tobool3, label %if.then, label %if.end.6

if.then:                                          ; preds = %land.lhs.true.2
  %3 = bitcast %struct.opj_codec_private** %l_codec to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i8**, i8*** %p_codec.addr, align 8, !tbaa !1
  %5 = bitcast i8** %4 to %struct.opj_codec_private*
  store %struct.opj_codec_private* %5, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %6 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %is_decompressor = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %6, i32 0, i32 3
  %7 = load i32, i32* %is_decompressor, align 4, !tbaa !15
  %tobool4 = icmp ne i32 %7, 0
  br i1 %tobool4, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %if.then
  %8 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec_data = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %8, i32 0, i32 0
  %m_compression = bitcast %union.anon* %m_codec_data to %struct.opj_compression*
  %opj_setup_encoder = getelementptr inbounds %struct.opj_compression, %struct.opj_compression* %m_compression, i32 0, i32 5
  %9 = load void (i8*, %struct.opj_cparameters*, %struct.opj_image*, %struct.opj_event_mgr*)*, void (i8*, %struct.opj_cparameters*, %struct.opj_image*, %struct.opj_event_mgr*)** %opj_setup_encoder, align 8, !tbaa !44
  %10 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %10, i32 0, i32 1
  %11 = load i8*, i8** %m_codec, align 8, !tbaa !30
  %12 = load %struct.opj_cparameters*, %struct.opj_cparameters** %parameters.addr, align 8, !tbaa !1
  %13 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !1
  %14 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_event_mgr = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %14, i32 0, i32 2
  call void %9(i8* %11, %struct.opj_cparameters* %12, %struct.opj_image* %13, %struct.opj_event_mgr* %m_event_mgr) #5
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.5
  %15 = bitcast %struct.opj_codec_private** %l_codec to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.6

if.end.6:                                         ; preds = %cleanup.cont, %land.lhs.true.2, %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %cleanup
  %16 = load i32, i32* %retval
  ret i32 %16

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @opj_start_compress(i8** %p_codec, %struct.opj_image* %p_image, i8** %p_stream) #0 {
entry:
  %retval = alloca i32, align 4
  %p_codec.addr = alloca i8**, align 8
  %p_image.addr = alloca %struct.opj_image*, align 8
  %p_stream.addr = alloca i8**, align 8
  %l_codec = alloca %struct.opj_codec_private*, align 8
  %l_stream = alloca %struct.opj_stream_private*, align 8
  %cleanup.dest.slot = alloca i32
  store i8** %p_codec, i8*** %p_codec.addr, align 8, !tbaa !1
  store %struct.opj_image* %p_image, %struct.opj_image** %p_image.addr, align 8, !tbaa !1
  store i8** %p_stream, i8*** %p_stream.addr, align 8, !tbaa !1
  %0 = load i8**, i8*** %p_codec.addr, align 8, !tbaa !1
  %tobool = icmp ne i8** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %entry
  %1 = load i8**, i8*** %p_stream.addr, align 8, !tbaa !1
  %tobool1 = icmp ne i8** %1, null
  br i1 %tobool1, label %if.then, label %if.end.5

if.then:                                          ; preds = %land.lhs.true
  %2 = bitcast %struct.opj_codec_private** %l_codec to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8**, i8*** %p_codec.addr, align 8, !tbaa !1
  %4 = bitcast i8** %3 to %struct.opj_codec_private*
  store %struct.opj_codec_private* %4, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %5 = bitcast %struct.opj_stream_private** %l_stream to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load i8**, i8*** %p_stream.addr, align 8, !tbaa !1
  %7 = bitcast i8** %6 to %struct.opj_stream_private*
  store %struct.opj_stream_private* %7, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %8 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %is_decompressor = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %8, i32 0, i32 3
  %9 = load i32, i32* %is_decompressor, align 4, !tbaa !15
  %tobool2 = icmp ne i32 %9, 0
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  %10 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec_data = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %10, i32 0, i32 0
  %m_compression = bitcast %union.anon* %m_codec_data to %struct.opj_compression*
  %opj_start_compress = getelementptr inbounds %struct.opj_compression, %struct.opj_compression* %m_compression, i32 0, i32 0
  %11 = load i32 (i8*, %struct.opj_stream_private*, %struct.opj_image*, %struct.opj_event_mgr*)*, i32 (i8*, %struct.opj_stream_private*, %struct.opj_image*, %struct.opj_event_mgr*)** %opj_start_compress, align 8, !tbaa !41
  %12 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %12, i32 0, i32 1
  %13 = load i8*, i8** %m_codec, align 8, !tbaa !30
  %14 = load %struct.opj_stream_private*, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %15 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !1
  %16 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_event_mgr = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %16, i32 0, i32 2
  %call = call i32 %11(i8* %13, %struct.opj_stream_private* %14, %struct.opj_image* %15, %struct.opj_event_mgr* %m_event_mgr) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.3
  %17 = bitcast %struct.opj_stream_private** %l_stream to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  %18 = bitcast %struct.opj_codec_private** %l_codec to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.5

if.end.5:                                         ; preds = %cleanup.cont, %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %cleanup
  %19 = load i32, i32* %retval
  ret i32 %19

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @opj_encode(i8** %p_info, i8** %p_stream) #0 {
entry:
  %retval = alloca i32, align 4
  %p_info.addr = alloca i8**, align 8
  %p_stream.addr = alloca i8**, align 8
  %l_codec = alloca %struct.opj_codec_private*, align 8
  %l_stream = alloca %struct.opj_stream_private*, align 8
  %cleanup.dest.slot = alloca i32
  store i8** %p_info, i8*** %p_info.addr, align 8, !tbaa !1
  store i8** %p_stream, i8*** %p_stream.addr, align 8, !tbaa !1
  %0 = load i8**, i8*** %p_info.addr, align 8, !tbaa !1
  %tobool = icmp ne i8** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %entry
  %1 = load i8**, i8*** %p_stream.addr, align 8, !tbaa !1
  %tobool1 = icmp ne i8** %1, null
  br i1 %tobool1, label %if.then, label %if.end.5

if.then:                                          ; preds = %land.lhs.true
  %2 = bitcast %struct.opj_codec_private** %l_codec to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8**, i8*** %p_info.addr, align 8, !tbaa !1
  %4 = bitcast i8** %3 to %struct.opj_codec_private*
  store %struct.opj_codec_private* %4, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %5 = bitcast %struct.opj_stream_private** %l_stream to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load i8**, i8*** %p_stream.addr, align 8, !tbaa !1
  %7 = bitcast i8** %6 to %struct.opj_stream_private*
  store %struct.opj_stream_private* %7, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %8 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %is_decompressor = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %8, i32 0, i32 3
  %9 = load i32, i32* %is_decompressor, align 4, !tbaa !15
  %tobool2 = icmp ne i32 %9, 0
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  %10 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec_data = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %10, i32 0, i32 0
  %m_compression = bitcast %union.anon* %m_codec_data to %struct.opj_compression*
  %opj_encode = getelementptr inbounds %struct.opj_compression, %struct.opj_compression* %m_compression, i32 0, i32 1
  %11 = load i32 (i8*, %struct.opj_stream_private*, %struct.opj_event_mgr*)*, i32 (i8*, %struct.opj_stream_private*, %struct.opj_event_mgr*)** %opj_encode, align 8, !tbaa !38
  %12 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %12, i32 0, i32 1
  %13 = load i8*, i8** %m_codec, align 8, !tbaa !30
  %14 = load %struct.opj_stream_private*, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %15 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_event_mgr = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %15, i32 0, i32 2
  %call = call i32 %11(i8* %13, %struct.opj_stream_private* %14, %struct.opj_event_mgr* %m_event_mgr) #5
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.3
  %16 = bitcast %struct.opj_stream_private** %l_stream to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = bitcast %struct.opj_codec_private** %l_codec to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.5

if.end.5:                                         ; preds = %cleanup.cont, %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %cleanup
  %18 = load i32, i32* %retval
  ret i32 %18

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @opj_end_compress(i8** %p_codec, i8** %p_stream) #0 {
entry:
  %retval = alloca i32, align 4
  %p_codec.addr = alloca i8**, align 8
  %p_stream.addr = alloca i8**, align 8
  %l_codec = alloca %struct.opj_codec_private*, align 8
  %l_stream = alloca %struct.opj_stream_private*, align 8
  %cleanup.dest.slot = alloca i32
  store i8** %p_codec, i8*** %p_codec.addr, align 8, !tbaa !1
  store i8** %p_stream, i8*** %p_stream.addr, align 8, !tbaa !1
  %0 = load i8**, i8*** %p_codec.addr, align 8, !tbaa !1
  %tobool = icmp ne i8** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %entry
  %1 = load i8**, i8*** %p_stream.addr, align 8, !tbaa !1
  %tobool1 = icmp ne i8** %1, null
  br i1 %tobool1, label %if.then, label %if.end.5

if.then:                                          ; preds = %land.lhs.true
  %2 = bitcast %struct.opj_codec_private** %l_codec to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8**, i8*** %p_codec.addr, align 8, !tbaa !1
  %4 = bitcast i8** %3 to %struct.opj_codec_private*
  store %struct.opj_codec_private* %4, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %5 = bitcast %struct.opj_stream_private** %l_stream to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load i8**, i8*** %p_stream.addr, align 8, !tbaa !1
  %7 = bitcast i8** %6 to %struct.opj_stream_private*
  store %struct.opj_stream_private* %7, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %8 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %is_decompressor = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %8, i32 0, i32 3
  %9 = load i32, i32* %is_decompressor, align 4, !tbaa !15
  %tobool2 = icmp ne i32 %9, 0
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  %10 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec_data = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %10, i32 0, i32 0
  %m_compression = bitcast %union.anon* %m_codec_data to %struct.opj_compression*
  %opj_end_compress = getelementptr inbounds %struct.opj_compression, %struct.opj_compression* %m_compression, i32 0, i32 3
  %11 = load i32 (i8*, %struct.opj_stream_private*, %struct.opj_event_mgr*)*, i32 (i8*, %struct.opj_stream_private*, %struct.opj_event_mgr*)** %opj_end_compress, align 8, !tbaa !40
  %12 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %12, i32 0, i32 1
  %13 = load i8*, i8** %m_codec, align 8, !tbaa !30
  %14 = load %struct.opj_stream_private*, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %15 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_event_mgr = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %15, i32 0, i32 2
  %call = call i32 %11(i8* %13, %struct.opj_stream_private* %14, %struct.opj_event_mgr* %m_event_mgr) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.3
  %16 = bitcast %struct.opj_stream_private** %l_stream to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = bitcast %struct.opj_codec_private** %l_codec to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.5

if.end.5:                                         ; preds = %cleanup.cont, %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %cleanup
  %18 = load i32, i32* %retval
  ret i32 %18

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @opj_end_decompress(i8** %p_codec, i8** %p_stream) #0 {
entry:
  %retval = alloca i32, align 4
  %p_codec.addr = alloca i8**, align 8
  %p_stream.addr = alloca i8**, align 8
  %l_codec = alloca %struct.opj_codec_private*, align 8
  %l_stream = alloca %struct.opj_stream_private*, align 8
  %cleanup.dest.slot = alloca i32
  store i8** %p_codec, i8*** %p_codec.addr, align 8, !tbaa !1
  store i8** %p_stream, i8*** %p_stream.addr, align 8, !tbaa !1
  %0 = load i8**, i8*** %p_codec.addr, align 8, !tbaa !1
  %tobool = icmp ne i8** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %entry
  %1 = load i8**, i8*** %p_stream.addr, align 8, !tbaa !1
  %tobool1 = icmp ne i8** %1, null
  br i1 %tobool1, label %if.then, label %if.end.5

if.then:                                          ; preds = %land.lhs.true
  %2 = bitcast %struct.opj_codec_private** %l_codec to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8**, i8*** %p_codec.addr, align 8, !tbaa !1
  %4 = bitcast i8** %3 to %struct.opj_codec_private*
  store %struct.opj_codec_private* %4, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %5 = bitcast %struct.opj_stream_private** %l_stream to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load i8**, i8*** %p_stream.addr, align 8, !tbaa !1
  %7 = bitcast i8** %6 to %struct.opj_stream_private*
  store %struct.opj_stream_private* %7, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %8 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %is_decompressor = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %8, i32 0, i32 3
  %9 = load i32, i32* %is_decompressor, align 4, !tbaa !15
  %tobool2 = icmp ne i32 %9, 0
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %10 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec_data = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %10, i32 0, i32 0
  %m_decompression = bitcast %union.anon* %m_codec_data to %struct.opj_decompression*
  %opj_end_decompress = getelementptr inbounds %struct.opj_decompression, %struct.opj_decompression* %m_decompression, i32 0, i32 4
  %11 = load i32 (i8*, %struct.opj_stream_private*, %struct.opj_event_mgr*)*, i32 (i8*, %struct.opj_stream_private*, %struct.opj_event_mgr*)** %opj_end_decompress, align 8, !tbaa !21
  %12 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %12, i32 0, i32 1
  %13 = load i8*, i8** %m_codec, align 8, !tbaa !30
  %14 = load %struct.opj_stream_private*, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %15 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_event_mgr = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %15, i32 0, i32 2
  %call = call i32 %11(i8* %13, %struct.opj_stream_private* %14, %struct.opj_event_mgr* %m_event_mgr) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.3
  %16 = bitcast %struct.opj_stream_private** %l_stream to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = bitcast %struct.opj_codec_private** %l_codec to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  br label %return

if.end.5:                                         ; preds = %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %cleanup
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define i32 @opj_set_MCT(%struct.opj_cparameters* %parameters, float* %pEncodingMatrix, i32* %p_dc_shift, i32 %pNbComp) #0 {
entry:
  %retval = alloca i32, align 4
  %parameters.addr = alloca %struct.opj_cparameters*, align 8
  %pEncodingMatrix.addr = alloca float*, align 8
  %p_dc_shift.addr = alloca i32*, align 8
  %pNbComp.addr = alloca i32, align 4
  %l_matrix_size = alloca i32, align 4
  %l_dc_shift_size = alloca i32, align 4
  %l_mct_total_size = alloca i32, align 4
  %rsiz = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.opj_cparameters* %parameters, %struct.opj_cparameters** %parameters.addr, align 8, !tbaa !1
  store float* %pEncodingMatrix, float** %pEncodingMatrix.addr, align 8, !tbaa !1
  store i32* %p_dc_shift, i32** %p_dc_shift.addr, align 8, !tbaa !1
  store i32 %pNbComp, i32* %pNbComp.addr, align 4, !tbaa !37
  %0 = bitcast i32* %l_matrix_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %pNbComp.addr, align 4, !tbaa !37
  %2 = load i32, i32* %pNbComp.addr, align 4, !tbaa !37
  %mul = mul i32 %1, %2
  %conv = zext i32 %mul to i64
  %mul1 = mul i64 %conv, 4
  %conv2 = trunc i64 %mul1 to i32
  store i32 %conv2, i32* %l_matrix_size, align 4, !tbaa !37
  %3 = bitcast i32* %l_dc_shift_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %pNbComp.addr, align 4, !tbaa !37
  %conv3 = zext i32 %4 to i64
  %mul4 = mul i64 %conv3, 4
  %conv5 = trunc i64 %mul4 to i32
  store i32 %conv5, i32* %l_dc_shift_size, align 4, !tbaa !37
  %5 = bitcast i32* %l_mct_total_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %l_matrix_size, align 4, !tbaa !37
  %7 = load i32, i32* %l_dc_shift_size, align 4, !tbaa !37
  %add = add i32 %6, %7
  store i32 %add, i32* %l_mct_total_size, align 4, !tbaa !37
  %8 = bitcast i32* %rsiz to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.opj_cparameters*, %struct.opj_cparameters** %parameters.addr, align 8, !tbaa !1
  %cp_rsiz = getelementptr inbounds %struct.opj_cparameters, %struct.opj_cparameters* %9, i32 0, i32 52
  %10 = load i32, i32* %cp_rsiz, align 4, !tbaa !49
  %or = or i32 %10, 33024
  store i32 %or, i32* %rsiz, align 4, !tbaa !37
  %11 = load i32, i32* %rsiz, align 4, !tbaa !37
  %12 = load %struct.opj_cparameters*, %struct.opj_cparameters** %parameters.addr, align 8, !tbaa !1
  %cp_rsiz6 = getelementptr inbounds %struct.opj_cparameters, %struct.opj_cparameters* %12, i32 0, i32 52
  store i32 %11, i32* %cp_rsiz6, align 4, !tbaa !49
  %13 = load %struct.opj_cparameters*, %struct.opj_cparameters** %parameters.addr, align 8, !tbaa !1
  %irreversible = getelementptr inbounds %struct.opj_cparameters, %struct.opj_cparameters* %13, i32 0, i32 21
  store i32 1, i32* %irreversible, align 4, !tbaa !66
  %14 = load %struct.opj_cparameters*, %struct.opj_cparameters** %parameters.addr, align 8, !tbaa !1
  %tcp_mct = getelementptr inbounds %struct.opj_cparameters, %struct.opj_cparameters* %14, i32 0, i32 55
  store i8 2, i8* %tcp_mct, align 1, !tbaa !67
  %15 = load i32, i32* %l_mct_total_size, align 4, !tbaa !37
  %conv7 = zext i32 %15 to i64
  %cmp = icmp uge i64 %conv7, -256
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %16 = load i32, i32* %l_mct_total_size, align 4, !tbaa !37
  %conv9 = zext i32 %16 to i64
  %call = call noalias i8* @malloc(i64 %conv9) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %call, %cond.false ]
  %17 = load %struct.opj_cparameters*, %struct.opj_cparameters** %parameters.addr, align 8, !tbaa !1
  %mct_data = getelementptr inbounds %struct.opj_cparameters, %struct.opj_cparameters* %17, i32 0, i32 57
  store i8* %cond, i8** %mct_data, align 8, !tbaa !68
  %18 = load %struct.opj_cparameters*, %struct.opj_cparameters** %parameters.addr, align 8, !tbaa !1
  %mct_data10 = getelementptr inbounds %struct.opj_cparameters, %struct.opj_cparameters* %18, i32 0, i32 57
  %19 = load i8*, i8** %mct_data10, align 8, !tbaa !68
  %tobool = icmp ne i8* %19, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %20 = load %struct.opj_cparameters*, %struct.opj_cparameters** %parameters.addr, align 8, !tbaa !1
  %mct_data11 = getelementptr inbounds %struct.opj_cparameters, %struct.opj_cparameters* %20, i32 0, i32 57
  %21 = load i8*, i8** %mct_data11, align 8, !tbaa !68
  %22 = load float*, float** %pEncodingMatrix.addr, align 8, !tbaa !1
  %23 = bitcast float* %22 to i8*
  %24 = load i32, i32* %l_matrix_size, align 4, !tbaa !37
  %conv12 = zext i32 %24 to i64
  %call13 = call i8* @memcpy(i8* %21, i8* %23, i64 %conv12) #4
  %25 = load %struct.opj_cparameters*, %struct.opj_cparameters** %parameters.addr, align 8, !tbaa !1
  %mct_data14 = getelementptr inbounds %struct.opj_cparameters, %struct.opj_cparameters* %25, i32 0, i32 57
  %26 = load i8*, i8** %mct_data14, align 8, !tbaa !68
  %27 = load i32, i32* %l_matrix_size, align 4, !tbaa !37
  %idx.ext = zext i32 %27 to i64
  %add.ptr = getelementptr inbounds i8, i8* %26, i64 %idx.ext
  %28 = load i32*, i32** %p_dc_shift.addr, align 8, !tbaa !1
  %29 = bitcast i32* %28 to i8*
  %30 = load i32, i32* %l_dc_shift_size, align 4, !tbaa !37
  %conv15 = zext i32 %30 to i64
  %call16 = call i8* @memcpy(i8* %add.ptr, i8* %29, i64 %conv15) #4
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %31 = bitcast i32* %rsiz to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast i32* %l_mct_total_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast i32* %l_dc_shift_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast i32* %l_matrix_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define i32 @opj_write_tile(i8** %p_codec, i32 %p_tile_index, i8* %p_data, i32 %p_data_size, i8** %p_stream) #0 {
entry:
  %retval = alloca i32, align 4
  %p_codec.addr = alloca i8**, align 8
  %p_tile_index.addr = alloca i32, align 4
  %p_data.addr = alloca i8*, align 8
  %p_data_size.addr = alloca i32, align 4
  %p_stream.addr = alloca i8**, align 8
  %l_codec = alloca %struct.opj_codec_private*, align 8
  %l_stream = alloca %struct.opj_stream_private*, align 8
  %cleanup.dest.slot = alloca i32
  store i8** %p_codec, i8*** %p_codec.addr, align 8, !tbaa !1
  store i32 %p_tile_index, i32* %p_tile_index.addr, align 4, !tbaa !37
  store i8* %p_data, i8** %p_data.addr, align 8, !tbaa !1
  store i32 %p_data_size, i32* %p_data_size.addr, align 4, !tbaa !37
  store i8** %p_stream, i8*** %p_stream.addr, align 8, !tbaa !1
  %0 = load i8**, i8*** %p_codec.addr, align 8, !tbaa !1
  %tobool = icmp ne i8** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %entry
  %1 = load i8**, i8*** %p_stream.addr, align 8, !tbaa !1
  %tobool1 = icmp ne i8** %1, null
  br i1 %tobool1, label %land.lhs.true.2, label %if.end.7

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %2 = load i8*, i8** %p_data.addr, align 8, !tbaa !1
  %tobool3 = icmp ne i8* %2, null
  br i1 %tobool3, label %if.then, label %if.end.7

if.then:                                          ; preds = %land.lhs.true.2
  %3 = bitcast %struct.opj_codec_private** %l_codec to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i8**, i8*** %p_codec.addr, align 8, !tbaa !1
  %5 = bitcast i8** %4 to %struct.opj_codec_private*
  store %struct.opj_codec_private* %5, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %6 = bitcast %struct.opj_stream_private** %l_stream to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i8**, i8*** %p_stream.addr, align 8, !tbaa !1
  %8 = bitcast i8** %7 to %struct.opj_stream_private*
  store %struct.opj_stream_private* %8, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %9 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %is_decompressor = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %9, i32 0, i32 3
  %10 = load i32, i32* %is_decompressor, align 4, !tbaa !15
  %tobool4 = icmp ne i32 %10, 0
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %11 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec_data = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %11, i32 0, i32 0
  %m_compression = bitcast %union.anon* %m_codec_data to %struct.opj_compression*
  %opj_write_tile = getelementptr inbounds %struct.opj_compression, %struct.opj_compression* %m_compression, i32 0, i32 2
  %12 = load i32 (i8*, i32, i8*, i32, %struct.opj_stream_private*, %struct.opj_event_mgr*)*, i32 (i8*, i32, i8*, i32, %struct.opj_stream_private*, %struct.opj_event_mgr*)** %opj_write_tile, align 8, !tbaa !42
  %13 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %13, i32 0, i32 1
  %14 = load i8*, i8** %m_codec, align 8, !tbaa !30
  %15 = load i32, i32* %p_tile_index.addr, align 4, !tbaa !37
  %16 = load i8*, i8** %p_data.addr, align 8, !tbaa !1
  %17 = load i32, i32* %p_data_size.addr, align 4, !tbaa !37
  %18 = load %struct.opj_stream_private*, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %19 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_event_mgr = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %19, i32 0, i32 2
  %call = call i32 %12(i8* %14, i32 %15, i8* %16, i32 %17, %struct.opj_stream_private* %18, %struct.opj_event_mgr* %m_event_mgr) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.5
  %20 = bitcast %struct.opj_stream_private** %l_stream to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %21 = bitcast %struct.opj_codec_private** %l_codec to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  br label %return

if.end.7:                                         ; preds = %land.lhs.true.2, %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.7, %cleanup
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define void @opj_destroy_codec(i8** %p_codec) #0 {
entry:
  %p_codec.addr = alloca i8**, align 8
  %l_codec = alloca %struct.opj_codec_private*, align 8
  store i8** %p_codec, i8*** %p_codec.addr, align 8, !tbaa !1
  %0 = load i8**, i8*** %p_codec.addr, align 8, !tbaa !1
  %tobool = icmp ne i8** %0, null
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.opj_codec_private** %l_codec to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i8**, i8*** %p_codec.addr, align 8, !tbaa !1
  %3 = bitcast i8** %2 to %struct.opj_codec_private*
  store %struct.opj_codec_private* %3, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %4 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %is_decompressor = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %4, i32 0, i32 3
  %5 = load i32, i32* %is_decompressor, align 4, !tbaa !15
  %tobool1 = icmp ne i32 %5, 0
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %6 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec_data = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %6, i32 0, i32 0
  %m_decompression = bitcast %union.anon* %m_codec_data to %struct.opj_decompression*
  %opj_destroy = getelementptr inbounds %struct.opj_decompression, %struct.opj_decompression* %m_decompression, i32 0, i32 5
  %7 = load void (i8*)*, void (i8*)** %opj_destroy, align 8, !tbaa !23
  %8 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %8, i32 0, i32 1
  %9 = load i8*, i8** %m_codec, align 8, !tbaa !30
  call void %7(i8* %9) #5
  br label %if.end

if.else:                                          ; preds = %if.then
  %10 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec_data3 = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %10, i32 0, i32 0
  %m_compression = bitcast %union.anon* %m_codec_data3 to %struct.opj_compression*
  %opj_destroy4 = getelementptr inbounds %struct.opj_compression, %struct.opj_compression* %m_compression, i32 0, i32 4
  %11 = load void (i8*)*, void (i8*)** %opj_destroy4, align 8, !tbaa !43
  %12 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec5 = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %12, i32 0, i32 1
  %13 = load i8*, i8** %m_codec5, align 8, !tbaa !30
  call void %11(i8* %13) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  %14 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec6 = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %14, i32 0, i32 1
  store i8* null, i8** %m_codec6, align 8, !tbaa !30
  %15 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %16 = bitcast %struct.opj_codec_private* %15 to i8*
  call void @free(i8* %16) #4
  %17 = bitcast %struct.opj_codec_private** %l_codec to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @opj_dump_codec(i8** %p_codec, i32 %info_flag, %struct._IO_FILE* %output_stream) #0 {
entry:
  %p_codec.addr = alloca i8**, align 8
  %info_flag.addr = alloca i32, align 4
  %output_stream.addr = alloca %struct._IO_FILE*, align 8
  %l_codec = alloca %struct.opj_codec_private*, align 8
  store i8** %p_codec, i8*** %p_codec.addr, align 8, !tbaa !1
  store i32 %info_flag, i32* %info_flag.addr, align 4, !tbaa !37
  store %struct._IO_FILE* %output_stream, %struct._IO_FILE** %output_stream.addr, align 8, !tbaa !1
  %0 = load i8**, i8*** %p_codec.addr, align 8, !tbaa !1
  %tobool = icmp ne i8** %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.opj_codec_private** %l_codec to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i8**, i8*** %p_codec.addr, align 8, !tbaa !1
  %3 = bitcast i8** %2 to %struct.opj_codec_private*
  store %struct.opj_codec_private* %3, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %4 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %opj_dump_codec = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %4, i32 0, i32 4
  %5 = load void (i8*, i32, %struct._IO_FILE*)*, void (i8*, i32, %struct._IO_FILE*)** %opj_dump_codec, align 8, !tbaa !16
  %6 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %6, i32 0, i32 1
  %7 = load i8*, i8** %m_codec, align 8, !tbaa !30
  %8 = load i32, i32* %info_flag.addr, align 4, !tbaa !37
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %output_stream.addr, align 8, !tbaa !1
  call void %5(i8* %7, i32 %8, %struct._IO_FILE* %9) #5
  %10 = bitcast %struct.opj_codec_private** %l_codec to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  br label %return

if.end:                                           ; preds = %entry
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i32 0, i32 0)) #5
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.opj_codestream_info_v2* @opj_get_cstr_info(i8** %p_codec) #0 {
entry:
  %retval = alloca %struct.opj_codestream_info_v2*, align 8
  %p_codec.addr = alloca i8**, align 8
  %l_codec = alloca %struct.opj_codec_private*, align 8
  store i8** %p_codec, i8*** %p_codec.addr, align 8, !tbaa !1
  %0 = load i8**, i8*** %p_codec.addr, align 8, !tbaa !1
  %tobool = icmp ne i8** %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.opj_codec_private** %l_codec to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i8**, i8*** %p_codec.addr, align 8, !tbaa !1
  %3 = bitcast i8** %2 to %struct.opj_codec_private*
  store %struct.opj_codec_private* %3, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %4 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %opj_get_codec_info = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %4, i32 0, i32 5
  %5 = load %struct.opj_codestream_info_v2* (i8*)*, %struct.opj_codestream_info_v2* (i8*)** %opj_get_codec_info, align 8, !tbaa !17
  %6 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %6, i32 0, i32 1
  %7 = load i8*, i8** %m_codec, align 8, !tbaa !30
  %call = call %struct.opj_codestream_info_v2* %5(i8* %7) #5
  store %struct.opj_codestream_info_v2* %call, %struct.opj_codestream_info_v2** %retval
  %8 = bitcast %struct.opj_codec_private** %l_codec to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  br label %return

if.end:                                           ; preds = %entry
  store %struct.opj_codestream_info_v2* null, %struct.opj_codestream_info_v2** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load %struct.opj_codestream_info_v2*, %struct.opj_codestream_info_v2** %retval
  ret %struct.opj_codestream_info_v2* %9
}

; Function Attrs: nounwind uwtable
define void @opj_destroy_cstr_info(%struct.opj_codestream_info_v2** %cstr_info) #0 {
entry:
  %cstr_info.addr = alloca %struct.opj_codestream_info_v2**, align 8
  store %struct.opj_codestream_info_v2** %cstr_info, %struct.opj_codestream_info_v2*** %cstr_info.addr, align 8, !tbaa !1
  %0 = load %struct.opj_codestream_info_v2**, %struct.opj_codestream_info_v2*** %cstr_info.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.opj_codestream_info_v2** %0, null
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %1 = load %struct.opj_codestream_info_v2**, %struct.opj_codestream_info_v2*** %cstr_info.addr, align 8, !tbaa !1
  %2 = load %struct.opj_codestream_info_v2*, %struct.opj_codestream_info_v2** %1, align 8, !tbaa !1
  %m_default_tile_info = getelementptr inbounds %struct.opj_codestream_info_v2, %struct.opj_codestream_info_v2* %2, i32 0, i32 7
  %tccp_info = getelementptr inbounds %struct.opj_tile_v2_info, %struct.opj_tile_v2_info* %m_default_tile_info, i32 0, i32 5
  %3 = load %struct.opj_tccp_info*, %struct.opj_tccp_info** %tccp_info, align 8, !tbaa !69
  %tobool1 = icmp ne %struct.opj_tccp_info* %3, null
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %4 = load %struct.opj_codestream_info_v2**, %struct.opj_codestream_info_v2*** %cstr_info.addr, align 8, !tbaa !1
  %5 = load %struct.opj_codestream_info_v2*, %struct.opj_codestream_info_v2** %4, align 8, !tbaa !1
  %m_default_tile_info3 = getelementptr inbounds %struct.opj_codestream_info_v2, %struct.opj_codestream_info_v2* %5, i32 0, i32 7
  %tccp_info4 = getelementptr inbounds %struct.opj_tile_v2_info, %struct.opj_tile_v2_info* %m_default_tile_info3, i32 0, i32 5
  %6 = load %struct.opj_tccp_info*, %struct.opj_tccp_info** %tccp_info4, align 8, !tbaa !69
  %7 = bitcast %struct.opj_tccp_info* %6 to i8*
  call void @free(i8* %7) #4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %8 = load %struct.opj_codestream_info_v2**, %struct.opj_codestream_info_v2*** %cstr_info.addr, align 8, !tbaa !1
  %9 = load %struct.opj_codestream_info_v2*, %struct.opj_codestream_info_v2** %8, align 8, !tbaa !1
  %tile_info = getelementptr inbounds %struct.opj_codestream_info_v2, %struct.opj_codestream_info_v2* %9, i32 0, i32 8
  %10 = load %struct.opj_tile_v2_info*, %struct.opj_tile_v2_info** %tile_info, align 8, !tbaa !72
  %tobool5 = icmp ne %struct.opj_tile_v2_info* %10, null
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  %11 = load %struct.opj_codestream_info_v2**, %struct.opj_codestream_info_v2*** %cstr_info.addr, align 8, !tbaa !1
  %12 = load %struct.opj_codestream_info_v2*, %struct.opj_codestream_info_v2** %11, align 8, !tbaa !1
  %13 = bitcast %struct.opj_codestream_info_v2* %12 to i8*
  call void @free(i8* %13) #4
  %14 = load %struct.opj_codestream_info_v2**, %struct.opj_codestream_info_v2*** %cstr_info.addr, align 8, !tbaa !1
  store %struct.opj_codestream_info_v2* null, %struct.opj_codestream_info_v2** %14, align 8, !tbaa !1
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.opj_codestream_index* @opj_get_cstr_index(i8** %p_codec) #0 {
entry:
  %retval = alloca %struct.opj_codestream_index*, align 8
  %p_codec.addr = alloca i8**, align 8
  %l_codec = alloca %struct.opj_codec_private*, align 8
  store i8** %p_codec, i8*** %p_codec.addr, align 8, !tbaa !1
  %0 = load i8**, i8*** %p_codec.addr, align 8, !tbaa !1
  %tobool = icmp ne i8** %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.opj_codec_private** %l_codec to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i8**, i8*** %p_codec.addr, align 8, !tbaa !1
  %3 = bitcast i8** %2 to %struct.opj_codec_private*
  store %struct.opj_codec_private* %3, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %4 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %opj_get_codec_index = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %4, i32 0, i32 6
  %5 = load %struct.opj_codestream_index* (i8*)*, %struct.opj_codestream_index* (i8*)** %opj_get_codec_index, align 8, !tbaa !18
  %6 = load %struct.opj_codec_private*, %struct.opj_codec_private** %l_codec, align 8, !tbaa !1
  %m_codec = getelementptr inbounds %struct.opj_codec_private, %struct.opj_codec_private* %6, i32 0, i32 1
  %7 = load i8*, i8** %m_codec, align 8, !tbaa !30
  %call = call %struct.opj_codestream_index* %5(i8* %7) #5
  store %struct.opj_codestream_index* %call, %struct.opj_codestream_index** %retval
  %8 = bitcast %struct.opj_codec_private** %l_codec to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  br label %return

if.end:                                           ; preds = %entry
  store %struct.opj_codestream_index* null, %struct.opj_codestream_index** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load %struct.opj_codestream_index*, %struct.opj_codestream_index** %retval
  ret %struct.opj_codestream_index* %9
}

; Function Attrs: nounwind uwtable
define void @opj_destroy_cstr_index(%struct.opj_codestream_index** %p_cstr_index) #0 {
entry:
  %p_cstr_index.addr = alloca %struct.opj_codestream_index**, align 8
  store %struct.opj_codestream_index** %p_cstr_index, %struct.opj_codestream_index*** %p_cstr_index.addr, align 8, !tbaa !1
  %0 = load %struct.opj_codestream_index**, %struct.opj_codestream_index*** %p_cstr_index.addr, align 8, !tbaa !1
  %1 = load %struct.opj_codestream_index*, %struct.opj_codestream_index** %0, align 8, !tbaa !1
  %tobool = icmp ne %struct.opj_codestream_index* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.opj_codestream_index**, %struct.opj_codestream_index*** %p_cstr_index.addr, align 8, !tbaa !1
  %3 = load %struct.opj_codestream_index*, %struct.opj_codestream_index** %2, align 8, !tbaa !1
  call void @j2k_destroy_cstr_index(%struct.opj_codestream_index* %3) #5
  %4 = load %struct.opj_codestream_index**, %struct.opj_codestream_index*** %p_cstr_index.addr, align 8, !tbaa !1
  store %struct.opj_codestream_index* null, %struct.opj_codestream_index** %4, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @j2k_destroy_cstr_index(%struct.opj_codestream_index*) #3

; Function Attrs: nounwind uwtable
define i8** @opj_stream_create_default_file_stream(%struct._IO_FILE* %p_file, i32 %p_is_read_stream) #0 {
entry:
  %p_file.addr = alloca %struct._IO_FILE*, align 8
  %p_is_read_stream.addr = alloca i32, align 4
  store %struct._IO_FILE* %p_file, %struct._IO_FILE** %p_file.addr, align 8, !tbaa !1
  store i32 %p_is_read_stream, i32* %p_is_read_stream.addr, align 4, !tbaa !37
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %p_file.addr, align 8, !tbaa !1
  %1 = load i32, i32* %p_is_read_stream.addr, align 4, !tbaa !37
  %call = call i8** @opj_stream_create_file_stream(%struct._IO_FILE* %0, i64 1048576, i32 %1) #5
  ret i8** %call
}

; Function Attrs: nounwind uwtable
define i8** @opj_stream_create_file_stream(%struct._IO_FILE* %p_file, i64 %p_size, i32 %p_is_read_stream) #0 {
entry:
  %retval = alloca i8**, align 8
  %p_file.addr = alloca %struct._IO_FILE*, align 8
  %p_size.addr = alloca i64, align 8
  %p_is_read_stream.addr = alloca i32, align 4
  %l_stream = alloca i8**, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._IO_FILE* %p_file, %struct._IO_FILE** %p_file.addr, align 8, !tbaa !1
  store i64 %p_size, i64* %p_size.addr, align 8, !tbaa !73
  store i32 %p_is_read_stream, i32* %p_is_read_stream.addr, align 4, !tbaa !37
  %0 = bitcast i8*** %l_stream to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i8** null, i8*** %l_stream, align 8, !tbaa !1
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %p_file.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct._IO_FILE* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8** null, i8*** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %p_size.addr, align 8, !tbaa !73
  %3 = load i32, i32* %p_is_read_stream.addr, align 4, !tbaa !37
  %call = call i8** @opj_stream_create(i64 %2, i32 %3) #5
  store i8** %call, i8*** %l_stream, align 8, !tbaa !1
  %4 = load i8**, i8*** %l_stream, align 8, !tbaa !1
  %tobool1 = icmp ne i8** %4, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store i8** null, i8*** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %5 = load i8**, i8*** %l_stream, align 8, !tbaa !1
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %p_file.addr, align 8, !tbaa !1
  %7 = bitcast %struct._IO_FILE* %6 to i8*
  call void @opj_stream_set_user_data(i8** %5, i8* %7) #5
  %8 = load i8**, i8*** %l_stream, align 8, !tbaa !1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %p_file.addr, align 8, !tbaa !1
  %call4 = call i64 @opj_get_data_length_from_file(%struct._IO_FILE* %9) #5
  call void @opj_stream_set_user_data_length(i8** %8, i64 %call4) #5
  %10 = load i8**, i8*** %l_stream, align 8, !tbaa !1
  call void @opj_stream_set_read_function(i8** %10, i64 (i8*, i64, i8*)* bitcast (i64 (i8*, i64, %struct._IO_FILE*)* @opj_read_from_file to i64 (i8*, i64, i8*)*)) #5
  %11 = load i8**, i8*** %l_stream, align 8, !tbaa !1
  call void @opj_stream_set_write_function(i8** %11, i64 (i8*, i64, i8*)* bitcast (i64 (i8*, i64, %struct._IO_FILE*)* @opj_write_from_file to i64 (i8*, i64, i8*)*)) #5
  %12 = load i8**, i8*** %l_stream, align 8, !tbaa !1
  call void @opj_stream_set_skip_function(i8** %12, i64 (i64, i8*)* bitcast (i64 (i64, %struct._IO_FILE*)* @opj_skip_from_file to i64 (i64, i8*)*)) #5
  %13 = load i8**, i8*** %l_stream, align 8, !tbaa !1
  call void @opj_stream_set_seek_function(i8** %13, i32 (i64, i8*)* bitcast (i32 (i64, %struct._IO_FILE*)* @opj_seek_from_file to i32 (i64, i8*)*)) #5
  %14 = load i8**, i8*** %l_stream, align 8, !tbaa !1
  store i8** %14, i8*** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.3, %if.then.2, %if.then
  %15 = bitcast i8*** %l_stream to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = load i8**, i8*** %retval
  ret i8** %16
}

; Function Attrs: nounwind uwtable
define i8** @opj_stream_create_default_file_stream_v3(i8* %fname, i32 %p_is_read_stream) #0 {
entry:
  %fname.addr = alloca i8*, align 8
  %p_is_read_stream.addr = alloca i32, align 4
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  store i32 %p_is_read_stream, i32* %p_is_read_stream.addr, align 4, !tbaa !37
  %0 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %1 = load i32, i32* %p_is_read_stream.addr, align 4, !tbaa !37
  %call = call i8** @opj_stream_create_file_stream_v3(i8* %0, i64 1048576, i32 %1) #5
  ret i8** %call
}

; Function Attrs: nounwind uwtable
define i8** @opj_stream_create_file_stream_v3(i8* %fname, i64 %p_size, i32 %p_is_read_stream) #0 {
entry:
  %retval = alloca i8**, align 8
  %fname.addr = alloca i8*, align 8
  %p_size.addr = alloca i64, align 8
  %p_is_read_stream.addr = alloca i32, align 4
  %l_stream = alloca i8**, align 8
  %p_file = alloca %struct._IO_FILE*, align 8
  %mode = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  store i64 %p_size, i64* %p_size.addr, align 8, !tbaa !73
  store i32 %p_is_read_stream, i32* %p_is_read_stream.addr, align 4, !tbaa !37
  %0 = bitcast i8*** %l_stream to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i8** null, i8*** %l_stream, align 8, !tbaa !1
  %1 = bitcast %struct._IO_FILE** %p_file to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i8** %mode to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8** null, i8*** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %p_is_read_stream.addr, align 4, !tbaa !37
  %tobool1 = icmp ne i32 %4, 0
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8** %mode, align 8, !tbaa !1
  br label %if.end.3

if.else:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8** %mode, align 8, !tbaa !1
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.then.2
  %5 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %mode, align 8, !tbaa !1
  %call = call %struct._IO_FILE* @fopen(i8* %5, i8* %6) #5
  store %struct._IO_FILE* %call, %struct._IO_FILE** %p_file, align 8, !tbaa !1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %p_file, align 8, !tbaa !1
  %tobool4 = icmp ne %struct._IO_FILE* %7, null
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end.3
  store i8** null, i8*** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end.3
  %8 = load i64, i64* %p_size.addr, align 8, !tbaa !73
  %9 = load i32, i32* %p_is_read_stream.addr, align 4, !tbaa !37
  %call7 = call i8** @opj_stream_create(i64 %8, i32 %9) #5
  store i8** %call7, i8*** %l_stream, align 8, !tbaa !1
  %10 = load i8**, i8*** %l_stream, align 8, !tbaa !1
  %tobool8 = icmp ne i8** %10, null
  br i1 %tobool8, label %if.end.11, label %if.then.9

if.then.9:                                        ; preds = %if.end.6
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %p_file, align 8, !tbaa !1
  %call10 = call i32 @fclose(%struct._IO_FILE* %11) #5
  store i8** null, i8*** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end.6
  %12 = load i8**, i8*** %l_stream, align 8, !tbaa !1
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %p_file, align 8, !tbaa !1
  %14 = bitcast %struct._IO_FILE* %13 to i8*
  call void @opj_stream_set_user_data(i8** %12, i8* %14) #5
  %15 = load i8**, i8*** %l_stream, align 8, !tbaa !1
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %p_file, align 8, !tbaa !1
  %call12 = call i64 @opj_get_data_length_from_file(%struct._IO_FILE* %16) #5
  call void @opj_stream_set_user_data_length(i8** %15, i64 %call12) #5
  %17 = load i8**, i8*** %l_stream, align 8, !tbaa !1
  call void @opj_stream_set_read_function(i8** %17, i64 (i8*, i64, i8*)* bitcast (i64 (i8*, i64, %struct._IO_FILE*)* @opj_read_from_file to i64 (i8*, i64, i8*)*)) #5
  %18 = load i8**, i8*** %l_stream, align 8, !tbaa !1
  call void @opj_stream_set_write_function(i8** %18, i64 (i8*, i64, i8*)* bitcast (i64 (i8*, i64, %struct._IO_FILE*)* @opj_write_from_file to i64 (i8*, i64, i8*)*)) #5
  %19 = load i8**, i8*** %l_stream, align 8, !tbaa !1
  call void @opj_stream_set_skip_function(i8** %19, i64 (i64, i8*)* bitcast (i64 (i64, %struct._IO_FILE*)* @opj_skip_from_file to i64 (i64, i8*)*)) #5
  %20 = load i8**, i8*** %l_stream, align 8, !tbaa !1
  call void @opj_stream_set_seek_function(i8** %20, i32 (i64, i8*)* bitcast (i32 (i64, %struct._IO_FILE*)* @opj_seek_from_file to i32 (i64, i8*)*)) #5
  %21 = load i8**, i8*** %l_stream, align 8, !tbaa !1
  store i8** %21, i8*** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then.9, %if.then.5, %if.then
  %22 = bitcast i8** %mode to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast %struct._IO_FILE** %p_file to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast i8*** %l_stream to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = load i8**, i8*** %retval
  ret i8** %25
}

declare i8** @opj_stream_create(i64, i32) #3

declare void @opj_stream_set_user_data(i8**, i8*) #3

declare void @opj_stream_set_user_data_length(i8**, i64) #3

; Function Attrs: nounwind uwtable
define internal i64 @opj_get_data_length_from_file(%struct._IO_FILE* %p_file) #0 {
entry:
  %p_file.addr = alloca %struct._IO_FILE*, align 8
  %file_length = alloca i64, align 8
  store %struct._IO_FILE* %p_file, %struct._IO_FILE** %p_file.addr, align 8, !tbaa !1
  %0 = bitcast i64* %file_length to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i64 0, i64* %file_length, align 8, !tbaa !73
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %p_file.addr, align 8, !tbaa !1
  %call = call i32 @fseek(%struct._IO_FILE* %1, i64 0, i32 2) #5
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %p_file.addr, align 8, !tbaa !1
  %call1 = call i64 @ftell(%struct._IO_FILE* %2) #5
  store i64 %call1, i64* %file_length, align 8, !tbaa !73
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %p_file.addr, align 8, !tbaa !1
  %call2 = call i32 @fseek(%struct._IO_FILE* %3, i64 0, i32 0) #5
  %4 = load i64, i64* %file_length, align 8, !tbaa !73
  %5 = bitcast i64* %file_length to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret i64 %4
}

declare void @opj_stream_set_read_function(i8**, i64 (i8*, i64, i8*)*) #3

; Function Attrs: nounwind uwtable
define internal i64 @opj_read_from_file(i8* %p_buffer, i64 %p_nb_bytes, %struct._IO_FILE* %p_file) #0 {
entry:
  %p_buffer.addr = alloca i8*, align 8
  %p_nb_bytes.addr = alloca i64, align 8
  %p_file.addr = alloca %struct._IO_FILE*, align 8
  %l_nb_read = alloca i64, align 8
  store i8* %p_buffer, i8** %p_buffer.addr, align 8, !tbaa !1
  store i64 %p_nb_bytes, i64* %p_nb_bytes.addr, align 8, !tbaa !73
  store %struct._IO_FILE* %p_file, %struct._IO_FILE** %p_file.addr, align 8, !tbaa !1
  %0 = bitcast i64* %l_nb_read to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %p_buffer.addr, align 8, !tbaa !1
  %2 = load i64, i64* %p_nb_bytes.addr, align 8, !tbaa !73
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %p_file.addr, align 8, !tbaa !1
  %call = call i64 @fread(i8* %1, i64 1, i64 %2, %struct._IO_FILE* %3) #5
  store i64 %call, i64* %l_nb_read, align 8, !tbaa !73
  %4 = load i64, i64* %l_nb_read, align 8, !tbaa !73
  %tobool = icmp ne i64 %4, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load i64, i64* %l_nb_read, align 8, !tbaa !73
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %5, %cond.true ], [ -1, %cond.false ]
  %6 = bitcast i64* %l_nb_read to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  ret i64 %cond
}

declare void @opj_stream_set_write_function(i8**, i64 (i8*, i64, i8*)*) #3

; Function Attrs: nounwind uwtable
define internal i64 @opj_write_from_file(i8* %p_buffer, i64 %p_nb_bytes, %struct._IO_FILE* %p_file) #0 {
entry:
  %p_buffer.addr = alloca i8*, align 8
  %p_nb_bytes.addr = alloca i64, align 8
  %p_file.addr = alloca %struct._IO_FILE*, align 8
  store i8* %p_buffer, i8** %p_buffer.addr, align 8, !tbaa !1
  store i64 %p_nb_bytes, i64* %p_nb_bytes.addr, align 8, !tbaa !73
  store %struct._IO_FILE* %p_file, %struct._IO_FILE** %p_file.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %p_buffer.addr, align 8, !tbaa !1
  %1 = load i64, i64* %p_nb_bytes.addr, align 8, !tbaa !73
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %p_file.addr, align 8, !tbaa !1
  %call = call i64 @fwrite(i8* %0, i64 1, i64 %1, %struct._IO_FILE* %2) #5
  ret i64 %call
}

declare void @opj_stream_set_skip_function(i8**, i64 (i64, i8*)*) #3

; Function Attrs: nounwind uwtable
define internal i64 @opj_skip_from_file(i64 %p_nb_bytes, %struct._IO_FILE* %p_user_data) #0 {
entry:
  %retval = alloca i64, align 8
  %p_nb_bytes.addr = alloca i64, align 8
  %p_user_data.addr = alloca %struct._IO_FILE*, align 8
  store i64 %p_nb_bytes, i64* %p_nb_bytes.addr, align 8, !tbaa !73
  store %struct._IO_FILE* %p_user_data, %struct._IO_FILE** %p_user_data.addr, align 8, !tbaa !1
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %p_user_data.addr, align 8, !tbaa !1
  %1 = load i64, i64* %p_nb_bytes.addr, align 8, !tbaa !73
  %call = call i32 @fseek(%struct._IO_FILE* %0, i64 %1, i32 1) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %p_nb_bytes.addr, align 8, !tbaa !73
  store i64 %2, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i64, i64* %retval
  ret i64 %3
}

declare void @opj_stream_set_seek_function(i8**, i32 (i64, i8*)*) #3

; Function Attrs: nounwind uwtable
define internal i32 @opj_seek_from_file(i64 %p_nb_bytes, %struct._IO_FILE* %p_user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %p_nb_bytes.addr = alloca i64, align 8
  %p_user_data.addr = alloca %struct._IO_FILE*, align 8
  store i64 %p_nb_bytes, i64* %p_nb_bytes.addr, align 8, !tbaa !73
  store %struct._IO_FILE* %p_user_data, %struct._IO_FILE** %p_user_data.addr, align 8, !tbaa !1
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %p_user_data.addr, align 8, !tbaa !1
  %1 = load i64, i64* %p_nb_bytes.addr, align 8, !tbaa !73
  %call = call i32 @fseek(%struct._IO_FILE* %0, i64 %1, i32 0) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval
  ret i32 %2
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #3

declare i32 @fclose(%struct._IO_FILE*) #3

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #3

declare i64 @ftell(%struct._IO_FILE*) #3

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #3

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin nounwind }
attributes #5 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 128}
!6 = !{!"opj_codec_private", !3, i64 0, !2, i64 80, !7, i64 88, !8, i64 136, !2, i64 144, !2, i64 152, !2, i64 160}
!7 = !{!"opj_event_mgr", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40}
!8 = !{!"int", !3, i64 0}
!9 = !{!6, !2, i64 104}
!10 = !{!6, !2, i64 120}
!11 = !{!6, !2, i64 96}
!12 = !{!6, !2, i64 112}
!13 = !{!6, !2, i64 88}
!14 = !{!3, !3, i64 0}
!15 = !{!6, !8, i64 136}
!16 = !{!6, !2, i64 144}
!17 = !{!6, !2, i64 152}
!18 = !{!6, !2, i64 160}
!19 = !{!20, !2, i64 8}
!20 = !{!"opj_decompression", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72}
!21 = !{!20, !2, i64 32}
!22 = !{!20, !2, i64 0}
!23 = !{!20, !2, i64 40}
!24 = !{!20, !2, i64 48}
!25 = !{!20, !2, i64 16}
!26 = !{!20, !2, i64 24}
!27 = !{!20, !2, i64 56}
!28 = !{!20, !2, i64 64}
!29 = !{!20, !2, i64 72}
!30 = !{!6, !2, i64 80}
!31 = !{!32, !8, i64 4}
!32 = !{!"opj_dparameters", !8, i64 0, !8, i64 4, !3, i64 8, !3, i64 4104, !8, i64 8200, !8, i64 8204, !8, i64 8208, !8, i64 8212, !8, i64 8216, !8, i64 8220, !8, i64 8224, !8, i64 8228, !8, i64 8232, !8, i64 8236, !8, i64 8240, !8, i64 8244, !8, i64 8248}
!33 = !{!32, !8, i64 0}
!34 = !{!32, !8, i64 8200}
!35 = !{!32, !8, i64 8204}
!36 = !{!32, !8, i64 8248}
!37 = !{!8, !8, i64 0}
!38 = !{!39, !2, i64 8}
!39 = !{!"opj_compression", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40}
!40 = !{!39, !2, i64 24}
!41 = !{!39, !2, i64 0}
!42 = !{!39, !2, i64 16}
!43 = !{!39, !2, i64 32}
!44 = !{!39, !2, i64 40}
!45 = !{!46, !3, i64 18684}
!46 = !{!"opj_cparameters", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !2, i64 32, !2, i64 40, !8, i64 48, !3, i64 52, !3, i64 56, !8, i64 4792, !8, i64 4796, !3, i64 4800, !3, i64 5200, !8, i64 5600, !8, i64 5604, !8, i64 5608, !8, i64 5612, !8, i64 5616, !8, i64 5620, !8, i64 5624, !8, i64 5628, !3, i64 5632, !3, i64 5764, !3, i64 5896, !3, i64 9992, !8, i64 14088, !3, i64 14092, !8, i64 18188, !8, i64 18192, !8, i64 18196, !8, i64 18200, !8, i64 18204, !8, i64 18208, !8, i64 18212, !8, i64 18216, !3, i64 18220, !3, i64 18284, !3, i64 18348, !3, i64 18412, !3, i64 18476, !8, i64 18540, !8, i64 18544, !8, i64 18548, !8, i64 18552, !3, i64 18556, !3, i64 18620, !3, i64 18684, !8, i64 18688, !3, i64 18692, !3, i64 18696, !3, i64 18697, !3, i64 18698, !8, i64 18700, !2, i64 18704}
!47 = !{!46, !8, i64 18688}
!48 = !{!46, !8, i64 5600}
!49 = !{!46, !3, i64 18692}
!50 = !{!46, !8, i64 5604}
!51 = !{!46, !8, i64 5608}
!52 = !{!46, !3, i64 52}
!53 = !{!46, !8, i64 5620}
!54 = !{!46, !8, i64 18196}
!55 = !{!46, !8, i64 18200}
!56 = !{!46, !3, i64 18696}
!57 = !{!46, !8, i64 18204}
!58 = !{!46, !8, i64 18208}
!59 = !{!60, !60, i64 0}
!60 = !{!"float", !3, i64 0}
!61 = !{!46, !8, i64 4796}
!62 = !{!46, !8, i64 20}
!63 = !{!46, !8, i64 24}
!64 = !{!46, !8, i64 28}
!65 = !{!46, !8, i64 18700}
!66 = !{!46, !8, i64 5616}
!67 = !{!46, !3, i64 18698}
!68 = !{!46, !2, i64 18704}
!69 = !{!70, !2, i64 56}
!70 = !{!"opj_codestream_info_v2", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !71, i64 32, !2, i64 64}
!71 = !{!"opj_tile_v2_info", !8, i64 0, !8, i64 4, !3, i64 8, !8, i64 12, !8, i64 16, !2, i64 24}
!72 = !{!70, !2, i64 64}
!73 = !{!74, !74, i64 0}
!74 = !{!"long", !3, i64 0}
