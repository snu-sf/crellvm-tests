; ModuleID = './sdctc.bc'
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
%struct.stream_template_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, {}*, {}*, i32 (%struct.stream_state_s*)* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8] }
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
%struct.jpeg_decompress_data_s = type { %struct.stream_template_s, %struct.jpeg_error_mgr, %struct.gsfix_jmp_buf, %struct.gs_memory_s*, %struct.gs_memory_s*, i8*, i32, i32, %struct.jpeg_decompress_struct, %struct.jpeg_source_mgr, i64, i32, i32, i8*, i32 }
%struct.jpeg_decompress_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i8*, i32, i32, %struct.jpeg_source_mgr*, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8**, i32, i32, i32, i32, i32, [64 x i32]*, [4 x %struct.JQUANT_TBL*], [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*], i32, %struct.jpeg_component_info*, i32, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i8, i8, i16, i16, i32, i8, i32, i32, %struct.jpeg_marker_struct*, i32, i32, i32, i32, i32, i8*, i32, [4 x %struct.jpeg_component_info*], i32, i32, i32, [64 x i32], i32, i32, i32, i32, i32, i32*, i32, i32, %struct.jpeg_decomp_master*, %struct.jpeg_d_main_controller*, %struct.jpeg_d_coef_controller*, %struct.jpeg_d_post_controller*, %struct.jpeg_input_controller*, %struct.jpeg_marker_reader*, %struct.jpeg_entropy_decoder*, %struct.jpeg_inverse_dct*, %struct.jpeg_upsampler*, %struct.jpeg_color_deconverter*, %struct.jpeg_color_quantizer* }
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
%struct.jpeg_source_mgr = type { i8*, i64, void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i64)*, i32 (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*)* }

@.str = private unnamed_addr constant [23 x i8] c"DCTEncode/Decode state\00", align 1
@dct_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 2, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([2 x %struct.gc_ptr_element_s], [2 x %struct.gc_ptr_element_s]* @dct_enum_ptrs, i32 0, i32 0) }, align 8
@st_DCT_state = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 192, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* @stream_dct_finalize, i8* bitcast (%struct.gc_struct_data_s* @dct_reloc_ptrs to i8*) }, align 8
@dct_enum_ptrs = internal constant [2 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 2, i16 112 }, %struct.gc_ptr_element_s { i16 0, i16 152 }], align 2
@s_DCTE_template = external constant %struct.stream_template_s, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"s_DCTE_release\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"s_DCTD_release(scanline_buffer)\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"s_DCTD_release\00", align 1
@s_DCTD_template = external constant %struct.stream_template_s, align 8

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

; Function Attrs: nounwind uwtable
define internal void @stream_dct_finalize(%struct.gs_memory_s* %cmem, i8* %vptr) #1 {
entry:
  %cmem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %st = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_DCT_state_s*, align 8
  store %struct.gs_memory_s* %cmem, %struct.gs_memory_s** %cmem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_state_s** %st to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.stream_state_s*
  store %struct.stream_state_s* %2, %struct.stream_state_s** %st, align 8, !tbaa !1
  %3 = bitcast %struct.stream_DCT_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.stream_state_s*, %struct.stream_state_s** %st, align 8, !tbaa !1
  %5 = bitcast %struct.stream_state_s* %4 to %struct.stream_DCT_state_s*
  store %struct.stream_DCT_state_s* %5, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %cmem.addr, align 8, !tbaa !1
  %7 = load %struct.stream_state_s*, %struct.stream_state_s** %st, align 8, !tbaa !1
  %templat = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %7, i32 0, i32 0
  %8 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !5
  %process = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %8, i32 0, i32 2
  %9 = load i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)** %process, align 8, !tbaa !8
  %10 = load i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)** getelementptr inbounds (%struct.stream_template_s, %struct.stream_template_s* @s_DCTE_template, i32 0, i32 2), align 8, !tbaa !8
  %cmp = icmp eq i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* %9, %10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %11 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %call = call i32 @gs_jpeg_destroy(%struct.stream_DCT_state_s* %11) #3
  %12 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %12, i32 0, i32 10
  %common = bitcast %union._jd* %data to %struct.jpeg_stream_data_s**
  %13 = load %struct.jpeg_stream_data_s*, %struct.jpeg_stream_data_s** %common, align 8, !tbaa !1
  %tobool = icmp ne %struct.jpeg_stream_data_s* %13, null
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %14 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %data2 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %14, i32 0, i32 10
  %common3 = bitcast %union._jd* %data2 to %struct.jpeg_stream_data_s**
  %15 = load %struct.jpeg_stream_data_s*, %struct.jpeg_stream_data_s** %common3, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.jpeg_stream_data_s, %struct.jpeg_stream_data_s* %15, i32 0, i32 3
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !10
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %16, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %17 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !15
  %18 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %data4 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %18, i32 0, i32 10
  %common5 = bitcast %union._jd* %data4 to %struct.jpeg_stream_data_s**
  %19 = load %struct.jpeg_stream_data_s*, %struct.jpeg_stream_data_s** %common5, align 8, !tbaa !1
  %memory6 = getelementptr inbounds %struct.jpeg_stream_data_s, %struct.jpeg_stream_data_s* %19, i32 0, i32 3
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory6, align 8, !tbaa !10
  %21 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %data7 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %21, i32 0, i32 10
  %compress = bitcast %union._jd* %data7 to %struct.jpeg_compress_data_s**
  %22 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %compress, align 8, !tbaa !1
  %23 = bitcast %struct.jpeg_compress_data_s* %22 to i8*
  call void %17(%struct.gs_memory_s* %20, i8* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)) #3
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  %24 = load %struct.stream_state_s*, %struct.stream_state_s** %st, align 8, !tbaa !1
  %templat8 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %24, i32 0, i32 0
  store %struct.stream_template_s* @s_DCTE_template, %struct.stream_template_s** %templat8, align 8, !tbaa !5
  br label %if.end.47

if.else:                                          ; preds = %entry
  %25 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %call9 = call i32 @gs_jpeg_destroy(%struct.stream_DCT_state_s* %25) #3
  %26 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %data10 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %26, i32 0, i32 10
  %decompress = bitcast %union._jd* %data10 to %struct.jpeg_decompress_data_s**
  %27 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %decompress, align 8, !tbaa !1
  %scanline_buffer = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %27, i32 0, i32 13
  %28 = load i8*, i8** %scanline_buffer, align 8, !tbaa !18
  %cmp11 = icmp ne i8* %28, null
  br i1 %cmp11, label %if.then.12, label %if.end.35

if.then.12:                                       ; preds = %if.else
  %29 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %data13 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %29, i32 0, i32 10
  %common14 = bitcast %union._jd* %data13 to %struct.jpeg_stream_data_s**
  %30 = load %struct.jpeg_stream_data_s*, %struct.jpeg_stream_data_s** %common14, align 8, !tbaa !1
  %memory15 = getelementptr inbounds %struct.jpeg_stream_data_s, %struct.jpeg_stream_data_s* %30, i32 0, i32 3
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory15, align 8, !tbaa !10
  %procs16 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %31, i32 0, i32 1
  %stable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs16, i32 0, i32 3
  %32 = load %struct.gs_memory_s* (%struct.gs_memory_s*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)** %stable, align 8, !tbaa !24
  %33 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %data17 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %33, i32 0, i32 10
  %common18 = bitcast %union._jd* %data17 to %struct.jpeg_stream_data_s**
  %34 = load %struct.jpeg_stream_data_s*, %struct.jpeg_stream_data_s** %common18, align 8, !tbaa !1
  %memory19 = getelementptr inbounds %struct.jpeg_stream_data_s, %struct.jpeg_stream_data_s* %34, i32 0, i32 3
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory19, align 8, !tbaa !10
  %call20 = call %struct.gs_memory_s* %32(%struct.gs_memory_s* %35) #3
  %procs21 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %call20, i32 0, i32 1
  %free_object22 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs21, i32 0, i32 2
  %36 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object22, align 8, !tbaa !15
  %37 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %data23 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %37, i32 0, i32 10
  %common24 = bitcast %union._jd* %data23 to %struct.jpeg_stream_data_s**
  %38 = load %struct.jpeg_stream_data_s*, %struct.jpeg_stream_data_s** %common24, align 8, !tbaa !1
  %memory25 = getelementptr inbounds %struct.jpeg_stream_data_s, %struct.jpeg_stream_data_s* %38, i32 0, i32 3
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory25, align 8, !tbaa !10
  %procs26 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %39, i32 0, i32 1
  %stable27 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs26, i32 0, i32 3
  %40 = load %struct.gs_memory_s* (%struct.gs_memory_s*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)** %stable27, align 8, !tbaa !24
  %41 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %data28 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %41, i32 0, i32 10
  %common29 = bitcast %union._jd* %data28 to %struct.jpeg_stream_data_s**
  %42 = load %struct.jpeg_stream_data_s*, %struct.jpeg_stream_data_s** %common29, align 8, !tbaa !1
  %memory30 = getelementptr inbounds %struct.jpeg_stream_data_s, %struct.jpeg_stream_data_s* %42, i32 0, i32 3
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory30, align 8, !tbaa !10
  %call31 = call %struct.gs_memory_s* %40(%struct.gs_memory_s* %43) #3
  %44 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %data32 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %44, i32 0, i32 10
  %decompress33 = bitcast %union._jd* %data32 to %struct.jpeg_decompress_data_s**
  %45 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %decompress33, align 8, !tbaa !1
  %scanline_buffer34 = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %45, i32 0, i32 13
  %46 = load i8*, i8** %scanline_buffer34, align 8, !tbaa !18
  call void %36(%struct.gs_memory_s* %call31, i8* %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0)) #3
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.12, %if.else
  %47 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %data36 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %47, i32 0, i32 10
  %common37 = bitcast %union._jd* %data36 to %struct.jpeg_stream_data_s**
  %48 = load %struct.jpeg_stream_data_s*, %struct.jpeg_stream_data_s** %common37, align 8, !tbaa !1
  %memory38 = getelementptr inbounds %struct.jpeg_stream_data_s, %struct.jpeg_stream_data_s* %48, i32 0, i32 3
  %49 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory38, align 8, !tbaa !10
  %procs39 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %49, i32 0, i32 1
  %free_object40 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs39, i32 0, i32 2
  %50 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object40, align 8, !tbaa !15
  %51 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %data41 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %51, i32 0, i32 10
  %common42 = bitcast %union._jd* %data41 to %struct.jpeg_stream_data_s**
  %52 = load %struct.jpeg_stream_data_s*, %struct.jpeg_stream_data_s** %common42, align 8, !tbaa !1
  %memory43 = getelementptr inbounds %struct.jpeg_stream_data_s, %struct.jpeg_stream_data_s* %52, i32 0, i32 3
  %53 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory43, align 8, !tbaa !10
  %54 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %data44 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %54, i32 0, i32 10
  %decompress45 = bitcast %union._jd* %data44 to %struct.jpeg_decompress_data_s**
  %55 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %decompress45, align 8, !tbaa !1
  %56 = bitcast %struct.jpeg_decompress_data_s* %55 to i8*
  call void %50(%struct.gs_memory_s* %53, i8* %56, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0)) #3
  %57 = load %struct.stream_state_s*, %struct.stream_state_s** %st, align 8, !tbaa !1
  %templat46 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %57, i32 0, i32 0
  store %struct.stream_template_s* @s_DCTD_template, %struct.stream_template_s** %templat46, align 8, !tbaa !5
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.35, %if.end
  %58 = bitcast %struct.stream_DCT_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #2
  %59 = bitcast %struct.stream_state_s** %st to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #2
  ret void
}

; Function Attrs: nounwind uwtable
define void @s_DCT_set_defaults(%struct.stream_state_s* %st) #1 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_DCT_state_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_DCT_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_DCT_state_s*
  store %struct.stream_DCT_state_s* %2, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %3 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %3, i32 0, i32 1
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !25
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 3
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !29
  %6 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %jpeg_memory = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %6, i32 0, i32 9
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %jpeg_memory, align 8, !tbaa !30
  %7 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %7, i32 0, i32 10
  %common = bitcast %union._jd* %data to %struct.jpeg_stream_data_s**
  store %struct.jpeg_stream_data_s* null, %struct.jpeg_stream_data_s** %common, align 8, !tbaa !1
  %8 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %ColorTransform = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %8, i32 0, i32 7
  store i32 -1, i32* %ColorTransform, align 4, !tbaa !31
  %9 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %QFactor = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %9, i32 0, i32 6
  store float 1.000000e+00, float* %QFactor, align 4, !tbaa !32
  %10 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %Markers = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %10, i32 0, i32 5
  %data1 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Markers, i32 0, i32 0
  store i8* null, i8** %data1, align 8, !tbaa !33
  %11 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %Markers2 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %11, i32 0, i32 5
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Markers2, i32 0, i32 1
  store i32 0, i32* %size, align 4, !tbaa !34
  %12 = bitcast %struct.stream_DCT_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #2
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i32 @gs_jpeg_destroy(%struct.stream_DCT_state_s*) #0

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 0}
!6 = !{!"stream_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !3, i64 28}
!7 = !{!"int", !3, i64 0}
!8 = !{!9, !2, i64 16}
!9 = !{!"stream_template_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !7, i64 28, !2, i64 32, !2, i64 40, !2, i64 48}
!10 = !{!11, !2, i64 432}
!11 = !{!"jpeg_stream_data_s", !9, i64 0, !12, i64 56, !14, i64 224, !2, i64 432, !2, i64 440, !2, i64 448, !7, i64 456, !7, i64 460}
!12 = !{!"jpeg_error_mgr", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !3, i64 44, !7, i64 124, !13, i64 128, !2, i64 136, !7, i64 144, !2, i64 152, !7, i64 160, !7, i64 164}
!13 = !{!"long", !3, i64 0}
!14 = !{!"", !3, i64 0}
!15 = !{!16, !2, i64 24}
!16 = !{!"gs_memory_s", !2, i64 0, !17, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!17 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!18 = !{!19, !2, i64 1416}
!19 = !{!"jpeg_decompress_data_s", !9, i64 0, !12, i64 56, !14, i64 224, !2, i64 432, !2, i64 440, !2, i64 448, !7, i64 456, !7, i64 460, !20, i64 464, !23, i64 1344, !13, i64 1400, !7, i64 1408, !7, i64 1412, !2, i64 1416, !7, i64 1424}
!20 = !{!"jpeg_decompress_struct", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !3, i64 32, !7, i64 36, !2, i64 40, !7, i64 48, !7, i64 52, !7, i64 56, !3, i64 60, !3, i64 64, !7, i64 68, !7, i64 72, !21, i64 80, !3, i64 88, !3, i64 92, !3, i64 96, !3, i64 100, !3, i64 104, !3, i64 108, !3, i64 112, !3, i64 116, !7, i64 120, !3, i64 124, !3, i64 128, !3, i64 132, !7, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !2, i64 160, !7, i64 168, !7, i64 172, !7, i64 176, !7, i64 180, !7, i64 184, !2, i64 192, !3, i64 200, !3, i64 232, !3, i64 264, !7, i64 296, !2, i64 304, !3, i64 312, !3, i64 316, !3, i64 320, !3, i64 324, !3, i64 340, !3, i64 356, !7, i64 372, !3, i64 376, !3, i64 380, !3, i64 381, !3, i64 382, !22, i64 384, !22, i64 386, !3, i64 388, !3, i64 392, !3, i64 396, !3, i64 400, !2, i64 408, !7, i64 416, !7, i64 420, !7, i64 424, !7, i64 428, !7, i64 432, !2, i64 440, !7, i64 448, !3, i64 456, !7, i64 488, !7, i64 492, !7, i64 496, !3, i64 500, !7, i64 756, !7, i64 760, !7, i64 764, !7, i64 768, !7, i64 772, !2, i64 776, !7, i64 784, !7, i64 788, !2, i64 792, !2, i64 800, !2, i64 808, !2, i64 816, !2, i64 824, !2, i64 832, !2, i64 840, !2, i64 848, !2, i64 856, !2, i64 864, !2, i64 872}
!21 = !{!"double", !3, i64 0}
!22 = !{!"short", !3, i64 0}
!23 = !{!"jpeg_source_mgr", !2, i64 0, !13, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!24 = !{!16, !2, i64 32}
!25 = !{!26, !2, i64 8}
!26 = !{!"stream_DCT_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !3, i64 28, !27, i64 112, !28, i64 128, !7, i64 132, !7, i64 136, !2, i64 144, !3, i64 152, !2, i64 160, !3, i64 168, !13, i64 176, !7, i64 184, !7, i64 188}
!27 = !{!"gs_const_string_s", !2, i64 0, !7, i64 8}
!28 = !{!"float", !3, i64 0}
!29 = !{!16, !2, i64 200}
!30 = !{!26, !2, i64 144}
!31 = !{!26, !7, i64 132}
!32 = !{!26, !28, i64 128}
!33 = !{!26, !2, i64 112}
!34 = !{!26, !7, i64 120}
