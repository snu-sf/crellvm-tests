; ModuleID = './sjpegc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_DCT_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %struct.gs_const_string_s, float, i32, i32, %struct.gs_memory_s*, %union._jd, %struct.cmm_profile_s*, i8, i64, i32, i32 }
%struct.stream_template_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8] }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_gc_root_s = type { %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i32 }
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%union._jd = type { %struct.jpeg_stream_data_s* }
%struct.jpeg_stream_data_s = type { %struct.stream_template_s, %struct.jpeg_error_mgr, %struct.gsfix_jmp_buf, %struct.gs_memory_s*, %struct.gs_memory_s*, i8*, i32, i32 }
%struct.jpeg_error_mgr = type { void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i8*)*, void (%struct.jpeg_common_struct*)*, i32, %union.anon, i32, i64, i8**, i32, i8**, i32, i32 }
%struct.jpeg_common_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i8*, i32, i32 }
%struct.jpeg_memory_mgr = type { i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, {}*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, void (%struct.jpeg_common_struct*, i32)*, {}*, i64, i64 }
%struct.jvirt_sarray_control = type opaque
%struct.jvirt_barray_control = type opaque
%struct.jpeg_progress_mgr = type { {}*, i64, i64, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.gsfix_jmp_buf = type { [208 x i8] }
%struct.cmm_profile_s = type { i8, i8, i32, i32, i32, i32, %struct.gs_range_icc_s, i64, i32, [15 x i32], i32, i32, i32, %struct.gsicc_rendering_param_s, i8*, %struct.gx_device_s*, %struct.gsicc_namelist_s*, i8*, %struct.rc_header_s, i32, i8*, %struct.gs_memory_s*, %struct.gx_monitor_s* }
%struct.gs_range_icc_s = type { [15 x %struct.gs_range_s] }
%struct.gs_range_s = type { float, float }
%struct.gsicc_rendering_param_s = type { i32, i32, i32, i32, i32, i32 }
%struct.gx_device_s = type opaque
%struct.gsicc_namelist_s = type { i32, %struct.gsicc_colorname_s*, i8*, %struct.gs_devicen_color_map_s*, i32 }
%struct.gsicc_colorname_s = type { i8*, i32, %struct.gsicc_colorname_s* }
%struct.gs_devicen_color_map_s = type opaque
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.gx_monitor_s = type { %struct.gs_memory_s*, %union.gp_monitor }
%union.gp_monitor = type { i8* }
%struct.jpeg_compress_data_s = type { %struct.stream_template_s, %struct.jpeg_error_mgr, %struct.gsfix_jmp_buf, %struct.gs_memory_s*, %struct.gs_memory_s*, i8*, i32, i32, %struct.jpeg_compress_struct, %struct.jpeg_destination_mgr, [100 x i8], i32, i32 }
%struct.jpeg_compress_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i8*, i32, i32, %struct.jpeg_destination_mgr*, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, %struct.jpeg_component_info*, [4 x %struct.JQUANT_TBL*], [4 x i32], [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*], [16 x i8], [16 x i8], [16 x i8], i32, %struct.jpeg_scan_info*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x %struct.jpeg_component_info*], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, i32*, i32, %struct.jpeg_comp_master*, %struct.jpeg_c_main_controller*, %struct.jpeg_c_prep_controller*, %struct.jpeg_c_coef_controller*, %struct.jpeg_marker_writer*, %struct.jpeg_color_converter*, %struct.jpeg_downsampler*, %struct.jpeg_forward_dct*, %struct.jpeg_entropy_encoder*, %struct.jpeg_scan_info*, i32 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_comp_master = type opaque
%struct.jpeg_c_main_controller = type opaque
%struct.jpeg_c_prep_controller = type opaque
%struct.jpeg_c_coef_controller = type opaque
%struct.jpeg_marker_writer = type opaque
%struct.jpeg_color_converter = type opaque
%struct.jpeg_downsampler = type opaque
%struct.jpeg_forward_dct = type opaque
%struct.jpeg_entropy_encoder = type opaque
%struct.jpeg_scan_info = type { i32, [4 x i32], i32, i32, i32, i32 }
%struct.jpeg_destination_mgr = type { i8*, i64, void (%struct.jpeg_compress_struct*)*, i32 (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)* }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.gsfix_jmp_buf_test = type { i8, [1 x %struct.__jmp_buf_tag] }
%struct.backing_store_struct = type { void (%struct.jpeg_common_struct*, %struct.backing_store_struct*, i8*, i64, i64)*, void (%struct.jpeg_common_struct*, %struct.backing_store_struct*, i8*, i64, i64)*, void (%struct.jpeg_common_struct*, %struct.backing_store_struct*)*, %struct._IO_FILE*, [64 x i8] }

@.str = private unnamed_addr constant [36 x i8] c"JPEG small internal data allocation\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Freeing JPEG small internal data\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"JPEG large internal data allocation\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Freeing JPEG large internal data\00", align 1

; Function Attrs: nounwind uwtable
define void @gs_jpeg_error_setup(%struct.stream_DCT_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_DCT_state_s*, align 8
  %err = alloca %struct.jpeg_error_mgr*, align 8
  store %struct.stream_DCT_state_s* %st, %struct.stream_DCT_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.jpeg_error_mgr** %err to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %st.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %1, i32 0, i32 10
  %common = bitcast %union._jd* %data to %struct.jpeg_stream_data_s**
  %2 = load %struct.jpeg_stream_data_s*, %struct.jpeg_stream_data_s** %common, align 8, !tbaa !1
  %err1 = getelementptr inbounds %struct.jpeg_stream_data_s, %struct.jpeg_stream_data_s* %2, i32 0, i32 1
  store %struct.jpeg_error_mgr* %err1, %struct.jpeg_error_mgr** %err, align 8, !tbaa !1
  %3 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !1
  %call = call %struct.jpeg_error_mgr* @jpeg_std_error(%struct.jpeg_error_mgr* %3) #6
  %4 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !1
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %4, i32 0, i32 0
  store void (%struct.jpeg_common_struct*)* @gs_jpeg_error_exit, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !5
  %5 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !1
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %5, i32 0, i32 1
  store void (%struct.jpeg_common_struct*, i32)* @gs_jpeg_emit_message, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !9
  %6 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !1
  %7 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %st.addr, align 8, !tbaa !1
  %data2 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %7, i32 0, i32 10
  %compress = bitcast %union._jd* %data2 to %struct.jpeg_compress_data_s**
  %8 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %compress, align 8, !tbaa !1
  %cinfo = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %8, i32 0, i32 8
  %err3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo, i32 0, i32 0
  store %struct.jpeg_error_mgr* %6, %struct.jpeg_error_mgr** %err3, align 8, !tbaa !10
  %9 = bitcast %struct.jpeg_error_mgr** %err to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare %struct.jpeg_error_mgr* @jpeg_std_error(%struct.jpeg_error_mgr*) #2

; Function Attrs: nounwind uwtable
define internal void @gs_jpeg_error_exit(%struct.jpeg_common_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %jcomdp = alloca %struct.jpeg_stream_data_s*, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.jpeg_stream_data_s** %jcomdp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !1
  %2 = bitcast %struct.jpeg_common_struct* %1 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 sub (i64 0, i64 sext (i32 ptrtoint (%struct.jpeg_compress_struct* getelementptr inbounds (%struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* null, i32 0, i32 8) to i32) to i64))
  %3 = bitcast i8* %add.ptr to %struct.jpeg_stream_data_s*
  store %struct.jpeg_stream_data_s* %3, %struct.jpeg_stream_data_s** %jcomdp, align 8, !tbaa !1
  %4 = load %struct.jpeg_stream_data_s*, %struct.jpeg_stream_data_s** %jcomdp, align 8, !tbaa !1
  %exit_jmpbuf = getelementptr inbounds %struct.jpeg_stream_data_s, %struct.jpeg_stream_data_s* %4, i32 0, i32 2
  %stuff = getelementptr inbounds %struct.gsfix_jmp_buf, %struct.gsfix_jmp_buf* %exit_jmpbuf, i32 0, i32 0
  %arraydecay = getelementptr inbounds [208 x i8], [208 x i8]* %stuff, i32 0, i32 0
  %5 = ptrtoint i8* %arraydecay to i64
  %add = add i64 %5, ptrtoint ([1 x %struct.__jmp_buf_tag]* getelementptr inbounds (%struct.gsfix_jmp_buf_test, %struct.gsfix_jmp_buf_test* null, i32 0, i32 1) to i64)
  %and = and i64 %add, xor (i64 sub (i64 ptrtoint ([1 x %struct.__jmp_buf_tag]* getelementptr inbounds (%struct.gsfix_jmp_buf_test, %struct.gsfix_jmp_buf_test* null, i32 0, i32 1) to i64), i64 1), i64 -1)
  %6 = inttoptr i64 %and to [1 x %struct.__jmp_buf_tag]*
  %arraydecay1 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %6, i32 0, i32 0
  call void @longjmp(%struct.__jmp_buf_tag* %arraydecay1, i32 1) #7
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gs_jpeg_emit_message(%struct.jpeg_common_struct* %cinfo, i32 %msg_level) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %msg_level.addr = alloca i32, align 4
  %jcomdp = alloca %struct.jpeg_stream_data_s*, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !1
  store i32 %msg_level, i32* %msg_level.addr, align 4, !tbaa !18
  %0 = load i32, i32* %msg_level.addr, align 4, !tbaa !18
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.jpeg_stream_data_s** %jcomdp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !1
  %3 = bitcast %struct.jpeg_common_struct* %2 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 sub (i64 0, i64 sext (i32 ptrtoint (%struct.jpeg_compress_struct* getelementptr inbounds (%struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* null, i32 0, i32 8) to i32) to i64))
  %4 = bitcast i8* %add.ptr to %struct.jpeg_stream_data_s*
  store %struct.jpeg_stream_data_s* %4, %struct.jpeg_stream_data_s** %jcomdp, align 8, !tbaa !1
  %5 = load %struct.jpeg_stream_data_s*, %struct.jpeg_stream_data_s** %jcomdp, align 8, !tbaa !1
  %Picky = getelementptr inbounds %struct.jpeg_stream_data_s, %struct.jpeg_stream_data_s* %5, i32 0, i32 6
  %6 = load i32, i32* %Picky, align 4, !tbaa !19
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %7 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !1
  call void @gs_jpeg_error_exit(%struct.jpeg_common_struct* %7) #6
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  %8 = bitcast %struct.jpeg_stream_data_s** %jcomdp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  br label %if.end.2

if.end.2:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @gs_jpeg_log_error(%struct.stream_DCT_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_DCT_state_s*, align 8
  %cinfo = alloca %struct.jpeg_common_struct*, align 8
  %buffer = alloca [200 x i8], align 16
  store %struct.stream_DCT_state_s* %st, %struct.stream_DCT_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.jpeg_common_struct** %cinfo to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %st.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %1, i32 0, i32 10
  %compress = bitcast %union._jd* %data to %struct.jpeg_compress_data_s**
  %2 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %compress, align 8, !tbaa !1
  %cinfo1 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %2, i32 0, i32 8
  %3 = bitcast %struct.jpeg_compress_struct* %cinfo1 to %struct.jpeg_common_struct*
  store %struct.jpeg_common_struct* %3, %struct.jpeg_common_struct** %cinfo, align 8, !tbaa !1
  %4 = bitcast [200 x i8]* %buffer to i8*
  call void @llvm.lifetime.start(i64 200, i8* %4) #1
  %5 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %5, i32 0, i32 0
  %6 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !21
  %format_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %6, i32 0, i32 3
  %7 = load void (%struct.jpeg_common_struct*, i8*)*, void (%struct.jpeg_common_struct*, i8*)** %format_message, align 8, !tbaa !23
  %8 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [200 x i8], [200 x i8]* %buffer, i32 0, i32 0
  call void %7(%struct.jpeg_common_struct* %8, i8* %arraydecay) #6
  %9 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %st.addr, align 8, !tbaa !1
  %report_error = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %9, i32 0, i32 2
  %10 = load i32 (%struct.stream_state_s*, i8*)*, i32 (%struct.stream_state_s*, i8*)** %report_error, align 8, !tbaa !24
  %11 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %st.addr, align 8, !tbaa !1
  %12 = bitcast %struct.stream_DCT_state_s* %11 to %struct.stream_state_s*
  %arraydecay2 = getelementptr inbounds [200 x i8], [200 x i8]* %buffer, i32 0, i32 0
  %call = call i32 %10(%struct.stream_state_s* %12, i8* %arraydecay2) #6
  %13 = bitcast [200 x i8]* %buffer to i8*
  call void @llvm.lifetime.end(i64 200, i8* %13) #1
  %14 = bitcast %struct.jpeg_common_struct** %cinfo to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  ret i32 -12
}

; Function Attrs: nounwind uwtable
define %struct.JQUANT_TBL* @gs_jpeg_alloc_quant_table(%struct.stream_DCT_state_s* %st) #0 {
entry:
  %retval = alloca %struct.JQUANT_TBL*, align 8
  %st.addr = alloca %struct.stream_DCT_state_s*, align 8
  store %struct.stream_DCT_state_s* %st, %struct.stream_DCT_state_s** %st.addr, align 8, !tbaa !1
  %0 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %st.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %0, i32 0, i32 10
  %common = bitcast %union._jd* %data to %struct.jpeg_stream_data_s**
  %1 = load %struct.jpeg_stream_data_s*, %struct.jpeg_stream_data_s** %common, align 8, !tbaa !1
  %exit_jmpbuf = getelementptr inbounds %struct.jpeg_stream_data_s, %struct.jpeg_stream_data_s* %1, i32 0, i32 2
  %stuff = getelementptr inbounds %struct.gsfix_jmp_buf, %struct.gsfix_jmp_buf* %exit_jmpbuf, i32 0, i32 0
  %arraydecay = getelementptr inbounds [208 x i8], [208 x i8]* %stuff, i32 0, i32 0
  %2 = ptrtoint i8* %arraydecay to i64
  %add = add i64 %2, ptrtoint ([1 x %struct.__jmp_buf_tag]* getelementptr inbounds (%struct.gsfix_jmp_buf_test, %struct.gsfix_jmp_buf_test* null, i32 0, i32 1) to i64)
  %and = and i64 %add, xor (i64 sub (i64 ptrtoint ([1 x %struct.__jmp_buf_tag]* getelementptr inbounds (%struct.gsfix_jmp_buf_test, %struct.gsfix_jmp_buf_test* null, i32 0, i32 1) to i64), i64 1), i64 -1)
  %3 = inttoptr i64 %and to [1 x %struct.__jmp_buf_tag]*
  %arraydecay1 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %3, i32 0, i32 0
  %call = call i32 @_setjmp(%struct.__jmp_buf_tag* %arraydecay1) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %st.addr, align 8, !tbaa !1
  %call2 = call i32 @gs_jpeg_log_error(%struct.stream_DCT_state_s* %4) #6
  store %struct.JQUANT_TBL* null, %struct.JQUANT_TBL** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %st.addr, align 8, !tbaa !1
  %data3 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %5, i32 0, i32 10
  %compress = bitcast %union._jd* %data3 to %struct.jpeg_compress_data_s**
  %6 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %compress, align 8, !tbaa !1
  %cinfo = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %6, i32 0, i32 8
  %7 = bitcast %struct.jpeg_compress_struct* %cinfo to %struct.jpeg_common_struct*
  %call4 = call %struct.JQUANT_TBL* @jpeg_alloc_quant_table(%struct.jpeg_common_struct* %7) #6
  store %struct.JQUANT_TBL* %call4, %struct.JQUANT_TBL** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %retval
  ret %struct.JQUANT_TBL* %8
}

; Function Attrs: nounwind
declare i32 @_setjmp(%struct.__jmp_buf_tag*) #3

declare %struct.JQUANT_TBL* @jpeg_alloc_quant_table(%struct.jpeg_common_struct*) #2

; Function Attrs: nounwind uwtable
define %struct.JHUFF_TBL* @gs_jpeg_alloc_huff_table(%struct.stream_DCT_state_s* %st) #0 {
entry:
  %retval = alloca %struct.JHUFF_TBL*, align 8
  %st.addr = alloca %struct.stream_DCT_state_s*, align 8
  store %struct.stream_DCT_state_s* %st, %struct.stream_DCT_state_s** %st.addr, align 8, !tbaa !1
  %0 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %st.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %0, i32 0, i32 10
  %common = bitcast %union._jd* %data to %struct.jpeg_stream_data_s**
  %1 = load %struct.jpeg_stream_data_s*, %struct.jpeg_stream_data_s** %common, align 8, !tbaa !1
  %exit_jmpbuf = getelementptr inbounds %struct.jpeg_stream_data_s, %struct.jpeg_stream_data_s* %1, i32 0, i32 2
  %stuff = getelementptr inbounds %struct.gsfix_jmp_buf, %struct.gsfix_jmp_buf* %exit_jmpbuf, i32 0, i32 0
  %arraydecay = getelementptr inbounds [208 x i8], [208 x i8]* %stuff, i32 0, i32 0
  %2 = ptrtoint i8* %arraydecay to i64
  %add = add i64 %2, ptrtoint ([1 x %struct.__jmp_buf_tag]* getelementptr inbounds (%struct.gsfix_jmp_buf_test, %struct.gsfix_jmp_buf_test* null, i32 0, i32 1) to i64)
  %and = and i64 %add, xor (i64 sub (i64 ptrtoint ([1 x %struct.__jmp_buf_tag]* getelementptr inbounds (%struct.gsfix_jmp_buf_test, %struct.gsfix_jmp_buf_test* null, i32 0, i32 1) to i64), i64 1), i64 -1)
  %3 = inttoptr i64 %and to [1 x %struct.__jmp_buf_tag]*
  %arraydecay1 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %3, i32 0, i32 0
  %call = call i32 @_setjmp(%struct.__jmp_buf_tag* %arraydecay1) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %st.addr, align 8, !tbaa !1
  %call2 = call i32 @gs_jpeg_log_error(%struct.stream_DCT_state_s* %4) #6
  store %struct.JHUFF_TBL* null, %struct.JHUFF_TBL** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %st.addr, align 8, !tbaa !1
  %data3 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %5, i32 0, i32 10
  %compress = bitcast %union._jd* %data3 to %struct.jpeg_compress_data_s**
  %6 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %compress, align 8, !tbaa !1
  %cinfo = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %6, i32 0, i32 8
  %7 = bitcast %struct.jpeg_compress_struct* %cinfo to %struct.jpeg_common_struct*
  %call4 = call %struct.JHUFF_TBL* @jpeg_alloc_huff_table(%struct.jpeg_common_struct* %7) #6
  store %struct.JHUFF_TBL* %call4, %struct.JHUFF_TBL** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %retval
  ret %struct.JHUFF_TBL* %8
}

declare %struct.JHUFF_TBL* @jpeg_alloc_huff_table(%struct.jpeg_common_struct*) #2

; Function Attrs: nounwind uwtable
define i32 @gs_jpeg_destroy(%struct.stream_DCT_state_s* %st) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_DCT_state_s*, align 8
  store %struct.stream_DCT_state_s* %st, %struct.stream_DCT_state_s** %st.addr, align 8, !tbaa !1
  %0 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %st.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %0, i32 0, i32 10
  %common = bitcast %union._jd* %data to %struct.jpeg_stream_data_s**
  %1 = load %struct.jpeg_stream_data_s*, %struct.jpeg_stream_data_s** %common, align 8, !tbaa !1
  %tobool = icmp ne %struct.jpeg_stream_data_s* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %st.addr, align 8, !tbaa !1
  %data1 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %2, i32 0, i32 10
  %common2 = bitcast %union._jd* %data1 to %struct.jpeg_stream_data_s**
  %3 = load %struct.jpeg_stream_data_s*, %struct.jpeg_stream_data_s** %common2, align 8, !tbaa !1
  %exit_jmpbuf = getelementptr inbounds %struct.jpeg_stream_data_s, %struct.jpeg_stream_data_s* %3, i32 0, i32 2
  %stuff = getelementptr inbounds %struct.gsfix_jmp_buf, %struct.gsfix_jmp_buf* %exit_jmpbuf, i32 0, i32 0
  %arraydecay = getelementptr inbounds [208 x i8], [208 x i8]* %stuff, i32 0, i32 0
  %4 = ptrtoint i8* %arraydecay to i64
  %add = add i64 %4, ptrtoint ([1 x %struct.__jmp_buf_tag]* getelementptr inbounds (%struct.gsfix_jmp_buf_test, %struct.gsfix_jmp_buf_test* null, i32 0, i32 1) to i64)
  %and = and i64 %add, xor (i64 sub (i64 ptrtoint ([1 x %struct.__jmp_buf_tag]* getelementptr inbounds (%struct.gsfix_jmp_buf_test, %struct.gsfix_jmp_buf_test* null, i32 0, i32 1) to i64), i64 1), i64 -1)
  %5 = inttoptr i64 %and to [1 x %struct.__jmp_buf_tag]*
  %arraydecay3 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %5, i32 0, i32 0
  %call = call i32 @_setjmp(%struct.__jmp_buf_tag* %arraydecay3) #8
  %tobool4 = icmp ne i32 %call, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %st.addr, align 8, !tbaa !1
  %call5 = call i32 @gs_jpeg_log_error(%struct.stream_DCT_state_s* %6) #6
  store i32 %call5, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %7 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %st.addr, align 8, !tbaa !1
  %data6 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %7, i32 0, i32 10
  %compress = bitcast %union._jd* %data6 to %struct.jpeg_compress_data_s**
  %8 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %compress, align 8, !tbaa !1
  %tobool7 = icmp ne %struct.jpeg_compress_data_s* %8, null
  br i1 %tobool7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.end
  %9 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %st.addr, align 8, !tbaa !1
  %data9 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %9, i32 0, i32 10
  %compress10 = bitcast %union._jd* %data9 to %struct.jpeg_compress_data_s**
  %10 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %compress10, align 8, !tbaa !1
  %cinfo = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %10, i32 0, i32 8
  %11 = bitcast %struct.jpeg_compress_struct* %cinfo to %struct.jpeg_common_struct*
  call void @jpeg_destroy(%struct.jpeg_common_struct* %11) #6
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare void @jpeg_destroy(%struct.jpeg_common_struct*) #2

; Function Attrs: nounwind uwtable
define i8* @jpeg_get_small(%struct.jpeg_common_struct* %cinfo, i64 %size) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %size.addr = alloca i64, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !1
  store i64 %size, i64* %size.addr, align 8, !tbaa !28
  %0 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !1
  %1 = load i64, i64* %size.addr, align 8, !tbaa !28
  %call = call i8* @jpeg_alloc(%struct.jpeg_common_struct* %0, i64 %1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i32 0, i32 0)) #6
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal i8* @jpeg_alloc(%struct.jpeg_common_struct* %cinfo, i64 %size, i8* %info) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %size.addr = alloca i64, align 8
  %info.addr = alloca i8*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !1
  store i64 %size, i64* %size.addr, align 8, !tbaa !28
  store i8* %info, i8** %info.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !1
  %call = call %struct.jpeg_compress_data_s* @cinfo2jcd(%struct.jpeg_common_struct* %1) #6
  %cmem = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %call, i32 0, i32 4
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %cmem, align 8, !tbaa !29
  store %struct.gs_memory_s* %2, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %4 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !30
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %6 = load i64, i64* %size.addr, align 8, !tbaa !28
  %conv = trunc i64 %6 to i32
  %7 = load i8*, i8** %info.addr, align 8, !tbaa !1
  %call1 = call i8* %4(%struct.gs_memory_s* %5, i32 %conv, i8* %7) #6
  %8 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  ret i8* %call1
}

; Function Attrs: nounwind uwtable
define void @jpeg_free_small(%struct.jpeg_common_struct* %cinfo, i8* %object, i64 %size) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !1
  store i8* %object, i8** %object.addr, align 8, !tbaa !1
  store i64 %size, i64* %size.addr, align 8, !tbaa !28
  %0 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %object.addr, align 8, !tbaa !1
  call void @jpeg_free(%struct.jpeg_common_struct* %0, i8* %1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0)) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @jpeg_free(%struct.jpeg_common_struct* %cinfo, i8* %data, i8* %info) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %data.addr = alloca i8*, align 8
  %info.addr = alloca i8*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i8* %info, i8** %info.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !1
  %call = call %struct.jpeg_compress_data_s* @cinfo2jcd(%struct.jpeg_common_struct* %1) #6
  %cmem = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %call, i32 0, i32 4
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %cmem, align 8, !tbaa !29
  store %struct.gs_memory_s* %2, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %4 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !33
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %6 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %info.addr, align 8, !tbaa !1
  call void %4(%struct.gs_memory_s* %5, i8* %6, i8* %7) #6
  %8 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @jpeg_get_large(%struct.jpeg_common_struct* %cinfo, i64 %size) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %size.addr = alloca i64, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !1
  store i64 %size, i64* %size.addr, align 8, !tbaa !28
  %0 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !1
  %1 = load i64, i64* %size.addr, align 8, !tbaa !28
  %call = call i8* @jpeg_alloc(%struct.jpeg_common_struct* %0, i64 %1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0)) #6
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define void @jpeg_free_large(%struct.jpeg_common_struct* %cinfo, i8* %object, i64 %size) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !1
  store i8* %object, i8** %object.addr, align 8, !tbaa !1
  store i64 %size, i64* %size.addr, align 8, !tbaa !28
  %0 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %object.addr, align 8, !tbaa !1
  call void @jpeg_free(%struct.jpeg_common_struct* %0, i8* %1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0)) #6
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @jpeg_mem_available(%struct.jpeg_common_struct* %cinfo, i64 %min_bytes_needed, i64 %max_bytes_needed, i64 %already_allocated) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %min_bytes_needed.addr = alloca i64, align 8
  %max_bytes_needed.addr = alloca i64, align 8
  %already_allocated.addr = alloca i64, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !1
  store i64 %min_bytes_needed, i64* %min_bytes_needed.addr, align 8, !tbaa !28
  store i64 %max_bytes_needed, i64* %max_bytes_needed.addr, align 8, !tbaa !28
  store i64 %already_allocated, i64* %already_allocated.addr, align 8, !tbaa !28
  %0 = load i64, i64* %max_bytes_needed.addr, align 8, !tbaa !28
  ret i64 %0
}

; Function Attrs: nounwind uwtable
define void @jpeg_open_backing_store(%struct.jpeg_common_struct* %cinfo, %struct.backing_store_struct* %info, i64 %total_bytes_needed) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %info.addr = alloca %struct.backing_store_struct*, align 8
  %total_bytes_needed.addr = alloca i64, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !1
  store %struct.backing_store_struct* %info, %struct.backing_store_struct** %info.addr, align 8, !tbaa !1
  store i64 %total_bytes_needed, i64* %total_bytes_needed.addr, align 8, !tbaa !28
  %0 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %0, i32 0, i32 0
  %1 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !21
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %1, i32 0, i32 5
  store i32 51, i32* %msg_code, align 4, !tbaa !34
  %2 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !1
  %err1 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %2, i32 0, i32 0
  %3 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err1, align 8, !tbaa !21
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %3, i32 0, i32 0
  %4 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !5
  %5 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !1
  call void %4(%struct.jpeg_common_struct* %5) #6
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @jpeg_mem_init(%struct.jpeg_common_struct* %cinfo) #0 {
entry:
  %retval = alloca i64, align 8
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %jcd = alloca %struct.jpeg_compress_data_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %code = alloca i32, align 4
  %cmem = alloca %struct.gs_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.jpeg_compress_data_s** %jcd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !1
  %call = call %struct.jpeg_compress_data_s* @cinfo2jcd(%struct.jpeg_common_struct* %1) #6
  store %struct.jpeg_compress_data_s* %call, %struct.jpeg_compress_data_s** %jcd, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcd, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %3, i32 0, i32 3
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !35
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 3
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !36
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %code, align 4, !tbaa !18
  %7 = bitcast %struct.gs_memory_s** %cmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store %struct.gs_memory_s* null, %struct.gs_memory_s** %cmem, align 8, !tbaa !1
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call1 = call i32 @gs_memory_chunk_wrap(%struct.gs_memory_s** %cmem, %struct.gs_memory_s* %8) #6
  store i32 %call1, i32* %code, align 4, !tbaa !18
  %9 = load i32, i32* %code, align 4, !tbaa !18
  %cmp = icmp ne i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %code, align 4, !tbaa !18
  %conv = sext i32 %10 to i64
  store i64 %conv, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %cmem, align 8, !tbaa !1
  %12 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcd, align 8, !tbaa !1
  %cmem2 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %12, i32 0, i32 4
  store %struct.gs_memory_s* %11, %struct.gs_memory_s** %cmem2, align 8, !tbaa !29
  store i64 0, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %13 = bitcast %struct.gs_memory_s** %cmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %15 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = bitcast %struct.jpeg_compress_data_s** %jcd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = load i64, i64* %retval
  ret i64 %17
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.jpeg_compress_data_s* @cinfo2jcd(%struct.jpeg_common_struct* %cinfo) #4 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !1
  %1 = bitcast %struct.jpeg_common_struct* %0 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 sub (i64 0, i64 sext (i32 ptrtoint (%struct.jpeg_compress_struct* getelementptr inbounds (%struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* null, i32 0, i32 8) to i32) to i64))
  %2 = bitcast i8* %add.ptr to %struct.jpeg_compress_data_s*
  ret %struct.jpeg_compress_data_s* %2
}

declare i32 @gs_memory_chunk_wrap(%struct.gs_memory_s**, %struct.gs_memory_s*) #2

; Function Attrs: nounwind uwtable
define void @jpeg_mem_term(%struct.jpeg_common_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %jcd = alloca %struct.jpeg_compress_data_s*, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.jpeg_compress_data_s** %jcd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !1
  %call = call %struct.jpeg_compress_data_s* @cinfo2jcd(%struct.jpeg_common_struct* %1) #6
  store %struct.jpeg_compress_data_s* %call, %struct.jpeg_compress_data_s** %jcd, align 8, !tbaa !1
  %2 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcd, align 8, !tbaa !1
  %cmem = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %2, i32 0, i32 4
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %cmem, align 8, !tbaa !29
  call void @gs_memory_chunk_release(%struct.gs_memory_s* %3) #6
  %4 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcd, align 8, !tbaa !1
  %cmem1 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %4, i32 0, i32 4
  store %struct.gs_memory_s* null, %struct.gs_memory_s** %cmem1, align 8, !tbaa !29
  %5 = bitcast %struct.jpeg_compress_data_s** %jcd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret void
}

declare void @gs_memory_chunk_release(%struct.gs_memory_s*) #2

; Function Attrs: noreturn nounwind
declare void @longjmp(%struct.__jmp_buf_tag*, i32) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin noreturn nounwind }
attributes #8 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 0}
!6 = !{!"jpeg_error_mgr", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !3, i64 44, !7, i64 124, !8, i64 128, !2, i64 136, !7, i64 144, !2, i64 152, !7, i64 160, !7, i64 164}
!7 = !{!"int", !3, i64 0}
!8 = !{!"long", !3, i64 0}
!9 = !{!6, !2, i64 8}
!10 = !{!11, !2, i64 464}
!11 = !{!"jpeg_compress_data_s", !12, i64 0, !6, i64 56, !13, i64 224, !2, i64 432, !2, i64 440, !2, i64 448, !7, i64 456, !7, i64 460, !14, i64 464, !17, i64 1048, !3, i64 1088, !7, i64 1188, !7, i64 1192}
!12 = !{!"stream_template_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !7, i64 28, !2, i64 32, !2, i64 40, !2, i64 48}
!13 = !{!"", !3, i64 0}
!14 = !{!"jpeg_compress_struct", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !3, i64 32, !7, i64 36, !2, i64 40, !7, i64 48, !7, i64 52, !7, i64 56, !3, i64 60, !15, i64 64, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !3, i64 96, !2, i64 104, !3, i64 112, !3, i64 144, !3, i64 160, !3, i64 192, !3, i64 224, !3, i64 240, !3, i64 256, !7, i64 272, !2, i64 280, !3, i64 288, !3, i64 292, !3, i64 296, !3, i64 300, !3, i64 304, !7, i64 308, !3, i64 312, !7, i64 316, !7, i64 320, !3, i64 324, !3, i64 328, !3, i64 329, !3, i64 330, !16, i64 332, !16, i64 334, !3, i64 336, !3, i64 340, !7, i64 344, !3, i64 348, !7, i64 352, !7, i64 356, !7, i64 360, !7, i64 364, !7, i64 368, !7, i64 372, !3, i64 376, !7, i64 408, !7, i64 412, !7, i64 416, !3, i64 420, !7, i64 460, !7, i64 464, !7, i64 468, !7, i64 472, !7, i64 476, !2, i64 480, !7, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !7, i64 576}
!15 = !{!"double", !3, i64 0}
!16 = !{!"short", !3, i64 0}
!17 = !{!"jpeg_destination_mgr", !2, i64 0, !8, i64 8, !2, i64 16, !2, i64 24, !2, i64 32}
!18 = !{!7, !7, i64 0}
!19 = !{!20, !7, i64 456}
!20 = !{!"jpeg_stream_data_s", !12, i64 0, !6, i64 56, !13, i64 224, !2, i64 432, !2, i64 440, !2, i64 448, !7, i64 456, !7, i64 460}
!21 = !{!22, !2, i64 0}
!22 = !{!"jpeg_common_struct", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !3, i64 32, !7, i64 36}
!23 = !{!6, !2, i64 24}
!24 = !{!25, !2, i64 16}
!25 = !{!"stream_DCT_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !3, i64 28, !26, i64 112, !27, i64 128, !7, i64 132, !7, i64 136, !2, i64 144, !3, i64 152, !2, i64 160, !3, i64 168, !8, i64 176, !7, i64 184, !7, i64 188}
!26 = !{!"gs_const_string_s", !2, i64 0, !7, i64 8}
!27 = !{!"float", !3, i64 0}
!28 = !{!8, !8, i64 0}
!29 = !{!11, !2, i64 440}
!30 = !{!31, !2, i64 64}
!31 = !{!"gs_memory_s", !2, i64 0, !32, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!32 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!33 = !{!31, !2, i64 24}
!34 = !{!6, !7, i64 40}
!35 = !{!11, !2, i64 432}
!36 = !{!31, !2, i64 200}
