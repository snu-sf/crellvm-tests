; ModuleID = './MultiSource.Benchmarks.MiBench/150.consumer-jpeg.jcmarker.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_compress_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32, %struct.jpeg_destination_mgr*, i32, i32, i32, i32, double, i32, i32, i32, %struct.jpeg_component_info*, [4 x %struct.JQUANT_TBL*], [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*], [16 x i8], [16 x i8], [16 x i8], i32, %struct.jpeg_scan_info*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x %struct.jpeg_component_info*], i32, i32, i32, [10 x i32], i32, i32, i32, i32, %struct.jpeg_comp_master*, %struct.jpeg_c_main_controller*, %struct.jpeg_c_prep_controller*, %struct.jpeg_c_coef_controller*, %struct.jpeg_marker_writer*, %struct.jpeg_color_converter*, %struct.jpeg_downsampler*, %struct.jpeg_forward_dct*, %struct.jpeg_entropy_encoder* }
%struct.jpeg_error_mgr = type { void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i8*)*, void (%struct.jpeg_common_struct*)*, i32, %union.anon, i32, i64, i8**, i32, i8**, i32, i32 }
%struct.jpeg_common_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, {}*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, void (%struct.jpeg_common_struct*, i32)*, {}*, i64 }
%struct.jvirt_sarray_control = type opaque
%struct.jvirt_barray_control = type opaque
%struct.jpeg_progress_mgr = type { {}*, i64, i64, i32, i32 }
%struct.jpeg_destination_mgr = type { i8*, i64, {}*, i32 (%struct.jpeg_compress_struct*)*, {}* }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_scan_info = type { i32, [4 x i32], i32, i32, i32, i32 }
%struct.jpeg_comp_master = type { {}*, {}*, {}*, i32, i32 }
%struct.jpeg_c_main_controller = type { void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i8**, i32*, i32)* }
%struct.jpeg_c_prep_controller = type { void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i8**, i32*, i32, i8***, i32*, i32)* }
%struct.jpeg_c_coef_controller = type { void (%struct.jpeg_compress_struct*, i32)*, i32 (%struct.jpeg_compress_struct*, i8***)* }
%struct.jpeg_marker_writer = type { void (%struct.jpeg_compress_struct*, i32, i8*, i32)*, {}*, {}*, {}*, {}*, {}* }
%struct.jpeg_color_converter = type { {}*, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* }
%struct.jpeg_downsampler = type { {}*, void (%struct.jpeg_compress_struct*, i8***, i32, i8***, i32)*, i32 }
%struct.jpeg_forward_dct = type { {}*, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)* }
%struct.jpeg_entropy_encoder = type { void (%struct.jpeg_compress_struct*, i32)*, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)*, {}* }

@jpeg_natural_order = external constant [0 x i32], align 4

; Function Attrs: nounwind uwtable
define void @jinit_marker_writer(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 1
  %1 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %1, i32 0, i32 0
  %2 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %4 = bitcast %struct.jpeg_compress_struct* %3 to %struct.jpeg_common_struct*
  %call = call i8* %2(%struct.jpeg_common_struct* %4, i32 1, i64 48)
  %5 = bitcast i8* %call to %struct.jpeg_marker_writer*
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %marker = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 55
  store %struct.jpeg_marker_writer* %5, %struct.jpeg_marker_writer** %marker, align 8
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %marker1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 55
  %8 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %marker1, align 8
  %write_any_marker = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %8, i32 0, i32 0
  store void (%struct.jpeg_compress_struct*, i32, i8*, i32)* @write_any_marker, void (%struct.jpeg_compress_struct*, i32, i8*, i32)** %write_any_marker, align 8
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %marker2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 55
  %10 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %marker2, align 8
  %write_file_header = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %10, i32 0, i32 1
  %write_file_header3 = bitcast {}** %write_file_header to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @write_file_header, void (%struct.jpeg_compress_struct*)** %write_file_header3, align 8
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %marker4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 55
  %12 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %marker4, align 8
  %write_frame_header = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %12, i32 0, i32 2
  %write_frame_header5 = bitcast {}** %write_frame_header to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @write_frame_header, void (%struct.jpeg_compress_struct*)** %write_frame_header5, align 8
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %marker6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 55
  %14 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %marker6, align 8
  %write_scan_header = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %14, i32 0, i32 3
  %write_scan_header7 = bitcast {}** %write_scan_header to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @write_scan_header, void (%struct.jpeg_compress_struct*)** %write_scan_header7, align 8
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %marker8 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %15, i32 0, i32 55
  %16 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %marker8, align 8
  %write_file_trailer = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %16, i32 0, i32 4
  %write_file_trailer9 = bitcast {}** %write_file_trailer to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @write_file_trailer, void (%struct.jpeg_compress_struct*)** %write_file_trailer9, align 8
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %marker10 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 55
  %18 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %marker10, align 8
  %write_tables_only = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %18, i32 0, i32 5
  %write_tables_only11 = bitcast {}** %write_tables_only to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @write_tables_only, void (%struct.jpeg_compress_struct*)** %write_tables_only11, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @write_any_marker(%struct.jpeg_compress_struct* %cinfo, i32 %marker, i8* %dataptr, i32 %datalen) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %marker.addr = alloca i32, align 4
  %dataptr.addr = alloca i8*, align 8
  %datalen.addr = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store i32 %marker, i32* %marker.addr, align 4
  store i8* %dataptr, i8** %dataptr.addr, align 8
  store i32 %datalen, i32* %datalen.addr, align 4
  %0 = load i32, i32* %datalen.addr, align 4
  %cmp = icmp ule i32 %0, 65533
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %2 = load i32, i32* %marker.addr, align 4
  call void @emit_marker(%struct.jpeg_compress_struct* %1, i32 %2)
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %4 = load i32, i32* %datalen.addr, align 4
  %add = add i32 %4, 2
  call void @emit_2bytes(%struct.jpeg_compress_struct* %3, i32 %add)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %5 = load i32, i32* %datalen.addr, align 4
  %dec = add i32 %5, -1
  store i32 %dec, i32* %datalen.addr, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %7 = load i8*, i8** %dataptr.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv = zext i8 %8 to i32
  call void @emit_byte(%struct.jpeg_compress_struct* %6, i32 %conv)
  %9 = load i8*, i8** %dataptr.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %dataptr.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @write_file_header(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @emit_marker(%struct.jpeg_compress_struct* %0, i32 216)
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %write_JFIF_header = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 31
  %2 = load i32, i32* %write_JFIF_header, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @emit_jfif_app0(%struct.jpeg_compress_struct* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %write_Adobe_marker = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 35
  %5 = load i32, i32* %write_Adobe_marker, align 4
  %tobool1 = icmp ne i32 %5, 0
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @emit_adobe_app14(%struct.jpeg_compress_struct* %6)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
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
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store i32 0, i32* %prec, align 4
  store i32 0, i32* %ci, align 4
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 14
  %1 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8
  store %struct.jpeg_component_info* %1, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %ci, align 4
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i32 0, i32 12
  %4 = load i32, i32* %num_components, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %6 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %quant_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %6, i32 0, i32 4
  %7 = load i32, i32* %quant_tbl_no, align 4
  %call = call i32 @emit_dqt(%struct.jpeg_compress_struct* %5, i32 %7)
  %8 = load i32, i32* %prec, align 4
  %add = add nsw i32 %8, %call
  store i32 %add, i32* %prec, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %ci, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %ci, align 4
  %10 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %10, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %arith_code = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 24
  %12 = load i32, i32* %arith_code, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %progressive_mode = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 37
  %14 = load i32, i32* %progressive_mode, align 4
  %tobool1 = icmp ne i32 %14, 0
  br i1 %tobool1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %data_precision = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %15, i32 0, i32 11
  %16 = load i32, i32* %data_precision, align 4
  %cmp3 = icmp ne i32 %16, 8
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %for.end
  store i32 0, i32* %is_baseline, align 4
  br label %if.end.22

if.else:                                          ; preds = %lor.lhs.false.2
  store i32 1, i32* %is_baseline, align 4
  store i32 0, i32* %ci, align 4
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %comp_info4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 14
  %18 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info4, align 8
  store %struct.jpeg_component_info* %18, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.13, %if.else
  %19 = load i32, i32* %ci, align 4
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %num_components6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 12
  %21 = load i32, i32* %num_components6, align 4
  %cmp7 = icmp slt i32 %19, %21
  br i1 %cmp7, label %for.body.8, label %for.end.16

for.body.8:                                       ; preds = %for.cond.5
  %22 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %22, i32 0, i32 5
  %23 = load i32, i32* %dc_tbl_no, align 4
  %cmp9 = icmp sgt i32 %23, 1
  br i1 %cmp9, label %if.then.12, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %for.body.8
  %24 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %24, i32 0, i32 6
  %25 = load i32, i32* %ac_tbl_no, align 4
  %cmp11 = icmp sgt i32 %25, 1
  br i1 %cmp11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %lor.lhs.false.10, %for.body.8
  store i32 0, i32* %is_baseline, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.12, %lor.lhs.false.10
  br label %for.inc.13

for.inc.13:                                       ; preds = %if.end
  %26 = load i32, i32* %ci, align 4
  %inc14 = add nsw i32 %26, 1
  store i32 %inc14, i32* %ci, align 4
  %27 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %incdec.ptr15 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %27, i32 1
  store %struct.jpeg_component_info* %incdec.ptr15, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond.5

for.end.16:                                       ; preds = %for.cond.5
  %28 = load i32, i32* %prec, align 4
  %tobool17 = icmp ne i32 %28, 0
  br i1 %tobool17, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %for.end.16
  %29 = load i32, i32* %is_baseline, align 4
  %tobool18 = icmp ne i32 %29, 0
  br i1 %tobool18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %land.lhs.true
  store i32 0, i32* %is_baseline, align 4
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %30, i32 0, i32 0
  %31 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %31, i32 0, i32 5
  store i32 74, i32* %msg_code, align 4
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err20 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %32, i32 0, i32 0
  %33 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err20, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %33, i32 0, i32 1
  %34 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8
  %35 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %36 = bitcast %struct.jpeg_compress_struct* %35 to %struct.jpeg_common_struct*
  call void %34(%struct.jpeg_common_struct* %36, i32 0)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %land.lhs.true, %for.end.16
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then
  %37 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %arith_code23 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %37, i32 0, i32 24
  %38 = load i32, i32* %arith_code23, align 4
  %tobool24 = icmp ne i32 %38, 0
  br i1 %tobool24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %if.end.22
  %39 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @emit_sof(%struct.jpeg_compress_struct* %39, i32 201)
  br label %if.end.36

if.else.26:                                       ; preds = %if.end.22
  %40 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %progressive_mode27 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %40, i32 0, i32 37
  %41 = load i32, i32* %progressive_mode27, align 4
  %tobool28 = icmp ne i32 %41, 0
  br i1 %tobool28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %if.else.26
  %42 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @emit_sof(%struct.jpeg_compress_struct* %42, i32 194)
  br label %if.end.35

if.else.30:                                       ; preds = %if.else.26
  %43 = load i32, i32* %is_baseline, align 4
  %tobool31 = icmp ne i32 %43, 0
  br i1 %tobool31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %if.else.30
  %44 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @emit_sof(%struct.jpeg_compress_struct* %44, i32 192)
  br label %if.end.34

if.else.33:                                       ; preds = %if.else.30
  %45 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @emit_sof(%struct.jpeg_compress_struct* %45, i32 193)
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.33, %if.then.32
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.29
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.25
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @write_scan_header(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %i = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %arith_code = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 24
  %1 = load i32, i32* %arith_code, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @emit_dac(%struct.jpeg_compress_struct* %2)
  br label %if.end.13

if.else:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 41
  %5 = load i32, i32* %comps_in_scan, align 4
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 42
  %arrayidx = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom
  %8 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx, align 8
  store %struct.jpeg_component_info* %8, %struct.jpeg_component_info** %compptr, align 8
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %progressive_mode = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 37
  %10 = load i32, i32* %progressive_mode, align 4
  %tobool1 = icmp ne i32 %10, 0
  br i1 %tobool1, label %if.then.2, label %if.else.9

if.then.2:                                        ; preds = %for.body
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %Ss = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 47
  %12 = load i32, i32* %Ss, align 4
  %cmp3 = icmp eq i32 %12, 0
  br i1 %cmp3, label %if.then.4, label %if.else.7

if.then.4:                                        ; preds = %if.then.2
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %Ah = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 49
  %14 = load i32, i32* %Ah, align 4
  %cmp5 = icmp eq i32 %14, 0
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then.4
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %16 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %16, i32 0, i32 5
  %17 = load i32, i32* %dc_tbl_no, align 4
  call void @emit_dht(%struct.jpeg_compress_struct* %15, i32 %17, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then.4
  br label %if.end.8

if.else.7:                                        ; preds = %if.then.2
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %19 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %19, i32 0, i32 6
  %20 = load i32, i32* %ac_tbl_no, align 4
  call void @emit_dht(%struct.jpeg_compress_struct* %18, i32 %20, i32 1)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else.7, %if.end
  br label %if.end.12

if.else.9:                                        ; preds = %for.body
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %22 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %dc_tbl_no10 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %22, i32 0, i32 5
  %23 = load i32, i32* %dc_tbl_no10, align 4
  call void @emit_dht(%struct.jpeg_compress_struct* %21, i32 %23, i32 0)
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %25 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %ac_tbl_no11 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %25, i32 0, i32 6
  %26 = load i32, i32* %ac_tbl_no11, align 4
  call void @emit_dht(%struct.jpeg_compress_struct* %24, i32 %26, i32 1)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.9, %if.end.8
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %27 = load i32, i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.13

if.end.13:                                        ; preds = %for.end, %if.then
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %28, i32 0, i32 29
  %29 = load i32, i32* %restart_interval, align 4
  %tobool14 = icmp ne i32 %29, 0
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.13
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @emit_dri(%struct.jpeg_compress_struct* %30)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.13
  %31 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @emit_sos(%struct.jpeg_compress_struct* %31)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @write_file_trailer(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @emit_marker(%struct.jpeg_compress_struct* %0, i32 217)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @write_tables_only(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %i = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @emit_marker(%struct.jpeg_compress_struct* %0, i32 216)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %quant_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i32 0, i32 15
  %arrayidx = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %quant_tbl_ptrs, i32 0, i64 %idxprom
  %4 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %arrayidx, align 8
  %cmp1 = icmp ne %struct.JQUANT_TBL* %4, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %6 = load i32, i32* %i, align 4
  %call = call i32 @emit_dqt(%struct.jpeg_compress_struct* %5, i32 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %arith_code = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 24
  %9 = load i32, i32* %arith_code, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.end.19, label %if.then.2

if.then.2:                                        ; preds = %for.end
  store i32 0, i32* %i, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.16, %if.then.2
  %10 = load i32, i32* %i, align 4
  %cmp4 = icmp slt i32 %10, 4
  br i1 %cmp4, label %for.body.5, label %for.end.18

for.body.5:                                       ; preds = %for.cond.3
  %11 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %dc_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %12, i32 0, i32 16
  %arrayidx7 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %dc_huff_tbl_ptrs, i32 0, i64 %idxprom6
  %13 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx7, align 8
  %cmp8 = icmp ne %struct.JHUFF_TBL* %13, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %for.body.5
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %15 = load i32, i32* %i, align 4
  call void @emit_dht(%struct.jpeg_compress_struct* %14, i32 %15, i32 0)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %for.body.5
  %16 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %16 to i64
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %ac_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 17
  %arrayidx12 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %ac_huff_tbl_ptrs, i32 0, i64 %idxprom11
  %18 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx12, align 8
  %cmp13 = icmp ne %struct.JHUFF_TBL* %18, null
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.10
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %20 = load i32, i32* %i, align 4
  call void @emit_dht(%struct.jpeg_compress_struct* %19, i32 %20, i32 1)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.10
  br label %for.inc.16

for.inc.16:                                       ; preds = %if.end.15
  %21 = load i32, i32* %i, align 4
  %inc17 = add nsw i32 %21, 1
  store i32 %inc17, i32* %i, align 4
  br label %for.cond.3

for.end.18:                                       ; preds = %for.cond.3
  br label %if.end.19

if.end.19:                                        ; preds = %for.end.18, %for.end
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @emit_marker(%struct.jpeg_compress_struct* %22, i32 217)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emit_marker(%struct.jpeg_compress_struct* %cinfo, i32 %mark) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %mark.addr = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store i32 %mark, i32* %mark.addr, align 4
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @emit_byte(%struct.jpeg_compress_struct* %0, i32 255)
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %2 = load i32, i32* %mark.addr, align 4
  call void @emit_byte(%struct.jpeg_compress_struct* %1, i32 %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emit_2bytes(%struct.jpeg_compress_struct* %cinfo, i32 %value) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %value.addr = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %1 = load i32, i32* %value.addr, align 4
  %shr = ashr i32 %1, 8
  %and = and i32 %shr, 255
  call void @emit_byte(%struct.jpeg_compress_struct* %0, i32 %and)
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %3 = load i32, i32* %value.addr, align 4
  %and1 = and i32 %3, 255
  call void @emit_byte(%struct.jpeg_compress_struct* %2, i32 %and1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emit_byte(%struct.jpeg_compress_struct* %cinfo, i32 %val) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %val.addr = alloca i32, align 4
  %dest = alloca %struct.jpeg_destination_mgr*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store i32 %val, i32* %val.addr, align 4
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %dest1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 5
  %1 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest1, align 8
  store %struct.jpeg_destination_mgr* %1, %struct.jpeg_destination_mgr** %dest, align 8
  %2 = load i32, i32* %val.addr, align 4
  %conv = trunc i32 %2 to i8
  %3 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8
  %next_output_byte = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %3, i32 0, i32 0
  %4 = load i8*, i8** %next_output_byte, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %next_output_byte, align 8
  store i8 %conv, i8* %4, align 1
  %5 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %5, i32 0, i32 1
  %6 = load i64, i64* %free_in_buffer, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %free_in_buffer, align 8
  %cmp = icmp eq i64 %dec, 0
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %7 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8
  %empty_output_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %7, i32 0, i32 3
  %8 = load i32 (%struct.jpeg_compress_struct*)*, i32 (%struct.jpeg_compress_struct*)** %empty_output_buffer, align 8
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %call = call i32 %8(%struct.jpeg_compress_struct* %9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i32 0, i32 5
  store i32 22, i32* %msg_code, align 4
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %12, i32 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i32 0, i32 0
  %14 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %16 = bitcast %struct.jpeg_compress_struct* %15 to %struct.jpeg_common_struct*
  call void %14(%struct.jpeg_common_struct* %16)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emit_jfif_app0(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @emit_marker(%struct.jpeg_compress_struct* %0, i32 224)
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @emit_2bytes(%struct.jpeg_compress_struct* %1, i32 16)
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @emit_byte(%struct.jpeg_compress_struct* %2, i32 74)
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @emit_byte(%struct.jpeg_compress_struct* %3, i32 70)
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @emit_byte(%struct.jpeg_compress_struct* %4, i32 73)
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @emit_byte(%struct.jpeg_compress_struct* %5, i32 70)
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @emit_byte(%struct.jpeg_compress_struct* %6, i32 0)
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @emit_byte(%struct.jpeg_compress_struct* %7, i32 1)
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @emit_byte(%struct.jpeg_compress_struct* %8, i32 1)
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %density_unit = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 32
  %11 = load i8, i8* %density_unit, align 1
  %conv = zext i8 %11 to i32
  call void @emit_byte(%struct.jpeg_compress_struct* %9, i32 %conv)
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %X_density = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 33
  %14 = load i16, i16* %X_density, align 2
  %conv1 = zext i16 %14 to i32
  call void @emit_2bytes(%struct.jpeg_compress_struct* %12, i32 %conv1)
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %Y_density = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 34
  %17 = load i16, i16* %Y_density, align 2
  %conv2 = zext i16 %17 to i32
  call void @emit_2bytes(%struct.jpeg_compress_struct* %15, i32 %conv2)
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @emit_byte(%struct.jpeg_compress_struct* %18, i32 0)
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @emit_byte(%struct.jpeg_compress_struct* %19, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emit_adobe_app14(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @emit_marker(%struct.jpeg_compress_struct* %0, i32 238)
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @emit_2bytes(%struct.jpeg_compress_struct* %1, i32 14)
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @emit_byte(%struct.jpeg_compress_struct* %2, i32 65)
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @emit_byte(%struct.jpeg_compress_struct* %3, i32 100)
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @emit_byte(%struct.jpeg_compress_struct* %4, i32 111)
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @emit_byte(%struct.jpeg_compress_struct* %5, i32 98)
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @emit_byte(%struct.jpeg_compress_struct* %6, i32 101)
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @emit_2bytes(%struct.jpeg_compress_struct* %7, i32 100)
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @emit_2bytes(%struct.jpeg_compress_struct* %8, i32 0)
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @emit_2bytes(%struct.jpeg_compress_struct* %9, i32 0)
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %jpeg_color_space = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 13
  %11 = load i32, i32* %jpeg_color_space, align 4
  switch i32 %11, label %sw.default [
    i32 3, label %sw.bb
    i32 5, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @emit_byte(%struct.jpeg_compress_struct* %12, i32 1)
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @emit_byte(%struct.jpeg_compress_struct* %13, i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @emit_byte(%struct.jpeg_compress_struct* %14, i32 0)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.1, %sw.bb
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
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  %0 = load i32, i32* %index.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %quant_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 15
  %arrayidx = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %quant_tbl_ptrs, i32 0, i64 %idxprom
  %2 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %arrayidx, align 8
  store %struct.JQUANT_TBL* %2, %struct.JQUANT_TBL** %qtbl, align 8
  %3 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %qtbl, align 8
  %cmp = icmp eq %struct.JQUANT_TBL* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 0
  %5 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %5, i32 0, i32 5
  store i32 51, i32* %msg_code, align 4
  %6 = load i32, i32* %index.addr, align 4
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 0
  %8 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err1, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %8, i32 0, i32 6
  %i2 = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx3 = getelementptr inbounds [8 x i32], [8 x i32]* %i2, i32 0, i64 0
  store i32 %6, i32* %arrayidx3, align 4
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 0
  %10 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %10, i32 0, i32 0
  %11 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %13 = bitcast %struct.jpeg_compress_struct* %12 to %struct.jpeg_common_struct*
  call void %11(%struct.jpeg_common_struct* %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %prec, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %14 = load i32, i32* %i, align 4
  %cmp5 = icmp slt i32 %14, 64
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %15 to i64
  %16 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %qtbl, align 8
  %quantval = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %16, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval, i32 0, i64 %idxprom6
  %17 = load i16, i16* %arrayidx7, align 2
  %conv = zext i16 %17 to i32
  %cmp8 = icmp sgt i32 %conv, 255
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %for.body
  store i32 1, i32* %prec, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %qtbl, align 8
  %sent_table = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %19, i32 0, i32 1
  %20 = load i32, i32* %sent_table, align 4
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %if.end.31, label %if.then.12

if.then.12:                                       ; preds = %for.end
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @emit_marker(%struct.jpeg_compress_struct* %21, i32 219)
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %23 = load i32, i32* %prec, align 4
  %tobool13 = icmp ne i32 %23, 0
  %cond = select i1 %tobool13, i32 131, i32 67
  call void @emit_2bytes(%struct.jpeg_compress_struct* %22, i32 %cond)
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %25 = load i32, i32* %index.addr, align 4
  %26 = load i32, i32* %prec, align 4
  %shl = shl i32 %26, 4
  %add = add nsw i32 %25, %shl
  call void @emit_byte(%struct.jpeg_compress_struct* %24, i32 %add)
  store i32 0, i32* %i, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.27, %if.then.12
  %27 = load i32, i32* %i, align 4
  %cmp15 = icmp slt i32 %27, 64
  br i1 %cmp15, label %for.body.17, label %for.end.29

for.body.17:                                      ; preds = %for.cond.14
  %28 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %28 to i64
  %arrayidx19 = getelementptr inbounds [0 x i32], [0 x i32]* @jpeg_natural_order, i32 0, i64 %idxprom18
  %29 = load i32, i32* %arrayidx19, align 4
  %idxprom20 = sext i32 %29 to i64
  %30 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %qtbl, align 8
  %quantval21 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %30, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval21, i32 0, i64 %idxprom20
  %31 = load i16, i16* %arrayidx22, align 2
  %conv23 = zext i16 %31 to i32
  store i32 %conv23, i32* %qval, align 4
  %32 = load i32, i32* %prec, align 4
  %tobool24 = icmp ne i32 %32, 0
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %for.body.17
  %33 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %34 = load i32, i32* %qval, align 4
  %shr = lshr i32 %34, 8
  call void @emit_byte(%struct.jpeg_compress_struct* %33, i32 %shr)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %for.body.17
  %35 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %36 = load i32, i32* %qval, align 4
  %and = and i32 %36, 255
  call void @emit_byte(%struct.jpeg_compress_struct* %35, i32 %and)
  br label %for.inc.27

for.inc.27:                                       ; preds = %if.end.26
  %37 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %37, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond.14

for.end.29:                                       ; preds = %for.cond.14
  %38 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %qtbl, align 8
  %sent_table30 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %38, i32 0, i32 1
  store i32 1, i32* %sent_table30, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %for.end.29, %for.end
  %39 = load i32, i32* %prec, align 4
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define internal void @emit_sof(%struct.jpeg_compress_struct* %cinfo, i32 %code) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %code.addr = alloca i32, align 4
  %ci = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store i32 %code, i32* %code.addr, align 4
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %1 = load i32, i32* %code.addr, align 4
  call void @emit_marker(%struct.jpeg_compress_struct* %0, i32 %1)
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i32 0, i32 12
  %4 = load i32, i32* %num_components, align 4
  %mul = mul nsw i32 3, %4
  %add = add nsw i32 %mul, 2
  %add1 = add nsw i32 %add, 5
  %add2 = add nsw i32 %add1, 1
  call void @emit_2bytes(%struct.jpeg_compress_struct* %2, i32 %add2)
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 7
  %6 = load i32, i32* %image_height, align 4
  %conv = zext i32 %6 to i64
  %cmp = icmp sgt i64 %conv, 65535
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 6
  %8 = load i32, i32* %image_width, align 4
  %conv4 = zext i32 %8 to i64
  %cmp5 = icmp sgt i64 %conv4, 65535
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 0
  %10 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %10, i32 0, i32 5
  store i32 40, i32* %msg_code, align 4
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 0
  %12 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err7, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %12, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 65535, i32* %arrayidx, align 4
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err8 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 0
  %14 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err8, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %14, i32 0, i32 0
  %15 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %17 = bitcast %struct.jpeg_compress_struct* %16 to %struct.jpeg_common_struct*
  call void %15(%struct.jpeg_common_struct* %17)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %data_precision = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %19, i32 0, i32 11
  %20 = load i32, i32* %data_precision, align 4
  call void @emit_byte(%struct.jpeg_compress_struct* %18, i32 %20)
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_height9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %22, i32 0, i32 7
  %23 = load i32, i32* %image_height9, align 4
  call void @emit_2bytes(%struct.jpeg_compress_struct* %21, i32 %23)
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_width10 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %25, i32 0, i32 6
  %26 = load i32, i32* %image_width10, align 4
  call void @emit_2bytes(%struct.jpeg_compress_struct* %24, i32 %26)
  %27 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %num_components11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %28, i32 0, i32 12
  %29 = load i32, i32* %num_components11, align 4
  call void @emit_byte(%struct.jpeg_compress_struct* %27, i32 %29)
  store i32 0, i32* %ci, align 4
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %30, i32 0, i32 14
  %31 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8
  store %struct.jpeg_component_info* %31, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %32 = load i32, i32* %ci, align 4
  %33 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %num_components12 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %33, i32 0, i32 12
  %34 = load i32, i32* %num_components12, align 4
  %cmp13 = icmp slt i32 %32, %34
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %36 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %component_id = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %36, i32 0, i32 0
  %37 = load i32, i32* %component_id, align 4
  call void @emit_byte(%struct.jpeg_compress_struct* %35, i32 %37)
  %38 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %39 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %39, i32 0, i32 2
  %40 = load i32, i32* %h_samp_factor, align 4
  %shl = shl i32 %40, 4
  %41 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %41, i32 0, i32 3
  %42 = load i32, i32* %v_samp_factor, align 4
  %add15 = add nsw i32 %shl, %42
  call void @emit_byte(%struct.jpeg_compress_struct* %38, i32 %add15)
  %43 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %44 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %quant_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %44, i32 0, i32 4
  %45 = load i32, i32* %quant_tbl_no, align 4
  call void @emit_byte(%struct.jpeg_compress_struct* %43, i32 %45)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %46 = load i32, i32* %ci, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %ci, align 4
  %47 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %47, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emit_dac(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
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
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  store i32 %is_ac, i32* %is_ac.addr, align 4
  %0 = load i32, i32* %is_ac.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %index.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %ac_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %2, i32 0, i32 17
  %arrayidx = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %ac_huff_tbl_ptrs, i32 0, i64 %idxprom
  %3 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx, align 8
  store %struct.JHUFF_TBL* %3, %struct.JHUFF_TBL** %htbl, align 8
  %4 = load i32, i32* %index.addr, align 4
  %add = add nsw i32 %4, 16
  store i32 %add, i32* %index.addr, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %index.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %dc_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 16
  %arrayidx2 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %dc_huff_tbl_ptrs, i32 0, i64 %idxprom1
  %7 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx2, align 8
  store %struct.JHUFF_TBL* %7, %struct.JHUFF_TBL** %htbl, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl, align 8
  %cmp = icmp eq %struct.JHUFF_TBL* %8, null
  br i1 %cmp, label %if.then.3, label %if.end.8

if.then.3:                                        ; preds = %if.end
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 0
  %10 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %10, i32 0, i32 5
  store i32 49, i32* %msg_code, align 4
  %11 = load i32, i32* %index.addr, align 4
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %12, i32 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i32 0, i32 6
  %i5 = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx6 = getelementptr inbounds [8 x i32], [8 x i32]* %i5, i32 0, i64 0
  store i32 %11, i32* %arrayidx6, align 4
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err7, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i32 0, i32 0
  %16 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %18 = bitcast %struct.jpeg_compress_struct* %17 to %struct.jpeg_common_struct*
  call void %16(%struct.jpeg_common_struct* %18)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.3, %if.end
  %19 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl, align 8
  %sent_table = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %19, i32 0, i32 2
  %20 = load i32, i32* %sent_table, align 4
  %tobool9 = icmp ne i32 %20, 0
  br i1 %tobool9, label %if.end.40, label %if.then.10

if.then.10:                                       ; preds = %if.end.8
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @emit_marker(%struct.jpeg_compress_struct* %21, i32 196)
  store i32 0, i32* %length, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.10
  %22 = load i32, i32* %i, align 4
  %cmp11 = icmp sle i32 %22, 16
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %23 to i64
  %24 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl, align 8
  %bits = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %24, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 %idxprom12
  %25 = load i8, i8* %arrayidx13, align 1
  %conv = zext i8 %25 to i32
  %26 = load i32, i32* %length, align 4
  %add14 = add nsw i32 %26, %conv
  store i32 %add14, i32* %length, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %29 = load i32, i32* %length, align 4
  %add15 = add nsw i32 %29, 2
  %add16 = add nsw i32 %add15, 1
  %add17 = add nsw i32 %add16, 16
  call void @emit_2bytes(%struct.jpeg_compress_struct* %28, i32 %add17)
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %31 = load i32, i32* %index.addr, align 4
  call void @emit_byte(%struct.jpeg_compress_struct* %30, i32 %31)
  store i32 1, i32* %i, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.26, %for.end
  %32 = load i32, i32* %i, align 4
  %cmp19 = icmp sle i32 %32, 16
  br i1 %cmp19, label %for.body.21, label %for.end.28

for.body.21:                                      ; preds = %for.cond.18
  %33 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %34 to i64
  %35 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl, align 8
  %bits23 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %35, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [17 x i8], [17 x i8]* %bits23, i32 0, i64 %idxprom22
  %36 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %36 to i32
  call void @emit_byte(%struct.jpeg_compress_struct* %33, i32 %conv25)
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.body.21
  %37 = load i32, i32* %i, align 4
  %inc27 = add nsw i32 %37, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond.18

for.end.28:                                       ; preds = %for.cond.18
  store i32 0, i32* %i, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.36, %for.end.28
  %38 = load i32, i32* %i, align 4
  %39 = load i32, i32* %length, align 4
  %cmp30 = icmp slt i32 %38, %39
  br i1 %cmp30, label %for.body.32, label %for.end.38

for.body.32:                                      ; preds = %for.cond.29
  %40 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %41 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %41 to i64
  %42 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl, align 8
  %huffval = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %42, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [256 x i8], [256 x i8]* %huffval, i32 0, i64 %idxprom33
  %43 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %43 to i32
  call void @emit_byte(%struct.jpeg_compress_struct* %40, i32 %conv35)
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.body.32
  %44 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %44, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond.29

for.end.38:                                       ; preds = %for.cond.29
  %45 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl, align 8
  %sent_table39 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %45, i32 0, i32 2
  store i32 1, i32* %sent_table39, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %for.end.38, %if.end.8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emit_dri(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @emit_marker(%struct.jpeg_compress_struct* %0, i32 221)
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @emit_2bytes(%struct.jpeg_compress_struct* %1, i32 4)
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i32 0, i32 29
  %4 = load i32, i32* %restart_interval, align 4
  call void @emit_2bytes(%struct.jpeg_compress_struct* %2, i32 %4)
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
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @emit_marker(%struct.jpeg_compress_struct* %0, i32 218)
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %2, i32 0, i32 41
  %3 = load i32, i32* %comps_in_scan, align 4
  %mul = mul nsw i32 2, %3
  %add = add nsw i32 %mul, 2
  %add1 = add nsw i32 %add, 1
  %add2 = add nsw i32 %add1, 3
  call void @emit_2bytes(%struct.jpeg_compress_struct* %1, i32 %add2)
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %comps_in_scan3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 41
  %6 = load i32, i32* %comps_in_scan3, align 4
  call void @emit_byte(%struct.jpeg_compress_struct* %4, i32 %6)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %comps_in_scan4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 41
  %9 = load i32, i32* %comps_in_scan4, align 4
  %cmp = icmp slt i32 %7, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 42
  %arrayidx = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom
  %12 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx, align 8
  store %struct.jpeg_component_info* %12, %struct.jpeg_component_info** %compptr, align 8
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %14 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %component_id = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %14, i32 0, i32 0
  %15 = load i32, i32* %component_id, align 4
  call void @emit_byte(%struct.jpeg_compress_struct* %13, i32 %15)
  %16 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %16, i32 0, i32 5
  %17 = load i32, i32* %dc_tbl_no, align 4
  store i32 %17, i32* %td, align 4
  %18 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %18, i32 0, i32 6
  %19 = load i32, i32* %ac_tbl_no, align 4
  store i32 %19, i32* %ta, align 4
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %progressive_mode = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 37
  %21 = load i32, i32* %progressive_mode, align 4
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %if.then, label %if.end.11

if.then:                                          ; preds = %for.body
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %Ss = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %22, i32 0, i32 47
  %23 = load i32, i32* %Ss, align 4
  %cmp5 = icmp eq i32 %23, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  store i32 0, i32* %ta, align 4
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %Ah = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %24, i32 0, i32 49
  %25 = load i32, i32* %Ah, align 4
  %cmp7 = icmp ne i32 %25, 0
  br i1 %cmp7, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then.6
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %arith_code = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %26, i32 0, i32 24
  %27 = load i32, i32* %arith_code, align 4
  %tobool8 = icmp ne i32 %27, 0
  br i1 %tobool8, label %if.end, label %if.then.9

if.then.9:                                        ; preds = %land.lhs.true
  store i32 0, i32* %td, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.9, %land.lhs.true, %if.then.6
  br label %if.end.10

if.else:                                          ; preds = %if.then
  store i32 0, i32* %td, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.end
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %for.body
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %29 = load i32, i32* %td, align 4
  %shl = shl i32 %29, 4
  %30 = load i32, i32* %ta, align 4
  %add12 = add nsw i32 %shl, %30
  call void @emit_byte(%struct.jpeg_compress_struct* %28, i32 %add12)
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %31 = load i32, i32* %i, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %33 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %Ss13 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %33, i32 0, i32 47
  %34 = load i32, i32* %Ss13, align 4
  call void @emit_byte(%struct.jpeg_compress_struct* %32, i32 %34)
  %35 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %36 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %Se = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %36, i32 0, i32 48
  %37 = load i32, i32* %Se, align 4
  call void @emit_byte(%struct.jpeg_compress_struct* %35, i32 %37)
  %38 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %39 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %Ah14 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %39, i32 0, i32 49
  %40 = load i32, i32* %Ah14, align 4
  %shl15 = shl i32 %40, 4
  %41 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %Al = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %41, i32 0, i32 50
  %42 = load i32, i32* %Al, align 4
  %add16 = add nsw i32 %shl15, %42
  call void @emit_byte(%struct.jpeg_compress_struct* %38, i32 %add16)
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
