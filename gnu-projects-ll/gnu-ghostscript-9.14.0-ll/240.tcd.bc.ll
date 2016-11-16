; ModuleID = './tcd.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.opj_tcd = type { i32, i32, i32, i32, i32, %struct.opj_tcd_image*, %struct.opj_image*, %struct.opj_cp*, %struct.opj_tcp*, i32, i8 }
%struct.opj_tcd_image = type { %struct.opj_tcd_tile* }
%struct.opj_tcd_tile = type { i32, i32, i32, i32, i32, %struct.opj_tcd_tilecomp*, i32, double, [100 x double], i32 }
%struct.opj_tcd_tilecomp = type { i32, i32, i32, i32, i32, i32, %struct.opj_tcd_resolution*, i32, i32*, i32, i32 }
%struct.opj_tcd_resolution = type { i32, i32, i32, i32, i32, i32, i32, [3 x %struct.opj_tcd_band] }
%struct.opj_tcd_band = type { i32, i32, i32, i32, i32, %struct.opj_tcd_precinct*, i32, i32, float }
%struct.opj_tcd_precinct = type { i32, i32, i32, i32, i32, i32, %union.anon, i32, %struct.opj_tgt_tree*, %struct.opj_tgt_tree* }
%union.anon = type { %struct.opj_tcd_cblk_enc* }
%struct.opj_tcd_cblk_enc = type { i8*, %struct.opj_tcd_layer*, %struct.opj_tcd_pass*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.opj_tcd_layer = type { i32, i32, double, i8* }
%struct.opj_tcd_pass = type { i32, double, i32, i8 }
%struct.opj_tgt_tree = type { i32, i32, i32, %struct.opj_tgt_node*, i32 }
%struct.opj_tgt_node = type { %struct.opj_tgt_node*, i32, i32, i32 }
%struct.opj_image = type { i32, i32, i32, i32, i32, i32, %struct.opj_image_comp*, i8*, i32 }
%struct.opj_image_comp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i16 }
%struct.opj_cp = type { i32, i32, i32, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i8*, i8*, i32, i32, i32, %struct.opj_tcp*, %union.anon.0, i8 }
%union.anon.0 = type { %struct.opj_encoding_param }
%struct.opj_encoding_param = type { i32, i32, i32, i32*, i8, i8 }
%struct.opj_tcp = type { i32, i32, i32, i32, i32, [100 x float], i32, [32 x %struct.opj_poc], i8*, i8*, i32, i32, [100 x float], %struct.opj_tccp*, i32, i8*, i32, double*, float*, float*, %struct.opj_mct_data*, i32, i32, %struct.opj_simple_mcc_decorrelation_data*, i32, i32, i8 }
%struct.opj_poc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.opj_tccp = type { i32, i32, i32, i32, i32, i32, i32, [97 x %struct.opj_stepsize], i32, i32, [33 x i32], [33 x i32], i32 }
%struct.opj_stepsize = type { i32, i32 }
%struct.opj_mct_data = type { i32, i32, i32, i8*, i32 }
%struct.opj_simple_mcc_decorrelation_data = type { i32, i32, %struct.opj_mct_data*, %struct.opj_mct_data*, i8 }
%struct.opj_codestream_info = type { double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, %struct.opj_marker_info*, i32, i32, i32, i32, %struct.opj_tile_info* }
%struct.opj_marker_info = type { i16, i64, i32 }
%struct.opj_tile_info = type { double*, i32, i32, i32, i32, [33 x i32], [33 x i32], [33 x i32], [33 x i32], %struct.opj_packet_info*, i32, double, i32, %struct.opj_marker_info*, i32, i32, %struct.opj_tp_info* }
%struct.opj_packet_info = type { i64, i64, i64, double }
%struct.opj_tp_info = type { i32, i32, i32, i32, i32 }
%struct.opj_t2 = type { %struct.opj_image*, %struct.opj_cp* }
%struct.opj_decoding_param = type { i32, i32 }
%struct.opj_tcd_cblk_dec = type { i8*, %struct.opj_tcd_seg*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.opj_tcd_seg = type { i8**, i32, i32, i32, i32, i32, i32, i32 }
%struct.opj_t1 = type { %struct.opj_mqc*, %struct.opj_raw*, i32*, i16*, i32, i32, i32, i32, i32 }
%struct.opj_mqc = type { i32, i32, i32, i8*, i8*, i8*, [19 x %struct.opj_mqc_state*], %struct.opj_mqc_state** }
%struct.opj_mqc_state = type { i32, i32, %struct.opj_mqc_state*, %struct.opj_mqc_state* }
%struct.opj_raw = type { i8, i32, i32, i32, i8*, i8*, i8* }
%struct.opj_codestream_index = type { i64, i64, i64, i32, %struct.opj_marker_info*, i32, i32, %struct.opj_tile_index* }
%struct.opj_tile_index = type { i32, i32, i32, i32, %struct.opj_tp_index*, i32, %struct.opj_marker_info*, i32, i32, %struct.opj_packet_info* }
%struct.opj_tp_index = type { i64, i64, i64 }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"tiles require at least one resolution\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Not enough memory to handle tile data\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Not enough memory to tile resolutions\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Not enough memory to handle band precints\0A\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"Not enough memory for current precinct codeblock element\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"WARNING: No incltree created.\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"WARNING: No imsbtree created.\0A\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"Tiles don't all have the same dimension. Skip the MCT step.\0A\00", align 1
@.str.8 = private unnamed_addr constant [74 x i8] c"Number of components (%d) is inconsistent with a MCT. Skip the MCT step.\0A\00", align 1
@.str.9 = private unnamed_addr constant [73 x i8] c"l_height == 0 || l_width + l_stride <= l_tile_comp->data_size / l_height\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"./openjpeg/libopenjpeg/tcd.c\00", align 1
@__PRETTY_FUNCTION__.opj_tcd_dc_level_shift_decode = private unnamed_addr constant [52 x i8] c"OPJ_BOOL opj_tcd_dc_level_shift_decode(opj_tcd_t *)\00", align 1

; Function Attrs: nounwind uwtable
define %struct.opj_tcd* @opj_tcd_create(i32 %p_is_decoder) #0 {
entry:
  %retval = alloca %struct.opj_tcd*, align 8
  %p_is_decoder.addr = alloca i32, align 4
  %l_tcd = alloca %struct.opj_tcd*, align 8
  %cleanup.dest.slot = alloca i32
  store i32 %p_is_decoder, i32* %p_is_decoder.addr, align 4, !tbaa !1
  %0 = bitcast %struct.opj_tcd** %l_tcd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store %struct.opj_tcd* null, %struct.opj_tcd** %l_tcd, align 8, !tbaa !5
  %call = call noalias i8* @malloc(i64 64) #7
  %1 = bitcast i8* %call to %struct.opj_tcd*
  store %struct.opj_tcd* %1, %struct.opj_tcd** %l_tcd, align 8, !tbaa !5
  %2 = load %struct.opj_tcd*, %struct.opj_tcd** %l_tcd, align 8, !tbaa !5
  %tobool = icmp ne %struct.opj_tcd* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.opj_tcd* null, %struct.opj_tcd** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.opj_tcd*, %struct.opj_tcd** %l_tcd, align 8, !tbaa !5
  %4 = bitcast %struct.opj_tcd* %3 to i8*
  %call1 = call i8* @memset(i8* %4, i32 0, i64 64) #7
  %5 = load i32, i32* %p_is_decoder.addr, align 4, !tbaa !1
  %tobool2 = icmp ne i32 %5, 0
  %cond = select i1 %tobool2, i32 1, i32 0
  %6 = load %struct.opj_tcd*, %struct.opj_tcd** %l_tcd, align 8, !tbaa !5
  %m_is_decoder = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %6, i32 0, i32 10
  %7 = trunc i32 %cond to i8
  %bf.load = load i8, i8* %m_is_decoder, align 4
  %bf.value = and i8 %7, 1
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, %bf.value
  store i8 %bf.set, i8* %m_is_decoder, align 4
  %bf.result.cast = zext i8 %bf.value to i32
  %call3 = call noalias i8* @malloc(i64 8) #7
  %8 = bitcast i8* %call3 to %struct.opj_tcd_image*
  %9 = load %struct.opj_tcd*, %struct.opj_tcd** %l_tcd, align 8, !tbaa !5
  %tcd_image = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %9, i32 0, i32 5
  store %struct.opj_tcd_image* %8, %struct.opj_tcd_image** %tcd_image, align 8, !tbaa !7
  %10 = load %struct.opj_tcd*, %struct.opj_tcd** %l_tcd, align 8, !tbaa !5
  %tcd_image4 = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %10, i32 0, i32 5
  %11 = load %struct.opj_tcd_image*, %struct.opj_tcd_image** %tcd_image4, align 8, !tbaa !7
  %tobool5 = icmp ne %struct.opj_tcd_image* %11, null
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end
  %12 = load %struct.opj_tcd*, %struct.opj_tcd** %l_tcd, align 8, !tbaa !5
  %13 = bitcast %struct.opj_tcd* %12 to i8*
  call void @free(i8* %13) #7
  store %struct.opj_tcd* null, %struct.opj_tcd** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end
  %14 = load %struct.opj_tcd*, %struct.opj_tcd** %l_tcd, align 8, !tbaa !5
  %tcd_image8 = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %14, i32 0, i32 5
  %15 = load %struct.opj_tcd_image*, %struct.opj_tcd_image** %tcd_image8, align 8, !tbaa !7
  %16 = bitcast %struct.opj_tcd_image* %15 to i8*
  %call9 = call i8* @memset(i8* %16, i32 0, i64 8) #7
  %17 = load %struct.opj_tcd*, %struct.opj_tcd** %l_tcd, align 8, !tbaa !5
  store %struct.opj_tcd* %17, %struct.opj_tcd** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.7, %if.then.6, %if.then
  %18 = bitcast %struct.opj_tcd** %l_tcd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = load %struct.opj_tcd*, %struct.opj_tcd** %retval
  ret %struct.opj_tcd* %19
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #2

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @opj_tcd_rateallocate_fixed(%struct.opj_tcd* %tcd) #0 {
entry:
  %tcd.addr = alloca %struct.opj_tcd*, align 8
  %layno = alloca i32, align 4
  store %struct.opj_tcd* %tcd, %struct.opj_tcd** %tcd.addr, align 8, !tbaa !5
  %0 = bitcast i32* %layno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %layno, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %layno, align 4, !tbaa !1
  %2 = load %struct.opj_tcd*, %struct.opj_tcd** %tcd.addr, align 8, !tbaa !5
  %tcp = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %2, i32 0, i32 8
  %3 = load %struct.opj_tcp*, %struct.opj_tcp** %tcp, align 8, !tbaa !9
  %numlayers = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %3, i32 0, i32 2
  %4 = load i32, i32* %numlayers, align 4, !tbaa !10
  %cmp = icmp ult i32 %1, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.opj_tcd*, %struct.opj_tcd** %tcd.addr, align 8, !tbaa !5
  %6 = load i32, i32* %layno, align 4, !tbaa !1
  call void @opj_tcd_makelayer_fixed(%struct.opj_tcd* %5, i32 %6, i32 1) #8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %layno, align 4, !tbaa !1
  %inc = add i32 %7, 1
  store i32 %inc, i32* %layno, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = bitcast i32* %layno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @opj_tcd_makelayer_fixed(%struct.opj_tcd* %tcd, i32 %layno, i32 %final) #0 {
entry:
  %tcd.addr = alloca %struct.opj_tcd*, align 8
  %layno.addr = alloca i32, align 4
  %final.addr = alloca i32, align 4
  %compno = alloca i32, align 4
  %resno = alloca i32, align 4
  %bandno = alloca i32, align 4
  %precno = alloca i32, align 4
  %cblkno = alloca i32, align 4
  %value = alloca i32, align 4
  %matrice = alloca [10 x [10 x [3 x i32]]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %cp = alloca %struct.opj_cp*, align 8
  %tcd_tile = alloca %struct.opj_tcd_tile*, align 8
  %tcd_tcp = alloca %struct.opj_tcp*, align 8
  %tilec = alloca %struct.opj_tcd_tilecomp*, align 8
  %res = alloca %struct.opj_tcd_resolution*, align 8
  %band = alloca %struct.opj_tcd_band*, align 8
  %prc = alloca %struct.opj_tcd_precinct*, align 8
  %cblk = alloca %struct.opj_tcd_cblk_enc*, align 8
  %layer = alloca %struct.opj_tcd_layer*, align 8
  %n = alloca i32, align 4
  %imsb = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.opj_tcd* %tcd, %struct.opj_tcd** %tcd.addr, align 8, !tbaa !5
  store i32 %layno, i32* %layno.addr, align 4, !tbaa !1
  store i32 %final, i32* %final.addr, align 4, !tbaa !1
  %0 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %resno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %bandno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %precno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %cblkno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast [10 x [10 x [3 x i32]]]* %matrice to i8*
  call void @llvm.lifetime.start(i64 1200, i8* %6) #1
  %7 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast %struct.opj_cp** %cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.opj_tcd*, %struct.opj_tcd** %tcd.addr, align 8, !tbaa !5
  %cp1 = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %11, i32 0, i32 7
  %12 = load %struct.opj_cp*, %struct.opj_cp** %cp1, align 8, !tbaa !12
  store %struct.opj_cp* %12, %struct.opj_cp** %cp, align 8, !tbaa !5
  %13 = bitcast %struct.opj_tcd_tile** %tcd_tile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load %struct.opj_tcd*, %struct.opj_tcd** %tcd.addr, align 8, !tbaa !5
  %tcd_image = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %14, i32 0, i32 5
  %15 = load %struct.opj_tcd_image*, %struct.opj_tcd_image** %tcd_image, align 8, !tbaa !7
  %tiles = getelementptr inbounds %struct.opj_tcd_image, %struct.opj_tcd_image* %15, i32 0, i32 0
  %16 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tiles, align 8, !tbaa !13
  store %struct.opj_tcd_tile* %16, %struct.opj_tcd_tile** %tcd_tile, align 8, !tbaa !5
  %17 = bitcast %struct.opj_tcp** %tcd_tcp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = load %struct.opj_tcd*, %struct.opj_tcd** %tcd.addr, align 8, !tbaa !5
  %tcp = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %18, i32 0, i32 8
  %19 = load %struct.opj_tcp*, %struct.opj_tcp** %tcp, align 8, !tbaa !9
  store %struct.opj_tcp* %19, %struct.opj_tcp** %tcd_tcp, align 8, !tbaa !5
  store i32 0, i32* %compno, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.201, %entry
  %20 = load i32, i32* %compno, align 4, !tbaa !1
  %21 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tcd_tile, align 8, !tbaa !5
  %numcomps = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %21, i32 0, i32 4
  %22 = load i32, i32* %numcomps, align 4, !tbaa !15
  %cmp = icmp ult i32 %20, %22
  br i1 %cmp, label %for.body, label %for.end.203

for.body:                                         ; preds = %for.cond
  %23 = bitcast %struct.opj_tcd_tilecomp** %tilec to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  %24 = load i32, i32* %compno, align 4, !tbaa !1
  %idxprom = zext i32 %24 to i64
  %25 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tcd_tile, align 8, !tbaa !5
  %comps = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %25, i32 0, i32 5
  %26 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %comps, align 8, !tbaa !18
  %arrayidx = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %26, i64 %idxprom
  store %struct.opj_tcd_tilecomp* %arrayidx, %struct.opj_tcd_tilecomp** %tilec, align 8, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.33, %for.body
  %27 = load i32, i32* %i, align 4, !tbaa !1
  %28 = load %struct.opj_tcp*, %struct.opj_tcp** %tcd_tcp, align 8, !tbaa !5
  %numlayers = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %28, i32 0, i32 2
  %29 = load i32, i32* %numlayers, align 4, !tbaa !10
  %cmp3 = icmp ult i32 %27, %29
  br i1 %cmp3, label %for.body.4, label %for.end.35

for.body.4:                                       ; preds = %for.cond.2
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.30, %for.body.4
  %30 = load i32, i32* %j, align 4, !tbaa !1
  %31 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %tilec, align 8, !tbaa !5
  %numresolutions = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %31, i32 0, i32 4
  %32 = load i32, i32* %numresolutions, align 4, !tbaa !19
  %cmp6 = icmp ult i32 %30, %32
  br i1 %cmp6, label %for.body.7, label %for.end.32

for.body.7:                                       ; preds = %for.cond.5
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %for.body.7
  %33 = load i32, i32* %k, align 4, !tbaa !1
  %cmp9 = icmp ult i32 %33, 3
  br i1 %cmp9, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.8
  %34 = load i32, i32* %i, align 4, !tbaa !1
  %35 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %tilec, align 8, !tbaa !5
  %numresolutions11 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %35, i32 0, i32 4
  %36 = load i32, i32* %numresolutions11, align 4, !tbaa !19
  %mul = mul i32 %34, %36
  %mul12 = mul i32 %mul, 3
  %37 = load i32, i32* %j, align 4, !tbaa !1
  %mul13 = mul i32 %37, 3
  %add = add i32 %mul12, %mul13
  %38 = load i32, i32* %k, align 4, !tbaa !1
  %add14 = add i32 %add, %38
  %idxprom15 = zext i32 %add14 to i64
  %39 = load %struct.opj_cp*, %struct.opj_cp** %cp, align 8, !tbaa !5
  %m_specific_param = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %39, i32 0, i32 18
  %m_enc = bitcast %union.anon.0* %m_specific_param to %struct.opj_encoding_param*
  %m_matrice = getelementptr inbounds %struct.opj_encoding_param, %struct.opj_encoding_param* %m_enc, i32 0, i32 3
  %40 = load i32*, i32** %m_matrice, align 8, !tbaa !21
  %arrayidx16 = getelementptr inbounds i32, i32* %40, i64 %idxprom15
  %41 = load i32, i32* %arrayidx16, align 4, !tbaa !1
  %conv = sitofp i32 %41 to float
  %42 = load i32, i32* %compno, align 4, !tbaa !1
  %idxprom17 = zext i32 %42 to i64
  %43 = load %struct.opj_tcd*, %struct.opj_tcd** %tcd.addr, align 8, !tbaa !5
  %image = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %43, i32 0, i32 6
  %44 = load %struct.opj_image*, %struct.opj_image** %image, align 8, !tbaa !23
  %comps18 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %44, i32 0, i32 6
  %45 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps18, align 8, !tbaa !24
  %arrayidx19 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %45, i64 %idxprom17
  %prec = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx19, i32 0, i32 6
  %46 = load i32, i32* %prec, align 4, !tbaa !26
  %conv20 = uitofp i32 %46 to double
  %div = fdiv double %conv20, 1.600000e+01
  %conv21 = fptrunc double %div to float
  %mul22 = fmul float %conv, %conv21
  %conv23 = fptosi float %mul22 to i32
  %47 = load i32, i32* %k, align 4, !tbaa !1
  %idxprom24 = zext i32 %47 to i64
  %48 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom25 = zext i32 %48 to i64
  %49 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom26 = zext i32 %49 to i64
  %arrayidx27 = getelementptr inbounds [10 x [10 x [3 x i32]]], [10 x [10 x [3 x i32]]]* %matrice, i32 0, i64 %idxprom26
  %arrayidx28 = getelementptr inbounds [10 x [3 x i32]], [10 x [3 x i32]]* %arrayidx27, i32 0, i64 %idxprom25
  %arrayidx29 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx28, i32 0, i64 %idxprom24
  store i32 %conv23, i32* %arrayidx29, align 4, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body.10
  %50 = load i32, i32* %k, align 4, !tbaa !1
  %inc = add i32 %50, 1
  store i32 %inc, i32* %k, align 4, !tbaa !1
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.end
  %51 = load i32, i32* %j, align 4, !tbaa !1
  %inc31 = add i32 %51, 1
  store i32 %inc31, i32* %j, align 4, !tbaa !1
  br label %for.cond.5

for.end.32:                                       ; preds = %for.cond.5
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.end.32
  %52 = load i32, i32* %i, align 4, !tbaa !1
  %inc34 = add i32 %52, 1
  store i32 %inc34, i32* %i, align 4, !tbaa !1
  br label %for.cond.2

for.end.35:                                       ; preds = %for.cond.2
  store i32 0, i32* %resno, align 4, !tbaa !1
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.198, %for.end.35
  %53 = load i32, i32* %resno, align 4, !tbaa !1
  %54 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %tilec, align 8, !tbaa !5
  %numresolutions37 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %54, i32 0, i32 4
  %55 = load i32, i32* %numresolutions37, align 4, !tbaa !19
  %cmp38 = icmp ult i32 %53, %55
  br i1 %cmp38, label %for.body.40, label %for.end.200

for.body.40:                                      ; preds = %for.cond.36
  %56 = bitcast %struct.opj_tcd_resolution** %res to i8*
  call void @llvm.lifetime.start(i64 8, i8* %56) #1
  %57 = load i32, i32* %resno, align 4, !tbaa !1
  %idxprom41 = zext i32 %57 to i64
  %58 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %tilec, align 8, !tbaa !5
  %resolutions = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %58, i32 0, i32 6
  %59 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %resolutions, align 8, !tbaa !29
  %arrayidx42 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %59, i64 %idxprom41
  store %struct.opj_tcd_resolution* %arrayidx42, %struct.opj_tcd_resolution** %res, align 8, !tbaa !5
  store i32 0, i32* %bandno, align 4, !tbaa !1
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.195, %for.body.40
  %60 = load i32, i32* %bandno, align 4, !tbaa !1
  %61 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %res, align 8, !tbaa !5
  %numbands = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %61, i32 0, i32 6
  %62 = load i32, i32* %numbands, align 4, !tbaa !30
  %cmp44 = icmp ult i32 %60, %62
  br i1 %cmp44, label %for.body.46, label %for.end.197

for.body.46:                                      ; preds = %for.cond.43
  %63 = bitcast %struct.opj_tcd_band** %band to i8*
  call void @llvm.lifetime.start(i64 8, i8* %63) #1
  %64 = load i32, i32* %bandno, align 4, !tbaa !1
  %idxprom47 = zext i32 %64 to i64
  %65 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %res, align 8, !tbaa !5
  %bands = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %65, i32 0, i32 7
  %arrayidx48 = getelementptr inbounds [3 x %struct.opj_tcd_band], [3 x %struct.opj_tcd_band]* %bands, i32 0, i64 %idxprom47
  store %struct.opj_tcd_band* %arrayidx48, %struct.opj_tcd_band** %band, align 8, !tbaa !5
  store i32 0, i32* %precno, align 4, !tbaa !1
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.192, %for.body.46
  %66 = load i32, i32* %precno, align 4, !tbaa !1
  %67 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %res, align 8, !tbaa !5
  %pw = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %67, i32 0, i32 4
  %68 = load i32, i32* %pw, align 4, !tbaa !32
  %69 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %res, align 8, !tbaa !5
  %ph = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %69, i32 0, i32 5
  %70 = load i32, i32* %ph, align 4, !tbaa !33
  %mul50 = mul i32 %68, %70
  %cmp51 = icmp ult i32 %66, %mul50
  br i1 %cmp51, label %for.body.53, label %for.end.194

for.body.53:                                      ; preds = %for.cond.49
  %71 = bitcast %struct.opj_tcd_precinct** %prc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %71) #1
  %72 = load i32, i32* %precno, align 4, !tbaa !1
  %idxprom54 = zext i32 %72 to i64
  %73 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %band, align 8, !tbaa !5
  %precincts = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %73, i32 0, i32 5
  %74 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %precincts, align 8, !tbaa !34
  %arrayidx55 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %74, i64 %idxprom54
  store %struct.opj_tcd_precinct* %arrayidx55, %struct.opj_tcd_precinct** %prc, align 8, !tbaa !5
  store i32 0, i32* %cblkno, align 4, !tbaa !1
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.189, %for.body.53
  %75 = load i32, i32* %cblkno, align 4, !tbaa !1
  %76 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %prc, align 8, !tbaa !5
  %cw = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %76, i32 0, i32 4
  %77 = load i32, i32* %cw, align 4, !tbaa !37
  %78 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %prc, align 8, !tbaa !5
  %ch = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %78, i32 0, i32 5
  %79 = load i32, i32* %ch, align 4, !tbaa !39
  %mul57 = mul i32 %77, %79
  %cmp58 = icmp ult i32 %75, %mul57
  br i1 %cmp58, label %for.body.60, label %for.end.191

for.body.60:                                      ; preds = %for.cond.56
  %80 = bitcast %struct.opj_tcd_cblk_enc** %cblk to i8*
  call void @llvm.lifetime.start(i64 8, i8* %80) #1
  %81 = load i32, i32* %cblkno, align 4, !tbaa !1
  %idxprom61 = zext i32 %81 to i64
  %82 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %prc, align 8, !tbaa !5
  %cblks = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %82, i32 0, i32 6
  %enc = bitcast %union.anon* %cblks to %struct.opj_tcd_cblk_enc**
  %83 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %enc, align 8, !tbaa !5
  %arrayidx62 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %83, i64 %idxprom61
  store %struct.opj_tcd_cblk_enc* %arrayidx62, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !5
  %84 = bitcast %struct.opj_tcd_layer** %layer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %84) #1
  %85 = load i32, i32* %layno.addr, align 4, !tbaa !1
  %idxprom63 = zext i32 %85 to i64
  %86 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !5
  %layers = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %86, i32 0, i32 1
  %87 = load %struct.opj_tcd_layer*, %struct.opj_tcd_layer** %layers, align 8, !tbaa !40
  %arrayidx64 = getelementptr inbounds %struct.opj_tcd_layer, %struct.opj_tcd_layer* %87, i64 %idxprom63
  store %struct.opj_tcd_layer* %arrayidx64, %struct.opj_tcd_layer** %layer, align 8, !tbaa !5
  %88 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %88) #1
  %89 = bitcast i32* %imsb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %89) #1
  %90 = load i32, i32* %compno, align 4, !tbaa !1
  %idxprom65 = zext i32 %90 to i64
  %91 = load %struct.opj_tcd*, %struct.opj_tcd** %tcd.addr, align 8, !tbaa !5
  %image66 = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %91, i32 0, i32 6
  %92 = load %struct.opj_image*, %struct.opj_image** %image66, align 8, !tbaa !23
  %comps67 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %92, i32 0, i32 6
  %93 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps67, align 8, !tbaa !24
  %arrayidx68 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %93, i64 %idxprom65
  %prec69 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx68, i32 0, i32 6
  %94 = load i32, i32* %prec69, align 4, !tbaa !26
  %95 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !5
  %numbps = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %95, i32 0, i32 7
  %96 = load i32, i32* %numbps, align 4, !tbaa !42
  %sub = sub i32 %94, %96
  store i32 %sub, i32* %imsb, align 4, !tbaa !1
  %97 = load i32, i32* %layno.addr, align 4, !tbaa !1
  %cmp70 = icmp eq i32 %97, 0
  br i1 %cmp70, label %if.then, label %if.else.82

if.then:                                          ; preds = %for.body.60
  %98 = load i32, i32* %bandno, align 4, !tbaa !1
  %idxprom72 = zext i32 %98 to i64
  %99 = load i32, i32* %resno, align 4, !tbaa !1
  %idxprom73 = zext i32 %99 to i64
  %100 = load i32, i32* %layno.addr, align 4, !tbaa !1
  %idxprom74 = zext i32 %100 to i64
  %arrayidx75 = getelementptr inbounds [10 x [10 x [3 x i32]]], [10 x [10 x [3 x i32]]]* %matrice, i32 0, i64 %idxprom74
  %arrayidx76 = getelementptr inbounds [10 x [3 x i32]], [10 x [3 x i32]]* %arrayidx75, i32 0, i64 %idxprom73
  %arrayidx77 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx76, i32 0, i64 %idxprom72
  %101 = load i32, i32* %arrayidx77, align 4, !tbaa !1
  store i32 %101, i32* %value, align 4, !tbaa !1
  %102 = load i32, i32* %imsb, align 4, !tbaa !1
  %103 = load i32, i32* %value, align 4, !tbaa !1
  %cmp78 = icmp sge i32 %102, %103
  br i1 %cmp78, label %if.then.80, label %if.else

if.then.80:                                       ; preds = %if.then
  store i32 0, i32* %value, align 4, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %if.then
  %104 = load i32, i32* %imsb, align 4, !tbaa !1
  %105 = load i32, i32* %value, align 4, !tbaa !1
  %sub81 = sub nsw i32 %105, %104
  store i32 %sub81, i32* %value, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.80
  br label %if.end.121

if.else.82:                                       ; preds = %for.body.60
  %106 = load i32, i32* %bandno, align 4, !tbaa !1
  %idxprom83 = zext i32 %106 to i64
  %107 = load i32, i32* %resno, align 4, !tbaa !1
  %idxprom84 = zext i32 %107 to i64
  %108 = load i32, i32* %layno.addr, align 4, !tbaa !1
  %idxprom85 = zext i32 %108 to i64
  %arrayidx86 = getelementptr inbounds [10 x [10 x [3 x i32]]], [10 x [10 x [3 x i32]]]* %matrice, i32 0, i64 %idxprom85
  %arrayidx87 = getelementptr inbounds [10 x [3 x i32]], [10 x [3 x i32]]* %arrayidx86, i32 0, i64 %idxprom84
  %arrayidx88 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx87, i32 0, i64 %idxprom83
  %109 = load i32, i32* %arrayidx88, align 4, !tbaa !1
  %110 = load i32, i32* %bandno, align 4, !tbaa !1
  %idxprom89 = zext i32 %110 to i64
  %111 = load i32, i32* %resno, align 4, !tbaa !1
  %idxprom90 = zext i32 %111 to i64
  %112 = load i32, i32* %layno.addr, align 4, !tbaa !1
  %sub91 = sub i32 %112, 1
  %idxprom92 = zext i32 %sub91 to i64
  %arrayidx93 = getelementptr inbounds [10 x [10 x [3 x i32]]], [10 x [10 x [3 x i32]]]* %matrice, i32 0, i64 %idxprom92
  %arrayidx94 = getelementptr inbounds [10 x [3 x i32]], [10 x [3 x i32]]* %arrayidx93, i32 0, i64 %idxprom90
  %arrayidx95 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx94, i32 0, i64 %idxprom89
  %113 = load i32, i32* %arrayidx95, align 4, !tbaa !1
  %sub96 = sub nsw i32 %109, %113
  store i32 %sub96, i32* %value, align 4, !tbaa !1
  %114 = load i32, i32* %imsb, align 4, !tbaa !1
  %115 = load i32, i32* %bandno, align 4, !tbaa !1
  %idxprom97 = zext i32 %115 to i64
  %116 = load i32, i32* %resno, align 4, !tbaa !1
  %idxprom98 = zext i32 %116 to i64
  %117 = load i32, i32* %layno.addr, align 4, !tbaa !1
  %sub99 = sub i32 %117, 1
  %idxprom100 = zext i32 %sub99 to i64
  %arrayidx101 = getelementptr inbounds [10 x [10 x [3 x i32]]], [10 x [10 x [3 x i32]]]* %matrice, i32 0, i64 %idxprom100
  %arrayidx102 = getelementptr inbounds [10 x [3 x i32]], [10 x [3 x i32]]* %arrayidx101, i32 0, i64 %idxprom98
  %arrayidx103 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx102, i32 0, i64 %idxprom97
  %118 = load i32, i32* %arrayidx103, align 4, !tbaa !1
  %cmp104 = icmp sge i32 %114, %118
  br i1 %cmp104, label %if.then.106, label %if.end.120

if.then.106:                                      ; preds = %if.else.82
  %119 = load i32, i32* %imsb, align 4, !tbaa !1
  %120 = load i32, i32* %bandno, align 4, !tbaa !1
  %idxprom107 = zext i32 %120 to i64
  %121 = load i32, i32* %resno, align 4, !tbaa !1
  %idxprom108 = zext i32 %121 to i64
  %122 = load i32, i32* %layno.addr, align 4, !tbaa !1
  %sub109 = sub i32 %122, 1
  %idxprom110 = zext i32 %sub109 to i64
  %arrayidx111 = getelementptr inbounds [10 x [10 x [3 x i32]]], [10 x [10 x [3 x i32]]]* %matrice, i32 0, i64 %idxprom110
  %arrayidx112 = getelementptr inbounds [10 x [3 x i32]], [10 x [3 x i32]]* %arrayidx111, i32 0, i64 %idxprom108
  %arrayidx113 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx112, i32 0, i64 %idxprom107
  %123 = load i32, i32* %arrayidx113, align 4, !tbaa !1
  %sub114 = sub nsw i32 %119, %123
  %124 = load i32, i32* %value, align 4, !tbaa !1
  %sub115 = sub nsw i32 %124, %sub114
  store i32 %sub115, i32* %value, align 4, !tbaa !1
  %125 = load i32, i32* %value, align 4, !tbaa !1
  %cmp116 = icmp slt i32 %125, 0
  br i1 %cmp116, label %if.then.118, label %if.end.119

if.then.118:                                      ; preds = %if.then.106
  store i32 0, i32* %value, align 4, !tbaa !1
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.118, %if.then.106
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %if.else.82
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120, %if.end
  %126 = load i32, i32* %layno.addr, align 4, !tbaa !1
  %cmp122 = icmp eq i32 %126, 0
  br i1 %cmp122, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %if.end.121
  %127 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !5
  %numpassesinlayers = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %127, i32 0, i32 10
  store i32 0, i32* %numpassesinlayers, align 4, !tbaa !43
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.124, %if.end.121
  %128 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !5
  %numpassesinlayers126 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %128, i32 0, i32 10
  %129 = load i32, i32* %numpassesinlayers126, align 4, !tbaa !43
  store i32 %129, i32* %n, align 4, !tbaa !1
  %130 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !5
  %numpassesinlayers127 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %130, i32 0, i32 10
  %131 = load i32, i32* %numpassesinlayers127, align 4, !tbaa !43
  %cmp128 = icmp eq i32 %131, 0
  br i1 %cmp128, label %if.then.130, label %if.else.141

if.then.130:                                      ; preds = %if.end.125
  %132 = load i32, i32* %value, align 4, !tbaa !1
  %cmp131 = icmp ne i32 %132, 0
  br i1 %cmp131, label %if.then.133, label %if.else.138

if.then.133:                                      ; preds = %if.then.130
  %133 = load i32, i32* %value, align 4, !tbaa !1
  %mul134 = mul nsw i32 3, %133
  %sub135 = sub nsw i32 %mul134, 2
  %134 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !5
  %numpassesinlayers136 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %134, i32 0, i32 10
  %135 = load i32, i32* %numpassesinlayers136, align 4, !tbaa !43
  %add137 = add i32 %sub135, %135
  store i32 %add137, i32* %n, align 4, !tbaa !1
  br label %if.end.140

if.else.138:                                      ; preds = %if.then.130
  %136 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !5
  %numpassesinlayers139 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %136, i32 0, i32 10
  %137 = load i32, i32* %numpassesinlayers139, align 4, !tbaa !43
  store i32 %137, i32* %n, align 4, !tbaa !1
  br label %if.end.140

if.end.140:                                       ; preds = %if.else.138, %if.then.133
  br label %if.end.145

if.else.141:                                      ; preds = %if.end.125
  %138 = load i32, i32* %value, align 4, !tbaa !1
  %mul142 = mul nsw i32 3, %138
  %139 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !5
  %numpassesinlayers143 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %139, i32 0, i32 10
  %140 = load i32, i32* %numpassesinlayers143, align 4, !tbaa !43
  %add144 = add i32 %mul142, %140
  store i32 %add144, i32* %n, align 4, !tbaa !1
  br label %if.end.145

if.end.145:                                       ; preds = %if.else.141, %if.end.140
  %141 = load i32, i32* %n, align 4, !tbaa !1
  %142 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !5
  %numpassesinlayers146 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %142, i32 0, i32 10
  %143 = load i32, i32* %numpassesinlayers146, align 4, !tbaa !43
  %sub147 = sub i32 %141, %143
  %144 = load %struct.opj_tcd_layer*, %struct.opj_tcd_layer** %layer, align 8, !tbaa !5
  %numpasses = getelementptr inbounds %struct.opj_tcd_layer, %struct.opj_tcd_layer* %144, i32 0, i32 0
  store i32 %sub147, i32* %numpasses, align 4, !tbaa !44
  %145 = load %struct.opj_tcd_layer*, %struct.opj_tcd_layer** %layer, align 8, !tbaa !5
  %numpasses148 = getelementptr inbounds %struct.opj_tcd_layer, %struct.opj_tcd_layer* %145, i32 0, i32 0
  %146 = load i32, i32* %numpasses148, align 4, !tbaa !44
  %tobool = icmp ne i32 %146, 0
  br i1 %tobool, label %if.end.150, label %if.then.149

if.then.149:                                      ; preds = %if.end.145
  store i32 25, i32* %cleanup.dest.slot
  br label %cleanup

if.end.150:                                       ; preds = %if.end.145
  %147 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !5
  %numpassesinlayers151 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %147, i32 0, i32 10
  %148 = load i32, i32* %numpassesinlayers151, align 4, !tbaa !43
  %cmp152 = icmp eq i32 %148, 0
  br i1 %cmp152, label %if.then.154, label %if.else.159

if.then.154:                                      ; preds = %if.end.150
  %149 = load i32, i32* %n, align 4, !tbaa !1
  %sub155 = sub i32 %149, 1
  %idxprom156 = zext i32 %sub155 to i64
  %150 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !5
  %passes = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %150, i32 0, i32 2
  %151 = load %struct.opj_tcd_pass*, %struct.opj_tcd_pass** %passes, align 8, !tbaa !46
  %arrayidx157 = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %151, i64 %idxprom156
  %rate = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %arrayidx157, i32 0, i32 0
  %152 = load i32, i32* %rate, align 4, !tbaa !47
  %153 = load %struct.opj_tcd_layer*, %struct.opj_tcd_layer** %layer, align 8, !tbaa !5
  %len = getelementptr inbounds %struct.opj_tcd_layer, %struct.opj_tcd_layer* %153, i32 0, i32 1
  store i32 %152, i32* %len, align 4, !tbaa !49
  %154 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !5
  %data = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %154, i32 0, i32 0
  %155 = load i8*, i8** %data, align 8, !tbaa !50
  %156 = load %struct.opj_tcd_layer*, %struct.opj_tcd_layer** %layer, align 8, !tbaa !5
  %data158 = getelementptr inbounds %struct.opj_tcd_layer, %struct.opj_tcd_layer* %156, i32 0, i32 3
  store i8* %155, i8** %data158, align 8, !tbaa !51
  br label %if.end.181

if.else.159:                                      ; preds = %if.end.150
  %157 = load i32, i32* %n, align 4, !tbaa !1
  %sub160 = sub i32 %157, 1
  %idxprom161 = zext i32 %sub160 to i64
  %158 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !5
  %passes162 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %158, i32 0, i32 2
  %159 = load %struct.opj_tcd_pass*, %struct.opj_tcd_pass** %passes162, align 8, !tbaa !46
  %arrayidx163 = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %159, i64 %idxprom161
  %rate164 = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %arrayidx163, i32 0, i32 0
  %160 = load i32, i32* %rate164, align 4, !tbaa !47
  %161 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !5
  %numpassesinlayers165 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %161, i32 0, i32 10
  %162 = load i32, i32* %numpassesinlayers165, align 4, !tbaa !43
  %sub166 = sub i32 %162, 1
  %idxprom167 = zext i32 %sub166 to i64
  %163 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !5
  %passes168 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %163, i32 0, i32 2
  %164 = load %struct.opj_tcd_pass*, %struct.opj_tcd_pass** %passes168, align 8, !tbaa !46
  %arrayidx169 = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %164, i64 %idxprom167
  %rate170 = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %arrayidx169, i32 0, i32 0
  %165 = load i32, i32* %rate170, align 4, !tbaa !47
  %sub171 = sub i32 %160, %165
  %166 = load %struct.opj_tcd_layer*, %struct.opj_tcd_layer** %layer, align 8, !tbaa !5
  %len172 = getelementptr inbounds %struct.opj_tcd_layer, %struct.opj_tcd_layer* %166, i32 0, i32 1
  store i32 %sub171, i32* %len172, align 4, !tbaa !49
  %167 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !5
  %data173 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %167, i32 0, i32 0
  %168 = load i8*, i8** %data173, align 8, !tbaa !50
  %169 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !5
  %numpassesinlayers174 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %169, i32 0, i32 10
  %170 = load i32, i32* %numpassesinlayers174, align 4, !tbaa !43
  %sub175 = sub i32 %170, 1
  %idxprom176 = zext i32 %sub175 to i64
  %171 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !5
  %passes177 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %171, i32 0, i32 2
  %172 = load %struct.opj_tcd_pass*, %struct.opj_tcd_pass** %passes177, align 8, !tbaa !46
  %arrayidx178 = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %172, i64 %idxprom176
  %rate179 = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %arrayidx178, i32 0, i32 0
  %173 = load i32, i32* %rate179, align 4, !tbaa !47
  %idx.ext = zext i32 %173 to i64
  %add.ptr = getelementptr inbounds i8, i8* %168, i64 %idx.ext
  %174 = load %struct.opj_tcd_layer*, %struct.opj_tcd_layer** %layer, align 8, !tbaa !5
  %data180 = getelementptr inbounds %struct.opj_tcd_layer, %struct.opj_tcd_layer* %174, i32 0, i32 3
  store i8* %add.ptr, i8** %data180, align 8, !tbaa !51
  br label %if.end.181

if.end.181:                                       ; preds = %if.else.159, %if.then.154
  %175 = load i32, i32* %final.addr, align 4, !tbaa !1
  %tobool182 = icmp ne i32 %175, 0
  br i1 %tobool182, label %if.then.183, label %if.end.185

if.then.183:                                      ; preds = %if.end.181
  %176 = load i32, i32* %n, align 4, !tbaa !1
  %177 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !5
  %numpassesinlayers184 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %177, i32 0, i32 10
  store i32 %176, i32* %numpassesinlayers184, align 4, !tbaa !43
  br label %if.end.185

if.end.185:                                       ; preds = %if.then.183, %if.end.181
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.185, %if.then.149
  %178 = bitcast i32* %imsb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %178) #1
  %179 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %179) #1
  %180 = bitcast %struct.opj_tcd_layer** %layer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %180) #1
  %181 = bitcast %struct.opj_tcd_cblk_enc** %cblk to i8*
  call void @llvm.lifetime.end(i64 8, i8* %181) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 25, label %for.inc.189
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.189

for.inc.189:                                      ; preds = %cleanup.cont, %cleanup
  %182 = load i32, i32* %cblkno, align 4, !tbaa !1
  %inc190 = add i32 %182, 1
  store i32 %inc190, i32* %cblkno, align 4, !tbaa !1
  br label %for.cond.56

for.end.191:                                      ; preds = %for.cond.56
  %183 = bitcast %struct.opj_tcd_precinct** %prc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %183) #1
  br label %for.inc.192

for.inc.192:                                      ; preds = %for.end.191
  %184 = load i32, i32* %precno, align 4, !tbaa !1
  %inc193 = add i32 %184, 1
  store i32 %inc193, i32* %precno, align 4, !tbaa !1
  br label %for.cond.49

for.end.194:                                      ; preds = %for.cond.49
  %185 = bitcast %struct.opj_tcd_band** %band to i8*
  call void @llvm.lifetime.end(i64 8, i8* %185) #1
  br label %for.inc.195

for.inc.195:                                      ; preds = %for.end.194
  %186 = load i32, i32* %bandno, align 4, !tbaa !1
  %inc196 = add i32 %186, 1
  store i32 %inc196, i32* %bandno, align 4, !tbaa !1
  br label %for.cond.43

for.end.197:                                      ; preds = %for.cond.43
  %187 = bitcast %struct.opj_tcd_resolution** %res to i8*
  call void @llvm.lifetime.end(i64 8, i8* %187) #1
  br label %for.inc.198

for.inc.198:                                      ; preds = %for.end.197
  %188 = load i32, i32* %resno, align 4, !tbaa !1
  %inc199 = add i32 %188, 1
  store i32 %inc199, i32* %resno, align 4, !tbaa !1
  br label %for.cond.36

for.end.200:                                      ; preds = %for.cond.36
  %189 = bitcast %struct.opj_tcd_tilecomp** %tilec to i8*
  call void @llvm.lifetime.end(i64 8, i8* %189) #1
  br label %for.inc.201

for.inc.201:                                      ; preds = %for.end.200
  %190 = load i32, i32* %compno, align 4, !tbaa !1
  %inc202 = add i32 %190, 1
  store i32 %inc202, i32* %compno, align 4, !tbaa !1
  br label %for.cond

for.end.203:                                      ; preds = %for.cond
  %191 = bitcast %struct.opj_tcp** %tcd_tcp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %191) #1
  %192 = bitcast %struct.opj_tcd_tile** %tcd_tile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %192) #1
  %193 = bitcast %struct.opj_cp** %cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %193) #1
  %194 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %194) #1
  %195 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %195) #1
  %196 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %196) #1
  %197 = bitcast [10 x [10 x [3 x i32]]]* %matrice to i8*
  call void @llvm.lifetime.end(i64 1200, i8* %197) #1
  %198 = bitcast i32* %value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %198) #1
  %199 = bitcast i32* %cblkno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %199) #1
  %200 = bitcast i32* %precno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %200) #1
  %201 = bitcast i32* %bandno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %201) #1
  %202 = bitcast i32* %resno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %202) #1
  %203 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %203) #1
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define void @opj_tcd_makelayer(%struct.opj_tcd* %tcd, i32 %layno, double %thresh, i32 %final) #0 {
entry:
  %tcd.addr = alloca %struct.opj_tcd*, align 8
  %layno.addr = alloca i32, align 4
  %thresh.addr = alloca double, align 8
  %final.addr = alloca i32, align 4
  %compno = alloca i32, align 4
  %resno = alloca i32, align 4
  %bandno = alloca i32, align 4
  %precno = alloca i32, align 4
  %cblkno = alloca i32, align 4
  %passno = alloca i32, align 4
  %tcd_tile = alloca %struct.opj_tcd_tile*, align 8
  %tilec = alloca %struct.opj_tcd_tilecomp*, align 8
  %res = alloca %struct.opj_tcd_resolution*, align 8
  %band = alloca %struct.opj_tcd_band*, align 8
  %prc = alloca %struct.opj_tcd_precinct*, align 8
  %cblk = alloca %struct.opj_tcd_cblk_enc*, align 8
  %layer = alloca %struct.opj_tcd_layer*, align 8
  %n = alloca i32, align 4
  %dr = alloca i32, align 4
  %dd = alloca double, align 8
  %pass = alloca %struct.opj_tcd_pass*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.opj_tcd* %tcd, %struct.opj_tcd** %tcd.addr, align 8, !tbaa !5
  store i32 %layno, i32* %layno.addr, align 4, !tbaa !1
  store double %thresh, double* %thresh.addr, align 8, !tbaa !52
  store i32 %final, i32* %final.addr, align 4, !tbaa !1
  %0 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %resno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %bandno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %precno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %cblkno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %passno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast %struct.opj_tcd_tile** %tcd_tile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.opj_tcd*, %struct.opj_tcd** %tcd.addr, align 8, !tbaa !5
  %tcd_image = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %7, i32 0, i32 5
  %8 = load %struct.opj_tcd_image*, %struct.opj_tcd_image** %tcd_image, align 8, !tbaa !7
  %tiles = getelementptr inbounds %struct.opj_tcd_image, %struct.opj_tcd_image* %8, i32 0, i32 0
  %9 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tiles, align 8, !tbaa !13
  store %struct.opj_tcd_tile* %9, %struct.opj_tcd_tile** %tcd_tile, align 8, !tbaa !5
  %10 = load i32, i32* %layno.addr, align 4, !tbaa !1
  %idxprom = zext i32 %10 to i64
  %11 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tcd_tile, align 8, !tbaa !5
  %distolayer = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %11, i32 0, i32 8
  %arrayidx = getelementptr inbounds [100 x double], [100 x double]* %distolayer, i32 0, i64 %idxprom
  store double 0.000000e+00, double* %arrayidx, align 8, !tbaa !52
  store i32 0, i32* %compno, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.146, %entry
  %12 = load i32, i32* %compno, align 4, !tbaa !1
  %13 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tcd_tile, align 8, !tbaa !5
  %numcomps = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %13, i32 0, i32 4
  %14 = load i32, i32* %numcomps, align 4, !tbaa !15
  %cmp = icmp ult i32 %12, %14
  br i1 %cmp, label %for.body, label %for.end.148

for.body:                                         ; preds = %for.cond
  %15 = bitcast %struct.opj_tcd_tilecomp** %tilec to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load i32, i32* %compno, align 4, !tbaa !1
  %idxprom1 = zext i32 %16 to i64
  %17 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tcd_tile, align 8, !tbaa !5
  %comps = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %17, i32 0, i32 5
  %18 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %comps, align 8, !tbaa !18
  %arrayidx2 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %18, i64 %idxprom1
  store %struct.opj_tcd_tilecomp* %arrayidx2, %struct.opj_tcd_tilecomp** %tilec, align 8, !tbaa !5
  store i32 0, i32* %resno, align 4, !tbaa !1
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.143, %for.body
  %19 = load i32, i32* %resno, align 4, !tbaa !1
  %20 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %tilec, align 8, !tbaa !5
  %numresolutions = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %20, i32 0, i32 4
  %21 = load i32, i32* %numresolutions, align 4, !tbaa !19
  %cmp4 = icmp ult i32 %19, %21
  br i1 %cmp4, label %for.body.5, label %for.end.145

for.body.5:                                       ; preds = %for.cond.3
  %22 = bitcast %struct.opj_tcd_resolution** %res to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  %23 = load i32, i32* %resno, align 4, !tbaa !1
  %idxprom6 = zext i32 %23 to i64
  %24 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %tilec, align 8, !tbaa !5
  %resolutions = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %24, i32 0, i32 6
  %25 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %resolutions, align 8, !tbaa !29
  %arrayidx7 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %25, i64 %idxprom6
  store %struct.opj_tcd_resolution* %arrayidx7, %struct.opj_tcd_resolution** %res, align 8, !tbaa !5
  store i32 0, i32* %bandno, align 4, !tbaa !1
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.140, %for.body.5
  %26 = load i32, i32* %bandno, align 4, !tbaa !1
  %27 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %res, align 8, !tbaa !5
  %numbands = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %27, i32 0, i32 6
  %28 = load i32, i32* %numbands, align 4, !tbaa !30
  %cmp9 = icmp ult i32 %26, %28
  br i1 %cmp9, label %for.body.10, label %for.end.142

for.body.10:                                      ; preds = %for.cond.8
  %29 = bitcast %struct.opj_tcd_band** %band to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  %30 = load i32, i32* %bandno, align 4, !tbaa !1
  %idxprom11 = zext i32 %30 to i64
  %31 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %res, align 8, !tbaa !5
  %bands = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %31, i32 0, i32 7
  %arrayidx12 = getelementptr inbounds [3 x %struct.opj_tcd_band], [3 x %struct.opj_tcd_band]* %bands, i32 0, i64 %idxprom11
  store %struct.opj_tcd_band* %arrayidx12, %struct.opj_tcd_band** %band, align 8, !tbaa !5
  store i32 0, i32* %precno, align 4, !tbaa !1
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.137, %for.body.10
  %32 = load i32, i32* %precno, align 4, !tbaa !1
  %33 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %res, align 8, !tbaa !5
  %pw = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %33, i32 0, i32 4
  %34 = load i32, i32* %pw, align 4, !tbaa !32
  %35 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %res, align 8, !tbaa !5
  %ph = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %35, i32 0, i32 5
  %36 = load i32, i32* %ph, align 4, !tbaa !33
  %mul = mul i32 %34, %36
  %cmp14 = icmp ult i32 %32, %mul
  br i1 %cmp14, label %for.body.15, label %for.end.139

for.body.15:                                      ; preds = %for.cond.13
  %37 = bitcast %struct.opj_tcd_precinct** %prc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %37) #1
  %38 = load i32, i32* %precno, align 4, !tbaa !1
  %idxprom16 = zext i32 %38 to i64
  %39 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %band, align 8, !tbaa !5
  %precincts = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %39, i32 0, i32 5
  %40 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %precincts, align 8, !tbaa !34
  %arrayidx17 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %40, i64 %idxprom16
  store %struct.opj_tcd_precinct* %arrayidx17, %struct.opj_tcd_precinct** %prc, align 8, !tbaa !5
  store i32 0, i32* %cblkno, align 4, !tbaa !1
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.134, %for.body.15
  %41 = load i32, i32* %cblkno, align 4, !tbaa !1
  %42 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %prc, align 8, !tbaa !5
  %cw = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %42, i32 0, i32 4
  %43 = load i32, i32* %cw, align 4, !tbaa !37
  %44 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %prc, align 8, !tbaa !5
  %ch = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %44, i32 0, i32 5
  %45 = load i32, i32* %ch, align 4, !tbaa !39
  %mul19 = mul i32 %43, %45
  %cmp20 = icmp ult i32 %41, %mul19
  br i1 %cmp20, label %for.body.21, label %for.end.136

for.body.21:                                      ; preds = %for.cond.18
  %46 = bitcast %struct.opj_tcd_cblk_enc** %cblk to i8*
  call void @llvm.lifetime.start(i64 8, i8* %46) #1
  %47 = load i32, i32* %cblkno, align 4, !tbaa !1
  %idxprom22 = zext i32 %47 to i64
  %48 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %prc, align 8, !tbaa !5
  %cblks = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %48, i32 0, i32 6
  %enc = bitcast %union.anon* %cblks to %struct.opj_tcd_cblk_enc**
  %49 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %enc, align 8, !tbaa !5
  %arrayidx23 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %49, i64 %idxprom22
  store %struct.opj_tcd_cblk_enc* %arrayidx23, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !5
  %50 = bitcast %struct.opj_tcd_layer** %layer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %50) #1
  %51 = load i32, i32* %layno.addr, align 4, !tbaa !1
  %idxprom24 = zext i32 %51 to i64
  %52 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !5
  %layers = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %52, i32 0, i32 1
  %53 = load %struct.opj_tcd_layer*, %struct.opj_tcd_layer** %layers, align 8, !tbaa !40
  %arrayidx25 = getelementptr inbounds %struct.opj_tcd_layer, %struct.opj_tcd_layer* %53, i64 %idxprom24
  store %struct.opj_tcd_layer* %arrayidx25, %struct.opj_tcd_layer** %layer, align 8, !tbaa !5
  %54 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #1
  %55 = load i32, i32* %layno.addr, align 4, !tbaa !1
  %cmp26 = icmp eq i32 %55, 0
  br i1 %cmp26, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.21
  %56 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !5
  %numpassesinlayers = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %56, i32 0, i32 10
  store i32 0, i32* %numpassesinlayers, align 4, !tbaa !43
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.21
  %57 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !5
  %numpassesinlayers27 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %57, i32 0, i32 10
  %58 = load i32, i32* %numpassesinlayers27, align 4, !tbaa !43
  store i32 %58, i32* %n, align 4, !tbaa !1
  %59 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !5
  %numpassesinlayers28 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %59, i32 0, i32 10
  %60 = load i32, i32* %numpassesinlayers28, align 4, !tbaa !43
  store i32 %60, i32* %passno, align 4, !tbaa !1
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc, %if.end
  %61 = load i32, i32* %passno, align 4, !tbaa !1
  %62 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !5
  %totalpasses = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %62, i32 0, i32 11
  %63 = load i32, i32* %totalpasses, align 4, !tbaa !53
  %cmp30 = icmp ult i32 %61, %63
  br i1 %cmp30, label %for.body.31, label %for.end

for.body.31:                                      ; preds = %for.cond.29
  %64 = bitcast i32* %dr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %64) #1
  %65 = bitcast double* %dd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %65) #1
  %66 = bitcast %struct.opj_tcd_pass** %pass to i8*
  call void @llvm.lifetime.start(i64 8, i8* %66) #1
  %67 = load i32, i32* %passno, align 4, !tbaa !1
  %idxprom32 = zext i32 %67 to i64
  %68 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !5
  %passes = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %68, i32 0, i32 2
  %69 = load %struct.opj_tcd_pass*, %struct.opj_tcd_pass** %passes, align 8, !tbaa !46
  %arrayidx33 = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %69, i64 %idxprom32
  store %struct.opj_tcd_pass* %arrayidx33, %struct.opj_tcd_pass** %pass, align 8, !tbaa !5
  %70 = load i32, i32* %n, align 4, !tbaa !1
  %cmp34 = icmp eq i32 %70, 0
  br i1 %cmp34, label %if.then.35, label %if.else

if.then.35:                                       ; preds = %for.body.31
  %71 = load %struct.opj_tcd_pass*, %struct.opj_tcd_pass** %pass, align 8, !tbaa !5
  %rate = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %71, i32 0, i32 0
  %72 = load i32, i32* %rate, align 4, !tbaa !47
  store i32 %72, i32* %dr, align 4, !tbaa !1
  %73 = load %struct.opj_tcd_pass*, %struct.opj_tcd_pass** %pass, align 8, !tbaa !5
  %distortiondec = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %73, i32 0, i32 1
  %74 = load double, double* %distortiondec, align 8, !tbaa !54
  store double %74, double* %dd, align 8, !tbaa !52
  br label %if.end.49

if.else:                                          ; preds = %for.body.31
  %75 = load %struct.opj_tcd_pass*, %struct.opj_tcd_pass** %pass, align 8, !tbaa !5
  %rate36 = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %75, i32 0, i32 0
  %76 = load i32, i32* %rate36, align 4, !tbaa !47
  %77 = load i32, i32* %n, align 4, !tbaa !1
  %sub = sub i32 %77, 1
  %idxprom37 = zext i32 %sub to i64
  %78 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !5
  %passes38 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %78, i32 0, i32 2
  %79 = load %struct.opj_tcd_pass*, %struct.opj_tcd_pass** %passes38, align 8, !tbaa !46
  %arrayidx39 = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %79, i64 %idxprom37
  %rate40 = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %arrayidx39, i32 0, i32 0
  %80 = load i32, i32* %rate40, align 4, !tbaa !47
  %sub41 = sub i32 %76, %80
  store i32 %sub41, i32* %dr, align 4, !tbaa !1
  %81 = load %struct.opj_tcd_pass*, %struct.opj_tcd_pass** %pass, align 8, !tbaa !5
  %distortiondec42 = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %81, i32 0, i32 1
  %82 = load double, double* %distortiondec42, align 8, !tbaa !54
  %83 = load i32, i32* %n, align 4, !tbaa !1
  %sub43 = sub i32 %83, 1
  %idxprom44 = zext i32 %sub43 to i64
  %84 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !5
  %passes45 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %84, i32 0, i32 2
  %85 = load %struct.opj_tcd_pass*, %struct.opj_tcd_pass** %passes45, align 8, !tbaa !46
  %arrayidx46 = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %85, i64 %idxprom44
  %distortiondec47 = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %arrayidx46, i32 0, i32 1
  %86 = load double, double* %distortiondec47, align 8, !tbaa !54
  %sub48 = fsub double %82, %86
  store double %sub48, double* %dd, align 8, !tbaa !52
  br label %if.end.49

if.end.49:                                        ; preds = %if.else, %if.then.35
  %87 = load i32, i32* %dr, align 4, !tbaa !1
  %tobool = icmp ne i32 %87, 0
  br i1 %tobool, label %if.end.54, label %if.then.50

if.then.50:                                       ; preds = %if.end.49
  %88 = load double, double* %dd, align 8, !tbaa !52
  %cmp51 = fcmp une double %88, 0.000000e+00
  br i1 %cmp51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.then.50
  %89 = load i32, i32* %passno, align 4, !tbaa !1
  %add = add i32 %89, 1
  store i32 %add, i32* %n, align 4, !tbaa !1
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %if.then.50
  store i32 19, i32* %cleanup.dest.slot
  br label %cleanup

if.end.54:                                        ; preds = %if.end.49
  %90 = load double, double* %dd, align 8, !tbaa !52
  %91 = load i32, i32* %dr, align 4, !tbaa !1
  %conv = uitofp i32 %91 to double
  %div = fdiv double %90, %conv
  %92 = load double, double* %thresh.addr, align 8, !tbaa !52
  %cmp55 = fcmp oge double %div, %92
  br i1 %cmp55, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %if.end.54
  %93 = load i32, i32* %passno, align 4, !tbaa !1
  %add58 = add i32 %93, 1
  store i32 %add58, i32* %n, align 4, !tbaa !1
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.57, %if.end.54
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.59, %if.end.53
  %94 = bitcast %struct.opj_tcd_pass** %pass to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  %95 = bitcast double* %dd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #1
  %96 = bitcast i32* %dr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 19, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %97 = load i32, i32* %passno, align 4, !tbaa !1
  %inc = add i32 %97, 1
  store i32 %inc, i32* %passno, align 4, !tbaa !1
  br label %for.cond.29

for.end:                                          ; preds = %for.cond.29
  %98 = load i32, i32* %n, align 4, !tbaa !1
  %99 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !5
  %numpassesinlayers62 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %99, i32 0, i32 10
  %100 = load i32, i32* %numpassesinlayers62, align 4, !tbaa !43
  %sub63 = sub i32 %98, %100
  %101 = load %struct.opj_tcd_layer*, %struct.opj_tcd_layer** %layer, align 8, !tbaa !5
  %numpasses = getelementptr inbounds %struct.opj_tcd_layer, %struct.opj_tcd_layer* %101, i32 0, i32 0
  store i32 %sub63, i32* %numpasses, align 4, !tbaa !44
  %102 = load %struct.opj_tcd_layer*, %struct.opj_tcd_layer** %layer, align 8, !tbaa !5
  %numpasses64 = getelementptr inbounds %struct.opj_tcd_layer, %struct.opj_tcd_layer* %102, i32 0, i32 0
  %103 = load i32, i32* %numpasses64, align 4, !tbaa !44
  %tobool65 = icmp ne i32 %103, 0
  br i1 %tobool65, label %if.end.67, label %if.then.66

if.then.66:                                       ; preds = %for.end
  %104 = load %struct.opj_tcd_layer*, %struct.opj_tcd_layer** %layer, align 8, !tbaa !5
  %disto = getelementptr inbounds %struct.opj_tcd_layer, %struct.opj_tcd_layer* %104, i32 0, i32 2
  store double 0.000000e+00, double* %disto, align 8, !tbaa !55
  store i32 16, i32* %cleanup.dest.slot
  br label %cleanup.129

if.end.67:                                        ; preds = %for.end
  %105 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !5
  %numpassesinlayers68 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %105, i32 0, i32 10
  %106 = load i32, i32* %numpassesinlayers68, align 4, !tbaa !43
  %cmp69 = icmp eq i32 %106, 0
  br i1 %cmp69, label %if.then.71, label %if.else.84

if.then.71:                                       ; preds = %if.end.67
  %107 = load i32, i32* %n, align 4, !tbaa !1
  %sub72 = sub i32 %107, 1
  %idxprom73 = zext i32 %sub72 to i64
  %108 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !5
  %passes74 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %108, i32 0, i32 2
  %109 = load %struct.opj_tcd_pass*, %struct.opj_tcd_pass** %passes74, align 8, !tbaa !46
  %arrayidx75 = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %109, i64 %idxprom73
  %rate76 = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %arrayidx75, i32 0, i32 0
  %110 = load i32, i32* %rate76, align 4, !tbaa !47
  %111 = load %struct.opj_tcd_layer*, %struct.opj_tcd_layer** %layer, align 8, !tbaa !5
  %len = getelementptr inbounds %struct.opj_tcd_layer, %struct.opj_tcd_layer* %111, i32 0, i32 1
  store i32 %110, i32* %len, align 4, !tbaa !49
  %112 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !5
  %data = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %112, i32 0, i32 0
  %113 = load i8*, i8** %data, align 8, !tbaa !50
  %114 = load %struct.opj_tcd_layer*, %struct.opj_tcd_layer** %layer, align 8, !tbaa !5
  %data77 = getelementptr inbounds %struct.opj_tcd_layer, %struct.opj_tcd_layer* %114, i32 0, i32 3
  store i8* %113, i8** %data77, align 8, !tbaa !51
  %115 = load i32, i32* %n, align 4, !tbaa !1
  %sub78 = sub i32 %115, 1
  %idxprom79 = zext i32 %sub78 to i64
  %116 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !5
  %passes80 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %116, i32 0, i32 2
  %117 = load %struct.opj_tcd_pass*, %struct.opj_tcd_pass** %passes80, align 8, !tbaa !46
  %arrayidx81 = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %117, i64 %idxprom79
  %distortiondec82 = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %arrayidx81, i32 0, i32 1
  %118 = load double, double* %distortiondec82, align 8, !tbaa !54
  %119 = load %struct.opj_tcd_layer*, %struct.opj_tcd_layer** %layer, align 8, !tbaa !5
  %disto83 = getelementptr inbounds %struct.opj_tcd_layer, %struct.opj_tcd_layer* %119, i32 0, i32 2
  store double %118, double* %disto83, align 8, !tbaa !55
  br label %if.end.119

if.else.84:                                       ; preds = %if.end.67
  %120 = load i32, i32* %n, align 4, !tbaa !1
  %sub85 = sub i32 %120, 1
  %idxprom86 = zext i32 %sub85 to i64
  %121 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !5
  %passes87 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %121, i32 0, i32 2
  %122 = load %struct.opj_tcd_pass*, %struct.opj_tcd_pass** %passes87, align 8, !tbaa !46
  %arrayidx88 = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %122, i64 %idxprom86
  %rate89 = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %arrayidx88, i32 0, i32 0
  %123 = load i32, i32* %rate89, align 4, !tbaa !47
  %124 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !5
  %numpassesinlayers90 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %124, i32 0, i32 10
  %125 = load i32, i32* %numpassesinlayers90, align 4, !tbaa !43
  %sub91 = sub i32 %125, 1
  %idxprom92 = zext i32 %sub91 to i64
  %126 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !5
  %passes93 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %126, i32 0, i32 2
  %127 = load %struct.opj_tcd_pass*, %struct.opj_tcd_pass** %passes93, align 8, !tbaa !46
  %arrayidx94 = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %127, i64 %idxprom92
  %rate95 = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %arrayidx94, i32 0, i32 0
  %128 = load i32, i32* %rate95, align 4, !tbaa !47
  %sub96 = sub i32 %123, %128
  %129 = load %struct.opj_tcd_layer*, %struct.opj_tcd_layer** %layer, align 8, !tbaa !5
  %len97 = getelementptr inbounds %struct.opj_tcd_layer, %struct.opj_tcd_layer* %129, i32 0, i32 1
  store i32 %sub96, i32* %len97, align 4, !tbaa !49
  %130 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !5
  %data98 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %130, i32 0, i32 0
  %131 = load i8*, i8** %data98, align 8, !tbaa !50
  %132 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !5
  %numpassesinlayers99 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %132, i32 0, i32 10
  %133 = load i32, i32* %numpassesinlayers99, align 4, !tbaa !43
  %sub100 = sub i32 %133, 1
  %idxprom101 = zext i32 %sub100 to i64
  %134 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !5
  %passes102 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %134, i32 0, i32 2
  %135 = load %struct.opj_tcd_pass*, %struct.opj_tcd_pass** %passes102, align 8, !tbaa !46
  %arrayidx103 = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %135, i64 %idxprom101
  %rate104 = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %arrayidx103, i32 0, i32 0
  %136 = load i32, i32* %rate104, align 4, !tbaa !47
  %idx.ext = zext i32 %136 to i64
  %add.ptr = getelementptr inbounds i8, i8* %131, i64 %idx.ext
  %137 = load %struct.opj_tcd_layer*, %struct.opj_tcd_layer** %layer, align 8, !tbaa !5
  %data105 = getelementptr inbounds %struct.opj_tcd_layer, %struct.opj_tcd_layer* %137, i32 0, i32 3
  store i8* %add.ptr, i8** %data105, align 8, !tbaa !51
  %138 = load i32, i32* %n, align 4, !tbaa !1
  %sub106 = sub i32 %138, 1
  %idxprom107 = zext i32 %sub106 to i64
  %139 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !5
  %passes108 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %139, i32 0, i32 2
  %140 = load %struct.opj_tcd_pass*, %struct.opj_tcd_pass** %passes108, align 8, !tbaa !46
  %arrayidx109 = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %140, i64 %idxprom107
  %distortiondec110 = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %arrayidx109, i32 0, i32 1
  %141 = load double, double* %distortiondec110, align 8, !tbaa !54
  %142 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !5
  %numpassesinlayers111 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %142, i32 0, i32 10
  %143 = load i32, i32* %numpassesinlayers111, align 4, !tbaa !43
  %sub112 = sub i32 %143, 1
  %idxprom113 = zext i32 %sub112 to i64
  %144 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !5
  %passes114 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %144, i32 0, i32 2
  %145 = load %struct.opj_tcd_pass*, %struct.opj_tcd_pass** %passes114, align 8, !tbaa !46
  %arrayidx115 = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %145, i64 %idxprom113
  %distortiondec116 = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %arrayidx115, i32 0, i32 1
  %146 = load double, double* %distortiondec116, align 8, !tbaa !54
  %sub117 = fsub double %141, %146
  %147 = load %struct.opj_tcd_layer*, %struct.opj_tcd_layer** %layer, align 8, !tbaa !5
  %disto118 = getelementptr inbounds %struct.opj_tcd_layer, %struct.opj_tcd_layer* %147, i32 0, i32 2
  store double %sub117, double* %disto118, align 8, !tbaa !55
  br label %if.end.119

if.end.119:                                       ; preds = %if.else.84, %if.then.71
  %148 = load %struct.opj_tcd_layer*, %struct.opj_tcd_layer** %layer, align 8, !tbaa !5
  %disto120 = getelementptr inbounds %struct.opj_tcd_layer, %struct.opj_tcd_layer* %148, i32 0, i32 2
  %149 = load double, double* %disto120, align 8, !tbaa !55
  %150 = load i32, i32* %layno.addr, align 4, !tbaa !1
  %idxprom121 = zext i32 %150 to i64
  %151 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tcd_tile, align 8, !tbaa !5
  %distolayer122 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %151, i32 0, i32 8
  %arrayidx123 = getelementptr inbounds [100 x double], [100 x double]* %distolayer122, i32 0, i64 %idxprom121
  %152 = load double, double* %arrayidx123, align 8, !tbaa !52
  %add124 = fadd double %152, %149
  store double %add124, double* %arrayidx123, align 8, !tbaa !52
  %153 = load i32, i32* %final.addr, align 4, !tbaa !1
  %tobool125 = icmp ne i32 %153, 0
  br i1 %tobool125, label %if.then.126, label %if.end.128

if.then.126:                                      ; preds = %if.end.119
  %154 = load i32, i32* %n, align 4, !tbaa !1
  %155 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !5
  %numpassesinlayers127 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %155, i32 0, i32 10
  store i32 %154, i32* %numpassesinlayers127, align 4, !tbaa !43
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.126, %if.end.119
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.129

cleanup.129:                                      ; preds = %if.end.128, %if.then.66
  %156 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %156) #1
  %157 = bitcast %struct.opj_tcd_layer** %layer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %157) #1
  %158 = bitcast %struct.opj_tcd_cblk_enc** %cblk to i8*
  call void @llvm.lifetime.end(i64 8, i8* %158) #1
  %cleanup.dest.132 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.132, label %unreachable [
    i32 0, label %cleanup.cont.133
    i32 16, label %for.inc.134
  ]

cleanup.cont.133:                                 ; preds = %cleanup.129
  br label %for.inc.134

for.inc.134:                                      ; preds = %cleanup.cont.133, %cleanup.129
  %159 = load i32, i32* %cblkno, align 4, !tbaa !1
  %inc135 = add i32 %159, 1
  store i32 %inc135, i32* %cblkno, align 4, !tbaa !1
  br label %for.cond.18

for.end.136:                                      ; preds = %for.cond.18
  %160 = bitcast %struct.opj_tcd_precinct** %prc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %160) #1
  br label %for.inc.137

for.inc.137:                                      ; preds = %for.end.136
  %161 = load i32, i32* %precno, align 4, !tbaa !1
  %inc138 = add i32 %161, 1
  store i32 %inc138, i32* %precno, align 4, !tbaa !1
  br label %for.cond.13

for.end.139:                                      ; preds = %for.cond.13
  %162 = bitcast %struct.opj_tcd_band** %band to i8*
  call void @llvm.lifetime.end(i64 8, i8* %162) #1
  br label %for.inc.140

for.inc.140:                                      ; preds = %for.end.139
  %163 = load i32, i32* %bandno, align 4, !tbaa !1
  %inc141 = add i32 %163, 1
  store i32 %inc141, i32* %bandno, align 4, !tbaa !1
  br label %for.cond.8

for.end.142:                                      ; preds = %for.cond.8
  %164 = bitcast %struct.opj_tcd_resolution** %res to i8*
  call void @llvm.lifetime.end(i64 8, i8* %164) #1
  br label %for.inc.143

for.inc.143:                                      ; preds = %for.end.142
  %165 = load i32, i32* %resno, align 4, !tbaa !1
  %inc144 = add i32 %165, 1
  store i32 %inc144, i32* %resno, align 4, !tbaa !1
  br label %for.cond.3

for.end.145:                                      ; preds = %for.cond.3
  %166 = bitcast %struct.opj_tcd_tilecomp** %tilec to i8*
  call void @llvm.lifetime.end(i64 8, i8* %166) #1
  br label %for.inc.146

for.inc.146:                                      ; preds = %for.end.145
  %167 = load i32, i32* %compno, align 4, !tbaa !1
  %inc147 = add i32 %167, 1
  store i32 %inc147, i32* %compno, align 4, !tbaa !1
  br label %for.cond

for.end.148:                                      ; preds = %for.cond
  %168 = bitcast %struct.opj_tcd_tile** %tcd_tile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %168) #1
  %169 = bitcast i32* %passno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #1
  %170 = bitcast i32* %cblkno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %170) #1
  %171 = bitcast i32* %precno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %171) #1
  %172 = bitcast i32* %bandno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %172) #1
  %173 = bitcast i32* %resno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %173) #1
  %174 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %174) #1
  ret void

unreachable:                                      ; preds = %cleanup.129, %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @opj_tcd_rateallocate(%struct.opj_tcd* %tcd, i8* %dest, i32* %p_data_written, i32 %len, %struct.opj_codestream_info* %cstr_info) #0 {
entry:
  %retval = alloca i32, align 4
  %tcd.addr = alloca %struct.opj_tcd*, align 8
  %dest.addr = alloca i8*, align 8
  %p_data_written.addr = alloca i32*, align 8
  %len.addr = alloca i32, align 4
  %cstr_info.addr = alloca %struct.opj_codestream_info*, align 8
  %compno = alloca i32, align 4
  %resno = alloca i32, align 4
  %bandno = alloca i32, align 4
  %precno = alloca i32, align 4
  %cblkno = alloca i32, align 4
  %layno = alloca i32, align 4
  %passno = alloca i32, align 4
  %min = alloca double, align 8
  %max = alloca double, align 8
  %cumdisto = alloca [100 x double], align 16
  %K = alloca double, align 8
  %maxSE = alloca double, align 8
  %cp = alloca %struct.opj_cp*, align 8
  %tcd_tile = alloca %struct.opj_tcd_tile*, align 8
  %tcd_tcp = alloca %struct.opj_tcp*, align 8
  %tilec = alloca %struct.opj_tcd_tilecomp*, align 8
  %res = alloca %struct.opj_tcd_resolution*, align 8
  %band = alloca %struct.opj_tcd_band*, align 8
  %prc = alloca %struct.opj_tcd_precinct*, align 8
  %cblk = alloca %struct.opj_tcd_cblk_enc*, align 8
  %pass = alloca %struct.opj_tcd_pass*, align 8
  %dr = alloca i32, align 4
  %dd = alloca double, align 8
  %rdslope = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  %tile_info = alloca %struct.opj_tile_info*, align 8
  %lo = alloca double, align 8
  %hi = alloca double, align 8
  %success = alloca i32, align 4
  %maxlen = alloca i32, align 4
  %goodthresh = alloca double, align 8
  %stable_thresh = alloca double, align 8
  %i = alloca i32, align 4
  %distotarget = alloca double, align 8
  %t2 = alloca %struct.opj_t2*, align 8
  %thresh168 = alloca double, align 8
  %distoachieved = alloca double, align 8
  store %struct.opj_tcd* %tcd, %struct.opj_tcd** %tcd.addr, align 8, !tbaa !5
  store i8* %dest, i8** %dest.addr, align 8, !tbaa !5
  store i32* %p_data_written, i32** %p_data_written.addr, align 8, !tbaa !5
  store i32 %len, i32* %len.addr, align 4, !tbaa !1
  store %struct.opj_codestream_info* %cstr_info, %struct.opj_codestream_info** %cstr_info.addr, align 8, !tbaa !5
  %0 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %resno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %bandno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %precno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %cblkno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %layno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %passno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast double* %min to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast double* %max to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast [100 x double]* %cumdisto to i8*
  call void @llvm.lifetime.start(i64 800, i8* %9) #1
  %10 = bitcast double* %K to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store double 1.000000e+00, double* %K, align 8, !tbaa !52
  %11 = bitcast double* %maxSE to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store double 0.000000e+00, double* %maxSE, align 8, !tbaa !52
  %12 = bitcast %struct.opj_cp** %cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.opj_tcd*, %struct.opj_tcd** %tcd.addr, align 8, !tbaa !5
  %cp1 = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %13, i32 0, i32 7
  %14 = load %struct.opj_cp*, %struct.opj_cp** %cp1, align 8, !tbaa !12
  store %struct.opj_cp* %14, %struct.opj_cp** %cp, align 8, !tbaa !5
  %15 = bitcast %struct.opj_tcd_tile** %tcd_tile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load %struct.opj_tcd*, %struct.opj_tcd** %tcd.addr, align 8, !tbaa !5
  %tcd_image = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %16, i32 0, i32 5
  %17 = load %struct.opj_tcd_image*, %struct.opj_tcd_image** %tcd_image, align 8, !tbaa !7
  %tiles = getelementptr inbounds %struct.opj_tcd_image, %struct.opj_tcd_image* %17, i32 0, i32 0
  %18 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tiles, align 8, !tbaa !13
  store %struct.opj_tcd_tile* %18, %struct.opj_tcd_tile** %tcd_tile, align 8, !tbaa !5
  %19 = bitcast %struct.opj_tcp** %tcd_tcp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = load %struct.opj_tcd*, %struct.opj_tcd** %tcd.addr, align 8, !tbaa !5
  %tcp = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %20, i32 0, i32 8
  %21 = load %struct.opj_tcp*, %struct.opj_tcp** %tcp, align 8, !tbaa !9
  store %struct.opj_tcp* %21, %struct.opj_tcp** %tcd_tcp, align 8, !tbaa !5
  store double 0x7FEFFFFFFFFFFFFF, double* %min, align 8, !tbaa !52
  store double 0.000000e+00, double* %max, align 8, !tbaa !52
  %22 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tcd_tile, align 8, !tbaa !5
  %numpix = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %22, i32 0, i32 6
  store i32 0, i32* %numpix, align 4, !tbaa !56
  store i32 0, i32* %compno, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.100, %entry
  %23 = load i32, i32* %compno, align 4, !tbaa !1
  %24 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tcd_tile, align 8, !tbaa !5
  %numcomps = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %24, i32 0, i32 4
  %25 = load i32, i32* %numcomps, align 4, !tbaa !15
  %cmp = icmp ult i32 %23, %25
  br i1 %cmp, label %for.body, label %for.end.102

for.body:                                         ; preds = %for.cond
  %26 = bitcast %struct.opj_tcd_tilecomp** %tilec to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  %27 = load i32, i32* %compno, align 4, !tbaa !1
  %idxprom = zext i32 %27 to i64
  %28 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tcd_tile, align 8, !tbaa !5
  %comps = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %28, i32 0, i32 5
  %29 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %comps, align 8, !tbaa !18
  %arrayidx = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %29, i64 %idxprom
  store %struct.opj_tcd_tilecomp* %arrayidx, %struct.opj_tcd_tilecomp** %tilec, align 8, !tbaa !5
  %30 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %tilec, align 8, !tbaa !5
  %numpix2 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %30, i32 0, i32 10
  store i32 0, i32* %numpix2, align 4, !tbaa !57
  store i32 0, i32* %resno, align 4, !tbaa !1
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.79, %for.body
  %31 = load i32, i32* %resno, align 4, !tbaa !1
  %32 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %tilec, align 8, !tbaa !5
  %numresolutions = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %32, i32 0, i32 4
  %33 = load i32, i32* %numresolutions, align 4, !tbaa !19
  %cmp4 = icmp ult i32 %31, %33
  br i1 %cmp4, label %for.body.5, label %for.end.81

for.body.5:                                       ; preds = %for.cond.3
  %34 = bitcast %struct.opj_tcd_resolution** %res to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #1
  %35 = load i32, i32* %resno, align 4, !tbaa !1
  %idxprom6 = zext i32 %35 to i64
  %36 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %tilec, align 8, !tbaa !5
  %resolutions = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %36, i32 0, i32 6
  %37 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %resolutions, align 8, !tbaa !29
  %arrayidx7 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %37, i64 %idxprom6
  store %struct.opj_tcd_resolution* %arrayidx7, %struct.opj_tcd_resolution** %res, align 8, !tbaa !5
  store i32 0, i32* %bandno, align 4, !tbaa !1
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.76, %for.body.5
  %38 = load i32, i32* %bandno, align 4, !tbaa !1
  %39 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %res, align 8, !tbaa !5
  %numbands = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %39, i32 0, i32 6
  %40 = load i32, i32* %numbands, align 4, !tbaa !30
  %cmp9 = icmp ult i32 %38, %40
  br i1 %cmp9, label %for.body.10, label %for.end.78

for.body.10:                                      ; preds = %for.cond.8
  %41 = bitcast %struct.opj_tcd_band** %band to i8*
  call void @llvm.lifetime.start(i64 8, i8* %41) #1
  %42 = load i32, i32* %bandno, align 4, !tbaa !1
  %idxprom11 = zext i32 %42 to i64
  %43 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %res, align 8, !tbaa !5
  %bands = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %43, i32 0, i32 7
  %arrayidx12 = getelementptr inbounds [3 x %struct.opj_tcd_band], [3 x %struct.opj_tcd_band]* %bands, i32 0, i64 %idxprom11
  store %struct.opj_tcd_band* %arrayidx12, %struct.opj_tcd_band** %band, align 8, !tbaa !5
  store i32 0, i32* %precno, align 4, !tbaa !1
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.73, %for.body.10
  %44 = load i32, i32* %precno, align 4, !tbaa !1
  %45 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %res, align 8, !tbaa !5
  %pw = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %45, i32 0, i32 4
  %46 = load i32, i32* %pw, align 4, !tbaa !32
  %47 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %res, align 8, !tbaa !5
  %ph = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %47, i32 0, i32 5
  %48 = load i32, i32* %ph, align 4, !tbaa !33
  %mul = mul i32 %46, %48
  %cmp14 = icmp ult i32 %44, %mul
  br i1 %cmp14, label %for.body.15, label %for.end.75

for.body.15:                                      ; preds = %for.cond.13
  %49 = bitcast %struct.opj_tcd_precinct** %prc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %49) #1
  %50 = load i32, i32* %precno, align 4, !tbaa !1
  %idxprom16 = zext i32 %50 to i64
  %51 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %band, align 8, !tbaa !5
  %precincts = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %51, i32 0, i32 5
  %52 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %precincts, align 8, !tbaa !34
  %arrayidx17 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %52, i64 %idxprom16
  store %struct.opj_tcd_precinct* %arrayidx17, %struct.opj_tcd_precinct** %prc, align 8, !tbaa !5
  store i32 0, i32* %cblkno, align 4, !tbaa !1
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.70, %for.body.15
  %53 = load i32, i32* %cblkno, align 4, !tbaa !1
  %54 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %prc, align 8, !tbaa !5
  %cw = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %54, i32 0, i32 4
  %55 = load i32, i32* %cw, align 4, !tbaa !37
  %56 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %prc, align 8, !tbaa !5
  %ch = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %56, i32 0, i32 5
  %57 = load i32, i32* %ch, align 4, !tbaa !39
  %mul19 = mul i32 %55, %57
  %cmp20 = icmp ult i32 %53, %mul19
  br i1 %cmp20, label %for.body.21, label %for.end.72

for.body.21:                                      ; preds = %for.cond.18
  %58 = bitcast %struct.opj_tcd_cblk_enc** %cblk to i8*
  call void @llvm.lifetime.start(i64 8, i8* %58) #1
  %59 = load i32, i32* %cblkno, align 4, !tbaa !1
  %idxprom22 = zext i32 %59 to i64
  %60 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %prc, align 8, !tbaa !5
  %cblks = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %60, i32 0, i32 6
  %enc = bitcast %union.anon* %cblks to %struct.opj_tcd_cblk_enc**
  %61 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %enc, align 8, !tbaa !5
  %arrayidx23 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %61, i64 %idxprom22
  store %struct.opj_tcd_cblk_enc* %arrayidx23, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !5
  store i32 0, i32* %passno, align 4, !tbaa !1
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc, %for.body.21
  %62 = load i32, i32* %passno, align 4, !tbaa !1
  %63 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !5
  %totalpasses = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %63, i32 0, i32 11
  %64 = load i32, i32* %totalpasses, align 4, !tbaa !53
  %cmp25 = icmp ult i32 %62, %64
  br i1 %cmp25, label %for.body.26, label %for.end

for.body.26:                                      ; preds = %for.cond.24
  %65 = bitcast %struct.opj_tcd_pass** %pass to i8*
  call void @llvm.lifetime.start(i64 8, i8* %65) #1
  %66 = load i32, i32* %passno, align 4, !tbaa !1
  %idxprom27 = zext i32 %66 to i64
  %67 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !5
  %passes = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %67, i32 0, i32 2
  %68 = load %struct.opj_tcd_pass*, %struct.opj_tcd_pass** %passes, align 8, !tbaa !46
  %arrayidx28 = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %68, i64 %idxprom27
  store %struct.opj_tcd_pass* %arrayidx28, %struct.opj_tcd_pass** %pass, align 8, !tbaa !5
  %69 = bitcast i32* %dr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %69) #1
  %70 = bitcast double* %dd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %70) #1
  %71 = bitcast double* %rdslope to i8*
  call void @llvm.lifetime.start(i64 8, i8* %71) #1
  %72 = load i32, i32* %passno, align 4, !tbaa !1
  %cmp29 = icmp eq i32 %72, 0
  br i1 %cmp29, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.26
  %73 = load %struct.opj_tcd_pass*, %struct.opj_tcd_pass** %pass, align 8, !tbaa !5
  %rate = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %73, i32 0, i32 0
  %74 = load i32, i32* %rate, align 4, !tbaa !47
  store i32 %74, i32* %dr, align 4, !tbaa !1
  %75 = load %struct.opj_tcd_pass*, %struct.opj_tcd_pass** %pass, align 8, !tbaa !5
  %distortiondec = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %75, i32 0, i32 1
  %76 = load double, double* %distortiondec, align 8, !tbaa !54
  store double %76, double* %dd, align 8, !tbaa !52
  br label %if.end

if.else:                                          ; preds = %for.body.26
  %77 = load %struct.opj_tcd_pass*, %struct.opj_tcd_pass** %pass, align 8, !tbaa !5
  %rate30 = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %77, i32 0, i32 0
  %78 = load i32, i32* %rate30, align 4, !tbaa !47
  %79 = load i32, i32* %passno, align 4, !tbaa !1
  %sub = sub i32 %79, 1
  %idxprom31 = zext i32 %sub to i64
  %80 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !5
  %passes32 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %80, i32 0, i32 2
  %81 = load %struct.opj_tcd_pass*, %struct.opj_tcd_pass** %passes32, align 8, !tbaa !46
  %arrayidx33 = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %81, i64 %idxprom31
  %rate34 = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %arrayidx33, i32 0, i32 0
  %82 = load i32, i32* %rate34, align 4, !tbaa !47
  %sub35 = sub i32 %78, %82
  store i32 %sub35, i32* %dr, align 4, !tbaa !1
  %83 = load %struct.opj_tcd_pass*, %struct.opj_tcd_pass** %pass, align 8, !tbaa !5
  %distortiondec36 = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %83, i32 0, i32 1
  %84 = load double, double* %distortiondec36, align 8, !tbaa !54
  %85 = load i32, i32* %passno, align 4, !tbaa !1
  %sub37 = sub i32 %85, 1
  %idxprom38 = zext i32 %sub37 to i64
  %86 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !5
  %passes39 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %86, i32 0, i32 2
  %87 = load %struct.opj_tcd_pass*, %struct.opj_tcd_pass** %passes39, align 8, !tbaa !46
  %arrayidx40 = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %87, i64 %idxprom38
  %distortiondec41 = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %arrayidx40, i32 0, i32 1
  %88 = load double, double* %distortiondec41, align 8, !tbaa !54
  %sub42 = fsub double %84, %88
  store double %sub42, double* %dd, align 8, !tbaa !52
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %89 = load i32, i32* %dr, align 4, !tbaa !1
  %cmp43 = icmp eq i32 %89, 0
  br i1 %cmp43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.end
  store i32 19, i32* %cleanup.dest.slot
  br label %cleanup

if.end.45:                                        ; preds = %if.end
  %90 = load double, double* %dd, align 8, !tbaa !52
  %91 = load i32, i32* %dr, align 4, !tbaa !1
  %conv = sitofp i32 %91 to double
  %div = fdiv double %90, %conv
  store double %div, double* %rdslope, align 8, !tbaa !52
  %92 = load double, double* %rdslope, align 8, !tbaa !52
  %93 = load double, double* %min, align 8, !tbaa !52
  %cmp46 = fcmp olt double %92, %93
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.end.45
  %94 = load double, double* %rdslope, align 8, !tbaa !52
  store double %94, double* %min, align 8, !tbaa !52
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %if.end.45
  %95 = load double, double* %rdslope, align 8, !tbaa !52
  %96 = load double, double* %max, align 8, !tbaa !52
  %cmp50 = fcmp ogt double %95, %96
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.49
  %97 = load double, double* %rdslope, align 8, !tbaa !52
  store double %97, double* %max, align 8, !tbaa !52
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %if.end.49
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.53, %if.then.44
  %98 = bitcast double* %rdslope to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  %99 = bitcast double* %dd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #1
  %100 = bitcast i32* %dr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  %101 = bitcast %struct.opj_tcd_pass** %pass to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 19, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %102 = load i32, i32* %passno, align 4, !tbaa !1
  %inc = add i32 %102, 1
  store i32 %inc, i32* %passno, align 4, !tbaa !1
  br label %for.cond.24

for.end:                                          ; preds = %for.cond.24
  %103 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !5
  %x1 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %103, i32 0, i32 5
  %104 = load i32, i32* %x1, align 4, !tbaa !58
  %105 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !5
  %x0 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %105, i32 0, i32 3
  %106 = load i32, i32* %x0, align 4, !tbaa !59
  %sub57 = sub nsw i32 %104, %106
  %107 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !5
  %y1 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %107, i32 0, i32 6
  %108 = load i32, i32* %y1, align 4, !tbaa !60
  %109 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !5
  %y0 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %109, i32 0, i32 4
  %110 = load i32, i32* %y0, align 4, !tbaa !61
  %sub58 = sub nsw i32 %108, %110
  %mul59 = mul nsw i32 %sub57, %sub58
  %111 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tcd_tile, align 8, !tbaa !5
  %numpix60 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %111, i32 0, i32 6
  %112 = load i32, i32* %numpix60, align 4, !tbaa !56
  %add = add nsw i32 %112, %mul59
  store i32 %add, i32* %numpix60, align 4, !tbaa !56
  %113 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !5
  %x161 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %113, i32 0, i32 5
  %114 = load i32, i32* %x161, align 4, !tbaa !58
  %115 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !5
  %x062 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %115, i32 0, i32 3
  %116 = load i32, i32* %x062, align 4, !tbaa !59
  %sub63 = sub nsw i32 %114, %116
  %117 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !5
  %y164 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %117, i32 0, i32 6
  %118 = load i32, i32* %y164, align 4, !tbaa !60
  %119 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !5
  %y065 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %119, i32 0, i32 4
  %120 = load i32, i32* %y065, align 4, !tbaa !61
  %sub66 = sub nsw i32 %118, %120
  %mul67 = mul nsw i32 %sub63, %sub66
  %121 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %tilec, align 8, !tbaa !5
  %numpix68 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %121, i32 0, i32 10
  %122 = load i32, i32* %numpix68, align 4, !tbaa !57
  %add69 = add nsw i32 %122, %mul67
  store i32 %add69, i32* %numpix68, align 4, !tbaa !57
  %123 = bitcast %struct.opj_tcd_cblk_enc** %cblk to i8*
  call void @llvm.lifetime.end(i64 8, i8* %123) #1
  br label %for.inc.70

for.inc.70:                                       ; preds = %for.end
  %124 = load i32, i32* %cblkno, align 4, !tbaa !1
  %inc71 = add i32 %124, 1
  store i32 %inc71, i32* %cblkno, align 4, !tbaa !1
  br label %for.cond.18

for.end.72:                                       ; preds = %for.cond.18
  %125 = bitcast %struct.opj_tcd_precinct** %prc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %125) #1
  br label %for.inc.73

for.inc.73:                                       ; preds = %for.end.72
  %126 = load i32, i32* %precno, align 4, !tbaa !1
  %inc74 = add i32 %126, 1
  store i32 %inc74, i32* %precno, align 4, !tbaa !1
  br label %for.cond.13

for.end.75:                                       ; preds = %for.cond.13
  %127 = bitcast %struct.opj_tcd_band** %band to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #1
  br label %for.inc.76

for.inc.76:                                       ; preds = %for.end.75
  %128 = load i32, i32* %bandno, align 4, !tbaa !1
  %inc77 = add i32 %128, 1
  store i32 %inc77, i32* %bandno, align 4, !tbaa !1
  br label %for.cond.8

for.end.78:                                       ; preds = %for.cond.8
  %129 = bitcast %struct.opj_tcd_resolution** %res to i8*
  call void @llvm.lifetime.end(i64 8, i8* %129) #1
  br label %for.inc.79

for.inc.79:                                       ; preds = %for.end.78
  %130 = load i32, i32* %resno, align 4, !tbaa !1
  %inc80 = add i32 %130, 1
  store i32 %inc80, i32* %resno, align 4, !tbaa !1
  br label %for.cond.3

for.end.81:                                       ; preds = %for.cond.3
  %131 = load i32, i32* %compno, align 4, !tbaa !1
  %idxprom82 = zext i32 %131 to i64
  %132 = load %struct.opj_tcd*, %struct.opj_tcd** %tcd.addr, align 8, !tbaa !5
  %image = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %132, i32 0, i32 6
  %133 = load %struct.opj_image*, %struct.opj_image** %image, align 8, !tbaa !23
  %comps83 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %133, i32 0, i32 6
  %134 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps83, align 8, !tbaa !24
  %arrayidx84 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %134, i64 %idxprom82
  %prec = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx84, i32 0, i32 6
  %135 = load i32, i32* %prec, align 4, !tbaa !26
  %shl = shl i32 1, %135
  %conv85 = sitofp i32 %shl to double
  %sub86 = fsub double %conv85, 1.000000e+00
  %136 = load i32, i32* %compno, align 4, !tbaa !1
  %idxprom87 = zext i32 %136 to i64
  %137 = load %struct.opj_tcd*, %struct.opj_tcd** %tcd.addr, align 8, !tbaa !5
  %image88 = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %137, i32 0, i32 6
  %138 = load %struct.opj_image*, %struct.opj_image** %image88, align 8, !tbaa !23
  %comps89 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %138, i32 0, i32 6
  %139 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps89, align 8, !tbaa !24
  %arrayidx90 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %139, i64 %idxprom87
  %prec91 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx90, i32 0, i32 6
  %140 = load i32, i32* %prec91, align 4, !tbaa !26
  %shl92 = shl i32 1, %140
  %conv93 = sitofp i32 %shl92 to double
  %sub94 = fsub double %conv93, 1.000000e+00
  %mul95 = fmul double %sub86, %sub94
  %141 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %tilec, align 8, !tbaa !5
  %numpix96 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %141, i32 0, i32 10
  %142 = load i32, i32* %numpix96, align 4, !tbaa !57
  %conv97 = sitofp i32 %142 to double
  %mul98 = fmul double %mul95, %conv97
  %143 = load double, double* %maxSE, align 8, !tbaa !52
  %add99 = fadd double %143, %mul98
  store double %add99, double* %maxSE, align 8, !tbaa !52
  %144 = bitcast %struct.opj_tcd_tilecomp** %tilec to i8*
  call void @llvm.lifetime.end(i64 8, i8* %144) #1
  br label %for.inc.100

for.inc.100:                                      ; preds = %for.end.81
  %145 = load i32, i32* %compno, align 4, !tbaa !1
  %inc101 = add i32 %145, 1
  store i32 %inc101, i32* %compno, align 4, !tbaa !1
  br label %for.cond

for.end.102:                                      ; preds = %for.cond
  %146 = load %struct.opj_codestream_info*, %struct.opj_codestream_info** %cstr_info.addr, align 8, !tbaa !5
  %tobool = icmp ne %struct.opj_codestream_info* %146, null
  br i1 %tobool, label %if.then.103, label %if.end.116

if.then.103:                                      ; preds = %for.end.102
  %147 = bitcast %struct.opj_tile_info** %tile_info to i8*
  call void @llvm.lifetime.start(i64 8, i8* %147) #1
  %148 = load %struct.opj_tcd*, %struct.opj_tcd** %tcd.addr, align 8, !tbaa !5
  %tcd_tileno = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %148, i32 0, i32 9
  %149 = load i32, i32* %tcd_tileno, align 4, !tbaa !62
  %idxprom104 = zext i32 %149 to i64
  %150 = load %struct.opj_codestream_info*, %struct.opj_codestream_info** %cstr_info.addr, align 8, !tbaa !5
  %tile = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %150, i32 0, i32 21
  %151 = load %struct.opj_tile_info*, %struct.opj_tile_info** %tile, align 8, !tbaa !63
  %arrayidx105 = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %151, i64 %idxprom104
  store %struct.opj_tile_info* %arrayidx105, %struct.opj_tile_info** %tile_info, align 8, !tbaa !5
  %152 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tcd_tile, align 8, !tbaa !5
  %numpix106 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %152, i32 0, i32 6
  %153 = load i32, i32* %numpix106, align 4, !tbaa !56
  %154 = load %struct.opj_tile_info*, %struct.opj_tile_info** %tile_info, align 8, !tbaa !5
  %numpix107 = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %154, i32 0, i32 10
  store i32 %153, i32* %numpix107, align 4, !tbaa !65
  %155 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tcd_tile, align 8, !tbaa !5
  %distotile = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %155, i32 0, i32 7
  %156 = load double, double* %distotile, align 8, !tbaa !67
  %157 = load %struct.opj_tile_info*, %struct.opj_tile_info** %tile_info, align 8, !tbaa !5
  %distotile108 = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %157, i32 0, i32 11
  store double %156, double* %distotile108, align 8, !tbaa !68
  %158 = load %struct.opj_tcp*, %struct.opj_tcp** %tcd_tcp, align 8, !tbaa !5
  %numlayers = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %158, i32 0, i32 2
  %159 = load i32, i32* %numlayers, align 4, !tbaa !10
  %conv109 = zext i32 %159 to i64
  %mul110 = mul i64 %conv109, 8
  %cmp111 = icmp uge i64 %mul110, -256
  br i1 %cmp111, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.103
  br label %cond.end

cond.false:                                       ; preds = %if.then.103
  %160 = load %struct.opj_tcp*, %struct.opj_tcp** %tcd_tcp, align 8, !tbaa !5
  %numlayers113 = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %160, i32 0, i32 2
  %161 = load i32, i32* %numlayers113, align 4, !tbaa !10
  %conv114 = zext i32 %161 to i64
  %mul115 = mul i64 %conv114, 8
  %call = call noalias i8* @malloc(i64 %mul115) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %call, %cond.false ]
  %162 = bitcast i8* %cond to double*
  %163 = load %struct.opj_tile_info*, %struct.opj_tile_info** %tile_info, align 8, !tbaa !5
  %thresh = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %163, i32 0, i32 0
  store double* %162, double** %thresh, align 8, !tbaa !69
  %164 = bitcast %struct.opj_tile_info** %tile_info to i8*
  call void @llvm.lifetime.end(i64 8, i8* %164) #1
  br label %if.end.116

if.end.116:                                       ; preds = %cond.end, %for.end.102
  store i32 0, i32* %layno, align 4, !tbaa !1
  br label %for.cond.117

for.cond.117:                                     ; preds = %for.inc.308, %if.end.116
  %165 = load i32, i32* %layno, align 4, !tbaa !1
  %166 = load %struct.opj_tcp*, %struct.opj_tcp** %tcd_tcp, align 8, !tbaa !5
  %numlayers118 = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %166, i32 0, i32 2
  %167 = load i32, i32* %numlayers118, align 4, !tbaa !10
  %cmp119 = icmp ult i32 %165, %167
  br i1 %cmp119, label %for.body.121, label %for.end.310

for.body.121:                                     ; preds = %for.cond.117
  %168 = bitcast double* %lo to i8*
  call void @llvm.lifetime.start(i64 8, i8* %168) #1
  %169 = load double, double* %min, align 8, !tbaa !52
  store double %169, double* %lo, align 8, !tbaa !52
  %170 = bitcast double* %hi to i8*
  call void @llvm.lifetime.start(i64 8, i8* %170) #1
  %171 = load double, double* %max, align 8, !tbaa !52
  store double %171, double* %hi, align 8, !tbaa !52
  %172 = bitcast i32* %success to i8*
  call void @llvm.lifetime.start(i64 4, i8* %172) #1
  store i32 0, i32* %success, align 4, !tbaa !1
  %173 = bitcast i32* %maxlen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %173) #1
  %174 = load i32, i32* %layno, align 4, !tbaa !1
  %idxprom122 = zext i32 %174 to i64
  %175 = load %struct.opj_tcp*, %struct.opj_tcp** %tcd_tcp, align 8, !tbaa !5
  %rates = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %175, i32 0, i32 5
  %arrayidx123 = getelementptr inbounds [100 x float], [100 x float]* %rates, i32 0, i64 %idxprom122
  %176 = load float, float* %arrayidx123, align 4, !tbaa !70
  %tobool124 = fcmp une float %176, 0.000000e+00
  br i1 %tobool124, label %cond.true.125, label %cond.false.133

cond.true.125:                                    ; preds = %for.body.121
  %177 = load i32, i32* %layno, align 4, !tbaa !1
  %idxprom126 = zext i32 %177 to i64
  %178 = load %struct.opj_tcp*, %struct.opj_tcp** %tcd_tcp, align 8, !tbaa !5
  %rates127 = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %178, i32 0, i32 5
  %arrayidx128 = getelementptr inbounds [100 x float], [100 x float]* %rates127, i32 0, i64 %idxprom126
  %179 = load float, float* %arrayidx128, align 4, !tbaa !70
  %conv129 = fpext float %179 to double
  %call130 = call double @ceil(double %conv129) #9
  %conv131 = fptoui double %call130 to i32
  %180 = load i32, i32* %len.addr, align 4, !tbaa !1
  %call132 = call i32 @opj_uint_min(i32 %conv131, i32 %180) #8
  br label %cond.end.134

cond.false.133:                                   ; preds = %for.body.121
  %181 = load i32, i32* %len.addr, align 4, !tbaa !1
  br label %cond.end.134

cond.end.134:                                     ; preds = %cond.false.133, %cond.true.125
  %cond135 = phi i32 [ %call132, %cond.true.125 ], [ %181, %cond.false.133 ]
  store i32 %cond135, i32* %maxlen, align 4, !tbaa !1
  %182 = bitcast double* %goodthresh to i8*
  call void @llvm.lifetime.start(i64 8, i8* %182) #1
  store double 0.000000e+00, double* %goodthresh, align 8, !tbaa !52
  %183 = bitcast double* %stable_thresh to i8*
  call void @llvm.lifetime.start(i64 8, i8* %183) #1
  store double 0.000000e+00, double* %stable_thresh, align 8, !tbaa !52
  %184 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %184) #1
  %185 = bitcast double* %distotarget to i8*
  call void @llvm.lifetime.start(i64 8, i8* %185) #1
  %186 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tcd_tile, align 8, !tbaa !5
  %distotile136 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %186, i32 0, i32 7
  %187 = load double, double* %distotile136, align 8, !tbaa !67
  %188 = load double, double* %maxSE, align 8, !tbaa !52
  %mul137 = fmul double 1.000000e+00, %188
  %189 = load i32, i32* %layno, align 4, !tbaa !1
  %idxprom138 = zext i32 %189 to i64
  %190 = load %struct.opj_tcp*, %struct.opj_tcp** %tcd_tcp, align 8, !tbaa !5
  %distoratio = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %190, i32 0, i32 12
  %arrayidx139 = getelementptr inbounds [100 x float], [100 x float]* %distoratio, i32 0, i64 %idxprom138
  %191 = load float, float* %arrayidx139, align 4, !tbaa !70
  %div140 = fdiv float %191, 1.000000e+01
  %conv141 = fpext float %div140 to double
  %call142 = call double @pow(double 1.000000e+01, double %conv141) #7
  %div143 = fdiv double %mul137, %call142
  %sub144 = fsub double %187, %div143
  store double %sub144, double* %distotarget, align 8, !tbaa !52
  %192 = load %struct.opj_cp*, %struct.opj_cp** %cp, align 8, !tbaa !5
  %m_specific_param = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %192, i32 0, i32 18
  %m_enc = bitcast %union.anon.0* %m_specific_param to %struct.opj_encoding_param*
  %m_disto_alloc = getelementptr inbounds %struct.opj_encoding_param, %struct.opj_encoding_param* %m_enc, i32 0, i32 5
  %bf.load = load i8, i8* %m_disto_alloc, align 1
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %cmp145 = icmp eq i32 %bf.cast, 1
  br i1 %cmp145, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %cond.end.134
  %193 = load i32, i32* %layno, align 4, !tbaa !1
  %idxprom147 = zext i32 %193 to i64
  %194 = load %struct.opj_tcp*, %struct.opj_tcp** %tcd_tcp, align 8, !tbaa !5
  %rates148 = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %194, i32 0, i32 5
  %arrayidx149 = getelementptr inbounds [100 x float], [100 x float]* %rates148, i32 0, i64 %idxprom147
  %195 = load float, float* %arrayidx149, align 4, !tbaa !70
  %cmp150 = fcmp ogt float %195, 0.000000e+00
  br i1 %cmp150, label %if.then.165, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %cond.end.134
  %196 = load %struct.opj_cp*, %struct.opj_cp** %cp, align 8, !tbaa !5
  %m_specific_param152 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %196, i32 0, i32 18
  %m_enc153 = bitcast %union.anon.0* %m_specific_param152 to %struct.opj_encoding_param*
  %m_fixed_quality = getelementptr inbounds %struct.opj_encoding_param, %struct.opj_encoding_param* %m_enc153, i32 0, i32 5
  %bf.load154 = load i8, i8* %m_fixed_quality, align 1
  %bf.lshr = lshr i8 %bf.load154, 2
  %bf.clear155 = and i8 %bf.lshr, 1
  %bf.cast156 = zext i8 %bf.clear155 to i32
  %cmp157 = icmp eq i32 %bf.cast156, 1
  br i1 %cmp157, label %land.lhs.true.159, label %if.else.266

land.lhs.true.159:                                ; preds = %lor.lhs.false
  %197 = load i32, i32* %layno, align 4, !tbaa !1
  %idxprom160 = zext i32 %197 to i64
  %198 = load %struct.opj_tcp*, %struct.opj_tcp** %tcd_tcp, align 8, !tbaa !5
  %distoratio161 = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %198, i32 0, i32 12
  %arrayidx162 = getelementptr inbounds [100 x float], [100 x float]* %distoratio161, i32 0, i64 %idxprom160
  %199 = load float, float* %arrayidx162, align 4, !tbaa !70
  %cmp163 = fcmp ogt float %199, 0.000000e+00
  br i1 %cmp163, label %if.then.165, label %if.else.266

if.then.165:                                      ; preds = %land.lhs.true.159, %land.lhs.true
  %200 = bitcast %struct.opj_t2** %t2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %200) #1
  %201 = load %struct.opj_tcd*, %struct.opj_tcd** %tcd.addr, align 8, !tbaa !5
  %image166 = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %201, i32 0, i32 6
  %202 = load %struct.opj_image*, %struct.opj_image** %image166, align 8, !tbaa !23
  %203 = load %struct.opj_cp*, %struct.opj_cp** %cp, align 8, !tbaa !5
  %call167 = call %struct.opj_t2* @opj_t2_create(%struct.opj_image* %202, %struct.opj_cp* %203) #8
  store %struct.opj_t2* %call167, %struct.opj_t2** %t2, align 8, !tbaa !5
  %204 = bitcast double* %thresh168 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %204) #1
  store double 0.000000e+00, double* %thresh168, align 8, !tbaa !52
  %205 = load %struct.opj_t2*, %struct.opj_t2** %t2, align 8, !tbaa !5
  %cmp169 = icmp eq %struct.opj_t2* %205, null
  br i1 %cmp169, label %if.then.171, label %if.end.172

if.then.171:                                      ; preds = %if.then.165
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.262

if.end.172:                                       ; preds = %if.then.165
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.173

for.cond.173:                                     ; preds = %for.inc.253, %if.end.172
  %206 = load i32, i32* %i, align 4, !tbaa !1
  %cmp174 = icmp ult i32 %206, 128
  br i1 %cmp174, label %for.body.176, label %for.end.255

for.body.176:                                     ; preds = %for.cond.173
  %207 = bitcast double* %distoachieved to i8*
  call void @llvm.lifetime.start(i64 8, i8* %207) #1
  store double 0.000000e+00, double* %distoachieved, align 8, !tbaa !52
  %208 = load double, double* %lo, align 8, !tbaa !52
  %209 = load double, double* %hi, align 8, !tbaa !52
  %add177 = fadd double %208, %209
  %div178 = fdiv double %add177, 2.000000e+00
  store double %div178, double* %thresh168, align 8, !tbaa !52
  %210 = load %struct.opj_tcd*, %struct.opj_tcd** %tcd.addr, align 8, !tbaa !5
  %211 = load i32, i32* %layno, align 4, !tbaa !1
  %212 = load double, double* %thresh168, align 8, !tbaa !52
  call void @opj_tcd_makelayer(%struct.opj_tcd* %210, i32 %211, double %212, i32 0) #8
  %213 = load %struct.opj_cp*, %struct.opj_cp** %cp, align 8, !tbaa !5
  %m_specific_param179 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %213, i32 0, i32 18
  %m_enc180 = bitcast %union.anon.0* %m_specific_param179 to %struct.opj_encoding_param*
  %m_fixed_quality181 = getelementptr inbounds %struct.opj_encoding_param, %struct.opj_encoding_param* %m_enc180, i32 0, i32 5
  %bf.load182 = load i8, i8* %m_fixed_quality181, align 1
  %bf.lshr183 = lshr i8 %bf.load182, 2
  %bf.clear184 = and i8 %bf.lshr183, 1
  %bf.cast185 = zext i8 %bf.clear184 to i32
  %tobool186 = icmp ne i32 %bf.cast185, 0
  br i1 %tobool186, label %if.then.187, label %if.else.239

if.then.187:                                      ; preds = %for.body.176
  %214 = load %struct.opj_cp*, %struct.opj_cp** %cp, align 8, !tbaa !5
  %m_specific_param188 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %214, i32 0, i32 18
  %m_enc189 = bitcast %union.anon.0* %m_specific_param188 to %struct.opj_encoding_param*
  %m_cinema = getelementptr inbounds %struct.opj_encoding_param, %struct.opj_encoding_param* %m_enc189, i32 0, i32 0
  %215 = load i32, i32* %m_cinema, align 4, !tbaa !71
  %tobool190 = icmp ne i32 %215, 0
  br i1 %tobool190, label %if.then.191, label %if.else.218

if.then.191:                                      ; preds = %if.then.187
  %216 = load %struct.opj_t2*, %struct.opj_t2** %t2, align 8, !tbaa !5
  %217 = load %struct.opj_tcd*, %struct.opj_tcd** %tcd.addr, align 8, !tbaa !5
  %tcd_tileno192 = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %217, i32 0, i32 9
  %218 = load i32, i32* %tcd_tileno192, align 4, !tbaa !62
  %219 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tcd_tile, align 8, !tbaa !5
  %220 = load i32, i32* %layno, align 4, !tbaa !1
  %add193 = add i32 %220, 1
  %221 = load i8*, i8** %dest.addr, align 8, !tbaa !5
  %222 = load i32*, i32** %p_data_written.addr, align 8, !tbaa !5
  %223 = load i32, i32* %maxlen, align 4, !tbaa !1
  %224 = load %struct.opj_codestream_info*, %struct.opj_codestream_info** %cstr_info.addr, align 8, !tbaa !5
  %225 = load %struct.opj_tcd*, %struct.opj_tcd** %tcd.addr, align 8, !tbaa !5
  %cur_tp_num = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %225, i32 0, i32 2
  %226 = load i32, i32* %cur_tp_num, align 4, !tbaa !72
  %227 = load %struct.opj_tcd*, %struct.opj_tcd** %tcd.addr, align 8, !tbaa !5
  %tp_pos = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %227, i32 0, i32 0
  %228 = load i32, i32* %tp_pos, align 4, !tbaa !73
  %229 = load %struct.opj_tcd*, %struct.opj_tcd** %tcd.addr, align 8, !tbaa !5
  %cur_pino = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %229, i32 0, i32 4
  %230 = load i32, i32* %cur_pino, align 4, !tbaa !74
  %call194 = call i32 @opj_t2_encode_packets(%struct.opj_t2* %216, i32 %218, %struct.opj_tcd_tile* %219, i32 %add193, i8* %221, i32* %222, i32 %223, %struct.opj_codestream_info* %224, i32 %226, i32 %228, i32 %230, i32 0) #8
  %tobool195 = icmp ne i32 %call194, 0
  br i1 %tobool195, label %if.else.197, label %if.then.196

if.then.196:                                      ; preds = %if.then.191
  %231 = load double, double* %thresh168, align 8, !tbaa !52
  store double %231, double* %lo, align 8, !tbaa !52
  store i32 25, i32* %cleanup.dest.slot
  br label %cleanup.250

if.else.197:                                      ; preds = %if.then.191
  %232 = load i32, i32* %layno, align 4, !tbaa !1
  %cmp198 = icmp eq i32 %232, 0
  br i1 %cmp198, label %cond.true.200, label %cond.false.202

cond.true.200:                                    ; preds = %if.else.197
  %233 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tcd_tile, align 8, !tbaa !5
  %distolayer = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %233, i32 0, i32 8
  %arrayidx201 = getelementptr inbounds [100 x double], [100 x double]* %distolayer, i32 0, i64 0
  %234 = load double, double* %arrayidx201, align 8, !tbaa !52
  br label %cond.end.210

cond.false.202:                                   ; preds = %if.else.197
  %235 = load i32, i32* %layno, align 4, !tbaa !1
  %sub203 = sub i32 %235, 1
  %idxprom204 = zext i32 %sub203 to i64
  %arrayidx205 = getelementptr inbounds [100 x double], [100 x double]* %cumdisto, i32 0, i64 %idxprom204
  %236 = load double, double* %arrayidx205, align 8, !tbaa !52
  %237 = load i32, i32* %layno, align 4, !tbaa !1
  %idxprom206 = zext i32 %237 to i64
  %238 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tcd_tile, align 8, !tbaa !5
  %distolayer207 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %238, i32 0, i32 8
  %arrayidx208 = getelementptr inbounds [100 x double], [100 x double]* %distolayer207, i32 0, i64 %idxprom206
  %239 = load double, double* %arrayidx208, align 8, !tbaa !52
  %add209 = fadd double %236, %239
  br label %cond.end.210

cond.end.210:                                     ; preds = %cond.false.202, %cond.true.200
  %cond211 = phi double [ %234, %cond.true.200 ], [ %add209, %cond.false.202 ]
  store double %cond211, double* %distoachieved, align 8, !tbaa !52
  %240 = load double, double* %distoachieved, align 8, !tbaa !52
  %241 = load double, double* %distotarget, align 8, !tbaa !52
  %cmp212 = fcmp olt double %240, %241
  br i1 %cmp212, label %if.then.214, label %if.else.215

if.then.214:                                      ; preds = %cond.end.210
  %242 = load double, double* %thresh168, align 8, !tbaa !52
  store double %242, double* %hi, align 8, !tbaa !52
  %243 = load double, double* %thresh168, align 8, !tbaa !52
  store double %243, double* %stable_thresh, align 8, !tbaa !52
  store i32 25, i32* %cleanup.dest.slot
  br label %cleanup.250

if.else.215:                                      ; preds = %cond.end.210
  %244 = load double, double* %thresh168, align 8, !tbaa !52
  store double %244, double* %lo, align 8, !tbaa !52
  br label %if.end.216

if.end.216:                                       ; preds = %if.else.215
  br label %if.end.217

if.end.217:                                       ; preds = %if.end.216
  br label %if.end.238

if.else.218:                                      ; preds = %if.then.187
  %245 = load i32, i32* %layno, align 4, !tbaa !1
  %cmp219 = icmp eq i32 %245, 0
  br i1 %cmp219, label %cond.true.221, label %cond.false.224

cond.true.221:                                    ; preds = %if.else.218
  %246 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tcd_tile, align 8, !tbaa !5
  %distolayer222 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %246, i32 0, i32 8
  %arrayidx223 = getelementptr inbounds [100 x double], [100 x double]* %distolayer222, i32 0, i64 0
  %247 = load double, double* %arrayidx223, align 8, !tbaa !52
  br label %cond.end.232

cond.false.224:                                   ; preds = %if.else.218
  %248 = load i32, i32* %layno, align 4, !tbaa !1
  %sub225 = sub i32 %248, 1
  %idxprom226 = zext i32 %sub225 to i64
  %arrayidx227 = getelementptr inbounds [100 x double], [100 x double]* %cumdisto, i32 0, i64 %idxprom226
  %249 = load double, double* %arrayidx227, align 8, !tbaa !52
  %250 = load i32, i32* %layno, align 4, !tbaa !1
  %idxprom228 = zext i32 %250 to i64
  %251 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tcd_tile, align 8, !tbaa !5
  %distolayer229 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %251, i32 0, i32 8
  %arrayidx230 = getelementptr inbounds [100 x double], [100 x double]* %distolayer229, i32 0, i64 %idxprom228
  %252 = load double, double* %arrayidx230, align 8, !tbaa !52
  %add231 = fadd double %249, %252
  br label %cond.end.232

cond.end.232:                                     ; preds = %cond.false.224, %cond.true.221
  %cond233 = phi double [ %247, %cond.true.221 ], [ %add231, %cond.false.224 ]
  store double %cond233, double* %distoachieved, align 8, !tbaa !52
  %253 = load double, double* %distoachieved, align 8, !tbaa !52
  %254 = load double, double* %distotarget, align 8, !tbaa !52
  %cmp234 = fcmp olt double %253, %254
  br i1 %cmp234, label %if.then.236, label %if.end.237

if.then.236:                                      ; preds = %cond.end.232
  %255 = load double, double* %thresh168, align 8, !tbaa !52
  store double %255, double* %hi, align 8, !tbaa !52
  %256 = load double, double* %thresh168, align 8, !tbaa !52
  store double %256, double* %stable_thresh, align 8, !tbaa !52
  store i32 25, i32* %cleanup.dest.slot
  br label %cleanup.250

if.end.237:                                       ; preds = %cond.end.232
  %257 = load double, double* %thresh168, align 8, !tbaa !52
  store double %257, double* %lo, align 8, !tbaa !52
  br label %if.end.238

if.end.238:                                       ; preds = %if.end.237, %if.end.217
  br label %if.end.249

if.else.239:                                      ; preds = %for.body.176
  %258 = load %struct.opj_t2*, %struct.opj_t2** %t2, align 8, !tbaa !5
  %259 = load %struct.opj_tcd*, %struct.opj_tcd** %tcd.addr, align 8, !tbaa !5
  %tcd_tileno240 = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %259, i32 0, i32 9
  %260 = load i32, i32* %tcd_tileno240, align 4, !tbaa !62
  %261 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tcd_tile, align 8, !tbaa !5
  %262 = load i32, i32* %layno, align 4, !tbaa !1
  %add241 = add i32 %262, 1
  %263 = load i8*, i8** %dest.addr, align 8, !tbaa !5
  %264 = load i32*, i32** %p_data_written.addr, align 8, !tbaa !5
  %265 = load i32, i32* %maxlen, align 4, !tbaa !1
  %266 = load %struct.opj_codestream_info*, %struct.opj_codestream_info** %cstr_info.addr, align 8, !tbaa !5
  %267 = load %struct.opj_tcd*, %struct.opj_tcd** %tcd.addr, align 8, !tbaa !5
  %cur_tp_num242 = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %267, i32 0, i32 2
  %268 = load i32, i32* %cur_tp_num242, align 4, !tbaa !72
  %269 = load %struct.opj_tcd*, %struct.opj_tcd** %tcd.addr, align 8, !tbaa !5
  %tp_pos243 = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %269, i32 0, i32 0
  %270 = load i32, i32* %tp_pos243, align 4, !tbaa !73
  %271 = load %struct.opj_tcd*, %struct.opj_tcd** %tcd.addr, align 8, !tbaa !5
  %cur_pino244 = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %271, i32 0, i32 4
  %272 = load i32, i32* %cur_pino244, align 4, !tbaa !74
  %call245 = call i32 @opj_t2_encode_packets(%struct.opj_t2* %258, i32 %260, %struct.opj_tcd_tile* %261, i32 %add241, i8* %263, i32* %264, i32 %265, %struct.opj_codestream_info* %266, i32 %268, i32 %270, i32 %272, i32 0) #8
  %tobool246 = icmp ne i32 %call245, 0
  br i1 %tobool246, label %if.end.248, label %if.then.247

if.then.247:                                      ; preds = %if.else.239
  %273 = load double, double* %thresh168, align 8, !tbaa !52
  store double %273, double* %lo, align 8, !tbaa !52
  store i32 25, i32* %cleanup.dest.slot
  br label %cleanup.250

if.end.248:                                       ; preds = %if.else.239
  %274 = load double, double* %thresh168, align 8, !tbaa !52
  store double %274, double* %hi, align 8, !tbaa !52
  %275 = load double, double* %thresh168, align 8, !tbaa !52
  store double %275, double* %stable_thresh, align 8, !tbaa !52
  br label %if.end.249

if.end.249:                                       ; preds = %if.end.248, %if.end.238
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.250

cleanup.250:                                      ; preds = %if.end.249, %if.then.247, %if.then.236, %if.then.214, %if.then.196
  %276 = bitcast double* %distoachieved to i8*
  call void @llvm.lifetime.end(i64 8, i8* %276) #1
  %cleanup.dest.251 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.251, label %unreachable [
    i32 0, label %cleanup.cont.252
    i32 25, label %for.inc.253
  ]

cleanup.cont.252:                                 ; preds = %cleanup.250
  br label %for.inc.253

for.inc.253:                                      ; preds = %cleanup.cont.252, %cleanup.250
  %277 = load i32, i32* %i, align 4, !tbaa !1
  %inc254 = add i32 %277, 1
  store i32 %inc254, i32* %i, align 4, !tbaa !1
  br label %for.cond.173

for.end.255:                                      ; preds = %for.cond.173
  store i32 1, i32* %success, align 4, !tbaa !1
  %278 = load double, double* %stable_thresh, align 8, !tbaa !52
  %cmp256 = fcmp oeq double %278, 0.000000e+00
  br i1 %cmp256, label %cond.true.258, label %cond.false.259

cond.true.258:                                    ; preds = %for.end.255
  %279 = load double, double* %thresh168, align 8, !tbaa !52
  br label %cond.end.260

cond.false.259:                                   ; preds = %for.end.255
  %280 = load double, double* %stable_thresh, align 8, !tbaa !52
  br label %cond.end.260

cond.end.260:                                     ; preds = %cond.false.259, %cond.true.258
  %cond261 = phi double [ %279, %cond.true.258 ], [ %280, %cond.false.259 ]
  store double %cond261, double* %goodthresh, align 8, !tbaa !52
  %281 = load %struct.opj_t2*, %struct.opj_t2** %t2, align 8, !tbaa !5
  call void @opj_t2_destroy(%struct.opj_t2* %281) #8
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.262

cleanup.262:                                      ; preds = %cond.end.260, %if.then.171
  %282 = bitcast double* %thresh168 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %282) #1
  %283 = bitcast %struct.opj_t2** %t2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %283) #1
  %cleanup.dest.264 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.264, label %cleanup.298 [
    i32 0, label %cleanup.cont.265
  ]

cleanup.cont.265:                                 ; preds = %cleanup.262
  br label %if.end.267

if.else.266:                                      ; preds = %land.lhs.true.159, %lor.lhs.false
  store i32 1, i32* %success, align 4, !tbaa !1
  %284 = load double, double* %min, align 8, !tbaa !52
  store double %284, double* %goodthresh, align 8, !tbaa !52
  br label %if.end.267

if.end.267:                                       ; preds = %if.else.266, %cleanup.cont.265
  %285 = load i32, i32* %success, align 4, !tbaa !1
  %tobool268 = icmp ne i32 %285, 0
  br i1 %tobool268, label %if.end.270, label %if.then.269

if.then.269:                                      ; preds = %if.end.267
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.298

if.end.270:                                       ; preds = %if.end.267
  %286 = load %struct.opj_codestream_info*, %struct.opj_codestream_info** %cstr_info.addr, align 8, !tbaa !5
  %tobool271 = icmp ne %struct.opj_codestream_info* %286, null
  br i1 %tobool271, label %if.then.272, label %if.end.280

if.then.272:                                      ; preds = %if.end.270
  %287 = load double, double* %goodthresh, align 8, !tbaa !52
  %288 = load i32, i32* %layno, align 4, !tbaa !1
  %idxprom273 = zext i32 %288 to i64
  %289 = load %struct.opj_tcd*, %struct.opj_tcd** %tcd.addr, align 8, !tbaa !5
  %tcd_tileno274 = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %289, i32 0, i32 9
  %290 = load i32, i32* %tcd_tileno274, align 4, !tbaa !62
  %idxprom275 = zext i32 %290 to i64
  %291 = load %struct.opj_codestream_info*, %struct.opj_codestream_info** %cstr_info.addr, align 8, !tbaa !5
  %tile276 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %291, i32 0, i32 21
  %292 = load %struct.opj_tile_info*, %struct.opj_tile_info** %tile276, align 8, !tbaa !63
  %arrayidx277 = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %292, i64 %idxprom275
  %thresh278 = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %arrayidx277, i32 0, i32 0
  %293 = load double*, double** %thresh278, align 8, !tbaa !69
  %arrayidx279 = getelementptr inbounds double, double* %293, i64 %idxprom273
  store double %287, double* %arrayidx279, align 8, !tbaa !52
  br label %if.end.280

if.end.280:                                       ; preds = %if.then.272, %if.end.270
  %294 = load %struct.opj_tcd*, %struct.opj_tcd** %tcd.addr, align 8, !tbaa !5
  %295 = load i32, i32* %layno, align 4, !tbaa !1
  %296 = load double, double* %goodthresh, align 8, !tbaa !52
  call void @opj_tcd_makelayer(%struct.opj_tcd* %294, i32 %295, double %296, i32 1) #8
  %297 = load i32, i32* %layno, align 4, !tbaa !1
  %cmp281 = icmp eq i32 %297, 0
  br i1 %cmp281, label %cond.true.283, label %cond.false.286

cond.true.283:                                    ; preds = %if.end.280
  %298 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tcd_tile, align 8, !tbaa !5
  %distolayer284 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %298, i32 0, i32 8
  %arrayidx285 = getelementptr inbounds [100 x double], [100 x double]* %distolayer284, i32 0, i64 0
  %299 = load double, double* %arrayidx285, align 8, !tbaa !52
  br label %cond.end.294

cond.false.286:                                   ; preds = %if.end.280
  %300 = load i32, i32* %layno, align 4, !tbaa !1
  %sub287 = sub i32 %300, 1
  %idxprom288 = zext i32 %sub287 to i64
  %arrayidx289 = getelementptr inbounds [100 x double], [100 x double]* %cumdisto, i32 0, i64 %idxprom288
  %301 = load double, double* %arrayidx289, align 8, !tbaa !52
  %302 = load i32, i32* %layno, align 4, !tbaa !1
  %idxprom290 = zext i32 %302 to i64
  %303 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tcd_tile, align 8, !tbaa !5
  %distolayer291 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %303, i32 0, i32 8
  %arrayidx292 = getelementptr inbounds [100 x double], [100 x double]* %distolayer291, i32 0, i64 %idxprom290
  %304 = load double, double* %arrayidx292, align 8, !tbaa !52
  %add293 = fadd double %301, %304
  br label %cond.end.294

cond.end.294:                                     ; preds = %cond.false.286, %cond.true.283
  %cond295 = phi double [ %299, %cond.true.283 ], [ %add293, %cond.false.286 ]
  %305 = load i32, i32* %layno, align 4, !tbaa !1
  %idxprom296 = zext i32 %305 to i64
  %arrayidx297 = getelementptr inbounds [100 x double], [100 x double]* %cumdisto, i32 0, i64 %idxprom296
  store double %cond295, double* %arrayidx297, align 8, !tbaa !52
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.298

cleanup.298:                                      ; preds = %cond.end.294, %if.then.269, %cleanup.262
  %306 = bitcast double* %distotarget to i8*
  call void @llvm.lifetime.end(i64 8, i8* %306) #1
  %307 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %307) #1
  %308 = bitcast double* %stable_thresh to i8*
  call void @llvm.lifetime.end(i64 8, i8* %308) #1
  %309 = bitcast double* %goodthresh to i8*
  call void @llvm.lifetime.end(i64 8, i8* %309) #1
  %310 = bitcast i32* %maxlen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %310) #1
  %311 = bitcast i32* %success to i8*
  call void @llvm.lifetime.end(i64 4, i8* %311) #1
  %312 = bitcast double* %hi to i8*
  call void @llvm.lifetime.end(i64 8, i8* %312) #1
  %313 = bitcast double* %lo to i8*
  call void @llvm.lifetime.end(i64 8, i8* %313) #1
  %cleanup.dest.306 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.306, label %cleanup.311 [
    i32 0, label %cleanup.cont.307
  ]

cleanup.cont.307:                                 ; preds = %cleanup.298
  br label %for.inc.308

for.inc.308:                                      ; preds = %cleanup.cont.307
  %314 = load i32, i32* %layno, align 4, !tbaa !1
  %inc309 = add i32 %314, 1
  store i32 %inc309, i32* %layno, align 4, !tbaa !1
  br label %for.cond.117

for.end.310:                                      ; preds = %for.cond.117
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.311

cleanup.311:                                      ; preds = %for.end.310, %cleanup.298
  %315 = bitcast %struct.opj_tcp** %tcd_tcp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %315) #1
  %316 = bitcast %struct.opj_tcd_tile** %tcd_tile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %316) #1
  %317 = bitcast %struct.opj_cp** %cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %317) #1
  %318 = bitcast double* %maxSE to i8*
  call void @llvm.lifetime.end(i64 8, i8* %318) #1
  %319 = bitcast double* %K to i8*
  call void @llvm.lifetime.end(i64 8, i8* %319) #1
  %320 = bitcast [100 x double]* %cumdisto to i8*
  call void @llvm.lifetime.end(i64 800, i8* %320) #1
  %321 = bitcast double* %max to i8*
  call void @llvm.lifetime.end(i64 8, i8* %321) #1
  %322 = bitcast double* %min to i8*
  call void @llvm.lifetime.end(i64 8, i8* %322) #1
  %323 = bitcast i32* %passno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %323) #1
  %324 = bitcast i32* %layno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %324) #1
  %325 = bitcast i32* %cblkno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %325) #1
  %326 = bitcast i32* %precno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %326) #1
  %327 = bitcast i32* %bandno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %327) #1
  %328 = bitcast i32* %resno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %328) #1
  %329 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %329) #1
  %330 = load i32, i32* %retval
  ret i32 %330

unreachable:                                      ; preds = %cleanup.250, %cleanup
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @opj_uint_min(i32 %a, i32 %b) #3 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4, !tbaa !1
  store i32 %b, i32* %b.addr, align 4, !tbaa !1
  %0 = load i32, i32* %a.addr, align 4, !tbaa !1
  %1 = load i32, i32* %b.addr, align 4, !tbaa !1
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %a.addr, align 4, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %b.addr, align 4, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind readnone
declare double @ceil(double) #4

; Function Attrs: nounwind
declare double @pow(double, double) #2

declare %struct.opj_t2* @opj_t2_create(%struct.opj_image*, %struct.opj_cp*) #5

declare i32 @opj_t2_encode_packets(%struct.opj_t2*, i32, %struct.opj_tcd_tile*, i32, i8*, i32*, i32, %struct.opj_codestream_info*, i32, i32, i32, i32) #5

declare void @opj_t2_destroy(%struct.opj_t2*) #5

; Function Attrs: nounwind uwtable
define i32 @opj_tcd_init(%struct.opj_tcd* %p_tcd, %struct.opj_image* %p_image, %struct.opj_cp* %p_cp) #0 {
entry:
  %retval = alloca i32, align 4
  %p_tcd.addr = alloca %struct.opj_tcd*, align 8
  %p_image.addr = alloca %struct.opj_image*, align 8
  %p_cp.addr = alloca %struct.opj_cp*, align 8
  %l_tile_comp_size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.opj_tcd* %p_tcd, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  store %struct.opj_image* %p_image, %struct.opj_image** %p_image.addr, align 8, !tbaa !5
  store %struct.opj_cp* %p_cp, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %0 = bitcast i32* %l_tile_comp_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !5
  %2 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %image = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %2, i32 0, i32 6
  store %struct.opj_image* %1, %struct.opj_image** %image, align 8, !tbaa !23
  %3 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %4 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %cp = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %4, i32 0, i32 7
  store %struct.opj_cp* %3, %struct.opj_cp** %cp, align 8, !tbaa !12
  %call = call noalias i8* @malloc(i64 856) #7
  %5 = bitcast i8* %call to %struct.opj_tcd_tile*
  %6 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %tcd_image = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %6, i32 0, i32 5
  %7 = load %struct.opj_tcd_image*, %struct.opj_tcd_image** %tcd_image, align 8, !tbaa !7
  %tiles = getelementptr inbounds %struct.opj_tcd_image, %struct.opj_tcd_image* %7, i32 0, i32 0
  store %struct.opj_tcd_tile* %5, %struct.opj_tcd_tile** %tiles, align 8, !tbaa !13
  %8 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %tcd_image1 = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %8, i32 0, i32 5
  %9 = load %struct.opj_tcd_image*, %struct.opj_tcd_image** %tcd_image1, align 8, !tbaa !7
  %tiles2 = getelementptr inbounds %struct.opj_tcd_image, %struct.opj_tcd_image* %9, i32 0, i32 0
  %10 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tiles2, align 8, !tbaa !13
  %tobool = icmp ne %struct.opj_tcd_tile* %10, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %tcd_image3 = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %11, i32 0, i32 5
  %12 = load %struct.opj_tcd_image*, %struct.opj_tcd_image** %tcd_image3, align 8, !tbaa !7
  %tiles4 = getelementptr inbounds %struct.opj_tcd_image, %struct.opj_tcd_image* %12, i32 0, i32 0
  %13 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tiles4, align 8, !tbaa !13
  %14 = bitcast %struct.opj_tcd_tile* %13 to i8*
  %call5 = call i8* @memset(i8* %14, i32 0, i64 856) #7
  %15 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !5
  %numcomps = getelementptr inbounds %struct.opj_image, %struct.opj_image* %15, i32 0, i32 4
  %16 = load i32, i32* %numcomps, align 4, !tbaa !75
  %conv = zext i32 %16 to i64
  %mul = mul i64 %conv, 56
  %conv6 = trunc i64 %mul to i32
  store i32 %conv6, i32* %l_tile_comp_size, align 4, !tbaa !1
  %17 = load i32, i32* %l_tile_comp_size, align 4, !tbaa !1
  %conv7 = zext i32 %17 to i64
  %cmp = icmp uge i64 %conv7, -256
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %18 = load i32, i32* %l_tile_comp_size, align 4, !tbaa !1
  %conv9 = zext i32 %18 to i64
  %call10 = call noalias i8* @malloc(i64 %conv9) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %call10, %cond.false ]
  %19 = bitcast i8* %cond to %struct.opj_tcd_tilecomp*
  %20 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %tcd_image11 = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %20, i32 0, i32 5
  %21 = load %struct.opj_tcd_image*, %struct.opj_tcd_image** %tcd_image11, align 8, !tbaa !7
  %tiles12 = getelementptr inbounds %struct.opj_tcd_image, %struct.opj_tcd_image* %21, i32 0, i32 0
  %22 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tiles12, align 8, !tbaa !13
  %comps = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %22, i32 0, i32 5
  store %struct.opj_tcd_tilecomp* %19, %struct.opj_tcd_tilecomp** %comps, align 8, !tbaa !18
  %23 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %tcd_image13 = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %23, i32 0, i32 5
  %24 = load %struct.opj_tcd_image*, %struct.opj_tcd_image** %tcd_image13, align 8, !tbaa !7
  %tiles14 = getelementptr inbounds %struct.opj_tcd_image, %struct.opj_tcd_image* %24, i32 0, i32 0
  %25 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tiles14, align 8, !tbaa !13
  %comps15 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %25, i32 0, i32 5
  %26 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %comps15, align 8, !tbaa !18
  %tobool16 = icmp ne %struct.opj_tcd_tilecomp* %26, null
  br i1 %tobool16, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %cond.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %cond.end
  %27 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %tcd_image19 = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %27, i32 0, i32 5
  %28 = load %struct.opj_tcd_image*, %struct.opj_tcd_image** %tcd_image19, align 8, !tbaa !7
  %tiles20 = getelementptr inbounds %struct.opj_tcd_image, %struct.opj_tcd_image* %28, i32 0, i32 0
  %29 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tiles20, align 8, !tbaa !13
  %comps21 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %29, i32 0, i32 5
  %30 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %comps21, align 8, !tbaa !18
  %31 = bitcast %struct.opj_tcd_tilecomp* %30 to i8*
  %32 = load i32, i32* %l_tile_comp_size, align 4, !tbaa !1
  %conv22 = zext i32 %32 to i64
  %call23 = call i8* @memset(i8* %31, i32 0, i64 %conv22) #7
  %33 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !5
  %numcomps24 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %33, i32 0, i32 4
  %34 = load i32, i32* %numcomps24, align 4, !tbaa !75
  %35 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %tcd_image25 = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %35, i32 0, i32 5
  %36 = load %struct.opj_tcd_image*, %struct.opj_tcd_image** %tcd_image25, align 8, !tbaa !7
  %tiles26 = getelementptr inbounds %struct.opj_tcd_image, %struct.opj_tcd_image* %36, i32 0, i32 0
  %37 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tiles26, align 8, !tbaa !13
  %numcomps27 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %37, i32 0, i32 4
  store i32 %34, i32* %numcomps27, align 4, !tbaa !15
  %38 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %m_specific_param = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %38, i32 0, i32 18
  %m_enc = bitcast %union.anon.0* %m_specific_param to %struct.opj_encoding_param*
  %m_tp_pos = getelementptr inbounds %struct.opj_encoding_param, %struct.opj_encoding_param* %m_enc, i32 0, i32 2
  %39 = load i32, i32* %m_tp_pos, align 4, !tbaa !76
  %40 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %tp_pos = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %40, i32 0, i32 0
  store i32 %39, i32* %tp_pos, align 4, !tbaa !73
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.18, %if.then.17, %if.then
  %41 = bitcast i32* %l_tile_comp_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = load i32, i32* %retval
  ret i32 %42
}

; Function Attrs: nounwind uwtable
define void @opj_tcd_destroy(%struct.opj_tcd* %tcd) #0 {
entry:
  %tcd.addr = alloca %struct.opj_tcd*, align 8
  store %struct.opj_tcd* %tcd, %struct.opj_tcd** %tcd.addr, align 8, !tbaa !5
  %0 = load %struct.opj_tcd*, %struct.opj_tcd** %tcd.addr, align 8, !tbaa !5
  %tobool = icmp ne %struct.opj_tcd* %0, null
  br i1 %tobool, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %1 = load %struct.opj_tcd*, %struct.opj_tcd** %tcd.addr, align 8, !tbaa !5
  call void @opj_tcd_free_tile(%struct.opj_tcd* %1) #8
  %2 = load %struct.opj_tcd*, %struct.opj_tcd** %tcd.addr, align 8, !tbaa !5
  %tcd_image = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %2, i32 0, i32 5
  %3 = load %struct.opj_tcd_image*, %struct.opj_tcd_image** %tcd_image, align 8, !tbaa !7
  %tobool1 = icmp ne %struct.opj_tcd_image* %3, null
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %4 = load %struct.opj_tcd*, %struct.opj_tcd** %tcd.addr, align 8, !tbaa !5
  %tcd_image3 = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %4, i32 0, i32 5
  %5 = load %struct.opj_tcd_image*, %struct.opj_tcd_image** %tcd_image3, align 8, !tbaa !7
  %6 = bitcast %struct.opj_tcd_image* %5 to i8*
  call void @free(i8* %6) #7
  %7 = load %struct.opj_tcd*, %struct.opj_tcd** %tcd.addr, align 8, !tbaa !5
  %tcd_image4 = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %7, i32 0, i32 5
  store %struct.opj_tcd_image* null, %struct.opj_tcd_image** %tcd_image4, align 8, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %8 = load %struct.opj_tcd*, %struct.opj_tcd** %tcd.addr, align 8, !tbaa !5
  %9 = bitcast %struct.opj_tcd* %8 to i8*
  call void @free(i8* %9) #7
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @opj_tcd_free_tile(%struct.opj_tcd* %p_tcd) #0 {
entry:
  %p_tcd.addr = alloca %struct.opj_tcd*, align 8
  %compno = alloca i32, align 4
  %resno = alloca i32, align 4
  %bandno = alloca i32, align 4
  %precno = alloca i32, align 4
  %l_tile = alloca %struct.opj_tcd_tile*, align 8
  %l_tile_comp = alloca %struct.opj_tcd_tilecomp*, align 8
  %l_res = alloca %struct.opj_tcd_resolution*, align 8
  %l_band = alloca %struct.opj_tcd_band*, align 8
  %l_precinct = alloca %struct.opj_tcd_precinct*, align 8
  %l_nb_resolutions = alloca i32, align 4
  %l_nb_precincts = alloca i32, align 4
  %l_tcd_code_block_deallocate = alloca void (%struct.opj_tcd_precinct*)*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.opj_tcd* %p_tcd, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %0 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %resno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %bandno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %precno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct.opj_tcd_tile** %l_tile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store %struct.opj_tcd_tile* null, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %5 = bitcast %struct.opj_tcd_tilecomp** %l_tile_comp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store %struct.opj_tcd_tilecomp* null, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %6 = bitcast %struct.opj_tcd_resolution** %l_res to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store %struct.opj_tcd_resolution* null, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %7 = bitcast %struct.opj_tcd_band** %l_band to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store %struct.opj_tcd_band* null, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %8 = bitcast %struct.opj_tcd_precinct** %l_precinct to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store %struct.opj_tcd_precinct* null, %struct.opj_tcd_precinct** %l_precinct, align 8, !tbaa !5
  %9 = bitcast i32* %l_nb_resolutions to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %l_nb_precincts to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast void (%struct.opj_tcd_precinct*)** %l_tcd_code_block_deallocate to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store void (%struct.opj_tcd_precinct*)* null, void (%struct.opj_tcd_precinct*)** %l_tcd_code_block_deallocate, align 8, !tbaa !5
  %12 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %tobool = icmp ne %struct.opj_tcd* %12, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %tcd_image = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %13, i32 0, i32 5
  %14 = load %struct.opj_tcd_image*, %struct.opj_tcd_image** %tcd_image, align 8, !tbaa !7
  %tobool1 = icmp ne %struct.opj_tcd_image* %14, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %15 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %m_is_decoder = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %15, i32 0, i32 10
  %bf.load = load i8, i8* %m_is_decoder, align 4
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool4 = icmp ne i32 %bf.cast, 0
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end.3
  store void (%struct.opj_tcd_precinct*)* @opj_tcd_code_block_dec_deallocate, void (%struct.opj_tcd_precinct*)** %l_tcd_code_block_deallocate, align 8, !tbaa !5
  br label %if.end.6

if.else:                                          ; preds = %if.end.3
  store void (%struct.opj_tcd_precinct*)* @opj_tcd_code_block_enc_deallocate, void (%struct.opj_tcd_precinct*)** %l_tcd_code_block_deallocate, align 8, !tbaa !5
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  %16 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %tcd_image7 = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %16, i32 0, i32 5
  %17 = load %struct.opj_tcd_image*, %struct.opj_tcd_image** %tcd_image7, align 8, !tbaa !7
  %tiles = getelementptr inbounds %struct.opj_tcd_image, %struct.opj_tcd_image* %17, i32 0, i32 0
  %18 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tiles, align 8, !tbaa !13
  store %struct.opj_tcd_tile* %18, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %19 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %tobool8 = icmp ne %struct.opj_tcd_tile* %19, null
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.end.6
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end.6
  %20 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %comps = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %20, i32 0, i32 5
  %21 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %comps, align 8, !tbaa !18
  store %struct.opj_tcd_tilecomp* %21, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  store i32 0, i32* %compno, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.53, %if.end.10
  %22 = load i32, i32* %compno, align 4, !tbaa !1
  %23 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %numcomps = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %23, i32 0, i32 4
  %24 = load i32, i32* %numcomps, align 4, !tbaa !15
  %cmp = icmp ult i32 %22, %24
  br i1 %cmp, label %for.body, label %for.end.55

for.body:                                         ; preds = %for.cond
  %25 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %resolutions = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %25, i32 0, i32 6
  %26 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %resolutions, align 8, !tbaa !29
  store %struct.opj_tcd_resolution* %26, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %27 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %tobool11 = icmp ne %struct.opj_tcd_resolution* %27, null
  br i1 %tobool11, label %if.then.12, label %if.end.46

if.then.12:                                       ; preds = %for.body
  %28 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %resolutions_size = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %28, i32 0, i32 7
  %29 = load i32, i32* %resolutions_size, align 4, !tbaa !77
  %conv = zext i32 %29 to i64
  %div = udiv i64 %conv, 176
  %conv13 = trunc i64 %div to i32
  store i32 %conv13, i32* %l_nb_resolutions, align 4, !tbaa !1
  store i32 0, i32* %resno, align 4, !tbaa !1
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.41, %if.then.12
  %30 = load i32, i32* %resno, align 4, !tbaa !1
  %31 = load i32, i32* %l_nb_resolutions, align 4, !tbaa !1
  %cmp15 = icmp ult i32 %30, %31
  br i1 %cmp15, label %for.body.17, label %for.end.43

for.body.17:                                      ; preds = %for.cond.14
  %32 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %bands = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %32, i32 0, i32 7
  %arraydecay = getelementptr inbounds [3 x %struct.opj_tcd_band], [3 x %struct.opj_tcd_band]* %bands, i32 0, i32 0
  store %struct.opj_tcd_band* %arraydecay, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  store i32 0, i32* %bandno, align 4, !tbaa !1
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.37, %for.body.17
  %33 = load i32, i32* %bandno, align 4, !tbaa !1
  %cmp19 = icmp ult i32 %33, 3
  br i1 %cmp19, label %for.body.21, label %for.end.39

for.body.21:                                      ; preds = %for.cond.18
  %34 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %precincts = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %34, i32 0, i32 5
  %35 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %precincts, align 8, !tbaa !34
  store %struct.opj_tcd_precinct* %35, %struct.opj_tcd_precinct** %l_precinct, align 8, !tbaa !5
  %36 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_precinct, align 8, !tbaa !5
  %tobool22 = icmp ne %struct.opj_tcd_precinct* %36, null
  br i1 %tobool22, label %if.then.23, label %if.end.35

if.then.23:                                       ; preds = %for.body.21
  %37 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %precincts_data_size = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %37, i32 0, i32 6
  %38 = load i32, i32* %precincts_data_size, align 4, !tbaa !78
  %conv24 = zext i32 %38 to i64
  %div25 = udiv i64 %conv24, 56
  %conv26 = trunc i64 %div25 to i32
  store i32 %conv26, i32* %l_nb_precincts, align 4, !tbaa !1
  store i32 0, i32* %precno, align 4, !tbaa !1
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc, %if.then.23
  %39 = load i32, i32* %precno, align 4, !tbaa !1
  %40 = load i32, i32* %l_nb_precincts, align 4, !tbaa !1
  %cmp28 = icmp ult i32 %39, %40
  br i1 %cmp28, label %for.body.30, label %for.end

for.body.30:                                      ; preds = %for.cond.27
  %41 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_precinct, align 8, !tbaa !5
  %incltree = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %41, i32 0, i32 8
  %42 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %incltree, align 8, !tbaa !79
  call void @opj_tgt_destroy(%struct.opj_tgt_tree* %42) #8
  %43 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_precinct, align 8, !tbaa !5
  %incltree31 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %43, i32 0, i32 8
  store %struct.opj_tgt_tree* null, %struct.opj_tgt_tree** %incltree31, align 8, !tbaa !79
  %44 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_precinct, align 8, !tbaa !5
  %imsbtree = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %44, i32 0, i32 9
  %45 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %imsbtree, align 8, !tbaa !80
  call void @opj_tgt_destroy(%struct.opj_tgt_tree* %45) #8
  %46 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_precinct, align 8, !tbaa !5
  %imsbtree32 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %46, i32 0, i32 9
  store %struct.opj_tgt_tree* null, %struct.opj_tgt_tree** %imsbtree32, align 8, !tbaa !80
  %47 = load void (%struct.opj_tcd_precinct*)*, void (%struct.opj_tcd_precinct*)** %l_tcd_code_block_deallocate, align 8, !tbaa !5
  %48 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_precinct, align 8, !tbaa !5
  call void %47(%struct.opj_tcd_precinct* %48) #8
  %49 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_precinct, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %49, i32 1
  store %struct.opj_tcd_precinct* %incdec.ptr, %struct.opj_tcd_precinct** %l_precinct, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body.30
  %50 = load i32, i32* %precno, align 4, !tbaa !1
  %inc = add i32 %50, 1
  store i32 %inc, i32* %precno, align 4, !tbaa !1
  br label %for.cond.27

for.end:                                          ; preds = %for.cond.27
  %51 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %precincts33 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %51, i32 0, i32 5
  %52 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %precincts33, align 8, !tbaa !34
  %53 = bitcast %struct.opj_tcd_precinct* %52 to i8*
  call void @free(i8* %53) #7
  %54 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %precincts34 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %54, i32 0, i32 5
  store %struct.opj_tcd_precinct* null, %struct.opj_tcd_precinct** %precincts34, align 8, !tbaa !34
  br label %if.end.35

if.end.35:                                        ; preds = %for.end, %for.body.21
  %55 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %incdec.ptr36 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %55, i32 1
  store %struct.opj_tcd_band* %incdec.ptr36, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  br label %for.inc.37

for.inc.37:                                       ; preds = %if.end.35
  %56 = load i32, i32* %bandno, align 4, !tbaa !1
  %inc38 = add i32 %56, 1
  store i32 %inc38, i32* %bandno, align 4, !tbaa !1
  br label %for.cond.18

for.end.39:                                       ; preds = %for.cond.18
  %57 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %incdec.ptr40 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %57, i32 1
  store %struct.opj_tcd_resolution* %incdec.ptr40, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.end.39
  %58 = load i32, i32* %resno, align 4, !tbaa !1
  %inc42 = add i32 %58, 1
  store i32 %inc42, i32* %resno, align 4, !tbaa !1
  br label %for.cond.14

for.end.43:                                       ; preds = %for.cond.14
  %59 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %resolutions44 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %59, i32 0, i32 6
  %60 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %resolutions44, align 8, !tbaa !29
  %61 = bitcast %struct.opj_tcd_resolution* %60 to i8*
  call void @free(i8* %61) #7
  %62 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %resolutions45 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %62, i32 0, i32 6
  store %struct.opj_tcd_resolution* null, %struct.opj_tcd_resolution** %resolutions45, align 8, !tbaa !29
  br label %if.end.46

if.end.46:                                        ; preds = %for.end.43, %for.body
  %63 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %data = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %63, i32 0, i32 8
  %64 = load i32*, i32** %data, align 8, !tbaa !81
  %tobool47 = icmp ne i32* %64, null
  br i1 %tobool47, label %if.then.48, label %if.end.51

if.then.48:                                       ; preds = %if.end.46
  %65 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %data49 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %65, i32 0, i32 8
  %66 = load i32*, i32** %data49, align 8, !tbaa !81
  %67 = bitcast i32* %66 to i8*
  call void @free(i8* %67) #7
  %68 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %data50 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %68, i32 0, i32 8
  store i32* null, i32** %data50, align 8, !tbaa !81
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.48, %if.end.46
  %69 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %incdec.ptr52 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %69, i32 1
  store %struct.opj_tcd_tilecomp* %incdec.ptr52, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  br label %for.inc.53

for.inc.53:                                       ; preds = %if.end.51
  %70 = load i32, i32* %compno, align 4, !tbaa !1
  %inc54 = add i32 %70, 1
  store i32 %inc54, i32* %compno, align 4, !tbaa !1
  br label %for.cond

for.end.55:                                       ; preds = %for.cond
  %71 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %comps56 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %71, i32 0, i32 5
  %72 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %comps56, align 8, !tbaa !18
  %73 = bitcast %struct.opj_tcd_tilecomp* %72 to i8*
  call void @free(i8* %73) #7
  %74 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %comps57 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %74, i32 0, i32 5
  store %struct.opj_tcd_tilecomp* null, %struct.opj_tcd_tilecomp** %comps57, align 8, !tbaa !18
  %75 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %tcd_image58 = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %75, i32 0, i32 5
  %76 = load %struct.opj_tcd_image*, %struct.opj_tcd_image** %tcd_image58, align 8, !tbaa !7
  %tiles59 = getelementptr inbounds %struct.opj_tcd_image, %struct.opj_tcd_image* %76, i32 0, i32 0
  %77 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tiles59, align 8, !tbaa !13
  %78 = bitcast %struct.opj_tcd_tile* %77 to i8*
  call void @free(i8* %78) #7
  %79 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %tcd_image60 = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %79, i32 0, i32 5
  %80 = load %struct.opj_tcd_image*, %struct.opj_tcd_image** %tcd_image60, align 8, !tbaa !7
  %tiles61 = getelementptr inbounds %struct.opj_tcd_image, %struct.opj_tcd_image* %80, i32 0, i32 0
  store %struct.opj_tcd_tile* null, %struct.opj_tcd_tile** %tiles61, align 8, !tbaa !13
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.55, %if.then.9, %if.then.2, %if.then
  %81 = bitcast void (%struct.opj_tcd_precinct*)** %l_tcd_code_block_deallocate to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  %82 = bitcast i32* %l_nb_precincts to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  %83 = bitcast i32* %l_nb_resolutions to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  %84 = bitcast %struct.opj_tcd_precinct** %l_precinct to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #1
  %85 = bitcast %struct.opj_tcd_band** %l_band to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #1
  %86 = bitcast %struct.opj_tcd_resolution** %l_res to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #1
  %87 = bitcast %struct.opj_tcd_tilecomp** %l_tile_comp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #1
  %88 = bitcast %struct.opj_tcd_tile** %l_tile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #1
  %89 = bitcast i32* %precno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #1
  %90 = bitcast i32* %bandno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  %91 = bitcast i32* %resno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #1
  %92 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @opj_tcd_init_encode_tile(%struct.opj_tcd* %p_tcd, i32 %p_tile_no) #0 {
entry:
  %retval = alloca i32, align 4
  %p_tcd.addr = alloca %struct.opj_tcd*, align 8
  %p_tile_no.addr = alloca i32, align 4
  %l_gain_ptr = alloca i32 (i32)*, align 8
  %compno = alloca i32, align 4
  %resno = alloca i32, align 4
  %bandno = alloca i32, align 4
  %precno = alloca i32, align 4
  %cblkno = alloca i32, align 4
  %l_tcp = alloca %struct.opj_tcp*, align 8
  %l_cp = alloca %struct.opj_cp*, align 8
  %l_tile = alloca %struct.opj_tcd_tile*, align 8
  %l_tccp = alloca %struct.opj_tccp*, align 8
  %l_tilec = alloca %struct.opj_tcd_tilecomp*, align 8
  %l_image_comp = alloca %struct.opj_image_comp*, align 8
  %l_res = alloca %struct.opj_tcd_resolution*, align 8
  %l_band = alloca %struct.opj_tcd_band*, align 8
  %l_step_size = alloca %struct.opj_stepsize*, align 8
  %l_current_precinct = alloca %struct.opj_tcd_precinct*, align 8
  %l_code_block = alloca %struct.opj_tcd_cblk_enc*, align 8
  %l_image = alloca %struct.opj_image*, align 8
  %p = alloca i32, align 4
  %q = alloca i32, align 4
  %l_level_no = alloca i32, align 4
  %l_pdx = alloca i32, align 4
  %l_pdy = alloca i32, align 4
  %l_gain = alloca i32, align 4
  %l_x0b = alloca i32, align 4
  %l_y0b = alloca i32, align 4
  %l_tl_prc_x_start = alloca i32, align 4
  %l_tl_prc_y_start = alloca i32, align 4
  %l_br_prc_x_end = alloca i32, align 4
  %l_br_prc_y_end = alloca i32, align 4
  %l_nb_precincts = alloca i32, align 4
  %l_nb_precinct_size = alloca i32, align 4
  %l_nb_code_blocks = alloca i32, align 4
  %l_nb_code_blocks_size = alloca i32, align 4
  %l_data_size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %new_data = alloca i32*, align 8
  %new_resolutions = alloca %struct.opj_tcd_resolution*, align 8
  %tlcbgxstart = alloca i32, align 4
  %tlcbgystart = alloca i32, align 4
  %cbgwidthexpn = alloca i32, align 4
  %cbgheightexpn = alloca i32, align 4
  %cblkwidthexpn = alloca i32, align 4
  %cblkheightexpn = alloca i32, align 4
  %numbps = alloca i32, align 4
  %new_precincts = alloca %struct.opj_tcd_precinct*, align 8
  %tlcblkxstart = alloca i32, align 4
  %tlcblkystart = alloca i32, align 4
  %brcblkxend = alloca i32, align 4
  %brcblkyend = alloca i32, align 4
  %cbgxstart = alloca i32, align 4
  %cbgystart = alloca i32, align 4
  %cbgxend = alloca i32, align 4
  %cbgyend = alloca i32, align 4
  %new_ELEMENT = alloca %struct.opj_tcd_cblk_enc*, align 8
  %cblkxstart = alloca i32, align 4
  %cblkystart = alloca i32, align 4
  %cblkxend = alloca i32, align 4
  %cblkyend = alloca i32, align 4
  store %struct.opj_tcd* %p_tcd, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  store i32 %p_tile_no, i32* %p_tile_no.addr, align 4, !tbaa !1
  %0 = bitcast i32 (i32)** %l_gain_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i32 (i32)* null, i32 (i32)** %l_gain_ptr, align 8, !tbaa !5
  %1 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %resno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %bandno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %precno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %cblkno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast %struct.opj_tcp** %l_tcp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store %struct.opj_tcp* null, %struct.opj_tcp** %l_tcp, align 8, !tbaa !5
  %7 = bitcast %struct.opj_cp** %l_cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store %struct.opj_cp* null, %struct.opj_cp** %l_cp, align 8, !tbaa !5
  %8 = bitcast %struct.opj_tcd_tile** %l_tile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store %struct.opj_tcd_tile* null, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %9 = bitcast %struct.opj_tccp** %l_tccp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store %struct.opj_tccp* null, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %10 = bitcast %struct.opj_tcd_tilecomp** %l_tilec to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store %struct.opj_tcd_tilecomp* null, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %11 = bitcast %struct.opj_image_comp** %l_image_comp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store %struct.opj_image_comp* null, %struct.opj_image_comp** %l_image_comp, align 8, !tbaa !5
  %12 = bitcast %struct.opj_tcd_resolution** %l_res to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store %struct.opj_tcd_resolution* null, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %13 = bitcast %struct.opj_tcd_band** %l_band to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store %struct.opj_tcd_band* null, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %14 = bitcast %struct.opj_stepsize** %l_step_size to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  store %struct.opj_stepsize* null, %struct.opj_stepsize** %l_step_size, align 8, !tbaa !5
  %15 = bitcast %struct.opj_tcd_precinct** %l_current_precinct to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  store %struct.opj_tcd_precinct* null, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %16 = bitcast %struct.opj_tcd_cblk_enc** %l_code_block to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store %struct.opj_tcd_cblk_enc* null, %struct.opj_tcd_cblk_enc** %l_code_block, align 8, !tbaa !5
  %17 = bitcast %struct.opj_image** %l_image to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  store %struct.opj_image* null, %struct.opj_image** %l_image, align 8, !tbaa !5
  %18 = bitcast i32* %p to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast i32* %q to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = bitcast i32* %l_level_no to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = bitcast i32* %l_pdx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = bitcast i32* %l_pdy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = bitcast i32* %l_gain to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = bitcast i32* %l_x0b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = bitcast i32* %l_y0b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  %26 = bitcast i32* %l_tl_prc_x_start to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = bitcast i32* %l_tl_prc_y_start to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = bitcast i32* %l_br_prc_x_end to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  %29 = bitcast i32* %l_br_prc_y_end to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  %30 = bitcast i32* %l_nb_precincts to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = bitcast i32* %l_nb_precinct_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  %32 = bitcast i32* %l_nb_code_blocks to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  %33 = bitcast i32* %l_nb_code_blocks_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = bitcast i32* %l_data_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  %35 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %cp = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %35, i32 0, i32 7
  %36 = load %struct.opj_cp*, %struct.opj_cp** %cp, align 8, !tbaa !12
  store %struct.opj_cp* %36, %struct.opj_cp** %l_cp, align 8, !tbaa !5
  %37 = load i32, i32* %p_tile_no.addr, align 4, !tbaa !1
  %idxprom = zext i32 %37 to i64
  %38 = load %struct.opj_cp*, %struct.opj_cp** %l_cp, align 8, !tbaa !5
  %tcps = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %38, i32 0, i32 17
  %39 = load %struct.opj_tcp*, %struct.opj_tcp** %tcps, align 8, !tbaa !82
  %arrayidx = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %39, i64 %idxprom
  store %struct.opj_tcp* %arrayidx, %struct.opj_tcp** %l_tcp, align 8, !tbaa !5
  %40 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %tcd_image = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %40, i32 0, i32 5
  %41 = load %struct.opj_tcd_image*, %struct.opj_tcd_image** %tcd_image, align 8, !tbaa !7
  %tiles = getelementptr inbounds %struct.opj_tcd_image, %struct.opj_tcd_image* %41, i32 0, i32 0
  %42 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tiles, align 8, !tbaa !13
  store %struct.opj_tcd_tile* %42, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %43 = load %struct.opj_tcp*, %struct.opj_tcp** %l_tcp, align 8, !tbaa !5
  %tccps = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %43, i32 0, i32 13
  %44 = load %struct.opj_tccp*, %struct.opj_tccp** %tccps, align 8, !tbaa !84
  store %struct.opj_tccp* %44, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %45 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %comps = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %45, i32 0, i32 5
  %46 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %comps, align 8, !tbaa !18
  store %struct.opj_tcd_tilecomp* %46, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %47 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %image = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %47, i32 0, i32 6
  %48 = load %struct.opj_image*, %struct.opj_image** %image, align 8, !tbaa !23
  store %struct.opj_image* %48, %struct.opj_image** %l_image, align 8, !tbaa !5
  %49 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %image1 = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %49, i32 0, i32 6
  %50 = load %struct.opj_image*, %struct.opj_image** %image1, align 8, !tbaa !23
  %comps2 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %50, i32 0, i32 6
  %51 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps2, align 8, !tbaa !24
  store %struct.opj_image_comp* %51, %struct.opj_image_comp** %l_image_comp, align 8, !tbaa !5
  %52 = load i32, i32* %p_tile_no.addr, align 4, !tbaa !1
  %53 = load %struct.opj_cp*, %struct.opj_cp** %l_cp, align 8, !tbaa !5
  %tw = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %53, i32 0, i32 6
  %54 = load i32, i32* %tw, align 4, !tbaa !85
  %rem = urem i32 %52, %54
  store i32 %rem, i32* %p, align 4, !tbaa !1
  %55 = load i32, i32* %p_tile_no.addr, align 4, !tbaa !1
  %56 = load %struct.opj_cp*, %struct.opj_cp** %l_cp, align 8, !tbaa !5
  %tw3 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %56, i32 0, i32 6
  %57 = load i32, i32* %tw3, align 4, !tbaa !85
  %div = udiv i32 %55, %57
  store i32 %div, i32* %q, align 4, !tbaa !1
  %58 = load %struct.opj_cp*, %struct.opj_cp** %l_cp, align 8, !tbaa !5
  %tx0 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %58, i32 0, i32 1
  %59 = load i32, i32* %tx0, align 4, !tbaa !86
  %60 = load i32, i32* %p, align 4, !tbaa !1
  %61 = load %struct.opj_cp*, %struct.opj_cp** %l_cp, align 8, !tbaa !5
  %tdx = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %61, i32 0, i32 3
  %62 = load i32, i32* %tdx, align 4, !tbaa !87
  %mul = mul i32 %60, %62
  %add = add i32 %59, %mul
  %63 = load %struct.opj_image*, %struct.opj_image** %l_image, align 8, !tbaa !5
  %x0 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %63, i32 0, i32 0
  %64 = load i32, i32* %x0, align 4, !tbaa !88
  %call = call i32 @opj_int_max(i32 %add, i32 %64) #8
  %65 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %x04 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %65, i32 0, i32 0
  store i32 %call, i32* %x04, align 4, !tbaa !89
  %66 = load %struct.opj_cp*, %struct.opj_cp** %l_cp, align 8, !tbaa !5
  %ty0 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %66, i32 0, i32 2
  %67 = load i32, i32* %ty0, align 4, !tbaa !90
  %68 = load i32, i32* %q, align 4, !tbaa !1
  %69 = load %struct.opj_cp*, %struct.opj_cp** %l_cp, align 8, !tbaa !5
  %tdy = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %69, i32 0, i32 4
  %70 = load i32, i32* %tdy, align 4, !tbaa !91
  %mul5 = mul i32 %68, %70
  %add6 = add i32 %67, %mul5
  %71 = load %struct.opj_image*, %struct.opj_image** %l_image, align 8, !tbaa !5
  %y0 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %71, i32 0, i32 1
  %72 = load i32, i32* %y0, align 4, !tbaa !92
  %call7 = call i32 @opj_int_max(i32 %add6, i32 %72) #8
  %73 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %y08 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %73, i32 0, i32 1
  store i32 %call7, i32* %y08, align 4, !tbaa !93
  %74 = load %struct.opj_cp*, %struct.opj_cp** %l_cp, align 8, !tbaa !5
  %tx09 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %74, i32 0, i32 1
  %75 = load i32, i32* %tx09, align 4, !tbaa !86
  %76 = load i32, i32* %p, align 4, !tbaa !1
  %add10 = add i32 %76, 1
  %77 = load %struct.opj_cp*, %struct.opj_cp** %l_cp, align 8, !tbaa !5
  %tdx11 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %77, i32 0, i32 3
  %78 = load i32, i32* %tdx11, align 4, !tbaa !87
  %mul12 = mul i32 %add10, %78
  %add13 = add i32 %75, %mul12
  %79 = load %struct.opj_image*, %struct.opj_image** %l_image, align 8, !tbaa !5
  %x1 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %79, i32 0, i32 2
  %80 = load i32, i32* %x1, align 4, !tbaa !94
  %call14 = call i32 @opj_int_min(i32 %add13, i32 %80) #8
  %81 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %x115 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %81, i32 0, i32 2
  store i32 %call14, i32* %x115, align 4, !tbaa !95
  %82 = load %struct.opj_cp*, %struct.opj_cp** %l_cp, align 8, !tbaa !5
  %ty016 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %82, i32 0, i32 2
  %83 = load i32, i32* %ty016, align 4, !tbaa !90
  %84 = load i32, i32* %q, align 4, !tbaa !1
  %add17 = add i32 %84, 1
  %85 = load %struct.opj_cp*, %struct.opj_cp** %l_cp, align 8, !tbaa !5
  %tdy18 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %85, i32 0, i32 4
  %86 = load i32, i32* %tdy18, align 4, !tbaa !91
  %mul19 = mul i32 %add17, %86
  %add20 = add i32 %83, %mul19
  %87 = load %struct.opj_image*, %struct.opj_image** %l_image, align 8, !tbaa !5
  %y1 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %87, i32 0, i32 3
  %88 = load i32, i32* %y1, align 4, !tbaa !96
  %call21 = call i32 @opj_int_min(i32 %add20, i32 %88) #8
  %89 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %y122 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %89, i32 0, i32 3
  store i32 %call21, i32* %y122, align 4, !tbaa !97
  %90 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %numresolutions = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %90, i32 0, i32 1
  %91 = load i32, i32* %numresolutions, align 4, !tbaa !98
  %cmp = icmp eq i32 %91, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %92, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i32 0, i32 0)) #8
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.598

if.end:                                           ; preds = %entry
  store i32 0, i32* %compno, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.595, %if.end
  %93 = load i32, i32* %compno, align 4, !tbaa !1
  %94 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %numcomps = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %94, i32 0, i32 4
  %95 = load i32, i32* %numcomps, align 4, !tbaa !15
  %cmp24 = icmp ult i32 %93, %95
  br i1 %cmp24, label %for.body, label %for.end.597

for.body:                                         ; preds = %for.cond
  %96 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %x025 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %96, i32 0, i32 0
  %97 = load i32, i32* %x025, align 4, !tbaa !89
  %98 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_image_comp, align 8, !tbaa !5
  %dx = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %98, i32 0, i32 0
  %99 = load i32, i32* %dx, align 4, !tbaa !100
  %call26 = call i32 @opj_int_ceildiv(i32 %97, i32 %99) #8
  %100 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %x027 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %100, i32 0, i32 0
  store i32 %call26, i32* %x027, align 4, !tbaa !101
  %101 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %y028 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %101, i32 0, i32 1
  %102 = load i32, i32* %y028, align 4, !tbaa !93
  %103 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_image_comp, align 8, !tbaa !5
  %dy = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %103, i32 0, i32 1
  %104 = load i32, i32* %dy, align 4, !tbaa !102
  %call29 = call i32 @opj_int_ceildiv(i32 %102, i32 %104) #8
  %105 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %y030 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %105, i32 0, i32 1
  store i32 %call29, i32* %y030, align 4, !tbaa !103
  %106 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %x131 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %106, i32 0, i32 2
  %107 = load i32, i32* %x131, align 4, !tbaa !95
  %108 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_image_comp, align 8, !tbaa !5
  %dx32 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %108, i32 0, i32 0
  %109 = load i32, i32* %dx32, align 4, !tbaa !100
  %call33 = call i32 @opj_int_ceildiv(i32 %107, i32 %109) #8
  %110 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %x134 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %110, i32 0, i32 2
  store i32 %call33, i32* %x134, align 4, !tbaa !104
  %111 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %y135 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %111, i32 0, i32 3
  %112 = load i32, i32* %y135, align 4, !tbaa !97
  %113 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_image_comp, align 8, !tbaa !5
  %dy36 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %113, i32 0, i32 1
  %114 = load i32, i32* %dy36, align 4, !tbaa !102
  %call37 = call i32 @opj_int_ceildiv(i32 %112, i32 %114) #8
  %115 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %y138 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %115, i32 0, i32 3
  store i32 %call37, i32* %y138, align 4, !tbaa !105
  %116 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %x139 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %116, i32 0, i32 2
  %117 = load i32, i32* %x139, align 4, !tbaa !104
  %118 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %x040 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %118, i32 0, i32 0
  %119 = load i32, i32* %x040, align 4, !tbaa !101
  %sub = sub nsw i32 %117, %119
  %120 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %y141 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %120, i32 0, i32 3
  %121 = load i32, i32* %y141, align 4, !tbaa !105
  %122 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %y042 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %122, i32 0, i32 1
  %123 = load i32, i32* %y042, align 4, !tbaa !103
  %sub43 = sub nsw i32 %121, %123
  %mul44 = mul nsw i32 %sub, %sub43
  %conv = sext i32 %mul44 to i64
  %mul45 = mul i64 %conv, 4
  %conv46 = trunc i64 %mul45 to i32
  store i32 %conv46, i32* %l_data_size, align 4, !tbaa !1
  %124 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %numresolutions47 = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %124, i32 0, i32 1
  %125 = load i32, i32* %numresolutions47, align 4, !tbaa !98
  %126 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %numresolutions48 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %126, i32 0, i32 4
  store i32 %125, i32* %numresolutions48, align 4, !tbaa !19
  %127 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %numresolutions49 = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %127, i32 0, i32 1
  %128 = load i32, i32* %numresolutions49, align 4, !tbaa !98
  %129 = load %struct.opj_cp*, %struct.opj_cp** %l_cp, align 8, !tbaa !5
  %m_specific_param = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %129, i32 0, i32 18
  %m_dec = bitcast %union.anon.0* %m_specific_param to %struct.opj_decoding_param*
  %m_reduce = getelementptr inbounds %struct.opj_decoding_param, %struct.opj_decoding_param* %m_dec, i32 0, i32 0
  %130 = load i32, i32* %m_reduce, align 4, !tbaa !106
  %cmp50 = icmp ult i32 %128, %130
  br i1 %cmp50, label %if.then.52, label %if.else

if.then.52:                                       ; preds = %for.body
  %131 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %minimum_num_resolutions = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %131, i32 0, i32 5
  store i32 1, i32* %minimum_num_resolutions, align 4, !tbaa !108
  br label %if.end.59

if.else:                                          ; preds = %for.body
  %132 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %numresolutions53 = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %132, i32 0, i32 1
  %133 = load i32, i32* %numresolutions53, align 4, !tbaa !98
  %134 = load %struct.opj_cp*, %struct.opj_cp** %l_cp, align 8, !tbaa !5
  %m_specific_param54 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %134, i32 0, i32 18
  %m_dec55 = bitcast %union.anon.0* %m_specific_param54 to %struct.opj_decoding_param*
  %m_reduce56 = getelementptr inbounds %struct.opj_decoding_param, %struct.opj_decoding_param* %m_dec55, i32 0, i32 0
  %135 = load i32, i32* %m_reduce56, align 4, !tbaa !106
  %sub57 = sub i32 %133, %135
  %136 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %minimum_num_resolutions58 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %136, i32 0, i32 5
  store i32 %sub57, i32* %minimum_num_resolutions58, align 4, !tbaa !108
  br label %if.end.59

if.end.59:                                        ; preds = %if.else, %if.then.52
  %137 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %data = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %137, i32 0, i32 8
  %138 = load i32*, i32** %data, align 8, !tbaa !81
  %cmp60 = icmp eq i32* %138, null
  br i1 %cmp60, label %if.then.62, label %if.else.72

if.then.62:                                       ; preds = %if.end.59
  %139 = load i32, i32* %l_data_size, align 4, !tbaa !1
  %conv63 = zext i32 %139 to i64
  %cmp64 = icmp uge i64 %conv63, -256
  br i1 %cmp64, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.62
  br label %cond.end

cond.false:                                       ; preds = %if.then.62
  %140 = load i32, i32* %l_data_size, align 4, !tbaa !1
  %conv66 = zext i32 %140 to i64
  %call67 = call noalias i8* @malloc(i64 %conv66) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %call67, %cond.false ]
  %141 = bitcast i8* %cond to i32*
  %142 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %data68 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %142, i32 0, i32 8
  store i32* %141, i32** %data68, align 8, !tbaa !81
  %143 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %data69 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %143, i32 0, i32 8
  %144 = load i32*, i32** %data69, align 8, !tbaa !81
  %tobool = icmp ne i32* %144, null
  br i1 %tobool, label %if.end.71, label %if.then.70

if.then.70:                                       ; preds = %cond.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.598

if.end.71:                                        ; preds = %cond.end
  %145 = load i32, i32* %l_data_size, align 4, !tbaa !1
  %146 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %data_size = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %146, i32 0, i32 9
  store i32 %145, i32* %data_size, align 4, !tbaa !109
  br label %if.end.97

if.else.72:                                       ; preds = %if.end.59
  %147 = load i32, i32* %l_data_size, align 4, !tbaa !1
  %148 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %data_size73 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %148, i32 0, i32 9
  %149 = load i32, i32* %data_size73, align 4, !tbaa !109
  %cmp74 = icmp ugt i32 %147, %149
  br i1 %cmp74, label %if.then.76, label %if.end.96

if.then.76:                                       ; preds = %if.else.72
  %150 = bitcast i32** %new_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %150) #1
  %151 = load i32, i32* %l_data_size, align 4, !tbaa !1
  %conv77 = zext i32 %151 to i64
  %cmp78 = icmp uge i64 %conv77, -256
  br i1 %cmp78, label %cond.true.80, label %cond.false.81

cond.true.80:                                     ; preds = %if.then.76
  br label %cond.end.85

cond.false.81:                                    ; preds = %if.then.76
  %152 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %data82 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %152, i32 0, i32 8
  %153 = load i32*, i32** %data82, align 8, !tbaa !81
  %154 = bitcast i32* %153 to i8*
  %155 = load i32, i32* %l_data_size, align 4, !tbaa !1
  %conv83 = zext i32 %155 to i64
  %call84 = call i8* @realloc(i8* %154, i64 %conv83) #7
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.false.81, %cond.true.80
  %cond86 = phi i8* [ null, %cond.true.80 ], [ %call84, %cond.false.81 ]
  %156 = bitcast i8* %cond86 to i32*
  store i32* %156, i32** %new_data, align 8, !tbaa !5
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %call87 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %157, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i32 0, i32 0)) #8
  %158 = load i32*, i32** %new_data, align 8, !tbaa !5
  %tobool88 = icmp ne i32* %158, null
  br i1 %tobool88, label %if.end.93, label %if.then.89

if.then.89:                                       ; preds = %cond.end.85
  %159 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %data90 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %159, i32 0, i32 8
  %160 = load i32*, i32** %data90, align 8, !tbaa !81
  %161 = bitcast i32* %160 to i8*
  call void @free(i8* %161) #7
  %162 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %data91 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %162, i32 0, i32 8
  store i32* null, i32** %data91, align 8, !tbaa !81
  %163 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %data_size92 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %163, i32 0, i32 9
  store i32 0, i32* %data_size92, align 4, !tbaa !109
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.93:                                        ; preds = %cond.end.85
  %164 = load i32*, i32** %new_data, align 8, !tbaa !5
  %165 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %data94 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %165, i32 0, i32 8
  store i32* %164, i32** %data94, align 8, !tbaa !81
  %166 = load i32, i32* %l_data_size, align 4, !tbaa !1
  %167 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %data_size95 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %167, i32 0, i32 9
  store i32 %166, i32* %data_size95, align 4, !tbaa !109
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.93, %if.then.89
  %168 = bitcast i32** %new_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %168) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.598 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.96

if.end.96:                                        ; preds = %cleanup.cont, %if.else.72
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.end.71
  %169 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %numresolutions98 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %169, i32 0, i32 4
  %170 = load i32, i32* %numresolutions98, align 4, !tbaa !19
  %conv99 = zext i32 %170 to i64
  %mul100 = mul i64 %conv99, 176
  %conv101 = trunc i64 %mul100 to i32
  store i32 %conv101, i32* %l_data_size, align 4, !tbaa !1
  %171 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %resolutions = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %171, i32 0, i32 6
  %172 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %resolutions, align 8, !tbaa !29
  %cmp102 = icmp eq %struct.opj_tcd_resolution* %172, null
  br i1 %cmp102, label %if.then.104, label %if.else.122

if.then.104:                                      ; preds = %if.end.97
  %173 = load i32, i32* %l_data_size, align 4, !tbaa !1
  %conv105 = zext i32 %173 to i64
  %cmp106 = icmp uge i64 %conv105, -256
  br i1 %cmp106, label %cond.true.108, label %cond.false.109

cond.true.108:                                    ; preds = %if.then.104
  br label %cond.end.112

cond.false.109:                                   ; preds = %if.then.104
  %174 = load i32, i32* %l_data_size, align 4, !tbaa !1
  %conv110 = zext i32 %174 to i64
  %call111 = call noalias i8* @malloc(i64 %conv110) #7
  br label %cond.end.112

cond.end.112:                                     ; preds = %cond.false.109, %cond.true.108
  %cond113 = phi i8* [ null, %cond.true.108 ], [ %call111, %cond.false.109 ]
  %175 = bitcast i8* %cond113 to %struct.opj_tcd_resolution*
  %176 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %resolutions114 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %176, i32 0, i32 6
  store %struct.opj_tcd_resolution* %175, %struct.opj_tcd_resolution** %resolutions114, align 8, !tbaa !29
  %177 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %resolutions115 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %177, i32 0, i32 6
  %178 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %resolutions115, align 8, !tbaa !29
  %tobool116 = icmp ne %struct.opj_tcd_resolution* %178, null
  br i1 %tobool116, label %if.end.118, label %if.then.117

if.then.117:                                      ; preds = %cond.end.112
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.598

if.end.118:                                       ; preds = %cond.end.112
  %179 = load i32, i32* %l_data_size, align 4, !tbaa !1
  %180 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %resolutions_size = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %180, i32 0, i32 7
  store i32 %179, i32* %resolutions_size, align 4, !tbaa !77
  %181 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %resolutions119 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %181, i32 0, i32 6
  %182 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %resolutions119, align 8, !tbaa !29
  %183 = bitcast %struct.opj_tcd_resolution* %182 to i8*
  %184 = load i32, i32* %l_data_size, align 4, !tbaa !1
  %conv120 = zext i32 %184 to i64
  %call121 = call i8* @memset(i8* %183, i32 0, i64 %conv120) #7
  br label %if.end.156

if.else.122:                                      ; preds = %if.end.97
  %185 = load i32, i32* %l_data_size, align 4, !tbaa !1
  %186 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %resolutions_size123 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %186, i32 0, i32 7
  %187 = load i32, i32* %resolutions_size123, align 4, !tbaa !77
  %cmp124 = icmp ugt i32 %185, %187
  br i1 %cmp124, label %if.then.126, label %if.end.155

if.then.126:                                      ; preds = %if.else.122
  %188 = bitcast %struct.opj_tcd_resolution** %new_resolutions to i8*
  call void @llvm.lifetime.start(i64 8, i8* %188) #1
  %189 = load i32, i32* %l_data_size, align 4, !tbaa !1
  %conv127 = zext i32 %189 to i64
  %cmp128 = icmp uge i64 %conv127, -256
  br i1 %cmp128, label %cond.true.130, label %cond.false.131

cond.true.130:                                    ; preds = %if.then.126
  br label %cond.end.135

cond.false.131:                                   ; preds = %if.then.126
  %190 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %resolutions132 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %190, i32 0, i32 6
  %191 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %resolutions132, align 8, !tbaa !29
  %192 = bitcast %struct.opj_tcd_resolution* %191 to i8*
  %193 = load i32, i32* %l_data_size, align 4, !tbaa !1
  %conv133 = zext i32 %193 to i64
  %call134 = call i8* @realloc(i8* %192, i64 %conv133) #7
  br label %cond.end.135

cond.end.135:                                     ; preds = %cond.false.131, %cond.true.130
  %cond136 = phi i8* [ null, %cond.true.130 ], [ %call134, %cond.false.131 ]
  %194 = bitcast i8* %cond136 to %struct.opj_tcd_resolution*
  store %struct.opj_tcd_resolution* %194, %struct.opj_tcd_resolution** %new_resolutions, align 8, !tbaa !5
  %195 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %new_resolutions, align 8, !tbaa !5
  %tobool137 = icmp ne %struct.opj_tcd_resolution* %195, null
  br i1 %tobool137, label %if.end.143, label %if.then.138

if.then.138:                                      ; preds = %cond.end.135
  %196 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %call139 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %196, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i32 0, i32 0)) #8
  %197 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %resolutions140 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %197, i32 0, i32 6
  %198 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %resolutions140, align 8, !tbaa !29
  %199 = bitcast %struct.opj_tcd_resolution* %198 to i8*
  call void @free(i8* %199) #7
  %200 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %resolutions141 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %200, i32 0, i32 6
  store %struct.opj_tcd_resolution* null, %struct.opj_tcd_resolution** %resolutions141, align 8, !tbaa !29
  %201 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %resolutions_size142 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %201, i32 0, i32 7
  store i32 0, i32* %resolutions_size142, align 4, !tbaa !77
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.152

if.end.143:                                       ; preds = %cond.end.135
  %202 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %new_resolutions, align 8, !tbaa !5
  %203 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %resolutions144 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %203, i32 0, i32 6
  store %struct.opj_tcd_resolution* %202, %struct.opj_tcd_resolution** %resolutions144, align 8, !tbaa !29
  %204 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %resolutions145 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %204, i32 0, i32 6
  %205 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %resolutions145, align 8, !tbaa !29
  %206 = bitcast %struct.opj_tcd_resolution* %205 to i8*
  %207 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %resolutions_size146 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %207, i32 0, i32 7
  %208 = load i32, i32* %resolutions_size146, align 4, !tbaa !77
  %idx.ext = zext i32 %208 to i64
  %add.ptr = getelementptr inbounds i8, i8* %206, i64 %idx.ext
  %209 = load i32, i32* %l_data_size, align 4, !tbaa !1
  %210 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %resolutions_size147 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %210, i32 0, i32 7
  %211 = load i32, i32* %resolutions_size147, align 4, !tbaa !77
  %sub148 = sub i32 %209, %211
  %conv149 = zext i32 %sub148 to i64
  %call150 = call i8* @memset(i8* %add.ptr, i32 0, i64 %conv149) #7
  %212 = load i32, i32* %l_data_size, align 4, !tbaa !1
  %213 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %resolutions_size151 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %213, i32 0, i32 7
  store i32 %212, i32* %resolutions_size151, align 4, !tbaa !77
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.152

cleanup.152:                                      ; preds = %if.end.143, %if.then.138
  %214 = bitcast %struct.opj_tcd_resolution** %new_resolutions to i8*
  call void @llvm.lifetime.end(i64 8, i8* %214) #1
  %cleanup.dest.153 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.153, label %cleanup.598 [
    i32 0, label %cleanup.cont.154
  ]

cleanup.cont.154:                                 ; preds = %cleanup.152
  br label %if.end.155

if.end.155:                                       ; preds = %cleanup.cont.154, %if.else.122
  br label %if.end.156

if.end.156:                                       ; preds = %if.end.155, %if.end.118
  %215 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %numresolutions157 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %215, i32 0, i32 4
  %216 = load i32, i32* %numresolutions157, align 4, !tbaa !19
  %sub158 = sub i32 %216, 1
  store i32 %sub158, i32* %l_level_no, align 4, !tbaa !1
  %217 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %resolutions159 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %217, i32 0, i32 6
  %218 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %resolutions159, align 8, !tbaa !29
  store %struct.opj_tcd_resolution* %218, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %219 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %stepsizes = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %219, i32 0, i32 7
  %arraydecay = getelementptr inbounds [97 x %struct.opj_stepsize], [97 x %struct.opj_stepsize]* %stepsizes, i32 0, i32 0
  store %struct.opj_stepsize* %arraydecay, %struct.opj_stepsize** %l_step_size, align 8, !tbaa !5
  %220 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %qmfbid = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %220, i32 0, i32 5
  %221 = load i32, i32* %qmfbid, align 4, !tbaa !110
  %cmp160 = icmp eq i32 %221, 0
  br i1 %cmp160, label %if.then.162, label %if.else.163

if.then.162:                                      ; preds = %if.end.156
  store i32 (i32)* @opj_dwt_getgain_real, i32 (i32)** %l_gain_ptr, align 8, !tbaa !5
  br label %if.end.164

if.else.163:                                      ; preds = %if.end.156
  store i32 (i32)* @opj_dwt_getgain, i32 (i32)** %l_gain_ptr, align 8, !tbaa !5
  br label %if.end.164

if.end.164:                                       ; preds = %if.else.163, %if.then.162
  store i32 0, i32* %resno, align 4, !tbaa !1
  br label %for.cond.165

for.cond.165:                                     ; preds = %for.inc.589, %if.end.164
  %222 = load i32, i32* %resno, align 4, !tbaa !1
  %223 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %numresolutions166 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %223, i32 0, i32 4
  %224 = load i32, i32* %numresolutions166, align 4, !tbaa !19
  %cmp167 = icmp ult i32 %222, %224
  br i1 %cmp167, label %for.body.169, label %for.end.591

for.body.169:                                     ; preds = %for.cond.165
  %225 = bitcast i32* %tlcbgxstart to i8*
  call void @llvm.lifetime.start(i64 4, i8* %225) #1
  %226 = bitcast i32* %tlcbgystart to i8*
  call void @llvm.lifetime.start(i64 4, i8* %226) #1
  %227 = bitcast i32* %cbgwidthexpn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %227) #1
  %228 = bitcast i32* %cbgheightexpn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %228) #1
  %229 = bitcast i32* %cblkwidthexpn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %229) #1
  %230 = bitcast i32* %cblkheightexpn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %230) #1
  %231 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %x0170 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %231, i32 0, i32 0
  %232 = load i32, i32* %x0170, align 4, !tbaa !101
  %233 = load i32, i32* %l_level_no, align 4, !tbaa !1
  %call171 = call i32 @opj_int_ceildivpow2(i32 %232, i32 %233) #8
  %234 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %x0172 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %234, i32 0, i32 0
  store i32 %call171, i32* %x0172, align 4, !tbaa !111
  %235 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %y0173 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %235, i32 0, i32 1
  %236 = load i32, i32* %y0173, align 4, !tbaa !103
  %237 = load i32, i32* %l_level_no, align 4, !tbaa !1
  %call174 = call i32 @opj_int_ceildivpow2(i32 %236, i32 %237) #8
  %238 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %y0175 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %238, i32 0, i32 1
  store i32 %call174, i32* %y0175, align 4, !tbaa !112
  %239 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %x1176 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %239, i32 0, i32 2
  %240 = load i32, i32* %x1176, align 4, !tbaa !104
  %241 = load i32, i32* %l_level_no, align 4, !tbaa !1
  %call177 = call i32 @opj_int_ceildivpow2(i32 %240, i32 %241) #8
  %242 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %x1178 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %242, i32 0, i32 2
  store i32 %call177, i32* %x1178, align 4, !tbaa !113
  %243 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %y1179 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %243, i32 0, i32 3
  %244 = load i32, i32* %y1179, align 4, !tbaa !105
  %245 = load i32, i32* %l_level_no, align 4, !tbaa !1
  %call180 = call i32 @opj_int_ceildivpow2(i32 %244, i32 %245) #8
  %246 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %y1181 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %246, i32 0, i32 3
  store i32 %call180, i32* %y1181, align 4, !tbaa !114
  %247 = load i32, i32* %resno, align 4, !tbaa !1
  %idxprom182 = zext i32 %247 to i64
  %248 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %prcw = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %248, i32 0, i32 10
  %arrayidx183 = getelementptr inbounds [33 x i32], [33 x i32]* %prcw, i32 0, i64 %idxprom182
  %249 = load i32, i32* %arrayidx183, align 4, !tbaa !1
  store i32 %249, i32* %l_pdx, align 4, !tbaa !1
  %250 = load i32, i32* %resno, align 4, !tbaa !1
  %idxprom184 = zext i32 %250 to i64
  %251 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %prch = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %251, i32 0, i32 11
  %arrayidx185 = getelementptr inbounds [33 x i32], [33 x i32]* %prch, i32 0, i64 %idxprom184
  %252 = load i32, i32* %arrayidx185, align 4, !tbaa !1
  store i32 %252, i32* %l_pdy, align 4, !tbaa !1
  %253 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %x0186 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %253, i32 0, i32 0
  %254 = load i32, i32* %x0186, align 4, !tbaa !111
  %255 = load i32, i32* %l_pdx, align 4, !tbaa !1
  %call187 = call i32 @opj_int_floordivpow2(i32 %254, i32 %255) #8
  %256 = load i32, i32* %l_pdx, align 4, !tbaa !1
  %shl = shl i32 %call187, %256
  store i32 %shl, i32* %l_tl_prc_x_start, align 4, !tbaa !1
  %257 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %y0188 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %257, i32 0, i32 1
  %258 = load i32, i32* %y0188, align 4, !tbaa !112
  %259 = load i32, i32* %l_pdy, align 4, !tbaa !1
  %call189 = call i32 @opj_int_floordivpow2(i32 %258, i32 %259) #8
  %260 = load i32, i32* %l_pdy, align 4, !tbaa !1
  %shl190 = shl i32 %call189, %260
  store i32 %shl190, i32* %l_tl_prc_y_start, align 4, !tbaa !1
  %261 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %x1191 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %261, i32 0, i32 2
  %262 = load i32, i32* %x1191, align 4, !tbaa !113
  %263 = load i32, i32* %l_pdx, align 4, !tbaa !1
  %call192 = call i32 @opj_int_ceildivpow2(i32 %262, i32 %263) #8
  %264 = load i32, i32* %l_pdx, align 4, !tbaa !1
  %shl193 = shl i32 %call192, %264
  store i32 %shl193, i32* %l_br_prc_x_end, align 4, !tbaa !1
  %265 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %y1194 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %265, i32 0, i32 3
  %266 = load i32, i32* %y1194, align 4, !tbaa !114
  %267 = load i32, i32* %l_pdy, align 4, !tbaa !1
  %call195 = call i32 @opj_int_ceildivpow2(i32 %266, i32 %267) #8
  %268 = load i32, i32* %l_pdy, align 4, !tbaa !1
  %shl196 = shl i32 %call195, %268
  store i32 %shl196, i32* %l_br_prc_y_end, align 4, !tbaa !1
  %269 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %x0197 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %269, i32 0, i32 0
  %270 = load i32, i32* %x0197, align 4, !tbaa !111
  %271 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %x1198 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %271, i32 0, i32 2
  %272 = load i32, i32* %x1198, align 4, !tbaa !113
  %cmp199 = icmp eq i32 %270, %272
  br i1 %cmp199, label %cond.true.201, label %cond.false.202

cond.true.201:                                    ; preds = %for.body.169
  br label %cond.end.204

cond.false.202:                                   ; preds = %for.body.169
  %273 = load i32, i32* %l_br_prc_x_end, align 4, !tbaa !1
  %274 = load i32, i32* %l_tl_prc_x_start, align 4, !tbaa !1
  %sub203 = sub nsw i32 %273, %274
  %275 = load i32, i32* %l_pdx, align 4, !tbaa !1
  %shr = ashr i32 %sub203, %275
  br label %cond.end.204

cond.end.204:                                     ; preds = %cond.false.202, %cond.true.201
  %cond205 = phi i32 [ 0, %cond.true.201 ], [ %shr, %cond.false.202 ]
  %276 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %pw = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %276, i32 0, i32 4
  store i32 %cond205, i32* %pw, align 4, !tbaa !32
  %277 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %y0206 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %277, i32 0, i32 1
  %278 = load i32, i32* %y0206, align 4, !tbaa !112
  %279 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %y1207 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %279, i32 0, i32 3
  %280 = load i32, i32* %y1207, align 4, !tbaa !114
  %cmp208 = icmp eq i32 %278, %280
  br i1 %cmp208, label %cond.true.210, label %cond.false.211

cond.true.210:                                    ; preds = %cond.end.204
  br label %cond.end.214

cond.false.211:                                   ; preds = %cond.end.204
  %281 = load i32, i32* %l_br_prc_y_end, align 4, !tbaa !1
  %282 = load i32, i32* %l_tl_prc_y_start, align 4, !tbaa !1
  %sub212 = sub nsw i32 %281, %282
  %283 = load i32, i32* %l_pdy, align 4, !tbaa !1
  %shr213 = ashr i32 %sub212, %283
  br label %cond.end.214

cond.end.214:                                     ; preds = %cond.false.211, %cond.true.210
  %cond215 = phi i32 [ 0, %cond.true.210 ], [ %shr213, %cond.false.211 ]
  %284 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %ph = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %284, i32 0, i32 5
  store i32 %cond215, i32* %ph, align 4, !tbaa !33
  %285 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %pw216 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %285, i32 0, i32 4
  %286 = load i32, i32* %pw216, align 4, !tbaa !32
  %287 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %ph217 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %287, i32 0, i32 5
  %288 = load i32, i32* %ph217, align 4, !tbaa !33
  %mul218 = mul i32 %286, %288
  store i32 %mul218, i32* %l_nb_precincts, align 4, !tbaa !1
  %289 = load i32, i32* %l_nb_precincts, align 4, !tbaa !1
  %conv219 = zext i32 %289 to i64
  %mul220 = mul i64 %conv219, 56
  %conv221 = trunc i64 %mul220 to i32
  store i32 %conv221, i32* %l_nb_precinct_size, align 4, !tbaa !1
  %290 = load i32, i32* %resno, align 4, !tbaa !1
  %cmp222 = icmp eq i32 %290, 0
  br i1 %cmp222, label %if.then.224, label %if.else.225

if.then.224:                                      ; preds = %cond.end.214
  %291 = load i32, i32* %l_tl_prc_x_start, align 4, !tbaa !1
  store i32 %291, i32* %tlcbgxstart, align 4, !tbaa !1
  %292 = load i32, i32* %l_tl_prc_y_start, align 4, !tbaa !1
  store i32 %292, i32* %tlcbgystart, align 4, !tbaa !1
  %293 = load i32, i32* %l_pdx, align 4, !tbaa !1
  store i32 %293, i32* %cbgwidthexpn, align 4, !tbaa !1
  %294 = load i32, i32* %l_pdy, align 4, !tbaa !1
  store i32 %294, i32* %cbgheightexpn, align 4, !tbaa !1
  %295 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %numbands = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %295, i32 0, i32 6
  store i32 1, i32* %numbands, align 4, !tbaa !30
  br label %if.end.231

if.else.225:                                      ; preds = %cond.end.214
  %296 = load i32, i32* %l_tl_prc_x_start, align 4, !tbaa !1
  %call226 = call i32 @opj_int_ceildivpow2(i32 %296, i32 1) #8
  store i32 %call226, i32* %tlcbgxstart, align 4, !tbaa !1
  %297 = load i32, i32* %l_tl_prc_y_start, align 4, !tbaa !1
  %call227 = call i32 @opj_int_ceildivpow2(i32 %297, i32 1) #8
  store i32 %call227, i32* %tlcbgystart, align 4, !tbaa !1
  %298 = load i32, i32* %l_pdx, align 4, !tbaa !1
  %sub228 = sub i32 %298, 1
  store i32 %sub228, i32* %cbgwidthexpn, align 4, !tbaa !1
  %299 = load i32, i32* %l_pdy, align 4, !tbaa !1
  %sub229 = sub i32 %299, 1
  store i32 %sub229, i32* %cbgheightexpn, align 4, !tbaa !1
  %300 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %numbands230 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %300, i32 0, i32 6
  store i32 3, i32* %numbands230, align 4, !tbaa !30
  br label %if.end.231

if.end.231:                                       ; preds = %if.else.225, %if.then.224
  %301 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %cblkw = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %301, i32 0, i32 2
  %302 = load i32, i32* %cblkw, align 4, !tbaa !115
  %303 = load i32, i32* %cbgwidthexpn, align 4, !tbaa !1
  %call232 = call i32 @opj_uint_min(i32 %302, i32 %303) #8
  store i32 %call232, i32* %cblkwidthexpn, align 4, !tbaa !1
  %304 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %cblkh = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %304, i32 0, i32 3
  %305 = load i32, i32* %cblkh, align 4, !tbaa !116
  %306 = load i32, i32* %cbgheightexpn, align 4, !tbaa !1
  %call233 = call i32 @opj_uint_min(i32 %305, i32 %306) #8
  store i32 %call233, i32* %cblkheightexpn, align 4, !tbaa !1
  %307 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %bands = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %307, i32 0, i32 7
  %arraydecay234 = getelementptr inbounds [3 x %struct.opj_tcd_band], [3 x %struct.opj_tcd_band]* %bands, i32 0, i32 0
  store %struct.opj_tcd_band* %arraydecay234, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  store i32 0, i32* %bandno, align 4, !tbaa !1
  br label %for.cond.235

for.cond.235:                                     ; preds = %for.inc.577, %if.end.231
  %308 = load i32, i32* %bandno, align 4, !tbaa !1
  %309 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %numbands236 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %309, i32 0, i32 6
  %310 = load i32, i32* %numbands236, align 4, !tbaa !30
  %cmp237 = icmp ult i32 %308, %310
  br i1 %cmp237, label %for.body.239, label %for.end.579

for.body.239:                                     ; preds = %for.cond.235
  %311 = bitcast i32* %numbps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %311) #1
  %312 = load i32, i32* %resno, align 4, !tbaa !1
  %cmp240 = icmp eq i32 %312, 0
  br i1 %cmp240, label %if.then.242, label %if.else.256

if.then.242:                                      ; preds = %for.body.239
  %313 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %bandno243 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %313, i32 0, i32 4
  store i32 0, i32* %bandno243, align 4, !tbaa !117
  %314 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %x0244 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %314, i32 0, i32 0
  %315 = load i32, i32* %x0244, align 4, !tbaa !101
  %316 = load i32, i32* %l_level_no, align 4, !tbaa !1
  %call245 = call i32 @opj_int_ceildivpow2(i32 %315, i32 %316) #8
  %317 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %x0246 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %317, i32 0, i32 0
  store i32 %call245, i32* %x0246, align 4, !tbaa !118
  %318 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %y0247 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %318, i32 0, i32 1
  %319 = load i32, i32* %y0247, align 4, !tbaa !103
  %320 = load i32, i32* %l_level_no, align 4, !tbaa !1
  %call248 = call i32 @opj_int_ceildivpow2(i32 %319, i32 %320) #8
  %321 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %y0249 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %321, i32 0, i32 1
  store i32 %call248, i32* %y0249, align 4, !tbaa !119
  %322 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %x1250 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %322, i32 0, i32 2
  %323 = load i32, i32* %x1250, align 4, !tbaa !104
  %324 = load i32, i32* %l_level_no, align 4, !tbaa !1
  %call251 = call i32 @opj_int_ceildivpow2(i32 %323, i32 %324) #8
  %325 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %x1252 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %325, i32 0, i32 2
  store i32 %call251, i32* %x1252, align 4, !tbaa !120
  %326 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %y1253 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %326, i32 0, i32 3
  %327 = load i32, i32* %y1253, align 4, !tbaa !105
  %328 = load i32, i32* %l_level_no, align 4, !tbaa !1
  %call254 = call i32 @opj_int_ceildivpow2(i32 %327, i32 %328) #8
  %329 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %y1255 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %329, i32 0, i32 3
  store i32 %call254, i32* %y1255, align 4, !tbaa !121
  br label %if.end.290

if.else.256:                                      ; preds = %for.body.239
  %330 = load i32, i32* %bandno, align 4, !tbaa !1
  %add257 = add i32 %330, 1
  %331 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %bandno258 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %331, i32 0, i32 4
  store i32 %add257, i32* %bandno258, align 4, !tbaa !117
  %332 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %bandno259 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %332, i32 0, i32 4
  %333 = load i32, i32* %bandno259, align 4, !tbaa !117
  %and = and i32 %333, 1
  store i32 %and, i32* %l_x0b, align 4, !tbaa !1
  %334 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %bandno260 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %334, i32 0, i32 4
  %335 = load i32, i32* %bandno260, align 4, !tbaa !117
  %shr261 = lshr i32 %335, 1
  store i32 %shr261, i32* %l_y0b, align 4, !tbaa !1
  %336 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %x0262 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %336, i32 0, i32 0
  %337 = load i32, i32* %x0262, align 4, !tbaa !101
  %338 = load i32, i32* %l_level_no, align 4, !tbaa !1
  %shl263 = shl i32 1, %338
  %339 = load i32, i32* %l_x0b, align 4, !tbaa !1
  %mul264 = mul nsw i32 %shl263, %339
  %sub265 = sub nsw i32 %337, %mul264
  %340 = load i32, i32* %l_level_no, align 4, !tbaa !1
  %add266 = add i32 %340, 1
  %call267 = call i32 @opj_int_ceildivpow2(i32 %sub265, i32 %add266) #8
  %341 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %x0268 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %341, i32 0, i32 0
  store i32 %call267, i32* %x0268, align 4, !tbaa !118
  %342 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %y0269 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %342, i32 0, i32 1
  %343 = load i32, i32* %y0269, align 4, !tbaa !103
  %344 = load i32, i32* %l_level_no, align 4, !tbaa !1
  %shl270 = shl i32 1, %344
  %345 = load i32, i32* %l_y0b, align 4, !tbaa !1
  %mul271 = mul nsw i32 %shl270, %345
  %sub272 = sub nsw i32 %343, %mul271
  %346 = load i32, i32* %l_level_no, align 4, !tbaa !1
  %add273 = add i32 %346, 1
  %call274 = call i32 @opj_int_ceildivpow2(i32 %sub272, i32 %add273) #8
  %347 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %y0275 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %347, i32 0, i32 1
  store i32 %call274, i32* %y0275, align 4, !tbaa !119
  %348 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %x1276 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %348, i32 0, i32 2
  %349 = load i32, i32* %x1276, align 4, !tbaa !104
  %350 = load i32, i32* %l_level_no, align 4, !tbaa !1
  %shl277 = shl i32 1, %350
  %351 = load i32, i32* %l_x0b, align 4, !tbaa !1
  %mul278 = mul nsw i32 %shl277, %351
  %sub279 = sub nsw i32 %349, %mul278
  %352 = load i32, i32* %l_level_no, align 4, !tbaa !1
  %add280 = add i32 %352, 1
  %call281 = call i32 @opj_int_ceildivpow2(i32 %sub279, i32 %add280) #8
  %353 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %x1282 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %353, i32 0, i32 2
  store i32 %call281, i32* %x1282, align 4, !tbaa !120
  %354 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %y1283 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %354, i32 0, i32 3
  %355 = load i32, i32* %y1283, align 4, !tbaa !105
  %356 = load i32, i32* %l_level_no, align 4, !tbaa !1
  %shl284 = shl i32 1, %356
  %357 = load i32, i32* %l_y0b, align 4, !tbaa !1
  %mul285 = mul nsw i32 %shl284, %357
  %sub286 = sub nsw i32 %355, %mul285
  %358 = load i32, i32* %l_level_no, align 4, !tbaa !1
  %add287 = add i32 %358, 1
  %call288 = call i32 @opj_int_ceildivpow2(i32 %sub286, i32 %add287) #8
  %359 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %y1289 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %359, i32 0, i32 3
  store i32 %call288, i32* %y1289, align 4, !tbaa !121
  br label %if.end.290

if.end.290:                                       ; preds = %if.else.256, %if.then.242
  %360 = load i32 (i32)*, i32 (i32)** %l_gain_ptr, align 8, !tbaa !5
  %361 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %bandno291 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %361, i32 0, i32 4
  %362 = load i32, i32* %bandno291, align 4, !tbaa !117
  %call292 = call i32 %360(i32 %362) #8
  store i32 %call292, i32* %l_gain, align 4, !tbaa !1
  %363 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_image_comp, align 8, !tbaa !5
  %prec = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %363, i32 0, i32 6
  %364 = load i32, i32* %prec, align 4, !tbaa !26
  %365 = load i32, i32* %l_gain, align 4, !tbaa !1
  %add293 = add i32 %364, %365
  store i32 %add293, i32* %numbps, align 4, !tbaa !1
  %366 = load %struct.opj_stepsize*, %struct.opj_stepsize** %l_step_size, align 8, !tbaa !5
  %mant = getelementptr inbounds %struct.opj_stepsize, %struct.opj_stepsize* %366, i32 0, i32 1
  %367 = load i32, i32* %mant, align 4, !tbaa !122
  %conv294 = sitofp i32 %367 to double
  %div295 = fdiv double %conv294, 2.048000e+03
  %add296 = fadd double 1.000000e+00, %div295
  %368 = load i32, i32* %numbps, align 4, !tbaa !1
  %369 = load %struct.opj_stepsize*, %struct.opj_stepsize** %l_step_size, align 8, !tbaa !5
  %expn = getelementptr inbounds %struct.opj_stepsize, %struct.opj_stepsize* %369, i32 0, i32 0
  %370 = load i32, i32* %expn, align 4, !tbaa !124
  %sub297 = sub nsw i32 %368, %370
  %conv298 = sitofp i32 %sub297 to double
  %call299 = call double @pow(double 2.000000e+00, double %conv298) #7
  %mul300 = fmul double %add296, %call299
  %conv301 = fptrunc double %mul300 to float
  %mul302 = fmul float %conv301, 1.000000e+00
  %371 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %stepsize = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %371, i32 0, i32 8
  store float %mul302, float* %stepsize, align 4, !tbaa !125
  %372 = load %struct.opj_stepsize*, %struct.opj_stepsize** %l_step_size, align 8, !tbaa !5
  %expn303 = getelementptr inbounds %struct.opj_stepsize, %struct.opj_stepsize* %372, i32 0, i32 0
  %373 = load i32, i32* %expn303, align 4, !tbaa !124
  %374 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %numgbits = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %374, i32 0, i32 8
  %375 = load i32, i32* %numgbits, align 4, !tbaa !126
  %add304 = add i32 %373, %375
  %sub305 = sub i32 %add304, 1
  %376 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %numbps306 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %376, i32 0, i32 7
  store i32 %sub305, i32* %numbps306, align 4, !tbaa !127
  %377 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %precincts = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %377, i32 0, i32 5
  %378 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %precincts, align 8, !tbaa !34
  %tobool307 = icmp ne %struct.opj_tcd_precinct* %378, null
  br i1 %tobool307, label %if.else.326, label %if.then.308

if.then.308:                                      ; preds = %if.end.290
  %379 = load i32, i32* %l_nb_precinct_size, align 4, !tbaa !1
  %conv309 = zext i32 %379 to i64
  %cmp310 = icmp uge i64 %conv309, -256
  br i1 %cmp310, label %cond.true.312, label %cond.false.313

cond.true.312:                                    ; preds = %if.then.308
  br label %cond.end.316

cond.false.313:                                   ; preds = %if.then.308
  %380 = load i32, i32* %l_nb_precinct_size, align 4, !tbaa !1
  %conv314 = zext i32 %380 to i64
  %call315 = call noalias i8* @malloc(i64 %conv314) #7
  br label %cond.end.316

cond.end.316:                                     ; preds = %cond.false.313, %cond.true.312
  %cond317 = phi i8* [ null, %cond.true.312 ], [ %call315, %cond.false.313 ]
  %381 = bitcast i8* %cond317 to %struct.opj_tcd_precinct*
  %382 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %precincts318 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %382, i32 0, i32 5
  store %struct.opj_tcd_precinct* %381, %struct.opj_tcd_precinct** %precincts318, align 8, !tbaa !34
  %383 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %precincts319 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %383, i32 0, i32 5
  %384 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %precincts319, align 8, !tbaa !34
  %tobool320 = icmp ne %struct.opj_tcd_precinct* %384, null
  br i1 %tobool320, label %if.end.322, label %if.then.321

if.then.321:                                      ; preds = %cond.end.316
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.574

if.end.322:                                       ; preds = %cond.end.316
  %385 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %precincts323 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %385, i32 0, i32 5
  %386 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %precincts323, align 8, !tbaa !34
  %387 = bitcast %struct.opj_tcd_precinct* %386 to i8*
  %388 = load i32, i32* %l_nb_precinct_size, align 4, !tbaa !1
  %conv324 = zext i32 %388 to i64
  %call325 = call i8* @memset(i8* %387, i32 0, i64 %conv324) #7
  %389 = load i32, i32* %l_nb_precinct_size, align 4, !tbaa !1
  %390 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %precincts_data_size = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %390, i32 0, i32 6
  store i32 %389, i32* %precincts_data_size, align 4, !tbaa !78
  br label %if.end.362

if.else.326:                                      ; preds = %if.end.290
  %391 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %precincts_data_size327 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %391, i32 0, i32 6
  %392 = load i32, i32* %precincts_data_size327, align 4, !tbaa !78
  %393 = load i32, i32* %l_nb_precinct_size, align 4, !tbaa !1
  %cmp328 = icmp ult i32 %392, %393
  br i1 %cmp328, label %if.then.330, label %if.end.361

if.then.330:                                      ; preds = %if.else.326
  %394 = bitcast %struct.opj_tcd_precinct** %new_precincts to i8*
  call void @llvm.lifetime.start(i64 8, i8* %394) #1
  %395 = load i32, i32* %l_nb_precinct_size, align 4, !tbaa !1
  %conv331 = zext i32 %395 to i64
  %cmp332 = icmp uge i64 %conv331, -256
  br i1 %cmp332, label %cond.true.334, label %cond.false.335

cond.true.334:                                    ; preds = %if.then.330
  br label %cond.end.339

cond.false.335:                                   ; preds = %if.then.330
  %396 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %precincts336 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %396, i32 0, i32 5
  %397 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %precincts336, align 8, !tbaa !34
  %398 = bitcast %struct.opj_tcd_precinct* %397 to i8*
  %399 = load i32, i32* %l_nb_precinct_size, align 4, !tbaa !1
  %conv337 = zext i32 %399 to i64
  %call338 = call i8* @realloc(i8* %398, i64 %conv337) #7
  br label %cond.end.339

cond.end.339:                                     ; preds = %cond.false.335, %cond.true.334
  %cond340 = phi i8* [ null, %cond.true.334 ], [ %call338, %cond.false.335 ]
  %400 = bitcast i8* %cond340 to %struct.opj_tcd_precinct*
  store %struct.opj_tcd_precinct* %400, %struct.opj_tcd_precinct** %new_precincts, align 8, !tbaa !5
  %401 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %new_precincts, align 8, !tbaa !5
  %tobool341 = icmp ne %struct.opj_tcd_precinct* %401, null
  br i1 %tobool341, label %if.end.347, label %if.then.342

if.then.342:                                      ; preds = %cond.end.339
  %402 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %call343 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %402, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i32 0, i32 0)) #8
  %403 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %precincts344 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %403, i32 0, i32 5
  %404 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %precincts344, align 8, !tbaa !34
  %405 = bitcast %struct.opj_tcd_precinct* %404 to i8*
  call void @free(i8* %405) #7
  %406 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %precincts345 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %406, i32 0, i32 5
  store %struct.opj_tcd_precinct* null, %struct.opj_tcd_precinct** %precincts345, align 8, !tbaa !34
  %407 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %precincts_data_size346 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %407, i32 0, i32 6
  store i32 0, i32* %precincts_data_size346, align 4, !tbaa !78
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.358

if.end.347:                                       ; preds = %cond.end.339
  %408 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %new_precincts, align 8, !tbaa !5
  %409 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %precincts348 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %409, i32 0, i32 5
  store %struct.opj_tcd_precinct* %408, %struct.opj_tcd_precinct** %precincts348, align 8, !tbaa !34
  %410 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %precincts349 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %410, i32 0, i32 5
  %411 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %precincts349, align 8, !tbaa !34
  %412 = bitcast %struct.opj_tcd_precinct* %411 to i8*
  %413 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %precincts_data_size350 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %413, i32 0, i32 6
  %414 = load i32, i32* %precincts_data_size350, align 4, !tbaa !78
  %idx.ext351 = zext i32 %414 to i64
  %add.ptr352 = getelementptr inbounds i8, i8* %412, i64 %idx.ext351
  %415 = load i32, i32* %l_nb_precinct_size, align 4, !tbaa !1
  %416 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %precincts_data_size353 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %416, i32 0, i32 6
  %417 = load i32, i32* %precincts_data_size353, align 4, !tbaa !78
  %sub354 = sub i32 %415, %417
  %conv355 = zext i32 %sub354 to i64
  %call356 = call i8* @memset(i8* %add.ptr352, i32 0, i64 %conv355) #7
  %418 = load i32, i32* %l_nb_precinct_size, align 4, !tbaa !1
  %419 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %precincts_data_size357 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %419, i32 0, i32 6
  store i32 %418, i32* %precincts_data_size357, align 4, !tbaa !78
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.358

cleanup.358:                                      ; preds = %if.end.347, %if.then.342
  %420 = bitcast %struct.opj_tcd_precinct** %new_precincts to i8*
  call void @llvm.lifetime.end(i64 8, i8* %420) #1
  %cleanup.dest.359 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.359, label %cleanup.574 [
    i32 0, label %cleanup.cont.360
  ]

cleanup.cont.360:                                 ; preds = %cleanup.358
  br label %if.end.361

if.end.361:                                       ; preds = %cleanup.cont.360, %if.else.326
  br label %if.end.362

if.end.362:                                       ; preds = %if.end.361, %if.end.322
  %421 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %precincts363 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %421, i32 0, i32 5
  %422 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %precincts363, align 8, !tbaa !34
  store %struct.opj_tcd_precinct* %422, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  store i32 0, i32* %precno, align 4, !tbaa !1
  br label %for.cond.364

for.cond.364:                                     ; preds = %for.inc.569, %if.end.362
  %423 = load i32, i32* %precno, align 4, !tbaa !1
  %424 = load i32, i32* %l_nb_precincts, align 4, !tbaa !1
  %cmp365 = icmp ult i32 %423, %424
  br i1 %cmp365, label %for.body.367, label %for.end.571

for.body.367:                                     ; preds = %for.cond.364
  %425 = bitcast i32* %tlcblkxstart to i8*
  call void @llvm.lifetime.start(i64 4, i8* %425) #1
  %426 = bitcast i32* %tlcblkystart to i8*
  call void @llvm.lifetime.start(i64 4, i8* %426) #1
  %427 = bitcast i32* %brcblkxend to i8*
  call void @llvm.lifetime.start(i64 4, i8* %427) #1
  %428 = bitcast i32* %brcblkyend to i8*
  call void @llvm.lifetime.start(i64 4, i8* %428) #1
  %429 = bitcast i32* %cbgxstart to i8*
  call void @llvm.lifetime.start(i64 4, i8* %429) #1
  %430 = load i32, i32* %tlcbgxstart, align 4, !tbaa !1
  %431 = load i32, i32* %precno, align 4, !tbaa !1
  %432 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %pw368 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %432, i32 0, i32 4
  %433 = load i32, i32* %pw368, align 4, !tbaa !32
  %rem369 = urem i32 %431, %433
  %434 = load i32, i32* %cbgwidthexpn, align 4, !tbaa !1
  %shl370 = shl i32 1, %434
  %mul371 = mul i32 %rem369, %shl370
  %add372 = add i32 %430, %mul371
  store i32 %add372, i32* %cbgxstart, align 4, !tbaa !1
  %435 = bitcast i32* %cbgystart to i8*
  call void @llvm.lifetime.start(i64 4, i8* %435) #1
  %436 = load i32, i32* %tlcbgystart, align 4, !tbaa !1
  %437 = load i32, i32* %precno, align 4, !tbaa !1
  %438 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %pw373 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %438, i32 0, i32 4
  %439 = load i32, i32* %pw373, align 4, !tbaa !32
  %div374 = udiv i32 %437, %439
  %440 = load i32, i32* %cbgheightexpn, align 4, !tbaa !1
  %shl375 = shl i32 1, %440
  %mul376 = mul i32 %div374, %shl375
  %add377 = add i32 %436, %mul376
  store i32 %add377, i32* %cbgystart, align 4, !tbaa !1
  %441 = bitcast i32* %cbgxend to i8*
  call void @llvm.lifetime.start(i64 4, i8* %441) #1
  %442 = load i32, i32* %cbgxstart, align 4, !tbaa !1
  %443 = load i32, i32* %cbgwidthexpn, align 4, !tbaa !1
  %shl378 = shl i32 1, %443
  %add379 = add nsw i32 %442, %shl378
  store i32 %add379, i32* %cbgxend, align 4, !tbaa !1
  %444 = bitcast i32* %cbgyend to i8*
  call void @llvm.lifetime.start(i64 4, i8* %444) #1
  %445 = load i32, i32* %cbgystart, align 4, !tbaa !1
  %446 = load i32, i32* %cbgheightexpn, align 4, !tbaa !1
  %shl380 = shl i32 1, %446
  %add381 = add nsw i32 %445, %shl380
  store i32 %add381, i32* %cbgyend, align 4, !tbaa !1
  %447 = load i32, i32* %cbgxstart, align 4, !tbaa !1
  %448 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %x0382 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %448, i32 0, i32 0
  %449 = load i32, i32* %x0382, align 4, !tbaa !118
  %call383 = call i32 @opj_int_max(i32 %447, i32 %449) #8
  %450 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %x0384 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %450, i32 0, i32 0
  store i32 %call383, i32* %x0384, align 4, !tbaa !128
  %451 = load i32, i32* %cbgystart, align 4, !tbaa !1
  %452 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %y0385 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %452, i32 0, i32 1
  %453 = load i32, i32* %y0385, align 4, !tbaa !119
  %call386 = call i32 @opj_int_max(i32 %451, i32 %453) #8
  %454 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %y0387 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %454, i32 0, i32 1
  store i32 %call386, i32* %y0387, align 4, !tbaa !129
  %455 = load i32, i32* %cbgxend, align 4, !tbaa !1
  %456 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %x1388 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %456, i32 0, i32 2
  %457 = load i32, i32* %x1388, align 4, !tbaa !120
  %call389 = call i32 @opj_int_min(i32 %455, i32 %457) #8
  %458 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %x1390 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %458, i32 0, i32 2
  store i32 %call389, i32* %x1390, align 4, !tbaa !130
  %459 = load i32, i32* %cbgyend, align 4, !tbaa !1
  %460 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %y1391 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %460, i32 0, i32 3
  %461 = load i32, i32* %y1391, align 4, !tbaa !121
  %call392 = call i32 @opj_int_min(i32 %459, i32 %461) #8
  %462 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %y1393 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %462, i32 0, i32 3
  store i32 %call392, i32* %y1393, align 4, !tbaa !131
  %463 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %x0394 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %463, i32 0, i32 0
  %464 = load i32, i32* %x0394, align 4, !tbaa !128
  %465 = load i32, i32* %cblkwidthexpn, align 4, !tbaa !1
  %call395 = call i32 @opj_int_floordivpow2(i32 %464, i32 %465) #8
  %466 = load i32, i32* %cblkwidthexpn, align 4, !tbaa !1
  %shl396 = shl i32 %call395, %466
  store i32 %shl396, i32* %tlcblkxstart, align 4, !tbaa !1
  %467 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %y0397 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %467, i32 0, i32 1
  %468 = load i32, i32* %y0397, align 4, !tbaa !129
  %469 = load i32, i32* %cblkheightexpn, align 4, !tbaa !1
  %call398 = call i32 @opj_int_floordivpow2(i32 %468, i32 %469) #8
  %470 = load i32, i32* %cblkheightexpn, align 4, !tbaa !1
  %shl399 = shl i32 %call398, %470
  store i32 %shl399, i32* %tlcblkystart, align 4, !tbaa !1
  %471 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %x1400 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %471, i32 0, i32 2
  %472 = load i32, i32* %x1400, align 4, !tbaa !130
  %473 = load i32, i32* %cblkwidthexpn, align 4, !tbaa !1
  %call401 = call i32 @opj_int_ceildivpow2(i32 %472, i32 %473) #8
  %474 = load i32, i32* %cblkwidthexpn, align 4, !tbaa !1
  %shl402 = shl i32 %call401, %474
  store i32 %shl402, i32* %brcblkxend, align 4, !tbaa !1
  %475 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %y1403 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %475, i32 0, i32 3
  %476 = load i32, i32* %y1403, align 4, !tbaa !131
  %477 = load i32, i32* %cblkheightexpn, align 4, !tbaa !1
  %call404 = call i32 @opj_int_ceildivpow2(i32 %476, i32 %477) #8
  %478 = load i32, i32* %cblkheightexpn, align 4, !tbaa !1
  %shl405 = shl i32 %call404, %478
  store i32 %shl405, i32* %brcblkyend, align 4, !tbaa !1
  %479 = load i32, i32* %brcblkxend, align 4, !tbaa !1
  %480 = load i32, i32* %tlcblkxstart, align 4, !tbaa !1
  %sub406 = sub nsw i32 %479, %480
  %481 = load i32, i32* %cblkwidthexpn, align 4, !tbaa !1
  %shr407 = ashr i32 %sub406, %481
  %482 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %cw = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %482, i32 0, i32 4
  store i32 %shr407, i32* %cw, align 4, !tbaa !37
  %483 = load i32, i32* %brcblkyend, align 4, !tbaa !1
  %484 = load i32, i32* %tlcblkystart, align 4, !tbaa !1
  %sub408 = sub nsw i32 %483, %484
  %485 = load i32, i32* %cblkheightexpn, align 4, !tbaa !1
  %shr409 = ashr i32 %sub408, %485
  %486 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %ch = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %486, i32 0, i32 5
  store i32 %shr409, i32* %ch, align 4, !tbaa !39
  %487 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %cw410 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %487, i32 0, i32 4
  %488 = load i32, i32* %cw410, align 4, !tbaa !37
  %489 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %ch411 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %489, i32 0, i32 5
  %490 = load i32, i32* %ch411, align 4, !tbaa !39
  %mul412 = mul i32 %488, %490
  store i32 %mul412, i32* %l_nb_code_blocks, align 4, !tbaa !1
  %491 = load i32, i32* %l_nb_code_blocks, align 4, !tbaa !1
  %conv413 = zext i32 %491 to i64
  %mul414 = mul i64 %conv413, 64
  %conv415 = trunc i64 %mul414 to i32
  store i32 %conv415, i32* %l_nb_code_blocks_size, align 4, !tbaa !1
  %492 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %cblks = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %492, i32 0, i32 6
  %enc = bitcast %union.anon* %cblks to %struct.opj_tcd_cblk_enc**
  %493 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %enc, align 8, !tbaa !5
  %tobool416 = icmp ne %struct.opj_tcd_cblk_enc* %493, null
  br i1 %tobool416, label %if.else.438, label %if.then.417

if.then.417:                                      ; preds = %for.body.367
  %494 = load i32, i32* %l_nb_code_blocks_size, align 4, !tbaa !1
  %conv418 = zext i32 %494 to i64
  %cmp419 = icmp uge i64 %conv418, -256
  br i1 %cmp419, label %cond.true.421, label %cond.false.422

cond.true.421:                                    ; preds = %if.then.417
  br label %cond.end.425

cond.false.422:                                   ; preds = %if.then.417
  %495 = load i32, i32* %l_nb_code_blocks_size, align 4, !tbaa !1
  %conv423 = zext i32 %495 to i64
  %call424 = call noalias i8* @malloc(i64 %conv423) #7
  br label %cond.end.425

cond.end.425:                                     ; preds = %cond.false.422, %cond.true.421
  %cond426 = phi i8* [ null, %cond.true.421 ], [ %call424, %cond.false.422 ]
  %496 = bitcast i8* %cond426 to %struct.opj_tcd_cblk_enc*
  %497 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %cblks427 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %497, i32 0, i32 6
  %enc428 = bitcast %union.anon* %cblks427 to %struct.opj_tcd_cblk_enc**
  store %struct.opj_tcd_cblk_enc* %496, %struct.opj_tcd_cblk_enc** %enc428, align 8, !tbaa !5
  %498 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %cblks429 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %498, i32 0, i32 6
  %enc430 = bitcast %union.anon* %cblks429 to %struct.opj_tcd_cblk_enc**
  %499 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %enc430, align 8, !tbaa !5
  %tobool431 = icmp ne %struct.opj_tcd_cblk_enc* %499, null
  br i1 %tobool431, label %if.end.433, label %if.then.432

if.then.432:                                      ; preds = %cond.end.425
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.559

if.end.433:                                       ; preds = %cond.end.425
  %500 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %cblks434 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %500, i32 0, i32 6
  %enc435 = bitcast %union.anon* %cblks434 to %struct.opj_tcd_cblk_enc**
  %501 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %enc435, align 8, !tbaa !5
  %502 = bitcast %struct.opj_tcd_cblk_enc* %501 to i8*
  %503 = load i32, i32* %l_nb_code_blocks_size, align 4, !tbaa !1
  %conv436 = zext i32 %503 to i64
  %call437 = call i8* @memset(i8* %502, i32 0, i64 %conv436) #7
  %504 = load i32, i32* %l_nb_code_blocks_size, align 4, !tbaa !1
  %505 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %block_size = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %505, i32 0, i32 7
  store i32 %504, i32* %block_size, align 4, !tbaa !132
  br label %if.end.479

if.else.438:                                      ; preds = %for.body.367
  %506 = load i32, i32* %l_nb_code_blocks_size, align 4, !tbaa !1
  %507 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %block_size439 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %507, i32 0, i32 7
  %508 = load i32, i32* %block_size439, align 4, !tbaa !132
  %cmp440 = icmp ugt i32 %506, %508
  br i1 %cmp440, label %if.then.442, label %if.end.478

if.then.442:                                      ; preds = %if.else.438
  %509 = bitcast %struct.opj_tcd_cblk_enc** %new_ELEMENT to i8*
  call void @llvm.lifetime.start(i64 8, i8* %509) #1
  %510 = load i32, i32* %l_nb_code_blocks_size, align 4, !tbaa !1
  %conv443 = zext i32 %510 to i64
  %cmp444 = icmp uge i64 %conv443, -256
  br i1 %cmp444, label %cond.true.446, label %cond.false.447

cond.true.446:                                    ; preds = %if.then.442
  br label %cond.end.452

cond.false.447:                                   ; preds = %if.then.442
  %511 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %cblks448 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %511, i32 0, i32 6
  %enc449 = bitcast %union.anon* %cblks448 to %struct.opj_tcd_cblk_enc**
  %512 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %enc449, align 8, !tbaa !5
  %513 = bitcast %struct.opj_tcd_cblk_enc* %512 to i8*
  %514 = load i32, i32* %l_nb_code_blocks_size, align 4, !tbaa !1
  %conv450 = zext i32 %514 to i64
  %call451 = call i8* @realloc(i8* %513, i64 %conv450) #7
  br label %cond.end.452

cond.end.452:                                     ; preds = %cond.false.447, %cond.true.446
  %cond453 = phi i8* [ null, %cond.true.446 ], [ %call451, %cond.false.447 ]
  %515 = bitcast i8* %cond453 to %struct.opj_tcd_cblk_enc*
  store %struct.opj_tcd_cblk_enc* %515, %struct.opj_tcd_cblk_enc** %new_ELEMENT, align 8, !tbaa !5
  %516 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %new_ELEMENT, align 8, !tbaa !5
  %tobool454 = icmp ne %struct.opj_tcd_cblk_enc* %516, null
  br i1 %tobool454, label %if.end.462, label %if.then.455

if.then.455:                                      ; preds = %cond.end.452
  %517 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %cblks456 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %517, i32 0, i32 6
  %enc457 = bitcast %union.anon* %cblks456 to %struct.opj_tcd_cblk_enc**
  %518 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %enc457, align 8, !tbaa !5
  %519 = bitcast %struct.opj_tcd_cblk_enc* %518 to i8*
  call void @free(i8* %519) #7
  %520 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %cblks458 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %520, i32 0, i32 6
  %enc459 = bitcast %union.anon* %cblks458 to %struct.opj_tcd_cblk_enc**
  store %struct.opj_tcd_cblk_enc* null, %struct.opj_tcd_cblk_enc** %enc459, align 8, !tbaa !5
  %521 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %block_size460 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %521, i32 0, i32 7
  store i32 0, i32* %block_size460, align 4, !tbaa !132
  %522 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %call461 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %522, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i32 0, i32 0)) #8
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.475

if.end.462:                                       ; preds = %cond.end.452
  %523 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %new_ELEMENT, align 8, !tbaa !5
  %524 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %cblks463 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %524, i32 0, i32 6
  %enc464 = bitcast %union.anon* %cblks463 to %struct.opj_tcd_cblk_enc**
  store %struct.opj_tcd_cblk_enc* %523, %struct.opj_tcd_cblk_enc** %enc464, align 8, !tbaa !5
  %525 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %cblks465 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %525, i32 0, i32 6
  %enc466 = bitcast %union.anon* %cblks465 to %struct.opj_tcd_cblk_enc**
  %526 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %enc466, align 8, !tbaa !5
  %527 = bitcast %struct.opj_tcd_cblk_enc* %526 to i8*
  %528 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %block_size467 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %528, i32 0, i32 7
  %529 = load i32, i32* %block_size467, align 4, !tbaa !132
  %idx.ext468 = zext i32 %529 to i64
  %add.ptr469 = getelementptr inbounds i8, i8* %527, i64 %idx.ext468
  %530 = load i32, i32* %l_nb_code_blocks_size, align 4, !tbaa !1
  %531 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %block_size470 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %531, i32 0, i32 7
  %532 = load i32, i32* %block_size470, align 4, !tbaa !132
  %sub471 = sub i32 %530, %532
  %conv472 = zext i32 %sub471 to i64
  %call473 = call i8* @memset(i8* %add.ptr469, i32 0, i64 %conv472) #7
  %533 = load i32, i32* %l_nb_code_blocks_size, align 4, !tbaa !1
  %534 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %block_size474 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %534, i32 0, i32 7
  store i32 %533, i32* %block_size474, align 4, !tbaa !132
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.475

cleanup.475:                                      ; preds = %if.end.462, %if.then.455
  %535 = bitcast %struct.opj_tcd_cblk_enc** %new_ELEMENT to i8*
  call void @llvm.lifetime.end(i64 8, i8* %535) #1
  %cleanup.dest.476 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.476, label %cleanup.559 [
    i32 0, label %cleanup.cont.477
  ]

cleanup.cont.477:                                 ; preds = %cleanup.475
  br label %if.end.478

if.end.478:                                       ; preds = %cleanup.cont.477, %if.else.438
  br label %if.end.479

if.end.479:                                       ; preds = %if.end.478, %if.end.433
  %536 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %incltree = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %536, i32 0, i32 8
  %537 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %incltree, align 8, !tbaa !79
  %tobool480 = icmp ne %struct.opj_tgt_tree* %537, null
  br i1 %tobool480, label %if.else.486, label %if.then.481

if.then.481:                                      ; preds = %if.end.479
  %538 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %cw482 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %538, i32 0, i32 4
  %539 = load i32, i32* %cw482, align 4, !tbaa !37
  %540 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %ch483 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %540, i32 0, i32 5
  %541 = load i32, i32* %ch483, align 4, !tbaa !39
  %call484 = call %struct.opj_tgt_tree* @opj_tgt_create(i32 %539, i32 %541) #8
  %542 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %incltree485 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %542, i32 0, i32 8
  store %struct.opj_tgt_tree* %call484, %struct.opj_tgt_tree** %incltree485, align 8, !tbaa !79
  br label %if.end.492

if.else.486:                                      ; preds = %if.end.479
  %543 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %incltree487 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %543, i32 0, i32 8
  %544 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %incltree487, align 8, !tbaa !79
  %545 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %cw488 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %545, i32 0, i32 4
  %546 = load i32, i32* %cw488, align 4, !tbaa !37
  %547 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %ch489 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %547, i32 0, i32 5
  %548 = load i32, i32* %ch489, align 4, !tbaa !39
  %call490 = call %struct.opj_tgt_tree* @opj_tgt_init(%struct.opj_tgt_tree* %544, i32 %546, i32 %548) #8
  %549 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %incltree491 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %549, i32 0, i32 8
  store %struct.opj_tgt_tree* %call490, %struct.opj_tgt_tree** %incltree491, align 8, !tbaa !79
  br label %if.end.492

if.end.492:                                       ; preds = %if.else.486, %if.then.481
  %550 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %incltree493 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %550, i32 0, i32 8
  %551 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %incltree493, align 8, !tbaa !79
  %tobool494 = icmp ne %struct.opj_tgt_tree* %551, null
  br i1 %tobool494, label %if.end.497, label %if.then.495

if.then.495:                                      ; preds = %if.end.492
  %552 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %call496 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %552, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0)) #8
  br label %if.end.497

if.end.497:                                       ; preds = %if.then.495, %if.end.492
  %553 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %imsbtree = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %553, i32 0, i32 9
  %554 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %imsbtree, align 8, !tbaa !80
  %tobool498 = icmp ne %struct.opj_tgt_tree* %554, null
  br i1 %tobool498, label %if.else.504, label %if.then.499

if.then.499:                                      ; preds = %if.end.497
  %555 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %cw500 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %555, i32 0, i32 4
  %556 = load i32, i32* %cw500, align 4, !tbaa !37
  %557 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %ch501 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %557, i32 0, i32 5
  %558 = load i32, i32* %ch501, align 4, !tbaa !39
  %call502 = call %struct.opj_tgt_tree* @opj_tgt_create(i32 %556, i32 %558) #8
  %559 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %imsbtree503 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %559, i32 0, i32 9
  store %struct.opj_tgt_tree* %call502, %struct.opj_tgt_tree** %imsbtree503, align 8, !tbaa !80
  br label %if.end.510

if.else.504:                                      ; preds = %if.end.497
  %560 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %imsbtree505 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %560, i32 0, i32 9
  %561 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %imsbtree505, align 8, !tbaa !80
  %562 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %cw506 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %562, i32 0, i32 4
  %563 = load i32, i32* %cw506, align 4, !tbaa !37
  %564 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %ch507 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %564, i32 0, i32 5
  %565 = load i32, i32* %ch507, align 4, !tbaa !39
  %call508 = call %struct.opj_tgt_tree* @opj_tgt_init(%struct.opj_tgt_tree* %561, i32 %563, i32 %565) #8
  %566 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %imsbtree509 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %566, i32 0, i32 9
  store %struct.opj_tgt_tree* %call508, %struct.opj_tgt_tree** %imsbtree509, align 8, !tbaa !80
  br label %if.end.510

if.end.510:                                       ; preds = %if.else.504, %if.then.499
  %567 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %imsbtree511 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %567, i32 0, i32 9
  %568 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %imsbtree511, align 8, !tbaa !80
  %tobool512 = icmp ne %struct.opj_tgt_tree* %568, null
  br i1 %tobool512, label %if.end.515, label %if.then.513

if.then.513:                                      ; preds = %if.end.510
  %569 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %call514 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %569, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0)) #8
  br label %if.end.515

if.end.515:                                       ; preds = %if.then.513, %if.end.510
  %570 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %cblks516 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %570, i32 0, i32 6
  %enc517 = bitcast %union.anon* %cblks516 to %struct.opj_tcd_cblk_enc**
  %571 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %enc517, align 8, !tbaa !5
  store %struct.opj_tcd_cblk_enc* %571, %struct.opj_tcd_cblk_enc** %l_code_block, align 8, !tbaa !5
  store i32 0, i32* %cblkno, align 4, !tbaa !1
  br label %for.cond.518

for.cond.518:                                     ; preds = %for.inc, %if.end.515
  %572 = load i32, i32* %cblkno, align 4, !tbaa !1
  %573 = load i32, i32* %l_nb_code_blocks, align 4, !tbaa !1
  %cmp519 = icmp ult i32 %572, %573
  br i1 %cmp519, label %for.body.521, label %for.end

for.body.521:                                     ; preds = %for.cond.518
  %574 = bitcast i32* %cblkxstart to i8*
  call void @llvm.lifetime.start(i64 4, i8* %574) #1
  %575 = load i32, i32* %tlcblkxstart, align 4, !tbaa !1
  %576 = load i32, i32* %cblkno, align 4, !tbaa !1
  %577 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %cw522 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %577, i32 0, i32 4
  %578 = load i32, i32* %cw522, align 4, !tbaa !37
  %rem523 = urem i32 %576, %578
  %579 = load i32, i32* %cblkwidthexpn, align 4, !tbaa !1
  %shl524 = shl i32 1, %579
  %mul525 = mul i32 %rem523, %shl524
  %add526 = add i32 %575, %mul525
  store i32 %add526, i32* %cblkxstart, align 4, !tbaa !1
  %580 = bitcast i32* %cblkystart to i8*
  call void @llvm.lifetime.start(i64 4, i8* %580) #1
  %581 = load i32, i32* %tlcblkystart, align 4, !tbaa !1
  %582 = load i32, i32* %cblkno, align 4, !tbaa !1
  %583 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %cw527 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %583, i32 0, i32 4
  %584 = load i32, i32* %cw527, align 4, !tbaa !37
  %div528 = udiv i32 %582, %584
  %585 = load i32, i32* %cblkheightexpn, align 4, !tbaa !1
  %shl529 = shl i32 1, %585
  %mul530 = mul i32 %div528, %shl529
  %add531 = add i32 %581, %mul530
  store i32 %add531, i32* %cblkystart, align 4, !tbaa !1
  %586 = bitcast i32* %cblkxend to i8*
  call void @llvm.lifetime.start(i64 4, i8* %586) #1
  %587 = load i32, i32* %cblkxstart, align 4, !tbaa !1
  %588 = load i32, i32* %cblkwidthexpn, align 4, !tbaa !1
  %shl532 = shl i32 1, %588
  %add533 = add nsw i32 %587, %shl532
  store i32 %add533, i32* %cblkxend, align 4, !tbaa !1
  %589 = bitcast i32* %cblkyend to i8*
  call void @llvm.lifetime.start(i64 4, i8* %589) #1
  %590 = load i32, i32* %cblkystart, align 4, !tbaa !1
  %591 = load i32, i32* %cblkheightexpn, align 4, !tbaa !1
  %shl534 = shl i32 1, %591
  %add535 = add nsw i32 %590, %shl534
  store i32 %add535, i32* %cblkyend, align 4, !tbaa !1
  %592 = load i32, i32* %cblkxstart, align 4, !tbaa !1
  %593 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %x0536 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %593, i32 0, i32 0
  %594 = load i32, i32* %x0536, align 4, !tbaa !128
  %call537 = call i32 @opj_int_max(i32 %592, i32 %594) #8
  %595 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %l_code_block, align 8, !tbaa !5
  %x0538 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %595, i32 0, i32 3
  store i32 %call537, i32* %x0538, align 4, !tbaa !59
  %596 = load i32, i32* %cblkystart, align 4, !tbaa !1
  %597 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %y0539 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %597, i32 0, i32 1
  %598 = load i32, i32* %y0539, align 4, !tbaa !129
  %call540 = call i32 @opj_int_max(i32 %596, i32 %598) #8
  %599 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %l_code_block, align 8, !tbaa !5
  %y0541 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %599, i32 0, i32 4
  store i32 %call540, i32* %y0541, align 4, !tbaa !61
  %600 = load i32, i32* %cblkxend, align 4, !tbaa !1
  %601 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %x1542 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %601, i32 0, i32 2
  %602 = load i32, i32* %x1542, align 4, !tbaa !130
  %call543 = call i32 @opj_int_min(i32 %600, i32 %602) #8
  %603 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %l_code_block, align 8, !tbaa !5
  %x1544 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %603, i32 0, i32 5
  store i32 %call543, i32* %x1544, align 4, !tbaa !58
  %604 = load i32, i32* %cblkyend, align 4, !tbaa !1
  %605 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %y1545 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %605, i32 0, i32 3
  %606 = load i32, i32* %y1545, align 4, !tbaa !131
  %call546 = call i32 @opj_int_min(i32 %604, i32 %606) #8
  %607 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %l_code_block, align 8, !tbaa !5
  %y1547 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %607, i32 0, i32 6
  store i32 %call546, i32* %y1547, align 4, !tbaa !60
  %608 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %l_code_block, align 8, !tbaa !5
  %call548 = call i32 @opj_tcd_code_block_enc_allocate(%struct.opj_tcd_cblk_enc* %608) #8
  %tobool549 = icmp ne i32 %call548, 0
  br i1 %tobool549, label %if.end.551, label %if.then.550

if.then.550:                                      ; preds = %for.body.521
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.552

if.end.551:                                       ; preds = %for.body.521
  %609 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %l_code_block, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %609, i32 1
  store %struct.opj_tcd_cblk_enc* %incdec.ptr, %struct.opj_tcd_cblk_enc** %l_code_block, align 8, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.552

cleanup.552:                                      ; preds = %if.end.551, %if.then.550
  %610 = bitcast i32* %cblkyend to i8*
  call void @llvm.lifetime.end(i64 4, i8* %610) #1
  %611 = bitcast i32* %cblkxend to i8*
  call void @llvm.lifetime.end(i64 4, i8* %611) #1
  %612 = bitcast i32* %cblkystart to i8*
  call void @llvm.lifetime.end(i64 4, i8* %612) #1
  %613 = bitcast i32* %cblkxstart to i8*
  call void @llvm.lifetime.end(i64 4, i8* %613) #1
  %cleanup.dest.556 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.556, label %cleanup.559 [
    i32 0, label %cleanup.cont.557
  ]

cleanup.cont.557:                                 ; preds = %cleanup.552
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont.557
  %614 = load i32, i32* %cblkno, align 4, !tbaa !1
  %inc = add i32 %614, 1
  store i32 %inc, i32* %cblkno, align 4, !tbaa !1
  br label %for.cond.518

for.end:                                          ; preds = %for.cond.518
  %615 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %incdec.ptr558 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %615, i32 1
  store %struct.opj_tcd_precinct* %incdec.ptr558, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.559

cleanup.559:                                      ; preds = %for.end, %cleanup.552, %cleanup.475, %if.then.432
  %616 = bitcast i32* %cbgyend to i8*
  call void @llvm.lifetime.end(i64 4, i8* %616) #1
  %617 = bitcast i32* %cbgxend to i8*
  call void @llvm.lifetime.end(i64 4, i8* %617) #1
  %618 = bitcast i32* %cbgystart to i8*
  call void @llvm.lifetime.end(i64 4, i8* %618) #1
  %619 = bitcast i32* %cbgxstart to i8*
  call void @llvm.lifetime.end(i64 4, i8* %619) #1
  %620 = bitcast i32* %brcblkyend to i8*
  call void @llvm.lifetime.end(i64 4, i8* %620) #1
  %621 = bitcast i32* %brcblkxend to i8*
  call void @llvm.lifetime.end(i64 4, i8* %621) #1
  %622 = bitcast i32* %tlcblkystart to i8*
  call void @llvm.lifetime.end(i64 4, i8* %622) #1
  %623 = bitcast i32* %tlcblkxstart to i8*
  call void @llvm.lifetime.end(i64 4, i8* %623) #1
  %cleanup.dest.567 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.567, label %cleanup.574 [
    i32 0, label %cleanup.cont.568
  ]

cleanup.cont.568:                                 ; preds = %cleanup.559
  br label %for.inc.569

for.inc.569:                                      ; preds = %cleanup.cont.568
  %624 = load i32, i32* %precno, align 4, !tbaa !1
  %inc570 = add i32 %624, 1
  store i32 %inc570, i32* %precno, align 4, !tbaa !1
  br label %for.cond.364

for.end.571:                                      ; preds = %for.cond.364
  %625 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %incdec.ptr572 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %625, i32 1
  store %struct.opj_tcd_band* %incdec.ptr572, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %626 = load %struct.opj_stepsize*, %struct.opj_stepsize** %l_step_size, align 8, !tbaa !5
  %incdec.ptr573 = getelementptr inbounds %struct.opj_stepsize, %struct.opj_stepsize* %626, i32 1
  store %struct.opj_stepsize* %incdec.ptr573, %struct.opj_stepsize** %l_step_size, align 8, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.574

cleanup.574:                                      ; preds = %for.end.571, %cleanup.559, %cleanup.358, %if.then.321
  %627 = bitcast i32* %numbps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %627) #1
  %cleanup.dest.575 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.575, label %cleanup.581 [
    i32 0, label %cleanup.cont.576
  ]

cleanup.cont.576:                                 ; preds = %cleanup.574
  br label %for.inc.577

for.inc.577:                                      ; preds = %cleanup.cont.576
  %628 = load i32, i32* %bandno, align 4, !tbaa !1
  %inc578 = add i32 %628, 1
  store i32 %inc578, i32* %bandno, align 4, !tbaa !1
  br label %for.cond.235

for.end.579:                                      ; preds = %for.cond.235
  %629 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %incdec.ptr580 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %629, i32 1
  store %struct.opj_tcd_resolution* %incdec.ptr580, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %630 = load i32, i32* %l_level_no, align 4, !tbaa !1
  %dec = add i32 %630, -1
  store i32 %dec, i32* %l_level_no, align 4, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.581

cleanup.581:                                      ; preds = %for.end.579, %cleanup.574
  %631 = bitcast i32* %cblkheightexpn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %631) #1
  %632 = bitcast i32* %cblkwidthexpn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %632) #1
  %633 = bitcast i32* %cbgheightexpn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %633) #1
  %634 = bitcast i32* %cbgwidthexpn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %634) #1
  %635 = bitcast i32* %tlcbgystart to i8*
  call void @llvm.lifetime.end(i64 4, i8* %635) #1
  %636 = bitcast i32* %tlcbgxstart to i8*
  call void @llvm.lifetime.end(i64 4, i8* %636) #1
  %cleanup.dest.587 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.587, label %cleanup.598 [
    i32 0, label %cleanup.cont.588
  ]

cleanup.cont.588:                                 ; preds = %cleanup.581
  br label %for.inc.589

for.inc.589:                                      ; preds = %cleanup.cont.588
  %637 = load i32, i32* %resno, align 4, !tbaa !1
  %inc590 = add i32 %637, 1
  store i32 %inc590, i32* %resno, align 4, !tbaa !1
  br label %for.cond.165

for.end.591:                                      ; preds = %for.cond.165
  %638 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %incdec.ptr592 = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %638, i32 1
  store %struct.opj_tccp* %incdec.ptr592, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %639 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %incdec.ptr593 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %639, i32 1
  store %struct.opj_tcd_tilecomp* %incdec.ptr593, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %640 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_image_comp, align 8, !tbaa !5
  %incdec.ptr594 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %640, i32 1
  store %struct.opj_image_comp* %incdec.ptr594, %struct.opj_image_comp** %l_image_comp, align 8, !tbaa !5
  br label %for.inc.595

for.inc.595:                                      ; preds = %for.end.591
  %641 = load i32, i32* %compno, align 4, !tbaa !1
  %inc596 = add i32 %641, 1
  store i32 %inc596, i32* %compno, align 4, !tbaa !1
  br label %for.cond

for.end.597:                                      ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.598

cleanup.598:                                      ; preds = %for.end.597, %cleanup.581, %cleanup.152, %if.then.117, %cleanup, %if.then.70, %if.then
  %642 = bitcast i32* %l_data_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %642) #1
  %643 = bitcast i32* %l_nb_code_blocks_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %643) #1
  %644 = bitcast i32* %l_nb_code_blocks to i8*
  call void @llvm.lifetime.end(i64 4, i8* %644) #1
  %645 = bitcast i32* %l_nb_precinct_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %645) #1
  %646 = bitcast i32* %l_nb_precincts to i8*
  call void @llvm.lifetime.end(i64 4, i8* %646) #1
  %647 = bitcast i32* %l_br_prc_y_end to i8*
  call void @llvm.lifetime.end(i64 4, i8* %647) #1
  %648 = bitcast i32* %l_br_prc_x_end to i8*
  call void @llvm.lifetime.end(i64 4, i8* %648) #1
  %649 = bitcast i32* %l_tl_prc_y_start to i8*
  call void @llvm.lifetime.end(i64 4, i8* %649) #1
  %650 = bitcast i32* %l_tl_prc_x_start to i8*
  call void @llvm.lifetime.end(i64 4, i8* %650) #1
  %651 = bitcast i32* %l_y0b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %651) #1
  %652 = bitcast i32* %l_x0b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %652) #1
  %653 = bitcast i32* %l_gain to i8*
  call void @llvm.lifetime.end(i64 4, i8* %653) #1
  %654 = bitcast i32* %l_pdy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %654) #1
  %655 = bitcast i32* %l_pdx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %655) #1
  %656 = bitcast i32* %l_level_no to i8*
  call void @llvm.lifetime.end(i64 4, i8* %656) #1
  %657 = bitcast i32* %q to i8*
  call void @llvm.lifetime.end(i64 4, i8* %657) #1
  %658 = bitcast i32* %p to i8*
  call void @llvm.lifetime.end(i64 4, i8* %658) #1
  %659 = bitcast %struct.opj_image** %l_image to i8*
  call void @llvm.lifetime.end(i64 8, i8* %659) #1
  %660 = bitcast %struct.opj_tcd_cblk_enc** %l_code_block to i8*
  call void @llvm.lifetime.end(i64 8, i8* %660) #1
  %661 = bitcast %struct.opj_tcd_precinct** %l_current_precinct to i8*
  call void @llvm.lifetime.end(i64 8, i8* %661) #1
  %662 = bitcast %struct.opj_stepsize** %l_step_size to i8*
  call void @llvm.lifetime.end(i64 8, i8* %662) #1
  %663 = bitcast %struct.opj_tcd_band** %l_band to i8*
  call void @llvm.lifetime.end(i64 8, i8* %663) #1
  %664 = bitcast %struct.opj_tcd_resolution** %l_res to i8*
  call void @llvm.lifetime.end(i64 8, i8* %664) #1
  %665 = bitcast %struct.opj_image_comp** %l_image_comp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %665) #1
  %666 = bitcast %struct.opj_tcd_tilecomp** %l_tilec to i8*
  call void @llvm.lifetime.end(i64 8, i8* %666) #1
  %667 = bitcast %struct.opj_tccp** %l_tccp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %667) #1
  %668 = bitcast %struct.opj_tcd_tile** %l_tile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %668) #1
  %669 = bitcast %struct.opj_cp** %l_cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %669) #1
  %670 = bitcast %struct.opj_tcp** %l_tcp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %670) #1
  %671 = bitcast i32* %cblkno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %671) #1
  %672 = bitcast i32* %precno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %672) #1
  %673 = bitcast i32* %bandno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %673) #1
  %674 = bitcast i32* %resno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %674) #1
  %675 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %675) #1
  %676 = bitcast i32 (i32)** %l_gain_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %676) #1
  %677 = load i32, i32* %retval
  ret i32 %677
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @opj_int_max(i32 %a, i32 %b) #3 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4, !tbaa !1
  store i32 %b, i32* %b.addr, align 4, !tbaa !1
  %0 = load i32, i32* %a.addr, align 4, !tbaa !1
  %1 = load i32, i32* %b.addr, align 4, !tbaa !1
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %a.addr, align 4, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %b.addr, align 4, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @opj_int_min(i32 %a, i32 %b) #3 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4, !tbaa !1
  store i32 %b, i32* %b.addr, align 4, !tbaa !1
  %0 = load i32, i32* %a.addr, align 4, !tbaa !1
  %1 = load i32, i32* %b.addr, align 4, !tbaa !1
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %a.addr, align 4, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %b.addr, align 4, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #5

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @opj_int_ceildiv(i32 %a, i32 %b) #3 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4, !tbaa !1
  store i32 %b, i32* %b.addr, align 4, !tbaa !1
  %0 = load i32, i32* %a.addr, align 4, !tbaa !1
  %1 = load i32, i32* %b.addr, align 4, !tbaa !1
  %add = add nsw i32 %0, %1
  %sub = sub nsw i32 %add, 1
  %2 = load i32, i32* %b.addr, align 4, !tbaa !1
  %div = sdiv i32 %sub, %2
  ret i32 %div
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #2

declare i32 @opj_dwt_getgain_real(i32) #5

declare i32 @opj_dwt_getgain(i32) #5

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @opj_int_ceildivpow2(i32 %a, i32 %b) #3 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4, !tbaa !1
  store i32 %b, i32* %b.addr, align 4, !tbaa !1
  %0 = load i32, i32* %a.addr, align 4, !tbaa !1
  %conv = sext i32 %0 to i64
  %1 = load i32, i32* %b.addr, align 4, !tbaa !1
  %shl = shl i32 1, %1
  %conv1 = sext i32 %shl to i64
  %add = add nsw i64 %conv, %conv1
  %sub = sub nsw i64 %add, 1
  %2 = load i32, i32* %b.addr, align 4, !tbaa !1
  %sh_prom = zext i32 %2 to i64
  %shr = ashr i64 %sub, %sh_prom
  %conv2 = trunc i64 %shr to i32
  ret i32 %conv2
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @opj_int_floordivpow2(i32 %a, i32 %b) #3 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4, !tbaa !1
  store i32 %b, i32* %b.addr, align 4, !tbaa !1
  %0 = load i32, i32* %a.addr, align 4, !tbaa !1
  %1 = load i32, i32* %b.addr, align 4, !tbaa !1
  %shr = ashr i32 %0, %1
  ret i32 %shr
}

declare %struct.opj_tgt_tree* @opj_tgt_create(i32, i32) #5

declare %struct.opj_tgt_tree* @opj_tgt_init(%struct.opj_tgt_tree*, i32, i32) #5

; Function Attrs: nounwind uwtable
define internal i32 @opj_tcd_code_block_enc_allocate(%struct.opj_tcd_cblk_enc* %p_code_block) #0 {
entry:
  %retval = alloca i32, align 4
  %p_code_block.addr = alloca %struct.opj_tcd_cblk_enc*, align 8
  store %struct.opj_tcd_cblk_enc* %p_code_block, %struct.opj_tcd_cblk_enc** %p_code_block.addr, align 8, !tbaa !5
  %0 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %p_code_block.addr, align 8, !tbaa !5
  %data = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %0, i32 0, i32 0
  %1 = load i8*, i8** %data, align 8, !tbaa !50
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end.17, label %if.then

if.then:                                          ; preds = %entry
  %call = call noalias i8* @malloc(i64 8192) #7
  %2 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %p_code_block.addr, align 8, !tbaa !5
  %data1 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %2, i32 0, i32 0
  store i8* %call, i8** %data1, align 8, !tbaa !50
  %3 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %p_code_block.addr, align 8, !tbaa !5
  %data2 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %3, i32 0, i32 0
  %4 = load i8*, i8** %data2, align 8, !tbaa !50
  %tobool3 = icmp ne i8* %4, null
  br i1 %tobool3, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %5 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %p_code_block.addr, align 8, !tbaa !5
  %data5 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %5, i32 0, i32 0
  %6 = load i8*, i8** %data5, align 8, !tbaa !50
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 0
  store i8 0, i8* %arrayidx, align 1, !tbaa !133
  %7 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %p_code_block.addr, align 8, !tbaa !5
  %data6 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %7, i32 0, i32 0
  %8 = load i8*, i8** %data6, align 8, !tbaa !50
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 1
  store i8* %add.ptr, i8** %data6, align 8, !tbaa !50
  %call7 = call noalias i8* @malloc(i64 2400) #7
  %9 = bitcast i8* %call7 to %struct.opj_tcd_layer*
  %10 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %p_code_block.addr, align 8, !tbaa !5
  %layers = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %10, i32 0, i32 1
  store %struct.opj_tcd_layer* %9, %struct.opj_tcd_layer** %layers, align 8, !tbaa !40
  %11 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %p_code_block.addr, align 8, !tbaa !5
  %layers8 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %11, i32 0, i32 1
  %12 = load %struct.opj_tcd_layer*, %struct.opj_tcd_layer** %layers8, align 8, !tbaa !40
  %tobool9 = icmp ne %struct.opj_tcd_layer* %12, null
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end
  %call12 = call noalias i8* @malloc(i64 2400) #7
  %13 = bitcast i8* %call12 to %struct.opj_tcd_pass*
  %14 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %p_code_block.addr, align 8, !tbaa !5
  %passes = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %14, i32 0, i32 2
  store %struct.opj_tcd_pass* %13, %struct.opj_tcd_pass** %passes, align 8, !tbaa !46
  %15 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %p_code_block.addr, align 8, !tbaa !5
  %passes13 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %15, i32 0, i32 2
  %16 = load %struct.opj_tcd_pass*, %struct.opj_tcd_pass** %passes13, align 8, !tbaa !46
  %tobool14 = icmp ne %struct.opj_tcd_pass* %16, null
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.end.11
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.11
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %entry
  %17 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %p_code_block.addr, align 8, !tbaa !5
  %layers18 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %17, i32 0, i32 1
  %18 = load %struct.opj_tcd_layer*, %struct.opj_tcd_layer** %layers18, align 8, !tbaa !40
  %19 = bitcast %struct.opj_tcd_layer* %18 to i8*
  %call19 = call i8* @memset(i8* %19, i32 0, i64 2400) #7
  %20 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %p_code_block.addr, align 8, !tbaa !5
  %passes20 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %20, i32 0, i32 2
  %21 = load %struct.opj_tcd_pass*, %struct.opj_tcd_pass** %passes20, align 8, !tbaa !46
  %22 = bitcast %struct.opj_tcd_pass* %21 to i8*
  %call21 = call i8* @memset(i8* %22, i32 0, i64 2400) #7
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.15, %if.then.10, %if.then.4
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define i32 @opj_tcd_init_decode_tile(%struct.opj_tcd* %p_tcd, i32 %p_tile_no) #0 {
entry:
  %retval = alloca i32, align 4
  %p_tcd.addr = alloca %struct.opj_tcd*, align 8
  %p_tile_no.addr = alloca i32, align 4
  %l_gain_ptr = alloca i32 (i32)*, align 8
  %compno = alloca i32, align 4
  %resno = alloca i32, align 4
  %bandno = alloca i32, align 4
  %precno = alloca i32, align 4
  %cblkno = alloca i32, align 4
  %l_tcp = alloca %struct.opj_tcp*, align 8
  %l_cp = alloca %struct.opj_cp*, align 8
  %l_tile = alloca %struct.opj_tcd_tile*, align 8
  %l_tccp = alloca %struct.opj_tccp*, align 8
  %l_tilec = alloca %struct.opj_tcd_tilecomp*, align 8
  %l_image_comp = alloca %struct.opj_image_comp*, align 8
  %l_res = alloca %struct.opj_tcd_resolution*, align 8
  %l_band = alloca %struct.opj_tcd_band*, align 8
  %l_step_size = alloca %struct.opj_stepsize*, align 8
  %l_current_precinct = alloca %struct.opj_tcd_precinct*, align 8
  %l_code_block = alloca %struct.opj_tcd_cblk_dec*, align 8
  %l_image = alloca %struct.opj_image*, align 8
  %p = alloca i32, align 4
  %q = alloca i32, align 4
  %l_level_no = alloca i32, align 4
  %l_pdx = alloca i32, align 4
  %l_pdy = alloca i32, align 4
  %l_gain = alloca i32, align 4
  %l_x0b = alloca i32, align 4
  %l_y0b = alloca i32, align 4
  %l_tl_prc_x_start = alloca i32, align 4
  %l_tl_prc_y_start = alloca i32, align 4
  %l_br_prc_x_end = alloca i32, align 4
  %l_br_prc_y_end = alloca i32, align 4
  %l_nb_precincts = alloca i32, align 4
  %l_nb_precinct_size = alloca i32, align 4
  %l_nb_code_blocks = alloca i32, align 4
  %l_nb_code_blocks_size = alloca i32, align 4
  %l_data_size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %new_data = alloca i32*, align 8
  %new_resolutions = alloca %struct.opj_tcd_resolution*, align 8
  %tlcbgxstart = alloca i32, align 4
  %tlcbgystart = alloca i32, align 4
  %cbgwidthexpn = alloca i32, align 4
  %cbgheightexpn = alloca i32, align 4
  %cblkwidthexpn = alloca i32, align 4
  %cblkheightexpn = alloca i32, align 4
  %numbps = alloca i32, align 4
  %new_precincts = alloca %struct.opj_tcd_precinct*, align 8
  %tlcblkxstart = alloca i32, align 4
  %tlcblkystart = alloca i32, align 4
  %brcblkxend = alloca i32, align 4
  %brcblkyend = alloca i32, align 4
  %cbgxstart = alloca i32, align 4
  %cbgystart = alloca i32, align 4
  %cbgxend = alloca i32, align 4
  %cbgyend = alloca i32, align 4
  %new_ELEMENT = alloca %struct.opj_tcd_cblk_dec*, align 8
  %cblkxstart = alloca i32, align 4
  %cblkystart = alloca i32, align 4
  %cblkxend = alloca i32, align 4
  %cblkyend = alloca i32, align 4
  store %struct.opj_tcd* %p_tcd, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  store i32 %p_tile_no, i32* %p_tile_no.addr, align 4, !tbaa !1
  %0 = bitcast i32 (i32)** %l_gain_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i32 (i32)* null, i32 (i32)** %l_gain_ptr, align 8, !tbaa !5
  %1 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %resno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %bandno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %precno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %cblkno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast %struct.opj_tcp** %l_tcp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store %struct.opj_tcp* null, %struct.opj_tcp** %l_tcp, align 8, !tbaa !5
  %7 = bitcast %struct.opj_cp** %l_cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store %struct.opj_cp* null, %struct.opj_cp** %l_cp, align 8, !tbaa !5
  %8 = bitcast %struct.opj_tcd_tile** %l_tile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store %struct.opj_tcd_tile* null, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %9 = bitcast %struct.opj_tccp** %l_tccp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store %struct.opj_tccp* null, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %10 = bitcast %struct.opj_tcd_tilecomp** %l_tilec to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store %struct.opj_tcd_tilecomp* null, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %11 = bitcast %struct.opj_image_comp** %l_image_comp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store %struct.opj_image_comp* null, %struct.opj_image_comp** %l_image_comp, align 8, !tbaa !5
  %12 = bitcast %struct.opj_tcd_resolution** %l_res to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store %struct.opj_tcd_resolution* null, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %13 = bitcast %struct.opj_tcd_band** %l_band to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store %struct.opj_tcd_band* null, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %14 = bitcast %struct.opj_stepsize** %l_step_size to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  store %struct.opj_stepsize* null, %struct.opj_stepsize** %l_step_size, align 8, !tbaa !5
  %15 = bitcast %struct.opj_tcd_precinct** %l_current_precinct to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  store %struct.opj_tcd_precinct* null, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %16 = bitcast %struct.opj_tcd_cblk_dec** %l_code_block to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store %struct.opj_tcd_cblk_dec* null, %struct.opj_tcd_cblk_dec** %l_code_block, align 8, !tbaa !5
  %17 = bitcast %struct.opj_image** %l_image to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  store %struct.opj_image* null, %struct.opj_image** %l_image, align 8, !tbaa !5
  %18 = bitcast i32* %p to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast i32* %q to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = bitcast i32* %l_level_no to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = bitcast i32* %l_pdx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = bitcast i32* %l_pdy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = bitcast i32* %l_gain to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = bitcast i32* %l_x0b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = bitcast i32* %l_y0b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  %26 = bitcast i32* %l_tl_prc_x_start to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = bitcast i32* %l_tl_prc_y_start to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = bitcast i32* %l_br_prc_x_end to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  %29 = bitcast i32* %l_br_prc_y_end to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  %30 = bitcast i32* %l_nb_precincts to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = bitcast i32* %l_nb_precinct_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  %32 = bitcast i32* %l_nb_code_blocks to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  %33 = bitcast i32* %l_nb_code_blocks_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = bitcast i32* %l_data_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  %35 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %cp = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %35, i32 0, i32 7
  %36 = load %struct.opj_cp*, %struct.opj_cp** %cp, align 8, !tbaa !12
  store %struct.opj_cp* %36, %struct.opj_cp** %l_cp, align 8, !tbaa !5
  %37 = load i32, i32* %p_tile_no.addr, align 4, !tbaa !1
  %idxprom = zext i32 %37 to i64
  %38 = load %struct.opj_cp*, %struct.opj_cp** %l_cp, align 8, !tbaa !5
  %tcps = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %38, i32 0, i32 17
  %39 = load %struct.opj_tcp*, %struct.opj_tcp** %tcps, align 8, !tbaa !82
  %arrayidx = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %39, i64 %idxprom
  store %struct.opj_tcp* %arrayidx, %struct.opj_tcp** %l_tcp, align 8, !tbaa !5
  %40 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %tcd_image = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %40, i32 0, i32 5
  %41 = load %struct.opj_tcd_image*, %struct.opj_tcd_image** %tcd_image, align 8, !tbaa !7
  %tiles = getelementptr inbounds %struct.opj_tcd_image, %struct.opj_tcd_image* %41, i32 0, i32 0
  %42 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tiles, align 8, !tbaa !13
  store %struct.opj_tcd_tile* %42, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %43 = load %struct.opj_tcp*, %struct.opj_tcp** %l_tcp, align 8, !tbaa !5
  %tccps = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %43, i32 0, i32 13
  %44 = load %struct.opj_tccp*, %struct.opj_tccp** %tccps, align 8, !tbaa !84
  store %struct.opj_tccp* %44, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %45 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %comps = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %45, i32 0, i32 5
  %46 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %comps, align 8, !tbaa !18
  store %struct.opj_tcd_tilecomp* %46, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %47 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %image = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %47, i32 0, i32 6
  %48 = load %struct.opj_image*, %struct.opj_image** %image, align 8, !tbaa !23
  store %struct.opj_image* %48, %struct.opj_image** %l_image, align 8, !tbaa !5
  %49 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %image1 = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %49, i32 0, i32 6
  %50 = load %struct.opj_image*, %struct.opj_image** %image1, align 8, !tbaa !23
  %comps2 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %50, i32 0, i32 6
  %51 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps2, align 8, !tbaa !24
  store %struct.opj_image_comp* %51, %struct.opj_image_comp** %l_image_comp, align 8, !tbaa !5
  %52 = load i32, i32* %p_tile_no.addr, align 4, !tbaa !1
  %53 = load %struct.opj_cp*, %struct.opj_cp** %l_cp, align 8, !tbaa !5
  %tw = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %53, i32 0, i32 6
  %54 = load i32, i32* %tw, align 4, !tbaa !85
  %rem = urem i32 %52, %54
  store i32 %rem, i32* %p, align 4, !tbaa !1
  %55 = load i32, i32* %p_tile_no.addr, align 4, !tbaa !1
  %56 = load %struct.opj_cp*, %struct.opj_cp** %l_cp, align 8, !tbaa !5
  %tw3 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %56, i32 0, i32 6
  %57 = load i32, i32* %tw3, align 4, !tbaa !85
  %div = udiv i32 %55, %57
  store i32 %div, i32* %q, align 4, !tbaa !1
  %58 = load %struct.opj_cp*, %struct.opj_cp** %l_cp, align 8, !tbaa !5
  %tx0 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %58, i32 0, i32 1
  %59 = load i32, i32* %tx0, align 4, !tbaa !86
  %60 = load i32, i32* %p, align 4, !tbaa !1
  %61 = load %struct.opj_cp*, %struct.opj_cp** %l_cp, align 8, !tbaa !5
  %tdx = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %61, i32 0, i32 3
  %62 = load i32, i32* %tdx, align 4, !tbaa !87
  %mul = mul i32 %60, %62
  %add = add i32 %59, %mul
  %63 = load %struct.opj_image*, %struct.opj_image** %l_image, align 8, !tbaa !5
  %x0 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %63, i32 0, i32 0
  %64 = load i32, i32* %x0, align 4, !tbaa !88
  %call = call i32 @opj_int_max(i32 %add, i32 %64) #8
  %65 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %x04 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %65, i32 0, i32 0
  store i32 %call, i32* %x04, align 4, !tbaa !89
  %66 = load %struct.opj_cp*, %struct.opj_cp** %l_cp, align 8, !tbaa !5
  %ty0 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %66, i32 0, i32 2
  %67 = load i32, i32* %ty0, align 4, !tbaa !90
  %68 = load i32, i32* %q, align 4, !tbaa !1
  %69 = load %struct.opj_cp*, %struct.opj_cp** %l_cp, align 8, !tbaa !5
  %tdy = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %69, i32 0, i32 4
  %70 = load i32, i32* %tdy, align 4, !tbaa !91
  %mul5 = mul i32 %68, %70
  %add6 = add i32 %67, %mul5
  %71 = load %struct.opj_image*, %struct.opj_image** %l_image, align 8, !tbaa !5
  %y0 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %71, i32 0, i32 1
  %72 = load i32, i32* %y0, align 4, !tbaa !92
  %call7 = call i32 @opj_int_max(i32 %add6, i32 %72) #8
  %73 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %y08 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %73, i32 0, i32 1
  store i32 %call7, i32* %y08, align 4, !tbaa !93
  %74 = load %struct.opj_cp*, %struct.opj_cp** %l_cp, align 8, !tbaa !5
  %tx09 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %74, i32 0, i32 1
  %75 = load i32, i32* %tx09, align 4, !tbaa !86
  %76 = load i32, i32* %p, align 4, !tbaa !1
  %add10 = add i32 %76, 1
  %77 = load %struct.opj_cp*, %struct.opj_cp** %l_cp, align 8, !tbaa !5
  %tdx11 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %77, i32 0, i32 3
  %78 = load i32, i32* %tdx11, align 4, !tbaa !87
  %mul12 = mul i32 %add10, %78
  %add13 = add i32 %75, %mul12
  %79 = load %struct.opj_image*, %struct.opj_image** %l_image, align 8, !tbaa !5
  %x1 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %79, i32 0, i32 2
  %80 = load i32, i32* %x1, align 4, !tbaa !94
  %call14 = call i32 @opj_int_min(i32 %add13, i32 %80) #8
  %81 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %x115 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %81, i32 0, i32 2
  store i32 %call14, i32* %x115, align 4, !tbaa !95
  %82 = load %struct.opj_cp*, %struct.opj_cp** %l_cp, align 8, !tbaa !5
  %ty016 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %82, i32 0, i32 2
  %83 = load i32, i32* %ty016, align 4, !tbaa !90
  %84 = load i32, i32* %q, align 4, !tbaa !1
  %add17 = add i32 %84, 1
  %85 = load %struct.opj_cp*, %struct.opj_cp** %l_cp, align 8, !tbaa !5
  %tdy18 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %85, i32 0, i32 4
  %86 = load i32, i32* %tdy18, align 4, !tbaa !91
  %mul19 = mul i32 %add17, %86
  %add20 = add i32 %83, %mul19
  %87 = load %struct.opj_image*, %struct.opj_image** %l_image, align 8, !tbaa !5
  %y1 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %87, i32 0, i32 3
  %88 = load i32, i32* %y1, align 4, !tbaa !96
  %call21 = call i32 @opj_int_min(i32 %add20, i32 %88) #8
  %89 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %y122 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %89, i32 0, i32 3
  store i32 %call21, i32* %y122, align 4, !tbaa !97
  %90 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %numresolutions = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %90, i32 0, i32 1
  %91 = load i32, i32* %numresolutions, align 4, !tbaa !98
  %cmp = icmp eq i32 %91, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %92, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i32 0, i32 0)) #8
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.599

if.end:                                           ; preds = %entry
  store i32 0, i32* %compno, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.596, %if.end
  %93 = load i32, i32* %compno, align 4, !tbaa !1
  %94 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %numcomps = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %94, i32 0, i32 4
  %95 = load i32, i32* %numcomps, align 4, !tbaa !15
  %cmp24 = icmp ult i32 %93, %95
  br i1 %cmp24, label %for.body, label %for.end.598

for.body:                                         ; preds = %for.cond
  %96 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %x025 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %96, i32 0, i32 0
  %97 = load i32, i32* %x025, align 4, !tbaa !89
  %98 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_image_comp, align 8, !tbaa !5
  %dx = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %98, i32 0, i32 0
  %99 = load i32, i32* %dx, align 4, !tbaa !100
  %call26 = call i32 @opj_int_ceildiv(i32 %97, i32 %99) #8
  %100 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %x027 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %100, i32 0, i32 0
  store i32 %call26, i32* %x027, align 4, !tbaa !101
  %101 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %y028 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %101, i32 0, i32 1
  %102 = load i32, i32* %y028, align 4, !tbaa !93
  %103 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_image_comp, align 8, !tbaa !5
  %dy = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %103, i32 0, i32 1
  %104 = load i32, i32* %dy, align 4, !tbaa !102
  %call29 = call i32 @opj_int_ceildiv(i32 %102, i32 %104) #8
  %105 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %y030 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %105, i32 0, i32 1
  store i32 %call29, i32* %y030, align 4, !tbaa !103
  %106 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %x131 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %106, i32 0, i32 2
  %107 = load i32, i32* %x131, align 4, !tbaa !95
  %108 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_image_comp, align 8, !tbaa !5
  %dx32 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %108, i32 0, i32 0
  %109 = load i32, i32* %dx32, align 4, !tbaa !100
  %call33 = call i32 @opj_int_ceildiv(i32 %107, i32 %109) #8
  %110 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %x134 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %110, i32 0, i32 2
  store i32 %call33, i32* %x134, align 4, !tbaa !104
  %111 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %y135 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %111, i32 0, i32 3
  %112 = load i32, i32* %y135, align 4, !tbaa !97
  %113 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_image_comp, align 8, !tbaa !5
  %dy36 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %113, i32 0, i32 1
  %114 = load i32, i32* %dy36, align 4, !tbaa !102
  %call37 = call i32 @opj_int_ceildiv(i32 %112, i32 %114) #8
  %115 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %y138 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %115, i32 0, i32 3
  store i32 %call37, i32* %y138, align 4, !tbaa !105
  %116 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %x139 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %116, i32 0, i32 2
  %117 = load i32, i32* %x139, align 4, !tbaa !104
  %118 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %x040 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %118, i32 0, i32 0
  %119 = load i32, i32* %x040, align 4, !tbaa !101
  %sub = sub nsw i32 %117, %119
  %120 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %y141 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %120, i32 0, i32 3
  %121 = load i32, i32* %y141, align 4, !tbaa !105
  %122 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %y042 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %122, i32 0, i32 1
  %123 = load i32, i32* %y042, align 4, !tbaa !103
  %sub43 = sub nsw i32 %121, %123
  %mul44 = mul nsw i32 %sub, %sub43
  %conv = sext i32 %mul44 to i64
  %mul45 = mul i64 %conv, 4
  %conv46 = trunc i64 %mul45 to i32
  store i32 %conv46, i32* %l_data_size, align 4, !tbaa !1
  %124 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %numresolutions47 = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %124, i32 0, i32 1
  %125 = load i32, i32* %numresolutions47, align 4, !tbaa !98
  %126 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %numresolutions48 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %126, i32 0, i32 4
  store i32 %125, i32* %numresolutions48, align 4, !tbaa !19
  %127 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %numresolutions49 = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %127, i32 0, i32 1
  %128 = load i32, i32* %numresolutions49, align 4, !tbaa !98
  %129 = load %struct.opj_cp*, %struct.opj_cp** %l_cp, align 8, !tbaa !5
  %m_specific_param = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %129, i32 0, i32 18
  %m_dec = bitcast %union.anon.0* %m_specific_param to %struct.opj_decoding_param*
  %m_reduce = getelementptr inbounds %struct.opj_decoding_param, %struct.opj_decoding_param* %m_dec, i32 0, i32 0
  %130 = load i32, i32* %m_reduce, align 4, !tbaa !106
  %cmp50 = icmp ult i32 %128, %130
  br i1 %cmp50, label %if.then.52, label %if.else

if.then.52:                                       ; preds = %for.body
  %131 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %minimum_num_resolutions = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %131, i32 0, i32 5
  store i32 1, i32* %minimum_num_resolutions, align 4, !tbaa !108
  br label %if.end.59

if.else:                                          ; preds = %for.body
  %132 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %numresolutions53 = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %132, i32 0, i32 1
  %133 = load i32, i32* %numresolutions53, align 4, !tbaa !98
  %134 = load %struct.opj_cp*, %struct.opj_cp** %l_cp, align 8, !tbaa !5
  %m_specific_param54 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %134, i32 0, i32 18
  %m_dec55 = bitcast %union.anon.0* %m_specific_param54 to %struct.opj_decoding_param*
  %m_reduce56 = getelementptr inbounds %struct.opj_decoding_param, %struct.opj_decoding_param* %m_dec55, i32 0, i32 0
  %135 = load i32, i32* %m_reduce56, align 4, !tbaa !106
  %sub57 = sub i32 %133, %135
  %136 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %minimum_num_resolutions58 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %136, i32 0, i32 5
  store i32 %sub57, i32* %minimum_num_resolutions58, align 4, !tbaa !108
  br label %if.end.59

if.end.59:                                        ; preds = %if.else, %if.then.52
  %137 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %data = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %137, i32 0, i32 8
  %138 = load i32*, i32** %data, align 8, !tbaa !81
  %cmp60 = icmp eq i32* %138, null
  br i1 %cmp60, label %if.then.62, label %if.else.72

if.then.62:                                       ; preds = %if.end.59
  %139 = load i32, i32* %l_data_size, align 4, !tbaa !1
  %conv63 = zext i32 %139 to i64
  %cmp64 = icmp uge i64 %conv63, -256
  br i1 %cmp64, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.62
  br label %cond.end

cond.false:                                       ; preds = %if.then.62
  %140 = load i32, i32* %l_data_size, align 4, !tbaa !1
  %conv66 = zext i32 %140 to i64
  %call67 = call noalias i8* @malloc(i64 %conv66) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %call67, %cond.false ]
  %141 = bitcast i8* %cond to i32*
  %142 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %data68 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %142, i32 0, i32 8
  store i32* %141, i32** %data68, align 8, !tbaa !81
  %143 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %data69 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %143, i32 0, i32 8
  %144 = load i32*, i32** %data69, align 8, !tbaa !81
  %tobool = icmp ne i32* %144, null
  br i1 %tobool, label %if.end.71, label %if.then.70

if.then.70:                                       ; preds = %cond.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.599

if.end.71:                                        ; preds = %cond.end
  %145 = load i32, i32* %l_data_size, align 4, !tbaa !1
  %146 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %data_size = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %146, i32 0, i32 9
  store i32 %145, i32* %data_size, align 4, !tbaa !109
  br label %if.end.97

if.else.72:                                       ; preds = %if.end.59
  %147 = load i32, i32* %l_data_size, align 4, !tbaa !1
  %148 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %data_size73 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %148, i32 0, i32 9
  %149 = load i32, i32* %data_size73, align 4, !tbaa !109
  %cmp74 = icmp ugt i32 %147, %149
  br i1 %cmp74, label %if.then.76, label %if.end.96

if.then.76:                                       ; preds = %if.else.72
  %150 = bitcast i32** %new_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %150) #1
  %151 = load i32, i32* %l_data_size, align 4, !tbaa !1
  %conv77 = zext i32 %151 to i64
  %cmp78 = icmp uge i64 %conv77, -256
  br i1 %cmp78, label %cond.true.80, label %cond.false.81

cond.true.80:                                     ; preds = %if.then.76
  br label %cond.end.85

cond.false.81:                                    ; preds = %if.then.76
  %152 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %data82 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %152, i32 0, i32 8
  %153 = load i32*, i32** %data82, align 8, !tbaa !81
  %154 = bitcast i32* %153 to i8*
  %155 = load i32, i32* %l_data_size, align 4, !tbaa !1
  %conv83 = zext i32 %155 to i64
  %call84 = call i8* @realloc(i8* %154, i64 %conv83) #7
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.false.81, %cond.true.80
  %cond86 = phi i8* [ null, %cond.true.80 ], [ %call84, %cond.false.81 ]
  %156 = bitcast i8* %cond86 to i32*
  store i32* %156, i32** %new_data, align 8, !tbaa !5
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %call87 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %157, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i32 0, i32 0)) #8
  %158 = load i32*, i32** %new_data, align 8, !tbaa !5
  %tobool88 = icmp ne i32* %158, null
  br i1 %tobool88, label %if.end.93, label %if.then.89

if.then.89:                                       ; preds = %cond.end.85
  %159 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %data90 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %159, i32 0, i32 8
  %160 = load i32*, i32** %data90, align 8, !tbaa !81
  %161 = bitcast i32* %160 to i8*
  call void @free(i8* %161) #7
  %162 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %data91 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %162, i32 0, i32 8
  store i32* null, i32** %data91, align 8, !tbaa !81
  %163 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %data_size92 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %163, i32 0, i32 9
  store i32 0, i32* %data_size92, align 4, !tbaa !109
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.93:                                        ; preds = %cond.end.85
  %164 = load i32*, i32** %new_data, align 8, !tbaa !5
  %165 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %data94 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %165, i32 0, i32 8
  store i32* %164, i32** %data94, align 8, !tbaa !81
  %166 = load i32, i32* %l_data_size, align 4, !tbaa !1
  %167 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %data_size95 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %167, i32 0, i32 9
  store i32 %166, i32* %data_size95, align 4, !tbaa !109
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.93, %if.then.89
  %168 = bitcast i32** %new_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %168) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.599 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.96

if.end.96:                                        ; preds = %cleanup.cont, %if.else.72
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.end.71
  %169 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %numresolutions98 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %169, i32 0, i32 4
  %170 = load i32, i32* %numresolutions98, align 4, !tbaa !19
  %conv99 = zext i32 %170 to i64
  %mul100 = mul i64 %conv99, 176
  %conv101 = trunc i64 %mul100 to i32
  store i32 %conv101, i32* %l_data_size, align 4, !tbaa !1
  %171 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %resolutions = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %171, i32 0, i32 6
  %172 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %resolutions, align 8, !tbaa !29
  %cmp102 = icmp eq %struct.opj_tcd_resolution* %172, null
  br i1 %cmp102, label %if.then.104, label %if.else.122

if.then.104:                                      ; preds = %if.end.97
  %173 = load i32, i32* %l_data_size, align 4, !tbaa !1
  %conv105 = zext i32 %173 to i64
  %cmp106 = icmp uge i64 %conv105, -256
  br i1 %cmp106, label %cond.true.108, label %cond.false.109

cond.true.108:                                    ; preds = %if.then.104
  br label %cond.end.112

cond.false.109:                                   ; preds = %if.then.104
  %174 = load i32, i32* %l_data_size, align 4, !tbaa !1
  %conv110 = zext i32 %174 to i64
  %call111 = call noalias i8* @malloc(i64 %conv110) #7
  br label %cond.end.112

cond.end.112:                                     ; preds = %cond.false.109, %cond.true.108
  %cond113 = phi i8* [ null, %cond.true.108 ], [ %call111, %cond.false.109 ]
  %175 = bitcast i8* %cond113 to %struct.opj_tcd_resolution*
  %176 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %resolutions114 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %176, i32 0, i32 6
  store %struct.opj_tcd_resolution* %175, %struct.opj_tcd_resolution** %resolutions114, align 8, !tbaa !29
  %177 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %resolutions115 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %177, i32 0, i32 6
  %178 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %resolutions115, align 8, !tbaa !29
  %tobool116 = icmp ne %struct.opj_tcd_resolution* %178, null
  br i1 %tobool116, label %if.end.118, label %if.then.117

if.then.117:                                      ; preds = %cond.end.112
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.599

if.end.118:                                       ; preds = %cond.end.112
  %179 = load i32, i32* %l_data_size, align 4, !tbaa !1
  %180 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %resolutions_size = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %180, i32 0, i32 7
  store i32 %179, i32* %resolutions_size, align 4, !tbaa !77
  %181 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %resolutions119 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %181, i32 0, i32 6
  %182 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %resolutions119, align 8, !tbaa !29
  %183 = bitcast %struct.opj_tcd_resolution* %182 to i8*
  %184 = load i32, i32* %l_data_size, align 4, !tbaa !1
  %conv120 = zext i32 %184 to i64
  %call121 = call i8* @memset(i8* %183, i32 0, i64 %conv120) #7
  br label %if.end.156

if.else.122:                                      ; preds = %if.end.97
  %185 = load i32, i32* %l_data_size, align 4, !tbaa !1
  %186 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %resolutions_size123 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %186, i32 0, i32 7
  %187 = load i32, i32* %resolutions_size123, align 4, !tbaa !77
  %cmp124 = icmp ugt i32 %185, %187
  br i1 %cmp124, label %if.then.126, label %if.end.155

if.then.126:                                      ; preds = %if.else.122
  %188 = bitcast %struct.opj_tcd_resolution** %new_resolutions to i8*
  call void @llvm.lifetime.start(i64 8, i8* %188) #1
  %189 = load i32, i32* %l_data_size, align 4, !tbaa !1
  %conv127 = zext i32 %189 to i64
  %cmp128 = icmp uge i64 %conv127, -256
  br i1 %cmp128, label %cond.true.130, label %cond.false.131

cond.true.130:                                    ; preds = %if.then.126
  br label %cond.end.135

cond.false.131:                                   ; preds = %if.then.126
  %190 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %resolutions132 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %190, i32 0, i32 6
  %191 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %resolutions132, align 8, !tbaa !29
  %192 = bitcast %struct.opj_tcd_resolution* %191 to i8*
  %193 = load i32, i32* %l_data_size, align 4, !tbaa !1
  %conv133 = zext i32 %193 to i64
  %call134 = call i8* @realloc(i8* %192, i64 %conv133) #7
  br label %cond.end.135

cond.end.135:                                     ; preds = %cond.false.131, %cond.true.130
  %cond136 = phi i8* [ null, %cond.true.130 ], [ %call134, %cond.false.131 ]
  %194 = bitcast i8* %cond136 to %struct.opj_tcd_resolution*
  store %struct.opj_tcd_resolution* %194, %struct.opj_tcd_resolution** %new_resolutions, align 8, !tbaa !5
  %195 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %new_resolutions, align 8, !tbaa !5
  %tobool137 = icmp ne %struct.opj_tcd_resolution* %195, null
  br i1 %tobool137, label %if.end.143, label %if.then.138

if.then.138:                                      ; preds = %cond.end.135
  %196 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %call139 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %196, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i32 0, i32 0)) #8
  %197 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %resolutions140 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %197, i32 0, i32 6
  %198 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %resolutions140, align 8, !tbaa !29
  %199 = bitcast %struct.opj_tcd_resolution* %198 to i8*
  call void @free(i8* %199) #7
  %200 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %resolutions141 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %200, i32 0, i32 6
  store %struct.opj_tcd_resolution* null, %struct.opj_tcd_resolution** %resolutions141, align 8, !tbaa !29
  %201 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %resolutions_size142 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %201, i32 0, i32 7
  store i32 0, i32* %resolutions_size142, align 4, !tbaa !77
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.152

if.end.143:                                       ; preds = %cond.end.135
  %202 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %new_resolutions, align 8, !tbaa !5
  %203 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %resolutions144 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %203, i32 0, i32 6
  store %struct.opj_tcd_resolution* %202, %struct.opj_tcd_resolution** %resolutions144, align 8, !tbaa !29
  %204 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %resolutions145 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %204, i32 0, i32 6
  %205 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %resolutions145, align 8, !tbaa !29
  %206 = bitcast %struct.opj_tcd_resolution* %205 to i8*
  %207 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %resolutions_size146 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %207, i32 0, i32 7
  %208 = load i32, i32* %resolutions_size146, align 4, !tbaa !77
  %idx.ext = zext i32 %208 to i64
  %add.ptr = getelementptr inbounds i8, i8* %206, i64 %idx.ext
  %209 = load i32, i32* %l_data_size, align 4, !tbaa !1
  %210 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %resolutions_size147 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %210, i32 0, i32 7
  %211 = load i32, i32* %resolutions_size147, align 4, !tbaa !77
  %sub148 = sub i32 %209, %211
  %conv149 = zext i32 %sub148 to i64
  %call150 = call i8* @memset(i8* %add.ptr, i32 0, i64 %conv149) #7
  %212 = load i32, i32* %l_data_size, align 4, !tbaa !1
  %213 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %resolutions_size151 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %213, i32 0, i32 7
  store i32 %212, i32* %resolutions_size151, align 4, !tbaa !77
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.152

cleanup.152:                                      ; preds = %if.end.143, %if.then.138
  %214 = bitcast %struct.opj_tcd_resolution** %new_resolutions to i8*
  call void @llvm.lifetime.end(i64 8, i8* %214) #1
  %cleanup.dest.153 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.153, label %cleanup.599 [
    i32 0, label %cleanup.cont.154
  ]

cleanup.cont.154:                                 ; preds = %cleanup.152
  br label %if.end.155

if.end.155:                                       ; preds = %cleanup.cont.154, %if.else.122
  br label %if.end.156

if.end.156:                                       ; preds = %if.end.155, %if.end.118
  %215 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %numresolutions157 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %215, i32 0, i32 4
  %216 = load i32, i32* %numresolutions157, align 4, !tbaa !19
  %sub158 = sub i32 %216, 1
  store i32 %sub158, i32* %l_level_no, align 4, !tbaa !1
  %217 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %resolutions159 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %217, i32 0, i32 6
  %218 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %resolutions159, align 8, !tbaa !29
  store %struct.opj_tcd_resolution* %218, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %219 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %stepsizes = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %219, i32 0, i32 7
  %arraydecay = getelementptr inbounds [97 x %struct.opj_stepsize], [97 x %struct.opj_stepsize]* %stepsizes, i32 0, i32 0
  store %struct.opj_stepsize* %arraydecay, %struct.opj_stepsize** %l_step_size, align 8, !tbaa !5
  %220 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %qmfbid = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %220, i32 0, i32 5
  %221 = load i32, i32* %qmfbid, align 4, !tbaa !110
  %cmp160 = icmp eq i32 %221, 0
  br i1 %cmp160, label %if.then.162, label %if.else.163

if.then.162:                                      ; preds = %if.end.156
  store i32 (i32)* @opj_dwt_getgain_real, i32 (i32)** %l_gain_ptr, align 8, !tbaa !5
  br label %if.end.164

if.else.163:                                      ; preds = %if.end.156
  store i32 (i32)* @opj_dwt_getgain, i32 (i32)** %l_gain_ptr, align 8, !tbaa !5
  br label %if.end.164

if.end.164:                                       ; preds = %if.else.163, %if.then.162
  store i32 0, i32* %resno, align 4, !tbaa !1
  br label %for.cond.165

for.cond.165:                                     ; preds = %for.inc.590, %if.end.164
  %222 = load i32, i32* %resno, align 4, !tbaa !1
  %223 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %numresolutions166 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %223, i32 0, i32 4
  %224 = load i32, i32* %numresolutions166, align 4, !tbaa !19
  %cmp167 = icmp ult i32 %222, %224
  br i1 %cmp167, label %for.body.169, label %for.end.592

for.body.169:                                     ; preds = %for.cond.165
  %225 = bitcast i32* %tlcbgxstart to i8*
  call void @llvm.lifetime.start(i64 4, i8* %225) #1
  %226 = bitcast i32* %tlcbgystart to i8*
  call void @llvm.lifetime.start(i64 4, i8* %226) #1
  %227 = bitcast i32* %cbgwidthexpn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %227) #1
  %228 = bitcast i32* %cbgheightexpn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %228) #1
  %229 = bitcast i32* %cblkwidthexpn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %229) #1
  %230 = bitcast i32* %cblkheightexpn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %230) #1
  %231 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %x0170 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %231, i32 0, i32 0
  %232 = load i32, i32* %x0170, align 4, !tbaa !101
  %233 = load i32, i32* %l_level_no, align 4, !tbaa !1
  %call171 = call i32 @opj_int_ceildivpow2(i32 %232, i32 %233) #8
  %234 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %x0172 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %234, i32 0, i32 0
  store i32 %call171, i32* %x0172, align 4, !tbaa !111
  %235 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %y0173 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %235, i32 0, i32 1
  %236 = load i32, i32* %y0173, align 4, !tbaa !103
  %237 = load i32, i32* %l_level_no, align 4, !tbaa !1
  %call174 = call i32 @opj_int_ceildivpow2(i32 %236, i32 %237) #8
  %238 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %y0175 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %238, i32 0, i32 1
  store i32 %call174, i32* %y0175, align 4, !tbaa !112
  %239 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %x1176 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %239, i32 0, i32 2
  %240 = load i32, i32* %x1176, align 4, !tbaa !104
  %241 = load i32, i32* %l_level_no, align 4, !tbaa !1
  %call177 = call i32 @opj_int_ceildivpow2(i32 %240, i32 %241) #8
  %242 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %x1178 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %242, i32 0, i32 2
  store i32 %call177, i32* %x1178, align 4, !tbaa !113
  %243 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %y1179 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %243, i32 0, i32 3
  %244 = load i32, i32* %y1179, align 4, !tbaa !105
  %245 = load i32, i32* %l_level_no, align 4, !tbaa !1
  %call180 = call i32 @opj_int_ceildivpow2(i32 %244, i32 %245) #8
  %246 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %y1181 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %246, i32 0, i32 3
  store i32 %call180, i32* %y1181, align 4, !tbaa !114
  %247 = load i32, i32* %resno, align 4, !tbaa !1
  %idxprom182 = zext i32 %247 to i64
  %248 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %prcw = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %248, i32 0, i32 10
  %arrayidx183 = getelementptr inbounds [33 x i32], [33 x i32]* %prcw, i32 0, i64 %idxprom182
  %249 = load i32, i32* %arrayidx183, align 4, !tbaa !1
  store i32 %249, i32* %l_pdx, align 4, !tbaa !1
  %250 = load i32, i32* %resno, align 4, !tbaa !1
  %idxprom184 = zext i32 %250 to i64
  %251 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %prch = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %251, i32 0, i32 11
  %arrayidx185 = getelementptr inbounds [33 x i32], [33 x i32]* %prch, i32 0, i64 %idxprom184
  %252 = load i32, i32* %arrayidx185, align 4, !tbaa !1
  store i32 %252, i32* %l_pdy, align 4, !tbaa !1
  %253 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %x0186 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %253, i32 0, i32 0
  %254 = load i32, i32* %x0186, align 4, !tbaa !111
  %255 = load i32, i32* %l_pdx, align 4, !tbaa !1
  %call187 = call i32 @opj_int_floordivpow2(i32 %254, i32 %255) #8
  %256 = load i32, i32* %l_pdx, align 4, !tbaa !1
  %shl = shl i32 %call187, %256
  store i32 %shl, i32* %l_tl_prc_x_start, align 4, !tbaa !1
  %257 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %y0188 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %257, i32 0, i32 1
  %258 = load i32, i32* %y0188, align 4, !tbaa !112
  %259 = load i32, i32* %l_pdy, align 4, !tbaa !1
  %call189 = call i32 @opj_int_floordivpow2(i32 %258, i32 %259) #8
  %260 = load i32, i32* %l_pdy, align 4, !tbaa !1
  %shl190 = shl i32 %call189, %260
  store i32 %shl190, i32* %l_tl_prc_y_start, align 4, !tbaa !1
  %261 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %x1191 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %261, i32 0, i32 2
  %262 = load i32, i32* %x1191, align 4, !tbaa !113
  %263 = load i32, i32* %l_pdx, align 4, !tbaa !1
  %call192 = call i32 @opj_int_ceildivpow2(i32 %262, i32 %263) #8
  %264 = load i32, i32* %l_pdx, align 4, !tbaa !1
  %shl193 = shl i32 %call192, %264
  store i32 %shl193, i32* %l_br_prc_x_end, align 4, !tbaa !1
  %265 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %y1194 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %265, i32 0, i32 3
  %266 = load i32, i32* %y1194, align 4, !tbaa !114
  %267 = load i32, i32* %l_pdy, align 4, !tbaa !1
  %call195 = call i32 @opj_int_ceildivpow2(i32 %266, i32 %267) #8
  %268 = load i32, i32* %l_pdy, align 4, !tbaa !1
  %shl196 = shl i32 %call195, %268
  store i32 %shl196, i32* %l_br_prc_y_end, align 4, !tbaa !1
  %269 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %x0197 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %269, i32 0, i32 0
  %270 = load i32, i32* %x0197, align 4, !tbaa !111
  %271 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %x1198 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %271, i32 0, i32 2
  %272 = load i32, i32* %x1198, align 4, !tbaa !113
  %cmp199 = icmp eq i32 %270, %272
  br i1 %cmp199, label %cond.true.201, label %cond.false.202

cond.true.201:                                    ; preds = %for.body.169
  br label %cond.end.204

cond.false.202:                                   ; preds = %for.body.169
  %273 = load i32, i32* %l_br_prc_x_end, align 4, !tbaa !1
  %274 = load i32, i32* %l_tl_prc_x_start, align 4, !tbaa !1
  %sub203 = sub nsw i32 %273, %274
  %275 = load i32, i32* %l_pdx, align 4, !tbaa !1
  %shr = ashr i32 %sub203, %275
  br label %cond.end.204

cond.end.204:                                     ; preds = %cond.false.202, %cond.true.201
  %cond205 = phi i32 [ 0, %cond.true.201 ], [ %shr, %cond.false.202 ]
  %276 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %pw = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %276, i32 0, i32 4
  store i32 %cond205, i32* %pw, align 4, !tbaa !32
  %277 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %y0206 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %277, i32 0, i32 1
  %278 = load i32, i32* %y0206, align 4, !tbaa !112
  %279 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %y1207 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %279, i32 0, i32 3
  %280 = load i32, i32* %y1207, align 4, !tbaa !114
  %cmp208 = icmp eq i32 %278, %280
  br i1 %cmp208, label %cond.true.210, label %cond.false.211

cond.true.210:                                    ; preds = %cond.end.204
  br label %cond.end.214

cond.false.211:                                   ; preds = %cond.end.204
  %281 = load i32, i32* %l_br_prc_y_end, align 4, !tbaa !1
  %282 = load i32, i32* %l_tl_prc_y_start, align 4, !tbaa !1
  %sub212 = sub nsw i32 %281, %282
  %283 = load i32, i32* %l_pdy, align 4, !tbaa !1
  %shr213 = ashr i32 %sub212, %283
  br label %cond.end.214

cond.end.214:                                     ; preds = %cond.false.211, %cond.true.210
  %cond215 = phi i32 [ 0, %cond.true.210 ], [ %shr213, %cond.false.211 ]
  %284 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %ph = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %284, i32 0, i32 5
  store i32 %cond215, i32* %ph, align 4, !tbaa !33
  %285 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %pw216 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %285, i32 0, i32 4
  %286 = load i32, i32* %pw216, align 4, !tbaa !32
  %287 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %ph217 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %287, i32 0, i32 5
  %288 = load i32, i32* %ph217, align 4, !tbaa !33
  %mul218 = mul i32 %286, %288
  store i32 %mul218, i32* %l_nb_precincts, align 4, !tbaa !1
  %289 = load i32, i32* %l_nb_precincts, align 4, !tbaa !1
  %conv219 = zext i32 %289 to i64
  %mul220 = mul i64 %conv219, 56
  %conv221 = trunc i64 %mul220 to i32
  store i32 %conv221, i32* %l_nb_precinct_size, align 4, !tbaa !1
  %290 = load i32, i32* %resno, align 4, !tbaa !1
  %cmp222 = icmp eq i32 %290, 0
  br i1 %cmp222, label %if.then.224, label %if.else.225

if.then.224:                                      ; preds = %cond.end.214
  %291 = load i32, i32* %l_tl_prc_x_start, align 4, !tbaa !1
  store i32 %291, i32* %tlcbgxstart, align 4, !tbaa !1
  %292 = load i32, i32* %l_tl_prc_y_start, align 4, !tbaa !1
  store i32 %292, i32* %tlcbgystart, align 4, !tbaa !1
  %293 = load i32, i32* %l_pdx, align 4, !tbaa !1
  store i32 %293, i32* %cbgwidthexpn, align 4, !tbaa !1
  %294 = load i32, i32* %l_pdy, align 4, !tbaa !1
  store i32 %294, i32* %cbgheightexpn, align 4, !tbaa !1
  %295 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %numbands = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %295, i32 0, i32 6
  store i32 1, i32* %numbands, align 4, !tbaa !30
  br label %if.end.231

if.else.225:                                      ; preds = %cond.end.214
  %296 = load i32, i32* %l_tl_prc_x_start, align 4, !tbaa !1
  %call226 = call i32 @opj_int_ceildivpow2(i32 %296, i32 1) #8
  store i32 %call226, i32* %tlcbgxstart, align 4, !tbaa !1
  %297 = load i32, i32* %l_tl_prc_y_start, align 4, !tbaa !1
  %call227 = call i32 @opj_int_ceildivpow2(i32 %297, i32 1) #8
  store i32 %call227, i32* %tlcbgystart, align 4, !tbaa !1
  %298 = load i32, i32* %l_pdx, align 4, !tbaa !1
  %sub228 = sub i32 %298, 1
  store i32 %sub228, i32* %cbgwidthexpn, align 4, !tbaa !1
  %299 = load i32, i32* %l_pdy, align 4, !tbaa !1
  %sub229 = sub i32 %299, 1
  store i32 %sub229, i32* %cbgheightexpn, align 4, !tbaa !1
  %300 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %numbands230 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %300, i32 0, i32 6
  store i32 3, i32* %numbands230, align 4, !tbaa !30
  br label %if.end.231

if.end.231:                                       ; preds = %if.else.225, %if.then.224
  %301 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %cblkw = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %301, i32 0, i32 2
  %302 = load i32, i32* %cblkw, align 4, !tbaa !115
  %303 = load i32, i32* %cbgwidthexpn, align 4, !tbaa !1
  %call232 = call i32 @opj_uint_min(i32 %302, i32 %303) #8
  store i32 %call232, i32* %cblkwidthexpn, align 4, !tbaa !1
  %304 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %cblkh = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %304, i32 0, i32 3
  %305 = load i32, i32* %cblkh, align 4, !tbaa !116
  %306 = load i32, i32* %cbgheightexpn, align 4, !tbaa !1
  %call233 = call i32 @opj_uint_min(i32 %305, i32 %306) #8
  store i32 %call233, i32* %cblkheightexpn, align 4, !tbaa !1
  %307 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %bands = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %307, i32 0, i32 7
  %arraydecay234 = getelementptr inbounds [3 x %struct.opj_tcd_band], [3 x %struct.opj_tcd_band]* %bands, i32 0, i32 0
  store %struct.opj_tcd_band* %arraydecay234, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  store i32 0, i32* %bandno, align 4, !tbaa !1
  br label %for.cond.235

for.cond.235:                                     ; preds = %for.inc.577, %if.end.231
  %308 = load i32, i32* %bandno, align 4, !tbaa !1
  %309 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %numbands236 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %309, i32 0, i32 6
  %310 = load i32, i32* %numbands236, align 4, !tbaa !30
  %cmp237 = icmp ult i32 %308, %310
  br i1 %cmp237, label %for.body.239, label %for.end.579

for.body.239:                                     ; preds = %for.cond.235
  %311 = bitcast i32* %numbps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %311) #1
  %312 = load i32, i32* %resno, align 4, !tbaa !1
  %cmp240 = icmp eq i32 %312, 0
  br i1 %cmp240, label %if.then.242, label %if.else.256

if.then.242:                                      ; preds = %for.body.239
  %313 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %bandno243 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %313, i32 0, i32 4
  store i32 0, i32* %bandno243, align 4, !tbaa !117
  %314 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %x0244 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %314, i32 0, i32 0
  %315 = load i32, i32* %x0244, align 4, !tbaa !101
  %316 = load i32, i32* %l_level_no, align 4, !tbaa !1
  %call245 = call i32 @opj_int_ceildivpow2(i32 %315, i32 %316) #8
  %317 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %x0246 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %317, i32 0, i32 0
  store i32 %call245, i32* %x0246, align 4, !tbaa !118
  %318 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %y0247 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %318, i32 0, i32 1
  %319 = load i32, i32* %y0247, align 4, !tbaa !103
  %320 = load i32, i32* %l_level_no, align 4, !tbaa !1
  %call248 = call i32 @opj_int_ceildivpow2(i32 %319, i32 %320) #8
  %321 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %y0249 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %321, i32 0, i32 1
  store i32 %call248, i32* %y0249, align 4, !tbaa !119
  %322 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %x1250 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %322, i32 0, i32 2
  %323 = load i32, i32* %x1250, align 4, !tbaa !104
  %324 = load i32, i32* %l_level_no, align 4, !tbaa !1
  %call251 = call i32 @opj_int_ceildivpow2(i32 %323, i32 %324) #8
  %325 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %x1252 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %325, i32 0, i32 2
  store i32 %call251, i32* %x1252, align 4, !tbaa !120
  %326 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %y1253 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %326, i32 0, i32 3
  %327 = load i32, i32* %y1253, align 4, !tbaa !105
  %328 = load i32, i32* %l_level_no, align 4, !tbaa !1
  %call254 = call i32 @opj_int_ceildivpow2(i32 %327, i32 %328) #8
  %329 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %y1255 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %329, i32 0, i32 3
  store i32 %call254, i32* %y1255, align 4, !tbaa !121
  br label %if.end.290

if.else.256:                                      ; preds = %for.body.239
  %330 = load i32, i32* %bandno, align 4, !tbaa !1
  %add257 = add i32 %330, 1
  %331 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %bandno258 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %331, i32 0, i32 4
  store i32 %add257, i32* %bandno258, align 4, !tbaa !117
  %332 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %bandno259 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %332, i32 0, i32 4
  %333 = load i32, i32* %bandno259, align 4, !tbaa !117
  %and = and i32 %333, 1
  store i32 %and, i32* %l_x0b, align 4, !tbaa !1
  %334 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %bandno260 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %334, i32 0, i32 4
  %335 = load i32, i32* %bandno260, align 4, !tbaa !117
  %shr261 = lshr i32 %335, 1
  store i32 %shr261, i32* %l_y0b, align 4, !tbaa !1
  %336 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %x0262 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %336, i32 0, i32 0
  %337 = load i32, i32* %x0262, align 4, !tbaa !101
  %338 = load i32, i32* %l_level_no, align 4, !tbaa !1
  %shl263 = shl i32 1, %338
  %339 = load i32, i32* %l_x0b, align 4, !tbaa !1
  %mul264 = mul nsw i32 %shl263, %339
  %sub265 = sub nsw i32 %337, %mul264
  %340 = load i32, i32* %l_level_no, align 4, !tbaa !1
  %add266 = add i32 %340, 1
  %call267 = call i32 @opj_int_ceildivpow2(i32 %sub265, i32 %add266) #8
  %341 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %x0268 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %341, i32 0, i32 0
  store i32 %call267, i32* %x0268, align 4, !tbaa !118
  %342 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %y0269 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %342, i32 0, i32 1
  %343 = load i32, i32* %y0269, align 4, !tbaa !103
  %344 = load i32, i32* %l_level_no, align 4, !tbaa !1
  %shl270 = shl i32 1, %344
  %345 = load i32, i32* %l_y0b, align 4, !tbaa !1
  %mul271 = mul nsw i32 %shl270, %345
  %sub272 = sub nsw i32 %343, %mul271
  %346 = load i32, i32* %l_level_no, align 4, !tbaa !1
  %add273 = add i32 %346, 1
  %call274 = call i32 @opj_int_ceildivpow2(i32 %sub272, i32 %add273) #8
  %347 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %y0275 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %347, i32 0, i32 1
  store i32 %call274, i32* %y0275, align 4, !tbaa !119
  %348 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %x1276 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %348, i32 0, i32 2
  %349 = load i32, i32* %x1276, align 4, !tbaa !104
  %350 = load i32, i32* %l_level_no, align 4, !tbaa !1
  %shl277 = shl i32 1, %350
  %351 = load i32, i32* %l_x0b, align 4, !tbaa !1
  %mul278 = mul nsw i32 %shl277, %351
  %sub279 = sub nsw i32 %349, %mul278
  %352 = load i32, i32* %l_level_no, align 4, !tbaa !1
  %add280 = add i32 %352, 1
  %call281 = call i32 @opj_int_ceildivpow2(i32 %sub279, i32 %add280) #8
  %353 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %x1282 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %353, i32 0, i32 2
  store i32 %call281, i32* %x1282, align 4, !tbaa !120
  %354 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %y1283 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %354, i32 0, i32 3
  %355 = load i32, i32* %y1283, align 4, !tbaa !105
  %356 = load i32, i32* %l_level_no, align 4, !tbaa !1
  %shl284 = shl i32 1, %356
  %357 = load i32, i32* %l_y0b, align 4, !tbaa !1
  %mul285 = mul nsw i32 %shl284, %357
  %sub286 = sub nsw i32 %355, %mul285
  %358 = load i32, i32* %l_level_no, align 4, !tbaa !1
  %add287 = add i32 %358, 1
  %call288 = call i32 @opj_int_ceildivpow2(i32 %sub286, i32 %add287) #8
  %359 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %y1289 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %359, i32 0, i32 3
  store i32 %call288, i32* %y1289, align 4, !tbaa !121
  br label %if.end.290

if.end.290:                                       ; preds = %if.else.256, %if.then.242
  %360 = load i32 (i32)*, i32 (i32)** %l_gain_ptr, align 8, !tbaa !5
  %361 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %bandno291 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %361, i32 0, i32 4
  %362 = load i32, i32* %bandno291, align 4, !tbaa !117
  %call292 = call i32 %360(i32 %362) #8
  store i32 %call292, i32* %l_gain, align 4, !tbaa !1
  %363 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_image_comp, align 8, !tbaa !5
  %prec = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %363, i32 0, i32 6
  %364 = load i32, i32* %prec, align 4, !tbaa !26
  %365 = load i32, i32* %l_gain, align 4, !tbaa !1
  %add293 = add i32 %364, %365
  store i32 %add293, i32* %numbps, align 4, !tbaa !1
  %366 = load %struct.opj_stepsize*, %struct.opj_stepsize** %l_step_size, align 8, !tbaa !5
  %mant = getelementptr inbounds %struct.opj_stepsize, %struct.opj_stepsize* %366, i32 0, i32 1
  %367 = load i32, i32* %mant, align 4, !tbaa !122
  %conv294 = sitofp i32 %367 to double
  %div295 = fdiv double %conv294, 2.048000e+03
  %add296 = fadd double 1.000000e+00, %div295
  %368 = load i32, i32* %numbps, align 4, !tbaa !1
  %369 = load %struct.opj_stepsize*, %struct.opj_stepsize** %l_step_size, align 8, !tbaa !5
  %expn = getelementptr inbounds %struct.opj_stepsize, %struct.opj_stepsize* %369, i32 0, i32 0
  %370 = load i32, i32* %expn, align 4, !tbaa !124
  %sub297 = sub nsw i32 %368, %370
  %conv298 = sitofp i32 %sub297 to double
  %call299 = call double @pow(double 2.000000e+00, double %conv298) #7
  %mul300 = fmul double %add296, %call299
  %conv301 = fptrunc double %mul300 to float
  %mul302 = fmul float %conv301, 5.000000e-01
  %371 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %stepsize = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %371, i32 0, i32 8
  store float %mul302, float* %stepsize, align 4, !tbaa !125
  %372 = load %struct.opj_stepsize*, %struct.opj_stepsize** %l_step_size, align 8, !tbaa !5
  %expn303 = getelementptr inbounds %struct.opj_stepsize, %struct.opj_stepsize* %372, i32 0, i32 0
  %373 = load i32, i32* %expn303, align 4, !tbaa !124
  %374 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %numgbits = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %374, i32 0, i32 8
  %375 = load i32, i32* %numgbits, align 4, !tbaa !126
  %add304 = add i32 %373, %375
  %sub305 = sub i32 %add304, 1
  %376 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %numbps306 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %376, i32 0, i32 7
  store i32 %sub305, i32* %numbps306, align 4, !tbaa !127
  %377 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %precincts = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %377, i32 0, i32 5
  %378 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %precincts, align 8, !tbaa !34
  %tobool307 = icmp ne %struct.opj_tcd_precinct* %378, null
  br i1 %tobool307, label %if.else.326, label %if.then.308

if.then.308:                                      ; preds = %if.end.290
  %379 = load i32, i32* %l_nb_precinct_size, align 4, !tbaa !1
  %conv309 = zext i32 %379 to i64
  %cmp310 = icmp uge i64 %conv309, -256
  br i1 %cmp310, label %cond.true.312, label %cond.false.313

cond.true.312:                                    ; preds = %if.then.308
  br label %cond.end.316

cond.false.313:                                   ; preds = %if.then.308
  %380 = load i32, i32* %l_nb_precinct_size, align 4, !tbaa !1
  %conv314 = zext i32 %380 to i64
  %call315 = call noalias i8* @malloc(i64 %conv314) #7
  br label %cond.end.316

cond.end.316:                                     ; preds = %cond.false.313, %cond.true.312
  %cond317 = phi i8* [ null, %cond.true.312 ], [ %call315, %cond.false.313 ]
  %381 = bitcast i8* %cond317 to %struct.opj_tcd_precinct*
  %382 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %precincts318 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %382, i32 0, i32 5
  store %struct.opj_tcd_precinct* %381, %struct.opj_tcd_precinct** %precincts318, align 8, !tbaa !34
  %383 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %precincts319 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %383, i32 0, i32 5
  %384 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %precincts319, align 8, !tbaa !34
  %tobool320 = icmp ne %struct.opj_tcd_precinct* %384, null
  br i1 %tobool320, label %if.end.322, label %if.then.321

if.then.321:                                      ; preds = %cond.end.316
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.574

if.end.322:                                       ; preds = %cond.end.316
  %385 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %precincts323 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %385, i32 0, i32 5
  %386 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %precincts323, align 8, !tbaa !34
  %387 = bitcast %struct.opj_tcd_precinct* %386 to i8*
  %388 = load i32, i32* %l_nb_precinct_size, align 4, !tbaa !1
  %conv324 = zext i32 %388 to i64
  %call325 = call i8* @memset(i8* %387, i32 0, i64 %conv324) #7
  %389 = load i32, i32* %l_nb_precinct_size, align 4, !tbaa !1
  %390 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %precincts_data_size = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %390, i32 0, i32 6
  store i32 %389, i32* %precincts_data_size, align 4, !tbaa !78
  br label %if.end.362

if.else.326:                                      ; preds = %if.end.290
  %391 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %precincts_data_size327 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %391, i32 0, i32 6
  %392 = load i32, i32* %precincts_data_size327, align 4, !tbaa !78
  %393 = load i32, i32* %l_nb_precinct_size, align 4, !tbaa !1
  %cmp328 = icmp ult i32 %392, %393
  br i1 %cmp328, label %if.then.330, label %if.end.361

if.then.330:                                      ; preds = %if.else.326
  %394 = bitcast %struct.opj_tcd_precinct** %new_precincts to i8*
  call void @llvm.lifetime.start(i64 8, i8* %394) #1
  %395 = load i32, i32* %l_nb_precinct_size, align 4, !tbaa !1
  %conv331 = zext i32 %395 to i64
  %cmp332 = icmp uge i64 %conv331, -256
  br i1 %cmp332, label %cond.true.334, label %cond.false.335

cond.true.334:                                    ; preds = %if.then.330
  br label %cond.end.339

cond.false.335:                                   ; preds = %if.then.330
  %396 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %precincts336 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %396, i32 0, i32 5
  %397 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %precincts336, align 8, !tbaa !34
  %398 = bitcast %struct.opj_tcd_precinct* %397 to i8*
  %399 = load i32, i32* %l_nb_precinct_size, align 4, !tbaa !1
  %conv337 = zext i32 %399 to i64
  %call338 = call i8* @realloc(i8* %398, i64 %conv337) #7
  br label %cond.end.339

cond.end.339:                                     ; preds = %cond.false.335, %cond.true.334
  %cond340 = phi i8* [ null, %cond.true.334 ], [ %call338, %cond.false.335 ]
  %400 = bitcast i8* %cond340 to %struct.opj_tcd_precinct*
  store %struct.opj_tcd_precinct* %400, %struct.opj_tcd_precinct** %new_precincts, align 8, !tbaa !5
  %401 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %new_precincts, align 8, !tbaa !5
  %tobool341 = icmp ne %struct.opj_tcd_precinct* %401, null
  br i1 %tobool341, label %if.end.347, label %if.then.342

if.then.342:                                      ; preds = %cond.end.339
  %402 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %call343 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %402, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i32 0, i32 0)) #8
  %403 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %precincts344 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %403, i32 0, i32 5
  %404 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %precincts344, align 8, !tbaa !34
  %405 = bitcast %struct.opj_tcd_precinct* %404 to i8*
  call void @free(i8* %405) #7
  %406 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %precincts345 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %406, i32 0, i32 5
  store %struct.opj_tcd_precinct* null, %struct.opj_tcd_precinct** %precincts345, align 8, !tbaa !34
  %407 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %precincts_data_size346 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %407, i32 0, i32 6
  store i32 0, i32* %precincts_data_size346, align 4, !tbaa !78
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.358

if.end.347:                                       ; preds = %cond.end.339
  %408 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %new_precincts, align 8, !tbaa !5
  %409 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %precincts348 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %409, i32 0, i32 5
  store %struct.opj_tcd_precinct* %408, %struct.opj_tcd_precinct** %precincts348, align 8, !tbaa !34
  %410 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %precincts349 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %410, i32 0, i32 5
  %411 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %precincts349, align 8, !tbaa !34
  %412 = bitcast %struct.opj_tcd_precinct* %411 to i8*
  %413 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %precincts_data_size350 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %413, i32 0, i32 6
  %414 = load i32, i32* %precincts_data_size350, align 4, !tbaa !78
  %idx.ext351 = zext i32 %414 to i64
  %add.ptr352 = getelementptr inbounds i8, i8* %412, i64 %idx.ext351
  %415 = load i32, i32* %l_nb_precinct_size, align 4, !tbaa !1
  %416 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %precincts_data_size353 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %416, i32 0, i32 6
  %417 = load i32, i32* %precincts_data_size353, align 4, !tbaa !78
  %sub354 = sub i32 %415, %417
  %conv355 = zext i32 %sub354 to i64
  %call356 = call i8* @memset(i8* %add.ptr352, i32 0, i64 %conv355) #7
  %418 = load i32, i32* %l_nb_precinct_size, align 4, !tbaa !1
  %419 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %precincts_data_size357 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %419, i32 0, i32 6
  store i32 %418, i32* %precincts_data_size357, align 4, !tbaa !78
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.358

cleanup.358:                                      ; preds = %if.end.347, %if.then.342
  %420 = bitcast %struct.opj_tcd_precinct** %new_precincts to i8*
  call void @llvm.lifetime.end(i64 8, i8* %420) #1
  %cleanup.dest.359 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.359, label %cleanup.574 [
    i32 0, label %cleanup.cont.360
  ]

cleanup.cont.360:                                 ; preds = %cleanup.358
  br label %if.end.361

if.end.361:                                       ; preds = %cleanup.cont.360, %if.else.326
  br label %if.end.362

if.end.362:                                       ; preds = %if.end.361, %if.end.322
  %421 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %precincts363 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %421, i32 0, i32 5
  %422 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %precincts363, align 8, !tbaa !34
  store %struct.opj_tcd_precinct* %422, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  store i32 0, i32* %precno, align 4, !tbaa !1
  br label %for.cond.364

for.cond.364:                                     ; preds = %for.inc.569, %if.end.362
  %423 = load i32, i32* %precno, align 4, !tbaa !1
  %424 = load i32, i32* %l_nb_precincts, align 4, !tbaa !1
  %cmp365 = icmp ult i32 %423, %424
  br i1 %cmp365, label %for.body.367, label %for.end.571

for.body.367:                                     ; preds = %for.cond.364
  %425 = bitcast i32* %tlcblkxstart to i8*
  call void @llvm.lifetime.start(i64 4, i8* %425) #1
  %426 = bitcast i32* %tlcblkystart to i8*
  call void @llvm.lifetime.start(i64 4, i8* %426) #1
  %427 = bitcast i32* %brcblkxend to i8*
  call void @llvm.lifetime.start(i64 4, i8* %427) #1
  %428 = bitcast i32* %brcblkyend to i8*
  call void @llvm.lifetime.start(i64 4, i8* %428) #1
  %429 = bitcast i32* %cbgxstart to i8*
  call void @llvm.lifetime.start(i64 4, i8* %429) #1
  %430 = load i32, i32* %tlcbgxstart, align 4, !tbaa !1
  %431 = load i32, i32* %precno, align 4, !tbaa !1
  %432 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %pw368 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %432, i32 0, i32 4
  %433 = load i32, i32* %pw368, align 4, !tbaa !32
  %rem369 = urem i32 %431, %433
  %434 = load i32, i32* %cbgwidthexpn, align 4, !tbaa !1
  %shl370 = shl i32 1, %434
  %mul371 = mul i32 %rem369, %shl370
  %add372 = add i32 %430, %mul371
  store i32 %add372, i32* %cbgxstart, align 4, !tbaa !1
  %435 = bitcast i32* %cbgystart to i8*
  call void @llvm.lifetime.start(i64 4, i8* %435) #1
  %436 = load i32, i32* %tlcbgystart, align 4, !tbaa !1
  %437 = load i32, i32* %precno, align 4, !tbaa !1
  %438 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %pw373 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %438, i32 0, i32 4
  %439 = load i32, i32* %pw373, align 4, !tbaa !32
  %div374 = udiv i32 %437, %439
  %440 = load i32, i32* %cbgheightexpn, align 4, !tbaa !1
  %shl375 = shl i32 1, %440
  %mul376 = mul i32 %div374, %shl375
  %add377 = add i32 %436, %mul376
  store i32 %add377, i32* %cbgystart, align 4, !tbaa !1
  %441 = bitcast i32* %cbgxend to i8*
  call void @llvm.lifetime.start(i64 4, i8* %441) #1
  %442 = load i32, i32* %cbgxstart, align 4, !tbaa !1
  %443 = load i32, i32* %cbgwidthexpn, align 4, !tbaa !1
  %shl378 = shl i32 1, %443
  %add379 = add nsw i32 %442, %shl378
  store i32 %add379, i32* %cbgxend, align 4, !tbaa !1
  %444 = bitcast i32* %cbgyend to i8*
  call void @llvm.lifetime.start(i64 4, i8* %444) #1
  %445 = load i32, i32* %cbgystart, align 4, !tbaa !1
  %446 = load i32, i32* %cbgheightexpn, align 4, !tbaa !1
  %shl380 = shl i32 1, %446
  %add381 = add nsw i32 %445, %shl380
  store i32 %add381, i32* %cbgyend, align 4, !tbaa !1
  %447 = load i32, i32* %cbgxstart, align 4, !tbaa !1
  %448 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %x0382 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %448, i32 0, i32 0
  %449 = load i32, i32* %x0382, align 4, !tbaa !118
  %call383 = call i32 @opj_int_max(i32 %447, i32 %449) #8
  %450 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %x0384 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %450, i32 0, i32 0
  store i32 %call383, i32* %x0384, align 4, !tbaa !128
  %451 = load i32, i32* %cbgystart, align 4, !tbaa !1
  %452 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %y0385 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %452, i32 0, i32 1
  %453 = load i32, i32* %y0385, align 4, !tbaa !119
  %call386 = call i32 @opj_int_max(i32 %451, i32 %453) #8
  %454 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %y0387 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %454, i32 0, i32 1
  store i32 %call386, i32* %y0387, align 4, !tbaa !129
  %455 = load i32, i32* %cbgxend, align 4, !tbaa !1
  %456 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %x1388 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %456, i32 0, i32 2
  %457 = load i32, i32* %x1388, align 4, !tbaa !120
  %call389 = call i32 @opj_int_min(i32 %455, i32 %457) #8
  %458 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %x1390 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %458, i32 0, i32 2
  store i32 %call389, i32* %x1390, align 4, !tbaa !130
  %459 = load i32, i32* %cbgyend, align 4, !tbaa !1
  %460 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %y1391 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %460, i32 0, i32 3
  %461 = load i32, i32* %y1391, align 4, !tbaa !121
  %call392 = call i32 @opj_int_min(i32 %459, i32 %461) #8
  %462 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %y1393 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %462, i32 0, i32 3
  store i32 %call392, i32* %y1393, align 4, !tbaa !131
  %463 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %x0394 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %463, i32 0, i32 0
  %464 = load i32, i32* %x0394, align 4, !tbaa !128
  %465 = load i32, i32* %cblkwidthexpn, align 4, !tbaa !1
  %call395 = call i32 @opj_int_floordivpow2(i32 %464, i32 %465) #8
  %466 = load i32, i32* %cblkwidthexpn, align 4, !tbaa !1
  %shl396 = shl i32 %call395, %466
  store i32 %shl396, i32* %tlcblkxstart, align 4, !tbaa !1
  %467 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %y0397 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %467, i32 0, i32 1
  %468 = load i32, i32* %y0397, align 4, !tbaa !129
  %469 = load i32, i32* %cblkheightexpn, align 4, !tbaa !1
  %call398 = call i32 @opj_int_floordivpow2(i32 %468, i32 %469) #8
  %470 = load i32, i32* %cblkheightexpn, align 4, !tbaa !1
  %shl399 = shl i32 %call398, %470
  store i32 %shl399, i32* %tlcblkystart, align 4, !tbaa !1
  %471 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %x1400 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %471, i32 0, i32 2
  %472 = load i32, i32* %x1400, align 4, !tbaa !130
  %473 = load i32, i32* %cblkwidthexpn, align 4, !tbaa !1
  %call401 = call i32 @opj_int_ceildivpow2(i32 %472, i32 %473) #8
  %474 = load i32, i32* %cblkwidthexpn, align 4, !tbaa !1
  %shl402 = shl i32 %call401, %474
  store i32 %shl402, i32* %brcblkxend, align 4, !tbaa !1
  %475 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %y1403 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %475, i32 0, i32 3
  %476 = load i32, i32* %y1403, align 4, !tbaa !131
  %477 = load i32, i32* %cblkheightexpn, align 4, !tbaa !1
  %call404 = call i32 @opj_int_ceildivpow2(i32 %476, i32 %477) #8
  %478 = load i32, i32* %cblkheightexpn, align 4, !tbaa !1
  %shl405 = shl i32 %call404, %478
  store i32 %shl405, i32* %brcblkyend, align 4, !tbaa !1
  %479 = load i32, i32* %brcblkxend, align 4, !tbaa !1
  %480 = load i32, i32* %tlcblkxstart, align 4, !tbaa !1
  %sub406 = sub nsw i32 %479, %480
  %481 = load i32, i32* %cblkwidthexpn, align 4, !tbaa !1
  %shr407 = ashr i32 %sub406, %481
  %482 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %cw = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %482, i32 0, i32 4
  store i32 %shr407, i32* %cw, align 4, !tbaa !37
  %483 = load i32, i32* %brcblkyend, align 4, !tbaa !1
  %484 = load i32, i32* %tlcblkystart, align 4, !tbaa !1
  %sub408 = sub nsw i32 %483, %484
  %485 = load i32, i32* %cblkheightexpn, align 4, !tbaa !1
  %shr409 = ashr i32 %sub408, %485
  %486 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %ch = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %486, i32 0, i32 5
  store i32 %shr409, i32* %ch, align 4, !tbaa !39
  %487 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %cw410 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %487, i32 0, i32 4
  %488 = load i32, i32* %cw410, align 4, !tbaa !37
  %489 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %ch411 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %489, i32 0, i32 5
  %490 = load i32, i32* %ch411, align 4, !tbaa !39
  %mul412 = mul i32 %488, %490
  store i32 %mul412, i32* %l_nb_code_blocks, align 4, !tbaa !1
  %491 = load i32, i32* %l_nb_code_blocks, align 4, !tbaa !1
  %conv413 = zext i32 %491 to i64
  %mul414 = mul i64 %conv413, 64
  %conv415 = trunc i64 %mul414 to i32
  store i32 %conv415, i32* %l_nb_code_blocks_size, align 4, !tbaa !1
  %492 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %cblks = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %492, i32 0, i32 6
  %dec = bitcast %union.anon* %cblks to %struct.opj_tcd_cblk_dec**
  %493 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %dec, align 8, !tbaa !5
  %tobool416 = icmp ne %struct.opj_tcd_cblk_dec* %493, null
  br i1 %tobool416, label %if.else.438, label %if.then.417

if.then.417:                                      ; preds = %for.body.367
  %494 = load i32, i32* %l_nb_code_blocks_size, align 4, !tbaa !1
  %conv418 = zext i32 %494 to i64
  %cmp419 = icmp uge i64 %conv418, -256
  br i1 %cmp419, label %cond.true.421, label %cond.false.422

cond.true.421:                                    ; preds = %if.then.417
  br label %cond.end.425

cond.false.422:                                   ; preds = %if.then.417
  %495 = load i32, i32* %l_nb_code_blocks_size, align 4, !tbaa !1
  %conv423 = zext i32 %495 to i64
  %call424 = call noalias i8* @malloc(i64 %conv423) #7
  br label %cond.end.425

cond.end.425:                                     ; preds = %cond.false.422, %cond.true.421
  %cond426 = phi i8* [ null, %cond.true.421 ], [ %call424, %cond.false.422 ]
  %496 = bitcast i8* %cond426 to %struct.opj_tcd_cblk_dec*
  %497 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %cblks427 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %497, i32 0, i32 6
  %dec428 = bitcast %union.anon* %cblks427 to %struct.opj_tcd_cblk_dec**
  store %struct.opj_tcd_cblk_dec* %496, %struct.opj_tcd_cblk_dec** %dec428, align 8, !tbaa !5
  %498 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %cblks429 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %498, i32 0, i32 6
  %dec430 = bitcast %union.anon* %cblks429 to %struct.opj_tcd_cblk_dec**
  %499 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %dec430, align 8, !tbaa !5
  %tobool431 = icmp ne %struct.opj_tcd_cblk_dec* %499, null
  br i1 %tobool431, label %if.end.433, label %if.then.432

if.then.432:                                      ; preds = %cond.end.425
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.559

if.end.433:                                       ; preds = %cond.end.425
  %500 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %cblks434 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %500, i32 0, i32 6
  %dec435 = bitcast %union.anon* %cblks434 to %struct.opj_tcd_cblk_dec**
  %501 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %dec435, align 8, !tbaa !5
  %502 = bitcast %struct.opj_tcd_cblk_dec* %501 to i8*
  %503 = load i32, i32* %l_nb_code_blocks_size, align 4, !tbaa !1
  %conv436 = zext i32 %503 to i64
  %call437 = call i8* @memset(i8* %502, i32 0, i64 %conv436) #7
  %504 = load i32, i32* %l_nb_code_blocks_size, align 4, !tbaa !1
  %505 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %block_size = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %505, i32 0, i32 7
  store i32 %504, i32* %block_size, align 4, !tbaa !132
  br label %if.end.479

if.else.438:                                      ; preds = %for.body.367
  %506 = load i32, i32* %l_nb_code_blocks_size, align 4, !tbaa !1
  %507 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %block_size439 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %507, i32 0, i32 7
  %508 = load i32, i32* %block_size439, align 4, !tbaa !132
  %cmp440 = icmp ugt i32 %506, %508
  br i1 %cmp440, label %if.then.442, label %if.end.478

if.then.442:                                      ; preds = %if.else.438
  %509 = bitcast %struct.opj_tcd_cblk_dec** %new_ELEMENT to i8*
  call void @llvm.lifetime.start(i64 8, i8* %509) #1
  %510 = load i32, i32* %l_nb_code_blocks_size, align 4, !tbaa !1
  %conv443 = zext i32 %510 to i64
  %cmp444 = icmp uge i64 %conv443, -256
  br i1 %cmp444, label %cond.true.446, label %cond.false.447

cond.true.446:                                    ; preds = %if.then.442
  br label %cond.end.452

cond.false.447:                                   ; preds = %if.then.442
  %511 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %cblks448 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %511, i32 0, i32 6
  %dec449 = bitcast %union.anon* %cblks448 to %struct.opj_tcd_cblk_dec**
  %512 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %dec449, align 8, !tbaa !5
  %513 = bitcast %struct.opj_tcd_cblk_dec* %512 to i8*
  %514 = load i32, i32* %l_nb_code_blocks_size, align 4, !tbaa !1
  %conv450 = zext i32 %514 to i64
  %call451 = call i8* @realloc(i8* %513, i64 %conv450) #7
  br label %cond.end.452

cond.end.452:                                     ; preds = %cond.false.447, %cond.true.446
  %cond453 = phi i8* [ null, %cond.true.446 ], [ %call451, %cond.false.447 ]
  %515 = bitcast i8* %cond453 to %struct.opj_tcd_cblk_dec*
  store %struct.opj_tcd_cblk_dec* %515, %struct.opj_tcd_cblk_dec** %new_ELEMENT, align 8, !tbaa !5
  %516 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %new_ELEMENT, align 8, !tbaa !5
  %tobool454 = icmp ne %struct.opj_tcd_cblk_dec* %516, null
  br i1 %tobool454, label %if.end.462, label %if.then.455

if.then.455:                                      ; preds = %cond.end.452
  %517 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %cblks456 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %517, i32 0, i32 6
  %dec457 = bitcast %union.anon* %cblks456 to %struct.opj_tcd_cblk_dec**
  %518 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %dec457, align 8, !tbaa !5
  %519 = bitcast %struct.opj_tcd_cblk_dec* %518 to i8*
  call void @free(i8* %519) #7
  %520 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %cblks458 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %520, i32 0, i32 6
  %dec459 = bitcast %union.anon* %cblks458 to %struct.opj_tcd_cblk_dec**
  store %struct.opj_tcd_cblk_dec* null, %struct.opj_tcd_cblk_dec** %dec459, align 8, !tbaa !5
  %521 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %block_size460 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %521, i32 0, i32 7
  store i32 0, i32* %block_size460, align 4, !tbaa !132
  %522 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %call461 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %522, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i32 0, i32 0)) #8
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.475

if.end.462:                                       ; preds = %cond.end.452
  %523 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %new_ELEMENT, align 8, !tbaa !5
  %524 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %cblks463 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %524, i32 0, i32 6
  %dec464 = bitcast %union.anon* %cblks463 to %struct.opj_tcd_cblk_dec**
  store %struct.opj_tcd_cblk_dec* %523, %struct.opj_tcd_cblk_dec** %dec464, align 8, !tbaa !5
  %525 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %cblks465 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %525, i32 0, i32 6
  %dec466 = bitcast %union.anon* %cblks465 to %struct.opj_tcd_cblk_dec**
  %526 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %dec466, align 8, !tbaa !5
  %527 = bitcast %struct.opj_tcd_cblk_dec* %526 to i8*
  %528 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %block_size467 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %528, i32 0, i32 7
  %529 = load i32, i32* %block_size467, align 4, !tbaa !132
  %idx.ext468 = zext i32 %529 to i64
  %add.ptr469 = getelementptr inbounds i8, i8* %527, i64 %idx.ext468
  %530 = load i32, i32* %l_nb_code_blocks_size, align 4, !tbaa !1
  %531 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %block_size470 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %531, i32 0, i32 7
  %532 = load i32, i32* %block_size470, align 4, !tbaa !132
  %sub471 = sub i32 %530, %532
  %conv472 = zext i32 %sub471 to i64
  %call473 = call i8* @memset(i8* %add.ptr469, i32 0, i64 %conv472) #7
  %533 = load i32, i32* %l_nb_code_blocks_size, align 4, !tbaa !1
  %534 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %block_size474 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %534, i32 0, i32 7
  store i32 %533, i32* %block_size474, align 4, !tbaa !132
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.475

cleanup.475:                                      ; preds = %if.end.462, %if.then.455
  %535 = bitcast %struct.opj_tcd_cblk_dec** %new_ELEMENT to i8*
  call void @llvm.lifetime.end(i64 8, i8* %535) #1
  %cleanup.dest.476 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.476, label %cleanup.559 [
    i32 0, label %cleanup.cont.477
  ]

cleanup.cont.477:                                 ; preds = %cleanup.475
  br label %if.end.478

if.end.478:                                       ; preds = %cleanup.cont.477, %if.else.438
  br label %if.end.479

if.end.479:                                       ; preds = %if.end.478, %if.end.433
  %536 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %incltree = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %536, i32 0, i32 8
  %537 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %incltree, align 8, !tbaa !79
  %tobool480 = icmp ne %struct.opj_tgt_tree* %537, null
  br i1 %tobool480, label %if.else.486, label %if.then.481

if.then.481:                                      ; preds = %if.end.479
  %538 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %cw482 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %538, i32 0, i32 4
  %539 = load i32, i32* %cw482, align 4, !tbaa !37
  %540 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %ch483 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %540, i32 0, i32 5
  %541 = load i32, i32* %ch483, align 4, !tbaa !39
  %call484 = call %struct.opj_tgt_tree* @opj_tgt_create(i32 %539, i32 %541) #8
  %542 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %incltree485 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %542, i32 0, i32 8
  store %struct.opj_tgt_tree* %call484, %struct.opj_tgt_tree** %incltree485, align 8, !tbaa !79
  br label %if.end.492

if.else.486:                                      ; preds = %if.end.479
  %543 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %incltree487 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %543, i32 0, i32 8
  %544 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %incltree487, align 8, !tbaa !79
  %545 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %cw488 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %545, i32 0, i32 4
  %546 = load i32, i32* %cw488, align 4, !tbaa !37
  %547 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %ch489 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %547, i32 0, i32 5
  %548 = load i32, i32* %ch489, align 4, !tbaa !39
  %call490 = call %struct.opj_tgt_tree* @opj_tgt_init(%struct.opj_tgt_tree* %544, i32 %546, i32 %548) #8
  %549 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %incltree491 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %549, i32 0, i32 8
  store %struct.opj_tgt_tree* %call490, %struct.opj_tgt_tree** %incltree491, align 8, !tbaa !79
  br label %if.end.492

if.end.492:                                       ; preds = %if.else.486, %if.then.481
  %550 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %incltree493 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %550, i32 0, i32 8
  %551 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %incltree493, align 8, !tbaa !79
  %tobool494 = icmp ne %struct.opj_tgt_tree* %551, null
  br i1 %tobool494, label %if.end.497, label %if.then.495

if.then.495:                                      ; preds = %if.end.492
  %552 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %call496 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %552, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0)) #8
  br label %if.end.497

if.end.497:                                       ; preds = %if.then.495, %if.end.492
  %553 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %imsbtree = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %553, i32 0, i32 9
  %554 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %imsbtree, align 8, !tbaa !80
  %tobool498 = icmp ne %struct.opj_tgt_tree* %554, null
  br i1 %tobool498, label %if.else.504, label %if.then.499

if.then.499:                                      ; preds = %if.end.497
  %555 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %cw500 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %555, i32 0, i32 4
  %556 = load i32, i32* %cw500, align 4, !tbaa !37
  %557 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %ch501 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %557, i32 0, i32 5
  %558 = load i32, i32* %ch501, align 4, !tbaa !39
  %call502 = call %struct.opj_tgt_tree* @opj_tgt_create(i32 %556, i32 %558) #8
  %559 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %imsbtree503 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %559, i32 0, i32 9
  store %struct.opj_tgt_tree* %call502, %struct.opj_tgt_tree** %imsbtree503, align 8, !tbaa !80
  br label %if.end.510

if.else.504:                                      ; preds = %if.end.497
  %560 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %imsbtree505 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %560, i32 0, i32 9
  %561 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %imsbtree505, align 8, !tbaa !80
  %562 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %cw506 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %562, i32 0, i32 4
  %563 = load i32, i32* %cw506, align 4, !tbaa !37
  %564 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %ch507 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %564, i32 0, i32 5
  %565 = load i32, i32* %ch507, align 4, !tbaa !39
  %call508 = call %struct.opj_tgt_tree* @opj_tgt_init(%struct.opj_tgt_tree* %561, i32 %563, i32 %565) #8
  %566 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %imsbtree509 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %566, i32 0, i32 9
  store %struct.opj_tgt_tree* %call508, %struct.opj_tgt_tree** %imsbtree509, align 8, !tbaa !80
  br label %if.end.510

if.end.510:                                       ; preds = %if.else.504, %if.then.499
  %567 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %imsbtree511 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %567, i32 0, i32 9
  %568 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %imsbtree511, align 8, !tbaa !80
  %tobool512 = icmp ne %struct.opj_tgt_tree* %568, null
  br i1 %tobool512, label %if.end.515, label %if.then.513

if.then.513:                                      ; preds = %if.end.510
  %569 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %call514 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %569, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0)) #8
  br label %if.end.515

if.end.515:                                       ; preds = %if.then.513, %if.end.510
  %570 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %cblks516 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %570, i32 0, i32 6
  %dec517 = bitcast %union.anon* %cblks516 to %struct.opj_tcd_cblk_dec**
  %571 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %dec517, align 8, !tbaa !5
  store %struct.opj_tcd_cblk_dec* %571, %struct.opj_tcd_cblk_dec** %l_code_block, align 8, !tbaa !5
  store i32 0, i32* %cblkno, align 4, !tbaa !1
  br label %for.cond.518

for.cond.518:                                     ; preds = %for.inc, %if.end.515
  %572 = load i32, i32* %cblkno, align 4, !tbaa !1
  %573 = load i32, i32* %l_nb_code_blocks, align 4, !tbaa !1
  %cmp519 = icmp ult i32 %572, %573
  br i1 %cmp519, label %for.body.521, label %for.end

for.body.521:                                     ; preds = %for.cond.518
  %574 = bitcast i32* %cblkxstart to i8*
  call void @llvm.lifetime.start(i64 4, i8* %574) #1
  %575 = load i32, i32* %tlcblkxstart, align 4, !tbaa !1
  %576 = load i32, i32* %cblkno, align 4, !tbaa !1
  %577 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %cw522 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %577, i32 0, i32 4
  %578 = load i32, i32* %cw522, align 4, !tbaa !37
  %rem523 = urem i32 %576, %578
  %579 = load i32, i32* %cblkwidthexpn, align 4, !tbaa !1
  %shl524 = shl i32 1, %579
  %mul525 = mul i32 %rem523, %shl524
  %add526 = add i32 %575, %mul525
  store i32 %add526, i32* %cblkxstart, align 4, !tbaa !1
  %580 = bitcast i32* %cblkystart to i8*
  call void @llvm.lifetime.start(i64 4, i8* %580) #1
  %581 = load i32, i32* %tlcblkystart, align 4, !tbaa !1
  %582 = load i32, i32* %cblkno, align 4, !tbaa !1
  %583 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %cw527 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %583, i32 0, i32 4
  %584 = load i32, i32* %cw527, align 4, !tbaa !37
  %div528 = udiv i32 %582, %584
  %585 = load i32, i32* %cblkheightexpn, align 4, !tbaa !1
  %shl529 = shl i32 1, %585
  %mul530 = mul i32 %div528, %shl529
  %add531 = add i32 %581, %mul530
  store i32 %add531, i32* %cblkystart, align 4, !tbaa !1
  %586 = bitcast i32* %cblkxend to i8*
  call void @llvm.lifetime.start(i64 4, i8* %586) #1
  %587 = load i32, i32* %cblkxstart, align 4, !tbaa !1
  %588 = load i32, i32* %cblkwidthexpn, align 4, !tbaa !1
  %shl532 = shl i32 1, %588
  %add533 = add nsw i32 %587, %shl532
  store i32 %add533, i32* %cblkxend, align 4, !tbaa !1
  %589 = bitcast i32* %cblkyend to i8*
  call void @llvm.lifetime.start(i64 4, i8* %589) #1
  %590 = load i32, i32* %cblkystart, align 4, !tbaa !1
  %591 = load i32, i32* %cblkheightexpn, align 4, !tbaa !1
  %shl534 = shl i32 1, %591
  %add535 = add nsw i32 %590, %shl534
  store i32 %add535, i32* %cblkyend, align 4, !tbaa !1
  %592 = load i32, i32* %cblkxstart, align 4, !tbaa !1
  %593 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %x0536 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %593, i32 0, i32 0
  %594 = load i32, i32* %x0536, align 4, !tbaa !128
  %call537 = call i32 @opj_int_max(i32 %592, i32 %594) #8
  %595 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_code_block, align 8, !tbaa !5
  %x0538 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %595, i32 0, i32 2
  store i32 %call537, i32* %x0538, align 4, !tbaa !134
  %596 = load i32, i32* %cblkystart, align 4, !tbaa !1
  %597 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %y0539 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %597, i32 0, i32 1
  %598 = load i32, i32* %y0539, align 4, !tbaa !129
  %call540 = call i32 @opj_int_max(i32 %596, i32 %598) #8
  %599 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_code_block, align 8, !tbaa !5
  %y0541 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %599, i32 0, i32 3
  store i32 %call540, i32* %y0541, align 4, !tbaa !136
  %600 = load i32, i32* %cblkxend, align 4, !tbaa !1
  %601 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %x1542 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %601, i32 0, i32 2
  %602 = load i32, i32* %x1542, align 4, !tbaa !130
  %call543 = call i32 @opj_int_min(i32 %600, i32 %602) #8
  %603 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_code_block, align 8, !tbaa !5
  %x1544 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %603, i32 0, i32 4
  store i32 %call543, i32* %x1544, align 4, !tbaa !137
  %604 = load i32, i32* %cblkyend, align 4, !tbaa !1
  %605 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %y1545 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %605, i32 0, i32 3
  %606 = load i32, i32* %y1545, align 4, !tbaa !131
  %call546 = call i32 @opj_int_min(i32 %604, i32 %606) #8
  %607 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_code_block, align 8, !tbaa !5
  %y1547 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %607, i32 0, i32 5
  store i32 %call546, i32* %y1547, align 4, !tbaa !138
  %608 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_code_block, align 8, !tbaa !5
  %call548 = call i32 @opj_tcd_code_block_dec_allocate(%struct.opj_tcd_cblk_dec* %608) #8
  %tobool549 = icmp ne i32 %call548, 0
  br i1 %tobool549, label %if.end.551, label %if.then.550

if.then.550:                                      ; preds = %for.body.521
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.552

if.end.551:                                       ; preds = %for.body.521
  %609 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_code_block, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %609, i32 1
  store %struct.opj_tcd_cblk_dec* %incdec.ptr, %struct.opj_tcd_cblk_dec** %l_code_block, align 8, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.552

cleanup.552:                                      ; preds = %if.end.551, %if.then.550
  %610 = bitcast i32* %cblkyend to i8*
  call void @llvm.lifetime.end(i64 4, i8* %610) #1
  %611 = bitcast i32* %cblkxend to i8*
  call void @llvm.lifetime.end(i64 4, i8* %611) #1
  %612 = bitcast i32* %cblkystart to i8*
  call void @llvm.lifetime.end(i64 4, i8* %612) #1
  %613 = bitcast i32* %cblkxstart to i8*
  call void @llvm.lifetime.end(i64 4, i8* %613) #1
  %cleanup.dest.556 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.556, label %cleanup.559 [
    i32 0, label %cleanup.cont.557
  ]

cleanup.cont.557:                                 ; preds = %cleanup.552
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont.557
  %614 = load i32, i32* %cblkno, align 4, !tbaa !1
  %inc = add i32 %614, 1
  store i32 %inc, i32* %cblkno, align 4, !tbaa !1
  br label %for.cond.518

for.end:                                          ; preds = %for.cond.518
  %615 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  %incdec.ptr558 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %615, i32 1
  store %struct.opj_tcd_precinct* %incdec.ptr558, %struct.opj_tcd_precinct** %l_current_precinct, align 8, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.559

cleanup.559:                                      ; preds = %for.end, %cleanup.552, %cleanup.475, %if.then.432
  %616 = bitcast i32* %cbgyend to i8*
  call void @llvm.lifetime.end(i64 4, i8* %616) #1
  %617 = bitcast i32* %cbgxend to i8*
  call void @llvm.lifetime.end(i64 4, i8* %617) #1
  %618 = bitcast i32* %cbgystart to i8*
  call void @llvm.lifetime.end(i64 4, i8* %618) #1
  %619 = bitcast i32* %cbgxstart to i8*
  call void @llvm.lifetime.end(i64 4, i8* %619) #1
  %620 = bitcast i32* %brcblkyend to i8*
  call void @llvm.lifetime.end(i64 4, i8* %620) #1
  %621 = bitcast i32* %brcblkxend to i8*
  call void @llvm.lifetime.end(i64 4, i8* %621) #1
  %622 = bitcast i32* %tlcblkystart to i8*
  call void @llvm.lifetime.end(i64 4, i8* %622) #1
  %623 = bitcast i32* %tlcblkxstart to i8*
  call void @llvm.lifetime.end(i64 4, i8* %623) #1
  %cleanup.dest.567 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.567, label %cleanup.574 [
    i32 0, label %cleanup.cont.568
  ]

cleanup.cont.568:                                 ; preds = %cleanup.559
  br label %for.inc.569

for.inc.569:                                      ; preds = %cleanup.cont.568
  %624 = load i32, i32* %precno, align 4, !tbaa !1
  %inc570 = add i32 %624, 1
  store i32 %inc570, i32* %precno, align 4, !tbaa !1
  br label %for.cond.364

for.end.571:                                      ; preds = %for.cond.364
  %625 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %incdec.ptr572 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %625, i32 1
  store %struct.opj_tcd_band* %incdec.ptr572, %struct.opj_tcd_band** %l_band, align 8, !tbaa !5
  %626 = load %struct.opj_stepsize*, %struct.opj_stepsize** %l_step_size, align 8, !tbaa !5
  %incdec.ptr573 = getelementptr inbounds %struct.opj_stepsize, %struct.opj_stepsize* %626, i32 1
  store %struct.opj_stepsize* %incdec.ptr573, %struct.opj_stepsize** %l_step_size, align 8, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.574

cleanup.574:                                      ; preds = %for.end.571, %cleanup.559, %cleanup.358, %if.then.321
  %627 = bitcast i32* %numbps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %627) #1
  %cleanup.dest.575 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.575, label %cleanup.582 [
    i32 0, label %cleanup.cont.576
  ]

cleanup.cont.576:                                 ; preds = %cleanup.574
  br label %for.inc.577

for.inc.577:                                      ; preds = %cleanup.cont.576
  %628 = load i32, i32* %bandno, align 4, !tbaa !1
  %inc578 = add i32 %628, 1
  store i32 %inc578, i32* %bandno, align 4, !tbaa !1
  br label %for.cond.235

for.end.579:                                      ; preds = %for.cond.235
  %629 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %incdec.ptr580 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %629, i32 1
  store %struct.opj_tcd_resolution* %incdec.ptr580, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %630 = load i32, i32* %l_level_no, align 4, !tbaa !1
  %dec581 = add i32 %630, -1
  store i32 %dec581, i32* %l_level_no, align 4, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.582

cleanup.582:                                      ; preds = %for.end.579, %cleanup.574
  %631 = bitcast i32* %cblkheightexpn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %631) #1
  %632 = bitcast i32* %cblkwidthexpn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %632) #1
  %633 = bitcast i32* %cbgheightexpn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %633) #1
  %634 = bitcast i32* %cbgwidthexpn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %634) #1
  %635 = bitcast i32* %tlcbgystart to i8*
  call void @llvm.lifetime.end(i64 4, i8* %635) #1
  %636 = bitcast i32* %tlcbgxstart to i8*
  call void @llvm.lifetime.end(i64 4, i8* %636) #1
  %cleanup.dest.588 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.588, label %cleanup.599 [
    i32 0, label %cleanup.cont.589
  ]

cleanup.cont.589:                                 ; preds = %cleanup.582
  br label %for.inc.590

for.inc.590:                                      ; preds = %cleanup.cont.589
  %637 = load i32, i32* %resno, align 4, !tbaa !1
  %inc591 = add i32 %637, 1
  store i32 %inc591, i32* %resno, align 4, !tbaa !1
  br label %for.cond.165

for.end.592:                                      ; preds = %for.cond.165
  %638 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %incdec.ptr593 = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %638, i32 1
  store %struct.opj_tccp* %incdec.ptr593, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %639 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %incdec.ptr594 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %639, i32 1
  store %struct.opj_tcd_tilecomp* %incdec.ptr594, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %640 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_image_comp, align 8, !tbaa !5
  %incdec.ptr595 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %640, i32 1
  store %struct.opj_image_comp* %incdec.ptr595, %struct.opj_image_comp** %l_image_comp, align 8, !tbaa !5
  br label %for.inc.596

for.inc.596:                                      ; preds = %for.end.592
  %641 = load i32, i32* %compno, align 4, !tbaa !1
  %inc597 = add i32 %641, 1
  store i32 %inc597, i32* %compno, align 4, !tbaa !1
  br label %for.cond

for.end.598:                                      ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.599

cleanup.599:                                      ; preds = %for.end.598, %cleanup.582, %cleanup.152, %if.then.117, %cleanup, %if.then.70, %if.then
  %642 = bitcast i32* %l_data_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %642) #1
  %643 = bitcast i32* %l_nb_code_blocks_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %643) #1
  %644 = bitcast i32* %l_nb_code_blocks to i8*
  call void @llvm.lifetime.end(i64 4, i8* %644) #1
  %645 = bitcast i32* %l_nb_precinct_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %645) #1
  %646 = bitcast i32* %l_nb_precincts to i8*
  call void @llvm.lifetime.end(i64 4, i8* %646) #1
  %647 = bitcast i32* %l_br_prc_y_end to i8*
  call void @llvm.lifetime.end(i64 4, i8* %647) #1
  %648 = bitcast i32* %l_br_prc_x_end to i8*
  call void @llvm.lifetime.end(i64 4, i8* %648) #1
  %649 = bitcast i32* %l_tl_prc_y_start to i8*
  call void @llvm.lifetime.end(i64 4, i8* %649) #1
  %650 = bitcast i32* %l_tl_prc_x_start to i8*
  call void @llvm.lifetime.end(i64 4, i8* %650) #1
  %651 = bitcast i32* %l_y0b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %651) #1
  %652 = bitcast i32* %l_x0b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %652) #1
  %653 = bitcast i32* %l_gain to i8*
  call void @llvm.lifetime.end(i64 4, i8* %653) #1
  %654 = bitcast i32* %l_pdy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %654) #1
  %655 = bitcast i32* %l_pdx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %655) #1
  %656 = bitcast i32* %l_level_no to i8*
  call void @llvm.lifetime.end(i64 4, i8* %656) #1
  %657 = bitcast i32* %q to i8*
  call void @llvm.lifetime.end(i64 4, i8* %657) #1
  %658 = bitcast i32* %p to i8*
  call void @llvm.lifetime.end(i64 4, i8* %658) #1
  %659 = bitcast %struct.opj_image** %l_image to i8*
  call void @llvm.lifetime.end(i64 8, i8* %659) #1
  %660 = bitcast %struct.opj_tcd_cblk_dec** %l_code_block to i8*
  call void @llvm.lifetime.end(i64 8, i8* %660) #1
  %661 = bitcast %struct.opj_tcd_precinct** %l_current_precinct to i8*
  call void @llvm.lifetime.end(i64 8, i8* %661) #1
  %662 = bitcast %struct.opj_stepsize** %l_step_size to i8*
  call void @llvm.lifetime.end(i64 8, i8* %662) #1
  %663 = bitcast %struct.opj_tcd_band** %l_band to i8*
  call void @llvm.lifetime.end(i64 8, i8* %663) #1
  %664 = bitcast %struct.opj_tcd_resolution** %l_res to i8*
  call void @llvm.lifetime.end(i64 8, i8* %664) #1
  %665 = bitcast %struct.opj_image_comp** %l_image_comp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %665) #1
  %666 = bitcast %struct.opj_tcd_tilecomp** %l_tilec to i8*
  call void @llvm.lifetime.end(i64 8, i8* %666) #1
  %667 = bitcast %struct.opj_tccp** %l_tccp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %667) #1
  %668 = bitcast %struct.opj_tcd_tile** %l_tile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %668) #1
  %669 = bitcast %struct.opj_cp** %l_cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %669) #1
  %670 = bitcast %struct.opj_tcp** %l_tcp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %670) #1
  %671 = bitcast i32* %cblkno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %671) #1
  %672 = bitcast i32* %precno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %672) #1
  %673 = bitcast i32* %bandno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %673) #1
  %674 = bitcast i32* %resno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %674) #1
  %675 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %675) #1
  %676 = bitcast i32 (i32)** %l_gain_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %676) #1
  %677 = load i32, i32* %retval
  ret i32 %677
}

; Function Attrs: nounwind uwtable
define internal i32 @opj_tcd_code_block_dec_allocate(%struct.opj_tcd_cblk_dec* %p_code_block) #0 {
entry:
  %retval = alloca i32, align 4
  %p_code_block.addr = alloca %struct.opj_tcd_cblk_dec*, align 8
  %l_seg_size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.opj_tcd_cblk_dec* %p_code_block, %struct.opj_tcd_cblk_dec** %p_code_block.addr, align 8, !tbaa !5
  %0 = bitcast i32* %l_seg_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %p_code_block.addr, align 8, !tbaa !5
  %data = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %1, i32 0, i32 0
  %2 = load i8*, i8** %data, align 8, !tbaa !139
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.end.15, label %if.then

if.then:                                          ; preds = %entry
  %call = call noalias i8* @malloc(i64 8192) #7
  %3 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %p_code_block.addr, align 8, !tbaa !5
  %data1 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %3, i32 0, i32 0
  store i8* %call, i8** %data1, align 8, !tbaa !139
  %4 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %p_code_block.addr, align 8, !tbaa !5
  %data2 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %4, i32 0, i32 0
  %5 = load i8*, i8** %data2, align 8, !tbaa !139
  %tobool3 = icmp ne i8* %5, null
  br i1 %tobool3, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %6 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %p_code_block.addr, align 8, !tbaa !5
  %data_max_size = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %6, i32 0, i32 8
  store i32 8192, i32* %data_max_size, align 4, !tbaa !140
  store i32 400, i32* %l_seg_size, align 4, !tbaa !1
  %7 = load i32, i32* %l_seg_size, align 4, !tbaa !1
  %conv = zext i32 %7 to i64
  %cmp = icmp uge i64 %conv, -256
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %8 = load i32, i32* %l_seg_size, align 4, !tbaa !1
  %conv6 = zext i32 %8 to i64
  %call7 = call noalias i8* @malloc(i64 %conv6) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %call7, %cond.false ]
  %9 = bitcast i8* %cond to %struct.opj_tcd_seg*
  %10 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %p_code_block.addr, align 8, !tbaa !5
  %segs = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %10, i32 0, i32 1
  store %struct.opj_tcd_seg* %9, %struct.opj_tcd_seg** %segs, align 8, !tbaa !141
  %11 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %p_code_block.addr, align 8, !tbaa !5
  %segs8 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %11, i32 0, i32 1
  %12 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %segs8, align 8, !tbaa !141
  %tobool9 = icmp ne %struct.opj_tcd_seg* %12, null
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %cond.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %cond.end
  %13 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %p_code_block.addr, align 8, !tbaa !5
  %segs12 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %13, i32 0, i32 1
  %14 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %segs12, align 8, !tbaa !141
  %15 = bitcast %struct.opj_tcd_seg* %14 to i8*
  %16 = load i32, i32* %l_seg_size, align 4, !tbaa !1
  %conv13 = zext i32 %16 to i64
  %call14 = call i8* @memset(i8* %15, i32 0, i64 %conv13) #7
  %17 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %p_code_block.addr, align 8, !tbaa !5
  %m_current_max_segs = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %17, i32 0, i32 13
  store i32 10, i32* %m_current_max_segs, align 4, !tbaa !142
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.11, %entry
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.15, %if.then.10, %if.then.4
  %18 = bitcast i32* %l_seg_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define i32 @opj_tcd_get_decoded_tile_size(%struct.opj_tcd* %p_tcd) #0 {
entry:
  %p_tcd.addr = alloca %struct.opj_tcd*, align 8
  %i = alloca i32, align 4
  %l_data_size = alloca i32, align 4
  %l_img_comp = alloca %struct.opj_image_comp*, align 8
  %l_tile_comp = alloca %struct.opj_tcd_tilecomp*, align 8
  %l_res = alloca %struct.opj_tcd_resolution*, align 8
  %l_size_comp = alloca i32, align 4
  %l_remaining = alloca i32, align 4
  store %struct.opj_tcd* %p_tcd, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %l_data_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %l_data_size, align 4, !tbaa !1
  %2 = bitcast %struct.opj_image_comp** %l_img_comp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store %struct.opj_image_comp* null, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %3 = bitcast %struct.opj_tcd_tilecomp** %l_tile_comp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store %struct.opj_tcd_tilecomp* null, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %4 = bitcast %struct.opj_tcd_resolution** %l_res to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store %struct.opj_tcd_resolution* null, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %5 = bitcast i32* %l_size_comp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %l_remaining to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %tcd_image = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %7, i32 0, i32 5
  %8 = load %struct.opj_tcd_image*, %struct.opj_tcd_image** %tcd_image, align 8, !tbaa !7
  %tiles = getelementptr inbounds %struct.opj_tcd_image, %struct.opj_tcd_image* %8, i32 0, i32 0
  %9 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tiles, align 8, !tbaa !13
  %comps = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %9, i32 0, i32 5
  %10 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %comps, align 8, !tbaa !18
  store %struct.opj_tcd_tilecomp* %10, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %11 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %image = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %11, i32 0, i32 6
  %12 = load %struct.opj_image*, %struct.opj_image** %image, align 8, !tbaa !23
  %comps1 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %12, i32 0, i32 6
  %13 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps1, align 8, !tbaa !24
  store %struct.opj_image_comp* %13, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %14 = load i32, i32* %i, align 4, !tbaa !1
  %15 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %image2 = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %15, i32 0, i32 6
  %16 = load %struct.opj_image*, %struct.opj_image** %image2, align 8, !tbaa !23
  %numcomps = getelementptr inbounds %struct.opj_image, %struct.opj_image* %16, i32 0, i32 4
  %17 = load i32, i32* %numcomps, align 4, !tbaa !75
  %cmp = icmp ult i32 %14, %17
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %prec = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %18, i32 0, i32 6
  %19 = load i32, i32* %prec, align 4, !tbaa !26
  %shr = lshr i32 %19, 3
  store i32 %shr, i32* %l_size_comp, align 4, !tbaa !1
  %20 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %prec3 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %20, i32 0, i32 6
  %21 = load i32, i32* %prec3, align 4, !tbaa !26
  %and = and i32 %21, 7
  store i32 %and, i32* %l_remaining, align 4, !tbaa !1
  %22 = load i32, i32* %l_remaining, align 4, !tbaa !1
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %23 = load i32, i32* %l_size_comp, align 4, !tbaa !1
  %inc = add i32 %23, 1
  store i32 %inc, i32* %l_size_comp, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %24 = load i32, i32* %l_size_comp, align 4, !tbaa !1
  %cmp4 = icmp eq i32 %24, 3
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 4, i32* %l_size_comp, align 4, !tbaa !1
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  %25 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %resolutions = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %25, i32 0, i32 6
  %26 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %resolutions, align 8, !tbaa !29
  %27 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %minimum_num_resolutions = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %27, i32 0, i32 5
  %28 = load i32, i32* %minimum_num_resolutions, align 4, !tbaa !108
  %idx.ext = zext i32 %28 to i64
  %add.ptr = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %26, i64 %idx.ext
  %add.ptr7 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %add.ptr, i64 -1
  store %struct.opj_tcd_resolution* %add.ptr7, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %29 = load i32, i32* %l_size_comp, align 4, !tbaa !1
  %30 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %x1 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %30, i32 0, i32 2
  %31 = load i32, i32* %x1, align 4, !tbaa !113
  %32 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %x0 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %32, i32 0, i32 0
  %33 = load i32, i32* %x0, align 4, !tbaa !111
  %sub = sub nsw i32 %31, %33
  %mul = mul i32 %29, %sub
  %34 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %y1 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %34, i32 0, i32 3
  %35 = load i32, i32* %y1, align 4, !tbaa !114
  %36 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %y0 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %36, i32 0, i32 1
  %37 = load i32, i32* %y0, align 4, !tbaa !112
  %sub8 = sub nsw i32 %35, %37
  %mul9 = mul i32 %mul, %sub8
  %38 = load i32, i32* %l_data_size, align 4, !tbaa !1
  %add = add i32 %38, %mul9
  store i32 %add, i32* %l_data_size, align 4, !tbaa !1
  %39 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %39, i32 1
  store %struct.opj_image_comp* %incdec.ptr, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %40 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %incdec.ptr10 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %40, i32 1
  store %struct.opj_tcd_tilecomp* %incdec.ptr10, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %41 = load i32, i32* %i, align 4, !tbaa !1
  %inc11 = add i32 %41, 1
  store i32 %inc11, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %42 = load i32, i32* %l_data_size, align 4, !tbaa !1
  %43 = bitcast i32* %l_remaining to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast i32* %l_size_comp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast %struct.opj_tcd_resolution** %l_res to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = bitcast %struct.opj_tcd_tilecomp** %l_tile_comp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = bitcast %struct.opj_image_comp** %l_img_comp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast i32* %l_data_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  ret i32 %42
}

; Function Attrs: nounwind uwtable
define i32 @opj_tcd_encode_tile(%struct.opj_tcd* %p_tcd, i32 %p_tile_no, i8* %p_dest, i32* %p_data_written, i32 %p_max_length, %struct.opj_codestream_info* %p_cstr_info) #0 {
entry:
  %retval = alloca i32, align 4
  %p_tcd.addr = alloca %struct.opj_tcd*, align 8
  %p_tile_no.addr = alloca i32, align 4
  %p_dest.addr = alloca i8*, align 8
  %p_data_written.addr = alloca i32*, align 8
  %p_max_length.addr = alloca i32, align 4
  %p_cstr_info.addr = alloca %struct.opj_codestream_info*, align 8
  %l_num_packs = alloca i32, align 4
  %i = alloca i32, align 4
  %l_tilec_idx = alloca %struct.opj_tcd_tilecomp*, align 8
  %l_tccp = alloca %struct.opj_tccp*, align 8
  %l_res_idx = alloca %struct.opj_tcd_resolution*, align 8
  store %struct.opj_tcd* %p_tcd, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  store i32 %p_tile_no, i32* %p_tile_no.addr, align 4, !tbaa !1
  store i8* %p_dest, i8** %p_dest.addr, align 8, !tbaa !5
  store i32* %p_data_written, i32** %p_data_written.addr, align 8, !tbaa !5
  store i32 %p_max_length, i32* %p_max_length.addr, align 4, !tbaa !1
  store %struct.opj_codestream_info* %p_cstr_info, %struct.opj_codestream_info** %p_cstr_info.addr, align 8, !tbaa !5
  %0 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %cur_tp_num = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %0, i32 0, i32 2
  %1 = load i32, i32* %cur_tp_num, align 4, !tbaa !72
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.73

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %p_tile_no.addr, align 4, !tbaa !1
  %3 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %tcd_tileno = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %3, i32 0, i32 9
  store i32 %2, i32* %tcd_tileno, align 4, !tbaa !62
  %4 = load i32, i32* %p_tile_no.addr, align 4, !tbaa !1
  %idxprom = zext i32 %4 to i64
  %5 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %cp = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %5, i32 0, i32 7
  %6 = load %struct.opj_cp*, %struct.opj_cp** %cp, align 8, !tbaa !12
  %tcps = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %6, i32 0, i32 17
  %7 = load %struct.opj_tcp*, %struct.opj_tcp** %tcps, align 8, !tbaa !82
  %arrayidx = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %7, i64 %idxprom
  %8 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %tcp = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %8, i32 0, i32 8
  store %struct.opj_tcp* %arrayidx, %struct.opj_tcp** %tcp, align 8, !tbaa !9
  %9 = load %struct.opj_codestream_info*, %struct.opj_codestream_info** %p_cstr_info.addr, align 8, !tbaa !5
  %tobool = icmp ne %struct.opj_codestream_info* %9, null
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %10 = bitcast i32* %l_num_packs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 0, i32* %l_num_packs, align 4, !tbaa !1
  %11 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast %struct.opj_tcd_tilecomp** %l_tilec_idx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %tcd_image = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %13, i32 0, i32 5
  %14 = load %struct.opj_tcd_image*, %struct.opj_tcd_image** %tcd_image, align 8, !tbaa !7
  %tiles = getelementptr inbounds %struct.opj_tcd_image, %struct.opj_tcd_image* %14, i32 0, i32 0
  %15 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tiles, align 8, !tbaa !13
  %comps = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %15, i32 0, i32 5
  %16 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %comps, align 8, !tbaa !18
  %arrayidx2 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %16, i64 0
  store %struct.opj_tcd_tilecomp* %arrayidx2, %struct.opj_tcd_tilecomp** %l_tilec_idx, align 8, !tbaa !5
  %17 = bitcast %struct.opj_tccp** %l_tccp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %tcp3 = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %18, i32 0, i32 8
  %19 = load %struct.opj_tcp*, %struct.opj_tcp** %tcp3, align 8, !tbaa !9
  %tccps = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %19, i32 0, i32 13
  %20 = load %struct.opj_tccp*, %struct.opj_tccp** %tccps, align 8, !tbaa !84
  store %struct.opj_tccp* %20, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.1
  %21 = load i32, i32* %i, align 4, !tbaa !1
  %22 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec_idx, align 8, !tbaa !5
  %numresolutions = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %22, i32 0, i32 4
  %23 = load i32, i32* %numresolutions, align 4, !tbaa !19
  %cmp4 = icmp ult i32 %21, %23
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = bitcast %struct.opj_tcd_resolution** %l_res_idx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  %25 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom5 = zext i32 %25 to i64
  %26 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec_idx, align 8, !tbaa !5
  %resolutions = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %26, i32 0, i32 6
  %27 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %resolutions, align 8, !tbaa !29
  %arrayidx6 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %27, i64 %idxprom5
  store %struct.opj_tcd_resolution* %arrayidx6, %struct.opj_tcd_resolution** %l_res_idx, align 8, !tbaa !5
  %28 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res_idx, align 8, !tbaa !5
  %pw = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %28, i32 0, i32 4
  %29 = load i32, i32* %pw, align 4, !tbaa !32
  %30 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom7 = zext i32 %30 to i64
  %31 = load i32, i32* %p_tile_no.addr, align 4, !tbaa !1
  %idxprom8 = zext i32 %31 to i64
  %32 = load %struct.opj_codestream_info*, %struct.opj_codestream_info** %p_cstr_info.addr, align 8, !tbaa !5
  %tile = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %32, i32 0, i32 21
  %33 = load %struct.opj_tile_info*, %struct.opj_tile_info** %tile, align 8, !tbaa !63
  %arrayidx9 = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %33, i64 %idxprom8
  %pw10 = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %arrayidx9, i32 0, i32 5
  %arrayidx11 = getelementptr inbounds [33 x i32], [33 x i32]* %pw10, i32 0, i64 %idxprom7
  store i32 %29, i32* %arrayidx11, align 4, !tbaa !1
  %34 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res_idx, align 8, !tbaa !5
  %ph = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %34, i32 0, i32 5
  %35 = load i32, i32* %ph, align 4, !tbaa !33
  %36 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom12 = zext i32 %36 to i64
  %37 = load i32, i32* %p_tile_no.addr, align 4, !tbaa !1
  %idxprom13 = zext i32 %37 to i64
  %38 = load %struct.opj_codestream_info*, %struct.opj_codestream_info** %p_cstr_info.addr, align 8, !tbaa !5
  %tile14 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %38, i32 0, i32 21
  %39 = load %struct.opj_tile_info*, %struct.opj_tile_info** %tile14, align 8, !tbaa !63
  %arrayidx15 = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %39, i64 %idxprom13
  %ph16 = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %arrayidx15, i32 0, i32 6
  %arrayidx17 = getelementptr inbounds [33 x i32], [33 x i32]* %ph16, i32 0, i64 %idxprom12
  store i32 %35, i32* %arrayidx17, align 4, !tbaa !1
  %40 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res_idx, align 8, !tbaa !5
  %pw18 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %40, i32 0, i32 4
  %41 = load i32, i32* %pw18, align 4, !tbaa !32
  %42 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res_idx, align 8, !tbaa !5
  %ph19 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %42, i32 0, i32 5
  %43 = load i32, i32* %ph19, align 4, !tbaa !33
  %mul = mul i32 %41, %43
  %44 = load i32, i32* %l_num_packs, align 4, !tbaa !1
  %add = add i32 %44, %mul
  store i32 %add, i32* %l_num_packs, align 4, !tbaa !1
  %45 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom20 = zext i32 %45 to i64
  %46 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %prcw = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %46, i32 0, i32 10
  %arrayidx21 = getelementptr inbounds [33 x i32], [33 x i32]* %prcw, i32 0, i64 %idxprom20
  %47 = load i32, i32* %arrayidx21, align 4, !tbaa !1
  %48 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom22 = zext i32 %48 to i64
  %49 = load i32, i32* %p_tile_no.addr, align 4, !tbaa !1
  %idxprom23 = zext i32 %49 to i64
  %50 = load %struct.opj_codestream_info*, %struct.opj_codestream_info** %p_cstr_info.addr, align 8, !tbaa !5
  %tile24 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %50, i32 0, i32 21
  %51 = load %struct.opj_tile_info*, %struct.opj_tile_info** %tile24, align 8, !tbaa !63
  %arrayidx25 = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %51, i64 %idxprom23
  %pdx = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %arrayidx25, i32 0, i32 7
  %arrayidx26 = getelementptr inbounds [33 x i32], [33 x i32]* %pdx, i32 0, i64 %idxprom22
  store i32 %47, i32* %arrayidx26, align 4, !tbaa !1
  %52 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom27 = zext i32 %52 to i64
  %53 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %prch = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %53, i32 0, i32 11
  %arrayidx28 = getelementptr inbounds [33 x i32], [33 x i32]* %prch, i32 0, i64 %idxprom27
  %54 = load i32, i32* %arrayidx28, align 4, !tbaa !1
  %55 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom29 = zext i32 %55 to i64
  %56 = load i32, i32* %p_tile_no.addr, align 4, !tbaa !1
  %idxprom30 = zext i32 %56 to i64
  %57 = load %struct.opj_codestream_info*, %struct.opj_codestream_info** %p_cstr_info.addr, align 8, !tbaa !5
  %tile31 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %57, i32 0, i32 21
  %58 = load %struct.opj_tile_info*, %struct.opj_tile_info** %tile31, align 8, !tbaa !63
  %arrayidx32 = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %58, i64 %idxprom30
  %pdy = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %arrayidx32, i32 0, i32 8
  %arrayidx33 = getelementptr inbounds [33 x i32], [33 x i32]* %pdy, i32 0, i64 %idxprom29
  store i32 %54, i32* %arrayidx33, align 4, !tbaa !1
  %59 = bitcast %struct.opj_tcd_resolution** %l_res_idx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %60 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add i32 %60, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %61 = load %struct.opj_codestream_info*, %struct.opj_codestream_info** %p_cstr_info.addr, align 8, !tbaa !5
  %numcomps = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %61, i32 0, i32 12
  %62 = load i32, i32* %numcomps, align 4, !tbaa !143
  %63 = load %struct.opj_codestream_info*, %struct.opj_codestream_info** %p_cstr_info.addr, align 8, !tbaa !5
  %numlayers = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %63, i32 0, i32 13
  %64 = load i32, i32* %numlayers, align 4, !tbaa !144
  %mul34 = mul nsw i32 %62, %64
  %65 = load i32, i32* %l_num_packs, align 4, !tbaa !1
  %mul35 = mul i32 %mul34, %65
  %conv = zext i32 %mul35 to i64
  %cmp36 = icmp ne i64 %conv, 0
  br i1 %cmp36, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %for.end
  %66 = load %struct.opj_codestream_info*, %struct.opj_codestream_info** %p_cstr_info.addr, align 8, !tbaa !5
  %numcomps38 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %66, i32 0, i32 12
  %67 = load i32, i32* %numcomps38, align 4, !tbaa !143
  %68 = load %struct.opj_codestream_info*, %struct.opj_codestream_info** %p_cstr_info.addr, align 8, !tbaa !5
  %numlayers39 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %68, i32 0, i32 13
  %69 = load i32, i32* %numlayers39, align 4, !tbaa !144
  %mul40 = mul nsw i32 %67, %69
  %70 = load i32, i32* %l_num_packs, align 4, !tbaa !1
  %mul41 = mul i32 %mul40, %70
  %conv42 = zext i32 %mul41 to i64
  %cmp43 = icmp uge i64 %conv42, 576460752303423480
  br i1 %cmp43, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %for.end
  %71 = load %struct.opj_codestream_info*, %struct.opj_codestream_info** %p_cstr_info.addr, align 8, !tbaa !5
  %numcomps45 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %71, i32 0, i32 12
  %72 = load i32, i32* %numcomps45, align 4, !tbaa !143
  %73 = load %struct.opj_codestream_info*, %struct.opj_codestream_info** %p_cstr_info.addr, align 8, !tbaa !5
  %numlayers46 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %73, i32 0, i32 13
  %74 = load i32, i32* %numlayers46, align 4, !tbaa !144
  %mul47 = mul nsw i32 %72, %74
  %75 = load i32, i32* %l_num_packs, align 4, !tbaa !1
  %mul48 = mul i32 %mul47, %75
  %conv49 = zext i32 %mul48 to i64
  %call = call noalias i8* @calloc(i64 %conv49, i64 32) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %call, %cond.false ]
  %76 = bitcast i8* %cond to %struct.opj_packet_info*
  %77 = load i32, i32* %p_tile_no.addr, align 4, !tbaa !1
  %idxprom50 = zext i32 %77 to i64
  %78 = load %struct.opj_codestream_info*, %struct.opj_codestream_info** %p_cstr_info.addr, align 8, !tbaa !5
  %tile51 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %78, i32 0, i32 21
  %79 = load %struct.opj_tile_info*, %struct.opj_tile_info** %tile51, align 8, !tbaa !63
  %arrayidx52 = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %79, i64 %idxprom50
  %packet = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %arrayidx52, i32 0, i32 9
  store %struct.opj_packet_info* %76, %struct.opj_packet_info** %packet, align 8, !tbaa !145
  %80 = bitcast %struct.opj_tccp** %l_tccp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #1
  %81 = bitcast %struct.opj_tcd_tilecomp** %l_tilec_idx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  %82 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  %83 = bitcast i32* %l_num_packs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  %84 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %call53 = call i32 @opj_tcd_dc_level_shift_encode(%struct.opj_tcd* %84) #8
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.end.56, label %if.then.55

if.then.55:                                       ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.56:                                        ; preds = %if.end
  %85 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %call57 = call i32 @opj_tcd_mct_encode(%struct.opj_tcd* %85) #8
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.end.60, label %if.then.59

if.then.59:                                       ; preds = %if.end.56
  store i32 0, i32* %retval
  br label %return

if.end.60:                                        ; preds = %if.end.56
  %86 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %call61 = call i32 @opj_tcd_dwt_encode(%struct.opj_tcd* %86) #8
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.end.64, label %if.then.63

if.then.63:                                       ; preds = %if.end.60
  store i32 0, i32* %retval
  br label %return

if.end.64:                                        ; preds = %if.end.60
  %87 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %call65 = call i32 @opj_tcd_t1_encode(%struct.opj_tcd* %87) #8
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.end.68, label %if.then.67

if.then.67:                                       ; preds = %if.end.64
  store i32 0, i32* %retval
  br label %return

if.end.68:                                        ; preds = %if.end.64
  %88 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %89 = load i8*, i8** %p_dest.addr, align 8, !tbaa !5
  %90 = load i32, i32* %p_max_length.addr, align 4, !tbaa !1
  %91 = load %struct.opj_codestream_info*, %struct.opj_codestream_info** %p_cstr_info.addr, align 8, !tbaa !5
  %call69 = call i32 @opj_tcd_rate_allocate_encode(%struct.opj_tcd* %88, i8* %89, i32 %90, %struct.opj_codestream_info* %91) #8
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.end.72, label %if.then.71

if.then.71:                                       ; preds = %if.end.68
  store i32 0, i32* %retval
  br label %return

if.end.72:                                        ; preds = %if.end.68
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %entry
  %92 = load %struct.opj_codestream_info*, %struct.opj_codestream_info** %p_cstr_info.addr, align 8, !tbaa !5
  %tobool74 = icmp ne %struct.opj_codestream_info* %92, null
  br i1 %tobool74, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.end.73
  %93 = load %struct.opj_codestream_info*, %struct.opj_codestream_info** %p_cstr_info.addr, align 8, !tbaa !5
  %index_write = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %93, i32 0, i32 2
  store i32 1, i32* %index_write, align 4, !tbaa !146
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.75, %if.end.73
  %94 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %95 = load i8*, i8** %p_dest.addr, align 8, !tbaa !5
  %96 = load i32*, i32** %p_data_written.addr, align 8, !tbaa !5
  %97 = load i32, i32* %p_max_length.addr, align 4, !tbaa !1
  %98 = load %struct.opj_codestream_info*, %struct.opj_codestream_info** %p_cstr_info.addr, align 8, !tbaa !5
  %call77 = call i32 @opj_tcd_t2_encode(%struct.opj_tcd* %94, i8* %95, i32* %96, i32 %97, %struct.opj_codestream_info* %98) #8
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.end.80, label %if.then.79

if.then.79:                                       ; preds = %if.end.76
  store i32 0, i32* %retval
  br label %return

if.end.80:                                        ; preds = %if.end.76
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.80, %if.then.79, %if.then.71, %if.then.67, %if.then.63, %if.then.59, %if.then.55
  %99 = load i32, i32* %retval
  ret i32 %99
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @opj_tcd_dc_level_shift_encode(%struct.opj_tcd* %p_tcd) #0 {
entry:
  %p_tcd.addr = alloca %struct.opj_tcd*, align 8
  %compno = alloca i32, align 4
  %l_tile_comp = alloca %struct.opj_tcd_tilecomp*, align 8
  %l_tccp = alloca %struct.opj_tccp*, align 8
  %l_img_comp = alloca %struct.opj_image_comp*, align 8
  %l_tile = alloca %struct.opj_tcd_tile*, align 8
  %l_nb_elem = alloca i32, align 4
  %i = alloca i32, align 4
  %l_current_ptr = alloca i32*, align 8
  store %struct.opj_tcd* %p_tcd, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %0 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.opj_tcd_tilecomp** %l_tile_comp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store %struct.opj_tcd_tilecomp* null, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %2 = bitcast %struct.opj_tccp** %l_tccp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store %struct.opj_tccp* null, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %3 = bitcast %struct.opj_image_comp** %l_img_comp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store %struct.opj_image_comp* null, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %4 = bitcast %struct.opj_tcd_tile** %l_tile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %l_nb_elem to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32** %l_current_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %tcd_image = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %8, i32 0, i32 5
  %9 = load %struct.opj_tcd_image*, %struct.opj_tcd_image** %tcd_image, align 8, !tbaa !7
  %tiles = getelementptr inbounds %struct.opj_tcd_image, %struct.opj_tcd_image* %9, i32 0, i32 0
  %10 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tiles, align 8, !tbaa !13
  store %struct.opj_tcd_tile* %10, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %11 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %comps = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %11, i32 0, i32 5
  %12 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %comps, align 8, !tbaa !18
  store %struct.opj_tcd_tilecomp* %12, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %13 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %tcp = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %13, i32 0, i32 8
  %14 = load %struct.opj_tcp*, %struct.opj_tcp** %tcp, align 8, !tbaa !9
  %tccps = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %14, i32 0, i32 13
  %15 = load %struct.opj_tccp*, %struct.opj_tccp** %tccps, align 8, !tbaa !84
  store %struct.opj_tccp* %15, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %16 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %image = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %16, i32 0, i32 6
  %17 = load %struct.opj_image*, %struct.opj_image** %image, align 8, !tbaa !23
  %comps1 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %17, i32 0, i32 6
  %18 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps1, align 8, !tbaa !24
  store %struct.opj_image_comp* %18, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  store i32 0, i32* %compno, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.20, %entry
  %19 = load i32, i32* %compno, align 4, !tbaa !1
  %20 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %numcomps = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %20, i32 0, i32 4
  %21 = load i32, i32* %numcomps, align 4, !tbaa !15
  %cmp = icmp ult i32 %19, %21
  br i1 %cmp, label %for.body, label %for.end.22

for.body:                                         ; preds = %for.cond
  %22 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %data = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %22, i32 0, i32 8
  %23 = load i32*, i32** %data, align 8, !tbaa !81
  store i32* %23, i32** %l_current_ptr, align 8, !tbaa !5
  %24 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %x1 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %24, i32 0, i32 2
  %25 = load i32, i32* %x1, align 4, !tbaa !104
  %26 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %x0 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %26, i32 0, i32 0
  %27 = load i32, i32* %x0, align 4, !tbaa !101
  %sub = sub nsw i32 %25, %27
  %28 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %y1 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %28, i32 0, i32 3
  %29 = load i32, i32* %y1, align 4, !tbaa !105
  %30 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %y0 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %30, i32 0, i32 1
  %31 = load i32, i32* %y0, align 4, !tbaa !103
  %sub2 = sub nsw i32 %29, %31
  %mul = mul nsw i32 %sub, %sub2
  store i32 %mul, i32* %l_nb_elem, align 4, !tbaa !1
  %32 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %qmfbid = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %32, i32 0, i32 5
  %33 = load i32, i32* %qmfbid, align 4, !tbaa !110
  %cmp3 = icmp eq i32 %33, 1
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %if.then
  %34 = load i32, i32* %i, align 4, !tbaa !1
  %35 = load i32, i32* %l_nb_elem, align 4, !tbaa !1
  %cmp5 = icmp ult i32 %34, %35
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %36 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %m_dc_level_shift = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %36, i32 0, i32 12
  %37 = load i32, i32* %m_dc_level_shift, align 4, !tbaa !147
  %38 = load i32*, i32** %l_current_ptr, align 8, !tbaa !5
  %39 = load i32, i32* %38, align 4, !tbaa !1
  %sub7 = sub nsw i32 %39, %37
  store i32 %sub7, i32* %38, align 4, !tbaa !1
  %40 = load i32*, i32** %l_current_ptr, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %incdec.ptr, i32** %l_current_ptr, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %41 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add i32 %41, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %if.end

if.else:                                          ; preds = %for.body
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.14, %if.else
  %42 = load i32, i32* %i, align 4, !tbaa !1
  %43 = load i32, i32* %l_nb_elem, align 4, !tbaa !1
  %cmp9 = icmp ult i32 %42, %43
  br i1 %cmp9, label %for.body.10, label %for.end.16

for.body.10:                                      ; preds = %for.cond.8
  %44 = load i32*, i32** %l_current_ptr, align 8, !tbaa !5
  %45 = load i32, i32* %44, align 4, !tbaa !1
  %46 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %m_dc_level_shift11 = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %46, i32 0, i32 12
  %47 = load i32, i32* %m_dc_level_shift11, align 4, !tbaa !147
  %sub12 = sub nsw i32 %45, %47
  %shl = shl i32 %sub12, 11
  %48 = load i32*, i32** %l_current_ptr, align 8, !tbaa !5
  store i32 %shl, i32* %48, align 4, !tbaa !1
  %49 = load i32*, i32** %l_current_ptr, align 8, !tbaa !5
  %incdec.ptr13 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %incdec.ptr13, i32** %l_current_ptr, align 8, !tbaa !5
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.body.10
  %50 = load i32, i32* %i, align 4, !tbaa !1
  %inc15 = add i32 %50, 1
  store i32 %inc15, i32* %i, align 4, !tbaa !1
  br label %for.cond.8

for.end.16:                                       ; preds = %for.cond.8
  br label %if.end

if.end:                                           ; preds = %for.end.16, %for.end
  %51 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %incdec.ptr17 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %51, i32 1
  store %struct.opj_image_comp* %incdec.ptr17, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %52 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %incdec.ptr18 = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %52, i32 1
  store %struct.opj_tccp* %incdec.ptr18, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %53 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %incdec.ptr19 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %53, i32 1
  store %struct.opj_tcd_tilecomp* %incdec.ptr19, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  br label %for.inc.20

for.inc.20:                                       ; preds = %if.end
  %54 = load i32, i32* %compno, align 4, !tbaa !1
  %inc21 = add i32 %54, 1
  store i32 %inc21, i32* %compno, align 4, !tbaa !1
  br label %for.cond

for.end.22:                                       ; preds = %for.cond
  %55 = bitcast i32** %l_current_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %57 = bitcast i32* %l_nb_elem to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = bitcast %struct.opj_tcd_tile** %l_tile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %59 = bitcast %struct.opj_image_comp** %l_img_comp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = bitcast %struct.opj_tccp** %l_tccp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  %61 = bitcast %struct.opj_tcd_tilecomp** %l_tile_comp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %62 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @opj_tcd_mct_encode(%struct.opj_tcd* %p_tcd) #0 {
entry:
  %retval = alloca i32, align 4
  %p_tcd.addr = alloca %struct.opj_tcd*, align 8
  %l_tile = alloca %struct.opj_tcd_tile*, align 8
  %l_tile_comp = alloca %struct.opj_tcd_tilecomp*, align 8
  %samples = alloca i32, align 4
  %i = alloca i32, align 4
  %l_data = alloca i8**, align 8
  %l_tcp = alloca %struct.opj_tcp*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.opj_tcd* %p_tcd, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %0 = bitcast %struct.opj_tcd_tile** %l_tile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %tcd_image = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %1, i32 0, i32 5
  %2 = load %struct.opj_tcd_image*, %struct.opj_tcd_image** %tcd_image, align 8, !tbaa !7
  %tiles = getelementptr inbounds %struct.opj_tcd_image, %struct.opj_tcd_image* %2, i32 0, i32 0
  %3 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tiles, align 8, !tbaa !13
  store %struct.opj_tcd_tile* %3, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %4 = bitcast %struct.opj_tcd_tilecomp** %l_tile_comp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %tcd_image1 = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %5, i32 0, i32 5
  %6 = load %struct.opj_tcd_image*, %struct.opj_tcd_image** %tcd_image1, align 8, !tbaa !7
  %tiles2 = getelementptr inbounds %struct.opj_tcd_image, %struct.opj_tcd_image* %6, i32 0, i32 0
  %7 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tiles2, align 8, !tbaa !13
  %comps = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %7, i32 0, i32 5
  %8 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %comps, align 8, !tbaa !18
  store %struct.opj_tcd_tilecomp* %8, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %9 = bitcast i32* %samples to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %x1 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %10, i32 0, i32 2
  %11 = load i32, i32* %x1, align 4, !tbaa !104
  %12 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %x0 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %12, i32 0, i32 0
  %13 = load i32, i32* %x0, align 4, !tbaa !101
  %sub = sub nsw i32 %11, %13
  %14 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %y1 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %14, i32 0, i32 3
  %15 = load i32, i32* %y1, align 4, !tbaa !105
  %16 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %y0 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %16, i32 0, i32 1
  %17 = load i32, i32* %y0, align 4, !tbaa !103
  %sub3 = sub nsw i32 %15, %17
  %mul = mul nsw i32 %sub, %sub3
  store i32 %mul, i32* %samples, align 4, !tbaa !1
  %18 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast i8*** %l_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  store i8** null, i8*** %l_data, align 8, !tbaa !5
  %20 = bitcast %struct.opj_tcp** %l_tcp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %tcp = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %21, i32 0, i32 8
  %22 = load %struct.opj_tcp*, %struct.opj_tcp** %tcp, align 8, !tbaa !9
  store %struct.opj_tcp* %22, %struct.opj_tcp** %l_tcp, align 8, !tbaa !5
  %23 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %tcp4 = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %23, i32 0, i32 8
  %24 = load %struct.opj_tcp*, %struct.opj_tcp** %tcp4, align 8, !tbaa !9
  %mct = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %24, i32 0, i32 4
  %25 = load i32, i32* %mct, align 4, !tbaa !148
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %26 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %tcp5 = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %26, i32 0, i32 8
  %27 = load %struct.opj_tcp*, %struct.opj_tcp** %tcp5, align 8, !tbaa !9
  %mct6 = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %27, i32 0, i32 4
  %28 = load i32, i32* %mct6, align 4, !tbaa !148
  %cmp = icmp eq i32 %28, 2
  br i1 %cmp, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end
  %29 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %tcp8 = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %29, i32 0, i32 8
  %30 = load %struct.opj_tcp*, %struct.opj_tcp** %tcp8, align 8, !tbaa !9
  %m_mct_coding_matrix = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %30, i32 0, i32 19
  %31 = load float*, float** %m_mct_coding_matrix, align 8, !tbaa !149
  %tobool9 = icmp ne float* %31, null
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.then.7
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.then.7
  %32 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %numcomps = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %32, i32 0, i32 4
  %33 = load i32, i32* %numcomps, align 4, !tbaa !15
  %conv = zext i32 %33 to i64
  %mul12 = mul i64 %conv, 8
  %cmp13 = icmp uge i64 %mul12, -256
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.11
  br label %cond.end

cond.false:                                       ; preds = %if.end.11
  %34 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %numcomps15 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %34, i32 0, i32 4
  %35 = load i32, i32* %numcomps15, align 4, !tbaa !15
  %conv16 = zext i32 %35 to i64
  %mul17 = mul i64 %conv16, 8
  %call = call noalias i8* @malloc(i64 %mul17) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %call, %cond.false ]
  %36 = bitcast i8* %cond to i8**
  store i8** %36, i8*** %l_data, align 8, !tbaa !5
  %37 = load i8**, i8*** %l_data, align 8, !tbaa !5
  %tobool18 = icmp ne i8** %37, null
  br i1 %tobool18, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %cond.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %cond.end
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.20
  %38 = load i32, i32* %i, align 4, !tbaa !1
  %39 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %numcomps21 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %39, i32 0, i32 4
  %40 = load i32, i32* %numcomps21, align 4, !tbaa !15
  %cmp22 = icmp ult i32 %38, %40
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %41 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %data = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %41, i32 0, i32 8
  %42 = load i32*, i32** %data, align 8, !tbaa !81
  %43 = bitcast i32* %42 to i8*
  %44 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom = zext i32 %44 to i64
  %45 = load i8**, i8*** %l_data, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8*, i8** %45, i64 %idxprom
  store i8* %43, i8** %arrayidx, align 8, !tbaa !5
  %46 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %46, i32 1
  store %struct.opj_tcd_tilecomp* %incdec.ptr, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %47 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add i32 %47, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %48 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %tcp24 = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %48, i32 0, i32 8
  %49 = load %struct.opj_tcp*, %struct.opj_tcp** %tcp24, align 8, !tbaa !9
  %m_mct_coding_matrix25 = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %49, i32 0, i32 19
  %50 = load float*, float** %m_mct_coding_matrix25, align 8, !tbaa !149
  %51 = bitcast float* %50 to i8*
  %52 = load i32, i32* %samples, align 4, !tbaa !1
  %53 = load i8**, i8*** %l_data, align 8, !tbaa !5
  %54 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %numcomps26 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %54, i32 0, i32 4
  %55 = load i32, i32* %numcomps26, align 4, !tbaa !15
  %56 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %image = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %56, i32 0, i32 6
  %57 = load %struct.opj_image*, %struct.opj_image** %image, align 8, !tbaa !23
  %comps27 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %57, i32 0, i32 6
  %58 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps27, align 8, !tbaa !24
  %sgnd = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %58, i32 0, i32 8
  %59 = load i32, i32* %sgnd, align 4, !tbaa !150
  %call28 = call i32 @opj_mct_encode_custom(i8* %51, i32 %52, i8** %53, i32 %55, i32 %59) #8
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.end.31, label %if.then.30

if.then.30:                                       ; preds = %for.end
  %60 = load i8**, i8*** %l_data, align 8, !tbaa !5
  %61 = bitcast i8** %60 to i8*
  call void @free(i8* %61) #7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.31:                                        ; preds = %for.end
  %62 = load i8**, i8*** %l_data, align 8, !tbaa !5
  %63 = bitcast i8** %62 to i8*
  call void @free(i8* %63) #7
  br label %if.end.55

if.else:                                          ; preds = %if.end
  %64 = load %struct.opj_tcp*, %struct.opj_tcp** %l_tcp, align 8, !tbaa !5
  %tccps = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %64, i32 0, i32 13
  %65 = load %struct.opj_tccp*, %struct.opj_tccp** %tccps, align 8, !tbaa !84
  %qmfbid = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %65, i32 0, i32 5
  %66 = load i32, i32* %qmfbid, align 4, !tbaa !110
  %cmp32 = icmp eq i32 %66, 0
  br i1 %cmp32, label %if.then.34, label %if.else.44

if.then.34:                                       ; preds = %if.else
  %67 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %comps35 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %67, i32 0, i32 5
  %68 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %comps35, align 8, !tbaa !18
  %arrayidx36 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %68, i64 0
  %data37 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %arrayidx36, i32 0, i32 8
  %69 = load i32*, i32** %data37, align 8, !tbaa !81
  %70 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %comps38 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %70, i32 0, i32 5
  %71 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %comps38, align 8, !tbaa !18
  %arrayidx39 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %71, i64 1
  %data40 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %arrayidx39, i32 0, i32 8
  %72 = load i32*, i32** %data40, align 8, !tbaa !81
  %73 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %comps41 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %73, i32 0, i32 5
  %74 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %comps41, align 8, !tbaa !18
  %arrayidx42 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %74, i64 2
  %data43 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %arrayidx42, i32 0, i32 8
  %75 = load i32*, i32** %data43, align 8, !tbaa !81
  %76 = load i32, i32* %samples, align 4, !tbaa !1
  call void @opj_mct_encode_real(i32* %69, i32* %72, i32* %75, i32 %76) #8
  br label %if.end.54

if.else.44:                                       ; preds = %if.else
  %77 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %comps45 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %77, i32 0, i32 5
  %78 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %comps45, align 8, !tbaa !18
  %arrayidx46 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %78, i64 0
  %data47 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %arrayidx46, i32 0, i32 8
  %79 = load i32*, i32** %data47, align 8, !tbaa !81
  %80 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %comps48 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %80, i32 0, i32 5
  %81 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %comps48, align 8, !tbaa !18
  %arrayidx49 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %81, i64 1
  %data50 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %arrayidx49, i32 0, i32 8
  %82 = load i32*, i32** %data50, align 8, !tbaa !81
  %83 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %comps51 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %83, i32 0, i32 5
  %84 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %comps51, align 8, !tbaa !18
  %arrayidx52 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %84, i64 2
  %data53 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %arrayidx52, i32 0, i32 8
  %85 = load i32*, i32** %data53, align 8, !tbaa !81
  %86 = load i32, i32* %samples, align 4, !tbaa !1
  call void @opj_mct_encode(i32* %79, i32* %82, i32* %85, i32 %86) #8
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.44, %if.then.34
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.end.31
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.55, %if.then.30, %if.then.19, %if.then.10, %if.then
  %87 = bitcast %struct.opj_tcp** %l_tcp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #1
  %88 = bitcast i8*** %l_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #1
  %89 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #1
  %90 = bitcast i32* %samples to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  %91 = bitcast %struct.opj_tcd_tilecomp** %l_tile_comp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #1
  %92 = bitcast %struct.opj_tcd_tile** %l_tile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #1
  %93 = load i32, i32* %retval
  ret i32 %93
}

; Function Attrs: nounwind uwtable
define internal i32 @opj_tcd_dwt_encode(%struct.opj_tcd* %p_tcd) #0 {
entry:
  %retval = alloca i32, align 4
  %p_tcd.addr = alloca %struct.opj_tcd*, align 8
  %l_tile = alloca %struct.opj_tcd_tile*, align 8
  %l_tile_comp = alloca %struct.opj_tcd_tilecomp*, align 8
  %l_tccp = alloca %struct.opj_tccp*, align 8
  %compno = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.opj_tcd* %p_tcd, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %0 = bitcast %struct.opj_tcd_tile** %l_tile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %tcd_image = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %1, i32 0, i32 5
  %2 = load %struct.opj_tcd_image*, %struct.opj_tcd_image** %tcd_image, align 8, !tbaa !7
  %tiles = getelementptr inbounds %struct.opj_tcd_image, %struct.opj_tcd_image* %2, i32 0, i32 0
  %3 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tiles, align 8, !tbaa !13
  store %struct.opj_tcd_tile* %3, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %4 = bitcast %struct.opj_tcd_tilecomp** %l_tile_comp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %tcd_image1 = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %5, i32 0, i32 5
  %6 = load %struct.opj_tcd_image*, %struct.opj_tcd_image** %tcd_image1, align 8, !tbaa !7
  %tiles2 = getelementptr inbounds %struct.opj_tcd_image, %struct.opj_tcd_image* %6, i32 0, i32 0
  %7 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tiles2, align 8, !tbaa !13
  %comps = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %7, i32 0, i32 5
  %8 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %comps, align 8, !tbaa !18
  store %struct.opj_tcd_tilecomp* %8, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %9 = bitcast %struct.opj_tccp** %l_tccp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %tcp = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %10, i32 0, i32 8
  %11 = load %struct.opj_tcp*, %struct.opj_tcp** %tcp, align 8, !tbaa !9
  %tccps = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %11, i32 0, i32 13
  %12 = load %struct.opj_tccp*, %struct.opj_tccp** %tccps, align 8, !tbaa !84
  store %struct.opj_tccp* %12, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %13 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 0, i32* %compno, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %14 = load i32, i32* %compno, align 4, !tbaa !1
  %15 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %numcomps = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %15, i32 0, i32 4
  %16 = load i32, i32* %numcomps, align 4, !tbaa !15
  %cmp = icmp ult i32 %14, %16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %qmfbid = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %17, i32 0, i32 5
  %18 = load i32, i32* %qmfbid, align 4, !tbaa !110
  %cmp3 = icmp eq i32 %18, 1
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %19 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %call = call i32 @opj_dwt_encode(%struct.opj_tcd_tilecomp* %19) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  br label %if.end.13

if.else:                                          ; preds = %for.body
  %20 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %qmfbid5 = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %20, i32 0, i32 5
  %21 = load i32, i32* %qmfbid5, align 4, !tbaa !110
  %cmp6 = icmp eq i32 %21, 0
  br i1 %cmp6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %if.else
  %22 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %call8 = call i32 @opj_dwt_encode_real(%struct.opj_tcd_tilecomp* %22) #8
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.then.7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.then.7
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.else
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.end
  %23 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %23, i32 1
  store %struct.opj_tcd_tilecomp* %incdec.ptr, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %24 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %incdec.ptr14 = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %24, i32 1
  store %struct.opj_tccp* %incdec.ptr14, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %25 = load i32, i32* %compno, align 4, !tbaa !1
  %inc = add i32 %25, 1
  store i32 %inc, i32* %compno, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.10, %if.then.4
  %26 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast %struct.opj_tccp** %l_tccp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = bitcast %struct.opj_tcd_tilecomp** %l_tile_comp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = bitcast %struct.opj_tcd_tile** %l_tile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal i32 @opj_tcd_t1_encode(%struct.opj_tcd* %p_tcd) #0 {
entry:
  %retval = alloca i32, align 4
  %p_tcd.addr = alloca %struct.opj_tcd*, align 8
  %l_t1 = alloca %struct.opj_t1*, align 8
  %l_mct_norms = alloca double*, align 8
  %l_tcp = alloca %struct.opj_tcp*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.opj_tcd* %p_tcd, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %0 = bitcast %struct.opj_t1** %l_t1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast double** %l_mct_norms to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.opj_tcp** %l_tcp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %tcp = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %3, i32 0, i32 8
  %4 = load %struct.opj_tcp*, %struct.opj_tcp** %tcp, align 8, !tbaa !9
  store %struct.opj_tcp* %4, %struct.opj_tcp** %l_tcp, align 8, !tbaa !5
  %call = call %struct.opj_t1* @opj_t1_create() #8
  store %struct.opj_t1* %call, %struct.opj_t1** %l_t1, align 8, !tbaa !5
  %5 = load %struct.opj_t1*, %struct.opj_t1** %l_t1, align 8, !tbaa !5
  %cmp = icmp eq %struct.opj_t1* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.opj_tcp*, %struct.opj_tcp** %l_tcp, align 8, !tbaa !5
  %mct = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %6, i32 0, i32 4
  %7 = load i32, i32* %mct, align 4, !tbaa !148
  %cmp1 = icmp eq i32 %7, 1
  br i1 %cmp1, label %if.then.2, label %if.else.8

if.then.2:                                        ; preds = %if.end
  %8 = load %struct.opj_tcp*, %struct.opj_tcp** %l_tcp, align 8, !tbaa !5
  %tccps = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %8, i32 0, i32 13
  %9 = load %struct.opj_tccp*, %struct.opj_tccp** %tccps, align 8, !tbaa !84
  %qmfbid = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %9, i32 0, i32 5
  %10 = load i32, i32* %qmfbid, align 4, !tbaa !110
  %cmp3 = icmp eq i32 %10, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then.2
  %call5 = call double* @opj_mct_get_mct_norms_real() #8
  store double* %call5, double** %l_mct_norms, align 8, !tbaa !5
  br label %if.end.7

if.else:                                          ; preds = %if.then.2
  %call6 = call double* @opj_mct_get_mct_norms() #8
  store double* %call6, double** %l_mct_norms, align 8, !tbaa !5
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.4
  br label %if.end.9

if.else.8:                                        ; preds = %if.end
  %11 = load %struct.opj_tcp*, %struct.opj_tcp** %l_tcp, align 8, !tbaa !5
  %mct_norms = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %11, i32 0, i32 17
  %12 = load double*, double** %mct_norms, align 8, !tbaa !151
  store double* %12, double** %l_mct_norms, align 8, !tbaa !5
  br label %if.end.9

if.end.9:                                         ; preds = %if.else.8, %if.end.7
  %13 = load %struct.opj_t1*, %struct.opj_t1** %l_t1, align 8, !tbaa !5
  %14 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %tcd_image = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %14, i32 0, i32 5
  %15 = load %struct.opj_tcd_image*, %struct.opj_tcd_image** %tcd_image, align 8, !tbaa !7
  %tiles = getelementptr inbounds %struct.opj_tcd_image, %struct.opj_tcd_image* %15, i32 0, i32 0
  %16 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tiles, align 8, !tbaa !13
  %17 = load %struct.opj_tcp*, %struct.opj_tcp** %l_tcp, align 8, !tbaa !5
  %18 = load double*, double** %l_mct_norms, align 8, !tbaa !5
  %call10 = call i32 @opj_t1_encode_cblks(%struct.opj_t1* %13, %struct.opj_tcd_tile* %16, %struct.opj_tcp* %17, double* %18) #8
  %tobool = icmp ne i32 %call10, 0
  br i1 %tobool, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.end.9
  %19 = load %struct.opj_t1*, %struct.opj_t1** %l_t1, align 8, !tbaa !5
  call void @opj_t1_destroy(%struct.opj_t1* %19) #8
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end.9
  %20 = load %struct.opj_t1*, %struct.opj_t1** %l_t1, align 8, !tbaa !5
  call void @opj_t1_destroy(%struct.opj_t1* %20) #8
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.12, %if.then.11, %if.then
  %21 = bitcast %struct.opj_tcp** %l_tcp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = bitcast double** %l_mct_norms to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast %struct.opj_t1** %l_t1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal i32 @opj_tcd_rate_allocate_encode(%struct.opj_tcd* %p_tcd, i8* %p_dest_data, i32 %p_max_dest_size, %struct.opj_codestream_info* %p_cstr_info) #0 {
entry:
  %retval = alloca i32, align 4
  %p_tcd.addr = alloca %struct.opj_tcd*, align 8
  %p_dest_data.addr = alloca i8*, align 8
  %p_max_dest_size.addr = alloca i32, align 4
  %p_cstr_info.addr = alloca %struct.opj_codestream_info*, align 8
  %l_cp = alloca %struct.opj_cp*, align 8
  %l_nb_written = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.opj_tcd* %p_tcd, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  store i8* %p_dest_data, i8** %p_dest_data.addr, align 8, !tbaa !5
  store i32 %p_max_dest_size, i32* %p_max_dest_size.addr, align 4, !tbaa !1
  store %struct.opj_codestream_info* %p_cstr_info, %struct.opj_codestream_info** %p_cstr_info.addr, align 8, !tbaa !5
  %0 = bitcast %struct.opj_cp** %l_cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %cp = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %1, i32 0, i32 7
  %2 = load %struct.opj_cp*, %struct.opj_cp** %cp, align 8, !tbaa !12
  store %struct.opj_cp* %2, %struct.opj_cp** %l_cp, align 8, !tbaa !5
  %3 = bitcast i32* %l_nb_written to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %l_nb_written, align 4, !tbaa !1
  %4 = load %struct.opj_codestream_info*, %struct.opj_codestream_info** %p_cstr_info.addr, align 8, !tbaa !5
  %tobool = icmp ne %struct.opj_codestream_info* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.opj_codestream_info*, %struct.opj_codestream_info** %p_cstr_info.addr, align 8, !tbaa !5
  %index_write = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %5, i32 0, i32 2
  store i32 0, i32* %index_write, align 4, !tbaa !146
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.opj_cp*, %struct.opj_cp** %l_cp, align 8, !tbaa !5
  %m_specific_param = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %6, i32 0, i32 18
  %m_enc = bitcast %union.anon.0* %m_specific_param to %struct.opj_encoding_param*
  %m_disto_alloc = getelementptr inbounds %struct.opj_encoding_param, %struct.opj_encoding_param* %m_enc, i32 0, i32 5
  %bf.load = load i8, i8* %m_disto_alloc, align 1
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool1 = icmp ne i32 %bf.cast, 0
  br i1 %tobool1, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %7 = load %struct.opj_cp*, %struct.opj_cp** %l_cp, align 8, !tbaa !5
  %m_specific_param2 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %7, i32 0, i32 18
  %m_enc3 = bitcast %union.anon.0* %m_specific_param2 to %struct.opj_encoding_param*
  %m_fixed_quality = getelementptr inbounds %struct.opj_encoding_param, %struct.opj_encoding_param* %m_enc3, i32 0, i32 5
  %bf.load4 = load i8, i8* %m_fixed_quality, align 1
  %bf.lshr = lshr i8 %bf.load4, 2
  %bf.clear5 = and i8 %bf.lshr, 1
  %bf.cast6 = zext i8 %bf.clear5 to i32
  %tobool7 = icmp ne i32 %bf.cast6, 0
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %lor.lhs.false, %if.end
  %8 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %9 = load i8*, i8** %p_dest_data.addr, align 8, !tbaa !5
  %10 = load i32, i32* %p_max_dest_size.addr, align 4, !tbaa !1
  %11 = load %struct.opj_codestream_info*, %struct.opj_codestream_info** %p_cstr_info.addr, align 8, !tbaa !5
  %call = call i32 @opj_tcd_rateallocate(%struct.opj_tcd* %8, i8* %9, i32* %l_nb_written, i32 %10, %struct.opj_codestream_info* %11) #8
  %tobool9 = icmp ne i32 %call, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.then.8
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.then.8
  br label %if.end.12

if.else:                                          ; preds = %lor.lhs.false
  %12 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  call void @opj_tcd_rateallocate_fixed(%struct.opj_tcd* %12) #8
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.end.11
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.12, %if.then.10
  %13 = bitcast i32* %l_nb_written to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = bitcast %struct.opj_cp** %l_cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @opj_tcd_t2_encode(%struct.opj_tcd* %p_tcd, i8* %p_dest_data, i32* %p_data_written, i32 %p_max_dest_size, %struct.opj_codestream_info* %p_cstr_info) #0 {
entry:
  %retval = alloca i32, align 4
  %p_tcd.addr = alloca %struct.opj_tcd*, align 8
  %p_dest_data.addr = alloca i8*, align 8
  %p_data_written.addr = alloca i32*, align 8
  %p_max_dest_size.addr = alloca i32, align 4
  %p_cstr_info.addr = alloca %struct.opj_codestream_info*, align 8
  %l_t2 = alloca %struct.opj_t2*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.opj_tcd* %p_tcd, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  store i8* %p_dest_data, i8** %p_dest_data.addr, align 8, !tbaa !5
  store i32* %p_data_written, i32** %p_data_written.addr, align 8, !tbaa !5
  store i32 %p_max_dest_size, i32* %p_max_dest_size.addr, align 4, !tbaa !1
  store %struct.opj_codestream_info* %p_cstr_info, %struct.opj_codestream_info** %p_cstr_info.addr, align 8, !tbaa !5
  %0 = bitcast %struct.opj_t2** %l_t2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %image = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %1, i32 0, i32 6
  %2 = load %struct.opj_image*, %struct.opj_image** %image, align 8, !tbaa !23
  %3 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %cp = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %3, i32 0, i32 7
  %4 = load %struct.opj_cp*, %struct.opj_cp** %cp, align 8, !tbaa !12
  %call = call %struct.opj_t2* @opj_t2_create(%struct.opj_image* %2, %struct.opj_cp* %4) #8
  store %struct.opj_t2* %call, %struct.opj_t2** %l_t2, align 8, !tbaa !5
  %5 = load %struct.opj_t2*, %struct.opj_t2** %l_t2, align 8, !tbaa !5
  %cmp = icmp eq %struct.opj_t2* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.opj_t2*, %struct.opj_t2** %l_t2, align 8, !tbaa !5
  %7 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %tcd_tileno = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %7, i32 0, i32 9
  %8 = load i32, i32* %tcd_tileno, align 4, !tbaa !62
  %9 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %tcd_image = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %9, i32 0, i32 5
  %10 = load %struct.opj_tcd_image*, %struct.opj_tcd_image** %tcd_image, align 8, !tbaa !7
  %tiles = getelementptr inbounds %struct.opj_tcd_image, %struct.opj_tcd_image* %10, i32 0, i32 0
  %11 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tiles, align 8, !tbaa !13
  %12 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %tcp = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %12, i32 0, i32 8
  %13 = load %struct.opj_tcp*, %struct.opj_tcp** %tcp, align 8, !tbaa !9
  %numlayers = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %13, i32 0, i32 2
  %14 = load i32, i32* %numlayers, align 4, !tbaa !10
  %15 = load i8*, i8** %p_dest_data.addr, align 8, !tbaa !5
  %16 = load i32*, i32** %p_data_written.addr, align 8, !tbaa !5
  %17 = load i32, i32* %p_max_dest_size.addr, align 4, !tbaa !1
  %18 = load %struct.opj_codestream_info*, %struct.opj_codestream_info** %p_cstr_info.addr, align 8, !tbaa !5
  %19 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %tp_num = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %19, i32 0, i32 1
  %20 = load i32, i32* %tp_num, align 4, !tbaa !152
  %21 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %tp_pos = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %21, i32 0, i32 0
  %22 = load i32, i32* %tp_pos, align 4, !tbaa !73
  %23 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %cur_pino = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %23, i32 0, i32 4
  %24 = load i32, i32* %cur_pino, align 4, !tbaa !74
  %call1 = call i32 @opj_t2_encode_packets(%struct.opj_t2* %6, i32 %8, %struct.opj_tcd_tile* %11, i32 %14, i8* %15, i32* %16, i32 %17, %struct.opj_codestream_info* %18, i32 %20, i32 %22, i32 %24, i32 1) #8
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %25 = load %struct.opj_t2*, %struct.opj_t2** %l_t2, align 8, !tbaa !5
  call void @opj_t2_destroy(%struct.opj_t2* %25) #8
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %26 = load %struct.opj_t2*, %struct.opj_t2** %l_t2, align 8, !tbaa !5
  call void @opj_t2_destroy(%struct.opj_t2* %26) #8
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.3, %if.then.2, %if.then
  %27 = bitcast %struct.opj_t2** %l_t2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define i32 @opj_tcd_decode_tile(%struct.opj_tcd* %p_tcd, i8* %p_src, i32 %p_max_length, i32 %p_tile_no, %struct.opj_codestream_index* %p_cstr_index) #0 {
entry:
  %retval = alloca i32, align 4
  %p_tcd.addr = alloca %struct.opj_tcd*, align 8
  %p_src.addr = alloca i8*, align 8
  %p_max_length.addr = alloca i32, align 4
  %p_tile_no.addr = alloca i32, align 4
  %p_cstr_index.addr = alloca %struct.opj_codestream_index*, align 8
  %l_data_read = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.opj_tcd* %p_tcd, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  store i8* %p_src, i8** %p_src.addr, align 8, !tbaa !5
  store i32 %p_max_length, i32* %p_max_length.addr, align 4, !tbaa !1
  store i32 %p_tile_no, i32* %p_tile_no.addr, align 4, !tbaa !1
  store %struct.opj_codestream_index* %p_cstr_index, %struct.opj_codestream_index** %p_cstr_index.addr, align 8, !tbaa !5
  %0 = bitcast i32* %l_data_read to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %p_tile_no.addr, align 4, !tbaa !1
  %2 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %tcd_tileno = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %2, i32 0, i32 9
  store i32 %1, i32* %tcd_tileno, align 4, !tbaa !62
  %3 = load i32, i32* %p_tile_no.addr, align 4, !tbaa !1
  %idxprom = zext i32 %3 to i64
  %4 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %cp = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %4, i32 0, i32 7
  %5 = load %struct.opj_cp*, %struct.opj_cp** %cp, align 8, !tbaa !12
  %tcps = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %5, i32 0, i32 17
  %6 = load %struct.opj_tcp*, %struct.opj_tcp** %tcps, align 8, !tbaa !82
  %arrayidx = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %6, i64 %idxprom
  %7 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %tcp = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %7, i32 0, i32 8
  store %struct.opj_tcp* %arrayidx, %struct.opj_tcp** %tcp, align 8, !tbaa !9
  store i32 0, i32* %l_data_read, align 4, !tbaa !1
  %8 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %9 = load i8*, i8** %p_src.addr, align 8, !tbaa !5
  %10 = load i32, i32* %p_max_length.addr, align 4, !tbaa !1
  %11 = load %struct.opj_codestream_index*, %struct.opj_codestream_index** %p_cstr_index.addr, align 8, !tbaa !5
  %call = call i32 @opj_tcd_t2_decode(%struct.opj_tcd* %8, i8* %9, i32* %l_data_read, i32 %10, %struct.opj_codestream_index* %11) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %call1 = call i32 @opj_tcd_t1_decode(%struct.opj_tcd* %12) #8
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %13 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %call5 = call i32 @opj_tcd_dwt_decode(%struct.opj_tcd* %13) #8
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end.4
  %14 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %call9 = call i32 @opj_tcd_mct_decode(%struct.opj_tcd* %14) #8
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.end.8
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end.8
  %15 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %call13 = call i32 @opj_tcd_dc_level_shift_decode(%struct.opj_tcd* %15) #8
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.end.12
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.end.12
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.16, %if.then.15, %if.then.11, %if.then.7, %if.then.3, %if.then
  %16 = bitcast i32* %l_data_read to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @opj_tcd_t2_decode(%struct.opj_tcd* %p_tcd, i8* %p_src_data, i32* %p_data_read, i32 %p_max_src_size, %struct.opj_codestream_index* %p_cstr_index) #0 {
entry:
  %retval = alloca i32, align 4
  %p_tcd.addr = alloca %struct.opj_tcd*, align 8
  %p_src_data.addr = alloca i8*, align 8
  %p_data_read.addr = alloca i32*, align 8
  %p_max_src_size.addr = alloca i32, align 4
  %p_cstr_index.addr = alloca %struct.opj_codestream_index*, align 8
  %l_t2 = alloca %struct.opj_t2*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.opj_tcd* %p_tcd, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  store i8* %p_src_data, i8** %p_src_data.addr, align 8, !tbaa !5
  store i32* %p_data_read, i32** %p_data_read.addr, align 8, !tbaa !5
  store i32 %p_max_src_size, i32* %p_max_src_size.addr, align 4, !tbaa !1
  store %struct.opj_codestream_index* %p_cstr_index, %struct.opj_codestream_index** %p_cstr_index.addr, align 8, !tbaa !5
  %0 = bitcast %struct.opj_t2** %l_t2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %image = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %1, i32 0, i32 6
  %2 = load %struct.opj_image*, %struct.opj_image** %image, align 8, !tbaa !23
  %3 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %cp = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %3, i32 0, i32 7
  %4 = load %struct.opj_cp*, %struct.opj_cp** %cp, align 8, !tbaa !12
  %call = call %struct.opj_t2* @opj_t2_create(%struct.opj_image* %2, %struct.opj_cp* %4) #8
  store %struct.opj_t2* %call, %struct.opj_t2** %l_t2, align 8, !tbaa !5
  %5 = load %struct.opj_t2*, %struct.opj_t2** %l_t2, align 8, !tbaa !5
  %cmp = icmp eq %struct.opj_t2* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.opj_t2*, %struct.opj_t2** %l_t2, align 8, !tbaa !5
  %7 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %tcd_tileno = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %7, i32 0, i32 9
  %8 = load i32, i32* %tcd_tileno, align 4, !tbaa !62
  %9 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %tcd_image = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %9, i32 0, i32 5
  %10 = load %struct.opj_tcd_image*, %struct.opj_tcd_image** %tcd_image, align 8, !tbaa !7
  %tiles = getelementptr inbounds %struct.opj_tcd_image, %struct.opj_tcd_image* %10, i32 0, i32 0
  %11 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tiles, align 8, !tbaa !13
  %12 = load i8*, i8** %p_src_data.addr, align 8, !tbaa !5
  %13 = load i32*, i32** %p_data_read.addr, align 8, !tbaa !5
  %14 = load i32, i32* %p_max_src_size.addr, align 4, !tbaa !1
  %15 = load %struct.opj_codestream_index*, %struct.opj_codestream_index** %p_cstr_index.addr, align 8, !tbaa !5
  %call1 = call i32 @opj_t2_decode_packets(%struct.opj_t2* %6, i32 %8, %struct.opj_tcd_tile* %11, i8* %12, i32* %13, i32 %14, %struct.opj_codestream_index* %15) #8
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %16 = load %struct.opj_t2*, %struct.opj_t2** %l_t2, align 8, !tbaa !5
  call void @opj_t2_destroy(%struct.opj_t2* %16) #8
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %17 = load %struct.opj_t2*, %struct.opj_t2** %l_t2, align 8, !tbaa !5
  call void @opj_t2_destroy(%struct.opj_t2* %17) #8
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.3, %if.then.2, %if.then
  %18 = bitcast %struct.opj_t2** %l_t2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @opj_tcd_t1_decode(%struct.opj_tcd* %p_tcd) #0 {
entry:
  %retval = alloca i32, align 4
  %p_tcd.addr = alloca %struct.opj_tcd*, align 8
  %compno = alloca i32, align 4
  %l_t1 = alloca %struct.opj_t1*, align 8
  %l_tile = alloca %struct.opj_tcd_tile*, align 8
  %l_tile_comp = alloca %struct.opj_tcd_tilecomp*, align 8
  %l_tccp = alloca %struct.opj_tccp*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.opj_tcd* %p_tcd, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %0 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.opj_t1** %l_t1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.opj_tcd_tile** %l_tile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %tcd_image = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %3, i32 0, i32 5
  %4 = load %struct.opj_tcd_image*, %struct.opj_tcd_image** %tcd_image, align 8, !tbaa !7
  %tiles = getelementptr inbounds %struct.opj_tcd_image, %struct.opj_tcd_image* %4, i32 0, i32 0
  %5 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tiles, align 8, !tbaa !13
  store %struct.opj_tcd_tile* %5, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %6 = bitcast %struct.opj_tcd_tilecomp** %l_tile_comp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %comps = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %7, i32 0, i32 5
  %8 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %comps, align 8, !tbaa !18
  store %struct.opj_tcd_tilecomp* %8, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %9 = bitcast %struct.opj_tccp** %l_tccp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %tcp = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %10, i32 0, i32 8
  %11 = load %struct.opj_tcp*, %struct.opj_tcp** %tcp, align 8, !tbaa !9
  %tccps = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %11, i32 0, i32 13
  %12 = load %struct.opj_tccp*, %struct.opj_tccp** %tccps, align 8, !tbaa !84
  store %struct.opj_tccp* %12, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %call = call %struct.opj_t1* @opj_t1_create() #8
  store %struct.opj_t1* %call, %struct.opj_t1** %l_t1, align 8, !tbaa !5
  %13 = load %struct.opj_t1*, %struct.opj_t1** %l_t1, align 8, !tbaa !5
  %cmp = icmp eq %struct.opj_t1* %13, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %compno, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %14 = load i32, i32* %compno, align 4, !tbaa !1
  %15 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %numcomps = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %15, i32 0, i32 4
  %16 = load i32, i32* %numcomps, align 4, !tbaa !15
  %cmp1 = icmp ult i32 %14, %16
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load %struct.opj_t1*, %struct.opj_t1** %l_t1, align 8, !tbaa !5
  %18 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %19 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %call2 = call i32 @opj_t1_decode_cblks(%struct.opj_t1* %17, %struct.opj_tcd_tilecomp* %18, %struct.opj_tccp* %19) #8
  %cmp3 = icmp eq i32 0, %call2
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %for.body
  %20 = load %struct.opj_t1*, %struct.opj_t1** %l_t1, align 8, !tbaa !5
  call void @opj_t1_destroy(%struct.opj_t1* %20) #8
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %for.body
  %21 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %21, i32 1
  store %struct.opj_tcd_tilecomp* %incdec.ptr, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %22 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %incdec.ptr6 = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %22, i32 1
  store %struct.opj_tccp* %incdec.ptr6, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %if.end.5
  %23 = load i32, i32* %compno, align 4, !tbaa !1
  %inc = add i32 %23, 1
  store i32 %inc, i32* %compno, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load %struct.opj_t1*, %struct.opj_t1** %l_t1, align 8, !tbaa !5
  call void @opj_t1_destroy(%struct.opj_t1* %24) #8
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.4, %if.then
  %25 = bitcast %struct.opj_tccp** %l_tccp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = bitcast %struct.opj_tcd_tilecomp** %l_tile_comp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = bitcast %struct.opj_tcd_tile** %l_tile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = bitcast %struct.opj_t1** %l_t1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal i32 @opj_tcd_dwt_decode(%struct.opj_tcd* %p_tcd) #0 {
entry:
  %retval = alloca i32, align 4
  %p_tcd.addr = alloca %struct.opj_tcd*, align 8
  %compno = alloca i32, align 4
  %l_tile = alloca %struct.opj_tcd_tile*, align 8
  %l_tile_comp = alloca %struct.opj_tcd_tilecomp*, align 8
  %l_tccp = alloca %struct.opj_tccp*, align 8
  %l_img_comp = alloca %struct.opj_image_comp*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.opj_tcd* %p_tcd, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %0 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.opj_tcd_tile** %l_tile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %tcd_image = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %2, i32 0, i32 5
  %3 = load %struct.opj_tcd_image*, %struct.opj_tcd_image** %tcd_image, align 8, !tbaa !7
  %tiles = getelementptr inbounds %struct.opj_tcd_image, %struct.opj_tcd_image* %3, i32 0, i32 0
  %4 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tiles, align 8, !tbaa !13
  store %struct.opj_tcd_tile* %4, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %5 = bitcast %struct.opj_tcd_tilecomp** %l_tile_comp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %comps = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %6, i32 0, i32 5
  %7 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %comps, align 8, !tbaa !18
  store %struct.opj_tcd_tilecomp* %7, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %8 = bitcast %struct.opj_tccp** %l_tccp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %tcp = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %9, i32 0, i32 8
  %10 = load %struct.opj_tcp*, %struct.opj_tcp** %tcp, align 8, !tbaa !9
  %tccps = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %10, i32 0, i32 13
  %11 = load %struct.opj_tccp*, %struct.opj_tccp** %tccps, align 8, !tbaa !84
  store %struct.opj_tccp* %11, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %12 = bitcast %struct.opj_image_comp** %l_img_comp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %image = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %13, i32 0, i32 6
  %14 = load %struct.opj_image*, %struct.opj_image** %image, align 8, !tbaa !23
  %comps1 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %14, i32 0, i32 6
  %15 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps1, align 8, !tbaa !24
  store %struct.opj_image_comp* %15, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  store i32 0, i32* %compno, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %16 = load i32, i32* %compno, align 4, !tbaa !1
  %17 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %numcomps = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %17, i32 0, i32 4
  %18 = load i32, i32* %numcomps, align 4, !tbaa !15
  %cmp = icmp ult i32 %16, %18
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %qmfbid = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %19, i32 0, i32 5
  %20 = load i32, i32* %qmfbid, align 4, !tbaa !110
  %cmp2 = icmp eq i32 %20, 1
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %21 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %22 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %resno_decoded = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %22, i32 0, i32 9
  %23 = load i32, i32* %resno_decoded, align 4, !tbaa !153
  %add = add i32 %23, 1
  %call = call i32 @opj_dwt_decode(%struct.opj_tcd_tilecomp* %21, i32 %add) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  br label %if.end.10

if.else:                                          ; preds = %for.body
  %24 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %25 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %resno_decoded4 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %25, i32 0, i32 9
  %26 = load i32, i32* %resno_decoded4, align 4, !tbaa !153
  %add5 = add i32 %26, 1
  %call6 = call i32 @opj_dwt_decode_real(%struct.opj_tcd_tilecomp* %24, i32 %add5) #8
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.else
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.else
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.end
  %27 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %27, i32 1
  store %struct.opj_tcd_tilecomp* %incdec.ptr, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %28 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %incdec.ptr11 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %28, i32 1
  store %struct.opj_image_comp* %incdec.ptr11, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %29 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %incdec.ptr12 = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %29, i32 1
  store %struct.opj_tccp* %incdec.ptr12, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %if.end.10
  %30 = load i32, i32* %compno, align 4, !tbaa !1
  %inc = add i32 %30, 1
  store i32 %inc, i32* %compno, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.8, %if.then.3
  %31 = bitcast %struct.opj_image_comp** %l_img_comp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = bitcast %struct.opj_tccp** %l_tccp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast %struct.opj_tcd_tilecomp** %l_tile_comp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = bitcast %struct.opj_tcd_tile** %l_tile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal i32 @opj_tcd_mct_decode(%struct.opj_tcd* %p_tcd) #0 {
entry:
  %retval = alloca i32, align 4
  %p_tcd.addr = alloca %struct.opj_tcd*, align 8
  %l_tile = alloca %struct.opj_tcd_tile*, align 8
  %l_tcp = alloca %struct.opj_tcp*, align 8
  %l_tile_comp = alloca %struct.opj_tcd_tilecomp*, align 8
  %l_samples = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %l_data = alloca i8**, align 8
  store %struct.opj_tcd* %p_tcd, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %0 = bitcast %struct.opj_tcd_tile** %l_tile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %tcd_image = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %1, i32 0, i32 5
  %2 = load %struct.opj_tcd_image*, %struct.opj_tcd_image** %tcd_image, align 8, !tbaa !7
  %tiles = getelementptr inbounds %struct.opj_tcd_image, %struct.opj_tcd_image* %2, i32 0, i32 0
  %3 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tiles, align 8, !tbaa !13
  store %struct.opj_tcd_tile* %3, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %4 = bitcast %struct.opj_tcp** %l_tcp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %tcp = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %5, i32 0, i32 8
  %6 = load %struct.opj_tcp*, %struct.opj_tcp** %tcp, align 8, !tbaa !9
  store %struct.opj_tcp* %6, %struct.opj_tcp** %l_tcp, align 8, !tbaa !5
  %7 = bitcast %struct.opj_tcd_tilecomp** %l_tile_comp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %comps = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %8, i32 0, i32 5
  %9 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %comps, align 8, !tbaa !18
  store %struct.opj_tcd_tilecomp* %9, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %10 = bitcast i32* %l_samples to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.opj_tcp*, %struct.opj_tcp** %l_tcp, align 8, !tbaa !5
  %mct = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %12, i32 0, i32 4
  %13 = load i32, i32* %mct, align 4, !tbaa !148
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.110

if.end:                                           ; preds = %entry
  %14 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %x1 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %14, i32 0, i32 2
  %15 = load i32, i32* %x1, align 4, !tbaa !104
  %16 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %x0 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %16, i32 0, i32 0
  %17 = load i32, i32* %x0, align 4, !tbaa !101
  %sub = sub nsw i32 %15, %17
  %18 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %y1 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %18, i32 0, i32 3
  %19 = load i32, i32* %y1, align 4, !tbaa !105
  %20 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %y0 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %20, i32 0, i32 1
  %21 = load i32, i32* %y0, align 4, !tbaa !103
  %sub1 = sub nsw i32 %19, %21
  %mul = mul nsw i32 %sub, %sub1
  store i32 %mul, i32* %l_samples, align 4, !tbaa !1
  %22 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %numcomps = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %22, i32 0, i32 4
  %23 = load i32, i32* %numcomps, align 4, !tbaa !15
  %cmp = icmp uge i32 %23, 3
  br i1 %cmp, label %if.then.2, label %if.else.106

if.then.2:                                        ; preds = %if.end
  %24 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %comps3 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %24, i32 0, i32 5
  %25 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %comps3, align 8, !tbaa !18
  %arrayidx = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %25, i64 0
  %x14 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %arrayidx, i32 0, i32 2
  %26 = load i32, i32* %x14, align 4, !tbaa !104
  %27 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %comps5 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %27, i32 0, i32 5
  %28 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %comps5, align 8, !tbaa !18
  %arrayidx6 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %28, i64 0
  %x07 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %arrayidx6, i32 0, i32 0
  %29 = load i32, i32* %x07, align 4, !tbaa !101
  %sub8 = sub nsw i32 %26, %29
  %30 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %comps9 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %30, i32 0, i32 5
  %31 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %comps9, align 8, !tbaa !18
  %arrayidx10 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %31, i64 0
  %y111 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %arrayidx10, i32 0, i32 3
  %32 = load i32, i32* %y111, align 4, !tbaa !105
  %33 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %comps12 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %33, i32 0, i32 5
  %34 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %comps12, align 8, !tbaa !18
  %arrayidx13 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %34, i64 0
  %y014 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %arrayidx13, i32 0, i32 1
  %35 = load i32, i32* %y014, align 4, !tbaa !103
  %sub15 = sub nsw i32 %32, %35
  %mul16 = mul nsw i32 %sub8, %sub15
  %36 = load i32, i32* %l_samples, align 4, !tbaa !1
  %cmp17 = icmp slt i32 %mul16, %36
  br i1 %cmp17, label %if.then.51, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.2
  %37 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %comps18 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %37, i32 0, i32 5
  %38 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %comps18, align 8, !tbaa !18
  %arrayidx19 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %38, i64 1
  %x120 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %arrayidx19, i32 0, i32 2
  %39 = load i32, i32* %x120, align 4, !tbaa !104
  %40 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %comps21 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %40, i32 0, i32 5
  %41 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %comps21, align 8, !tbaa !18
  %arrayidx22 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %41, i64 1
  %x023 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %arrayidx22, i32 0, i32 0
  %42 = load i32, i32* %x023, align 4, !tbaa !101
  %sub24 = sub nsw i32 %39, %42
  %43 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %comps25 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %43, i32 0, i32 5
  %44 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %comps25, align 8, !tbaa !18
  %arrayidx26 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %44, i64 1
  %y127 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %arrayidx26, i32 0, i32 3
  %45 = load i32, i32* %y127, align 4, !tbaa !105
  %46 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %comps28 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %46, i32 0, i32 5
  %47 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %comps28, align 8, !tbaa !18
  %arrayidx29 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %47, i64 1
  %y030 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %arrayidx29, i32 0, i32 1
  %48 = load i32, i32* %y030, align 4, !tbaa !103
  %sub31 = sub nsw i32 %45, %48
  %mul32 = mul nsw i32 %sub24, %sub31
  %49 = load i32, i32* %l_samples, align 4, !tbaa !1
  %cmp33 = icmp slt i32 %mul32, %49
  br i1 %cmp33, label %if.then.51, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %lor.lhs.false
  %50 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %comps35 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %50, i32 0, i32 5
  %51 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %comps35, align 8, !tbaa !18
  %arrayidx36 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %51, i64 2
  %x137 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %arrayidx36, i32 0, i32 2
  %52 = load i32, i32* %x137, align 4, !tbaa !104
  %53 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %comps38 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %53, i32 0, i32 5
  %54 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %comps38, align 8, !tbaa !18
  %arrayidx39 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %54, i64 2
  %x040 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %arrayidx39, i32 0, i32 0
  %55 = load i32, i32* %x040, align 4, !tbaa !101
  %sub41 = sub nsw i32 %52, %55
  %56 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %comps42 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %56, i32 0, i32 5
  %57 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %comps42, align 8, !tbaa !18
  %arrayidx43 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %57, i64 2
  %y144 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %arrayidx43, i32 0, i32 3
  %58 = load i32, i32* %y144, align 4, !tbaa !105
  %59 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %comps45 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %59, i32 0, i32 5
  %60 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %comps45, align 8, !tbaa !18
  %arrayidx46 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %60, i64 2
  %y047 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %arrayidx46, i32 0, i32 1
  %61 = load i32, i32* %y047, align 4, !tbaa !103
  %sub48 = sub nsw i32 %58, %61
  %mul49 = mul nsw i32 %sub41, %sub48
  %62 = load i32, i32* %l_samples, align 4, !tbaa !1
  %cmp50 = icmp slt i32 %mul49, %62
  br i1 %cmp50, label %if.then.51, label %if.else

if.then.51:                                       ; preds = %lor.lhs.false.34, %lor.lhs.false, %if.then.2
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i32 0)) #8
  br label %if.end.105

if.else:                                          ; preds = %lor.lhs.false.34
  %64 = load %struct.opj_tcp*, %struct.opj_tcp** %l_tcp, align 8, !tbaa !5
  %mct52 = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %64, i32 0, i32 4
  %65 = load i32, i32* %mct52, align 4, !tbaa !148
  %cmp53 = icmp eq i32 %65, 2
  br i1 %cmp53, label %if.then.54, label %if.else.80

if.then.54:                                       ; preds = %if.else
  %66 = bitcast i8*** %l_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %66) #1
  %67 = load %struct.opj_tcp*, %struct.opj_tcp** %l_tcp, align 8, !tbaa !5
  %m_mct_decoding_matrix = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %67, i32 0, i32 18
  %68 = load float*, float** %m_mct_decoding_matrix, align 8, !tbaa !154
  %tobool55 = icmp ne float* %68, null
  br i1 %tobool55, label %if.end.57, label %if.then.56

if.then.56:                                       ; preds = %if.then.54
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.57:                                        ; preds = %if.then.54
  %69 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %numcomps58 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %69, i32 0, i32 4
  %70 = load i32, i32* %numcomps58, align 4, !tbaa !15
  %conv = zext i32 %70 to i64
  %mul59 = mul i64 %conv, 8
  %cmp60 = icmp uge i64 %mul59, -256
  br i1 %cmp60, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.57
  br label %cond.end

cond.false:                                       ; preds = %if.end.57
  %71 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %numcomps62 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %71, i32 0, i32 4
  %72 = load i32, i32* %numcomps62, align 4, !tbaa !15
  %conv63 = zext i32 %72 to i64
  %mul64 = mul i64 %conv63, 8
  %call65 = call noalias i8* @malloc(i64 %mul64) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %call65, %cond.false ]
  %73 = bitcast i8* %cond to i8**
  store i8** %73, i8*** %l_data, align 8, !tbaa !5
  %74 = load i8**, i8*** %l_data, align 8, !tbaa !5
  %tobool66 = icmp ne i8** %74, null
  br i1 %tobool66, label %if.end.68, label %if.then.67

if.then.67:                                       ; preds = %cond.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.68:                                        ; preds = %cond.end
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.68
  %75 = load i32, i32* %i, align 4, !tbaa !1
  %76 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %numcomps69 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %76, i32 0, i32 4
  %77 = load i32, i32* %numcomps69, align 4, !tbaa !15
  %cmp70 = icmp ult i32 %75, %77
  br i1 %cmp70, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %78 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %data = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %78, i32 0, i32 8
  %79 = load i32*, i32** %data, align 8, !tbaa !81
  %80 = bitcast i32* %79 to i8*
  %81 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom = zext i32 %81 to i64
  %82 = load i8**, i8*** %l_data, align 8, !tbaa !5
  %arrayidx72 = getelementptr inbounds i8*, i8** %82, i64 %idxprom
  store i8* %80, i8** %arrayidx72, align 8, !tbaa !5
  %83 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %83, i32 1
  store %struct.opj_tcd_tilecomp* %incdec.ptr, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %84 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add i32 %84, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %85 = load %struct.opj_tcp*, %struct.opj_tcp** %l_tcp, align 8, !tbaa !5
  %m_mct_decoding_matrix73 = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %85, i32 0, i32 18
  %86 = load float*, float** %m_mct_decoding_matrix73, align 8, !tbaa !154
  %87 = bitcast float* %86 to i8*
  %88 = load i32, i32* %l_samples, align 4, !tbaa !1
  %89 = load i8**, i8*** %l_data, align 8, !tbaa !5
  %90 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %numcomps74 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %90, i32 0, i32 4
  %91 = load i32, i32* %numcomps74, align 4, !tbaa !15
  %92 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %image = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %92, i32 0, i32 6
  %93 = load %struct.opj_image*, %struct.opj_image** %image, align 8, !tbaa !23
  %comps75 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %93, i32 0, i32 6
  %94 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps75, align 8, !tbaa !24
  %sgnd = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %94, i32 0, i32 8
  %95 = load i32, i32* %sgnd, align 4, !tbaa !150
  %call76 = call i32 @opj_mct_decode_custom(i8* %87, i32 %88, i8** %89, i32 %91, i32 %95) #8
  %tobool77 = icmp ne i32 %call76, 0
  br i1 %tobool77, label %if.end.79, label %if.then.78

if.then.78:                                       ; preds = %for.end
  %96 = load i8**, i8*** %l_data, align 8, !tbaa !5
  %97 = bitcast i8** %96 to i8*
  call void @free(i8* %97) #7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.79:                                        ; preds = %for.end
  %98 = load i8**, i8*** %l_data, align 8, !tbaa !5
  %99 = bitcast i8** %98 to i8*
  call void @free(i8* %99) #7
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.79, %if.then.78, %if.then.67, %if.then.56
  %100 = bitcast i8*** %l_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %100) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.110 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.104

if.else.80:                                       ; preds = %if.else
  %101 = load %struct.opj_tcp*, %struct.opj_tcp** %l_tcp, align 8, !tbaa !5
  %tccps = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %101, i32 0, i32 13
  %102 = load %struct.opj_tccp*, %struct.opj_tccp** %tccps, align 8, !tbaa !84
  %qmfbid = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %102, i32 0, i32 5
  %103 = load i32, i32* %qmfbid, align 4, !tbaa !110
  %cmp81 = icmp eq i32 %103, 1
  br i1 %cmp81, label %if.then.83, label %if.else.93

if.then.83:                                       ; preds = %if.else.80
  %104 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %comps84 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %104, i32 0, i32 5
  %105 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %comps84, align 8, !tbaa !18
  %arrayidx85 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %105, i64 0
  %data86 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %arrayidx85, i32 0, i32 8
  %106 = load i32*, i32** %data86, align 8, !tbaa !81
  %107 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %comps87 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %107, i32 0, i32 5
  %108 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %comps87, align 8, !tbaa !18
  %arrayidx88 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %108, i64 1
  %data89 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %arrayidx88, i32 0, i32 8
  %109 = load i32*, i32** %data89, align 8, !tbaa !81
  %110 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %comps90 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %110, i32 0, i32 5
  %111 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %comps90, align 8, !tbaa !18
  %arrayidx91 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %111, i64 2
  %data92 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %arrayidx91, i32 0, i32 8
  %112 = load i32*, i32** %data92, align 8, !tbaa !81
  %113 = load i32, i32* %l_samples, align 4, !tbaa !1
  call void @opj_mct_decode(i32* %106, i32* %109, i32* %112, i32 %113) #8
  br label %if.end.103

if.else.93:                                       ; preds = %if.else.80
  %114 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %comps94 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %114, i32 0, i32 5
  %115 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %comps94, align 8, !tbaa !18
  %arrayidx95 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %115, i64 0
  %data96 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %arrayidx95, i32 0, i32 8
  %116 = load i32*, i32** %data96, align 8, !tbaa !81
  %117 = bitcast i32* %116 to float*
  %118 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %comps97 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %118, i32 0, i32 5
  %119 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %comps97, align 8, !tbaa !18
  %arrayidx98 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %119, i64 1
  %data99 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %arrayidx98, i32 0, i32 8
  %120 = load i32*, i32** %data99, align 8, !tbaa !81
  %121 = bitcast i32* %120 to float*
  %122 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %comps100 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %122, i32 0, i32 5
  %123 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %comps100, align 8, !tbaa !18
  %arrayidx101 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %123, i64 2
  %data102 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %arrayidx101, i32 0, i32 8
  %124 = load i32*, i32** %data102, align 8, !tbaa !81
  %125 = bitcast i32* %124 to float*
  %126 = load i32, i32* %l_samples, align 4, !tbaa !1
  call void @opj_mct_decode_real(float* %117, float* %121, float* %125, i32 %126) #8
  br label %if.end.103

if.end.103:                                       ; preds = %if.else.93, %if.then.83
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %cleanup.cont
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %if.then.51
  br label %if.end.109

if.else.106:                                      ; preds = %if.end
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %128 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %numcomps107 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %128, i32 0, i32 4
  %129 = load i32, i32* %numcomps107, align 4, !tbaa !15
  %call108 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %127, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.8, i32 0, i32 0), i32 %129) #8
  br label %if.end.109

if.end.109:                                       ; preds = %if.else.106, %if.end.105
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.110

cleanup.110:                                      ; preds = %if.end.109, %cleanup, %if.then
  %130 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %130) #1
  %131 = bitcast i32* %l_samples to i8*
  call void @llvm.lifetime.end(i64 4, i8* %131) #1
  %132 = bitcast %struct.opj_tcd_tilecomp** %l_tile_comp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %132) #1
  %133 = bitcast %struct.opj_tcp** %l_tcp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %133) #1
  %134 = bitcast %struct.opj_tcd_tile** %l_tile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %134) #1
  %135 = load i32, i32* %retval
  ret i32 %135
}

; Function Attrs: nounwind uwtable
define internal i32 @opj_tcd_dc_level_shift_decode(%struct.opj_tcd* %p_tcd) #0 {
entry:
  %p_tcd.addr = alloca %struct.opj_tcd*, align 8
  %compno = alloca i32, align 4
  %l_tile_comp = alloca %struct.opj_tcd_tilecomp*, align 8
  %l_tccp = alloca %struct.opj_tccp*, align 8
  %l_img_comp = alloca %struct.opj_image_comp*, align 8
  %l_res = alloca %struct.opj_tcd_resolution*, align 8
  %l_tile = alloca %struct.opj_tcd_tile*, align 8
  %l_width = alloca i32, align 4
  %l_height = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l_current_ptr = alloca i32*, align 8
  %l_min = alloca i32, align 4
  %l_max = alloca i32, align 4
  %l_stride = alloca i32, align 4
  %l_value = alloca float, align 4
  store %struct.opj_tcd* %p_tcd, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %0 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.opj_tcd_tilecomp** %l_tile_comp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store %struct.opj_tcd_tilecomp* null, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %2 = bitcast %struct.opj_tccp** %l_tccp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store %struct.opj_tccp* null, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %3 = bitcast %struct.opj_image_comp** %l_img_comp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store %struct.opj_image_comp* null, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %4 = bitcast %struct.opj_tcd_resolution** %l_res to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store %struct.opj_tcd_resolution* null, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %5 = bitcast %struct.opj_tcd_tile** %l_tile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %l_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %l_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32** %l_current_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i32* %l_min to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %l_max to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %l_stride to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %tcd_image = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %14, i32 0, i32 5
  %15 = load %struct.opj_tcd_image*, %struct.opj_tcd_image** %tcd_image, align 8, !tbaa !7
  %tiles = getelementptr inbounds %struct.opj_tcd_image, %struct.opj_tcd_image* %15, i32 0, i32 0
  %16 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tiles, align 8, !tbaa !13
  store %struct.opj_tcd_tile* %16, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %17 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %comps = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %17, i32 0, i32 5
  %18 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %comps, align 8, !tbaa !18
  store %struct.opj_tcd_tilecomp* %18, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %19 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %tcp = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %19, i32 0, i32 8
  %20 = load %struct.opj_tcp*, %struct.opj_tcp** %tcp, align 8, !tbaa !9
  %tccps = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %20, i32 0, i32 13
  %21 = load %struct.opj_tccp*, %struct.opj_tccp** %tccps, align 8, !tbaa !84
  store %struct.opj_tccp* %21, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %22 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %image = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %22, i32 0, i32 6
  %23 = load %struct.opj_image*, %struct.opj_image** %image, align 8, !tbaa !23
  %comps1 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %23, i32 0, i32 6
  %24 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps1, align 8, !tbaa !24
  store %struct.opj_image_comp* %24, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  store i32 0, i32* %compno, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.57, %entry
  %25 = load i32, i32* %compno, align 4, !tbaa !1
  %26 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %l_tile, align 8, !tbaa !5
  %numcomps = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %26, i32 0, i32 4
  %27 = load i32, i32* %numcomps, align 4, !tbaa !15
  %cmp = icmp ult i32 %25, %27
  br i1 %cmp, label %for.body, label %for.end.59

for.body:                                         ; preds = %for.cond
  %28 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %resolutions = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %28, i32 0, i32 6
  %29 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %resolutions, align 8, !tbaa !29
  %30 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %resno_decoded = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %30, i32 0, i32 9
  %31 = load i32, i32* %resno_decoded, align 4, !tbaa !153
  %idx.ext = zext i32 %31 to i64
  %add.ptr = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %29, i64 %idx.ext
  store %struct.opj_tcd_resolution* %add.ptr, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %32 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %x1 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %32, i32 0, i32 2
  %33 = load i32, i32* %x1, align 4, !tbaa !113
  %34 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %x0 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %34, i32 0, i32 0
  %35 = load i32, i32* %x0, align 4, !tbaa !111
  %sub = sub nsw i32 %33, %35
  store i32 %sub, i32* %l_width, align 4, !tbaa !1
  %36 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %y1 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %36, i32 0, i32 3
  %37 = load i32, i32* %y1, align 4, !tbaa !114
  %38 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %y0 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %38, i32 0, i32 1
  %39 = load i32, i32* %y0, align 4, !tbaa !112
  %sub2 = sub nsw i32 %37, %39
  store i32 %sub2, i32* %l_height, align 4, !tbaa !1
  %40 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %x13 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %40, i32 0, i32 2
  %41 = load i32, i32* %x13, align 4, !tbaa !104
  %42 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %x04 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %42, i32 0, i32 0
  %43 = load i32, i32* %x04, align 4, !tbaa !101
  %sub5 = sub nsw i32 %41, %43
  %44 = load i32, i32* %l_width, align 4, !tbaa !1
  %sub6 = sub i32 %sub5, %44
  store i32 %sub6, i32* %l_stride, align 4, !tbaa !1
  %45 = load i32, i32* %l_height, align 4, !tbaa !1
  %cmp7 = icmp eq i32 %45, 0
  br i1 %cmp7, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %46 = load i32, i32* %l_width, align 4, !tbaa !1
  %47 = load i32, i32* %l_stride, align 4, !tbaa !1
  %add = add i32 %46, %47
  %48 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %data_size = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %48, i32 0, i32 9
  %49 = load i32, i32* %data_size, align 4, !tbaa !109
  %50 = load i32, i32* %l_height, align 4, !tbaa !1
  %div = udiv i32 %49, %50
  %cmp8 = icmp ule i32 %add, %div
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %for.body
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  call void @__assert_fail(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i32 0, i32 0), i32 1668, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.opj_tcd_dc_level_shift_decode, i32 0, i32 0)) #10
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %51, %cond.true
  %52 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %sgnd = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %52, i32 0, i32 8
  %53 = load i32, i32* %sgnd, align 4, !tbaa !150
  %tobool = icmp ne i32 %53, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %54 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %prec = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %54, i32 0, i32 6
  %55 = load i32, i32* %prec, align 4, !tbaa !26
  %sub9 = sub i32 %55, 1
  %shl = shl i32 1, %sub9
  %sub10 = sub nsw i32 0, %shl
  store i32 %sub10, i32* %l_min, align 4, !tbaa !1
  %56 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %prec11 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %56, i32 0, i32 6
  %57 = load i32, i32* %prec11, align 4, !tbaa !26
  %sub12 = sub i32 %57, 1
  %shl13 = shl i32 1, %sub12
  %sub14 = sub nsw i32 %shl13, 1
  store i32 %sub14, i32* %l_max, align 4, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %cond.end
  store i32 0, i32* %l_min, align 4, !tbaa !1
  %58 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %prec15 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %58, i32 0, i32 6
  %59 = load i32, i32* %prec15, align 4, !tbaa !26
  %shl16 = shl i32 1, %59
  %sub17 = sub nsw i32 %shl16, 1
  store i32 %sub17, i32* %l_max, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %60 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %data = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %60, i32 0, i32 8
  %61 = load i32*, i32** %data, align 8, !tbaa !81
  store i32* %61, i32** %l_current_ptr, align 8, !tbaa !5
  %62 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %qmfbid = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %62, i32 0, i32 5
  %63 = load i32, i32* %qmfbid, align 4, !tbaa !110
  %cmp18 = icmp eq i32 %63, 1
  br i1 %cmp18, label %if.then.19, label %if.else.32

if.then.19:                                       ; preds = %if.end
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.29, %if.then.19
  %64 = load i32, i32* %j, align 4, !tbaa !1
  %65 = load i32, i32* %l_height, align 4, !tbaa !1
  %cmp21 = icmp ult i32 %64, %65
  br i1 %cmp21, label %for.body.22, label %for.end.31

for.body.22:                                      ; preds = %for.cond.20
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc, %for.body.22
  %66 = load i32, i32* %i, align 4, !tbaa !1
  %67 = load i32, i32* %l_width, align 4, !tbaa !1
  %cmp24 = icmp ult i32 %66, %67
  br i1 %cmp24, label %for.body.25, label %for.end

for.body.25:                                      ; preds = %for.cond.23
  %68 = load i32*, i32** %l_current_ptr, align 8, !tbaa !5
  %69 = load i32, i32* %68, align 4, !tbaa !1
  %70 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %m_dc_level_shift = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %70, i32 0, i32 12
  %71 = load i32, i32* %m_dc_level_shift, align 4, !tbaa !147
  %add26 = add nsw i32 %69, %71
  %72 = load i32, i32* %l_min, align 4, !tbaa !1
  %73 = load i32, i32* %l_max, align 4, !tbaa !1
  %call = call i32 @opj_int_clamp(i32 %add26, i32 %72, i32 %73) #8
  %74 = load i32*, i32** %l_current_ptr, align 8, !tbaa !5
  store i32 %call, i32* %74, align 4, !tbaa !1
  %75 = load i32*, i32** %l_current_ptr, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %incdec.ptr, i32** %l_current_ptr, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body.25
  %76 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add i32 %76, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond.23

for.end:                                          ; preds = %for.cond.23
  %77 = load i32, i32* %l_stride, align 4, !tbaa !1
  %78 = load i32*, i32** %l_current_ptr, align 8, !tbaa !5
  %idx.ext27 = zext i32 %77 to i64
  %add.ptr28 = getelementptr inbounds i32, i32* %78, i64 %idx.ext27
  store i32* %add.ptr28, i32** %l_current_ptr, align 8, !tbaa !5
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.end
  %79 = load i32, i32* %j, align 4, !tbaa !1
  %inc30 = add i32 %79, 1
  store i32 %inc30, i32* %j, align 4, !tbaa !1
  br label %for.cond.20

for.end.31:                                       ; preds = %for.cond.20
  br label %if.end.53

if.else.32:                                       ; preds = %if.end
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.50, %if.else.32
  %80 = load i32, i32* %j, align 4, !tbaa !1
  %81 = load i32, i32* %l_height, align 4, !tbaa !1
  %cmp34 = icmp ult i32 %80, %81
  br i1 %cmp34, label %for.body.35, label %for.end.52

for.body.35:                                      ; preds = %for.cond.33
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.45, %for.body.35
  %82 = load i32, i32* %i, align 4, !tbaa !1
  %83 = load i32, i32* %l_width, align 4, !tbaa !1
  %cmp37 = icmp ult i32 %82, %83
  br i1 %cmp37, label %for.body.38, label %for.end.47

for.body.38:                                      ; preds = %for.cond.36
  %84 = bitcast float* %l_value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %84) #1
  %85 = load i32*, i32** %l_current_ptr, align 8, !tbaa !5
  %86 = bitcast i32* %85 to float*
  %87 = load float, float* %86, align 4, !tbaa !70
  store float %87, float* %l_value, align 4, !tbaa !70
  %88 = load float, float* %l_value, align 4, !tbaa !70
  %call39 = call i64 @lrintf(float %88) #7
  %89 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %m_dc_level_shift40 = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %89, i32 0, i32 12
  %90 = load i32, i32* %m_dc_level_shift40, align 4, !tbaa !147
  %conv = sext i32 %90 to i64
  %add41 = add nsw i64 %call39, %conv
  %conv42 = trunc i64 %add41 to i32
  %91 = load i32, i32* %l_min, align 4, !tbaa !1
  %92 = load i32, i32* %l_max, align 4, !tbaa !1
  %call43 = call i32 @opj_int_clamp(i32 %conv42, i32 %91, i32 %92) #8
  %93 = load i32*, i32** %l_current_ptr, align 8, !tbaa !5
  store i32 %call43, i32* %93, align 4, !tbaa !1
  %94 = load i32*, i32** %l_current_ptr, align 8, !tbaa !5
  %incdec.ptr44 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %incdec.ptr44, i32** %l_current_ptr, align 8, !tbaa !5
  %95 = bitcast float* %l_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #1
  br label %for.inc.45

for.inc.45:                                       ; preds = %for.body.38
  %96 = load i32, i32* %i, align 4, !tbaa !1
  %inc46 = add i32 %96, 1
  store i32 %inc46, i32* %i, align 4, !tbaa !1
  br label %for.cond.36

for.end.47:                                       ; preds = %for.cond.36
  %97 = load i32, i32* %l_stride, align 4, !tbaa !1
  %98 = load i32*, i32** %l_current_ptr, align 8, !tbaa !5
  %idx.ext48 = zext i32 %97 to i64
  %add.ptr49 = getelementptr inbounds i32, i32* %98, i64 %idx.ext48
  store i32* %add.ptr49, i32** %l_current_ptr, align 8, !tbaa !5
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.end.47
  %99 = load i32, i32* %j, align 4, !tbaa !1
  %inc51 = add i32 %99, 1
  store i32 %inc51, i32* %j, align 4, !tbaa !1
  br label %for.cond.33

for.end.52:                                       ; preds = %for.cond.33
  br label %if.end.53

if.end.53:                                        ; preds = %for.end.52, %for.end.31
  %100 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %incdec.ptr54 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %100, i32 1
  store %struct.opj_image_comp* %incdec.ptr54, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %101 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %incdec.ptr55 = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %101, i32 1
  store %struct.opj_tccp* %incdec.ptr55, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %102 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  %incdec.ptr56 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %102, i32 1
  store %struct.opj_tcd_tilecomp* %incdec.ptr56, %struct.opj_tcd_tilecomp** %l_tile_comp, align 8, !tbaa !5
  br label %for.inc.57

for.inc.57:                                       ; preds = %if.end.53
  %103 = load i32, i32* %compno, align 4, !tbaa !1
  %inc58 = add i32 %103, 1
  store i32 %inc58, i32* %compno, align 4, !tbaa !1
  br label %for.cond

for.end.59:                                       ; preds = %for.cond
  %104 = bitcast i32* %l_stride to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #1
  %105 = bitcast i32* %l_max to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #1
  %106 = bitcast i32* %l_min to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #1
  %107 = bitcast i32** %l_current_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #1
  %108 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #1
  %109 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  %110 = bitcast i32* %l_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #1
  %111 = bitcast i32* %l_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #1
  %112 = bitcast %struct.opj_tcd_tile** %l_tile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #1
  %113 = bitcast %struct.opj_tcd_resolution** %l_res to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #1
  %114 = bitcast %struct.opj_image_comp** %l_img_comp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #1
  %115 = bitcast %struct.opj_tccp** %l_tccp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #1
  %116 = bitcast %struct.opj_tcd_tilecomp** %l_tile_comp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %116) #1
  %117 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #1
  ret i32 1
}

; Function Attrs: nounwind uwtable
define i32 @opj_tcd_update_tile_data(%struct.opj_tcd* %p_tcd, i8* %p_dest, i32 %p_dest_length) #0 {
entry:
  %retval = alloca i32, align 4
  %p_tcd.addr = alloca %struct.opj_tcd*, align 8
  %p_dest.addr = alloca i8*, align 8
  %p_dest_length.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_data_size = alloca i32, align 4
  %l_img_comp = alloca %struct.opj_image_comp*, align 8
  %l_tilec = alloca %struct.opj_tcd_tilecomp*, align 8
  %l_res = alloca %struct.opj_tcd_resolution*, align 8
  %l_size_comp = alloca i32, align 4
  %l_remaining = alloca i32, align 4
  %l_stride = alloca i32, align 4
  %l_width = alloca i32, align 4
  %l_height = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %l_dest_ptr = alloca i8*, align 8
  %l_src_ptr = alloca i32*, align 8
  %l_src_ptr52 = alloca i32*, align 8
  %l_dest_ptr54 = alloca i16*, align 8
  %l_dest_ptr100 = alloca i32*, align 8
  %l_src_ptr101 = alloca i32*, align 8
  store %struct.opj_tcd* %p_tcd, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  store i8* %p_dest, i8** %p_dest.addr, align 8, !tbaa !5
  store i32 %p_dest_length, i32* %p_dest_length.addr, align 4, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %l_data_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %l_data_size, align 4, !tbaa !1
  %4 = bitcast %struct.opj_image_comp** %l_img_comp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store %struct.opj_image_comp* null, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %5 = bitcast %struct.opj_tcd_tilecomp** %l_tilec to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store %struct.opj_tcd_tilecomp* null, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %6 = bitcast %struct.opj_tcd_resolution** %l_res to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %l_size_comp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %l_remaining to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %l_stride to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %l_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %l_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %call = call i32 @opj_tcd_get_decoded_tile_size(%struct.opj_tcd* %12) #8
  store i32 %call, i32* %l_data_size, align 4, !tbaa !1
  %13 = load i32, i32* %l_data_size, align 4, !tbaa !1
  %14 = load i32, i32* %p_dest_length.addr, align 4, !tbaa !1
  %cmp = icmp ugt i32 %13, %14
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %tcd_image = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %15, i32 0, i32 5
  %16 = load %struct.opj_tcd_image*, %struct.opj_tcd_image** %tcd_image, align 8, !tbaa !7
  %tiles = getelementptr inbounds %struct.opj_tcd_image, %struct.opj_tcd_image* %16, i32 0, i32 0
  %17 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tiles, align 8, !tbaa !13
  %comps = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %17, i32 0, i32 5
  %18 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %comps, align 8, !tbaa !18
  store %struct.opj_tcd_tilecomp* %18, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %19 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %image = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %19, i32 0, i32 6
  %20 = load %struct.opj_image*, %struct.opj_image** %image, align 8, !tbaa !23
  %comps1 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %20, i32 0, i32 6
  %21 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps1, align 8, !tbaa !24
  store %struct.opj_image_comp* %21, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.123, %if.end
  %22 = load i32, i32* %i, align 4, !tbaa !1
  %23 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %image2 = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %23, i32 0, i32 6
  %24 = load %struct.opj_image*, %struct.opj_image** %image2, align 8, !tbaa !23
  %numcomps = getelementptr inbounds %struct.opj_image, %struct.opj_image* %24, i32 0, i32 4
  %25 = load i32, i32* %numcomps, align 4, !tbaa !75
  %cmp3 = icmp ult i32 %22, %25
  br i1 %cmp3, label %for.body, label %for.end.125

for.body:                                         ; preds = %for.cond
  %26 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %prec = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %26, i32 0, i32 6
  %27 = load i32, i32* %prec, align 4, !tbaa !26
  %shr = lshr i32 %27, 3
  store i32 %shr, i32* %l_size_comp, align 4, !tbaa !1
  %28 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %prec4 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %28, i32 0, i32 6
  %29 = load i32, i32* %prec4, align 4, !tbaa !26
  %and = and i32 %29, 7
  store i32 %and, i32* %l_remaining, align 4, !tbaa !1
  %30 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %resolutions = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %30, i32 0, i32 6
  %31 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %resolutions, align 8, !tbaa !29
  %32 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %resno_decoded = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %32, i32 0, i32 9
  %33 = load i32, i32* %resno_decoded, align 4, !tbaa !153
  %idx.ext = zext i32 %33 to i64
  %add.ptr = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %31, i64 %idx.ext
  store %struct.opj_tcd_resolution* %add.ptr, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %34 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %x1 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %34, i32 0, i32 2
  %35 = load i32, i32* %x1, align 4, !tbaa !113
  %36 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %x0 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %36, i32 0, i32 0
  %37 = load i32, i32* %x0, align 4, !tbaa !111
  %sub = sub nsw i32 %35, %37
  store i32 %sub, i32* %l_width, align 4, !tbaa !1
  %38 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %y1 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %38, i32 0, i32 3
  %39 = load i32, i32* %y1, align 4, !tbaa !114
  %40 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_res, align 8, !tbaa !5
  %y0 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %40, i32 0, i32 1
  %41 = load i32, i32* %y0, align 4, !tbaa !112
  %sub5 = sub nsw i32 %39, %41
  store i32 %sub5, i32* %l_height, align 4, !tbaa !1
  %42 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %x16 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %42, i32 0, i32 2
  %43 = load i32, i32* %x16, align 4, !tbaa !104
  %44 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %x07 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %44, i32 0, i32 0
  %45 = load i32, i32* %x07, align 4, !tbaa !101
  %sub8 = sub nsw i32 %43, %45
  %46 = load i32, i32* %l_width, align 4, !tbaa !1
  %sub9 = sub i32 %sub8, %46
  store i32 %sub9, i32* %l_stride, align 4, !tbaa !1
  %47 = load i32, i32* %l_remaining, align 4, !tbaa !1
  %tobool = icmp ne i32 %47, 0
  br i1 %tobool, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %for.body
  %48 = load i32, i32* %l_size_comp, align 4, !tbaa !1
  %inc = add i32 %48, 1
  store i32 %inc, i32* %l_size_comp, align 4, !tbaa !1
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %for.body
  %49 = load i32, i32* %l_size_comp, align 4, !tbaa !1
  %cmp12 = icmp eq i32 %49, 3
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.11
  store i32 4, i32* %l_size_comp, align 4, !tbaa !1
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end.11
  %50 = load i32, i32* %l_size_comp, align 4, !tbaa !1
  switch i32 %50, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.51
    i32 4, label %sw.bb.99
  ]

sw.bb:                                            ; preds = %if.end.14
  %51 = bitcast i8** %l_dest_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %51) #1
  %52 = load i8*, i8** %p_dest.addr, align 8, !tbaa !5
  store i8* %52, i8** %l_dest_ptr, align 8, !tbaa !5
  %53 = bitcast i32** %l_src_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %53) #1
  %54 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %data = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %54, i32 0, i32 8
  %55 = load i32*, i32** %data, align 8, !tbaa !81
  store i32* %55, i32** %l_src_ptr, align 8, !tbaa !5
  %56 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %sgnd = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %56, i32 0, i32 8
  %57 = load i32, i32* %sgnd, align 4, !tbaa !150
  %tobool15 = icmp ne i32 %57, 0
  br i1 %tobool15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %sw.bb
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.27, %if.then.16
  %58 = load i32, i32* %j, align 4, !tbaa !1
  %59 = load i32, i32* %l_height, align 4, !tbaa !1
  %cmp18 = icmp ult i32 %58, %59
  br i1 %cmp18, label %for.body.19, label %for.end.29

for.body.19:                                      ; preds = %for.cond.17
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc, %for.body.19
  %60 = load i32, i32* %k, align 4, !tbaa !1
  %61 = load i32, i32* %l_width, align 4, !tbaa !1
  %cmp21 = icmp ult i32 %60, %61
  br i1 %cmp21, label %for.body.22, label %for.end

for.body.22:                                      ; preds = %for.cond.20
  %62 = load i32*, i32** %l_src_ptr, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %incdec.ptr, i32** %l_src_ptr, align 8, !tbaa !5
  %63 = load i32, i32* %62, align 4, !tbaa !1
  %conv = trunc i32 %63 to i8
  %64 = load i8*, i8** %l_dest_ptr, align 8, !tbaa !5
  %incdec.ptr23 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %incdec.ptr23, i8** %l_dest_ptr, align 8, !tbaa !5
  store i8 %conv, i8* %64, align 1, !tbaa !133
  br label %for.inc

for.inc:                                          ; preds = %for.body.22
  %65 = load i32, i32* %k, align 4, !tbaa !1
  %inc24 = add i32 %65, 1
  store i32 %inc24, i32* %k, align 4, !tbaa !1
  br label %for.cond.20

for.end:                                          ; preds = %for.cond.20
  %66 = load i32, i32* %l_stride, align 4, !tbaa !1
  %67 = load i32*, i32** %l_src_ptr, align 8, !tbaa !5
  %idx.ext25 = zext i32 %66 to i64
  %add.ptr26 = getelementptr inbounds i32, i32* %67, i64 %idx.ext25
  store i32* %add.ptr26, i32** %l_src_ptr, align 8, !tbaa !5
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.end
  %68 = load i32, i32* %j, align 4, !tbaa !1
  %inc28 = add i32 %68, 1
  store i32 %inc28, i32* %j, align 4, !tbaa !1
  br label %for.cond.17

for.end.29:                                       ; preds = %for.cond.17
  br label %if.end.50

if.else:                                          ; preds = %sw.bb
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.47, %if.else
  %69 = load i32, i32* %j, align 4, !tbaa !1
  %70 = load i32, i32* %l_height, align 4, !tbaa !1
  %cmp31 = icmp ult i32 %69, %70
  br i1 %cmp31, label %for.body.33, label %for.end.49

for.body.33:                                      ; preds = %for.cond.30
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.42, %for.body.33
  %71 = load i32, i32* %k, align 4, !tbaa !1
  %72 = load i32, i32* %l_width, align 4, !tbaa !1
  %cmp35 = icmp ult i32 %71, %72
  br i1 %cmp35, label %for.body.37, label %for.end.44

for.body.37:                                      ; preds = %for.cond.34
  %73 = load i32*, i32** %l_src_ptr, align 8, !tbaa !5
  %incdec.ptr38 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %incdec.ptr38, i32** %l_src_ptr, align 8, !tbaa !5
  %74 = load i32, i32* %73, align 4, !tbaa !1
  %and39 = and i32 %74, 255
  %conv40 = trunc i32 %and39 to i8
  %75 = load i8*, i8** %l_dest_ptr, align 8, !tbaa !5
  %incdec.ptr41 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %incdec.ptr41, i8** %l_dest_ptr, align 8, !tbaa !5
  store i8 %conv40, i8* %75, align 1, !tbaa !133
  br label %for.inc.42

for.inc.42:                                       ; preds = %for.body.37
  %76 = load i32, i32* %k, align 4, !tbaa !1
  %inc43 = add i32 %76, 1
  store i32 %inc43, i32* %k, align 4, !tbaa !1
  br label %for.cond.34

for.end.44:                                       ; preds = %for.cond.34
  %77 = load i32, i32* %l_stride, align 4, !tbaa !1
  %78 = load i32*, i32** %l_src_ptr, align 8, !tbaa !5
  %idx.ext45 = zext i32 %77 to i64
  %add.ptr46 = getelementptr inbounds i32, i32* %78, i64 %idx.ext45
  store i32* %add.ptr46, i32** %l_src_ptr, align 8, !tbaa !5
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.end.44
  %79 = load i32, i32* %j, align 4, !tbaa !1
  %inc48 = add i32 %79, 1
  store i32 %inc48, i32* %j, align 4, !tbaa !1
  br label %for.cond.30

for.end.49:                                       ; preds = %for.cond.30
  br label %if.end.50

if.end.50:                                        ; preds = %for.end.49, %for.end.29
  %80 = load i8*, i8** %l_dest_ptr, align 8, !tbaa !5
  store i8* %80, i8** %p_dest.addr, align 8, !tbaa !5
  %81 = bitcast i32** %l_src_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  %82 = bitcast i8** %l_dest_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #1
  br label %sw.epilog

sw.bb.51:                                         ; preds = %if.end.14
  %83 = bitcast i32** %l_src_ptr52 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %83) #1
  %84 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %data53 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %84, i32 0, i32 8
  %85 = load i32*, i32** %data53, align 8, !tbaa !81
  store i32* %85, i32** %l_src_ptr52, align 8, !tbaa !5
  %86 = bitcast i16** %l_dest_ptr54 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %86) #1
  %87 = load i8*, i8** %p_dest.addr, align 8, !tbaa !5
  %88 = bitcast i8* %87 to i16*
  store i16* %88, i16** %l_dest_ptr54, align 8, !tbaa !5
  %89 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %sgnd55 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %89, i32 0, i32 8
  %90 = load i32, i32* %sgnd55, align 4, !tbaa !150
  %tobool56 = icmp ne i32 %90, 0
  br i1 %tobool56, label %if.then.57, label %if.else.77

if.then.57:                                       ; preds = %sw.bb.51
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.74, %if.then.57
  %91 = load i32, i32* %j, align 4, !tbaa !1
  %92 = load i32, i32* %l_height, align 4, !tbaa !1
  %cmp59 = icmp ult i32 %91, %92
  br i1 %cmp59, label %for.body.61, label %for.end.76

for.body.61:                                      ; preds = %for.cond.58
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.69, %for.body.61
  %93 = load i32, i32* %k, align 4, !tbaa !1
  %94 = load i32, i32* %l_width, align 4, !tbaa !1
  %cmp63 = icmp ult i32 %93, %94
  br i1 %cmp63, label %for.body.65, label %for.end.71

for.body.65:                                      ; preds = %for.cond.62
  %95 = load i32*, i32** %l_src_ptr52, align 8, !tbaa !5
  %incdec.ptr66 = getelementptr inbounds i32, i32* %95, i32 1
  store i32* %incdec.ptr66, i32** %l_src_ptr52, align 8, !tbaa !5
  %96 = load i32, i32* %95, align 4, !tbaa !1
  %conv67 = trunc i32 %96 to i16
  %97 = load i16*, i16** %l_dest_ptr54, align 8, !tbaa !5
  %incdec.ptr68 = getelementptr inbounds i16, i16* %97, i32 1
  store i16* %incdec.ptr68, i16** %l_dest_ptr54, align 8, !tbaa !5
  store i16 %conv67, i16* %97, align 2, !tbaa !155
  br label %for.inc.69

for.inc.69:                                       ; preds = %for.body.65
  %98 = load i32, i32* %k, align 4, !tbaa !1
  %inc70 = add i32 %98, 1
  store i32 %inc70, i32* %k, align 4, !tbaa !1
  br label %for.cond.62

for.end.71:                                       ; preds = %for.cond.62
  %99 = load i32, i32* %l_stride, align 4, !tbaa !1
  %100 = load i32*, i32** %l_src_ptr52, align 8, !tbaa !5
  %idx.ext72 = zext i32 %99 to i64
  %add.ptr73 = getelementptr inbounds i32, i32* %100, i64 %idx.ext72
  store i32* %add.ptr73, i32** %l_src_ptr52, align 8, !tbaa !5
  br label %for.inc.74

for.inc.74:                                       ; preds = %for.end.71
  %101 = load i32, i32* %j, align 4, !tbaa !1
  %inc75 = add i32 %101, 1
  store i32 %inc75, i32* %j, align 4, !tbaa !1
  br label %for.cond.58

for.end.76:                                       ; preds = %for.cond.58
  br label %if.end.98

if.else.77:                                       ; preds = %sw.bb.51
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %for.cond.78

for.cond.78:                                      ; preds = %for.inc.95, %if.else.77
  %102 = load i32, i32* %j, align 4, !tbaa !1
  %103 = load i32, i32* %l_height, align 4, !tbaa !1
  %cmp79 = icmp ult i32 %102, %103
  br i1 %cmp79, label %for.body.81, label %for.end.97

for.body.81:                                      ; preds = %for.cond.78
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.90, %for.body.81
  %104 = load i32, i32* %k, align 4, !tbaa !1
  %105 = load i32, i32* %l_width, align 4, !tbaa !1
  %cmp83 = icmp ult i32 %104, %105
  br i1 %cmp83, label %for.body.85, label %for.end.92

for.body.85:                                      ; preds = %for.cond.82
  %106 = load i32*, i32** %l_src_ptr52, align 8, !tbaa !5
  %incdec.ptr86 = getelementptr inbounds i32, i32* %106, i32 1
  store i32* %incdec.ptr86, i32** %l_src_ptr52, align 8, !tbaa !5
  %107 = load i32, i32* %106, align 4, !tbaa !1
  %and87 = and i32 %107, 65535
  %conv88 = trunc i32 %and87 to i16
  %108 = load i16*, i16** %l_dest_ptr54, align 8, !tbaa !5
  %incdec.ptr89 = getelementptr inbounds i16, i16* %108, i32 1
  store i16* %incdec.ptr89, i16** %l_dest_ptr54, align 8, !tbaa !5
  store i16 %conv88, i16* %108, align 2, !tbaa !155
  br label %for.inc.90

for.inc.90:                                       ; preds = %for.body.85
  %109 = load i32, i32* %k, align 4, !tbaa !1
  %inc91 = add i32 %109, 1
  store i32 %inc91, i32* %k, align 4, !tbaa !1
  br label %for.cond.82

for.end.92:                                       ; preds = %for.cond.82
  %110 = load i32, i32* %l_stride, align 4, !tbaa !1
  %111 = load i32*, i32** %l_src_ptr52, align 8, !tbaa !5
  %idx.ext93 = zext i32 %110 to i64
  %add.ptr94 = getelementptr inbounds i32, i32* %111, i64 %idx.ext93
  store i32* %add.ptr94, i32** %l_src_ptr52, align 8, !tbaa !5
  br label %for.inc.95

for.inc.95:                                       ; preds = %for.end.92
  %112 = load i32, i32* %j, align 4, !tbaa !1
  %inc96 = add i32 %112, 1
  store i32 %inc96, i32* %j, align 4, !tbaa !1
  br label %for.cond.78

for.end.97:                                       ; preds = %for.cond.78
  br label %if.end.98

if.end.98:                                        ; preds = %for.end.97, %for.end.76
  %113 = load i16*, i16** %l_dest_ptr54, align 8, !tbaa !5
  %114 = bitcast i16* %113 to i8*
  store i8* %114, i8** %p_dest.addr, align 8, !tbaa !5
  %115 = bitcast i16** %l_dest_ptr54 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #1
  %116 = bitcast i32** %l_src_ptr52 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %116) #1
  br label %sw.epilog

sw.bb.99:                                         ; preds = %if.end.14
  %117 = bitcast i32** %l_dest_ptr100 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %117) #1
  %118 = load i8*, i8** %p_dest.addr, align 8, !tbaa !5
  %119 = bitcast i8* %118 to i32*
  store i32* %119, i32** %l_dest_ptr100, align 8, !tbaa !5
  %120 = bitcast i32** %l_src_ptr101 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %120) #1
  %121 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %data102 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %121, i32 0, i32 8
  %122 = load i32*, i32** %data102, align 8, !tbaa !81
  store i32* %122, i32** %l_src_ptr101, align 8, !tbaa !5
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %for.cond.103

for.cond.103:                                     ; preds = %for.inc.118, %sw.bb.99
  %123 = load i32, i32* %j, align 4, !tbaa !1
  %124 = load i32, i32* %l_height, align 4, !tbaa !1
  %cmp104 = icmp ult i32 %123, %124
  br i1 %cmp104, label %for.body.106, label %for.end.120

for.body.106:                                     ; preds = %for.cond.103
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %for.cond.107

for.cond.107:                                     ; preds = %for.inc.113, %for.body.106
  %125 = load i32, i32* %k, align 4, !tbaa !1
  %126 = load i32, i32* %l_width, align 4, !tbaa !1
  %cmp108 = icmp ult i32 %125, %126
  br i1 %cmp108, label %for.body.110, label %for.end.115

for.body.110:                                     ; preds = %for.cond.107
  %127 = load i32*, i32** %l_src_ptr101, align 8, !tbaa !5
  %incdec.ptr111 = getelementptr inbounds i32, i32* %127, i32 1
  store i32* %incdec.ptr111, i32** %l_src_ptr101, align 8, !tbaa !5
  %128 = load i32, i32* %127, align 4, !tbaa !1
  %129 = load i32*, i32** %l_dest_ptr100, align 8, !tbaa !5
  %incdec.ptr112 = getelementptr inbounds i32, i32* %129, i32 1
  store i32* %incdec.ptr112, i32** %l_dest_ptr100, align 8, !tbaa !5
  store i32 %128, i32* %129, align 4, !tbaa !1
  br label %for.inc.113

for.inc.113:                                      ; preds = %for.body.110
  %130 = load i32, i32* %k, align 4, !tbaa !1
  %inc114 = add i32 %130, 1
  store i32 %inc114, i32* %k, align 4, !tbaa !1
  br label %for.cond.107

for.end.115:                                      ; preds = %for.cond.107
  %131 = load i32, i32* %l_stride, align 4, !tbaa !1
  %132 = load i32*, i32** %l_src_ptr101, align 8, !tbaa !5
  %idx.ext116 = zext i32 %131 to i64
  %add.ptr117 = getelementptr inbounds i32, i32* %132, i64 %idx.ext116
  store i32* %add.ptr117, i32** %l_src_ptr101, align 8, !tbaa !5
  br label %for.inc.118

for.inc.118:                                      ; preds = %for.end.115
  %133 = load i32, i32* %j, align 4, !tbaa !1
  %inc119 = add i32 %133, 1
  store i32 %inc119, i32* %j, align 4, !tbaa !1
  br label %for.cond.103

for.end.120:                                      ; preds = %for.cond.103
  %134 = load i32*, i32** %l_dest_ptr100, align 8, !tbaa !5
  %135 = bitcast i32* %134 to i8*
  store i8* %135, i8** %p_dest.addr, align 8, !tbaa !5
  %136 = bitcast i32** %l_src_ptr101 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %136) #1
  %137 = bitcast i32** %l_dest_ptr100 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %137) #1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.14, %for.end.120, %if.end.98, %if.end.50
  %138 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %incdec.ptr121 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %138, i32 1
  store %struct.opj_image_comp* %incdec.ptr121, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %139 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %incdec.ptr122 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %139, i32 1
  store %struct.opj_tcd_tilecomp* %incdec.ptr122, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  br label %for.inc.123

for.inc.123:                                      ; preds = %sw.epilog
  %140 = load i32, i32* %i, align 4, !tbaa !1
  %inc124 = add i32 %140, 1
  store i32 %inc124, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end.125:                                      ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.125, %if.then
  %141 = bitcast i32* %l_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #1
  %142 = bitcast i32* %l_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %142) #1
  %143 = bitcast i32* %l_stride to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #1
  %144 = bitcast i32* %l_remaining to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #1
  %145 = bitcast i32* %l_size_comp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #1
  %146 = bitcast %struct.opj_tcd_resolution** %l_res to i8*
  call void @llvm.lifetime.end(i64 8, i8* %146) #1
  %147 = bitcast %struct.opj_tcd_tilecomp** %l_tilec to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #1
  %148 = bitcast %struct.opj_image_comp** %l_img_comp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %148) #1
  %149 = bitcast i32* %l_data_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %149) #1
  %150 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %150) #1
  %151 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %151) #1
  %152 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %152) #1
  %153 = load i32, i32* %retval
  ret i32 %153
}

; Function Attrs: nounwind uwtable
define i32 @opj_tcd_get_encoded_tile_size(%struct.opj_tcd* %p_tcd) #0 {
entry:
  %p_tcd.addr = alloca %struct.opj_tcd*, align 8
  %i = alloca i32, align 4
  %l_data_size = alloca i32, align 4
  %l_img_comp = alloca %struct.opj_image_comp*, align 8
  %l_tilec = alloca %struct.opj_tcd_tilecomp*, align 8
  %l_size_comp = alloca i32, align 4
  %l_remaining = alloca i32, align 4
  store %struct.opj_tcd* %p_tcd, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %l_data_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %l_data_size, align 4, !tbaa !1
  %2 = bitcast %struct.opj_image_comp** %l_img_comp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store %struct.opj_image_comp* null, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %3 = bitcast %struct.opj_tcd_tilecomp** %l_tilec to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store %struct.opj_tcd_tilecomp* null, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %4 = bitcast i32* %l_size_comp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %l_remaining to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %tcd_image = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %6, i32 0, i32 5
  %7 = load %struct.opj_tcd_image*, %struct.opj_tcd_image** %tcd_image, align 8, !tbaa !7
  %tiles = getelementptr inbounds %struct.opj_tcd_image, %struct.opj_tcd_image* %7, i32 0, i32 0
  %8 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tiles, align 8, !tbaa !13
  %comps = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %8, i32 0, i32 5
  %9 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %comps, align 8, !tbaa !18
  store %struct.opj_tcd_tilecomp* %9, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %10 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %image = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %10, i32 0, i32 6
  %11 = load %struct.opj_image*, %struct.opj_image** %image, align 8, !tbaa !23
  %comps1 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %11, i32 0, i32 6
  %12 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps1, align 8, !tbaa !24
  store %struct.opj_image_comp* %12, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %13 = load i32, i32* %i, align 4, !tbaa !1
  %14 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %image2 = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %14, i32 0, i32 6
  %15 = load %struct.opj_image*, %struct.opj_image** %image2, align 8, !tbaa !23
  %numcomps = getelementptr inbounds %struct.opj_image, %struct.opj_image* %15, i32 0, i32 4
  %16 = load i32, i32* %numcomps, align 4, !tbaa !75
  %cmp = icmp ult i32 %13, %16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %prec = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %17, i32 0, i32 6
  %18 = load i32, i32* %prec, align 4, !tbaa !26
  %shr = lshr i32 %18, 3
  store i32 %shr, i32* %l_size_comp, align 4, !tbaa !1
  %19 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %prec3 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %19, i32 0, i32 6
  %20 = load i32, i32* %prec3, align 4, !tbaa !26
  %and = and i32 %20, 7
  store i32 %and, i32* %l_remaining, align 4, !tbaa !1
  %21 = load i32, i32* %l_remaining, align 4, !tbaa !1
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %22 = load i32, i32* %l_size_comp, align 4, !tbaa !1
  %inc = add i32 %22, 1
  store i32 %inc, i32* %l_size_comp, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %23 = load i32, i32* %l_size_comp, align 4, !tbaa !1
  %cmp4 = icmp eq i32 %23, 3
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 4, i32* %l_size_comp, align 4, !tbaa !1
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  %24 = load i32, i32* %l_size_comp, align 4, !tbaa !1
  %25 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %x1 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %25, i32 0, i32 2
  %26 = load i32, i32* %x1, align 4, !tbaa !104
  %27 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %x0 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %27, i32 0, i32 0
  %28 = load i32, i32* %x0, align 4, !tbaa !101
  %sub = sub nsw i32 %26, %28
  %mul = mul i32 %24, %sub
  %29 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %y1 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %29, i32 0, i32 3
  %30 = load i32, i32* %y1, align 4, !tbaa !105
  %31 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %y0 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %31, i32 0, i32 1
  %32 = load i32, i32* %y0, align 4, !tbaa !103
  %sub7 = sub nsw i32 %30, %32
  %mul8 = mul i32 %mul, %sub7
  %33 = load i32, i32* %l_data_size, align 4, !tbaa !1
  %add = add i32 %33, %mul8
  store i32 %add, i32* %l_data_size, align 4, !tbaa !1
  %34 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %34, i32 1
  store %struct.opj_image_comp* %incdec.ptr, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %35 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %incdec.ptr9 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %35, i32 1
  store %struct.opj_tcd_tilecomp* %incdec.ptr9, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %36 = load i32, i32* %i, align 4, !tbaa !1
  %inc10 = add i32 %36, 1
  store i32 %inc10, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load i32, i32* %l_data_size, align 4, !tbaa !1
  %38 = bitcast i32* %l_remaining to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast i32* %l_size_comp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast %struct.opj_tcd_tilecomp** %l_tilec to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = bitcast %struct.opj_image_comp** %l_img_comp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast i32* %l_data_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define i32 @opj_tcd_copy_tile_data(%struct.opj_tcd* %p_tcd, i8* %p_src, i32 %p_src_length) #0 {
entry:
  %retval = alloca i32, align 4
  %p_tcd.addr = alloca %struct.opj_tcd*, align 8
  %p_src.addr = alloca i8*, align 8
  %p_src_length.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l_data_size = alloca i32, align 4
  %l_img_comp = alloca %struct.opj_image_comp*, align 8
  %l_tilec = alloca %struct.opj_tcd_tilecomp*, align 8
  %l_size_comp = alloca i32, align 4
  %l_remaining = alloca i32, align 4
  %l_nb_elem = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %l_src_ptr = alloca i8*, align 8
  %l_dest_ptr = alloca i32*, align 8
  %l_dest_ptr31 = alloca i32*, align 8
  %l_src_ptr33 = alloca i16*, align 8
  %l_src_ptr61 = alloca i32*, align 8
  %l_dest_ptr62 = alloca i32*, align 8
  store %struct.opj_tcd* %p_tcd, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  store i8* %p_src, i8** %p_src.addr, align 8, !tbaa !5
  store i32 %p_src_length, i32* %p_src_length.addr, align 4, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %l_data_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %l_data_size, align 4, !tbaa !1
  %3 = bitcast %struct.opj_image_comp** %l_img_comp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store %struct.opj_image_comp* null, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %4 = bitcast %struct.opj_tcd_tilecomp** %l_tilec to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store %struct.opj_tcd_tilecomp* null, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %5 = bitcast i32* %l_size_comp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %l_remaining to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %l_nb_elem to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %call = call i32 @opj_tcd_get_encoded_tile_size(%struct.opj_tcd* %8) #8
  store i32 %call, i32* %l_data_size, align 4, !tbaa !1
  %9 = load i32, i32* %l_data_size, align 4, !tbaa !1
  %10 = load i32, i32* %p_src_length.addr, align 4, !tbaa !1
  %cmp = icmp ne i32 %9, %10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %tcd_image = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %11, i32 0, i32 5
  %12 = load %struct.opj_tcd_image*, %struct.opj_tcd_image** %tcd_image, align 8, !tbaa !7
  %tiles = getelementptr inbounds %struct.opj_tcd_image, %struct.opj_tcd_image* %12, i32 0, i32 0
  %13 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tiles, align 8, !tbaa !13
  %comps = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %13, i32 0, i32 5
  %14 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %comps, align 8, !tbaa !18
  store %struct.opj_tcd_tilecomp* %14, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %15 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %image = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %15, i32 0, i32 6
  %16 = load %struct.opj_image*, %struct.opj_image** %image, align 8, !tbaa !23
  %comps1 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %16, i32 0, i32 6
  %17 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps1, align 8, !tbaa !24
  store %struct.opj_image_comp* %17, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.75, %if.end
  %18 = load i32, i32* %i, align 4, !tbaa !1
  %19 = load %struct.opj_tcd*, %struct.opj_tcd** %p_tcd.addr, align 8, !tbaa !5
  %image2 = getelementptr inbounds %struct.opj_tcd, %struct.opj_tcd* %19, i32 0, i32 6
  %20 = load %struct.opj_image*, %struct.opj_image** %image2, align 8, !tbaa !23
  %numcomps = getelementptr inbounds %struct.opj_image, %struct.opj_image* %20, i32 0, i32 4
  %21 = load i32, i32* %numcomps, align 4, !tbaa !75
  %cmp3 = icmp ult i32 %18, %21
  br i1 %cmp3, label %for.body, label %for.end.77

for.body:                                         ; preds = %for.cond
  %22 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %prec = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %22, i32 0, i32 6
  %23 = load i32, i32* %prec, align 4, !tbaa !26
  %shr = lshr i32 %23, 3
  store i32 %shr, i32* %l_size_comp, align 4, !tbaa !1
  %24 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %prec4 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %24, i32 0, i32 6
  %25 = load i32, i32* %prec4, align 4, !tbaa !26
  %and = and i32 %25, 7
  store i32 %and, i32* %l_remaining, align 4, !tbaa !1
  %26 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %x1 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %26, i32 0, i32 2
  %27 = load i32, i32* %x1, align 4, !tbaa !104
  %28 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %x0 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %28, i32 0, i32 0
  %29 = load i32, i32* %x0, align 4, !tbaa !101
  %sub = sub nsw i32 %27, %29
  %30 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %y1 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %30, i32 0, i32 3
  %31 = load i32, i32* %y1, align 4, !tbaa !105
  %32 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %y0 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %32, i32 0, i32 1
  %33 = load i32, i32* %y0, align 4, !tbaa !103
  %sub5 = sub nsw i32 %31, %33
  %mul = mul nsw i32 %sub, %sub5
  store i32 %mul, i32* %l_nb_elem, align 4, !tbaa !1
  %34 = load i32, i32* %l_remaining, align 4, !tbaa !1
  %tobool = icmp ne i32 %34, 0
  br i1 %tobool, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %for.body
  %35 = load i32, i32* %l_size_comp, align 4, !tbaa !1
  %inc = add i32 %35, 1
  store i32 %inc, i32* %l_size_comp, align 4, !tbaa !1
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %for.body
  %36 = load i32, i32* %l_size_comp, align 4, !tbaa !1
  %cmp8 = icmp eq i32 %36, 3
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.7
  store i32 4, i32* %l_size_comp, align 4, !tbaa !1
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end.7
  %37 = load i32, i32* %l_size_comp, align 4, !tbaa !1
  switch i32 %37, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.30
    i32 4, label %sw.bb.60
  ]

sw.bb:                                            ; preds = %if.end.10
  %38 = bitcast i8** %l_src_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %38) #1
  %39 = load i8*, i8** %p_src.addr, align 8, !tbaa !5
  store i8* %39, i8** %l_src_ptr, align 8, !tbaa !5
  %40 = bitcast i32** %l_dest_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #1
  %41 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %data = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %41, i32 0, i32 8
  %42 = load i32*, i32** %data, align 8, !tbaa !81
  store i32* %42, i32** %l_dest_ptr, align 8, !tbaa !5
  %43 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %sgnd = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %43, i32 0, i32 8
  %44 = load i32, i32* %sgnd, align 4, !tbaa !150
  %tobool11 = icmp ne i32 %44, 0
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %sw.bb
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc, %if.then.12
  %45 = load i32, i32* %j, align 4, !tbaa !1
  %46 = load i32, i32* %l_nb_elem, align 4, !tbaa !1
  %cmp14 = icmp ult i32 %45, %46
  br i1 %cmp14, label %for.body.15, label %for.end

for.body.15:                                      ; preds = %for.cond.13
  %47 = load i8*, i8** %l_src_ptr, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr, i8** %l_src_ptr, align 8, !tbaa !5
  %48 = load i8, i8* %47, align 1, !tbaa !133
  %conv = sext i8 %48 to i32
  %49 = load i32*, i32** %l_dest_ptr, align 8, !tbaa !5
  %incdec.ptr16 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %incdec.ptr16, i32** %l_dest_ptr, align 8, !tbaa !5
  store i32 %conv, i32* %49, align 4, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body.15
  %50 = load i32, i32* %j, align 4, !tbaa !1
  %inc17 = add i32 %50, 1
  store i32 %inc17, i32* %j, align 4, !tbaa !1
  br label %for.cond.13

for.end:                                          ; preds = %for.cond.13
  br label %if.end.29

if.else:                                          ; preds = %sw.bb
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.26, %if.else
  %51 = load i32, i32* %j, align 4, !tbaa !1
  %52 = load i32, i32* %l_nb_elem, align 4, !tbaa !1
  %cmp19 = icmp ult i32 %51, %52
  br i1 %cmp19, label %for.body.21, label %for.end.28

for.body.21:                                      ; preds = %for.cond.18
  %53 = load i8*, i8** %l_src_ptr, align 8, !tbaa !5
  %incdec.ptr22 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr22, i8** %l_src_ptr, align 8, !tbaa !5
  %54 = load i8, i8* %53, align 1, !tbaa !133
  %conv23 = sext i8 %54 to i32
  %and24 = and i32 %conv23, 255
  %55 = load i32*, i32** %l_dest_ptr, align 8, !tbaa !5
  %incdec.ptr25 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %incdec.ptr25, i32** %l_dest_ptr, align 8, !tbaa !5
  store i32 %and24, i32* %55, align 4, !tbaa !1
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.body.21
  %56 = load i32, i32* %j, align 4, !tbaa !1
  %inc27 = add i32 %56, 1
  store i32 %inc27, i32* %j, align 4, !tbaa !1
  br label %for.cond.18

for.end.28:                                       ; preds = %for.cond.18
  br label %if.end.29

if.end.29:                                        ; preds = %for.end.28, %for.end
  %57 = load i8*, i8** %l_src_ptr, align 8, !tbaa !5
  store i8* %57, i8** %p_src.addr, align 8, !tbaa !5
  %58 = bitcast i32** %l_dest_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %59 = bitcast i8** %l_src_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  br label %sw.epilog

sw.bb.30:                                         ; preds = %if.end.10
  %60 = bitcast i32** %l_dest_ptr31 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %60) #1
  %61 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %data32 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %61, i32 0, i32 8
  %62 = load i32*, i32** %data32, align 8, !tbaa !81
  store i32* %62, i32** %l_dest_ptr31, align 8, !tbaa !5
  %63 = bitcast i16** %l_src_ptr33 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %63) #1
  %64 = load i8*, i8** %p_src.addr, align 8, !tbaa !5
  %65 = bitcast i8* %64 to i16*
  store i16* %65, i16** %l_src_ptr33, align 8, !tbaa !5
  %66 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %sgnd34 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %66, i32 0, i32 8
  %67 = load i32, i32* %sgnd34, align 4, !tbaa !150
  %tobool35 = icmp ne i32 %67, 0
  br i1 %tobool35, label %if.then.36, label %if.else.47

if.then.36:                                       ; preds = %sw.bb.30
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.44, %if.then.36
  %68 = load i32, i32* %j, align 4, !tbaa !1
  %69 = load i32, i32* %l_nb_elem, align 4, !tbaa !1
  %cmp38 = icmp ult i32 %68, %69
  br i1 %cmp38, label %for.body.40, label %for.end.46

for.body.40:                                      ; preds = %for.cond.37
  %70 = load i16*, i16** %l_src_ptr33, align 8, !tbaa !5
  %incdec.ptr41 = getelementptr inbounds i16, i16* %70, i32 1
  store i16* %incdec.ptr41, i16** %l_src_ptr33, align 8, !tbaa !5
  %71 = load i16, i16* %70, align 2, !tbaa !155
  %conv42 = sext i16 %71 to i32
  %72 = load i32*, i32** %l_dest_ptr31, align 8, !tbaa !5
  %incdec.ptr43 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %incdec.ptr43, i32** %l_dest_ptr31, align 8, !tbaa !5
  store i32 %conv42, i32* %72, align 4, !tbaa !1
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.body.40
  %73 = load i32, i32* %j, align 4, !tbaa !1
  %inc45 = add i32 %73, 1
  store i32 %inc45, i32* %j, align 4, !tbaa !1
  br label %for.cond.37

for.end.46:                                       ; preds = %for.cond.37
  br label %if.end.59

if.else.47:                                       ; preds = %sw.bb.30
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.56, %if.else.47
  %74 = load i32, i32* %j, align 4, !tbaa !1
  %75 = load i32, i32* %l_nb_elem, align 4, !tbaa !1
  %cmp49 = icmp ult i32 %74, %75
  br i1 %cmp49, label %for.body.51, label %for.end.58

for.body.51:                                      ; preds = %for.cond.48
  %76 = load i16*, i16** %l_src_ptr33, align 8, !tbaa !5
  %incdec.ptr52 = getelementptr inbounds i16, i16* %76, i32 1
  store i16* %incdec.ptr52, i16** %l_src_ptr33, align 8, !tbaa !5
  %77 = load i16, i16* %76, align 2, !tbaa !155
  %conv53 = sext i16 %77 to i32
  %and54 = and i32 %conv53, 65535
  %78 = load i32*, i32** %l_dest_ptr31, align 8, !tbaa !5
  %incdec.ptr55 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %incdec.ptr55, i32** %l_dest_ptr31, align 8, !tbaa !5
  store i32 %and54, i32* %78, align 4, !tbaa !1
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.body.51
  %79 = load i32, i32* %j, align 4, !tbaa !1
  %inc57 = add i32 %79, 1
  store i32 %inc57, i32* %j, align 4, !tbaa !1
  br label %for.cond.48

for.end.58:                                       ; preds = %for.cond.48
  br label %if.end.59

if.end.59:                                        ; preds = %for.end.58, %for.end.46
  %80 = load i16*, i16** %l_src_ptr33, align 8, !tbaa !5
  %81 = bitcast i16* %80 to i8*
  store i8* %81, i8** %p_src.addr, align 8, !tbaa !5
  %82 = bitcast i16** %l_src_ptr33 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #1
  %83 = bitcast i32** %l_dest_ptr31 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #1
  br label %sw.epilog

sw.bb.60:                                         ; preds = %if.end.10
  %84 = bitcast i32** %l_src_ptr61 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %84) #1
  %85 = load i8*, i8** %p_src.addr, align 8, !tbaa !5
  %86 = bitcast i8* %85 to i32*
  store i32* %86, i32** %l_src_ptr61, align 8, !tbaa !5
  %87 = bitcast i32** %l_dest_ptr62 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %87) #1
  %88 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %data63 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %88, i32 0, i32 8
  %89 = load i32*, i32** %data63, align 8, !tbaa !81
  store i32* %89, i32** %l_dest_ptr62, align 8, !tbaa !5
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc.70, %sw.bb.60
  %90 = load i32, i32* %j, align 4, !tbaa !1
  %91 = load i32, i32* %l_nb_elem, align 4, !tbaa !1
  %cmp65 = icmp ult i32 %90, %91
  br i1 %cmp65, label %for.body.67, label %for.end.72

for.body.67:                                      ; preds = %for.cond.64
  %92 = load i32*, i32** %l_src_ptr61, align 8, !tbaa !5
  %incdec.ptr68 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %incdec.ptr68, i32** %l_src_ptr61, align 8, !tbaa !5
  %93 = load i32, i32* %92, align 4, !tbaa !1
  %94 = load i32*, i32** %l_dest_ptr62, align 8, !tbaa !5
  %incdec.ptr69 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %incdec.ptr69, i32** %l_dest_ptr62, align 8, !tbaa !5
  store i32 %93, i32* %94, align 4, !tbaa !1
  br label %for.inc.70

for.inc.70:                                       ; preds = %for.body.67
  %95 = load i32, i32* %j, align 4, !tbaa !1
  %inc71 = add i32 %95, 1
  store i32 %inc71, i32* %j, align 4, !tbaa !1
  br label %for.cond.64

for.end.72:                                       ; preds = %for.cond.64
  %96 = load i32*, i32** %l_src_ptr61, align 8, !tbaa !5
  %97 = bitcast i32* %96 to i8*
  store i8* %97, i8** %p_src.addr, align 8, !tbaa !5
  %98 = bitcast i32** %l_dest_ptr62 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  %99 = bitcast i32** %l_src_ptr61 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.10, %for.end.72, %if.end.59, %if.end.29
  %100 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %incdec.ptr73 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %100, i32 1
  store %struct.opj_image_comp* %incdec.ptr73, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %101 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  %incdec.ptr74 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %101, i32 1
  store %struct.opj_tcd_tilecomp* %incdec.ptr74, %struct.opj_tcd_tilecomp** %l_tilec, align 8, !tbaa !5
  br label %for.inc.75

for.inc.75:                                       ; preds = %sw.epilog
  %102 = load i32, i32* %i, align 4, !tbaa !1
  %inc76 = add i32 %102, 1
  store i32 %inc76, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end.77:                                       ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.77, %if.then
  %103 = bitcast i32* %l_nb_elem to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #1
  %104 = bitcast i32* %l_remaining to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #1
  %105 = bitcast i32* %l_size_comp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #1
  %106 = bitcast %struct.opj_tcd_tilecomp** %l_tilec to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #1
  %107 = bitcast %struct.opj_image_comp** %l_img_comp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #1
  %108 = bitcast i32* %l_data_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #1
  %109 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  %110 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #1
  %111 = load i32, i32* %retval
  ret i32 %111
}

; Function Attrs: nounwind uwtable
define internal void @opj_tcd_code_block_dec_deallocate(%struct.opj_tcd_precinct* %p_precinct) #0 {
entry:
  %p_precinct.addr = alloca %struct.opj_tcd_precinct*, align 8
  %cblkno = alloca i32, align 4
  %l_nb_code_blocks = alloca i32, align 4
  %l_code_block = alloca %struct.opj_tcd_cblk_dec*, align 8
  store %struct.opj_tcd_precinct* %p_precinct, %struct.opj_tcd_precinct** %p_precinct.addr, align 8, !tbaa !5
  %0 = bitcast i32* %cblkno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %l_nb_code_blocks to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.opj_tcd_cblk_dec** %l_code_block to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %p_precinct.addr, align 8, !tbaa !5
  %cblks = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %3, i32 0, i32 6
  %dec = bitcast %union.anon* %cblks to %struct.opj_tcd_cblk_dec**
  %4 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %dec, align 8, !tbaa !5
  store %struct.opj_tcd_cblk_dec* %4, %struct.opj_tcd_cblk_dec** %l_code_block, align 8, !tbaa !5
  %5 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_code_block, align 8, !tbaa !5
  %tobool = icmp ne %struct.opj_tcd_cblk_dec* %5, null
  br i1 %tobool, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  %6 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %p_precinct.addr, align 8, !tbaa !5
  %block_size = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %6, i32 0, i32 7
  %7 = load i32, i32* %block_size, align 4, !tbaa !132
  %conv = zext i32 %7 to i64
  %div = udiv i64 %conv, 64
  %conv1 = trunc i64 %div to i32
  store i32 %conv1, i32* %l_nb_code_blocks, align 4, !tbaa !1
  store i32 0, i32* %cblkno, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %8 = load i32, i32* %cblkno, align 4, !tbaa !1
  %9 = load i32, i32* %l_nb_code_blocks, align 4, !tbaa !1
  %cmp = icmp ult i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_code_block, align 8, !tbaa !5
  %data = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %10, i32 0, i32 0
  %11 = load i8*, i8** %data, align 8, !tbaa !139
  %tobool3 = icmp ne i8* %11, null
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %for.body
  %12 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_code_block, align 8, !tbaa !5
  %data5 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %12, i32 0, i32 0
  %13 = load i8*, i8** %data5, align 8, !tbaa !139
  call void @free(i8* %13) #7
  %14 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_code_block, align 8, !tbaa !5
  %data6 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %14, i32 0, i32 0
  store i8* null, i8** %data6, align 8, !tbaa !139
  br label %if.end

if.end:                                           ; preds = %if.then.4, %for.body
  %15 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_code_block, align 8, !tbaa !5
  %segs = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %15, i32 0, i32 1
  %16 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %segs, align 8, !tbaa !141
  %tobool7 = icmp ne %struct.opj_tcd_seg* %16, null
  br i1 %tobool7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.end
  %17 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_code_block, align 8, !tbaa !5
  %segs9 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %17, i32 0, i32 1
  %18 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %segs9, align 8, !tbaa !141
  %19 = bitcast %struct.opj_tcd_seg* %18 to i8*
  call void @free(i8* %19) #7
  %20 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_code_block, align 8, !tbaa !5
  %segs10 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %20, i32 0, i32 1
  store %struct.opj_tcd_seg* null, %struct.opj_tcd_seg** %segs10, align 8, !tbaa !141
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.end
  %21 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %l_code_block, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %21, i32 1
  store %struct.opj_tcd_cblk_dec* %incdec.ptr, %struct.opj_tcd_cblk_dec** %l_code_block, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %22 = load i32, i32* %cblkno, align 4, !tbaa !1
  %inc = add i32 %22, 1
  store i32 %inc, i32* %cblkno, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %p_precinct.addr, align 8, !tbaa !5
  %cblks12 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %23, i32 0, i32 6
  %dec13 = bitcast %union.anon* %cblks12 to %struct.opj_tcd_cblk_dec**
  %24 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %dec13, align 8, !tbaa !5
  %25 = bitcast %struct.opj_tcd_cblk_dec* %24 to i8*
  call void @free(i8* %25) #7
  %26 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %p_precinct.addr, align 8, !tbaa !5
  %cblks14 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %26, i32 0, i32 6
  %dec15 = bitcast %union.anon* %cblks14 to %struct.opj_tcd_cblk_dec**
  store %struct.opj_tcd_cblk_dec* null, %struct.opj_tcd_cblk_dec** %dec15, align 8, !tbaa !5
  br label %if.end.16

if.end.16:                                        ; preds = %for.end, %entry
  %27 = bitcast %struct.opj_tcd_cblk_dec** %l_code_block to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = bitcast i32* %l_nb_code_blocks to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast i32* %cblkno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @opj_tcd_code_block_enc_deallocate(%struct.opj_tcd_precinct* %p_precinct) #0 {
entry:
  %p_precinct.addr = alloca %struct.opj_tcd_precinct*, align 8
  %cblkno = alloca i32, align 4
  %l_nb_code_blocks = alloca i32, align 4
  %l_code_block = alloca %struct.opj_tcd_cblk_enc*, align 8
  store %struct.opj_tcd_precinct* %p_precinct, %struct.opj_tcd_precinct** %p_precinct.addr, align 8, !tbaa !5
  %0 = bitcast i32* %cblkno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %l_nb_code_blocks to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.opj_tcd_cblk_enc** %l_code_block to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %p_precinct.addr, align 8, !tbaa !5
  %cblks = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %3, i32 0, i32 6
  %enc = bitcast %union.anon* %cblks to %struct.opj_tcd_cblk_enc**
  %4 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %enc, align 8, !tbaa !5
  store %struct.opj_tcd_cblk_enc* %4, %struct.opj_tcd_cblk_enc** %l_code_block, align 8, !tbaa !5
  %5 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %l_code_block, align 8, !tbaa !5
  %tobool = icmp ne %struct.opj_tcd_cblk_enc* %5, null
  br i1 %tobool, label %if.then, label %if.end.21

if.then:                                          ; preds = %entry
  %6 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %p_precinct.addr, align 8, !tbaa !5
  %block_size = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %6, i32 0, i32 7
  %7 = load i32, i32* %block_size, align 4, !tbaa !132
  %conv = zext i32 %7 to i64
  %div = udiv i64 %conv, 64
  %conv1 = trunc i64 %div to i32
  store i32 %conv1, i32* %l_nb_code_blocks, align 4, !tbaa !1
  store i32 0, i32* %cblkno, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %8 = load i32, i32* %cblkno, align 4, !tbaa !1
  %9 = load i32, i32* %l_nb_code_blocks, align 4, !tbaa !1
  %cmp = icmp ult i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %l_code_block, align 8, !tbaa !5
  %data = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %10, i32 0, i32 0
  %11 = load i8*, i8** %data, align 8, !tbaa !50
  %tobool3 = icmp ne i8* %11, null
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %for.body
  %12 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %l_code_block, align 8, !tbaa !5
  %data5 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %12, i32 0, i32 0
  %13 = load i8*, i8** %data5, align 8, !tbaa !50
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 -1
  call void @free(i8* %add.ptr) #7
  %14 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %l_code_block, align 8, !tbaa !5
  %data6 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %14, i32 0, i32 0
  store i8* null, i8** %data6, align 8, !tbaa !50
  br label %if.end

if.end:                                           ; preds = %if.then.4, %for.body
  %15 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %l_code_block, align 8, !tbaa !5
  %layers = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %15, i32 0, i32 1
  %16 = load %struct.opj_tcd_layer*, %struct.opj_tcd_layer** %layers, align 8, !tbaa !40
  %tobool7 = icmp ne %struct.opj_tcd_layer* %16, null
  br i1 %tobool7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.end
  %17 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %l_code_block, align 8, !tbaa !5
  %layers9 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %17, i32 0, i32 1
  %18 = load %struct.opj_tcd_layer*, %struct.opj_tcd_layer** %layers9, align 8, !tbaa !40
  %19 = bitcast %struct.opj_tcd_layer* %18 to i8*
  call void @free(i8* %19) #7
  %20 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %l_code_block, align 8, !tbaa !5
  %layers10 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %20, i32 0, i32 1
  store %struct.opj_tcd_layer* null, %struct.opj_tcd_layer** %layers10, align 8, !tbaa !40
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.end
  %21 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %l_code_block, align 8, !tbaa !5
  %passes = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %21, i32 0, i32 2
  %22 = load %struct.opj_tcd_pass*, %struct.opj_tcd_pass** %passes, align 8, !tbaa !46
  %tobool12 = icmp ne %struct.opj_tcd_pass* %22, null
  br i1 %tobool12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.end.11
  %23 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %l_code_block, align 8, !tbaa !5
  %passes14 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %23, i32 0, i32 2
  %24 = load %struct.opj_tcd_pass*, %struct.opj_tcd_pass** %passes14, align 8, !tbaa !46
  %25 = bitcast %struct.opj_tcd_pass* %24 to i8*
  call void @free(i8* %25) #7
  %26 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %l_code_block, align 8, !tbaa !5
  %passes15 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %26, i32 0, i32 2
  store %struct.opj_tcd_pass* null, %struct.opj_tcd_pass** %passes15, align 8, !tbaa !46
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %if.end.11
  %27 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %l_code_block, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %27, i32 1
  store %struct.opj_tcd_cblk_enc* %incdec.ptr, %struct.opj_tcd_cblk_enc** %l_code_block, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %28 = load i32, i32* %cblkno, align 4, !tbaa !1
  %inc = add i32 %28, 1
  store i32 %inc, i32* %cblkno, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %p_precinct.addr, align 8, !tbaa !5
  %cblks17 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %29, i32 0, i32 6
  %enc18 = bitcast %union.anon* %cblks17 to %struct.opj_tcd_cblk_enc**
  %30 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %enc18, align 8, !tbaa !5
  %31 = bitcast %struct.opj_tcd_cblk_enc* %30 to i8*
  call void @free(i8* %31) #7
  %32 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %p_precinct.addr, align 8, !tbaa !5
  %cblks19 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %32, i32 0, i32 6
  %enc20 = bitcast %union.anon* %cblks19 to %struct.opj_tcd_cblk_enc**
  store %struct.opj_tcd_cblk_enc* null, %struct.opj_tcd_cblk_enc** %enc20, align 8, !tbaa !5
  br label %if.end.21

if.end.21:                                        ; preds = %for.end, %entry
  %33 = bitcast %struct.opj_tcd_cblk_enc** %l_code_block to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = bitcast i32* %l_nb_code_blocks to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast i32* %cblkno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  ret void
}

declare void @opj_tgt_destroy(%struct.opj_tgt_tree*) #5

declare i32 @opj_t2_decode_packets(%struct.opj_t2*, i32, %struct.opj_tcd_tile*, i8*, i32*, i32, %struct.opj_codestream_index*) #5

declare %struct.opj_t1* @opj_t1_create() #5

declare i32 @opj_t1_decode_cblks(%struct.opj_t1*, %struct.opj_tcd_tilecomp*, %struct.opj_tccp*) #5

declare void @opj_t1_destroy(%struct.opj_t1*) #5

declare i32 @opj_dwt_decode(%struct.opj_tcd_tilecomp*, i32) #5

declare i32 @opj_dwt_decode_real(%struct.opj_tcd_tilecomp*, i32) #5

declare i32 @opj_mct_decode_custom(i8*, i32, i8**, i32, i32) #5

declare void @opj_mct_decode(i32*, i32*, i32*, i32) #5

declare void @opj_mct_decode_real(float*, float*, float*, i32) #5

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #6

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @opj_int_clamp(i32 %a, i32 %min, i32 %max) #3 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %min.addr = alloca i32, align 4
  %max.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4, !tbaa !1
  store i32 %min, i32* %min.addr, align 4, !tbaa !1
  store i32 %max, i32* %max.addr, align 4, !tbaa !1
  %0 = load i32, i32* %a.addr, align 4, !tbaa !1
  %1 = load i32, i32* %min.addr, align 4, !tbaa !1
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %min.addr, align 4, !tbaa !1
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %a.addr, align 4, !tbaa !1
  %4 = load i32, i32* %max.addr, align 4, !tbaa !1
  %cmp1 = icmp sgt i32 %3, %4
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %5 = load i32, i32* %max.addr, align 4, !tbaa !1
  store i32 %5, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %6 = load i32, i32* %a.addr, align 4, !tbaa !1
  store i32 %6, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind
declare i64 @lrintf(float) #2

declare i32 @opj_mct_encode_custom(i8*, i32, i8**, i32, i32) #5

declare void @opj_mct_encode_real(i32*, i32*, i32*, i32) #5

declare void @opj_mct_encode(i32*, i32*, i32*, i32) #5

declare i32 @opj_dwt_encode(%struct.opj_tcd_tilecomp*) #5

declare i32 @opj_dwt_encode_real(%struct.opj_tcd_tilecomp*) #5

declare double* @opj_mct_get_mct_norms_real() #5

declare double* @opj_mct_get_mct_norms() #5

declare i32 @opj_t1_encode_cblks(%struct.opj_t1*, %struct.opj_tcd_tile*, %struct.opj_tcp*, double*) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin nounwind }
attributes #8 = { nobuiltin }
attributes #9 = { nobuiltin nounwind readnone }
attributes #10 = { nobuiltin noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !3, i64 0}
!7 = !{!8, !6, i64 24}
!8 = !{!"opj_tcd", !2, i64 0, !2, i64 4, !2, i64 8, !2, i64 12, !2, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !2, i64 56, !2, i64 60}
!9 = !{!8, !6, i64 48}
!10 = !{!11, !2, i64 8}
!11 = !{!"opj_tcp", !2, i64 0, !3, i64 4, !2, i64 8, !2, i64 12, !2, i64 16, !3, i64 20, !2, i64 420, !3, i64 424, !6, i64 5160, !6, i64 5168, !2, i64 5176, !2, i64 5180, !3, i64 5184, !6, i64 5584, !2, i64 5592, !6, i64 5600, !2, i64 5608, !6, i64 5616, !6, i64 5624, !6, i64 5632, !6, i64 5640, !2, i64 5648, !2, i64 5652, !6, i64 5656, !2, i64 5664, !2, i64 5668, !2, i64 5672, !2, i64 5672}
!12 = !{!8, !6, i64 40}
!13 = !{!14, !6, i64 0}
!14 = !{!"opj_tcd_image", !6, i64 0}
!15 = !{!16, !2, i64 16}
!16 = !{!"opj_tcd_tile", !2, i64 0, !2, i64 4, !2, i64 8, !2, i64 12, !2, i64 16, !6, i64 24, !2, i64 32, !17, i64 40, !3, i64 48, !2, i64 848}
!17 = !{!"double", !3, i64 0}
!18 = !{!16, !6, i64 24}
!19 = !{!20, !2, i64 16}
!20 = !{!"opj_tcd_tilecomp", !2, i64 0, !2, i64 4, !2, i64 8, !2, i64 12, !2, i64 16, !2, i64 20, !6, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !2, i64 52}
!21 = !{!22, !6, i64 16}
!22 = !{!"opj_encoding_param", !3, i64 0, !2, i64 4, !2, i64 8, !6, i64 16, !3, i64 24, !2, i64 25, !2, i64 25, !2, i64 25, !2, i64 25}
!23 = !{!8, !6, i64 32}
!24 = !{!25, !6, i64 24}
!25 = !{!"opj_image", !2, i64 0, !2, i64 4, !2, i64 8, !2, i64 12, !2, i64 16, !3, i64 20, !6, i64 24, !6, i64 32, !2, i64 40}
!26 = !{!27, !2, i64 24}
!27 = !{!"opj_image_comp", !2, i64 0, !2, i64 4, !2, i64 8, !2, i64 12, !2, i64 16, !2, i64 20, !2, i64 24, !2, i64 28, !2, i64 32, !2, i64 36, !2, i64 40, !6, i64 48, !28, i64 56}
!28 = !{!"short", !3, i64 0}
!29 = !{!20, !6, i64 24}
!30 = !{!31, !2, i64 24}
!31 = !{!"opj_tcd_resolution", !2, i64 0, !2, i64 4, !2, i64 8, !2, i64 12, !2, i64 16, !2, i64 20, !2, i64 24, !3, i64 32}
!32 = !{!31, !2, i64 16}
!33 = !{!31, !2, i64 20}
!34 = !{!35, !6, i64 24}
!35 = !{!"opj_tcd_band", !2, i64 0, !2, i64 4, !2, i64 8, !2, i64 12, !2, i64 16, !6, i64 24, !2, i64 32, !2, i64 36, !36, i64 40}
!36 = !{!"float", !3, i64 0}
!37 = !{!38, !2, i64 16}
!38 = !{!"opj_tcd_precinct", !2, i64 0, !2, i64 4, !2, i64 8, !2, i64 12, !2, i64 16, !2, i64 20, !3, i64 24, !2, i64 32, !6, i64 40, !6, i64 48}
!39 = !{!38, !2, i64 20}
!40 = !{!41, !6, i64 8}
!41 = !{!"opj_tcd_cblk_enc", !6, i64 0, !6, i64 8, !6, i64 16, !2, i64 24, !2, i64 28, !2, i64 32, !2, i64 36, !2, i64 40, !2, i64 44, !2, i64 48, !2, i64 52, !2, i64 56}
!42 = !{!41, !2, i64 40}
!43 = !{!41, !2, i64 52}
!44 = !{!45, !2, i64 0}
!45 = !{!"opj_tcd_layer", !2, i64 0, !2, i64 4, !17, i64 8, !6, i64 16}
!46 = !{!41, !6, i64 16}
!47 = !{!48, !2, i64 0}
!48 = !{!"opj_tcd_pass", !2, i64 0, !17, i64 8, !2, i64 16, !2, i64 20}
!49 = !{!45, !2, i64 4}
!50 = !{!41, !6, i64 0}
!51 = !{!45, !6, i64 16}
!52 = !{!17, !17, i64 0}
!53 = !{!41, !2, i64 56}
!54 = !{!48, !17, i64 8}
!55 = !{!45, !17, i64 8}
!56 = !{!16, !2, i64 32}
!57 = !{!20, !2, i64 52}
!58 = !{!41, !2, i64 32}
!59 = !{!41, !2, i64 24}
!60 = !{!41, !2, i64 36}
!61 = !{!41, !2, i64 28}
!62 = !{!8, !2, i64 56}
!63 = !{!64, !6, i64 104}
!64 = !{!"opj_codestream_info", !17, i64 0, !2, i64 8, !2, i64 12, !2, i64 16, !2, i64 20, !3, i64 24, !2, i64 28, !2, i64 32, !2, i64 36, !2, i64 40, !2, i64 44, !2, i64 48, !2, i64 52, !2, i64 56, !6, i64 64, !2, i64 72, !6, i64 80, !2, i64 88, !2, i64 92, !2, i64 96, !2, i64 100, !6, i64 104}
!65 = !{!66, !2, i64 560}
!66 = !{!"opj_tile_info", !6, i64 0, !2, i64 8, !2, i64 12, !2, i64 16, !2, i64 20, !3, i64 24, !3, i64 156, !3, i64 288, !3, i64 420, !6, i64 552, !2, i64 560, !17, i64 568, !2, i64 576, !6, i64 584, !2, i64 592, !2, i64 596, !6, i64 600}
!67 = !{!16, !17, i64 40}
!68 = !{!66, !17, i64 568}
!69 = !{!66, !6, i64 0}
!70 = !{!36, !36, i64 0}
!71 = !{!22, !3, i64 0}
!72 = !{!8, !2, i64 8}
!73 = !{!8, !2, i64 0}
!74 = !{!8, !2, i64 16}
!75 = !{!25, !2, i64 16}
!76 = !{!22, !2, i64 8}
!77 = !{!20, !2, i64 32}
!78 = !{!35, !2, i64 32}
!79 = !{!38, !6, i64 40}
!80 = !{!38, !6, i64 48}
!81 = !{!20, !6, i64 40}
!82 = !{!83, !6, i64 96}
!83 = !{!"opj_cp", !3, i64 0, !2, i64 4, !2, i64 8, !2, i64 12, !2, i64 16, !6, i64 24, !2, i64 32, !2, i64 36, !6, i64 40, !2, i64 48, !2, i64 52, !6, i64 56, !6, i64 64, !6, i64 72, !2, i64 80, !2, i64 84, !2, i64 88, !6, i64 96, !3, i64 104, !2, i64 136, !2, i64 136}
!84 = !{!11, !6, i64 5584}
!85 = !{!83, !2, i64 32}
!86 = !{!83, !2, i64 4}
!87 = !{!83, !2, i64 12}
!88 = !{!25, !2, i64 0}
!89 = !{!16, !2, i64 0}
!90 = !{!83, !2, i64 8}
!91 = !{!83, !2, i64 16}
!92 = !{!25, !2, i64 4}
!93 = !{!16, !2, i64 4}
!94 = !{!25, !2, i64 8}
!95 = !{!16, !2, i64 8}
!96 = !{!25, !2, i64 12}
!97 = !{!16, !2, i64 12}
!98 = !{!99, !2, i64 4}
!99 = !{!"opj_tccp", !2, i64 0, !2, i64 4, !2, i64 8, !2, i64 12, !2, i64 16, !2, i64 20, !2, i64 24, !3, i64 28, !2, i64 804, !2, i64 808, !3, i64 812, !3, i64 944, !2, i64 1076}
!100 = !{!27, !2, i64 0}
!101 = !{!20, !2, i64 0}
!102 = !{!27, !2, i64 4}
!103 = !{!20, !2, i64 4}
!104 = !{!20, !2, i64 8}
!105 = !{!20, !2, i64 12}
!106 = !{!107, !2, i64 0}
!107 = !{!"opj_decoding_param", !2, i64 0, !2, i64 4}
!108 = !{!20, !2, i64 20}
!109 = !{!20, !2, i64 48}
!110 = !{!99, !2, i64 20}
!111 = !{!31, !2, i64 0}
!112 = !{!31, !2, i64 4}
!113 = !{!31, !2, i64 8}
!114 = !{!31, !2, i64 12}
!115 = !{!99, !2, i64 8}
!116 = !{!99, !2, i64 12}
!117 = !{!35, !2, i64 16}
!118 = !{!35, !2, i64 0}
!119 = !{!35, !2, i64 4}
!120 = !{!35, !2, i64 8}
!121 = !{!35, !2, i64 12}
!122 = !{!123, !2, i64 4}
!123 = !{!"opj_stepsize", !2, i64 0, !2, i64 4}
!124 = !{!123, !2, i64 0}
!125 = !{!35, !36, i64 40}
!126 = !{!99, !2, i64 804}
!127 = !{!35, !2, i64 36}
!128 = !{!38, !2, i64 0}
!129 = !{!38, !2, i64 4}
!130 = !{!38, !2, i64 8}
!131 = !{!38, !2, i64 12}
!132 = !{!38, !2, i64 32}
!133 = !{!3, !3, i64 0}
!134 = !{!135, !2, i64 16}
!135 = !{!"opj_tcd_cblk_dec", !6, i64 0, !6, i64 8, !2, i64 16, !2, i64 20, !2, i64 24, !2, i64 28, !2, i64 32, !2, i64 36, !2, i64 40, !2, i64 44, !2, i64 48, !2, i64 52, !2, i64 56, !2, i64 60}
!136 = !{!135, !2, i64 20}
!137 = !{!135, !2, i64 24}
!138 = !{!135, !2, i64 28}
!139 = !{!135, !6, i64 0}
!140 = !{!135, !2, i64 40}
!141 = !{!135, !6, i64 8}
!142 = !{!135, !2, i64 60}
!143 = !{!64, !2, i64 52}
!144 = !{!64, !2, i64 56}
!145 = !{!66, !6, i64 552}
!146 = !{!64, !2, i64 12}
!147 = !{!99, !2, i64 1076}
!148 = !{!11, !2, i64 16}
!149 = !{!11, !6, i64 5632}
!150 = !{!27, !2, i64 32}
!151 = !{!11, !6, i64 5616}
!152 = !{!8, !2, i64 4}
!153 = !{!27, !2, i64 36}
!154 = !{!11, !6, i64 5624}
!155 = !{!28, !28, i64 0}
