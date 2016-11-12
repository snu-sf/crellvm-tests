; ModuleID = './zfdcte.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.op_def = type { i8*, i32 (%struct.gs_context_state_s*)* }
%struct.gs_context_state_s = type { %struct.gs_state_s*, %struct.gs_dual_memory_s, i32, %struct.ref_s, %struct.ref_s, i64, i64, i64, i32, i32, %struct.ref_s, %struct.ref_s, i32, i32, i32, i32, %struct.gs_file_path_s*, [3 x %struct.ref_s], %struct.stream_s*, %struct.op_array_table_s, %struct.op_array_table_s, i32 (%struct.gs_context_state_s**)*, i32, i32 (%struct.gs_context_state_s**)*, %struct.dict_stack_s, %struct.exec_stack_s, %struct.op_stack_s, %struct.i_plugin_holder_s* }
%struct.gs_state_s = type opaque
%struct.gs_dual_memory_s = type { %struct.gs_ref_memory_s*, %struct.vm_spaces_s, i32, i32 (%struct.gs_dual_memory_s*, i32)*, i32, i32 }
%struct.gs_ref_memory_s = type opaque
%struct.vm_spaces_s = type { void (%struct.vm_spaces_s*, i32)*, %union.anon }
%union.anon = type { [4 x %struct.gs_ref_memory_s*] }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16, i32 }
%union.v = type { i64 }
%struct.gs_file_path_s = type opaque
%struct.stream_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %union.stream_cursor_s, i8*, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, %struct.stream_s*, i32, i32, %struct.stream_state_s*, i16, i16, %struct.stream_s*, %struct.stream_s*, i32, i32, i32 (%struct.stream_s*)*, %struct._IO_FILE*, %struct.gs_const_string_s, i32, i64, i64 }
%struct.stream_template_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_gc_root_s = type { %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i32 }
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type { i8*, i8*, %struct.gx_io_device_procs_s, i8* }
%struct.gx_io_device_procs_s = type { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.file_enum_s = type opaque
%struct.gs_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32 }
%struct.gs_param_list_procs_s = type { i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)*, i32 (%struct.gs_param_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*)* }
%struct.gs_param_typed_value_s = type { %union.gs_param_value_s, i32 }
%union.gs_param_value_s = type { %struct.gs_param_string_s }
%struct.gs_param_string_s = type { i8*, i32, i32 }
%struct.gs_param_collection_s = type { %struct.gs_param_list_s*, i32 }
%union.gs_param_enumerator_s = type { i64 }
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.gs_string_s = type { i8*, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.op_array_table_s = type { %struct.ref_s, i16*, i32, i32, i32 }
%struct.dict_stack_s = type { %struct.ref_stack_s, i32, i32, i32, i16*, i32, %struct.ref_s*, %struct.ref_s }
%struct.ref_stack_s = type { %struct.ref_s*, %struct.ref_s*, %struct.ref_s*, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, %struct.ref_stack_params_s*, %struct.gs_ref_memory_s* }
%struct.ref_stack_params_s = type opaque
%struct.exec_stack_s = type { %struct.ref_stack_s, %struct.ref_s* }
%struct.op_stack_s = type { %struct.ref_stack_s }
%struct.i_plugin_holder_s = type opaque
%struct.stream_DCT_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %struct.gs_const_string_s, float, i32, i32, %struct.gs_memory_s*, %union._jd, %struct.cmm_profile_s*, i8, i64, i32, i32 }
%union._jd = type { %struct.jpeg_stream_data_s* }
%struct.jpeg_stream_data_s = type { %struct.stream_template_s, %struct.jpeg_error_mgr, %struct.gsfix_jmp_buf, %struct.gs_memory_s*, %struct.gs_memory_s*, i8*, i32, i32 }
%struct.jpeg_error_mgr = type { void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i8*)*, void (%struct.jpeg_common_struct*)*, i32, %union.anon.0, i32, i64, i8**, i32, i8**, i32, i32 }
%struct.jpeg_common_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i8*, i32, i32 }
%struct.jpeg_memory_mgr = type { i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, {}*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, void (%struct.jpeg_common_struct*, i32)*, {}*, i64, i64 }
%struct.jvirt_sarray_control = type opaque
%struct.jvirt_barray_control = type opaque
%struct.jpeg_progress_mgr = type { {}*, i64, i64, i32, i32 }
%union.anon.0 = type { [8 x i32], [48 x i8] }
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
%struct.dict_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32, %struct.gs_ref_memory_s*, %union.anon.1, i32 (%struct.iparam_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*, i32*)*, i32*, i32, i32, %struct.ref_s }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { i32 (%struct.iparam_list_s*, %struct.ref_s*, %struct.iparam_loc_s*)*, %struct.ref_s, i32 }
%struct.iparam_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32, %struct.gs_ref_memory_s*, %union.anon.2, i32 (%struct.iparam_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*, i32*)*, i32*, i32, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { {}*, %struct.ref_s, i32 }
%struct.iparam_loc_s = type { %struct.ref_s*, i32* }
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

@.str = private unnamed_addr constant [11 x i8] c"filterdict\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"2DCTEncode\00", align 1
@zfdcte_op_defs = constant [3 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* null }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zDCTE }, %struct.op_def zeroinitializer], align 16
@st_jpeg_compress_data = external constant %struct.gs_memory_struct_type_s, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"zDCTE\00", align 1
@s_DCTE_template = external constant %struct.stream_template_s, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"iparam_list_release\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"zDCTE fail\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @zDCTE(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %state = alloca %struct.stream_DCT_state_s, align 8
  %list = alloca %struct.dict_param_list_s, align 8
  %jcdp = alloca %struct.jpeg_compress_data_s*, align 8
  %code = alloca i32, align 4
  %dop = alloca %struct.ref_s*, align 8
  %dspace = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %5 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !19
  %6 = bitcast %struct.gs_ref_memory_s* %5 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 1
  %stable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 3
  %7 = load %struct.gs_memory_s* (%struct.gs_memory_s*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)** %stable, align 8, !tbaa !20
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 1
  %current2 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory1, i32 0, i32 0
  %9 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current2, align 8, !tbaa !19
  %10 = bitcast %struct.gs_ref_memory_s* %9 to %struct.gs_memory_s*
  %call = call %struct.gs_memory_s* %7(%struct.gs_memory_s* %10) #3
  store %struct.gs_memory_s* %call, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %11 = bitcast %struct.stream_DCT_state_s* %state to i8*
  call void @llvm.lifetime.start(i64 192, i8* %11) #1
  %12 = bitcast %struct.dict_param_list_s* %list to i8*
  call void @llvm.lifetime.start(i64 104, i8* %12) #1
  %13 = bitcast %struct.jpeg_compress_data_s** %jcdp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast %struct.ref_s** %dop to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = bitcast i32* %dspace to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs3 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %17, i32 0, i32 1
  %alloc_struct_immovable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs3, i32 0, i32 9
  %18 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct_immovable, align 8, !tbaa !23
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call4 = call i8* %18(%struct.gs_memory_s* %19, %struct.gs_memory_struct_type_s* @st_jpeg_compress_data, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0)) #3
  %20 = bitcast i8* %call4 to %struct.jpeg_compress_data_s*
  store %struct.jpeg_compress_data_s* %20, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %21 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %cmp = icmp eq %struct.jpeg_compress_data_s* %21, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %memory5 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %state, i32 0, i32 1
  store %struct.gs_memory_s* %22, %struct.gs_memory_s** %memory5, align 8, !tbaa !24
  %23 = load void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)** getelementptr inbounds (%struct.stream_template_s, %struct.stream_template_s* @s_DCTE_template, i32 0, i32 6), align 8, !tbaa !28
  %tobool = icmp ne void (%struct.stream_state_s*)* %23, null
  br i1 %tobool, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %24 = load void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)** getelementptr inbounds (%struct.stream_template_s, %struct.stream_template_s* @s_DCTE_template, i32 0, i32 6), align 8, !tbaa !28
  %25 = bitcast %struct.stream_DCT_state_s* %state to %struct.stream_state_s*
  call void %24(%struct.stream_state_s* %25) #3
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  %26 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %state, i32 0, i32 10
  %compress = bitcast %union._jd* %data to %struct.jpeg_compress_data_s**
  store %struct.jpeg_compress_data_s* %26, %struct.jpeg_compress_data_s** %compress, align 8, !tbaa !1
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %jpeg_memory = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %state, i32 0, i32 9
  store %struct.gs_memory_s* %27, %struct.gs_memory_s** %jpeg_memory, align 8, !tbaa !30
  %28 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %memory8 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %28, i32 0, i32 3
  store %struct.gs_memory_s* %27, %struct.gs_memory_s** %memory8, align 8, !tbaa !31
  %report_error = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %state, i32 0, i32 2
  store i32 (%struct.stream_state_s*, i8*)* @filter_report_error, i32 (%struct.stream_state_s*, i8*)** %report_error, align 8, !tbaa !38
  %call9 = call i32 @gs_jpeg_create_compress(%struct.stream_DCT_state_s* %state) #3
  store i32 %call9, i32* %code, align 4, !tbaa !39
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.7
  br label %fail

if.end.12:                                        ; preds = %if.end.7
  %29 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %30 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %30, i64 1
  %31 = load i8, i8* %arrayidx, align 1, !tbaa !40
  %conv = zext i8 %31 to i32
  %cmp13 = icmp eq i32 %conv, 2
  br i1 %cmp13, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.end.12
  %32 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  store %struct.ref_s* %32, %struct.ref_s** %dop, align 8, !tbaa !1
  %33 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i32 0, i32 0
  %type_attrs17 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas16, i32 0, i32 0
  %34 = load i16, i16* %type_attrs17, align 2, !tbaa !41
  %conv18 = zext i16 %34 to i32
  %and = and i32 %conv18, 12
  store i32 %and, i32* %dspace, align 4, !tbaa !39
  br label %if.end.19

if.else:                                          ; preds = %if.end.12
  store %struct.ref_s* null, %struct.ref_s** %dop, align 8, !tbaa !1
  store i32 0, i32* %dspace, align 4, !tbaa !39
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.15
  %35 = load %struct.ref_s*, %struct.ref_s** %dop, align 8, !tbaa !1
  %36 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory20 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %36, i32 0, i32 1
  %current21 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory20, i32 0, i32 0
  %37 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current21, align 8, !tbaa !19
  %call22 = call i32 @dict_param_list_read(%struct.dict_param_list_s* %list, %struct.ref_s* %35, %struct.ref_s* null, i32 0, %struct.gs_ref_memory_s* %37) #3
  store i32 %call22, i32* %code, align 4, !tbaa !39
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.19
  br label %fail

if.end.26:                                        ; preds = %if.end.19
  %38 = bitcast %struct.dict_param_list_s* %list to %struct.gs_param_list_s*
  %call27 = call i32 @s_DCTE_put_params(%struct.gs_param_list_s* %38, %struct.stream_DCT_state_s* %state) #3
  store i32 %call27, i32* %code, align 4, !tbaa !39
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.26
  br label %rel

if.end.31:                                        ; preds = %if.end.26
  %39 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %templat = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %39, i32 0, i32 0
  %40 = bitcast %struct.stream_template_s* %templat to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* bitcast (%struct.stream_template_s* @s_DCTE_template to i8*), i64 56, i32 8, i1 false), !tbaa.struct !42
  %41 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %cinfo = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %41, i32 0, i32 8
  %input_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo, i32 0, i32 9
  %42 = load i32, i32* %input_components, align 4, !tbaa !43
  %43 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %cinfo32 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %43, i32 0, i32 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo32, i32 0, i32 7
  %44 = load i32, i32* %image_width, align 4, !tbaa !44
  %mul = mul i32 %42, %44
  %scan_line_size = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %state, i32 0, i32 14
  store i32 %mul, i32* %scan_line_size, align 4, !tbaa !45
  %icc_profile = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %state, i32 0, i32 11
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !46
  %45 = load i32, i32* getelementptr inbounds (%struct.stream_template_s, %struct.stream_template_s* @s_DCTE_template, i32 0, i32 3), align 4, !tbaa !47
  %scan_line_size33 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %state, i32 0, i32 14
  %46 = load i32, i32* %scan_line_size33, align 4, !tbaa !45
  %cmp34 = icmp ugt i32 %45, %46
  br i1 %cmp34, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.31
  %47 = load i32, i32* getelementptr inbounds (%struct.stream_template_s, %struct.stream_template_s* @s_DCTE_template, i32 0, i32 3), align 4, !tbaa !47
  br label %cond.end

cond.false:                                       ; preds = %if.end.31
  %scan_line_size36 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %state, i32 0, i32 14
  %48 = load i32, i32* %scan_line_size36, align 4, !tbaa !45
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %47, %cond.true ], [ %48, %cond.false ]
  %49 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %templat37 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %49, i32 0, i32 0
  %min_in_size = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %templat37, i32 0, i32 3
  store i32 %cond, i32* %min_in_size, align 4, !tbaa !48
  %50 = load i32, i32* getelementptr inbounds (%struct.stream_template_s, %struct.stream_template_s* @s_DCTE_template, i32 0, i32 4), align 4, !tbaa !49
  %Markers = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %state, i32 0, i32 5
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Markers, i32 0, i32 1
  %51 = load i32, i32* %size, align 4, !tbaa !50
  %cmp38 = icmp ugt i32 %50, %51
  br i1 %cmp38, label %cond.true.40, label %cond.false.41

cond.true.40:                                     ; preds = %cond.end
  %52 = load i32, i32* getelementptr inbounds (%struct.stream_template_s, %struct.stream_template_s* @s_DCTE_template, i32 0, i32 4), align 4, !tbaa !49
  br label %cond.end.44

cond.false.41:                                    ; preds = %cond.end
  %Markers42 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %state, i32 0, i32 5
  %size43 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Markers42, i32 0, i32 1
  %53 = load i32, i32* %size43, align 4, !tbaa !50
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.false.41, %cond.true.40
  %cond45 = phi i32 [ %52, %cond.true.40 ], [ %53, %cond.false.41 ]
  %54 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %templat46 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %54, i32 0, i32 0
  %min_out_size = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %templat46, i32 0, i32 4
  store i32 %cond45, i32* %min_out_size, align 4, !tbaa !51
  %55 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %56 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %templat47 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %56, i32 0, i32 0
  %57 = bitcast %struct.stream_DCT_state_s* %state to %struct.stream_state_s*
  %58 = load i32, i32* %dspace, align 4, !tbaa !39
  %call48 = call i32 @filter_write(%struct.gs_context_state_s* %55, i32 0, %struct.stream_template_s* %templat47, %struct.stream_state_s* %57, i32 %58) #3
  store i32 %call48, i32* %code, align 4, !tbaa !39
  %59 = load i32, i32* %code, align 4, !tbaa !39
  %cmp49 = icmp sge i32 %59, 0
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %cond.end.44
  %60 = load i32, i32* %code, align 4, !tbaa !39
  store i32 %60, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.52:                                        ; preds = %cond.end.44
  br label %rel

rel:                                              ; preds = %if.end.52, %if.then.30
  %memory53 = getelementptr inbounds %struct.dict_param_list_s, %struct.dict_param_list_s* %list, i32 0, i32 1
  %61 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory53, align 8, !tbaa !52
  %procs54 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %61, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs54, i32 0, i32 2
  %62 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !54
  %memory55 = getelementptr inbounds %struct.dict_param_list_s, %struct.dict_param_list_s* %list, i32 0, i32 1
  %63 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory55, align 8, !tbaa !52
  %results = getelementptr inbounds %struct.dict_param_list_s, %struct.dict_param_list_s* %list, i32 0, i32 6
  %64 = load i32*, i32** %results, align 8, !tbaa !55
  %65 = bitcast i32* %64 to i8*
  call void %62(%struct.gs_memory_s* %63, i8* %65, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0)) #3
  br label %fail

fail:                                             ; preds = %rel, %if.then.25, %if.then.11
  %call56 = call i32 @gs_jpeg_destroy(%struct.stream_DCT_state_s* %state) #3
  %66 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs57 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %66, i32 0, i32 1
  %free_object58 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs57, i32 0, i32 2
  %67 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object58, align 8, !tbaa !54
  %68 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %69 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %70 = bitcast %struct.jpeg_compress_data_s* %69 to i8*
  call void %67(%struct.gs_memory_s* %68, i8* %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0)) #3
  %71 = load i32, i32* %code, align 4, !tbaa !39
  store i32 %71, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.then.51, %if.then
  %72 = bitcast i32* %dspace to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = bitcast %struct.ref_s** %dop to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  %74 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast %struct.jpeg_compress_data_s** %jcdp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = bitcast %struct.dict_param_list_s* %list to i8*
  call void @llvm.lifetime.end(i64 104, i8* %76) #1
  %77 = bitcast %struct.stream_DCT_state_s* %state to i8*
  call void @llvm.lifetime.end(i64 192, i8* %77) #1
  %78 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %79 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #1
  %80 = load i32, i32* %retval
  ret i32 %80
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @filter_report_error(%struct.stream_state_s*, i8*) #2

declare i32 @gs_jpeg_create_compress(%struct.stream_DCT_state_s*) #2

declare i32 @dict_param_list_read(%struct.dict_param_list_s*, %struct.ref_s*, %struct.ref_s*, i32, %struct.gs_ref_memory_s*) #2

declare i32 @s_DCTE_put_params(%struct.gs_param_list_s*, %struct.stream_DCT_state_s*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @filter_write(%struct.gs_context_state_s*, i32, %struct.stream_template_s*, %struct.stream_state_s*, i32) #2

declare i32 @gs_jpeg_destroy(%struct.stream_DCT_state_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 624}
!6 = !{!"gs_context_state_s", !2, i64 0, !7, i64 8, !9, i64 80, !10, i64 88, !10, i64 104, !13, i64 120, !13, i64 128, !13, i64 136, !9, i64 144, !9, i64 148, !10, i64 152, !10, i64 168, !9, i64 184, !9, i64 188, !9, i64 192, !9, i64 196, !2, i64 200, !3, i64 208, !2, i64 256, !14, i64 264, !14, i64 304, !2, i64 344, !9, i64 352, !2, i64 360, !15, i64 368, !17, i64 520, !18, i64 624, !2, i64 720}
!7 = !{!"gs_dual_memory_s", !2, i64 0, !8, i64 8, !9, i64 48, !2, i64 56, !9, i64 64, !9, i64 68}
!8 = !{!"vm_spaces_s", !2, i64 0, !3, i64 8}
!9 = !{!"int", !3, i64 0}
!10 = !{!"ref_s", !11, i64 0, !3, i64 8}
!11 = !{!"tas_s", !12, i64 0, !12, i64 2, !9, i64 4}
!12 = !{!"short", !3, i64 0}
!13 = !{!"long", !3, i64 0}
!14 = !{!"op_array_table_s", !10, i64 0, !2, i64 16, !9, i64 24, !9, i64 28, !9, i64 32}
!15 = !{!"dict_stack_s", !16, i64 0, !9, i64 96, !9, i64 100, !9, i64 104, !2, i64 112, !9, i64 120, !2, i64 128, !10, i64 136}
!16 = !{!"ref_stack_s", !2, i64 0, !2, i64 8, !2, i64 16, !10, i64 24, !9, i64 40, !9, i64 44, !10, i64 48, !9, i64 64, !9, i64 68, !9, i64 72, !2, i64 80, !2, i64 88}
!17 = !{!"exec_stack_s", !16, i64 0, !2, i64 96}
!18 = !{!"op_stack_s", !16, i64 0}
!19 = !{!6, !2, i64 8}
!20 = !{!21, !2, i64 32}
!21 = !{!"gs_memory_s", !2, i64 0, !22, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!22 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!23 = !{!21, !2, i64 80}
!24 = !{!25, !2, i64 8}
!25 = !{!"stream_DCT_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !3, i64 28, !26, i64 112, !27, i64 128, !9, i64 132, !9, i64 136, !2, i64 144, !3, i64 152, !2, i64 160, !3, i64 168, !13, i64 176, !9, i64 184, !9, i64 188}
!26 = !{!"gs_const_string_s", !2, i64 0, !9, i64 8}
!27 = !{!"float", !3, i64 0}
!28 = !{!29, !2, i64 40}
!29 = !{!"stream_template_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !9, i64 28, !2, i64 32, !2, i64 40, !2, i64 48}
!30 = !{!25, !2, i64 144}
!31 = !{!32, !2, i64 432}
!32 = !{!"jpeg_compress_data_s", !29, i64 0, !33, i64 56, !34, i64 224, !2, i64 432, !2, i64 440, !2, i64 448, !9, i64 456, !9, i64 460, !35, i64 464, !37, i64 1048, !3, i64 1088, !9, i64 1188, !9, i64 1192}
!33 = !{!"jpeg_error_mgr", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !9, i64 40, !3, i64 44, !9, i64 124, !13, i64 128, !2, i64 136, !9, i64 144, !2, i64 152, !9, i64 160, !9, i64 164}
!34 = !{!"", !3, i64 0}
!35 = !{!"jpeg_compress_struct", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !3, i64 32, !9, i64 36, !2, i64 40, !9, i64 48, !9, i64 52, !9, i64 56, !3, i64 60, !36, i64 64, !9, i64 72, !9, i64 76, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92, !3, i64 96, !2, i64 104, !3, i64 112, !3, i64 144, !3, i64 160, !3, i64 192, !3, i64 224, !3, i64 240, !3, i64 256, !9, i64 272, !2, i64 280, !3, i64 288, !3, i64 292, !3, i64 296, !3, i64 300, !3, i64 304, !9, i64 308, !3, i64 312, !9, i64 316, !9, i64 320, !3, i64 324, !3, i64 328, !3, i64 329, !3, i64 330, !12, i64 332, !12, i64 334, !3, i64 336, !3, i64 340, !9, i64 344, !3, i64 348, !9, i64 352, !9, i64 356, !9, i64 360, !9, i64 364, !9, i64 368, !9, i64 372, !3, i64 376, !9, i64 408, !9, i64 412, !9, i64 416, !3, i64 420, !9, i64 460, !9, i64 464, !9, i64 468, !9, i64 472, !9, i64 476, !2, i64 480, !9, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !9, i64 576}
!36 = !{!"double", !3, i64 0}
!37 = !{!"jpeg_destination_mgr", !2, i64 0, !13, i64 8, !2, i64 16, !2, i64 24, !2, i64 32}
!38 = !{!25, !2, i64 16}
!39 = !{!9, !9, i64 0}
!40 = !{!3, !3, i64 0}
!41 = !{!10, !12, i64 0}
!42 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 4, !39, i64 28, i64 4, !39, i64 32, i64 8, !1, i64 40, i64 8, !1, i64 48, i64 8, !1}
!43 = !{!32, !9, i64 520}
!44 = !{!32, !9, i64 512}
!45 = !{!25, !9, i64 184}
!46 = !{!25, !2, i64 160}
!47 = !{!29, !9, i64 24}
!48 = !{!32, !9, i64 24}
!49 = !{!29, !9, i64 28}
!50 = !{!25, !9, i64 120}
!51 = !{!32, !9, i64 28}
!52 = !{!53, !2, i64 8}
!53 = !{!"dict_param_list_s", !2, i64 0, !2, i64 8, !9, i64 16, !2, i64 24, !3, i64 32, !2, i64 64, !2, i64 72, !9, i64 80, !9, i64 84, !10, i64 88}
!54 = !{!21, !2, i64 24}
!55 = !{!53, !2, i64 72}
