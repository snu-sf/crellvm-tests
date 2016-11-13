; ModuleID = './jcmarker.bc'
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
%struct.my_marker_writer = type { %struct.jpeg_marker_writer, i32 }

; Function Attrs: nounwind uwtable
define void @jinit_marker_writer(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %marker = alloca %struct.my_marker_writer*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.my_marker_writer** %marker to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 1
  %2 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !5
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %2, i32 0, i32 0
  %3 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !10
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %5 = bitcast %struct.jpeg_compress_struct* %4 to %struct.jpeg_common_struct*
  %call = call i8* %3(%struct.jpeg_common_struct* %5, i32 1, i64 64) #2
  %6 = bitcast i8* %call to %struct.my_marker_writer*
  store %struct.my_marker_writer* %6, %struct.my_marker_writer** %marker, align 8, !tbaa !1
  %7 = load %struct.my_marker_writer*, %struct.my_marker_writer** %marker, align 8, !tbaa !1
  %pub = getelementptr inbounds %struct.my_marker_writer, %struct.my_marker_writer* %7, i32 0, i32 0
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %marker1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 70
  store %struct.jpeg_marker_writer* %pub, %struct.jpeg_marker_writer** %marker1, align 8, !tbaa !13
  %9 = load %struct.my_marker_writer*, %struct.my_marker_writer** %marker, align 8, !tbaa !1
  %pub2 = getelementptr inbounds %struct.my_marker_writer, %struct.my_marker_writer* %9, i32 0, i32 0
  %write_file_header = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %pub2, i32 0, i32 0
  %write_file_header3 = bitcast {}** %write_file_header to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @write_file_header, void (%struct.jpeg_compress_struct*)** %write_file_header3, align 8, !tbaa !14
  %10 = load %struct.my_marker_writer*, %struct.my_marker_writer** %marker, align 8, !tbaa !1
  %pub4 = getelementptr inbounds %struct.my_marker_writer, %struct.my_marker_writer* %10, i32 0, i32 0
  %write_frame_header = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %pub4, i32 0, i32 1
  %write_frame_header5 = bitcast {}** %write_frame_header to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @write_frame_header, void (%struct.jpeg_compress_struct*)** %write_frame_header5, align 8, !tbaa !17
  %11 = load %struct.my_marker_writer*, %struct.my_marker_writer** %marker, align 8, !tbaa !1
  %pub6 = getelementptr inbounds %struct.my_marker_writer, %struct.my_marker_writer* %11, i32 0, i32 0
  %write_scan_header = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %pub6, i32 0, i32 2
  %write_scan_header7 = bitcast {}** %write_scan_header to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @write_scan_header, void (%struct.jpeg_compress_struct*)** %write_scan_header7, align 8, !tbaa !18
  %12 = load %struct.my_marker_writer*, %struct.my_marker_writer** %marker, align 8, !tbaa !1
  %pub8 = getelementptr inbounds %struct.my_marker_writer, %struct.my_marker_writer* %12, i32 0, i32 0
  %write_file_trailer = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %pub8, i32 0, i32 3
  %write_file_trailer9 = bitcast {}** %write_file_trailer to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @write_file_trailer, void (%struct.jpeg_compress_struct*)** %write_file_trailer9, align 8, !tbaa !19
  %13 = load %struct.my_marker_writer*, %struct.my_marker_writer** %marker, align 8, !tbaa !1
  %pub10 = getelementptr inbounds %struct.my_marker_writer, %struct.my_marker_writer* %13, i32 0, i32 0
  %write_tables_only = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %pub10, i32 0, i32 4
  %write_tables_only11 = bitcast {}** %write_tables_only to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @write_tables_only, void (%struct.jpeg_compress_struct*)** %write_tables_only11, align 8, !tbaa !20
  %14 = load %struct.my_marker_writer*, %struct.my_marker_writer** %marker, align 8, !tbaa !1
  %pub12 = getelementptr inbounds %struct.my_marker_writer, %struct.my_marker_writer* %14, i32 0, i32 0
  %write_marker_header = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %pub12, i32 0, i32 5
  store void (%struct.jpeg_compress_struct*, i32, i32)* @write_marker_header, void (%struct.jpeg_compress_struct*, i32, i32)** %write_marker_header, align 8, !tbaa !21
  %15 = load %struct.my_marker_writer*, %struct.my_marker_writer** %marker, align 8, !tbaa !1
  %pub13 = getelementptr inbounds %struct.my_marker_writer, %struct.my_marker_writer* %15, i32 0, i32 0
  %write_marker_byte = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %pub13, i32 0, i32 6
  store void (%struct.jpeg_compress_struct*, i32)* @write_marker_byte, void (%struct.jpeg_compress_struct*, i32)** %write_marker_byte, align 8, !tbaa !22
  %16 = load %struct.my_marker_writer*, %struct.my_marker_writer** %marker, align 8, !tbaa !1
  %last_restart_interval = getelementptr inbounds %struct.my_marker_writer, %struct.my_marker_writer* %16, i32 0, i32 1
  store i32 0, i32* %last_restart_interval, align 4, !tbaa !23
  %17 = bitcast %struct.my_marker_writer** %marker to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @write_file_header(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %marker = alloca %struct.my_marker_writer*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.my_marker_writer** %marker to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %marker1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 70
  %2 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %marker1, align 8, !tbaa !13
  %3 = bitcast %struct.jpeg_marker_writer* %2 to %struct.my_marker_writer*
  store %struct.my_marker_writer* %3, %struct.my_marker_writer** %marker, align 8, !tbaa !1
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_marker(%struct.jpeg_compress_struct* %4, i32 216) #2
  %5 = load %struct.my_marker_writer*, %struct.my_marker_writer** %marker, align 8, !tbaa !1
  %last_restart_interval = getelementptr inbounds %struct.my_marker_writer, %struct.my_marker_writer* %5, i32 0, i32 1
  store i32 0, i32* %last_restart_interval, align 4, !tbaa !23
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %write_JFIF_header = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 38
  %7 = load i32, i32* %write_JFIF_header, align 4, !tbaa !24
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_jfif_app0(%struct.jpeg_compress_struct* %8) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %write_Adobe_marker = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 44
  %10 = load i32, i32* %write_Adobe_marker, align 4, !tbaa !25
  %tobool2 = icmp ne i32 %10, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_adobe_app14(%struct.jpeg_compress_struct* %11) #2
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %12 = bitcast %struct.my_marker_writer** %marker to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @write_frame_header(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %ci = alloca i32, align 4
  %prec = alloca i32, align 4
  %is_baseline = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %prec to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %is_baseline to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i32 0, i32* %prec, align 4, !tbaa !26
  store i32 0, i32* %ci, align 4, !tbaa !26
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 19
  %5 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !27
  store %struct.jpeg_component_info* %5, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %ci, align 4, !tbaa !26
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 17
  %8 = load i32, i32* %num_components, align 4, !tbaa !28
  %cmp = icmp slt i32 %6, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %10 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %quant_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %10, i32 0, i32 4
  %11 = load i32, i32* %quant_tbl_no, align 4, !tbaa !29
  %call = call i32 @emit_dqt(%struct.jpeg_compress_struct* %9, i32 %11) #2
  %12 = load i32, i32* %prec, align 4, !tbaa !26
  %add = add nsw i32 %12, %call
  store i32 %add, i32* %prec, align 4, !tbaa !26
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %ci, align 4, !tbaa !26
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !26
  %14 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %14, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %arith_code = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %15, i32 0, i32 30
  %16 = load i32, i32* %arith_code, align 4, !tbaa !31
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %progressive_mode = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 47
  %18 = load i32, i32* %progressive_mode, align 4, !tbaa !32
  %tobool1 = icmp ne i32 %18, 0
  br i1 %tobool1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %data_precision = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %19, i32 0, i32 16
  %20 = load i32, i32* %data_precision, align 4, !tbaa !33
  %cmp3 = icmp ne i32 %20, 8
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false.2
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 63
  %22 = load i32, i32* %block_size, align 4, !tbaa !34
  %cmp5 = icmp ne i32 %22, 8
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.4, %lor.lhs.false.2, %lor.lhs.false, %for.end
  store i32 0, i32* %is_baseline, align 4, !tbaa !35
  br label %if.end.24

if.else:                                          ; preds = %lor.lhs.false.4
  store i32 1, i32* %is_baseline, align 4, !tbaa !35
  store i32 0, i32* %ci, align 4, !tbaa !26
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %23, i32 0, i32 19
  %24 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info6, align 8, !tbaa !27
  store %struct.jpeg_component_info* %24, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.15, %if.else
  %25 = load i32, i32* %ci, align 4, !tbaa !26
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components8 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %26, i32 0, i32 17
  %27 = load i32, i32* %num_components8, align 4, !tbaa !28
  %cmp9 = icmp slt i32 %25, %27
  br i1 %cmp9, label %for.body.10, label %for.end.18

for.body.10:                                      ; preds = %for.cond.7
  %28 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %28, i32 0, i32 5
  %29 = load i32, i32* %dc_tbl_no, align 4, !tbaa !36
  %cmp11 = icmp sgt i32 %29, 1
  br i1 %cmp11, label %if.then.14, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %for.body.10
  %30 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %30, i32 0, i32 6
  %31 = load i32, i32* %ac_tbl_no, align 4, !tbaa !37
  %cmp13 = icmp sgt i32 %31, 1
  br i1 %cmp13, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %lor.lhs.false.12, %for.body.10
  store i32 0, i32* %is_baseline, align 4, !tbaa !35
  br label %if.end

if.end:                                           ; preds = %if.then.14, %lor.lhs.false.12
  br label %for.inc.15

for.inc.15:                                       ; preds = %if.end
  %32 = load i32, i32* %ci, align 4, !tbaa !26
  %inc16 = add nsw i32 %32, 1
  store i32 %inc16, i32* %ci, align 4, !tbaa !26
  %33 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %incdec.ptr17 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %33, i32 1
  store %struct.jpeg_component_info* %incdec.ptr17, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  br label %for.cond.7

for.end.18:                                       ; preds = %for.cond.7
  %34 = load i32, i32* %prec, align 4, !tbaa !26
  %tobool19 = icmp ne i32 %34, 0
  br i1 %tobool19, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %for.end.18
  %35 = load i32, i32* %is_baseline, align 4, !tbaa !35
  %tobool20 = icmp ne i32 %35, 0
  br i1 %tobool20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %land.lhs.true
  store i32 0, i32* %is_baseline, align 4, !tbaa !35
  %36 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %36, i32 0, i32 0
  %37 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !38
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %37, i32 0, i32 5
  store i32 77, i32* %msg_code, align 4, !tbaa !39
  %38 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err22 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %38, i32 0, i32 0
  %39 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err22, align 8, !tbaa !38
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %39, i32 0, i32 1
  %40 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !41
  %41 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %42 = bitcast %struct.jpeg_compress_struct* %41 to %struct.jpeg_common_struct*
  call void %40(%struct.jpeg_common_struct* %42, i32 0) #2
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %land.lhs.true, %for.end.18
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then
  %43 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %arith_code25 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %43, i32 0, i32 30
  %44 = load i32, i32* %arith_code25, align 4, !tbaa !31
  %tobool26 = icmp ne i32 %44, 0
  br i1 %tobool26, label %if.then.27, label %if.else.33

if.then.27:                                       ; preds = %if.end.24
  %45 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %progressive_mode28 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %45, i32 0, i32 47
  %46 = load i32, i32* %progressive_mode28, align 4, !tbaa !32
  %tobool29 = icmp ne i32 %46, 0
  br i1 %tobool29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %if.then.27
  %47 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_sof(%struct.jpeg_compress_struct* %47, i32 202) #2
  br label %if.end.32

if.else.31:                                       ; preds = %if.then.27
  %48 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_sof(%struct.jpeg_compress_struct* %48, i32 201) #2
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.31, %if.then.30
  br label %if.end.43

if.else.33:                                       ; preds = %if.end.24
  %49 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %progressive_mode34 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %49, i32 0, i32 47
  %50 = load i32, i32* %progressive_mode34, align 4, !tbaa !32
  %tobool35 = icmp ne i32 %50, 0
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.else.33
  %51 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_sof(%struct.jpeg_compress_struct* %51, i32 194) #2
  br label %if.end.42

if.else.37:                                       ; preds = %if.else.33
  %52 = load i32, i32* %is_baseline, align 4, !tbaa !35
  %tobool38 = icmp ne i32 %52, 0
  br i1 %tobool38, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %if.else.37
  %53 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_sof(%struct.jpeg_compress_struct* %53, i32 192) #2
  br label %if.end.41

if.else.40:                                       ; preds = %if.else.37
  %54 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_sof(%struct.jpeg_compress_struct* %54, i32 193) #2
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.40, %if.then.39
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.36
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.end.32
  %55 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %color_transform = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %55, i32 0, i32 45
  %56 = load i32, i32* %color_transform, align 4, !tbaa !42
  %tobool44 = icmp ne i32 %56, 0
  br i1 %tobool44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.43
  %57 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_lse_ict(%struct.jpeg_compress_struct* %57) #2
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %if.end.43
  %58 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %progressive_mode47 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %58, i32 0, i32 47
  %59 = load i32, i32* %progressive_mode47, align 4, !tbaa !32
  %tobool48 = icmp ne i32 %59, 0
  br i1 %tobool48, label %land.lhs.true.49, label %if.end.53

land.lhs.true.49:                                 ; preds = %if.end.46
  %60 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size50 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %60, i32 0, i32 63
  %61 = load i32, i32* %block_size50, align 4, !tbaa !34
  %cmp51 = icmp ne i32 %61, 8
  br i1 %cmp51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %land.lhs.true.49
  %62 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_pseudo_sos(%struct.jpeg_compress_struct* %62) #2
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %land.lhs.true.49, %if.end.46
  %63 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = bitcast i32* %is_baseline to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast i32* %prec to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @write_scan_header(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %marker = alloca %struct.my_marker_writer*, align 8
  %i = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.my_marker_writer** %marker to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %marker1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 70
  %2 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %marker1, align 8, !tbaa !13
  %3 = bitcast %struct.jpeg_marker_writer* %2 to %struct.my_marker_writer*
  store %struct.my_marker_writer* %3, %struct.my_marker_writer** %marker, align 8, !tbaa !1
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %arith_code = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 30
  %7 = load i32, i32* %arith_code, align 4, !tbaa !31
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_dac(%struct.jpeg_compress_struct* %8) #2
  br label %if.end.8

if.else:                                          ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !26
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %9 = load i32, i32* %i, align 4, !tbaa !26
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 53
  %11 = load i32, i32* %comps_in_scan, align 4, !tbaa !43
  %cmp = icmp slt i32 %9, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4, !tbaa !26
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 54
  %arrayidx = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom
  %14 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx, align 8, !tbaa !1
  store %struct.jpeg_component_info* %14, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ss = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %15, i32 0, i32 59
  %16 = load i32, i32* %Ss, align 4, !tbaa !44
  %cmp2 = icmp eq i32 %16, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ah = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 61
  %18 = load i32, i32* %Ah, align 4, !tbaa !45
  %cmp3 = icmp eq i32 %18, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %land.lhs.true
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %20 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %20, i32 0, i32 5
  %21 = load i32, i32* %dc_tbl_no, align 4, !tbaa !36
  call void @emit_dht(%struct.jpeg_compress_struct* %19, i32 %21, i32 0) #2
  br label %if.end

if.end:                                           ; preds = %if.then.4, %land.lhs.true, %for.body
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Se = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %22, i32 0, i32 60
  %23 = load i32, i32* %Se, align 4, !tbaa !46
  %tobool5 = icmp ne i32 %23, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %25 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %25, i32 0, i32 6
  %26 = load i32, i32* %ac_tbl_no, align 4, !tbaa !37
  call void @emit_dht(%struct.jpeg_compress_struct* %24, i32 %26, i32 1) #2
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.7
  %27 = load i32, i32* %i, align 4, !tbaa !26
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4, !tbaa !26
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.8

if.end.8:                                         ; preds = %for.end, %if.then
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %28, i32 0, i32 36
  %29 = load i32, i32* %restart_interval, align 4, !tbaa !47
  %30 = load %struct.my_marker_writer*, %struct.my_marker_writer** %marker, align 8, !tbaa !1
  %last_restart_interval = getelementptr inbounds %struct.my_marker_writer, %struct.my_marker_writer* %30, i32 0, i32 1
  %31 = load i32, i32* %last_restart_interval, align 4, !tbaa !23
  %cmp9 = icmp ne i32 %29, %31
  br i1 %cmp9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.end.8
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_dri(%struct.jpeg_compress_struct* %32) #2
  %33 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %restart_interval11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %33, i32 0, i32 36
  %34 = load i32, i32* %restart_interval11, align 4, !tbaa !47
  %35 = load %struct.my_marker_writer*, %struct.my_marker_writer** %marker, align 8, !tbaa !1
  %last_restart_interval12 = getelementptr inbounds %struct.my_marker_writer, %struct.my_marker_writer* %35, i32 0, i32 1
  store i32 %34, i32* %last_restart_interval12, align 4, !tbaa !23
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %if.end.8
  %36 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_sos(%struct.jpeg_compress_struct* %36) #2
  %37 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast %struct.my_marker_writer** %marker to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @write_file_trailer(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_marker(%struct.jpeg_compress_struct* %0, i32 217) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @write_tables_only(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %i = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_marker(%struct.jpeg_compress_struct* %1, i32 216) #2
  store i32 0, i32* %i, align 4, !tbaa !26
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !26
  %cmp = icmp slt i32 %2, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !tbaa !26
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %quant_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 20
  %arrayidx = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %quant_tbl_ptrs, i32 0, i64 %idxprom
  %5 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %arrayidx, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.JQUANT_TBL* %5, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %7 = load i32, i32* %i, align 4, !tbaa !26
  %call = call i32 @emit_dqt(%struct.jpeg_compress_struct* %6, i32 %7) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4, !tbaa !26
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4, !tbaa !26
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %arith_code = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 30
  %10 = load i32, i32* %arith_code, align 4, !tbaa !31
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.end.19, label %if.then.2

if.then.2:                                        ; preds = %for.end
  store i32 0, i32* %i, align 4, !tbaa !26
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.16, %if.then.2
  %11 = load i32, i32* %i, align 4, !tbaa !26
  %cmp4 = icmp slt i32 %11, 4
  br i1 %cmp4, label %for.body.5, label %for.end.18

for.body.5:                                       ; preds = %for.cond.3
  %12 = load i32, i32* %i, align 4, !tbaa !26
  %idxprom6 = sext i32 %12 to i64
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %dc_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 22
  %arrayidx7 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %dc_huff_tbl_ptrs, i32 0, i64 %idxprom6
  %14 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx7, align 8, !tbaa !1
  %cmp8 = icmp ne %struct.JHUFF_TBL* %14, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %for.body.5
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %16 = load i32, i32* %i, align 4, !tbaa !26
  call void @emit_dht(%struct.jpeg_compress_struct* %15, i32 %16, i32 0) #2
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %for.body.5
  %17 = load i32, i32* %i, align 4, !tbaa !26
  %idxprom11 = sext i32 %17 to i64
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %ac_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 23
  %arrayidx12 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %ac_huff_tbl_ptrs, i32 0, i64 %idxprom11
  %19 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx12, align 8, !tbaa !1
  %cmp13 = icmp ne %struct.JHUFF_TBL* %19, null
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.10
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %21 = load i32, i32* %i, align 4, !tbaa !26
  call void @emit_dht(%struct.jpeg_compress_struct* %20, i32 %21, i32 1) #2
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.10
  br label %for.inc.16

for.inc.16:                                       ; preds = %if.end.15
  %22 = load i32, i32* %i, align 4, !tbaa !26
  %inc17 = add nsw i32 %22, 1
  store i32 %inc17, i32* %i, align 4, !tbaa !26
  br label %for.cond.3

for.end.18:                                       ; preds = %for.cond.3
  br label %if.end.19

if.end.19:                                        ; preds = %for.end.18, %for.end
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_marker(%struct.jpeg_compress_struct* %23, i32 217) #2
  %24 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @write_marker_header(%struct.jpeg_compress_struct* %cinfo, i32 %marker, i32 %datalen) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %marker.addr = alloca i32, align 4
  %datalen.addr = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store i32 %marker, i32* %marker.addr, align 4, !tbaa !26
  store i32 %datalen, i32* %datalen.addr, align 4, !tbaa !26
  %0 = load i32, i32* %datalen.addr, align 4, !tbaa !26
  %cmp = icmp ugt i32 %0, 65533
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 0
  %2 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !38
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %2, i32 0, i32 5
  store i32 12, i32* %msg_code, align 4, !tbaa !39
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i32 0, i32 0
  %4 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err1, align 8, !tbaa !38
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %4, i32 0, i32 0
  %5 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !48
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %7 = bitcast %struct.jpeg_compress_struct* %6 to %struct.jpeg_common_struct*
  call void %5(%struct.jpeg_common_struct* %7) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %9 = load i32, i32* %marker.addr, align 4, !tbaa !26
  call void @emit_marker(%struct.jpeg_compress_struct* %8, i32 %9) #2
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %11 = load i32, i32* %datalen.addr, align 4, !tbaa !26
  %add = add i32 %11, 2
  call void @emit_2bytes(%struct.jpeg_compress_struct* %10, i32 %add) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @write_marker_byte(%struct.jpeg_compress_struct* %cinfo, i32 %val) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %val.addr = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store i32 %val, i32* %val.addr, align 4, !tbaa !26
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %1 = load i32, i32* %val.addr, align 4, !tbaa !26
  call void @emit_byte(%struct.jpeg_compress_struct* %0, i32 %1) #2
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @emit_marker(%struct.jpeg_compress_struct* %cinfo, i32 %mark) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %mark.addr = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store i32 %mark, i32* %mark.addr, align 4, !tbaa !35
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_byte(%struct.jpeg_compress_struct* %0, i32 255) #2
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %2 = load i32, i32* %mark.addr, align 4, !tbaa !35
  call void @emit_byte(%struct.jpeg_compress_struct* %1, i32 %2) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emit_jfif_app0(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_marker(%struct.jpeg_compress_struct* %0, i32 224) #2
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_2bytes(%struct.jpeg_compress_struct* %1, i32 16) #2
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_byte(%struct.jpeg_compress_struct* %2, i32 74) #2
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_byte(%struct.jpeg_compress_struct* %3, i32 70) #2
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_byte(%struct.jpeg_compress_struct* %4, i32 73) #2
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_byte(%struct.jpeg_compress_struct* %5, i32 70) #2
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_byte(%struct.jpeg_compress_struct* %6, i32 0) #2
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %JFIF_major_version = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 39
  %9 = load i8, i8* %JFIF_major_version, align 1, !tbaa !49
  %conv = zext i8 %9 to i32
  call void @emit_byte(%struct.jpeg_compress_struct* %7, i32 %conv) #2
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %JFIF_minor_version = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 40
  %12 = load i8, i8* %JFIF_minor_version, align 1, !tbaa !50
  %conv1 = zext i8 %12 to i32
  call void @emit_byte(%struct.jpeg_compress_struct* %10, i32 %conv1) #2
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %density_unit = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 41
  %15 = load i8, i8* %density_unit, align 1, !tbaa !51
  %conv2 = zext i8 %15 to i32
  call void @emit_byte(%struct.jpeg_compress_struct* %13, i32 %conv2) #2
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %X_density = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 42
  %18 = load i16, i16* %X_density, align 2, !tbaa !52
  %conv3 = zext i16 %18 to i32
  call void @emit_2bytes(%struct.jpeg_compress_struct* %16, i32 %conv3) #2
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Y_density = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 43
  %21 = load i16, i16* %Y_density, align 2, !tbaa !53
  %conv4 = zext i16 %21 to i32
  call void @emit_2bytes(%struct.jpeg_compress_struct* %19, i32 %conv4) #2
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_byte(%struct.jpeg_compress_struct* %22, i32 0) #2
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_byte(%struct.jpeg_compress_struct* %23, i32 0) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emit_adobe_app14(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_marker(%struct.jpeg_compress_struct* %0, i32 238) #2
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_2bytes(%struct.jpeg_compress_struct* %1, i32 14) #2
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_byte(%struct.jpeg_compress_struct* %2, i32 65) #2
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_byte(%struct.jpeg_compress_struct* %3, i32 100) #2
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_byte(%struct.jpeg_compress_struct* %4, i32 111) #2
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_byte(%struct.jpeg_compress_struct* %5, i32 98) #2
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_byte(%struct.jpeg_compress_struct* %6, i32 101) #2
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_2bytes(%struct.jpeg_compress_struct* %7, i32 100) #2
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_2bytes(%struct.jpeg_compress_struct* %8, i32 0) #2
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_2bytes(%struct.jpeg_compress_struct* %9, i32 0) #2
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_color_space = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 18
  %11 = load i32, i32* %jpeg_color_space, align 4, !tbaa !54
  switch i32 %11, label %sw.default [
    i32 3, label %sw.bb
    i32 5, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_byte(%struct.jpeg_compress_struct* %12, i32 1) #2
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_byte(%struct.jpeg_compress_struct* %13, i32 2) #2
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_byte(%struct.jpeg_compress_struct* %14, i32 0) #2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.1, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emit_byte(%struct.jpeg_compress_struct* %cinfo, i32 %val) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %val.addr = alloca i32, align 4
  %dest = alloca %struct.jpeg_destination_mgr*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store i32 %val, i32* %val.addr, align 4, !tbaa !26
  %0 = bitcast %struct.jpeg_destination_mgr** %dest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %dest1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 6
  %2 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest1, align 8, !tbaa !55
  store %struct.jpeg_destination_mgr* %2, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !1
  %3 = load i32, i32* %val.addr, align 4, !tbaa !26
  %conv = trunc i32 %3 to i8
  %4 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !1
  %next_output_byte = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %4, i32 0, i32 0
  %5 = load i8*, i8** %next_output_byte, align 8, !tbaa !56
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %next_output_byte, align 8, !tbaa !56
  store i8 %conv, i8* %5, align 1, !tbaa !35
  %6 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !1
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %6, i32 0, i32 1
  %7 = load i64, i64* %free_in_buffer, align 8, !tbaa !58
  %dec = add i64 %7, -1
  store i64 %dec, i64* %free_in_buffer, align 8, !tbaa !58
  %cmp = icmp eq i64 %dec, 0
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %8 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !1
  %empty_output_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %8, i32 0, i32 3
  %9 = load i32 (%struct.jpeg_compress_struct*)*, i32 (%struct.jpeg_compress_struct*)** %empty_output_buffer, align 8, !tbaa !59
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %call = call i32 %9(%struct.jpeg_compress_struct* %10) #2
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 0
  %12 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !38
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %12, i32 0, i32 5
  store i32 25, i32* %msg_code, align 4, !tbaa !39
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 0
  %14 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8, !tbaa !38
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %14, i32 0, i32 0
  %15 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !48
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %17 = bitcast %struct.jpeg_compress_struct* %16 to %struct.jpeg_common_struct*
  call void %15(%struct.jpeg_common_struct* %17) #2
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %18 = bitcast %struct.jpeg_destination_mgr** %dest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emit_2bytes(%struct.jpeg_compress_struct* %cinfo, i32 %value) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %value.addr = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store i32 %value, i32* %value.addr, align 4, !tbaa !26
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %1 = load i32, i32* %value.addr, align 4, !tbaa !26
  %shr = ashr i32 %1, 8
  %and = and i32 %shr, 255
  call void @emit_byte(%struct.jpeg_compress_struct* %0, i32 %and) #2
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %3 = load i32, i32* %value.addr, align 4, !tbaa !26
  %and1 = and i32 %3, 255
  call void @emit_byte(%struct.jpeg_compress_struct* %2, i32 %and1) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @emit_dqt(%struct.jpeg_compress_struct* %cinfo, i32 %index) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %index.addr = alloca i32, align 4
  %qtbl = alloca %struct.JQUANT_TBL*, align 8
  %prec = alloca i32, align 4
  %i = alloca i32, align 4
  %qval = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store i32 %index, i32* %index.addr, align 4, !tbaa !26
  %0 = bitcast %struct.JQUANT_TBL** %qtbl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i32, i32* %index.addr, align 4, !tbaa !26
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %quant_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %2, i32 0, i32 20
  %arrayidx = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %quant_tbl_ptrs, i32 0, i64 %idxprom
  %3 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %arrayidx, align 8, !tbaa !1
  store %struct.JQUANT_TBL* %3, %struct.JQUANT_TBL** %qtbl, align 8, !tbaa !1
  %4 = bitcast i32* %prec to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %qtbl, align 8, !tbaa !1
  %cmp = icmp eq %struct.JQUANT_TBL* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 0
  %8 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !38
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %8, i32 0, i32 5
  store i32 54, i32* %msg_code, align 4, !tbaa !39
  %9 = load i32, i32* %index.addr, align 4, !tbaa !26
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err1, align 8, !tbaa !38
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i32 0, i32 6
  %i2 = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx3 = getelementptr inbounds [8 x i32], [8 x i32]* %i2, i32 0, i64 0
  store i32 %9, i32* %arrayidx3, align 4, !tbaa !26
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %12, i32 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8, !tbaa !38
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i32 0, i32 0
  %14 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !48
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %16 = bitcast %struct.jpeg_compress_struct* %15 to %struct.jpeg_common_struct*
  call void %14(%struct.jpeg_common_struct* %16) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %prec, align 4, !tbaa !26
  store i32 0, i32* %i, align 4, !tbaa !26
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %17 = load i32, i32* %i, align 4, !tbaa !26
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %lim_Se = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 65
  %19 = load i32, i32* %lim_Se, align 4, !tbaa !60
  %cmp5 = icmp sle i32 %17, %19
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %i, align 4, !tbaa !26
  %idxprom6 = sext i32 %20 to i64
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %natural_order = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 64
  %22 = load i32*, i32** %natural_order, align 8, !tbaa !61
  %arrayidx7 = getelementptr inbounds i32, i32* %22, i64 %idxprom6
  %23 = load i32, i32* %arrayidx7, align 4, !tbaa !26
  %idxprom8 = sext i32 %23 to i64
  %24 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %qtbl, align 8, !tbaa !1
  %quantval = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %24, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval, i32 0, i64 %idxprom8
  %25 = load i16, i16* %arrayidx9, align 2, !tbaa !62
  %conv = zext i16 %25 to i32
  %cmp10 = icmp sgt i32 %conv, 255
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %for.body
  store i32 1, i32* %prec, align 4, !tbaa !26
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %26 = load i32, i32* %i, align 4, !tbaa !26
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4, !tbaa !26
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %qtbl, align 8, !tbaa !1
  %sent_table = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %27, i32 0, i32 1
  %28 = load i32, i32* %sent_table, align 4, !tbaa !63
  %tobool = icmp ne i32 %28, 0
  br i1 %tobool, label %if.end.43, label %if.then.14

if.then.14:                                       ; preds = %for.end
  %29 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_marker(%struct.jpeg_compress_struct* %29, i32 219) #2
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %31 = load i32, i32* %prec, align 4, !tbaa !26
  %tobool15 = icmp ne i32 %31, 0
  br i1 %tobool15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.14
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %lim_Se16 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %32, i32 0, i32 65
  %33 = load i32, i32* %lim_Se16, align 4, !tbaa !60
  %mul = mul nsw i32 %33, 2
  %add = add nsw i32 %mul, 2
  %add17 = add nsw i32 %add, 1
  %add18 = add nsw i32 %add17, 2
  br label %cond.end

cond.false:                                       ; preds = %if.then.14
  %34 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %lim_Se19 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %34, i32 0, i32 65
  %35 = load i32, i32* %lim_Se19, align 4, !tbaa !60
  %add20 = add nsw i32 %35, 1
  %add21 = add nsw i32 %add20, 1
  %add22 = add nsw i32 %add21, 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add18, %cond.true ], [ %add22, %cond.false ]
  call void @emit_2bytes(%struct.jpeg_compress_struct* %30, i32 %cond) #2
  %36 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %37 = load i32, i32* %index.addr, align 4, !tbaa !26
  %38 = load i32, i32* %prec, align 4, !tbaa !26
  %shl = shl i32 %38, 4
  %add23 = add nsw i32 %37, %shl
  call void @emit_byte(%struct.jpeg_compress_struct* %36, i32 %add23) #2
  store i32 0, i32* %i, align 4, !tbaa !26
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.39, %cond.end
  %39 = load i32, i32* %i, align 4, !tbaa !26
  %40 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %lim_Se25 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %40, i32 0, i32 65
  %41 = load i32, i32* %lim_Se25, align 4, !tbaa !60
  %cmp26 = icmp sle i32 %39, %41
  br i1 %cmp26, label %for.body.28, label %for.end.41

for.body.28:                                      ; preds = %for.cond.24
  %42 = bitcast i32* %qval to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #1
  %43 = load i32, i32* %i, align 4, !tbaa !26
  %idxprom29 = sext i32 %43 to i64
  %44 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %natural_order30 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %44, i32 0, i32 64
  %45 = load i32*, i32** %natural_order30, align 8, !tbaa !61
  %arrayidx31 = getelementptr inbounds i32, i32* %45, i64 %idxprom29
  %46 = load i32, i32* %arrayidx31, align 4, !tbaa !26
  %idxprom32 = sext i32 %46 to i64
  %47 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %qtbl, align 8, !tbaa !1
  %quantval33 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %47, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval33, i32 0, i64 %idxprom32
  %48 = load i16, i16* %arrayidx34, align 2, !tbaa !62
  %conv35 = zext i16 %48 to i32
  store i32 %conv35, i32* %qval, align 4, !tbaa !26
  %49 = load i32, i32* %prec, align 4, !tbaa !26
  %tobool36 = icmp ne i32 %49, 0
  br i1 %tobool36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %for.body.28
  %50 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %51 = load i32, i32* %qval, align 4, !tbaa !26
  %shr = lshr i32 %51, 8
  call void @emit_byte(%struct.jpeg_compress_struct* %50, i32 %shr) #2
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %for.body.28
  %52 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %53 = load i32, i32* %qval, align 4, !tbaa !26
  %and = and i32 %53, 255
  call void @emit_byte(%struct.jpeg_compress_struct* %52, i32 %and) #2
  %54 = bitcast i32* %qval to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  br label %for.inc.39

for.inc.39:                                       ; preds = %if.end.38
  %55 = load i32, i32* %i, align 4, !tbaa !26
  %inc40 = add nsw i32 %55, 1
  store i32 %inc40, i32* %i, align 4, !tbaa !26
  br label %for.cond.24

for.end.41:                                       ; preds = %for.cond.24
  %56 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %qtbl, align 8, !tbaa !1
  %sent_table42 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %56, i32 0, i32 1
  store i32 1, i32* %sent_table42, align 4, !tbaa !63
  br label %if.end.43

if.end.43:                                        ; preds = %for.end.41, %for.end
  %57 = load i32, i32* %prec, align 4, !tbaa !26
  %58 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast i32* %prec to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = bitcast %struct.JQUANT_TBL** %qtbl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  ret i32 %57
}

; Function Attrs: nounwind uwtable
define internal void @emit_sof(%struct.jpeg_compress_struct* %cinfo, i32 %code) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %code.addr = alloca i32, align 4
  %ci = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store i32 %code, i32* %code.addr, align 4, !tbaa !35
  %0 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %3 = load i32, i32* %code.addr, align 4, !tbaa !35
  call void @emit_marker(%struct.jpeg_compress_struct* %2, i32 %3) #2
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 17
  %6 = load i32, i32* %num_components, align 4, !tbaa !28
  %mul = mul nsw i32 3, %6
  %add = add nsw i32 %mul, 2
  %add1 = add nsw i32 %add, 5
  %add2 = add nsw i32 %add1, 1
  call void @emit_2bytes(%struct.jpeg_compress_struct* %4, i32 %add2) #2
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_height = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 15
  %8 = load i32, i32* %jpeg_height, align 4, !tbaa !65
  %conv = zext i32 %8 to i64
  %cmp = icmp sgt i64 %conv, 65535
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 14
  %10 = load i32, i32* %jpeg_width, align 4, !tbaa !66
  %conv4 = zext i32 %10 to i64
  %cmp5 = icmp sgt i64 %conv4, 65535
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 0
  %12 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !38
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %12, i32 0, i32 5
  store i32 42, i32* %msg_code, align 4, !tbaa !39
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 0
  %14 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err7, align 8, !tbaa !38
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %14, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 65535, i32* %arrayidx, align 4, !tbaa !26
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err8 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %15, i32 0, i32 0
  %16 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err8, align 8, !tbaa !38
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %16, i32 0, i32 0
  %17 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !48
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %19 = bitcast %struct.jpeg_compress_struct* %18 to %struct.jpeg_common_struct*
  call void %17(%struct.jpeg_common_struct* %19) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %data_precision = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 16
  %22 = load i32, i32* %data_precision, align 4, !tbaa !33
  call void @emit_byte(%struct.jpeg_compress_struct* %20, i32 %22) #2
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_height9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %24, i32 0, i32 15
  %25 = load i32, i32* %jpeg_height9, align 4, !tbaa !65
  call void @emit_2bytes(%struct.jpeg_compress_struct* %23, i32 %25) #2
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %27 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_width10 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %27, i32 0, i32 14
  %28 = load i32, i32* %jpeg_width10, align 4, !tbaa !66
  call void @emit_2bytes(%struct.jpeg_compress_struct* %26, i32 %28) #2
  %29 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %30, i32 0, i32 17
  %31 = load i32, i32* %num_components11, align 4, !tbaa !28
  call void @emit_byte(%struct.jpeg_compress_struct* %29, i32 %31) #2
  store i32 0, i32* %ci, align 4, !tbaa !26
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %32, i32 0, i32 19
  %33 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !27
  store %struct.jpeg_component_info* %33, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %34 = load i32, i32* %ci, align 4, !tbaa !26
  %35 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components12 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %35, i32 0, i32 17
  %36 = load i32, i32* %num_components12, align 4, !tbaa !28
  %cmp13 = icmp slt i32 %34, %36
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %37 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %38 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %component_id = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %38, i32 0, i32 0
  %39 = load i32, i32* %component_id, align 4, !tbaa !67
  call void @emit_byte(%struct.jpeg_compress_struct* %37, i32 %39) #2
  %40 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %41 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %41, i32 0, i32 2
  %42 = load i32, i32* %h_samp_factor, align 4, !tbaa !68
  %shl = shl i32 %42, 4
  %43 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %43, i32 0, i32 3
  %44 = load i32, i32* %v_samp_factor, align 4, !tbaa !69
  %add15 = add nsw i32 %shl, %44
  call void @emit_byte(%struct.jpeg_compress_struct* %40, i32 %add15) #2
  %45 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %46 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %quant_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %46, i32 0, i32 4
  %47 = load i32, i32* %quant_tbl_no, align 4, !tbaa !29
  call void @emit_byte(%struct.jpeg_compress_struct* %45, i32 %47) #2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %48 = load i32, i32* %ci, align 4, !tbaa !26
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !26
  %49 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %49, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %50 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emit_lse_ict(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %color_transform = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 45
  %1 = load i32, i32* %color_transform, align 4, !tbaa !42
  %cmp = icmp ne i32 %1, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %2, i32 0, i32 17
  %3 = load i32, i32* %num_components, align 4, !tbaa !28
  %cmp1 = icmp slt i32 %3, 3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 0
  %5 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !38
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %5, i32 0, i32 5
  store i32 28, i32* %msg_code, align 4, !tbaa !39
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 0
  %7 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8, !tbaa !38
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 0
  %8 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !48
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %10 = bitcast %struct.jpeg_compress_struct* %9 to %struct.jpeg_common_struct*
  call void %8(%struct.jpeg_common_struct* %10) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_marker(%struct.jpeg_compress_struct* %11, i32 248) #2
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_2bytes(%struct.jpeg_compress_struct* %12, i32 24) #2
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_byte(%struct.jpeg_compress_struct* %13, i32 13) #2
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_2bytes(%struct.jpeg_compress_struct* %14, i32 255) #2
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_byte(%struct.jpeg_compress_struct* %15, i32 3) #2
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 19
  %18 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !27
  %arrayidx = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %18, i64 1
  %component_id = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx, i32 0, i32 0
  %19 = load i32, i32* %component_id, align 4, !tbaa !67
  call void @emit_byte(%struct.jpeg_compress_struct* %16, i32 %19) #2
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 19
  %22 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info3, align 8, !tbaa !27
  %arrayidx4 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %22, i64 0
  %component_id5 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx4, i32 0, i32 0
  %23 = load i32, i32* %component_id5, align 4, !tbaa !67
  call void @emit_byte(%struct.jpeg_compress_struct* %20, i32 %23) #2
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %25, i32 0, i32 19
  %26 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info6, align 8, !tbaa !27
  %arrayidx7 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %26, i64 2
  %component_id8 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx7, i32 0, i32 0
  %27 = load i32, i32* %component_id8, align 4, !tbaa !67
  call void @emit_byte(%struct.jpeg_compress_struct* %24, i32 %27) #2
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_byte(%struct.jpeg_compress_struct* %28, i32 128) #2
  %29 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_2bytes(%struct.jpeg_compress_struct* %29, i32 0) #2
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_2bytes(%struct.jpeg_compress_struct* %30, i32 0) #2
  %31 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_byte(%struct.jpeg_compress_struct* %31, i32 0) #2
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_2bytes(%struct.jpeg_compress_struct* %32, i32 1) #2
  %33 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_2bytes(%struct.jpeg_compress_struct* %33, i32 0) #2
  %34 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_byte(%struct.jpeg_compress_struct* %34, i32 0) #2
  %35 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_2bytes(%struct.jpeg_compress_struct* %35, i32 1) #2
  %36 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_2bytes(%struct.jpeg_compress_struct* %36, i32 0) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emit_pseudo_sos(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_marker(%struct.jpeg_compress_struct* %0, i32 218) #2
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_2bytes(%struct.jpeg_compress_struct* %1, i32 6) #2
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_byte(%struct.jpeg_compress_struct* %2, i32 0) #2
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_byte(%struct.jpeg_compress_struct* %3, i32 0) #2
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 63
  %6 = load i32, i32* %block_size, align 4, !tbaa !34
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 63
  %8 = load i32, i32* %block_size1, align 4, !tbaa !34
  %mul = mul nsw i32 %6, %8
  %sub = sub nsw i32 %mul, 1
  call void @emit_byte(%struct.jpeg_compress_struct* %4, i32 %sub) #2
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_byte(%struct.jpeg_compress_struct* %9, i32 0) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emit_dac(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %dc_in_use = alloca [16 x i8], align 16
  %ac_in_use = alloca [16 x i8], align 16
  %length = alloca i32, align 4
  %i = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast [16 x i8]* %dc_in_use to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = bitcast [16 x i8]* %ac_in_use to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #1
  %2 = bitcast i32* %length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i32 0, i32* %i, align 4, !tbaa !26
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !tbaa !26
  %cmp = icmp slt i32 %5, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !tbaa !26
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %ac_in_use, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !35
  %7 = load i32, i32* %i, align 4, !tbaa !26
  %idxprom1 = sext i32 %7 to i64
  %arrayidx2 = getelementptr inbounds [16 x i8], [16 x i8]* %dc_in_use, i32 0, i64 %idxprom1
  store i8 0, i8* %arrayidx2, align 1, !tbaa !35
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !tbaa !26
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4, !tbaa !26
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !26
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.16, %for.end
  %9 = load i32, i32* %i, align 4, !tbaa !26
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 53
  %11 = load i32, i32* %comps_in_scan, align 4, !tbaa !43
  %cmp4 = icmp slt i32 %9, %11
  br i1 %cmp4, label %for.body.5, label %for.end.18

for.body.5:                                       ; preds = %for.cond.3
  %12 = load i32, i32* %i, align 4, !tbaa !26
  %idxprom6 = sext i32 %12 to i64
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 54
  %arrayidx7 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom6
  %14 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx7, align 8, !tbaa !1
  store %struct.jpeg_component_info* %14, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ss = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %15, i32 0, i32 59
  %16 = load i32, i32* %Ss, align 4, !tbaa !44
  %cmp8 = icmp eq i32 %16, 0
  br i1 %cmp8, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.5
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ah = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 61
  %18 = load i32, i32* %Ah, align 4, !tbaa !45
  %cmp9 = icmp eq i32 %18, 0
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %19 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %19, i32 0, i32 5
  %20 = load i32, i32* %dc_tbl_no, align 4, !tbaa !36
  %idxprom10 = sext i32 %20 to i64
  %arrayidx11 = getelementptr inbounds [16 x i8], [16 x i8]* %dc_in_use, i32 0, i64 %idxprom10
  store i8 1, i8* %arrayidx11, align 1, !tbaa !35
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body.5
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Se = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 60
  %22 = load i32, i32* %Se, align 4, !tbaa !46
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %if.end
  %23 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %23, i32 0, i32 6
  %24 = load i32, i32* %ac_tbl_no, align 4, !tbaa !37
  %idxprom13 = sext i32 %24 to i64
  %arrayidx14 = getelementptr inbounds [16 x i8], [16 x i8]* %ac_in_use, i32 0, i64 %idxprom13
  store i8 1, i8* %arrayidx14, align 1, !tbaa !35
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %if.end
  br label %for.inc.16

for.inc.16:                                       ; preds = %if.end.15
  %25 = load i32, i32* %i, align 4, !tbaa !26
  %inc17 = add nsw i32 %25, 1
  store i32 %inc17, i32* %i, align 4, !tbaa !26
  br label %for.cond.3

for.end.18:                                       ; preds = %for.cond.3
  store i32 0, i32* %length, align 4, !tbaa !26
  store i32 0, i32* %i, align 4, !tbaa !26
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.28, %for.end.18
  %26 = load i32, i32* %i, align 4, !tbaa !26
  %cmp20 = icmp slt i32 %26, 16
  br i1 %cmp20, label %for.body.21, label %for.end.30

for.body.21:                                      ; preds = %for.cond.19
  %27 = load i32, i32* %i, align 4, !tbaa !26
  %idxprom22 = sext i32 %27 to i64
  %arrayidx23 = getelementptr inbounds [16 x i8], [16 x i8]* %dc_in_use, i32 0, i64 %idxprom22
  %28 = load i8, i8* %arrayidx23, align 1, !tbaa !35
  %conv = sext i8 %28 to i32
  %29 = load i32, i32* %i, align 4, !tbaa !26
  %idxprom24 = sext i32 %29 to i64
  %arrayidx25 = getelementptr inbounds [16 x i8], [16 x i8]* %ac_in_use, i32 0, i64 %idxprom24
  %30 = load i8, i8* %arrayidx25, align 1, !tbaa !35
  %conv26 = sext i8 %30 to i32
  %add = add nsw i32 %conv, %conv26
  %31 = load i32, i32* %length, align 4, !tbaa !26
  %add27 = add nsw i32 %31, %add
  store i32 %add27, i32* %length, align 4, !tbaa !26
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.body.21
  %32 = load i32, i32* %i, align 4, !tbaa !26
  %inc29 = add nsw i32 %32, 1
  store i32 %inc29, i32* %i, align 4, !tbaa !26
  br label %for.cond.19

for.end.30:                                       ; preds = %for.cond.19
  %33 = load i32, i32* %length, align 4, !tbaa !26
  %tobool31 = icmp ne i32 %33, 0
  br i1 %tobool31, label %if.then.32, label %if.end.62

if.then.32:                                       ; preds = %for.end.30
  %34 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_marker(%struct.jpeg_compress_struct* %34, i32 204) #2
  %35 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %36 = load i32, i32* %length, align 4, !tbaa !26
  %mul = mul nsw i32 %36, 2
  %add33 = add nsw i32 %mul, 2
  call void @emit_2bytes(%struct.jpeg_compress_struct* %35, i32 %add33) #2
  store i32 0, i32* %i, align 4, !tbaa !26
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.59, %if.then.32
  %37 = load i32, i32* %i, align 4, !tbaa !26
  %cmp35 = icmp slt i32 %37, 16
  br i1 %cmp35, label %for.body.37, label %for.end.61

for.body.37:                                      ; preds = %for.cond.34
  %38 = load i32, i32* %i, align 4, !tbaa !26
  %idxprom38 = sext i32 %38 to i64
  %arrayidx39 = getelementptr inbounds [16 x i8], [16 x i8]* %dc_in_use, i32 0, i64 %idxprom38
  %39 = load i8, i8* %arrayidx39, align 1, !tbaa !35
  %tobool40 = icmp ne i8 %39, 0
  br i1 %tobool40, label %if.then.41, label %if.end.49

if.then.41:                                       ; preds = %for.body.37
  %40 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %41 = load i32, i32* %i, align 4, !tbaa !26
  call void @emit_byte(%struct.jpeg_compress_struct* %40, i32 %41) #2
  %42 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %43 = load i32, i32* %i, align 4, !tbaa !26
  %idxprom42 = sext i32 %43 to i64
  %44 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %arith_dc_L = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %44, i32 0, i32 24
  %arrayidx43 = getelementptr inbounds [16 x i8], [16 x i8]* %arith_dc_L, i32 0, i64 %idxprom42
  %45 = load i8, i8* %arrayidx43, align 1, !tbaa !35
  %conv44 = zext i8 %45 to i32
  %46 = load i32, i32* %i, align 4, !tbaa !26
  %idxprom45 = sext i32 %46 to i64
  %47 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %arith_dc_U = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %47, i32 0, i32 25
  %arrayidx46 = getelementptr inbounds [16 x i8], [16 x i8]* %arith_dc_U, i32 0, i64 %idxprom45
  %48 = load i8, i8* %arrayidx46, align 1, !tbaa !35
  %conv47 = zext i8 %48 to i32
  %shl = shl i32 %conv47, 4
  %add48 = add nsw i32 %conv44, %shl
  call void @emit_byte(%struct.jpeg_compress_struct* %42, i32 %add48) #2
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.41, %for.body.37
  %49 = load i32, i32* %i, align 4, !tbaa !26
  %idxprom50 = sext i32 %49 to i64
  %arrayidx51 = getelementptr inbounds [16 x i8], [16 x i8]* %ac_in_use, i32 0, i64 %idxprom50
  %50 = load i8, i8* %arrayidx51, align 1, !tbaa !35
  %tobool52 = icmp ne i8 %50, 0
  br i1 %tobool52, label %if.then.53, label %if.end.58

if.then.53:                                       ; preds = %if.end.49
  %51 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %52 = load i32, i32* %i, align 4, !tbaa !26
  %add54 = add nsw i32 %52, 16
  call void @emit_byte(%struct.jpeg_compress_struct* %51, i32 %add54) #2
  %53 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %54 = load i32, i32* %i, align 4, !tbaa !26
  %idxprom55 = sext i32 %54 to i64
  %55 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %arith_ac_K = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %55, i32 0, i32 26
  %arrayidx56 = getelementptr inbounds [16 x i8], [16 x i8]* %arith_ac_K, i32 0, i64 %idxprom55
  %56 = load i8, i8* %arrayidx56, align 1, !tbaa !35
  %conv57 = zext i8 %56 to i32
  call void @emit_byte(%struct.jpeg_compress_struct* %53, i32 %conv57) #2
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.53, %if.end.49
  br label %for.inc.59

for.inc.59:                                       ; preds = %if.end.58
  %57 = load i32, i32* %i, align 4, !tbaa !26
  %inc60 = add nsw i32 %57, 1
  store i32 %inc60, i32* %i, align 4, !tbaa !26
  br label %for.cond.34

for.end.61:                                       ; preds = %for.cond.34
  br label %if.end.62

if.end.62:                                        ; preds = %for.end.61, %for.end.30
  %58 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %59 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = bitcast i32* %length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast [16 x i8]* %ac_in_use to i8*
  call void @llvm.lifetime.end(i64 16, i8* %61) #1
  %62 = bitcast [16 x i8]* %dc_in_use to i8*
  call void @llvm.lifetime.end(i64 16, i8* %62) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emit_dht(%struct.jpeg_compress_struct* %cinfo, i32 %index, i32 %is_ac) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %index.addr = alloca i32, align 4
  %is_ac.addr = alloca i32, align 4
  %htbl = alloca %struct.JHUFF_TBL*, align 8
  %length = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store i32 %index, i32* %index.addr, align 4, !tbaa !26
  store i32 %is_ac, i32* %is_ac.addr, align 4, !tbaa !35
  %0 = bitcast %struct.JHUFF_TBL** %htbl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32, i32* %is_ac.addr, align 4, !tbaa !35
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %index.addr, align 4, !tbaa !26
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %ac_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 23
  %arrayidx = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %ac_huff_tbl_ptrs, i32 0, i64 %idxprom
  %6 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx, align 8, !tbaa !1
  store %struct.JHUFF_TBL* %6, %struct.JHUFF_TBL** %htbl, align 8, !tbaa !1
  %7 = load i32, i32* %index.addr, align 4, !tbaa !26
  %add = add nsw i32 %7, 16
  store i32 %add, i32* %index.addr, align 4, !tbaa !26
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load i32, i32* %index.addr, align 4, !tbaa !26
  %idxprom1 = sext i32 %8 to i64
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %dc_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 22
  %arrayidx2 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %dc_huff_tbl_ptrs, i32 0, i64 %idxprom1
  %10 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx2, align 8, !tbaa !1
  store %struct.JHUFF_TBL* %10, %struct.JHUFF_TBL** %htbl, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl, align 8, !tbaa !1
  %cmp = icmp eq %struct.JHUFF_TBL* %11, null
  br i1 %cmp, label %if.then.3, label %if.end.8

if.then.3:                                        ; preds = %if.end
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %12, i32 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !38
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i32 0, i32 5
  store i32 52, i32* %msg_code, align 4, !tbaa !39
  %14 = load i32, i32* %index.addr, align 4, !tbaa !26
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %15, i32 0, i32 0
  %16 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8, !tbaa !38
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %16, i32 0, i32 6
  %i5 = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx6 = getelementptr inbounds [8 x i32], [8 x i32]* %i5, i32 0, i64 0
  store i32 %14, i32* %arrayidx6, align 4, !tbaa !26
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 0
  %18 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err7, align 8, !tbaa !38
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %18, i32 0, i32 0
  %19 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !48
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %21 = bitcast %struct.jpeg_compress_struct* %20 to %struct.jpeg_common_struct*
  call void %19(%struct.jpeg_common_struct* %21) #2
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.3, %if.end
  %22 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl, align 8, !tbaa !1
  %sent_table = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %22, i32 0, i32 2
  %23 = load i32, i32* %sent_table, align 4, !tbaa !70
  %tobool9 = icmp ne i32 %23, 0
  br i1 %tobool9, label %if.end.40, label %if.then.10

if.then.10:                                       ; preds = %if.end.8
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_marker(%struct.jpeg_compress_struct* %24, i32 196) #2
  store i32 0, i32* %length, align 4, !tbaa !26
  store i32 1, i32* %i, align 4, !tbaa !26
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.10
  %25 = load i32, i32* %i, align 4, !tbaa !26
  %cmp11 = icmp sle i32 %25, 16
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load i32, i32* %i, align 4, !tbaa !26
  %idxprom12 = sext i32 %26 to i64
  %27 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl, align 8, !tbaa !1
  %bits = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %27, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 %idxprom12
  %28 = load i8, i8* %arrayidx13, align 1, !tbaa !35
  %conv = zext i8 %28 to i32
  %29 = load i32, i32* %length, align 4, !tbaa !26
  %add14 = add nsw i32 %29, %conv
  store i32 %add14, i32* %length, align 4, !tbaa !26
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %i, align 4, !tbaa !26
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %i, align 4, !tbaa !26
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %32 = load i32, i32* %length, align 4, !tbaa !26
  %add15 = add nsw i32 %32, 2
  %add16 = add nsw i32 %add15, 1
  %add17 = add nsw i32 %add16, 16
  call void @emit_2bytes(%struct.jpeg_compress_struct* %31, i32 %add17) #2
  %33 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %34 = load i32, i32* %index.addr, align 4, !tbaa !26
  call void @emit_byte(%struct.jpeg_compress_struct* %33, i32 %34) #2
  store i32 1, i32* %i, align 4, !tbaa !26
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.26, %for.end
  %35 = load i32, i32* %i, align 4, !tbaa !26
  %cmp19 = icmp sle i32 %35, 16
  br i1 %cmp19, label %for.body.21, label %for.end.28

for.body.21:                                      ; preds = %for.cond.18
  %36 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %37 = load i32, i32* %i, align 4, !tbaa !26
  %idxprom22 = sext i32 %37 to i64
  %38 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl, align 8, !tbaa !1
  %bits23 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %38, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [17 x i8], [17 x i8]* %bits23, i32 0, i64 %idxprom22
  %39 = load i8, i8* %arrayidx24, align 1, !tbaa !35
  %conv25 = zext i8 %39 to i32
  call void @emit_byte(%struct.jpeg_compress_struct* %36, i32 %conv25) #2
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.body.21
  %40 = load i32, i32* %i, align 4, !tbaa !26
  %inc27 = add nsw i32 %40, 1
  store i32 %inc27, i32* %i, align 4, !tbaa !26
  br label %for.cond.18

for.end.28:                                       ; preds = %for.cond.18
  store i32 0, i32* %i, align 4, !tbaa !26
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.36, %for.end.28
  %41 = load i32, i32* %i, align 4, !tbaa !26
  %42 = load i32, i32* %length, align 4, !tbaa !26
  %cmp30 = icmp slt i32 %41, %42
  br i1 %cmp30, label %for.body.32, label %for.end.38

for.body.32:                                      ; preds = %for.cond.29
  %43 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %44 = load i32, i32* %i, align 4, !tbaa !26
  %idxprom33 = sext i32 %44 to i64
  %45 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl, align 8, !tbaa !1
  %huffval = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %45, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [256 x i8], [256 x i8]* %huffval, i32 0, i64 %idxprom33
  %46 = load i8, i8* %arrayidx34, align 1, !tbaa !35
  %conv35 = zext i8 %46 to i32
  call void @emit_byte(%struct.jpeg_compress_struct* %43, i32 %conv35) #2
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.body.32
  %47 = load i32, i32* %i, align 4, !tbaa !26
  %inc37 = add nsw i32 %47, 1
  store i32 %inc37, i32* %i, align 4, !tbaa !26
  br label %for.cond.29

for.end.38:                                       ; preds = %for.cond.29
  %48 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl, align 8, !tbaa !1
  %sent_table39 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %48, i32 0, i32 2
  store i32 1, i32* %sent_table39, align 4, !tbaa !70
  br label %if.end.40

if.end.40:                                        ; preds = %for.end.38, %if.end.8
  %49 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast i32* %length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = bitcast %struct.JHUFF_TBL** %htbl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emit_dri(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_marker(%struct.jpeg_compress_struct* %0, i32 221) #2
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_2bytes(%struct.jpeg_compress_struct* %1, i32 4) #2
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i32 0, i32 36
  %4 = load i32, i32* %restart_interval, align 4, !tbaa !47
  call void @emit_2bytes(%struct.jpeg_compress_struct* %2, i32 %4) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emit_sos(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %i = alloca i32, align 4
  %td = alloca i32, align 4
  %ta = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %td to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %ta to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @emit_marker(%struct.jpeg_compress_struct* %4, i32 218) #2
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 53
  %7 = load i32, i32* %comps_in_scan, align 4, !tbaa !43
  %mul = mul nsw i32 2, %7
  %add = add nsw i32 %mul, 2
  %add1 = add nsw i32 %add, 1
  %add2 = add nsw i32 %add1, 3
  call void @emit_2bytes(%struct.jpeg_compress_struct* %5, i32 %add2) #2
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comps_in_scan3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 53
  %10 = load i32, i32* %comps_in_scan3, align 4, !tbaa !43
  call void @emit_byte(%struct.jpeg_compress_struct* %8, i32 %10) #2
  store i32 0, i32* %i, align 4, !tbaa !26
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %i, align 4, !tbaa !26
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comps_in_scan4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %12, i32 0, i32 53
  %13 = load i32, i32* %comps_in_scan4, align 4, !tbaa !43
  %cmp = icmp slt i32 %11, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4, !tbaa !26
  %idxprom = sext i32 %14 to i64
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %15, i32 0, i32 54
  %arrayidx = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom
  %16 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx, align 8, !tbaa !1
  store %struct.jpeg_component_info* %16, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %18 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %component_id = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %18, i32 0, i32 0
  %19 = load i32, i32* %component_id, align 4, !tbaa !67
  call void @emit_byte(%struct.jpeg_compress_struct* %17, i32 %19) #2
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ss = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 59
  %21 = load i32, i32* %Ss, align 4, !tbaa !44
  %cmp5 = icmp eq i32 %21, 0
  br i1 %cmp5, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %for.body
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ah = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %22, i32 0, i32 61
  %23 = load i32, i32* %Ah, align 4, !tbaa !45
  %cmp6 = icmp eq i32 %23, 0
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %24 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %24, i32 0, i32 5
  %25 = load i32, i32* %dc_tbl_no, align 4, !tbaa !36
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %25, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %td, align 4, !tbaa !26
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Se = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %26, i32 0, i32 60
  %27 = load i32, i32* %Se, align 4, !tbaa !46
  %tobool = icmp ne i32 %27, 0
  br i1 %tobool, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %cond.end
  %28 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %28, i32 0, i32 6
  %29 = load i32, i32* %ac_tbl_no, align 4, !tbaa !37
  br label %cond.end.9

cond.false.8:                                     ; preds = %cond.end
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.8, %cond.true.7
  %cond10 = phi i32 [ %29, %cond.true.7 ], [ 0, %cond.false.8 ]
  store i32 %cond10, i32* %ta, align 4, !tbaa !26
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %31 = load i32, i32* %td, align 4, !tbaa !26
  %shl = shl i32 %31, 4
  %32 = load i32, i32* %ta, align 4, !tbaa !26
  %add11 = add nsw i32 %shl, %32
  call void @emit_byte(%struct.jpeg_compress_struct* %30, i32 %add11) #2
  br label %for.inc

for.inc:                                          ; preds = %cond.end.9
  %33 = load i32, i32* %i, align 4, !tbaa !26
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %i, align 4, !tbaa !26
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %35 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ss12 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %35, i32 0, i32 59
  %36 = load i32, i32* %Ss12, align 4, !tbaa !44
  call void @emit_byte(%struct.jpeg_compress_struct* %34, i32 %36) #2
  %37 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %38 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Se13 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %38, i32 0, i32 60
  %39 = load i32, i32* %Se13, align 4, !tbaa !46
  call void @emit_byte(%struct.jpeg_compress_struct* %37, i32 %39) #2
  %40 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %41 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ah14 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %41, i32 0, i32 61
  %42 = load i32, i32* %Ah14, align 4, !tbaa !45
  %shl15 = shl i32 %42, 4
  %43 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Al = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %43, i32 0, i32 62
  %44 = load i32, i32* %Al, align 4, !tbaa !72
  %add16 = add nsw i32 %shl15, %44
  call void @emit_byte(%struct.jpeg_compress_struct* %40, i32 %add16) #2
  %45 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = bitcast i32* %ta to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = bitcast i32* %td to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nobuiltin }

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
!13 = !{!6, !2, i64 528}
!14 = !{!15, !2, i64 0}
!15 = !{!"", !16, i64 0, !7, i64 56}
!16 = !{!"jpeg_marker_writer", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!17 = !{!15, !2, i64 8}
!18 = !{!15, !2, i64 16}
!19 = !{!15, !2, i64 24}
!20 = !{!15, !2, i64 32}
!21 = !{!15, !2, i64 40}
!22 = !{!15, !2, i64 48}
!23 = !{!15, !7, i64 56}
!24 = !{!6, !3, i64 324}
!25 = !{!6, !3, i64 336}
!26 = !{!7, !7, i64 0}
!27 = !{!6, !2, i64 104}
!28 = !{!6, !7, i64 92}
!29 = !{!30, !7, i64 16}
!30 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !3, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !2, i64 80, !2, i64 88}
!31 = !{!6, !3, i64 292}
!32 = !{!6, !3, i64 348}
!33 = !{!6, !7, i64 88}
!34 = !{!6, !7, i64 476}
!35 = !{!3, !3, i64 0}
!36 = !{!30, !7, i64 20}
!37 = !{!30, !7, i64 24}
!38 = !{!6, !2, i64 0}
!39 = !{!40, !7, i64 40}
!40 = !{!"jpeg_error_mgr", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !3, i64 44, !7, i64 124, !12, i64 128, !2, i64 136, !7, i64 144, !2, i64 152, !7, i64 160, !7, i64 164}
!41 = !{!40, !2, i64 8}
!42 = !{!6, !3, i64 340}
!43 = !{!6, !7, i64 372}
!44 = !{!6, !7, i64 460}
!45 = !{!6, !7, i64 468}
!46 = !{!6, !7, i64 464}
!47 = !{!6, !7, i64 316}
!48 = !{!40, !2, i64 0}
!49 = !{!6, !3, i64 328}
!50 = !{!6, !3, i64 329}
!51 = !{!6, !3, i64 330}
!52 = !{!6, !9, i64 332}
!53 = !{!6, !9, i64 334}
!54 = !{!6, !3, i64 96}
!55 = !{!6, !2, i64 40}
!56 = !{!57, !2, i64 0}
!57 = !{!"jpeg_destination_mgr", !2, i64 0, !12, i64 8, !2, i64 16, !2, i64 24, !2, i64 32}
!58 = !{!57, !12, i64 8}
!59 = !{!57, !2, i64 24}
!60 = !{!6, !7, i64 488}
!61 = !{!6, !2, i64 480}
!62 = !{!9, !9, i64 0}
!63 = !{!64, !3, i64 128}
!64 = !{!"", !3, i64 0, !3, i64 128}
!65 = !{!6, !7, i64 84}
!66 = !{!6, !7, i64 80}
!67 = !{!30, !7, i64 0}
!68 = !{!30, !7, i64 8}
!69 = !{!30, !7, i64 12}
!70 = !{!71, !3, i64 276}
!71 = !{!"", !3, i64 0, !3, i64 17, !3, i64 276}
!72 = !{!6, !7, i64 472}
