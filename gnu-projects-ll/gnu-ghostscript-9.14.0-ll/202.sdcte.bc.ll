; ModuleID = './sdcte.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, {}*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
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
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gc_ptr_element_s = type { i16, i16 }
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
%struct.jpeg_destination_mgr = type { i8*, i64, void (%struct.jpeg_compress_struct*)*, i32 (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)* }
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
%struct.jpeg_compress_data_s = type { %struct.stream_template_s, %struct.jpeg_error_mgr, %struct.gsfix_jmp_buf, %struct.gs_memory_s*, %struct.gs_memory_s*, i8*, i32, i32, %struct.jpeg_compress_struct, %struct.jpeg_destination_mgr, [100 x i8], i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"JPEG compress data\00", align 1
@jpeg_compress_data_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @jpeg_compress_data_enum_ptrs, i32 0, i32 0) }, align 8
@st_jpeg_compress_data = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 1200, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @jpeg_compress_data_reloc_ptrs to i8*) }, align 8
@st_DCT_state = external constant %struct.gs_memory_struct_type_s, align 8
@s_DCTE_template = constant { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* } { %struct.gs_memory_struct_type_s* @st_DCT_state, i32 (%struct.stream_state_s*)* @s_DCTE_init, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_DCTE_process, i32 1000, i32 4000, void (%struct.stream_state_s*)* null, void (%struct.stream_state_s*)* @s_DCTE_set_defaults, i32 (%struct.stream_state_s*)* null }, align 8
@jpeg_compress_data_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 448 }], align 2
@s_DCTE_process.Adobe = internal constant [16 x i8] c"\FF\EE\00\0EAdobe\00d\00\00\00\00\00", align 16
@s_DCTE_process.marker = internal constant [2 x i8] c"\FF\E2", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"ICC_PROFILE\00", align 1

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @s_DCTE_init(%struct.stream_state_s* %st) #1 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_DCT_state_s*, align 8
  %dest = alloca %struct.jpeg_destination_mgr*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_DCT_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_DCT_state_s*
  store %struct.stream_DCT_state_s* %2, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast %struct.jpeg_destination_mgr** %dest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %4, i32 0, i32 10
  %compress = bitcast %union._jd* %data to %struct.jpeg_compress_data_s**
  %5 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %compress, align 8, !tbaa !1
  %destination = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %5, i32 0, i32 9
  store %struct.jpeg_destination_mgr* %destination, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !1
  %6 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !1
  %init_destination = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %6, i32 0, i32 2
  store void (%struct.jpeg_compress_struct*)* @dcte_init_destination, void (%struct.jpeg_compress_struct*)** %init_destination, align 8, !tbaa !5
  %7 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !1
  %empty_output_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %7, i32 0, i32 3
  store i32 (%struct.jpeg_compress_struct*)* @dcte_empty_output_buffer, i32 (%struct.jpeg_compress_struct*)** %empty_output_buffer, align 8, !tbaa !8
  %8 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !1
  %term_destination = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %8, i32 0, i32 4
  store void (%struct.jpeg_compress_struct*)* @dcte_term_destination, void (%struct.jpeg_compress_struct*)** %term_destination, align 8, !tbaa !9
  %9 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %jpeg_memory = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %9, i32 0, i32 9
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %jpeg_memory, align 8, !tbaa !10
  %11 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %data1 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %11, i32 0, i32 10
  %common = bitcast %union._jd* %data1 to %struct.jpeg_stream_data_s**
  %12 = load %struct.jpeg_stream_data_s*, %struct.jpeg_stream_data_s** %common, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.jpeg_stream_data_s, %struct.jpeg_stream_data_s* %12, i32 0, i32 3
  store %struct.gs_memory_s* %10, %struct.gs_memory_s** %memory, align 8, !tbaa !15
  %13 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !1
  %14 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %data2 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %14, i32 0, i32 10
  %compress3 = bitcast %union._jd* %data2 to %struct.jpeg_compress_data_s**
  %15 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %compress3, align 8, !tbaa !1
  %cinfo = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %15, i32 0, i32 8
  %dest4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo, i32 0, i32 6
  store %struct.jpeg_destination_mgr* %13, %struct.jpeg_destination_mgr** %dest4, align 8, !tbaa !20
  %16 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %phase = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %16, i32 0, i32 15
  store i32 0, i32* %phase, align 4, !tbaa !25
  %17 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %icc_marker = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %17, i32 0, i32 12
  store i8 0, i8* %icc_marker, align 1, !tbaa !26
  %18 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %icc_position = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %18, i32 0, i32 13
  store i64 -1, i64* %icc_position, align 8, !tbaa !27
  %19 = bitcast %struct.jpeg_destination_mgr** %dest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #2
  %20 = bitcast %struct.stream_DCT_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @s_DCTE_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %pw, i32 %last) #1 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %ss = alloca %struct.stream_DCT_state_s*, align 8
  %jcdp = alloca %struct.jpeg_compress_data_s*, align 8
  %dest = alloca %struct.jpeg_destination_mgr*, align 8
  %cleanup.dest.slot = alloca i32
  %num_mark = alloca i8, align 1
  %offset = alloca i64, align 8
  %size83 = alloca i64, align 8
  %length_byte = alloca [2 x i8], align 1
  %curr_mark = alloca i8, align 1
  %total_length = alloca i64, align 8
  %avail_bytes = alloca i64, align 8
  %num_bytes = alloca i64, align 8
  %written = alloca i32, align 4
  %samples = alloca i8*, align 8
  %count = alloca i32, align 4
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !28
  %0 = bitcast %struct.stream_DCT_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_DCT_state_s*
  store %struct.stream_DCT_state_s* %2, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast %struct.jpeg_compress_data_s** %jcdp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %4, i32 0, i32 10
  %compress = bitcast %union._jd* %data to %struct.jpeg_compress_data_s**
  %5 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %compress, align 8, !tbaa !1
  store %struct.jpeg_compress_data_s* %5, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %6 = bitcast %struct.jpeg_destination_mgr** %dest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %cinfo = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %7, i32 0, i32 8
  %dest1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo, i32 0, i32 6
  %8 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest1, align 8, !tbaa !20
  store %struct.jpeg_destination_mgr* %8, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %9 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %9, i32 0, i32 1
  %10 = load i8*, i8** %ptr, align 8, !tbaa !29
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !1
  %next_output_byte = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %11, i32 0, i32 0
  store i8* %add.ptr, i8** %next_output_byte, align 8, !tbaa !31
  %12 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %12, i32 0, i32 2
  %13 = load i8*, i8** %limit, align 8, !tbaa !32
  %14 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr2 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %14, i32 0, i32 1
  %15 = load i8*, i8** %ptr2, align 8, !tbaa !29
  %sub.ptr.lhs.cast = ptrtoint i8* %13 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %15 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %16 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !1
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %16, i32 0, i32 1
  store i64 %sub.ptr.sub, i64* %free_in_buffer, align 8, !tbaa !33
  %17 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %phase = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %17, i32 0, i32 15
  %18 = load i32, i32* %phase, align 4, !tbaa !25
  switch i32 %18, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.10
    i32 2, label %sw.bb.33
    i32 3, label %sw.bb.62
    i32 4, label %sw.bb.190
    i32 5, label %sw.bb.239
    i32 6, label %sw.bb.256
  ]

sw.bb:                                            ; preds = %do.end
  %19 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %call = call i32 @gs_jpeg_start_compress(%struct.stream_DCT_state_s* %19, i32 1) #4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.310

if.end:                                           ; preds = %sw.bb
  br label %do.body.3

do.body.3:                                        ; preds = %if.end
  br label %do.cond.4

do.cond.4:                                        ; preds = %do.body.3
  br label %do.end.5

do.end.5:                                         ; preds = %do.cond.4
  %20 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !1
  %next_output_byte6 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %20, i32 0, i32 0
  %21 = load i8*, i8** %next_output_byte6, align 8, !tbaa !31
  %add.ptr7 = getelementptr inbounds i8, i8* %21, i64 -1
  %22 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr8 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %22, i32 0, i32 1
  store i8* %add.ptr7, i8** %ptr8, align 8, !tbaa !29
  %23 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %phase9 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %23, i32 0, i32 15
  store i32 1, i32* %phase9, align 4, !tbaa !25
  br label %sw.bb.10

sw.bb.10:                                         ; preds = %do.end, %do.end.5
  %24 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit11 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %24, i32 0, i32 2
  %25 = load i8*, i8** %limit11, align 8, !tbaa !32
  %26 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr12 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %26, i32 0, i32 1
  %27 = load i8*, i8** %ptr12, align 8, !tbaa !29
  %sub.ptr.lhs.cast13 = ptrtoint i8* %25 to i64
  %sub.ptr.rhs.cast14 = ptrtoint i8* %27 to i64
  %sub.ptr.sub15 = sub i64 %sub.ptr.lhs.cast13, %sub.ptr.rhs.cast14
  %28 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %Markers = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %28, i32 0, i32 5
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Markers, i32 0, i32 1
  %29 = load i32, i32* %size, align 4, !tbaa !34
  %conv = zext i32 %29 to i64
  %cmp16 = icmp slt i64 %sub.ptr.sub15, %conv
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %sw.bb.10
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.310

if.end.19:                                        ; preds = %sw.bb.10
  %30 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr20 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %30, i32 0, i32 1
  %31 = load i8*, i8** %ptr20, align 8, !tbaa !29
  %add.ptr21 = getelementptr inbounds i8, i8* %31, i64 1
  %32 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %Markers22 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %32, i32 0, i32 5
  %data23 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Markers22, i32 0, i32 0
  %33 = load i8*, i8** %data23, align 8, !tbaa !35
  %34 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %Markers24 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %34, i32 0, i32 5
  %size25 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Markers24, i32 0, i32 1
  %35 = load i32, i32* %size25, align 4, !tbaa !34
  %conv26 = zext i32 %35 to i64
  %call27 = call i8* @memcpy(i8* %add.ptr21, i8* %33, i64 %conv26) #5
  %36 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %Markers28 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %36, i32 0, i32 5
  %size29 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Markers28, i32 0, i32 1
  %37 = load i32, i32* %size29, align 4, !tbaa !34
  %38 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr30 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %38, i32 0, i32 1
  %39 = load i8*, i8** %ptr30, align 8, !tbaa !29
  %idx.ext = zext i32 %37 to i64
  %add.ptr31 = getelementptr inbounds i8, i8* %39, i64 %idx.ext
  store i8* %add.ptr31, i8** %ptr30, align 8, !tbaa !29
  %40 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %phase32 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %40, i32 0, i32 15
  store i32 2, i32* %phase32, align 4, !tbaa !25
  br label %sw.bb.33

sw.bb.33:                                         ; preds = %do.end, %if.end.19
  %41 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %NoMarker = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %41, i32 0, i32 8
  %42 = load i32, i32* %NoMarker, align 4, !tbaa !36
  %tobool = icmp ne i32 %42, 0
  br i1 %tobool, label %if.end.51, label %if.then.34

if.then.34:                                       ; preds = %sw.bb.33
  %43 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit35 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %43, i32 0, i32 2
  %44 = load i8*, i8** %limit35, align 8, !tbaa !32
  %45 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr36 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %45, i32 0, i32 1
  %46 = load i8*, i8** %ptr36, align 8, !tbaa !29
  %sub.ptr.lhs.cast37 = ptrtoint i8* %44 to i64
  %sub.ptr.rhs.cast38 = ptrtoint i8* %46 to i64
  %sub.ptr.sub39 = sub i64 %sub.ptr.lhs.cast37, %sub.ptr.rhs.cast38
  %cmp40 = icmp ult i64 %sub.ptr.sub39, 16
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.then.34
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.310

if.end.43:                                        ; preds = %if.then.34
  %47 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr44 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %47, i32 0, i32 1
  %48 = load i8*, i8** %ptr44, align 8, !tbaa !29
  %add.ptr45 = getelementptr inbounds i8, i8* %48, i64 1
  %call46 = call i8* @memcpy(i8* %add.ptr45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @s_DCTE_process.Adobe, i32 0, i32 0), i64 16) #5
  %49 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr47 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %49, i32 0, i32 1
  %50 = load i8*, i8** %ptr47, align 8, !tbaa !29
  %add.ptr48 = getelementptr inbounds i8, i8* %50, i64 16
  store i8* %add.ptr48, i8** %ptr47, align 8, !tbaa !29
  %51 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %ColorTransform = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %51, i32 0, i32 7
  %52 = load i32, i32* %ColorTransform, align 4, !tbaa !37
  %conv49 = trunc i32 %52 to i8
  %53 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr50 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %53, i32 0, i32 1
  %54 = load i8*, i8** %ptr50, align 8, !tbaa !29
  store i8 %conv49, i8* %54, align 1, !tbaa !38
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.43, %sw.bb.33
  %55 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr52 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %55, i32 0, i32 1
  %56 = load i8*, i8** %ptr52, align 8, !tbaa !29
  %add.ptr53 = getelementptr inbounds i8, i8* %56, i64 1
  %57 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !1
  %next_output_byte54 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %57, i32 0, i32 0
  store i8* %add.ptr53, i8** %next_output_byte54, align 8, !tbaa !31
  %58 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit55 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %58, i32 0, i32 2
  %59 = load i8*, i8** %limit55, align 8, !tbaa !32
  %60 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr56 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %60, i32 0, i32 1
  %61 = load i8*, i8** %ptr56, align 8, !tbaa !29
  %sub.ptr.lhs.cast57 = ptrtoint i8* %59 to i64
  %sub.ptr.rhs.cast58 = ptrtoint i8* %61 to i64
  %sub.ptr.sub59 = sub i64 %sub.ptr.lhs.cast57, %sub.ptr.rhs.cast58
  %62 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !1
  %free_in_buffer60 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %62, i32 0, i32 1
  store i64 %sub.ptr.sub59, i64* %free_in_buffer60, align 8, !tbaa !33
  %63 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %phase61 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %63, i32 0, i32 15
  store i32 3, i32* %phase61, align 4, !tbaa !25
  br label %sw.bb.62

sw.bb.62:                                         ; preds = %do.end, %if.end.51
  %64 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %icc_profile = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %64, i32 0, i32 11
  %65 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !39
  %cmp63 = icmp ne %struct.cmm_profile_s* %65, null
  br i1 %cmp63, label %if.then.65, label %if.end.188

if.then.65:                                       ; preds = %sw.bb.62
  call void @llvm.lifetime.start(i64 1, i8* %num_mark) #2
  %66 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %icc_profile66 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %66, i32 0, i32 11
  %67 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile66, align 8, !tbaa !39
  %buffer_size = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %67, i32 0, i32 11
  %68 = load i32, i32* %buffer_size, align 4, !tbaa !40
  %div = sdiv i32 %68, 65519
  %conv67 = trunc i32 %div to i8
  store i8 %conv67, i8* %num_mark, align 1, !tbaa !38
  %69 = load i8, i8* %num_mark, align 1, !tbaa !38
  %conv68 = zext i8 %69 to i32
  %mul = mul nsw i32 %conv68, 65519
  %70 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %icc_profile69 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %70, i32 0, i32 11
  %71 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile69, align 8, !tbaa !39
  %buffer_size70 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %71, i32 0, i32 11
  %72 = load i32, i32* %buffer_size70, align 4, !tbaa !40
  %cmp71 = icmp slt i32 %mul, %72
  br i1 %cmp71, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.then.65
  %73 = load i8, i8* %num_mark, align 1, !tbaa !38
  %inc = add i8 %73, 1
  store i8 %inc, i8* %num_mark, align 1, !tbaa !38
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.73, %if.then.65
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont.174, %if.end.74
  %74 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %icc_marker = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %74, i32 0, i32 12
  %75 = load i8, i8* %icc_marker, align 1, !tbaa !26
  %conv75 = zext i8 %75 to i32
  %76 = load i8, i8* %num_mark, align 1, !tbaa !38
  %conv76 = zext i8 %76 to i32
  %cmp77 = icmp slt i32 %conv75, %conv76
  br i1 %cmp77, label %while.body, label %while.end.175

while.body:                                       ; preds = %while.cond
  %77 = bitcast i64* %offset to i8*
  call void @llvm.lifetime.start(i64 8, i8* %77) #2
  %78 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %icc_marker79 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %78, i32 0, i32 12
  %79 = load i8, i8* %icc_marker79, align 1, !tbaa !26
  %conv80 = zext i8 %79 to i32
  %mul81 = mul nsw i32 %conv80, 65519
  %conv82 = sext i32 %mul81 to i64
  store i64 %conv82, i64* %offset, align 8, !tbaa !45
  %80 = bitcast i64* %size83 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %80) #2
  %81 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %icc_profile84 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %81, i32 0, i32 11
  %82 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile84, align 8, !tbaa !39
  %buffer_size85 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %82, i32 0, i32 11
  %83 = load i32, i32* %buffer_size85, align 4, !tbaa !40
  %conv86 = sext i32 %83 to i64
  %84 = load i64, i64* %offset, align 8, !tbaa !45
  %sub = sub i64 %conv86, %84
  store i64 %sub, i64* %size83, align 8, !tbaa !45
  %85 = load i64, i64* %size83, align 8, !tbaa !45
  %cmp87 = icmp ugt i64 %85, 65519
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %while.body
  store i64 65519, i64* %size83, align 8, !tbaa !45
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.89, %while.body
  %86 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %icc_position = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %86, i32 0, i32 13
  %87 = load i64, i64* %icc_position, align 8, !tbaa !27
  %cmp91 = icmp eq i64 %87, -1
  br i1 %cmp91, label %if.then.93, label %if.end.132

if.then.93:                                       ; preds = %if.end.90
  %88 = bitcast [2 x i8]* %length_byte to i8*
  call void @llvm.lifetime.start(i64 2, i8* %88) #2
  call void @llvm.lifetime.start(i64 1, i8* %curr_mark) #2
  %89 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %icc_marker94 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %89, i32 0, i32 12
  %90 = load i8, i8* %icc_marker94, align 1, !tbaa !26
  %conv95 = zext i8 %90 to i32
  %add = add nsw i32 %conv95, 1
  %conv96 = trunc i32 %add to i8
  store i8 %conv96, i8* %curr_mark, align 1, !tbaa !38
  %91 = bitcast i64* %total_length to i8*
  call void @llvm.lifetime.start(i64 8, i8* %91) #2
  %92 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit97 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %92, i32 0, i32 2
  %93 = load i8*, i8** %limit97, align 8, !tbaa !32
  %94 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr98 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %94, i32 0, i32 1
  %95 = load i8*, i8** %ptr98, align 8, !tbaa !29
  %sub.ptr.lhs.cast99 = ptrtoint i8* %93 to i64
  %sub.ptr.rhs.cast100 = ptrtoint i8* %95 to i64
  %sub.ptr.sub101 = sub i64 %sub.ptr.lhs.cast99, %sub.ptr.rhs.cast100
  %conv102 = trunc i64 %sub.ptr.sub101 to i32
  %conv103 = zext i32 %conv102 to i64
  %cmp104 = icmp ult i64 %conv103, 18
  br i1 %cmp104, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %if.then.93
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.107:                                       ; preds = %if.then.93
  %96 = load i64, i64* %size83, align 8, !tbaa !45
  %add108 = add i64 %96, 16
  store i64 %add108, i64* %total_length, align 8, !tbaa !45
  %97 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr109 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %97, i32 0, i32 1
  %98 = load i8*, i8** %ptr109, align 8, !tbaa !29
  %add.ptr110 = getelementptr inbounds i8, i8* %98, i64 1
  %call111 = call i8* @memcpy(i8* %add.ptr110, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @s_DCTE_process.marker, i32 0, i32 0), i64 2) #5
  %99 = load i64, i64* %total_length, align 8, !tbaa !45
  %shr = lshr i64 %99, 8
  %conv112 = trunc i64 %shr to i8
  %arrayidx = getelementptr inbounds [2 x i8], [2 x i8]* %length_byte, i32 0, i64 0
  store i8 %conv112, i8* %arrayidx, align 1, !tbaa !38
  %100 = load i64, i64* %total_length, align 8, !tbaa !45
  %and = and i64 %100, 255
  %conv113 = trunc i64 %and to i8
  %arrayidx114 = getelementptr inbounds [2 x i8], [2 x i8]* %length_byte, i32 0, i64 1
  store i8 %conv113, i8* %arrayidx114, align 1, !tbaa !38
  %101 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr115 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %101, i32 0, i32 1
  %102 = load i8*, i8** %ptr115, align 8, !tbaa !29
  %add.ptr116 = getelementptr inbounds i8, i8* %102, i64 3
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %length_byte, i32 0, i32 0
  %call117 = call i8* @memcpy(i8* %add.ptr116, i8* %arraydecay, i64 2) #5
  %103 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr118 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %103, i32 0, i32 1
  %104 = load i8*, i8** %ptr118, align 8, !tbaa !29
  %add.ptr119 = getelementptr inbounds i8, i8* %104, i64 5
  %call120 = call i8* @memcpy(i8* %add.ptr119, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i64 12) #5
  %105 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr121 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %105, i32 0, i32 1
  %106 = load i8*, i8** %ptr121, align 8, !tbaa !29
  %add.ptr122 = getelementptr inbounds i8, i8* %106, i64 17
  %call123 = call i8* @memcpy(i8* %add.ptr122, i8* %curr_mark, i64 1) #5
  %107 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr124 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %107, i32 0, i32 1
  %108 = load i8*, i8** %ptr124, align 8, !tbaa !29
  %add.ptr125 = getelementptr inbounds i8, i8* %108, i64 18
  %call126 = call i8* @memcpy(i8* %add.ptr125, i8* %num_mark, i64 1) #5
  %109 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr127 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %109, i32 0, i32 1
  %110 = load i8*, i8** %ptr127, align 8, !tbaa !29
  %add.ptr128 = getelementptr inbounds i8, i8* %110, i64 18
  store i8* %add.ptr128, i8** %ptr127, align 8, !tbaa !29
  %111 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %icc_position129 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %111, i32 0, i32 13
  store i64 0, i64* %icc_position129, align 8, !tbaa !27
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.107, %if.then.106
  %112 = bitcast i64* %total_length to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #2
  call void @llvm.lifetime.end(i64 1, i8* %curr_mark) #2
  %113 = bitcast [2 x i8]* %length_byte to i8*
  call void @llvm.lifetime.end(i64 2, i8* %113) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.171 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.132

if.end.132:                                       ; preds = %cleanup.cont, %if.end.90
  br label %while.cond.133

while.cond.133:                                   ; preds = %cleanup.cont.167, %if.end.132
  %114 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %icc_position134 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %114, i32 0, i32 13
  %115 = load i64, i64* %icc_position134, align 8, !tbaa !27
  %116 = load i64, i64* %size83, align 8, !tbaa !45
  %cmp135 = icmp ult i64 %115, %116
  br i1 %cmp135, label %while.body.137, label %while.end

while.body.137:                                   ; preds = %while.cond.133
  %117 = bitcast i64* %avail_bytes to i8*
  call void @llvm.lifetime.start(i64 8, i8* %117) #2
  %118 = bitcast i64* %num_bytes to i8*
  call void @llvm.lifetime.start(i64 8, i8* %118) #2
  %119 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit138 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %119, i32 0, i32 2
  %120 = load i8*, i8** %limit138, align 8, !tbaa !32
  %121 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr139 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %121, i32 0, i32 1
  %122 = load i8*, i8** %ptr139, align 8, !tbaa !29
  %sub.ptr.lhs.cast140 = ptrtoint i8* %120 to i64
  %sub.ptr.rhs.cast141 = ptrtoint i8* %122 to i64
  %sub.ptr.sub142 = sub i64 %sub.ptr.lhs.cast140, %sub.ptr.rhs.cast141
  store i64 %sub.ptr.sub142, i64* %avail_bytes, align 8, !tbaa !45
  %123 = load i64, i64* %avail_bytes, align 8, !tbaa !45
  %cmp143 = icmp eq i64 %123, 0
  br i1 %cmp143, label %if.then.145, label %if.end.146

if.then.145:                                      ; preds = %while.body.137
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.164

if.end.146:                                       ; preds = %while.body.137
  %124 = load i64, i64* %size83, align 8, !tbaa !45
  %125 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %icc_position147 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %125, i32 0, i32 13
  %126 = load i64, i64* %icc_position147, align 8, !tbaa !27
  %sub148 = sub i64 %124, %126
  store i64 %sub148, i64* %num_bytes, align 8, !tbaa !45
  %127 = load i64, i64* %num_bytes, align 8, !tbaa !45
  %128 = load i64, i64* %avail_bytes, align 8, !tbaa !45
  %cmp149 = icmp ugt i64 %127, %128
  br i1 %cmp149, label %if.then.151, label %if.end.152

if.then.151:                                      ; preds = %if.end.146
  %129 = load i64, i64* %avail_bytes, align 8, !tbaa !45
  store i64 %129, i64* %num_bytes, align 8, !tbaa !45
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.151, %if.end.146
  %130 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr153 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %130, i32 0, i32 1
  %131 = load i8*, i8** %ptr153, align 8, !tbaa !29
  %add.ptr154 = getelementptr inbounds i8, i8* %131, i64 1
  %132 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %icc_profile155 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %132, i32 0, i32 11
  %133 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile155, align 8, !tbaa !39
  %buffer = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %133, i32 0, i32 14
  %134 = load i8*, i8** %buffer, align 8, !tbaa !46
  %135 = load i64, i64* %offset, align 8, !tbaa !45
  %add.ptr156 = getelementptr inbounds i8, i8* %134, i64 %135
  %136 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %icc_position157 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %136, i32 0, i32 13
  %137 = load i64, i64* %icc_position157, align 8, !tbaa !27
  %add.ptr158 = getelementptr inbounds i8, i8* %add.ptr156, i64 %137
  %138 = load i64, i64* %num_bytes, align 8, !tbaa !45
  %call159 = call i8* @memcpy(i8* %add.ptr154, i8* %add.ptr158, i64 %138) #5
  %139 = load i64, i64* %num_bytes, align 8, !tbaa !45
  %140 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %icc_position160 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %140, i32 0, i32 13
  %141 = load i64, i64* %icc_position160, align 8, !tbaa !27
  %add161 = add i64 %141, %139
  store i64 %add161, i64* %icc_position160, align 8, !tbaa !27
  %142 = load i64, i64* %num_bytes, align 8, !tbaa !45
  %143 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr162 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %143, i32 0, i32 1
  %144 = load i8*, i8** %ptr162, align 8, !tbaa !29
  %add.ptr163 = getelementptr inbounds i8, i8* %144, i64 %142
  store i8* %add.ptr163, i8** %ptr162, align 8, !tbaa !29
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.164

cleanup.164:                                      ; preds = %if.end.152, %if.then.145
  %145 = bitcast i64* %num_bytes to i8*
  call void @llvm.lifetime.end(i64 8, i8* %145) #2
  %146 = bitcast i64* %avail_bytes to i8*
  call void @llvm.lifetime.end(i64 8, i8* %146) #2
  %cleanup.dest.166 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.166, label %cleanup.171 [
    i32 0, label %cleanup.cont.167
  ]

cleanup.cont.167:                                 ; preds = %cleanup.164
  br label %while.cond.133

while.end:                                        ; preds = %while.cond.133
  %147 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %icc_marker168 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %147, i32 0, i32 12
  %148 = load i8, i8* %icc_marker168, align 1, !tbaa !26
  %inc169 = add i8 %148, 1
  store i8 %inc169, i8* %icc_marker168, align 1, !tbaa !26
  %149 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %icc_position170 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %149, i32 0, i32 13
  store i64 -1, i64* %icc_position170, align 8, !tbaa !27
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.171

cleanup.171:                                      ; preds = %while.end, %cleanup.164, %cleanup
  %150 = bitcast i64* %size83 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %150) #2
  %151 = bitcast i64* %offset to i8*
  call void @llvm.lifetime.end(i64 8, i8* %151) #2
  %cleanup.dest.173 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.173, label %cleanup.185 [
    i32 0, label %cleanup.cont.174
  ]

cleanup.cont.174:                                 ; preds = %cleanup.171
  br label %while.cond

while.end.175:                                    ; preds = %while.cond
  %152 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr176 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %152, i32 0, i32 1
  %153 = load i8*, i8** %ptr176, align 8, !tbaa !29
  %add.ptr177 = getelementptr inbounds i8, i8* %153, i64 1
  %154 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !1
  %next_output_byte178 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %154, i32 0, i32 0
  store i8* %add.ptr177, i8** %next_output_byte178, align 8, !tbaa !31
  %155 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit179 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %155, i32 0, i32 2
  %156 = load i8*, i8** %limit179, align 8, !tbaa !32
  %157 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr180 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %157, i32 0, i32 1
  %158 = load i8*, i8** %ptr180, align 8, !tbaa !29
  %sub.ptr.lhs.cast181 = ptrtoint i8* %156 to i64
  %sub.ptr.rhs.cast182 = ptrtoint i8* %158 to i64
  %sub.ptr.sub183 = sub i64 %sub.ptr.lhs.cast181, %sub.ptr.rhs.cast182
  %159 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !1
  %free_in_buffer184 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %159, i32 0, i32 1
  store i64 %sub.ptr.sub183, i64* %free_in_buffer184, align 8, !tbaa !33
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.185

cleanup.185:                                      ; preds = %while.end.175, %cleanup.171
  call void @llvm.lifetime.end(i64 1, i8* %num_mark) #2
  %cleanup.dest.186 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.186, label %cleanup.310 [
    i32 0, label %cleanup.cont.187
  ]

cleanup.cont.187:                                 ; preds = %cleanup.185
  br label %if.end.188

if.end.188:                                       ; preds = %cleanup.cont.187, %sw.bb.62
  %160 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %phase189 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %160, i32 0, i32 15
  store i32 4, i32* %phase189, align 4, !tbaa !25
  br label %sw.bb.190

sw.bb.190:                                        ; preds = %do.end, %if.end.188
  br label %while.cond.191

while.cond.191:                                   ; preds = %cleanup.cont.236, %sw.bb.190
  %161 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %cinfo192 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %161, i32 0, i32 8
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo192, i32 0, i32 8
  %162 = load i32, i32* %image_height, align 4, !tbaa !47
  %163 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %cinfo193 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %163, i32 0, i32 8
  %next_scanline = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo193, i32 0, i32 46
  %164 = load i32, i32* %next_scanline, align 4, !tbaa !48
  %cmp194 = icmp ugt i32 %162, %164
  br i1 %cmp194, label %while.body.196, label %while.end.237

while.body.196:                                   ; preds = %while.cond.191
  %165 = bitcast i32* %written to i8*
  call void @llvm.lifetime.start(i64 4, i8* %165) #2
  %166 = bitcast i8** %samples to i8*
  call void @llvm.lifetime.start(i64 8, i8* %166) #2
  %167 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr197 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %167, i32 0, i32 0
  %168 = load i8*, i8** %ptr197, align 8, !tbaa !49
  %add.ptr198 = getelementptr inbounds i8, i8* %168, i64 1
  store i8* %add.ptr198, i8** %samples, align 8, !tbaa !1
  br label %do.body.199

do.body.199:                                      ; preds = %while.body.196
  br label %do.cond.200

do.cond.200:                                      ; preds = %do.body.199
  br label %do.end.201

do.end.201:                                       ; preds = %do.cond.200
  %169 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit202 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %169, i32 0, i32 1
  %170 = load i8*, i8** %limit202, align 8, !tbaa !51
  %171 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr203 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %171, i32 0, i32 0
  %172 = load i8*, i8** %ptr203, align 8, !tbaa !49
  %sub.ptr.lhs.cast204 = ptrtoint i8* %170 to i64
  %sub.ptr.rhs.cast205 = ptrtoint i8* %172 to i64
  %sub.ptr.sub206 = sub i64 %sub.ptr.lhs.cast204, %sub.ptr.rhs.cast205
  %conv207 = trunc i64 %sub.ptr.sub206 to i32
  %173 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %scan_line_size = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %173, i32 0, i32 14
  %174 = load i32, i32* %scan_line_size, align 4, !tbaa !52
  %cmp208 = icmp ult i32 %conv207, %174
  br i1 %cmp208, label %if.then.210, label %if.end.214

if.then.210:                                      ; preds = %do.end.201
  %175 = load i32, i32* %last.addr, align 4, !tbaa !28
  %tobool211 = icmp ne i32 %175, 0
  br i1 %tobool211, label %if.then.212, label %if.end.213

if.then.212:                                      ; preds = %if.then.210
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.233

if.end.213:                                       ; preds = %if.then.210
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.233

if.end.214:                                       ; preds = %do.end.201
  %176 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %call215 = call i32 @gs_jpeg_write_scanlines(%struct.stream_DCT_state_s* %176, i8** %samples, i32 1) #4
  store i32 %call215, i32* %written, align 4, !tbaa !28
  %177 = load i32, i32* %written, align 4, !tbaa !28
  %cmp216 = icmp slt i32 %177, 0
  br i1 %cmp216, label %if.then.218, label %if.end.219

if.then.218:                                      ; preds = %if.end.214
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.233

if.end.219:                                       ; preds = %if.end.214
  br label %do.body.220

do.body.220:                                      ; preds = %if.end.219
  br label %do.cond.221

do.cond.221:                                      ; preds = %do.body.220
  br label %do.end.222

do.end.222:                                       ; preds = %do.cond.221
  %178 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !1
  %next_output_byte223 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %178, i32 0, i32 0
  %179 = load i8*, i8** %next_output_byte223, align 8, !tbaa !31
  %add.ptr224 = getelementptr inbounds i8, i8* %179, i64 -1
  %180 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr225 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %180, i32 0, i32 1
  store i8* %add.ptr224, i8** %ptr225, align 8, !tbaa !29
  %181 = load i32, i32* %written, align 4, !tbaa !28
  %tobool226 = icmp ne i32 %181, 0
  br i1 %tobool226, label %if.end.228, label %if.then.227

if.then.227:                                      ; preds = %do.end.222
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.233

if.end.228:                                       ; preds = %do.end.222
  %182 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %scan_line_size229 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %182, i32 0, i32 14
  %183 = load i32, i32* %scan_line_size229, align 4, !tbaa !52
  %184 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr230 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %184, i32 0, i32 0
  %185 = load i8*, i8** %ptr230, align 8, !tbaa !49
  %idx.ext231 = zext i32 %183 to i64
  %add.ptr232 = getelementptr inbounds i8, i8* %185, i64 %idx.ext231
  store i8* %add.ptr232, i8** %ptr230, align 8, !tbaa !49
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.233

cleanup.233:                                      ; preds = %if.end.228, %if.then.227, %if.then.218, %if.end.213, %if.then.212
  %186 = bitcast i8** %samples to i8*
  call void @llvm.lifetime.end(i64 8, i8* %186) #2
  %187 = bitcast i32* %written to i8*
  call void @llvm.lifetime.end(i64 4, i8* %187) #2
  %cleanup.dest.235 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.235, label %cleanup.310 [
    i32 0, label %cleanup.cont.236
  ]

cleanup.cont.236:                                 ; preds = %cleanup.233
  br label %while.cond.191

while.end.237:                                    ; preds = %while.cond.191
  %188 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %phase238 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %188, i32 0, i32 15
  store i32 5, i32* %phase238, align 4, !tbaa !25
  br label %sw.bb.239

sw.bb.239:                                        ; preds = %do.end, %while.end.237
  %189 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %finish_compress_buf = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %189, i32 0, i32 10
  %arraydecay240 = getelementptr inbounds [100 x i8], [100 x i8]* %finish_compress_buf, i32 0, i32 0
  %190 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !1
  %next_output_byte241 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %190, i32 0, i32 0
  store i8* %arraydecay240, i8** %next_output_byte241, align 8, !tbaa !31
  %191 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !1
  %free_in_buffer242 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %191, i32 0, i32 1
  store i64 100, i64* %free_in_buffer242, align 8, !tbaa !33
  %192 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %call243 = call i32 @gs_jpeg_finish_compress(%struct.stream_DCT_state_s* %192) #4
  %cmp244 = icmp slt i32 %call243, 0
  br i1 %cmp244, label %if.then.246, label %if.end.247

if.then.246:                                      ; preds = %sw.bb.239
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.310

if.end.247:                                       ; preds = %sw.bb.239
  %193 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !1
  %next_output_byte248 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %193, i32 0, i32 0
  %194 = load i8*, i8** %next_output_byte248, align 8, !tbaa !31
  %195 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %finish_compress_buf249 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %195, i32 0, i32 10
  %arraydecay250 = getelementptr inbounds [100 x i8], [100 x i8]* %finish_compress_buf249, i32 0, i32 0
  %sub.ptr.lhs.cast251 = ptrtoint i8* %194 to i64
  %sub.ptr.rhs.cast252 = ptrtoint i8* %arraydecay250 to i64
  %sub.ptr.sub253 = sub i64 %sub.ptr.lhs.cast251, %sub.ptr.rhs.cast252
  %conv254 = trunc i64 %sub.ptr.sub253 to i32
  %196 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %fcb_size = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %196, i32 0, i32 11
  store i32 %conv254, i32* %fcb_size, align 4, !tbaa !53
  %197 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %fcb_pos = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %197, i32 0, i32 12
  store i32 0, i32* %fcb_pos, align 4, !tbaa !54
  %198 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %phase255 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %198, i32 0, i32 15
  store i32 6, i32* %phase255, align 4, !tbaa !25
  br label %sw.bb.256

sw.bb.256:                                        ; preds = %do.end, %if.end.247
  %199 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %fcb_pos257 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %199, i32 0, i32 12
  %200 = load i32, i32* %fcb_pos257, align 4, !tbaa !54
  %201 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %fcb_size258 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %201, i32 0, i32 11
  %202 = load i32, i32* %fcb_size258, align 4, !tbaa !53
  %cmp259 = icmp slt i32 %200, %202
  br i1 %cmp259, label %if.then.261, label %if.end.309

if.then.261:                                      ; preds = %sw.bb.256
  %203 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %203) #2
  %204 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %fcb_size262 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %204, i32 0, i32 11
  %205 = load i32, i32* %fcb_size262, align 4, !tbaa !53
  %206 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %fcb_pos263 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %206, i32 0, i32 12
  %207 = load i32, i32* %fcb_pos263, align 4, !tbaa !54
  %sub264 = sub nsw i32 %205, %207
  %conv265 = sext i32 %sub264 to i64
  %208 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit266 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %208, i32 0, i32 2
  %209 = load i8*, i8** %limit266, align 8, !tbaa !32
  %210 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr267 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %210, i32 0, i32 1
  %211 = load i8*, i8** %ptr267, align 8, !tbaa !29
  %sub.ptr.lhs.cast268 = ptrtoint i8* %209 to i64
  %sub.ptr.rhs.cast269 = ptrtoint i8* %211 to i64
  %sub.ptr.sub270 = sub i64 %sub.ptr.lhs.cast268, %sub.ptr.rhs.cast269
  %cmp271 = icmp slt i64 %conv265, %sub.ptr.sub270
  br i1 %cmp271, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.261
  %212 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %fcb_size273 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %212, i32 0, i32 11
  %213 = load i32, i32* %fcb_size273, align 4, !tbaa !53
  %214 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %fcb_pos274 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %214, i32 0, i32 12
  %215 = load i32, i32* %fcb_pos274, align 4, !tbaa !54
  %sub275 = sub nsw i32 %213, %215
  %conv276 = sext i32 %sub275 to i64
  br label %cond.end

cond.false:                                       ; preds = %if.then.261
  %216 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit277 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %216, i32 0, i32 2
  %217 = load i8*, i8** %limit277, align 8, !tbaa !32
  %218 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr278 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %218, i32 0, i32 1
  %219 = load i8*, i8** %ptr278, align 8, !tbaa !29
  %sub.ptr.lhs.cast279 = ptrtoint i8* %217 to i64
  %sub.ptr.rhs.cast280 = ptrtoint i8* %219 to i64
  %sub.ptr.sub281 = sub i64 %sub.ptr.lhs.cast279, %sub.ptr.rhs.cast280
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv276, %cond.true ], [ %sub.ptr.sub281, %cond.false ]
  %conv282 = trunc i64 %cond to i32
  store i32 %conv282, i32* %count, align 4, !tbaa !28
  br label %do.body.283

do.body.283:                                      ; preds = %cond.end
  br label %do.cond.284

do.cond.284:                                      ; preds = %do.body.283
  br label %do.end.285

do.end.285:                                       ; preds = %do.cond.284
  %220 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr286 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %220, i32 0, i32 1
  %221 = load i8*, i8** %ptr286, align 8, !tbaa !29
  %add.ptr287 = getelementptr inbounds i8, i8* %221, i64 1
  %222 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %finish_compress_buf288 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %222, i32 0, i32 10
  %arraydecay289 = getelementptr inbounds [100 x i8], [100 x i8]* %finish_compress_buf288, i32 0, i32 0
  %223 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %fcb_pos290 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %223, i32 0, i32 12
  %224 = load i32, i32* %fcb_pos290, align 4, !tbaa !54
  %idx.ext291 = sext i32 %224 to i64
  %add.ptr292 = getelementptr inbounds i8, i8* %arraydecay289, i64 %idx.ext291
  %225 = load i32, i32* %count, align 4, !tbaa !28
  %conv293 = sext i32 %225 to i64
  %call294 = call i8* @memcpy(i8* %add.ptr287, i8* %add.ptr292, i64 %conv293) #5
  %226 = load i32, i32* %count, align 4, !tbaa !28
  %227 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %fcb_pos295 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %227, i32 0, i32 12
  %228 = load i32, i32* %fcb_pos295, align 4, !tbaa !54
  %add296 = add nsw i32 %228, %226
  store i32 %add296, i32* %fcb_pos295, align 4, !tbaa !54
  %229 = load i32, i32* %count, align 4, !tbaa !28
  %230 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr297 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %230, i32 0, i32 1
  %231 = load i8*, i8** %ptr297, align 8, !tbaa !29
  %idx.ext298 = sext i32 %229 to i64
  %add.ptr299 = getelementptr inbounds i8, i8* %231, i64 %idx.ext298
  store i8* %add.ptr299, i8** %ptr297, align 8, !tbaa !29
  %232 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %fcb_pos300 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %232, i32 0, i32 12
  %233 = load i32, i32* %fcb_pos300, align 4, !tbaa !54
  %234 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %fcb_size301 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %234, i32 0, i32 11
  %235 = load i32, i32* %fcb_size301, align 4, !tbaa !53
  %cmp302 = icmp slt i32 %233, %235
  br i1 %cmp302, label %if.then.304, label %if.end.305

if.then.304:                                      ; preds = %do.end.285
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.306

if.end.305:                                       ; preds = %do.end.285
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.306

cleanup.306:                                      ; preds = %if.end.305, %if.then.304
  %236 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %236) #2
  %cleanup.dest.307 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.307, label %cleanup.310 [
    i32 0, label %cleanup.cont.308
  ]

cleanup.cont.308:                                 ; preds = %cleanup.306
  br label %if.end.309

if.end.309:                                       ; preds = %cleanup.cont.308, %sw.bb.256
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.310

sw.epilog:                                        ; preds = %do.end
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.310

cleanup.310:                                      ; preds = %sw.epilog, %if.end.309, %cleanup.306, %if.then.246, %cleanup.233, %cleanup.185, %if.then.42, %if.then.18, %if.then
  %237 = bitcast %struct.jpeg_destination_mgr** %dest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %237) #2
  %238 = bitcast %struct.jpeg_compress_data_s** %jcdp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %238) #2
  %239 = bitcast %struct.stream_DCT_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %239) #2
  %240 = load i32, i32* %retval
  ret i32 %240
}

; Function Attrs: nounwind uwtable
define internal void @s_DCTE_set_defaults(%struct.stream_state_s* %st) #1 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_DCT_state_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_DCT_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_DCT_state_s*
  store %struct.stream_DCT_state_s* %2, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %3 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  call void @s_DCT_set_defaults(%struct.stream_state_s* %3) #4
  %4 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %QFactor = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %4, i32 0, i32 6
  store float 1.000000e+00, float* %QFactor, align 4, !tbaa !55
  %5 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %ColorTransform = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %5, i32 0, i32 7
  store i32 -1, i32* %ColorTransform, align 4, !tbaa !37
  %6 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %Markers = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %6, i32 0, i32 5
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Markers, i32 0, i32 0
  store i8* null, i8** %data, align 8, !tbaa !35
  %7 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %Markers1 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %7, i32 0, i32 5
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Markers1, i32 0, i32 1
  store i32 0, i32* %size, align 4, !tbaa !34
  %8 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %NoMarker = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %8, i32 0, i32 8
  store i32 1, i32* %NoMarker, align 4, !tbaa !36
  %9 = bitcast %struct.stream_DCT_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #2
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal void @dcte_init_destination(%struct.jpeg_compress_struct* %cinfo) #1 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @dcte_empty_output_buffer(%struct.jpeg_compress_struct* %cinfo) #1 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @dcte_term_destination(%struct.jpeg_compress_struct* %cinfo) #1 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i32 @gs_jpeg_start_compress(%struct.stream_DCT_state_s*, i32) #0

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

declare i32 @gs_jpeg_write_scanlines(%struct.stream_DCT_state_s*, i8**, i32) #0

declare i32 @gs_jpeg_finish_compress(%struct.stream_DCT_state_s*) #0

declare void @s_DCT_set_defaults(%struct.stream_state_s*) #0

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
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
!6 = !{!"jpeg_destination_mgr", !2, i64 0, !7, i64 8, !2, i64 16, !2, i64 24, !2, i64 32}
!7 = !{!"long", !3, i64 0}
!8 = !{!6, !2, i64 24}
!9 = !{!6, !2, i64 32}
!10 = !{!11, !2, i64 144}
!11 = !{!"stream_DCT_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !12, i64 24, !3, i64 28, !13, i64 112, !14, i64 128, !12, i64 132, !12, i64 136, !2, i64 144, !3, i64 152, !2, i64 160, !3, i64 168, !7, i64 176, !12, i64 184, !12, i64 188}
!12 = !{!"int", !3, i64 0}
!13 = !{!"gs_const_string_s", !2, i64 0, !12, i64 8}
!14 = !{!"float", !3, i64 0}
!15 = !{!16, !2, i64 432}
!16 = !{!"jpeg_stream_data_s", !17, i64 0, !18, i64 56, !19, i64 224, !2, i64 432, !2, i64 440, !2, i64 448, !12, i64 456, !12, i64 460}
!17 = !{!"stream_template_s", !2, i64 0, !2, i64 8, !2, i64 16, !12, i64 24, !12, i64 28, !2, i64 32, !2, i64 40, !2, i64 48}
!18 = !{!"jpeg_error_mgr", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !12, i64 40, !3, i64 44, !12, i64 124, !7, i64 128, !2, i64 136, !12, i64 144, !2, i64 152, !12, i64 160, !12, i64 164}
!19 = !{!"", !3, i64 0}
!20 = !{!21, !2, i64 504}
!21 = !{!"jpeg_compress_data_s", !17, i64 0, !18, i64 56, !19, i64 224, !2, i64 432, !2, i64 440, !2, i64 448, !12, i64 456, !12, i64 460, !22, i64 464, !6, i64 1048, !3, i64 1088, !12, i64 1188, !12, i64 1192}
!22 = !{!"jpeg_compress_struct", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !3, i64 32, !12, i64 36, !2, i64 40, !12, i64 48, !12, i64 52, !12, i64 56, !3, i64 60, !23, i64 64, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !3, i64 96, !2, i64 104, !3, i64 112, !3, i64 144, !3, i64 160, !3, i64 192, !3, i64 224, !3, i64 240, !3, i64 256, !12, i64 272, !2, i64 280, !3, i64 288, !3, i64 292, !3, i64 296, !3, i64 300, !3, i64 304, !12, i64 308, !3, i64 312, !12, i64 316, !12, i64 320, !3, i64 324, !3, i64 328, !3, i64 329, !3, i64 330, !24, i64 332, !24, i64 334, !3, i64 336, !3, i64 340, !12, i64 344, !3, i64 348, !12, i64 352, !12, i64 356, !12, i64 360, !12, i64 364, !12, i64 368, !12, i64 372, !3, i64 376, !12, i64 408, !12, i64 412, !12, i64 416, !3, i64 420, !12, i64 460, !12, i64 464, !12, i64 468, !12, i64 472, !12, i64 476, !2, i64 480, !12, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !12, i64 576}
!23 = !{!"double", !3, i64 0}
!24 = !{!"short", !3, i64 0}
!25 = !{!11, !12, i64 188}
!26 = !{!11, !3, i64 168}
!27 = !{!11, !7, i64 176}
!28 = !{!12, !12, i64 0}
!29 = !{!30, !2, i64 8}
!30 = !{!"stream_cursor_write_s", !2, i64 0, !2, i64 8, !2, i64 16}
!31 = !{!6, !2, i64 0}
!32 = !{!30, !2, i64 16}
!33 = !{!6, !7, i64 8}
!34 = !{!11, !12, i64 120}
!35 = !{!11, !2, i64 112}
!36 = !{!11, !12, i64 136}
!37 = !{!11, !12, i64 132}
!38 = !{!3, !3, i64 0}
!39 = !{!11, !2, i64 160}
!40 = !{!41, !12, i64 220}
!41 = !{!"cmm_profile_s", !3, i64 0, !3, i64 1, !12, i64 4, !12, i64 8, !3, i64 12, !3, i64 16, !42, i64 20, !7, i64 144, !12, i64 152, !3, i64 156, !12, i64 216, !12, i64 220, !12, i64 224, !43, i64 228, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !44, i64 288, !12, i64 312, !2, i64 320, !2, i64 328, !2, i64 336}
!42 = !{!"gs_range_icc_s", !3, i64 0}
!43 = !{!"gsicc_rendering_param_s", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !12, i64 20}
!44 = !{!"rc_header_s", !7, i64 0, !2, i64 8, !2, i64 16}
!45 = !{!7, !7, i64 0}
!46 = !{!41, !2, i64 256}
!47 = !{!21, !12, i64 516}
!48 = !{!21, !12, i64 808}
!49 = !{!50, !2, i64 0}
!50 = !{!"stream_cursor_read_s", !2, i64 0, !2, i64 8, !2, i64 16}
!51 = !{!50, !2, i64 8}
!52 = !{!11, !12, i64 184}
!53 = !{!21, !12, i64 1188}
!54 = !{!21, !12, i64 1192}
!55 = !{!11, !14, i64 128}
