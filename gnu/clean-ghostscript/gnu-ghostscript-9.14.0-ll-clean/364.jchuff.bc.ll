; ModuleID = './jchuff.bc'
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
%struct.huff_entropy_encoder = type { %struct.jpeg_entropy_encoder, %struct.savable_state, i32, i32, [4 x %struct.c_derived_tbl*], [4 x %struct.c_derived_tbl*], [4 x i64*], [4 x i64*], i32, i8*, i64, %struct.jpeg_compress_struct*, i32, i32, i32, i8* }
%struct.savable_state = type { i64, i32, [4 x i32] }
%struct.c_derived_tbl = type { [256 x i32], [256 x i8] }
%struct.working_state = type { i8*, i64, %struct.savable_state, %struct.jpeg_compress_struct* }

; Function Attrs: nounwind uwtable
define void @jinit_huff_encoder(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %entropy = alloca %struct.huff_entropy_encoder*, align 8
  %i = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.huff_entropy_encoder** %entropy to i8*
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
  %call = call i8* %4(%struct.jpeg_common_struct* %6, i32 1, i64 248) #5
  %7 = bitcast i8* %call to %struct.huff_entropy_encoder*
  store %struct.huff_entropy_encoder* %7, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %8 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %pub = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %8, i32 0, i32 0
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 74
  store %struct.jpeg_entropy_encoder* %pub, %struct.jpeg_entropy_encoder** %entropy1, align 8, !tbaa !13
  %10 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %pub2 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %10, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %pub2, i32 0, i32 0
  store void (%struct.jpeg_compress_struct*, i32)* @start_pass_huff, void (%struct.jpeg_compress_struct*, i32)** %start_pass, align 8, !tbaa !14
  store i32 0, i32* %i, align 4, !tbaa !18
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %i, align 4, !tbaa !18
  %cmp = icmp slt i32 %11, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4, !tbaa !18
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %ac_derived_tbls = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %13, i32 0, i32 5
  %arrayidx = getelementptr inbounds [4 x %struct.c_derived_tbl*], [4 x %struct.c_derived_tbl*]* %ac_derived_tbls, i32 0, i64 %idxprom
  store %struct.c_derived_tbl* null, %struct.c_derived_tbl** %arrayidx, align 8, !tbaa !1
  %14 = load i32, i32* %i, align 4, !tbaa !18
  %idxprom3 = sext i32 %14 to i64
  %15 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %dc_derived_tbls = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %15, i32 0, i32 4
  %arrayidx4 = getelementptr inbounds [4 x %struct.c_derived_tbl*], [4 x %struct.c_derived_tbl*]* %dc_derived_tbls, i32 0, i64 %idxprom3
  store %struct.c_derived_tbl* null, %struct.c_derived_tbl** %arrayidx4, align 8, !tbaa !1
  %16 = load i32, i32* %i, align 4, !tbaa !18
  %idxprom5 = sext i32 %16 to i64
  %17 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %ac_count_ptrs = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %17, i32 0, i32 7
  %arrayidx6 = getelementptr inbounds [4 x i64*], [4 x i64*]* %ac_count_ptrs, i32 0, i64 %idxprom5
  store i64* null, i64** %arrayidx6, align 8, !tbaa !1
  %18 = load i32, i32* %i, align 4, !tbaa !18
  %idxprom7 = sext i32 %18 to i64
  %19 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %dc_count_ptrs = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %19, i32 0, i32 6
  %arrayidx8 = getelementptr inbounds [4 x i64*], [4 x i64*]* %dc_count_ptrs, i32 0, i64 %idxprom7
  store i64* null, i64** %arrayidx8, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4, !tbaa !18
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4, !tbaa !18
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %progressive_mode = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 47
  %22 = load i32, i32* %progressive_mode, align 4, !tbaa !19
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %23 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %bit_buffer = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %23, i32 0, i32 15
  store i8* null, i8** %bit_buffer, align 8, !tbaa !20
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %24 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast %struct.huff_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @start_pass_huff(%struct.jpeg_compress_struct* %cinfo, i32 %gather_statistics) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %gather_statistics.addr = alloca i32, align 4
  %entropy = alloca %struct.huff_entropy_encoder*, align 8
  %ci = alloca i32, align 4
  %tbl = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store i32 %gather_statistics, i32* %gather_statistics.addr, align 4, !tbaa !21
  %0 = bitcast %struct.huff_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 74
  %2 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy1, align 8, !tbaa !13
  %3 = bitcast %struct.jpeg_entropy_encoder* %2 to %struct.huff_entropy_encoder*
  store %struct.huff_entropy_encoder* %3, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %4 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %tbl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i32, i32* %gather_statistics.addr, align 4, !tbaa !21
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %pub = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %8, i32 0, i32 0
  %finish_pass = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %pub, i32 0, i32 2
  %finish_pass2 = bitcast {}** %finish_pass to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @finish_pass_gather, void (%struct.jpeg_compress_struct*)** %finish_pass2, align 8, !tbaa !22
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %pub3 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %9, i32 0, i32 0
  %finish_pass4 = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %pub3, i32 0, i32 2
  %finish_pass5 = bitcast {}** %finish_pass4 to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @finish_pass_huff, void (%struct.jpeg_compress_struct*)** %finish_pass5, align 8, !tbaa !22
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %progressive_mode = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 47
  %11 = load i32, i32* %progressive_mode, align 4, !tbaa !19
  %tobool6 = icmp ne i32 %11, 0
  br i1 %tobool6, label %if.then.7, label %if.else.34

if.then.7:                                        ; preds = %if.end
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %13 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %cinfo8 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %13, i32 0, i32 11
  store %struct.jpeg_compress_struct* %12, %struct.jpeg_compress_struct** %cinfo8, align 8, !tbaa !23
  %14 = load i32, i32* %gather_statistics.addr, align 4, !tbaa !21
  %15 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %gather_statistics9 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %15, i32 0, i32 8
  store i32 %14, i32* %gather_statistics9, align 4, !tbaa !24
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ah = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 61
  %17 = load i32, i32* %Ah, align 4, !tbaa !25
  %cmp = icmp eq i32 %17, 0
  br i1 %cmp, label %if.then.10, label %if.else.18

if.then.10:                                       ; preds = %if.then.7
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ss = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 59
  %19 = load i32, i32* %Ss, align 4, !tbaa !26
  %cmp11 = icmp eq i32 %19, 0
  br i1 %cmp11, label %if.then.12, label %if.else.14

if.then.12:                                       ; preds = %if.then.10
  %20 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %pub13 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %20, i32 0, i32 0
  %encode_mcu = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %pub13, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, [64 x i16]**)* @encode_mcu_DC_first, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)** %encode_mcu, align 8, !tbaa !27
  br label %if.end.17

if.else.14:                                       ; preds = %if.then.10
  %21 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %pub15 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %21, i32 0, i32 0
  %encode_mcu16 = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %pub15, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, [64 x i16]**)* @encode_mcu_AC_first, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)** %encode_mcu16, align 8, !tbaa !27
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.14, %if.then.12
  br label %if.end.32

if.else.18:                                       ; preds = %if.then.7
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ss19 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %22, i32 0, i32 59
  %23 = load i32, i32* %Ss19, align 4, !tbaa !26
  %cmp20 = icmp eq i32 %23, 0
  br i1 %cmp20, label %if.then.21, label %if.else.24

if.then.21:                                       ; preds = %if.else.18
  %24 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %pub22 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %24, i32 0, i32 0
  %encode_mcu23 = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %pub22, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, [64 x i16]**)* @encode_mcu_DC_refine, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)** %encode_mcu23, align 8, !tbaa !27
  br label %if.end.31

if.else.24:                                       ; preds = %if.else.18
  %25 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %pub25 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %25, i32 0, i32 0
  %encode_mcu26 = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %pub25, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, [64 x i16]**)* @encode_mcu_AC_refine, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)** %encode_mcu26, align 8, !tbaa !27
  %26 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %bit_buffer = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %26, i32 0, i32 15
  %27 = load i8*, i8** %bit_buffer, align 8, !tbaa !20
  %cmp27 = icmp eq i8* %27, null
  br i1 %cmp27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %if.else.24
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %28, i32 0, i32 1
  %29 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !5
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %29, i32 0, i32 0
  %30 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !10
  %31 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %32 = bitcast %struct.jpeg_compress_struct* %31 to %struct.jpeg_common_struct*
  %call = call i8* %30(%struct.jpeg_common_struct* %32, i32 1, i64 1000) #5
  %33 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %bit_buffer29 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %33, i32 0, i32 15
  store i8* %call, i8** %bit_buffer29, align 8, !tbaa !20
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %if.else.24
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.21
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.end.17
  %34 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %34, i32 0, i32 54
  %arrayidx = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 0
  %35 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx, align 8, !tbaa !1
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %35, i32 0, i32 6
  %36 = load i32, i32* %ac_tbl_no, align 4, !tbaa !28
  %37 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %ac_tbl_no33 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %37, i32 0, i32 12
  store i32 %36, i32* %ac_tbl_no33, align 4, !tbaa !30
  %38 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %EOBRUN = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %38, i32 0, i32 13
  store i32 0, i32* %EOBRUN, align 4, !tbaa !31
  %39 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %BE = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %39, i32 0, i32 14
  store i32 0, i32* %BE, align 4, !tbaa !32
  br label %if.end.43

if.else.34:                                       ; preds = %if.end
  %40 = load i32, i32* %gather_statistics.addr, align 4, !tbaa !21
  %tobool35 = icmp ne i32 %40, 0
  br i1 %tobool35, label %if.then.36, label %if.else.39

if.then.36:                                       ; preds = %if.else.34
  %41 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %pub37 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %41, i32 0, i32 0
  %encode_mcu38 = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %pub37, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, [64 x i16]**)* @encode_mcu_gather, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)** %encode_mcu38, align 8, !tbaa !27
  br label %if.end.42

if.else.39:                                       ; preds = %if.else.34
  %42 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %pub40 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %42, i32 0, i32 0
  %encode_mcu41 = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %pub40, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, [64 x i16]**)* @encode_mcu_huff, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)** %encode_mcu41, align 8, !tbaa !27
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.39, %if.then.36
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.end.32
  store i32 0, i32* %ci, align 4, !tbaa !18
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.43
  %43 = load i32, i32* %ci, align 4, !tbaa !18
  %44 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %44, i32 0, i32 53
  %45 = load i32, i32* %comps_in_scan, align 4, !tbaa !33
  %cmp44 = icmp slt i32 %43, %45
  br i1 %cmp44, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %46 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom = sext i32 %46 to i64
  %47 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %cur_comp_info45 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %47, i32 0, i32 54
  %arrayidx46 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info45, i32 0, i64 %idxprom
  %48 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx46, align 8, !tbaa !1
  store %struct.jpeg_component_info* %48, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %49 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ss47 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %49, i32 0, i32 59
  %50 = load i32, i32* %Ss47, align 4, !tbaa !26
  %cmp48 = icmp eq i32 %50, 0
  br i1 %cmp48, label %land.lhs.true, label %if.end.82

land.lhs.true:                                    ; preds = %for.body
  %51 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ah49 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %51, i32 0, i32 61
  %52 = load i32, i32* %Ah49, align 4, !tbaa !25
  %cmp50 = icmp eq i32 %52, 0
  br i1 %cmp50, label %if.then.51, label %if.end.82

if.then.51:                                       ; preds = %land.lhs.true
  %53 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %53, i32 0, i32 5
  %54 = load i32, i32* %dc_tbl_no, align 4, !tbaa !34
  store i32 %54, i32* %tbl, align 4, !tbaa !18
  %55 = load i32, i32* %gather_statistics.addr, align 4, !tbaa !21
  %tobool52 = icmp ne i32 %55, 0
  br i1 %tobool52, label %if.then.53, label %if.else.76

if.then.53:                                       ; preds = %if.then.51
  %56 = load i32, i32* %tbl, align 4, !tbaa !18
  %cmp54 = icmp slt i32 %56, 0
  br i1 %cmp54, label %if.then.56, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.53
  %57 = load i32, i32* %tbl, align 4, !tbaa !18
  %cmp55 = icmp sge i32 %57, 4
  br i1 %cmp55, label %if.then.56, label %if.end.60

if.then.56:                                       ; preds = %lor.lhs.false, %if.then.53
  %58 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %58, i32 0, i32 0
  %59 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !35
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %59, i32 0, i32 5
  store i32 52, i32* %msg_code, align 4, !tbaa !36
  %60 = load i32, i32* %tbl, align 4, !tbaa !18
  %61 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err57 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %61, i32 0, i32 0
  %62 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err57, align 8, !tbaa !35
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %62, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx58 = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %60, i32* %arrayidx58, align 4, !tbaa !18
  %63 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err59 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %63, i32 0, i32 0
  %64 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err59, align 8, !tbaa !35
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %64, i32 0, i32 0
  %65 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !38
  %66 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %67 = bitcast %struct.jpeg_compress_struct* %66 to %struct.jpeg_common_struct*
  call void %65(%struct.jpeg_common_struct* %67) #5
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.56, %lor.lhs.false
  %68 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom61 = sext i32 %68 to i64
  %69 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %dc_count_ptrs = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %69, i32 0, i32 6
  %arrayidx62 = getelementptr inbounds [4 x i64*], [4 x i64*]* %dc_count_ptrs, i32 0, i64 %idxprom61
  %70 = load i64*, i64** %arrayidx62, align 8, !tbaa !1
  %cmp63 = icmp eq i64* %70, null
  br i1 %cmp63, label %if.then.64, label %if.end.71

if.then.64:                                       ; preds = %if.end.60
  %71 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem65 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %71, i32 0, i32 1
  %72 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem65, align 8, !tbaa !5
  %alloc_small66 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %72, i32 0, i32 0
  %73 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small66, align 8, !tbaa !10
  %74 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %75 = bitcast %struct.jpeg_compress_struct* %74 to %struct.jpeg_common_struct*
  %call67 = call i8* %73(%struct.jpeg_common_struct* %75, i32 1, i64 2056) #5
  %76 = bitcast i8* %call67 to i64*
  %77 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom68 = sext i32 %77 to i64
  %78 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %dc_count_ptrs69 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %78, i32 0, i32 6
  %arrayidx70 = getelementptr inbounds [4 x i64*], [4 x i64*]* %dc_count_ptrs69, i32 0, i64 %idxprom68
  store i64* %76, i64** %arrayidx70, align 8, !tbaa !1
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.64, %if.end.60
  %79 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom72 = sext i32 %79 to i64
  %80 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %dc_count_ptrs73 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %80, i32 0, i32 6
  %arrayidx74 = getelementptr inbounds [4 x i64*], [4 x i64*]* %dc_count_ptrs73, i32 0, i64 %idxprom72
  %81 = load i64*, i64** %arrayidx74, align 8, !tbaa !1
  %82 = bitcast i64* %81 to i8*
  %call75 = call i8* @memset(i8* %82, i32 0, i64 2056) #6
  br label %if.end.79

if.else.76:                                       ; preds = %if.then.51
  %83 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %84 = load i32, i32* %tbl, align 4, !tbaa !18
  %85 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom77 = sext i32 %85 to i64
  %86 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %dc_derived_tbls = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %86, i32 0, i32 4
  %arrayidx78 = getelementptr inbounds [4 x %struct.c_derived_tbl*], [4 x %struct.c_derived_tbl*]* %dc_derived_tbls, i32 0, i64 %idxprom77
  call void @jpeg_make_c_derived_tbl(%struct.jpeg_compress_struct* %83, i32 1, i32 %84, %struct.c_derived_tbl** %arrayidx78) #5
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.76, %if.end.71
  %87 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom80 = sext i32 %87 to i64
  %88 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %saved = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %88, i32 0, i32 1
  %last_dc_val = getelementptr inbounds %struct.savable_state, %struct.savable_state* %saved, i32 0, i32 2
  %arrayidx81 = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val, i32 0, i64 %idxprom80
  store i32 0, i32* %arrayidx81, align 4, !tbaa !18
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.79, %land.lhs.true, %for.body
  %89 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Se = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %89, i32 0, i32 60
  %90 = load i32, i32* %Se, align 4, !tbaa !39
  %tobool83 = icmp ne i32 %90, 0
  br i1 %tobool83, label %if.then.84, label %if.end.120

if.then.84:                                       ; preds = %if.end.82
  %91 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %ac_tbl_no85 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %91, i32 0, i32 6
  %92 = load i32, i32* %ac_tbl_no85, align 4, !tbaa !28
  store i32 %92, i32* %tbl, align 4, !tbaa !18
  %93 = load i32, i32* %gather_statistics.addr, align 4, !tbaa !21
  %tobool86 = icmp ne i32 %93, 0
  br i1 %tobool86, label %if.then.87, label %if.else.116

if.then.87:                                       ; preds = %if.then.84
  %94 = load i32, i32* %tbl, align 4, !tbaa !18
  %cmp88 = icmp slt i32 %94, 0
  br i1 %cmp88, label %if.then.91, label %lor.lhs.false.89

lor.lhs.false.89:                                 ; preds = %if.then.87
  %95 = load i32, i32* %tbl, align 4, !tbaa !18
  %cmp90 = icmp sge i32 %95, 4
  br i1 %cmp90, label %if.then.91, label %if.end.100

if.then.91:                                       ; preds = %lor.lhs.false.89, %if.then.87
  %96 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err92 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %96, i32 0, i32 0
  %97 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err92, align 8, !tbaa !35
  %msg_code93 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %97, i32 0, i32 5
  store i32 52, i32* %msg_code93, align 4, !tbaa !36
  %98 = load i32, i32* %tbl, align 4, !tbaa !18
  %99 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err94 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %99, i32 0, i32 0
  %100 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err94, align 8, !tbaa !35
  %msg_parm95 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %100, i32 0, i32 6
  %i96 = bitcast %union.anon* %msg_parm95 to [8 x i32]*
  %arrayidx97 = getelementptr inbounds [8 x i32], [8 x i32]* %i96, i32 0, i64 0
  store i32 %98, i32* %arrayidx97, align 4, !tbaa !18
  %101 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err98 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %101, i32 0, i32 0
  %102 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err98, align 8, !tbaa !35
  %error_exit99 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %102, i32 0, i32 0
  %103 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit99, align 8, !tbaa !38
  %104 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %105 = bitcast %struct.jpeg_compress_struct* %104 to %struct.jpeg_common_struct*
  call void %103(%struct.jpeg_common_struct* %105) #5
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.91, %lor.lhs.false.89
  %106 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom101 = sext i32 %106 to i64
  %107 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %ac_count_ptrs = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %107, i32 0, i32 7
  %arrayidx102 = getelementptr inbounds [4 x i64*], [4 x i64*]* %ac_count_ptrs, i32 0, i64 %idxprom101
  %108 = load i64*, i64** %arrayidx102, align 8, !tbaa !1
  %cmp103 = icmp eq i64* %108, null
  br i1 %cmp103, label %if.then.104, label %if.end.111

if.then.104:                                      ; preds = %if.end.100
  %109 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem105 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %109, i32 0, i32 1
  %110 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem105, align 8, !tbaa !5
  %alloc_small106 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %110, i32 0, i32 0
  %111 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small106, align 8, !tbaa !10
  %112 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %113 = bitcast %struct.jpeg_compress_struct* %112 to %struct.jpeg_common_struct*
  %call107 = call i8* %111(%struct.jpeg_common_struct* %113, i32 1, i64 2056) #5
  %114 = bitcast i8* %call107 to i64*
  %115 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom108 = sext i32 %115 to i64
  %116 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %ac_count_ptrs109 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %116, i32 0, i32 7
  %arrayidx110 = getelementptr inbounds [4 x i64*], [4 x i64*]* %ac_count_ptrs109, i32 0, i64 %idxprom108
  store i64* %114, i64** %arrayidx110, align 8, !tbaa !1
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.104, %if.end.100
  %117 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom112 = sext i32 %117 to i64
  %118 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %ac_count_ptrs113 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %118, i32 0, i32 7
  %arrayidx114 = getelementptr inbounds [4 x i64*], [4 x i64*]* %ac_count_ptrs113, i32 0, i64 %idxprom112
  %119 = load i64*, i64** %arrayidx114, align 8, !tbaa !1
  %120 = bitcast i64* %119 to i8*
  %call115 = call i8* @memset(i8* %120, i32 0, i64 2056) #6
  br label %if.end.119

if.else.116:                                      ; preds = %if.then.84
  %121 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %122 = load i32, i32* %tbl, align 4, !tbaa !18
  %123 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom117 = sext i32 %123 to i64
  %124 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %ac_derived_tbls = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %124, i32 0, i32 5
  %arrayidx118 = getelementptr inbounds [4 x %struct.c_derived_tbl*], [4 x %struct.c_derived_tbl*]* %ac_derived_tbls, i32 0, i64 %idxprom117
  call void @jpeg_make_c_derived_tbl(%struct.jpeg_compress_struct* %121, i32 0, i32 %122, %struct.c_derived_tbl** %arrayidx118) #5
  br label %if.end.119

if.end.119:                                       ; preds = %if.else.116, %if.end.111
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %if.end.82
  br label %for.inc

for.inc:                                          ; preds = %if.end.120
  %125 = load i32, i32* %ci, align 4, !tbaa !18
  %inc = add nsw i32 %125, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !18
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %126 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %saved121 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %126, i32 0, i32 1
  %put_buffer = getelementptr inbounds %struct.savable_state, %struct.savable_state* %saved121, i32 0, i32 0
  store i64 0, i64* %put_buffer, align 8, !tbaa !40
  %127 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %saved122 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %127, i32 0, i32 1
  %put_bits = getelementptr inbounds %struct.savable_state, %struct.savable_state* %saved122, i32 0, i32 1
  store i32 0, i32* %put_bits, align 4, !tbaa !41
  %128 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %128, i32 0, i32 36
  %129 = load i32, i32* %restart_interval, align 4, !tbaa !42
  %130 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %restarts_to_go = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %130, i32 0, i32 2
  store i32 %129, i32* %restarts_to_go, align 4, !tbaa !43
  %131 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %next_restart_num = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %131, i32 0, i32 3
  store i32 0, i32* %next_restart_num, align 4, !tbaa !44
  %132 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %132) #1
  %133 = bitcast i32* %tbl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #1
  %134 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %134) #1
  %135 = bitcast %struct.huff_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %135) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @finish_pass_gather(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %entropy = alloca %struct.huff_entropy_encoder*, align 8
  %ci = alloca i32, align 4
  %tbl = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %htblptr = alloca %struct.JHUFF_TBL**, align 8
  %did_dc = alloca [4 x i32], align 16
  %did_ac = alloca [4 x i32], align 16
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.huff_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 74
  %2 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy1, align 8, !tbaa !13
  %3 = bitcast %struct.jpeg_entropy_encoder* %2 to %struct.huff_entropy_encoder*
  store %struct.huff_entropy_encoder* %3, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %4 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %tbl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast %struct.JHUFF_TBL*** %htblptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast [4 x i32]* %did_dc to i8*
  call void @llvm.lifetime.start(i64 16, i8* %8) #1
  %9 = bitcast [4 x i32]* %did_ac to i8*
  call void @llvm.lifetime.start(i64 16, i8* %9) #1
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %progressive_mode = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 47
  %11 = load i32, i32* %progressive_mode, align 4, !tbaa !19
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  call void @emit_eobrun(%struct.huff_entropy_encoder* %12) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %did_dc, i32 0, i32 0
  %13 = bitcast i32* %arraydecay to i8*
  %call = call i8* @memset(i8* %13, i32 0, i64 16) #6
  %arraydecay2 = getelementptr inbounds [4 x i32], [4 x i32]* %did_ac, i32 0, i32 0
  %14 = bitcast i32* %arraydecay2 to i8*
  %call3 = call i8* @memset(i8* %14, i32 0, i64 16) #6
  store i32 0, i32* %ci, align 4, !tbaa !18
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %15 = load i32, i32* %ci, align 4, !tbaa !18
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 53
  %17 = load i32, i32* %comps_in_scan, align 4, !tbaa !33
  %cmp = icmp slt i32 %15, %17
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom = sext i32 %18 to i64
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %19, i32 0, i32 54
  %arrayidx = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom
  %20 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx, align 8, !tbaa !1
  store %struct.jpeg_component_info* %20, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ss = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 59
  %22 = load i32, i32* %Ss, align 4, !tbaa !26
  %cmp4 = icmp eq i32 %22, 0
  br i1 %cmp4, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %for.body
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ah = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %23, i32 0, i32 61
  %24 = load i32, i32* %Ah, align 4, !tbaa !25
  %cmp5 = icmp eq i32 %24, 0
  br i1 %cmp5, label %if.then.6, label %if.end.22

if.then.6:                                        ; preds = %land.lhs.true
  %25 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %25, i32 0, i32 5
  %26 = load i32, i32* %dc_tbl_no, align 4, !tbaa !34
  store i32 %26, i32* %tbl, align 4, !tbaa !18
  %27 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom7 = sext i32 %27 to i64
  %arrayidx8 = getelementptr inbounds [4 x i32], [4 x i32]* %did_dc, i32 0, i64 %idxprom7
  %28 = load i32, i32* %arrayidx8, align 4, !tbaa !21
  %tobool9 = icmp ne i32 %28, 0
  br i1 %tobool9, label %if.end.21, label %if.then.10

if.then.10:                                       ; preds = %if.then.6
  %29 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom11 = sext i32 %29 to i64
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %dc_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %30, i32 0, i32 22
  %arrayidx12 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %dc_huff_tbl_ptrs, i32 0, i64 %idxprom11
  store %struct.JHUFF_TBL** %arrayidx12, %struct.JHUFF_TBL*** %htblptr, align 8, !tbaa !1
  %31 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %htblptr, align 8, !tbaa !1
  %32 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %31, align 8, !tbaa !1
  %cmp13 = icmp eq %struct.JHUFF_TBL* %32, null
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.then.10
  %33 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %34 = bitcast %struct.jpeg_compress_struct* %33 to %struct.jpeg_common_struct*
  %call15 = call %struct.JHUFF_TBL* @jpeg_alloc_huff_table(%struct.jpeg_common_struct* %34) #5
  %35 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %htblptr, align 8, !tbaa !1
  store %struct.JHUFF_TBL* %call15, %struct.JHUFF_TBL** %35, align 8, !tbaa !1
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.then.10
  %36 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %37 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %htblptr, align 8, !tbaa !1
  %38 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %37, align 8, !tbaa !1
  %39 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom17 = sext i32 %39 to i64
  %40 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %dc_count_ptrs = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %40, i32 0, i32 6
  %arrayidx18 = getelementptr inbounds [4 x i64*], [4 x i64*]* %dc_count_ptrs, i32 0, i64 %idxprom17
  %41 = load i64*, i64** %arrayidx18, align 8, !tbaa !1
  call void @jpeg_gen_optimal_table(%struct.jpeg_compress_struct* %36, %struct.JHUFF_TBL* %38, i64* %41) #5
  %42 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom19 = sext i32 %42 to i64
  %arrayidx20 = getelementptr inbounds [4 x i32], [4 x i32]* %did_dc, i32 0, i64 %idxprom19
  store i32 1, i32* %arrayidx20, align 4, !tbaa !21
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.16, %if.then.6
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %land.lhs.true, %for.body
  %43 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Se = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %43, i32 0, i32 60
  %44 = load i32, i32* %Se, align 4, !tbaa !39
  %tobool23 = icmp ne i32 %44, 0
  br i1 %tobool23, label %if.then.24, label %if.end.40

if.then.24:                                       ; preds = %if.end.22
  %45 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %45, i32 0, i32 6
  %46 = load i32, i32* %ac_tbl_no, align 4, !tbaa !28
  store i32 %46, i32* %tbl, align 4, !tbaa !18
  %47 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom25 = sext i32 %47 to i64
  %arrayidx26 = getelementptr inbounds [4 x i32], [4 x i32]* %did_ac, i32 0, i64 %idxprom25
  %48 = load i32, i32* %arrayidx26, align 4, !tbaa !21
  %tobool27 = icmp ne i32 %48, 0
  br i1 %tobool27, label %if.end.39, label %if.then.28

if.then.28:                                       ; preds = %if.then.24
  %49 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom29 = sext i32 %49 to i64
  %50 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %ac_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %50, i32 0, i32 23
  %arrayidx30 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %ac_huff_tbl_ptrs, i32 0, i64 %idxprom29
  store %struct.JHUFF_TBL** %arrayidx30, %struct.JHUFF_TBL*** %htblptr, align 8, !tbaa !1
  %51 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %htblptr, align 8, !tbaa !1
  %52 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %51, align 8, !tbaa !1
  %cmp31 = icmp eq %struct.JHUFF_TBL* %52, null
  br i1 %cmp31, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %if.then.28
  %53 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %54 = bitcast %struct.jpeg_compress_struct* %53 to %struct.jpeg_common_struct*
  %call33 = call %struct.JHUFF_TBL* @jpeg_alloc_huff_table(%struct.jpeg_common_struct* %54) #5
  %55 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %htblptr, align 8, !tbaa !1
  store %struct.JHUFF_TBL* %call33, %struct.JHUFF_TBL** %55, align 8, !tbaa !1
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %if.then.28
  %56 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %57 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %htblptr, align 8, !tbaa !1
  %58 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %57, align 8, !tbaa !1
  %59 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom35 = sext i32 %59 to i64
  %60 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %ac_count_ptrs = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %60, i32 0, i32 7
  %arrayidx36 = getelementptr inbounds [4 x i64*], [4 x i64*]* %ac_count_ptrs, i32 0, i64 %idxprom35
  %61 = load i64*, i64** %arrayidx36, align 8, !tbaa !1
  call void @jpeg_gen_optimal_table(%struct.jpeg_compress_struct* %56, %struct.JHUFF_TBL* %58, i64* %61) #5
  %62 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom37 = sext i32 %62 to i64
  %arrayidx38 = getelementptr inbounds [4 x i32], [4 x i32]* %did_ac, i32 0, i64 %idxprom37
  store i32 1, i32* %arrayidx38, align 4, !tbaa !21
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.34, %if.then.24
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.end.22
  br label %for.inc

for.inc:                                          ; preds = %if.end.40
  %63 = load i32, i32* %ci, align 4, !tbaa !18
  %inc = add nsw i32 %63, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !18
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %64 = bitcast [4 x i32]* %did_ac to i8*
  call void @llvm.lifetime.end(i64 16, i8* %64) #1
  %65 = bitcast [4 x i32]* %did_dc to i8*
  call void @llvm.lifetime.end(i64 16, i8* %65) #1
  %66 = bitcast %struct.JHUFF_TBL*** %htblptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = bitcast i32* %tbl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  %70 = bitcast %struct.huff_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @finish_pass_huff(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %entropy = alloca %struct.huff_entropy_encoder*, align 8
  %state = alloca %struct.working_state, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.huff_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 74
  %2 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy1, align 8, !tbaa !13
  %3 = bitcast %struct.jpeg_entropy_encoder* %2 to %struct.huff_entropy_encoder*
  store %struct.huff_entropy_encoder* %3, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %4 = bitcast %struct.working_state* %state to i8*
  call void @llvm.lifetime.start(i64 56, i8* %4) #1
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %progressive_mode = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 47
  %6 = load i32, i32* %progressive_mode, align 4, !tbaa !19
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %dest = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 6
  %8 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !45
  %next_output_byte = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %8, i32 0, i32 0
  %9 = load i8*, i8** %next_output_byte, align 8, !tbaa !46
  %10 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %next_output_byte2 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %10, i32 0, i32 9
  store i8* %9, i8** %next_output_byte2, align 8, !tbaa !48
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %dest3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 6
  %12 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest3, align 8, !tbaa !45
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %12, i32 0, i32 1
  %13 = load i64, i64* %free_in_buffer, align 8, !tbaa !49
  %14 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %free_in_buffer4 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %14, i32 0, i32 10
  store i64 %13, i64* %free_in_buffer4, align 8, !tbaa !50
  %15 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  call void @emit_eobrun(%struct.huff_entropy_encoder* %15) #5
  %16 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  call void @flush_bits_e(%struct.huff_entropy_encoder* %16) #5
  %17 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %next_output_byte5 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %17, i32 0, i32 9
  %18 = load i8*, i8** %next_output_byte5, align 8, !tbaa !48
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %dest6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %19, i32 0, i32 6
  %20 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest6, align 8, !tbaa !45
  %next_output_byte7 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %20, i32 0, i32 0
  store i8* %18, i8** %next_output_byte7, align 8, !tbaa !46
  %21 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %free_in_buffer8 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %21, i32 0, i32 10
  %22 = load i64, i64* %free_in_buffer8, align 8, !tbaa !50
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %dest9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %23, i32 0, i32 6
  %24 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest9, align 8, !tbaa !45
  %free_in_buffer10 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %24, i32 0, i32 1
  store i64 %22, i64* %free_in_buffer10, align 8, !tbaa !49
  br label %if.end.29

if.else:                                          ; preds = %entry
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %dest11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %25, i32 0, i32 6
  %26 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest11, align 8, !tbaa !45
  %next_output_byte12 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %26, i32 0, i32 0
  %27 = load i8*, i8** %next_output_byte12, align 8, !tbaa !46
  %next_output_byte13 = getelementptr inbounds %struct.working_state, %struct.working_state* %state, i32 0, i32 0
  store i8* %27, i8** %next_output_byte13, align 8, !tbaa !51
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %dest14 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %28, i32 0, i32 6
  %29 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest14, align 8, !tbaa !45
  %free_in_buffer15 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %29, i32 0, i32 1
  %30 = load i64, i64* %free_in_buffer15, align 8, !tbaa !49
  %free_in_buffer16 = getelementptr inbounds %struct.working_state, %struct.working_state* %state, i32 0, i32 1
  store i64 %30, i64* %free_in_buffer16, align 8, !tbaa !53
  %cur = getelementptr inbounds %struct.working_state, %struct.working_state* %state, i32 0, i32 2
  %31 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %saved = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %31, i32 0, i32 1
  %32 = bitcast %struct.savable_state* %cur to i8*
  %33 = bitcast %struct.savable_state* %saved to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 32, i32 8, i1 false), !tbaa.struct !54
  %34 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %cinfo17 = getelementptr inbounds %struct.working_state, %struct.working_state* %state, i32 0, i32 3
  store %struct.jpeg_compress_struct* %34, %struct.jpeg_compress_struct** %cinfo17, align 8, !tbaa !56
  %call = call i32 @flush_bits_s(%struct.working_state* %state) #5
  %tobool18 = icmp ne i32 %call, 0
  br i1 %tobool18, label %if.end, label %if.then.19

if.then.19:                                       ; preds = %if.else
  %35 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %35, i32 0, i32 0
  %36 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !35
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %36, i32 0, i32 5
  store i32 25, i32* %msg_code, align 4, !tbaa !36
  %37 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err20 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %37, i32 0, i32 0
  %38 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err20, align 8, !tbaa !35
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %38, i32 0, i32 0
  %39 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !38
  %40 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %41 = bitcast %struct.jpeg_compress_struct* %40 to %struct.jpeg_common_struct*
  call void %39(%struct.jpeg_common_struct* %41) #5
  br label %if.end

if.end:                                           ; preds = %if.then.19, %if.else
  %next_output_byte21 = getelementptr inbounds %struct.working_state, %struct.working_state* %state, i32 0, i32 0
  %42 = load i8*, i8** %next_output_byte21, align 8, !tbaa !51
  %43 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %dest22 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %43, i32 0, i32 6
  %44 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest22, align 8, !tbaa !45
  %next_output_byte23 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %44, i32 0, i32 0
  store i8* %42, i8** %next_output_byte23, align 8, !tbaa !46
  %free_in_buffer24 = getelementptr inbounds %struct.working_state, %struct.working_state* %state, i32 0, i32 1
  %45 = load i64, i64* %free_in_buffer24, align 8, !tbaa !53
  %46 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %dest25 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %46, i32 0, i32 6
  %47 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest25, align 8, !tbaa !45
  %free_in_buffer26 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %47, i32 0, i32 1
  store i64 %45, i64* %free_in_buffer26, align 8, !tbaa !49
  %48 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %saved27 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %48, i32 0, i32 1
  %cur28 = getelementptr inbounds %struct.working_state, %struct.working_state* %state, i32 0, i32 2
  %49 = bitcast %struct.savable_state* %saved27 to i8*
  %50 = bitcast %struct.savable_state* %cur28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %50, i64 32, i32 8, i1 false), !tbaa.struct !54
  br label %if.end.29

if.end.29:                                        ; preds = %if.end, %if.then
  %51 = bitcast %struct.working_state* %state to i8*
  call void @llvm.lifetime.end(i64 56, i8* %51) #1
  %52 = bitcast %struct.huff_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @encode_mcu_DC_first(%struct.jpeg_compress_struct* %cinfo, [64 x i16]** %MCU_data) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %MCU_data.addr = alloca [64 x i16]**, align 8
  %entropy = alloca %struct.huff_entropy_encoder*, align 8
  %temp = alloca i32, align 4
  %temp2 = alloca i32, align 4
  %nbits = alloca i32, align 4
  %blkn = alloca i32, align 4
  %ci = alloca i32, align 4
  %tbl = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store [64 x i16]** %MCU_data, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.huff_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 74
  %2 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy1, align 8, !tbaa !13
  %3 = bitcast %struct.jpeg_entropy_encoder* %2 to %struct.huff_entropy_encoder*
  store %struct.huff_entropy_encoder* %3, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %4 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %temp2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %nbits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %tbl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %dest = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 6
  %11 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !45
  %next_output_byte = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %11, i32 0, i32 0
  %12 = load i8*, i8** %next_output_byte, align 8, !tbaa !46
  %13 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %next_output_byte2 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %13, i32 0, i32 9
  store i8* %12, i8** %next_output_byte2, align 8, !tbaa !48
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %dest3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 6
  %15 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest3, align 8, !tbaa !45
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %15, i32 0, i32 1
  %16 = load i64, i64* %free_in_buffer, align 8, !tbaa !49
  %17 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %free_in_buffer4 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %17, i32 0, i32 10
  store i64 %16, i64* %free_in_buffer4, align 8, !tbaa !50
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 36
  %19 = load i32, i32* %restart_interval, align 4, !tbaa !42
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %20 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %restarts_to_go = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %20, i32 0, i32 2
  %21 = load i32, i32* %restarts_to_go, align 4, !tbaa !43
  %cmp = icmp eq i32 %21, 0
  br i1 %cmp, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %22 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %23 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %next_restart_num = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %23, i32 0, i32 3
  %24 = load i32, i32* %next_restart_num, align 4, !tbaa !44
  call void @emit_restart_e(%struct.huff_entropy_encoder* %22, i32 %24) #5
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  store i32 0, i32* %blkn, align 4, !tbaa !18
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.6
  %25 = load i32, i32* %blkn, align 4, !tbaa !18
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %26, i32 0, i32 57
  %27 = load i32, i32* %blocks_in_MCU, align 4, !tbaa !57
  %cmp7 = icmp slt i32 %25, %27
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %blkn, align 4, !tbaa !18
  %idxprom = sext i32 %28 to i64
  %29 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %MCU_membership = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %29, i32 0, i32 58
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %MCU_membership, i32 0, i64 %idxprom
  %30 = load i32, i32* %arrayidx, align 4, !tbaa !18
  store i32 %30, i32* %ci, align 4, !tbaa !18
  %31 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom8 = sext i32 %31 to i64
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %32, i32 0, i32 54
  %arrayidx9 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom8
  %33 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx9, align 8, !tbaa !1
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %33, i32 0, i32 5
  %34 = load i32, i32* %dc_tbl_no, align 4, !tbaa !34
  store i32 %34, i32* %tbl, align 4, !tbaa !18
  %35 = load i32, i32* %blkn, align 4, !tbaa !18
  %idxprom10 = sext i32 %35 to i64
  %36 = load [64 x i16]**, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds [64 x i16]*, [64 x i16]** %36, i64 %idxprom10
  %37 = load [64 x i16]*, [64 x i16]** %arrayidx11, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds [64 x i16], [64 x i16]* %37, i64 0
  %arrayidx13 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx12, i32 0, i64 0
  %38 = load i16, i16* %arrayidx13, align 2, !tbaa !58
  %conv = sext i16 %38 to i32
  %39 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Al = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %39, i32 0, i32 62
  %40 = load i32, i32* %Al, align 4, !tbaa !59
  %shr = ashr i32 %conv, %40
  store i32 %shr, i32* %temp, align 4, !tbaa !18
  %41 = load i32, i32* %temp, align 4, !tbaa !18
  %42 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom14 = sext i32 %42 to i64
  %43 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %saved = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %43, i32 0, i32 1
  %last_dc_val = getelementptr inbounds %struct.savable_state, %struct.savable_state* %saved, i32 0, i32 2
  %arrayidx15 = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val, i32 0, i64 %idxprom14
  %44 = load i32, i32* %arrayidx15, align 4, !tbaa !18
  %sub = sub nsw i32 %41, %44
  store i32 %sub, i32* %temp2, align 4, !tbaa !18
  %45 = load i32, i32* %temp, align 4, !tbaa !18
  %46 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom16 = sext i32 %46 to i64
  %47 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %saved17 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %47, i32 0, i32 1
  %last_dc_val18 = getelementptr inbounds %struct.savable_state, %struct.savable_state* %saved17, i32 0, i32 2
  %arrayidx19 = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val18, i32 0, i64 %idxprom16
  store i32 %45, i32* %arrayidx19, align 4, !tbaa !18
  %48 = load i32, i32* %temp2, align 4, !tbaa !18
  store i32 %48, i32* %temp, align 4, !tbaa !18
  %49 = load i32, i32* %temp, align 4, !tbaa !18
  %cmp20 = icmp slt i32 %49, 0
  br i1 %cmp20, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %for.body
  %50 = load i32, i32* %temp, align 4, !tbaa !18
  %sub23 = sub nsw i32 0, %50
  store i32 %sub23, i32* %temp, align 4, !tbaa !18
  %51 = load i32, i32* %temp2, align 4, !tbaa !18
  %dec = add nsw i32 %51, -1
  store i32 %dec, i32* %temp2, align 4, !tbaa !18
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %for.body
  store i32 0, i32* %nbits, align 4, !tbaa !18
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.24
  %52 = load i32, i32* %temp, align 4, !tbaa !18
  %tobool25 = icmp ne i32 %52, 0
  br i1 %tobool25, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %53 = load i32, i32* %nbits, align 4, !tbaa !18
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* %nbits, align 4, !tbaa !18
  %54 = load i32, i32* %temp, align 4, !tbaa !18
  %shr26 = ashr i32 %54, 1
  store i32 %shr26, i32* %temp, align 4, !tbaa !18
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %55 = load i32, i32* %nbits, align 4, !tbaa !18
  %cmp27 = icmp sgt i32 %55, 11
  br i1 %cmp27, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %while.end
  %56 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %56, i32 0, i32 0
  %57 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !35
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %57, i32 0, i32 5
  store i32 6, i32* %msg_code, align 4, !tbaa !36
  %58 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err30 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %58, i32 0, i32 0
  %59 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err30, align 8, !tbaa !35
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %59, i32 0, i32 0
  %60 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !38
  %61 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %62 = bitcast %struct.jpeg_compress_struct* %61 to %struct.jpeg_common_struct*
  call void %60(%struct.jpeg_common_struct* %62) #5
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %while.end
  %63 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %64 = load i32, i32* %tbl, align 4, !tbaa !18
  %65 = load i32, i32* %nbits, align 4, !tbaa !18
  call void @emit_dc_symbol(%struct.huff_entropy_encoder* %63, i32 %64, i32 %65) #5
  %66 = load i32, i32* %nbits, align 4, !tbaa !18
  %tobool32 = icmp ne i32 %66, 0
  br i1 %tobool32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.31
  %67 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %68 = load i32, i32* %temp2, align 4, !tbaa !18
  %69 = load i32, i32* %nbits, align 4, !tbaa !18
  call void @emit_bits_e(%struct.huff_entropy_encoder* %67, i32 %68, i32 %69) #5
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.end.31
  br label %for.inc

for.inc:                                          ; preds = %if.end.34
  %70 = load i32, i32* %blkn, align 4, !tbaa !18
  %inc35 = add nsw i32 %70, 1
  store i32 %inc35, i32* %blkn, align 4, !tbaa !18
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %71 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %next_output_byte36 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %71, i32 0, i32 9
  %72 = load i8*, i8** %next_output_byte36, align 8, !tbaa !48
  %73 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %dest37 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %73, i32 0, i32 6
  %74 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest37, align 8, !tbaa !45
  %next_output_byte38 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %74, i32 0, i32 0
  store i8* %72, i8** %next_output_byte38, align 8, !tbaa !46
  %75 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %free_in_buffer39 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %75, i32 0, i32 10
  %76 = load i64, i64* %free_in_buffer39, align 8, !tbaa !50
  %77 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %dest40 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %77, i32 0, i32 6
  %78 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest40, align 8, !tbaa !45
  %free_in_buffer41 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %78, i32 0, i32 1
  store i64 %76, i64* %free_in_buffer41, align 8, !tbaa !49
  %79 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %restart_interval42 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %79, i32 0, i32 36
  %80 = load i32, i32* %restart_interval42, align 4, !tbaa !42
  %tobool43 = icmp ne i32 %80, 0
  br i1 %tobool43, label %if.then.44, label %if.end.57

if.then.44:                                       ; preds = %for.end
  %81 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %restarts_to_go45 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %81, i32 0, i32 2
  %82 = load i32, i32* %restarts_to_go45, align 4, !tbaa !43
  %cmp46 = icmp eq i32 %82, 0
  br i1 %cmp46, label %if.then.48, label %if.end.54

if.then.48:                                       ; preds = %if.then.44
  %83 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %restart_interval49 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %83, i32 0, i32 36
  %84 = load i32, i32* %restart_interval49, align 4, !tbaa !42
  %85 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %restarts_to_go50 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %85, i32 0, i32 2
  store i32 %84, i32* %restarts_to_go50, align 4, !tbaa !43
  %86 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %next_restart_num51 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %86, i32 0, i32 3
  %87 = load i32, i32* %next_restart_num51, align 4, !tbaa !44
  %inc52 = add nsw i32 %87, 1
  store i32 %inc52, i32* %next_restart_num51, align 4, !tbaa !44
  %88 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %next_restart_num53 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %88, i32 0, i32 3
  %89 = load i32, i32* %next_restart_num53, align 4, !tbaa !44
  %and = and i32 %89, 7
  store i32 %and, i32* %next_restart_num53, align 4, !tbaa !44
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.48, %if.then.44
  %90 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %restarts_to_go55 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %90, i32 0, i32 2
  %91 = load i32, i32* %restarts_to_go55, align 4, !tbaa !43
  %dec56 = add i32 %91, -1
  store i32 %dec56, i32* %restarts_to_go55, align 4, !tbaa !43
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.54, %for.end
  %92 = bitcast i32* %tbl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  %93 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #1
  %94 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  %95 = bitcast i32* %nbits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #1
  %96 = bitcast i32* %temp2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #1
  %97 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #1
  %98 = bitcast %struct.huff_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @encode_mcu_AC_first(%struct.jpeg_compress_struct* %cinfo, [64 x i16]** %MCU_data) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %MCU_data.addr = alloca [64 x i16]**, align 8
  %entropy = alloca %struct.huff_entropy_encoder*, align 8
  %natural_order = alloca i32*, align 8
  %block = alloca [64 x i16]*, align 8
  %temp = alloca i32, align 4
  %temp2 = alloca i32, align 4
  %nbits = alloca i32, align 4
  %r = alloca i32, align 4
  %k = alloca i32, align 4
  %Se = alloca i32, align 4
  %Al = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store [64 x i16]** %MCU_data, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.huff_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 74
  %2 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy1, align 8, !tbaa !13
  %3 = bitcast %struct.jpeg_entropy_encoder* %2 to %struct.huff_entropy_encoder*
  store %struct.huff_entropy_encoder* %3, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %4 = bitcast i32** %natural_order to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast [64 x i16]** %block to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %temp2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %nbits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %Se to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %Al to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %dest = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 6
  %14 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !45
  %next_output_byte = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %14, i32 0, i32 0
  %15 = load i8*, i8** %next_output_byte, align 8, !tbaa !46
  %16 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %next_output_byte2 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %16, i32 0, i32 9
  store i8* %15, i8** %next_output_byte2, align 8, !tbaa !48
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %dest3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 6
  %18 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest3, align 8, !tbaa !45
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %18, i32 0, i32 1
  %19 = load i64, i64* %free_in_buffer, align 8, !tbaa !49
  %20 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %free_in_buffer4 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %20, i32 0, i32 10
  store i64 %19, i64* %free_in_buffer4, align 8, !tbaa !50
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 36
  %22 = load i32, i32* %restart_interval, align 4, !tbaa !42
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %23 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %restarts_to_go = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %23, i32 0, i32 2
  %24 = load i32, i32* %restarts_to_go, align 4, !tbaa !43
  %cmp = icmp eq i32 %24, 0
  br i1 %cmp, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %25 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %26 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %next_restart_num = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %26, i32 0, i32 3
  %27 = load i32, i32* %next_restart_num, align 4, !tbaa !44
  call void @emit_restart_e(%struct.huff_entropy_encoder* %25, i32 %27) #5
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Se7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %28, i32 0, i32 60
  %29 = load i32, i32* %Se7, align 4, !tbaa !39
  store i32 %29, i32* %Se, align 4, !tbaa !18
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Al8 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %30, i32 0, i32 62
  %31 = load i32, i32* %Al8, align 4, !tbaa !59
  store i32 %31, i32* %Al, align 4, !tbaa !18
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %natural_order9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %32, i32 0, i32 64
  %33 = load i32*, i32** %natural_order9, align 8, !tbaa !60
  store i32* %33, i32** %natural_order, align 8, !tbaa !1
  %34 = load [64 x i16]**, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds [64 x i16]*, [64 x i16]** %34, i64 0
  %35 = load [64 x i16]*, [64 x i16]** %arrayidx, align 8, !tbaa !1
  store [64 x i16]* %35, [64 x i16]** %block, align 8, !tbaa !1
  store i32 0, i32* %r, align 4, !tbaa !18
  %36 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ss = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %36, i32 0, i32 59
  %37 = load i32, i32* %Ss, align 4, !tbaa !26
  store i32 %37, i32* %k, align 4, !tbaa !18
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.6
  %38 = load i32, i32* %k, align 4, !tbaa !18
  %39 = load i32, i32* %Se, align 4, !tbaa !18
  %cmp10 = icmp sle i32 %38, %39
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %40 = load i32, i32* %k, align 4, !tbaa !18
  %idxprom = sext i32 %40 to i64
  %41 = load i32*, i32** %natural_order, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i32, i32* %41, i64 %idxprom
  %42 = load i32, i32* %arrayidx11, align 4, !tbaa !18
  %idxprom12 = sext i32 %42 to i64
  %43 = load [64 x i16]*, [64 x i16]** %block, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds [64 x i16], [64 x i16]* %43, i32 0, i64 %idxprom12
  %44 = load i16, i16* %arrayidx13, align 2, !tbaa !58
  %conv = sext i16 %44 to i32
  store i32 %conv, i32* %temp, align 4, !tbaa !18
  %cmp14 = icmp eq i32 %conv, 0
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %for.body
  %45 = load i32, i32* %r, align 4, !tbaa !18
  %inc = add nsw i32 %45, 1
  store i32 %inc, i32* %r, align 4, !tbaa !18
  br label %for.inc

if.end.17:                                        ; preds = %for.body
  %46 = load i32, i32* %temp, align 4, !tbaa !18
  %cmp18 = icmp slt i32 %46, 0
  br i1 %cmp18, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %if.end.17
  %47 = load i32, i32* %temp, align 4, !tbaa !18
  %sub = sub nsw i32 0, %47
  store i32 %sub, i32* %temp, align 4, !tbaa !18
  %48 = load i32, i32* %Al, align 4, !tbaa !18
  %49 = load i32, i32* %temp, align 4, !tbaa !18
  %shr = ashr i32 %49, %48
  store i32 %shr, i32* %temp, align 4, !tbaa !18
  %50 = load i32, i32* %temp, align 4, !tbaa !18
  %neg = xor i32 %50, -1
  store i32 %neg, i32* %temp2, align 4, !tbaa !18
  br label %if.end.22

if.else:                                          ; preds = %if.end.17
  %51 = load i32, i32* %Al, align 4, !tbaa !18
  %52 = load i32, i32* %temp, align 4, !tbaa !18
  %shr21 = ashr i32 %52, %51
  store i32 %shr21, i32* %temp, align 4, !tbaa !18
  %53 = load i32, i32* %temp, align 4, !tbaa !18
  store i32 %53, i32* %temp2, align 4, !tbaa !18
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.20
  %54 = load i32, i32* %temp, align 4, !tbaa !18
  %cmp23 = icmp eq i32 %54, 0
  br i1 %cmp23, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.end.22
  %55 = load i32, i32* %r, align 4, !tbaa !18
  %inc26 = add nsw i32 %55, 1
  store i32 %inc26, i32* %r, align 4, !tbaa !18
  br label %for.inc

if.end.27:                                        ; preds = %if.end.22
  %56 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %EOBRUN = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %56, i32 0, i32 13
  %57 = load i32, i32* %EOBRUN, align 4, !tbaa !31
  %cmp28 = icmp ugt i32 %57, 0
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.27
  %58 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  call void @emit_eobrun(%struct.huff_entropy_encoder* %58) #5
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.end.27
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.31
  %59 = load i32, i32* %r, align 4, !tbaa !18
  %cmp32 = icmp sgt i32 %59, 15
  br i1 %cmp32, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %60 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %61 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %ac_tbl_no = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %61, i32 0, i32 12
  %62 = load i32, i32* %ac_tbl_no, align 4, !tbaa !30
  call void @emit_ac_symbol(%struct.huff_entropy_encoder* %60, i32 %62, i32 240) #5
  %63 = load i32, i32* %r, align 4, !tbaa !18
  %sub34 = sub nsw i32 %63, 16
  store i32 %sub34, i32* %r, align 4, !tbaa !18
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %nbits, align 4, !tbaa !18
  br label %while.cond.35

while.cond.35:                                    ; preds = %while.body.38, %while.end
  %64 = load i32, i32* %temp, align 4, !tbaa !18
  %shr36 = ashr i32 %64, 1
  store i32 %shr36, i32* %temp, align 4, !tbaa !18
  %tobool37 = icmp ne i32 %shr36, 0
  br i1 %tobool37, label %while.body.38, label %while.end.40

while.body.38:                                    ; preds = %while.cond.35
  %65 = load i32, i32* %nbits, align 4, !tbaa !18
  %inc39 = add nsw i32 %65, 1
  store i32 %inc39, i32* %nbits, align 4, !tbaa !18
  br label %while.cond.35

while.end.40:                                     ; preds = %while.cond.35
  %66 = load i32, i32* %nbits, align 4, !tbaa !18
  %cmp41 = icmp sgt i32 %66, 10
  br i1 %cmp41, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %while.end.40
  %67 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %67, i32 0, i32 0
  %68 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !35
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %68, i32 0, i32 5
  store i32 6, i32* %msg_code, align 4, !tbaa !36
  %69 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err44 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %69, i32 0, i32 0
  %70 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err44, align 8, !tbaa !35
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %70, i32 0, i32 0
  %71 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !38
  %72 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %73 = bitcast %struct.jpeg_compress_struct* %72 to %struct.jpeg_common_struct*
  call void %71(%struct.jpeg_common_struct* %73) #5
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %while.end.40
  %74 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %75 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %ac_tbl_no46 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %75, i32 0, i32 12
  %76 = load i32, i32* %ac_tbl_no46, align 4, !tbaa !30
  %77 = load i32, i32* %r, align 4, !tbaa !18
  %shl = shl i32 %77, 4
  %78 = load i32, i32* %nbits, align 4, !tbaa !18
  %add = add nsw i32 %shl, %78
  call void @emit_ac_symbol(%struct.huff_entropy_encoder* %74, i32 %76, i32 %add) #5
  %79 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %80 = load i32, i32* %temp2, align 4, !tbaa !18
  %81 = load i32, i32* %nbits, align 4, !tbaa !18
  call void @emit_bits_e(%struct.huff_entropy_encoder* %79, i32 %80, i32 %81) #5
  store i32 0, i32* %r, align 4, !tbaa !18
  br label %for.inc

for.inc:                                          ; preds = %if.end.45, %if.then.25, %if.then.16
  %82 = load i32, i32* %k, align 4, !tbaa !18
  %inc47 = add nsw i32 %82, 1
  store i32 %inc47, i32* %k, align 4, !tbaa !18
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %83 = load i32, i32* %r, align 4, !tbaa !18
  %cmp48 = icmp sgt i32 %83, 0
  br i1 %cmp48, label %if.then.50, label %if.end.58

if.then.50:                                       ; preds = %for.end
  %84 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %EOBRUN51 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %84, i32 0, i32 13
  %85 = load i32, i32* %EOBRUN51, align 4, !tbaa !31
  %inc52 = add i32 %85, 1
  store i32 %inc52, i32* %EOBRUN51, align 4, !tbaa !31
  %86 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %EOBRUN53 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %86, i32 0, i32 13
  %87 = load i32, i32* %EOBRUN53, align 4, !tbaa !31
  %cmp54 = icmp eq i32 %87, 32767
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.then.50
  %88 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  call void @emit_eobrun(%struct.huff_entropy_encoder* %88) #5
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %if.then.50
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %for.end
  %89 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %next_output_byte59 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %89, i32 0, i32 9
  %90 = load i8*, i8** %next_output_byte59, align 8, !tbaa !48
  %91 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %dest60 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %91, i32 0, i32 6
  %92 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest60, align 8, !tbaa !45
  %next_output_byte61 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %92, i32 0, i32 0
  store i8* %90, i8** %next_output_byte61, align 8, !tbaa !46
  %93 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %free_in_buffer62 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %93, i32 0, i32 10
  %94 = load i64, i64* %free_in_buffer62, align 8, !tbaa !50
  %95 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %dest63 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %95, i32 0, i32 6
  %96 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest63, align 8, !tbaa !45
  %free_in_buffer64 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %96, i32 0, i32 1
  store i64 %94, i64* %free_in_buffer64, align 8, !tbaa !49
  %97 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %restart_interval65 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %97, i32 0, i32 36
  %98 = load i32, i32* %restart_interval65, align 4, !tbaa !42
  %tobool66 = icmp ne i32 %98, 0
  br i1 %tobool66, label %if.then.67, label %if.end.79

if.then.67:                                       ; preds = %if.end.58
  %99 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %restarts_to_go68 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %99, i32 0, i32 2
  %100 = load i32, i32* %restarts_to_go68, align 4, !tbaa !43
  %cmp69 = icmp eq i32 %100, 0
  br i1 %cmp69, label %if.then.71, label %if.end.77

if.then.71:                                       ; preds = %if.then.67
  %101 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %restart_interval72 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %101, i32 0, i32 36
  %102 = load i32, i32* %restart_interval72, align 4, !tbaa !42
  %103 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %restarts_to_go73 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %103, i32 0, i32 2
  store i32 %102, i32* %restarts_to_go73, align 4, !tbaa !43
  %104 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %next_restart_num74 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %104, i32 0, i32 3
  %105 = load i32, i32* %next_restart_num74, align 4, !tbaa !44
  %inc75 = add nsw i32 %105, 1
  store i32 %inc75, i32* %next_restart_num74, align 4, !tbaa !44
  %106 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %next_restart_num76 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %106, i32 0, i32 3
  %107 = load i32, i32* %next_restart_num76, align 4, !tbaa !44
  %and = and i32 %107, 7
  store i32 %and, i32* %next_restart_num76, align 4, !tbaa !44
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.71, %if.then.67
  %108 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %restarts_to_go78 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %108, i32 0, i32 2
  %109 = load i32, i32* %restarts_to_go78, align 4, !tbaa !43
  %dec = add i32 %109, -1
  store i32 %dec, i32* %restarts_to_go78, align 4, !tbaa !43
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.77, %if.end.58
  %110 = bitcast i32* %Al to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #1
  %111 = bitcast i32* %Se to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #1
  %112 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #1
  %113 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #1
  %114 = bitcast i32* %nbits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #1
  %115 = bitcast i32* %temp2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #1
  %116 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #1
  %117 = bitcast [64 x i16]** %block to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #1
  %118 = bitcast i32** %natural_order to i8*
  call void @llvm.lifetime.end(i64 8, i8* %118) #1
  %119 = bitcast %struct.huff_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %119) #1
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @encode_mcu_DC_refine(%struct.jpeg_compress_struct* %cinfo, [64 x i16]** %MCU_data) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %MCU_data.addr = alloca [64 x i16]**, align 8
  %entropy = alloca %struct.huff_entropy_encoder*, align 8
  %Al = alloca i32, align 4
  %blkn = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store [64 x i16]** %MCU_data, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.huff_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 74
  %2 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy1, align 8, !tbaa !13
  %3 = bitcast %struct.jpeg_entropy_encoder* %2 to %struct.huff_entropy_encoder*
  store %struct.huff_entropy_encoder* %3, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %4 = bitcast i32* %Al to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %dest = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 6
  %7 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !45
  %next_output_byte = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %7, i32 0, i32 0
  %8 = load i8*, i8** %next_output_byte, align 8, !tbaa !46
  %9 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %next_output_byte2 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %9, i32 0, i32 9
  store i8* %8, i8** %next_output_byte2, align 8, !tbaa !48
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %dest3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 6
  %11 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest3, align 8, !tbaa !45
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %11, i32 0, i32 1
  %12 = load i64, i64* %free_in_buffer, align 8, !tbaa !49
  %13 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %free_in_buffer4 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %13, i32 0, i32 10
  store i64 %12, i64* %free_in_buffer4, align 8, !tbaa !50
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 36
  %15 = load i32, i32* %restart_interval, align 4, !tbaa !42
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %16 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %restarts_to_go = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %16, i32 0, i32 2
  %17 = load i32, i32* %restarts_to_go, align 4, !tbaa !43
  %cmp = icmp eq i32 %17, 0
  br i1 %cmp, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %18 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %19 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %next_restart_num = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %19, i32 0, i32 3
  %20 = load i32, i32* %next_restart_num, align 4, !tbaa !44
  call void @emit_restart_e(%struct.huff_entropy_encoder* %18, i32 %20) #5
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Al7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 62
  %22 = load i32, i32* %Al7, align 4, !tbaa !59
  store i32 %22, i32* %Al, align 4, !tbaa !18
  store i32 0, i32* %blkn, align 4, !tbaa !18
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.6
  %23 = load i32, i32* %blkn, align 4, !tbaa !18
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %24, i32 0, i32 57
  %25 = load i32, i32* %blocks_in_MCU, align 4, !tbaa !57
  %cmp8 = icmp slt i32 %23, %25
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %27 = load i32, i32* %blkn, align 4, !tbaa !18
  %idxprom = sext i32 %27 to i64
  %28 = load [64 x i16]**, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds [64 x i16]*, [64 x i16]** %28, i64 %idxprom
  %29 = load [64 x i16]*, [64 x i16]** %arrayidx, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds [64 x i16], [64 x i16]* %29, i64 0
  %arrayidx10 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx9, i32 0, i64 0
  %30 = load i16, i16* %arrayidx10, align 2, !tbaa !58
  %conv = sext i16 %30 to i32
  %31 = load i32, i32* %Al, align 4, !tbaa !18
  %shr = ashr i32 %conv, %31
  call void @emit_bits_e(%struct.huff_entropy_encoder* %26, i32 %shr, i32 1) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %blkn, align 4, !tbaa !18
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %blkn, align 4, !tbaa !18
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %next_output_byte11 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %33, i32 0, i32 9
  %34 = load i8*, i8** %next_output_byte11, align 8, !tbaa !48
  %35 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %dest12 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %35, i32 0, i32 6
  %36 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest12, align 8, !tbaa !45
  %next_output_byte13 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %36, i32 0, i32 0
  store i8* %34, i8** %next_output_byte13, align 8, !tbaa !46
  %37 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %free_in_buffer14 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %37, i32 0, i32 10
  %38 = load i64, i64* %free_in_buffer14, align 8, !tbaa !50
  %39 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %dest15 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %39, i32 0, i32 6
  %40 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest15, align 8, !tbaa !45
  %free_in_buffer16 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %40, i32 0, i32 1
  store i64 %38, i64* %free_in_buffer16, align 8, !tbaa !49
  %41 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %restart_interval17 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %41, i32 0, i32 36
  %42 = load i32, i32* %restart_interval17, align 4, !tbaa !42
  %tobool18 = icmp ne i32 %42, 0
  br i1 %tobool18, label %if.then.19, label %if.end.31

if.then.19:                                       ; preds = %for.end
  %43 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %restarts_to_go20 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %43, i32 0, i32 2
  %44 = load i32, i32* %restarts_to_go20, align 4, !tbaa !43
  %cmp21 = icmp eq i32 %44, 0
  br i1 %cmp21, label %if.then.23, label %if.end.29

if.then.23:                                       ; preds = %if.then.19
  %45 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %restart_interval24 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %45, i32 0, i32 36
  %46 = load i32, i32* %restart_interval24, align 4, !tbaa !42
  %47 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %restarts_to_go25 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %47, i32 0, i32 2
  store i32 %46, i32* %restarts_to_go25, align 4, !tbaa !43
  %48 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %next_restart_num26 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %48, i32 0, i32 3
  %49 = load i32, i32* %next_restart_num26, align 4, !tbaa !44
  %inc27 = add nsw i32 %49, 1
  store i32 %inc27, i32* %next_restart_num26, align 4, !tbaa !44
  %50 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %next_restart_num28 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %50, i32 0, i32 3
  %51 = load i32, i32* %next_restart_num28, align 4, !tbaa !44
  %and = and i32 %51, 7
  store i32 %and, i32* %next_restart_num28, align 4, !tbaa !44
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.23, %if.then.19
  %52 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %restarts_to_go30 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %52, i32 0, i32 2
  %53 = load i32, i32* %restarts_to_go30, align 4, !tbaa !43
  %dec = add i32 %53, -1
  store i32 %dec, i32* %restarts_to_go30, align 4, !tbaa !43
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.29, %for.end
  %54 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  %55 = bitcast i32* %Al to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  %56 = bitcast %struct.huff_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @encode_mcu_AC_refine(%struct.jpeg_compress_struct* %cinfo, [64 x i16]** %MCU_data) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %MCU_data.addr = alloca [64 x i16]**, align 8
  %entropy = alloca %struct.huff_entropy_encoder*, align 8
  %natural_order = alloca i32*, align 8
  %block = alloca [64 x i16]*, align 8
  %temp = alloca i32, align 4
  %r = alloca i32, align 4
  %k = alloca i32, align 4
  %Se = alloca i32, align 4
  %Al = alloca i32, align 4
  %EOB = alloca i32, align 4
  %BR_buffer = alloca i8*, align 8
  %BR = alloca i32, align 4
  %absvalues = alloca [64 x i32], align 16
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store [64 x i16]** %MCU_data, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.huff_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 74
  %2 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy1, align 8, !tbaa !13
  %3 = bitcast %struct.jpeg_entropy_encoder* %2 to %struct.huff_entropy_encoder*
  store %struct.huff_entropy_encoder* %3, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %4 = bitcast i32** %natural_order to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast [64 x i16]** %block to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %Se to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %Al to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %EOB to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i8** %BR_buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i32* %BR to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast [64 x i32]* %absvalues to i8*
  call void @llvm.lifetime.start(i64 256, i8* %14) #1
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %dest = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %15, i32 0, i32 6
  %16 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !45
  %next_output_byte = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %16, i32 0, i32 0
  %17 = load i8*, i8** %next_output_byte, align 8, !tbaa !46
  %18 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %next_output_byte2 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %18, i32 0, i32 9
  store i8* %17, i8** %next_output_byte2, align 8, !tbaa !48
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %dest3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %19, i32 0, i32 6
  %20 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest3, align 8, !tbaa !45
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %20, i32 0, i32 1
  %21 = load i64, i64* %free_in_buffer, align 8, !tbaa !49
  %22 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %free_in_buffer4 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %22, i32 0, i32 10
  store i64 %21, i64* %free_in_buffer4, align 8, !tbaa !50
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %23, i32 0, i32 36
  %24 = load i32, i32* %restart_interval, align 4, !tbaa !42
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %25 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %restarts_to_go = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %25, i32 0, i32 2
  %26 = load i32, i32* %restarts_to_go, align 4, !tbaa !43
  %cmp = icmp eq i32 %26, 0
  br i1 %cmp, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %27 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %28 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %next_restart_num = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %28, i32 0, i32 3
  %29 = load i32, i32* %next_restart_num, align 4, !tbaa !44
  call void @emit_restart_e(%struct.huff_entropy_encoder* %27, i32 %29) #5
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Se7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %30, i32 0, i32 60
  %31 = load i32, i32* %Se7, align 4, !tbaa !39
  store i32 %31, i32* %Se, align 4, !tbaa !18
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Al8 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %32, i32 0, i32 62
  %33 = load i32, i32* %Al8, align 4, !tbaa !59
  store i32 %33, i32* %Al, align 4, !tbaa !18
  %34 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %natural_order9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %34, i32 0, i32 64
  %35 = load i32*, i32** %natural_order9, align 8, !tbaa !60
  store i32* %35, i32** %natural_order, align 8, !tbaa !1
  %36 = load [64 x i16]**, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds [64 x i16]*, [64 x i16]** %36, i64 0
  %37 = load [64 x i16]*, [64 x i16]** %arrayidx, align 8, !tbaa !1
  store [64 x i16]* %37, [64 x i16]** %block, align 8, !tbaa !1
  store i32 0, i32* %EOB, align 4, !tbaa !18
  %38 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ss = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %38, i32 0, i32 59
  %39 = load i32, i32* %Ss, align 4, !tbaa !26
  store i32 %39, i32* %k, align 4, !tbaa !18
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.6
  %40 = load i32, i32* %k, align 4, !tbaa !18
  %41 = load i32, i32* %Se, align 4, !tbaa !18
  %cmp10 = icmp sle i32 %40, %41
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load i32, i32* %k, align 4, !tbaa !18
  %idxprom = sext i32 %42 to i64
  %43 = load i32*, i32** %natural_order, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i32, i32* %43, i64 %idxprom
  %44 = load i32, i32* %arrayidx11, align 4, !tbaa !18
  %idxprom12 = sext i32 %44 to i64
  %45 = load [64 x i16]*, [64 x i16]** %block, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds [64 x i16], [64 x i16]* %45, i32 0, i64 %idxprom12
  %46 = load i16, i16* %arrayidx13, align 2, !tbaa !58
  %conv = sext i16 %46 to i32
  store i32 %conv, i32* %temp, align 4, !tbaa !18
  %47 = load i32, i32* %temp, align 4, !tbaa !18
  %cmp14 = icmp slt i32 %47, 0
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %for.body
  %48 = load i32, i32* %temp, align 4, !tbaa !18
  %sub = sub nsw i32 0, %48
  store i32 %sub, i32* %temp, align 4, !tbaa !18
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %for.body
  %49 = load i32, i32* %Al, align 4, !tbaa !18
  %50 = load i32, i32* %temp, align 4, !tbaa !18
  %shr = ashr i32 %50, %49
  store i32 %shr, i32* %temp, align 4, !tbaa !18
  %51 = load i32, i32* %temp, align 4, !tbaa !18
  %52 = load i32, i32* %k, align 4, !tbaa !18
  %idxprom18 = sext i32 %52 to i64
  %arrayidx19 = getelementptr inbounds [64 x i32], [64 x i32]* %absvalues, i32 0, i64 %idxprom18
  store i32 %51, i32* %arrayidx19, align 4, !tbaa !18
  %53 = load i32, i32* %temp, align 4, !tbaa !18
  %cmp20 = icmp eq i32 %53, 1
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.17
  %54 = load i32, i32* %k, align 4, !tbaa !18
  store i32 %54, i32* %EOB, align 4, !tbaa !18
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.end.17
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %55 = load i32, i32* %k, align 4, !tbaa !18
  %inc = add nsw i32 %55, 1
  store i32 %inc, i32* %k, align 4, !tbaa !18
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %r, align 4, !tbaa !18
  store i32 0, i32* %BR, align 4, !tbaa !18
  %56 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %bit_buffer = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %56, i32 0, i32 15
  %57 = load i8*, i8** %bit_buffer, align 8, !tbaa !20
  %58 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %BE = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %58, i32 0, i32 14
  %59 = load i32, i32* %BE, align 4, !tbaa !32
  %idx.ext = zext i32 %59 to i64
  %add.ptr = getelementptr inbounds i8, i8* %57, i64 %idx.ext
  store i8* %add.ptr, i8** %BR_buffer, align 8, !tbaa !1
  %60 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ss24 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %60, i32 0, i32 59
  %61 = load i32, i32* %Ss24, align 4, !tbaa !26
  store i32 %61, i32* %k, align 4, !tbaa !18
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.59, %for.end
  %62 = load i32, i32* %k, align 4, !tbaa !18
  %63 = load i32, i32* %Se, align 4, !tbaa !18
  %cmp26 = icmp sle i32 %62, %63
  br i1 %cmp26, label %for.body.28, label %for.end.61

for.body.28:                                      ; preds = %for.cond.25
  %64 = load i32, i32* %k, align 4, !tbaa !18
  %idxprom29 = sext i32 %64 to i64
  %arrayidx30 = getelementptr inbounds [64 x i32], [64 x i32]* %absvalues, i32 0, i64 %idxprom29
  %65 = load i32, i32* %arrayidx30, align 4, !tbaa !18
  store i32 %65, i32* %temp, align 4, !tbaa !18
  %cmp31 = icmp eq i32 %65, 0
  br i1 %cmp31, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %for.body.28
  %66 = load i32, i32* %r, align 4, !tbaa !18
  %inc34 = add nsw i32 %66, 1
  store i32 %inc34, i32* %r, align 4, !tbaa !18
  br label %for.inc.59

if.end.35:                                        ; preds = %for.body.28
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.35
  %67 = load i32, i32* %r, align 4, !tbaa !18
  %cmp36 = icmp sgt i32 %67, 15
  br i1 %cmp36, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %68 = load i32, i32* %k, align 4, !tbaa !18
  %69 = load i32, i32* %EOB, align 4, !tbaa !18
  %cmp38 = icmp sle i32 %68, %69
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %70 = phi i1 [ false, %while.cond ], [ %cmp38, %land.rhs ]
  br i1 %70, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %71 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  call void @emit_eobrun(%struct.huff_entropy_encoder* %71) #5
  %72 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %73 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %ac_tbl_no = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %73, i32 0, i32 12
  %74 = load i32, i32* %ac_tbl_no, align 4, !tbaa !30
  call void @emit_ac_symbol(%struct.huff_entropy_encoder* %72, i32 %74, i32 240) #5
  %75 = load i32, i32* %r, align 4, !tbaa !18
  %sub40 = sub nsw i32 %75, 16
  store i32 %sub40, i32* %r, align 4, !tbaa !18
  %76 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %77 = load i8*, i8** %BR_buffer, align 8, !tbaa !1
  %78 = load i32, i32* %BR, align 4, !tbaa !18
  call void @emit_buffered_bits(%struct.huff_entropy_encoder* %76, i8* %77, i32 %78) #5
  %79 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %bit_buffer41 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %79, i32 0, i32 15
  %80 = load i8*, i8** %bit_buffer41, align 8, !tbaa !20
  store i8* %80, i8** %BR_buffer, align 8, !tbaa !1
  store i32 0, i32* %BR, align 4, !tbaa !18
  br label %while.cond

while.end:                                        ; preds = %land.end
  %81 = load i32, i32* %temp, align 4, !tbaa !18
  %cmp42 = icmp sgt i32 %81, 1
  br i1 %cmp42, label %if.then.44, label %if.end.49

if.then.44:                                       ; preds = %while.end
  %82 = load i32, i32* %temp, align 4, !tbaa !18
  %and = and i32 %82, 1
  %conv45 = trunc i32 %and to i8
  %83 = load i32, i32* %BR, align 4, !tbaa !18
  %inc46 = add i32 %83, 1
  store i32 %inc46, i32* %BR, align 4, !tbaa !18
  %idxprom47 = zext i32 %83 to i64
  %84 = load i8*, i8** %BR_buffer, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds i8, i8* %84, i64 %idxprom47
  store i8 %conv45, i8* %arrayidx48, align 1, !tbaa !21
  br label %for.inc.59

if.end.49:                                        ; preds = %while.end
  %85 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  call void @emit_eobrun(%struct.huff_entropy_encoder* %85) #5
  %86 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %87 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %ac_tbl_no50 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %87, i32 0, i32 12
  %88 = load i32, i32* %ac_tbl_no50, align 4, !tbaa !30
  %89 = load i32, i32* %r, align 4, !tbaa !18
  %shl = shl i32 %89, 4
  %add = add nsw i32 %shl, 1
  call void @emit_ac_symbol(%struct.huff_entropy_encoder* %86, i32 %88, i32 %add) #5
  %90 = load i32, i32* %k, align 4, !tbaa !18
  %idxprom51 = sext i32 %90 to i64
  %91 = load i32*, i32** %natural_order, align 8, !tbaa !1
  %arrayidx52 = getelementptr inbounds i32, i32* %91, i64 %idxprom51
  %92 = load i32, i32* %arrayidx52, align 4, !tbaa !18
  %idxprom53 = sext i32 %92 to i64
  %93 = load [64 x i16]*, [64 x i16]** %block, align 8, !tbaa !1
  %arrayidx54 = getelementptr inbounds [64 x i16], [64 x i16]* %93, i32 0, i64 %idxprom53
  %94 = load i16, i16* %arrayidx54, align 2, !tbaa !58
  %conv55 = sext i16 %94 to i32
  %cmp56 = icmp slt i32 %conv55, 0
  %cond = select i1 %cmp56, i32 0, i32 1
  store i32 %cond, i32* %temp, align 4, !tbaa !18
  %95 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %96 = load i32, i32* %temp, align 4, !tbaa !18
  call void @emit_bits_e(%struct.huff_entropy_encoder* %95, i32 %96, i32 1) #5
  %97 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %98 = load i8*, i8** %BR_buffer, align 8, !tbaa !1
  %99 = load i32, i32* %BR, align 4, !tbaa !18
  call void @emit_buffered_bits(%struct.huff_entropy_encoder* %97, i8* %98, i32 %99) #5
  %100 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %bit_buffer58 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %100, i32 0, i32 15
  %101 = load i8*, i8** %bit_buffer58, align 8, !tbaa !20
  store i8* %101, i8** %BR_buffer, align 8, !tbaa !1
  store i32 0, i32* %BR, align 4, !tbaa !18
  store i32 0, i32* %r, align 4, !tbaa !18
  br label %for.inc.59

for.inc.59:                                       ; preds = %if.end.49, %if.then.44, %if.then.33
  %102 = load i32, i32* %k, align 4, !tbaa !18
  %inc60 = add nsw i32 %102, 1
  store i32 %inc60, i32* %k, align 4, !tbaa !18
  br label %for.cond.25

for.end.61:                                       ; preds = %for.cond.25
  %103 = load i32, i32* %r, align 4, !tbaa !18
  %cmp62 = icmp sgt i32 %103, 0
  br i1 %cmp62, label %if.then.66, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end.61
  %104 = load i32, i32* %BR, align 4, !tbaa !18
  %cmp64 = icmp ugt i32 %104, 0
  br i1 %cmp64, label %if.then.66, label %if.end.79

if.then.66:                                       ; preds = %lor.lhs.false, %for.end.61
  %105 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %EOBRUN = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %105, i32 0, i32 13
  %106 = load i32, i32* %EOBRUN, align 4, !tbaa !31
  %inc67 = add i32 %106, 1
  store i32 %inc67, i32* %EOBRUN, align 4, !tbaa !31
  %107 = load i32, i32* %BR, align 4, !tbaa !18
  %108 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %BE68 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %108, i32 0, i32 14
  %109 = load i32, i32* %BE68, align 4, !tbaa !32
  %add69 = add i32 %109, %107
  store i32 %add69, i32* %BE68, align 4, !tbaa !32
  %110 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %EOBRUN70 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %110, i32 0, i32 13
  %111 = load i32, i32* %EOBRUN70, align 4, !tbaa !31
  %cmp71 = icmp eq i32 %111, 32767
  br i1 %cmp71, label %if.then.77, label %lor.lhs.false.73

lor.lhs.false.73:                                 ; preds = %if.then.66
  %112 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %BE74 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %112, i32 0, i32 14
  %113 = load i32, i32* %BE74, align 4, !tbaa !32
  %cmp75 = icmp ugt i32 %113, 937
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %lor.lhs.false.73, %if.then.66
  %114 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  call void @emit_eobrun(%struct.huff_entropy_encoder* %114) #5
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.77, %lor.lhs.false.73
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %lor.lhs.false
  %115 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %next_output_byte80 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %115, i32 0, i32 9
  %116 = load i8*, i8** %next_output_byte80, align 8, !tbaa !48
  %117 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %dest81 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %117, i32 0, i32 6
  %118 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest81, align 8, !tbaa !45
  %next_output_byte82 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %118, i32 0, i32 0
  store i8* %116, i8** %next_output_byte82, align 8, !tbaa !46
  %119 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %free_in_buffer83 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %119, i32 0, i32 10
  %120 = load i64, i64* %free_in_buffer83, align 8, !tbaa !50
  %121 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %dest84 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %121, i32 0, i32 6
  %122 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest84, align 8, !tbaa !45
  %free_in_buffer85 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %122, i32 0, i32 1
  store i64 %120, i64* %free_in_buffer85, align 8, !tbaa !49
  %123 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %restart_interval86 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %123, i32 0, i32 36
  %124 = load i32, i32* %restart_interval86, align 4, !tbaa !42
  %tobool87 = icmp ne i32 %124, 0
  br i1 %tobool87, label %if.then.88, label %if.end.101

if.then.88:                                       ; preds = %if.end.79
  %125 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %restarts_to_go89 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %125, i32 0, i32 2
  %126 = load i32, i32* %restarts_to_go89, align 4, !tbaa !43
  %cmp90 = icmp eq i32 %126, 0
  br i1 %cmp90, label %if.then.92, label %if.end.99

if.then.92:                                       ; preds = %if.then.88
  %127 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %restart_interval93 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %127, i32 0, i32 36
  %128 = load i32, i32* %restart_interval93, align 4, !tbaa !42
  %129 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %restarts_to_go94 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %129, i32 0, i32 2
  store i32 %128, i32* %restarts_to_go94, align 4, !tbaa !43
  %130 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %next_restart_num95 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %130, i32 0, i32 3
  %131 = load i32, i32* %next_restart_num95, align 4, !tbaa !44
  %inc96 = add nsw i32 %131, 1
  store i32 %inc96, i32* %next_restart_num95, align 4, !tbaa !44
  %132 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %next_restart_num97 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %132, i32 0, i32 3
  %133 = load i32, i32* %next_restart_num97, align 4, !tbaa !44
  %and98 = and i32 %133, 7
  store i32 %and98, i32* %next_restart_num97, align 4, !tbaa !44
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.92, %if.then.88
  %134 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %restarts_to_go100 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %134, i32 0, i32 2
  %135 = load i32, i32* %restarts_to_go100, align 4, !tbaa !43
  %dec = add i32 %135, -1
  store i32 %dec, i32* %restarts_to_go100, align 4, !tbaa !43
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.99, %if.end.79
  %136 = bitcast [64 x i32]* %absvalues to i8*
  call void @llvm.lifetime.end(i64 256, i8* %136) #1
  %137 = bitcast i32* %BR to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #1
  %138 = bitcast i8** %BR_buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %138) #1
  %139 = bitcast i32* %EOB to i8*
  call void @llvm.lifetime.end(i64 4, i8* %139) #1
  %140 = bitcast i32* %Al to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #1
  %141 = bitcast i32* %Se to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #1
  %142 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %142) #1
  %143 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #1
  %144 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #1
  %145 = bitcast [64 x i16]** %block to i8*
  call void @llvm.lifetime.end(i64 8, i8* %145) #1
  %146 = bitcast i32** %natural_order to i8*
  call void @llvm.lifetime.end(i64 8, i8* %146) #1
  %147 = bitcast %struct.huff_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #1
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @encode_mcu_gather(%struct.jpeg_compress_struct* %cinfo, [64 x i16]** %MCU_data) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %MCU_data.addr = alloca [64 x i16]**, align 8
  %entropy = alloca %struct.huff_entropy_encoder*, align 8
  %blkn = alloca i32, align 4
  %ci = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store [64 x i16]** %MCU_data, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.huff_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 74
  %2 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy1, align 8, !tbaa !13
  %3 = bitcast %struct.jpeg_entropy_encoder* %2 to %struct.huff_entropy_encoder*
  store %struct.huff_entropy_encoder* %3, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %4 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 36
  %8 = load i32, i32* %restart_interval, align 4, !tbaa !42
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %9 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %restarts_to_go = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %9, i32 0, i32 2
  %10 = load i32, i32* %restarts_to_go, align 4, !tbaa !43
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i32 0, i32* %ci, align 4, !tbaa !18
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %11 = load i32, i32* %ci, align 4, !tbaa !18
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %12, i32 0, i32 53
  %13 = load i32, i32* %comps_in_scan, align 4, !tbaa !33
  %cmp3 = icmp slt i32 %11, %13
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom = sext i32 %14 to i64
  %15 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %saved = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %15, i32 0, i32 1
  %last_dc_val = getelementptr inbounds %struct.savable_state, %struct.savable_state* %saved, i32 0, i32 2
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4, !tbaa !18
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %ci, align 4, !tbaa !18
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !18
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %restart_interval4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 36
  %18 = load i32, i32* %restart_interval4, align 4, !tbaa !42
  %19 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %restarts_to_go5 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %19, i32 0, i32 2
  store i32 %18, i32* %restarts_to_go5, align 4, !tbaa !43
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %20 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %restarts_to_go6 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %20, i32 0, i32 2
  %21 = load i32, i32* %restarts_to_go6, align 4, !tbaa !43
  %dec = add i32 %21, -1
  store i32 %dec, i32* %restarts_to_go6, align 4, !tbaa !43
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  store i32 0, i32* %blkn, align 4, !tbaa !18
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.34, %if.end.7
  %22 = load i32, i32* %blkn, align 4, !tbaa !18
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %23, i32 0, i32 57
  %24 = load i32, i32* %blocks_in_MCU, align 4, !tbaa !57
  %cmp9 = icmp slt i32 %22, %24
  br i1 %cmp9, label %for.body.10, label %for.end.36

for.body.10:                                      ; preds = %for.cond.8
  %25 = load i32, i32* %blkn, align 4, !tbaa !18
  %idxprom11 = sext i32 %25 to i64
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %MCU_membership = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %26, i32 0, i32 58
  %arrayidx12 = getelementptr inbounds [10 x i32], [10 x i32]* %MCU_membership, i32 0, i64 %idxprom11
  %27 = load i32, i32* %arrayidx12, align 4, !tbaa !18
  store i32 %27, i32* %ci, align 4, !tbaa !18
  %28 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom13 = sext i32 %28 to i64
  %29 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %29, i32 0, i32 54
  %arrayidx14 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom13
  %30 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx14, align 8, !tbaa !1
  store %struct.jpeg_component_info* %30, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %31 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %32 = load i32, i32* %blkn, align 4, !tbaa !18
  %idxprom15 = sext i32 %32 to i64
  %33 = load [64 x i16]**, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds [64 x i16]*, [64 x i16]** %33, i64 %idxprom15
  %34 = load [64 x i16]*, [64 x i16]** %arrayidx16, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds [64 x i16], [64 x i16]* %34, i64 0
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx17, i32 0, i32 0
  %35 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom18 = sext i32 %35 to i64
  %36 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %saved19 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %36, i32 0, i32 1
  %last_dc_val20 = getelementptr inbounds %struct.savable_state, %struct.savable_state* %saved19, i32 0, i32 2
  %arrayidx21 = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val20, i32 0, i64 %idxprom18
  %37 = load i32, i32* %arrayidx21, align 4, !tbaa !18
  %38 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %38, i32 0, i32 5
  %39 = load i32, i32* %dc_tbl_no, align 4, !tbaa !34
  %idxprom22 = sext i32 %39 to i64
  %40 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %dc_count_ptrs = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %40, i32 0, i32 6
  %arrayidx23 = getelementptr inbounds [4 x i64*], [4 x i64*]* %dc_count_ptrs, i32 0, i64 %idxprom22
  %41 = load i64*, i64** %arrayidx23, align 8, !tbaa !1
  %42 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %42, i32 0, i32 6
  %43 = load i32, i32* %ac_tbl_no, align 4, !tbaa !28
  %idxprom24 = sext i32 %43 to i64
  %44 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %ac_count_ptrs = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %44, i32 0, i32 7
  %arrayidx25 = getelementptr inbounds [4 x i64*], [4 x i64*]* %ac_count_ptrs, i32 0, i64 %idxprom24
  %45 = load i64*, i64** %arrayidx25, align 8, !tbaa !1
  call void @htest_one_block(%struct.jpeg_compress_struct* %31, i16* %arraydecay, i32 %37, i64* %41, i64* %45) #5
  %46 = load i32, i32* %blkn, align 4, !tbaa !18
  %idxprom26 = sext i32 %46 to i64
  %47 = load [64 x i16]**, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds [64 x i16]*, [64 x i16]** %47, i64 %idxprom26
  %48 = load [64 x i16]*, [64 x i16]** %arrayidx27, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds [64 x i16], [64 x i16]* %48, i64 0
  %arrayidx29 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx28, i32 0, i64 0
  %49 = load i16, i16* %arrayidx29, align 2, !tbaa !58
  %conv = sext i16 %49 to i32
  %50 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom30 = sext i32 %50 to i64
  %51 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %saved31 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %51, i32 0, i32 1
  %last_dc_val32 = getelementptr inbounds %struct.savable_state, %struct.savable_state* %saved31, i32 0, i32 2
  %arrayidx33 = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val32, i32 0, i64 %idxprom30
  store i32 %conv, i32* %arrayidx33, align 4, !tbaa !18
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.body.10
  %52 = load i32, i32* %blkn, align 4, !tbaa !18
  %inc35 = add nsw i32 %52, 1
  store i32 %inc35, i32* %blkn, align 4, !tbaa !18
  br label %for.cond.8

for.end.36:                                       ; preds = %for.cond.8
  %53 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  %55 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  %56 = bitcast %struct.huff_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @encode_mcu_huff(%struct.jpeg_compress_struct* %cinfo, [64 x i16]** %MCU_data) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %MCU_data.addr = alloca [64 x i16]**, align 8
  %entropy = alloca %struct.huff_entropy_encoder*, align 8
  %state = alloca %struct.working_state, align 8
  %blkn = alloca i32, align 4
  %ci = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store [64 x i16]** %MCU_data, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.huff_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 74
  %2 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy1, align 8, !tbaa !13
  %3 = bitcast %struct.jpeg_entropy_encoder* %2 to %struct.huff_entropy_encoder*
  store %struct.huff_entropy_encoder* %3, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %4 = bitcast %struct.working_state* %state to i8*
  call void @llvm.lifetime.start(i64 56, i8* %4) #1
  %5 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %dest = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 6
  %9 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !45
  %next_output_byte = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %9, i32 0, i32 0
  %10 = load i8*, i8** %next_output_byte, align 8, !tbaa !46
  %next_output_byte2 = getelementptr inbounds %struct.working_state, %struct.working_state* %state, i32 0, i32 0
  store i8* %10, i8** %next_output_byte2, align 8, !tbaa !51
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %dest3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 6
  %12 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest3, align 8, !tbaa !45
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %12, i32 0, i32 1
  %13 = load i64, i64* %free_in_buffer, align 8, !tbaa !49
  %free_in_buffer4 = getelementptr inbounds %struct.working_state, %struct.working_state* %state, i32 0, i32 1
  store i64 %13, i64* %free_in_buffer4, align 8, !tbaa !53
  %cur = getelementptr inbounds %struct.working_state, %struct.working_state* %state, i32 0, i32 2
  %14 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %saved = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %14, i32 0, i32 1
  %15 = bitcast %struct.savable_state* %cur to i8*
  %16 = bitcast %struct.savable_state* %saved to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 32, i32 8, i1 false), !tbaa.struct !54
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %cinfo5 = getelementptr inbounds %struct.working_state, %struct.working_state* %state, i32 0, i32 3
  store %struct.jpeg_compress_struct* %17, %struct.jpeg_compress_struct** %cinfo5, align 8, !tbaa !56
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 36
  %19 = load i32, i32* %restart_interval, align 4, !tbaa !42
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %20 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %restarts_to_go = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %20, i32 0, i32 2
  %21 = load i32, i32* %restarts_to_go, align 4, !tbaa !43
  %cmp = icmp eq i32 %21, 0
  br i1 %cmp, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.then
  %22 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %next_restart_num = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %22, i32 0, i32 3
  %23 = load i32, i32* %next_restart_num, align 4, !tbaa !44
  %call = call i32 @emit_restart_s(%struct.working_state* %state, i32 %23) #5
  %tobool7 = icmp ne i32 %call, 0
  br i1 %tobool7, label %if.end, label %if.then.8

if.then.8:                                        ; preds = %if.then.6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.6
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %entry
  store i32 0, i32* %blkn, align 4, !tbaa !18
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.10
  %24 = load i32, i32* %blkn, align 4, !tbaa !18
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %25, i32 0, i32 57
  %26 = load i32, i32* %blocks_in_MCU, align 4, !tbaa !57
  %cmp11 = icmp slt i32 %24, %26
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %blkn, align 4, !tbaa !18
  %idxprom = sext i32 %27 to i64
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %MCU_membership = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %28, i32 0, i32 58
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %MCU_membership, i32 0, i64 %idxprom
  %29 = load i32, i32* %arrayidx, align 4, !tbaa !18
  store i32 %29, i32* %ci, align 4, !tbaa !18
  %30 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom12 = sext i32 %30 to i64
  %31 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %31, i32 0, i32 54
  %arrayidx13 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom12
  %32 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx13, align 8, !tbaa !1
  store %struct.jpeg_component_info* %32, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %33 = load i32, i32* %blkn, align 4, !tbaa !18
  %idxprom14 = sext i32 %33 to i64
  %34 = load [64 x i16]**, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds [64 x i16]*, [64 x i16]** %34, i64 %idxprom14
  %35 = load [64 x i16]*, [64 x i16]** %arrayidx15, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds [64 x i16], [64 x i16]* %35, i64 0
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx16, i32 0, i32 0
  %36 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom17 = sext i32 %36 to i64
  %cur18 = getelementptr inbounds %struct.working_state, %struct.working_state* %state, i32 0, i32 2
  %last_dc_val = getelementptr inbounds %struct.savable_state, %struct.savable_state* %cur18, i32 0, i32 2
  %arrayidx19 = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val, i32 0, i64 %idxprom17
  %37 = load i32, i32* %arrayidx19, align 4, !tbaa !18
  %38 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %38, i32 0, i32 5
  %39 = load i32, i32* %dc_tbl_no, align 4, !tbaa !34
  %idxprom20 = sext i32 %39 to i64
  %40 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %dc_derived_tbls = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %40, i32 0, i32 4
  %arrayidx21 = getelementptr inbounds [4 x %struct.c_derived_tbl*], [4 x %struct.c_derived_tbl*]* %dc_derived_tbls, i32 0, i64 %idxprom20
  %41 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %arrayidx21, align 8, !tbaa !1
  %42 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %42, i32 0, i32 6
  %43 = load i32, i32* %ac_tbl_no, align 4, !tbaa !28
  %idxprom22 = sext i32 %43 to i64
  %44 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %ac_derived_tbls = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %44, i32 0, i32 5
  %arrayidx23 = getelementptr inbounds [4 x %struct.c_derived_tbl*], [4 x %struct.c_derived_tbl*]* %ac_derived_tbls, i32 0, i64 %idxprom22
  %45 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %arrayidx23, align 8, !tbaa !1
  %call24 = call i32 @encode_one_block(%struct.working_state* %state, i16* %arraydecay, i32 %37, %struct.c_derived_tbl* %41, %struct.c_derived_tbl* %45) #5
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %for.body
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %for.body
  %46 = load i32, i32* %blkn, align 4, !tbaa !18
  %idxprom28 = sext i32 %46 to i64
  %47 = load [64 x i16]**, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds [64 x i16]*, [64 x i16]** %47, i64 %idxprom28
  %48 = load [64 x i16]*, [64 x i16]** %arrayidx29, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds [64 x i16], [64 x i16]* %48, i64 0
  %arrayidx31 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx30, i32 0, i64 0
  %49 = load i16, i16* %arrayidx31, align 2, !tbaa !58
  %conv = sext i16 %49 to i32
  %50 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom32 = sext i32 %50 to i64
  %cur33 = getelementptr inbounds %struct.working_state, %struct.working_state* %state, i32 0, i32 2
  %last_dc_val34 = getelementptr inbounds %struct.savable_state, %struct.savable_state* %cur33, i32 0, i32 2
  %arrayidx35 = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val34, i32 0, i64 %idxprom32
  store i32 %conv, i32* %arrayidx35, align 4, !tbaa !18
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %51 = load i32, i32* %blkn, align 4, !tbaa !18
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %blkn, align 4, !tbaa !18
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %next_output_byte36 = getelementptr inbounds %struct.working_state, %struct.working_state* %state, i32 0, i32 0
  %52 = load i8*, i8** %next_output_byte36, align 8, !tbaa !51
  %53 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %dest37 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %53, i32 0, i32 6
  %54 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest37, align 8, !tbaa !45
  %next_output_byte38 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %54, i32 0, i32 0
  store i8* %52, i8** %next_output_byte38, align 8, !tbaa !46
  %free_in_buffer39 = getelementptr inbounds %struct.working_state, %struct.working_state* %state, i32 0, i32 1
  %55 = load i64, i64* %free_in_buffer39, align 8, !tbaa !53
  %56 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %dest40 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %56, i32 0, i32 6
  %57 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest40, align 8, !tbaa !45
  %free_in_buffer41 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %57, i32 0, i32 1
  store i64 %55, i64* %free_in_buffer41, align 8, !tbaa !49
  %58 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %saved42 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %58, i32 0, i32 1
  %cur43 = getelementptr inbounds %struct.working_state, %struct.working_state* %state, i32 0, i32 2
  %59 = bitcast %struct.savable_state* %saved42 to i8*
  %60 = bitcast %struct.savable_state* %cur43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* %60, i64 32, i32 8, i1 false), !tbaa.struct !54
  %61 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %restart_interval44 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %61, i32 0, i32 36
  %62 = load i32, i32* %restart_interval44, align 4, !tbaa !42
  %tobool45 = icmp ne i32 %62, 0
  br i1 %tobool45, label %if.then.46, label %if.end.58

if.then.46:                                       ; preds = %for.end
  %63 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %restarts_to_go47 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %63, i32 0, i32 2
  %64 = load i32, i32* %restarts_to_go47, align 4, !tbaa !43
  %cmp48 = icmp eq i32 %64, 0
  br i1 %cmp48, label %if.then.50, label %if.end.56

if.then.50:                                       ; preds = %if.then.46
  %65 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %restart_interval51 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %65, i32 0, i32 36
  %66 = load i32, i32* %restart_interval51, align 4, !tbaa !42
  %67 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %restarts_to_go52 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %67, i32 0, i32 2
  store i32 %66, i32* %restarts_to_go52, align 4, !tbaa !43
  %68 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %next_restart_num53 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %68, i32 0, i32 3
  %69 = load i32, i32* %next_restart_num53, align 4, !tbaa !44
  %inc54 = add nsw i32 %69, 1
  store i32 %inc54, i32* %next_restart_num53, align 4, !tbaa !44
  %70 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %next_restart_num55 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %70, i32 0, i32 3
  %71 = load i32, i32* %next_restart_num55, align 4, !tbaa !44
  %and = and i32 %71, 7
  store i32 %and, i32* %next_restart_num55, align 4, !tbaa !44
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.50, %if.then.46
  %72 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !1
  %restarts_to_go57 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %72, i32 0, i32 2
  %73 = load i32, i32* %restarts_to_go57, align 4, !tbaa !43
  %dec = add i32 %73, -1
  store i32 %dec, i32* %restarts_to_go57, align 4, !tbaa !43
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.56, %for.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.58, %if.then.26, %if.then.8
  %74 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  %75 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %76 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %77 = bitcast %struct.working_state* %state to i8*
  call void @llvm.lifetime.end(i64 56, i8* %77) #1
  %78 = bitcast %struct.huff_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %79 = load i32, i32* %retval
  ret i32 %79
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #2

; Function Attrs: nounwind uwtable
define internal void @jpeg_make_c_derived_tbl(%struct.jpeg_compress_struct* %cinfo, i32 %isDC, i32 %tblno, %struct.c_derived_tbl** %pdtbl) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %isDC.addr = alloca i32, align 4
  %tblno.addr = alloca i32, align 4
  %pdtbl.addr = alloca %struct.c_derived_tbl**, align 8
  %htbl = alloca %struct.JHUFF_TBL*, align 8
  %dtbl = alloca %struct.c_derived_tbl*, align 8
  %p = alloca i32, align 4
  %i = alloca i32, align 4
  %l = alloca i32, align 4
  %lastp = alloca i32, align 4
  %si = alloca i32, align 4
  %maxsymbol = alloca i32, align 4
  %huffsize = alloca [257 x i8], align 16
  %huffcode = alloca [257 x i32], align 16
  %code = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store i32 %isDC, i32* %isDC.addr, align 4, !tbaa !21
  store i32 %tblno, i32* %tblno.addr, align 4, !tbaa !18
  store %struct.c_derived_tbl** %pdtbl, %struct.c_derived_tbl*** %pdtbl.addr, align 8, !tbaa !1
  %0 = bitcast %struct.JHUFF_TBL** %htbl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.c_derived_tbl** %dtbl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %p to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %lastp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %si to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %maxsymbol to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast [257 x i8]* %huffsize to i8*
  call void @llvm.lifetime.start(i64 257, i8* %8) #1
  %9 = bitcast [257 x i32]* %huffcode to i8*
  call void @llvm.lifetime.start(i64 1028, i8* %9) #1
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load i32, i32* %tblno.addr, align 4, !tbaa !18
  %cmp = icmp slt i32 %11, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %12 = load i32, i32* %tblno.addr, align 4, !tbaa !18
  %cmp1 = icmp sge i32 %12, 4
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 0
  %14 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !35
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %14, i32 0, i32 5
  store i32 52, i32* %msg_code, align 4, !tbaa !36
  %15 = load i32, i32* %tblno.addr, align 4, !tbaa !18
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 0
  %17 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8, !tbaa !35
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %17, i32 0, i32 6
  %i3 = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i3, i32 0, i64 0
  store i32 %15, i32* %arrayidx, align 4, !tbaa !18
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 0
  %19 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8, !tbaa !35
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %19, i32 0, i32 0
  %20 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !38
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %22 = bitcast %struct.jpeg_compress_struct* %21 to %struct.jpeg_common_struct*
  call void %20(%struct.jpeg_common_struct* %22) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %23 = load i32, i32* %isDC.addr, align 4, !tbaa !21
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %24 = load i32, i32* %tblno.addr, align 4, !tbaa !18
  %idxprom = sext i32 %24 to i64
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %dc_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %25, i32 0, i32 22
  %arrayidx5 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %dc_huff_tbl_ptrs, i32 0, i64 %idxprom
  %26 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx5, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %27 = load i32, i32* %tblno.addr, align 4, !tbaa !18
  %idxprom6 = sext i32 %27 to i64
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %ac_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %28, i32 0, i32 23
  %arrayidx7 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %ac_huff_tbl_ptrs, i32 0, i64 %idxprom6
  %29 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx7, align 8, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.JHUFF_TBL* [ %26, %cond.true ], [ %29, %cond.false ]
  store %struct.JHUFF_TBL* %cond, %struct.JHUFF_TBL** %htbl, align 8, !tbaa !1
  %30 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl, align 8, !tbaa !1
  %cmp8 = icmp eq %struct.JHUFF_TBL* %30, null
  br i1 %cmp8, label %if.then.9, label %if.end.18

if.then.9:                                        ; preds = %cond.end
  %31 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err10 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %31, i32 0, i32 0
  %32 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err10, align 8, !tbaa !35
  %msg_code11 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %32, i32 0, i32 5
  store i32 52, i32* %msg_code11, align 4, !tbaa !36
  %33 = load i32, i32* %tblno.addr, align 4, !tbaa !18
  %34 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err12 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %34, i32 0, i32 0
  %35 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err12, align 8, !tbaa !35
  %msg_parm13 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %35, i32 0, i32 6
  %i14 = bitcast %union.anon* %msg_parm13 to [8 x i32]*
  %arrayidx15 = getelementptr inbounds [8 x i32], [8 x i32]* %i14, i32 0, i64 0
  store i32 %33, i32* %arrayidx15, align 4, !tbaa !18
  %36 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err16 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %36, i32 0, i32 0
  %37 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err16, align 8, !tbaa !35
  %error_exit17 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %37, i32 0, i32 0
  %38 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit17, align 8, !tbaa !38
  %39 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %40 = bitcast %struct.jpeg_compress_struct* %39 to %struct.jpeg_common_struct*
  call void %38(%struct.jpeg_common_struct* %40) #5
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.9, %cond.end
  %41 = load %struct.c_derived_tbl**, %struct.c_derived_tbl*** %pdtbl.addr, align 8, !tbaa !1
  %42 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %41, align 8, !tbaa !1
  %cmp19 = icmp eq %struct.c_derived_tbl* %42, null
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.18
  %43 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %43, i32 0, i32 1
  %44 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !5
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %44, i32 0, i32 0
  %45 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !10
  %46 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %47 = bitcast %struct.jpeg_compress_struct* %46 to %struct.jpeg_common_struct*
  %call = call i8* %45(%struct.jpeg_common_struct* %47, i32 1, i64 1280) #5
  %48 = bitcast i8* %call to %struct.c_derived_tbl*
  %49 = load %struct.c_derived_tbl**, %struct.c_derived_tbl*** %pdtbl.addr, align 8, !tbaa !1
  store %struct.c_derived_tbl* %48, %struct.c_derived_tbl** %49, align 8, !tbaa !1
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.end.18
  %50 = load %struct.c_derived_tbl**, %struct.c_derived_tbl*** %pdtbl.addr, align 8, !tbaa !1
  %51 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %50, align 8, !tbaa !1
  store %struct.c_derived_tbl* %51, %struct.c_derived_tbl** %dtbl, align 8, !tbaa !1
  store i32 0, i32* %p, align 4, !tbaa !18
  store i32 1, i32* %l, align 4, !tbaa !18
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.21
  %52 = load i32, i32* %l, align 4, !tbaa !18
  %cmp22 = icmp sle i32 %52, 16
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %53 = load i32, i32* %l, align 4, !tbaa !18
  %idxprom23 = sext i32 %53 to i64
  %54 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl, align 8, !tbaa !1
  %bits = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %54, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 %idxprom23
  %55 = load i8, i8* %arrayidx24, align 1, !tbaa !21
  %conv = zext i8 %55 to i32
  store i32 %conv, i32* %i, align 4, !tbaa !18
  %56 = load i32, i32* %i, align 4, !tbaa !18
  %cmp25 = icmp slt i32 %56, 0
  br i1 %cmp25, label %if.then.30, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %for.body
  %57 = load i32, i32* %p, align 4, !tbaa !18
  %58 = load i32, i32* %i, align 4, !tbaa !18
  %add = add nsw i32 %57, %58
  %cmp28 = icmp sgt i32 %add, 256
  br i1 %cmp28, label %if.then.30, label %if.end.35

if.then.30:                                       ; preds = %lor.lhs.false.27, %for.body
  %59 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err31 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %59, i32 0, i32 0
  %60 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err31, align 8, !tbaa !35
  %msg_code32 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %60, i32 0, i32 5
  store i32 9, i32* %msg_code32, align 4, !tbaa !36
  %61 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err33 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %61, i32 0, i32 0
  %62 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err33, align 8, !tbaa !35
  %error_exit34 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %62, i32 0, i32 0
  %63 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit34, align 8, !tbaa !38
  %64 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %65 = bitcast %struct.jpeg_compress_struct* %64 to %struct.jpeg_common_struct*
  call void %63(%struct.jpeg_common_struct* %65) #5
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.30, %lor.lhs.false.27
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.35
  %66 = load i32, i32* %i, align 4, !tbaa !18
  %dec = add nsw i32 %66, -1
  store i32 %dec, i32* %i, align 4, !tbaa !18
  %tobool36 = icmp ne i32 %66, 0
  br i1 %tobool36, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %67 = load i32, i32* %l, align 4, !tbaa !18
  %conv37 = trunc i32 %67 to i8
  %68 = load i32, i32* %p, align 4, !tbaa !18
  %inc = add nsw i32 %68, 1
  store i32 %inc, i32* %p, align 4, !tbaa !18
  %idxprom38 = sext i32 %68 to i64
  %arrayidx39 = getelementptr inbounds [257 x i8], [257 x i8]* %huffsize, i32 0, i64 %idxprom38
  store i8 %conv37, i8* %arrayidx39, align 1, !tbaa !21
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %69 = load i32, i32* %l, align 4, !tbaa !18
  %inc40 = add nsw i32 %69, 1
  store i32 %inc40, i32* %l, align 4, !tbaa !18
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %70 = load i32, i32* %p, align 4, !tbaa !18
  %idxprom41 = sext i32 %70 to i64
  %arrayidx42 = getelementptr inbounds [257 x i8], [257 x i8]* %huffsize, i32 0, i64 %idxprom41
  store i8 0, i8* %arrayidx42, align 1, !tbaa !21
  %71 = load i32, i32* %p, align 4, !tbaa !18
  store i32 %71, i32* %lastp, align 4, !tbaa !18
  store i32 0, i32* %code, align 4, !tbaa !18
  %arrayidx43 = getelementptr inbounds [257 x i8], [257 x i8]* %huffsize, i32 0, i64 0
  %72 = load i8, i8* %arrayidx43, align 1, !tbaa !21
  %conv44 = sext i8 %72 to i32
  store i32 %conv44, i32* %si, align 4, !tbaa !18
  store i32 0, i32* %p, align 4, !tbaa !18
  br label %while.cond.45

while.cond.45:                                    ; preds = %if.end.70, %for.end
  %73 = load i32, i32* %p, align 4, !tbaa !18
  %idxprom46 = sext i32 %73 to i64
  %arrayidx47 = getelementptr inbounds [257 x i8], [257 x i8]* %huffsize, i32 0, i64 %idxprom46
  %74 = load i8, i8* %arrayidx47, align 1, !tbaa !21
  %tobool48 = icmp ne i8 %74, 0
  br i1 %tobool48, label %while.body.49, label %while.end.73

while.body.49:                                    ; preds = %while.cond.45
  br label %while.cond.50

while.cond.50:                                    ; preds = %while.body.56, %while.body.49
  %75 = load i32, i32* %p, align 4, !tbaa !18
  %idxprom51 = sext i32 %75 to i64
  %arrayidx52 = getelementptr inbounds [257 x i8], [257 x i8]* %huffsize, i32 0, i64 %idxprom51
  %76 = load i8, i8* %arrayidx52, align 1, !tbaa !21
  %conv53 = sext i8 %76 to i32
  %77 = load i32, i32* %si, align 4, !tbaa !18
  %cmp54 = icmp eq i32 %conv53, %77
  br i1 %cmp54, label %while.body.56, label %while.end.61

while.body.56:                                    ; preds = %while.cond.50
  %78 = load i32, i32* %code, align 4, !tbaa !18
  %79 = load i32, i32* %p, align 4, !tbaa !18
  %inc57 = add nsw i32 %79, 1
  store i32 %inc57, i32* %p, align 4, !tbaa !18
  %idxprom58 = sext i32 %79 to i64
  %arrayidx59 = getelementptr inbounds [257 x i32], [257 x i32]* %huffcode, i32 0, i64 %idxprom58
  store i32 %78, i32* %arrayidx59, align 4, !tbaa !18
  %80 = load i32, i32* %code, align 4, !tbaa !18
  %inc60 = add i32 %80, 1
  store i32 %inc60, i32* %code, align 4, !tbaa !18
  br label %while.cond.50

while.end.61:                                     ; preds = %while.cond.50
  %81 = load i32, i32* %code, align 4, !tbaa !18
  %conv62 = zext i32 %81 to i64
  %82 = load i32, i32* %si, align 4, !tbaa !18
  %sh_prom = zext i32 %82 to i64
  %shl = shl i64 1, %sh_prom
  %cmp63 = icmp sge i64 %conv62, %shl
  br i1 %cmp63, label %if.then.65, label %if.end.70

if.then.65:                                       ; preds = %while.end.61
  %83 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err66 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %83, i32 0, i32 0
  %84 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err66, align 8, !tbaa !35
  %msg_code67 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %84, i32 0, i32 5
  store i32 9, i32* %msg_code67, align 4, !tbaa !36
  %85 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err68 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %85, i32 0, i32 0
  %86 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err68, align 8, !tbaa !35
  %error_exit69 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %86, i32 0, i32 0
  %87 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit69, align 8, !tbaa !38
  %88 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %89 = bitcast %struct.jpeg_compress_struct* %88 to %struct.jpeg_common_struct*
  call void %87(%struct.jpeg_common_struct* %89) #5
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.65, %while.end.61
  %90 = load i32, i32* %code, align 4, !tbaa !18
  %shl71 = shl i32 %90, 1
  store i32 %shl71, i32* %code, align 4, !tbaa !18
  %91 = load i32, i32* %si, align 4, !tbaa !18
  %inc72 = add nsw i32 %91, 1
  store i32 %inc72, i32* %si, align 4, !tbaa !18
  br label %while.cond.45

while.end.73:                                     ; preds = %while.cond.45
  %92 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %dtbl, align 8, !tbaa !1
  %ehufsi = getelementptr inbounds %struct.c_derived_tbl, %struct.c_derived_tbl* %92, i32 0, i32 1
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %ehufsi, i32 0, i32 0
  %call74 = call i8* @memset(i8* %arraydecay, i32 0, i64 256) #6
  %93 = load i32, i32* %isDC.addr, align 4, !tbaa !21
  %tobool75 = icmp ne i32 %93, 0
  %cond76 = select i1 %tobool75, i32 15, i32 255
  store i32 %cond76, i32* %maxsymbol, align 4, !tbaa !18
  store i32 0, i32* %p, align 4, !tbaa !18
  br label %for.cond.77

for.cond.77:                                      ; preds = %for.inc.110, %while.end.73
  %94 = load i32, i32* %p, align 4, !tbaa !18
  %95 = load i32, i32* %lastp, align 4, !tbaa !18
  %cmp78 = icmp slt i32 %94, %95
  br i1 %cmp78, label %for.body.80, label %for.end.112

for.body.80:                                      ; preds = %for.cond.77
  %96 = load i32, i32* %p, align 4, !tbaa !18
  %idxprom81 = sext i32 %96 to i64
  %97 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl, align 8, !tbaa !1
  %huffval = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %97, i32 0, i32 1
  %arrayidx82 = getelementptr inbounds [256 x i8], [256 x i8]* %huffval, i32 0, i64 %idxprom81
  %98 = load i8, i8* %arrayidx82, align 1, !tbaa !21
  %conv83 = zext i8 %98 to i32
  store i32 %conv83, i32* %i, align 4, !tbaa !18
  %99 = load i32, i32* %i, align 4, !tbaa !18
  %cmp84 = icmp slt i32 %99, 0
  br i1 %cmp84, label %if.then.95, label %lor.lhs.false.86

lor.lhs.false.86:                                 ; preds = %for.body.80
  %100 = load i32, i32* %i, align 4, !tbaa !18
  %101 = load i32, i32* %maxsymbol, align 4, !tbaa !18
  %cmp87 = icmp sgt i32 %100, %101
  br i1 %cmp87, label %if.then.95, label %lor.lhs.false.89

lor.lhs.false.89:                                 ; preds = %lor.lhs.false.86
  %102 = load i32, i32* %i, align 4, !tbaa !18
  %idxprom90 = sext i32 %102 to i64
  %103 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %dtbl, align 8, !tbaa !1
  %ehufsi91 = getelementptr inbounds %struct.c_derived_tbl, %struct.c_derived_tbl* %103, i32 0, i32 1
  %arrayidx92 = getelementptr inbounds [256 x i8], [256 x i8]* %ehufsi91, i32 0, i64 %idxprom90
  %104 = load i8, i8* %arrayidx92, align 1, !tbaa !21
  %conv93 = sext i8 %104 to i32
  %tobool94 = icmp ne i32 %conv93, 0
  br i1 %tobool94, label %if.then.95, label %if.end.100

if.then.95:                                       ; preds = %lor.lhs.false.89, %lor.lhs.false.86, %for.body.80
  %105 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err96 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %105, i32 0, i32 0
  %106 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err96, align 8, !tbaa !35
  %msg_code97 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %106, i32 0, i32 5
  store i32 9, i32* %msg_code97, align 4, !tbaa !36
  %107 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err98 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %107, i32 0, i32 0
  %108 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err98, align 8, !tbaa !35
  %error_exit99 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %108, i32 0, i32 0
  %109 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit99, align 8, !tbaa !38
  %110 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %111 = bitcast %struct.jpeg_compress_struct* %110 to %struct.jpeg_common_struct*
  call void %109(%struct.jpeg_common_struct* %111) #5
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.95, %lor.lhs.false.89
  %112 = load i32, i32* %p, align 4, !tbaa !18
  %idxprom101 = sext i32 %112 to i64
  %arrayidx102 = getelementptr inbounds [257 x i32], [257 x i32]* %huffcode, i32 0, i64 %idxprom101
  %113 = load i32, i32* %arrayidx102, align 4, !tbaa !18
  %114 = load i32, i32* %i, align 4, !tbaa !18
  %idxprom103 = sext i32 %114 to i64
  %115 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %dtbl, align 8, !tbaa !1
  %ehufco = getelementptr inbounds %struct.c_derived_tbl, %struct.c_derived_tbl* %115, i32 0, i32 0
  %arrayidx104 = getelementptr inbounds [256 x i32], [256 x i32]* %ehufco, i32 0, i64 %idxprom103
  store i32 %113, i32* %arrayidx104, align 4, !tbaa !18
  %116 = load i32, i32* %p, align 4, !tbaa !18
  %idxprom105 = sext i32 %116 to i64
  %arrayidx106 = getelementptr inbounds [257 x i8], [257 x i8]* %huffsize, i32 0, i64 %idxprom105
  %117 = load i8, i8* %arrayidx106, align 1, !tbaa !21
  %118 = load i32, i32* %i, align 4, !tbaa !18
  %idxprom107 = sext i32 %118 to i64
  %119 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %dtbl, align 8, !tbaa !1
  %ehufsi108 = getelementptr inbounds %struct.c_derived_tbl, %struct.c_derived_tbl* %119, i32 0, i32 1
  %arrayidx109 = getelementptr inbounds [256 x i8], [256 x i8]* %ehufsi108, i32 0, i64 %idxprom107
  store i8 %117, i8* %arrayidx109, align 1, !tbaa !21
  br label %for.inc.110

for.inc.110:                                      ; preds = %if.end.100
  %120 = load i32, i32* %p, align 4, !tbaa !18
  %inc111 = add nsw i32 %120, 1
  store i32 %inc111, i32* %p, align 4, !tbaa !18
  br label %for.cond.77

for.end.112:                                      ; preds = %for.cond.77
  %121 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #1
  %122 = bitcast [257 x i32]* %huffcode to i8*
  call void @llvm.lifetime.end(i64 1028, i8* %122) #1
  %123 = bitcast [257 x i8]* %huffsize to i8*
  call void @llvm.lifetime.end(i64 257, i8* %123) #1
  %124 = bitcast i32* %maxsymbol to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #1
  %125 = bitcast i32* %si to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #1
  %126 = bitcast i32* %lastp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #1
  %127 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #1
  %128 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %128) #1
  %129 = bitcast i32* %p to i8*
  call void @llvm.lifetime.end(i64 4, i8* %129) #1
  %130 = bitcast %struct.c_derived_tbl** %dtbl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %130) #1
  %131 = bitcast %struct.JHUFF_TBL** %htbl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %131) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emit_eobrun(%struct.huff_entropy_encoder* %entropy) #0 {
entry:
  %entropy.addr = alloca %struct.huff_entropy_encoder*, align 8
  %temp = alloca i32, align 4
  %nbits = alloca i32, align 4
  store %struct.huff_entropy_encoder* %entropy, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %0 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %nbits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %EOBRUN = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %2, i32 0, i32 13
  %3 = load i32, i32* %EOBRUN, align 4, !tbaa !31
  %cmp = icmp ugt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %4 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %EOBRUN1 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %4, i32 0, i32 13
  %5 = load i32, i32* %EOBRUN1, align 4, !tbaa !31
  store i32 %5, i32* %temp, align 4, !tbaa !18
  store i32 0, i32* %nbits, align 4, !tbaa !18
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %6 = load i32, i32* %temp, align 4, !tbaa !18
  %shr = ashr i32 %6, 1
  store i32 %shr, i32* %temp, align 4, !tbaa !18
  %tobool = icmp ne i32 %shr, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i32, i32* %nbits, align 4, !tbaa !18
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %nbits, align 4, !tbaa !18
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load i32, i32* %nbits, align 4, !tbaa !18
  %cmp2 = icmp sgt i32 %8, 14
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %while.end
  %9 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %cinfo = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %9, i32 0, i32 11
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo, align 8, !tbaa !23
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !35
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i32 0, i32 5
  store i32 41, i32* %msg_code, align 4, !tbaa !36
  %12 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %cinfo4 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %12, i32 0, i32 11
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo4, align 8, !tbaa !23
  %err5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 0
  %14 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err5, align 8, !tbaa !35
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %14, i32 0, i32 0
  %15 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !38
  %16 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %cinfo6 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %16, i32 0, i32 11
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo6, align 8, !tbaa !23
  %18 = bitcast %struct.jpeg_compress_struct* %17 to %struct.jpeg_common_struct*
  call void %15(%struct.jpeg_common_struct* %18) #5
  br label %if.end

if.end:                                           ; preds = %if.then.3, %while.end
  %19 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %20 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %ac_tbl_no = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %20, i32 0, i32 12
  %21 = load i32, i32* %ac_tbl_no, align 4, !tbaa !30
  %22 = load i32, i32* %nbits, align 4, !tbaa !18
  %shl = shl i32 %22, 4
  call void @emit_ac_symbol(%struct.huff_entropy_encoder* %19, i32 %21, i32 %shl) #5
  %23 = load i32, i32* %nbits, align 4, !tbaa !18
  %tobool7 = icmp ne i32 %23, 0
  br i1 %tobool7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end
  %24 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %25 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %EOBRUN9 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %25, i32 0, i32 13
  %26 = load i32, i32* %EOBRUN9, align 4, !tbaa !31
  %27 = load i32, i32* %nbits, align 4, !tbaa !18
  call void @emit_bits_e(%struct.huff_entropy_encoder* %24, i32 %26, i32 %27) #5
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end
  %28 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %EOBRUN11 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %28, i32 0, i32 13
  store i32 0, i32* %EOBRUN11, align 4, !tbaa !31
  %29 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %30 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %bit_buffer = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %30, i32 0, i32 15
  %31 = load i8*, i8** %bit_buffer, align 8, !tbaa !20
  %32 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %BE = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %32, i32 0, i32 14
  %33 = load i32, i32* %BE, align 4, !tbaa !32
  call void @emit_buffered_bits(%struct.huff_entropy_encoder* %29, i8* %31, i32 %33) #5
  %34 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %BE12 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %34, i32 0, i32 14
  store i32 0, i32* %BE12, align 4, !tbaa !32
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.10, %entry
  %35 = bitcast i32* %nbits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  ret void
}

declare %struct.JHUFF_TBL* @jpeg_alloc_huff_table(%struct.jpeg_common_struct*) #3

; Function Attrs: nounwind uwtable
define internal void @jpeg_gen_optimal_table(%struct.jpeg_compress_struct* %cinfo, %struct.JHUFF_TBL* %htbl, i64* %freq) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %htbl.addr = alloca %struct.JHUFF_TBL*, align 8
  %freq.addr = alloca i64*, align 8
  %bits = alloca [33 x i8], align 16
  %codesize = alloca [257 x i32], align 16
  %others = alloca [257 x i32], align 16
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  %p = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %v = alloca i64, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store %struct.JHUFF_TBL* %htbl, %struct.JHUFF_TBL** %htbl.addr, align 8, !tbaa !1
  store i64* %freq, i64** %freq.addr, align 8, !tbaa !1
  %0 = bitcast [33 x i8]* %bits to i8*
  call void @llvm.lifetime.start(i64 33, i8* %0) #1
  %1 = bitcast [257 x i32]* %codesize to i8*
  call void @llvm.lifetime.start(i64 1028, i8* %1) #1
  %2 = bitcast [257 x i32]* %others to i8*
  call void @llvm.lifetime.start(i64 1028, i8* %2) #1
  %3 = bitcast i32* %c1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %c2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %p to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i64* %v to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %arraydecay = getelementptr inbounds [33 x i8], [33 x i8]* %bits, i32 0, i32 0
  %call = call i8* @memset(i8* %arraydecay, i32 0, i64 33) #6
  %arraydecay1 = getelementptr inbounds [257 x i32], [257 x i32]* %codesize, i32 0, i32 0
  %9 = bitcast i32* %arraydecay1 to i8*
  %call2 = call i8* @memset(i8* %9, i32 0, i64 1028) #6
  store i32 0, i32* %i, align 4, !tbaa !18
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %i, align 4, !tbaa !18
  %cmp = icmp slt i32 %10, 257
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4, !tbaa !18
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [257 x i32], [257 x i32]* %others, i32 0, i64 %idxprom
  store i32 -1, i32* %arrayidx, align 4, !tbaa !18
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !tbaa !18
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4, !tbaa !18
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i64*, i64** %freq.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i64, i64* %13, i64 256
  store i64 1, i64* %arrayidx3, align 8, !tbaa !55
  br label %for.cond.4

for.cond.4:                                       ; preds = %while.end.72, %for.end
  store i32 -1, i32* %c1, align 4, !tbaa !18
  store i64 1000000000, i64* %v, align 8, !tbaa !55
  store i32 0, i32* %i, align 4, !tbaa !18
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.15, %for.cond.4
  %14 = load i32, i32* %i, align 4, !tbaa !18
  %cmp6 = icmp sle i32 %14, 256
  br i1 %cmp6, label %for.body.7, label %for.end.17

for.body.7:                                       ; preds = %for.cond.5
  %15 = load i32, i32* %i, align 4, !tbaa !18
  %idxprom8 = sext i32 %15 to i64
  %16 = load i64*, i64** %freq.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i64, i64* %16, i64 %idxprom8
  %17 = load i64, i64* %arrayidx9, align 8, !tbaa !55
  %tobool = icmp ne i64 %17, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.7
  %18 = load i32, i32* %i, align 4, !tbaa !18
  %idxprom10 = sext i32 %18 to i64
  %19 = load i64*, i64** %freq.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i64, i64* %19, i64 %idxprom10
  %20 = load i64, i64* %arrayidx11, align 8, !tbaa !55
  %21 = load i64, i64* %v, align 8, !tbaa !55
  %cmp12 = icmp sle i64 %20, %21
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %22 = load i32, i32* %i, align 4, !tbaa !18
  %idxprom13 = sext i32 %22 to i64
  %23 = load i64*, i64** %freq.addr, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i64, i64* %23, i64 %idxprom13
  %24 = load i64, i64* %arrayidx14, align 8, !tbaa !55
  store i64 %24, i64* %v, align 8, !tbaa !55
  %25 = load i32, i32* %i, align 4, !tbaa !18
  store i32 %25, i32* %c1, align 4, !tbaa !18
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body.7
  br label %for.inc.15

for.inc.15:                                       ; preds = %if.end
  %26 = load i32, i32* %i, align 4, !tbaa !18
  %inc16 = add nsw i32 %26, 1
  store i32 %inc16, i32* %i, align 4, !tbaa !18
  br label %for.cond.5

for.end.17:                                       ; preds = %for.cond.5
  store i32 -1, i32* %c2, align 4, !tbaa !18
  store i64 1000000000, i64* %v, align 8, !tbaa !55
  store i32 0, i32* %i, align 4, !tbaa !18
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.34, %for.end.17
  %27 = load i32, i32* %i, align 4, !tbaa !18
  %cmp19 = icmp sle i32 %27, 256
  br i1 %cmp19, label %for.body.20, label %for.end.36

for.body.20:                                      ; preds = %for.cond.18
  %28 = load i32, i32* %i, align 4, !tbaa !18
  %idxprom21 = sext i32 %28 to i64
  %29 = load i64*, i64** %freq.addr, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i64, i64* %29, i64 %idxprom21
  %30 = load i64, i64* %arrayidx22, align 8, !tbaa !55
  %tobool23 = icmp ne i64 %30, 0
  br i1 %tobool23, label %land.lhs.true.24, label %if.end.33

land.lhs.true.24:                                 ; preds = %for.body.20
  %31 = load i32, i32* %i, align 4, !tbaa !18
  %idxprom25 = sext i32 %31 to i64
  %32 = load i64*, i64** %freq.addr, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i64, i64* %32, i64 %idxprom25
  %33 = load i64, i64* %arrayidx26, align 8, !tbaa !55
  %34 = load i64, i64* %v, align 8, !tbaa !55
  %cmp27 = icmp sle i64 %33, %34
  br i1 %cmp27, label %land.lhs.true.28, label %if.end.33

land.lhs.true.28:                                 ; preds = %land.lhs.true.24
  %35 = load i32, i32* %i, align 4, !tbaa !18
  %36 = load i32, i32* %c1, align 4, !tbaa !18
  %cmp29 = icmp ne i32 %35, %36
  br i1 %cmp29, label %if.then.30, label %if.end.33

if.then.30:                                       ; preds = %land.lhs.true.28
  %37 = load i32, i32* %i, align 4, !tbaa !18
  %idxprom31 = sext i32 %37 to i64
  %38 = load i64*, i64** %freq.addr, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i64, i64* %38, i64 %idxprom31
  %39 = load i64, i64* %arrayidx32, align 8, !tbaa !55
  store i64 %39, i64* %v, align 8, !tbaa !55
  %40 = load i32, i32* %i, align 4, !tbaa !18
  store i32 %40, i32* %c2, align 4, !tbaa !18
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.30, %land.lhs.true.28, %land.lhs.true.24, %for.body.20
  br label %for.inc.34

for.inc.34:                                       ; preds = %if.end.33
  %41 = load i32, i32* %i, align 4, !tbaa !18
  %inc35 = add nsw i32 %41, 1
  store i32 %inc35, i32* %i, align 4, !tbaa !18
  br label %for.cond.18

for.end.36:                                       ; preds = %for.cond.18
  %42 = load i32, i32* %c2, align 4, !tbaa !18
  %cmp37 = icmp slt i32 %42, 0
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %for.end.36
  br label %for.end.73

if.end.39:                                        ; preds = %for.end.36
  %43 = load i32, i32* %c2, align 4, !tbaa !18
  %idxprom40 = sext i32 %43 to i64
  %44 = load i64*, i64** %freq.addr, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds i64, i64* %44, i64 %idxprom40
  %45 = load i64, i64* %arrayidx41, align 8, !tbaa !55
  %46 = load i32, i32* %c1, align 4, !tbaa !18
  %idxprom42 = sext i32 %46 to i64
  %47 = load i64*, i64** %freq.addr, align 8, !tbaa !1
  %arrayidx43 = getelementptr inbounds i64, i64* %47, i64 %idxprom42
  %48 = load i64, i64* %arrayidx43, align 8, !tbaa !55
  %add = add nsw i64 %48, %45
  store i64 %add, i64* %arrayidx43, align 8, !tbaa !55
  %49 = load i32, i32* %c2, align 4, !tbaa !18
  %idxprom44 = sext i32 %49 to i64
  %50 = load i64*, i64** %freq.addr, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds i64, i64* %50, i64 %idxprom44
  store i64 0, i64* %arrayidx45, align 8, !tbaa !55
  %51 = load i32, i32* %c1, align 4, !tbaa !18
  %idxprom46 = sext i32 %51 to i64
  %arrayidx47 = getelementptr inbounds [257 x i32], [257 x i32]* %codesize, i32 0, i64 %idxprom46
  %52 = load i32, i32* %arrayidx47, align 4, !tbaa !18
  %inc48 = add nsw i32 %52, 1
  store i32 %inc48, i32* %arrayidx47, align 4, !tbaa !18
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.39
  %53 = load i32, i32* %c1, align 4, !tbaa !18
  %idxprom49 = sext i32 %53 to i64
  %arrayidx50 = getelementptr inbounds [257 x i32], [257 x i32]* %others, i32 0, i64 %idxprom49
  %54 = load i32, i32* %arrayidx50, align 4, !tbaa !18
  %cmp51 = icmp sge i32 %54, 0
  br i1 %cmp51, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %55 = load i32, i32* %c1, align 4, !tbaa !18
  %idxprom52 = sext i32 %55 to i64
  %arrayidx53 = getelementptr inbounds [257 x i32], [257 x i32]* %others, i32 0, i64 %idxprom52
  %56 = load i32, i32* %arrayidx53, align 4, !tbaa !18
  store i32 %56, i32* %c1, align 4, !tbaa !18
  %57 = load i32, i32* %c1, align 4, !tbaa !18
  %idxprom54 = sext i32 %57 to i64
  %arrayidx55 = getelementptr inbounds [257 x i32], [257 x i32]* %codesize, i32 0, i64 %idxprom54
  %58 = load i32, i32* %arrayidx55, align 4, !tbaa !18
  %inc56 = add nsw i32 %58, 1
  store i32 %inc56, i32* %arrayidx55, align 4, !tbaa !18
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %59 = load i32, i32* %c2, align 4, !tbaa !18
  %60 = load i32, i32* %c1, align 4, !tbaa !18
  %idxprom57 = sext i32 %60 to i64
  %arrayidx58 = getelementptr inbounds [257 x i32], [257 x i32]* %others, i32 0, i64 %idxprom57
  store i32 %59, i32* %arrayidx58, align 4, !tbaa !18
  %61 = load i32, i32* %c2, align 4, !tbaa !18
  %idxprom59 = sext i32 %61 to i64
  %arrayidx60 = getelementptr inbounds [257 x i32], [257 x i32]* %codesize, i32 0, i64 %idxprom59
  %62 = load i32, i32* %arrayidx60, align 4, !tbaa !18
  %inc61 = add nsw i32 %62, 1
  store i32 %inc61, i32* %arrayidx60, align 4, !tbaa !18
  br label %while.cond.62

while.cond.62:                                    ; preds = %while.body.66, %while.end
  %63 = load i32, i32* %c2, align 4, !tbaa !18
  %idxprom63 = sext i32 %63 to i64
  %arrayidx64 = getelementptr inbounds [257 x i32], [257 x i32]* %others, i32 0, i64 %idxprom63
  %64 = load i32, i32* %arrayidx64, align 4, !tbaa !18
  %cmp65 = icmp sge i32 %64, 0
  br i1 %cmp65, label %while.body.66, label %while.end.72

while.body.66:                                    ; preds = %while.cond.62
  %65 = load i32, i32* %c2, align 4, !tbaa !18
  %idxprom67 = sext i32 %65 to i64
  %arrayidx68 = getelementptr inbounds [257 x i32], [257 x i32]* %others, i32 0, i64 %idxprom67
  %66 = load i32, i32* %arrayidx68, align 4, !tbaa !18
  store i32 %66, i32* %c2, align 4, !tbaa !18
  %67 = load i32, i32* %c2, align 4, !tbaa !18
  %idxprom69 = sext i32 %67 to i64
  %arrayidx70 = getelementptr inbounds [257 x i32], [257 x i32]* %codesize, i32 0, i64 %idxprom69
  %68 = load i32, i32* %arrayidx70, align 4, !tbaa !18
  %inc71 = add nsw i32 %68, 1
  store i32 %inc71, i32* %arrayidx70, align 4, !tbaa !18
  br label %while.cond.62

while.end.72:                                     ; preds = %while.cond.62
  br label %for.cond.4

for.end.73:                                       ; preds = %if.then.38
  store i32 0, i32* %i, align 4, !tbaa !18
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc.93, %for.end.73
  %69 = load i32, i32* %i, align 4, !tbaa !18
  %cmp75 = icmp sle i32 %69, 256
  br i1 %cmp75, label %for.body.76, label %for.end.95

for.body.76:                                      ; preds = %for.cond.74
  %70 = load i32, i32* %i, align 4, !tbaa !18
  %idxprom77 = sext i32 %70 to i64
  %arrayidx78 = getelementptr inbounds [257 x i32], [257 x i32]* %codesize, i32 0, i64 %idxprom77
  %71 = load i32, i32* %arrayidx78, align 4, !tbaa !18
  %tobool79 = icmp ne i32 %71, 0
  br i1 %tobool79, label %if.then.80, label %if.end.92

if.then.80:                                       ; preds = %for.body.76
  %72 = load i32, i32* %i, align 4, !tbaa !18
  %idxprom81 = sext i32 %72 to i64
  %arrayidx82 = getelementptr inbounds [257 x i32], [257 x i32]* %codesize, i32 0, i64 %idxprom81
  %73 = load i32, i32* %arrayidx82, align 4, !tbaa !18
  %cmp83 = icmp sgt i32 %73, 32
  br i1 %cmp83, label %if.then.84, label %if.end.86

if.then.84:                                       ; preds = %if.then.80
  %74 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %74, i32 0, i32 0
  %75 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !35
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %75, i32 0, i32 5
  store i32 40, i32* %msg_code, align 4, !tbaa !36
  %76 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err85 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %76, i32 0, i32 0
  %77 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err85, align 8, !tbaa !35
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %77, i32 0, i32 0
  %78 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !38
  %79 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %80 = bitcast %struct.jpeg_compress_struct* %79 to %struct.jpeg_common_struct*
  call void %78(%struct.jpeg_common_struct* %80) #5
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.84, %if.then.80
  %81 = load i32, i32* %i, align 4, !tbaa !18
  %idxprom87 = sext i32 %81 to i64
  %arrayidx88 = getelementptr inbounds [257 x i32], [257 x i32]* %codesize, i32 0, i64 %idxprom87
  %82 = load i32, i32* %arrayidx88, align 4, !tbaa !18
  %idxprom89 = sext i32 %82 to i64
  %arrayidx90 = getelementptr inbounds [33 x i8], [33 x i8]* %bits, i32 0, i64 %idxprom89
  %83 = load i8, i8* %arrayidx90, align 1, !tbaa !21
  %inc91 = add i8 %83, 1
  store i8 %inc91, i8* %arrayidx90, align 1, !tbaa !21
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.86, %for.body.76
  br label %for.inc.93

for.inc.93:                                       ; preds = %if.end.92
  %84 = load i32, i32* %i, align 4, !tbaa !18
  %inc94 = add nsw i32 %84, 1
  store i32 %inc94, i32* %i, align 4, !tbaa !18
  br label %for.cond.74

for.end.95:                                       ; preds = %for.cond.74
  store i32 32, i32* %i, align 4, !tbaa !18
  br label %for.cond.96

for.cond.96:                                      ; preds = %for.inc.132, %for.end.95
  %85 = load i32, i32* %i, align 4, !tbaa !18
  %cmp97 = icmp sgt i32 %85, 16
  br i1 %cmp97, label %for.body.98, label %for.end.134

for.body.98:                                      ; preds = %for.cond.96
  br label %while.cond.99

while.cond.99:                                    ; preds = %while.end.112, %for.body.98
  %86 = load i32, i32* %i, align 4, !tbaa !18
  %idxprom100 = sext i32 %86 to i64
  %arrayidx101 = getelementptr inbounds [33 x i8], [33 x i8]* %bits, i32 0, i64 %idxprom100
  %87 = load i8, i8* %arrayidx101, align 1, !tbaa !21
  %conv = zext i8 %87 to i32
  %cmp102 = icmp sgt i32 %conv, 0
  br i1 %cmp102, label %while.body.104, label %while.end.131

while.body.104:                                   ; preds = %while.cond.99
  %88 = load i32, i32* %i, align 4, !tbaa !18
  %sub = sub nsw i32 %88, 2
  store i32 %sub, i32* %j, align 4, !tbaa !18
  br label %while.cond.105

while.cond.105:                                   ; preds = %while.body.111, %while.body.104
  %89 = load i32, i32* %j, align 4, !tbaa !18
  %idxprom106 = sext i32 %89 to i64
  %arrayidx107 = getelementptr inbounds [33 x i8], [33 x i8]* %bits, i32 0, i64 %idxprom106
  %90 = load i8, i8* %arrayidx107, align 1, !tbaa !21
  %conv108 = zext i8 %90 to i32
  %cmp109 = icmp eq i32 %conv108, 0
  br i1 %cmp109, label %while.body.111, label %while.end.112

while.body.111:                                   ; preds = %while.cond.105
  %91 = load i32, i32* %j, align 4, !tbaa !18
  %dec = add nsw i32 %91, -1
  store i32 %dec, i32* %j, align 4, !tbaa !18
  br label %while.cond.105

while.end.112:                                    ; preds = %while.cond.105
  %92 = load i32, i32* %i, align 4, !tbaa !18
  %idxprom113 = sext i32 %92 to i64
  %arrayidx114 = getelementptr inbounds [33 x i8], [33 x i8]* %bits, i32 0, i64 %idxprom113
  %93 = load i8, i8* %arrayidx114, align 1, !tbaa !21
  %conv115 = zext i8 %93 to i32
  %sub116 = sub nsw i32 %conv115, 2
  %conv117 = trunc i32 %sub116 to i8
  store i8 %conv117, i8* %arrayidx114, align 1, !tbaa !21
  %94 = load i32, i32* %i, align 4, !tbaa !18
  %sub118 = sub nsw i32 %94, 1
  %idxprom119 = sext i32 %sub118 to i64
  %arrayidx120 = getelementptr inbounds [33 x i8], [33 x i8]* %bits, i32 0, i64 %idxprom119
  %95 = load i8, i8* %arrayidx120, align 1, !tbaa !21
  %inc121 = add i8 %95, 1
  store i8 %inc121, i8* %arrayidx120, align 1, !tbaa !21
  %96 = load i32, i32* %j, align 4, !tbaa !18
  %add122 = add nsw i32 %96, 1
  %idxprom123 = sext i32 %add122 to i64
  %arrayidx124 = getelementptr inbounds [33 x i8], [33 x i8]* %bits, i32 0, i64 %idxprom123
  %97 = load i8, i8* %arrayidx124, align 1, !tbaa !21
  %conv125 = zext i8 %97 to i32
  %add126 = add nsw i32 %conv125, 2
  %conv127 = trunc i32 %add126 to i8
  store i8 %conv127, i8* %arrayidx124, align 1, !tbaa !21
  %98 = load i32, i32* %j, align 4, !tbaa !18
  %idxprom128 = sext i32 %98 to i64
  %arrayidx129 = getelementptr inbounds [33 x i8], [33 x i8]* %bits, i32 0, i64 %idxprom128
  %99 = load i8, i8* %arrayidx129, align 1, !tbaa !21
  %dec130 = add i8 %99, -1
  store i8 %dec130, i8* %arrayidx129, align 1, !tbaa !21
  br label %while.cond.99

while.end.131:                                    ; preds = %while.cond.99
  br label %for.inc.132

for.inc.132:                                      ; preds = %while.end.131
  %100 = load i32, i32* %i, align 4, !tbaa !18
  %dec133 = add nsw i32 %100, -1
  store i32 %dec133, i32* %i, align 4, !tbaa !18
  br label %for.cond.96

for.end.134:                                      ; preds = %for.cond.96
  br label %while.cond.135

while.cond.135:                                   ; preds = %while.body.141, %for.end.134
  %101 = load i32, i32* %i, align 4, !tbaa !18
  %idxprom136 = sext i32 %101 to i64
  %arrayidx137 = getelementptr inbounds [33 x i8], [33 x i8]* %bits, i32 0, i64 %idxprom136
  %102 = load i8, i8* %arrayidx137, align 1, !tbaa !21
  %conv138 = zext i8 %102 to i32
  %cmp139 = icmp eq i32 %conv138, 0
  br i1 %cmp139, label %while.body.141, label %while.end.143

while.body.141:                                   ; preds = %while.cond.135
  %103 = load i32, i32* %i, align 4, !tbaa !18
  %dec142 = add nsw i32 %103, -1
  store i32 %dec142, i32* %i, align 4, !tbaa !18
  br label %while.cond.135

while.end.143:                                    ; preds = %while.cond.135
  %104 = load i32, i32* %i, align 4, !tbaa !18
  %idxprom144 = sext i32 %104 to i64
  %arrayidx145 = getelementptr inbounds [33 x i8], [33 x i8]* %bits, i32 0, i64 %idxprom144
  %105 = load i8, i8* %arrayidx145, align 1, !tbaa !21
  %dec146 = add i8 %105, -1
  store i8 %dec146, i8* %arrayidx145, align 1, !tbaa !21
  %106 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl.addr, align 8, !tbaa !1
  %bits147 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %106, i32 0, i32 0
  %arraydecay148 = getelementptr inbounds [17 x i8], [17 x i8]* %bits147, i32 0, i32 0
  %arraydecay149 = getelementptr inbounds [33 x i8], [33 x i8]* %bits, i32 0, i32 0
  %call150 = call i8* @memcpy(i8* %arraydecay148, i8* %arraydecay149, i64 17) #6
  store i32 0, i32* %p, align 4, !tbaa !18
  store i32 1, i32* %i, align 4, !tbaa !18
  br label %for.cond.151

for.cond.151:                                     ; preds = %for.inc.172, %while.end.143
  %107 = load i32, i32* %i, align 4, !tbaa !18
  %cmp152 = icmp sle i32 %107, 32
  br i1 %cmp152, label %for.body.154, label %for.end.174

for.body.154:                                     ; preds = %for.cond.151
  store i32 0, i32* %j, align 4, !tbaa !18
  br label %for.cond.155

for.cond.155:                                     ; preds = %for.inc.169, %for.body.154
  %108 = load i32, i32* %j, align 4, !tbaa !18
  %cmp156 = icmp sle i32 %108, 255
  br i1 %cmp156, label %for.body.158, label %for.end.171

for.body.158:                                     ; preds = %for.cond.155
  %109 = load i32, i32* %j, align 4, !tbaa !18
  %idxprom159 = sext i32 %109 to i64
  %arrayidx160 = getelementptr inbounds [257 x i32], [257 x i32]* %codesize, i32 0, i64 %idxprom159
  %110 = load i32, i32* %arrayidx160, align 4, !tbaa !18
  %111 = load i32, i32* %i, align 4, !tbaa !18
  %cmp161 = icmp eq i32 %110, %111
  br i1 %cmp161, label %if.then.163, label %if.end.168

if.then.163:                                      ; preds = %for.body.158
  %112 = load i32, i32* %j, align 4, !tbaa !18
  %conv164 = trunc i32 %112 to i8
  %113 = load i32, i32* %p, align 4, !tbaa !18
  %idxprom165 = sext i32 %113 to i64
  %114 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl.addr, align 8, !tbaa !1
  %huffval = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %114, i32 0, i32 1
  %arrayidx166 = getelementptr inbounds [256 x i8], [256 x i8]* %huffval, i32 0, i64 %idxprom165
  store i8 %conv164, i8* %arrayidx166, align 1, !tbaa !21
  %115 = load i32, i32* %p, align 4, !tbaa !18
  %inc167 = add nsw i32 %115, 1
  store i32 %inc167, i32* %p, align 4, !tbaa !18
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.163, %for.body.158
  br label %for.inc.169

for.inc.169:                                      ; preds = %if.end.168
  %116 = load i32, i32* %j, align 4, !tbaa !18
  %inc170 = add nsw i32 %116, 1
  store i32 %inc170, i32* %j, align 4, !tbaa !18
  br label %for.cond.155

for.end.171:                                      ; preds = %for.cond.155
  br label %for.inc.172

for.inc.172:                                      ; preds = %for.end.171
  %117 = load i32, i32* %i, align 4, !tbaa !18
  %inc173 = add nsw i32 %117, 1
  store i32 %inc173, i32* %i, align 4, !tbaa !18
  br label %for.cond.151

for.end.174:                                      ; preds = %for.cond.151
  %118 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl.addr, align 8, !tbaa !1
  %sent_table = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %118, i32 0, i32 2
  store i32 0, i32* %sent_table, align 4, !tbaa !61
  %119 = bitcast i64* %v to i8*
  call void @llvm.lifetime.end(i64 8, i8* %119) #1
  %120 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #1
  %121 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #1
  %122 = bitcast i32* %p to i8*
  call void @llvm.lifetime.end(i64 4, i8* %122) #1
  %123 = bitcast i32* %c2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #1
  %124 = bitcast i32* %c1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #1
  %125 = bitcast [257 x i32]* %others to i8*
  call void @llvm.lifetime.end(i64 1028, i8* %125) #1
  %126 = bitcast [257 x i32]* %codesize to i8*
  call void @llvm.lifetime.end(i64 1028, i8* %126) #1
  %127 = bitcast [33 x i8]* %bits to i8*
  call void @llvm.lifetime.end(i64 33, i8* %127) #1
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @emit_ac_symbol(%struct.huff_entropy_encoder* %entropy, i32 %tbl_no, i32 %symbol) #4 {
entry:
  %entropy.addr = alloca %struct.huff_entropy_encoder*, align 8
  %tbl_no.addr = alloca i32, align 4
  %symbol.addr = alloca i32, align 4
  %tbl = alloca %struct.c_derived_tbl*, align 8
  store %struct.huff_entropy_encoder* %entropy, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  store i32 %tbl_no, i32* %tbl_no.addr, align 4, !tbaa !18
  store i32 %symbol, i32* %symbol.addr, align 4, !tbaa !18
  %0 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %gather_statistics = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %0, i32 0, i32 8
  %1 = load i32, i32* %gather_statistics, align 4, !tbaa !24
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %symbol.addr, align 4, !tbaa !18
  %idxprom = sext i32 %2 to i64
  %3 = load i32, i32* %tbl_no.addr, align 4, !tbaa !18
  %idxprom1 = sext i32 %3 to i64
  %4 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %ac_count_ptrs = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %4, i32 0, i32 7
  %arrayidx = getelementptr inbounds [4 x i64*], [4 x i64*]* %ac_count_ptrs, i32 0, i64 %idxprom1
  %5 = load i64*, i64** %arrayidx, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i64, i64* %5, i64 %idxprom
  %6 = load i64, i64* %arrayidx2, align 8, !tbaa !55
  %inc = add nsw i64 %6, 1
  store i64 %inc, i64* %arrayidx2, align 8, !tbaa !55
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = bitcast %struct.c_derived_tbl** %tbl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load i32, i32* %tbl_no.addr, align 4, !tbaa !18
  %idxprom3 = sext i32 %8 to i64
  %9 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %ac_derived_tbls = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %9, i32 0, i32 5
  %arrayidx4 = getelementptr inbounds [4 x %struct.c_derived_tbl*], [4 x %struct.c_derived_tbl*]* %ac_derived_tbls, i32 0, i64 %idxprom3
  %10 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %arrayidx4, align 8, !tbaa !1
  store %struct.c_derived_tbl* %10, %struct.c_derived_tbl** %tbl, align 8, !tbaa !1
  %11 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %12 = load i32, i32* %symbol.addr, align 4, !tbaa !18
  %idxprom5 = sext i32 %12 to i64
  %13 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %tbl, align 8, !tbaa !1
  %ehufco = getelementptr inbounds %struct.c_derived_tbl, %struct.c_derived_tbl* %13, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [256 x i32], [256 x i32]* %ehufco, i32 0, i64 %idxprom5
  %14 = load i32, i32* %arrayidx6, align 4, !tbaa !18
  %15 = load i32, i32* %symbol.addr, align 4, !tbaa !18
  %idxprom7 = sext i32 %15 to i64
  %16 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %tbl, align 8, !tbaa !1
  %ehufsi = getelementptr inbounds %struct.c_derived_tbl, %struct.c_derived_tbl* %16, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [256 x i8], [256 x i8]* %ehufsi, i32 0, i64 %idxprom7
  %17 = load i8, i8* %arrayidx8, align 1, !tbaa !21
  %conv = sext i8 %17 to i32
  call void @emit_bits_e(%struct.huff_entropy_encoder* %11, i32 %14, i32 %conv) #5
  %18 = bitcast %struct.c_derived_tbl** %tbl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @emit_bits_e(%struct.huff_entropy_encoder* %entropy, i32 %code, i32 %size) #4 {
entry:
  %entropy.addr = alloca %struct.huff_entropy_encoder*, align 8
  %code.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %put_buffer = alloca i64, align 8
  %put_bits = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %c = alloca i32, align 4
  store %struct.huff_entropy_encoder* %entropy, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  store i32 %code, i32* %code.addr, align 4, !tbaa !18
  store i32 %size, i32* %size.addr, align 4, !tbaa !18
  %0 = bitcast i64* %put_buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %put_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i32, i32* %size.addr, align 4, !tbaa !18
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %cinfo = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %3, i32 0, i32 11
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo, align 8, !tbaa !23
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 0
  %5 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !35
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %5, i32 0, i32 5
  store i32 41, i32* %msg_code, align 4, !tbaa !36
  %6 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %cinfo1 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %6, i32 0, i32 11
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo1, align 8, !tbaa !23
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 0
  %8 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8, !tbaa !35
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %8, i32 0, i32 0
  %9 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !38
  %10 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %cinfo3 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %10, i32 0, i32 11
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo3, align 8, !tbaa !23
  %12 = bitcast %struct.jpeg_compress_struct* %11 to %struct.jpeg_common_struct*
  call void %9(%struct.jpeg_common_struct* %12) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %gather_statistics = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %13, i32 0, i32 8
  %14 = load i32, i32* %gather_statistics, align 4, !tbaa !24
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %15 = load i32, i32* %code.addr, align 4, !tbaa !18
  %conv = zext i32 %15 to i64
  %16 = load i32, i32* %size.addr, align 4, !tbaa !18
  %sh_prom = zext i32 %16 to i64
  %shl = shl i64 1, %sh_prom
  %sub = sub nsw i64 %shl, 1
  %and = and i64 %conv, %sub
  store i64 %and, i64* %put_buffer, align 8, !tbaa !55
  %17 = load i32, i32* %size.addr, align 4, !tbaa !18
  %18 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %saved = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %18, i32 0, i32 1
  %put_bits6 = getelementptr inbounds %struct.savable_state, %struct.savable_state* %saved, i32 0, i32 1
  %19 = load i32, i32* %put_bits6, align 4, !tbaa !41
  %add = add nsw i32 %17, %19
  store i32 %add, i32* %put_bits, align 4, !tbaa !18
  %20 = load i32, i32* %put_bits, align 4, !tbaa !18
  %sub7 = sub nsw i32 24, %20
  %21 = load i64, i64* %put_buffer, align 8, !tbaa !55
  %sh_prom8 = zext i32 %sub7 to i64
  %shl9 = shl i64 %21, %sh_prom8
  store i64 %shl9, i64* %put_buffer, align 8, !tbaa !55
  %22 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %saved10 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %22, i32 0, i32 1
  %put_buffer11 = getelementptr inbounds %struct.savable_state, %struct.savable_state* %saved10, i32 0, i32 0
  %23 = load i64, i64* %put_buffer11, align 8, !tbaa !40
  %24 = load i64, i64* %put_buffer, align 8, !tbaa !55
  %or = or i64 %24, %23
  store i64 %or, i64* %put_buffer, align 8, !tbaa !55
  br label %while.cond

while.cond:                                       ; preds = %if.end.32, %if.end.5
  %25 = load i32, i32* %put_bits, align 4, !tbaa !18
  %cmp12 = icmp sge i32 %25, 8
  br i1 %cmp12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %26 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = load i64, i64* %put_buffer, align 8, !tbaa !55
  %shr = ashr i64 %27, 16
  %and14 = and i64 %shr, 255
  %conv15 = trunc i64 %and14 to i32
  store i32 %conv15, i32* %c, align 4, !tbaa !18
  %28 = load i32, i32* %c, align 4, !tbaa !18
  %conv16 = trunc i32 %28 to i8
  %29 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %next_output_byte = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %29, i32 0, i32 9
  %30 = load i8*, i8** %next_output_byte, align 8, !tbaa !48
  %incdec.ptr = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr, i8** %next_output_byte, align 8, !tbaa !48
  store i8 %conv16, i8* %30, align 1, !tbaa !21
  %31 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %free_in_buffer = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %31, i32 0, i32 10
  %32 = load i64, i64* %free_in_buffer, align 8, !tbaa !50
  %dec = add i64 %32, -1
  store i64 %dec, i64* %free_in_buffer, align 8, !tbaa !50
  %cmp17 = icmp eq i64 %dec, 0
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %while.body
  %33 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  call void @dump_buffer_e(%struct.huff_entropy_encoder* %33) #5
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %while.body
  %34 = load i32, i32* %c, align 4, !tbaa !18
  %cmp21 = icmp eq i32 %34, 255
  br i1 %cmp21, label %if.then.23, label %if.end.32

if.then.23:                                       ; preds = %if.end.20
  %35 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %next_output_byte24 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %35, i32 0, i32 9
  %36 = load i8*, i8** %next_output_byte24, align 8, !tbaa !48
  %incdec.ptr25 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr25, i8** %next_output_byte24, align 8, !tbaa !48
  store i8 0, i8* %36, align 1, !tbaa !21
  %37 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %free_in_buffer26 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %37, i32 0, i32 10
  %38 = load i64, i64* %free_in_buffer26, align 8, !tbaa !50
  %dec27 = add i64 %38, -1
  store i64 %dec27, i64* %free_in_buffer26, align 8, !tbaa !50
  %cmp28 = icmp eq i64 %dec27, 0
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.then.23
  %39 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  call void @dump_buffer_e(%struct.huff_entropy_encoder* %39) #5
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.then.23
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.end.20
  %40 = load i64, i64* %put_buffer, align 8, !tbaa !55
  %shl33 = shl i64 %40, 8
  store i64 %shl33, i64* %put_buffer, align 8, !tbaa !55
  %41 = load i32, i32* %put_bits, align 4, !tbaa !18
  %sub34 = sub nsw i32 %41, 8
  store i32 %sub34, i32* %put_bits, align 4, !tbaa !18
  %42 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %43 = load i64, i64* %put_buffer, align 8, !tbaa !55
  %44 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %saved35 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %44, i32 0, i32 1
  %put_buffer36 = getelementptr inbounds %struct.savable_state, %struct.savable_state* %saved35, i32 0, i32 0
  store i64 %43, i64* %put_buffer36, align 8, !tbaa !40
  %45 = load i32, i32* %put_bits, align 4, !tbaa !18
  %46 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %saved37 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %46, i32 0, i32 1
  %put_bits38 = getelementptr inbounds %struct.savable_state, %struct.savable_state* %saved37, i32 0, i32 1
  store i32 %45, i32* %put_bits38, align 4, !tbaa !41
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then.4
  %47 = bitcast i32* %put_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast i64* %put_buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
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
define internal void @emit_buffered_bits(%struct.huff_entropy_encoder* %entropy, i8* %bufstart, i32 %nbits) #0 {
entry:
  %entropy.addr = alloca %struct.huff_entropy_encoder*, align 8
  %bufstart.addr = alloca i8*, align 8
  %nbits.addr = alloca i32, align 4
  store %struct.huff_entropy_encoder* %entropy, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  store i8* %bufstart, i8** %bufstart.addr, align 8, !tbaa !1
  store i32 %nbits, i32* %nbits.addr, align 4, !tbaa !18
  %0 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %gather_statistics = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %0, i32 0, i32 8
  %1 = load i32, i32* %gather_statistics, align 4, !tbaa !24
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.end

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %2 = load i32, i32* %nbits.addr, align 4, !tbaa !18
  %cmp = icmp ugt i32 %2, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %bufstart.addr, align 8, !tbaa !1
  %5 = load i8, i8* %4, align 1, !tbaa !21
  %conv = sext i8 %5 to i32
  call void @emit_bits_e(%struct.huff_entropy_encoder* %3, i32 %conv, i32 1) #5
  %6 = load i8*, i8** %bufstart.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %bufstart.addr, align 8, !tbaa !1
  %7 = load i32, i32* %nbits.addr, align 4, !tbaa !18
  %dec = add i32 %7, -1
  store i32 %dec, i32* %nbits.addr, align 4, !tbaa !18
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dump_buffer_e(%struct.huff_entropy_encoder* %entropy) #0 {
entry:
  %entropy.addr = alloca %struct.huff_entropy_encoder*, align 8
  %dest = alloca %struct.jpeg_destination_mgr*, align 8
  store %struct.huff_entropy_encoder* %entropy, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %0 = bitcast %struct.jpeg_destination_mgr** %dest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %cinfo = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %1, i32 0, i32 11
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo, align 8, !tbaa !23
  %dest1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %2, i32 0, i32 6
  %3 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest1, align 8, !tbaa !45
  store %struct.jpeg_destination_mgr* %3, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !1
  %4 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !1
  %empty_output_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %4, i32 0, i32 3
  %5 = load i32 (%struct.jpeg_compress_struct*)*, i32 (%struct.jpeg_compress_struct*)** %empty_output_buffer, align 8, !tbaa !63
  %6 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %cinfo2 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %6, i32 0, i32 11
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo2, align 8, !tbaa !23
  %call = call i32 %5(%struct.jpeg_compress_struct* %7) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %8 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %cinfo3 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %8, i32 0, i32 11
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo3, align 8, !tbaa !23
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 0
  %10 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !35
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %10, i32 0, i32 5
  store i32 25, i32* %msg_code, align 4, !tbaa !36
  %11 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %cinfo4 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %11, i32 0, i32 11
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo4, align 8, !tbaa !23
  %err5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %12, i32 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err5, align 8, !tbaa !35
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i32 0, i32 0
  %14 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !38
  %15 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %cinfo6 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %15, i32 0, i32 11
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo6, align 8, !tbaa !23
  %17 = bitcast %struct.jpeg_compress_struct* %16 to %struct.jpeg_common_struct*
  call void %14(%struct.jpeg_common_struct* %17) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !1
  %next_output_byte = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %18, i32 0, i32 0
  %19 = load i8*, i8** %next_output_byte, align 8, !tbaa !46
  %20 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %next_output_byte7 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %20, i32 0, i32 9
  store i8* %19, i8** %next_output_byte7, align 8, !tbaa !48
  %21 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !1
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %21, i32 0, i32 1
  %22 = load i64, i64* %free_in_buffer, align 8, !tbaa !49
  %23 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %free_in_buffer8 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %23, i32 0, i32 10
  store i64 %22, i64* %free_in_buffer8, align 8, !tbaa !50
  %24 = bitcast %struct.jpeg_destination_mgr** %dest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  ret void
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal void @flush_bits_e(%struct.huff_entropy_encoder* %entropy) #0 {
entry:
  %entropy.addr = alloca %struct.huff_entropy_encoder*, align 8
  store %struct.huff_entropy_encoder* %entropy, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %0 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  call void @emit_bits_e(%struct.huff_entropy_encoder* %0, i32 127, i32 7) #5
  %1 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %saved = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %1, i32 0, i32 1
  %put_buffer = getelementptr inbounds %struct.savable_state, %struct.savable_state* %saved, i32 0, i32 0
  store i64 0, i64* %put_buffer, align 8, !tbaa !40
  %2 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %saved1 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %2, i32 0, i32 1
  %put_bits = getelementptr inbounds %struct.savable_state, %struct.savable_state* %saved1, i32 0, i32 1
  store i32 0, i32* %put_bits, align 4, !tbaa !41
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal i32 @flush_bits_s(%struct.working_state* %state) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.working_state*, align 8
  store %struct.working_state* %state, %struct.working_state** %state.addr, align 8, !tbaa !1
  %0 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !1
  %call = call i32 @emit_bits_s(%struct.working_state* %0, i32 127, i32 7) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !1
  %cur = getelementptr inbounds %struct.working_state, %struct.working_state* %1, i32 0, i32 2
  %put_buffer = getelementptr inbounds %struct.savable_state, %struct.savable_state* %cur, i32 0, i32 0
  store i64 0, i64* %put_buffer, align 8, !tbaa !64
  %2 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !1
  %cur1 = getelementptr inbounds %struct.working_state, %struct.working_state* %2, i32 0, i32 2
  %put_bits = getelementptr inbounds %struct.savable_state, %struct.savable_state* %cur1, i32 0, i32 1
  store i32 0, i32* %put_bits, align 4, !tbaa !65
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @emit_bits_s(%struct.working_state* %state, i32 %code, i32 %size) #4 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.working_state*, align 8
  %code.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %put_buffer = alloca i64, align 8
  %put_bits = alloca i32, align 4
  %c = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.working_state* %state, %struct.working_state** %state.addr, align 8, !tbaa !1
  store i32 %code, i32* %code.addr, align 4, !tbaa !18
  store i32 %size, i32* %size.addr, align 4, !tbaa !18
  %0 = bitcast i64* %put_buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %put_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i32, i32* %size.addr, align 4, !tbaa !18
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !1
  %cinfo = getelementptr inbounds %struct.working_state, %struct.working_state* %3, i32 0, i32 3
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo, align 8, !tbaa !56
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 0
  %5 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !35
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %5, i32 0, i32 5
  store i32 41, i32* %msg_code, align 4, !tbaa !36
  %6 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !1
  %cinfo1 = getelementptr inbounds %struct.working_state, %struct.working_state* %6, i32 0, i32 3
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo1, align 8, !tbaa !56
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 0
  %8 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8, !tbaa !35
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %8, i32 0, i32 0
  %9 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !38
  %10 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !1
  %cinfo3 = getelementptr inbounds %struct.working_state, %struct.working_state* %10, i32 0, i32 3
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo3, align 8, !tbaa !56
  %12 = bitcast %struct.jpeg_compress_struct* %11 to %struct.jpeg_common_struct*
  call void %9(%struct.jpeg_common_struct* %12) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load i32, i32* %code.addr, align 4, !tbaa !18
  %conv = zext i32 %13 to i64
  %14 = load i32, i32* %size.addr, align 4, !tbaa !18
  %sh_prom = zext i32 %14 to i64
  %shl = shl i64 1, %sh_prom
  %sub = sub nsw i64 %shl, 1
  %and = and i64 %conv, %sub
  store i64 %and, i64* %put_buffer, align 8, !tbaa !55
  %15 = load i32, i32* %size.addr, align 4, !tbaa !18
  %16 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !1
  %cur = getelementptr inbounds %struct.working_state, %struct.working_state* %16, i32 0, i32 2
  %put_bits4 = getelementptr inbounds %struct.savable_state, %struct.savable_state* %cur, i32 0, i32 1
  %17 = load i32, i32* %put_bits4, align 4, !tbaa !65
  %add = add nsw i32 %15, %17
  store i32 %add, i32* %put_bits, align 4, !tbaa !18
  %18 = load i32, i32* %put_bits, align 4, !tbaa !18
  %sub5 = sub nsw i32 24, %18
  %19 = load i64, i64* %put_buffer, align 8, !tbaa !55
  %sh_prom6 = zext i32 %sub5 to i64
  %shl7 = shl i64 %19, %sh_prom6
  store i64 %shl7, i64* %put_buffer, align 8, !tbaa !55
  %20 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !1
  %cur8 = getelementptr inbounds %struct.working_state, %struct.working_state* %20, i32 0, i32 2
  %put_buffer9 = getelementptr inbounds %struct.savable_state, %struct.savable_state* %cur8, i32 0, i32 0
  %21 = load i64, i64* %put_buffer9, align 8, !tbaa !64
  %22 = load i64, i64* %put_buffer, align 8, !tbaa !55
  %or = or i64 %22, %21
  store i64 %or, i64* %put_buffer, align 8, !tbaa !55
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %if.end
  %23 = load i32, i32* %put_bits, align 4, !tbaa !18
  %cmp10 = icmp sge i32 %23, 8
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load i64, i64* %put_buffer, align 8, !tbaa !55
  %shr = ashr i64 %25, 16
  %and12 = and i64 %shr, 255
  %conv13 = trunc i64 %and12 to i32
  store i32 %conv13, i32* %c, align 4, !tbaa !18
  %26 = load i32, i32* %c, align 4, !tbaa !18
  %conv14 = trunc i32 %26 to i8
  %27 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !1
  %next_output_byte = getelementptr inbounds %struct.working_state, %struct.working_state* %27, i32 0, i32 0
  %28 = load i8*, i8** %next_output_byte, align 8, !tbaa !51
  %incdec.ptr = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr, i8** %next_output_byte, align 8, !tbaa !51
  store i8 %conv14, i8* %28, align 1, !tbaa !21
  %29 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !1
  %free_in_buffer = getelementptr inbounds %struct.working_state, %struct.working_state* %29, i32 0, i32 1
  %30 = load i64, i64* %free_in_buffer, align 8, !tbaa !53
  %dec = add i64 %30, -1
  store i64 %dec, i64* %free_in_buffer, align 8, !tbaa !53
  %cmp15 = icmp eq i64 %dec, 0
  br i1 %cmp15, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %while.body
  %31 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !1
  %call = call i32 @dump_buffer_s(%struct.working_state* %31) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %if.then.17
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.then.17
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %while.body
  %32 = load i32, i32* %c, align 4, !tbaa !18
  %cmp21 = icmp eq i32 %32, 255
  br i1 %cmp21, label %if.then.23, label %if.end.36

if.then.23:                                       ; preds = %if.end.20
  %33 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !1
  %next_output_byte24 = getelementptr inbounds %struct.working_state, %struct.working_state* %33, i32 0, i32 0
  %34 = load i8*, i8** %next_output_byte24, align 8, !tbaa !51
  %incdec.ptr25 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr25, i8** %next_output_byte24, align 8, !tbaa !51
  store i8 0, i8* %34, align 1, !tbaa !21
  %35 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !1
  %free_in_buffer26 = getelementptr inbounds %struct.working_state, %struct.working_state* %35, i32 0, i32 1
  %36 = load i64, i64* %free_in_buffer26, align 8, !tbaa !53
  %dec27 = add i64 %36, -1
  store i64 %dec27, i64* %free_in_buffer26, align 8, !tbaa !53
  %cmp28 = icmp eq i64 %dec27, 0
  br i1 %cmp28, label %if.then.30, label %if.end.35

if.then.30:                                       ; preds = %if.then.23
  %37 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !1
  %call31 = call i32 @dump_buffer_s(%struct.working_state* %37) #5
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %if.then.30
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %if.then.30
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.23
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end.20
  %38 = load i64, i64* %put_buffer, align 8, !tbaa !55
  %shl37 = shl i64 %38, 8
  store i64 %shl37, i64* %put_buffer, align 8, !tbaa !55
  %39 = load i32, i32* %put_bits, align 4, !tbaa !18
  %sub38 = sub nsw i32 %39, 8
  store i32 %sub38, i32* %put_bits, align 4, !tbaa !18
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.36, %if.then.33, %if.then.18
  %40 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.43 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %41 = load i64, i64* %put_buffer, align 8, !tbaa !55
  %42 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !1
  %cur39 = getelementptr inbounds %struct.working_state, %struct.working_state* %42, i32 0, i32 2
  %put_buffer40 = getelementptr inbounds %struct.savable_state, %struct.savable_state* %cur39, i32 0, i32 0
  store i64 %41, i64* %put_buffer40, align 8, !tbaa !64
  %43 = load i32, i32* %put_bits, align 4, !tbaa !18
  %44 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !1
  %cur41 = getelementptr inbounds %struct.working_state, %struct.working_state* %44, i32 0, i32 2
  %put_bits42 = getelementptr inbounds %struct.savable_state, %struct.savable_state* %cur41, i32 0, i32 1
  store i32 %43, i32* %put_bits42, align 4, !tbaa !65
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.43

cleanup.43:                                       ; preds = %while.end, %cleanup
  %45 = bitcast i32* %put_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast i64* %put_buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = load i32, i32* %retval
  ret i32 %47
}

; Function Attrs: nounwind uwtable
define internal i32 @dump_buffer_s(%struct.working_state* %state) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.working_state*, align 8
  %dest = alloca %struct.jpeg_destination_mgr*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.working_state* %state, %struct.working_state** %state.addr, align 8, !tbaa !1
  %0 = bitcast %struct.jpeg_destination_mgr** %dest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !1
  %cinfo = getelementptr inbounds %struct.working_state, %struct.working_state* %1, i32 0, i32 3
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo, align 8, !tbaa !56
  %dest1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %2, i32 0, i32 6
  %3 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest1, align 8, !tbaa !45
  store %struct.jpeg_destination_mgr* %3, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !1
  %4 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !1
  %empty_output_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %4, i32 0, i32 3
  %5 = load i32 (%struct.jpeg_compress_struct*)*, i32 (%struct.jpeg_compress_struct*)** %empty_output_buffer, align 8, !tbaa !63
  %6 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !1
  %cinfo2 = getelementptr inbounds %struct.working_state, %struct.working_state* %6, i32 0, i32 3
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo2, align 8, !tbaa !56
  %call = call i32 %5(%struct.jpeg_compress_struct* %7) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !1
  %next_output_byte = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %8, i32 0, i32 0
  %9 = load i8*, i8** %next_output_byte, align 8, !tbaa !46
  %10 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !1
  %next_output_byte3 = getelementptr inbounds %struct.working_state, %struct.working_state* %10, i32 0, i32 0
  store i8* %9, i8** %next_output_byte3, align 8, !tbaa !51
  %11 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !1
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %11, i32 0, i32 1
  %12 = load i64, i64* %free_in_buffer, align 8, !tbaa !49
  %13 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !1
  %free_in_buffer4 = getelementptr inbounds %struct.working_state, %struct.working_state* %13, i32 0, i32 1
  store i64 %12, i64* %free_in_buffer4, align 8, !tbaa !53
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %14 = bitcast %struct.jpeg_destination_mgr** %dest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal void @emit_restart_e(%struct.huff_entropy_encoder* %entropy, i32 %restart_num) #0 {
entry:
  %entropy.addr = alloca %struct.huff_entropy_encoder*, align 8
  %restart_num.addr = alloca i32, align 4
  %ci = alloca i32, align 4
  store %struct.huff_entropy_encoder* %entropy, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  store i32 %restart_num, i32* %restart_num.addr, align 4, !tbaa !18
  %0 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  call void @emit_eobrun(%struct.huff_entropy_encoder* %1) #5
  %2 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %gather_statistics = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %2, i32 0, i32 8
  %3 = load i32, i32* %gather_statistics, align 4, !tbaa !24
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end.10, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  call void @flush_bits_e(%struct.huff_entropy_encoder* %4) #5
  %5 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %next_output_byte = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %5, i32 0, i32 9
  %6 = load i8*, i8** %next_output_byte, align 8, !tbaa !48
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %next_output_byte, align 8, !tbaa !48
  store i8 -1, i8* %6, align 1, !tbaa !21
  %7 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %free_in_buffer = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %7, i32 0, i32 10
  %8 = load i64, i64* %free_in_buffer, align 8, !tbaa !50
  %dec = add i64 %8, -1
  store i64 %dec, i64* %free_in_buffer, align 8, !tbaa !50
  %cmp = icmp eq i64 %dec, 0
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %9 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  call void @dump_buffer_e(%struct.huff_entropy_encoder* %9) #5
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  %10 = load i32, i32* %restart_num.addr, align 4, !tbaa !18
  %add = add nsw i32 208, %10
  %conv = trunc i32 %add to i8
  %11 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %next_output_byte2 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %11, i32 0, i32 9
  %12 = load i8*, i8** %next_output_byte2, align 8, !tbaa !48
  %incdec.ptr3 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr3, i8** %next_output_byte2, align 8, !tbaa !48
  store i8 %conv, i8* %12, align 1, !tbaa !21
  %13 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %free_in_buffer4 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %13, i32 0, i32 10
  %14 = load i64, i64* %free_in_buffer4, align 8, !tbaa !50
  %dec5 = add i64 %14, -1
  store i64 %dec5, i64* %free_in_buffer4, align 8, !tbaa !50
  %cmp6 = icmp eq i64 %dec5, 0
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %15 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  call void @dump_buffer_e(%struct.huff_entropy_encoder* %15) #5
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %entry
  %16 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %cinfo = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %16, i32 0, i32 11
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo, align 8, !tbaa !23
  %Ss = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 59
  %18 = load i32, i32* %Ss, align 4, !tbaa !26
  %cmp11 = icmp eq i32 %18, 0
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end.10
  store i32 0, i32* %ci, align 4, !tbaa !18
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.13
  %19 = load i32, i32* %ci, align 4, !tbaa !18
  %20 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %cinfo14 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %20, i32 0, i32 11
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo14, align 8, !tbaa !23
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 53
  %22 = load i32, i32* %comps_in_scan, align 4, !tbaa !33
  %cmp15 = icmp slt i32 %19, %22
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom = sext i32 %23 to i64
  %24 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %saved = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %24, i32 0, i32 1
  %last_dc_val = getelementptr inbounds %struct.savable_state, %struct.savable_state* %saved, i32 0, i32 2
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4, !tbaa !18
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %ci, align 4, !tbaa !18
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !18
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.17

if.else:                                          ; preds = %if.end.10
  %26 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %EOBRUN = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %26, i32 0, i32 13
  store i32 0, i32* %EOBRUN, align 4, !tbaa !31
  %27 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %BE = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %27, i32 0, i32 14
  store i32 0, i32* %BE, align 4, !tbaa !32
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %for.end
  %28 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @emit_dc_symbol(%struct.huff_entropy_encoder* %entropy, i32 %tbl_no, i32 %symbol) #4 {
entry:
  %entropy.addr = alloca %struct.huff_entropy_encoder*, align 8
  %tbl_no.addr = alloca i32, align 4
  %symbol.addr = alloca i32, align 4
  %tbl = alloca %struct.c_derived_tbl*, align 8
  store %struct.huff_entropy_encoder* %entropy, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  store i32 %tbl_no, i32* %tbl_no.addr, align 4, !tbaa !18
  store i32 %symbol, i32* %symbol.addr, align 4, !tbaa !18
  %0 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %gather_statistics = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %0, i32 0, i32 8
  %1 = load i32, i32* %gather_statistics, align 4, !tbaa !24
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %symbol.addr, align 4, !tbaa !18
  %idxprom = sext i32 %2 to i64
  %3 = load i32, i32* %tbl_no.addr, align 4, !tbaa !18
  %idxprom1 = sext i32 %3 to i64
  %4 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %dc_count_ptrs = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %4, i32 0, i32 6
  %arrayidx = getelementptr inbounds [4 x i64*], [4 x i64*]* %dc_count_ptrs, i32 0, i64 %idxprom1
  %5 = load i64*, i64** %arrayidx, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i64, i64* %5, i64 %idxprom
  %6 = load i64, i64* %arrayidx2, align 8, !tbaa !55
  %inc = add nsw i64 %6, 1
  store i64 %inc, i64* %arrayidx2, align 8, !tbaa !55
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = bitcast %struct.c_derived_tbl** %tbl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load i32, i32* %tbl_no.addr, align 4, !tbaa !18
  %idxprom3 = sext i32 %8 to i64
  %9 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %dc_derived_tbls = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %9, i32 0, i32 4
  %arrayidx4 = getelementptr inbounds [4 x %struct.c_derived_tbl*], [4 x %struct.c_derived_tbl*]* %dc_derived_tbls, i32 0, i64 %idxprom3
  %10 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %arrayidx4, align 8, !tbaa !1
  store %struct.c_derived_tbl* %10, %struct.c_derived_tbl** %tbl, align 8, !tbaa !1
  %11 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy.addr, align 8, !tbaa !1
  %12 = load i32, i32* %symbol.addr, align 4, !tbaa !18
  %idxprom5 = sext i32 %12 to i64
  %13 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %tbl, align 8, !tbaa !1
  %ehufco = getelementptr inbounds %struct.c_derived_tbl, %struct.c_derived_tbl* %13, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [256 x i32], [256 x i32]* %ehufco, i32 0, i64 %idxprom5
  %14 = load i32, i32* %arrayidx6, align 4, !tbaa !18
  %15 = load i32, i32* %symbol.addr, align 4, !tbaa !18
  %idxprom7 = sext i32 %15 to i64
  %16 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %tbl, align 8, !tbaa !1
  %ehufsi = getelementptr inbounds %struct.c_derived_tbl, %struct.c_derived_tbl* %16, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [256 x i8], [256 x i8]* %ehufsi, i32 0, i64 %idxprom7
  %17 = load i8, i8* %arrayidx8, align 1, !tbaa !21
  %conv = sext i8 %17 to i32
  call void @emit_bits_e(%struct.huff_entropy_encoder* %11, i32 %14, i32 %conv) #5
  %18 = bitcast %struct.c_derived_tbl** %tbl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @htest_one_block(%struct.jpeg_compress_struct* %cinfo, i16* %block, i32 %last_dc_val, i64* %dc_counts, i64* %ac_counts) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %block.addr = alloca i16*, align 8
  %last_dc_val.addr = alloca i32, align 4
  %dc_counts.addr = alloca i64*, align 8
  %ac_counts.addr = alloca i64*, align 8
  %temp = alloca i32, align 4
  %nbits = alloca i32, align 4
  %r = alloca i32, align 4
  %k = alloca i32, align 4
  %Se = alloca i32, align 4
  %natural_order = alloca i32*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store i16* %block, i16** %block.addr, align 8, !tbaa !1
  store i32 %last_dc_val, i32* %last_dc_val.addr, align 4, !tbaa !18
  store i64* %dc_counts, i64** %dc_counts.addr, align 8, !tbaa !1
  store i64* %ac_counts, i64** %ac_counts.addr, align 8, !tbaa !1
  %0 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %nbits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %Se to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %lim_Se = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 65
  %6 = load i32, i32* %lim_Se, align 4, !tbaa !66
  store i32 %6, i32* %Se, align 4, !tbaa !18
  %7 = bitcast i32** %natural_order to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %natural_order1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 64
  %9 = load i32*, i32** %natural_order1, align 8, !tbaa !60
  store i32* %9, i32** %natural_order, align 8, !tbaa !1
  %10 = load i16*, i16** %block.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %10, i64 0
  %11 = load i16, i16* %arrayidx, align 2, !tbaa !58
  %conv = sext i16 %11 to i32
  %12 = load i32, i32* %last_dc_val.addr, align 4, !tbaa !18
  %sub = sub nsw i32 %conv, %12
  store i32 %sub, i32* %temp, align 4, !tbaa !18
  %13 = load i32, i32* %temp, align 4, !tbaa !18
  %cmp = icmp slt i32 %13, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load i32, i32* %temp, align 4, !tbaa !18
  %sub3 = sub nsw i32 0, %14
  store i32 %sub3, i32* %temp, align 4, !tbaa !18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %nbits, align 4, !tbaa !18
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %15 = load i32, i32* %temp, align 4, !tbaa !18
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load i32, i32* %nbits, align 4, !tbaa !18
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %nbits, align 4, !tbaa !18
  %17 = load i32, i32* %temp, align 4, !tbaa !18
  %shr = ashr i32 %17, 1
  store i32 %shr, i32* %temp, align 4, !tbaa !18
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %18 = load i32, i32* %nbits, align 4, !tbaa !18
  %cmp4 = icmp sgt i32 %18, 11
  br i1 %cmp4, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %while.end
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %19, i32 0, i32 0
  %20 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !35
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %20, i32 0, i32 5
  store i32 6, i32* %msg_code, align 4, !tbaa !36
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 0
  %22 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err7, align 8, !tbaa !35
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %22, i32 0, i32 0
  %23 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !38
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %25 = bitcast %struct.jpeg_compress_struct* %24 to %struct.jpeg_common_struct*
  call void %23(%struct.jpeg_common_struct* %25) #5
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %while.end
  %26 = load i32, i32* %nbits, align 4, !tbaa !18
  %idxprom = sext i32 %26 to i64
  %27 = load i64*, i64** %dc_counts.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i64, i64* %27, i64 %idxprom
  %28 = load i64, i64* %arrayidx9, align 8, !tbaa !55
  %inc10 = add nsw i64 %28, 1
  store i64 %inc10, i64* %arrayidx9, align 8, !tbaa !55
  store i32 0, i32* %r, align 4, !tbaa !18
  store i32 1, i32* %k, align 4, !tbaa !18
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.8
  %29 = load i32, i32* %k, align 4, !tbaa !18
  %30 = load i32, i32* %Se, align 4, !tbaa !18
  %cmp11 = icmp sle i32 %29, %30
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i32, i32* %k, align 4, !tbaa !18
  %idxprom13 = sext i32 %31 to i64
  %32 = load i32*, i32** %natural_order, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i32, i32* %32, i64 %idxprom13
  %33 = load i32, i32* %arrayidx14, align 4, !tbaa !18
  %idxprom15 = sext i32 %33 to i64
  %34 = load i16*, i16** %block.addr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i16, i16* %34, i64 %idxprom15
  %35 = load i16, i16* %arrayidx16, align 2, !tbaa !58
  %conv17 = sext i16 %35 to i32
  store i32 %conv17, i32* %temp, align 4, !tbaa !18
  %cmp18 = icmp eq i32 %conv17, 0
  br i1 %cmp18, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %for.body
  %36 = load i32, i32* %r, align 4, !tbaa !18
  %inc21 = add nsw i32 %36, 1
  store i32 %inc21, i32* %r, align 4, !tbaa !18
  br label %if.end.52

if.else:                                          ; preds = %for.body
  br label %while.cond.22

while.cond.22:                                    ; preds = %while.body.25, %if.else
  %37 = load i32, i32* %r, align 4, !tbaa !18
  %cmp23 = icmp sgt i32 %37, 15
  br i1 %cmp23, label %while.body.25, label %while.end.29

while.body.25:                                    ; preds = %while.cond.22
  %38 = load i64*, i64** %ac_counts.addr, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i64, i64* %38, i64 240
  %39 = load i64, i64* %arrayidx26, align 8, !tbaa !55
  %inc27 = add nsw i64 %39, 1
  store i64 %inc27, i64* %arrayidx26, align 8, !tbaa !55
  %40 = load i32, i32* %r, align 4, !tbaa !18
  %sub28 = sub nsw i32 %40, 16
  store i32 %sub28, i32* %r, align 4, !tbaa !18
  br label %while.cond.22

while.end.29:                                     ; preds = %while.cond.22
  %41 = load i32, i32* %temp, align 4, !tbaa !18
  %cmp30 = icmp slt i32 %41, 0
  br i1 %cmp30, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %while.end.29
  %42 = load i32, i32* %temp, align 4, !tbaa !18
  %sub33 = sub nsw i32 0, %42
  store i32 %sub33, i32* %temp, align 4, !tbaa !18
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %while.end.29
  store i32 1, i32* %nbits, align 4, !tbaa !18
  br label %while.cond.35

while.cond.35:                                    ; preds = %while.body.38, %if.end.34
  %43 = load i32, i32* %temp, align 4, !tbaa !18
  %shr36 = ashr i32 %43, 1
  store i32 %shr36, i32* %temp, align 4, !tbaa !18
  %tobool37 = icmp ne i32 %shr36, 0
  br i1 %tobool37, label %while.body.38, label %while.end.40

while.body.38:                                    ; preds = %while.cond.35
  %44 = load i32, i32* %nbits, align 4, !tbaa !18
  %inc39 = add nsw i32 %44, 1
  store i32 %inc39, i32* %nbits, align 4, !tbaa !18
  br label %while.cond.35

while.end.40:                                     ; preds = %while.cond.35
  %45 = load i32, i32* %nbits, align 4, !tbaa !18
  %cmp41 = icmp sgt i32 %45, 10
  br i1 %cmp41, label %if.then.43, label %if.end.48

if.then.43:                                       ; preds = %while.end.40
  %46 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err44 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %46, i32 0, i32 0
  %47 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err44, align 8, !tbaa !35
  %msg_code45 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %47, i32 0, i32 5
  store i32 6, i32* %msg_code45, align 4, !tbaa !36
  %48 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err46 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %48, i32 0, i32 0
  %49 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err46, align 8, !tbaa !35
  %error_exit47 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %49, i32 0, i32 0
  %50 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit47, align 8, !tbaa !38
  %51 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %52 = bitcast %struct.jpeg_compress_struct* %51 to %struct.jpeg_common_struct*
  call void %50(%struct.jpeg_common_struct* %52) #5
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.43, %while.end.40
  %53 = load i32, i32* %r, align 4, !tbaa !18
  %shl = shl i32 %53, 4
  %54 = load i32, i32* %nbits, align 4, !tbaa !18
  %add = add nsw i32 %shl, %54
  %idxprom49 = sext i32 %add to i64
  %55 = load i64*, i64** %ac_counts.addr, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds i64, i64* %55, i64 %idxprom49
  %56 = load i64, i64* %arrayidx50, align 8, !tbaa !55
  %inc51 = add nsw i64 %56, 1
  store i64 %inc51, i64* %arrayidx50, align 8, !tbaa !55
  store i32 0, i32* %r, align 4, !tbaa !18
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.48, %if.then.20
  br label %for.inc

for.inc:                                          ; preds = %if.end.52
  %57 = load i32, i32* %k, align 4, !tbaa !18
  %inc53 = add nsw i32 %57, 1
  store i32 %inc53, i32* %k, align 4, !tbaa !18
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %58 = load i32, i32* %r, align 4, !tbaa !18
  %cmp54 = icmp sgt i32 %58, 0
  br i1 %cmp54, label %if.then.56, label %if.end.59

if.then.56:                                       ; preds = %for.end
  %59 = load i64*, i64** %ac_counts.addr, align 8, !tbaa !1
  %arrayidx57 = getelementptr inbounds i64, i64* %59, i64 0
  %60 = load i64, i64* %arrayidx57, align 8, !tbaa !55
  %inc58 = add nsw i64 %60, 1
  store i64 %inc58, i64* %arrayidx57, align 8, !tbaa !55
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.56, %for.end
  %61 = bitcast i32** %natural_order to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %62 = bitcast i32* %Se to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast i32* %nbits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @emit_restart_s(%struct.working_state* %state, i32 %restart_num) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.working_state*, align 8
  %restart_num.addr = alloca i32, align 4
  %ci = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.working_state* %state, %struct.working_state** %state.addr, align 8, !tbaa !1
  store i32 %restart_num, i32* %restart_num.addr, align 4, !tbaa !18
  %0 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !1
  %call = call i32 @flush_bits_s(%struct.working_state* %1) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !1
  %next_output_byte = getelementptr inbounds %struct.working_state, %struct.working_state* %2, i32 0, i32 0
  %3 = load i8*, i8** %next_output_byte, align 8, !tbaa !51
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %next_output_byte, align 8, !tbaa !51
  store i8 -1, i8* %3, align 1, !tbaa !21
  %4 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !1
  %free_in_buffer = getelementptr inbounds %struct.working_state, %struct.working_state* %4, i32 0, i32 1
  %5 = load i64, i64* %free_in_buffer, align 8, !tbaa !53
  %dec = add i64 %5, -1
  store i64 %dec, i64* %free_in_buffer, align 8, !tbaa !53
  %cmp = icmp eq i64 %dec, 0
  br i1 %cmp, label %if.then.1, label %if.end.6

if.then.1:                                        ; preds = %if.end
  %6 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !1
  %call2 = call i32 @dump_buffer_s(%struct.working_state* %6) #5
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.then.1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.then.1
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %if.end
  %7 = load i32, i32* %restart_num.addr, align 4, !tbaa !18
  %add = add nsw i32 208, %7
  %conv = trunc i32 %add to i8
  %8 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !1
  %next_output_byte7 = getelementptr inbounds %struct.working_state, %struct.working_state* %8, i32 0, i32 0
  %9 = load i8*, i8** %next_output_byte7, align 8, !tbaa !51
  %incdec.ptr8 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr8, i8** %next_output_byte7, align 8, !tbaa !51
  store i8 %conv, i8* %9, align 1, !tbaa !21
  %10 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !1
  %free_in_buffer9 = getelementptr inbounds %struct.working_state, %struct.working_state* %10, i32 0, i32 1
  %11 = load i64, i64* %free_in_buffer9, align 8, !tbaa !53
  %dec10 = add i64 %11, -1
  store i64 %dec10, i64* %free_in_buffer9, align 8, !tbaa !53
  %cmp11 = icmp eq i64 %dec10, 0
  br i1 %cmp11, label %if.then.13, label %if.end.18

if.then.13:                                       ; preds = %if.end.6
  %12 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !1
  %call14 = call i32 @dump_buffer_s(%struct.working_state* %12) #5
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.then.13
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.then.13
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end.6
  store i32 0, i32* %ci, align 4, !tbaa !18
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.18
  %13 = load i32, i32* %ci, align 4, !tbaa !18
  %14 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !1
  %cinfo = getelementptr inbounds %struct.working_state, %struct.working_state* %14, i32 0, i32 3
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo, align 8, !tbaa !56
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %15, i32 0, i32 53
  %16 = load i32, i32* %comps_in_scan, align 4, !tbaa !33
  %cmp19 = icmp slt i32 %13, %16
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom = sext i32 %17 to i64
  %18 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !1
  %cur = getelementptr inbounds %struct.working_state, %struct.working_state* %18, i32 0, i32 2
  %last_dc_val = getelementptr inbounds %struct.savable_state, %struct.savable_state* %cur, i32 0, i32 2
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4, !tbaa !18
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %ci, align 4, !tbaa !18
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !18
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.16, %if.then.4, %if.then
  %20 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @encode_one_block(%struct.working_state* %state, i16* %block, i32 %last_dc_val, %struct.c_derived_tbl* %dctbl, %struct.c_derived_tbl* %actbl) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.working_state*, align 8
  %block.addr = alloca i16*, align 8
  %last_dc_val.addr = alloca i32, align 4
  %dctbl.addr = alloca %struct.c_derived_tbl*, align 8
  %actbl.addr = alloca %struct.c_derived_tbl*, align 8
  %temp = alloca i32, align 4
  %temp2 = alloca i32, align 4
  %nbits = alloca i32, align 4
  %r = alloca i32, align 4
  %k = alloca i32, align 4
  %Se = alloca i32, align 4
  %natural_order = alloca i32*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.working_state* %state, %struct.working_state** %state.addr, align 8, !tbaa !1
  store i16* %block, i16** %block.addr, align 8, !tbaa !1
  store i32 %last_dc_val, i32* %last_dc_val.addr, align 4, !tbaa !18
  store %struct.c_derived_tbl* %dctbl, %struct.c_derived_tbl** %dctbl.addr, align 8, !tbaa !1
  store %struct.c_derived_tbl* %actbl, %struct.c_derived_tbl** %actbl.addr, align 8, !tbaa !1
  %0 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %temp2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %nbits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %Se to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !1
  %cinfo = getelementptr inbounds %struct.working_state, %struct.working_state* %6, i32 0, i32 3
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo, align 8, !tbaa !56
  %lim_Se = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 65
  %8 = load i32, i32* %lim_Se, align 4, !tbaa !66
  store i32 %8, i32* %Se, align 4, !tbaa !18
  %9 = bitcast i32** %natural_order to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !1
  %cinfo1 = getelementptr inbounds %struct.working_state, %struct.working_state* %10, i32 0, i32 3
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo1, align 8, !tbaa !56
  %natural_order2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 64
  %12 = load i32*, i32** %natural_order2, align 8, !tbaa !60
  store i32* %12, i32** %natural_order, align 8, !tbaa !1
  %13 = load i16*, i16** %block.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %13, i64 0
  %14 = load i16, i16* %arrayidx, align 2, !tbaa !58
  %conv = sext i16 %14 to i32
  %15 = load i32, i32* %last_dc_val.addr, align 4, !tbaa !18
  %sub = sub nsw i32 %conv, %15
  store i32 %sub, i32* %temp2, align 4, !tbaa !18
  store i32 %sub, i32* %temp, align 4, !tbaa !18
  %16 = load i32, i32* %temp, align 4, !tbaa !18
  %cmp = icmp slt i32 %16, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %temp, align 4, !tbaa !18
  %sub4 = sub nsw i32 0, %17
  store i32 %sub4, i32* %temp, align 4, !tbaa !18
  %18 = load i32, i32* %temp2, align 4, !tbaa !18
  %dec = add nsw i32 %18, -1
  store i32 %dec, i32* %temp2, align 4, !tbaa !18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %nbits, align 4, !tbaa !18
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %19 = load i32, i32* %temp, align 4, !tbaa !18
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = load i32, i32* %nbits, align 4, !tbaa !18
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %nbits, align 4, !tbaa !18
  %21 = load i32, i32* %temp, align 4, !tbaa !18
  %shr = ashr i32 %21, 1
  store i32 %shr, i32* %temp, align 4, !tbaa !18
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %22 = load i32, i32* %nbits, align 4, !tbaa !18
  %cmp5 = icmp sgt i32 %22, 11
  br i1 %cmp5, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %while.end
  %23 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !1
  %cinfo8 = getelementptr inbounds %struct.working_state, %struct.working_state* %23, i32 0, i32 3
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo8, align 8, !tbaa !56
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %24, i32 0, i32 0
  %25 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !35
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %25, i32 0, i32 5
  store i32 6, i32* %msg_code, align 4, !tbaa !36
  %26 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !1
  %cinfo9 = getelementptr inbounds %struct.working_state, %struct.working_state* %26, i32 0, i32 3
  %27 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo9, align 8, !tbaa !56
  %err10 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %27, i32 0, i32 0
  %28 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err10, align 8, !tbaa !35
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %28, i32 0, i32 0
  %29 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !38
  %30 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !1
  %cinfo11 = getelementptr inbounds %struct.working_state, %struct.working_state* %30, i32 0, i32 3
  %31 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo11, align 8, !tbaa !56
  %32 = bitcast %struct.jpeg_compress_struct* %31 to %struct.jpeg_common_struct*
  call void %29(%struct.jpeg_common_struct* %32) #5
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.7, %while.end
  %33 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !1
  %34 = load i32, i32* %nbits, align 4, !tbaa !18
  %idxprom = sext i32 %34 to i64
  %35 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %dctbl.addr, align 8, !tbaa !1
  %ehufco = getelementptr inbounds %struct.c_derived_tbl, %struct.c_derived_tbl* %35, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [256 x i32], [256 x i32]* %ehufco, i32 0, i64 %idxprom
  %36 = load i32, i32* %arrayidx13, align 4, !tbaa !18
  %37 = load i32, i32* %nbits, align 4, !tbaa !18
  %idxprom14 = sext i32 %37 to i64
  %38 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %dctbl.addr, align 8, !tbaa !1
  %ehufsi = getelementptr inbounds %struct.c_derived_tbl, %struct.c_derived_tbl* %38, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [256 x i8], [256 x i8]* %ehufsi, i32 0, i64 %idxprom14
  %39 = load i8, i8* %arrayidx15, align 1, !tbaa !21
  %conv16 = sext i8 %39 to i32
  %call = call i32 @emit_bits_s(%struct.working_state* %33, i32 %36, i32 %conv16) #5
  %tobool17 = icmp ne i32 %call, 0
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %if.end.12
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.end.12
  %40 = load i32, i32* %nbits, align 4, !tbaa !18
  %tobool20 = icmp ne i32 %40, 0
  br i1 %tobool20, label %if.then.21, label %if.end.26

if.then.21:                                       ; preds = %if.end.19
  %41 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !1
  %42 = load i32, i32* %temp2, align 4, !tbaa !18
  %43 = load i32, i32* %nbits, align 4, !tbaa !18
  %call22 = call i32 @emit_bits_s(%struct.working_state* %41, i32 %42, i32 %43) #5
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %if.then.21
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %if.then.21
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.end.19
  store i32 0, i32* %r, align 4, !tbaa !18
  store i32 1, i32* %k, align 4, !tbaa !18
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.26
  %44 = load i32, i32* %k, align 4, !tbaa !18
  %45 = load i32, i32* %Se, align 4, !tbaa !18
  %cmp27 = icmp sle i32 %44, %45
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %46 = load i32, i32* %k, align 4, !tbaa !18
  %idxprom29 = sext i32 %46 to i64
  %47 = load i32*, i32** %natural_order, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds i32, i32* %47, i64 %idxprom29
  %48 = load i32, i32* %arrayidx30, align 4, !tbaa !18
  %idxprom31 = sext i32 %48 to i64
  %49 = load i16*, i16** %block.addr, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i16, i16* %49, i64 %idxprom31
  %50 = load i16, i16* %arrayidx32, align 2, !tbaa !58
  %conv33 = sext i16 %50 to i32
  store i32 %conv33, i32* %temp2, align 4, !tbaa !18
  %cmp34 = icmp eq i32 %conv33, 0
  br i1 %cmp34, label %if.then.36, label %if.else

if.then.36:                                       ; preds = %for.body
  %51 = load i32, i32* %r, align 4, !tbaa !18
  %inc37 = add nsw i32 %51, 1
  store i32 %inc37, i32* %r, align 4, !tbaa !18
  br label %if.end.91

if.else:                                          ; preds = %for.body
  br label %while.cond.38

while.cond.38:                                    ; preds = %if.end.50, %if.else
  %52 = load i32, i32* %r, align 4, !tbaa !18
  %cmp39 = icmp sgt i32 %52, 15
  br i1 %cmp39, label %while.body.41, label %while.end.52

while.body.41:                                    ; preds = %while.cond.38
  %53 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !1
  %54 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %actbl.addr, align 8, !tbaa !1
  %ehufco42 = getelementptr inbounds %struct.c_derived_tbl, %struct.c_derived_tbl* %54, i32 0, i32 0
  %arrayidx43 = getelementptr inbounds [256 x i32], [256 x i32]* %ehufco42, i32 0, i64 240
  %55 = load i32, i32* %arrayidx43, align 4, !tbaa !18
  %56 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %actbl.addr, align 8, !tbaa !1
  %ehufsi44 = getelementptr inbounds %struct.c_derived_tbl, %struct.c_derived_tbl* %56, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [256 x i8], [256 x i8]* %ehufsi44, i32 0, i64 240
  %57 = load i8, i8* %arrayidx45, align 1, !tbaa !21
  %conv46 = sext i8 %57 to i32
  %call47 = call i32 @emit_bits_s(%struct.working_state* %53, i32 %55, i32 %conv46) #5
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.end.50, label %if.then.49

if.then.49:                                       ; preds = %while.body.41
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.50:                                        ; preds = %while.body.41
  %58 = load i32, i32* %r, align 4, !tbaa !18
  %sub51 = sub nsw i32 %58, 16
  store i32 %sub51, i32* %r, align 4, !tbaa !18
  br label %while.cond.38

while.end.52:                                     ; preds = %while.cond.38
  %59 = load i32, i32* %temp2, align 4, !tbaa !18
  store i32 %59, i32* %temp, align 4, !tbaa !18
  %60 = load i32, i32* %temp, align 4, !tbaa !18
  %cmp53 = icmp slt i32 %60, 0
  br i1 %cmp53, label %if.then.55, label %if.end.58

if.then.55:                                       ; preds = %while.end.52
  %61 = load i32, i32* %temp, align 4, !tbaa !18
  %sub56 = sub nsw i32 0, %61
  store i32 %sub56, i32* %temp, align 4, !tbaa !18
  %62 = load i32, i32* %temp2, align 4, !tbaa !18
  %dec57 = add nsw i32 %62, -1
  store i32 %dec57, i32* %temp2, align 4, !tbaa !18
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.55, %while.end.52
  store i32 1, i32* %nbits, align 4, !tbaa !18
  br label %while.cond.59

while.cond.59:                                    ; preds = %while.body.62, %if.end.58
  %63 = load i32, i32* %temp, align 4, !tbaa !18
  %shr60 = ashr i32 %63, 1
  store i32 %shr60, i32* %temp, align 4, !tbaa !18
  %tobool61 = icmp ne i32 %shr60, 0
  br i1 %tobool61, label %while.body.62, label %while.end.64

while.body.62:                                    ; preds = %while.cond.59
  %64 = load i32, i32* %nbits, align 4, !tbaa !18
  %inc63 = add nsw i32 %64, 1
  store i32 %inc63, i32* %nbits, align 4, !tbaa !18
  br label %while.cond.59

while.end.64:                                     ; preds = %while.cond.59
  %65 = load i32, i32* %nbits, align 4, !tbaa !18
  %cmp65 = icmp sgt i32 %65, 10
  br i1 %cmp65, label %if.then.67, label %if.end.75

if.then.67:                                       ; preds = %while.end.64
  %66 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !1
  %cinfo68 = getelementptr inbounds %struct.working_state, %struct.working_state* %66, i32 0, i32 3
  %67 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo68, align 8, !tbaa !56
  %err69 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %67, i32 0, i32 0
  %68 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err69, align 8, !tbaa !35
  %msg_code70 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %68, i32 0, i32 5
  store i32 6, i32* %msg_code70, align 4, !tbaa !36
  %69 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !1
  %cinfo71 = getelementptr inbounds %struct.working_state, %struct.working_state* %69, i32 0, i32 3
  %70 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo71, align 8, !tbaa !56
  %err72 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %70, i32 0, i32 0
  %71 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err72, align 8, !tbaa !35
  %error_exit73 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %71, i32 0, i32 0
  %72 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit73, align 8, !tbaa !38
  %73 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !1
  %cinfo74 = getelementptr inbounds %struct.working_state, %struct.working_state* %73, i32 0, i32 3
  %74 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo74, align 8, !tbaa !56
  %75 = bitcast %struct.jpeg_compress_struct* %74 to %struct.jpeg_common_struct*
  call void %72(%struct.jpeg_common_struct* %75) #5
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.67, %while.end.64
  %76 = load i32, i32* %r, align 4, !tbaa !18
  %shl = shl i32 %76, 4
  %77 = load i32, i32* %nbits, align 4, !tbaa !18
  %add = add nsw i32 %shl, %77
  store i32 %add, i32* %temp, align 4, !tbaa !18
  %78 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !1
  %79 = load i32, i32* %temp, align 4, !tbaa !18
  %idxprom76 = sext i32 %79 to i64
  %80 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %actbl.addr, align 8, !tbaa !1
  %ehufco77 = getelementptr inbounds %struct.c_derived_tbl, %struct.c_derived_tbl* %80, i32 0, i32 0
  %arrayidx78 = getelementptr inbounds [256 x i32], [256 x i32]* %ehufco77, i32 0, i64 %idxprom76
  %81 = load i32, i32* %arrayidx78, align 4, !tbaa !18
  %82 = load i32, i32* %temp, align 4, !tbaa !18
  %idxprom79 = sext i32 %82 to i64
  %83 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %actbl.addr, align 8, !tbaa !1
  %ehufsi80 = getelementptr inbounds %struct.c_derived_tbl, %struct.c_derived_tbl* %83, i32 0, i32 1
  %arrayidx81 = getelementptr inbounds [256 x i8], [256 x i8]* %ehufsi80, i32 0, i64 %idxprom79
  %84 = load i8, i8* %arrayidx81, align 1, !tbaa !21
  %conv82 = sext i8 %84 to i32
  %call83 = call i32 @emit_bits_s(%struct.working_state* %78, i32 %81, i32 %conv82) #5
  %tobool84 = icmp ne i32 %call83, 0
  br i1 %tobool84, label %if.end.86, label %if.then.85

if.then.85:                                       ; preds = %if.end.75
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.86:                                        ; preds = %if.end.75
  %85 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !1
  %86 = load i32, i32* %temp2, align 4, !tbaa !18
  %87 = load i32, i32* %nbits, align 4, !tbaa !18
  %call87 = call i32 @emit_bits_s(%struct.working_state* %85, i32 %86, i32 %87) #5
  %tobool88 = icmp ne i32 %call87, 0
  br i1 %tobool88, label %if.end.90, label %if.then.89

if.then.89:                                       ; preds = %if.end.86
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.90:                                        ; preds = %if.end.86
  store i32 0, i32* %r, align 4, !tbaa !18
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.then.36
  br label %for.inc

for.inc:                                          ; preds = %if.end.91
  %88 = load i32, i32* %k, align 4, !tbaa !18
  %inc92 = add nsw i32 %88, 1
  store i32 %inc92, i32* %k, align 4, !tbaa !18
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %89 = load i32, i32* %r, align 4, !tbaa !18
  %cmp93 = icmp sgt i32 %89, 0
  br i1 %cmp93, label %if.then.95, label %if.end.105

if.then.95:                                       ; preds = %for.end
  %90 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !1
  %91 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %actbl.addr, align 8, !tbaa !1
  %ehufco96 = getelementptr inbounds %struct.c_derived_tbl, %struct.c_derived_tbl* %91, i32 0, i32 0
  %arrayidx97 = getelementptr inbounds [256 x i32], [256 x i32]* %ehufco96, i32 0, i64 0
  %92 = load i32, i32* %arrayidx97, align 4, !tbaa !18
  %93 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %actbl.addr, align 8, !tbaa !1
  %ehufsi98 = getelementptr inbounds %struct.c_derived_tbl, %struct.c_derived_tbl* %93, i32 0, i32 1
  %arrayidx99 = getelementptr inbounds [256 x i8], [256 x i8]* %ehufsi98, i32 0, i64 0
  %94 = load i8, i8* %arrayidx99, align 1, !tbaa !21
  %conv100 = sext i8 %94 to i32
  %call101 = call i32 @emit_bits_s(%struct.working_state* %90, i32 %92, i32 %conv100) #5
  %tobool102 = icmp ne i32 %call101, 0
  br i1 %tobool102, label %if.end.104, label %if.then.103

if.then.103:                                      ; preds = %if.then.95
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.104:                                       ; preds = %if.then.95
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %for.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.105, %if.then.103, %if.then.89, %if.then.85, %if.then.49, %if.then.24, %if.then.18
  %95 = bitcast i32** %natural_order to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #1
  %96 = bitcast i32* %Se to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #1
  %97 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #1
  %98 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #1
  %99 = bitcast i32* %nbits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #1
  %100 = bitcast i32* %temp2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  %101 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #1
  %102 = load i32, i32* %retval
  ret i32 %102
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind }

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
!15 = !{!"", !16, i64 0, !17, i64 24, !7, i64 56, !7, i64 60, !3, i64 64, !3, i64 96, !3, i64 128, !3, i64 160, !3, i64 192, !2, i64 200, !12, i64 208, !2, i64 216, !7, i64 224, !7, i64 228, !7, i64 232, !2, i64 240}
!16 = !{!"jpeg_entropy_encoder", !2, i64 0, !2, i64 8, !2, i64 16}
!17 = !{!"", !12, i64 0, !7, i64 8, !3, i64 12}
!18 = !{!7, !7, i64 0}
!19 = !{!6, !3, i64 348}
!20 = !{!15, !2, i64 240}
!21 = !{!3, !3, i64 0}
!22 = !{!15, !2, i64 16}
!23 = !{!15, !2, i64 216}
!24 = !{!15, !3, i64 192}
!25 = !{!6, !7, i64 468}
!26 = !{!6, !7, i64 460}
!27 = !{!15, !2, i64 8}
!28 = !{!29, !7, i64 24}
!29 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !3, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !2, i64 80, !2, i64 88}
!30 = !{!15, !7, i64 224}
!31 = !{!15, !7, i64 228}
!32 = !{!15, !7, i64 232}
!33 = !{!6, !7, i64 372}
!34 = !{!29, !7, i64 20}
!35 = !{!6, !2, i64 0}
!36 = !{!37, !7, i64 40}
!37 = !{!"jpeg_error_mgr", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !3, i64 44, !7, i64 124, !12, i64 128, !2, i64 136, !7, i64 144, !2, i64 152, !7, i64 160, !7, i64 164}
!38 = !{!37, !2, i64 0}
!39 = !{!6, !7, i64 464}
!40 = !{!15, !12, i64 24}
!41 = !{!15, !7, i64 32}
!42 = !{!6, !7, i64 316}
!43 = !{!15, !7, i64 56}
!44 = !{!15, !7, i64 60}
!45 = !{!6, !2, i64 40}
!46 = !{!47, !2, i64 0}
!47 = !{!"jpeg_destination_mgr", !2, i64 0, !12, i64 8, !2, i64 16, !2, i64 24, !2, i64 32}
!48 = !{!15, !2, i64 200}
!49 = !{!47, !12, i64 8}
!50 = !{!15, !12, i64 208}
!51 = !{!52, !2, i64 0}
!52 = !{!"", !2, i64 0, !12, i64 8, !17, i64 16, !2, i64 48}
!53 = !{!52, !12, i64 8}
!54 = !{i64 0, i64 8, !55, i64 8, i64 4, !18, i64 12, i64 16, !21}
!55 = !{!12, !12, i64 0}
!56 = !{!52, !2, i64 48}
!57 = !{!6, !7, i64 416}
!58 = !{!9, !9, i64 0}
!59 = !{!6, !7, i64 472}
!60 = !{!6, !2, i64 480}
!61 = !{!62, !3, i64 276}
!62 = !{!"", !3, i64 0, !3, i64 17, !3, i64 276}
!63 = !{!47, !2, i64 24}
!64 = !{!52, !12, i64 16}
!65 = !{!52, !7, i64 24}
!66 = !{!6, !7, i64 488}
