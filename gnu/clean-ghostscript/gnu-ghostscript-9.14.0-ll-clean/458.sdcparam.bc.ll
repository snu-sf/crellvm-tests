; ModuleID = './sdcparam.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_param_item_s = type { i8*, i8, i16 }
%struct.gs_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32 }
%struct.gs_param_list_procs_s = type { i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)*, i32 (%struct.gs_param_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*)* }
%struct.gs_param_typed_value_s = type { %union.gs_param_value_s, i32 }
%union.gs_param_value_s = type { %struct.gs_param_string_s }
%struct.gs_param_string_s = type { i8*, i32, i32 }
%struct.gs_param_collection_s = type { %struct.gs_param_list_s*, i32 }
%union.gs_param_enumerator_s = type { i64 }
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gs_gc_root_s = type { %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i32 }
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.stream_DCT_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %struct.gs_const_string_s, float, i32, i32, %struct.gs_memory_s*, %union._jd, %struct.cmm_profile_s*, i8, i64, i32, i32 }
%struct.stream_template_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8] }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
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
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.gs_param_float_array_s = type { float*, i32, i32 }
%struct.jpeg_compress_data_s = type { %struct.stream_template_s, %struct.jpeg_error_mgr, %struct.gsfix_jmp_buf, %struct.gs_memory_s*, %struct.gs_memory_s*, i8*, i32, i32, %struct.jpeg_compress_struct, %struct.jpeg_destination_mgr, [100 x i8], i32, i32 }
%struct.jpeg_compress_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i8*, i32, i32, %struct.jpeg_destination_mgr*, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, %struct.jpeg_component_info*, [4 x %struct.JQUANT_TBL*], [4 x i32], [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*], [16 x i8], [16 x i8], [16 x i8], i32, %struct.jpeg_scan_info*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x %struct.jpeg_component_info*], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, i32*, i32, %struct.jpeg_comp_master*, %struct.jpeg_c_main_controller*, %struct.jpeg_c_prep_controller*, %struct.jpeg_c_coef_controller*, %struct.jpeg_marker_writer*, %struct.jpeg_color_converter*, %struct.jpeg_downsampler*, %struct.jpeg_forward_dct*, %struct.jpeg_entropy_encoder*, %struct.jpeg_scan_info*, i32 }
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
%struct.gs_param_string_array_s = type { %struct.gs_param_string_s*, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"QuantTables\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"quant_param_string\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"get huffman tables\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"HuffTables\00", align 1
@s_DCT_param_items = internal constant [3 x %struct.gs_param_item_s] [%struct.gs_param_item_s { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8 2, i16 132 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8 4, i16 128 }, %struct.gs_param_item_s zeroinitializer], align 16
@jsd_param_items = internal constant [3 x %struct.gs_param_item_s] [%struct.gs_param_item_s { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8 2, i16 456 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8 2, i16 460 }, %struct.gs_param_item_s zeroinitializer], align 16
@inverse_natural_order = internal constant [64 x i8] c"\00\01\05\06\0E\0F\1B\1C\02\04\07\0D\10\1A\1D*\03\08\0C\11\19\1E)+\09\0B\12\18\1F(,5\0A\13\17 '-46\14\16!&.37<\15\22%/28;=#$019:>?", align 16
@.str.5 = private unnamed_addr constant [18 x i8] c"quant_param_array\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"pack_huff_table\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"ColorTransform\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"QFactor\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"Picky\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"Relax\00", align 1
@natural_order = internal constant [64 x i8] c"\00\01\08\10\09\02\03\0A\11\18 \19\12\0B\04\05\0C\13\1A!(0)\22\1B\14\0D\06\07\0E\15\1C#*1892+$\1D\16\0F\17\1E%,3:;4-&\1F'.5<=6/7>?", align 16

; Function Attrs: nounwind uwtable
define i32 @s_DCT_get_quantization_tables(%struct.gs_param_list_s* %plist, %struct.stream_DCT_state_s* %pdct, %struct.stream_DCT_state_s* %defaults, i32 %is_encode) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pdct.addr = alloca %struct.stream_DCT_state_s*, align 8
  %defaults.addr = alloca %struct.stream_DCT_state_s*, align 8
  %is_encode.addr = alloca i32, align 4
  %mem = alloca %struct.gs_memory_s*, align 8
  %d_comp_info = alloca [4 x %struct.jpeg_component_info], align 16
  %num_in_tables = alloca i32, align 4
  %comp_info = alloca %struct.jpeg_component_info*, align 8
  %default_comp_info = alloca %struct.jpeg_component_info*, align 8
  %table_ptrs = alloca %struct.JQUANT_TBL**, align 8
  %default_table_ptrs = alloca %struct.JQUANT_TBL**, align 8
  %quant_tables = alloca %struct.gs_param_collection_s, align 8
  %QFactor = alloca double, align 8
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %match = alloca i32, align 4
  %tbl = alloca %struct.JQUANT_TBL*, align 8
  %default_tbl = alloca %struct.JQUANT_TBL*, align 8
  %cleanup.dest.slot = alloca i32
  %key = alloca [3 x i8], align 1
  %str = alloca %struct.gs_param_string_s, align 8
  %fa = alloca %struct.gs_param_float_array_s, align 8
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store %struct.stream_DCT_state_s* %pdct, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  store %struct.stream_DCT_state_s* %defaults, %struct.stream_DCT_state_s** %defaults.addr, align 8, !tbaa !1
  store i32 %is_encode, i32* %is_encode.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %1, i32 0, i32 1
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  store %struct.gs_memory_s* %2, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %3 = bitcast [4 x %struct.jpeg_component_info]* %d_comp_info to i8*
  call void @llvm.lifetime.start(i64 384, i8* %3) #1
  %4 = bitcast i32* %num_in_tables to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast %struct.jpeg_component_info** %comp_info to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast %struct.jpeg_component_info** %default_comp_info to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast %struct.JQUANT_TBL*** %table_ptrs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast %struct.JQUANT_TBL*** %default_table_ptrs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast %struct.gs_param_collection_s* %quant_tables to i8*
  call void @llvm.lifetime.start(i64 16, i8* %9) #1
  %10 = bitcast double* %QFactor to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %QFactor1 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %11, i32 0, i32 6
  %12 = load float, float* %QFactor1, align 4, !tbaa !12
  %conv = fpext float %12 to double
  store double %conv, double* %QFactor, align 8, !tbaa !13
  %13 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load i32, i32* %is_encode.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %16 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %16, i32 0, i32 10
  %compress = bitcast %union._jd* %data to %struct.jpeg_compress_data_s**
  %17 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %compress, align 8, !tbaa !1
  %cinfo = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %17, i32 0, i32 8
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo, i32 0, i32 17
  %18 = load i32, i32* %num_components, align 4, !tbaa !15
  store i32 %18, i32* %num_in_tables, align 4, !tbaa !5
  %19 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %data2 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %19, i32 0, i32 10
  %compress3 = bitcast %union._jd* %data2 to %struct.jpeg_compress_data_s**
  %20 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %compress3, align 8, !tbaa !1
  %cinfo4 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %20, i32 0, i32 8
  %comp_info5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo4, i32 0, i32 19
  %21 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info5, align 8, !tbaa !23
  store %struct.jpeg_component_info* %21, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !1
  %22 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %data6 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %22, i32 0, i32 10
  %compress7 = bitcast %union._jd* %data6 to %struct.jpeg_compress_data_s**
  %23 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %compress7, align 8, !tbaa !1
  %cinfo8 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %23, i32 0, i32 8
  %quant_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo8, i32 0, i32 20
  %arraydecay = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %quant_tbl_ptrs, i32 0, i32 0
  store %struct.JQUANT_TBL** %arraydecay, %struct.JQUANT_TBL*** %table_ptrs, align 8, !tbaa !1
  %24 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %defaults.addr, align 8, !tbaa !1
  %tobool9 = icmp ne %struct.stream_DCT_state_s* %24, null
  br i1 %tobool9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then
  %25 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %defaults.addr, align 8, !tbaa !1
  %data11 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %25, i32 0, i32 10
  %compress12 = bitcast %union._jd* %data11 to %struct.jpeg_compress_data_s**
  %26 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %compress12, align 8, !tbaa !1
  %cinfo13 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %26, i32 0, i32 8
  %comp_info14 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo13, i32 0, i32 19
  %27 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info14, align 8, !tbaa !23
  store %struct.jpeg_component_info* %27, %struct.jpeg_component_info** %default_comp_info, align 8, !tbaa !1
  %28 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %defaults.addr, align 8, !tbaa !1
  %data15 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %28, i32 0, i32 10
  %compress16 = bitcast %union._jd* %data15 to %struct.jpeg_compress_data_s**
  %29 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %compress16, align 8, !tbaa !1
  %cinfo17 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %29, i32 0, i32 8
  %quant_tbl_ptrs18 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo17, i32 0, i32 20
  %arraydecay19 = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %quant_tbl_ptrs18, i32 0, i32 0
  store %struct.JQUANT_TBL** %arraydecay19, %struct.JQUANT_TBL*** %default_table_ptrs, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.then
  br label %if.end.35

if.else:                                          ; preds = %entry
  %size = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %quant_tables, i32 0, i32 1
  store i32 4, i32* %size, align 4, !tbaa !24
  %size20 = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %quant_tables, i32 0, i32 1
  %30 = load i32, i32* %size20, align 4, !tbaa !24
  store i32 %30, i32* %num_in_tables, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %31 = load i32, i32* %i, align 4, !tbaa !5
  %32 = load i32, i32* %num_in_tables, align 4, !tbaa !5
  %cmp = icmp slt i32 %31, %32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load i32, i32* %i, align 4, !tbaa !5
  %34 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %34 to i64
  %arrayidx = getelementptr inbounds [4 x %struct.jpeg_component_info], [4 x %struct.jpeg_component_info]* %d_comp_info, i32 0, i64 %idxprom
  %quant_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx, i32 0, i32 4
  store i32 %33, i32* %quant_tbl_no, align 4, !tbaa !26
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %35 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay22 = getelementptr inbounds [4 x %struct.jpeg_component_info], [4 x %struct.jpeg_component_info]* %d_comp_info, i32 0, i32 0
  store %struct.jpeg_component_info* %arraydecay22, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !1
  %36 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %data23 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %36, i32 0, i32 10
  %decompress = bitcast %union._jd* %data23 to %struct.jpeg_decompress_data_s**
  %37 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %decompress, align 8, !tbaa !1
  %dinfo = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %37, i32 0, i32 8
  %quant_tbl_ptrs24 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %dinfo, i32 0, i32 40
  %arraydecay25 = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %quant_tbl_ptrs24, i32 0, i32 0
  store %struct.JQUANT_TBL** %arraydecay25, %struct.JQUANT_TBL*** %table_ptrs, align 8, !tbaa !1
  %38 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %defaults.addr, align 8, !tbaa !1
  %tobool26 = icmp ne %struct.stream_DCT_state_s* %38, null
  br i1 %tobool26, label %if.then.27, label %if.end.34

if.then.27:                                       ; preds = %for.end
  %arraydecay28 = getelementptr inbounds [4 x %struct.jpeg_component_info], [4 x %struct.jpeg_component_info]* %d_comp_info, i32 0, i32 0
  store %struct.jpeg_component_info* %arraydecay28, %struct.jpeg_component_info** %default_comp_info, align 8, !tbaa !1
  %39 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %defaults.addr, align 8, !tbaa !1
  %data29 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %39, i32 0, i32 10
  %decompress30 = bitcast %union._jd* %data29 to %struct.jpeg_decompress_data_s**
  %40 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %decompress30, align 8, !tbaa !1
  %dinfo31 = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %40, i32 0, i32 8
  %quant_tbl_ptrs32 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %dinfo31, i32 0, i32 40
  %arraydecay33 = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %quant_tbl_ptrs32, i32 0, i32 0
  store %struct.JQUANT_TBL** %arraydecay33, %struct.JQUANT_TBL*** %default_table_ptrs, align 8, !tbaa !1
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.27, %for.end
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.end
  %41 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %defaults.addr, align 8, !tbaa !1
  %tobool36 = icmp ne %struct.stream_DCT_state_s* %41, null
  br i1 %tobool36, label %if.then.37, label %if.end.82

if.then.37:                                       ; preds = %if.end.35
  %42 = bitcast i32* %match to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #1
  store i32 1, i32* %match, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.73, %if.then.37
  %43 = load i32, i32* %i, align 4, !tbaa !5
  %44 = load i32, i32* %num_in_tables, align 4, !tbaa !5
  %cmp39 = icmp slt i32 %43, %44
  br i1 %cmp39, label %for.body.41, label %for.end.75

for.body.41:                                      ; preds = %for.cond.38
  %45 = bitcast %struct.JQUANT_TBL** %tbl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %45) #1
  %46 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom42 = sext i32 %46 to i64
  %47 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !1
  %arrayidx43 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %47, i64 %idxprom42
  %quant_tbl_no44 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx43, i32 0, i32 4
  %48 = load i32, i32* %quant_tbl_no44, align 4, !tbaa !26
  %idxprom45 = sext i32 %48 to i64
  %49 = load %struct.JQUANT_TBL**, %struct.JQUANT_TBL*** %table_ptrs, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %49, i64 %idxprom45
  %50 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %arrayidx46, align 8, !tbaa !1
  store %struct.JQUANT_TBL* %50, %struct.JQUANT_TBL** %tbl, align 8, !tbaa !1
  %51 = bitcast %struct.JQUANT_TBL** %default_tbl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %51) #1
  %52 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %default_comp_info, align 8, !tbaa !1
  %cmp47 = icmp eq %struct.jpeg_component_info* %52, null
  br i1 %cmp47, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.41
  %53 = load %struct.JQUANT_TBL**, %struct.JQUANT_TBL*** %default_table_ptrs, align 8, !tbaa !1
  %cmp49 = icmp eq %struct.JQUANT_TBL** %53, null
  br i1 %cmp49, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %for.body.41
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %54 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom51 = sext i32 %54 to i64
  %55 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %default_comp_info, align 8, !tbaa !1
  %arrayidx52 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %55, i64 %idxprom51
  %quant_tbl_no53 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx52, i32 0, i32 4
  %56 = load i32, i32* %quant_tbl_no53, align 4, !tbaa !26
  %idxprom54 = sext i32 %56 to i64
  %57 = load %struct.JQUANT_TBL**, %struct.JQUANT_TBL*** %default_table_ptrs, align 8, !tbaa !1
  %arrayidx55 = getelementptr inbounds %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %57, i64 %idxprom54
  %58 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %arrayidx55, align 8, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.JQUANT_TBL* [ null, %cond.true ], [ %58, %cond.false ]
  store %struct.JQUANT_TBL* %cond, %struct.JQUANT_TBL** %default_tbl, align 8, !tbaa !1
  %59 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %tbl, align 8, !tbaa !1
  %60 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %default_tbl, align 8, !tbaa !1
  %cmp56 = icmp eq %struct.JQUANT_TBL* %59, %60
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %cond.end
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup

if.end.59:                                        ; preds = %cond.end
  %61 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %tbl, align 8, !tbaa !1
  %cmp60 = icmp eq %struct.JQUANT_TBL* %61, null
  br i1 %cmp60, label %if.then.70, label %lor.lhs.false.62

lor.lhs.false.62:                                 ; preds = %if.end.59
  %62 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %default_tbl, align 8, !tbaa !1
  %cmp63 = icmp eq %struct.JQUANT_TBL* %62, null
  br i1 %cmp63, label %if.then.70, label %lor.lhs.false.65

lor.lhs.false.65:                                 ; preds = %lor.lhs.false.62
  %63 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %tbl, align 8, !tbaa !1
  %quantval = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %63, i32 0, i32 0
  %arraydecay66 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval, i32 0, i32 0
  %64 = bitcast i16* %arraydecay66 to i8*
  %65 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %default_tbl, align 8, !tbaa !1
  %quantval67 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %65, i32 0, i32 0
  %arraydecay68 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval67, i32 0, i32 0
  %66 = bitcast i16* %arraydecay68 to i8*
  %call = call i32 @memcmp(i8* %64, i8* %66, i64 128) #5
  %tobool69 = icmp ne i32 %call, 0
  br i1 %tobool69, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %lor.lhs.false.65, %lor.lhs.false.62, %if.end.59
  store i32 0, i32* %match, align 4, !tbaa !5
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.end.71:                                        ; preds = %lor.lhs.false.65
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.71, %if.then.70, %if.then.58
  %67 = bitcast %struct.JQUANT_TBL** %default_tbl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = bitcast %struct.JQUANT_TBL** %tbl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 7, label %for.inc.73
    i32 5, label %for.end.75
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.73

for.inc.73:                                       ; preds = %cleanup.cont, %cleanup
  %69 = load i32, i32* %i, align 4, !tbaa !5
  %inc74 = add nsw i32 %69, 1
  store i32 %inc74, i32* %i, align 4, !tbaa !5
  br label %for.cond.38

for.end.75:                                       ; preds = %cleanup, %for.cond.38
  %70 = load i32, i32* %match, align 4, !tbaa !5
  %tobool76 = icmp ne i32 %70, 0
  br i1 %tobool76, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %for.end.75
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.79

if.end.78:                                        ; preds = %for.end.75
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.79

cleanup.79:                                       ; preds = %if.end.78, %if.then.77
  %71 = bitcast i32* %match to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %cleanup.dest.80 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.80, label %cleanup.144 [
    i32 0, label %cleanup.cont.81
  ]

cleanup.cont.81:                                  ; preds = %cleanup.79
  br label %if.end.82

if.end.82:                                        ; preds = %cleanup.cont.81, %if.end.35
  %72 = load i32, i32* %num_in_tables, align 4, !tbaa !5
  %size83 = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %quant_tables, i32 0, i32 1
  store i32 %72, i32* %size83, align 4, !tbaa !24
  %73 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %73, i32 0, i32 0
  %74 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !28
  %begin_xmit_collection = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %74, i32 0, i32 1
  %75 = load i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)** %begin_xmit_collection, align 8, !tbaa !30
  %76 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call84 = call i32 %75(%struct.gs_param_list_s* %76, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), %struct.gs_param_collection_s* %quant_tables, i32 2) #6
  store i32 %call84, i32* %code, align 4, !tbaa !5
  %77 = load i32, i32* %code, align 4, !tbaa !5
  %cmp85 = icmp slt i32 %77, 0
  br i1 %cmp85, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %if.end.82
  %78 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %78, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.144

if.end.88:                                        ; preds = %if.end.82
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.89

for.cond.89:                                      ; preds = %for.inc.139, %if.end.88
  %79 = load i32, i32* %i, align 4, !tbaa !5
  %80 = load i32, i32* %num_in_tables, align 4, !tbaa !5
  %cmp90 = icmp slt i32 %79, %80
  br i1 %cmp90, label %for.body.92, label %for.end.141

for.body.92:                                      ; preds = %for.cond.89
  %81 = bitcast [3 x i8]* %key to i8*
  call void @llvm.lifetime.start(i64 3, i8* %81) #1
  %82 = bitcast %struct.gs_param_string_s* %str to i8*
  call void @llvm.lifetime.start(i64 16, i8* %82) #1
  %83 = bitcast %struct.gs_param_float_array_s* %fa to i8*
  call void @llvm.lifetime.start(i64 16, i8* %83) #1
  %arraydecay93 = getelementptr inbounds [3 x i8], [3 x i8]* %key, i32 0, i32 0
  %84 = load i32, i32* %i, align 4, !tbaa !5
  %call94 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay93, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %84) #6
  %85 = load double, double* %QFactor, align 8, !tbaa !13
  %cmp95 = fcmp oeq double %85, 1.000000e+00
  br i1 %cmp95, label %if.then.97, label %if.end.114

if.then.97:                                       ; preds = %for.body.92
  %86 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom98 = sext i32 %86 to i64
  %87 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !1
  %arrayidx99 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %87, i64 %idxprom98
  %quant_tbl_no100 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx99, i32 0, i32 4
  %88 = load i32, i32* %quant_tbl_no100, align 4, !tbaa !26
  %idxprom101 = sext i32 %88 to i64
  %89 = load %struct.JQUANT_TBL**, %struct.JQUANT_TBL*** %table_ptrs, align 8, !tbaa !1
  %arrayidx102 = getelementptr inbounds %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %89, i64 %idxprom101
  %90 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %arrayidx102, align 8, !tbaa !1
  %quantval103 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %90, i32 0, i32 0
  %arraydecay104 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval103, i32 0, i32 0
  %91 = load double, double* %QFactor, align 8, !tbaa !13
  %92 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call105 = call i32 @quant_param_string(%struct.gs_param_string_s* %str, i32 64, i16* %arraydecay104, double %91, %struct.gs_memory_s* %92) #6
  store i32 %call105, i32* %code, align 4, !tbaa !5
  %93 = load i32, i32* %code, align 4, !tbaa !5
  switch i32 %93, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.epilog
  ]

sw.bb:                                            ; preds = %if.then.97
  %list = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %quant_tables, i32 0, i32 0
  %94 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %list, align 8, !tbaa !32
  %arraydecay106 = getelementptr inbounds [3 x i8], [3 x i8]* %key, i32 0, i32 0
  %call107 = call i32 @param_write_string(%struct.gs_param_list_s* %94, i8* %arraydecay106, %struct.gs_param_string_s* %str) #6
  store i32 %call107, i32* %code, align 4, !tbaa !5
  %95 = load i32, i32* %code, align 4, !tbaa !5
  %cmp108 = icmp slt i32 %95, 0
  br i1 %cmp108, label %if.then.110, label %if.end.111

if.then.110:                                      ; preds = %sw.bb
  %96 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %96, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.134

if.end.111:                                       ; preds = %sw.bb
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup.134

sw.default:                                       ; preds = %if.then.97
  %97 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %97, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.134

sw.epilog:                                        ; preds = %if.then.97
  %98 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %data112 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %str, i32 0, i32 0
  %99 = load i8*, i8** %data112, align 8, !tbaa !33
  %size113 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %str, i32 0, i32 1
  %100 = load i32, i32* %size113, align 4, !tbaa !35
  call void @gs_free_const_string(%struct.gs_memory_s* %98, i8* %99, i32 %100, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0)) #6
  br label %if.end.114

if.end.114:                                       ; preds = %sw.epilog, %for.body.92
  %101 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom115 = sext i32 %101 to i64
  %102 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !1
  %arrayidx116 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %102, i64 %idxprom115
  %quant_tbl_no117 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx116, i32 0, i32 4
  %103 = load i32, i32* %quant_tbl_no117, align 4, !tbaa !26
  %idxprom118 = sext i32 %103 to i64
  %104 = load %struct.JQUANT_TBL**, %struct.JQUANT_TBL*** %table_ptrs, align 8, !tbaa !1
  %arrayidx119 = getelementptr inbounds %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %104, i64 %idxprom118
  %105 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %arrayidx119, align 8, !tbaa !1
  %quantval120 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %105, i32 0, i32 0
  %arraydecay121 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval120, i32 0, i32 0
  %106 = load double, double* %QFactor, align 8, !tbaa !13
  %107 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call122 = call i32 @quant_param_array(%struct.gs_param_float_array_s* %fa, i32 64, i16* %arraydecay121, double %106, %struct.gs_memory_s* %107) #6
  store i32 %call122, i32* %code, align 4, !tbaa !5
  %108 = load i32, i32* %code, align 4, !tbaa !5
  %cmp123 = icmp slt i32 %108, 0
  br i1 %cmp123, label %if.then.125, label %if.end.126

if.then.125:                                      ; preds = %if.end.114
  %109 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %109, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.134

if.end.126:                                       ; preds = %if.end.114
  %list127 = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %quant_tables, i32 0, i32 0
  %110 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %list127, align 8, !tbaa !32
  %arraydecay128 = getelementptr inbounds [3 x i8], [3 x i8]* %key, i32 0, i32 0
  %call129 = call i32 @param_write_float_array(%struct.gs_param_list_s* %110, i8* %arraydecay128, %struct.gs_param_float_array_s* %fa) #6
  store i32 %call129, i32* %code, align 4, !tbaa !5
  %111 = load i32, i32* %code, align 4, !tbaa !5
  %cmp130 = icmp slt i32 %111, 0
  br i1 %cmp130, label %if.then.132, label %if.end.133

if.then.132:                                      ; preds = %if.end.126
  %112 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %112, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.134

if.end.133:                                       ; preds = %if.end.126
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.134

cleanup.134:                                      ; preds = %if.end.133, %if.then.132, %if.then.125, %sw.default, %if.end.111, %if.then.110
  %113 = bitcast %struct.gs_param_float_array_s* %fa to i8*
  call void @llvm.lifetime.end(i64 16, i8* %113) #1
  %114 = bitcast %struct.gs_param_string_s* %str to i8*
  call void @llvm.lifetime.end(i64 16, i8* %114) #1
  %115 = bitcast [3 x i8]* %key to i8*
  call void @llvm.lifetime.end(i64 3, i8* %115) #1
  %cleanup.dest.137 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.137, label %cleanup.144 [
    i32 0, label %cleanup.cont.138
    i32 10, label %for.inc.139
  ]

cleanup.cont.138:                                 ; preds = %cleanup.134
  br label %for.inc.139

for.inc.139:                                      ; preds = %cleanup.cont.138, %cleanup.134
  %116 = load i32, i32* %i, align 4, !tbaa !5
  %inc140 = add nsw i32 %116, 1
  store i32 %inc140, i32* %i, align 4, !tbaa !5
  br label %for.cond.89

for.end.141:                                      ; preds = %for.cond.89
  %117 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs142 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %117, i32 0, i32 0
  %118 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs142, align 8, !tbaa !28
  %end_xmit_collection = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %118, i32 0, i32 2
  %119 = load i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)** %end_xmit_collection, align 8, !tbaa !36
  %120 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call143 = call i32 %119(%struct.gs_param_list_s* %120, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), %struct.gs_param_collection_s* %quant_tables) #6
  store i32 %call143, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.144

cleanup.144:                                      ; preds = %for.end.141, %cleanup.134, %if.then.87, %cleanup.79
  %121 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #1
  %122 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %122) #1
  %123 = bitcast double* %QFactor to i8*
  call void @llvm.lifetime.end(i64 8, i8* %123) #1
  %124 = bitcast %struct.gs_param_collection_s* %quant_tables to i8*
  call void @llvm.lifetime.end(i64 16, i8* %124) #1
  %125 = bitcast %struct.JQUANT_TBL*** %default_table_ptrs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %125) #1
  %126 = bitcast %struct.JQUANT_TBL*** %table_ptrs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %126) #1
  %127 = bitcast %struct.jpeg_component_info** %default_comp_info to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #1
  %128 = bitcast %struct.jpeg_component_info** %comp_info to i8*
  call void @llvm.lifetime.end(i64 8, i8* %128) #1
  %129 = bitcast i32* %num_in_tables to i8*
  call void @llvm.lifetime.end(i64 4, i8* %129) #1
  %130 = bitcast [4 x %struct.jpeg_component_info]* %d_comp_info to i8*
  call void @llvm.lifetime.end(i64 384, i8* %130) #1
  %131 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %131) #1
  %132 = load i32, i32* %retval
  ret i32 %132

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @gs_sprintf(i8*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal i32 @quant_param_string(%struct.gs_param_string_s* %pstr, i32 %count, i16* %pvals, double %QFactor, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %pstr.addr = alloca %struct.gs_param_string_s*, align 8
  %count.addr = alloca i32, align 4
  %pvals.addr = alloca i16*, align 8
  %QFactor.addr = alloca double, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %data = alloca i8*, align 8
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %val = alloca double, align 8
  store %struct.gs_param_string_s* %pstr, %struct.gs_param_string_s** %pstr.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !5
  store i16* %pvals, i16** %pvals.addr, align 8, !tbaa !1
  store double %QFactor, double* %QFactor.addr, align 8, !tbaa !13
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 16
  %4 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !37
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %6 = load i32, i32* %count.addr, align 4, !tbaa !5
  %call = call i8* %4(%struct.gs_memory_s* %5, i32 %6, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0)) #6
  store i8* %call, i8** %data, align 8, !tbaa !1
  %7 = load i8*, i8** %data, align 8, !tbaa !1
  %cmp = icmp eq i8* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %9 = load i32, i32* %count.addr, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %8, %9
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = bitcast double* %val to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [64 x i8], [64 x i8]* @inverse_natural_order, i32 0, i64 %idxprom
  %12 = load i8, i8* %arrayidx, align 1, !tbaa !40
  %idxprom2 = zext i8 %12 to i64
  %13 = load i16*, i16** %pvals.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %13, i64 %idxprom2
  %14 = load i16, i16* %arrayidx3, align 2, !tbaa !41
  %conv = zext i16 %14 to i32
  %conv4 = sitofp i32 %conv to double
  %15 = load double, double* %QFactor.addr, align 8, !tbaa !13
  %div = fdiv double %conv4, %15
  store double %div, double* %val, align 8, !tbaa !13
  %16 = load double, double* %val, align 8, !tbaa !13
  %cmp5 = fcmp olt double %16, 1.000000e+00
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  store i32 1, i32* %code, align 4, !tbaa !5
  br label %cond.end.13

cond.false:                                       ; preds = %for.body
  %17 = load double, double* %val, align 8, !tbaa !13
  %cmp7 = fcmp ogt double %17, 2.550000e+02
  br i1 %cmp7, label %cond.true.9, label %cond.false.10

cond.true.9:                                      ; preds = %cond.false
  store i32 255, i32* %code, align 4, !tbaa !5
  br label %cond.end

cond.false.10:                                    ; preds = %cond.false
  %18 = load double, double* %val, align 8, !tbaa !13
  %conv11 = fptoui double %18 to i8
  %conv12 = zext i8 %conv11 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false.10, %cond.true.9
  %cond = phi i32 [ 255, %cond.true.9 ], [ %conv12, %cond.false.10 ]
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.end, %cond.true
  %cond14 = phi i32 [ 1, %cond.true ], [ %cond, %cond.end ]
  %conv15 = trunc i32 %cond14 to i8
  %19 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom16 = sext i32 %19 to i64
  %20 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i8, i8* %20, i64 %idxprom16
  store i8 %conv15, i8* %arrayidx17, align 1, !tbaa !40
  %21 = bitcast double* %val to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  br label %for.inc

for.inc:                                          ; preds = %cond.end.13
  %22 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i8*, i8** %data, align 8, !tbaa !1
  %24 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pstr.addr, align 8, !tbaa !1
  %data18 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %24, i32 0, i32 0
  store i8* %23, i8** %data18, align 8, !tbaa !33
  %25 = load i32, i32* %count.addr, align 4, !tbaa !5
  %26 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pstr.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %26, i32 0, i32 1
  store i32 %25, i32* %size, align 4, !tbaa !35
  %27 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pstr.addr, align 8, !tbaa !1
  %persistent = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %27, i32 0, i32 2
  store i32 1, i32* %persistent, align 4, !tbaa !42
  %28 = load i32, i32* %code, align 4, !tbaa !5
  %and = and i32 %28, 1
  store i32 %and, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %29 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = load i32, i32* %retval
  ret i32 %32
}

declare i32 @param_write_string(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_s*) #3

declare void @gs_free_const_string(%struct.gs_memory_s*, i8*, i32, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @quant_param_array(%struct.gs_param_float_array_s* %pfa, i32 %count, i16* %pvals, double %QFactor, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %pfa.addr = alloca %struct.gs_param_float_array_s*, align 8
  %count.addr = alloca i32, align 4
  %pvals.addr = alloca i16*, align 8
  %QFactor.addr = alloca double, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %data = alloca float*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_float_array_s* %pfa, %struct.gs_param_float_array_s** %pfa.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !5
  store i16* %pvals, i16** %pvals.addr, align 8, !tbaa !1
  store double %QFactor, double* %QFactor.addr, align 8, !tbaa !13
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast float** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %3 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !43
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %5 = load i32, i32* %count.addr, align 4, !tbaa !5
  %call = call i8* %3(%struct.gs_memory_s* %4, i32 %5, i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0)) #6
  %6 = bitcast i8* %call to float*
  store float* %6, float** %data, align 8, !tbaa !1
  %7 = load float*, float** %data, align 8, !tbaa !1
  %cmp = icmp eq float* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %9 = load i32, i32* %count.addr, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %8, %9
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [64 x i8], [64 x i8]* @inverse_natural_order, i32 0, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1, !tbaa !40
  %idxprom2 = zext i8 %11 to i64
  %12 = load i16*, i16** %pvals.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %12, i64 %idxprom2
  %13 = load i16, i16* %arrayidx3, align 2, !tbaa !41
  %conv = zext i16 %13 to i32
  %conv4 = sitofp i32 %conv to double
  %14 = load double, double* %QFactor.addr, align 8, !tbaa !13
  %div = fdiv double %conv4, %14
  %conv5 = fptrunc double %div to float
  %15 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom6 = sext i32 %15 to i64
  %16 = load float*, float** %data, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds float, float* %16, i64 %idxprom6
  store float %conv5, float* %arrayidx7, align 4, !tbaa !44
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load float*, float** %data, align 8, !tbaa !1
  %19 = load %struct.gs_param_float_array_s*, %struct.gs_param_float_array_s** %pfa.addr, align 8, !tbaa !1
  %data8 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %19, i32 0, i32 0
  store float* %18, float** %data8, align 8, !tbaa !45
  %20 = load i32, i32* %count.addr, align 4, !tbaa !5
  %21 = load %struct.gs_param_float_array_s*, %struct.gs_param_float_array_s** %pfa.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %21, i32 0, i32 1
  store i32 %20, i32* %size, align 4, !tbaa !47
  %22 = load %struct.gs_param_float_array_s*, %struct.gs_param_float_array_s** %pfa.addr, align 8, !tbaa !1
  %persistent = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %22, i32 0, i32 2
  store i32 1, i32* %persistent, align 4, !tbaa !48
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %23 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast float** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = load i32, i32* %retval
  ret i32 %25
}

declare i32 @param_write_float_array(%struct.gs_param_list_s*, i8*, %struct.gs_param_float_array_s*) #3

; Function Attrs: nounwind uwtable
define i32 @s_DCT_get_huffman_tables(%struct.gs_param_list_s* %plist, %struct.stream_DCT_state_s* %pdct, %struct.stream_DCT_state_s* %defaults, i32 %is_encode) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pdct.addr = alloca %struct.stream_DCT_state_s*, align 8
  %defaults.addr = alloca %struct.stream_DCT_state_s*, align 8
  %is_encode.addr = alloca i32, align 4
  %mem = alloca %struct.gs_memory_s*, align 8
  %huff_data = alloca %struct.gs_param_string_s*, align 8
  %hta = alloca %struct.gs_param_string_array_s, align 8
  %num_in_tables = alloca i32, align 4
  %comp_info = alloca %struct.jpeg_component_info*, align 8
  %dc_table_ptrs = alloca %struct.JHUFF_TBL**, align 8
  %ac_table_ptrs = alloca %struct.JHUFF_TBL**, align 8
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store %struct.stream_DCT_state_s* %pdct, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  store %struct.stream_DCT_state_s* %defaults, %struct.stream_DCT_state_s** %defaults.addr, align 8, !tbaa !1
  store i32 %is_encode, i32* %is_encode.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %1, i32 0, i32 1
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  store %struct.gs_memory_s* %2, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %3 = bitcast %struct.gs_param_string_s** %huff_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.gs_param_string_array_s* %hta to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #1
  %5 = bitcast i32* %num_in_tables to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast %struct.jpeg_component_info** %comp_info to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast %struct.JHUFF_TBL*** %dc_table_ptrs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast %struct.JHUFF_TBL*** %ac_table_ptrs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %11 = load i32, i32* %is_encode.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %12 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %12, i32 0, i32 10
  %compress = bitcast %union._jd* %data to %struct.jpeg_compress_data_s**
  %13 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %compress, align 8, !tbaa !1
  %cinfo = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %13, i32 0, i32 8
  %dc_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo, i32 0, i32 22
  %arraydecay = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %dc_huff_tbl_ptrs, i32 0, i32 0
  store %struct.JHUFF_TBL** %arraydecay, %struct.JHUFF_TBL*** %dc_table_ptrs, align 8, !tbaa !1
  %14 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %data1 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %14, i32 0, i32 10
  %compress2 = bitcast %union._jd* %data1 to %struct.jpeg_compress_data_s**
  %15 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %compress2, align 8, !tbaa !1
  %cinfo3 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %15, i32 0, i32 8
  %ac_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo3, i32 0, i32 23
  %arraydecay4 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %ac_huff_tbl_ptrs, i32 0, i32 0
  store %struct.JHUFF_TBL** %arraydecay4, %struct.JHUFF_TBL*** %ac_table_ptrs, align 8, !tbaa !1
  %16 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %data5 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %16, i32 0, i32 10
  %compress6 = bitcast %union._jd* %data5 to %struct.jpeg_compress_data_s**
  %17 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %compress6, align 8, !tbaa !1
  %cinfo7 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %17, i32 0, i32 8
  %input_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo7, i32 0, i32 9
  %18 = load i32, i32* %input_components, align 4, !tbaa !49
  %mul = mul nsw i32 %18, 2
  store i32 %mul, i32* %num_in_tables, align 4, !tbaa !5
  %19 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %data8 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %19, i32 0, i32 10
  %compress9 = bitcast %union._jd* %data8 to %struct.jpeg_compress_data_s**
  %20 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %compress9, align 8, !tbaa !1
  %cinfo10 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %20, i32 0, i32 8
  %comp_info11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo10, i32 0, i32 19
  %21 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info11, align 8, !tbaa !23
  store %struct.jpeg_component_info* %21, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !1
  br label %if.end.27

if.else:                                          ; preds = %entry
  %22 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %data12 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %22, i32 0, i32 10
  %decompress = bitcast %union._jd* %data12 to %struct.jpeg_decompress_data_s**
  %23 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %decompress, align 8, !tbaa !1
  %dinfo = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %23, i32 0, i32 8
  %dc_huff_tbl_ptrs13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %dinfo, i32 0, i32 41
  %arraydecay14 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %dc_huff_tbl_ptrs13, i32 0, i32 0
  store %struct.JHUFF_TBL** %arraydecay14, %struct.JHUFF_TBL*** %dc_table_ptrs, align 8, !tbaa !1
  %24 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %data15 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %24, i32 0, i32 10
  %decompress16 = bitcast %union._jd* %data15 to %struct.jpeg_decompress_data_s**
  %25 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %decompress16, align 8, !tbaa !1
  %dinfo17 = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %25, i32 0, i32 8
  %ac_huff_tbl_ptrs18 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %dinfo17, i32 0, i32 42
  %arraydecay19 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %ac_huff_tbl_ptrs18, i32 0, i32 0
  store %struct.JHUFF_TBL** %arraydecay19, %struct.JHUFF_TBL*** %ac_table_ptrs, align 8, !tbaa !1
  store i32 2, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %26 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp sgt i32 %26, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %i, align 4, !tbaa !5
  %sub = sub nsw i32 %27, 1
  %idxprom = sext i32 %sub to i64
  %28 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %dc_table_ptrs, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %28, i64 %idxprom
  %29 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx, align 8, !tbaa !1
  %tobool20 = icmp ne %struct.JHUFF_TBL* %29, null
  br i1 %tobool20, label %if.then.25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %30 = load i32, i32* %i, align 4, !tbaa !5
  %sub21 = sub nsw i32 %30, 1
  %idxprom22 = sext i32 %sub21 to i64
  %31 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %ac_table_ptrs, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %31, i64 %idxprom22
  %32 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx23, align 8, !tbaa !1
  %tobool24 = icmp ne %struct.JHUFF_TBL* %32, null
  br i1 %tobool24, label %if.then.25, label %if.end

if.then.25:                                       ; preds = %lor.lhs.false, %for.body
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %33 = load i32, i32* %i, align 4, !tbaa !5
  %dec = add nsw i32 %33, -1
  store i32 %dec, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %if.then.25, %for.cond
  %34 = load i32, i32* %i, align 4, !tbaa !5
  %mul26 = mul nsw i32 %34, 2
  store i32 %mul26, i32* %num_in_tables, align 4, !tbaa !5
  store %struct.jpeg_component_info* null, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !1
  br label %if.end.27

if.end.27:                                        ; preds = %for.end, %if.then
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %35, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %36 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !43
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %38 = load i32, i32* %num_in_tables, align 4, !tbaa !5
  %call = call i8* %36(%struct.gs_memory_s* %37, i32 %38, i32 16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0)) #6
  %39 = bitcast i8* %call to %struct.gs_param_string_s*
  store %struct.gs_param_string_s* %39, %struct.gs_param_string_s** %huff_data, align 8, !tbaa !1
  %40 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %huff_data, align 8, !tbaa !1
  %cmp28 = icmp eq %struct.gs_param_string_s* %40, null
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.27
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %if.end.27
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.49, %if.end.30
  %41 = load i32, i32* %i, align 4, !tbaa !5
  %42 = load i32, i32* %num_in_tables, align 4, !tbaa !5
  %cmp32 = icmp slt i32 %41, %42
  br i1 %cmp32, label %for.body.33, label %for.end.50

for.body.33:                                      ; preds = %for.cond.31
  %43 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %huff_data, align 8, !tbaa !1
  %44 = load i32, i32* %i, align 4, !tbaa !5
  %idx.ext = sext i32 %44 to i64
  %add.ptr = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %43, i64 %idx.ext
  %45 = load i32, i32* %i, align 4, !tbaa !5
  %shr = ashr i32 %45, 1
  %idxprom34 = sext i32 %shr to i64
  %46 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %ac_table_ptrs, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %46, i64 %idxprom34
  %47 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx35, align 8, !tbaa !1
  %48 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call36 = call i32 @pack_huff_table(%struct.gs_param_string_s* %add.ptr, %struct.JHUFF_TBL* %47, %struct.gs_memory_s* %48) #6
  store i32 %call36, i32* %code, align 4, !tbaa !5
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %if.then.47, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %for.body.33
  %49 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %huff_data, align 8, !tbaa !1
  %50 = load i32, i32* %i, align 4, !tbaa !5
  %idx.ext39 = sext i32 %50 to i64
  %add.ptr40 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %49, i64 %idx.ext39
  %add.ptr41 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %add.ptr40, i64 1
  %51 = load i32, i32* %i, align 4, !tbaa !5
  %shr42 = ashr i32 %51, 1
  %idxprom43 = sext i32 %shr42 to i64
  %52 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %dc_table_ptrs, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %52, i64 %idxprom43
  %53 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx44, align 8, !tbaa !1
  %54 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call45 = call i32 @pack_huff_table(%struct.gs_param_string_s* %add.ptr41, %struct.JHUFF_TBL* %53, %struct.gs_memory_s* %54) #6
  store i32 %call45, i32* %code, align 4, !tbaa !5
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %lor.lhs.false.38, %for.body.33
  br label %for.end.50

if.end.48:                                        ; preds = %lor.lhs.false.38
  br label %for.inc.49

for.inc.49:                                       ; preds = %if.end.48
  %55 = load i32, i32* %i, align 4, !tbaa !5
  %add = add nsw i32 %55, 2
  store i32 %add, i32* %i, align 4, !tbaa !5
  br label %for.cond.31

for.end.50:                                       ; preds = %if.then.47, %for.cond.31
  %56 = load i32, i32* %code, align 4, !tbaa !5
  %cmp51 = icmp slt i32 %56, 0
  br i1 %cmp51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %for.end.50
  %57 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %57, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.53:                                        ; preds = %for.end.50
  %58 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %huff_data, align 8, !tbaa !1
  %data54 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %hta, i32 0, i32 0
  store %struct.gs_param_string_s* %58, %struct.gs_param_string_s** %data54, align 8, !tbaa !50
  %59 = load i32, i32* %num_in_tables, align 4, !tbaa !5
  %size = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %hta, i32 0, i32 1
  store i32 %59, i32* %size, align 4, !tbaa !52
  %persistent = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %hta, i32 0, i32 2
  store i32 1, i32* %persistent, align 4, !tbaa !53
  %60 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call55 = call i32 @param_write_string_array(%struct.gs_param_list_s* %60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), %struct.gs_param_string_array_s* %hta) #6
  store i32 %call55, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.53, %if.then.52, %if.then.29
  %61 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast %struct.JHUFF_TBL*** %ac_table_ptrs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = bitcast %struct.JHUFF_TBL*** %dc_table_ptrs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = bitcast %struct.jpeg_component_info** %comp_info to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = bitcast i32* %num_in_tables to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast %struct.gs_param_string_array_s* %hta to i8*
  call void @llvm.lifetime.end(i64 16, i8* %67) #1
  %68 = bitcast %struct.gs_param_string_s** %huff_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %69 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  %70 = load i32, i32* %retval
  ret i32 %70
}

; Function Attrs: nounwind uwtable
define internal i32 @pack_huff_table(%struct.gs_param_string_s* %pstr, %struct.JHUFF_TBL* %table, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %pstr.addr = alloca %struct.gs_param_string_s*, align 8
  %table.addr = alloca %struct.JHUFF_TBL*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %total = alloca i32, align 4
  %i = alloca i32, align 4
  %data = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_string_s* %pstr, %struct.gs_param_string_s** %pstr.addr, align 8, !tbaa !1
  store %struct.JHUFF_TBL* %table, %struct.JHUFF_TBL** %table.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i32* %total to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i32 1, i32* %i, align 4, !tbaa !5
  store i32 0, i32* %total, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp sle i32 %3, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %table.addr, align 8, !tbaa !1
  %bits = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %5, i32 0, i32 0
  %arrayidx = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !40
  %conv = zext i8 %6 to i32
  %7 = load i32, i32* %total, align 4, !tbaa !5
  %add = add nsw i32 %7, %conv
  store i32 %add, i32* %total, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %9, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 16
  %10 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !37
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %12 = load i32, i32* %total, align 4, !tbaa !5
  %add1 = add nsw i32 16, %12
  %call = call i8* %10(%struct.gs_memory_s* %11, i32 %add1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0)) #6
  store i8* %call, i8** %data, align 8, !tbaa !1
  %13 = load i8*, i8** %data, align 8, !tbaa !1
  %cmp2 = icmp eq i8* %13, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.end
  %14 = load i8*, i8** %data, align 8, !tbaa !1
  %15 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %table.addr, align 8, !tbaa !1
  %bits4 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %15, i32 0, i32 0
  %arraydecay = getelementptr inbounds [17 x i8], [17 x i8]* %bits4, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 1
  %call5 = call i8* @memcpy(i8* %14, i8* %add.ptr, i64 16) #7
  %16 = load i8*, i8** %data, align 8, !tbaa !1
  %add.ptr6 = getelementptr inbounds i8, i8* %16, i64 16
  %17 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %table.addr, align 8, !tbaa !1
  %huffval = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %17, i32 0, i32 1
  %arraydecay7 = getelementptr inbounds [256 x i8], [256 x i8]* %huffval, i32 0, i32 0
  %18 = load i32, i32* %total, align 4, !tbaa !5
  %conv8 = sext i32 %18 to i64
  %call9 = call i8* @memcpy(i8* %add.ptr6, i8* %arraydecay7, i64 %conv8) #7
  %19 = load i8*, i8** %data, align 8, !tbaa !1
  %20 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pstr.addr, align 8, !tbaa !1
  %data10 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %20, i32 0, i32 0
  store i8* %19, i8** %data10, align 8, !tbaa !33
  %21 = load i32, i32* %total, align 4, !tbaa !5
  %add11 = add nsw i32 16, %21
  %22 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pstr.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %22, i32 0, i32 1
  store i32 %add11, i32* %size, align 4, !tbaa !35
  %23 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pstr.addr, align 8, !tbaa !1
  %persistent = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %23, i32 0, i32 2
  store i32 1, i32* %persistent, align 4, !tbaa !42
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %24 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast i32* %total to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = load i32, i32* %retval
  ret i32 %27
}

declare i32 @param_write_string_array(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_array_s*) #3

; Function Attrs: nounwind uwtable
define i32 @s_DCT_get_params(%struct.gs_param_list_s* %plist, %struct.stream_DCT_state_s* %ss, %struct.stream_DCT_state_s* %defaults) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %ss.addr = alloca %struct.stream_DCT_state_s*, align 8
  %defaults.addr = alloca %struct.stream_DCT_state_s*, align 8
  %code = alloca i32, align 4
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store %struct.stream_DCT_state_s* %ss, %struct.stream_DCT_state_s** %ss.addr, align 8, !tbaa !1
  store %struct.stream_DCT_state_s* %defaults, %struct.stream_DCT_state_s** %defaults.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %2 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss.addr, align 8, !tbaa !1
  %3 = bitcast %struct.stream_DCT_state_s* %2 to i8*
  %4 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %defaults.addr, align 8, !tbaa !1
  %5 = bitcast %struct.stream_DCT_state_s* %4 to i8*
  %call = call i32 @gs_param_write_items(%struct.gs_param_list_s* %1, i8* %3, i8* %5, %struct.gs_param_item_s* getelementptr inbounds ([3 x %struct.gs_param_item_s], [3 x %struct.gs_param_item_s]* @s_DCT_param_items, i32 0, i32 0)) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %6 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp sge i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %8 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %8, i32 0, i32 10
  %common = bitcast %union._jd* %data to %struct.jpeg_stream_data_s**
  %9 = load %struct.jpeg_stream_data_s*, %struct.jpeg_stream_data_s** %common, align 8, !tbaa !1
  %10 = bitcast %struct.jpeg_stream_data_s* %9 to i8*
  %11 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %defaults.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.stream_DCT_state_s* %11, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %12 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %defaults.addr, align 8, !tbaa !1
  %data1 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %12, i32 0, i32 10
  %common2 = bitcast %union._jd* %data1 to %struct.jpeg_stream_data_s**
  %13 = load %struct.jpeg_stream_data_s*, %struct.jpeg_stream_data_s** %common2, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.jpeg_stream_data_s* [ %13, %cond.true ], [ null, %cond.false ]
  %14 = bitcast %struct.jpeg_stream_data_s* %cond to i8*
  %call3 = call i32 @gs_param_write_items(%struct.gs_param_list_s* %7, i8* %10, i8* %14, %struct.gs_param_item_s* getelementptr inbounds ([3 x %struct.gs_param_item_s], [3 x %struct.gs_param_item_s]* @jsd_param_items, i32 0, i32 0)) #6
  store i32 %call3, i32* %code, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %15 = load i32, i32* %code, align 4, !tbaa !5
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  ret i32 %15
}

declare i32 @gs_param_write_items(%struct.gs_param_list_s*, i8*, i8*, %struct.gs_param_item_s*) #3

; Function Attrs: nounwind uwtable
define i32 @s_DCT_byte_params(%struct.gs_param_list_s* %plist, i8* %key, i32 %start, i32 %count, i8* %pvals) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %key.addr = alloca i8*, align 8
  %start.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %pvals.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %bytes = alloca %struct.gs_param_string_s, align 8
  %floats = alloca %struct.gs_param_float_array_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %v = alloca float, align 4
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store i32 %start, i32* %start.addr, align 4, !tbaa !5
  store i32 %count, i32* %count.addr, align 4, !tbaa !5
  store i8* %pvals, i8** %pvals.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.gs_param_string_s* %bytes to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #1
  %2 = bitcast %struct.gs_param_float_array_s* %floats to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %call = call i32 @param_read_string(%struct.gs_param_list_s* %4, i8* %5, %struct.gs_param_string_s* %bytes) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %6 = load i32, i32* %code, align 4, !tbaa !5
  switch i32 %6, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %bytes, i32 0, i32 1
  %7 = load i32, i32* %size, align 4, !tbaa !35
  %8 = load i32, i32* %start.addr, align 4, !tbaa !5
  %9 = load i32, i32* %count.addr, align 4, !tbaa !5
  %add = add nsw i32 %8, %9
  %cmp = icmp ult i32 %7, %add
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store i32 -15, i32* %code, align 4, !tbaa !5
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, i32* %i, align 4, !tbaa !5
  %11 = load i32, i32* %count.addr, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %10, %11
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %start.addr, align 4, !tbaa !5
  %13 = load i32, i32* %i, align 4, !tbaa !5
  %add2 = add nsw i32 %12, %13
  %idxprom = sext i32 %add2 to i64
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %bytes, i32 0, i32 0
  %14 = load i8*, i8** %data, align 8, !tbaa !33
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 %idxprom
  %15 = load i8, i8* %arrayidx, align 1, !tbaa !40
  %16 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom3 = sext i32 %16 to i64
  %17 = load i8*, i8** %pvals.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8, i8* %17, i64 %idxprom3
  store i8 %15, i8* %arrayidx4, align 1, !tbaa !40
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.36

sw.default:                                       ; preds = %entry
  %19 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %20 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %call5 = call i32 @param_read_float_array(%struct.gs_param_list_s* %19, i8* %20, %struct.gs_param_float_array_s* %floats) #6
  store i32 %call5, i32* %code, align 4, !tbaa !5
  %21 = load i32, i32* %code, align 4, !tbaa !5
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %if.end.30, label %if.then.6

if.then.6:                                        ; preds = %sw.default
  %size7 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %floats, i32 0, i32 1
  %22 = load i32, i32* %size7, align 4, !tbaa !47
  %23 = load i32, i32* %start.addr, align 4, !tbaa !5
  %24 = load i32, i32* %count.addr, align 4, !tbaa !5
  %add8 = add nsw i32 %23, %24
  %cmp9 = icmp ult i32 %22, %add8
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.6
  store i32 -15, i32* %code, align 4, !tbaa !5
  br label %sw.epilog

if.end.11:                                        ; preds = %if.then.6
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.27, %if.end.11
  %25 = load i32, i32* %i, align 4, !tbaa !5
  %26 = load i32, i32* %count.addr, align 4, !tbaa !5
  %cmp13 = icmp slt i32 %25, %26
  br i1 %cmp13, label %for.body.14, label %for.end.29

for.body.14:                                      ; preds = %for.cond.12
  %27 = bitcast float* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = load i32, i32* %start.addr, align 4, !tbaa !5
  %29 = load i32, i32* %i, align 4, !tbaa !5
  %add15 = add nsw i32 %28, %29
  %idxprom16 = sext i32 %add15 to i64
  %data17 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %floats, i32 0, i32 0
  %30 = load float*, float** %data17, align 8, !tbaa !45
  %arrayidx18 = getelementptr inbounds float, float* %30, i64 %idxprom16
  %31 = load float, float* %arrayidx18, align 4, !tbaa !44
  store float %31, float* %v, align 4, !tbaa !44
  %32 = load float, float* %v, align 4, !tbaa !44
  %cmp19 = fcmp olt float %32, 0.000000e+00
  br i1 %cmp19, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.14
  %33 = load float, float* %v, align 4, !tbaa !44
  %cmp20 = fcmp ogt float %33, 2.550000e+02
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %lor.lhs.false, %for.body.14
  store i32 -15, i32* %code, align 4, !tbaa !5
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %lor.lhs.false
  %34 = load float, float* %v, align 4, !tbaa !44
  %conv = fpext float %34 to double
  %add23 = fadd double %conv, 5.000000e-01
  %conv24 = fptoui double %add23 to i8
  %35 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom25 = sext i32 %35 to i64
  %36 = load i8*, i8** %pvals.addr, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i8, i8* %36, i64 %idxprom25
  store i8 %conv24, i8* %arrayidx26, align 1, !tbaa !40
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.22, %if.then.21
  %37 = bitcast float* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 6, label %for.end.29
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.27

for.inc.27:                                       ; preds = %cleanup.cont
  %38 = load i32, i32* %i, align 4, !tbaa !5
  %inc28 = add nsw i32 %38, 1
  store i32 %inc28, i32* %i, align 4, !tbaa !5
  br label %for.cond.12

for.end.29:                                       ; preds = %cleanup, %for.cond.12
  br label %if.end.30

if.end.30:                                        ; preds = %for.end.29, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.30, %if.then.10, %if.then
  %39 = load i32, i32* %code, align 4, !tbaa !5
  %cmp31 = icmp slt i32 %39, 0
  br i1 %cmp31, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %sw.epilog
  %40 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %40, i32 0, i32 0
  %41 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !28
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %41, i32 0, i32 7
  %42 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !54
  %43 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %44 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %45 = load i32, i32* %code, align 4, !tbaa !5
  %call34 = call i32 %42(%struct.gs_param_list_s* %43, i8* %44, i32 %45) #6
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %sw.epilog
  %46 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %46, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.36

cleanup.36:                                       ; preds = %if.end.35, %for.end
  %47 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast %struct.gs_param_float_array_s* %floats to i8*
  call void @llvm.lifetime.end(i64 16, i8* %48) #1
  %49 = bitcast %struct.gs_param_string_s* %bytes to i8*
  call void @llvm.lifetime.end(i64 16, i8* %49) #1
  %50 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = load i32, i32* %retval
  ret i32 %51

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i32 @param_read_string(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_s*) #3

declare i32 @param_read_float_array(%struct.gs_param_list_s*, i8*, %struct.gs_param_float_array_s*) #3

; Function Attrs: nounwind uwtable
define i32 @s_DCT_put_params(%struct.gs_param_list_s* %plist, %struct.stream_DCT_state_s* %pdct) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pdct.addr = alloca %struct.stream_DCT_state_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store %struct.stream_DCT_state_s* %pdct, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %2 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %3 = bitcast %struct.stream_DCT_state_s* %2 to i8*
  %call = call i32 @gs_param_read_items(%struct.gs_param_list_s* %1, i8* %3, %struct.gs_param_item_s* getelementptr inbounds ([3 x %struct.gs_param_item_s], [3 x %struct.gs_param_item_s]* @s_DCT_param_items, i32 0, i32 0)) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %4 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %7 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %7, i32 0, i32 10
  %common = bitcast %union._jd* %data to %struct.jpeg_stream_data_s**
  %8 = load %struct.jpeg_stream_data_s*, %struct.jpeg_stream_data_s** %common, align 8, !tbaa !1
  %9 = bitcast %struct.jpeg_stream_data_s* %8 to i8*
  %call1 = call i32 @gs_param_read_items(%struct.gs_param_list_s* %6, i8* %9, %struct.gs_param_item_s* getelementptr inbounds ([3 x %struct.gs_param_item_s], [3 x %struct.gs_param_item_s]* @jsd_param_items, i32 0, i32 0)) #6
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %10 = load i32, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %10, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %11 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %12 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %data5 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %12, i32 0, i32 10
  %common6 = bitcast %union._jd* %data5 to %struct.jpeg_stream_data_s**
  %13 = load %struct.jpeg_stream_data_s*, %struct.jpeg_stream_data_s** %common6, align 8, !tbaa !1
  %Picky = getelementptr inbounds %struct.jpeg_stream_data_s, %struct.jpeg_stream_data_s* %13, i32 0, i32 6
  %14 = load i32, i32* %Picky, align 4, !tbaa !55
  %cmp7 = icmp slt i32 %14, 0
  br i1 %cmp7, label %if.then.34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.4
  %15 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %data8 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %15, i32 0, i32 10
  %common9 = bitcast %union._jd* %data8 to %struct.jpeg_stream_data_s**
  %16 = load %struct.jpeg_stream_data_s*, %struct.jpeg_stream_data_s** %common9, align 8, !tbaa !1
  %Picky10 = getelementptr inbounds %struct.jpeg_stream_data_s, %struct.jpeg_stream_data_s* %16, i32 0, i32 6
  %17 = load i32, i32* %Picky10, align 4, !tbaa !55
  %cmp11 = icmp sgt i32 %17, 1
  br i1 %cmp11, label %if.then.34, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false
  %18 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %data13 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %18, i32 0, i32 10
  %common14 = bitcast %union._jd* %data13 to %struct.jpeg_stream_data_s**
  %19 = load %struct.jpeg_stream_data_s*, %struct.jpeg_stream_data_s** %common14, align 8, !tbaa !1
  %Relax = getelementptr inbounds %struct.jpeg_stream_data_s, %struct.jpeg_stream_data_s* %19, i32 0, i32 7
  %20 = load i32, i32* %Relax, align 4, !tbaa !57
  %cmp15 = icmp slt i32 %20, 0
  br i1 %cmp15, label %if.then.34, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false.12
  %21 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %data17 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %21, i32 0, i32 10
  %common18 = bitcast %union._jd* %data17 to %struct.jpeg_stream_data_s**
  %22 = load %struct.jpeg_stream_data_s*, %struct.jpeg_stream_data_s** %common18, align 8, !tbaa !1
  %Relax19 = getelementptr inbounds %struct.jpeg_stream_data_s, %struct.jpeg_stream_data_s* %22, i32 0, i32 7
  %23 = load i32, i32* %Relax19, align 4, !tbaa !57
  %cmp20 = icmp sgt i32 %23, 1
  br i1 %cmp20, label %if.then.34, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %lor.lhs.false.16
  %24 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %ColorTransform = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %24, i32 0, i32 7
  %25 = load i32, i32* %ColorTransform, align 4, !tbaa !58
  %cmp22 = icmp slt i32 %25, -1
  br i1 %cmp22, label %if.then.34, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %lor.lhs.false.21
  %26 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %ColorTransform24 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %26, i32 0, i32 7
  %27 = load i32, i32* %ColorTransform24, align 4, !tbaa !58
  %cmp25 = icmp sgt i32 %27, 2
  br i1 %cmp25, label %if.then.34, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %lor.lhs.false.23
  %28 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %QFactor = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %28, i32 0, i32 6
  %29 = load float, float* %QFactor, align 4, !tbaa !12
  %conv = fpext float %29 to double
  %cmp27 = fcmp olt double %conv, 0.000000e+00
  br i1 %cmp27, label %if.then.34, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %lor.lhs.false.26
  %30 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %QFactor30 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %30, i32 0, i32 6
  %31 = load float, float* %QFactor30, align 4, !tbaa !12
  %conv31 = fpext float %31 to double
  %cmp32 = fcmp ogt double %conv31, 1.000000e+06
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %lor.lhs.false.29, %lor.lhs.false.26, %lor.lhs.false.23, %lor.lhs.false.21, %lor.lhs.false.16, %lor.lhs.false.12, %lor.lhs.false, %if.end.4
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.35:                                        ; preds = %lor.lhs.false.29
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.35, %if.then.34, %if.then.3, %if.then
  %32 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = load i32, i32* %retval
  ret i32 %33
}

declare i32 @gs_param_read_items(%struct.gs_param_list_s*, i8*, %struct.gs_param_item_s*) #3

; Function Attrs: nounwind uwtable
define i32 @s_DCT_put_quantization_tables(%struct.gs_param_list_s* %plist, %struct.stream_DCT_state_s* %pdct, i32 %is_encode) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pdct.addr = alloca %struct.stream_DCT_state_s*, align 8
  %is_encode.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %quant_tables = alloca %struct.gs_param_collection_s, align 8
  %num_in_tables = alloca i32, align 4
  %num_out_tables = alloca i32, align 4
  %comp_info = alloca %struct.jpeg_component_info*, align 8
  %table_ptrs = alloca %struct.JQUANT_TBL**, align 8
  %this_table = alloca %struct.JQUANT_TBL*, align 8
  %cleanup.dest.slot = alloca i32
  %istr = alloca [5 x i8], align 1
  %values = alloca [64 x i16], align 16
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store %struct.stream_DCT_state_s* %pdct, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  store i32 %is_encode, i32* %is_encode.addr, align 4, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast %struct.gs_param_collection_s* %quant_tables to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = bitcast i32* %num_in_tables to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %num_out_tables to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast %struct.jpeg_component_info** %comp_info to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast %struct.JQUANT_TBL*** %table_ptrs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast %struct.JQUANT_TBL** %this_table to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %9, i32 0, i32 0
  %10 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !28
  %begin_xmit_collection = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %10, i32 0, i32 1
  %11 = load i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)** %begin_xmit_collection, align 8, !tbaa !30
  %12 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 %11(%struct.gs_param_list_s* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), %struct.gs_param_collection_s* %quant_tables, i32 1) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  switch i32 %call, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.73

sw.default:                                       ; preds = %entry
  %13 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %13, i32 0, i32 0
  %14 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs1, align 8, !tbaa !28
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %14, i32 0, i32 7
  %15 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !54
  %16 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %17 = load i32, i32* %code, align 4, !tbaa !5
  %call2 = call i32 %15(%struct.gs_param_list_s* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 %17) #6
  store i32 %call2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.73

sw.bb.3:                                          ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.3
  %18 = load i32, i32* %is_encode.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.epilog
  %19 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %19, i32 0, i32 10
  %compress = bitcast %union._jd* %data to %struct.jpeg_compress_data_s**
  %20 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %compress, align 8, !tbaa !1
  %cinfo = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %20, i32 0, i32 8
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo, i32 0, i32 17
  %21 = load i32, i32* %num_components, align 4, !tbaa !15
  store i32 %21, i32* %num_in_tables, align 4, !tbaa !5
  %size = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %quant_tables, i32 0, i32 1
  %22 = load i32, i32* %size, align 4, !tbaa !24
  %23 = load i32, i32* %num_in_tables, align 4, !tbaa !5
  %cmp = icmp ult i32 %22, %23
  br i1 %cmp, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.73

if.end:                                           ; preds = %if.then
  %24 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %data5 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %24, i32 0, i32 10
  %compress6 = bitcast %union._jd* %data5 to %struct.jpeg_compress_data_s**
  %25 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %compress6, align 8, !tbaa !1
  %cinfo7 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %25, i32 0, i32 8
  %comp_info8 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo7, i32 0, i32 19
  %26 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info8, align 8, !tbaa !23
  store %struct.jpeg_component_info* %26, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !1
  %27 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %data9 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %27, i32 0, i32 10
  %compress10 = bitcast %union._jd* %data9 to %struct.jpeg_compress_data_s**
  %28 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %compress10, align 8, !tbaa !1
  %cinfo11 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %28, i32 0, i32 8
  %quant_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo11, i32 0, i32 20
  %arraydecay = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %quant_tbl_ptrs, i32 0, i32 0
  store %struct.JQUANT_TBL** %arraydecay, %struct.JQUANT_TBL*** %table_ptrs, align 8, !tbaa !1
  br label %if.end.16

if.else:                                          ; preds = %sw.epilog
  %size12 = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %quant_tables, i32 0, i32 1
  %29 = load i32, i32* %size12, align 4, !tbaa !24
  store i32 %29, i32* %num_in_tables, align 4, !tbaa !5
  store %struct.jpeg_component_info* null, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !1
  %30 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %data13 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %30, i32 0, i32 10
  %decompress = bitcast %union._jd* %data13 to %struct.jpeg_decompress_data_s**
  %31 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %decompress, align 8, !tbaa !1
  %dinfo = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %31, i32 0, i32 8
  %quant_tbl_ptrs14 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %dinfo, i32 0, i32 40
  %arraydecay15 = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %quant_tbl_ptrs14, i32 0, i32 0
  store %struct.JQUANT_TBL** %arraydecay15, %struct.JQUANT_TBL*** %table_ptrs, align 8, !tbaa !1
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.end
  store i32 0, i32* %num_out_tables, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.70, %if.end.16
  %32 = load i32, i32* %i, align 4, !tbaa !5
  %33 = load i32, i32* %num_in_tables, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %32, %33
  br i1 %cmp17, label %for.body, label %for.end.72

for.body:                                         ; preds = %for.cond
  %34 = bitcast [5 x i8]* %istr to i8*
  call void @llvm.lifetime.start(i64 5, i8* %34) #1
  %35 = bitcast [64 x i16]* %values to i8*
  call void @llvm.lifetime.start(i64 128, i8* %35) #1
  %arraydecay18 = getelementptr inbounds [5 x i8], [5 x i8]* %istr, i32 0, i32 0
  %36 = load i32, i32* %i, align 4, !tbaa !5
  %call19 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %36) #6
  %list = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %quant_tables, i32 0, i32 0
  %37 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %list, align 8, !tbaa !32
  %arraydecay20 = getelementptr inbounds [5 x i8], [5 x i8]* %istr, i32 0, i32 0
  %arraydecay21 = getelementptr inbounds [64 x i16], [64 x i16]* %values, i32 0, i32 0
  %38 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %QFactor = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %38, i32 0, i32 6
  %39 = load float, float* %QFactor, align 4, !tbaa !12
  %conv = fpext float %39 to double
  %call22 = call i32 @quant_params(%struct.gs_param_list_s* %37, i8* %arraydecay20, i32 64, i16* %arraydecay21, double %conv) #6
  store i32 %call22, i32* %code, align 4, !tbaa !5
  %40 = load i32, i32* %code, align 4, !tbaa !5
  %cmp23 = icmp slt i32 %40, 0
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %for.body
  %41 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %41, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %for.body
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc, %if.end.26
  %42 = load i32, i32* %j, align 4, !tbaa !5
  %43 = load i32, i32* %num_out_tables, align 4, !tbaa !5
  %cmp28 = icmp slt i32 %42, %43
  br i1 %cmp28, label %for.body.30, label %for.end

for.body.30:                                      ; preds = %for.cond.27
  %44 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom = sext i32 %44 to i64
  %45 = load %struct.JQUANT_TBL**, %struct.JQUANT_TBL*** %table_ptrs, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %45, i64 %idxprom
  %46 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %arrayidx, align 8, !tbaa !1
  %quantval = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %46, i32 0, i32 0
  %arraydecay31 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval, i32 0, i32 0
  %47 = bitcast i16* %arraydecay31 to i8*
  %arraydecay32 = getelementptr inbounds [64 x i16], [64 x i16]* %values, i32 0, i32 0
  %48 = bitcast i16* %arraydecay32 to i8*
  %call33 = call i32 @memcmp(i8* %47, i8* %48, i64 128) #5
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.end.36, label %if.then.35

if.then.35:                                       ; preds = %for.body.30
  br label %for.end

if.end.36:                                        ; preds = %for.body.30
  br label %for.inc

for.inc:                                          ; preds = %if.end.36
  %49 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond.27

for.end:                                          ; preds = %if.then.35, %for.cond.27
  %50 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !1
  %cmp37 = icmp ne %struct.jpeg_component_info* %50, null
  br i1 %cmp37, label %if.then.39, label %if.end.42

if.then.39:                                       ; preds = %for.end
  %51 = load i32, i32* %j, align 4, !tbaa !5
  %52 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom40 = sext i32 %52 to i64
  %53 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %53, i64 %idxprom40
  %quant_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx41, i32 0, i32 4
  store i32 %51, i32* %quant_tbl_no, align 4, !tbaa !26
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.39, %for.end
  %54 = load i32, i32* %j, align 4, !tbaa !5
  %55 = load i32, i32* %num_out_tables, align 4, !tbaa !5
  %cmp43 = icmp slt i32 %54, %55
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.42
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.end.46:                                        ; preds = %if.end.42
  %56 = load i32, i32* %num_out_tables, align 4, !tbaa !5
  %inc47 = add nsw i32 %56, 1
  store i32 %inc47, i32* %num_out_tables, align 4, !tbaa !5
  %cmp48 = icmp sgt i32 %inc47, 4
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.46
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.51:                                        ; preds = %if.end.46
  %57 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom52 = sext i32 %57 to i64
  %58 = load %struct.JQUANT_TBL**, %struct.JQUANT_TBL*** %table_ptrs, align 8, !tbaa !1
  %arrayidx53 = getelementptr inbounds %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %58, i64 %idxprom52
  %59 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %arrayidx53, align 8, !tbaa !1
  store %struct.JQUANT_TBL* %59, %struct.JQUANT_TBL** %this_table, align 8, !tbaa !1
  %60 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %this_table, align 8, !tbaa !1
  %cmp54 = icmp eq %struct.JQUANT_TBL* %60, null
  br i1 %cmp54, label %if.then.56, label %if.end.64

if.then.56:                                       ; preds = %if.end.51
  %61 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %call57 = call %struct.JQUANT_TBL* @gs_jpeg_alloc_quant_table(%struct.stream_DCT_state_s* %61) #6
  store %struct.JQUANT_TBL* %call57, %struct.JQUANT_TBL** %this_table, align 8, !tbaa !1
  %62 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %this_table, align 8, !tbaa !1
  %cmp58 = icmp eq %struct.JQUANT_TBL* %62, null
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.then.56
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.61:                                        ; preds = %if.then.56
  %63 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %this_table, align 8, !tbaa !1
  %64 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom62 = sext i32 %64 to i64
  %65 = load %struct.JQUANT_TBL**, %struct.JQUANT_TBL*** %table_ptrs, align 8, !tbaa !1
  %arrayidx63 = getelementptr inbounds %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %65, i64 %idxprom62
  store %struct.JQUANT_TBL* %63, %struct.JQUANT_TBL** %arrayidx63, align 8, !tbaa !1
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.61, %if.end.51
  %66 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %this_table, align 8, !tbaa !1
  %quantval65 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %66, i32 0, i32 0
  %arraydecay66 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval65, i32 0, i32 0
  %67 = bitcast i16* %arraydecay66 to i8*
  %arraydecay67 = getelementptr inbounds [64 x i16], [64 x i16]* %values, i32 0, i32 0
  %68 = bitcast i16* %arraydecay67 to i8*
  %call68 = call i8* @memcpy(i8* %67, i8* %68, i64 128) #7
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.64, %if.then.60, %if.then.50, %if.then.45, %if.then.25
  %69 = bitcast [64 x i16]* %values to i8*
  call void @llvm.lifetime.end(i64 128, i8* %69) #1
  %70 = bitcast [5 x i8]* %istr to i8*
  call void @llvm.lifetime.end(i64 5, i8* %70) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.73 [
    i32 0, label %cleanup.cont
    i32 5, label %for.inc.70
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.70

for.inc.70:                                       ; preds = %cleanup.cont, %cleanup
  %71 = load i32, i32* %i, align 4, !tbaa !5
  %inc71 = add nsw i32 %71, 1
  store i32 %inc71, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end.72:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.73

cleanup.73:                                       ; preds = %for.end.72, %cleanup, %if.then.4, %sw.default, %sw.bb
  %72 = bitcast %struct.JQUANT_TBL** %this_table to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = bitcast %struct.JQUANT_TBL*** %table_ptrs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  %74 = bitcast %struct.jpeg_component_info** %comp_info to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  %75 = bitcast i32* %num_out_tables to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %76 = bitcast i32* %num_in_tables to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %77 = bitcast %struct.gs_param_collection_s* %quant_tables to i8*
  call void @llvm.lifetime.end(i64 16, i8* %77) #1
  %78 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %79 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #1
  %80 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #1
  %81 = load i32, i32* %retval
  ret i32 %81
}

; Function Attrs: nounwind uwtable
define internal i32 @quant_params(%struct.gs_param_list_s* %plist, i8* %key, i32 %count, i16* %pvals, double %QFactor) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %key.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  %pvals.addr = alloca i16*, align 8
  %QFactor.addr = alloca double, align 8
  %i = alloca i32, align 4
  %bytes = alloca %struct.gs_param_string_s, align 8
  %floats = alloca %struct.gs_param_float_array_s, align 8
  %code = alloca i32, align 4
  %v = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  %v27 = alloca double, align 8
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !5
  store i16* %pvals, i16** %pvals.addr, align 8, !tbaa !1
  store double %QFactor, double* %QFactor.addr, align 8, !tbaa !13
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.gs_param_string_s* %bytes to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #1
  %2 = bitcast %struct.gs_param_float_array_s* %floats to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %call = call i32 @param_read_string(%struct.gs_param_list_s* %4, i8* %5, %struct.gs_param_string_s* %bytes) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %6 = load i32, i32* %code, align 4, !tbaa !5
  switch i32 %6, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %bytes, i32 0, i32 1
  %7 = load i32, i32* %size, align 4, !tbaa !35
  %8 = load i32, i32* %count.addr, align 4, !tbaa !5
  %cmp = icmp ne i32 %7, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store i32 -15, i32* %code, align 4, !tbaa !5
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, i32* %i, align 4, !tbaa !5
  %10 = load i32, i32* %count.addr, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %9, %10
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = bitcast double* %v to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %12 to i64
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %bytes, i32 0, i32 0
  %13 = load i8*, i8** %data, align 8, !tbaa !33
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %idxprom
  %14 = load i8, i8* %arrayidx, align 1, !tbaa !40
  %conv = zext i8 %14 to i32
  %conv2 = sitofp i32 %conv to double
  %15 = load double, double* %QFactor.addr, align 8, !tbaa !13
  %mul = fmul double %conv2, %15
  store double %mul, double* %v, align 8, !tbaa !13
  %16 = load double, double* %v, align 8, !tbaa !13
  %cmp3 = fcmp olt double %16, 1.000000e+00
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end.9

cond.false:                                       ; preds = %for.body
  %17 = load double, double* %v, align 8, !tbaa !13
  %cmp5 = fcmp ogt double %17, 2.550000e+02
  br i1 %cmp5, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %cond.false
  br label %cond.end

cond.false.8:                                     ; preds = %cond.false
  %18 = load double, double* %v, align 8, !tbaa !13
  %add = fadd double %18, 5.000000e-01
  br label %cond.end

cond.end:                                         ; preds = %cond.false.8, %cond.true.7
  %cond = phi double [ 2.550000e+02, %cond.true.7 ], [ %add, %cond.false.8 ]
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.end, %cond.true
  %cond10 = phi double [ 1.000000e+00, %cond.true ], [ %cond, %cond.end ]
  %conv11 = fptoui double %cond10 to i16
  %19 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom12 = sext i32 %19 to i64
  %arrayidx13 = getelementptr inbounds [64 x i8], [64 x i8]* @natural_order, i32 0, i64 %idxprom12
  %20 = load i8, i8* %arrayidx13, align 1, !tbaa !40
  %idxprom14 = zext i8 %20 to i64
  %21 = load i16*, i16** %pvals.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i16, i16* %21, i64 %idxprom14
  store i16 %conv11, i16* %arrayidx15, align 2, !tbaa !41
  %22 = bitcast double* %v to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  br label %for.inc

for.inc:                                          ; preds = %cond.end.9
  %23 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %entry
  %24 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %25 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %call16 = call i32 @param_read_float_array(%struct.gs_param_list_s* %24, i8* %25, %struct.gs_param_float_array_s* %floats) #6
  store i32 %call16, i32* %code, align 4, !tbaa !5
  %26 = load i32, i32* %code, align 4, !tbaa !5
  %tobool = icmp ne i32 %26, 0
  br i1 %tobool, label %if.end.54, label %if.then.17

if.then.17:                                       ; preds = %sw.default
  %size18 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %floats, i32 0, i32 1
  %27 = load i32, i32* %size18, align 4, !tbaa !47
  %28 = load i32, i32* %count.addr, align 4, !tbaa !5
  %cmp19 = icmp ne i32 %27, %28
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.then.17
  store i32 -15, i32* %code, align 4, !tbaa !5
  br label %sw.epilog

if.end.22:                                        ; preds = %if.then.17
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.51, %if.end.22
  %29 = load i32, i32* %i, align 4, !tbaa !5
  %30 = load i32, i32* %count.addr, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %29, %30
  br i1 %cmp24, label %for.body.26, label %for.end.53

for.body.26:                                      ; preds = %for.cond.23
  %31 = bitcast double* %v27 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  %32 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom28 = sext i32 %32 to i64
  %data29 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %floats, i32 0, i32 0
  %33 = load float*, float** %data29, align 8, !tbaa !45
  %arrayidx30 = getelementptr inbounds float, float* %33, i64 %idxprom28
  %34 = load float, float* %arrayidx30, align 4, !tbaa !44
  %conv31 = fpext float %34 to double
  %35 = load double, double* %QFactor.addr, align 8, !tbaa !13
  %mul32 = fmul double %conv31, %35
  store double %mul32, double* %v27, align 8, !tbaa !13
  %36 = load double, double* %v27, align 8, !tbaa !13
  %cmp33 = fcmp olt double %36, 1.000000e+00
  br i1 %cmp33, label %cond.true.35, label %cond.false.36

cond.true.35:                                     ; preds = %for.body.26
  br label %cond.end.44

cond.false.36:                                    ; preds = %for.body.26
  %37 = load double, double* %v27, align 8, !tbaa !13
  %cmp37 = fcmp ogt double %37, 2.550000e+02
  br i1 %cmp37, label %cond.true.39, label %cond.false.40

cond.true.39:                                     ; preds = %cond.false.36
  br label %cond.end.42

cond.false.40:                                    ; preds = %cond.false.36
  %38 = load double, double* %v27, align 8, !tbaa !13
  %add41 = fadd double %38, 5.000000e-01
  br label %cond.end.42

cond.end.42:                                      ; preds = %cond.false.40, %cond.true.39
  %cond43 = phi double [ 2.550000e+02, %cond.true.39 ], [ %add41, %cond.false.40 ]
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.end.42, %cond.true.35
  %cond45 = phi double [ 1.000000e+00, %cond.true.35 ], [ %cond43, %cond.end.42 ]
  %conv46 = fptoui double %cond45 to i16
  %39 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom47 = sext i32 %39 to i64
  %arrayidx48 = getelementptr inbounds [64 x i8], [64 x i8]* @natural_order, i32 0, i64 %idxprom47
  %40 = load i8, i8* %arrayidx48, align 1, !tbaa !40
  %idxprom49 = zext i8 %40 to i64
  %41 = load i16*, i16** %pvals.addr, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds i16, i16* %41, i64 %idxprom49
  store i16 %conv46, i16* %arrayidx50, align 2, !tbaa !41
  %42 = bitcast double* %v27 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  br label %for.inc.51

for.inc.51:                                       ; preds = %cond.end.44
  %43 = load i32, i32* %i, align 4, !tbaa !5
  %inc52 = add nsw i32 %43, 1
  store i32 %inc52, i32* %i, align 4, !tbaa !5
  br label %for.cond.23

for.end.53:                                       ; preds = %for.cond.23
  br label %if.end.54

if.end.54:                                        ; preds = %for.end.53, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.54, %if.then.21, %if.then
  %44 = load i32, i32* %code, align 4, !tbaa !5
  %cmp55 = icmp slt i32 %44, 0
  br i1 %cmp55, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %sw.epilog
  %45 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %45, i32 0, i32 0
  %46 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !28
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %46, i32 0, i32 7
  %47 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !54
  %48 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %49 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %50 = load i32, i32* %code, align 4, !tbaa !5
  %call58 = call i32 %47(%struct.gs_param_list_s* %48, i8* %49, i32 %50) #6
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.57, %sw.epilog
  %51 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %51, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.59, %for.end
  %52 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast %struct.gs_param_float_array_s* %floats to i8*
  call void @llvm.lifetime.end(i64 16, i8* %53) #1
  %54 = bitcast %struct.gs_param_string_s* %bytes to i8*
  call void @llvm.lifetime.end(i64 16, i8* %54) #1
  %55 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  %56 = load i32, i32* %retval
  ret i32 %56
}

declare %struct.JQUANT_TBL* @gs_jpeg_alloc_quant_table(%struct.stream_DCT_state_s*) #3

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define i32 @s_DCT_put_huffman_tables(%struct.gs_param_list_s* %plist, %struct.stream_DCT_state_s* %pdct, i32 %is_encode) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pdct.addr = alloca %struct.stream_DCT_state_s*, align 8
  %is_encode.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %huff_tables = alloca %struct.gs_param_collection_s, align 8
  %num_in_tables = alloca i32, align 4
  %ndc = alloca i32, align 4
  %nac = alloca i32, align 4
  %codes_size = alloca i32, align 4
  %comp_info = alloca %struct.jpeg_component_info*, align 8
  %dc_table_ptrs = alloca %struct.JHUFF_TBL**, align 8
  %ac_table_ptrs = alloca %struct.JHUFF_TBL**, align 8
  %this_table_ptr = alloca %struct.JHUFF_TBL**, align 8
  %this_table = alloca %struct.JHUFF_TBL*, align 8
  %max_tables = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %istr = alloca [5 x i8], align 1
  %counts = alloca [16 x i8], align 16
  %values = alloca [256 x i8], align 16
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store %struct.stream_DCT_state_s* %pdct, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  store i32 %is_encode, i32* %is_encode.addr, align 4, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast %struct.gs_param_collection_s* %huff_tables to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = bitcast i32* %num_in_tables to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %ndc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %nac to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %codes_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast %struct.jpeg_component_info** %comp_info to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast %struct.JHUFF_TBL*** %dc_table_ptrs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast %struct.JHUFF_TBL*** %ac_table_ptrs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast %struct.JHUFF_TBL*** %this_table_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast %struct.JHUFF_TBL** %this_table to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i32* %max_tables to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 2, i32* %max_tables, align 4, !tbaa !5
  %14 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %14, i32 0, i32 0
  %15 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !28
  %begin_xmit_collection = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %15, i32 0, i32 1
  %16 = load i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)** %begin_xmit_collection, align 8, !tbaa !30
  %17 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 %16(%struct.gs_param_list_s* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), %struct.gs_param_collection_s* %huff_tables, i32 1) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  switch i32 %call, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.140

sw.default:                                       ; preds = %entry
  %18 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %18, i32 0, i32 0
  %19 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs1, align 8, !tbaa !28
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %19, i32 0, i32 7
  %20 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !54
  %21 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %22 = load i32, i32* %code, align 4, !tbaa !5
  %call2 = call i32 %20(%struct.gs_param_list_s* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 %22) #6
  store i32 %call2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.140

sw.bb.3:                                          ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.3
  %23 = load i32, i32* %is_encode.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.epilog
  %24 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %24, i32 0, i32 10
  %compress = bitcast %union._jd* %data to %struct.jpeg_compress_data_s**
  %25 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %compress, align 8, !tbaa !1
  %cinfo = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %25, i32 0, i32 8
  %input_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo, i32 0, i32 9
  %26 = load i32, i32* %input_components, align 4, !tbaa !49
  %mul = mul nsw i32 %26, 2
  store i32 %mul, i32* %num_in_tables, align 4, !tbaa !5
  %size = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %huff_tables, i32 0, i32 1
  %27 = load i32, i32* %size, align 4, !tbaa !24
  %28 = load i32, i32* %num_in_tables, align 4, !tbaa !5
  %cmp = icmp ult i32 %27, %28
  br i1 %cmp, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.140

if.end:                                           ; preds = %if.then
  %29 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %data5 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %29, i32 0, i32 10
  %compress6 = bitcast %union._jd* %data5 to %struct.jpeg_compress_data_s**
  %30 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %compress6, align 8, !tbaa !1
  %cinfo7 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %30, i32 0, i32 8
  %comp_info8 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo7, i32 0, i32 19
  %31 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info8, align 8, !tbaa !23
  store %struct.jpeg_component_info* %31, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !1
  %32 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %data9 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %32, i32 0, i32 10
  %compress10 = bitcast %union._jd* %data9 to %struct.jpeg_compress_data_s**
  %33 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %compress10, align 8, !tbaa !1
  %cinfo11 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %33, i32 0, i32 8
  %dc_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo11, i32 0, i32 22
  %arraydecay = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %dc_huff_tbl_ptrs, i32 0, i32 0
  store %struct.JHUFF_TBL** %arraydecay, %struct.JHUFF_TBL*** %dc_table_ptrs, align 8, !tbaa !1
  %34 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %data12 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %34, i32 0, i32 10
  %compress13 = bitcast %union._jd* %data12 to %struct.jpeg_compress_data_s**
  %35 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %compress13, align 8, !tbaa !1
  %cinfo14 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %35, i32 0, i32 8
  %ac_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo14, i32 0, i32 23
  %arraydecay15 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %ac_huff_tbl_ptrs, i32 0, i32 0
  store %struct.JHUFF_TBL** %arraydecay15, %struct.JHUFF_TBL*** %ac_table_ptrs, align 8, !tbaa !1
  %36 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %data16 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %36, i32 0, i32 10
  %common = bitcast %union._jd* %data16 to %struct.jpeg_stream_data_s**
  %37 = load %struct.jpeg_stream_data_s*, %struct.jpeg_stream_data_s** %common, align 8, !tbaa !1
  %Relax = getelementptr inbounds %struct.jpeg_stream_data_s, %struct.jpeg_stream_data_s* %37, i32 0, i32 7
  %38 = load i32, i32* %Relax, align 4, !tbaa !57
  %tobool17 = icmp ne i32 %38, 0
  br i1 %tobool17, label %if.then.18, label %if.end.28

if.then.18:                                       ; preds = %if.end
  %39 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %data19 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %39, i32 0, i32 10
  %compress20 = bitcast %union._jd* %data19 to %struct.jpeg_compress_data_s**
  %40 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %compress20, align 8, !tbaa !1
  %cinfo21 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %40, i32 0, i32 8
  %input_components22 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo21, i32 0, i32 9
  %41 = load i32, i32* %input_components22, align 4, !tbaa !49
  %cmp23 = icmp sgt i32 %41, 2
  br i1 %cmp23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.18
  %42 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %data24 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %42, i32 0, i32 10
  %compress25 = bitcast %union._jd* %data24 to %struct.jpeg_compress_data_s**
  %43 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %compress25, align 8, !tbaa !1
  %cinfo26 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %43, i32 0, i32 8
  %input_components27 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo26, i32 0, i32 9
  %44 = load i32, i32* %input_components27, align 4, !tbaa !49
  br label %cond.end

cond.false:                                       ; preds = %if.then.18
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %44, %cond.true ], [ 2, %cond.false ]
  store i32 %cond, i32* %max_tables, align 4, !tbaa !5
  br label %if.end.28

if.end.28:                                        ; preds = %cond.end, %if.end
  br label %if.end.44

if.else:                                          ; preds = %sw.epilog
  %size29 = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %huff_tables, i32 0, i32 1
  %45 = load i32, i32* %size29, align 4, !tbaa !24
  store i32 %45, i32* %num_in_tables, align 4, !tbaa !5
  store %struct.jpeg_component_info* null, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !1
  %46 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %data30 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %46, i32 0, i32 10
  %decompress = bitcast %union._jd* %data30 to %struct.jpeg_decompress_data_s**
  %47 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %decompress, align 8, !tbaa !1
  %dinfo = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %47, i32 0, i32 8
  %dc_huff_tbl_ptrs31 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %dinfo, i32 0, i32 41
  %arraydecay32 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %dc_huff_tbl_ptrs31, i32 0, i32 0
  store %struct.JHUFF_TBL** %arraydecay32, %struct.JHUFF_TBL*** %dc_table_ptrs, align 8, !tbaa !1
  %48 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %data33 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %48, i32 0, i32 10
  %decompress34 = bitcast %union._jd* %data33 to %struct.jpeg_decompress_data_s**
  %49 = load %struct.jpeg_decompress_data_s*, %struct.jpeg_decompress_data_s** %decompress34, align 8, !tbaa !1
  %dinfo35 = getelementptr inbounds %struct.jpeg_decompress_data_s, %struct.jpeg_decompress_data_s* %49, i32 0, i32 8
  %ac_huff_tbl_ptrs36 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %dinfo35, i32 0, i32 42
  %arraydecay37 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %ac_huff_tbl_ptrs36, i32 0, i32 0
  store %struct.JHUFF_TBL** %arraydecay37, %struct.JHUFF_TBL*** %ac_table_ptrs, align 8, !tbaa !1
  %50 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %data38 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %50, i32 0, i32 10
  %common39 = bitcast %union._jd* %data38 to %struct.jpeg_stream_data_s**
  %51 = load %struct.jpeg_stream_data_s*, %struct.jpeg_stream_data_s** %common39, align 8, !tbaa !1
  %Relax40 = getelementptr inbounds %struct.jpeg_stream_data_s, %struct.jpeg_stream_data_s* %51, i32 0, i32 7
  %52 = load i32, i32* %Relax40, align 4, !tbaa !57
  %tobool41 = icmp ne i32 %52, 0
  br i1 %tobool41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.else
  store i32 4, i32* %max_tables, align 4, !tbaa !5
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %if.else
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.end.28
  store i32 0, i32* %nac, align 4, !tbaa !5
  store i32 0, i32* %ndc, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.131, %if.end.44
  %53 = load i32, i32* %i, align 4, !tbaa !5
  %54 = load i32, i32* %num_in_tables, align 4, !tbaa !5
  %cmp45 = icmp slt i32 %53, %54
  br i1 %cmp45, label %for.body, label %for.end.133

for.body:                                         ; preds = %for.cond
  %55 = bitcast [5 x i8]* %istr to i8*
  call void @llvm.lifetime.start(i64 5, i8* %55) #1
  %56 = bitcast [16 x i8]* %counts to i8*
  call void @llvm.lifetime.start(i64 16, i8* %56) #1
  %57 = bitcast [256 x i8]* %values to i8*
  call void @llvm.lifetime.start(i64 256, i8* %57) #1
  %arraydecay46 = getelementptr inbounds [5 x i8], [5 x i8]* %istr, i32 0, i32 0
  %58 = load i32, i32* %i, align 4, !tbaa !5
  %call47 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %58) #6
  %list = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %huff_tables, i32 0, i32 0
  %59 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %list, align 8, !tbaa !32
  %arraydecay48 = getelementptr inbounds [5 x i8], [5 x i8]* %istr, i32 0, i32 0
  %arraydecay49 = getelementptr inbounds [16 x i8], [16 x i8]* %counts, i32 0, i32 0
  %call50 = call i32 @s_DCT_byte_params(%struct.gs_param_list_s* %59, i8* %arraydecay48, i32 0, i32 16, i8* %arraydecay49) #6
  store i32 %call50, i32* %code, align 4, !tbaa !5
  %60 = load i32, i32* %code, align 4, !tbaa !5
  %cmp51 = icmp slt i32 %60, 0
  br i1 %cmp51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %for.body
  %61 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %61, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.53:                                        ; preds = %for.body
  store i32 0, i32* %codes_size, align 4, !tbaa !5
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc, %if.end.53
  %62 = load i32, i32* %j, align 4, !tbaa !5
  %cmp55 = icmp slt i32 %62, 16
  br i1 %cmp55, label %for.body.56, label %for.end

for.body.56:                                      ; preds = %for.cond.54
  %63 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom = sext i32 %63 to i64
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %counts, i32 0, i64 %idxprom
  %64 = load i8, i8* %arrayidx, align 1, !tbaa !40
  %conv = zext i8 %64 to i32
  %65 = load i32, i32* %codes_size, align 4, !tbaa !5
  %add = add nsw i32 %65, %conv
  store i32 %add, i32* %codes_size, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body.56
  %66 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add nsw i32 %66, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond.54

for.end:                                          ; preds = %for.cond.54
  %67 = load i32, i32* %codes_size, align 4, !tbaa !5
  %cmp57 = icmp sgt i32 %67, 256
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %for.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.60:                                        ; preds = %for.end
  %list61 = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %huff_tables, i32 0, i32 0
  %68 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %list61, align 8, !tbaa !32
  %arraydecay62 = getelementptr inbounds [5 x i8], [5 x i8]* %istr, i32 0, i32 0
  %69 = load i32, i32* %codes_size, align 4, !tbaa !5
  %arraydecay63 = getelementptr inbounds [256 x i8], [256 x i8]* %values, i32 0, i32 0
  %call64 = call i32 @s_DCT_byte_params(%struct.gs_param_list_s* %68, i8* %arraydecay62, i32 16, i32 %69, i8* %arraydecay63) #6
  store i32 %call64, i32* %code, align 4, !tbaa !5
  %70 = load i32, i32* %code, align 4, !tbaa !5
  %cmp65 = icmp slt i32 %70, 0
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.end.60
  %71 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %71, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.68:                                        ; preds = %if.end.60
  %72 = load i32, i32* %i, align 4, !tbaa !5
  %and = and i32 %72, 1
  %tobool69 = icmp ne i32 %and, 0
  br i1 %tobool69, label %if.then.70, label %if.else.89

if.then.70:                                       ; preds = %if.end.68
  %73 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %ac_table_ptrs, align 8, !tbaa !1
  %74 = load i32, i32* %nac, align 4, !tbaa !5
  %arraydecay71 = getelementptr inbounds [16 x i8], [16 x i8]* %counts, i32 0, i32 0
  %arraydecay72 = getelementptr inbounds [256 x i8], [256 x i8]* %values, i32 0, i32 0
  %75 = load i32, i32* %codes_size, align 4, !tbaa !5
  %call73 = call i32 @find_huff_values(%struct.JHUFF_TBL** %73, i32 %74, i8* %arraydecay71, i8* %arraydecay72, i32 %75) #6
  store i32 %call73, i32* %j, align 4, !tbaa !5
  %76 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !1
  %cmp74 = icmp ne %struct.jpeg_component_info* %76, null
  br i1 %cmp74, label %if.then.76, label %if.end.79

if.then.76:                                       ; preds = %if.then.70
  %77 = load i32, i32* %j, align 4, !tbaa !5
  %78 = load i32, i32* %i, align 4, !tbaa !5
  %shr = ashr i32 %78, 1
  %idxprom77 = sext i32 %shr to i64
  %79 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !1
  %arrayidx78 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %79, i64 %idxprom77
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx78, i32 0, i32 6
  store i32 %77, i32* %ac_tbl_no, align 4, !tbaa !59
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.76, %if.then.70
  %80 = load i32, i32* %j, align 4, !tbaa !5
  %81 = load i32, i32* %nac, align 4, !tbaa !5
  %cmp80 = icmp slt i32 %80, %81
  br i1 %cmp80, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.end.79
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.end.83:                                        ; preds = %if.end.79
  %82 = load i32, i32* %nac, align 4, !tbaa !5
  %inc84 = add nsw i32 %82, 1
  store i32 %inc84, i32* %nac, align 4, !tbaa !5
  %cmp85 = icmp sgt i32 %inc84, 4
  br i1 %cmp85, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %if.end.83
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.88:                                        ; preds = %if.end.83
  %83 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %ac_table_ptrs, align 8, !tbaa !1
  %84 = load i32, i32* %j, align 4, !tbaa !5
  %idx.ext = sext i32 %84 to i64
  %add.ptr = getelementptr inbounds %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %83, i64 %idx.ext
  store %struct.JHUFF_TBL** %add.ptr, %struct.JHUFF_TBL*** %this_table_ptr, align 8, !tbaa !1
  br label %if.end.111

if.else.89:                                       ; preds = %if.end.68
  %85 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %dc_table_ptrs, align 8, !tbaa !1
  %86 = load i32, i32* %ndc, align 4, !tbaa !5
  %arraydecay90 = getelementptr inbounds [16 x i8], [16 x i8]* %counts, i32 0, i32 0
  %arraydecay91 = getelementptr inbounds [256 x i8], [256 x i8]* %values, i32 0, i32 0
  %87 = load i32, i32* %codes_size, align 4, !tbaa !5
  %call92 = call i32 @find_huff_values(%struct.JHUFF_TBL** %85, i32 %86, i8* %arraydecay90, i8* %arraydecay91, i32 %87) #6
  store i32 %call92, i32* %j, align 4, !tbaa !5
  %88 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !1
  %cmp93 = icmp ne %struct.jpeg_component_info* %88, null
  br i1 %cmp93, label %if.then.95, label %if.end.99

if.then.95:                                       ; preds = %if.else.89
  %89 = load i32, i32* %j, align 4, !tbaa !5
  %90 = load i32, i32* %i, align 4, !tbaa !5
  %shr96 = ashr i32 %90, 1
  %idxprom97 = sext i32 %shr96 to i64
  %91 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !1
  %arrayidx98 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %91, i64 %idxprom97
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx98, i32 0, i32 5
  store i32 %89, i32* %dc_tbl_no, align 4, !tbaa !60
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.95, %if.else.89
  %92 = load i32, i32* %j, align 4, !tbaa !5
  %93 = load i32, i32* %ndc, align 4, !tbaa !5
  %cmp100 = icmp slt i32 %92, %93
  br i1 %cmp100, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.end.99
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.end.103:                                       ; preds = %if.end.99
  %94 = load i32, i32* %ndc, align 4, !tbaa !5
  %inc104 = add nsw i32 %94, 1
  store i32 %inc104, i32* %ndc, align 4, !tbaa !5
  %cmp105 = icmp sgt i32 %inc104, 4
  br i1 %cmp105, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %if.end.103
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.108:                                       ; preds = %if.end.103
  %95 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %dc_table_ptrs, align 8, !tbaa !1
  %96 = load i32, i32* %j, align 4, !tbaa !5
  %idx.ext109 = sext i32 %96 to i64
  %add.ptr110 = getelementptr inbounds %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %95, i64 %idx.ext109
  store %struct.JHUFF_TBL** %add.ptr110, %struct.JHUFF_TBL*** %this_table_ptr, align 8, !tbaa !1
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.108, %if.end.88
  %97 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %this_table_ptr, align 8, !tbaa !1
  %98 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %97, align 8, !tbaa !1
  store %struct.JHUFF_TBL* %98, %struct.JHUFF_TBL** %this_table, align 8, !tbaa !1
  %99 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %this_table, align 8, !tbaa !1
  %cmp112 = icmp eq %struct.JHUFF_TBL* %99, null
  br i1 %cmp112, label %if.then.114, label %if.end.120

if.then.114:                                      ; preds = %if.end.111
  %100 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %call115 = call %struct.JHUFF_TBL* @gs_jpeg_alloc_huff_table(%struct.stream_DCT_state_s* %100) #6
  store %struct.JHUFF_TBL* %call115, %struct.JHUFF_TBL** %this_table, align 8, !tbaa !1
  %101 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %this_table, align 8, !tbaa !1
  %cmp116 = icmp eq %struct.JHUFF_TBL* %101, null
  br i1 %cmp116, label %if.then.118, label %if.end.119

if.then.118:                                      ; preds = %if.then.114
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.119:                                       ; preds = %if.then.114
  %102 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %this_table, align 8, !tbaa !1
  %103 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %this_table_ptr, align 8, !tbaa !1
  store %struct.JHUFF_TBL* %102, %struct.JHUFF_TBL** %103, align 8, !tbaa !1
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %if.end.111
  %104 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %this_table, align 8, !tbaa !1
  %bits = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %104, i32 0, i32 0
  %arraydecay121 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i32 0
  %arraydecay122 = getelementptr inbounds [16 x i8], [16 x i8]* %counts, i32 0, i32 0
  %call123 = call i8* @memcpy(i8* %arraydecay121, i8* %arraydecay122, i64 16) #7
  %105 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %this_table, align 8, !tbaa !1
  %huffval = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %105, i32 0, i32 1
  %arraydecay124 = getelementptr inbounds [256 x i8], [256 x i8]* %huffval, i32 0, i32 0
  %arraydecay125 = getelementptr inbounds [256 x i8], [256 x i8]* %values, i32 0, i32 0
  %106 = load i32, i32* %codes_size, align 4, !tbaa !5
  %conv126 = sext i32 %106 to i64
  %mul127 = mul i64 %conv126, 1
  %call128 = call i8* @memcpy(i8* %arraydecay124, i8* %arraydecay125, i64 %mul127) #7
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.120, %if.then.118, %if.then.107, %if.then.102, %if.then.87, %if.then.82, %if.then.67, %if.then.59, %if.then.52
  %107 = bitcast [256 x i8]* %values to i8*
  call void @llvm.lifetime.end(i64 256, i8* %107) #1
  %108 = bitcast [16 x i8]* %counts to i8*
  call void @llvm.lifetime.end(i64 16, i8* %108) #1
  %109 = bitcast [5 x i8]* %istr to i8*
  call void @llvm.lifetime.end(i64 5, i8* %109) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.140 [
    i32 0, label %cleanup.cont
    i32 5, label %for.inc.131
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.131

for.inc.131:                                      ; preds = %cleanup.cont, %cleanup
  %110 = load i32, i32* %i, align 4, !tbaa !5
  %inc132 = add nsw i32 %110, 1
  store i32 %inc132, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end.133:                                      ; preds = %for.cond
  %111 = load i32, i32* %nac, align 4, !tbaa !5
  %112 = load i32, i32* %max_tables, align 4, !tbaa !5
  %cmp134 = icmp sgt i32 %111, %112
  br i1 %cmp134, label %if.then.138, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end.133
  %113 = load i32, i32* %ndc, align 4, !tbaa !5
  %114 = load i32, i32* %max_tables, align 4, !tbaa !5
  %cmp136 = icmp sgt i32 %113, %114
  br i1 %cmp136, label %if.then.138, label %if.end.139

if.then.138:                                      ; preds = %lor.lhs.false, %for.end.133
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.140

if.end.139:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.140

cleanup.140:                                      ; preds = %if.end.139, %if.then.138, %cleanup, %if.then.4, %sw.default, %sw.bb
  %115 = bitcast i32* %max_tables to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #1
  %116 = bitcast %struct.JHUFF_TBL** %this_table to i8*
  call void @llvm.lifetime.end(i64 8, i8* %116) #1
  %117 = bitcast %struct.JHUFF_TBL*** %this_table_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #1
  %118 = bitcast %struct.JHUFF_TBL*** %ac_table_ptrs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %118) #1
  %119 = bitcast %struct.JHUFF_TBL*** %dc_table_ptrs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %119) #1
  %120 = bitcast %struct.jpeg_component_info** %comp_info to i8*
  call void @llvm.lifetime.end(i64 8, i8* %120) #1
  %121 = bitcast i32* %codes_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #1
  %122 = bitcast i32* %nac to i8*
  call void @llvm.lifetime.end(i64 4, i8* %122) #1
  %123 = bitcast i32* %ndc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #1
  %124 = bitcast i32* %num_in_tables to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #1
  %125 = bitcast %struct.gs_param_collection_s* %huff_tables to i8*
  call void @llvm.lifetime.end(i64 16, i8* %125) #1
  %126 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #1
  %127 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #1
  %128 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %128) #1
  %129 = load i32, i32* %retval
  ret i32 %129
}

; Function Attrs: nounwind uwtable
define internal i32 @find_huff_values(%struct.JHUFF_TBL** %table_ptrs, i32 %num_tables, i8* %counts, i8* %values, i32 %codes_size) #0 {
entry:
  %table_ptrs.addr = alloca %struct.JHUFF_TBL**, align 8
  %num_tables.addr = alloca i32, align 4
  %counts.addr = alloca i8*, align 8
  %values.addr = alloca i8*, align 8
  %codes_size.addr = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.JHUFF_TBL** %table_ptrs, %struct.JHUFF_TBL*** %table_ptrs.addr, align 8, !tbaa !1
  store i32 %num_tables, i32* %num_tables.addr, align 4, !tbaa !5
  store i8* %counts, i8** %counts.addr, align 8, !tbaa !1
  store i8* %values, i8** %values.addr, align 8, !tbaa !1
  store i32 %codes_size, i32* %codes_size.addr, align 4, !tbaa !5
  %0 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %j, align 4, !tbaa !5
  %2 = load i32, i32* %num_tables.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %table_ptrs.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %4, i64 %idxprom
  %5 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx, align 8, !tbaa !1
  %bits = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %5, i32 0, i32 0
  %arraydecay = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i32 0
  %6 = load i8*, i8** %counts.addr, align 8, !tbaa !1
  %call = call i32 @memcmp(i8* %arraydecay, i8* %6, i64 16) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %7 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom1 = sext i32 %7 to i64
  %8 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %table_ptrs.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %8, i64 %idxprom1
  %9 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx2, align 8, !tbaa !1
  %huffval = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %9, i32 0, i32 1
  %arraydecay3 = getelementptr inbounds [256 x i8], [256 x i8]* %huffval, i32 0, i32 0
  %10 = load i8*, i8** %values.addr, align 8, !tbaa !1
  %11 = load i32, i32* %codes_size.addr, align 4, !tbaa !5
  %conv = sext i32 %11 to i64
  %mul = mul i64 %conv, 1
  %call4 = call i32 @memcmp(i8* %arraydecay3, i8* %10, i64 %mul) #5
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  br label %for.end

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %13 = load i32, i32* %j, align 4, !tbaa !5
  %14 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  ret i32 %13
}

declare %struct.JHUFF_TBL* @gs_jpeg_alloc_huff_table(%struct.stream_DCT_state_s*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin nounwind readonly }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 8}
!8 = !{!"stream_DCT_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !9, i64 112, !10, i64 128, !6, i64 132, !6, i64 136, !2, i64 144, !3, i64 152, !2, i64 160, !3, i64 168, !11, i64 176, !6, i64 184, !6, i64 188}
!9 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!10 = !{!"float", !3, i64 0}
!11 = !{!"long", !3, i64 0}
!12 = !{!8, !10, i64 128}
!13 = !{!14, !14, i64 0}
!14 = !{!"double", !3, i64 0}
!15 = !{!16, !6, i64 556}
!16 = !{!"jpeg_compress_data_s", !17, i64 0, !18, i64 56, !19, i64 224, !2, i64 432, !2, i64 440, !2, i64 448, !6, i64 456, !6, i64 460, !20, i64 464, !22, i64 1048, !3, i64 1088, !6, i64 1188, !6, i64 1192}
!17 = !{!"stream_template_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !6, i64 28, !2, i64 32, !2, i64 40, !2, i64 48}
!18 = !{!"jpeg_error_mgr", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !3, i64 44, !6, i64 124, !11, i64 128, !2, i64 136, !6, i64 144, !2, i64 152, !6, i64 160, !6, i64 164}
!19 = !{!"", !3, i64 0}
!20 = !{!"jpeg_compress_struct", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !3, i64 32, !6, i64 36, !2, i64 40, !6, i64 48, !6, i64 52, !6, i64 56, !3, i64 60, !14, i64 64, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !3, i64 96, !2, i64 104, !3, i64 112, !3, i64 144, !3, i64 160, !3, i64 192, !3, i64 224, !3, i64 240, !3, i64 256, !6, i64 272, !2, i64 280, !3, i64 288, !3, i64 292, !3, i64 296, !3, i64 300, !3, i64 304, !6, i64 308, !3, i64 312, !6, i64 316, !6, i64 320, !3, i64 324, !3, i64 328, !3, i64 329, !3, i64 330, !21, i64 332, !21, i64 334, !3, i64 336, !3, i64 340, !6, i64 344, !3, i64 348, !6, i64 352, !6, i64 356, !6, i64 360, !6, i64 364, !6, i64 368, !6, i64 372, !3, i64 376, !6, i64 408, !6, i64 412, !6, i64 416, !3, i64 420, !6, i64 460, !6, i64 464, !6, i64 468, !6, i64 472, !6, i64 476, !2, i64 480, !6, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !6, i64 576}
!21 = !{!"short", !3, i64 0}
!22 = !{!"jpeg_destination_mgr", !2, i64 0, !11, i64 8, !2, i64 16, !2, i64 24, !2, i64 32}
!23 = !{!16, !2, i64 568}
!24 = !{!25, !6, i64 8}
!25 = !{!"gs_param_collection_s", !2, i64 0, !6, i64 8}
!26 = !{!27, !6, i64 16}
!27 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !3, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !2, i64 80, !2, i64 88}
!28 = !{!29, !2, i64 0}
!29 = !{!"gs_param_list_s", !2, i64 0, !2, i64 8, !6, i64 16}
!30 = !{!31, !2, i64 8}
!31 = !{!"gs_param_list_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64}
!32 = !{!25, !2, i64 0}
!33 = !{!34, !2, i64 0}
!34 = !{!"gs_param_string_s", !2, i64 0, !6, i64 8, !6, i64 12}
!35 = !{!34, !6, i64 8}
!36 = !{!31, !2, i64 16}
!37 = !{!38, !2, i64 136}
!38 = !{!"gs_memory_s", !2, i64 0, !39, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!39 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!40 = !{!3, !3, i64 0}
!41 = !{!21, !21, i64 0}
!42 = !{!34, !6, i64 12}
!43 = !{!38, !2, i64 88}
!44 = !{!10, !10, i64 0}
!45 = !{!46, !2, i64 0}
!46 = !{!"gs_param_float_array_s", !2, i64 0, !6, i64 8, !6, i64 12}
!47 = !{!46, !6, i64 8}
!48 = !{!46, !6, i64 12}
!49 = !{!16, !6, i64 520}
!50 = !{!51, !2, i64 0}
!51 = !{!"gs_param_string_array_s", !2, i64 0, !6, i64 8, !6, i64 12}
!52 = !{!51, !6, i64 8}
!53 = !{!51, !6, i64 12}
!54 = !{!31, !2, i64 56}
!55 = !{!56, !6, i64 456}
!56 = !{!"jpeg_stream_data_s", !17, i64 0, !18, i64 56, !19, i64 224, !2, i64 432, !2, i64 440, !2, i64 448, !6, i64 456, !6, i64 460}
!57 = !{!56, !6, i64 460}
!58 = !{!8, !6, i64 132}
!59 = !{!27, !6, i64 24}
!60 = !{!27, !6, i64 20}
