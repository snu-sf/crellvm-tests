; ModuleID = './jcarith.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_compress_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i8*, i32, i32, %struct.jpeg_destination_mgr*, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, %struct.jpeg_component_info*, [4 x %struct.JQUANT_TBL*], [4 x i32], [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*], [16 x i8], [16 x i8], [16 x i8], i32, %struct.jpeg_scan_info*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x %struct.jpeg_component_info*], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, i32*, i32, %struct.jpeg_comp_master*, %struct.jpeg_c_main_controller*, %struct.jpeg_c_prep_controller*, %struct.jpeg_c_coef_controller*, %struct.jpeg_marker_writer*, %struct.jpeg_color_converter*, %struct.jpeg_downsampler*, %struct.jpeg_forward_dct*, %struct.jpeg_entropy_encoder*, %struct.jpeg_scan_info*, i32 }
%struct.jpeg_error_mgr = type { void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i8*)*, void (%struct.jpeg_common_struct*)*, i32, %union.anon, i32, i64, i8**, i32, i8**, i32, i32 }
%struct.jpeg_common_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i8*, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, {}*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, void (%struct.jpeg_common_struct*, i32)*, {}*, i64, i64 }
%struct.jvirt_sarray_control = type opaque
%struct.jvirt_barray_control = type opaque
%struct.jpeg_progress_mgr = type { {}*, i64, i64, i32, i32 }
%struct.jpeg_destination_mgr = type { i8*, i64, {}*, i32 (%struct.jpeg_compress_struct*)*, {}* }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_comp_master = type { {}*, {}*, {}*, i32, i32 }
%struct.jpeg_c_main_controller = type { void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i8**, i32*, i32)* }
%struct.jpeg_c_prep_controller = type { void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i8**, i32*, i32, i8***, i32*, i32)* }
%struct.jpeg_c_coef_controller = type { void (%struct.jpeg_compress_struct*, i32)*, i32 (%struct.jpeg_compress_struct*, i8***)* }
%struct.jpeg_marker_writer = type { {}*, {}*, {}*, {}*, {}*, void (%struct.jpeg_compress_struct*, i32, i32)*, void (%struct.jpeg_compress_struct*, i32)* }
%struct.jpeg_color_converter = type { {}*, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* }
%struct.jpeg_downsampler = type { {}*, void (%struct.jpeg_compress_struct*, i8***, i32, i8***, i32)*, i32 }
%struct.jpeg_forward_dct = type { {}*, [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)*] }
%struct.jpeg_entropy_encoder = type { void (%struct.jpeg_compress_struct*, i32)*, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)*, {}* }
%struct.jpeg_scan_info = type { i32, [4 x i32], i32, i32, i32, i32 }
%struct.arith_entropy_encoder = type { %struct.jpeg_entropy_encoder, i64, i64, i64, i64, i32, i32, [4 x i32], [4 x i32], i32, i32, [16 x i8*], [16 x i8*], [4 x i8] }

@jpeg_aritab = external constant [0 x i64], align 8

; Function Attrs: nounwind uwtable
define void @jinit_arith_encoder(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %entropy = alloca %struct.arith_entropy_encoder*, align 8
  %i = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.arith_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %2, i32 0, i32 1
  %3 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !5
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %3, i32 0, i32 0
  %4 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !10
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %6 = bitcast %struct.jpeg_compress_struct* %5 to %struct.jpeg_common_struct*
  %call = call i8* %4(%struct.jpeg_common_struct* %6, i32 1, i64 368) #3
  %7 = bitcast i8* %call to %struct.arith_entropy_encoder*
  store %struct.arith_entropy_encoder* %7, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %8 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %pub = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %8, i32 0, i32 0
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 74
  store %struct.jpeg_entropy_encoder* %pub, %struct.jpeg_entropy_encoder** %entropy1, align 8, !tbaa !13
  %10 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %pub2 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %10, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %pub2, i32 0, i32 0
  store void (%struct.jpeg_compress_struct*, i32)* @start_pass, void (%struct.jpeg_compress_struct*, i32)** %start_pass, align 8, !tbaa !14
  %11 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %pub3 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %11, i32 0, i32 0
  %finish_pass = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %pub3, i32 0, i32 2
  %finish_pass4 = bitcast {}** %finish_pass to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @finish_pass, void (%struct.jpeg_compress_struct*)** %finish_pass4, align 8, !tbaa !17
  store i32 0, i32* %i, align 4, !tbaa !18
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, i32* %i, align 4, !tbaa !18
  %cmp = icmp slt i32 %12, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4, !tbaa !18
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %dc_stats = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %14, i32 0, i32 11
  %arrayidx = getelementptr inbounds [16 x i8*], [16 x i8*]* %dc_stats, i32 0, i64 %idxprom
  store i8* null, i8** %arrayidx, align 8, !tbaa !1
  %15 = load i32, i32* %i, align 4, !tbaa !18
  %idxprom5 = sext i32 %15 to i64
  %16 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %ac_stats = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %16, i32 0, i32 12
  %arrayidx6 = getelementptr inbounds [16 x i8*], [16 x i8*]* %ac_stats, i32 0, i64 %idxprom5
  store i8* null, i8** %arrayidx6, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !tbaa !18
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4, !tbaa !18
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %fixed_bin = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %18, i32 0, i32 13
  %arrayidx7 = getelementptr inbounds [4 x i8], [4 x i8]* %fixed_bin, i32 0, i64 0
  store i8 113, i8* %arrayidx7, align 1, !tbaa !19
  %19 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = bitcast %struct.arith_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @start_pass(%struct.jpeg_compress_struct* %cinfo, i32 %gather_statistics) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %gather_statistics.addr = alloca i32, align 4
  %entropy = alloca %struct.arith_entropy_encoder*, align 8
  %ci = alloca i32, align 4
  %tbl = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store i32 %gather_statistics, i32* %gather_statistics.addr, align 4, !tbaa !19
  %0 = bitcast %struct.arith_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 74
  %2 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy1, align 8, !tbaa !13
  %3 = bitcast %struct.jpeg_entropy_encoder* %2 to %struct.arith_entropy_encoder*
  store %struct.arith_entropy_encoder* %3, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %4 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %tbl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i32, i32* %gather_statistics.addr, align 4, !tbaa !19
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 0
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !20
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 5
  store i32 49, i32* %msg_code, align 4, !tbaa !21
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8, !tbaa !20
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i32 0, i32 0
  %12 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !23
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %14 = bitcast %struct.jpeg_compress_struct* %13 to %struct.jpeg_common_struct*
  call void %12(%struct.jpeg_common_struct* %14) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %progressive_mode = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %15, i32 0, i32 47
  %16 = load i32, i32* %progressive_mode, align 4, !tbaa !24
  %tobool3 = icmp ne i32 %16, 0
  br i1 %tobool3, label %if.then.4, label %if.else.22

if.then.4:                                        ; preds = %if.end
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ah = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 61
  %18 = load i32, i32* %Ah, align 4, !tbaa !25
  %cmp = icmp eq i32 %18, 0
  br i1 %cmp, label %if.then.5, label %if.else.11

if.then.5:                                        ; preds = %if.then.4
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ss = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %19, i32 0, i32 59
  %20 = load i32, i32* %Ss, align 4, !tbaa !26
  %cmp6 = icmp eq i32 %20, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then.5
  %21 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %pub = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %21, i32 0, i32 0
  %encode_mcu = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %pub, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, [64 x i16]**)* @encode_mcu_DC_first, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)** %encode_mcu, align 8, !tbaa !27
  br label %if.end.10

if.else:                                          ; preds = %if.then.5
  %22 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %pub8 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %22, i32 0, i32 0
  %encode_mcu9 = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %pub8, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, [64 x i16]**)* @encode_mcu_AC_first, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)** %encode_mcu9, align 8, !tbaa !27
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.7
  br label %if.end.21

if.else.11:                                       ; preds = %if.then.4
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ss12 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %23, i32 0, i32 59
  %24 = load i32, i32* %Ss12, align 4, !tbaa !26
  %cmp13 = icmp eq i32 %24, 0
  br i1 %cmp13, label %if.then.14, label %if.else.17

if.then.14:                                       ; preds = %if.else.11
  %25 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %pub15 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %25, i32 0, i32 0
  %encode_mcu16 = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %pub15, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, [64 x i16]**)* @encode_mcu_DC_refine, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)** %encode_mcu16, align 8, !tbaa !27
  br label %if.end.20

if.else.17:                                       ; preds = %if.else.11
  %26 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %pub18 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %26, i32 0, i32 0
  %encode_mcu19 = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %pub18, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, [64 x i16]**)* @encode_mcu_AC_refine, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)** %encode_mcu19, align 8, !tbaa !27
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.17, %if.then.14
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end.10
  br label %if.end.25

if.else.22:                                       ; preds = %if.end
  %27 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %pub23 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %27, i32 0, i32 0
  %encode_mcu24 = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %pub23, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, [64 x i16]**)* @encode_mcu, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)** %encode_mcu24, align 8, !tbaa !27
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.22, %if.end.21
  store i32 0, i32* %ci, align 4, !tbaa !18
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.25
  %28 = load i32, i32* %ci, align 4, !tbaa !18
  %29 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %29, i32 0, i32 53
  %30 = load i32, i32* %comps_in_scan, align 4, !tbaa !28
  %cmp26 = icmp slt i32 %28, %30
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom = sext i32 %31 to i64
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %32, i32 0, i32 54
  %arrayidx = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom
  %33 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx, align 8, !tbaa !1
  store %struct.jpeg_component_info* %33, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %34 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ss27 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %34, i32 0, i32 59
  %35 = load i32, i32* %Ss27, align 4, !tbaa !26
  %cmp28 = icmp eq i32 %35, 0
  br i1 %cmp28, label %land.lhs.true, label %if.end.58

land.lhs.true:                                    ; preds = %for.body
  %36 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ah29 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %36, i32 0, i32 61
  %37 = load i32, i32* %Ah29, align 4, !tbaa !25
  %cmp30 = icmp eq i32 %37, 0
  br i1 %cmp30, label %if.then.31, label %if.end.58

if.then.31:                                       ; preds = %land.lhs.true
  %38 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %38, i32 0, i32 5
  %39 = load i32, i32* %dc_tbl_no, align 4, !tbaa !29
  store i32 %39, i32* %tbl, align 4, !tbaa !18
  %40 = load i32, i32* %tbl, align 4, !tbaa !18
  %cmp32 = icmp slt i32 %40, 0
  br i1 %cmp32, label %if.then.34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.31
  %41 = load i32, i32* %tbl, align 4, !tbaa !18
  %cmp33 = icmp sge i32 %41, 16
  br i1 %cmp33, label %if.then.34, label %if.end.41

if.then.34:                                       ; preds = %lor.lhs.false, %if.then.31
  %42 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err35 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %42, i32 0, i32 0
  %43 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err35, align 8, !tbaa !20
  %msg_code36 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %43, i32 0, i32 5
  store i32 50, i32* %msg_code36, align 4, !tbaa !21
  %44 = load i32, i32* %tbl, align 4, !tbaa !18
  %45 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err37 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %45, i32 0, i32 0
  %46 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err37, align 8, !tbaa !20
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %46, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx38 = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %44, i32* %arrayidx38, align 4, !tbaa !18
  %47 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err39 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %47, i32 0, i32 0
  %48 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err39, align 8, !tbaa !20
  %error_exit40 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %48, i32 0, i32 0
  %49 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit40, align 8, !tbaa !23
  %50 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %51 = bitcast %struct.jpeg_compress_struct* %50 to %struct.jpeg_common_struct*
  call void %49(%struct.jpeg_common_struct* %51) #3
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.34, %lor.lhs.false
  %52 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom42 = sext i32 %52 to i64
  %53 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %dc_stats = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %53, i32 0, i32 11
  %arrayidx43 = getelementptr inbounds [16 x i8*], [16 x i8*]* %dc_stats, i32 0, i64 %idxprom42
  %54 = load i8*, i8** %arrayidx43, align 8, !tbaa !1
  %cmp44 = icmp eq i8* %54, null
  br i1 %cmp44, label %if.then.45, label %if.end.49

if.then.45:                                       ; preds = %if.end.41
  %55 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %55, i32 0, i32 1
  %56 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !5
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %56, i32 0, i32 0
  %57 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !10
  %58 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %59 = bitcast %struct.jpeg_compress_struct* %58 to %struct.jpeg_common_struct*
  %call = call i8* %57(%struct.jpeg_common_struct* %59, i32 1, i64 64) #3
  %60 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom46 = sext i32 %60 to i64
  %61 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %dc_stats47 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %61, i32 0, i32 11
  %arrayidx48 = getelementptr inbounds [16 x i8*], [16 x i8*]* %dc_stats47, i32 0, i64 %idxprom46
  store i8* %call, i8** %arrayidx48, align 8, !tbaa !1
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.45, %if.end.41
  %62 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom50 = sext i32 %62 to i64
  %63 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %dc_stats51 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %63, i32 0, i32 11
  %arrayidx52 = getelementptr inbounds [16 x i8*], [16 x i8*]* %dc_stats51, i32 0, i64 %idxprom50
  %64 = load i8*, i8** %arrayidx52, align 8, !tbaa !1
  %call53 = call i8* @memset(i8* %64, i32 0, i64 64) #4
  %65 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom54 = sext i32 %65 to i64
  %66 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %last_dc_val = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %66, i32 0, i32 7
  %arrayidx55 = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val, i32 0, i64 %idxprom54
  store i32 0, i32* %arrayidx55, align 4, !tbaa !18
  %67 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom56 = sext i32 %67 to i64
  %68 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %dc_context = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %68, i32 0, i32 8
  %arrayidx57 = getelementptr inbounds [4 x i32], [4 x i32]* %dc_context, i32 0, i64 %idxprom56
  store i32 0, i32* %arrayidx57, align 4, !tbaa !18
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.49, %land.lhs.true, %for.body
  %69 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Se = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %69, i32 0, i32 60
  %70 = load i32, i32* %Se, align 4, !tbaa !31
  %tobool59 = icmp ne i32 %70, 0
  br i1 %tobool59, label %if.then.60, label %if.end.89

if.then.60:                                       ; preds = %if.end.58
  %71 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %71, i32 0, i32 6
  %72 = load i32, i32* %ac_tbl_no, align 4, !tbaa !32
  store i32 %72, i32* %tbl, align 4, !tbaa !18
  %73 = load i32, i32* %tbl, align 4, !tbaa !18
  %cmp61 = icmp slt i32 %73, 0
  br i1 %cmp61, label %if.then.64, label %lor.lhs.false.62

lor.lhs.false.62:                                 ; preds = %if.then.60
  %74 = load i32, i32* %tbl, align 4, !tbaa !18
  %cmp63 = icmp sge i32 %74, 16
  br i1 %cmp63, label %if.then.64, label %if.end.73

if.then.64:                                       ; preds = %lor.lhs.false.62, %if.then.60
  %75 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err65 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %75, i32 0, i32 0
  %76 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err65, align 8, !tbaa !20
  %msg_code66 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %76, i32 0, i32 5
  store i32 50, i32* %msg_code66, align 4, !tbaa !21
  %77 = load i32, i32* %tbl, align 4, !tbaa !18
  %78 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err67 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %78, i32 0, i32 0
  %79 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err67, align 8, !tbaa !20
  %msg_parm68 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %79, i32 0, i32 6
  %i69 = bitcast %union.anon* %msg_parm68 to [8 x i32]*
  %arrayidx70 = getelementptr inbounds [8 x i32], [8 x i32]* %i69, i32 0, i64 0
  store i32 %77, i32* %arrayidx70, align 4, !tbaa !18
  %80 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err71 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %80, i32 0, i32 0
  %81 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err71, align 8, !tbaa !20
  %error_exit72 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %81, i32 0, i32 0
  %82 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit72, align 8, !tbaa !23
  %83 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %84 = bitcast %struct.jpeg_compress_struct* %83 to %struct.jpeg_common_struct*
  call void %82(%struct.jpeg_common_struct* %84) #3
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.64, %lor.lhs.false.62
  %85 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom74 = sext i32 %85 to i64
  %86 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %ac_stats = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %86, i32 0, i32 12
  %arrayidx75 = getelementptr inbounds [16 x i8*], [16 x i8*]* %ac_stats, i32 0, i64 %idxprom74
  %87 = load i8*, i8** %arrayidx75, align 8, !tbaa !1
  %cmp76 = icmp eq i8* %87, null
  br i1 %cmp76, label %if.then.77, label %if.end.84

if.then.77:                                       ; preds = %if.end.73
  %88 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem78 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %88, i32 0, i32 1
  %89 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem78, align 8, !tbaa !5
  %alloc_small79 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %89, i32 0, i32 0
  %90 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small79, align 8, !tbaa !10
  %91 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %92 = bitcast %struct.jpeg_compress_struct* %91 to %struct.jpeg_common_struct*
  %call80 = call i8* %90(%struct.jpeg_common_struct* %92, i32 1, i64 256) #3
  %93 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom81 = sext i32 %93 to i64
  %94 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %ac_stats82 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %94, i32 0, i32 12
  %arrayidx83 = getelementptr inbounds [16 x i8*], [16 x i8*]* %ac_stats82, i32 0, i64 %idxprom81
  store i8* %call80, i8** %arrayidx83, align 8, !tbaa !1
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.77, %if.end.73
  %95 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom85 = sext i32 %95 to i64
  %96 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %ac_stats86 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %96, i32 0, i32 12
  %arrayidx87 = getelementptr inbounds [16 x i8*], [16 x i8*]* %ac_stats86, i32 0, i64 %idxprom85
  %97 = load i8*, i8** %arrayidx87, align 8, !tbaa !1
  %call88 = call i8* @memset(i8* %97, i32 0, i64 256) #4
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.84, %if.end.58
  br label %for.inc

for.inc:                                          ; preds = %if.end.89
  %98 = load i32, i32* %ci, align 4, !tbaa !18
  %inc = add nsw i32 %98, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !18
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %99 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %c = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %99, i32 0, i32 1
  store i64 0, i64* %c, align 8, !tbaa !33
  %100 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %a = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %100, i32 0, i32 2
  store i64 65536, i64* %a, align 8, !tbaa !34
  %101 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %sc = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %101, i32 0, i32 3
  store i64 0, i64* %sc, align 8, !tbaa !35
  %102 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %zc = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %102, i32 0, i32 4
  store i64 0, i64* %zc, align 8, !tbaa !36
  %103 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %ct = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %103, i32 0, i32 5
  store i32 11, i32* %ct, align 4, !tbaa !37
  %104 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %104, i32 0, i32 6
  store i32 -1, i32* %buffer, align 4, !tbaa !38
  %105 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %105, i32 0, i32 36
  %106 = load i32, i32* %restart_interval, align 4, !tbaa !39
  %107 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %restarts_to_go = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %107, i32 0, i32 9
  store i32 %106, i32* %restarts_to_go, align 4, !tbaa !40
  %108 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %next_restart_num = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %108, i32 0, i32 10
  store i32 0, i32* %next_restart_num, align 4, !tbaa !41
  %109 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #1
  %110 = bitcast i32* %tbl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #1
  %111 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #1
  %112 = bitcast %struct.arith_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @finish_pass(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %e = alloca %struct.arith_entropy_encoder*, align 8
  %temp = alloca i64, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.arith_entropy_encoder** %e to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %entropy = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 74
  %2 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy, align 8, !tbaa !13
  %3 = bitcast %struct.jpeg_entropy_encoder* %2 to %struct.arith_entropy_encoder*
  store %struct.arith_entropy_encoder* %3, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %4 = bitcast i64* %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %a = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %5, i32 0, i32 2
  %6 = load i64, i64* %a, align 8, !tbaa !34
  %sub = sub nsw i64 %6, 1
  %7 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %c = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %7, i32 0, i32 1
  %8 = load i64, i64* %c, align 8, !tbaa !33
  %add = add nsw i64 %sub, %8
  %and = and i64 %add, 4294901760
  store i64 %and, i64* %temp, align 8, !tbaa !42
  %9 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %c1 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %9, i32 0, i32 1
  %10 = load i64, i64* %c1, align 8, !tbaa !33
  %cmp = icmp slt i64 %and, %10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %11 = load i64, i64* %temp, align 8, !tbaa !42
  %add2 = add nsw i64 %11, 32768
  %12 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %c3 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %12, i32 0, i32 1
  store i64 %add2, i64* %c3, align 8, !tbaa !33
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load i64, i64* %temp, align 8, !tbaa !42
  %14 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %c4 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %14, i32 0, i32 1
  store i64 %13, i64* %c4, align 8, !tbaa !33
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %ct = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %15, i32 0, i32 5
  %16 = load i32, i32* %ct, align 4, !tbaa !37
  %17 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %c5 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %17, i32 0, i32 1
  %18 = load i64, i64* %c5, align 8, !tbaa !33
  %sh_prom = zext i32 %16 to i64
  %shl = shl i64 %18, %sh_prom
  store i64 %shl, i64* %c5, align 8, !tbaa !33
  %19 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %c6 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %19, i32 0, i32 1
  %20 = load i64, i64* %c6, align 8, !tbaa !33
  %and7 = and i64 %20, 4160749568
  %tobool = icmp ne i64 %and7, 0
  br i1 %tobool, label %if.then.8, label %if.else.27

if.then.8:                                        ; preds = %if.end
  %21 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %21, i32 0, i32 6
  %22 = load i32, i32* %buffer, align 4, !tbaa !38
  %cmp9 = icmp sge i32 %22, 0
  br i1 %cmp9, label %if.then.10, label %if.end.23

if.then.10:                                       ; preds = %if.then.8
  %23 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %zc = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %23, i32 0, i32 4
  %24 = load i64, i64* %zc, align 8, !tbaa !36
  %tobool11 = icmp ne i64 %24, 0
  br i1 %tobool11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %if.then.10
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.12
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_byte(i32 0, %struct.jpeg_compress_struct* %25) #3
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %26 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %zc13 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %26, i32 0, i32 4
  %27 = load i64, i64* %zc13, align 8, !tbaa !36
  %dec = add nsw i64 %27, -1
  store i64 %dec, i64* %zc13, align 8, !tbaa !36
  %tobool14 = icmp ne i64 %dec, 0
  br i1 %tobool14, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.15

if.end.15:                                        ; preds = %do.end, %if.then.10
  %28 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %buffer16 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %28, i32 0, i32 6
  %29 = load i32, i32* %buffer16, align 4, !tbaa !38
  %add17 = add nsw i32 %29, 1
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_byte(i32 %add17, %struct.jpeg_compress_struct* %30) #3
  %31 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %buffer18 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %31, i32 0, i32 6
  %32 = load i32, i32* %buffer18, align 4, !tbaa !38
  %add19 = add nsw i32 %32, 1
  %cmp20 = icmp eq i32 %add19, 255
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.15
  %33 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_byte(i32 0, %struct.jpeg_compress_struct* %33) #3
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.end.15
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.8
  %34 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %sc = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %34, i32 0, i32 3
  %35 = load i64, i64* %sc, align 8, !tbaa !35
  %36 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %zc24 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %36, i32 0, i32 4
  %37 = load i64, i64* %zc24, align 8, !tbaa !36
  %add25 = add nsw i64 %37, %35
  store i64 %add25, i64* %zc24, align 8, !tbaa !36
  %38 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %sc26 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %38, i32 0, i32 3
  store i64 0, i64* %sc26, align 8, !tbaa !35
  br label %if.end.69

if.else.27:                                       ; preds = %if.end
  %39 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %buffer28 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %39, i32 0, i32 6
  %40 = load i32, i32* %buffer28, align 4, !tbaa !38
  %cmp29 = icmp eq i32 %40, 0
  br i1 %cmp29, label %if.then.30, label %if.else.32

if.then.30:                                       ; preds = %if.else.27
  %41 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %zc31 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %41, i32 0, i32 4
  %42 = load i64, i64* %zc31, align 8, !tbaa !36
  %inc = add nsw i64 %42, 1
  store i64 %inc, i64* %zc31, align 8, !tbaa !36
  br label %if.end.48

if.else.32:                                       ; preds = %if.else.27
  %43 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %buffer33 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %43, i32 0, i32 6
  %44 = load i32, i32* %buffer33, align 4, !tbaa !38
  %cmp34 = icmp sge i32 %44, 0
  br i1 %cmp34, label %if.then.35, label %if.end.47

if.then.35:                                       ; preds = %if.else.32
  %45 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %zc36 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %45, i32 0, i32 4
  %46 = load i64, i64* %zc36, align 8, !tbaa !36
  %tobool37 = icmp ne i64 %46, 0
  br i1 %tobool37, label %if.then.38, label %if.end.45

if.then.38:                                       ; preds = %if.then.35
  br label %do.body.39

do.body.39:                                       ; preds = %do.cond.40, %if.then.38
  %47 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_byte(i32 0, %struct.jpeg_compress_struct* %47) #3
  br label %do.cond.40

do.cond.40:                                       ; preds = %do.body.39
  %48 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %zc41 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %48, i32 0, i32 4
  %49 = load i64, i64* %zc41, align 8, !tbaa !36
  %dec42 = add nsw i64 %49, -1
  store i64 %dec42, i64* %zc41, align 8, !tbaa !36
  %tobool43 = icmp ne i64 %dec42, 0
  br i1 %tobool43, label %do.body.39, label %do.end.44

do.end.44:                                        ; preds = %do.cond.40
  br label %if.end.45

if.end.45:                                        ; preds = %do.end.44, %if.then.35
  %50 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %buffer46 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %50, i32 0, i32 6
  %51 = load i32, i32* %buffer46, align 4, !tbaa !38
  %52 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_byte(i32 %51, %struct.jpeg_compress_struct* %52) #3
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.45, %if.else.32
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then.30
  %53 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %sc49 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %53, i32 0, i32 3
  %54 = load i64, i64* %sc49, align 8, !tbaa !35
  %tobool50 = icmp ne i64 %54, 0
  br i1 %tobool50, label %if.then.51, label %if.end.68

if.then.51:                                       ; preds = %if.end.48
  %55 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %zc52 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %55, i32 0, i32 4
  %56 = load i64, i64* %zc52, align 8, !tbaa !36
  %tobool53 = icmp ne i64 %56, 0
  br i1 %tobool53, label %if.then.54, label %if.end.61

if.then.54:                                       ; preds = %if.then.51
  br label %do.body.55

do.body.55:                                       ; preds = %do.cond.56, %if.then.54
  %57 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_byte(i32 0, %struct.jpeg_compress_struct* %57) #3
  br label %do.cond.56

do.cond.56:                                       ; preds = %do.body.55
  %58 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %zc57 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %58, i32 0, i32 4
  %59 = load i64, i64* %zc57, align 8, !tbaa !36
  %dec58 = add nsw i64 %59, -1
  store i64 %dec58, i64* %zc57, align 8, !tbaa !36
  %tobool59 = icmp ne i64 %dec58, 0
  br i1 %tobool59, label %do.body.55, label %do.end.60

do.end.60:                                        ; preds = %do.cond.56
  br label %if.end.61

if.end.61:                                        ; preds = %do.end.60, %if.then.51
  br label %do.body.62

do.body.62:                                       ; preds = %do.cond.63, %if.end.61
  %60 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_byte(i32 255, %struct.jpeg_compress_struct* %60) #3
  %61 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_byte(i32 0, %struct.jpeg_compress_struct* %61) #3
  br label %do.cond.63

do.cond.63:                                       ; preds = %do.body.62
  %62 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %sc64 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %62, i32 0, i32 3
  %63 = load i64, i64* %sc64, align 8, !tbaa !35
  %dec65 = add nsw i64 %63, -1
  store i64 %dec65, i64* %sc64, align 8, !tbaa !35
  %tobool66 = icmp ne i64 %dec65, 0
  br i1 %tobool66, label %do.body.62, label %do.end.67

do.end.67:                                        ; preds = %do.cond.63
  br label %if.end.68

if.end.68:                                        ; preds = %do.end.67, %if.end.48
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.end.23
  %64 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %c70 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %64, i32 0, i32 1
  %65 = load i64, i64* %c70, align 8, !tbaa !33
  %and71 = and i64 %65, 134215680
  %tobool72 = icmp ne i64 %and71, 0
  br i1 %tobool72, label %if.then.73, label %if.end.109

if.then.73:                                       ; preds = %if.end.69
  %66 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %zc74 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %66, i32 0, i32 4
  %67 = load i64, i64* %zc74, align 8, !tbaa !36
  %tobool75 = icmp ne i64 %67, 0
  br i1 %tobool75, label %if.then.76, label %if.end.83

if.then.76:                                       ; preds = %if.then.73
  br label %do.body.77

do.body.77:                                       ; preds = %do.cond.78, %if.then.76
  %68 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_byte(i32 0, %struct.jpeg_compress_struct* %68) #3
  br label %do.cond.78

do.cond.78:                                       ; preds = %do.body.77
  %69 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %zc79 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %69, i32 0, i32 4
  %70 = load i64, i64* %zc79, align 8, !tbaa !36
  %dec80 = add nsw i64 %70, -1
  store i64 %dec80, i64* %zc79, align 8, !tbaa !36
  %tobool81 = icmp ne i64 %dec80, 0
  br i1 %tobool81, label %do.body.77, label %do.end.82

do.end.82:                                        ; preds = %do.cond.78
  br label %if.end.83

if.end.83:                                        ; preds = %do.end.82, %if.then.73
  %71 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %c84 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %71, i32 0, i32 1
  %72 = load i64, i64* %c84, align 8, !tbaa !33
  %shr = ashr i64 %72, 19
  %and85 = and i64 %shr, 255
  %conv = trunc i64 %and85 to i32
  %73 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_byte(i32 %conv, %struct.jpeg_compress_struct* %73) #3
  %74 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %c86 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %74, i32 0, i32 1
  %75 = load i64, i64* %c86, align 8, !tbaa !33
  %shr87 = ashr i64 %75, 19
  %and88 = and i64 %shr87, 255
  %cmp89 = icmp eq i64 %and88, 255
  br i1 %cmp89, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %if.end.83
  %76 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_byte(i32 0, %struct.jpeg_compress_struct* %76) #3
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.91, %if.end.83
  %77 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %c93 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %77, i32 0, i32 1
  %78 = load i64, i64* %c93, align 8, !tbaa !33
  %and94 = and i64 %78, 522240
  %tobool95 = icmp ne i64 %and94, 0
  br i1 %tobool95, label %if.then.96, label %if.end.108

if.then.96:                                       ; preds = %if.end.92
  %79 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %c97 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %79, i32 0, i32 1
  %80 = load i64, i64* %c97, align 8, !tbaa !33
  %shr98 = ashr i64 %80, 11
  %and99 = and i64 %shr98, 255
  %conv100 = trunc i64 %and99 to i32
  %81 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_byte(i32 %conv100, %struct.jpeg_compress_struct* %81) #3
  %82 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %c101 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %82, i32 0, i32 1
  %83 = load i64, i64* %c101, align 8, !tbaa !33
  %shr102 = ashr i64 %83, 11
  %and103 = and i64 %shr102, 255
  %cmp104 = icmp eq i64 %and103, 255
  br i1 %cmp104, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %if.then.96
  %84 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_byte(i32 0, %struct.jpeg_compress_struct* %84) #3
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.106, %if.then.96
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.end.92
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.end.69
  %85 = bitcast i64* %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #1
  %86 = bitcast %struct.arith_entropy_encoder** %e to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @encode_mcu_DC_first(%struct.jpeg_compress_struct* %cinfo, [64 x i16]** %MCU_data) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %MCU_data.addr = alloca [64 x i16]**, align 8
  %entropy = alloca %struct.arith_entropy_encoder*, align 8
  %st = alloca i8*, align 8
  %blkn = alloca i32, align 4
  %ci = alloca i32, align 4
  %tbl = alloca i32, align 4
  %v = alloca i32, align 4
  %v2 = alloca i32, align 4
  %m = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store [64 x i16]** %MCU_data, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.arith_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 74
  %2 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy1, align 8, !tbaa !13
  %3 = bitcast %struct.jpeg_entropy_encoder* %2 to %struct.arith_entropy_encoder*
  store %struct.arith_entropy_encoder* %3, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %4 = bitcast i8** %st to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %tbl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %v2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 36
  %12 = load i32, i32* %restart_interval, align 4, !tbaa !39
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %13 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %restarts_to_go = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %13, i32 0, i32 9
  %14 = load i32, i32* %restarts_to_go, align 4, !tbaa !40
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %16 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %next_restart_num = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %16, i32 0, i32 10
  %17 = load i32, i32* %next_restart_num, align 4, !tbaa !41
  call void @emit_restart(%struct.jpeg_compress_struct* %15, i32 %17) #3
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %restart_interval3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 36
  %19 = load i32, i32* %restart_interval3, align 4, !tbaa !39
  %20 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %restarts_to_go4 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %20, i32 0, i32 9
  store i32 %19, i32* %restarts_to_go4, align 4, !tbaa !40
  %21 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %next_restart_num5 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %21, i32 0, i32 10
  %22 = load i32, i32* %next_restart_num5, align 4, !tbaa !41
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %next_restart_num5, align 4, !tbaa !41
  %23 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %next_restart_num6 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %23, i32 0, i32 10
  %24 = load i32, i32* %next_restart_num6, align 4, !tbaa !41
  %and = and i32 %24, 7
  store i32 %and, i32* %next_restart_num6, align 4, !tbaa !41
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %25 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %restarts_to_go7 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %25, i32 0, i32 9
  %26 = load i32, i32* %restarts_to_go7, align 4, !tbaa !40
  %dec = add i32 %26, -1
  store i32 %dec, i32* %restarts_to_go7, align 4, !tbaa !40
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %entry
  store i32 0, i32* %blkn, align 4, !tbaa !18
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.8
  %27 = load i32, i32* %blkn, align 4, !tbaa !18
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %28, i32 0, i32 57
  %29 = load i32, i32* %blocks_in_MCU, align 4, !tbaa !43
  %cmp9 = icmp slt i32 %27, %29
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load i32, i32* %blkn, align 4, !tbaa !18
  %idxprom = sext i32 %30 to i64
  %31 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %MCU_membership = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %31, i32 0, i32 58
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %MCU_membership, i32 0, i64 %idxprom
  %32 = load i32, i32* %arrayidx, align 4, !tbaa !18
  store i32 %32, i32* %ci, align 4, !tbaa !18
  %33 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom10 = sext i32 %33 to i64
  %34 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %34, i32 0, i32 54
  %arrayidx11 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom10
  %35 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx11, align 8, !tbaa !1
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %35, i32 0, i32 5
  %36 = load i32, i32* %dc_tbl_no, align 4, !tbaa !29
  store i32 %36, i32* %tbl, align 4, !tbaa !18
  %37 = load i32, i32* %blkn, align 4, !tbaa !18
  %idxprom12 = sext i32 %37 to i64
  %38 = load [64 x i16]**, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds [64 x i16]*, [64 x i16]** %38, i64 %idxprom12
  %39 = load [64 x i16]*, [64 x i16]** %arrayidx13, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds [64 x i16], [64 x i16]* %39, i64 0
  %arrayidx15 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx14, i32 0, i64 0
  %40 = load i16, i16* %arrayidx15, align 2, !tbaa !44
  %conv = sext i16 %40 to i32
  %41 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Al = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %41, i32 0, i32 62
  %42 = load i32, i32* %Al, align 4, !tbaa !45
  %shr = ashr i32 %conv, %42
  store i32 %shr, i32* %m, align 4, !tbaa !18
  %43 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom16 = sext i32 %43 to i64
  %44 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %dc_stats = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %44, i32 0, i32 11
  %arrayidx17 = getelementptr inbounds [16 x i8*], [16 x i8*]* %dc_stats, i32 0, i64 %idxprom16
  %45 = load i8*, i8** %arrayidx17, align 8, !tbaa !1
  %46 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom18 = sext i32 %46 to i64
  %47 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %dc_context = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %47, i32 0, i32 8
  %arrayidx19 = getelementptr inbounds [4 x i32], [4 x i32]* %dc_context, i32 0, i64 %idxprom18
  %48 = load i32, i32* %arrayidx19, align 4, !tbaa !18
  %idx.ext = sext i32 %48 to i64
  %add.ptr = getelementptr inbounds i8, i8* %45, i64 %idx.ext
  store i8* %add.ptr, i8** %st, align 8, !tbaa !1
  %49 = load i32, i32* %m, align 4, !tbaa !18
  %50 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom20 = sext i32 %50 to i64
  %51 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %last_dc_val = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %51, i32 0, i32 7
  %arrayidx21 = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val, i32 0, i64 %idxprom20
  %52 = load i32, i32* %arrayidx21, align 4, !tbaa !18
  %sub = sub nsw i32 %49, %52
  store i32 %sub, i32* %v, align 4, !tbaa !18
  %cmp22 = icmp eq i32 %sub, 0
  br i1 %cmp22, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %for.body
  %53 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %54 = load i8*, i8** %st, align 8, !tbaa !1
  call void @arith_encode(%struct.jpeg_compress_struct* %53, i8* %54, i32 0) #3
  %55 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom25 = sext i32 %55 to i64
  %56 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %dc_context26 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %56, i32 0, i32 8
  %arrayidx27 = getelementptr inbounds [4 x i32], [4 x i32]* %dc_context26, i32 0, i64 %idxprom25
  store i32 0, i32* %arrayidx27, align 4, !tbaa !18
  br label %if.end.94

if.else:                                          ; preds = %for.body
  %57 = load i32, i32* %m, align 4, !tbaa !18
  %58 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom28 = sext i32 %58 to i64
  %59 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %last_dc_val29 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %59, i32 0, i32 7
  %arrayidx30 = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val29, i32 0, i64 %idxprom28
  store i32 %57, i32* %arrayidx30, align 4, !tbaa !18
  %60 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %61 = load i8*, i8** %st, align 8, !tbaa !1
  call void @arith_encode(%struct.jpeg_compress_struct* %60, i8* %61, i32 1) #3
  %62 = load i32, i32* %v, align 4, !tbaa !18
  %cmp31 = icmp sgt i32 %62, 0
  br i1 %cmp31, label %if.then.33, label %if.else.39

if.then.33:                                       ; preds = %if.else
  %63 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %64 = load i8*, i8** %st, align 8, !tbaa !1
  %add.ptr34 = getelementptr inbounds i8, i8* %64, i64 1
  call void @arith_encode(%struct.jpeg_compress_struct* %63, i8* %add.ptr34, i32 0) #3
  %65 = load i8*, i8** %st, align 8, !tbaa !1
  %add.ptr35 = getelementptr inbounds i8, i8* %65, i64 2
  store i8* %add.ptr35, i8** %st, align 8, !tbaa !1
  %66 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom36 = sext i32 %66 to i64
  %67 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %dc_context37 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %67, i32 0, i32 8
  %arrayidx38 = getelementptr inbounds [4 x i32], [4 x i32]* %dc_context37, i32 0, i64 %idxprom36
  store i32 4, i32* %arrayidx38, align 4, !tbaa !18
  br label %if.end.46

if.else.39:                                       ; preds = %if.else
  %68 = load i32, i32* %v, align 4, !tbaa !18
  %sub40 = sub nsw i32 0, %68
  store i32 %sub40, i32* %v, align 4, !tbaa !18
  %69 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %70 = load i8*, i8** %st, align 8, !tbaa !1
  %add.ptr41 = getelementptr inbounds i8, i8* %70, i64 1
  call void @arith_encode(%struct.jpeg_compress_struct* %69, i8* %add.ptr41, i32 1) #3
  %71 = load i8*, i8** %st, align 8, !tbaa !1
  %add.ptr42 = getelementptr inbounds i8, i8* %71, i64 3
  store i8* %add.ptr42, i8** %st, align 8, !tbaa !1
  %72 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom43 = sext i32 %72 to i64
  %73 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %dc_context44 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %73, i32 0, i32 8
  %arrayidx45 = getelementptr inbounds [4 x i32], [4 x i32]* %dc_context44, i32 0, i64 %idxprom43
  store i32 8, i32* %arrayidx45, align 4, !tbaa !18
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.39, %if.then.33
  store i32 0, i32* %m, align 4, !tbaa !18
  %74 = load i32, i32* %v, align 4, !tbaa !18
  %sub47 = sub nsw i32 %74, 1
  store i32 %sub47, i32* %v, align 4, !tbaa !18
  %tobool48 = icmp ne i32 %sub47, 0
  br i1 %tobool48, label %if.then.49, label %if.end.57

if.then.49:                                       ; preds = %if.end.46
  %75 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %76 = load i8*, i8** %st, align 8, !tbaa !1
  call void @arith_encode(%struct.jpeg_compress_struct* %75, i8* %76, i32 1) #3
  store i32 1, i32* %m, align 4, !tbaa !18
  %77 = load i32, i32* %v, align 4, !tbaa !18
  store i32 %77, i32* %v2, align 4, !tbaa !18
  %78 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom50 = sext i32 %78 to i64
  %79 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %dc_stats51 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %79, i32 0, i32 11
  %arrayidx52 = getelementptr inbounds [16 x i8*], [16 x i8*]* %dc_stats51, i32 0, i64 %idxprom50
  %80 = load i8*, i8** %arrayidx52, align 8, !tbaa !1
  %add.ptr53 = getelementptr inbounds i8, i8* %80, i64 20
  store i8* %add.ptr53, i8** %st, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.49
  %81 = load i32, i32* %v2, align 4, !tbaa !18
  %shr54 = ashr i32 %81, 1
  store i32 %shr54, i32* %v2, align 4, !tbaa !18
  %tobool55 = icmp ne i32 %shr54, 0
  br i1 %tobool55, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %82 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %83 = load i8*, i8** %st, align 8, !tbaa !1
  call void @arith_encode(%struct.jpeg_compress_struct* %82, i8* %83, i32 1) #3
  %84 = load i32, i32* %m, align 4, !tbaa !18
  %shl = shl i32 %84, 1
  store i32 %shl, i32* %m, align 4, !tbaa !18
  %85 = load i8*, i8** %st, align 8, !tbaa !1
  %add.ptr56 = getelementptr inbounds i8, i8* %85, i64 1
  store i8* %add.ptr56, i8** %st, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.57

if.end.57:                                        ; preds = %while.end, %if.end.46
  %86 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %87 = load i8*, i8** %st, align 8, !tbaa !1
  call void @arith_encode(%struct.jpeg_compress_struct* %86, i8* %87, i32 0) #3
  %88 = load i32, i32* %m, align 4, !tbaa !18
  %89 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom58 = sext i32 %89 to i64
  %90 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %arith_dc_L = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %90, i32 0, i32 24
  %arrayidx59 = getelementptr inbounds [16 x i8], [16 x i8]* %arith_dc_L, i32 0, i64 %idxprom58
  %91 = load i8, i8* %arrayidx59, align 1, !tbaa !19
  %conv60 = zext i8 %91 to i32
  %sh_prom = zext i32 %conv60 to i64
  %shl61 = shl i64 1, %sh_prom
  %shr62 = ashr i64 %shl61, 1
  %conv63 = trunc i64 %shr62 to i32
  %cmp64 = icmp slt i32 %88, %conv63
  br i1 %cmp64, label %if.then.66, label %if.else.70

if.then.66:                                       ; preds = %if.end.57
  %92 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom67 = sext i32 %92 to i64
  %93 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %dc_context68 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %93, i32 0, i32 8
  %arrayidx69 = getelementptr inbounds [4 x i32], [4 x i32]* %dc_context68, i32 0, i64 %idxprom67
  store i32 0, i32* %arrayidx69, align 4, !tbaa !18
  br label %if.end.85

if.else.70:                                       ; preds = %if.end.57
  %94 = load i32, i32* %m, align 4, !tbaa !18
  %95 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom71 = sext i32 %95 to i64
  %96 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %arith_dc_U = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %96, i32 0, i32 25
  %arrayidx72 = getelementptr inbounds [16 x i8], [16 x i8]* %arith_dc_U, i32 0, i64 %idxprom71
  %97 = load i8, i8* %arrayidx72, align 1, !tbaa !19
  %conv73 = zext i8 %97 to i32
  %sh_prom74 = zext i32 %conv73 to i64
  %shl75 = shl i64 1, %sh_prom74
  %shr76 = ashr i64 %shl75, 1
  %conv77 = trunc i64 %shr76 to i32
  %cmp78 = icmp sgt i32 %94, %conv77
  br i1 %cmp78, label %if.then.80, label %if.end.84

if.then.80:                                       ; preds = %if.else.70
  %98 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom81 = sext i32 %98 to i64
  %99 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %dc_context82 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %99, i32 0, i32 8
  %arrayidx83 = getelementptr inbounds [4 x i32], [4 x i32]* %dc_context82, i32 0, i64 %idxprom81
  %100 = load i32, i32* %arrayidx83, align 4, !tbaa !18
  %add = add nsw i32 %100, 8
  store i32 %add, i32* %arrayidx83, align 4, !tbaa !18
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.80, %if.else.70
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.then.66
  %101 = load i8*, i8** %st, align 8, !tbaa !1
  %add.ptr86 = getelementptr inbounds i8, i8* %101, i64 14
  store i8* %add.ptr86, i8** %st, align 8, !tbaa !1
  br label %while.cond.87

while.cond.87:                                    ; preds = %while.body.90, %if.end.85
  %102 = load i32, i32* %m, align 4, !tbaa !18
  %shr88 = ashr i32 %102, 1
  store i32 %shr88, i32* %m, align 4, !tbaa !18
  %tobool89 = icmp ne i32 %shr88, 0
  br i1 %tobool89, label %while.body.90, label %while.end.93

while.body.90:                                    ; preds = %while.cond.87
  %103 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %104 = load i8*, i8** %st, align 8, !tbaa !1
  %105 = load i32, i32* %m, align 4, !tbaa !18
  %106 = load i32, i32* %v, align 4, !tbaa !18
  %and91 = and i32 %105, %106
  %tobool92 = icmp ne i32 %and91, 0
  %cond = select i1 %tobool92, i32 1, i32 0
  call void @arith_encode(%struct.jpeg_compress_struct* %103, i8* %104, i32 %cond) #3
  br label %while.cond.87

while.end.93:                                     ; preds = %while.cond.87
  br label %if.end.94

if.end.94:                                        ; preds = %while.end.93, %if.then.24
  br label %for.inc

for.inc:                                          ; preds = %if.end.94
  %107 = load i32, i32* %blkn, align 4, !tbaa !18
  %inc95 = add nsw i32 %107, 1
  store i32 %inc95, i32* %blkn, align 4, !tbaa !18
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %108 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #1
  %109 = bitcast i32* %v2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  %110 = bitcast i32* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #1
  %111 = bitcast i32* %tbl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #1
  %112 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #1
  %113 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #1
  %114 = bitcast i8** %st to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #1
  %115 = bitcast %struct.arith_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #1
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @encode_mcu_AC_first(%struct.jpeg_compress_struct* %cinfo, [64 x i16]** %MCU_data) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %MCU_data.addr = alloca [64 x i16]**, align 8
  %entropy = alloca %struct.arith_entropy_encoder*, align 8
  %natural_order = alloca i32*, align 8
  %block = alloca [64 x i16]*, align 8
  %st = alloca i8*, align 8
  %tbl = alloca i32, align 4
  %k = alloca i32, align 4
  %ke = alloca i32, align 4
  %v = alloca i32, align 4
  %v2 = alloca i32, align 4
  %m = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store [64 x i16]** %MCU_data, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.arith_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 74
  %2 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy1, align 8, !tbaa !13
  %3 = bitcast %struct.jpeg_entropy_encoder* %2 to %struct.arith_entropy_encoder*
  store %struct.arith_entropy_encoder* %3, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %4 = bitcast i32** %natural_order to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast [64 x i16]** %block to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i8** %st to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %tbl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %ke to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %v2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 36
  %14 = load i32, i32* %restart_interval, align 4, !tbaa !39
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %15 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %restarts_to_go = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %15, i32 0, i32 9
  %16 = load i32, i32* %restarts_to_go, align 4, !tbaa !40
  %cmp = icmp eq i32 %16, 0
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %18 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %next_restart_num = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %18, i32 0, i32 10
  %19 = load i32, i32* %next_restart_num, align 4, !tbaa !41
  call void @emit_restart(%struct.jpeg_compress_struct* %17, i32 %19) #3
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %restart_interval3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 36
  %21 = load i32, i32* %restart_interval3, align 4, !tbaa !39
  %22 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %restarts_to_go4 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %22, i32 0, i32 9
  store i32 %21, i32* %restarts_to_go4, align 4, !tbaa !40
  %23 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %next_restart_num5 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %23, i32 0, i32 10
  %24 = load i32, i32* %next_restart_num5, align 4, !tbaa !41
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %next_restart_num5, align 4, !tbaa !41
  %25 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %next_restart_num6 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %25, i32 0, i32 10
  %26 = load i32, i32* %next_restart_num6, align 4, !tbaa !41
  %and = and i32 %26, 7
  store i32 %and, i32* %next_restart_num6, align 4, !tbaa !41
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %27 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %restarts_to_go7 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %27, i32 0, i32 9
  %28 = load i32, i32* %restarts_to_go7, align 4, !tbaa !40
  %dec = add i32 %28, -1
  store i32 %dec, i32* %restarts_to_go7, align 4, !tbaa !40
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %entry
  %29 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %natural_order9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %29, i32 0, i32 64
  %30 = load i32*, i32** %natural_order9, align 8, !tbaa !46
  store i32* %30, i32** %natural_order, align 8, !tbaa !1
  %31 = load [64 x i16]**, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds [64 x i16]*, [64 x i16]** %31, i64 0
  %32 = load [64 x i16]*, [64 x i16]** %arrayidx, align 8, !tbaa !1
  store [64 x i16]* %32, [64 x i16]** %block, align 8, !tbaa !1
  %33 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %33, i32 0, i32 54
  %arrayidx10 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 0
  %34 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx10, align 8, !tbaa !1
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %34, i32 0, i32 6
  %35 = load i32, i32* %ac_tbl_no, align 4, !tbaa !32
  store i32 %35, i32* %tbl, align 4, !tbaa !18
  %36 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Se = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %36, i32 0, i32 60
  %37 = load i32, i32* %Se, align 4, !tbaa !31
  store i32 %37, i32* %ke, align 4, !tbaa !18
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.8
  %38 = load i32, i32* %ke, align 4, !tbaa !18
  %idxprom = sext i32 %38 to i64
  %39 = load i32*, i32** %natural_order, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i32, i32* %39, i64 %idxprom
  %40 = load i32, i32* %arrayidx11, align 4, !tbaa !18
  %idxprom12 = sext i32 %40 to i64
  %41 = load [64 x i16]*, [64 x i16]** %block, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds [64 x i16], [64 x i16]* %41, i32 0, i64 %idxprom12
  %42 = load i16, i16* %arrayidx13, align 2, !tbaa !44
  %conv = sext i16 %42 to i32
  store i32 %conv, i32* %v, align 4, !tbaa !18
  %cmp14 = icmp sge i32 %conv, 0
  br i1 %cmp14, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %do.body
  %43 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Al = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %43, i32 0, i32 62
  %44 = load i32, i32* %Al, align 4, !tbaa !45
  %45 = load i32, i32* %v, align 4, !tbaa !18
  %shr = ashr i32 %45, %44
  store i32 %shr, i32* %v, align 4, !tbaa !18
  %tobool17 = icmp ne i32 %shr, 0
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.then.16
  br label %do.end

if.end.19:                                        ; preds = %if.then.16
  br label %if.end.25

if.else:                                          ; preds = %do.body
  %46 = load i32, i32* %v, align 4, !tbaa !18
  %sub = sub nsw i32 0, %46
  store i32 %sub, i32* %v, align 4, !tbaa !18
  %47 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Al20 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %47, i32 0, i32 62
  %48 = load i32, i32* %Al20, align 4, !tbaa !45
  %49 = load i32, i32* %v, align 4, !tbaa !18
  %shr21 = ashr i32 %49, %48
  store i32 %shr21, i32* %v, align 4, !tbaa !18
  %tobool22 = icmp ne i32 %shr21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.else
  br label %do.end

if.end.24:                                        ; preds = %if.else
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.end.19
  br label %do.cond

do.cond:                                          ; preds = %if.end.25
  %50 = load i32, i32* %ke, align 4, !tbaa !18
  %dec26 = add nsw i32 %50, -1
  store i32 %dec26, i32* %ke, align 4, !tbaa !18
  %tobool27 = icmp ne i32 %dec26, 0
  br i1 %tobool27, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.23, %if.then.18
  %51 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ss = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %51, i32 0, i32 59
  %52 = load i32, i32* %Ss, align 4, !tbaa !26
  %sub28 = sub nsw i32 %52, 1
  store i32 %sub28, i32* %k, align 4, !tbaa !18
  br label %for.cond

for.cond:                                         ; preds = %while.end.93, %do.end
  %53 = load i32, i32* %k, align 4, !tbaa !18
  %54 = load i32, i32* %ke, align 4, !tbaa !18
  %cmp29 = icmp slt i32 %53, %54
  br i1 %cmp29, label %for.body, label %for.end.94

for.body:                                         ; preds = %for.cond
  %55 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom31 = sext i32 %55 to i64
  %56 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %ac_stats = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %56, i32 0, i32 12
  %arrayidx32 = getelementptr inbounds [16 x i8*], [16 x i8*]* %ac_stats, i32 0, i64 %idxprom31
  %57 = load i8*, i8** %arrayidx32, align 8, !tbaa !1
  %58 = load i32, i32* %k, align 4, !tbaa !18
  %mul = mul nsw i32 3, %58
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %57, i64 %idx.ext
  store i8* %add.ptr, i8** %st, align 8, !tbaa !1
  %59 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %60 = load i8*, i8** %st, align 8, !tbaa !1
  call void @arith_encode(%struct.jpeg_compress_struct* %59, i8* %60, i32 0) #3
  br label %for.cond.33

for.cond.33:                                      ; preds = %if.end.59, %for.body
  %61 = load i32, i32* %k, align 4, !tbaa !18
  %inc34 = add nsw i32 %61, 1
  store i32 %inc34, i32* %k, align 4, !tbaa !18
  %idxprom35 = sext i32 %inc34 to i64
  %62 = load i32*, i32** %natural_order, align 8, !tbaa !1
  %arrayidx36 = getelementptr inbounds i32, i32* %62, i64 %idxprom35
  %63 = load i32, i32* %arrayidx36, align 4, !tbaa !18
  %idxprom37 = sext i32 %63 to i64
  %64 = load [64 x i16]*, [64 x i16]** %block, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds [64 x i16], [64 x i16]* %64, i32 0, i64 %idxprom37
  %65 = load i16, i16* %arrayidx38, align 2, !tbaa !44
  %conv39 = sext i16 %65 to i32
  store i32 %conv39, i32* %v, align 4, !tbaa !18
  %cmp40 = icmp sge i32 %conv39, 0
  br i1 %cmp40, label %if.then.42, label %if.else.49

if.then.42:                                       ; preds = %for.cond.33
  %66 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Al43 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %66, i32 0, i32 62
  %67 = load i32, i32* %Al43, align 4, !tbaa !45
  %68 = load i32, i32* %v, align 4, !tbaa !18
  %shr44 = ashr i32 %68, %67
  store i32 %shr44, i32* %v, align 4, !tbaa !18
  %tobool45 = icmp ne i32 %shr44, 0
  br i1 %tobool45, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %if.then.42
  %69 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %70 = load i8*, i8** %st, align 8, !tbaa !1
  %add.ptr47 = getelementptr inbounds i8, i8* %70, i64 1
  call void @arith_encode(%struct.jpeg_compress_struct* %69, i8* %add.ptr47, i32 1) #3
  %71 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %72 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %fixed_bin = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %72, i32 0, i32 13
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %fixed_bin, i32 0, i32 0
  call void @arith_encode(%struct.jpeg_compress_struct* %71, i8* %arraydecay, i32 0) #3
  br label %for.end

if.end.48:                                        ; preds = %if.then.42
  br label %if.end.59

if.else.49:                                       ; preds = %for.cond.33
  %73 = load i32, i32* %v, align 4, !tbaa !18
  %sub50 = sub nsw i32 0, %73
  store i32 %sub50, i32* %v, align 4, !tbaa !18
  %74 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Al51 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %74, i32 0, i32 62
  %75 = load i32, i32* %Al51, align 4, !tbaa !45
  %76 = load i32, i32* %v, align 4, !tbaa !18
  %shr52 = ashr i32 %76, %75
  store i32 %shr52, i32* %v, align 4, !tbaa !18
  %tobool53 = icmp ne i32 %shr52, 0
  br i1 %tobool53, label %if.then.54, label %if.end.58

if.then.54:                                       ; preds = %if.else.49
  %77 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %78 = load i8*, i8** %st, align 8, !tbaa !1
  %add.ptr55 = getelementptr inbounds i8, i8* %78, i64 1
  call void @arith_encode(%struct.jpeg_compress_struct* %77, i8* %add.ptr55, i32 1) #3
  %79 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %80 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %fixed_bin56 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %80, i32 0, i32 13
  %arraydecay57 = getelementptr inbounds [4 x i8], [4 x i8]* %fixed_bin56, i32 0, i32 0
  call void @arith_encode(%struct.jpeg_compress_struct* %79, i8* %arraydecay57, i32 1) #3
  br label %for.end

if.end.58:                                        ; preds = %if.else.49
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.end.48
  %81 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %82 = load i8*, i8** %st, align 8, !tbaa !1
  %add.ptr60 = getelementptr inbounds i8, i8* %82, i64 1
  call void @arith_encode(%struct.jpeg_compress_struct* %81, i8* %add.ptr60, i32 0) #3
  %83 = load i8*, i8** %st, align 8, !tbaa !1
  %add.ptr61 = getelementptr inbounds i8, i8* %83, i64 3
  store i8* %add.ptr61, i8** %st, align 8, !tbaa !1
  br label %for.cond.33

for.end:                                          ; preds = %if.then.54, %if.then.46
  %84 = load i8*, i8** %st, align 8, !tbaa !1
  %add.ptr62 = getelementptr inbounds i8, i8* %84, i64 2
  store i8* %add.ptr62, i8** %st, align 8, !tbaa !1
  store i32 0, i32* %m, align 4, !tbaa !18
  %85 = load i32, i32* %v, align 4, !tbaa !18
  %sub63 = sub nsw i32 %85, 1
  store i32 %sub63, i32* %v, align 4, !tbaa !18
  %tobool64 = icmp ne i32 %sub63, 0
  br i1 %tobool64, label %if.then.65, label %if.end.84

if.then.65:                                       ; preds = %for.end
  %86 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %87 = load i8*, i8** %st, align 8, !tbaa !1
  call void @arith_encode(%struct.jpeg_compress_struct* %86, i8* %87, i32 1) #3
  store i32 1, i32* %m, align 4, !tbaa !18
  %88 = load i32, i32* %v, align 4, !tbaa !18
  store i32 %88, i32* %v2, align 4, !tbaa !18
  %89 = load i32, i32* %v2, align 4, !tbaa !18
  %shr66 = ashr i32 %89, 1
  store i32 %shr66, i32* %v2, align 4, !tbaa !18
  %tobool67 = icmp ne i32 %shr66, 0
  br i1 %tobool67, label %if.then.68, label %if.end.83

if.then.68:                                       ; preds = %if.then.65
  %90 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %91 = load i8*, i8** %st, align 8, !tbaa !1
  call void @arith_encode(%struct.jpeg_compress_struct* %90, i8* %91, i32 1) #3
  %92 = load i32, i32* %m, align 4, !tbaa !18
  %shl = shl i32 %92, 1
  store i32 %shl, i32* %m, align 4, !tbaa !18
  %93 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom69 = sext i32 %93 to i64
  %94 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %ac_stats70 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %94, i32 0, i32 12
  %arrayidx71 = getelementptr inbounds [16 x i8*], [16 x i8*]* %ac_stats70, i32 0, i64 %idxprom69
  %95 = load i8*, i8** %arrayidx71, align 8, !tbaa !1
  %96 = load i32, i32* %k, align 4, !tbaa !18
  %97 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom72 = sext i32 %97 to i64
  %98 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %arith_ac_K = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %98, i32 0, i32 26
  %arrayidx73 = getelementptr inbounds [16 x i8], [16 x i8]* %arith_ac_K, i32 0, i64 %idxprom72
  %99 = load i8, i8* %arrayidx73, align 1, !tbaa !19
  %conv74 = zext i8 %99 to i32
  %cmp75 = icmp sle i32 %96, %conv74
  %cond = select i1 %cmp75, i32 189, i32 217
  %idx.ext77 = sext i32 %cond to i64
  %add.ptr78 = getelementptr inbounds i8, i8* %95, i64 %idx.ext77
  store i8* %add.ptr78, i8** %st, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.68
  %100 = load i32, i32* %v2, align 4, !tbaa !18
  %shr79 = ashr i32 %100, 1
  store i32 %shr79, i32* %v2, align 4, !tbaa !18
  %tobool80 = icmp ne i32 %shr79, 0
  br i1 %tobool80, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %101 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %102 = load i8*, i8** %st, align 8, !tbaa !1
  call void @arith_encode(%struct.jpeg_compress_struct* %101, i8* %102, i32 1) #3
  %103 = load i32, i32* %m, align 4, !tbaa !18
  %shl81 = shl i32 %103, 1
  store i32 %shl81, i32* %m, align 4, !tbaa !18
  %104 = load i8*, i8** %st, align 8, !tbaa !1
  %add.ptr82 = getelementptr inbounds i8, i8* %104, i64 1
  store i8* %add.ptr82, i8** %st, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.83

if.end.83:                                        ; preds = %while.end, %if.then.65
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %for.end
  %105 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %106 = load i8*, i8** %st, align 8, !tbaa !1
  call void @arith_encode(%struct.jpeg_compress_struct* %105, i8* %106, i32 0) #3
  %107 = load i8*, i8** %st, align 8, !tbaa !1
  %add.ptr85 = getelementptr inbounds i8, i8* %107, i64 14
  store i8* %add.ptr85, i8** %st, align 8, !tbaa !1
  br label %while.cond.86

while.cond.86:                                    ; preds = %while.body.89, %if.end.84
  %108 = load i32, i32* %m, align 4, !tbaa !18
  %shr87 = ashr i32 %108, 1
  store i32 %shr87, i32* %m, align 4, !tbaa !18
  %tobool88 = icmp ne i32 %shr87, 0
  br i1 %tobool88, label %while.body.89, label %while.end.93

while.body.89:                                    ; preds = %while.cond.86
  %109 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %110 = load i8*, i8** %st, align 8, !tbaa !1
  %111 = load i32, i32* %m, align 4, !tbaa !18
  %112 = load i32, i32* %v, align 4, !tbaa !18
  %and90 = and i32 %111, %112
  %tobool91 = icmp ne i32 %and90, 0
  %cond92 = select i1 %tobool91, i32 1, i32 0
  call void @arith_encode(%struct.jpeg_compress_struct* %109, i8* %110, i32 %cond92) #3
  br label %while.cond.86

while.end.93:                                     ; preds = %while.cond.86
  br label %for.cond

for.end.94:                                       ; preds = %for.cond
  %113 = load i32, i32* %k, align 4, !tbaa !18
  %114 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Se95 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %114, i32 0, i32 60
  %115 = load i32, i32* %Se95, align 4, !tbaa !31
  %cmp96 = icmp slt i32 %113, %115
  br i1 %cmp96, label %if.then.98, label %if.end.105

if.then.98:                                       ; preds = %for.end.94
  %116 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom99 = sext i32 %116 to i64
  %117 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %ac_stats100 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %117, i32 0, i32 12
  %arrayidx101 = getelementptr inbounds [16 x i8*], [16 x i8*]* %ac_stats100, i32 0, i64 %idxprom99
  %118 = load i8*, i8** %arrayidx101, align 8, !tbaa !1
  %119 = load i32, i32* %k, align 4, !tbaa !18
  %mul102 = mul nsw i32 3, %119
  %idx.ext103 = sext i32 %mul102 to i64
  %add.ptr104 = getelementptr inbounds i8, i8* %118, i64 %idx.ext103
  store i8* %add.ptr104, i8** %st, align 8, !tbaa !1
  %120 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %121 = load i8*, i8** %st, align 8, !tbaa !1
  call void @arith_encode(%struct.jpeg_compress_struct* %120, i8* %121, i32 1) #3
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.98, %for.end.94
  %122 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %122) #1
  %123 = bitcast i32* %v2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #1
  %124 = bitcast i32* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #1
  %125 = bitcast i32* %ke to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #1
  %126 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #1
  %127 = bitcast i32* %tbl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #1
  %128 = bitcast i8** %st to i8*
  call void @llvm.lifetime.end(i64 8, i8* %128) #1
  %129 = bitcast [64 x i16]** %block to i8*
  call void @llvm.lifetime.end(i64 8, i8* %129) #1
  %130 = bitcast i32** %natural_order to i8*
  call void @llvm.lifetime.end(i64 8, i8* %130) #1
  %131 = bitcast %struct.arith_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %131) #1
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @encode_mcu_DC_refine(%struct.jpeg_compress_struct* %cinfo, [64 x i16]** %MCU_data) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %MCU_data.addr = alloca [64 x i16]**, align 8
  %entropy = alloca %struct.arith_entropy_encoder*, align 8
  %st = alloca i8*, align 8
  %Al = alloca i32, align 4
  %blkn = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store [64 x i16]** %MCU_data, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.arith_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 74
  %2 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy1, align 8, !tbaa !13
  %3 = bitcast %struct.jpeg_entropy_encoder* %2 to %struct.arith_entropy_encoder*
  store %struct.arith_entropy_encoder* %3, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %4 = bitcast i8** %st to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %Al to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 36
  %8 = load i32, i32* %restart_interval, align 4, !tbaa !39
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %9 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %restarts_to_go = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %9, i32 0, i32 9
  %10 = load i32, i32* %restarts_to_go, align 4, !tbaa !40
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %12 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %next_restart_num = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %12, i32 0, i32 10
  %13 = load i32, i32* %next_restart_num, align 4, !tbaa !41
  call void @emit_restart(%struct.jpeg_compress_struct* %11, i32 %13) #3
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %restart_interval3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 36
  %15 = load i32, i32* %restart_interval3, align 4, !tbaa !39
  %16 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %restarts_to_go4 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %16, i32 0, i32 9
  store i32 %15, i32* %restarts_to_go4, align 4, !tbaa !40
  %17 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %next_restart_num5 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %17, i32 0, i32 10
  %18 = load i32, i32* %next_restart_num5, align 4, !tbaa !41
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %next_restart_num5, align 4, !tbaa !41
  %19 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %next_restart_num6 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %19, i32 0, i32 10
  %20 = load i32, i32* %next_restart_num6, align 4, !tbaa !41
  %and = and i32 %20, 7
  store i32 %and, i32* %next_restart_num6, align 4, !tbaa !41
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %21 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %restarts_to_go7 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %21, i32 0, i32 9
  %22 = load i32, i32* %restarts_to_go7, align 4, !tbaa !40
  %dec = add i32 %22, -1
  store i32 %dec, i32* %restarts_to_go7, align 4, !tbaa !40
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %entry
  %23 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %fixed_bin = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %23, i32 0, i32 13
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %fixed_bin, i32 0, i32 0
  store i8* %arraydecay, i8** %st, align 8, !tbaa !1
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Al9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %24, i32 0, i32 62
  %25 = load i32, i32* %Al9, align 4, !tbaa !45
  store i32 %25, i32* %Al, align 4, !tbaa !18
  store i32 0, i32* %blkn, align 4, !tbaa !18
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.8
  %26 = load i32, i32* %blkn, align 4, !tbaa !18
  %27 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %27, i32 0, i32 57
  %28 = load i32, i32* %blocks_in_MCU, align 4, !tbaa !43
  %cmp10 = icmp slt i32 %26, %28
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %30 = load i8*, i8** %st, align 8, !tbaa !1
  %31 = load i32, i32* %blkn, align 4, !tbaa !18
  %idxprom = sext i32 %31 to i64
  %32 = load [64 x i16]**, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds [64 x i16]*, [64 x i16]** %32, i64 %idxprom
  %33 = load [64 x i16]*, [64 x i16]** %arrayidx, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds [64 x i16], [64 x i16]* %33, i64 0
  %arrayidx12 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx11, i32 0, i64 0
  %34 = load i16, i16* %arrayidx12, align 2, !tbaa !44
  %conv = sext i16 %34 to i32
  %35 = load i32, i32* %Al, align 4, !tbaa !18
  %shr = ashr i32 %conv, %35
  %and13 = and i32 %shr, 1
  call void @arith_encode(%struct.jpeg_compress_struct* %29, i8* %30, i32 %and13) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i32, i32* %blkn, align 4, !tbaa !18
  %inc14 = add nsw i32 %36, 1
  store i32 %inc14, i32* %blkn, align 4, !tbaa !18
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast i32* %Al to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast i8** %st to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast %struct.arith_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @encode_mcu_AC_refine(%struct.jpeg_compress_struct* %cinfo, [64 x i16]** %MCU_data) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %MCU_data.addr = alloca [64 x i16]**, align 8
  %entropy = alloca %struct.arith_entropy_encoder*, align 8
  %natural_order = alloca i32*, align 8
  %block = alloca [64 x i16]*, align 8
  %st = alloca i8*, align 8
  %tbl = alloca i32, align 4
  %k = alloca i32, align 4
  %ke = alloca i32, align 4
  %kex = alloca i32, align 4
  %v = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store [64 x i16]** %MCU_data, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.arith_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 74
  %2 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy1, align 8, !tbaa !13
  %3 = bitcast %struct.jpeg_entropy_encoder* %2 to %struct.arith_entropy_encoder*
  store %struct.arith_entropy_encoder* %3, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %4 = bitcast i32** %natural_order to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast [64 x i16]** %block to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i8** %st to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %tbl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %ke to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %kex to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %12, i32 0, i32 36
  %13 = load i32, i32* %restart_interval, align 4, !tbaa !39
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %14 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %restarts_to_go = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %14, i32 0, i32 9
  %15 = load i32, i32* %restarts_to_go, align 4, !tbaa !40
  %cmp = icmp eq i32 %15, 0
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %17 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %next_restart_num = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %17, i32 0, i32 10
  %18 = load i32, i32* %next_restart_num, align 4, !tbaa !41
  call void @emit_restart(%struct.jpeg_compress_struct* %16, i32 %18) #3
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %restart_interval3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %19, i32 0, i32 36
  %20 = load i32, i32* %restart_interval3, align 4, !tbaa !39
  %21 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %restarts_to_go4 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %21, i32 0, i32 9
  store i32 %20, i32* %restarts_to_go4, align 4, !tbaa !40
  %22 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %next_restart_num5 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %22, i32 0, i32 10
  %23 = load i32, i32* %next_restart_num5, align 4, !tbaa !41
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %next_restart_num5, align 4, !tbaa !41
  %24 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %next_restart_num6 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %24, i32 0, i32 10
  %25 = load i32, i32* %next_restart_num6, align 4, !tbaa !41
  %and = and i32 %25, 7
  store i32 %and, i32* %next_restart_num6, align 4, !tbaa !41
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %26 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %restarts_to_go7 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %26, i32 0, i32 9
  %27 = load i32, i32* %restarts_to_go7, align 4, !tbaa !40
  %dec = add i32 %27, -1
  store i32 %dec, i32* %restarts_to_go7, align 4, !tbaa !40
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %entry
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %natural_order9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %28, i32 0, i32 64
  %29 = load i32*, i32** %natural_order9, align 8, !tbaa !46
  store i32* %29, i32** %natural_order, align 8, !tbaa !1
  %30 = load [64 x i16]**, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds [64 x i16]*, [64 x i16]** %30, i64 0
  %31 = load [64 x i16]*, [64 x i16]** %arrayidx, align 8, !tbaa !1
  store [64 x i16]* %31, [64 x i16]** %block, align 8, !tbaa !1
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %32, i32 0, i32 54
  %arrayidx10 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 0
  %33 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx10, align 8, !tbaa !1
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %33, i32 0, i32 6
  %34 = load i32, i32* %ac_tbl_no, align 4, !tbaa !32
  store i32 %34, i32* %tbl, align 4, !tbaa !18
  %35 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Se = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %35, i32 0, i32 60
  %36 = load i32, i32* %Se, align 4, !tbaa !31
  store i32 %36, i32* %ke, align 4, !tbaa !18
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.8
  %37 = load i32, i32* %ke, align 4, !tbaa !18
  %idxprom = sext i32 %37 to i64
  %38 = load i32*, i32** %natural_order, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i32, i32* %38, i64 %idxprom
  %39 = load i32, i32* %arrayidx11, align 4, !tbaa !18
  %idxprom12 = sext i32 %39 to i64
  %40 = load [64 x i16]*, [64 x i16]** %block, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds [64 x i16], [64 x i16]* %40, i32 0, i64 %idxprom12
  %41 = load i16, i16* %arrayidx13, align 2, !tbaa !44
  %conv = sext i16 %41 to i32
  store i32 %conv, i32* %v, align 4, !tbaa !18
  %cmp14 = icmp sge i32 %conv, 0
  br i1 %cmp14, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %do.body
  %42 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Al = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %42, i32 0, i32 62
  %43 = load i32, i32* %Al, align 4, !tbaa !45
  %44 = load i32, i32* %v, align 4, !tbaa !18
  %shr = ashr i32 %44, %43
  store i32 %shr, i32* %v, align 4, !tbaa !18
  %tobool17 = icmp ne i32 %shr, 0
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.then.16
  br label %do.end

if.end.19:                                        ; preds = %if.then.16
  br label %if.end.25

if.else:                                          ; preds = %do.body
  %45 = load i32, i32* %v, align 4, !tbaa !18
  %sub = sub nsw i32 0, %45
  store i32 %sub, i32* %v, align 4, !tbaa !18
  %46 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Al20 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %46, i32 0, i32 62
  %47 = load i32, i32* %Al20, align 4, !tbaa !45
  %48 = load i32, i32* %v, align 4, !tbaa !18
  %shr21 = ashr i32 %48, %47
  store i32 %shr21, i32* %v, align 4, !tbaa !18
  %tobool22 = icmp ne i32 %shr21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.else
  br label %do.end

if.end.24:                                        ; preds = %if.else
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.end.19
  br label %do.cond

do.cond:                                          ; preds = %if.end.25
  %49 = load i32, i32* %ke, align 4, !tbaa !18
  %dec26 = add nsw i32 %49, -1
  store i32 %dec26, i32* %ke, align 4, !tbaa !18
  %tobool27 = icmp ne i32 %dec26, 0
  br i1 %tobool27, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.23, %if.then.18
  %50 = load i32, i32* %ke, align 4, !tbaa !18
  store i32 %50, i32* %kex, align 4, !tbaa !18
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %51 = load i32, i32* %kex, align 4, !tbaa !18
  %cmp28 = icmp sgt i32 %51, 0
  br i1 %cmp28, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %52 = load i32, i32* %kex, align 4, !tbaa !18
  %idxprom30 = sext i32 %52 to i64
  %53 = load i32*, i32** %natural_order, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i32, i32* %53, i64 %idxprom30
  %54 = load i32, i32* %arrayidx31, align 4, !tbaa !18
  %idxprom32 = sext i32 %54 to i64
  %55 = load [64 x i16]*, [64 x i16]** %block, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds [64 x i16], [64 x i16]* %55, i32 0, i64 %idxprom32
  %56 = load i16, i16* %arrayidx33, align 2, !tbaa !44
  %conv34 = sext i16 %56 to i32
  store i32 %conv34, i32* %v, align 4, !tbaa !18
  %cmp35 = icmp sge i32 %conv34, 0
  br i1 %cmp35, label %if.then.37, label %if.else.42

if.then.37:                                       ; preds = %for.body
  %57 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ah = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %57, i32 0, i32 61
  %58 = load i32, i32* %Ah, align 4, !tbaa !25
  %59 = load i32, i32* %v, align 4, !tbaa !18
  %shr38 = ashr i32 %59, %58
  store i32 %shr38, i32* %v, align 4, !tbaa !18
  %tobool39 = icmp ne i32 %shr38, 0
  br i1 %tobool39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.then.37
  br label %for.end

if.end.41:                                        ; preds = %if.then.37
  br label %if.end.49

if.else.42:                                       ; preds = %for.body
  %60 = load i32, i32* %v, align 4, !tbaa !18
  %sub43 = sub nsw i32 0, %60
  store i32 %sub43, i32* %v, align 4, !tbaa !18
  %61 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ah44 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %61, i32 0, i32 61
  %62 = load i32, i32* %Ah44, align 4, !tbaa !25
  %63 = load i32, i32* %v, align 4, !tbaa !18
  %shr45 = ashr i32 %63, %62
  store i32 %shr45, i32* %v, align 4, !tbaa !18
  %tobool46 = icmp ne i32 %shr45, 0
  br i1 %tobool46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.else.42
  br label %for.end

if.end.48:                                        ; preds = %if.else.42
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.end.41
  br label %for.inc

for.inc:                                          ; preds = %if.end.49
  %64 = load i32, i32* %kex, align 4, !tbaa !18
  %dec50 = add nsw i32 %64, -1
  store i32 %dec50, i32* %kex, align 4, !tbaa !18
  br label %for.cond

for.end:                                          ; preds = %if.then.47, %if.then.40, %for.cond
  %65 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ss = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %65, i32 0, i32 59
  %66 = load i32, i32* %Ss, align 4, !tbaa !26
  %sub51 = sub nsw i32 %66, 1
  store i32 %sub51, i32* %k, align 4, !tbaa !18
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.end.105, %for.end
  %67 = load i32, i32* %k, align 4, !tbaa !18
  %68 = load i32, i32* %ke, align 4, !tbaa !18
  %cmp53 = icmp slt i32 %67, %68
  br i1 %cmp53, label %for.body.55, label %for.end.106

for.body.55:                                      ; preds = %for.cond.52
  %69 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom56 = sext i32 %69 to i64
  %70 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %ac_stats = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %70, i32 0, i32 12
  %arrayidx57 = getelementptr inbounds [16 x i8*], [16 x i8*]* %ac_stats, i32 0, i64 %idxprom56
  %71 = load i8*, i8** %arrayidx57, align 8, !tbaa !1
  %72 = load i32, i32* %k, align 4, !tbaa !18
  %mul = mul nsw i32 3, %72
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %71, i64 %idx.ext
  store i8* %add.ptr, i8** %st, align 8, !tbaa !1
  %73 = load i32, i32* %k, align 4, !tbaa !18
  %74 = load i32, i32* %kex, align 4, !tbaa !18
  %cmp58 = icmp sge i32 %73, %74
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %for.body.55
  %75 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %76 = load i8*, i8** %st, align 8, !tbaa !1
  call void @arith_encode(%struct.jpeg_compress_struct* %75, i8* %76, i32 0) #3
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %for.body.55
  br label %for.cond.62

for.cond.62:                                      ; preds = %if.end.102, %if.end.61
  %77 = load i32, i32* %k, align 4, !tbaa !18
  %inc63 = add nsw i32 %77, 1
  store i32 %inc63, i32* %k, align 4, !tbaa !18
  %idxprom64 = sext i32 %inc63 to i64
  %78 = load i32*, i32** %natural_order, align 8, !tbaa !1
  %arrayidx65 = getelementptr inbounds i32, i32* %78, i64 %idxprom64
  %79 = load i32, i32* %arrayidx65, align 4, !tbaa !18
  %idxprom66 = sext i32 %79 to i64
  %80 = load [64 x i16]*, [64 x i16]** %block, align 8, !tbaa !1
  %arrayidx67 = getelementptr inbounds [64 x i16], [64 x i16]* %80, i32 0, i64 %idxprom66
  %81 = load i16, i16* %arrayidx67, align 2, !tbaa !44
  %conv68 = sext i16 %81 to i32
  store i32 %conv68, i32* %v, align 4, !tbaa !18
  %cmp69 = icmp sge i32 %conv68, 0
  br i1 %cmp69, label %if.then.71, label %if.else.85

if.then.71:                                       ; preds = %for.cond.62
  %82 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Al72 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %82, i32 0, i32 62
  %83 = load i32, i32* %Al72, align 4, !tbaa !45
  %84 = load i32, i32* %v, align 4, !tbaa !18
  %shr73 = ashr i32 %84, %83
  store i32 %shr73, i32* %v, align 4, !tbaa !18
  %tobool74 = icmp ne i32 %shr73, 0
  br i1 %tobool74, label %if.then.75, label %if.end.84

if.then.75:                                       ; preds = %if.then.71
  %85 = load i32, i32* %v, align 4, !tbaa !18
  %shr76 = ashr i32 %85, 1
  %tobool77 = icmp ne i32 %shr76, 0
  br i1 %tobool77, label %if.then.78, label %if.else.81

if.then.78:                                       ; preds = %if.then.75
  %86 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %87 = load i8*, i8** %st, align 8, !tbaa !1
  %add.ptr79 = getelementptr inbounds i8, i8* %87, i64 2
  %88 = load i32, i32* %v, align 4, !tbaa !18
  %and80 = and i32 %88, 1
  call void @arith_encode(%struct.jpeg_compress_struct* %86, i8* %add.ptr79, i32 %and80) #3
  br label %if.end.83

if.else.81:                                       ; preds = %if.then.75
  %89 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %90 = load i8*, i8** %st, align 8, !tbaa !1
  %add.ptr82 = getelementptr inbounds i8, i8* %90, i64 1
  call void @arith_encode(%struct.jpeg_compress_struct* %89, i8* %add.ptr82, i32 1) #3
  %91 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %92 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %fixed_bin = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %92, i32 0, i32 13
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %fixed_bin, i32 0, i32 0
  call void @arith_encode(%struct.jpeg_compress_struct* %91, i8* %arraydecay, i32 0) #3
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.81, %if.then.78
  br label %for.end.105

if.end.84:                                        ; preds = %if.then.71
  br label %if.end.102

if.else.85:                                       ; preds = %for.cond.62
  %93 = load i32, i32* %v, align 4, !tbaa !18
  %sub86 = sub nsw i32 0, %93
  store i32 %sub86, i32* %v, align 4, !tbaa !18
  %94 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Al87 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %94, i32 0, i32 62
  %95 = load i32, i32* %Al87, align 4, !tbaa !45
  %96 = load i32, i32* %v, align 4, !tbaa !18
  %shr88 = ashr i32 %96, %95
  store i32 %shr88, i32* %v, align 4, !tbaa !18
  %tobool89 = icmp ne i32 %shr88, 0
  br i1 %tobool89, label %if.then.90, label %if.end.101

if.then.90:                                       ; preds = %if.else.85
  %97 = load i32, i32* %v, align 4, !tbaa !18
  %shr91 = ashr i32 %97, 1
  %tobool92 = icmp ne i32 %shr91, 0
  br i1 %tobool92, label %if.then.93, label %if.else.96

if.then.93:                                       ; preds = %if.then.90
  %98 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %99 = load i8*, i8** %st, align 8, !tbaa !1
  %add.ptr94 = getelementptr inbounds i8, i8* %99, i64 2
  %100 = load i32, i32* %v, align 4, !tbaa !18
  %and95 = and i32 %100, 1
  call void @arith_encode(%struct.jpeg_compress_struct* %98, i8* %add.ptr94, i32 %and95) #3
  br label %if.end.100

if.else.96:                                       ; preds = %if.then.90
  %101 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %102 = load i8*, i8** %st, align 8, !tbaa !1
  %add.ptr97 = getelementptr inbounds i8, i8* %102, i64 1
  call void @arith_encode(%struct.jpeg_compress_struct* %101, i8* %add.ptr97, i32 1) #3
  %103 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %104 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %fixed_bin98 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %104, i32 0, i32 13
  %arraydecay99 = getelementptr inbounds [4 x i8], [4 x i8]* %fixed_bin98, i32 0, i32 0
  call void @arith_encode(%struct.jpeg_compress_struct* %103, i8* %arraydecay99, i32 1) #3
  br label %if.end.100

if.end.100:                                       ; preds = %if.else.96, %if.then.93
  br label %for.end.105

if.end.101:                                       ; preds = %if.else.85
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %if.end.84
  %105 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %106 = load i8*, i8** %st, align 8, !tbaa !1
  %add.ptr103 = getelementptr inbounds i8, i8* %106, i64 1
  call void @arith_encode(%struct.jpeg_compress_struct* %105, i8* %add.ptr103, i32 0) #3
  %107 = load i8*, i8** %st, align 8, !tbaa !1
  %add.ptr104 = getelementptr inbounds i8, i8* %107, i64 3
  store i8* %add.ptr104, i8** %st, align 8, !tbaa !1
  br label %for.cond.62

for.end.105:                                      ; preds = %if.end.100, %if.end.83
  br label %for.cond.52

for.end.106:                                      ; preds = %for.cond.52
  %108 = load i32, i32* %k, align 4, !tbaa !18
  %109 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Se107 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %109, i32 0, i32 60
  %110 = load i32, i32* %Se107, align 4, !tbaa !31
  %cmp108 = icmp slt i32 %108, %110
  br i1 %cmp108, label %if.then.110, label %if.end.117

if.then.110:                                      ; preds = %for.end.106
  %111 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom111 = sext i32 %111 to i64
  %112 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %ac_stats112 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %112, i32 0, i32 12
  %arrayidx113 = getelementptr inbounds [16 x i8*], [16 x i8*]* %ac_stats112, i32 0, i64 %idxprom111
  %113 = load i8*, i8** %arrayidx113, align 8, !tbaa !1
  %114 = load i32, i32* %k, align 4, !tbaa !18
  %mul114 = mul nsw i32 3, %114
  %idx.ext115 = sext i32 %mul114 to i64
  %add.ptr116 = getelementptr inbounds i8, i8* %113, i64 %idx.ext115
  store i8* %add.ptr116, i8** %st, align 8, !tbaa !1
  %115 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %116 = load i8*, i8** %st, align 8, !tbaa !1
  call void @arith_encode(%struct.jpeg_compress_struct* %115, i8* %116, i32 1) #3
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.110, %for.end.106
  %117 = bitcast i32* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #1
  %118 = bitcast i32* %kex to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #1
  %119 = bitcast i32* %ke to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #1
  %120 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #1
  %121 = bitcast i32* %tbl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #1
  %122 = bitcast i8** %st to i8*
  call void @llvm.lifetime.end(i64 8, i8* %122) #1
  %123 = bitcast [64 x i16]** %block to i8*
  call void @llvm.lifetime.end(i64 8, i8* %123) #1
  %124 = bitcast i32** %natural_order to i8*
  call void @llvm.lifetime.end(i64 8, i8* %124) #1
  %125 = bitcast %struct.arith_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %125) #1
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @encode_mcu(%struct.jpeg_compress_struct* %cinfo, [64 x i16]** %MCU_data) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %MCU_data.addr = alloca [64 x i16]**, align 8
  %entropy = alloca %struct.arith_entropy_encoder*, align 8
  %natural_order = alloca i32*, align 8
  %block = alloca [64 x i16]*, align 8
  %st = alloca i8*, align 8
  %tbl = alloca i32, align 4
  %k = alloca i32, align 4
  %ke = alloca i32, align 4
  %v = alloca i32, align 4
  %v2 = alloca i32, align 4
  %m = alloca i32, align 4
  %blkn = alloca i32, align 4
  %ci = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store [64 x i16]** %MCU_data, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.arith_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 74
  %2 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy1, align 8, !tbaa !13
  %3 = bitcast %struct.jpeg_entropy_encoder* %2 to %struct.arith_entropy_encoder*
  store %struct.arith_entropy_encoder* %3, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %4 = bitcast i32** %natural_order to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast [64 x i16]** %block to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i8** %st to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %tbl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %ke to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %v2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 36
  %17 = load i32, i32* %restart_interval, align 4, !tbaa !39
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %18 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %restarts_to_go = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %18, i32 0, i32 9
  %19 = load i32, i32* %restarts_to_go, align 4, !tbaa !40
  %cmp = icmp eq i32 %19, 0
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %21 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %next_restart_num = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %21, i32 0, i32 10
  %22 = load i32, i32* %next_restart_num, align 4, !tbaa !41
  call void @emit_restart(%struct.jpeg_compress_struct* %20, i32 %22) #3
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %restart_interval3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %23, i32 0, i32 36
  %24 = load i32, i32* %restart_interval3, align 4, !tbaa !39
  %25 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %restarts_to_go4 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %25, i32 0, i32 9
  store i32 %24, i32* %restarts_to_go4, align 4, !tbaa !40
  %26 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %next_restart_num5 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %26, i32 0, i32 10
  %27 = load i32, i32* %next_restart_num5, align 4, !tbaa !41
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %next_restart_num5, align 4, !tbaa !41
  %28 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %next_restart_num6 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %28, i32 0, i32 10
  %29 = load i32, i32* %next_restart_num6, align 4, !tbaa !41
  %and = and i32 %29, 7
  store i32 %and, i32* %next_restart_num6, align 4, !tbaa !41
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %30 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %restarts_to_go7 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %30, i32 0, i32 9
  %31 = load i32, i32* %restarts_to_go7, align 4, !tbaa !40
  %dec = add i32 %31, -1
  store i32 %dec, i32* %restarts_to_go7, align 4, !tbaa !40
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %entry
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %natural_order9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %32, i32 0, i32 64
  %33 = load i32*, i32** %natural_order9, align 8, !tbaa !46
  store i32* %33, i32** %natural_order, align 8, !tbaa !1
  store i32 0, i32* %blkn, align 4, !tbaa !18
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.8
  %34 = load i32, i32* %blkn, align 4, !tbaa !18
  %35 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %35, i32 0, i32 57
  %36 = load i32, i32* %blocks_in_MCU, align 4, !tbaa !43
  %cmp10 = icmp slt i32 %34, %36
  br i1 %cmp10, label %for.body, label %for.end.188

for.body:                                         ; preds = %for.cond
  %37 = load i32, i32* %blkn, align 4, !tbaa !18
  %idxprom = sext i32 %37 to i64
  %38 = load [64 x i16]**, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds [64 x i16]*, [64 x i16]** %38, i64 %idxprom
  %39 = load [64 x i16]*, [64 x i16]** %arrayidx, align 8, !tbaa !1
  store [64 x i16]* %39, [64 x i16]** %block, align 8, !tbaa !1
  %40 = load i32, i32* %blkn, align 4, !tbaa !18
  %idxprom11 = sext i32 %40 to i64
  %41 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %MCU_membership = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %41, i32 0, i32 58
  %arrayidx12 = getelementptr inbounds [10 x i32], [10 x i32]* %MCU_membership, i32 0, i64 %idxprom11
  %42 = load i32, i32* %arrayidx12, align 4, !tbaa !18
  store i32 %42, i32* %ci, align 4, !tbaa !18
  %43 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom13 = sext i32 %43 to i64
  %44 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %44, i32 0, i32 54
  %arrayidx14 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom13
  %45 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx14, align 8, !tbaa !1
  store %struct.jpeg_component_info* %45, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %46 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %46, i32 0, i32 5
  %47 = load i32, i32* %dc_tbl_no, align 4, !tbaa !29
  store i32 %47, i32* %tbl, align 4, !tbaa !18
  %48 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom15 = sext i32 %48 to i64
  %49 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %dc_stats = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %49, i32 0, i32 11
  %arrayidx16 = getelementptr inbounds [16 x i8*], [16 x i8*]* %dc_stats, i32 0, i64 %idxprom15
  %50 = load i8*, i8** %arrayidx16, align 8, !tbaa !1
  %51 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom17 = sext i32 %51 to i64
  %52 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %dc_context = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %52, i32 0, i32 8
  %arrayidx18 = getelementptr inbounds [4 x i32], [4 x i32]* %dc_context, i32 0, i64 %idxprom17
  %53 = load i32, i32* %arrayidx18, align 4, !tbaa !18
  %idx.ext = sext i32 %53 to i64
  %add.ptr = getelementptr inbounds i8, i8* %50, i64 %idx.ext
  store i8* %add.ptr, i8** %st, align 8, !tbaa !1
  %54 = load [64 x i16]*, [64 x i16]** %block, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds [64 x i16], [64 x i16]* %54, i32 0, i64 0
  %55 = load i16, i16* %arrayidx19, align 2, !tbaa !44
  %conv = sext i16 %55 to i32
  %56 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom20 = sext i32 %56 to i64
  %57 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %last_dc_val = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %57, i32 0, i32 7
  %arrayidx21 = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val, i32 0, i64 %idxprom20
  %58 = load i32, i32* %arrayidx21, align 4, !tbaa !18
  %sub = sub nsw i32 %conv, %58
  store i32 %sub, i32* %v, align 4, !tbaa !18
  %cmp22 = icmp eq i32 %sub, 0
  br i1 %cmp22, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %for.body
  %59 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %60 = load i8*, i8** %st, align 8, !tbaa !1
  call void @arith_encode(%struct.jpeg_compress_struct* %59, i8* %60, i32 0) #3
  %61 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom25 = sext i32 %61 to i64
  %62 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %dc_context26 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %62, i32 0, i32 8
  %arrayidx27 = getelementptr inbounds [4 x i32], [4 x i32]* %dc_context26, i32 0, i64 %idxprom25
  store i32 0, i32* %arrayidx27, align 4, !tbaa !18
  br label %if.end.95

if.else:                                          ; preds = %for.body
  %63 = load [64 x i16]*, [64 x i16]** %block, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds [64 x i16], [64 x i16]* %63, i32 0, i64 0
  %64 = load i16, i16* %arrayidx28, align 2, !tbaa !44
  %conv29 = sext i16 %64 to i32
  %65 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom30 = sext i32 %65 to i64
  %66 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %last_dc_val31 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %66, i32 0, i32 7
  %arrayidx32 = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val31, i32 0, i64 %idxprom30
  store i32 %conv29, i32* %arrayidx32, align 4, !tbaa !18
  %67 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %68 = load i8*, i8** %st, align 8, !tbaa !1
  call void @arith_encode(%struct.jpeg_compress_struct* %67, i8* %68, i32 1) #3
  %69 = load i32, i32* %v, align 4, !tbaa !18
  %cmp33 = icmp sgt i32 %69, 0
  br i1 %cmp33, label %if.then.35, label %if.else.41

if.then.35:                                       ; preds = %if.else
  %70 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %71 = load i8*, i8** %st, align 8, !tbaa !1
  %add.ptr36 = getelementptr inbounds i8, i8* %71, i64 1
  call void @arith_encode(%struct.jpeg_compress_struct* %70, i8* %add.ptr36, i32 0) #3
  %72 = load i8*, i8** %st, align 8, !tbaa !1
  %add.ptr37 = getelementptr inbounds i8, i8* %72, i64 2
  store i8* %add.ptr37, i8** %st, align 8, !tbaa !1
  %73 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom38 = sext i32 %73 to i64
  %74 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %dc_context39 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %74, i32 0, i32 8
  %arrayidx40 = getelementptr inbounds [4 x i32], [4 x i32]* %dc_context39, i32 0, i64 %idxprom38
  store i32 4, i32* %arrayidx40, align 4, !tbaa !18
  br label %if.end.48

if.else.41:                                       ; preds = %if.else
  %75 = load i32, i32* %v, align 4, !tbaa !18
  %sub42 = sub nsw i32 0, %75
  store i32 %sub42, i32* %v, align 4, !tbaa !18
  %76 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %77 = load i8*, i8** %st, align 8, !tbaa !1
  %add.ptr43 = getelementptr inbounds i8, i8* %77, i64 1
  call void @arith_encode(%struct.jpeg_compress_struct* %76, i8* %add.ptr43, i32 1) #3
  %78 = load i8*, i8** %st, align 8, !tbaa !1
  %add.ptr44 = getelementptr inbounds i8, i8* %78, i64 3
  store i8* %add.ptr44, i8** %st, align 8, !tbaa !1
  %79 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom45 = sext i32 %79 to i64
  %80 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %dc_context46 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %80, i32 0, i32 8
  %arrayidx47 = getelementptr inbounds [4 x i32], [4 x i32]* %dc_context46, i32 0, i64 %idxprom45
  store i32 8, i32* %arrayidx47, align 4, !tbaa !18
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.41, %if.then.35
  store i32 0, i32* %m, align 4, !tbaa !18
  %81 = load i32, i32* %v, align 4, !tbaa !18
  %sub49 = sub nsw i32 %81, 1
  store i32 %sub49, i32* %v, align 4, !tbaa !18
  %tobool50 = icmp ne i32 %sub49, 0
  br i1 %tobool50, label %if.then.51, label %if.end.58

if.then.51:                                       ; preds = %if.end.48
  %82 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %83 = load i8*, i8** %st, align 8, !tbaa !1
  call void @arith_encode(%struct.jpeg_compress_struct* %82, i8* %83, i32 1) #3
  store i32 1, i32* %m, align 4, !tbaa !18
  %84 = load i32, i32* %v, align 4, !tbaa !18
  store i32 %84, i32* %v2, align 4, !tbaa !18
  %85 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom52 = sext i32 %85 to i64
  %86 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %dc_stats53 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %86, i32 0, i32 11
  %arrayidx54 = getelementptr inbounds [16 x i8*], [16 x i8*]* %dc_stats53, i32 0, i64 %idxprom52
  %87 = load i8*, i8** %arrayidx54, align 8, !tbaa !1
  %add.ptr55 = getelementptr inbounds i8, i8* %87, i64 20
  store i8* %add.ptr55, i8** %st, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.51
  %88 = load i32, i32* %v2, align 4, !tbaa !18
  %shr = ashr i32 %88, 1
  store i32 %shr, i32* %v2, align 4, !tbaa !18
  %tobool56 = icmp ne i32 %shr, 0
  br i1 %tobool56, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %89 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %90 = load i8*, i8** %st, align 8, !tbaa !1
  call void @arith_encode(%struct.jpeg_compress_struct* %89, i8* %90, i32 1) #3
  %91 = load i32, i32* %m, align 4, !tbaa !18
  %shl = shl i32 %91, 1
  store i32 %shl, i32* %m, align 4, !tbaa !18
  %92 = load i8*, i8** %st, align 8, !tbaa !1
  %add.ptr57 = getelementptr inbounds i8, i8* %92, i64 1
  store i8* %add.ptr57, i8** %st, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.58

if.end.58:                                        ; preds = %while.end, %if.end.48
  %93 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %94 = load i8*, i8** %st, align 8, !tbaa !1
  call void @arith_encode(%struct.jpeg_compress_struct* %93, i8* %94, i32 0) #3
  %95 = load i32, i32* %m, align 4, !tbaa !18
  %96 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom59 = sext i32 %96 to i64
  %97 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %arith_dc_L = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %97, i32 0, i32 24
  %arrayidx60 = getelementptr inbounds [16 x i8], [16 x i8]* %arith_dc_L, i32 0, i64 %idxprom59
  %98 = load i8, i8* %arrayidx60, align 1, !tbaa !19
  %conv61 = zext i8 %98 to i32
  %sh_prom = zext i32 %conv61 to i64
  %shl62 = shl i64 1, %sh_prom
  %shr63 = ashr i64 %shl62, 1
  %conv64 = trunc i64 %shr63 to i32
  %cmp65 = icmp slt i32 %95, %conv64
  br i1 %cmp65, label %if.then.67, label %if.else.71

if.then.67:                                       ; preds = %if.end.58
  %99 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom68 = sext i32 %99 to i64
  %100 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %dc_context69 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %100, i32 0, i32 8
  %arrayidx70 = getelementptr inbounds [4 x i32], [4 x i32]* %dc_context69, i32 0, i64 %idxprom68
  store i32 0, i32* %arrayidx70, align 4, !tbaa !18
  br label %if.end.86

if.else.71:                                       ; preds = %if.end.58
  %101 = load i32, i32* %m, align 4, !tbaa !18
  %102 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom72 = sext i32 %102 to i64
  %103 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %arith_dc_U = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %103, i32 0, i32 25
  %arrayidx73 = getelementptr inbounds [16 x i8], [16 x i8]* %arith_dc_U, i32 0, i64 %idxprom72
  %104 = load i8, i8* %arrayidx73, align 1, !tbaa !19
  %conv74 = zext i8 %104 to i32
  %sh_prom75 = zext i32 %conv74 to i64
  %shl76 = shl i64 1, %sh_prom75
  %shr77 = ashr i64 %shl76, 1
  %conv78 = trunc i64 %shr77 to i32
  %cmp79 = icmp sgt i32 %101, %conv78
  br i1 %cmp79, label %if.then.81, label %if.end.85

if.then.81:                                       ; preds = %if.else.71
  %105 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom82 = sext i32 %105 to i64
  %106 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %dc_context83 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %106, i32 0, i32 8
  %arrayidx84 = getelementptr inbounds [4 x i32], [4 x i32]* %dc_context83, i32 0, i64 %idxprom82
  %107 = load i32, i32* %arrayidx84, align 4, !tbaa !18
  %add = add nsw i32 %107, 8
  store i32 %add, i32* %arrayidx84, align 4, !tbaa !18
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.81, %if.else.71
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.then.67
  %108 = load i8*, i8** %st, align 8, !tbaa !1
  %add.ptr87 = getelementptr inbounds i8, i8* %108, i64 14
  store i8* %add.ptr87, i8** %st, align 8, !tbaa !1
  br label %while.cond.88

while.cond.88:                                    ; preds = %while.body.91, %if.end.86
  %109 = load i32, i32* %m, align 4, !tbaa !18
  %shr89 = ashr i32 %109, 1
  store i32 %shr89, i32* %m, align 4, !tbaa !18
  %tobool90 = icmp ne i32 %shr89, 0
  br i1 %tobool90, label %while.body.91, label %while.end.94

while.body.91:                                    ; preds = %while.cond.88
  %110 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %111 = load i8*, i8** %st, align 8, !tbaa !1
  %112 = load i32, i32* %m, align 4, !tbaa !18
  %113 = load i32, i32* %v, align 4, !tbaa !18
  %and92 = and i32 %112, %113
  %tobool93 = icmp ne i32 %and92, 0
  %cond = select i1 %tobool93, i32 1, i32 0
  call void @arith_encode(%struct.jpeg_compress_struct* %110, i8* %111, i32 %cond) #3
  br label %while.cond.88

while.end.94:                                     ; preds = %while.cond.88
  br label %if.end.95

if.end.95:                                        ; preds = %while.end.94, %if.then.24
  %114 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %lim_Se = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %114, i32 0, i32 65
  %115 = load i32, i32* %lim_Se, align 4, !tbaa !47
  store i32 %115, i32* %ke, align 4, !tbaa !18
  %cmp96 = icmp eq i32 %115, 0
  br i1 %cmp96, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %if.end.95
  br label %for.inc

if.end.99:                                        ; preds = %if.end.95
  %116 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %116, i32 0, i32 6
  %117 = load i32, i32* %ac_tbl_no, align 4, !tbaa !32
  store i32 %117, i32* %tbl, align 4, !tbaa !18
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.99
  %118 = load i32, i32* %ke, align 4, !tbaa !18
  %idxprom100 = sext i32 %118 to i64
  %119 = load i32*, i32** %natural_order, align 8, !tbaa !1
  %arrayidx101 = getelementptr inbounds i32, i32* %119, i64 %idxprom100
  %120 = load i32, i32* %arrayidx101, align 4, !tbaa !18
  %idxprom102 = sext i32 %120 to i64
  %121 = load [64 x i16]*, [64 x i16]** %block, align 8, !tbaa !1
  %arrayidx103 = getelementptr inbounds [64 x i16], [64 x i16]* %121, i32 0, i64 %idxprom102
  %122 = load i16, i16* %arrayidx103, align 2, !tbaa !44
  %tobool104 = icmp ne i16 %122, 0
  br i1 %tobool104, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %do.body
  br label %do.end

if.end.106:                                       ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.106
  %123 = load i32, i32* %ke, align 4, !tbaa !18
  %dec107 = add nsw i32 %123, -1
  store i32 %dec107, i32* %ke, align 4, !tbaa !18
  %tobool108 = icmp ne i32 %dec107, 0
  br i1 %tobool108, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.105
  store i32 0, i32* %k, align 4, !tbaa !18
  br label %for.cond.109

for.cond.109:                                     ; preds = %while.end.175, %do.end
  %124 = load i32, i32* %k, align 4, !tbaa !18
  %125 = load i32, i32* %ke, align 4, !tbaa !18
  %cmp110 = icmp slt i32 %124, %125
  br i1 %cmp110, label %for.body.112, label %for.end

for.body.112:                                     ; preds = %for.cond.109
  %126 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom113 = sext i32 %126 to i64
  %127 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %ac_stats = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %127, i32 0, i32 12
  %arrayidx114 = getelementptr inbounds [16 x i8*], [16 x i8*]* %ac_stats, i32 0, i64 %idxprom113
  %128 = load i8*, i8** %arrayidx114, align 8, !tbaa !1
  %129 = load i32, i32* %k, align 4, !tbaa !18
  %mul = mul nsw i32 3, %129
  %idx.ext115 = sext i32 %mul to i64
  %add.ptr116 = getelementptr inbounds i8, i8* %128, i64 %idx.ext115
  store i8* %add.ptr116, i8** %st, align 8, !tbaa !1
  %130 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %131 = load i8*, i8** %st, align 8, !tbaa !1
  call void @arith_encode(%struct.jpeg_compress_struct* %130, i8* %131, i32 0) #3
  br label %while.cond.117

while.cond.117:                                   ; preds = %while.body.126, %for.body.112
  %132 = load i32, i32* %k, align 4, !tbaa !18
  %inc118 = add nsw i32 %132, 1
  store i32 %inc118, i32* %k, align 4, !tbaa !18
  %idxprom119 = sext i32 %inc118 to i64
  %133 = load i32*, i32** %natural_order, align 8, !tbaa !1
  %arrayidx120 = getelementptr inbounds i32, i32* %133, i64 %idxprom119
  %134 = load i32, i32* %arrayidx120, align 4, !tbaa !18
  %idxprom121 = sext i32 %134 to i64
  %135 = load [64 x i16]*, [64 x i16]** %block, align 8, !tbaa !1
  %arrayidx122 = getelementptr inbounds [64 x i16], [64 x i16]* %135, i32 0, i64 %idxprom121
  %136 = load i16, i16* %arrayidx122, align 2, !tbaa !44
  %conv123 = sext i16 %136 to i32
  store i32 %conv123, i32* %v, align 4, !tbaa !18
  %cmp124 = icmp eq i32 %conv123, 0
  br i1 %cmp124, label %while.body.126, label %while.end.129

while.body.126:                                   ; preds = %while.cond.117
  %137 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %138 = load i8*, i8** %st, align 8, !tbaa !1
  %add.ptr127 = getelementptr inbounds i8, i8* %138, i64 1
  call void @arith_encode(%struct.jpeg_compress_struct* %137, i8* %add.ptr127, i32 0) #3
  %139 = load i8*, i8** %st, align 8, !tbaa !1
  %add.ptr128 = getelementptr inbounds i8, i8* %139, i64 3
  store i8* %add.ptr128, i8** %st, align 8, !tbaa !1
  br label %while.cond.117

while.end.129:                                    ; preds = %while.cond.117
  %140 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %141 = load i8*, i8** %st, align 8, !tbaa !1
  %add.ptr130 = getelementptr inbounds i8, i8* %141, i64 1
  call void @arith_encode(%struct.jpeg_compress_struct* %140, i8* %add.ptr130, i32 1) #3
  %142 = load i32, i32* %v, align 4, !tbaa !18
  %cmp131 = icmp sgt i32 %142, 0
  br i1 %cmp131, label %if.then.133, label %if.else.134

if.then.133:                                      ; preds = %while.end.129
  %143 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %144 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %fixed_bin = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %144, i32 0, i32 13
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %fixed_bin, i32 0, i32 0
  call void @arith_encode(%struct.jpeg_compress_struct* %143, i8* %arraydecay, i32 0) #3
  br label %if.end.138

if.else.134:                                      ; preds = %while.end.129
  %145 = load i32, i32* %v, align 4, !tbaa !18
  %sub135 = sub nsw i32 0, %145
  store i32 %sub135, i32* %v, align 4, !tbaa !18
  %146 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %147 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %fixed_bin136 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %147, i32 0, i32 13
  %arraydecay137 = getelementptr inbounds [4 x i8], [4 x i8]* %fixed_bin136, i32 0, i32 0
  call void @arith_encode(%struct.jpeg_compress_struct* %146, i8* %arraydecay137, i32 1) #3
  br label %if.end.138

if.end.138:                                       ; preds = %if.else.134, %if.then.133
  %148 = load i8*, i8** %st, align 8, !tbaa !1
  %add.ptr139 = getelementptr inbounds i8, i8* %148, i64 2
  store i8* %add.ptr139, i8** %st, align 8, !tbaa !1
  store i32 0, i32* %m, align 4, !tbaa !18
  %149 = load i32, i32* %v, align 4, !tbaa !18
  %sub140 = sub nsw i32 %149, 1
  store i32 %sub140, i32* %v, align 4, !tbaa !18
  %tobool141 = icmp ne i32 %sub140, 0
  br i1 %tobool141, label %if.then.142, label %if.end.166

if.then.142:                                      ; preds = %if.end.138
  %150 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %151 = load i8*, i8** %st, align 8, !tbaa !1
  call void @arith_encode(%struct.jpeg_compress_struct* %150, i8* %151, i32 1) #3
  store i32 1, i32* %m, align 4, !tbaa !18
  %152 = load i32, i32* %v, align 4, !tbaa !18
  store i32 %152, i32* %v2, align 4, !tbaa !18
  %153 = load i32, i32* %v2, align 4, !tbaa !18
  %shr143 = ashr i32 %153, 1
  store i32 %shr143, i32* %v2, align 4, !tbaa !18
  %tobool144 = icmp ne i32 %shr143, 0
  br i1 %tobool144, label %if.then.145, label %if.end.165

if.then.145:                                      ; preds = %if.then.142
  %154 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %155 = load i8*, i8** %st, align 8, !tbaa !1
  call void @arith_encode(%struct.jpeg_compress_struct* %154, i8* %155, i32 1) #3
  %156 = load i32, i32* %m, align 4, !tbaa !18
  %shl146 = shl i32 %156, 1
  store i32 %shl146, i32* %m, align 4, !tbaa !18
  %157 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom147 = sext i32 %157 to i64
  %158 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %ac_stats148 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %158, i32 0, i32 12
  %arrayidx149 = getelementptr inbounds [16 x i8*], [16 x i8*]* %ac_stats148, i32 0, i64 %idxprom147
  %159 = load i8*, i8** %arrayidx149, align 8, !tbaa !1
  %160 = load i32, i32* %k, align 4, !tbaa !18
  %161 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom150 = sext i32 %161 to i64
  %162 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %arith_ac_K = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %162, i32 0, i32 26
  %arrayidx151 = getelementptr inbounds [16 x i8], [16 x i8]* %arith_ac_K, i32 0, i64 %idxprom150
  %163 = load i8, i8* %arrayidx151, align 1, !tbaa !19
  %conv152 = zext i8 %163 to i32
  %cmp153 = icmp sle i32 %160, %conv152
  %cond155 = select i1 %cmp153, i32 189, i32 217
  %idx.ext156 = sext i32 %cond155 to i64
  %add.ptr157 = getelementptr inbounds i8, i8* %159, i64 %idx.ext156
  store i8* %add.ptr157, i8** %st, align 8, !tbaa !1
  br label %while.cond.158

while.cond.158:                                   ; preds = %while.body.161, %if.then.145
  %164 = load i32, i32* %v2, align 4, !tbaa !18
  %shr159 = ashr i32 %164, 1
  store i32 %shr159, i32* %v2, align 4, !tbaa !18
  %tobool160 = icmp ne i32 %shr159, 0
  br i1 %tobool160, label %while.body.161, label %while.end.164

while.body.161:                                   ; preds = %while.cond.158
  %165 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %166 = load i8*, i8** %st, align 8, !tbaa !1
  call void @arith_encode(%struct.jpeg_compress_struct* %165, i8* %166, i32 1) #3
  %167 = load i32, i32* %m, align 4, !tbaa !18
  %shl162 = shl i32 %167, 1
  store i32 %shl162, i32* %m, align 4, !tbaa !18
  %168 = load i8*, i8** %st, align 8, !tbaa !1
  %add.ptr163 = getelementptr inbounds i8, i8* %168, i64 1
  store i8* %add.ptr163, i8** %st, align 8, !tbaa !1
  br label %while.cond.158

while.end.164:                                    ; preds = %while.cond.158
  br label %if.end.165

if.end.165:                                       ; preds = %while.end.164, %if.then.142
  br label %if.end.166

if.end.166:                                       ; preds = %if.end.165, %if.end.138
  %169 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %170 = load i8*, i8** %st, align 8, !tbaa !1
  call void @arith_encode(%struct.jpeg_compress_struct* %169, i8* %170, i32 0) #3
  %171 = load i8*, i8** %st, align 8, !tbaa !1
  %add.ptr167 = getelementptr inbounds i8, i8* %171, i64 14
  store i8* %add.ptr167, i8** %st, align 8, !tbaa !1
  br label %while.cond.168

while.cond.168:                                   ; preds = %while.body.171, %if.end.166
  %172 = load i32, i32* %m, align 4, !tbaa !18
  %shr169 = ashr i32 %172, 1
  store i32 %shr169, i32* %m, align 4, !tbaa !18
  %tobool170 = icmp ne i32 %shr169, 0
  br i1 %tobool170, label %while.body.171, label %while.end.175

while.body.171:                                   ; preds = %while.cond.168
  %173 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %174 = load i8*, i8** %st, align 8, !tbaa !1
  %175 = load i32, i32* %m, align 4, !tbaa !18
  %176 = load i32, i32* %v, align 4, !tbaa !18
  %and172 = and i32 %175, %176
  %tobool173 = icmp ne i32 %and172, 0
  %cond174 = select i1 %tobool173, i32 1, i32 0
  call void @arith_encode(%struct.jpeg_compress_struct* %173, i8* %174, i32 %cond174) #3
  br label %while.cond.168

while.end.175:                                    ; preds = %while.cond.168
  br label %for.cond.109

for.end:                                          ; preds = %for.cond.109
  %177 = load i32, i32* %k, align 4, !tbaa !18
  %178 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %lim_Se176 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %178, i32 0, i32 65
  %179 = load i32, i32* %lim_Se176, align 4, !tbaa !47
  %cmp177 = icmp slt i32 %177, %179
  br i1 %cmp177, label %if.then.179, label %if.end.186

if.then.179:                                      ; preds = %for.end
  %180 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom180 = sext i32 %180 to i64
  %181 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %ac_stats181 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %181, i32 0, i32 12
  %arrayidx182 = getelementptr inbounds [16 x i8*], [16 x i8*]* %ac_stats181, i32 0, i64 %idxprom180
  %182 = load i8*, i8** %arrayidx182, align 8, !tbaa !1
  %183 = load i32, i32* %k, align 4, !tbaa !18
  %mul183 = mul nsw i32 3, %183
  %idx.ext184 = sext i32 %mul183 to i64
  %add.ptr185 = getelementptr inbounds i8, i8* %182, i64 %idx.ext184
  store i8* %add.ptr185, i8** %st, align 8, !tbaa !1
  %184 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %185 = load i8*, i8** %st, align 8, !tbaa !1
  call void @arith_encode(%struct.jpeg_compress_struct* %184, i8* %185, i32 1) #3
  br label %if.end.186

if.end.186:                                       ; preds = %if.then.179, %for.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.186, %if.then.98
  %186 = load i32, i32* %blkn, align 4, !tbaa !18
  %inc187 = add nsw i32 %186, 1
  store i32 %inc187, i32* %blkn, align 4, !tbaa !18
  br label %for.cond

for.end.188:                                      ; preds = %for.cond
  %187 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %187) #1
  %188 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %188) #1
  %189 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %189) #1
  %190 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %190) #1
  %191 = bitcast i32* %v2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %191) #1
  %192 = bitcast i32* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %192) #1
  %193 = bitcast i32* %ke to i8*
  call void @llvm.lifetime.end(i64 4, i8* %193) #1
  %194 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %194) #1
  %195 = bitcast i32* %tbl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %195) #1
  %196 = bitcast i8** %st to i8*
  call void @llvm.lifetime.end(i64 8, i8* %196) #1
  %197 = bitcast [64 x i16]** %block to i8*
  call void @llvm.lifetime.end(i64 8, i8* %197) #1
  %198 = bitcast i32** %natural_order to i8*
  call void @llvm.lifetime.end(i64 8, i8* %198) #1
  %199 = bitcast %struct.arith_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %199) #1
  ret i32 1
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #2

; Function Attrs: nounwind uwtable
define internal void @emit_restart(%struct.jpeg_compress_struct* %cinfo, i32 %restart_num) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %restart_num.addr = alloca i32, align 4
  %entropy = alloca %struct.arith_entropy_encoder*, align 8
  %ci = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store i32 %restart_num, i32* %restart_num.addr, align 4, !tbaa !18
  %0 = bitcast %struct.arith_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 74
  %2 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy1, align 8, !tbaa !13
  %3 = bitcast %struct.jpeg_entropy_encoder* %2 to %struct.arith_entropy_encoder*
  store %struct.arith_entropy_encoder* %3, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %4 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @finish_pass(%struct.jpeg_compress_struct* %6) #3
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_byte(i32 255, %struct.jpeg_compress_struct* %7) #3
  %8 = load i32, i32* %restart_num.addr, align 4, !tbaa !18
  %add = add nsw i32 208, %8
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_byte(i32 %add, %struct.jpeg_compress_struct* %9) #3
  store i32 0, i32* %ci, align 4, !tbaa !18
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %ci, align 4, !tbaa !18
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 53
  %12 = load i32, i32* %comps_in_scan, align 4, !tbaa !28
  %cmp = icmp slt i32 %10, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 54
  %arrayidx = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom
  %15 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx, align 8, !tbaa !1
  store %struct.jpeg_component_info* %15, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ss = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 59
  %17 = load i32, i32* %Ss, align 4, !tbaa !26
  %cmp2 = icmp eq i32 %17, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ah = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 61
  %19 = load i32, i32* %Ah, align 4, !tbaa !25
  %cmp3 = icmp eq i32 %19, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %20 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %20, i32 0, i32 5
  %21 = load i32, i32* %dc_tbl_no, align 4, !tbaa !29
  %idxprom4 = sext i32 %21 to i64
  %22 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %dc_stats = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %22, i32 0, i32 11
  %arrayidx5 = getelementptr inbounds [16 x i8*], [16 x i8*]* %dc_stats, i32 0, i64 %idxprom4
  %23 = load i8*, i8** %arrayidx5, align 8, !tbaa !1
  %call = call i8* @memset(i8* %23, i32 0, i64 64) #4
  %24 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom6 = sext i32 %24 to i64
  %25 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %last_dc_val = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %25, i32 0, i32 7
  %arrayidx7 = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val, i32 0, i64 %idxprom6
  store i32 0, i32* %arrayidx7, align 4, !tbaa !18
  %26 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom8 = sext i32 %26 to i64
  %27 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %dc_context = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %27, i32 0, i32 8
  %arrayidx9 = getelementptr inbounds [4 x i32], [4 x i32]* %dc_context, i32 0, i64 %idxprom8
  store i32 0, i32* %arrayidx9, align 4, !tbaa !18
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Se = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %28, i32 0, i32 60
  %29 = load i32, i32* %Se, align 4, !tbaa !31
  %tobool = icmp ne i32 %29, 0
  br i1 %tobool, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %if.end
  %30 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %30, i32 0, i32 6
  %31 = load i32, i32* %ac_tbl_no, align 4, !tbaa !32
  %idxprom11 = sext i32 %31 to i64
  %32 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %ac_stats = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %32, i32 0, i32 12
  %arrayidx12 = getelementptr inbounds [16 x i8*], [16 x i8*]* %ac_stats, i32 0, i64 %idxprom11
  %33 = load i8*, i8** %arrayidx12, align 8, !tbaa !1
  %call13 = call i8* @memset(i8* %33, i32 0, i64 256) #4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.10, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %34 = load i32, i32* %ci, align 4, !tbaa !18
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !18
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %35 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %c = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %35, i32 0, i32 1
  store i64 0, i64* %c, align 8, !tbaa !33
  %36 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %a = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %36, i32 0, i32 2
  store i64 65536, i64* %a, align 8, !tbaa !34
  %37 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %sc = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %37, i32 0, i32 3
  store i64 0, i64* %sc, align 8, !tbaa !35
  %38 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %zc = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %38, i32 0, i32 4
  store i64 0, i64* %zc, align 8, !tbaa !36
  %39 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %ct = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %39, i32 0, i32 5
  store i32 11, i32* %ct, align 4, !tbaa !37
  %40 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %entropy, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %40, i32 0, i32 6
  store i32 -1, i32* %buffer, align 4, !tbaa !38
  %41 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast %struct.arith_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @arith_encode(%struct.jpeg_compress_struct* %cinfo, i8* %st, i32 %val) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %st.addr = alloca i8*, align 8
  %val.addr = alloca i32, align 4
  %e = alloca %struct.arith_entropy_encoder*, align 8
  %nl = alloca i8, align 1
  %nm = alloca i8, align 1
  %qe = alloca i64, align 8
  %temp = alloca i64, align 8
  %sv = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store i8* %st, i8** %st.addr, align 8, !tbaa !1
  store i32 %val, i32* %val.addr, align 4, !tbaa !18
  %0 = bitcast %struct.arith_entropy_encoder** %e to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %entropy = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 74
  %2 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy, align 8, !tbaa !13
  %3 = bitcast %struct.jpeg_entropy_encoder* %2 to %struct.arith_entropy_encoder*
  store %struct.arith_entropy_encoder* %3, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %nl) #1
  call void @llvm.lifetime.start(i64 1, i8* %nm) #1
  %4 = bitcast i64* %qe to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i64* %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %sv to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i8*, i8** %st.addr, align 8, !tbaa !1
  %8 = load i8, i8* %7, align 1, !tbaa !19
  %conv = zext i8 %8 to i32
  store i32 %conv, i32* %sv, align 4, !tbaa !18
  %9 = load i32, i32* %sv, align 4, !tbaa !18
  %and = and i32 %9, 127
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* @jpeg_aritab, i32 0, i64 %idxprom
  %10 = load i64, i64* %arrayidx, align 8, !tbaa !42
  store i64 %10, i64* %qe, align 8, !tbaa !42
  %11 = load i64, i64* %qe, align 8, !tbaa !42
  %and1 = and i64 %11, 255
  %conv2 = trunc i64 %and1 to i8
  store i8 %conv2, i8* %nl, align 1, !tbaa !19
  %12 = load i64, i64* %qe, align 8, !tbaa !42
  %shr = ashr i64 %12, 8
  store i64 %shr, i64* %qe, align 8, !tbaa !42
  %13 = load i64, i64* %qe, align 8, !tbaa !42
  %and3 = and i64 %13, 255
  %conv4 = trunc i64 %and3 to i8
  store i8 %conv4, i8* %nm, align 1, !tbaa !19
  %14 = load i64, i64* %qe, align 8, !tbaa !42
  %shr5 = ashr i64 %14, 8
  store i64 %shr5, i64* %qe, align 8, !tbaa !42
  %15 = load i64, i64* %qe, align 8, !tbaa !42
  %16 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %a = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %16, i32 0, i32 2
  %17 = load i64, i64* %a, align 8, !tbaa !34
  %sub = sub nsw i64 %17, %15
  store i64 %sub, i64* %a, align 8, !tbaa !34
  %18 = load i32, i32* %val.addr, align 4, !tbaa !18
  %19 = load i32, i32* %sv, align 4, !tbaa !18
  %shr6 = ashr i32 %19, 7
  %cmp = icmp ne i32 %18, %shr6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %20 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %a8 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %20, i32 0, i32 2
  %21 = load i64, i64* %a8, align 8, !tbaa !34
  %22 = load i64, i64* %qe, align 8, !tbaa !42
  %cmp9 = icmp sge i64 %21, %22
  br i1 %cmp9, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then
  %23 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %a12 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %23, i32 0, i32 2
  %24 = load i64, i64* %a12, align 8, !tbaa !34
  %25 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %c = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %25, i32 0, i32 1
  %26 = load i64, i64* %c, align 8, !tbaa !33
  %add = add nsw i64 %26, %24
  store i64 %add, i64* %c, align 8, !tbaa !33
  %27 = load i64, i64* %qe, align 8, !tbaa !42
  %28 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %a13 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %28, i32 0, i32 2
  store i64 %27, i64* %a13, align 8, !tbaa !34
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.then
  %29 = load i32, i32* %sv, align 4, !tbaa !18
  %and14 = and i32 %29, 128
  %30 = load i8, i8* %nl, align 1, !tbaa !19
  %conv15 = zext i8 %30 to i32
  %xor = xor i32 %and14, %conv15
  %conv16 = trunc i32 %xor to i8
  %31 = load i8*, i8** %st.addr, align 8, !tbaa !1
  store i8 %conv16, i8* %31, align 1, !tbaa !19
  br label %if.end.35

if.else:                                          ; preds = %entry
  %32 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %a17 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %32, i32 0, i32 2
  %33 = load i64, i64* %a17, align 8, !tbaa !34
  %cmp18 = icmp sge i64 %33, 32768
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.else
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.else
  %34 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %a22 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %34, i32 0, i32 2
  %35 = load i64, i64* %a22, align 8, !tbaa !34
  %36 = load i64, i64* %qe, align 8, !tbaa !42
  %cmp23 = icmp slt i64 %35, %36
  br i1 %cmp23, label %if.then.25, label %if.end.30

if.then.25:                                       ; preds = %if.end.21
  %37 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %a26 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %37, i32 0, i32 2
  %38 = load i64, i64* %a26, align 8, !tbaa !34
  %39 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %c27 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %39, i32 0, i32 1
  %40 = load i64, i64* %c27, align 8, !tbaa !33
  %add28 = add nsw i64 %40, %38
  store i64 %add28, i64* %c27, align 8, !tbaa !33
  %41 = load i64, i64* %qe, align 8, !tbaa !42
  %42 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %a29 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %42, i32 0, i32 2
  store i64 %41, i64* %a29, align 8, !tbaa !34
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.25, %if.end.21
  %43 = load i32, i32* %sv, align 4, !tbaa !18
  %and31 = and i32 %43, 128
  %44 = load i8, i8* %nm, align 1, !tbaa !19
  %conv32 = zext i8 %44 to i32
  %xor33 = xor i32 %and31, %conv32
  %conv34 = trunc i32 %xor33 to i8
  %45 = load i8*, i8** %st.addr, align 8, !tbaa !1
  store i8 %conv34, i8* %45, align 1, !tbaa !19
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.30, %if.end
  br label %do.body

do.body:                                          ; preds = %do.cond.131, %if.end.35
  %46 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %a36 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %46, i32 0, i32 2
  %47 = load i64, i64* %a36, align 8, !tbaa !34
  %shl = shl i64 %47, 1
  store i64 %shl, i64* %a36, align 8, !tbaa !34
  %48 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %c37 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %48, i32 0, i32 1
  %49 = load i64, i64* %c37, align 8, !tbaa !33
  %shl38 = shl i64 %49, 1
  store i64 %shl38, i64* %c37, align 8, !tbaa !33
  %50 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %ct = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %50, i32 0, i32 5
  %51 = load i32, i32* %ct, align 4, !tbaa !37
  %dec = add nsw i32 %51, -1
  store i32 %dec, i32* %ct, align 4, !tbaa !37
  %cmp39 = icmp eq i32 %dec, 0
  br i1 %cmp39, label %if.then.41, label %if.end.130

if.then.41:                                       ; preds = %do.body
  %52 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %c42 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %52, i32 0, i32 1
  %53 = load i64, i64* %c42, align 8, !tbaa !33
  %shr43 = ashr i64 %53, 19
  store i64 %shr43, i64* %temp, align 8, !tbaa !42
  %54 = load i64, i64* %temp, align 8, !tbaa !42
  %cmp44 = icmp sgt i64 %54, 255
  br i1 %cmp44, label %if.then.46, label %if.else.71

if.then.46:                                       ; preds = %if.then.41
  %55 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %55, i32 0, i32 6
  %56 = load i32, i32* %buffer, align 4, !tbaa !38
  %cmp47 = icmp sge i32 %56, 0
  br i1 %cmp47, label %if.then.49, label %if.end.64

if.then.49:                                       ; preds = %if.then.46
  %57 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %zc = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %57, i32 0, i32 4
  %58 = load i64, i64* %zc, align 8, !tbaa !36
  %tobool = icmp ne i64 %58, 0
  br i1 %tobool, label %if.then.50, label %if.end.55

if.then.50:                                       ; preds = %if.then.49
  br label %do.body.51

do.body.51:                                       ; preds = %do.cond, %if.then.50
  %59 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_byte(i32 0, %struct.jpeg_compress_struct* %59) #3
  br label %do.cond

do.cond:                                          ; preds = %do.body.51
  %60 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %zc52 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %60, i32 0, i32 4
  %61 = load i64, i64* %zc52, align 8, !tbaa !36
  %dec53 = add nsw i64 %61, -1
  store i64 %dec53, i64* %zc52, align 8, !tbaa !36
  %tobool54 = icmp ne i64 %dec53, 0
  br i1 %tobool54, label %do.body.51, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.55

if.end.55:                                        ; preds = %do.end, %if.then.49
  %62 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %buffer56 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %62, i32 0, i32 6
  %63 = load i32, i32* %buffer56, align 4, !tbaa !38
  %add57 = add nsw i32 %63, 1
  %64 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_byte(i32 %add57, %struct.jpeg_compress_struct* %64) #3
  %65 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %buffer58 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %65, i32 0, i32 6
  %66 = load i32, i32* %buffer58, align 4, !tbaa !38
  %add59 = add nsw i32 %66, 1
  %cmp60 = icmp eq i32 %add59, 255
  br i1 %cmp60, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.end.55
  %67 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_byte(i32 0, %struct.jpeg_compress_struct* %67) #3
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.62, %if.end.55
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.then.46
  %68 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %sc = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %68, i32 0, i32 3
  %69 = load i64, i64* %sc, align 8, !tbaa !35
  %70 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %zc65 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %70, i32 0, i32 4
  %71 = load i64, i64* %zc65, align 8, !tbaa !36
  %add66 = add nsw i64 %71, %69
  store i64 %add66, i64* %zc65, align 8, !tbaa !36
  %72 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %sc67 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %72, i32 0, i32 3
  store i64 0, i64* %sc67, align 8, !tbaa !35
  %73 = load i64, i64* %temp, align 8, !tbaa !42
  %and68 = and i64 %73, 255
  %conv69 = trunc i64 %and68 to i32
  %74 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %buffer70 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %74, i32 0, i32 6
  store i32 %conv69, i32* %buffer70, align 4, !tbaa !38
  br label %if.end.125

if.else.71:                                       ; preds = %if.then.41
  %75 = load i64, i64* %temp, align 8, !tbaa !42
  %cmp72 = icmp eq i64 %75, 255
  br i1 %cmp72, label %if.then.74, label %if.else.76

if.then.74:                                       ; preds = %if.else.71
  %76 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %sc75 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %76, i32 0, i32 3
  %77 = load i64, i64* %sc75, align 8, !tbaa !35
  %inc = add nsw i64 %77, 1
  store i64 %inc, i64* %sc75, align 8, !tbaa !35
  br label %if.end.124

if.else.76:                                       ; preds = %if.else.71
  %78 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %buffer77 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %78, i32 0, i32 6
  %79 = load i32, i32* %buffer77, align 4, !tbaa !38
  %cmp78 = icmp eq i32 %79, 0
  br i1 %cmp78, label %if.then.80, label %if.else.83

if.then.80:                                       ; preds = %if.else.76
  %80 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %zc81 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %80, i32 0, i32 4
  %81 = load i64, i64* %zc81, align 8, !tbaa !36
  %inc82 = add nsw i64 %81, 1
  store i64 %inc82, i64* %zc81, align 8, !tbaa !36
  br label %if.end.100

if.else.83:                                       ; preds = %if.else.76
  %82 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %buffer84 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %82, i32 0, i32 6
  %83 = load i32, i32* %buffer84, align 4, !tbaa !38
  %cmp85 = icmp sge i32 %83, 0
  br i1 %cmp85, label %if.then.87, label %if.end.99

if.then.87:                                       ; preds = %if.else.83
  %84 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %zc88 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %84, i32 0, i32 4
  %85 = load i64, i64* %zc88, align 8, !tbaa !36
  %tobool89 = icmp ne i64 %85, 0
  br i1 %tobool89, label %if.then.90, label %if.end.97

if.then.90:                                       ; preds = %if.then.87
  br label %do.body.91

do.body.91:                                       ; preds = %do.cond.92, %if.then.90
  %86 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_byte(i32 0, %struct.jpeg_compress_struct* %86) #3
  br label %do.cond.92

do.cond.92:                                       ; preds = %do.body.91
  %87 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %zc93 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %87, i32 0, i32 4
  %88 = load i64, i64* %zc93, align 8, !tbaa !36
  %dec94 = add nsw i64 %88, -1
  store i64 %dec94, i64* %zc93, align 8, !tbaa !36
  %tobool95 = icmp ne i64 %dec94, 0
  br i1 %tobool95, label %do.body.91, label %do.end.96

do.end.96:                                        ; preds = %do.cond.92
  br label %if.end.97

if.end.97:                                        ; preds = %do.end.96, %if.then.87
  %89 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %buffer98 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %89, i32 0, i32 6
  %90 = load i32, i32* %buffer98, align 4, !tbaa !38
  %91 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_byte(i32 %90, %struct.jpeg_compress_struct* %91) #3
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.97, %if.else.83
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.then.80
  %92 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %sc101 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %92, i32 0, i32 3
  %93 = load i64, i64* %sc101, align 8, !tbaa !35
  %tobool102 = icmp ne i64 %93, 0
  br i1 %tobool102, label %if.then.103, label %if.end.120

if.then.103:                                      ; preds = %if.end.100
  %94 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %zc104 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %94, i32 0, i32 4
  %95 = load i64, i64* %zc104, align 8, !tbaa !36
  %tobool105 = icmp ne i64 %95, 0
  br i1 %tobool105, label %if.then.106, label %if.end.113

if.then.106:                                      ; preds = %if.then.103
  br label %do.body.107

do.body.107:                                      ; preds = %do.cond.108, %if.then.106
  %96 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_byte(i32 0, %struct.jpeg_compress_struct* %96) #3
  br label %do.cond.108

do.cond.108:                                      ; preds = %do.body.107
  %97 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %zc109 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %97, i32 0, i32 4
  %98 = load i64, i64* %zc109, align 8, !tbaa !36
  %dec110 = add nsw i64 %98, -1
  store i64 %dec110, i64* %zc109, align 8, !tbaa !36
  %tobool111 = icmp ne i64 %dec110, 0
  br i1 %tobool111, label %do.body.107, label %do.end.112

do.end.112:                                       ; preds = %do.cond.108
  br label %if.end.113

if.end.113:                                       ; preds = %do.end.112, %if.then.103
  br label %do.body.114

do.body.114:                                      ; preds = %do.cond.115, %if.end.113
  %99 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_byte(i32 255, %struct.jpeg_compress_struct* %99) #3
  %100 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_byte(i32 0, %struct.jpeg_compress_struct* %100) #3
  br label %do.cond.115

do.cond.115:                                      ; preds = %do.body.114
  %101 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %sc116 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %101, i32 0, i32 3
  %102 = load i64, i64* %sc116, align 8, !tbaa !35
  %dec117 = add nsw i64 %102, -1
  store i64 %dec117, i64* %sc116, align 8, !tbaa !35
  %tobool118 = icmp ne i64 %dec117, 0
  br i1 %tobool118, label %do.body.114, label %do.end.119

do.end.119:                                       ; preds = %do.cond.115
  br label %if.end.120

if.end.120:                                       ; preds = %do.end.119, %if.end.100
  %103 = load i64, i64* %temp, align 8, !tbaa !42
  %and121 = and i64 %103, 255
  %conv122 = trunc i64 %and121 to i32
  %104 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %buffer123 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %104, i32 0, i32 6
  store i32 %conv122, i32* %buffer123, align 4, !tbaa !38
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.120, %if.then.74
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.124, %if.end.64
  %105 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %c126 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %105, i32 0, i32 1
  %106 = load i64, i64* %c126, align 8, !tbaa !33
  %and127 = and i64 %106, 524287
  store i64 %and127, i64* %c126, align 8, !tbaa !33
  %107 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %ct128 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %107, i32 0, i32 5
  %108 = load i32, i32* %ct128, align 4, !tbaa !37
  %add129 = add nsw i32 %108, 8
  store i32 %add129, i32* %ct128, align 4, !tbaa !37
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.125, %do.body
  br label %do.cond.131

do.cond.131:                                      ; preds = %if.end.130
  %109 = load %struct.arith_entropy_encoder*, %struct.arith_entropy_encoder** %e, align 8, !tbaa !1
  %a132 = getelementptr inbounds %struct.arith_entropy_encoder, %struct.arith_entropy_encoder* %109, i32 0, i32 2
  %110 = load i64, i64* %a132, align 8, !tbaa !34
  %cmp133 = icmp slt i64 %110, 32768
  br i1 %cmp133, label %do.body, label %do.end.135

do.end.135:                                       ; preds = %do.cond.131
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.135, %if.then.20
  %111 = bitcast i32* %sv to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #1
  %112 = bitcast i64* %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #1
  %113 = bitcast i64* %qe to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #1
  call void @llvm.lifetime.end(i64 1, i8* %nm) #1
  call void @llvm.lifetime.end(i64 1, i8* %nl) #1
  %114 = bitcast %struct.arith_entropy_encoder** %e to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #1
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
define internal void @emit_byte(i32 %val, %struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %val.addr = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %dest = alloca %struct.jpeg_destination_mgr*, align 8
  store i32 %val, i32* %val.addr, align 4, !tbaa !18
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.jpeg_destination_mgr** %dest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %dest1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 6
  %2 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest1, align 8, !tbaa !48
  store %struct.jpeg_destination_mgr* %2, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !1
  %3 = load i32, i32* %val.addr, align 4, !tbaa !18
  %conv = trunc i32 %3 to i8
  %4 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !1
  %next_output_byte = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %4, i32 0, i32 0
  %5 = load i8*, i8** %next_output_byte, align 8, !tbaa !49
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %next_output_byte, align 8, !tbaa !49
  store i8 %conv, i8* %5, align 1, !tbaa !19
  %6 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !1
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %6, i32 0, i32 1
  %7 = load i64, i64* %free_in_buffer, align 8, !tbaa !51
  %dec = add i64 %7, -1
  store i64 %dec, i64* %free_in_buffer, align 8, !tbaa !51
  %cmp = icmp eq i64 %dec, 0
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %8 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !1
  %empty_output_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %8, i32 0, i32 3
  %9 = load i32 (%struct.jpeg_compress_struct*)*, i32 (%struct.jpeg_compress_struct*)** %empty_output_buffer, align 8, !tbaa !52
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %call = call i32 %9(%struct.jpeg_compress_struct* %10) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 0
  %12 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !20
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %12, i32 0, i32 5
  store i32 25, i32* %msg_code, align 4, !tbaa !21
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 0
  %14 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8, !tbaa !20
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %14, i32 0, i32 0
  %15 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !23
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %17 = bitcast %struct.jpeg_compress_struct* %16 to %struct.jpeg_common_struct*
  call void %15(%struct.jpeg_common_struct* %17) #3
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %18 = bitcast %struct.jpeg_destination_mgr** %dest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin }
attributes #4 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 8}
!6 = !{!"jpeg_compress_struct", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !3, i64 32, !7, i64 36, !2, i64 40, !7, i64 48, !7, i64 52, !7, i64 56, !3, i64 60, !8, i64 64, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !3, i64 96, !2, i64 104, !3, i64 112, !3, i64 144, !3, i64 160, !3, i64 192, !3, i64 224, !3, i64 240, !3, i64 256, !7, i64 272, !2, i64 280, !3, i64 288, !3, i64 292, !3, i64 296, !3, i64 300, !3, i64 304, !7, i64 308, !3, i64 312, !7, i64 316, !7, i64 320, !3, i64 324, !3, i64 328, !3, i64 329, !3, i64 330, !9, i64 332, !9, i64 334, !3, i64 336, !3, i64 340, !7, i64 344, !3, i64 348, !7, i64 352, !7, i64 356, !7, i64 360, !7, i64 364, !7, i64 368, !7, i64 372, !3, i64 376, !7, i64 408, !7, i64 412, !7, i64 416, !3, i64 420, !7, i64 460, !7, i64 464, !7, i64 468, !7, i64 472, !7, i64 476, !2, i64 480, !7, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !7, i64 576}
!7 = !{!"int", !3, i64 0}
!8 = !{!"double", !3, i64 0}
!9 = !{!"short", !3, i64 0}
!10 = !{!11, !2, i64 0}
!11 = !{!"jpeg_memory_mgr", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !12, i64 88, !12, i64 96}
!12 = !{!"long", !3, i64 0}
!13 = !{!6, !2, i64 560}
!14 = !{!15, !2, i64 0}
!15 = !{!"", !16, i64 0, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !7, i64 56, !7, i64 60, !3, i64 64, !3, i64 80, !7, i64 96, !7, i64 100, !3, i64 104, !3, i64 232, !3, i64 360}
!16 = !{!"jpeg_entropy_encoder", !2, i64 0, !2, i64 8, !2, i64 16}
!17 = !{!15, !2, i64 16}
!18 = !{!7, !7, i64 0}
!19 = !{!3, !3, i64 0}
!20 = !{!6, !2, i64 0}
!21 = !{!22, !7, i64 40}
!22 = !{!"jpeg_error_mgr", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !3, i64 44, !7, i64 124, !12, i64 128, !2, i64 136, !7, i64 144, !2, i64 152, !7, i64 160, !7, i64 164}
!23 = !{!22, !2, i64 0}
!24 = !{!6, !3, i64 348}
!25 = !{!6, !7, i64 468}
!26 = !{!6, !7, i64 460}
!27 = !{!15, !2, i64 8}
!28 = !{!6, !7, i64 372}
!29 = !{!30, !7, i64 20}
!30 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !3, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !2, i64 80, !2, i64 88}
!31 = !{!6, !7, i64 464}
!32 = !{!30, !7, i64 24}
!33 = !{!15, !12, i64 24}
!34 = !{!15, !12, i64 32}
!35 = !{!15, !12, i64 40}
!36 = !{!15, !12, i64 48}
!37 = !{!15, !7, i64 56}
!38 = !{!15, !7, i64 60}
!39 = !{!6, !7, i64 316}
!40 = !{!15, !7, i64 96}
!41 = !{!15, !7, i64 100}
!42 = !{!12, !12, i64 0}
!43 = !{!6, !7, i64 416}
!44 = !{!9, !9, i64 0}
!45 = !{!6, !7, i64 472}
!46 = !{!6, !2, i64 480}
!47 = !{!6, !7, i64 488}
!48 = !{!6, !2, i64 40}
!49 = !{!50, !2, i64 0}
!50 = !{!"jpeg_destination_mgr", !2, i64 0, !12, i64 8, !2, i64 16, !2, i64 24, !2, i64 32}
!51 = !{!50, !12, i64 8}
!52 = !{!50, !2, i64 24}
