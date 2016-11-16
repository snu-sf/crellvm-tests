; ModuleID = './sdctd.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_gc_root_s = type { %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i32 }
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8] }
%struct.stream_template_s = type { %struct.gs_memory_struct_type_s*, {}*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, {}* }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.stream_DCT_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %struct.gs_const_string_s, float, i32, i32, %struct.gs_memory_s*, %union._jd, %struct.cmm_profile_s*, i8, i64, i32, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
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
%struct.jpeg_source_mgr = type { i8*, i64, void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i64)*, i32 (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*)* }
%struct.jpeg_decompress_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i8*, i32, i32, %struct.jpeg_source_mgr*, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8**, i32, i32, i32, i32, i32, [64 x i32]*, [4 x %struct.JQUANT_TBL*], [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*], i32, %struct.jpeg_component_info*, i32, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i8, i8, i16, i16, i32, i8, i32, i32, %struct.jpeg_marker_struct*, i32, i32, i32, i32, i32, i8*, i32, [4 x %struct.jpeg_component_info*], i32, i32, i32, [64 x i32], i32, i32, i32, i32, i32, i32*, i32, i32, %struct.jpeg_decomp_master*, %struct.jpeg_d_main_controller*, %struct.jpeg_d_coef_controller*, %struct.jpeg_d_post_controller*, %struct.jpeg_input_controller*, %struct.jpeg_marker_reader*, %struct.jpeg_entropy_decoder*, %struct.jpeg_inverse_dct*, %struct.jpeg_upsampler*, %struct.jpeg_color_deconverter*, %struct.jpeg_color_quantizer* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
%struct.jpeg_marker_struct = type { %struct.jpeg_marker_struct*, i8, i32, i32, i8* }
%struct.jpeg_decomp_master = type opaque
%struct.jpeg_d_main_controller = type opaque
%struct.jpeg_d_coef_controller = type opaque
%struct.jpeg_d_post_controller = type opaque
%struct.jpeg_input_controller = type opaque
%struct.jpeg_marker_reader = type opaque
%struct.jpeg_entropy_decoder = type opaque
%struct.jpeg_inverse_dct = type opaque
%struct.jpeg_upsampler = type opaque
%struct.jpeg_color_deconverter = type opaque
%struct.jpeg_color_quantizer = type opaque
%struct.jpeg_decompress_data_s = type { %struct.stream_template_s, %struct.jpeg_error_mgr, %struct.gsfix_jmp_buf, %struct.gs_memory_s*, %struct.gs_memory_s*, i8*, i32, i32, %struct.jpeg_decompress_struct, %struct.jpeg_source_mgr, i64, i32, i32, i8*, i32 }

@st_DCT_state = external constant %struct.gs_memory_struct_type_s, align 8
@s_DCTD_template = constant { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* } { %struct.gs_memory_struct_type_s* @st_DCT_state, i32 (%struct.stream_state_s*)* @s_DCTD_init, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_DCTD_process, i32 2000, i32 4000, void (%struct.stream_state_s*)* null, void (%struct.stream_state_s*)* @s_DCTD_set_defaults, i32 (%struct.stream_state_s*)* null }, align 8
@fake_eoi = internal constant [2 x i8] c"\FF\D9", align 1
@.str = private unnamed_addr constant [32 x i8] c"s_DCTD_process(scanline_buffer)\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @s_DCTD_init(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_DCT_state_s*, align 8
  %src = alloca %struct.jpeg_source_mgr*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_DCT_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_DCT_state_s*
  store %struct.stream_DCT_state_s* %2, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast %struct.jpeg_source_mgr** %src to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %4, i32 0, i32 10
  %decompress = bitcast %union._jd* %data to %struct.jpeg_decompress_data_s**
  %5 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %decompress, align 8, !tbaa !1
  %source = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %5, i32 0, i32 9
  store %struct.jpeg_source_mgr* %source, %struct.jpeg_source_mgr** %src, align 8, !tbaa !1
  %6 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !1
  %init_source = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %6, i32 0, i32 2
  store void (%struct.jpeg_decompress_struct*)* @dctd_init_source, void (%struct.jpeg_decompress_struct*)** %init_source, align 8, !tbaa !5
  %7 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !1
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %7, i32 0, i32 3
  store i32 (%struct.jpeg_decompress_struct*)* @dctd_fill_input_buffer, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer, align 8, !tbaa !8
  %8 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !1
  %skip_input_data = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %8, i32 0, i32 4
  store void (%struct.jpeg_decompress_struct*, i64)* @dctd_skip_input_data, void (%struct.jpeg_decompress_struct*, i64)** %skip_input_data, align 8, !tbaa !9
  %9 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !1
  %term_source = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %9, i32 0, i32 6
  store void (%struct.jpeg_decompress_struct*)* @dctd_term_source, void (%struct.jpeg_decompress_struct*)** %term_source, align 8, !tbaa !10
  %10 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !1
  %resync_to_restart = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %10, i32 0, i32 5
  store i32 (%struct.jpeg_decompress_struct*, i32)* @jpeg_resync_to_restart, i32 (%struct.jpeg_decompress_struct*, i32)** %resync_to_restart, align 8, !tbaa !11
  %11 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %jpeg_memory = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %11, i32 0, i32 9
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %jpeg_memory, align 8, !tbaa !12
  %13 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %data1 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %13, i32 0, i32 10
  %common = bitcast %union._jd* %data1 to %struct.jpeg_stream_data_s**
  %14 = load %struct.jpeg_stream_data_s*, %struct.jpeg_stream_data_s** %common, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.jpeg_stream_data_s, %struct.jpeg_stream_data_s* %14, i32 0, i32 3
  store %struct.gs_memory_s* %12, %struct.gs_memory_s** %memory, align 8, !tbaa !17
  %15 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !1
  %16 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %data2 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %16, i32 0, i32 10
  %decompress3 = bitcast %union._jd* %data2 to %struct.jpeg_decompress_data_s**
  %17 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %decompress3, align 8, !tbaa !1
  %dinfo = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %17, i32 0, i32 8
  %src4 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %dinfo, i32 0, i32 6
  store %struct.jpeg_source_mgr* %15, %struct.jpeg_source_mgr** %src4, align 8, !tbaa !22
  %18 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %data5 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %18, i32 0, i32 10
  %decompress6 = bitcast %union._jd* %data5 to %struct.jpeg_decompress_data_s**
  %19 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %decompress6, align 8, !tbaa !1
  %skip = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %19, i32 0, i32 10
  store i64 0, i64* %skip, align 8, !tbaa !27
  %20 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %data7 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %20, i32 0, i32 10
  %decompress8 = bitcast %union._jd* %data7 to %struct.jpeg_decompress_data_s**
  %21 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %decompress8, align 8, !tbaa !1
  %input_eod = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %21, i32 0, i32 11
  store i32 0, i32* %input_eod, align 4, !tbaa !28
  %22 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %data9 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %22, i32 0, i32 10
  %decompress10 = bitcast %union._jd* %data9 to %struct.jpeg_decompress_data_s**
  %23 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %decompress10, align 8, !tbaa !1
  %faked_eoi = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %23, i32 0, i32 12
  store i32 0, i32* %faked_eoi, align 4, !tbaa !29
  %24 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %phase = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %24, i32 0, i32 15
  store i32 0, i32* %phase, align 4, !tbaa !30
  %25 = bitcast %struct.jpeg_source_mgr** %src to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = bitcast %struct.stream_DCT_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @s_DCTD_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %ss = alloca %struct.stream_DCT_state_s*, align 8
  %jddp = alloca %struct.jpeg_decompress_data_s*, align 8
  %src = alloca %struct.jpeg_source_mgr*, align 8
  %code = alloca i32, align 4
  %avail = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %avail140 = alloca i32, align 4
  %tomove = alloca i32, align 4
  %read = alloca i32, align 4
  %samples = alloca i8*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !31
  %0 = bitcast %struct.stream_DCT_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_DCT_state_s*
  store %struct.stream_DCT_state_s* %2, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast %struct.jpeg_decompress_data_s** %jddp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %4, i32 0, i32 10
  %decompress = bitcast %union._jd* %data to %struct.jpeg_decompress_data_s**
  %5 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %decompress, align 8, !tbaa !1
  store %struct.jpeg_decompress_data_s* %5, %struct.jpeg_decompress_data_s** %jddp, align 8, !tbaa !1
  %6 = bitcast %struct.jpeg_source_mgr** %src to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %jddp, align 8, !tbaa !1
  %dinfo = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %7, i32 0, i32 8
  %src1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %dinfo, i32 0, i32 6
  %8 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src1, align 8, !tbaa !22
  store %struct.jpeg_source_mgr* %8, %struct.jpeg_source_mgr** %src, align 8, !tbaa !1
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %10 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %jddp, align 8, !tbaa !1
  %skip = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %10, i32 0, i32 10
  %11 = load i64, i64* %skip, align 8, !tbaa !27
  %cmp = icmp ne i64 %11, 0
  br i1 %cmp, label %if.then, label %if.end.14

if.then:                                          ; preds = %do.end
  %12 = bitcast i64* %avail to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %13, i32 0, i32 1
  %14 = load i8*, i8** %limit, align 8, !tbaa !32
  %15 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %15, i32 0, i32 0
  %16 = load i8*, i8** %ptr, align 8, !tbaa !34
  %sub.ptr.lhs.cast = ptrtoint i8* %14 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %16 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %avail, align 8, !tbaa !35
  %17 = load i64, i64* %avail, align 8, !tbaa !35
  %18 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %jddp, align 8, !tbaa !1
  %skip2 = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %18, i32 0, i32 10
  %19 = load i64, i64* %skip2, align 8, !tbaa !27
  %cmp3 = icmp slt i64 %17, %19
  br i1 %cmp3, label %if.then.4, label %if.end.10

if.then.4:                                        ; preds = %if.then
  %20 = load i64, i64* %avail, align 8, !tbaa !35
  %21 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %jddp, align 8, !tbaa !1
  %skip5 = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %21, i32 0, i32 10
  %22 = load i64, i64* %skip5, align 8, !tbaa !27
  %sub = sub nsw i64 %22, %20
  store i64 %sub, i64* %skip5, align 8, !tbaa !27
  %23 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit6 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %23, i32 0, i32 1
  %24 = load i8*, i8** %limit6, align 8, !tbaa !32
  %25 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr7 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %25, i32 0, i32 0
  store i8* %24, i8** %ptr7, align 8, !tbaa !34
  %26 = load i32, i32* %last.addr, align 4, !tbaa !31
  %tobool = icmp ne i32 %26, 0
  br i1 %tobool, label %if.end, label %if.then.8

if.then.8:                                        ; preds = %if.then.4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.4
  %27 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %jddp, align 8, !tbaa !1
  %skip9 = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %27, i32 0, i32 10
  store i64 0, i64* %skip9, align 8, !tbaa !27
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then
  %28 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %jddp, align 8, !tbaa !1
  %skip11 = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %28, i32 0, i32 10
  %29 = load i64, i64* %skip11, align 8, !tbaa !27
  %30 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr12 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %30, i32 0, i32 0
  %31 = load i8*, i8** %ptr12, align 8, !tbaa !34
  %add.ptr = getelementptr inbounds i8, i8* %31, i64 %29
  store i8* %add.ptr, i8** %ptr12, align 8, !tbaa !34
  %32 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %jddp, align 8, !tbaa !1
  %skip13 = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %32, i32 0, i32 10
  store i64 0, i64* %skip13, align 8, !tbaa !27
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.10, %if.then.8
  %33 = bitcast i64* %avail to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.289 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.14

if.end.14:                                        ; preds = %cleanup.cont, %do.end
  %34 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr15 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %34, i32 0, i32 0
  %35 = load i8*, i8** %ptr15, align 8, !tbaa !34
  %add.ptr16 = getelementptr inbounds i8, i8* %35, i64 1
  %36 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !1
  %next_input_byte = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %36, i32 0, i32 0
  store i8* %add.ptr16, i8** %next_input_byte, align 8, !tbaa !36
  %37 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit17 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %37, i32 0, i32 1
  %38 = load i8*, i8** %limit17, align 8, !tbaa !32
  %39 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr18 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %39, i32 0, i32 0
  %40 = load i8*, i8** %ptr18, align 8, !tbaa !34
  %sub.ptr.lhs.cast19 = ptrtoint i8* %38 to i64
  %sub.ptr.rhs.cast20 = ptrtoint i8* %40 to i64
  %sub.ptr.sub21 = sub i64 %sub.ptr.lhs.cast19, %sub.ptr.rhs.cast20
  %41 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !1
  %bytes_in_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %41, i32 0, i32 1
  store i64 %sub.ptr.sub21, i64* %bytes_in_buffer, align 8, !tbaa !37
  %42 = load i32, i32* %last.addr, align 4, !tbaa !31
  %43 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %jddp, align 8, !tbaa !1
  %input_eod = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %43, i32 0, i32 11
  store i32 %42, i32* %input_eod, align 4, !tbaa !28
  %44 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %phase = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %44, i32 0, i32 15
  %45 = load i32, i32* %phase, align 4, !tbaa !30
  switch i32 %45, label %sw.epilog.288 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.45
    i32 2, label %sw.bb.89
    i32 3, label %sw.bb.135
    i32 4, label %sw.bb.266
    i32 5, label %sw.bb.287
  ]

sw.bb:                                            ; preds = %if.end.14
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.bb
  %46 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr22 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %46, i32 0, i32 0
  %47 = load i8*, i8** %ptr22, align 8, !tbaa !34
  %48 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit23 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %48, i32 0, i32 1
  %49 = load i8*, i8** %limit23, align 8, !tbaa !32
  %cmp24 = icmp ult i8* %47, %49
  br i1 %cmp24, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %50 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr25 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %50, i32 0, i32 0
  %51 = load i8*, i8** %ptr25, align 8, !tbaa !34
  %arrayidx = getelementptr inbounds i8, i8* %51, i64 1
  %52 = load i8, i8* %arrayidx, align 1, !tbaa !38
  %conv = zext i8 %52 to i32
  %cmp26 = icmp ne i32 %conv, 255
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %53 = phi i1 [ false, %while.cond ], [ %cmp26, %land.rhs ]
  br i1 %53, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %54 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr28 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %54, i32 0, i32 0
  %55 = load i8*, i8** %ptr28, align 8, !tbaa !34
  %incdec.ptr = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %incdec.ptr, i8** %ptr28, align 8, !tbaa !34
  br label %while.cond

while.end:                                        ; preds = %land.end
  %56 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr29 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %56, i32 0, i32 0
  %57 = load i8*, i8** %ptr29, align 8, !tbaa !34
  %58 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit30 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %58, i32 0, i32 1
  %59 = load i8*, i8** %limit30, align 8, !tbaa !32
  %cmp31 = icmp eq i8* %57, %59
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %while.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.289

if.end.34:                                        ; preds = %while.end
  %60 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr35 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %60, i32 0, i32 0
  %61 = load i8*, i8** %ptr35, align 8, !tbaa !34
  %add.ptr36 = getelementptr inbounds i8, i8* %61, i64 1
  %62 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !1
  %next_input_byte37 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %62, i32 0, i32 0
  store i8* %add.ptr36, i8** %next_input_byte37, align 8, !tbaa !36
  %63 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit38 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %63, i32 0, i32 1
  %64 = load i8*, i8** %limit38, align 8, !tbaa !32
  %65 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr39 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %65, i32 0, i32 0
  %66 = load i8*, i8** %ptr39, align 8, !tbaa !34
  %sub.ptr.lhs.cast40 = ptrtoint i8* %64 to i64
  %sub.ptr.rhs.cast41 = ptrtoint i8* %66 to i64
  %sub.ptr.sub42 = sub i64 %sub.ptr.lhs.cast40, %sub.ptr.rhs.cast41
  %67 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !1
  %bytes_in_buffer43 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %67, i32 0, i32 1
  store i64 %sub.ptr.sub42, i64* %bytes_in_buffer43, align 8, !tbaa !37
  %68 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %phase44 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %68, i32 0, i32 15
  store i32 1, i32* %phase44, align 4, !tbaa !30
  br label %sw.bb.45

sw.bb.45:                                         ; preds = %if.end.14, %if.end.34
  %69 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %call = call i32 @gs_jpeg_read_header(%struct.stream_DCT_state_s* %69, i32 1) #4
  store i32 %call, i32* %code, align 4, !tbaa !31
  %cmp46 = icmp slt i32 %call, 0
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %sw.bb.45
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.289

if.end.49:                                        ; preds = %sw.bb.45
  %70 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %jddp, align 8, !tbaa !1
  %faked_eoi = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %70, i32 0, i32 12
  %71 = load i32, i32* %faked_eoi, align 4, !tbaa !29
  %tobool50 = icmp ne i32 %71, 0
  br i1 %tobool50, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.49
  %72 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit51 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %72, i32 0, i32 1
  %73 = load i8*, i8** %limit51, align 8, !tbaa !32
  br label %cond.end

cond.false:                                       ; preds = %if.end.49
  %74 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !1
  %next_input_byte52 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %74, i32 0, i32 0
  %75 = load i8*, i8** %next_input_byte52, align 8, !tbaa !36
  %add.ptr53 = getelementptr inbounds i8, i8* %75, i64 -1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %73, %cond.true ], [ %add.ptr53, %cond.false ]
  %76 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr54 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %76, i32 0, i32 0
  store i8* %cond, i8** %ptr54, align 8, !tbaa !34
  %77 = load i32, i32* %code, align 4, !tbaa !31
  switch i32 %77, label %sw.epilog [
    i32 0, label %sw.bb.55
  ]

sw.bb.55:                                         ; preds = %cond.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.289

sw.epilog:                                        ; preds = %cond.end
  %78 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %ColorTransform = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %78, i32 0, i32 7
  %79 = load i32, i32* %ColorTransform, align 4, !tbaa !39
  %cmp56 = icmp eq i32 %79, -1
  br i1 %cmp56, label %if.then.58, label %if.end.66

if.then.58:                                       ; preds = %sw.epilog
  %80 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %jddp, align 8, !tbaa !1
  %dinfo59 = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %80, i32 0, i32 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %dinfo59, i32 0, i32 9
  %81 = load i32, i32* %num_components, align 4, !tbaa !40
  %cmp60 = icmp eq i32 %81, 3
  br i1 %cmp60, label %if.then.62, label %if.else

if.then.62:                                       ; preds = %if.then.58
  %82 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %ColorTransform63 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %82, i32 0, i32 7
  store i32 1, i32* %ColorTransform63, align 4, !tbaa !39
  br label %if.end.65

if.else:                                          ; preds = %if.then.58
  %83 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %ColorTransform64 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %83, i32 0, i32 7
  store i32 0, i32* %ColorTransform64, align 4, !tbaa !39
  br label %if.end.65

if.end.65:                                        ; preds = %if.else, %if.then.62
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %sw.epilog
  %84 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %jddp, align 8, !tbaa !1
  %dinfo67 = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %84, i32 0, i32 8
  %saw_Adobe_marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %dinfo67, i32 0, i32 58
  %85 = load i32, i32* %saw_Adobe_marker, align 4, !tbaa !41
  %tobool68 = icmp ne i32 %85, 0
  br i1 %tobool68, label %if.then.69, label %if.end.73

if.then.69:                                       ; preds = %if.end.66
  %86 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %jddp, align 8, !tbaa !1
  %dinfo70 = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %86, i32 0, i32 8
  %Adobe_transform = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %dinfo70, i32 0, i32 59
  %87 = load i8, i8* %Adobe_transform, align 1, !tbaa !42
  %conv71 = zext i8 %87 to i32
  %88 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %ColorTransform72 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %88, i32 0, i32 7
  store i32 %conv71, i32* %ColorTransform72, align 4, !tbaa !39
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.69, %if.end.66
  %89 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %jddp, align 8, !tbaa !1
  %dinfo74 = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %89, i32 0, i32 8
  %num_components75 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %dinfo74, i32 0, i32 9
  %90 = load i32, i32* %num_components75, align 4, !tbaa !40
  switch i32 %90, label %sw.epilog.87 [
    i32 3, label %sw.bb.76
    i32 4, label %sw.bb.81
  ]

sw.bb.76:                                         ; preds = %if.end.73
  %91 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %ColorTransform77 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %91, i32 0, i32 7
  %92 = load i32, i32* %ColorTransform77, align 4, !tbaa !39
  %tobool78 = icmp ne i32 %92, 0
  %cond79 = select i1 %tobool78, i32 3, i32 2
  %93 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %jddp, align 8, !tbaa !1
  %dinfo80 = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %93, i32 0, i32 8
  %jpeg_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %dinfo80, i32 0, i32 10
  store i32 %cond79, i32* %jpeg_color_space, align 4, !tbaa !43
  br label %sw.epilog.87

sw.bb.81:                                         ; preds = %if.end.73
  %94 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %ColorTransform82 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %94, i32 0, i32 7
  %95 = load i32, i32* %ColorTransform82, align 4, !tbaa !39
  %tobool83 = icmp ne i32 %95, 0
  %cond84 = select i1 %tobool83, i32 5, i32 4
  %96 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %jddp, align 8, !tbaa !1
  %dinfo85 = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %96, i32 0, i32 8
  %jpeg_color_space86 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %dinfo85, i32 0, i32 10
  store i32 %cond84, i32* %jpeg_color_space86, align 4, !tbaa !43
  br label %sw.epilog.87

sw.epilog.87:                                     ; preds = %if.end.73, %sw.bb.81, %sw.bb.76
  %97 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %phase88 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %97, i32 0, i32 15
  store i32 2, i32* %phase88, align 4, !tbaa !30
  br label %sw.bb.89

sw.bb.89:                                         ; preds = %if.end.14, %sw.epilog.87
  %98 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %call90 = call i32 @gs_jpeg_start_decompress(%struct.stream_DCT_state_s* %98) #4
  store i32 %call90, i32* %code, align 4, !tbaa !31
  %cmp91 = icmp slt i32 %call90, 0
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %sw.bb.89
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.289

if.end.94:                                        ; preds = %sw.bb.89
  %99 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %jddp, align 8, !tbaa !1
  %faked_eoi95 = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %99, i32 0, i32 12
  %100 = load i32, i32* %faked_eoi95, align 4, !tbaa !29
  %tobool96 = icmp ne i32 %100, 0
  br i1 %tobool96, label %cond.true.97, label %cond.false.99

cond.true.97:                                     ; preds = %if.end.94
  %101 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit98 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %101, i32 0, i32 1
  %102 = load i8*, i8** %limit98, align 8, !tbaa !32
  br label %cond.end.102

cond.false.99:                                    ; preds = %if.end.94
  %103 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !1
  %next_input_byte100 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %103, i32 0, i32 0
  %104 = load i8*, i8** %next_input_byte100, align 8, !tbaa !36
  %add.ptr101 = getelementptr inbounds i8, i8* %104, i64 -1
  br label %cond.end.102

cond.end.102:                                     ; preds = %cond.false.99, %cond.true.97
  %cond103 = phi i8* [ %102, %cond.true.97 ], [ %add.ptr101, %cond.false.99 ]
  %105 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr104 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %105, i32 0, i32 0
  store i8* %cond103, i8** %ptr104, align 8, !tbaa !34
  %106 = load i32, i32* %code, align 4, !tbaa !31
  %cmp105 = icmp eq i32 %106, 0
  br i1 %cmp105, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %cond.end.102
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.289

if.end.108:                                       ; preds = %cond.end.102
  %107 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %jddp, align 8, !tbaa !1
  %dinfo109 = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %107, i32 0, i32 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %dinfo109, i32 0, i32 27
  %108 = load i32, i32* %output_width, align 4, !tbaa !44
  %109 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %jddp, align 8, !tbaa !1
  %dinfo110 = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %109, i32 0, i32 8
  %output_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %dinfo110, i32 0, i32 30
  %110 = load i32, i32* %output_components, align 4, !tbaa !45
  %mul = mul i32 %108, %110
  %111 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %scan_line_size = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %111, i32 0, i32 14
  store i32 %mul, i32* %scan_line_size, align 4, !tbaa !46
  br label %do.body.111

do.body.111:                                      ; preds = %if.end.108
  br label %do.cond.112

do.cond.112:                                      ; preds = %do.body.111
  br label %do.end.113

do.end.113:                                       ; preds = %do.cond.112
  %112 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %scan_line_size114 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %112, i32 0, i32 14
  %113 = load i32, i32* %scan_line_size114, align 4, !tbaa !46
  %114 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %jddp, align 8, !tbaa !1
  %templat = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %114, i32 0, i32 0
  %min_out_size = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %templat, i32 0, i32 4
  %115 = load i32, i32* %min_out_size, align 4, !tbaa !47
  %cmp115 = icmp ugt i32 %113, %115
  br i1 %cmp115, label %if.then.117, label %if.end.133

if.then.117:                                      ; preds = %do.end.113
  %116 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %jddp, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %116, i32 0, i32 3
  %117 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !48
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %117, i32 0, i32 1
  %stable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 3
  %118 = load %struct.gs_memory_s* (%struct.gs_memory_s*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)** %stable, align 8, !tbaa !49
  %119 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %jddp, align 8, !tbaa !1
  %memory118 = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %119, i32 0, i32 3
  %120 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory118, align 8, !tbaa !48
  %call119 = call %struct.gs_memory_s* %118(%struct.gs_memory_s* %120) #4
  %procs120 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %call119, i32 0, i32 1
  %alloc_bytes_immovable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs120, i32 0, i32 0
  %121 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes_immovable, align 8, !tbaa !52
  %122 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %jddp, align 8, !tbaa !1
  %memory121 = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %122, i32 0, i32 3
  %123 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory121, align 8, !tbaa !48
  %procs122 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %123, i32 0, i32 1
  %stable123 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs122, i32 0, i32 3
  %124 = load %struct.gs_memory_s* (%struct.gs_memory_s*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)** %stable123, align 8, !tbaa !49
  %125 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %jddp, align 8, !tbaa !1
  %memory124 = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %125, i32 0, i32 3
  %126 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory124, align 8, !tbaa !48
  %call125 = call %struct.gs_memory_s* %124(%struct.gs_memory_s* %126) #4
  %127 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %scan_line_size126 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %127, i32 0, i32 14
  %128 = load i32, i32* %scan_line_size126, align 4, !tbaa !46
  %call127 = call i8* %121(%struct.gs_memory_s* %call125, i32 %128, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0)) #4
  %129 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %jddp, align 8, !tbaa !1
  %scanline_buffer = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %129, i32 0, i32 13
  store i8* %call127, i8** %scanline_buffer, align 8, !tbaa !53
  %130 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %jddp, align 8, !tbaa !1
  %scanline_buffer128 = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %130, i32 0, i32 13
  %131 = load i8*, i8** %scanline_buffer128, align 8, !tbaa !53
  %cmp129 = icmp eq i8* %131, null
  br i1 %cmp129, label %if.then.131, label %if.end.132

if.then.131:                                      ; preds = %if.then.117
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.289

if.end.132:                                       ; preds = %if.then.117
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %do.end.113
  %132 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %jddp, align 8, !tbaa !1
  %bytes_in_scanline = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %132, i32 0, i32 14
  store i32 0, i32* %bytes_in_scanline, align 4, !tbaa !54
  %133 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %phase134 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %133, i32 0, i32 15
  store i32 3, i32* %phase134, align 4, !tbaa !30
  br label %sw.bb.135

sw.bb.135:                                        ; preds = %if.end.14, %if.end.133
  br label %dumpbuffer

dumpbuffer:                                       ; preds = %cleanup.260, %sw.bb.135
  %134 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %jddp, align 8, !tbaa !1
  %bytes_in_scanline136 = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %134, i32 0, i32 14
  %135 = load i32, i32* %bytes_in_scanline136, align 4, !tbaa !54
  %cmp137 = icmp ne i32 %135, 0
  br i1 %cmp137, label %if.then.139, label %if.end.181

if.then.139:                                      ; preds = %dumpbuffer
  %136 = bitcast i32* %avail140 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %136) #1
  %137 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit141 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %137, i32 0, i32 2
  %138 = load i8*, i8** %limit141, align 8, !tbaa !55
  %139 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr142 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %139, i32 0, i32 1
  %140 = load i8*, i8** %ptr142, align 8, !tbaa !57
  %sub.ptr.lhs.cast143 = ptrtoint i8* %138 to i64
  %sub.ptr.rhs.cast144 = ptrtoint i8* %140 to i64
  %sub.ptr.sub145 = sub i64 %sub.ptr.lhs.cast143, %sub.ptr.rhs.cast144
  %conv146 = trunc i64 %sub.ptr.sub145 to i32
  store i32 %conv146, i32* %avail140, align 4, !tbaa !31
  %141 = bitcast i32* %tomove to i8*
  call void @llvm.lifetime.start(i64 4, i8* %141) #1
  %142 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %jddp, align 8, !tbaa !1
  %bytes_in_scanline147 = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %142, i32 0, i32 14
  %143 = load i32, i32* %bytes_in_scanline147, align 4, !tbaa !54
  %144 = load i32, i32* %avail140, align 4, !tbaa !31
  %cmp148 = icmp ult i32 %143, %144
  br i1 %cmp148, label %cond.true.150, label %cond.false.152

cond.true.150:                                    ; preds = %if.then.139
  %145 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %jddp, align 8, !tbaa !1
  %bytes_in_scanline151 = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %145, i32 0, i32 14
  %146 = load i32, i32* %bytes_in_scanline151, align 4, !tbaa !54
  br label %cond.end.153

cond.false.152:                                   ; preds = %if.then.139
  %147 = load i32, i32* %avail140, align 4, !tbaa !31
  br label %cond.end.153

cond.end.153:                                     ; preds = %cond.false.152, %cond.true.150
  %cond154 = phi i32 [ %146, %cond.true.150 ], [ %147, %cond.false.152 ]
  store i32 %cond154, i32* %tomove, align 4, !tbaa !31
  br label %do.body.155

do.body.155:                                      ; preds = %cond.end.153
  br label %do.cond.156

do.cond.156:                                      ; preds = %do.body.155
  br label %do.end.157

do.end.157:                                       ; preds = %do.cond.156
  %148 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr158 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %148, i32 0, i32 1
  %149 = load i8*, i8** %ptr158, align 8, !tbaa !57
  %add.ptr159 = getelementptr inbounds i8, i8* %149, i64 1
  %150 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %jddp, align 8, !tbaa !1
  %scanline_buffer160 = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %150, i32 0, i32 13
  %151 = load i8*, i8** %scanline_buffer160, align 8, !tbaa !53
  %152 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %scan_line_size161 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %152, i32 0, i32 14
  %153 = load i32, i32* %scan_line_size161, align 4, !tbaa !46
  %154 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %jddp, align 8, !tbaa !1
  %bytes_in_scanline162 = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %154, i32 0, i32 14
  %155 = load i32, i32* %bytes_in_scanline162, align 4, !tbaa !54
  %sub163 = sub i32 %153, %155
  %idx.ext = zext i32 %sub163 to i64
  %add.ptr164 = getelementptr inbounds i8, i8* %151, i64 %idx.ext
  %156 = load i32, i32* %tomove, align 4, !tbaa !31
  %conv165 = zext i32 %156 to i64
  %call166 = call i8* @memcpy(i8* %add.ptr159, i8* %add.ptr164, i64 %conv165) #5
  %157 = load i32, i32* %tomove, align 4, !tbaa !31
  %158 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr167 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %158, i32 0, i32 1
  %159 = load i8*, i8** %ptr167, align 8, !tbaa !57
  %idx.ext168 = zext i32 %157 to i64
  %add.ptr169 = getelementptr inbounds i8, i8* %159, i64 %idx.ext168
  store i8* %add.ptr169, i8** %ptr167, align 8, !tbaa !57
  %160 = load i32, i32* %tomove, align 4, !tbaa !31
  %161 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %jddp, align 8, !tbaa !1
  %bytes_in_scanline170 = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %161, i32 0, i32 14
  %162 = load i32, i32* %bytes_in_scanline170, align 4, !tbaa !54
  %sub171 = sub i32 %162, %160
  store i32 %sub171, i32* %bytes_in_scanline170, align 4, !tbaa !54
  %163 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %jddp, align 8, !tbaa !1
  %bytes_in_scanline172 = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %163, i32 0, i32 14
  %164 = load i32, i32* %bytes_in_scanline172, align 4, !tbaa !54
  %cmp173 = icmp ne i32 %164, 0
  br i1 %cmp173, label %if.then.175, label %if.end.176

if.then.175:                                      ; preds = %do.end.157
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.177

if.end.176:                                       ; preds = %do.end.157
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.177

cleanup.177:                                      ; preds = %if.end.176, %if.then.175
  %165 = bitcast i32* %tomove to i8*
  call void @llvm.lifetime.end(i64 4, i8* %165) #1
  %166 = bitcast i32* %avail140 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %166) #1
  %cleanup.dest.179 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.179, label %cleanup.289 [
    i32 0, label %cleanup.cont.180
  ]

cleanup.cont.180:                                 ; preds = %cleanup.177
  br label %if.end.181

if.end.181:                                       ; preds = %cleanup.cont.180, %dumpbuffer
  br label %while.cond.182

while.cond.182:                                   ; preds = %cleanup.cont.263, %if.end.181
  %167 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %jddp, align 8, !tbaa !1
  %dinfo183 = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %167, i32 0, i32 8
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %dinfo183, i32 0, i32 28
  %168 = load i32, i32* %output_height, align 4, !tbaa !58
  %169 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %jddp, align 8, !tbaa !1
  %dinfo184 = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %169, i32 0, i32 8
  %output_scanline = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %dinfo184, i32 0, i32 34
  %170 = load i32, i32* %output_scanline, align 4, !tbaa !59
  %cmp185 = icmp ugt i32 %168, %170
  br i1 %cmp185, label %while.body.187, label %while.end.264

while.body.187:                                   ; preds = %while.cond.182
  %171 = bitcast i32* %read to i8*
  call void @llvm.lifetime.start(i64 4, i8* %171) #1
  %172 = bitcast i8** %samples to i8*
  call void @llvm.lifetime.start(i64 8, i8* %172) #1
  %173 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %jddp, align 8, !tbaa !1
  %scanline_buffer188 = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %173, i32 0, i32 13
  %174 = load i8*, i8** %scanline_buffer188, align 8, !tbaa !53
  %cmp189 = icmp ne i8* %174, null
  br i1 %cmp189, label %if.then.191, label %if.else.193

if.then.191:                                      ; preds = %while.body.187
  %175 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %jddp, align 8, !tbaa !1
  %scanline_buffer192 = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %175, i32 0, i32 13
  %176 = load i8*, i8** %scanline_buffer192, align 8, !tbaa !53
  store i8* %176, i8** %samples, align 8, !tbaa !1
  br label %if.end.207

if.else.193:                                      ; preds = %while.body.187
  %177 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit194 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %177, i32 0, i32 2
  %178 = load i8*, i8** %limit194, align 8, !tbaa !55
  %179 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr195 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %179, i32 0, i32 1
  %180 = load i8*, i8** %ptr195, align 8, !tbaa !57
  %sub.ptr.lhs.cast196 = ptrtoint i8* %178 to i64
  %sub.ptr.rhs.cast197 = ptrtoint i8* %180 to i64
  %sub.ptr.sub198 = sub i64 %sub.ptr.lhs.cast196, %sub.ptr.rhs.cast197
  %conv199 = trunc i64 %sub.ptr.sub198 to i32
  %181 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %scan_line_size200 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %181, i32 0, i32 14
  %182 = load i32, i32* %scan_line_size200, align 4, !tbaa !46
  %cmp201 = icmp ult i32 %conv199, %182
  br i1 %cmp201, label %if.then.203, label %if.end.204

if.then.203:                                      ; preds = %if.else.193
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.260

if.end.204:                                       ; preds = %if.else.193
  %183 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr205 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %183, i32 0, i32 1
  %184 = load i8*, i8** %ptr205, align 8, !tbaa !57
  %add.ptr206 = getelementptr inbounds i8, i8* %184, i64 1
  store i8* %add.ptr206, i8** %samples, align 8, !tbaa !1
  br label %if.end.207

if.end.207:                                       ; preds = %if.end.204, %if.then.191
  %185 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %call208 = call i32 @gs_jpeg_read_scanlines(%struct.stream_DCT_state_s* %185, i8** %samples, i32 1) #4
  store i32 %call208, i32* %read, align 4, !tbaa !31
  %186 = load i32, i32* %read, align 4, !tbaa !31
  %cmp209 = icmp slt i32 %186, 0
  br i1 %cmp209, label %if.then.211, label %if.end.212

if.then.211:                                      ; preds = %if.end.207
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.260

if.end.212:                                       ; preds = %if.end.207
  br label %do.body.213

do.body.213:                                      ; preds = %if.end.212
  br label %do.cond.214

do.cond.214:                                      ; preds = %do.body.213
  br label %do.end.215

do.end.215:                                       ; preds = %do.cond.214
  %187 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %jddp, align 8, !tbaa !1
  %faked_eoi216 = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %187, i32 0, i32 12
  %188 = load i32, i32* %faked_eoi216, align 4, !tbaa !29
  %tobool217 = icmp ne i32 %188, 0
  br i1 %tobool217, label %cond.true.218, label %cond.false.220

cond.true.218:                                    ; preds = %do.end.215
  %189 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit219 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %189, i32 0, i32 1
  %190 = load i8*, i8** %limit219, align 8, !tbaa !32
  br label %cond.end.223

cond.false.220:                                   ; preds = %do.end.215
  %191 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !1
  %next_input_byte221 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %191, i32 0, i32 0
  %192 = load i8*, i8** %next_input_byte221, align 8, !tbaa !36
  %add.ptr222 = getelementptr inbounds i8, i8* %192, i64 -1
  br label %cond.end.223

cond.end.223:                                     ; preds = %cond.false.220, %cond.true.218
  %cond224 = phi i8* [ %190, %cond.true.218 ], [ %add.ptr222, %cond.false.220 ]
  %193 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr225 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %193, i32 0, i32 0
  store i8* %cond224, i8** %ptr225, align 8, !tbaa !34
  %194 = load i32, i32* %read, align 4, !tbaa !31
  %tobool226 = icmp ne i32 %194, 0
  br i1 %tobool226, label %if.end.248, label %if.then.227

if.then.227:                                      ; preds = %cond.end.223
  %195 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !1
  %next_input_byte228 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %195, i32 0, i32 0
  %196 = load i8*, i8** %next_input_byte228, align 8, !tbaa !36
  %add.ptr229 = getelementptr inbounds i8, i8* %196, i64 -1
  %197 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr230 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %197, i32 0, i32 0
  %198 = load i8*, i8** %ptr230, align 8, !tbaa !34
  %cmp231 = icmp eq i8* %add.ptr229, %198
  br i1 %cmp231, label %land.lhs.true, label %if.end.247

land.lhs.true:                                    ; preds = %if.then.227
  %199 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit233 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %199, i32 0, i32 1
  %200 = load i8*, i8** %limit233, align 8, !tbaa !32
  %201 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr234 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %201, i32 0, i32 0
  %202 = load i8*, i8** %ptr234, align 8, !tbaa !34
  %sub.ptr.lhs.cast235 = ptrtoint i8* %200 to i64
  %sub.ptr.rhs.cast236 = ptrtoint i8* %202 to i64
  %sub.ptr.sub237 = sub i64 %sub.ptr.lhs.cast235, %sub.ptr.rhs.cast236
  %203 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %templat238 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %203, i32 0, i32 0
  %204 = load %struct.stream_template_s*, %struct.stream_template_s** %templat238, align 8, !tbaa !60
  %min_in_size = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %204, i32 0, i32 3
  %205 = load i32, i32* %min_in_size, align 4, !tbaa !61
  %conv239 = zext i32 %205 to i64
  %cmp240 = icmp sge i64 %sub.ptr.sub237, %conv239
  br i1 %cmp240, label %land.lhs.true.242, label %if.end.247

land.lhs.true.242:                                ; preds = %land.lhs.true
  %206 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %call243 = call i32 @compact_jpeg_buffer(%struct.stream_cursor_read_s* %206) #4
  %cmp244 = icmp eq i32 %call243, 0
  br i1 %cmp244, label %if.then.246, label %if.end.247

if.then.246:                                      ; preds = %land.lhs.true.242
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.260

if.end.247:                                       ; preds = %land.lhs.true.242, %land.lhs.true, %if.then.227
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.260

if.end.248:                                       ; preds = %cond.end.223
  %207 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %jddp, align 8, !tbaa !1
  %scanline_buffer249 = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %207, i32 0, i32 13
  %208 = load i8*, i8** %scanline_buffer249, align 8, !tbaa !53
  %cmp250 = icmp ne i8* %208, null
  br i1 %cmp250, label %if.then.252, label %if.end.255

if.then.252:                                      ; preds = %if.end.248
  %209 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %scan_line_size253 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %209, i32 0, i32 14
  %210 = load i32, i32* %scan_line_size253, align 4, !tbaa !46
  %211 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %jddp, align 8, !tbaa !1
  %bytes_in_scanline254 = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %211, i32 0, i32 14
  store i32 %210, i32* %bytes_in_scanline254, align 4, !tbaa !54
  store i32 11, i32* %cleanup.dest.slot
  br label %cleanup.260

if.end.255:                                       ; preds = %if.end.248
  %212 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %scan_line_size256 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %212, i32 0, i32 14
  %213 = load i32, i32* %scan_line_size256, align 4, !tbaa !46
  %214 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr257 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %214, i32 0, i32 1
  %215 = load i8*, i8** %ptr257, align 8, !tbaa !57
  %idx.ext258 = zext i32 %213 to i64
  %add.ptr259 = getelementptr inbounds i8, i8* %215, i64 %idx.ext258
  store i8* %add.ptr259, i8** %ptr257, align 8, !tbaa !57
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.260

cleanup.260:                                      ; preds = %if.end.255, %if.then.252, %if.end.247, %if.then.246, %if.then.211, %if.then.203
  %216 = bitcast i8** %samples to i8*
  call void @llvm.lifetime.end(i64 8, i8* %216) #1
  %217 = bitcast i32* %read to i8*
  call void @llvm.lifetime.end(i64 4, i8* %217) #1
  %cleanup.dest.262 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.262, label %cleanup.289 [
    i32 0, label %cleanup.cont.263
    i32 11, label %dumpbuffer
  ]

cleanup.cont.263:                                 ; preds = %cleanup.260
  br label %while.cond.182

while.end.264:                                    ; preds = %while.cond.182
  %218 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %phase265 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %218, i32 0, i32 15
  store i32 4, i32* %phase265, align 4, !tbaa !30
  br label %sw.bb.266

sw.bb.266:                                        ; preds = %if.end.14, %while.end.264
  %219 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %call267 = call i32 @gs_jpeg_finish_decompress(%struct.stream_DCT_state_s* %219) #4
  store i32 %call267, i32* %code, align 4, !tbaa !31
  %cmp268 = icmp slt i32 %call267, 0
  br i1 %cmp268, label %if.then.270, label %if.end.271

if.then.270:                                      ; preds = %sw.bb.266
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.289

if.end.271:                                       ; preds = %sw.bb.266
  %220 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %jddp, align 8, !tbaa !1
  %faked_eoi272 = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %220, i32 0, i32 12
  %221 = load i32, i32* %faked_eoi272, align 4, !tbaa !29
  %tobool273 = icmp ne i32 %221, 0
  br i1 %tobool273, label %cond.true.274, label %cond.false.276

cond.true.274:                                    ; preds = %if.end.271
  %222 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit275 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %222, i32 0, i32 1
  %223 = load i8*, i8** %limit275, align 8, !tbaa !32
  br label %cond.end.279

cond.false.276:                                   ; preds = %if.end.271
  %224 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !1
  %next_input_byte277 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %224, i32 0, i32 0
  %225 = load i8*, i8** %next_input_byte277, align 8, !tbaa !36
  %add.ptr278 = getelementptr inbounds i8, i8* %225, i64 -1
  br label %cond.end.279

cond.end.279:                                     ; preds = %cond.false.276, %cond.true.274
  %cond280 = phi i8* [ %223, %cond.true.274 ], [ %add.ptr278, %cond.false.276 ]
  %226 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr281 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %226, i32 0, i32 0
  store i8* %cond280, i8** %ptr281, align 8, !tbaa !34
  %227 = load i32, i32* %code, align 4, !tbaa !31
  %cmp282 = icmp eq i32 %227, 0
  br i1 %cmp282, label %if.then.284, label %if.end.285

if.then.284:                                      ; preds = %cond.end.279
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.289

if.end.285:                                       ; preds = %cond.end.279
  %228 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %phase286 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %228, i32 0, i32 15
  store i32 5, i32* %phase286, align 4, !tbaa !30
  br label %sw.bb.287

sw.bb.287:                                        ; preds = %if.end.14, %if.end.285
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.289

sw.epilog.288:                                    ; preds = %if.end.14
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.289

cleanup.289:                                      ; preds = %sw.epilog.288, %sw.bb.287, %if.then.284, %if.then.270, %cleanup.260, %cleanup.177, %if.then.131, %if.then.107, %if.then.93, %sw.bb.55, %if.then.48, %if.then.33, %cleanup
  %229 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %229) #1
  %230 = bitcast %struct.jpeg_source_mgr** %src to i8*
  call void @llvm.lifetime.end(i64 8, i8* %230) #1
  %231 = bitcast %struct.jpeg_decompress_data_s** %jddp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %231) #1
  %232 = bitcast %struct.stream_DCT_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %232) #1
  %233 = load i32, i32* %retval
  ret i32 %233
}

; Function Attrs: nounwind uwtable
define internal void @s_DCTD_set_defaults(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  call void @s_DCT_set_defaults(%struct.stream_state_s* %0) #4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @dctd_init_source(%struct.jpeg_decompress_struct* %dinfo) #0 {
entry:
  %dinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %dinfo, %struct.jpeg_decompress_struct** %dinfo.addr, align 8, !tbaa !1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @dctd_fill_input_buffer(%struct.jpeg_decompress_struct* %dinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %dinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %jddp = alloca %struct.jpeg_decompress_data_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_decompress_struct* %dinfo, %struct.jpeg_decompress_struct** %dinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.jpeg_decompress_data_s** %jddp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %dinfo.addr, align 8, !tbaa !1
  %2 = bitcast %struct.jpeg_decompress_struct* %1 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 sub (i64 0, i64 sext (i32 ptrtoint (%struct.jpeg_decompress_struct* getelementptr inbounds (%struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* null, i32 0, i32 8) to i32) to i64))
  %3 = bitcast i8* %add.ptr to %struct.jpeg_decompress_data_s*
  store %struct.jpeg_decompress_data_s* %3, %struct.jpeg_decompress_data_s** %jddp, align 8, !tbaa !1
  %4 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %jddp, align 8, !tbaa !1
  %input_eod = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %4, i32 0, i32 11
  %5 = load i32, i32* %input_eod, align 4, !tbaa !28
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %dinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 0
  %7 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !62
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 5
  store i32 123, i32* %msg_code, align 4, !tbaa !63
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %dinfo.addr, align 8, !tbaa !1
  %err1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 0
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err1, align 8, !tbaa !62
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 1
  %10 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !64
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %dinfo.addr, align 8, !tbaa !1
  %12 = bitcast %struct.jpeg_decompress_struct* %11 to %struct.jpeg_common_struct*
  call void %10(%struct.jpeg_common_struct* %12, i32 -1) #4
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %dinfo.addr, align 8, !tbaa !1
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 6
  %14 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !65
  %next_input_byte = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %14, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @fake_eoi, i32 0, i32 0), i8** %next_input_byte, align 8, !tbaa !36
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %dinfo.addr, align 8, !tbaa !1
  %src2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 6
  %16 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src2, align 8, !tbaa !65
  %bytes_in_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %16, i32 0, i32 1
  store i64 2, i64* %bytes_in_buffer, align 8, !tbaa !37
  %17 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %jddp, align 8, !tbaa !1
  %faked_eoi = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %17, i32 0, i32 12
  store i32 1, i32* %faked_eoi, align 4, !tbaa !29
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %18 = bitcast %struct.jpeg_decompress_data_s** %jddp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal void @dctd_skip_input_data(%struct.jpeg_decompress_struct* %dinfo, i64 %num_bytes) #0 {
entry:
  %dinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %num_bytes.addr = alloca i64, align 8
  %src = alloca %struct.jpeg_source_mgr*, align 8
  %jddp = alloca %struct.jpeg_decompress_data_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_decompress_struct* %dinfo, %struct.jpeg_decompress_struct** %dinfo.addr, align 8, !tbaa !1
  store i64 %num_bytes, i64* %num_bytes.addr, align 8, !tbaa !35
  %0 = bitcast %struct.jpeg_source_mgr** %src to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %dinfo.addr, align 8, !tbaa !1
  %src1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 6
  %2 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src1, align 8, !tbaa !65
  store %struct.jpeg_source_mgr* %2, %struct.jpeg_source_mgr** %src, align 8, !tbaa !1
  %3 = bitcast %struct.jpeg_decompress_data_s** %jddp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %dinfo.addr, align 8, !tbaa !1
  %5 = bitcast %struct.jpeg_decompress_struct* %4 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 sub (i64 0, i64 sext (i32 ptrtoint (%struct.jpeg_decompress_struct* getelementptr inbounds (%struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* null, i32 0, i32 8) to i32) to i64))
  %6 = bitcast i8* %add.ptr to %struct.jpeg_decompress_data_s*
  store %struct.jpeg_decompress_data_s* %6, %struct.jpeg_decompress_data_s** %jddp, align 8, !tbaa !1
  %7 = load i64, i64* %num_bytes.addr, align 8, !tbaa !35
  %cmp = icmp sgt i64 %7, 0
  br i1 %cmp, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  %8 = load i64, i64* %num_bytes.addr, align 8, !tbaa !35
  %9 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !1
  %bytes_in_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %9, i32 0, i32 1
  %10 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !37
  %cmp2 = icmp ugt i64 %8, %10
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %11 = load i64, i64* %num_bytes.addr, align 8, !tbaa !35
  %12 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !1
  %bytes_in_buffer4 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %12, i32 0, i32 1
  %13 = load i64, i64* %bytes_in_buffer4, align 8, !tbaa !37
  %sub = sub i64 %11, %13
  %14 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %jddp, align 8, !tbaa !1
  %skip = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %14, i32 0, i32 10
  %15 = load i64, i64* %skip, align 8, !tbaa !27
  %add = add i64 %15, %sub
  store i64 %add, i64* %skip, align 8, !tbaa !27
  %16 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !1
  %bytes_in_buffer5 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %16, i32 0, i32 1
  %17 = load i64, i64* %bytes_in_buffer5, align 8, !tbaa !37
  %18 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !1
  %next_input_byte = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %18, i32 0, i32 0
  %19 = load i8*, i8** %next_input_byte, align 8, !tbaa !36
  %add.ptr6 = getelementptr inbounds i8, i8* %19, i64 %17
  store i8* %add.ptr6, i8** %next_input_byte, align 8, !tbaa !36
  %20 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !1
  %bytes_in_buffer7 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %20, i32 0, i32 1
  store i64 0, i64* %bytes_in_buffer7, align 8, !tbaa !37
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %21 = load i64, i64* %num_bytes.addr, align 8, !tbaa !35
  %22 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !1
  %next_input_byte8 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %22, i32 0, i32 0
  %23 = load i8*, i8** %next_input_byte8, align 8, !tbaa !36
  %add.ptr9 = getelementptr inbounds i8, i8* %23, i64 %21
  store i8* %add.ptr9, i8** %next_input_byte8, align 8, !tbaa !36
  %24 = load i64, i64* %num_bytes.addr, align 8, !tbaa !35
  %25 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !1
  %bytes_in_buffer10 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %25, i32 0, i32 1
  %26 = load i64, i64* %bytes_in_buffer10, align 8, !tbaa !37
  %sub11 = sub i64 %26, %24
  store i64 %sub11, i64* %bytes_in_buffer10, align 8, !tbaa !37
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %entry
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.12, %if.then.3
  %27 = bitcast %struct.jpeg_decompress_data_s** %jddp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = bitcast %struct.jpeg_source_mgr** %src to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
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
define internal void @dctd_term_source(%struct.jpeg_decompress_struct* %dinfo) #0 {
entry:
  %dinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %dinfo, %struct.jpeg_decompress_struct** %dinfo.addr, align 8, !tbaa !1
  ret void
}

declare i32 @jpeg_resync_to_restart(%struct.jpeg_decompress_struct*, i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @gs_jpeg_read_header(%struct.stream_DCT_state_s*, i32) #2

declare i32 @gs_jpeg_start_decompress(%struct.stream_DCT_state_s*) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

declare i32 @gs_jpeg_read_scanlines(%struct.stream_DCT_state_s*, i8**, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @compact_jpeg_buffer(%struct.stream_cursor_read_s* %pr) #0 {
entry:
  %retval = alloca i32, align 4
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %o = alloca i8*, align 8
  %i = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %c = alloca i8, align 1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %0 = bitcast i8** %o to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %2, i32 0, i32 1
  %3 = load i8*, i8** %limit, align 8, !tbaa !32
  store i8* %3, i8** %o, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end.8, %entry
  %4 = load i8*, i8** %o, align 8, !tbaa !1
  %5 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %5, i32 0, i32 0
  %6 = load i8*, i8** %ptr, align 8, !tbaa !34
  %sub.ptr.lhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp sge i64 %sub.ptr.sub, 2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i8*, i8** %o, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 -1
  store i8* %incdec.ptr, i8** %o, align 8, !tbaa !1
  %8 = load i8, i8* %7, align 1, !tbaa !38
  %conv = zext i8 %8 to i32
  %cmp1 = icmp eq i32 %conv, 255
  br i1 %cmp1, label %if.then, label %if.end.8

if.then:                                          ; preds = %while.body
  %9 = load i8*, i8** %o, align 8, !tbaa !1
  %10 = load i8, i8* %9, align 1, !tbaa !38
  %conv3 = zext i8 %10 to i32
  %cmp4 = icmp eq i32 %conv3, 255
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  br label %compact

if.end:                                           ; preds = %if.then
  %11 = load i8*, i8** %o, align 8, !tbaa !1
  %incdec.ptr7 = getelementptr inbounds i8, i8* %11, i32 -1
  store i8* %incdec.ptr7, i8** %o, align 8, !tbaa !1
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.40

compact:                                          ; preds = %if.then.6
  %12 = load i8*, i8** %o, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 -1
  store i8* %add.ptr, i8** %i, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %do.cond, %compact
  br label %while.cond.9

while.cond.9:                                     ; preds = %while.body.16, %do.body
  %13 = load i8*, i8** %i, align 8, !tbaa !1
  %14 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr10 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %14, i32 0, i32 0
  %15 = load i8*, i8** %ptr10, align 8, !tbaa !34
  %cmp11 = icmp ne i8* %13, %15
  br i1 %cmp11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.9
  %16 = load i8*, i8** %i, align 8, !tbaa !1
  %17 = load i8, i8* %16, align 1, !tbaa !38
  %conv13 = zext i8 %17 to i32
  %cmp14 = icmp eq i32 %conv13, 255
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.9
  %18 = phi i1 [ false, %while.cond.9 ], [ %cmp14, %land.rhs ]
  br i1 %18, label %while.body.16, label %while.end.18

while.body.16:                                    ; preds = %land.end
  %19 = load i8*, i8** %i, align 8, !tbaa !1
  %incdec.ptr17 = getelementptr inbounds i8, i8* %19, i32 -1
  store i8* %incdec.ptr17, i8** %i, align 8, !tbaa !1
  br label %while.cond.9

while.end.18:                                     ; preds = %land.end
  br label %while.cond.19

while.cond.19:                                    ; preds = %cleanup.cont, %while.end.18
  %20 = load i8*, i8** %i, align 8, !tbaa !1
  %21 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr20 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %21, i32 0, i32 0
  %22 = load i8*, i8** %ptr20, align 8, !tbaa !34
  %cmp21 = icmp ne i8* %20, %22
  br i1 %cmp21, label %while.body.23, label %while.end.31

while.body.23:                                    ; preds = %while.cond.19
  call void @llvm.lifetime.start(i64 1, i8* %c) #1
  %23 = load i8*, i8** %i, align 8, !tbaa !1
  %incdec.ptr24 = getelementptr inbounds i8, i8* %23, i32 -1
  store i8* %incdec.ptr24, i8** %i, align 8, !tbaa !1
  %24 = load i8, i8* %23, align 1, !tbaa !38
  store i8 %24, i8* %c, align 1, !tbaa !38
  %25 = load i8, i8* %c, align 1, !tbaa !38
  %26 = load i8*, i8** %o, align 8, !tbaa !1
  %incdec.ptr25 = getelementptr inbounds i8, i8* %26, i32 -1
  store i8* %incdec.ptr25, i8** %o, align 8, !tbaa !1
  store i8 %25, i8* %26, align 1, !tbaa !38
  %27 = load i8, i8* %c, align 1, !tbaa !38
  %conv26 = zext i8 %27 to i32
  %cmp27 = icmp eq i32 %conv26, 255
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %while.body.23
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %while.body.23
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.30, %if.then.29
  call void @llvm.lifetime.end(i64 1, i8* %c) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 10, label %while.end.31
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond.19

while.end.31:                                     ; preds = %cleanup, %while.cond.19
  br label %do.cond

do.cond:                                          ; preds = %while.end.31
  %28 = load i8*, i8** %i, align 8, !tbaa !1
  %29 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr32 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %29, i32 0, i32 0
  %30 = load i8*, i8** %ptr32, align 8, !tbaa !34
  %cmp33 = icmp ne i8* %28, %30
  br i1 %cmp33, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %31 = load i8*, i8** %o, align 8, !tbaa !1
  %32 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr35 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %32, i32 0, i32 0
  store i8* %31, i8** %ptr35, align 8, !tbaa !34
  %33 = load i8*, i8** %o, align 8, !tbaa !1
  %34 = load i8*, i8** %i, align 8, !tbaa !1
  %sub.ptr.lhs.cast36 = ptrtoint i8* %33 to i64
  %sub.ptr.rhs.cast37 = ptrtoint i8* %34 to i64
  %sub.ptr.sub38 = sub i64 %sub.ptr.lhs.cast36, %sub.ptr.rhs.cast37
  %conv39 = trunc i64 %sub.ptr.sub38 to i32
  store i32 %conv39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.40

cleanup.40:                                       ; preds = %do.end, %while.end
  %35 = bitcast i8** %i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = bitcast i8** %o to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = load i32, i32* %retval
  ret i32 %37

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i32 @gs_jpeg_finish_decompress(%struct.stream_DCT_state_s*) #2

declare void @s_DCT_set_defaults(%struct.stream_state_s*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 16}
!6 = !{!"jpeg_source_mgr", !2, i64 0, !7, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!7 = !{!"long", !3, i64 0}
!8 = !{!6, !2, i64 24}
!9 = !{!6, !2, i64 32}
!10 = !{!6, !2, i64 48}
!11 = !{!6, !2, i64 40}
!12 = !{!13, !2, i64 144}
!13 = !{!"stream_DCT_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !14, i64 24, !3, i64 28, !15, i64 112, !16, i64 128, !14, i64 132, !14, i64 136, !2, i64 144, !3, i64 152, !2, i64 160, !3, i64 168, !7, i64 176, !14, i64 184, !14, i64 188}
!14 = !{!"int", !3, i64 0}
!15 = !{!"gs_const_string_s", !2, i64 0, !14, i64 8}
!16 = !{!"float", !3, i64 0}
!17 = !{!18, !2, i64 432}
!18 = !{!"jpeg_stream_data_s", !19, i64 0, !20, i64 56, !21, i64 224, !2, i64 432, !2, i64 440, !2, i64 448, !14, i64 456, !14, i64 460}
!19 = !{!"stream_template_s", !2, i64 0, !2, i64 8, !2, i64 16, !14, i64 24, !14, i64 28, !2, i64 32, !2, i64 40, !2, i64 48}
!20 = !{!"jpeg_error_mgr", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !14, i64 40, !3, i64 44, !14, i64 124, !7, i64 128, !2, i64 136, !14, i64 144, !2, i64 152, !14, i64 160, !14, i64 164}
!21 = !{!"", !3, i64 0}
!22 = !{!23, !2, i64 504}
!23 = !{!"jpeg_decompress_data_s", !19, i64 0, !20, i64 56, !21, i64 224, !2, i64 432, !2, i64 440, !2, i64 448, !14, i64 456, !14, i64 460, !24, i64 464, !6, i64 1344, !7, i64 1400, !14, i64 1408, !14, i64 1412, !2, i64 1416, !14, i64 1424}
!24 = !{!"jpeg_decompress_struct", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !3, i64 32, !14, i64 36, !2, i64 40, !14, i64 48, !14, i64 52, !14, i64 56, !3, i64 60, !3, i64 64, !14, i64 68, !14, i64 72, !25, i64 80, !3, i64 88, !3, i64 92, !3, i64 96, !3, i64 100, !3, i64 104, !3, i64 108, !3, i64 112, !3, i64 116, !14, i64 120, !3, i64 124, !3, i64 128, !3, i64 132, !14, i64 136, !14, i64 140, !14, i64 144, !14, i64 148, !14, i64 152, !14, i64 156, !2, i64 160, !14, i64 168, !14, i64 172, !14, i64 176, !14, i64 180, !14, i64 184, !2, i64 192, !3, i64 200, !3, i64 232, !3, i64 264, !14, i64 296, !2, i64 304, !3, i64 312, !3, i64 316, !3, i64 320, !3, i64 324, !3, i64 340, !3, i64 356, !14, i64 372, !3, i64 376, !3, i64 380, !3, i64 381, !3, i64 382, !26, i64 384, !26, i64 386, !3, i64 388, !3, i64 392, !3, i64 396, !3, i64 400, !2, i64 408, !14, i64 416, !14, i64 420, !14, i64 424, !14, i64 428, !14, i64 432, !2, i64 440, !14, i64 448, !3, i64 456, !14, i64 488, !14, i64 492, !14, i64 496, !3, i64 500, !14, i64 756, !14, i64 760, !14, i64 764, !14, i64 768, !14, i64 772, !2, i64 776, !14, i64 784, !14, i64 788, !2, i64 792, !2, i64 800, !2, i64 808, !2, i64 816, !2, i64 824, !2, i64 832, !2, i64 840, !2, i64 848, !2, i64 856, !2, i64 864, !2, i64 872}
!25 = !{!"double", !3, i64 0}
!26 = !{!"short", !3, i64 0}
!27 = !{!23, !7, i64 1400}
!28 = !{!23, !14, i64 1408}
!29 = !{!23, !14, i64 1412}
!30 = !{!13, !14, i64 188}
!31 = !{!14, !14, i64 0}
!32 = !{!33, !2, i64 8}
!33 = !{!"stream_cursor_read_s", !2, i64 0, !2, i64 8, !2, i64 16}
!34 = !{!33, !2, i64 0}
!35 = !{!7, !7, i64 0}
!36 = !{!6, !2, i64 0}
!37 = !{!6, !7, i64 8}
!38 = !{!3, !3, i64 0}
!39 = !{!13, !14, i64 132}
!40 = !{!23, !14, i64 520}
!41 = !{!23, !3, i64 852}
!42 = !{!23, !3, i64 856}
!43 = !{!23, !3, i64 524}
!44 = !{!23, !14, i64 600}
!45 = !{!23, !14, i64 612}
!46 = !{!13, !14, i64 184}
!47 = !{!23, !14, i64 28}
!48 = !{!23, !2, i64 432}
!49 = !{!50, !2, i64 32}
!50 = !{!"gs_memory_s", !2, i64 0, !51, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!51 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!52 = !{!50, !2, i64 8}
!53 = !{!23, !2, i64 1416}
!54 = !{!23, !14, i64 1424}
!55 = !{!56, !2, i64 16}
!56 = !{!"stream_cursor_write_s", !2, i64 0, !2, i64 8, !2, i64 16}
!57 = !{!56, !2, i64 8}
!58 = !{!23, !14, i64 604}
!59 = !{!23, !14, i64 632}
!60 = !{!13, !2, i64 0}
!61 = !{!19, !14, i64 24}
!62 = !{!24, !2, i64 0}
!63 = !{!20, !14, i64 40}
!64 = !{!20, !2, i64 8}
!65 = !{!24, !2, i64 40}
