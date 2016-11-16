; ModuleID = './sjpege.bc'
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
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.gsfix_jmp_buf_test = type { i8, [1 x %struct.__jmp_buf_tag] }
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

; Function Attrs: nounwind uwtable
define i32 @gs_jpeg_create_compress(%struct.stream_DCT_state_s* %st) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_DCT_state_s*, align 8
  store %struct.stream_DCT_state_s* %st, %struct.stream_DCT_state_s** %st.addr, align 8, !tbaa !1
  %0 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %st.addr, align 8, !tbaa !1
  call void @gs_jpeg_error_setup(%struct.stream_DCT_state_s* %0) #3
  %1 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %st.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %1, i32 0, i32 10
  %common = bitcast %union._jd* %data to %struct.jpeg_stream_data_s**
  %2 = load %struct.jpeg_stream_data_s*, %struct.jpeg_stream_data_s** %common, align 8, !tbaa !1
  %exit_jmpbuf = getelementptr inbounds %struct.jpeg_stream_data_s, %struct.jpeg_stream_data_s* %2, i32 0, i32 2
  %stuff = getelementptr inbounds %struct.gsfix_jmp_buf, %struct.gsfix_jmp_buf* %exit_jmpbuf, i32 0, i32 0
  %arraydecay = getelementptr inbounds [208 x i8], [208 x i8]* %stuff, i32 0, i32 0
  %3 = ptrtoint i8* %arraydecay to i64
  %add = add i64 %3, ptrtoint ([1 x %struct.__jmp_buf_tag]* getelementptr inbounds (%struct.gsfix_jmp_buf_test, %struct.gsfix_jmp_buf_test* null, i32 0, i32 1) to i64)
  %and = and i64 %add, xor (i64 sub (i64 ptrtoint ([1 x %struct.__jmp_buf_tag]* getelementptr inbounds (%struct.gsfix_jmp_buf_test, %struct.gsfix_jmp_buf_test* null, i32 0, i32 1) to i64), i64 1), i64 -1)
  %4 = inttoptr i64 %and to [1 x %struct.__jmp_buf_tag]*
  %arraydecay1 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %4, i32 0, i32 0
  %call = call i32 @_setjmp(%struct.__jmp_buf_tag* %arraydecay1) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %st.addr, align 8, !tbaa !1
  %call2 = call i32 @gs_jpeg_log_error(%struct.stream_DCT_state_s* %5) #3
  store i32 %call2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %6 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %st.addr, align 8, !tbaa !1
  %data3 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %6, i32 0, i32 10
  %compress = bitcast %union._jd* %data3 to %struct.jpeg_compress_data_s**
  %7 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %compress, align 8, !tbaa !1
  %Picky = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %7, i32 0, i32 6
  store i32 0, i32* %Picky, align 4, !tbaa !5
  %8 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %st.addr, align 8, !tbaa !1
  %data4 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %8, i32 0, i32 10
  %compress5 = bitcast %union._jd* %data4 to %struct.jpeg_compress_data_s**
  %9 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %compress5, align 8, !tbaa !1
  %Relax = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %9, i32 0, i32 7
  store i32 0, i32* %Relax, align 4, !tbaa !16
  %10 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %st.addr, align 8, !tbaa !1
  %data6 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %10, i32 0, i32 10
  %compress7 = bitcast %union._jd* %data6 to %struct.jpeg_compress_data_s**
  %11 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %compress7, align 8, !tbaa !1
  %dummy = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %11, i32 0, i32 5
  store i8* null, i8** %dummy, align 8, !tbaa !17
  br label %do.end

do.end:                                           ; preds = %do.body
  %12 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %st.addr, align 8, !tbaa !1
  %data8 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %12, i32 0, i32 10
  %compress9 = bitcast %union._jd* %data8 to %struct.jpeg_compress_data_s**
  %13 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %compress9, align 8, !tbaa !1
  %cinfo = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %13, i32 0, i32 8
  call void @jpeg_CreateCompress(%struct.jpeg_compress_struct* %cinfo, i32 90, i64 584) #3
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare void @gs_jpeg_error_setup(%struct.stream_DCT_state_s*) #1

; Function Attrs: nounwind
declare i32 @_setjmp(%struct.__jmp_buf_tag*) #2

declare i32 @gs_jpeg_log_error(%struct.stream_DCT_state_s*) #1

declare void @jpeg_CreateCompress(%struct.jpeg_compress_struct*, i32, i64) #1

; Function Attrs: nounwind uwtable
define i32 @gs_jpeg_set_defaults(%struct.stream_DCT_state_s* %st) #0 {
entry:
  %retval = alloca i32, align 4
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
  %call = call i32 @_setjmp(%struct.__jmp_buf_tag* %arraydecay1) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %st.addr, align 8, !tbaa !1
  %call2 = call i32 @gs_jpeg_log_error(%struct.stream_DCT_state_s* %4) #3
  store i32 %call2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %st.addr, align 8, !tbaa !1
  %data3 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %5, i32 0, i32 10
  %compress = bitcast %union._jd* %data3 to %struct.jpeg_compress_data_s**
  %6 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %compress, align 8, !tbaa !1
  %cinfo = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %6, i32 0, i32 8
  call void @jpeg_set_defaults(%struct.jpeg_compress_struct* %cinfo) #3
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

declare void @jpeg_set_defaults(%struct.jpeg_compress_struct*) #1

; Function Attrs: nounwind uwtable
define i32 @gs_jpeg_set_colorspace(%struct.stream_DCT_state_s* %st, i32 %colorspace) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_DCT_state_s*, align 8
  %colorspace.addr = alloca i32, align 4
  store %struct.stream_DCT_state_s* %st, %struct.stream_DCT_state_s** %st.addr, align 8, !tbaa !1
  store i32 %colorspace, i32* %colorspace.addr, align 4, !tbaa !18
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
  %call = call i32 @_setjmp(%struct.__jmp_buf_tag* %arraydecay1) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %st.addr, align 8, !tbaa !1
  %call2 = call i32 @gs_jpeg_log_error(%struct.stream_DCT_state_s* %4) #3
  store i32 %call2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %st.addr, align 8, !tbaa !1
  %data3 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %5, i32 0, i32 10
  %compress = bitcast %union._jd* %data3 to %struct.jpeg_compress_data_s**
  %6 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %compress, align 8, !tbaa !1
  %cinfo = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %6, i32 0, i32 8
  %7 = load i32, i32* %colorspace.addr, align 4, !tbaa !18
  call void @jpeg_set_colorspace(%struct.jpeg_compress_struct* %cinfo, i32 %7) #3
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare void @jpeg_set_colorspace(%struct.jpeg_compress_struct*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gs_jpeg_set_linear_quality(%struct.stream_DCT_state_s* %st, i32 %scale_factor, i32 %force_baseline) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_DCT_state_s*, align 8
  %scale_factor.addr = alloca i32, align 4
  %force_baseline.addr = alloca i32, align 4
  store %struct.stream_DCT_state_s* %st, %struct.stream_DCT_state_s** %st.addr, align 8, !tbaa !1
  store i32 %scale_factor, i32* %scale_factor.addr, align 4, !tbaa !19
  store i32 %force_baseline, i32* %force_baseline.addr, align 4, !tbaa !18
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
  %call = call i32 @_setjmp(%struct.__jmp_buf_tag* %arraydecay1) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %st.addr, align 8, !tbaa !1
  %call2 = call i32 @gs_jpeg_log_error(%struct.stream_DCT_state_s* %4) #3
  store i32 %call2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %st.addr, align 8, !tbaa !1
  %data3 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %5, i32 0, i32 10
  %compress = bitcast %union._jd* %data3 to %struct.jpeg_compress_data_s**
  %6 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %compress, align 8, !tbaa !1
  %cinfo = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %6, i32 0, i32 8
  %7 = load i32, i32* %scale_factor.addr, align 4, !tbaa !19
  %8 = load i32, i32* %force_baseline.addr, align 4, !tbaa !18
  call void @jpeg_set_linear_quality(%struct.jpeg_compress_struct* %cinfo, i32 %7, i32 %8) #3
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

declare void @jpeg_set_linear_quality(%struct.jpeg_compress_struct*, i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gs_jpeg_set_quality(%struct.stream_DCT_state_s* %st, i32 %quality, i32 %force_baseline) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_DCT_state_s*, align 8
  %quality.addr = alloca i32, align 4
  %force_baseline.addr = alloca i32, align 4
  store %struct.stream_DCT_state_s* %st, %struct.stream_DCT_state_s** %st.addr, align 8, !tbaa !1
  store i32 %quality, i32* %quality.addr, align 4, !tbaa !19
  store i32 %force_baseline, i32* %force_baseline.addr, align 4, !tbaa !18
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
  %call = call i32 @_setjmp(%struct.__jmp_buf_tag* %arraydecay1) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %st.addr, align 8, !tbaa !1
  %call2 = call i32 @gs_jpeg_log_error(%struct.stream_DCT_state_s* %4) #3
  store i32 %call2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %st.addr, align 8, !tbaa !1
  %data3 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %5, i32 0, i32 10
  %compress = bitcast %union._jd* %data3 to %struct.jpeg_compress_data_s**
  %6 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %compress, align 8, !tbaa !1
  %cinfo = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %6, i32 0, i32 8
  %7 = load i32, i32* %quality.addr, align 4, !tbaa !19
  %8 = load i32, i32* %force_baseline.addr, align 4, !tbaa !18
  call void @jpeg_set_quality(%struct.jpeg_compress_struct* %cinfo, i32 %7, i32 %8) #3
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

declare void @jpeg_set_quality(%struct.jpeg_compress_struct*, i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gs_jpeg_start_compress(%struct.stream_DCT_state_s* %st, i32 %write_all_tables) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_DCT_state_s*, align 8
  %write_all_tables.addr = alloca i32, align 4
  store %struct.stream_DCT_state_s* %st, %struct.stream_DCT_state_s** %st.addr, align 8, !tbaa !1
  store i32 %write_all_tables, i32* %write_all_tables.addr, align 4, !tbaa !18
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
  %call = call i32 @_setjmp(%struct.__jmp_buf_tag* %arraydecay1) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %st.addr, align 8, !tbaa !1
  %call2 = call i32 @gs_jpeg_log_error(%struct.stream_DCT_state_s* %4) #3
  store i32 %call2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %st.addr, align 8, !tbaa !1
  %data3 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %5, i32 0, i32 10
  %compress = bitcast %union._jd* %data3 to %struct.jpeg_compress_data_s**
  %6 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %compress, align 8, !tbaa !1
  %cinfo = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %6, i32 0, i32 8
  %7 = load i32, i32* %write_all_tables.addr, align 4, !tbaa !18
  call void @jpeg_start_compress(%struct.jpeg_compress_struct* %cinfo, i32 %7) #3
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare void @jpeg_start_compress(%struct.jpeg_compress_struct*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gs_jpeg_write_scanlines(%struct.stream_DCT_state_s* %st, i8** %scanlines, i32 %num_lines) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_DCT_state_s*, align 8
  %scanlines.addr = alloca i8**, align 8
  %num_lines.addr = alloca i32, align 4
  store %struct.stream_DCT_state_s* %st, %struct.stream_DCT_state_s** %st.addr, align 8, !tbaa !1
  store i8** %scanlines, i8*** %scanlines.addr, align 8, !tbaa !1
  store i32 %num_lines, i32* %num_lines.addr, align 4, !tbaa !19
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
  %call = call i32 @_setjmp(%struct.__jmp_buf_tag* %arraydecay1) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %st.addr, align 8, !tbaa !1
  %call2 = call i32 @gs_jpeg_log_error(%struct.stream_DCT_state_s* %4) #3
  store i32 %call2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %st.addr, align 8, !tbaa !1
  %data3 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %5, i32 0, i32 10
  %compress = bitcast %union._jd* %data3 to %struct.jpeg_compress_data_s**
  %6 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %compress, align 8, !tbaa !1
  %cinfo = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %6, i32 0, i32 8
  %7 = load i8**, i8*** %scanlines.addr, align 8, !tbaa !1
  %8 = load i32, i32* %num_lines.addr, align 4, !tbaa !19
  %call4 = call i32 @jpeg_write_scanlines(%struct.jpeg_compress_struct* %cinfo, i8** %7, i32 %8) #3
  store i32 %call4, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

declare i32 @jpeg_write_scanlines(%struct.jpeg_compress_struct*, i8**, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gs_jpeg_finish_compress(%struct.stream_DCT_state_s* %st) #0 {
entry:
  %retval = alloca i32, align 4
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
  %call = call i32 @_setjmp(%struct.__jmp_buf_tag* %arraydecay1) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %st.addr, align 8, !tbaa !1
  %call2 = call i32 @gs_jpeg_log_error(%struct.stream_DCT_state_s* %4) #3
  store i32 %call2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %st.addr, align 8, !tbaa !1
  %data3 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %5, i32 0, i32 10
  %compress = bitcast %union._jd* %data3 to %struct.jpeg_compress_data_s**
  %6 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %compress, align 8, !tbaa !1
  %cinfo = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %6, i32 0, i32 8
  call void @jpeg_finish_compress(%struct.jpeg_compress_struct* %cinfo) #3
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

declare void @jpeg_finish_compress(%struct.jpeg_compress_struct*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin }
attributes #4 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !8, i64 456}
!6 = !{!"jpeg_compress_data_s", !7, i64 0, !9, i64 56, !11, i64 224, !2, i64 432, !2, i64 440, !2, i64 448, !8, i64 456, !8, i64 460, !12, i64 464, !15, i64 1048, !3, i64 1088, !8, i64 1188, !8, i64 1192}
!7 = !{!"stream_template_s", !2, i64 0, !2, i64 8, !2, i64 16, !8, i64 24, !8, i64 28, !2, i64 32, !2, i64 40, !2, i64 48}
!8 = !{!"int", !3, i64 0}
!9 = !{!"jpeg_error_mgr", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !8, i64 40, !3, i64 44, !8, i64 124, !10, i64 128, !2, i64 136, !8, i64 144, !2, i64 152, !8, i64 160, !8, i64 164}
!10 = !{!"long", !3, i64 0}
!11 = !{!"", !3, i64 0}
!12 = !{!"jpeg_compress_struct", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !3, i64 32, !8, i64 36, !2, i64 40, !8, i64 48, !8, i64 52, !8, i64 56, !3, i64 60, !13, i64 64, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !3, i64 96, !2, i64 104, !3, i64 112, !3, i64 144, !3, i64 160, !3, i64 192, !3, i64 224, !3, i64 240, !3, i64 256, !8, i64 272, !2, i64 280, !3, i64 288, !3, i64 292, !3, i64 296, !3, i64 300, !3, i64 304, !8, i64 308, !3, i64 312, !8, i64 316, !8, i64 320, !3, i64 324, !3, i64 328, !3, i64 329, !3, i64 330, !14, i64 332, !14, i64 334, !3, i64 336, !3, i64 340, !8, i64 344, !3, i64 348, !8, i64 352, !8, i64 356, !8, i64 360, !8, i64 364, !8, i64 368, !8, i64 372, !3, i64 376, !8, i64 408, !8, i64 412, !8, i64 416, !3, i64 420, !8, i64 460, !8, i64 464, !8, i64 468, !8, i64 472, !8, i64 476, !2, i64 480, !8, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !8, i64 576}
!13 = !{!"double", !3, i64 0}
!14 = !{!"short", !3, i64 0}
!15 = !{!"jpeg_destination_mgr", !2, i64 0, !10, i64 8, !2, i64 16, !2, i64 24, !2, i64 32}
!16 = !{!6, !8, i64 460}
!17 = !{!6, !2, i64 448}
!18 = !{!3, !3, i64 0}
!19 = !{!8, !8, i64 0}
