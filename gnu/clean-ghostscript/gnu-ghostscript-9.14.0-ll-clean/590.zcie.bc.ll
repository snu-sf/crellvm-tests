; ModuleID = './zcie.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_range4_s = type { [4 x %struct.gs_range_s] }
%struct.gs_range_s = type { float, float }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16, i32 }
%union.v = type { i64 }
%struct.gs_matrix3_s = type { %struct.gs_vector3_s, %struct.gs_vector3_s, %struct.gs_vector3_s, i32 }
%struct.gs_vector3_s = type { float, float, float }
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
%struct.gx_io_device_s = type { i8*, i8*, %struct.gx_io_device_procs_s, i8* }
%struct.gx_io_device_procs_s = type { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }
%struct.stream_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %union.stream_cursor_s, i8*, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, %struct.stream_s*, i32, i32, %struct.stream_state_s*, i16, i16, %struct.stream_s*, %struct.stream_s*, i32, i32, i32 (%struct.stream_s*)*, %struct._IO_FILE*, %struct.gs_const_string_s, i32, i64, i64 }
%struct.stream_template_s = type opaque
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.gs_string_s = type { i8*, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, {}*, i32, [80 x i8] }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.file_enum_s = type opaque
%struct.gs_param_list_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gs_cie_defg_proc4_s = type { [4 x float (double, %struct.gs_cie_defg_s*)*] }
%struct.gs_cie_defg_s = type { %struct.gs_cie_common_s, %struct.rc_header_s, %struct.gs_range3_s, %struct.gs_cie_abc_proc3_s, %struct.gs_matrix3_s, %struct.anon.1, %struct.gs_range4_s, %struct.gs_cie_defg_proc4_s, %struct.gs_range4_s, %struct.gx_color_lookup_table_s, %struct.anon.2 }
%struct.gs_cie_common_s = type { i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i8*, %struct.gs_range3_s, %struct.gs_cie_common_proc3_s, %struct.gs_matrix3_s, %struct.gs_cie_wb_s, %struct.anon }
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon.0 }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64 }
%struct.gs_pattern_type_s = type opaque
%struct.gs_paint_color_s = type { [64 x float] }
%struct.gs_imager_state_s = type opaque
%struct.gx_device_s = type opaque
%struct.gx_device_color_s = type opaque
%struct.gsicc_link_s = type { i8*, %struct.gscms_procs_s, %struct.gsicc_hashlink_s, %struct.gsicc_link_cache_s*, i32, %struct.gsicc_link_s*, %struct.gx_semaphore_s*, i32, i32, i32, i32, i32, i32, %struct.gscms_procs_s, i32, i32, i32 }
%struct.gsicc_hashlink_s = type { i64, i64, i64, i64 }
%struct.gsicc_link_cache_s = type { %struct.gsicc_link_s*, i32, %struct.rc_header_s, %struct.gs_memory_s*, %struct.gx_monitor_s*, %struct.gx_semaphore_s*, i32 }
%struct.gx_monitor_s = type { %struct.gs_memory_s*, %union.gp_monitor }
%union.gp_monitor = type { i8* }
%struct.gx_semaphore_s = type { %struct.gs_memory_s*, %union.gp_semaphore }
%union.gp_semaphore = type { i8* }
%struct.gscms_procs_s = type { void (%struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s*, i8*, i8*)*, void (%struct.gx_device_s*, %struct.gsicc_link_s*, i8*, i8*, i32)*, void (%struct.gsicc_link_s*)*, i32 (i8*, i32)* }
%struct.gsicc_bufferdesc_s = type { i8, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.client_color_space_data_s = type opaque
%struct.cmm_profile_s = type { i8, i8, i32, i32, i32, i32, %struct.gs_range_icc_s, i64, i32, [15 x i32], i32, i32, i32, %struct.gsicc_rendering_param_s, i8*, %struct.gx_device_s*, %struct.gsicc_namelist_s*, i8*, %struct.rc_header_s, i32, i8*, %struct.gs_memory_s*, %struct.gx_monitor_s* }
%struct.gs_range_icc_s = type { [15 x %struct.gs_range_s] }
%struct.gsicc_rendering_param_s = type { i32, i32, i32, i32, i32, i32 }
%struct.gsicc_namelist_s = type { i32, %struct.gsicc_colorname_s*, i8*, %struct.gs_devicen_color_map_s*, i32 }
%struct.gsicc_colorname_s = type { i8*, i32, %struct.gsicc_colorname_s* }
%struct.gs_devicen_color_map_s = type opaque
%union.anon.0 = type { %struct.gs_device_n_params_s }
%struct.gs_device_n_params_s = type { i64*, i32, %struct.gs_device_n_map_s*, %struct.gs_device_n_attributes_s*, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gs_device_n_map_s = type opaque
%struct.gs_device_n_attributes_s = type opaque
%struct.gs_state_s = type opaque
%struct.gs_cie_common_proc3_s = type { [3 x float (double, %struct.gs_cie_common_s*)*] }
%struct.gs_cie_wb_s = type { %struct.gs_vector3_s, %struct.gs_vector3_s }
%struct.anon = type { [3 x %union.gx_cie_scalar_cache_s] }
%union.gx_cie_scalar_cache_s = type { %struct.cie_cache_floats_s }
%struct.cie_cache_floats_s = type { %struct.cie_cache_params_s, [512 x float] }
%struct.cie_cache_params_s = type { i32, double, double, %struct.cie_linear_params_s }
%struct.cie_linear_params_s = type { i32, float, float }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.gs_range3_s = type { [3 x %struct.gs_range_s] }
%struct.gs_cie_abc_proc3_s = type { [3 x float (double, %struct.gs_cie_abc_s*)*] }
%struct.gs_cie_abc_s = type { %struct.gs_cie_common_s, %struct.rc_header_s, %struct.gs_range3_s, %struct.gs_cie_abc_proc3_s, %struct.gs_matrix3_s, %struct.anon.5 }
%struct.anon.5 = type { i32, %struct.gx_cie_vector_cache3_s }
%struct.gx_cie_vector_cache3_s = type { [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.cie_interpolation_range_s] }
%struct.gx_cie_vector_cache_s = type { %struct.cie_cache_floats_s, %struct.cie_cache_vectors_s }
%struct.cie_cache_vectors_s = type { %struct.cie_vector_cache_params_s, [512 x %struct.cie_cached_vector3_s] }
%struct.cie_vector_cache_params_s = type { float, float, float, [3 x %struct.cie_interpolation_range_s] }
%struct.cie_cached_vector3_s = type { float, float, float }
%struct.cie_interpolation_range_s = type { float, float }
%struct.anon.1 = type { i32, %struct.gx_cie_vector_cache3_s }
%struct.gx_color_lookup_table_s = type { i32, [4 x i32], i32, %struct.gs_const_string_s* }
%struct.anon.2 = type { [4 x %union.gx_cie_scalar_cache_s] }
%struct.gs_cie_def_proc3_s = type { [3 x float (double, %struct.gs_cie_def_s*)*] }
%struct.gs_cie_def_s = type { %struct.gs_cie_common_s, %struct.rc_header_s, %struct.gs_range3_s, %struct.gs_cie_abc_proc3_s, %struct.gs_matrix3_s, %struct.anon.3, %struct.gs_range3_s, %struct.gs_cie_def_proc3_s, %struct.gs_range3_s, %struct.gx_color_lookup_table_s, %struct.anon.4 }
%struct.anon.3 = type { i32, %struct.gx_cie_vector_cache3_s }
%struct.anon.4 = type { [3 x %union.gx_cie_scalar_cache_s] }
%struct.gs_cie_a_s = type { %struct.gs_cie_common_s, %struct.rc_header_s, %struct.gs_range_s, float (double, %struct.gs_cie_a_s*)*, %struct.gs_vector3_s, %struct.anon.6 }
%struct.anon.6 = type { %struct.gx_cie_vector_cache_s }
%struct.gs_context_state_s = type { %struct.gs_state_s*, %struct.gs_dual_memory_s, i32, %struct.ref_s, %struct.ref_s, i64, i64, i64, i32, i32, %struct.ref_s, %struct.ref_s, i32, i32, i32, i32, %struct.gs_file_path_s*, [3 x %struct.ref_s], %struct.stream_s*, %struct.op_array_table_s, %struct.op_array_table_s, i32 (%struct.gs_context_state_s**)*, i32, i32 (%struct.gs_context_state_s**)*, %struct.dict_stack_s, %struct.exec_stack_s, %struct.op_stack_s, %struct.i_plugin_holder_s* }
%struct.gs_dual_memory_s = type { %struct.gs_ref_memory_s*, %struct.vm_spaces_s, i32, i32 (%struct.gs_dual_memory_s*, i32)*, i32, i32 }
%struct.gs_ref_memory_s = type opaque
%struct.vm_spaces_s = type { void (%struct.vm_spaces_s*, i32)*, %union.anon }
%union.anon = type { [4 x %struct.gs_ref_memory_s*] }
%struct.gs_file_path_s = type opaque
%struct.op_array_table_s = type { %struct.ref_s, i16*, i32, i32, i32 }
%struct.dict_stack_s = type { %struct.ref_stack_s, i32, i32, i32, i16*, i32, %struct.ref_s*, %struct.ref_s }
%struct.ref_stack_s = type { %struct.ref_s*, %struct.ref_s*, %struct.ref_s*, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, %struct.ref_stack_params_s*, %struct.gs_ref_memory_s* }
%struct.ref_stack_params_s = type opaque
%struct.exec_stack_s = type { %struct.ref_stack_s, %struct.ref_s* }
%struct.op_stack_s = type { %struct.ref_stack_s }
%struct.i_plugin_holder_s = type opaque
%struct.ref_cie_procs_s = type { %union.anon.8, %union.anon.9, %struct.ref_s }
%union.anon.8 = type { %struct.ref_s }
%union.anon.9 = type { %struct.ref_s }
%struct.int_gstate_s = type { %struct.ref_s, %struct.anon.10, %struct.anon.10, %struct.ref_s, %struct.ref_s, [2 x %struct.ref_colorspace_s], [2 x %struct.ref_s], %struct.anon.12, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.anon.10 = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.ref_colorspace_s = type { %struct.ref_s, %struct.ref_color_procs_s }
%struct.ref_color_procs_s = type { %struct.ref_cie_procs_s, %union.anon.11 }
%union.anon.11 = type { %struct.ref_device_n_params_s }
%struct.ref_device_n_params_s = type { %struct.ref_s, %struct.ref_s }
%struct.anon.12 = type { %struct.ref_s, %struct.ref_cie_render_procs_s }
%struct.ref_cie_render_procs_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.obj_header_s = type opaque
%struct.gs_sample_loop_params_s = type { float, float, i32 }

@Range4_default = external constant %struct.gs_range4_s, align 4
@empty_procs = internal constant [4 x %struct.ref_s] [%struct.ref_s { %struct.tas_s { i16 1248, i16 0, i32 0 }, %union.v zeroinitializer }, %struct.ref_s { %struct.tas_s { i16 1248, i16 0, i32 0 }, %union.v zeroinitializer }, %struct.ref_s { %struct.tas_s { i16 1248, i16 0, i32 0 }, %union.v zeroinitializer }, %struct.ref_s { %struct.tas_s { i16 1248, i16 0, i32 0 }, %union.v zeroinitializer }], align 16
@Matrix3_default = external constant %struct.gs_matrix3_s, align 4
@.str = private unnamed_addr constant [11 x i8] c"WhitePoint\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"BlackPoint\00", align 1
@BlackPoint_default = external constant %struct.gs_vector3_s, align 4
@st_const_string_element = external constant %struct.gs_memory_struct_type_s, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"cie_table_param\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"cie_set_finish\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Table\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Decode.A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Decode.LMN(ICC)\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"RangeDEFG\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"RangeHIJK\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"DecodeDEFG\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"Decode.DEFG(ICC)\00", align 1
@DecodeDEFG_from_cache = external constant %struct.gs_cie_defg_proc4_s, align 8
@DecodeABC_from_cache = external constant %struct.gs_cie_abc_proc3_s, align 8
@DecodeLMN_from_cache = external constant %struct.gs_cie_common_proc3_s, align 8
@.str.11 = private unnamed_addr constant [9 x i8] c"RangeDEF\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"RangeHIJ\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"DecodeDEF\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"Decode.DEF(ICC)\00", align 1
@DecodeDEF_from_cache = external constant %struct.gs_cie_def_proc3_s, align 8
@.str.15 = private unnamed_addr constant [9 x i8] c"RangeABC\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"MatrixABC\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"DecodeABC\00", align 1
@DecodeABC_default = external constant %struct.gs_cie_abc_proc3_s, align 8
@.str.18 = private unnamed_addr constant [16 x i8] c"Decode.ABC(ICC)\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"RangeLMN\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"MatrixLMN\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"DecodeLMN\00", align 1
@DecodeLMN_default = external constant %struct.gs_cie_common_proc3_s, align 8
@.str.22 = private unnamed_addr constant [7 x i8] c"RangeA\00", align 1
@RangeA_default = external constant %struct.gs_range_s, align 4
@.str.23 = private unnamed_addr constant [8 x i8] c"MatrixA\00", align 1
@MatrixA_default = external constant %struct.gs_vector3_s, align 4
@.str.24 = private unnamed_addr constant [8 x i8] c"DecodeA\00", align 1
@DecodeA_from_cache = external constant float (double, %struct.gs_cie_a_s*)*, align 8

; Function Attrs: nounwind uwtable
define i32 @dict_ranges_param(%struct.gs_memory_s* %mem, %struct.ref_s* %pdref, i8* %kstr, i32 %count, %struct.gs_range_s* %prange) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pdref.addr = alloca %struct.ref_s*, align 8
  %kstr.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  %prange.addr = alloca %struct.gs_range_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %pdref, %struct.ref_s** %pdref.addr, align 8, !tbaa !1
  store i8* %kstr, i8** %kstr.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !5
  store %struct.gs_range_s* %prange, %struct.gs_range_s** %prange.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %kstr.addr, align 8, !tbaa !1
  %4 = load i32, i32* %count.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %4, 2
  %5 = load %struct.gs_range_s*, %struct.gs_range_s** %prange.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gs_range_s* %5 to float*
  %call = call i32 @dict_floats_param(%struct.gs_memory_s* %1, %struct.ref_s* %2, i8* %3, i32 %mul, float* %6, float* null) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %7 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %entry
  %9 = load i32, i32* %code, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %9, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  %10 = load %struct.gs_range_s*, %struct.gs_range_s** %prange.addr, align 8, !tbaa !1
  %11 = bitcast %struct.gs_range_s* %10 to i8*
  %12 = load i32, i32* %count.addr, align 4, !tbaa !5
  %conv = sext i32 %12 to i64
  %mul3 = mul i64 %conv, 8
  %call4 = call i8* @memcpy(i8* %11, i8* bitcast (%struct.gs_range4_s* @Range4_default to i8*), i64 %mul3) #5
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.then
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @dict_floats_param(%struct.gs_memory_s*, %struct.ref_s*, i8*, i32, float*, float*) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @dict_proc_array_param(%struct.gs_memory_s* %mem, %struct.ref_s* %pdict, i8* %kstr, i32 %count, %struct.ref_s* %pparray) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pdict.addr = alloca %struct.ref_s*, align 8
  %kstr.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  %pparray.addr = alloca %struct.ref_s*, align 8
  %pvalue = alloca %struct.ref_s*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %proc = alloca %struct.ref_s, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %pdict, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  store i8* %kstr, i8** %kstr.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !5
  store %struct.ref_s* %pparray, %struct.ref_s** %pparray.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %pvalue to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %kstr.addr, align 8, !tbaa !1
  %call = call i32 @dict_find_string(%struct.ref_s* %1, i8* %2, %struct.ref_s** %pvalue) #4
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  br label %do.body

do.body:                                          ; preds = %if.then
  %4 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %5 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv = zext i8 %6 to i32
  %cmp1 = icmp eq i32 %conv, 4
  br i1 %cmp1, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %do.body
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.24

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %7 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %tas4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas4, i32 0, i32 2
  %8 = load i32, i32* %rsize, align 4, !tbaa !8
  %9 = load i32, i32* %count.addr, align 4, !tbaa !5
  %cmp5 = icmp ne i32 %8, %9
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %do.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.24

if.end.8:                                         ; preds = %do.end
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.8
  %10 = load i32, i32* %i, align 4, !tbaa !5
  %11 = load i32, i32* %count.addr, align 4, !tbaa !5
  %cmp9 = icmp ult i32 %10, %11
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = bitcast %struct.ref_s* %proc to i8*
  call void @llvm.lifetime.start(i64 16, i8* %12) #1
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %14 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %15 = load i32, i32* %i, align 4, !tbaa !5
  %conv11 = zext i32 %15 to i64
  %call12 = call i32 @array_get(%struct.gs_memory_s* %13, %struct.ref_s* %14, i64 %conv11, %struct.ref_s* %proc) #4
  br label %do.body.13

do.body.13:                                       ; preds = %for.body
  %tas14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %proc, i32 0, i32 0
  %type_attrs15 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas14, i32 0, i32 0
  %16 = load i16, i16* %type_attrs15, align 2, !tbaa !12
  %conv16 = zext i16 %16 to i32
  %and = and i32 %conv16, 15552
  %cmp17 = icmp eq i32 %and, 1216
  br i1 %cmp17, label %if.end.21, label %if.then.19

if.then.19:                                       ; preds = %do.body.13
  %call20 = call i32 @check_proc_failed(%struct.ref_s* %proc) #4
  store i32 %call20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %do.body.13
  br label %do.cond.22

do.cond.22:                                       ; preds = %if.end.21
  br label %do.end.23

do.end.23:                                        ; preds = %do.cond.22
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.23, %if.then.19
  %17 = bitcast %struct.ref_s* %proc to i8*
  call void @llvm.lifetime.end(i64 16, i8* %17) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.24 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %18 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %18, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct.ref_s*, %struct.ref_s** %pparray.addr, align 8, !tbaa !1
  %20 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %21 = bitcast %struct.ref_s* %19 to i8*
  %22 = bitcast %struct.ref_s* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 16, i32 8, i1 false), !tbaa.struct !13
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.24

cleanup.24:                                       ; preds = %for.end, %cleanup, %if.then.7, %if.then.3
  %23 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  br label %cleanup.29

if.else:                                          ; preds = %entry
  %24 = load %struct.ref_s*, %struct.ref_s** %pparray.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 1
  %const_refs = bitcast %union.v* %value to %struct.ref_s**
  store %struct.ref_s* getelementptr inbounds ([4 x %struct.ref_s], [4 x %struct.ref_s]* @empty_procs, i32 0, i64 0), %struct.ref_s** %const_refs, align 8, !tbaa !1
  %25 = load %struct.ref_s*, %struct.ref_s** %pparray.addr, align 8, !tbaa !1
  %tas25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 0
  %type_attrs26 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas25, i32 0, i32 0
  store i16 1120, i16* %type_attrs26, align 2, !tbaa !12
  %26 = load i32, i32* %count.addr, align 4, !tbaa !5
  %27 = load %struct.ref_s*, %struct.ref_s** %pparray.addr, align 8, !tbaa !1
  %tas27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 0
  %rsize28 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas27, i32 0, i32 2
  store i32 %26, i32* %rsize28, align 4, !tbaa !8
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.29

cleanup.29:                                       ; preds = %if.else, %cleanup.24
  %28 = bitcast %struct.ref_s** %pvalue to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = load i32, i32* %retval
  ret i32 %29
}

declare i32 @dict_find_string(%struct.ref_s*, i8*, %struct.ref_s**) #2

declare i32 @array_get(%struct.gs_memory_s*, %struct.ref_s*, i64, %struct.ref_s*) #2

declare i32 @check_proc_failed(%struct.ref_s*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define i32 @dict_range3_param(%struct.gs_memory_s* %mem, %struct.ref_s* %pdref, i8* %kstr, %struct.gs_range3_s* %prange3) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pdref.addr = alloca %struct.ref_s*, align 8
  %kstr.addr = alloca i8*, align 8
  %prange3.addr = alloca %struct.gs_range3_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %pdref, %struct.ref_s** %pdref.addr, align 8, !tbaa !1
  store i8* %kstr, i8** %kstr.addr, align 8, !tbaa !1
  store %struct.gs_range3_s* %prange3, %struct.gs_range3_s** %prange3.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %1 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %kstr.addr, align 8, !tbaa !1
  %3 = load %struct.gs_range3_s*, %struct.gs_range3_s** %prange3.addr, align 8, !tbaa !1
  %ranges = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %3, i32 0, i32 0
  %arraydecay = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges, i32 0, i32 0
  %call = call i32 @dict_ranges_param(%struct.gs_memory_s* %0, %struct.ref_s* %1, i8* %2, i32 3, %struct.gs_range_s* %arraydecay) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @dict_matrix3_param(%struct.gs_memory_s* %mem, %struct.ref_s* %pdref, i8* %kstr, %struct.gs_matrix3_s* %pmat3) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pdref.addr = alloca %struct.ref_s*, align 8
  %kstr.addr = alloca i8*, align 8
  %pmat3.addr = alloca %struct.gs_matrix3_s*, align 8
  %values = alloca [9 x float], align 16
  %defaults = alloca [9 x float], align 16
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %pdref, %struct.ref_s** %pdref.addr, align 8, !tbaa !1
  store i8* %kstr, i8** %kstr.addr, align 8, !tbaa !1
  store %struct.gs_matrix3_s* %pmat3, %struct.gs_matrix3_s** %pmat3.addr, align 8, !tbaa !1
  %0 = bitcast [9 x float]* %values to i8*
  call void @llvm.lifetime.start(i64 36, i8* %0) #1
  %1 = bitcast [9 x float]* %defaults to i8*
  call void @llvm.lifetime.start(i64 36, i8* %1) #1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %arrayidx = getelementptr inbounds [9 x float], [9 x float]* %defaults, i32 0, i64 0
  %3 = bitcast float* %arrayidx to i8*
  %call = call i8* @memcpy(i8* %3, i8* bitcast (%struct.gs_matrix3_s* @Matrix3_default to i8*), i64 12) #5
  %arrayidx1 = getelementptr inbounds [9 x float], [9 x float]* %defaults, i32 0, i64 3
  %4 = bitcast float* %arrayidx1 to i8*
  %call2 = call i8* @memcpy(i8* %4, i8* bitcast (%struct.gs_vector3_s* getelementptr inbounds (%struct.gs_matrix3_s, %struct.gs_matrix3_s* @Matrix3_default, i32 0, i32 1) to i8*), i64 12) #5
  %arrayidx3 = getelementptr inbounds [9 x float], [9 x float]* %defaults, i32 0, i64 6
  %5 = bitcast float* %arrayidx3 to i8*
  %call4 = call i8* @memcpy(i8* %5, i8* bitcast (%struct.gs_vector3_s* getelementptr inbounds (%struct.gs_matrix3_s, %struct.gs_matrix3_s* @Matrix3_default, i32 0, i32 2) to i8*), i64 12) #5
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %7 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !1
  %8 = load i8*, i8** %kstr.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [9 x float], [9 x float]* %values, i32 0, i32 0
  %arraydecay5 = getelementptr inbounds [9 x float], [9 x float]* %defaults, i32 0, i32 0
  %call6 = call i32 @dict_floats_param(%struct.gs_memory_s* %6, %struct.ref_s* %7, i8* %8, i32 9, float* %arraydecay, float* %arraydecay5) #4
  store i32 %call6, i32* %code, align 4, !tbaa !5
  %9 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %pmat3.addr, align 8, !tbaa !1
  %cu = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %11, i32 0, i32 0
  %12 = bitcast %struct.gs_vector3_s* %cu to i8*
  %arrayidx7 = getelementptr inbounds [9 x float], [9 x float]* %values, i32 0, i64 0
  %13 = bitcast float* %arrayidx7 to i8*
  %call8 = call i8* @memcpy(i8* %12, i8* %13, i64 12) #5
  %14 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %pmat3.addr, align 8, !tbaa !1
  %cv = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %14, i32 0, i32 1
  %15 = bitcast %struct.gs_vector3_s* %cv to i8*
  %arrayidx9 = getelementptr inbounds [9 x float], [9 x float]* %values, i32 0, i64 3
  %16 = bitcast float* %arrayidx9 to i8*
  %call10 = call i8* @memcpy(i8* %15, i8* %16, i64 12) #5
  %17 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %pmat3.addr, align 8, !tbaa !1
  %cw = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %17, i32 0, i32 2
  %18 = bitcast %struct.gs_vector3_s* %cw to i8*
  %arrayidx11 = getelementptr inbounds [9 x float], [9 x float]* %values, i32 0, i64 6
  %19 = bitcast float* %arrayidx11 to i8*
  %call12 = call i8* @memcpy(i8* %18, i8* %19, i64 12) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = bitcast [9 x float]* %defaults to i8*
  call void @llvm.lifetime.end(i64 36, i8* %21) #1
  %22 = bitcast [9 x float]* %values to i8*
  call void @llvm.lifetime.end(i64 36, i8* %22) #1
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define i32 @dict_proc3_param(%struct.gs_memory_s* %mem, %struct.ref_s* %pdref, i8* %kstr, %struct.ref_s* %proc3) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pdref.addr = alloca %struct.ref_s*, align 8
  %kstr.addr = alloca i8*, align 8
  %proc3.addr = alloca %struct.ref_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %pdref, %struct.ref_s** %pdref.addr, align 8, !tbaa !1
  store i8* %kstr, i8** %kstr.addr, align 8, !tbaa !1
  store %struct.ref_s* %proc3, %struct.ref_s** %proc3.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %1 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %kstr.addr, align 8, !tbaa !1
  %3 = load %struct.ref_s*, %struct.ref_s** %proc3.addr, align 8, !tbaa !1
  %call = call i32 @dict_proc_array_param(%struct.gs_memory_s* %0, %struct.ref_s* %1, i8* %2, i32 3, %struct.ref_s* %3) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @cie_points_param(%struct.gs_memory_s* %mem, %struct.ref_s* %pdref, %struct.gs_cie_wb_s* %pwb) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pdref.addr = alloca %struct.ref_s*, align 8
  %pwb.addr = alloca %struct.gs_cie_wb_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %pdref, %struct.ref_s** %pdref.addr, align 8, !tbaa !1
  store %struct.gs_cie_wb_s* %pwb, %struct.gs_cie_wb_s** %pwb.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !1
  %3 = load %struct.gs_cie_wb_s*, %struct.gs_cie_wb_s** %pwb.addr, align 8, !tbaa !1
  %WhitePoint = getelementptr inbounds %struct.gs_cie_wb_s, %struct.gs_cie_wb_s* %3, i32 0, i32 0
  %4 = bitcast %struct.gs_vector3_s* %WhitePoint to float*
  %call = call i32 @dict_floats_param(%struct.gs_memory_s* %1, %struct.ref_s* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 3, float* %4, float* null) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %6 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !1
  %7 = load %struct.gs_cie_wb_s*, %struct.gs_cie_wb_s** %pwb.addr, align 8, !tbaa !1
  %BlackPoint = getelementptr inbounds %struct.gs_cie_wb_s, %struct.gs_cie_wb_s* %7, i32 0, i32 1
  %8 = bitcast %struct.gs_vector3_s* %BlackPoint to float*
  %call1 = call i32 @dict_floats_param(%struct.gs_memory_s* %5, %struct.ref_s* %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 3, float* %8, float* getelementptr inbounds (%struct.gs_vector3_s, %struct.gs_vector3_s* @BlackPoint_default, i32 0, i32 0)) #4
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %9 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %10 = load %struct.gs_cie_wb_s*, %struct.gs_cie_wb_s** %pwb.addr, align 8, !tbaa !1
  %WhitePoint3 = getelementptr inbounds %struct.gs_cie_wb_s, %struct.gs_cie_wb_s* %10, i32 0, i32 0
  %u = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %WhitePoint3, i32 0, i32 0
  %11 = load float, float* %u, align 4, !tbaa !19
  %cmp4 = fcmp ole float %11, 0.000000e+00
  br i1 %cmp4, label %if.then.23, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %if.end
  %12 = load %struct.gs_cie_wb_s*, %struct.gs_cie_wb_s** %pwb.addr, align 8, !tbaa !1
  %WhitePoint6 = getelementptr inbounds %struct.gs_cie_wb_s, %struct.gs_cie_wb_s* %12, i32 0, i32 0
  %v = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %WhitePoint6, i32 0, i32 1
  %13 = load float, float* %v, align 4, !tbaa !22
  %cmp7 = fcmp une float %13, 1.000000e+00
  br i1 %cmp7, label %if.then.23, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false.5
  %14 = load %struct.gs_cie_wb_s*, %struct.gs_cie_wb_s** %pwb.addr, align 8, !tbaa !1
  %WhitePoint9 = getelementptr inbounds %struct.gs_cie_wb_s, %struct.gs_cie_wb_s* %14, i32 0, i32 0
  %w = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %WhitePoint9, i32 0, i32 2
  %15 = load float, float* %w, align 4, !tbaa !23
  %cmp10 = fcmp ole float %15, 0.000000e+00
  br i1 %cmp10, label %if.then.23, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.8
  %16 = load %struct.gs_cie_wb_s*, %struct.gs_cie_wb_s** %pwb.addr, align 8, !tbaa !1
  %BlackPoint12 = getelementptr inbounds %struct.gs_cie_wb_s, %struct.gs_cie_wb_s* %16, i32 0, i32 1
  %u13 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %BlackPoint12, i32 0, i32 0
  %17 = load float, float* %u13, align 4, !tbaa !24
  %cmp14 = fcmp olt float %17, 0.000000e+00
  br i1 %cmp14, label %if.then.23, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false.11
  %18 = load %struct.gs_cie_wb_s*, %struct.gs_cie_wb_s** %pwb.addr, align 8, !tbaa !1
  %BlackPoint16 = getelementptr inbounds %struct.gs_cie_wb_s, %struct.gs_cie_wb_s* %18, i32 0, i32 1
  %v17 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %BlackPoint16, i32 0, i32 1
  %19 = load float, float* %v17, align 4, !tbaa !25
  %cmp18 = fcmp olt float %19, 0.000000e+00
  br i1 %cmp18, label %if.then.23, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %lor.lhs.false.15
  %20 = load %struct.gs_cie_wb_s*, %struct.gs_cie_wb_s** %pwb.addr, align 8, !tbaa !1
  %BlackPoint20 = getelementptr inbounds %struct.gs_cie_wb_s, %struct.gs_cie_wb_s* %20, i32 0, i32 1
  %w21 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %BlackPoint20, i32 0, i32 2
  %21 = load float, float* %w21, align 4, !tbaa !26
  %cmp22 = fcmp olt float %21, 0.000000e+00
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %lor.lhs.false.19, %lor.lhs.false.15, %lor.lhs.false.11, %lor.lhs.false.8, %lor.lhs.false.5, %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %lor.lhs.false.19
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.24, %if.then.23, %if.then
  %22 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define i32 @cie_table_param(%struct.ref_s* %ptref, %struct.gx_color_lookup_table_s* %pclt, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %ptref.addr = alloca %struct.ref_s*, align 8
  %pclt.addr = alloca %struct.gx_color_lookup_table_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %pta = alloca %struct.ref_s*, align 8
  %i = alloca i32, align 4
  %nbytes = alloca i32, align 4
  %code = alloca i32, align 4
  %table = alloca %struct.gs_const_string_s*, align 8
  %cleanup.dest.slot = alloca i32
  %d0 = alloca i32, align 4
  %d1 = alloca i32, align 4
  %ntables = alloca i32, align 4
  %psuba = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %ptref, %struct.ref_s** %ptref.addr, align 8, !tbaa !1
  store %struct.gx_color_lookup_table_s* %pclt, %struct.gx_color_lookup_table_s** %pclt.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_color_lookup_table_s*, %struct.gx_color_lookup_table_s** %pclt.addr, align 8, !tbaa !1
  %n1 = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %1, i32 0, i32 0
  %2 = load i32, i32* %n1, align 4, !tbaa !27
  store i32 %2, i32* %n, align 4, !tbaa !5
  %3 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gx_color_lookup_table_s*, %struct.gx_color_lookup_table_s** %pclt.addr, align 8, !tbaa !1
  %m2 = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %4, i32 0, i32 2
  %5 = load i32, i32* %m2, align 4, !tbaa !29
  store i32 %5, i32* %m, align 4, !tbaa !5
  %6 = bitcast %struct.ref_s** %pta to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.ref_s*, %struct.ref_s** %ptref.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 1
  %const_refs = bitcast %union.v* %value to %struct.ref_s**
  %8 = load %struct.ref_s*, %struct.ref_s** %const_refs, align 8, !tbaa !1
  store %struct.ref_s* %8, %struct.ref_s** %pta, align 8, !tbaa !1
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %nbytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast %struct.gs_const_string_s** %table to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %13 = load i32, i32* %i, align 4, !tbaa !5
  %14 = load i32, i32* %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %13, %14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %15 to i64
  %16 = load %struct.ref_s*, %struct.ref_s** %pta, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 %idxprom
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %17 = bitcast i16* %type_attrs to i8*
  %arrayidx3 = getelementptr inbounds i8, i8* %17, i64 1
  %18 = load i8, i8* %arrayidx3, align 1, !tbaa !7
  %conv = zext i8 %18 to i32
  %cmp4 = icmp eq i32 %conv, 11
  br i1 %cmp4, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.113

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %19 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom6 = sext i32 %19 to i64
  %20 = load %struct.ref_s*, %struct.ref_s** %pta, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 %idxprom6
  %value8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx7, i32 0, i32 1
  %intval = bitcast %union.v* %value8 to i64*
  %21 = load i64, i64* %intval, align 8, !tbaa !15
  %cmp9 = icmp sle i64 %21, 1
  br i1 %cmp9, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %22 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %22 to i64
  %23 = load %struct.ref_s*, %struct.ref_s** %pta, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i64 %idxprom11
  %value13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx12, i32 0, i32 1
  %intval14 = bitcast %union.v* %value13 to i64*
  %24 = load i64, i64* %intval14, align 8, !tbaa !15
  %cmp15 = icmp sgt i64 %24, 65535
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %lor.lhs.false, %do.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.113

if.end.18:                                        ; preds = %lor.lhs.false
  %25 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom19 = sext i32 %25 to i64
  %26 = load %struct.ref_s*, %struct.ref_s** %pta, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 %idxprom19
  %value21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx20, i32 0, i32 1
  %intval22 = bitcast %union.v* %value21 to i64*
  %27 = load i64, i64* %intval22, align 8, !tbaa !15
  %conv23 = trunc i64 %27 to i32
  %28 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom24 = sext i32 %28 to i64
  %29 = load %struct.gx_color_lookup_table_s*, %struct.gx_color_lookup_table_s** %pclt.addr, align 8, !tbaa !1
  %dims = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %29, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [4 x i32], [4 x i32]* %dims, i32 0, i64 %idxprom24
  store i32 %conv23, i32* %arrayidx25, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %if.end.18
  %30 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = load i32, i32* %m, align 4, !tbaa !5
  %32 = load i32, i32* %n, align 4, !tbaa !5
  %sub = sub nsw i32 %32, 2
  %idxprom26 = sext i32 %sub to i64
  %33 = load %struct.gx_color_lookup_table_s*, %struct.gx_color_lookup_table_s** %pclt.addr, align 8, !tbaa !1
  %dims27 = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %33, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [4 x i32], [4 x i32]* %dims27, i32 0, i64 %idxprom26
  %34 = load i32, i32* %arrayidx28, align 4, !tbaa !5
  %mul = mul nsw i32 %31, %34
  %35 = load i32, i32* %n, align 4, !tbaa !5
  %sub29 = sub nsw i32 %35, 1
  %idxprom30 = sext i32 %sub29 to i64
  %36 = load %struct.gx_color_lookup_table_s*, %struct.gx_color_lookup_table_s** %pclt.addr, align 8, !tbaa !1
  %dims31 = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %36, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [4 x i32], [4 x i32]* %dims31, i32 0, i64 %idxprom30
  %37 = load i32, i32* %arrayidx32, align 4, !tbaa !5
  %mul33 = mul nsw i32 %mul, %37
  store i32 %mul33, i32* %nbytes, align 4, !tbaa !5
  %38 = load i32, i32* %n, align 4, !tbaa !5
  %cmp34 = icmp eq i32 %38, 3
  br i1 %cmp34, label %if.then.36, label %if.else

if.then.36:                                       ; preds = %for.end
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %39, i32 0, i32 0
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !30
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %40, i32 0, i32 1
  %alloc_struct_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 12
  %41 = load i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct_array, align 8, !tbaa !33
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %stable_memory37 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %42, i32 0, i32 0
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory37, align 8, !tbaa !30
  %44 = load %struct.gx_color_lookup_table_s*, %struct.gx_color_lookup_table_s** %pclt.addr, align 8, !tbaa !1
  %dims38 = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %44, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [4 x i32], [4 x i32]* %dims38, i32 0, i64 0
  %45 = load i32, i32* %arrayidx39, align 4, !tbaa !5
  %call = call i8* %41(%struct.gs_memory_s* %43, i32 %45, %struct.gs_memory_struct_type_s* @st_const_string_element, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0)) #4
  %46 = bitcast i8* %call to %struct.gs_const_string_s*
  store %struct.gs_const_string_s* %46, %struct.gs_const_string_s** %table, align 8, !tbaa !1
  %47 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %table, align 8, !tbaa !1
  %cmp40 = icmp eq %struct.gs_const_string_s* %47, null
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.then.36
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.113

if.end.43:                                        ; preds = %if.then.36
  %48 = load %struct.ref_s*, %struct.ref_s** %pta, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i64 3
  %49 = load %struct.gx_color_lookup_table_s*, %struct.gx_color_lookup_table_s** %pclt.addr, align 8, !tbaa !1
  %dims44 = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %49, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [4 x i32], [4 x i32]* %dims44, i32 0, i64 0
  %50 = load i32, i32* %arrayidx45, align 4, !tbaa !5
  %51 = load i32, i32* %nbytes, align 4, !tbaa !5
  %52 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %table, align 8, !tbaa !1
  %call46 = call i32 @cie_3d_table_param(%struct.ref_s* %add.ptr, i32 %50, i32 %51, %struct.gs_const_string_s* %52) #4
  store i32 %call46, i32* %code, align 4, !tbaa !5
  br label %if.end.106

if.else:                                          ; preds = %for.end
  %53 = bitcast i32* %d0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %53) #1
  %54 = load %struct.gx_color_lookup_table_s*, %struct.gx_color_lookup_table_s** %pclt.addr, align 8, !tbaa !1
  %dims47 = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %54, i32 0, i32 1
  %arrayidx48 = getelementptr inbounds [4 x i32], [4 x i32]* %dims47, i32 0, i64 0
  %55 = load i32, i32* %arrayidx48, align 4, !tbaa !5
  store i32 %55, i32* %d0, align 4, !tbaa !5
  %56 = bitcast i32* %d1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %56) #1
  %57 = load %struct.gx_color_lookup_table_s*, %struct.gx_color_lookup_table_s** %pclt.addr, align 8, !tbaa !1
  %dims49 = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %57, i32 0, i32 1
  %arrayidx50 = getelementptr inbounds [4 x i32], [4 x i32]* %dims49, i32 0, i64 1
  %58 = load i32, i32* %arrayidx50, align 4, !tbaa !5
  store i32 %58, i32* %d1, align 4, !tbaa !5
  %59 = bitcast i32* %ntables to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #1
  %60 = load i32, i32* %d0, align 4, !tbaa !5
  %61 = load i32, i32* %d1, align 4, !tbaa !5
  %mul51 = mul nsw i32 %60, %61
  store i32 %mul51, i32* %ntables, align 4, !tbaa !5
  %62 = bitcast %struct.ref_s** %psuba to i8*
  call void @llvm.lifetime.start(i64 8, i8* %62) #1
  %63 = load %struct.ref_s*, %struct.ref_s** %pta, align 8, !tbaa !1
  %arrayidx52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %63, i64 4
  %tas53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx52, i32 0, i32 0
  %type_attrs54 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas53, i32 0, i32 0
  %64 = load i16, i16* %type_attrs54, align 2, !tbaa !12
  %conv55 = zext i16 %64 to i32
  %and = and i32 %conv55, 16160
  %cmp56 = icmp eq i32 %and, 1056
  br i1 %cmp56, label %if.end.68, label %if.then.58

if.then.58:                                       ; preds = %if.else
  %65 = load %struct.ref_s*, %struct.ref_s** %pta, align 8, !tbaa !1
  %arrayidx59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %65, i64 4
  %tas60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx59, i32 0, i32 0
  %type_attrs61 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas60, i32 0, i32 0
  %66 = bitcast i16* %type_attrs61 to i8*
  %arrayidx62 = getelementptr inbounds i8, i8* %66, i64 1
  %67 = load i8, i8* %arrayidx62, align 1, !tbaa !7
  %conv63 = zext i8 %67 to i32
  %cmp64 = icmp eq i32 %conv63, 4
  br i1 %cmp64, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.58
  %68 = load %struct.ref_s*, %struct.ref_s** %pta, align 8, !tbaa !1
  %arrayidx66 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %68, i64 4
  %call67 = call i32 @check_type_failed(%struct.ref_s* %arrayidx66) #4
  br label %cond.end

cond.false:                                       ; preds = %if.then.58
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call67, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.68:                                        ; preds = %if.else
  %69 = load %struct.ref_s*, %struct.ref_s** %pta, align 8, !tbaa !1
  %add.ptr69 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %69, i64 4
  %tas70 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr69, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas70, i32 0, i32 2
  %70 = load i32, i32* %rsize, align 4, !tbaa !8
  %71 = load i32, i32* %d0, align 4, !tbaa !5
  %cmp71 = icmp ne i32 %70, %71
  br i1 %cmp71, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.end.68
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.74:                                        ; preds = %if.end.68
  %72 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %stable_memory75 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %72, i32 0, i32 0
  %73 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory75, align 8, !tbaa !30
  %procs76 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %73, i32 0, i32 1
  %alloc_struct_array77 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs76, i32 0, i32 12
  %74 = load i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct_array77, align 8, !tbaa !33
  %75 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %stable_memory78 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %75, i32 0, i32 0
  %76 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory78, align 8, !tbaa !30
  %77 = load i32, i32* %ntables, align 4, !tbaa !5
  %call79 = call i8* %74(%struct.gs_memory_s* %76, i32 %77, %struct.gs_memory_struct_type_s* @st_const_string_element, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0)) #4
  %78 = bitcast i8* %call79 to %struct.gs_const_string_s*
  store %struct.gs_const_string_s* %78, %struct.gs_const_string_s** %table, align 8, !tbaa !1
  %79 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %table, align 8, !tbaa !1
  %cmp80 = icmp eq %struct.gs_const_string_s* %79, null
  br i1 %cmp80, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.end.74
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.83:                                        ; preds = %if.end.74
  %80 = load %struct.ref_s*, %struct.ref_s** %pta, align 8, !tbaa !1
  %arrayidx84 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %80, i64 4
  %value85 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx84, i32 0, i32 1
  %const_refs86 = bitcast %union.v* %value85 to %struct.ref_s**
  %81 = load %struct.ref_s*, %struct.ref_s** %const_refs86, align 8, !tbaa !1
  store %struct.ref_s* %81, %struct.ref_s** %psuba, align 8, !tbaa !1
  store i32 0, i32* %code, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.100, %if.end.83
  %82 = load i32, i32* %i, align 4, !tbaa !5
  %83 = load i32, i32* %d0, align 4, !tbaa !5
  %cmp88 = icmp slt i32 %82, %83
  br i1 %cmp88, label %for.body.90, label %for.end.102

for.body.90:                                      ; preds = %for.cond.87
  %84 = load %struct.ref_s*, %struct.ref_s** %psuba, align 8, !tbaa !1
  %85 = load i32, i32* %i, align 4, !tbaa !5
  %idx.ext = sext i32 %85 to i64
  %add.ptr91 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %84, i64 %idx.ext
  %86 = load i32, i32* %d1, align 4, !tbaa !5
  %87 = load i32, i32* %nbytes, align 4, !tbaa !5
  %88 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %table, align 8, !tbaa !1
  %89 = load i32, i32* %d1, align 4, !tbaa !5
  %90 = load i32, i32* %i, align 4, !tbaa !5
  %mul92 = mul nsw i32 %89, %90
  %idx.ext93 = sext i32 %mul92 to i64
  %add.ptr94 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %88, i64 %idx.ext93
  %call95 = call i32 @cie_3d_table_param(%struct.ref_s* %add.ptr91, i32 %86, i32 %87, %struct.gs_const_string_s* %add.ptr94) #4
  store i32 %call95, i32* %code, align 4, !tbaa !5
  %91 = load i32, i32* %code, align 4, !tbaa !5
  %cmp96 = icmp slt i32 %91, 0
  br i1 %cmp96, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %for.body.90
  br label %for.end.102

if.end.99:                                        ; preds = %for.body.90
  br label %for.inc.100

for.inc.100:                                      ; preds = %if.end.99
  %92 = load i32, i32* %i, align 4, !tbaa !5
  %inc101 = add nsw i32 %92, 1
  store i32 %inc101, i32* %i, align 4, !tbaa !5
  br label %for.cond.87

for.end.102:                                      ; preds = %if.then.98, %for.cond.87
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.102, %if.then.82, %if.then.73, %cond.end
  %93 = bitcast %struct.ref_s** %psuba to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #1
  %94 = bitcast i32* %ntables to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  %95 = bitcast i32* %d1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #1
  %96 = bitcast i32* %d0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.113 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.106

if.end.106:                                       ; preds = %cleanup.cont, %if.end.43
  %97 = load i32, i32* %code, align 4, !tbaa !5
  %cmp107 = icmp slt i32 %97, 0
  br i1 %cmp107, label %if.then.109, label %if.end.111

if.then.109:                                      ; preds = %if.end.106
  %98 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs110 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %98, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs110, i32 0, i32 2
  %99 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !34
  %100 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %101 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %table, align 8, !tbaa !1
  %102 = bitcast %struct.gs_const_string_s* %101 to i8*
  call void %99(%struct.gs_memory_s* %100, i8* %102, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0)) #4
  %103 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %103, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.113

if.end.111:                                       ; preds = %if.end.106
  %104 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %table, align 8, !tbaa !1
  %105 = load %struct.gx_color_lookup_table_s*, %struct.gx_color_lookup_table_s** %pclt.addr, align 8, !tbaa !1
  %table112 = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %105, i32 0, i32 3
  store %struct.gs_const_string_s* %104, %struct.gs_const_string_s** %table112, align 8, !tbaa !35
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.113

cleanup.113:                                      ; preds = %if.end.111, %if.then.109, %cleanup, %if.then.42, %if.then.17, %if.then
  %106 = bitcast %struct.gs_const_string_s** %table to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #1
  %107 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #1
  %108 = bitcast i32* %nbytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #1
  %109 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  %110 = bitcast %struct.ref_s** %pta to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #1
  %111 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #1
  %112 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #1
  %113 = load i32, i32* %retval
  ret i32 %113
}

; Function Attrs: nounwind uwtable
define internal i32 @cie_3d_table_param(%struct.ref_s* %ptable, i32 %count, i32 %nbytes, %struct.gs_const_string_s* %strings) #0 {
entry:
  %retval = alloca i32, align 4
  %ptable.addr = alloca %struct.ref_s*, align 8
  %count.addr = alloca i32, align 4
  %nbytes.addr = alloca i32, align 4
  %strings.addr = alloca %struct.gs_const_string_s*, align 8
  %rstrings = alloca %struct.ref_s*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %prt2 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %ptable, %struct.ref_s** %ptable.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !5
  store i32 %nbytes, i32* %nbytes.addr, align 4, !tbaa !5
  store %struct.gs_const_string_s* %strings, %struct.gs_const_string_s** %strings.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %rstrings to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.ref_s*, %struct.ref_s** %ptable.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %3 = load i16, i16* %type_attrs, align 2, !tbaa !12
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 16160
  %cmp = icmp eq i32 %and, 1056
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct.ref_s*, %struct.ref_s** %ptable.addr, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %5 = bitcast i16* %type_attrs3 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv4 = zext i8 %6 to i32
  %cmp5 = icmp eq i32 %conv4, 4
  br i1 %cmp5, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %7 = load %struct.ref_s*, %struct.ref_s** %ptable.addr, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %7) #4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.43

if.end:                                           ; preds = %entry
  %8 = load %struct.ref_s*, %struct.ref_s** %ptable.addr, align 8, !tbaa !1
  %tas7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas7, i32 0, i32 2
  %9 = load i32, i32* %rsize, align 4, !tbaa !8
  %10 = load i32, i32* %count.addr, align 4, !tbaa !5
  %cmp8 = icmp ne i32 %9, %10
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.43

if.end.11:                                        ; preds = %if.end
  %11 = load %struct.ref_s*, %struct.ref_s** %ptable.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %const_refs = bitcast %union.v* %value to %struct.ref_s**
  %12 = load %struct.ref_s*, %struct.ref_s** %const_refs, align 8, !tbaa !1
  store %struct.ref_s* %12, %struct.ref_s** %rstrings, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.11
  %13 = load i32, i32* %i, align 4, !tbaa !5
  %14 = load i32, i32* %count.addr, align 4, !tbaa !5
  %cmp12 = icmp ult i32 %13, %14
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = bitcast %struct.ref_s** %prt2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load %struct.ref_s*, %struct.ref_s** %rstrings, align 8, !tbaa !1
  %17 = load i32, i32* %i, align 4, !tbaa !5
  %idx.ext = zext i32 %17 to i64
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 %idx.ext
  store %struct.ref_s* %add.ptr, %struct.ref_s** %prt2, align 8, !tbaa !1
  %18 = load %struct.ref_s*, %struct.ref_s** %prt2, align 8, !tbaa !1
  %tas14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 0
  %type_attrs15 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas14, i32 0, i32 0
  %19 = load i16, i16* %type_attrs15, align 2, !tbaa !12
  %conv16 = zext i16 %19 to i32
  %and17 = and i32 %conv16, 16160
  %cmp18 = icmp eq i32 %and17, 4640
  br i1 %cmp18, label %if.end.32, label %if.then.20

if.then.20:                                       ; preds = %for.body
  %20 = load %struct.ref_s*, %struct.ref_s** %prt2, align 8, !tbaa !1
  %tas21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 0
  %type_attrs22 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas21, i32 0, i32 0
  %21 = bitcast i16* %type_attrs22 to i8*
  %arrayidx23 = getelementptr inbounds i8, i8* %21, i64 1
  %22 = load i8, i8* %arrayidx23, align 1, !tbaa !7
  %conv24 = zext i8 %22 to i32
  %cmp25 = icmp eq i32 %conv24, 18
  br i1 %cmp25, label %cond.false.29, label %cond.true.27

cond.true.27:                                     ; preds = %if.then.20
  %23 = load %struct.ref_s*, %struct.ref_s** %prt2, align 8, !tbaa !1
  %call28 = call i32 @check_type_failed(%struct.ref_s* %23) #4
  br label %cond.end.30

cond.false.29:                                    ; preds = %if.then.20
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.29, %cond.true.27
  %cond31 = phi i32 [ %call28, %cond.true.27 ], [ -7, %cond.false.29 ]
  store i32 %cond31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.32:                                        ; preds = %for.body
  %24 = load %struct.ref_s*, %struct.ref_s** %prt2, align 8, !tbaa !1
  %tas33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 0
  %rsize34 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas33, i32 0, i32 2
  %25 = load i32, i32* %rsize34, align 4, !tbaa !8
  %26 = load i32, i32* %nbytes.addr, align 4, !tbaa !5
  %cmp35 = icmp ne i32 %25, %26
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.32
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.38:                                        ; preds = %if.end.32
  %27 = load %struct.ref_s*, %struct.ref_s** %prt2, align 8, !tbaa !1
  %value39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value39 to i8**
  %28 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  %29 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = zext i32 %29 to i64
  %30 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %strings.addr, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %30, i64 %idxprom
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %arrayidx40, i32 0, i32 0
  store i8* %28, i8** %data, align 8, !tbaa !36
  %31 = load i32, i32* %nbytes.addr, align 4, !tbaa !5
  %32 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom41 = zext i32 %32 to i64
  %33 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %strings.addr, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %33, i64 %idxprom41
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %arrayidx42, i32 0, i32 1
  store i32 %31, i32* %size, align 4, !tbaa !38
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.38, %if.then.37, %cond.end.30
  %34 = bitcast %struct.ref_s** %prt2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.43 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %35 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %35, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.43

cleanup.43:                                       ; preds = %for.end, %cleanup, %if.then.10, %cond.end
  %36 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast %struct.ref_s** %rstrings to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = load i32, i32* %retval
  ret i32 %38
}

declare i32 @check_type_failed(%struct.ref_s*) #2

; Function Attrs: nounwind uwtable
define i32 @cie_set_finish(%struct.gs_context_state_s* %i_ctx_p, %struct.gs_color_space_s* %pcs, %struct.ref_cie_procs_s* %pcprocs, i32 %edepth, i32 %code) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pcprocs.addr = alloca %struct.ref_cie_procs_s*, align 8
  %edepth.addr = alloca i32, align 4
  %code.addr = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.ref_cie_procs_s* %pcprocs, %struct.ref_cie_procs_s** %pcprocs.addr, align 8, !tbaa !1
  store i32 %edepth, i32* %edepth.addr, align 4, !tbaa !5
  store i32 %code, i32* %code.addr, align 4, !tbaa !5
  %0 = load i32, i32* %code.addr, align 4, !tbaa !5
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 0
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !39
  %3 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %call = call i32 @gs_setcolorspace(%struct.gs_state_s* %2, %struct.gs_color_space_s* %3) #4
  store i32 %call, i32* %code.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  call void @rc_decrement_only_cs(%struct.gs_color_space_s* %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0)) #4
  %5 = load i32, i32* %code.addr, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %5, 0
  br i1 %cmp1, label %if.then.2, label %if.end.6

if.then.2:                                        ; preds = %if.end
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 25
  %stack4 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack3, i32 0, i32 0
  %call5 = call i32 @ref_stack_count(%struct.ref_stack_s* %stack4) #4
  %8 = load i32, i32* %edepth.addr, align 4, !tbaa !5
  %sub = sub i32 %call5, %8
  call void @ref_stack_pop(%struct.ref_stack_s* %stack, i32 %sub) #4
  %9 = load i32, i32* %code.addr, align 4, !tbaa !5
  store i32 %9, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs7 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 0
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs7, align 8, !tbaa !39
  %call8 = call i8* @gs_state_client_data(%struct.gs_state_s* %11) #4
  %12 = bitcast i8* %call8 to %struct.int_gstate_s*
  %colorspace = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %12, i32 0, i32 5
  %arrayidx = getelementptr inbounds [2 x %struct.ref_colorspace_s], [2 x %struct.ref_colorspace_s]* %colorspace, i32 0, i64 0
  %procs = getelementptr inbounds %struct.ref_colorspace_s, %struct.ref_colorspace_s* %arrayidx, i32 0, i32 1
  %cie = getelementptr inbounds %struct.ref_color_procs_s, %struct.ref_color_procs_s* %procs, i32 0, i32 0
  %13 = load %struct.ref_cie_procs_s*, %struct.ref_cie_procs_s** %pcprocs.addr, align 8, !tbaa !1
  %14 = bitcast %struct.ref_cie_procs_s* %cie to i8*
  %15 = bitcast %struct.ref_cie_procs_s* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 48, i32 8, i1 false), !tbaa.struct !48
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 26
  %stack9 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack9, i32 0, i32 0
  %17 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !49
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p, align 8, !tbaa !49
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack10 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 25
  %stack11 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack10, i32 0, i32 0
  %call12 = call i32 @ref_stack_count(%struct.ref_stack_s* %stack11) #4
  %19 = load i32, i32* %edepth.addr, align 4, !tbaa !5
  %cmp13 = icmp eq i32 %call12, %19
  %cond = select i1 %cmp13, i32 0, i32 5
  store i32 %cond, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.2
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare i32 @gs_setcolorspace(%struct.gs_state_s*, %struct.gs_color_space_s*) #2

declare void @rc_decrement_only_cs(%struct.gs_color_space_s*, i8*) #2

declare void @ref_stack_pop(%struct.ref_stack_s*, i32) #2

declare i32 @ref_stack_count(%struct.ref_stack_s*) #2

declare i8* @gs_state_client_data(%struct.gs_state_s*) #2

; Function Attrs: nounwind uwtable
define i32 @ciedefgspace(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %CIEDict, i64 %dictkey) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %CIEDict.addr = alloca %struct.ref_s*, align 8
  %dictkey.addr = alloca i64, align 8
  %op = alloca %struct.ref_s*, align 8
  %edepth = alloca i32, align 4
  %mem = alloca %struct.gs_memory_s*, align 8
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %procs = alloca %struct.ref_cie_procs_s, align 8
  %pcie = alloca %struct.gs_cie_defg_s*, align 8
  %code = alloca i32, align 4
  %ptref = alloca %struct.ref_s*, align 8
  %has_defg_procs = alloca i32, align 4
  %has_abc_procs = alloca i32, align 4
  %has_lmn_procs = alloca i32, align 4
  %imem = alloca %struct.gs_ref_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %CIEDict, %struct.ref_s** %CIEDict.addr, align 8, !tbaa !1
  store i64 %dictkey, i64* %dictkey.addr, align 8, !tbaa !15
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !49
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i32* %edepth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 25
  %stack1 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %call = call i32 @ref_stack_count(%struct.ref_stack_s* %stack1) #4
  store i32 %call, i32* %edepth, align 4, !tbaa !5
  %5 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 0
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !39
  %call2 = call %struct.gs_memory_s* @gs_state_memory(%struct.gs_state_s* %7) #4
  store %struct.gs_memory_s* %call2, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %8 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast %struct.ref_cie_procs_s* %procs to i8*
  call void @llvm.lifetime.start(i64 48, i8* %9) #1
  %10 = bitcast %struct.gs_cie_defg_s** %pcie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %12 = bitcast %struct.ref_s** %ptref to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i32* %has_defg_procs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %has_abc_procs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %has_lmn_procs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %18 = bitcast %struct.gs_memory_s* %17 to %struct.gs_ref_memory_s*
  store %struct.gs_ref_memory_s* %18, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 2
  %21 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !50
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %21
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %22, i32 0, i32 26
  %stack6 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack5, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !51
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %23 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack7 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %24, i32 0, i32 26
  %stack8 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack7, i32 0, i32 0
  %p9 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack8, i32 0, i32 0
  store %struct.ref_s* %23, %struct.ref_s** %p9, align 8, !tbaa !49
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs10 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %25, i32 0, i32 0
  %26 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs10, align 8, !tbaa !39
  %call11 = call i8* @gs_state_client_data(%struct.gs_state_s* %26) #4
  %27 = bitcast i8* %call11 to %struct.int_gstate_s*
  %colorspace = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %27, i32 0, i32 5
  %arrayidx = getelementptr inbounds [2 x %struct.ref_colorspace_s], [2 x %struct.ref_colorspace_s]* %colorspace, i32 0, i64 0
  %procs12 = getelementptr inbounds %struct.ref_colorspace_s, %struct.ref_colorspace_s* %arrayidx, i32 0, i32 1
  %cie = getelementptr inbounds %struct.ref_color_procs_s, %struct.ref_color_procs_s* %procs12, i32 0, i32 0
  %28 = bitcast %struct.ref_cie_procs_s* %procs to i8*
  %29 = bitcast %struct.ref_cie_procs_s* %cie to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 48, i32 8, i1 false), !tbaa.struct !48
  %30 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %cmp13 = icmp eq %struct.gs_color_space_s* %30, null
  br i1 %cmp13, label %if.then.14, label %if.else.49

if.then.14:                                       ; preds = %do.end
  %31 = load %struct.ref_s*, %struct.ref_s** %CIEDict.addr, align 8, !tbaa !1
  %call15 = call i32 @dict_find_string(%struct.ref_s* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), %struct.ref_s** %ptref) #4
  store i32 %call15, i32* %code, align 4, !tbaa !5
  %cmp16 = icmp sle i32 %call15, 0
  br i1 %cmp16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.then.14
  %32 = load i32, i32* %code, align 4, !tbaa !5
  %cmp18 = icmp slt i32 %32, 0
  br i1 %cmp18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.17
  %33 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.then.17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %33, %cond.true ], [ -15, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.then.14
  %34 = load %struct.ref_s*, %struct.ref_s** %ptref, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %35 = load i16, i16* %type_attrs, align 2, !tbaa !12
  %conv = zext i16 %35 to i32
  %and = and i32 %conv, 16160
  %cmp20 = icmp eq i32 %and, 1056
  br i1 %cmp20, label %if.end.34, label %if.then.22

if.then.22:                                       ; preds = %if.end.19
  %36 = load %struct.ref_s*, %struct.ref_s** %ptref, align 8, !tbaa !1
  %tas23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i32 0, i32 0
  %type_attrs24 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas23, i32 0, i32 0
  %37 = bitcast i16* %type_attrs24 to i8*
  %arrayidx25 = getelementptr inbounds i8, i8* %37, i64 1
  %38 = load i8, i8* %arrayidx25, align 1, !tbaa !7
  %conv26 = zext i8 %38 to i32
  %cmp27 = icmp eq i32 %conv26, 4
  br i1 %cmp27, label %cond.false.31, label %cond.true.29

cond.true.29:                                     ; preds = %if.then.22
  %39 = load %struct.ref_s*, %struct.ref_s** %ptref, align 8, !tbaa !1
  %call30 = call i32 @check_type_failed(%struct.ref_s* %39) #4
  br label %cond.end.32

cond.false.31:                                    ; preds = %if.then.22
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.31, %cond.true.29
  %cond33 = phi i32 [ %call30, %cond.true.29 ], [ -7, %cond.false.31 ]
  store i32 %cond33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %if.end.19
  %40 = load %struct.ref_s*, %struct.ref_s** %ptref, align 8, !tbaa !1
  %tas35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas35, i32 0, i32 2
  %41 = load i32, i32* %rsize, align 4, !tbaa !8
  %cmp36 = icmp ne i32 %41, 5
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.34
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.39:                                        ; preds = %if.end.34
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %42, i32 0, i32 0
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !30
  %call40 = call i32 @gs_cspace_build_CIEDEFG(%struct.gs_color_space_s** %pcs, i8* null, %struct.gs_memory_s* %43) #4
  store i32 %call40, i32* %code, align 4, !tbaa !5
  %44 = load i32, i32* %code, align 4, !tbaa !5
  %cmp41 = icmp slt i32 %44, 0
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.39
  %45 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %45, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.44:                                        ; preds = %if.end.39
  %46 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %46, i32 0, i32 7
  %defg = bitcast %union.anon.0* %params to %struct.gs_cie_defg_s**
  %47 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %defg, align 8, !tbaa !1
  store %struct.gs_cie_defg_s* %47, %struct.gs_cie_defg_s** %pcie, align 8, !tbaa !1
  %48 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie, align 8, !tbaa !1
  %Table = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %48, i32 0, i32 9
  %n = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %Table, i32 0, i32 0
  store i32 4, i32* %n, align 4, !tbaa !52
  %49 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie, align 8, !tbaa !1
  %Table45 = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %49, i32 0, i32 9
  %m = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %Table45, i32 0, i32 2
  store i32 3, i32* %m, align 4, !tbaa !65
  %50 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %51 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %52 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie, align 8, !tbaa !1
  %53 = bitcast %struct.gs_cie_defg_s* %52 to i8*
  %call46 = call i32 @cie_cache_push_finish(%struct.gs_context_state_s* %50, i32 (%struct.gs_context_state_s*)* @cie_defg_finish, %struct.gs_ref_memory_s* %51, i8* %53) #4
  store i32 %call46, i32* %code, align 4, !tbaa !5
  %54 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %55 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %55, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %56 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !66
  %57 = bitcast %struct.gs_ref_memory_s* %56 to %struct.gs_memory_s*
  %58 = load %struct.ref_s*, %struct.ref_s** %CIEDict.addr, align 8, !tbaa !1
  %59 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie, align 8, !tbaa !1
  %60 = load %struct.ref_s*, %struct.ref_s** %ptref, align 8, !tbaa !1
  %call47 = call i32 @cie_defg_param(%struct.gs_context_state_s* %54, %struct.gs_memory_s* %57, %struct.ref_s* %58, %struct.gs_cie_defg_s* %59, %struct.ref_cie_procs_s* %procs, i32* %has_abc_procs, i32* %has_lmn_procs, i32* %has_defg_procs, %struct.ref_s* %60) #4
  store i32 %call47, i32* %code, align 4, !tbaa !5
  %61 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs48 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %61, i32 0, i32 0
  %62 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs48, align 8, !tbaa !39
  %63 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %64 = load i64, i64* %dictkey.addr, align 8, !tbaa !15
  call void @gsicc_add_cs(%struct.gs_state_s* %62, %struct.gs_color_space_s* %63, i64 %64) #4
  br label %if.end.61

if.else.49:                                       ; preds = %do.end
  br label %do.body.50

do.body.50:                                       ; preds = %if.else.49
  %65 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_color_space_s* %65, null
  br i1 %tobool, label %if.then.51, label %if.end.58

if.then.51:                                       ; preds = %do.body.50
  br label %do.body.52

do.body.52:                                       ; preds = %if.then.51
  %66 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %66, i32 0, i32 1
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %67 = load i64, i64* %ref_count, align 8, !tbaa !67
  %inc = add nsw i64 %67, 1
  store i64 %inc, i64* %ref_count, align 8, !tbaa !67
  br label %do.body.53

do.body.53:                                       ; preds = %do.body.52
  br label %do.cond.54

do.cond.54:                                       ; preds = %do.body.53
  br label %do.end.55

do.end.55:                                        ; preds = %do.cond.54
  br label %do.cond.56

do.cond.56:                                       ; preds = %do.end.55
  br label %do.end.57

do.end.57:                                        ; preds = %do.cond.56
  br label %if.end.58

if.end.58:                                        ; preds = %do.end.57, %do.body.50
  br label %do.cond.59

do.cond.59:                                       ; preds = %if.end.58
  br label %do.end.60

do.end.60:                                        ; preds = %do.cond.59
  br label %if.end.61

if.end.61:                                        ; preds = %do.end.60, %if.end.44
  %68 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %69 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %70 = load i32, i32* %edepth, align 4, !tbaa !5
  %71 = load i32, i32* %code, align 4, !tbaa !5
  %call62 = call i32 @cie_set_finish(%struct.gs_context_state_s* %68, %struct.gs_color_space_s* %69, %struct.ref_cie_procs_s* %procs, i32 %70, i32 %71) #4
  store i32 %call62, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.61, %if.then.43, %if.then.38, %cond.end.32, %cond.end, %if.then
  %72 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = bitcast i32* %has_lmn_procs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = bitcast i32* %has_abc_procs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast i32* %has_defg_procs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %76 = bitcast %struct.ref_s** %ptref to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %77 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  %78 = bitcast %struct.gs_cie_defg_s** %pcie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %79 = bitcast %struct.ref_cie_procs_s* %procs to i8*
  call void @llvm.lifetime.end(i64 48, i8* %79) #1
  %80 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #1
  %81 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  %82 = bitcast i32* %edepth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  %83 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #1
  %84 = load i32, i32* %retval
  ret i32 %84
}

declare %struct.gs_memory_s* @gs_state_memory(%struct.gs_state_s*) #2

declare i32 @gs_cspace_build_CIEDEFG(%struct.gs_color_space_s**, i8*, %struct.gs_memory_s*) #2

; Function Attrs: nounwind uwtable
define i32 @cie_cache_push_finish(%struct.gs_context_state_s* %i_ctx_p, i32 (%struct.gs_context_state_s*)* %finish_proc, %struct.gs_ref_memory_s* %imem, i8* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %finish_proc.addr = alloca i32 (%struct.gs_context_state_s*)*, align 8
  %imem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %data.addr = alloca i8*, align 8
  %es_code_ = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 (%struct.gs_context_state_s*)* %finish_proc, i32 (%struct.gs_context_state_s*)** %finish_proc.addr, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %imem, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %1 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !69
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %2, i32 0, i32 25
  %stack2 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack1, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 2
  %3 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !70
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 -2
  %cmp = icmp ugt %struct.ref_s* %1, %add.ptr
  br i1 %cmp, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %4 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 25
  %stack4 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack3, i32 0, i32 0
  %call = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack4, i32 2) #4
  store i32 %call, i32* %es_code_, align 4, !tbaa !5
  %6 = load i32, i32* %es_code_, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %6, 0
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %7 = load i32, i32* %es_code_, align 4, !tbaa !5
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.6
  %8 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.7

if.end.7:                                         ; preds = %cleanup.cont, %entry
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack8 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 25
  %stack9 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack8, i32 0, i32 0
  %p10 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack9, i32 0, i32 0
  %10 = load %struct.ref_s*, %struct.ref_s** %p10, align 8, !tbaa !69
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p10, align 8, !tbaa !69
  %11 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %finish_proc.addr, align 8, !tbaa !1
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack11 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 25
  %stack12 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack11, i32 0, i32 0
  %p13 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack12, i32 0, i32 0
  %13 = load %struct.ref_s*, %struct.ref_s** %p13, align 8, !tbaa !69
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 1
  %opproc = bitcast %union.v* %value to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* %11, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack14 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 25
  %stack15 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack14, i32 0, i32 0
  %p16 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack15, i32 0, i32 0
  %15 = load %struct.ref_s*, %struct.ref_s** %p16, align 8, !tbaa !69
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 3968, i16* %type_attrs, align 2, !tbaa !12
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack17 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 25
  %stack18 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack17, i32 0, i32 0
  %p19 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack18, i32 0, i32 0
  %17 = load %struct.ref_s*, %struct.ref_s** %p19, align 8, !tbaa !69
  %tas20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas20, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !8
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack21 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 25
  %stack22 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack21, i32 0, i32 0
  %p23 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack22, i32 0, i32 0
  %19 = load %struct.ref_s*, %struct.ref_s** %p23, align 8, !tbaa !69
  %incdec.ptr24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 1
  store %struct.ref_s* %incdec.ptr24, %struct.ref_s** %p23, align 8, !tbaa !69
  %20 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %21 = bitcast i8* %20 to %struct.obj_header_s*
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack25 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %22, i32 0, i32 25
  %stack26 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack25, i32 0, i32 0
  %p27 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack26, i32 0, i32 0
  %23 = load %struct.ref_s*, %struct.ref_s** %p27, align 8, !tbaa !69
  %value28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 1
  %pstruct = bitcast %union.v* %value28 to %struct.obj_header_s**
  store %struct.obj_header_s* %21, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %24 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %call29 = call i32 @imemory_space(%struct.gs_ref_memory_s* %24) #4
  %add = add i32 2048, %call29
  %conv = trunc i32 %add to i16
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack30 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %25, i32 0, i32 25
  %stack31 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack30, i32 0, i32 0
  %p32 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack31, i32 0, i32 0
  %26 = load %struct.ref_s*, %struct.ref_s** %p32, align 8, !tbaa !69
  %tas33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 0
  %type_attrs34 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas33, i32 0, i32 0
  store i16 %conv, i16* %type_attrs34, align 2, !tbaa !12
  store i32 5, i32* %retval
  br label %return

return:                                           ; preds = %if.end.7, %cleanup
  %27 = load i32, i32* %retval
  ret i32 %27

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @cie_defg_finish(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %pcie = alloca %struct.gs_cie_defg_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !49
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_cie_defg_s** %pcie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %5 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %6 = bitcast %struct.obj_header_s* %5 to %struct.gs_cie_defg_s*
  store %struct.gs_cie_defg_s* %6, %struct.gs_cie_defg_s** %pcie, align 8, !tbaa !1
  %7 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie, align 8, !tbaa !1
  %DecodeDEFG = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %7, i32 0, i32 7
  %8 = bitcast %struct.gs_cie_defg_proc4_s* %DecodeDEFG to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* bitcast (%struct.gs_cie_defg_proc4_s* @DecodeDEFG_from_cache to i8*), i64 32, i32 8, i1 false), !tbaa.struct !71
  %9 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie, align 8, !tbaa !1
  %DecodeABC = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %9, i32 0, i32 3
  %10 = bitcast %struct.gs_cie_abc_proc3_s* %DecodeABC to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* bitcast (%struct.gs_cie_abc_proc3_s* @DecodeABC_from_cache to i8*), i64 24, i32 8, i1 false), !tbaa.struct !72
  %11 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie, align 8, !tbaa !1
  %common = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %11, i32 0, i32 0
  %DecodeLMN = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common, i32 0, i32 3
  %12 = bitcast %struct.gs_cie_common_proc3_s* %DecodeLMN to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* bitcast (%struct.gs_cie_common_proc3_s* @DecodeLMN_from_cache to i8*), i64 24, i32 8, i1 false), !tbaa.struct !72
  %13 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie, align 8, !tbaa !1
  call void @gs_cie_defg_complete(%struct.gs_cie_defg_s* %13) #4
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %p3 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 0
  %15 = load %struct.ref_s*, %struct.ref_s** %p3, align 8, !tbaa !49
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p3, align 8, !tbaa !49
  %16 = bitcast %struct.gs_cie_defg_s** %pcie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @cie_defg_param(%struct.gs_context_state_s* %i_ctx_p, %struct.gs_memory_s* %mem, %struct.ref_s* %pdref, %struct.gs_cie_defg_s* %pcie, %struct.ref_cie_procs_s* %pcprocs, i32* %has_abc_procs, i32* %has_lmn_procs, i32* %has_defg_procs, %struct.ref_s* %ptref) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pdref.addr = alloca %struct.ref_s*, align 8
  %pcie.addr = alloca %struct.gs_cie_defg_s*, align 8
  %pcprocs.addr = alloca %struct.ref_cie_procs_s*, align 8
  %has_abc_procs.addr = alloca i32*, align 8
  %has_lmn_procs.addr = alloca i32*, align 8
  %has_defg_procs.addr = alloca i32*, align 8
  %ptref.addr = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %imem = alloca %struct.gs_ref_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %pdref, %struct.ref_s** %pdref.addr, align 8, !tbaa !1
  store %struct.gs_cie_defg_s* %pcie, %struct.gs_cie_defg_s** %pcie.addr, align 8, !tbaa !1
  store %struct.ref_cie_procs_s* %pcprocs, %struct.ref_cie_procs_s** %pcprocs.addr, align 8, !tbaa !1
  store i32* %has_abc_procs, i32** %has_abc_procs.addr, align 8, !tbaa !1
  store i32* %has_lmn_procs, i32** %has_lmn_procs.addr, align 8, !tbaa !1
  store i32* %has_defg_procs, i32** %has_defg_procs.addr, align 8, !tbaa !1
  store %struct.ref_s* %ptref, %struct.ref_s** %ptref.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s* %2 to %struct.gs_ref_memory_s*
  store %struct.gs_ref_memory_s* %3, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %6 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !1
  %7 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gs_cie_defg_s* %7 to %struct.gs_cie_abc_s*
  %9 = load %struct.ref_cie_procs_s*, %struct.ref_cie_procs_s** %pcprocs.addr, align 8, !tbaa !1
  %10 = load i32*, i32** %has_abc_procs.addr, align 8, !tbaa !1
  %11 = load i32*, i32** %has_lmn_procs.addr, align 8, !tbaa !1
  %call = call i32 @cie_abc_param(%struct.gs_context_state_s* %4, %struct.gs_memory_s* %5, %struct.ref_s* %6, %struct.gs_cie_abc_s* %8, %struct.ref_cie_procs_s* %9, i32* %10, i32* %11) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %12 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %15 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !1
  %16 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie.addr, align 8, !tbaa !1
  %RangeDEFG = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %16, i32 0, i32 6
  %ranges = getelementptr inbounds %struct.gs_range4_s, %struct.gs_range4_s* %RangeDEFG, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x %struct.gs_range_s], [4 x %struct.gs_range_s]* %ranges, i32 0, i32 0
  %call1 = call i32 @dict_ranges_param(%struct.gs_memory_s* %14, %struct.ref_s* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i32 4, %struct.gs_range_s* %arraydecay) #4
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %17 = load i32, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %17, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %18 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %20 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !1
  %21 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie.addr, align 8, !tbaa !1
  %RangeHIJK = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %21, i32 0, i32 8
  %ranges5 = getelementptr inbounds %struct.gs_range4_s, %struct.gs_range4_s* %RangeHIJK, i32 0, i32 0
  %arraydecay6 = getelementptr inbounds [4 x %struct.gs_range_s], [4 x %struct.gs_range_s]* %ranges5, i32 0, i32 0
  %call7 = call i32 @dict_ranges_param(%struct.gs_memory_s* %19, %struct.ref_s* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i32 4, %struct.gs_range_s* %arraydecay6) #4
  store i32 %call7, i32* %code, align 4, !tbaa !5
  %22 = load i32, i32* %code, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %22, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.4
  %23 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end.4
  %24 = load %struct.ref_s*, %struct.ref_s** %ptref.addr, align 8, !tbaa !1
  %25 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie.addr, align 8, !tbaa !1
  %Table = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %25, i32 0, i32 9
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call11 = call i32 @cie_table_param(%struct.ref_s* %24, %struct.gx_color_lookup_table_s* %Table, %struct.gs_memory_s* %26) #4
  store i32 %call11, i32* %code, align 4, !tbaa !5
  %27 = load i32, i32* %code, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %27, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.10
  %28 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.end.10
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %30 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !1
  %31 = load %struct.ref_cie_procs_s*, %struct.ref_cie_procs_s** %pcprocs.addr, align 8, !tbaa !1
  %PreDecode = getelementptr inbounds %struct.ref_cie_procs_s, %struct.ref_cie_procs_s* %31, i32 0, i32 0
  %DEFG = bitcast %union.anon.8* %PreDecode to %struct.ref_s*
  %call15 = call i32 @dict_proc_array_param(%struct.gs_memory_s* %29, %struct.ref_s* %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i32 4, %struct.ref_s* %DEFG) #4
  store i32 %call15, i32* %code, align 4, !tbaa !5
  %32 = load i32, i32* %code, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %32, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.14
  %33 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.end.14
  %34 = load i32, i32* %code, align 4, !tbaa !5
  %tobool = icmp ne i32 %34, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %35 = load i32*, i32** %has_defg_procs.addr, align 8, !tbaa !1
  store i32 %lnot.ext, i32* %35, align 4, !tbaa !5
  %36 = load i32*, i32** %has_defg_procs.addr, align 8, !tbaa !1
  %37 = load i32, i32* %36, align 4, !tbaa !5
  %tobool19 = icmp ne i32 %37, 0
  br i1 %tobool19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %if.end.18
  %38 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %39 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie.addr, align 8, !tbaa !1
  %RangeDEFG21 = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %39, i32 0, i32 6
  %ranges22 = getelementptr inbounds %struct.gs_range4_s, %struct.gs_range4_s* %RangeDEFG21, i32 0, i32 0
  %arraydecay23 = getelementptr inbounds [4 x %struct.gs_range_s], [4 x %struct.gs_range_s]* %ranges22, i32 0, i32 0
  %40 = load %struct.ref_cie_procs_s*, %struct.ref_cie_procs_s** %pcprocs.addr, align 8, !tbaa !1
  %PreDecode24 = getelementptr inbounds %struct.ref_cie_procs_s, %struct.ref_cie_procs_s* %40, i32 0, i32 0
  %DEFG25 = bitcast %union.anon.8* %PreDecode24 to %struct.ref_s*
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %DEFG25, i32 0, i32 1
  %const_refs = bitcast %union.v* %value to %struct.ref_s**
  %41 = load %struct.ref_s*, %struct.ref_s** %const_refs, align 8, !tbaa !1
  %42 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie.addr, align 8, !tbaa !1
  %caches_defg = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %42, i32 0, i32 10
  %DecodeDEFG = getelementptr inbounds %struct.anon.2, %struct.anon.2* %caches_defg, i32 0, i32 0
  %arraydecay26 = getelementptr inbounds [4 x %union.gx_cie_scalar_cache_s], [4 x %union.gx_cie_scalar_cache_s]* %DecodeDEFG, i32 0, i32 0
  %floats = bitcast %union.gx_cie_scalar_cache_s* %arraydecay26 to %struct.cie_cache_floats_s*
  %43 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie.addr, align 8, !tbaa !1
  %caches_defg27 = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %43, i32 0, i32 10
  %DecodeDEFG28 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %caches_defg27, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x %union.gx_cie_scalar_cache_s], [4 x %union.gx_cie_scalar_cache_s]* %DecodeDEFG28, i32 0, i64 1
  %floats29 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx to %struct.cie_cache_floats_s*
  %44 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie.addr, align 8, !tbaa !1
  %caches_defg30 = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %44, i32 0, i32 10
  %DecodeDEFG31 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %caches_defg30, i32 0, i32 0
  %arrayidx32 = getelementptr inbounds [4 x %union.gx_cie_scalar_cache_s], [4 x %union.gx_cie_scalar_cache_s]* %DecodeDEFG31, i32 0, i64 2
  %floats33 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx32 to %struct.cie_cache_floats_s*
  %45 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie.addr, align 8, !tbaa !1
  %caches_defg34 = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %45, i32 0, i32 10
  %DecodeDEFG35 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %caches_defg34, i32 0, i32 0
  %arrayidx36 = getelementptr inbounds [4 x %union.gx_cie_scalar_cache_s], [4 x %union.gx_cie_scalar_cache_s]* %DecodeDEFG35, i32 0, i64 3
  %floats37 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx36 to %struct.cie_cache_floats_s*
  %46 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie.addr, align 8, !tbaa !1
  %47 = bitcast %struct.gs_cie_defg_s* %46 to i8*
  %48 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %call38 = call i32 @cieicc_prepare_caches(%struct.gs_context_state_s* %38, %struct.gs_range_s* %arraydecay23, %struct.ref_s* %41, %struct.cie_cache_floats_s* %floats, %struct.cie_cache_floats_s* %floats29, %struct.cie_cache_floats_s* %floats33, %struct.cie_cache_floats_s* %floats37, i8* %47, %struct.gs_ref_memory_s* %48, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0)) #4
  br label %if.end.61

if.else:                                          ; preds = %if.end.18
  %49 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie.addr, align 8, !tbaa !1
  %caches_defg39 = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %49, i32 0, i32 10
  %DecodeDEFG40 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %caches_defg39, i32 0, i32 0
  %arraydecay41 = getelementptr inbounds [4 x %union.gx_cie_scalar_cache_s], [4 x %union.gx_cie_scalar_cache_s]* %DecodeDEFG40, i32 0, i32 0
  %floats42 = bitcast %union.gx_cie_scalar_cache_s* %arraydecay41 to %struct.cie_cache_floats_s*
  %params = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats42, i32 0, i32 0
  %is_identity = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params, i32 0, i32 0
  store i32 1, i32* %is_identity, align 4, !tbaa !73
  %50 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie.addr, align 8, !tbaa !1
  %caches_defg43 = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %50, i32 0, i32 10
  %DecodeDEFG44 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %caches_defg43, i32 0, i32 0
  %arrayidx45 = getelementptr inbounds [4 x %union.gx_cie_scalar_cache_s], [4 x %union.gx_cie_scalar_cache_s]* %DecodeDEFG44, i32 0, i64 1
  %floats46 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx45 to %struct.cie_cache_floats_s*
  %params47 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats46, i32 0, i32 0
  %is_identity48 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params47, i32 0, i32 0
  store i32 1, i32* %is_identity48, align 4, !tbaa !73
  %51 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie.addr, align 8, !tbaa !1
  %caches_defg49 = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %51, i32 0, i32 10
  %DecodeDEFG50 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %caches_defg49, i32 0, i32 0
  %arrayidx51 = getelementptr inbounds [4 x %union.gx_cie_scalar_cache_s], [4 x %union.gx_cie_scalar_cache_s]* %DecodeDEFG50, i32 0, i64 2
  %floats52 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx51 to %struct.cie_cache_floats_s*
  %params53 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats52, i32 0, i32 0
  %is_identity54 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params53, i32 0, i32 0
  store i32 1, i32* %is_identity54, align 4, !tbaa !73
  %52 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie.addr, align 8, !tbaa !1
  %caches_defg55 = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %52, i32 0, i32 10
  %DecodeDEFG56 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %caches_defg55, i32 0, i32 0
  %arrayidx57 = getelementptr inbounds [4 x %union.gx_cie_scalar_cache_s], [4 x %union.gx_cie_scalar_cache_s]* %DecodeDEFG56, i32 0, i64 3
  %floats58 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx57 to %struct.cie_cache_floats_s*
  %params59 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats58, i32 0, i32 0
  %is_identity60 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params59, i32 0, i32 0
  store i32 1, i32* %is_identity60, align 4, !tbaa !73
  br label %if.end.61

if.end.61:                                        ; preds = %if.else, %if.then.20
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.61, %if.then.17, %if.then.13, %if.then.9, %if.then.3, %if.then
  %53 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  %55 = load i32, i32* %retval
  ret i32 %55
}

declare void @gsicc_add_cs(%struct.gs_state_s*, %struct.gs_color_space_s*, i64) #2

; Function Attrs: nounwind uwtable
define i32 @ciedefspace(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %CIEDict, i64 %dictkey) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %CIEDict.addr = alloca %struct.ref_s*, align 8
  %dictkey.addr = alloca i64, align 8
  %op = alloca %struct.ref_s*, align 8
  %edepth = alloca i32, align 4
  %mem = alloca %struct.gs_memory_s*, align 8
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %procs = alloca %struct.ref_cie_procs_s, align 8
  %pcie = alloca %struct.gs_cie_def_s*, align 8
  %code = alloca i32, align 4
  %ptref = alloca %struct.ref_s*, align 8
  %has_def_procs = alloca i32, align 4
  %has_lmn_procs = alloca i32, align 4
  %has_abc_procs = alloca i32, align 4
  %imem = alloca %struct.gs_ref_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %CIEDict, %struct.ref_s** %CIEDict.addr, align 8, !tbaa !1
  store i64 %dictkey, i64* %dictkey.addr, align 8, !tbaa !15
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !49
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i32* %edepth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 25
  %stack1 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %call = call i32 @ref_stack_count(%struct.ref_stack_s* %stack1) #4
  store i32 %call, i32* %edepth, align 4, !tbaa !5
  %5 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 0
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !39
  %call2 = call %struct.gs_memory_s* @gs_state_memory(%struct.gs_state_s* %7) #4
  store %struct.gs_memory_s* %call2, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %8 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast %struct.ref_cie_procs_s* %procs to i8*
  call void @llvm.lifetime.start(i64 48, i8* %9) #1
  %10 = bitcast %struct.gs_cie_def_s** %pcie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %12 = bitcast %struct.ref_s** %ptref to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i32* %has_def_procs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %has_lmn_procs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %has_abc_procs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %18 = bitcast %struct.gs_memory_s* %17 to %struct.gs_ref_memory_s*
  store %struct.gs_ref_memory_s* %18, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 2
  %21 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !50
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %21
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %22, i32 0, i32 26
  %stack6 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack5, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !51
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %23 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack7 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %24, i32 0, i32 26
  %stack8 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack7, i32 0, i32 0
  %p9 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack8, i32 0, i32 0
  store %struct.ref_s* %23, %struct.ref_s** %p9, align 8, !tbaa !49
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs10 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %25, i32 0, i32 0
  %26 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs10, align 8, !tbaa !39
  %call11 = call i8* @gs_state_client_data(%struct.gs_state_s* %26) #4
  %27 = bitcast i8* %call11 to %struct.int_gstate_s*
  %colorspace = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %27, i32 0, i32 5
  %arrayidx = getelementptr inbounds [2 x %struct.ref_colorspace_s], [2 x %struct.ref_colorspace_s]* %colorspace, i32 0, i64 0
  %procs12 = getelementptr inbounds %struct.ref_colorspace_s, %struct.ref_colorspace_s* %arrayidx, i32 0, i32 1
  %cie = getelementptr inbounds %struct.ref_color_procs_s, %struct.ref_color_procs_s* %procs12, i32 0, i32 0
  %28 = bitcast %struct.ref_cie_procs_s* %procs to i8*
  %29 = bitcast %struct.ref_cie_procs_s* %cie to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 48, i32 8, i1 false), !tbaa.struct !48
  %30 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %cmp13 = icmp eq %struct.gs_color_space_s* %30, null
  br i1 %cmp13, label %if.then.14, label %if.else.49

if.then.14:                                       ; preds = %do.end
  %31 = load %struct.ref_s*, %struct.ref_s** %CIEDict.addr, align 8, !tbaa !1
  %call15 = call i32 @dict_find_string(%struct.ref_s* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), %struct.ref_s** %ptref) #4
  store i32 %call15, i32* %code, align 4, !tbaa !5
  %cmp16 = icmp sle i32 %call15, 0
  br i1 %cmp16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.then.14
  %32 = load i32, i32* %code, align 4, !tbaa !5
  %cmp18 = icmp slt i32 %32, 0
  br i1 %cmp18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.17
  %33 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.then.17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %33, %cond.true ], [ -15, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.then.14
  %34 = load %struct.ref_s*, %struct.ref_s** %ptref, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %35 = load i16, i16* %type_attrs, align 2, !tbaa !12
  %conv = zext i16 %35 to i32
  %and = and i32 %conv, 16160
  %cmp20 = icmp eq i32 %and, 1056
  br i1 %cmp20, label %if.end.34, label %if.then.22

if.then.22:                                       ; preds = %if.end.19
  %36 = load %struct.ref_s*, %struct.ref_s** %ptref, align 8, !tbaa !1
  %tas23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i32 0, i32 0
  %type_attrs24 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas23, i32 0, i32 0
  %37 = bitcast i16* %type_attrs24 to i8*
  %arrayidx25 = getelementptr inbounds i8, i8* %37, i64 1
  %38 = load i8, i8* %arrayidx25, align 1, !tbaa !7
  %conv26 = zext i8 %38 to i32
  %cmp27 = icmp eq i32 %conv26, 4
  br i1 %cmp27, label %cond.false.31, label %cond.true.29

cond.true.29:                                     ; preds = %if.then.22
  %39 = load %struct.ref_s*, %struct.ref_s** %ptref, align 8, !tbaa !1
  %call30 = call i32 @check_type_failed(%struct.ref_s* %39) #4
  br label %cond.end.32

cond.false.31:                                    ; preds = %if.then.22
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.31, %cond.true.29
  %cond33 = phi i32 [ %call30, %cond.true.29 ], [ -7, %cond.false.31 ]
  store i32 %cond33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %if.end.19
  %40 = load %struct.ref_s*, %struct.ref_s** %ptref, align 8, !tbaa !1
  %tas35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas35, i32 0, i32 2
  %41 = load i32, i32* %rsize, align 4, !tbaa !8
  %cmp36 = icmp ne i32 %41, 4
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.34
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.39:                                        ; preds = %if.end.34
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %42, i32 0, i32 0
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !30
  %call40 = call i32 @gs_cspace_build_CIEDEF(%struct.gs_color_space_s** %pcs, i8* null, %struct.gs_memory_s* %43) #4
  store i32 %call40, i32* %code, align 4, !tbaa !5
  %44 = load i32, i32* %code, align 4, !tbaa !5
  %cmp41 = icmp slt i32 %44, 0
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.39
  %45 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %45, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.44:                                        ; preds = %if.end.39
  %46 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %46, i32 0, i32 7
  %def = bitcast %union.anon.0* %params to %struct.gs_cie_def_s**
  %47 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %def, align 8, !tbaa !1
  store %struct.gs_cie_def_s* %47, %struct.gs_cie_def_s** %pcie, align 8, !tbaa !1
  %48 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie, align 8, !tbaa !1
  %Table = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %48, i32 0, i32 9
  %n = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %Table, i32 0, i32 0
  store i32 3, i32* %n, align 4, !tbaa !78
  %49 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie, align 8, !tbaa !1
  %Table45 = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %49, i32 0, i32 9
  %m = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %Table45, i32 0, i32 2
  store i32 3, i32* %m, align 4, !tbaa !81
  %50 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %51 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %52 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie, align 8, !tbaa !1
  %53 = bitcast %struct.gs_cie_def_s* %52 to i8*
  %call46 = call i32 @cie_cache_push_finish(%struct.gs_context_state_s* %50, i32 (%struct.gs_context_state_s*)* @cie_def_finish, %struct.gs_ref_memory_s* %51, i8* %53) #4
  store i32 %call46, i32* %code, align 4, !tbaa !5
  %54 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %55 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %55, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %56 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !66
  %57 = bitcast %struct.gs_ref_memory_s* %56 to %struct.gs_memory_s*
  %58 = load %struct.ref_s*, %struct.ref_s** %CIEDict.addr, align 8, !tbaa !1
  %59 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie, align 8, !tbaa !1
  %60 = load %struct.ref_s*, %struct.ref_s** %ptref, align 8, !tbaa !1
  %call47 = call i32 @cie_def_param(%struct.gs_context_state_s* %54, %struct.gs_memory_s* %57, %struct.ref_s* %58, %struct.gs_cie_def_s* %59, %struct.ref_cie_procs_s* %procs, i32* %has_abc_procs, i32* %has_lmn_procs, i32* %has_def_procs, %struct.ref_s* %60) #4
  store i32 %call47, i32* %code, align 4, !tbaa !5
  %61 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs48 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %61, i32 0, i32 0
  %62 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs48, align 8, !tbaa !39
  %63 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %64 = load i64, i64* %dictkey.addr, align 8, !tbaa !15
  call void @gsicc_add_cs(%struct.gs_state_s* %62, %struct.gs_color_space_s* %63, i64 %64) #4
  br label %if.end.61

if.else.49:                                       ; preds = %do.end
  br label %do.body.50

do.body.50:                                       ; preds = %if.else.49
  %65 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_color_space_s* %65, null
  br i1 %tobool, label %if.then.51, label %if.end.58

if.then.51:                                       ; preds = %do.body.50
  br label %do.body.52

do.body.52:                                       ; preds = %if.then.51
  %66 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %66, i32 0, i32 1
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %67 = load i64, i64* %ref_count, align 8, !tbaa !67
  %inc = add nsw i64 %67, 1
  store i64 %inc, i64* %ref_count, align 8, !tbaa !67
  br label %do.body.53

do.body.53:                                       ; preds = %do.body.52
  br label %do.cond.54

do.cond.54:                                       ; preds = %do.body.53
  br label %do.end.55

do.end.55:                                        ; preds = %do.cond.54
  br label %do.cond.56

do.cond.56:                                       ; preds = %do.end.55
  br label %do.end.57

do.end.57:                                        ; preds = %do.cond.56
  br label %if.end.58

if.end.58:                                        ; preds = %do.end.57, %do.body.50
  br label %do.cond.59

do.cond.59:                                       ; preds = %if.end.58
  br label %do.end.60

do.end.60:                                        ; preds = %do.cond.59
  br label %if.end.61

if.end.61:                                        ; preds = %do.end.60, %if.end.44
  %68 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %69 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %70 = load i32, i32* %edepth, align 4, !tbaa !5
  %71 = load i32, i32* %code, align 4, !tbaa !5
  %call62 = call i32 @cie_set_finish(%struct.gs_context_state_s* %68, %struct.gs_color_space_s* %69, %struct.ref_cie_procs_s* %procs, i32 %70, i32 %71) #4
  store i32 %call62, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.61, %if.then.43, %if.then.38, %cond.end.32, %cond.end, %if.then
  %72 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = bitcast i32* %has_abc_procs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = bitcast i32* %has_lmn_procs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast i32* %has_def_procs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %76 = bitcast %struct.ref_s** %ptref to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %77 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  %78 = bitcast %struct.gs_cie_def_s** %pcie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %79 = bitcast %struct.ref_cie_procs_s* %procs to i8*
  call void @llvm.lifetime.end(i64 48, i8* %79) #1
  %80 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #1
  %81 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  %82 = bitcast i32* %edepth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  %83 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #1
  %84 = load i32, i32* %retval
  ret i32 %84
}

declare i32 @gs_cspace_build_CIEDEF(%struct.gs_color_space_s**, i8*, %struct.gs_memory_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @cie_def_finish(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %pcie = alloca %struct.gs_cie_def_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !49
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_cie_def_s** %pcie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %5 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %6 = bitcast %struct.obj_header_s* %5 to %struct.gs_cie_def_s*
  store %struct.gs_cie_def_s* %6, %struct.gs_cie_def_s** %pcie, align 8, !tbaa !1
  %7 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie, align 8, !tbaa !1
  %DecodeDEF = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %7, i32 0, i32 7
  %8 = bitcast %struct.gs_cie_def_proc3_s* %DecodeDEF to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* bitcast (%struct.gs_cie_def_proc3_s* @DecodeDEF_from_cache to i8*), i64 24, i32 8, i1 false), !tbaa.struct !72
  %9 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie, align 8, !tbaa !1
  %DecodeABC = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %9, i32 0, i32 3
  %10 = bitcast %struct.gs_cie_abc_proc3_s* %DecodeABC to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* bitcast (%struct.gs_cie_abc_proc3_s* @DecodeABC_from_cache to i8*), i64 24, i32 8, i1 false), !tbaa.struct !72
  %11 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie, align 8, !tbaa !1
  %common = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %11, i32 0, i32 0
  %DecodeLMN = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common, i32 0, i32 3
  %12 = bitcast %struct.gs_cie_common_proc3_s* %DecodeLMN to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* bitcast (%struct.gs_cie_common_proc3_s* @DecodeLMN_from_cache to i8*), i64 24, i32 8, i1 false), !tbaa.struct !72
  %13 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie, align 8, !tbaa !1
  call void @gs_cie_def_complete(%struct.gs_cie_def_s* %13) #4
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %p3 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 0
  %15 = load %struct.ref_s*, %struct.ref_s** %p3, align 8, !tbaa !49
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p3, align 8, !tbaa !49
  %16 = bitcast %struct.gs_cie_def_s** %pcie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @cie_def_param(%struct.gs_context_state_s* %i_ctx_p, %struct.gs_memory_s* %mem, %struct.ref_s* %pdref, %struct.gs_cie_def_s* %pcie, %struct.ref_cie_procs_s* %pcprocs, i32* %has_abc_procs, i32* %has_lmn_procs, i32* %has_def_procs, %struct.ref_s* %ptref) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pdref.addr = alloca %struct.ref_s*, align 8
  %pcie.addr = alloca %struct.gs_cie_def_s*, align 8
  %pcprocs.addr = alloca %struct.ref_cie_procs_s*, align 8
  %has_abc_procs.addr = alloca i32*, align 8
  %has_lmn_procs.addr = alloca i32*, align 8
  %has_def_procs.addr = alloca i32*, align 8
  %ptref.addr = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %imem = alloca %struct.gs_ref_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %pdref, %struct.ref_s** %pdref.addr, align 8, !tbaa !1
  store %struct.gs_cie_def_s* %pcie, %struct.gs_cie_def_s** %pcie.addr, align 8, !tbaa !1
  store %struct.ref_cie_procs_s* %pcprocs, %struct.ref_cie_procs_s** %pcprocs.addr, align 8, !tbaa !1
  store i32* %has_abc_procs, i32** %has_abc_procs.addr, align 8, !tbaa !1
  store i32* %has_lmn_procs, i32** %has_lmn_procs.addr, align 8, !tbaa !1
  store i32* %has_def_procs, i32** %has_def_procs.addr, align 8, !tbaa !1
  store %struct.ref_s* %ptref, %struct.ref_s** %ptref.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s* %2 to %struct.gs_ref_memory_s*
  store %struct.gs_ref_memory_s* %3, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %6 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !1
  %7 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gs_cie_def_s* %7 to %struct.gs_cie_abc_s*
  %9 = load %struct.ref_cie_procs_s*, %struct.ref_cie_procs_s** %pcprocs.addr, align 8, !tbaa !1
  %10 = load i32*, i32** %has_abc_procs.addr, align 8, !tbaa !1
  %11 = load i32*, i32** %has_lmn_procs.addr, align 8, !tbaa !1
  %call = call i32 @cie_abc_param(%struct.gs_context_state_s* %4, %struct.gs_memory_s* %5, %struct.ref_s* %6, %struct.gs_cie_abc_s* %8, %struct.ref_cie_procs_s* %9, i32* %10, i32* %11) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %12 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %15 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !1
  %16 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie.addr, align 8, !tbaa !1
  %RangeDEF = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %16, i32 0, i32 6
  %call1 = call i32 @dict_range3_param(%struct.gs_memory_s* %14, %struct.ref_s* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), %struct.gs_range3_s* %RangeDEF) #4
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %17 = load i32, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %17, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %18 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %20 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !1
  %21 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie.addr, align 8, !tbaa !1
  %RangeHIJ = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %21, i32 0, i32 8
  %call5 = call i32 @dict_range3_param(%struct.gs_memory_s* %19, %struct.ref_s* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), %struct.gs_range3_s* %RangeHIJ) #4
  store i32 %call5, i32* %code, align 4, !tbaa !5
  %22 = load i32, i32* %code, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %22, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  %23 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end.4
  %24 = load %struct.ref_s*, %struct.ref_s** %ptref.addr, align 8, !tbaa !1
  %25 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie.addr, align 8, !tbaa !1
  %Table = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %25, i32 0, i32 9
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call9 = call i32 @cie_table_param(%struct.ref_s* %24, %struct.gx_color_lookup_table_s* %Table, %struct.gs_memory_s* %26) #4
  store i32 %call9, i32* %code, align 4, !tbaa !5
  %27 = load i32, i32* %code, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %27, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  %28 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end.8
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %30 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !1
  %31 = load %struct.ref_cie_procs_s*, %struct.ref_cie_procs_s** %pcprocs.addr, align 8, !tbaa !1
  %PreDecode = getelementptr inbounds %struct.ref_cie_procs_s, %struct.ref_cie_procs_s* %31, i32 0, i32 0
  %DEF = bitcast %union.anon.8* %PreDecode to %struct.ref_s*
  %call13 = call i32 @dict_proc3_param(%struct.gs_memory_s* %29, %struct.ref_s* %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), %struct.ref_s* %DEF) #4
  store i32 %call13, i32* %code, align 4, !tbaa !5
  %32 = load i32, i32* %code, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %32, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  %33 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.end.12
  %34 = load i32, i32* %code, align 4, !tbaa !5
  %tobool = icmp ne i32 %34, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %35 = load i32*, i32** %has_def_procs.addr, align 8, !tbaa !1
  store i32 %lnot.ext, i32* %35, align 4, !tbaa !5
  %36 = load i32*, i32** %has_def_procs.addr, align 8, !tbaa !1
  %37 = load i32, i32* %36, align 4, !tbaa !5
  %tobool17 = icmp ne i32 %37, 0
  br i1 %tobool17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.end.16
  %38 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %39 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie.addr, align 8, !tbaa !1
  %RangeDEF19 = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %39, i32 0, i32 6
  %ranges = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeDEF19, i32 0, i32 0
  %arraydecay = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges, i32 0, i32 0
  %40 = load %struct.ref_cie_procs_s*, %struct.ref_cie_procs_s** %pcprocs.addr, align 8, !tbaa !1
  %PreDecode20 = getelementptr inbounds %struct.ref_cie_procs_s, %struct.ref_cie_procs_s* %40, i32 0, i32 0
  %DEF21 = bitcast %union.anon.8* %PreDecode20 to %struct.ref_s*
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %DEF21, i32 0, i32 1
  %const_refs = bitcast %union.v* %value to %struct.ref_s**
  %41 = load %struct.ref_s*, %struct.ref_s** %const_refs, align 8, !tbaa !1
  %42 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie.addr, align 8, !tbaa !1
  %caches_def = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %42, i32 0, i32 10
  %DecodeDEF = getelementptr inbounds %struct.anon.4, %struct.anon.4* %caches_def, i32 0, i32 0
  %arraydecay22 = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeDEF, i32 0, i32 0
  %floats = bitcast %union.gx_cie_scalar_cache_s* %arraydecay22 to %struct.cie_cache_floats_s*
  %43 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie.addr, align 8, !tbaa !1
  %caches_def23 = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %43, i32 0, i32 10
  %DecodeDEF24 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %caches_def23, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeDEF24, i32 0, i64 1
  %floats25 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx to %struct.cie_cache_floats_s*
  %44 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie.addr, align 8, !tbaa !1
  %caches_def26 = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %44, i32 0, i32 10
  %DecodeDEF27 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %caches_def26, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeDEF27, i32 0, i64 2
  %floats29 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx28 to %struct.cie_cache_floats_s*
  %45 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie.addr, align 8, !tbaa !1
  %46 = bitcast %struct.gs_cie_def_s* %45 to i8*
  %47 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %call30 = call i32 @cieicc_prepare_caches(%struct.gs_context_state_s* %38, %struct.gs_range_s* %arraydecay, %struct.ref_s* %41, %struct.cie_cache_floats_s* %floats, %struct.cie_cache_floats_s* %floats25, %struct.cie_cache_floats_s* %floats29, %struct.cie_cache_floats_s* null, i8* %46, %struct.gs_ref_memory_s* %47, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0)) #4
  br label %if.end.47

if.else:                                          ; preds = %if.end.16
  %48 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie.addr, align 8, !tbaa !1
  %caches_def31 = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %48, i32 0, i32 10
  %DecodeDEF32 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %caches_def31, i32 0, i32 0
  %arraydecay33 = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeDEF32, i32 0, i32 0
  %floats34 = bitcast %union.gx_cie_scalar_cache_s* %arraydecay33 to %struct.cie_cache_floats_s*
  %params = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats34, i32 0, i32 0
  %is_identity = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params, i32 0, i32 0
  store i32 1, i32* %is_identity, align 4, !tbaa !73
  %49 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie.addr, align 8, !tbaa !1
  %caches_def35 = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %49, i32 0, i32 10
  %DecodeDEF36 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %caches_def35, i32 0, i32 0
  %arrayidx37 = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeDEF36, i32 0, i64 1
  %floats38 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx37 to %struct.cie_cache_floats_s*
  %params39 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats38, i32 0, i32 0
  %is_identity40 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params39, i32 0, i32 0
  store i32 1, i32* %is_identity40, align 4, !tbaa !73
  %50 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie.addr, align 8, !tbaa !1
  %caches_def41 = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %50, i32 0, i32 10
  %DecodeDEF42 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %caches_def41, i32 0, i32 0
  %arrayidx43 = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeDEF42, i32 0, i64 2
  %floats44 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx43 to %struct.cie_cache_floats_s*
  %params45 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats44, i32 0, i32 0
  %is_identity46 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params45, i32 0, i32 0
  store i32 1, i32* %is_identity46, align 4, !tbaa !73
  br label %if.end.47

if.end.47:                                        ; preds = %if.else, %if.then.18
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.47, %if.then.15, %if.then.11, %if.then.7, %if.then.3, %if.then
  %51 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = load i32, i32* %retval
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define i32 @cieabcspace(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %CIEDict, i64 %dictkey) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %CIEDict.addr = alloca %struct.ref_s*, align 8
  %dictkey.addr = alloca i64, align 8
  %op = alloca %struct.ref_s*, align 8
  %edepth = alloca i32, align 4
  %mem = alloca %struct.gs_memory_s*, align 8
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %procs = alloca %struct.ref_cie_procs_s, align 8
  %pcie = alloca %struct.gs_cie_abc_s*, align 8
  %code = alloca i32, align 4
  %has_lmn_procs = alloca i32, align 4
  %has_abc_procs = alloca i32, align 4
  %imem = alloca %struct.gs_ref_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %CIEDict, %struct.ref_s** %CIEDict.addr, align 8, !tbaa !1
  store i64 %dictkey, i64* %dictkey.addr, align 8, !tbaa !15
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !49
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i32* %edepth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 25
  %stack1 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %call = call i32 @ref_stack_count(%struct.ref_stack_s* %stack1) #4
  store i32 %call, i32* %edepth, align 4, !tbaa !5
  %5 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 0
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !39
  %call2 = call %struct.gs_memory_s* @gs_state_memory(%struct.gs_state_s* %7) #4
  store %struct.gs_memory_s* %call2, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %8 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast %struct.ref_cie_procs_s* %procs to i8*
  call void @llvm.lifetime.start(i64 48, i8* %9) #1
  %10 = bitcast %struct.gs_cie_abc_s** %pcie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %12 = bitcast i32* %has_lmn_procs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %has_abc_procs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %16 = bitcast %struct.gs_memory_s* %15 to %struct.gs_ref_memory_s*
  store %struct.gs_ref_memory_s* %16, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 2
  %19 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !50
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %19
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 26
  %stack6 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack5, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !51
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack7 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %22, i32 0, i32 26
  %stack8 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack7, i32 0, i32 0
  %p9 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack8, i32 0, i32 0
  store %struct.ref_s* %21, %struct.ref_s** %p9, align 8, !tbaa !49
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs10 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 0
  %24 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs10, align 8, !tbaa !39
  %call11 = call i8* @gs_state_client_data(%struct.gs_state_s* %24) #4
  %25 = bitcast i8* %call11 to %struct.int_gstate_s*
  %colorspace = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %25, i32 0, i32 5
  %arrayidx = getelementptr inbounds [2 x %struct.ref_colorspace_s], [2 x %struct.ref_colorspace_s]* %colorspace, i32 0, i64 0
  %procs12 = getelementptr inbounds %struct.ref_colorspace_s, %struct.ref_colorspace_s* %arrayidx, i32 0, i32 1
  %cie = getelementptr inbounds %struct.ref_color_procs_s, %struct.ref_color_procs_s* %procs12, i32 0, i32 0
  %26 = bitcast %struct.ref_cie_procs_s* %procs to i8*
  %27 = bitcast %struct.ref_cie_procs_s* %cie to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 48, i32 8, i1 false), !tbaa.struct !48
  %28 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %cmp13 = icmp eq %struct.gs_color_space_s* %28, null
  br i1 %cmp13, label %if.then.14, label %if.else.22

if.then.14:                                       ; preds = %do.end
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %29, i32 0, i32 0
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !30
  %call15 = call i32 @gs_cspace_build_CIEABC(%struct.gs_color_space_s** %pcs, i8* null, %struct.gs_memory_s* %30) #4
  store i32 %call15, i32* %code, align 4, !tbaa !5
  %31 = load i32, i32* %code, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %31, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.14
  %32 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.then.14
  %33 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %33, i32 0, i32 7
  %abc = bitcast %union.anon.0* %params to %struct.gs_cie_abc_s**
  %34 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %abc, align 8, !tbaa !1
  store %struct.gs_cie_abc_s* %34, %struct.gs_cie_abc_s** %pcie, align 8, !tbaa !1
  %35 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %36 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %37 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie, align 8, !tbaa !1
  %38 = bitcast %struct.gs_cie_abc_s* %37 to i8*
  %call19 = call i32 @cie_cache_push_finish(%struct.gs_context_state_s* %35, i32 (%struct.gs_context_state_s*)* @cie_abc_finish, %struct.gs_ref_memory_s* %36, i8* %38) #4
  store i32 %call19, i32* %code, align 4, !tbaa !5
  %39 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %40 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %40, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %41 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !66
  %42 = bitcast %struct.gs_ref_memory_s* %41 to %struct.gs_memory_s*
  %43 = load %struct.ref_s*, %struct.ref_s** %CIEDict.addr, align 8, !tbaa !1
  %44 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie, align 8, !tbaa !1
  %call20 = call i32 @cie_abc_param(%struct.gs_context_state_s* %39, %struct.gs_memory_s* %42, %struct.ref_s* %43, %struct.gs_cie_abc_s* %44, %struct.ref_cie_procs_s* %procs, i32* %has_abc_procs, i32* %has_lmn_procs) #4
  store i32 %call20, i32* %code, align 4, !tbaa !5
  %45 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs21 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %45, i32 0, i32 0
  %46 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs21, align 8, !tbaa !39
  %47 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %48 = load i64, i64* %dictkey.addr, align 8, !tbaa !15
  call void @gsicc_add_cs(%struct.gs_state_s* %46, %struct.gs_color_space_s* %47, i64 %48) #4
  br label %if.end.34

if.else.22:                                       ; preds = %do.end
  br label %do.body.23

do.body.23:                                       ; preds = %if.else.22
  %49 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_color_space_s* %49, null
  br i1 %tobool, label %if.then.24, label %if.end.31

if.then.24:                                       ; preds = %do.body.23
  br label %do.body.25

do.body.25:                                       ; preds = %if.then.24
  %50 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %50, i32 0, i32 1
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %51 = load i64, i64* %ref_count, align 8, !tbaa !67
  %inc = add nsw i64 %51, 1
  store i64 %inc, i64* %ref_count, align 8, !tbaa !67
  br label %do.body.26

do.body.26:                                       ; preds = %do.body.25
  br label %do.cond.27

do.cond.27:                                       ; preds = %do.body.26
  br label %do.end.28

do.end.28:                                        ; preds = %do.cond.27
  br label %do.cond.29

do.cond.29:                                       ; preds = %do.end.28
  br label %do.end.30

do.end.30:                                        ; preds = %do.cond.29
  br label %if.end.31

if.end.31:                                        ; preds = %do.end.30, %do.body.23
  br label %do.cond.32

do.cond.32:                                       ; preds = %if.end.31
  br label %do.end.33

do.end.33:                                        ; preds = %do.cond.32
  br label %if.end.34

if.end.34:                                        ; preds = %do.end.33, %if.end.18
  %52 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %53 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %54 = load i32, i32* %edepth, align 4, !tbaa !5
  %55 = load i32, i32* %code, align 4, !tbaa !5
  %call35 = call i32 @cie_set_finish(%struct.gs_context_state_s* %52, %struct.gs_color_space_s* %53, %struct.ref_cie_procs_s* %procs, i32 %54, i32 %55) #4
  store i32 %call35, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.34, %if.then.17, %if.then
  %56 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  %57 = bitcast i32* %has_abc_procs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = bitcast i32* %has_lmn_procs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = bitcast %struct.gs_cie_abc_s** %pcie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  %61 = bitcast %struct.ref_cie_procs_s* %procs to i8*
  call void @llvm.lifetime.end(i64 48, i8* %61) #1
  %62 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %63 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = bitcast i32* %edepth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = load i32, i32* %retval
  ret i32 %66
}

declare i32 @gs_cspace_build_CIEABC(%struct.gs_color_space_s**, i8*, %struct.gs_memory_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @cie_abc_finish(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %pcie = alloca %struct.gs_cie_abc_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !49
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_cie_abc_s** %pcie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %5 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %6 = bitcast %struct.obj_header_s* %5 to %struct.gs_cie_abc_s*
  store %struct.gs_cie_abc_s* %6, %struct.gs_cie_abc_s** %pcie, align 8, !tbaa !1
  %7 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie, align 8, !tbaa !1
  %DecodeABC = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %7, i32 0, i32 3
  %8 = bitcast %struct.gs_cie_abc_proc3_s* %DecodeABC to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* bitcast (%struct.gs_cie_abc_proc3_s* @DecodeABC_from_cache to i8*), i64 24, i32 8, i1 false), !tbaa.struct !72
  %9 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie, align 8, !tbaa !1
  %common = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %9, i32 0, i32 0
  %DecodeLMN = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common, i32 0, i32 3
  %10 = bitcast %struct.gs_cie_common_proc3_s* %DecodeLMN to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* bitcast (%struct.gs_cie_common_proc3_s* @DecodeLMN_from_cache to i8*), i64 24, i32 8, i1 false), !tbaa.struct !72
  %11 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie, align 8, !tbaa !1
  call void @gs_cie_abc_complete(%struct.gs_cie_abc_s* %11) #4
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %p3 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 0
  %13 = load %struct.ref_s*, %struct.ref_s** %p3, align 8, !tbaa !49
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p3, align 8, !tbaa !49
  %14 = bitcast %struct.gs_cie_abc_s** %pcie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @cie_abc_param(%struct.gs_context_state_s* %i_ctx_p, %struct.gs_memory_s* %mem, %struct.ref_s* %pdref, %struct.gs_cie_abc_s* %pcie, %struct.ref_cie_procs_s* %pcprocs, i32* %has_abc_procs, i32* %has_lmn_procs) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pdref.addr = alloca %struct.ref_s*, align 8
  %pcie.addr = alloca %struct.gs_cie_abc_s*, align 8
  %pcprocs.addr = alloca %struct.ref_cie_procs_s*, align 8
  %has_abc_procs.addr = alloca i32*, align 8
  %has_lmn_procs.addr = alloca i32*, align 8
  %code = alloca i32, align 4
  %imem = alloca %struct.gs_ref_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %pdref, %struct.ref_s** %pdref.addr, align 8, !tbaa !1
  store %struct.gs_cie_abc_s* %pcie, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  store %struct.ref_cie_procs_s* %pcprocs, %struct.ref_cie_procs_s** %pcprocs.addr, align 8, !tbaa !1
  store i32* %has_abc_procs, i32** %has_abc_procs.addr, align 8, !tbaa !1
  store i32* %has_lmn_procs, i32** %has_lmn_procs.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s* %2 to %struct.gs_ref_memory_s*
  store %struct.gs_ref_memory_s* %3, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %5 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !1
  %6 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %RangeABC = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %6, i32 0, i32 2
  %call = call i32 @dict_range3_param(%struct.gs_memory_s* %4, %struct.ref_s* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), %struct.gs_range3_s* %RangeABC) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %8 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !1
  %9 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %MatrixABC = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %9, i32 0, i32 4
  %call1 = call i32 @dict_matrix3_param(%struct.gs_memory_s* %7, %struct.ref_s* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), %struct.gs_matrix3_s* %MatrixABC) #4
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %11 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !1
  %12 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %common = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %12, i32 0, i32 0
  %13 = load %struct.ref_cie_procs_s*, %struct.ref_cie_procs_s** %pcprocs.addr, align 8, !tbaa !1
  %14 = load i32*, i32** %has_lmn_procs.addr, align 8, !tbaa !1
  %call4 = call i32 @cie_lmnp_param(%struct.gs_memory_s* %10, %struct.ref_s* %11, %struct.gs_cie_common_s* %common, %struct.ref_cie_procs_s* %13, i32* %14) #4
  store i32 %call4, i32* %code, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %entry
  %15 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.3
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %17 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !1
  %18 = load %struct.ref_cie_procs_s*, %struct.ref_cie_procs_s** %pcprocs.addr, align 8, !tbaa !1
  %Decode = getelementptr inbounds %struct.ref_cie_procs_s, %struct.ref_cie_procs_s* %18, i32 0, i32 1
  %ABC = bitcast %union.anon.9* %Decode to %struct.ref_s*
  %call6 = call i32 @dict_proc3_param(%struct.gs_memory_s* %16, %struct.ref_s* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), %struct.ref_s* %ABC) #4
  store i32 %call6, i32* %code, align 4, !tbaa !5
  %19 = load i32, i32* %code, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %19, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %20 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end
  %21 = load i32, i32* %code, align 4, !tbaa !5
  %tobool = icmp ne i32 %21, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %22 = load i32*, i32** %has_abc_procs.addr, align 8, !tbaa !1
  store i32 %lnot.ext, i32* %22, align 4, !tbaa !5
  %23 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %DecodeABC = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %23, i32 0, i32 3
  %24 = bitcast %struct.gs_cie_abc_proc3_s* %DecodeABC to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* bitcast (%struct.gs_cie_abc_proc3_s* @DecodeABC_default to i8*), i64 24, i32 8, i1 false), !tbaa.struct !72
  %25 = load i32*, i32** %has_abc_procs.addr, align 8, !tbaa !1
  %26 = load i32, i32* %25, align 4, !tbaa !5
  %tobool10 = icmp ne i32 %26, 0
  br i1 %tobool10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end.9
  %27 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %28 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %RangeABC12 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %28, i32 0, i32 2
  %ranges = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeABC12, i32 0, i32 0
  %arraydecay = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges, i32 0, i32 0
  %29 = load %struct.ref_cie_procs_s*, %struct.ref_cie_procs_s** %pcprocs.addr, align 8, !tbaa !1
  %Decode13 = getelementptr inbounds %struct.ref_cie_procs_s, %struct.ref_cie_procs_s* %29, i32 0, i32 1
  %ABC14 = bitcast %union.anon.9* %Decode13 to %struct.ref_s*
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %ABC14, i32 0, i32 1
  %const_refs = bitcast %union.v* %value to %struct.ref_s**
  %30 = load %struct.ref_s*, %struct.ref_s** %const_refs, align 8, !tbaa !1
  %31 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %caches = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %31, i32 0, i32 5
  %DecodeABC15 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %caches, i32 0, i32 1
  %caches16 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %DecodeABC15, i32 0, i32 0
  %arraydecay17 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches16, i32 0, i32 0
  %floats = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arraydecay17, i32 0, i32 0
  %32 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %caches18 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %32, i32 0, i32 5
  %DecodeABC19 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %caches18, i32 0, i32 1
  %caches20 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %DecodeABC19, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches20, i32 0, i64 1
  %floats21 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx, i32 0, i32 0
  %33 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %caches22 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %33, i32 0, i32 5
  %DecodeABC23 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %caches22, i32 0, i32 1
  %caches24 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %DecodeABC23, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches24, i32 0, i64 2
  %floats26 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx25, i32 0, i32 0
  %34 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %35 = bitcast %struct.gs_cie_abc_s* %34 to i8*
  %36 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %call27 = call i32 @cieicc_prepare_caches(%struct.gs_context_state_s* %27, %struct.gs_range_s* %arraydecay, %struct.ref_s* %30, %struct.cie_cache_floats_s* %floats, %struct.cie_cache_floats_s* %floats21, %struct.cie_cache_floats_s* %floats26, %struct.cie_cache_floats_s* null, i8* %35, %struct.gs_ref_memory_s* %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0)) #4
  br label %if.end.47

if.else:                                          ; preds = %if.end.9
  %37 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %caches28 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %37, i32 0, i32 5
  %DecodeABC29 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %caches28, i32 0, i32 1
  %caches30 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %DecodeABC29, i32 0, i32 0
  %arraydecay31 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches30, i32 0, i32 0
  %floats32 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arraydecay31, i32 0, i32 0
  %params = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats32, i32 0, i32 0
  %is_identity = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params, i32 0, i32 0
  store i32 1, i32* %is_identity, align 4, !tbaa !82
  %38 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %caches33 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %38, i32 0, i32 5
  %DecodeABC34 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %caches33, i32 0, i32 1
  %caches35 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %DecodeABC34, i32 0, i32 0
  %arrayidx36 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches35, i32 0, i64 1
  %floats37 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx36, i32 0, i32 0
  %params38 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats37, i32 0, i32 0
  %is_identity39 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params38, i32 0, i32 0
  store i32 1, i32* %is_identity39, align 4, !tbaa !82
  %39 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %caches40 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %39, i32 0, i32 5
  %DecodeABC41 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %caches40, i32 0, i32 1
  %caches42 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %DecodeABC41, i32 0, i32 0
  %arrayidx43 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches42, i32 0, i64 2
  %floats44 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx43, i32 0, i32 0
  %params45 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats44, i32 0, i32 0
  %is_identity46 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params45, i32 0, i32 0
  store i32 1, i32* %is_identity46, align 4, !tbaa !82
  br label %if.end.47

if.end.47:                                        ; preds = %if.else, %if.then.11
  %40 = load i32*, i32** %has_lmn_procs.addr, align 8, !tbaa !1
  %41 = load i32, i32* %40, align 4, !tbaa !5
  %tobool48 = icmp ne i32 %41, 0
  br i1 %tobool48, label %if.then.49, label %if.else.71

if.then.49:                                       ; preds = %if.end.47
  %42 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %43 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %common50 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %43, i32 0, i32 0
  %RangeLMN = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common50, i32 0, i32 2
  %ranges51 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeLMN, i32 0, i32 0
  %arraydecay52 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges51, i32 0, i32 0
  %44 = load %struct.ref_cie_procs_s*, %struct.ref_cie_procs_s** %pcprocs.addr, align 8, !tbaa !1
  %DecodeLMN = getelementptr inbounds %struct.ref_cie_procs_s, %struct.ref_cie_procs_s* %44, i32 0, i32 2
  %value53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %DecodeLMN, i32 0, i32 1
  %const_refs54 = bitcast %union.v* %value53 to %struct.ref_s**
  %45 = load %struct.ref_s*, %struct.ref_s** %const_refs54, align 8, !tbaa !1
  %46 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %common55 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %46, i32 0, i32 0
  %caches56 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common55, i32 0, i32 6
  %DecodeLMN57 = getelementptr inbounds %struct.anon, %struct.anon* %caches56, i32 0, i32 0
  %arraydecay58 = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeLMN57, i32 0, i32 0
  %floats59 = bitcast %union.gx_cie_scalar_cache_s* %arraydecay58 to %struct.cie_cache_floats_s*
  %47 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %common60 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %47, i32 0, i32 0
  %caches61 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common60, i32 0, i32 6
  %DecodeLMN62 = getelementptr inbounds %struct.anon, %struct.anon* %caches61, i32 0, i32 0
  %arrayidx63 = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeLMN62, i32 0, i64 1
  %floats64 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx63 to %struct.cie_cache_floats_s*
  %48 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %common65 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %48, i32 0, i32 0
  %caches66 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common65, i32 0, i32 6
  %DecodeLMN67 = getelementptr inbounds %struct.anon, %struct.anon* %caches66, i32 0, i32 0
  %arrayidx68 = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeLMN67, i32 0, i64 2
  %floats69 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx68 to %struct.cie_cache_floats_s*
  %49 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %50 = bitcast %struct.gs_cie_abc_s* %49 to i8*
  %51 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %call70 = call i32 @cieicc_prepare_caches(%struct.gs_context_state_s* %42, %struct.gs_range_s* %arraydecay52, %struct.ref_s* %45, %struct.cie_cache_floats_s* %floats59, %struct.cie_cache_floats_s* %floats64, %struct.cie_cache_floats_s* %floats69, %struct.cie_cache_floats_s* null, i8* %50, %struct.gs_ref_memory_s* %51, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0)) #4
  br label %if.end.93

if.else.71:                                       ; preds = %if.end.47
  %52 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %common72 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %52, i32 0, i32 0
  %caches73 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common72, i32 0, i32 6
  %DecodeLMN74 = getelementptr inbounds %struct.anon, %struct.anon* %caches73, i32 0, i32 0
  %arraydecay75 = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeLMN74, i32 0, i32 0
  %floats76 = bitcast %union.gx_cie_scalar_cache_s* %arraydecay75 to %struct.cie_cache_floats_s*
  %params77 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats76, i32 0, i32 0
  %is_identity78 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params77, i32 0, i32 0
  store i32 1, i32* %is_identity78, align 4, !tbaa !73
  %53 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %common79 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %53, i32 0, i32 0
  %caches80 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common79, i32 0, i32 6
  %DecodeLMN81 = getelementptr inbounds %struct.anon, %struct.anon* %caches80, i32 0, i32 0
  %arrayidx82 = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeLMN81, i32 0, i64 1
  %floats83 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx82 to %struct.cie_cache_floats_s*
  %params84 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats83, i32 0, i32 0
  %is_identity85 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params84, i32 0, i32 0
  store i32 1, i32* %is_identity85, align 4, !tbaa !73
  %54 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %common86 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %54, i32 0, i32 0
  %caches87 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common86, i32 0, i32 6
  %DecodeLMN88 = getelementptr inbounds %struct.anon, %struct.anon* %caches87, i32 0, i32 0
  %arrayidx89 = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeLMN88, i32 0, i64 2
  %floats90 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx89 to %struct.cie_cache_floats_s*
  %params91 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats90, i32 0, i32 0
  %is_identity92 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params91, i32 0, i32 0
  store i32 1, i32* %is_identity92, align 4, !tbaa !73
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.71, %if.then.49
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.93, %if.then.8, %if.then
  %55 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %57 = load i32, i32* %retval
  ret i32 %57
}

; Function Attrs: nounwind uwtable
define i32 @cieaspace(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %CIEdict, i64 %dictkey) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %CIEdict.addr = alloca %struct.ref_s*, align 8
  %dictkey.addr = alloca i64, align 8
  %op = alloca %struct.ref_s*, align 8
  %edepth = alloca i32, align 4
  %mem = alloca %struct.gs_memory_s*, align 8
  %imem = alloca %struct.gs_ref_memory_s*, align 8
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %procs = alloca %struct.ref_cie_procs_s, align 8
  %pcie = alloca %struct.gs_cie_a_s*, align 8
  %code = alloca i32, align 4
  %has_a_procs = alloca i32, align 4
  %has_lmn_procs = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %CIEdict, %struct.ref_s** %CIEdict.addr, align 8, !tbaa !1
  store i64 %dictkey, i64* %dictkey.addr, align 8, !tbaa !15
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !49
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i32* %edepth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 25
  %stack1 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %call = call i32 @ref_stack_count(%struct.ref_stack_s* %stack1) #4
  store i32 %call, i32* %edepth, align 4, !tbaa !5
  %5 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 0
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !39
  %call2 = call %struct.gs_memory_s* @gs_state_memory(%struct.gs_state_s* %7) #4
  store %struct.gs_memory_s* %call2, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %8 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %10 = bitcast %struct.gs_memory_s* %9 to %struct.gs_ref_memory_s*
  store %struct.gs_ref_memory_s* %10, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %11 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast %struct.ref_cie_procs_s* %procs to i8*
  call void @llvm.lifetime.start(i64 48, i8* %12) #1
  %13 = bitcast %struct.gs_cie_a_s** %pcie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %15 = bitcast i32* %has_a_procs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 0, i32* %has_a_procs, align 4, !tbaa !5
  %16 = bitcast i32* %has_lmn_procs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 2
  %19 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !50
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %19
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 26
  %stack6 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack5, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !51
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack7 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %22, i32 0, i32 26
  %stack8 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack7, i32 0, i32 0
  %p9 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack8, i32 0, i32 0
  store %struct.ref_s* %21, %struct.ref_s** %p9, align 8, !tbaa !49
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs10 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 0
  %24 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs10, align 8, !tbaa !39
  %call11 = call i8* @gs_state_client_data(%struct.gs_state_s* %24) #4
  %25 = bitcast i8* %call11 to %struct.int_gstate_s*
  %colorspace = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %25, i32 0, i32 5
  %arrayidx = getelementptr inbounds [2 x %struct.ref_colorspace_s], [2 x %struct.ref_colorspace_s]* %colorspace, i32 0, i64 0
  %procs12 = getelementptr inbounds %struct.ref_colorspace_s, %struct.ref_colorspace_s* %arrayidx, i32 0, i32 1
  %cie = getelementptr inbounds %struct.ref_color_procs_s, %struct.ref_color_procs_s* %procs12, i32 0, i32 0
  %26 = bitcast %struct.ref_cie_procs_s* %procs to i8*
  %27 = bitcast %struct.ref_cie_procs_s* %cie to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 48, i32 8, i1 false), !tbaa.struct !48
  %28 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %cmp13 = icmp eq %struct.gs_color_space_s* %28, null
  br i1 %cmp13, label %if.then.14, label %if.else.111

if.then.14:                                       ; preds = %do.end
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %29, i32 0, i32 0
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !30
  %call15 = call i32 @gs_cspace_build_CIEA(%struct.gs_color_space_s** %pcs, i8* null, %struct.gs_memory_s* %30) #4
  store i32 %call15, i32* %code, align 4, !tbaa !5
  %31 = load i32, i32* %code, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %31, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.14
  %32 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.then.14
  %33 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %33, i32 0, i32 7
  %a = bitcast %union.anon.0* %params to %struct.gs_cie_a_s**
  %34 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %a, align 8, !tbaa !1
  store %struct.gs_cie_a_s* %34, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  %35 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %35, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %36 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !66
  %37 = bitcast %struct.gs_ref_memory_s* %36 to %struct.gs_memory_s*
  %38 = load %struct.ref_s*, %struct.ref_s** %CIEdict.addr, align 8, !tbaa !1
  %39 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  %call19 = call i32 @cie_a_param(%struct.gs_memory_s* %37, %struct.ref_s* %38, %struct.gs_cie_a_s* %39, %struct.ref_cie_procs_s* %procs, i32* %has_a_procs, i32* %has_lmn_procs) #4
  store i32 %call19, i32* %code, align 4, !tbaa !5
  %40 = load i32, i32* %code, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %40, 0
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.18
  %41 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %41, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %if.end.18
  %42 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %43 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %44 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  %45 = bitcast %struct.gs_cie_a_s* %44 to i8*
  %call23 = call i32 @cie_cache_push_finish(%struct.gs_context_state_s* %42, i32 (%struct.gs_context_state_s*)* @cie_a_finish, %struct.gs_ref_memory_s* %43, i8* %45) #4
  store i32 %call23, i32* %code, align 4, !tbaa !5
  %46 = load i32, i32* %code, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %46, 0
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.22
  %47 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %47, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %if.end.22
  %48 = load i32, i32* %has_a_procs, align 4, !tbaa !5
  %tobool = icmp ne i32 %48, 0
  br i1 %tobool, label %if.else.48, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.26
  %49 = load i32, i32* %has_lmn_procs, align 4, !tbaa !5
  %tobool27 = icmp ne i32 %49, 0
  br i1 %tobool27, label %if.else.48, label %if.then.28

if.then.28:                                       ; preds = %land.lhs.true
  %50 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  %common = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %50, i32 0, i32 0
  %caches = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common, i32 0, i32 6
  %DecodeLMN = getelementptr inbounds %struct.anon, %struct.anon* %caches, i32 0, i32 0
  %arraydecay = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeLMN, i32 0, i32 0
  %floats = bitcast %union.gx_cie_scalar_cache_s* %arraydecay to %struct.cie_cache_floats_s*
  %params29 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats, i32 0, i32 0
  %is_identity = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params29, i32 0, i32 0
  store i32 1, i32* %is_identity, align 4, !tbaa !73
  %51 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  %common30 = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %51, i32 0, i32 0
  %caches31 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common30, i32 0, i32 6
  %DecodeLMN32 = getelementptr inbounds %struct.anon, %struct.anon* %caches31, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeLMN32, i32 0, i64 1
  %floats34 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx33 to %struct.cie_cache_floats_s*
  %params35 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats34, i32 0, i32 0
  %is_identity36 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params35, i32 0, i32 0
  store i32 1, i32* %is_identity36, align 4, !tbaa !73
  %52 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  %common37 = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %52, i32 0, i32 0
  %caches38 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common37, i32 0, i32 6
  %DecodeLMN39 = getelementptr inbounds %struct.anon, %struct.anon* %caches38, i32 0, i32 0
  %arrayidx40 = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeLMN39, i32 0, i64 2
  %floats41 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx40 to %struct.cie_cache_floats_s*
  %params42 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats41, i32 0, i32 0
  %is_identity43 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params42, i32 0, i32 0
  store i32 1, i32* %is_identity43, align 4, !tbaa !73
  %53 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  %caches44 = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %53, i32 0, i32 5
  %DecodeA = getelementptr inbounds %struct.anon.6, %struct.anon.6* %caches44, i32 0, i32 0
  %floats45 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %DecodeA, i32 0, i32 0
  %params46 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats45, i32 0, i32 0
  %is_identity47 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params46, i32 0, i32 0
  store i32 1, i32* %is_identity47, align 4, !tbaa !86
  br label %if.end.109

if.else.48:                                       ; preds = %land.lhs.true, %if.end.26
  %54 = load i32, i32* %has_a_procs, align 4, !tbaa !5
  %tobool49 = icmp ne i32 %54, 0
  br i1 %tobool49, label %if.then.50, label %if.else.58

if.then.50:                                       ; preds = %if.else.48
  %55 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %56 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  %RangeA = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %56, i32 0, i32 2
  %Decode = getelementptr inbounds %struct.ref_cie_procs_s, %struct.ref_cie_procs_s* %procs, i32 0, i32 1
  %A = bitcast %union.anon.9* %Decode to %struct.ref_s*
  %57 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  %caches51 = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %57, i32 0, i32 5
  %DecodeA52 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %caches51, i32 0, i32 0
  %floats53 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %DecodeA52, i32 0, i32 0
  %58 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  %59 = bitcast %struct.gs_cie_a_s* %58 to i8*
  %60 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %call54 = call i32 @cie_prepare_iccproc(%struct.gs_context_state_s* %55, %struct.gs_range_s* %RangeA, %struct.ref_s* %A, %struct.cie_cache_floats_s* %floats53, i8* %59, %struct.gs_ref_memory_s* %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0)) #4
  store i32 %call54, i32* %code, align 4, !tbaa !5
  %61 = load i32, i32* %code, align 4, !tbaa !5
  %cmp55 = icmp slt i32 %61, 0
  br i1 %cmp55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.then.50
  %62 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %62, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.57:                                        ; preds = %if.then.50
  br label %if.end.64

if.else.58:                                       ; preds = %if.else.48
  %63 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  %caches59 = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %63, i32 0, i32 5
  %DecodeA60 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %caches59, i32 0, i32 0
  %floats61 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %DecodeA60, i32 0, i32 0
  %params62 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats61, i32 0, i32 0
  %is_identity63 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params62, i32 0, i32 0
  store i32 1, i32* %is_identity63, align 4, !tbaa !86
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.58, %if.end.57
  %64 = load i32, i32* %has_lmn_procs, align 4, !tbaa !5
  %tobool65 = icmp ne i32 %64, 0
  br i1 %tobool65, label %if.then.66, label %if.else.86

if.then.66:                                       ; preds = %if.end.64
  %65 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %66 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  %common67 = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %66, i32 0, i32 0
  %RangeLMN = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common67, i32 0, i32 2
  %ranges = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeLMN, i32 0, i32 0
  %arraydecay68 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges, i32 0, i32 0
  %DecodeLMN69 = getelementptr inbounds %struct.ref_cie_procs_s, %struct.ref_cie_procs_s* %procs, i32 0, i32 2
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %DecodeLMN69, i32 0, i32 1
  %const_refs = bitcast %union.v* %value to %struct.ref_s**
  %67 = load %struct.ref_s*, %struct.ref_s** %const_refs, align 8, !tbaa !1
  %68 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  %common70 = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %68, i32 0, i32 0
  %caches71 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common70, i32 0, i32 6
  %DecodeLMN72 = getelementptr inbounds %struct.anon, %struct.anon* %caches71, i32 0, i32 0
  %arraydecay73 = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeLMN72, i32 0, i32 0
  %floats74 = bitcast %union.gx_cie_scalar_cache_s* %arraydecay73 to %struct.cie_cache_floats_s*
  %69 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  %common75 = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %69, i32 0, i32 0
  %caches76 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common75, i32 0, i32 6
  %DecodeLMN77 = getelementptr inbounds %struct.anon, %struct.anon* %caches76, i32 0, i32 0
  %arrayidx78 = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeLMN77, i32 0, i64 1
  %floats79 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx78 to %struct.cie_cache_floats_s*
  %70 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  %common80 = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %70, i32 0, i32 0
  %caches81 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common80, i32 0, i32 6
  %DecodeLMN82 = getelementptr inbounds %struct.anon, %struct.anon* %caches81, i32 0, i32 0
  %arrayidx83 = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeLMN82, i32 0, i64 2
  %floats84 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx83 to %struct.cie_cache_floats_s*
  %71 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  %72 = bitcast %struct.gs_cie_a_s* %71 to i8*
  %73 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %call85 = call i32 @cieicc_prepare_caches(%struct.gs_context_state_s* %65, %struct.gs_range_s* %arraydecay68, %struct.ref_s* %67, %struct.cie_cache_floats_s* %floats74, %struct.cie_cache_floats_s* %floats79, %struct.cie_cache_floats_s* %floats84, %struct.cie_cache_floats_s* null, i8* %72, %struct.gs_ref_memory_s* %73, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0)) #4
  br label %if.end.108

if.else.86:                                       ; preds = %if.end.64
  %74 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  %common87 = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %74, i32 0, i32 0
  %caches88 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common87, i32 0, i32 6
  %DecodeLMN89 = getelementptr inbounds %struct.anon, %struct.anon* %caches88, i32 0, i32 0
  %arraydecay90 = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeLMN89, i32 0, i32 0
  %floats91 = bitcast %union.gx_cie_scalar_cache_s* %arraydecay90 to %struct.cie_cache_floats_s*
  %params92 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats91, i32 0, i32 0
  %is_identity93 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params92, i32 0, i32 0
  store i32 1, i32* %is_identity93, align 4, !tbaa !73
  %75 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  %common94 = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %75, i32 0, i32 0
  %caches95 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common94, i32 0, i32 6
  %DecodeLMN96 = getelementptr inbounds %struct.anon, %struct.anon* %caches95, i32 0, i32 0
  %arrayidx97 = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeLMN96, i32 0, i64 1
  %floats98 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx97 to %struct.cie_cache_floats_s*
  %params99 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats98, i32 0, i32 0
  %is_identity100 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params99, i32 0, i32 0
  store i32 1, i32* %is_identity100, align 4, !tbaa !73
  %76 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  %common101 = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %76, i32 0, i32 0
  %caches102 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common101, i32 0, i32 6
  %DecodeLMN103 = getelementptr inbounds %struct.anon, %struct.anon* %caches102, i32 0, i32 0
  %arrayidx104 = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeLMN103, i32 0, i64 2
  %floats105 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx104 to %struct.cie_cache_floats_s*
  %params106 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats105, i32 0, i32 0
  %is_identity107 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params106, i32 0, i32 0
  store i32 1, i32* %is_identity107, align 4, !tbaa !73
  br label %if.end.108

if.end.108:                                       ; preds = %if.else.86, %if.then.66
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.then.28
  %77 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs110 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %77, i32 0, i32 0
  %78 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs110, align 8, !tbaa !39
  %79 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %80 = load i64, i64* %dictkey.addr, align 8, !tbaa !15
  call void @gsicc_add_cs(%struct.gs_state_s* %78, %struct.gs_color_space_s* %79, i64 %80) #4
  br label %if.end.124

if.else.111:                                      ; preds = %do.end
  br label %do.body.112

do.body.112:                                      ; preds = %if.else.111
  %81 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %tobool113 = icmp ne %struct.gs_color_space_s* %81, null
  br i1 %tobool113, label %if.then.114, label %if.end.121

if.then.114:                                      ; preds = %do.body.112
  br label %do.body.115

do.body.115:                                      ; preds = %if.then.114
  %82 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %82, i32 0, i32 1
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %83 = load i64, i64* %ref_count, align 8, !tbaa !67
  %inc = add nsw i64 %83, 1
  store i64 %inc, i64* %ref_count, align 8, !tbaa !67
  br label %do.body.116

do.body.116:                                      ; preds = %do.body.115
  br label %do.cond.117

do.cond.117:                                      ; preds = %do.body.116
  br label %do.end.118

do.end.118:                                       ; preds = %do.cond.117
  br label %do.cond.119

do.cond.119:                                      ; preds = %do.end.118
  br label %do.end.120

do.end.120:                                       ; preds = %do.cond.119
  br label %if.end.121

if.end.121:                                       ; preds = %do.end.120, %do.body.112
  br label %do.cond.122

do.cond.122:                                      ; preds = %if.end.121
  br label %do.end.123

do.end.123:                                       ; preds = %do.cond.122
  br label %if.end.124

if.end.124:                                       ; preds = %do.end.123, %if.end.109
  %84 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %85 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %86 = load i32, i32* %edepth, align 4, !tbaa !5
  %87 = load i32, i32* %code, align 4, !tbaa !5
  %call125 = call i32 @cie_set_finish(%struct.gs_context_state_s* %84, %struct.gs_color_space_s* %85, %struct.ref_cie_procs_s* %procs, i32 %86, i32 %87) #4
  store i32 %call125, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.124, %if.then.56, %if.then.25, %if.then.21, %if.then.17, %if.then
  %88 = bitcast i32* %has_lmn_procs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #1
  %89 = bitcast i32* %has_a_procs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #1
  %90 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  %91 = bitcast %struct.gs_cie_a_s** %pcie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #1
  %92 = bitcast %struct.ref_cie_procs_s* %procs to i8*
  call void @llvm.lifetime.end(i64 48, i8* %92) #1
  %93 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #1
  %94 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  %95 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #1
  %96 = bitcast i32* %edepth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #1
  %97 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  %98 = load i32, i32* %retval
  ret i32 %98
}

declare i32 @gs_cspace_build_CIEA(%struct.gs_color_space_s**, i8*, %struct.gs_memory_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @cie_a_param(%struct.gs_memory_s* %mem, %struct.ref_s* %pdref, %struct.gs_cie_a_s* %pcie, %struct.ref_cie_procs_s* %pcprocs, i32* %has_a_procs, i32* %has_lmn_procs) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pdref.addr = alloca %struct.ref_s*, align 8
  %pcie.addr = alloca %struct.gs_cie_a_s*, align 8
  %pcprocs.addr = alloca %struct.ref_cie_procs_s*, align 8
  %has_a_procs.addr = alloca i32*, align 8
  %has_lmn_procs.addr = alloca i32*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %pdref, %struct.ref_s** %pdref.addr, align 8, !tbaa !1
  store %struct.gs_cie_a_s* %pcie, %struct.gs_cie_a_s** %pcie.addr, align 8, !tbaa !1
  store %struct.ref_cie_procs_s* %pcprocs, %struct.ref_cie_procs_s** %pcprocs.addr, align 8, !tbaa !1
  store i32* %has_a_procs, i32** %has_a_procs.addr, align 8, !tbaa !1
  store i32* %has_lmn_procs, i32** %has_lmn_procs.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !1
  %3 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie.addr, align 8, !tbaa !1
  %RangeA = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %3, i32 0, i32 2
  %4 = bitcast %struct.gs_range_s* %RangeA to float*
  %call = call i32 @dict_floats_param(%struct.gs_memory_s* %1, %struct.ref_s* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i32 2, float* %4, float* getelementptr inbounds (%struct.gs_range_s, %struct.gs_range_s* @RangeA_default, i32 0, i32 0)) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %5 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %8 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !1
  %9 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie.addr, align 8, !tbaa !1
  %MatrixA = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %9, i32 0, i32 4
  %10 = bitcast %struct.gs_vector3_s* %MatrixA to float*
  %call1 = call i32 @dict_floats_param(%struct.gs_memory_s* %7, %struct.ref_s* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i32 3, float* %10, float* getelementptr inbounds (%struct.gs_vector3_s, %struct.gs_vector3_s* @MatrixA_default, i32 0, i32 0)) #4
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %11 = load i32, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %11, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %12 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %14 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !1
  %15 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie.addr, align 8, !tbaa !1
  %common = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %15, i32 0, i32 0
  %16 = load %struct.ref_cie_procs_s*, %struct.ref_cie_procs_s** %pcprocs.addr, align 8, !tbaa !1
  %17 = load i32*, i32** %has_lmn_procs.addr, align 8, !tbaa !1
  %call5 = call i32 @cie_lmnp_param(%struct.gs_memory_s* %13, %struct.ref_s* %14, %struct.gs_cie_common_s* %common, %struct.ref_cie_procs_s* %16, i32* %17) #4
  store i32 %call5, i32* %code, align 4, !tbaa !5
  %18 = load i32, i32* %code, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %18, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  %19 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end.4
  %20 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !1
  %21 = load %struct.ref_cie_procs_s*, %struct.ref_cie_procs_s** %pcprocs.addr, align 8, !tbaa !1
  %Decode = getelementptr inbounds %struct.ref_cie_procs_s, %struct.ref_cie_procs_s* %21, i32 0, i32 1
  %A = bitcast %union.anon.9* %Decode to %struct.ref_s*
  %call9 = call i32 @dict_proc_param(%struct.ref_s* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), %struct.ref_s* %A, i32 1) #4
  store i32 %call9, i32* %code, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  %22 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end.8
  %23 = load i32, i32* %code, align 4, !tbaa !5
  %tobool = icmp ne i32 %23, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %24 = load i32*, i32** %has_a_procs.addr, align 8, !tbaa !1
  store i32 %lnot.ext, i32* %24, align 4, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.12, %if.then.11, %if.then.7, %if.then.3, %if.then
  %25 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal i32 @cie_a_finish(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %pcie = alloca %struct.gs_cie_a_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !49
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_cie_a_s** %pcie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %5 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %6 = bitcast %struct.obj_header_s* %5 to %struct.gs_cie_a_s*
  store %struct.gs_cie_a_s* %6, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  %7 = load float (double, %struct.gs_cie_a_s*)*, float (double, %struct.gs_cie_a_s*)** @DecodeA_from_cache, align 8, !tbaa !1
  %8 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  %DecodeA = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %8, i32 0, i32 3
  store float (double, %struct.gs_cie_a_s*)* %7, float (double, %struct.gs_cie_a_s*)** %DecodeA, align 8, !tbaa !90
  %9 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  %common = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %9, i32 0, i32 0
  %DecodeLMN = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common, i32 0, i32 3
  %10 = bitcast %struct.gs_cie_common_proc3_s* %DecodeLMN to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* bitcast (%struct.gs_cie_common_proc3_s* @DecodeLMN_from_cache to i8*), i64 24, i32 8, i1 false), !tbaa.struct !72
  %11 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  call void @gs_cie_a_complete(%struct.gs_cie_a_s* %11) #4
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %p3 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 0
  %13 = load %struct.ref_s*, %struct.ref_s** %p3, align 8, !tbaa !49
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p3, align 8, !tbaa !49
  %14 = bitcast %struct.gs_cie_a_s** %pcie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @cie_prepare_iccproc(%struct.gs_context_state_s* %i_ctx_p, %struct.gs_range_s* %domain, %struct.ref_s* %proc, %struct.cie_cache_floats_s* %pcache, i8* %container, %struct.gs_ref_memory_s* %imem, i8* %cname) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %domain.addr = alloca %struct.gs_range_s*, align 8
  %proc.addr = alloca %struct.ref_s*, align 8
  %pcache.addr = alloca %struct.cie_cache_floats_s*, align 8
  %container.addr = alloca i8*, align 8
  %imem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %cname.addr = alloca i8*, align 8
  %space = alloca i32, align 4
  %lp = alloca %struct.gs_sample_loop_params_s, align 4
  %ep = alloca %struct.ref_s*, align 8
  %es_code_ = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.gs_range_s* %domain, %struct.gs_range_s** %domain.addr, align 8, !tbaa !1
  store %struct.ref_s* %proc, %struct.ref_s** %proc.addr, align 8, !tbaa !1
  store %struct.cie_cache_floats_s* %pcache, %struct.cie_cache_floats_s** %pcache.addr, align 8, !tbaa !1
  store i8* %container, i8** %container.addr, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %imem, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast i32* %space to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %call = call i32 @imemory_space(%struct.gs_ref_memory_s* %1) #4
  store i32 %call, i32* %space, align 4, !tbaa !5
  %2 = bitcast %struct.gs_sample_loop_params_s* %lp to i8*
  call void @llvm.lifetime.start(i64 12, i8* %2) #1
  %3 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pcache.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %4, i32 0, i32 0
  %5 = load %struct.gs_range_s*, %struct.gs_range_s** %domain.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void @gs_cie_cache_init(%struct.cie_cache_params_s* %params, %struct.gs_sample_loop_params_s* %lp, %struct.gs_range_s* %5, i8* %6) #4
  %7 = load %struct.ref_s*, %struct.ref_s** %proc.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %8 = load i32, i32* %rsize, align 4, !tbaa !8
  %cmp = icmp eq i32 %8, 0
  %conv = zext i1 %cmp to i32
  %9 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pcache.addr, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %9, i32 0, i32 0
  %is_identity = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params1, i32 0, i32 0
  store i32 %conv, i32* %is_identity, align 4, !tbaa !73
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %11 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !69
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 25
  %stack3 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack2, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack3, i32 0, i32 2
  %13 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !70
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -9
  %cmp4 = icmp ugt %struct.ref_s* %11, %add.ptr
  br i1 %cmp4, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  %14 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack6 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 25
  %stack7 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack6, i32 0, i32 0
  %call8 = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack7, i32 9) #4
  store i32 %call8, i32* %es_code_, align 4, !tbaa !5
  %16 = load i32, i32* %es_code_, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %16, 0
  br i1 %cmp9, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then
  %17 = load i32, i32* %es_code_, align 4, !tbaa !5
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.11
  %18 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.78 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.12

if.end.12:                                        ; preds = %cleanup.cont, %entry
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack13 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 25
  %stack14 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack13, i32 0, i32 0
  %p15 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack14, i32 0, i32 0
  %20 = load %struct.ref_s*, %struct.ref_s** %p15, align 8, !tbaa !69
  store %struct.ref_s* %20, %struct.ref_s** %ep, align 8, !tbaa !1
  %A = getelementptr inbounds %struct.gs_sample_loop_params_s, %struct.gs_sample_loop_params_s* %lp, i32 0, i32 0
  %21 = load float, float* %A, align 4, !tbaa !91
  %22 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 9
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr16, i32 0, i32 1
  %realval = bitcast %union.v* %value to float*
  store float %21, float* %realval, align 4, !tbaa !17
  %23 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i64 9
  %tas18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr17, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas18, i32 0, i32 0
  store i16 4096, i16* %type_attrs, align 2, !tbaa !12
  %N = getelementptr inbounds %struct.gs_sample_loop_params_s, %struct.gs_sample_loop_params_s* %lp, i32 0, i32 2
  %24 = load i32, i32* %N, align 4, !tbaa !93
  %conv19 = sext i32 %24 to i64
  %25 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i64 8
  %value21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr20, i32 0, i32 1
  %intval = bitcast %union.v* %value21 to i64*
  store i64 %conv19, i64* %intval, align 8, !tbaa !15
  %26 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 8
  %tas23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr22, i32 0, i32 0
  %type_attrs24 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas23, i32 0, i32 0
  store i16 2816, i16* %type_attrs24, align 2, !tbaa !12
  %B = getelementptr inbounds %struct.gs_sample_loop_params_s, %struct.gs_sample_loop_params_s* %lp, i32 0, i32 1
  %27 = load float, float* %B, align 4, !tbaa !94
  %28 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i64 7
  %value26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr25, i32 0, i32 1
  %realval27 = bitcast %union.v* %value26 to float*
  store float %27, float* %realval27, align 4, !tbaa !17
  %29 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i64 7
  %tas29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr28, i32 0, i32 0
  %type_attrs30 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas29, i32 0, i32 0
  store i16 4096, i16* %type_attrs30, align 2, !tbaa !12
  %30 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i64 6
  %31 = load %struct.ref_s*, %struct.ref_s** %proc.addr, align 8, !tbaa !1
  %32 = bitcast %struct.ref_s* %arrayidx to i8*
  %33 = bitcast %struct.ref_s* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 16, i32 8, i1 false), !tbaa.struct !13
  %34 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i64 6
  %tas32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr31, i32 0, i32 0
  %type_attrs33 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas32, i32 0, i32 0
  %35 = load i16, i16* %type_attrs33, align 2, !tbaa !12
  %conv34 = zext i16 %35 to i32
  %and = and i32 %conv34, -129
  %conv35 = trunc i32 %and to i16
  store i16 %conv35, i16* %type_attrs33, align 2, !tbaa !12
  %36 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i64 5
  %value37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr36, i32 0, i32 1
  %opproc = bitcast %union.v* %value37 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @zcvx, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %37 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i64 5
  %tas39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr38, i32 0, i32 0
  %type_attrs40 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas39, i32 0, i32 0
  store i16 3968, i16* %type_attrs40, align 2, !tbaa !12
  %38 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i64 5
  %tas42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr41, i32 0, i32 0
  %rsize43 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas42, i32 0, i32 2
  store i32 0, i32* %rsize43, align 4, !tbaa !8
  %39 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i64 4
  %value45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr44, i32 0, i32 1
  %opproc46 = bitcast %union.v* %value45 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @zfor_samples, i32 (%struct.gs_context_state_s*)** %opproc46, align 8, !tbaa !1
  %40 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i64 4
  %tas48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr47, i32 0, i32 0
  %type_attrs49 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas48, i32 0, i32 0
  store i16 3968, i16* %type_attrs49, align 2, !tbaa !12
  %41 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i64 4
  %tas51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr50, i32 0, i32 0
  %rsize52 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas51, i32 0, i32 2
  store i32 0, i32* %rsize52, align 4, !tbaa !8
  %42 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i64 3
  %value54 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr53, i32 0, i32 1
  %opproc55 = bitcast %union.v* %value54 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @cie_create_icc, i32 (%struct.gs_context_state_s*)** %opproc55, align 8, !tbaa !1
  %43 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i64 3
  %tas57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr56, i32 0, i32 0
  %type_attrs58 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas57, i32 0, i32 0
  store i16 3968, i16* %type_attrs58, align 2, !tbaa !12
  %44 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i64 3
  %tas60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr59, i32 0, i32 0
  %rsize61 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas60, i32 0, i32 2
  store i32 0, i32* %rsize61, align 4, !tbaa !8
  %45 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack62 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %45, i32 0, i32 25
  %stack63 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack62, i32 0, i32 0
  %p64 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack63, i32 0, i32 0
  %46 = load %struct.ref_s*, %struct.ref_s** %p64, align 8, !tbaa !69
  %add.ptr65 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i64 9
  store %struct.ref_s* %add.ptr65, %struct.ref_s** %p64, align 8, !tbaa !69
  %47 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pcache.addr, align 8, !tbaa !1
  %48 = bitcast %struct.cie_cache_floats_s* %47 to i8*
  %49 = load i8*, i8** %container.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %48 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %49 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %50 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr66 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %50, i64 2
  %value67 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr66, i32 0, i32 1
  %intval68 = bitcast %union.v* %value67 to i64*
  store i64 %sub.ptr.sub, i64* %intval68, align 8, !tbaa !15
  %51 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr69 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i64 2
  %tas70 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr69, i32 0, i32 0
  %type_attrs71 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas70, i32 0, i32 0
  store i16 2816, i16* %type_attrs71, align 2, !tbaa !12
  %52 = load i8*, i8** %container.addr, align 8, !tbaa !1
  %53 = bitcast i8* %52 to %struct.obj_header_s*
  %54 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr72 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %54, i64 1
  %value73 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr72, i32 0, i32 1
  %pstruct = bitcast %union.v* %value73 to %struct.obj_header_s**
  store %struct.obj_header_s* %53, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %55 = load i32, i32* %space, align 4, !tbaa !5
  %add = add nsw i32 2048, %55
  %conv74 = trunc i32 %add to i16
  %56 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr75 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %56, i64 1
  %tas76 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr75, i32 0, i32 0
  %type_attrs77 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas76, i32 0, i32 0
  store i16 %conv74, i16* %type_attrs77, align 2, !tbaa !12
  store i32 5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.78

cleanup.78:                                       ; preds = %if.end.12, %cleanup
  %57 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #1
  %58 = bitcast %struct.gs_sample_loop_params_s* %lp to i8*
  call void @llvm.lifetime.end(i64 12, i8* %58) #1
  %59 = bitcast i32* %space to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = load i32, i32* %retval
  ret i32 %60
}

; Function Attrs: nounwind uwtable
define i32 @cieicc_prepare_caches(%struct.gs_context_state_s* %i_ctx_p, %struct.gs_range_s* %domains, %struct.ref_s* %procs, %struct.cie_cache_floats_s* %pc0, %struct.cie_cache_floats_s* %pc1, %struct.cie_cache_floats_s* %pc2, %struct.cie_cache_floats_s* %pc3, i8* %container, %struct.gs_ref_memory_s* %imem, i8* %cname) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %domains.addr = alloca %struct.gs_range_s*, align 8
  %procs.addr = alloca %struct.ref_s*, align 8
  %pc0.addr = alloca %struct.cie_cache_floats_s*, align 8
  %pc1.addr = alloca %struct.cie_cache_floats_s*, align 8
  %pc2.addr = alloca %struct.cie_cache_floats_s*, align 8
  %pc3.addr = alloca %struct.cie_cache_floats_s*, align 8
  %container.addr = alloca i8*, align 8
  %imem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %cname.addr = alloca i8*, align 8
  %pcn = alloca [4 x %struct.cie_cache_floats_s*], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.gs_range_s* %domains, %struct.gs_range_s** %domains.addr, align 8, !tbaa !1
  store %struct.ref_s* %procs, %struct.ref_s** %procs.addr, align 8, !tbaa !1
  store %struct.cie_cache_floats_s* %pc0, %struct.cie_cache_floats_s** %pc0.addr, align 8, !tbaa !1
  store %struct.cie_cache_floats_s* %pc1, %struct.cie_cache_floats_s** %pc1.addr, align 8, !tbaa !1
  store %struct.cie_cache_floats_s* %pc2, %struct.cie_cache_floats_s** %pc2.addr, align 8, !tbaa !1
  store %struct.cie_cache_floats_s* %pc3, %struct.cie_cache_floats_s** %pc3.addr, align 8, !tbaa !1
  store i8* %container, i8** %container.addr, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %imem, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast [4 x %struct.cie_cache_floats_s*]* %pcn to i8*
  call void @llvm.lifetime.start(i64 32, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %4 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pc0.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds [4 x %struct.cie_cache_floats_s*], [4 x %struct.cie_cache_floats_s*]* %pcn, i32 0, i64 0
  store %struct.cie_cache_floats_s* %4, %struct.cie_cache_floats_s** %arrayidx, align 8, !tbaa !1
  %5 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pc1.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds [4 x %struct.cie_cache_floats_s*], [4 x %struct.cie_cache_floats_s*]* %pcn, i32 0, i64 1
  store %struct.cie_cache_floats_s* %5, %struct.cie_cache_floats_s** %arrayidx1, align 8, !tbaa !1
  %6 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pc2.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds [4 x %struct.cie_cache_floats_s*], [4 x %struct.cie_cache_floats_s*]* %pcn, i32 0, i64 2
  store %struct.cie_cache_floats_s* %6, %struct.cie_cache_floats_s** %arrayidx2, align 8, !tbaa !1
  %7 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pc3.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.cie_cache_floats_s* %7, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 3, i32* %n, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pc3.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds [4 x %struct.cie_cache_floats_s*], [4 x %struct.cie_cache_floats_s*]* %pcn, i32 0, i64 3
  store %struct.cie_cache_floats_s* %8, %struct.cie_cache_floats_s** %arrayidx3, align 8, !tbaa !1
  store i32 4, i32* %n, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, i32* %i, align 4, !tbaa !5
  %10 = load i32, i32* %n, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %9, %10
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %11 = load i32, i32* %code, align 4, !tbaa !5
  %cmp5 = icmp sge i32 %11, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %12 = phi i1 [ false, %for.cond ], [ %cmp5, %land.rhs ]
  br i1 %12, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %14 = load %struct.gs_range_s*, %struct.gs_range_s** %domains.addr, align 8, !tbaa !1
  %15 = load i32, i32* %i, align 4, !tbaa !5
  %idx.ext = sext i32 %15 to i64
  %add.ptr = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %14, i64 %idx.ext
  %16 = load %struct.ref_s*, %struct.ref_s** %procs.addr, align 8, !tbaa !1
  %17 = load i32, i32* %i, align 4, !tbaa !5
  %idx.ext6 = sext i32 %17 to i64
  %add.ptr7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 %idx.ext6
  %18 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %18 to i64
  %arrayidx8 = getelementptr inbounds [4 x %struct.cie_cache_floats_s*], [4 x %struct.cie_cache_floats_s*]* %pcn, i32 0, i64 %idxprom
  %19 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %arrayidx8, align 8, !tbaa !1
  %20 = load i8*, i8** %container.addr, align 8, !tbaa !1
  %21 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %22 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i32 @cie_prepare_iccproc(%struct.gs_context_state_s* %13, %struct.gs_range_s* %add.ptr, %struct.ref_s* %add.ptr7, %struct.cie_cache_floats_s* %19, i8* %20, %struct.gs_ref_memory_s* %21, i8* %22) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %land.end
  %24 = load i32, i32* %code, align 4, !tbaa !5
  %25 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = bitcast [4 x %struct.cie_cache_floats_s*]* %pcn to i8*
  call void @llvm.lifetime.end(i64 32, i8* %28) #1
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define i32 @cie_prepare_cache(%struct.gs_context_state_s* %i_ctx_p, %struct.gs_range_s* %domain, %struct.ref_s* %proc, %struct.cie_cache_floats_s* %pcache, i8* %container, %struct.gs_ref_memory_s* %imem, i8* %cname) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %domain.addr = alloca %struct.gs_range_s*, align 8
  %proc.addr = alloca %struct.ref_s*, align 8
  %pcache.addr = alloca %struct.cie_cache_floats_s*, align 8
  %container.addr = alloca i8*, align 8
  %imem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %cname.addr = alloca i8*, align 8
  %space = alloca i32, align 4
  %lp = alloca %struct.gs_sample_loop_params_s, align 4
  %ep = alloca %struct.ref_s*, align 8
  %es_code_ = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.gs_range_s* %domain, %struct.gs_range_s** %domain.addr, align 8, !tbaa !1
  store %struct.ref_s* %proc, %struct.ref_s** %proc.addr, align 8, !tbaa !1
  store %struct.cie_cache_floats_s* %pcache, %struct.cie_cache_floats_s** %pcache.addr, align 8, !tbaa !1
  store i8* %container, i8** %container.addr, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %imem, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast i32* %space to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %call = call i32 @imemory_space(%struct.gs_ref_memory_s* %1) #4
  store i32 %call, i32* %space, align 4, !tbaa !5
  %2 = bitcast %struct.gs_sample_loop_params_s* %lp to i8*
  call void @llvm.lifetime.start(i64 12, i8* %2) #1
  %3 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pcache.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %4, i32 0, i32 0
  %5 = load %struct.gs_range_s*, %struct.gs_range_s** %domain.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void @gs_cie_cache_init(%struct.cie_cache_params_s* %params, %struct.gs_sample_loop_params_s* %lp, %struct.gs_range_s* %5, i8* %6) #4
  %7 = load %struct.ref_s*, %struct.ref_s** %proc.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %8 = load i32, i32* %rsize, align 4, !tbaa !8
  %cmp = icmp eq i32 %8, 0
  %conv = zext i1 %cmp to i32
  %9 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pcache.addr, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %9, i32 0, i32 0
  %is_identity = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params1, i32 0, i32 0
  store i32 %conv, i32* %is_identity, align 4, !tbaa !73
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %11 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !69
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 25
  %stack3 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack2, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack3, i32 0, i32 2
  %13 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !70
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -9
  %cmp4 = icmp ugt %struct.ref_s* %11, %add.ptr
  br i1 %cmp4, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  %14 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack6 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 25
  %stack7 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack6, i32 0, i32 0
  %call8 = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack7, i32 9) #4
  store i32 %call8, i32* %es_code_, align 4, !tbaa !5
  %16 = load i32, i32* %es_code_, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %16, 0
  br i1 %cmp9, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then
  %17 = load i32, i32* %es_code_, align 4, !tbaa !5
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.11
  %18 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.78 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.12

if.end.12:                                        ; preds = %cleanup.cont, %entry
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack13 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 25
  %stack14 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack13, i32 0, i32 0
  %p15 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack14, i32 0, i32 0
  %20 = load %struct.ref_s*, %struct.ref_s** %p15, align 8, !tbaa !69
  store %struct.ref_s* %20, %struct.ref_s** %ep, align 8, !tbaa !1
  %A = getelementptr inbounds %struct.gs_sample_loop_params_s, %struct.gs_sample_loop_params_s* %lp, i32 0, i32 0
  %21 = load float, float* %A, align 4, !tbaa !91
  %22 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 9
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr16, i32 0, i32 1
  %realval = bitcast %union.v* %value to float*
  store float %21, float* %realval, align 4, !tbaa !17
  %23 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i64 9
  %tas18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr17, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas18, i32 0, i32 0
  store i16 4096, i16* %type_attrs, align 2, !tbaa !12
  %N = getelementptr inbounds %struct.gs_sample_loop_params_s, %struct.gs_sample_loop_params_s* %lp, i32 0, i32 2
  %24 = load i32, i32* %N, align 4, !tbaa !93
  %conv19 = sext i32 %24 to i64
  %25 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i64 8
  %value21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr20, i32 0, i32 1
  %intval = bitcast %union.v* %value21 to i64*
  store i64 %conv19, i64* %intval, align 8, !tbaa !15
  %26 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 8
  %tas23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr22, i32 0, i32 0
  %type_attrs24 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas23, i32 0, i32 0
  store i16 2816, i16* %type_attrs24, align 2, !tbaa !12
  %B = getelementptr inbounds %struct.gs_sample_loop_params_s, %struct.gs_sample_loop_params_s* %lp, i32 0, i32 1
  %27 = load float, float* %B, align 4, !tbaa !94
  %28 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i64 7
  %value26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr25, i32 0, i32 1
  %realval27 = bitcast %union.v* %value26 to float*
  store float %27, float* %realval27, align 4, !tbaa !17
  %29 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i64 7
  %tas29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr28, i32 0, i32 0
  %type_attrs30 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas29, i32 0, i32 0
  store i16 4096, i16* %type_attrs30, align 2, !tbaa !12
  %30 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i64 6
  %31 = load %struct.ref_s*, %struct.ref_s** %proc.addr, align 8, !tbaa !1
  %32 = bitcast %struct.ref_s* %arrayidx to i8*
  %33 = bitcast %struct.ref_s* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 16, i32 8, i1 false), !tbaa.struct !13
  %34 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i64 6
  %tas32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr31, i32 0, i32 0
  %type_attrs33 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas32, i32 0, i32 0
  %35 = load i16, i16* %type_attrs33, align 2, !tbaa !12
  %conv34 = zext i16 %35 to i32
  %and = and i32 %conv34, -129
  %conv35 = trunc i32 %and to i16
  store i16 %conv35, i16* %type_attrs33, align 2, !tbaa !12
  %36 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i64 5
  %value37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr36, i32 0, i32 1
  %opproc = bitcast %union.v* %value37 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @zcvx, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %37 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i64 5
  %tas39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr38, i32 0, i32 0
  %type_attrs40 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas39, i32 0, i32 0
  store i16 3968, i16* %type_attrs40, align 2, !tbaa !12
  %38 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i64 5
  %tas42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr41, i32 0, i32 0
  %rsize43 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas42, i32 0, i32 2
  store i32 0, i32* %rsize43, align 4, !tbaa !8
  %39 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i64 4
  %value45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr44, i32 0, i32 1
  %opproc46 = bitcast %union.v* %value45 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @zfor_samples, i32 (%struct.gs_context_state_s*)** %opproc46, align 8, !tbaa !1
  %40 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i64 4
  %tas48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr47, i32 0, i32 0
  %type_attrs49 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas48, i32 0, i32 0
  store i16 3968, i16* %type_attrs49, align 2, !tbaa !12
  %41 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i64 4
  %tas51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr50, i32 0, i32 0
  %rsize52 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas51, i32 0, i32 2
  store i32 0, i32* %rsize52, align 4, !tbaa !8
  %42 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i64 3
  %value54 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr53, i32 0, i32 1
  %opproc55 = bitcast %union.v* %value54 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @cie_cache_finish, i32 (%struct.gs_context_state_s*)** %opproc55, align 8, !tbaa !1
  %43 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i64 3
  %tas57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr56, i32 0, i32 0
  %type_attrs58 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas57, i32 0, i32 0
  store i16 3968, i16* %type_attrs58, align 2, !tbaa !12
  %44 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i64 3
  %tas60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr59, i32 0, i32 0
  %rsize61 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas60, i32 0, i32 2
  store i32 0, i32* %rsize61, align 4, !tbaa !8
  %45 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack62 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %45, i32 0, i32 25
  %stack63 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack62, i32 0, i32 0
  %p64 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack63, i32 0, i32 0
  %46 = load %struct.ref_s*, %struct.ref_s** %p64, align 8, !tbaa !69
  %add.ptr65 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i64 9
  store %struct.ref_s* %add.ptr65, %struct.ref_s** %p64, align 8, !tbaa !69
  %47 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pcache.addr, align 8, !tbaa !1
  %48 = bitcast %struct.cie_cache_floats_s* %47 to i8*
  %49 = load i8*, i8** %container.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %48 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %49 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %50 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr66 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %50, i64 2
  %value67 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr66, i32 0, i32 1
  %intval68 = bitcast %union.v* %value67 to i64*
  store i64 %sub.ptr.sub, i64* %intval68, align 8, !tbaa !15
  %51 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr69 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i64 2
  %tas70 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr69, i32 0, i32 0
  %type_attrs71 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas70, i32 0, i32 0
  store i16 2816, i16* %type_attrs71, align 2, !tbaa !12
  %52 = load i8*, i8** %container.addr, align 8, !tbaa !1
  %53 = bitcast i8* %52 to %struct.obj_header_s*
  %54 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr72 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %54, i64 1
  %value73 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr72, i32 0, i32 1
  %pstruct = bitcast %union.v* %value73 to %struct.obj_header_s**
  store %struct.obj_header_s* %53, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %55 = load i32, i32* %space, align 4, !tbaa !5
  %add = add nsw i32 2048, %55
  %conv74 = trunc i32 %add to i16
  %56 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr75 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %56, i64 1
  %tas76 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr75, i32 0, i32 0
  %type_attrs77 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas76, i32 0, i32 0
  store i16 %conv74, i16* %type_attrs77, align 2, !tbaa !12
  store i32 5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.78

cleanup.78:                                       ; preds = %if.end.12, %cleanup
  %57 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #1
  %58 = bitcast %struct.gs_sample_loop_params_s* %lp to i8*
  call void @llvm.lifetime.end(i64 12, i8* %58) #1
  %59 = bitcast i32* %space to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = load i32, i32* %retval
  ret i32 %60
}

declare i32 @imemory_space(%struct.gs_ref_memory_s*) #2

declare void @gs_cie_cache_init(%struct.cie_cache_params_s*, %struct.gs_sample_loop_params_s*, %struct.gs_range_s*, i8*) #2

declare i32 @ref_stack_extend(%struct.ref_stack_s*, i32) #2

declare i32 @zcvx(%struct.gs_context_state_s*) #2

declare i32 @zfor_samples(%struct.gs_context_state_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @cie_cache_finish(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @cie_cache_finish_store(%struct.gs_context_state_s* %0, i32 0) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @cie_prepare_caches_4(%struct.gs_context_state_s* %i_ctx_p, %struct.gs_range_s* %domains, %struct.ref_s* %procs, %struct.cie_cache_floats_s* %pc0, %struct.cie_cache_floats_s* %pc1, %struct.cie_cache_floats_s* %pc2, %struct.cie_cache_floats_s* %pc3, i8* %container, %struct.gs_ref_memory_s* %imem, i8* %cname) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %domains.addr = alloca %struct.gs_range_s*, align 8
  %procs.addr = alloca %struct.ref_s*, align 8
  %pc0.addr = alloca %struct.cie_cache_floats_s*, align 8
  %pc1.addr = alloca %struct.cie_cache_floats_s*, align 8
  %pc2.addr = alloca %struct.cie_cache_floats_s*, align 8
  %pc3.addr = alloca %struct.cie_cache_floats_s*, align 8
  %container.addr = alloca i8*, align 8
  %imem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %cname.addr = alloca i8*, align 8
  %pcn = alloca [4 x %struct.cie_cache_floats_s*], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.gs_range_s* %domains, %struct.gs_range_s** %domains.addr, align 8, !tbaa !1
  store %struct.ref_s* %procs, %struct.ref_s** %procs.addr, align 8, !tbaa !1
  store %struct.cie_cache_floats_s* %pc0, %struct.cie_cache_floats_s** %pc0.addr, align 8, !tbaa !1
  store %struct.cie_cache_floats_s* %pc1, %struct.cie_cache_floats_s** %pc1.addr, align 8, !tbaa !1
  store %struct.cie_cache_floats_s* %pc2, %struct.cie_cache_floats_s** %pc2.addr, align 8, !tbaa !1
  store %struct.cie_cache_floats_s* %pc3, %struct.cie_cache_floats_s** %pc3.addr, align 8, !tbaa !1
  store i8* %container, i8** %container.addr, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %imem, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast [4 x %struct.cie_cache_floats_s*]* %pcn to i8*
  call void @llvm.lifetime.start(i64 32, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %4 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pc0.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds [4 x %struct.cie_cache_floats_s*], [4 x %struct.cie_cache_floats_s*]* %pcn, i32 0, i64 0
  store %struct.cie_cache_floats_s* %4, %struct.cie_cache_floats_s** %arrayidx, align 8, !tbaa !1
  %5 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pc1.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds [4 x %struct.cie_cache_floats_s*], [4 x %struct.cie_cache_floats_s*]* %pcn, i32 0, i64 1
  store %struct.cie_cache_floats_s* %5, %struct.cie_cache_floats_s** %arrayidx1, align 8, !tbaa !1
  %6 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pc2.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds [4 x %struct.cie_cache_floats_s*], [4 x %struct.cie_cache_floats_s*]* %pcn, i32 0, i64 2
  store %struct.cie_cache_floats_s* %6, %struct.cie_cache_floats_s** %arrayidx2, align 8, !tbaa !1
  %7 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pc3.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.cie_cache_floats_s* %7, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 3, i32* %n, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pc3.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds [4 x %struct.cie_cache_floats_s*], [4 x %struct.cie_cache_floats_s*]* %pcn, i32 0, i64 3
  store %struct.cie_cache_floats_s* %8, %struct.cie_cache_floats_s** %arrayidx3, align 8, !tbaa !1
  store i32 4, i32* %n, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, i32* %i, align 4, !tbaa !5
  %10 = load i32, i32* %n, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %9, %10
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %11 = load i32, i32* %code, align 4, !tbaa !5
  %cmp5 = icmp sge i32 %11, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %12 = phi i1 [ false, %for.cond ], [ %cmp5, %land.rhs ]
  br i1 %12, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %14 = load %struct.gs_range_s*, %struct.gs_range_s** %domains.addr, align 8, !tbaa !1
  %15 = load i32, i32* %i, align 4, !tbaa !5
  %idx.ext = sext i32 %15 to i64
  %add.ptr = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %14, i64 %idx.ext
  %16 = load %struct.ref_s*, %struct.ref_s** %procs.addr, align 8, !tbaa !1
  %17 = load i32, i32* %i, align 4, !tbaa !5
  %idx.ext6 = sext i32 %17 to i64
  %add.ptr7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 %idx.ext6
  %18 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %18 to i64
  %arrayidx8 = getelementptr inbounds [4 x %struct.cie_cache_floats_s*], [4 x %struct.cie_cache_floats_s*]* %pcn, i32 0, i64 %idxprom
  %19 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %arrayidx8, align 8, !tbaa !1
  %20 = load i8*, i8** %container.addr, align 8, !tbaa !1
  %21 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %22 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i32 @cie_prepare_cache(%struct.gs_context_state_s* %13, %struct.gs_range_s* %add.ptr, %struct.ref_s* %add.ptr7, %struct.cie_cache_floats_s* %19, i8* %20, %struct.gs_ref_memory_s* %21, i8* %22) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %land.end
  %24 = load i32, i32* %code, align 4, !tbaa !5
  %25 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = bitcast [4 x %struct.cie_cache_floats_s*]* %pcn to i8*
  call void @llvm.lifetime.end(i64 32, i8* %28) #1
  ret i32 %24
}

declare void @gs_cie_defg_complete(%struct.gs_cie_defg_s*) #2

declare void @gs_cie_def_complete(%struct.gs_cie_def_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @cie_lmnp_param(%struct.gs_memory_s* %mem, %struct.ref_s* %pdref, %struct.gs_cie_common_s* %pcie, %struct.ref_cie_procs_s* %pcprocs, i32* %has_lmn_procs) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pdref.addr = alloca %struct.ref_s*, align 8
  %pcie.addr = alloca %struct.gs_cie_common_s*, align 8
  %pcprocs.addr = alloca %struct.ref_cie_procs_s*, align 8
  %has_lmn_procs.addr = alloca i32*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %pdref, %struct.ref_s** %pdref.addr, align 8, !tbaa !1
  store %struct.gs_cie_common_s* %pcie, %struct.gs_cie_common_s** %pcie.addr, align 8, !tbaa !1
  store %struct.ref_cie_procs_s* %pcprocs, %struct.ref_cie_procs_s** %pcprocs.addr, align 8, !tbaa !1
  store i32* %has_lmn_procs, i32** %has_lmn_procs.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !1
  %3 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %pcie.addr, align 8, !tbaa !1
  %RangeLMN = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %3, i32 0, i32 2
  %call = call i32 @dict_range3_param(%struct.gs_memory_s* %1, %struct.ref_s* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), %struct.gs_range3_s* %RangeLMN) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %5 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !1
  %6 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %pcie.addr, align 8, !tbaa !1
  %MatrixLMN = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %6, i32 0, i32 4
  %call1 = call i32 @dict_matrix3_param(%struct.gs_memory_s* %4, %struct.ref_s* %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), %struct.gs_matrix3_s* %MatrixLMN) #4
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %8 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !1
  %9 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %pcie.addr, align 8, !tbaa !1
  %points = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %9, i32 0, i32 5
  %call4 = call i32 @cie_points_param(%struct.gs_memory_s* %7, %struct.ref_s* %8, %struct.gs_cie_wb_s* %points) #4
  store i32 %call4, i32* %code, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %entry
  %10 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.3
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %12 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !1
  %13 = load %struct.ref_cie_procs_s*, %struct.ref_cie_procs_s** %pcprocs.addr, align 8, !tbaa !1
  %DecodeLMN = getelementptr inbounds %struct.ref_cie_procs_s, %struct.ref_cie_procs_s* %13, i32 0, i32 2
  %call6 = call i32 @dict_proc3_param(%struct.gs_memory_s* %11, %struct.ref_s* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), %struct.ref_s* %DecodeLMN) #4
  store i32 %call6, i32* %code, align 4, !tbaa !5
  %14 = load i32, i32* %code, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %14, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %15 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end
  %16 = load i32, i32* %code, align 4, !tbaa !5
  %tobool = icmp ne i32 %16, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %17 = load i32*, i32** %has_lmn_procs.addr, align 8, !tbaa !1
  store i32 %lnot.ext, i32* %17, align 4, !tbaa !5
  %18 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %pcie.addr, align 8, !tbaa !1
  %DecodeLMN10 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %18, i32 0, i32 3
  %19 = bitcast %struct.gs_cie_common_proc3_s* %DecodeLMN10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* bitcast (%struct.gs_cie_common_proc3_s* @DecodeLMN_default to i8*), i64 24, i32 8, i1 false), !tbaa.struct !72
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.then.8, %if.then
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare void @gs_cie_abc_complete(%struct.gs_cie_abc_s*) #2

declare i32 @dict_proc_param(%struct.ref_s*, i8*, %struct.ref_s*, i32) #2

declare void @gs_cie_a_complete(%struct.gs_cie_a_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @cie_cache_finish_store(%struct.gs_context_state_s* %i_ctx_p, i32 %replicate) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %replicate.addr = alloca i32, align 4
  %op = alloca %struct.ref_s*, align 8
  %pcache = alloca %struct.cie_cache_floats_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %i = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 %replicate, i32* %replicate.addr, align 4, !tbaa !5
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !49
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.cie_cache_floats_s** %pcache to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 25
  %stack1 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p2 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1, i32 0, i32 0
  %6 = load %struct.ref_s*, %struct.ref_s** %p2, align 8, !tbaa !69
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 25
  %stack4 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack3, i32 0, i32 0
  %bot = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 1
  %8 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !95
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 1
  %cmp = icmp ult %struct.ref_s* %6, %add.ptr
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 25
  %stack6 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack5, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 7
  store i32 2, i32* %requested, align 4, !tbaa !96
  store i32 -104, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.39

if.end:                                           ; preds = %entry
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack7 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 25
  %stack8 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack7, i32 0, i32 0
  %p9 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack8, i32 0, i32 0
  %11 = load %struct.ref_s*, %struct.ref_s** %p9, align 8, !tbaa !69
  %add.ptr10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr10, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %12 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %13 = bitcast %struct.obj_header_s* %12 to i8*
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack11 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 25
  %stack12 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack11, i32 0, i32 0
  %p13 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack12, i32 0, i32 0
  %15 = load %struct.ref_s*, %struct.ref_s** %p13, align 8, !tbaa !69
  %value14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 1
  %intval = bitcast %union.v* %value14 to i64*
  %16 = load i64, i64* %intval, align 8, !tbaa !15
  %add.ptr15 = getelementptr inbounds i8, i8* %13, i64 %16
  %17 = bitcast i8* %add.ptr15 to %struct.cie_cache_floats_s*
  store %struct.cie_cache_floats_s* %17, %struct.cie_cache_floats_s** %pcache, align 8, !tbaa !1
  %18 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pcache, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %18, i32 0, i32 0
  %is_identity = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params, i32 0, i32 0
  store i32 0, i32* %is_identity, align 4, !tbaa !73
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %19 = load i32, i32* %replicate.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %20 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %21 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pcache, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %21, i32 0, i32 1
  %arrayidx = getelementptr inbounds [512 x float], [512 x float]* %values, i32 0, i64 0
  %call = call i32 @float_params(%struct.ref_s* %20, i32 512, float* %arrayidx) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %call, 0
  br i1 %cmp16, label %if.then.17, label %if.end.30

if.then.17:                                       ; preds = %lor.lhs.false, %do.end
  %22 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.17
  %23 = load i32, i32* %i, align 4, !tbaa !5
  %cmp18 = icmp ult i32 %23, 512
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack19 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %24, i32 0, i32 26
  %stack20 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack19, i32 0, i32 0
  %25 = load i32, i32* %replicate.addr, align 4, !tbaa !5
  %tobool21 = icmp ne i32 %25, 0
  br i1 %tobool21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %26 = load i32, i32* %i, align 4, !tbaa !5
  %sub = sub i32 511, %26
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %sub, %cond.false ]
  %conv = zext i32 %cond to i64
  %call22 = call %struct.ref_s* @ref_stack_index(%struct.ref_stack_s* %stack20, i64 %conv) #4
  %27 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = zext i32 %27 to i64
  %28 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pcache, align 8, !tbaa !1
  %values23 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %28, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [512 x float], [512 x float]* %values23, i32 0, i64 %idxprom
  %call25 = call i32 @float_param(%struct.ref_s* %call22, float* %arrayidx24) #4
  store i32 %call25, i32* %code, align 4, !tbaa !5
  %29 = load i32, i32* %code, align 4, !tbaa !5
  %cmp26 = icmp slt i32 %29, 0
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %cond.end
  %30 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %cond.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.29
  %31 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %31, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.28
  %32 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.39 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.30

if.end.30:                                        ; preds = %cleanup.cont, %lor.lhs.false
  %33 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack31 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %33, i32 0, i32 26
  %stack32 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack31, i32 0, i32 0
  %34 = load i32, i32* %replicate.addr, align 4, !tbaa !5
  %tobool33 = icmp ne i32 %34, 0
  %cond34 = select i1 %tobool33, i32 1, i32 512
  call void @ref_stack_pop(%struct.ref_stack_s* %stack32, i32 %cond34) #4
  %35 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack35 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %35, i32 0, i32 25
  %stack36 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack35, i32 0, i32 0
  %p37 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack36, i32 0, i32 0
  %36 = load %struct.ref_s*, %struct.ref_s** %p37, align 8, !tbaa !69
  %add.ptr38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i64 -2
  store %struct.ref_s* %add.ptr38, %struct.ref_s** %p37, align 8, !tbaa !69
  store i32 14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.39

cleanup.39:                                       ; preds = %if.end.30, %cleanup, %if.then
  %37 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast %struct.cie_cache_floats_s** %pcache to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = load i32, i32* %retval
  ret i32 %40
}

declare i32 @float_params(%struct.ref_s*, i32, float*) #2

declare i32 @float_param(%struct.ref_s*, float*) #2

declare %struct.ref_s* @ref_stack_index(%struct.ref_stack_s*, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @cie_create_icc(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %pcache = alloca %struct.cie_cache_floats_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %i = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !49
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.cie_cache_floats_s** %pcache to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 25
  %stack1 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p2 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1, i32 0, i32 0
  %6 = load %struct.ref_s*, %struct.ref_s** %p2, align 8, !tbaa !69
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 25
  %stack4 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack3, i32 0, i32 0
  %bot = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 1
  %8 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !95
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 1
  %cmp = icmp ult %struct.ref_s* %6, %add.ptr
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 25
  %stack6 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack5, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 7
  store i32 2, i32* %requested, align 4, !tbaa !96
  store i32 -104, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.36

if.end:                                           ; preds = %entry
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack7 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 25
  %stack8 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack7, i32 0, i32 0
  %p9 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack8, i32 0, i32 0
  %11 = load %struct.ref_s*, %struct.ref_s** %p9, align 8, !tbaa !69
  %add.ptr10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr10, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %12 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %13 = bitcast %struct.obj_header_s* %12 to i8*
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack11 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 25
  %stack12 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack11, i32 0, i32 0
  %p13 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack12, i32 0, i32 0
  %15 = load %struct.ref_s*, %struct.ref_s** %p13, align 8, !tbaa !69
  %value14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 1
  %intval = bitcast %union.v* %value14 to i64*
  %16 = load i64, i64* %intval, align 8, !tbaa !15
  %add.ptr15 = getelementptr inbounds i8, i8* %13, i64 %16
  %17 = bitcast i8* %add.ptr15 to %struct.cie_cache_floats_s*
  store %struct.cie_cache_floats_s* %17, %struct.cie_cache_floats_s** %pcache, align 8, !tbaa !1
  %18 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pcache, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %18, i32 0, i32 0
  %is_identity = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params, i32 0, i32 0
  store i32 0, i32* %is_identity, align 4, !tbaa !73
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %20 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pcache, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %20, i32 0, i32 1
  %arrayidx = getelementptr inbounds [512 x float], [512 x float]* %values, i32 0, i64 0
  %call = call i32 @float_params(%struct.ref_s* %19, i32 512, float* %arrayidx) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %call, 0
  br i1 %cmp16, label %if.then.17, label %if.end.29

if.then.17:                                       ; preds = %do.end
  %21 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.17
  %22 = load i32, i32* %i, align 4, !tbaa !5
  %cmp18 = icmp ult i32 %22, 512
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack19 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 26
  %stack20 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack19, i32 0, i32 0
  %24 = load i32, i32* %i, align 4, !tbaa !5
  %sub = sub i32 511, %24
  %conv = zext i32 %sub to i64
  %call21 = call %struct.ref_s* @ref_stack_index(%struct.ref_stack_s* %stack20, i64 %conv) #4
  %25 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = zext i32 %25 to i64
  %26 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pcache, align 8, !tbaa !1
  %values22 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %26, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [512 x float], [512 x float]* %values22, i32 0, i64 %idxprom
  %call24 = call i32 @float_param(%struct.ref_s* %call21, float* %arrayidx23) #4
  store i32 %call24, i32* %code, align 4, !tbaa !5
  %27 = load i32, i32* %code, align 4, !tbaa !5
  %cmp25 = icmp slt i32 %27, 0
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %for.body
  %28 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %29 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %29, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.27
  %30 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.36 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.29

if.end.29:                                        ; preds = %cleanup.cont, %do.end
  %31 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack30 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %31, i32 0, i32 26
  %stack31 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack30, i32 0, i32 0
  call void @ref_stack_pop(%struct.ref_stack_s* %stack31, i32 512) #4
  %32 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack32 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %32, i32 0, i32 25
  %stack33 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack32, i32 0, i32 0
  %p34 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack33, i32 0, i32 0
  %33 = load %struct.ref_s*, %struct.ref_s** %p34, align 8, !tbaa !69
  %add.ptr35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 -2
  store %struct.ref_s* %add.ptr35, %struct.ref_s** %p34, align 8, !tbaa !69
  store i32 14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.36

cleanup.36:                                       ; preds = %if.end.29, %cleanup, %if.then
  %34 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast %struct.cie_cache_floats_s** %pcache to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = load i32, i32* %retval
  ret i32 %37
}

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
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!3, !3, i64 0}
!8 = !{!9, !6, i64 4}
!9 = !{!"ref_s", !10, i64 0, !3, i64 8}
!10 = !{!"tas_s", !11, i64 0, !11, i64 2, !6, i64 4}
!11 = !{!"short", !3, i64 0}
!12 = !{!9, !11, i64 0}
!13 = !{i64 0, i64 2, !14, i64 2, i64 2, !14, i64 4, i64 4, !5, i64 8, i64 8, !15, i64 8, i64 2, !14, i64 8, i64 4, !17, i64 8, i64 8, !15, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !15}
!14 = !{!11, !11, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"long", !3, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"float", !3, i64 0}
!19 = !{!20, !18, i64 0}
!20 = !{!"gs_cie_wb_s", !21, i64 0, !21, i64 12}
!21 = !{!"gs_vector3_s", !18, i64 0, !18, i64 4, !18, i64 8}
!22 = !{!20, !18, i64 4}
!23 = !{!20, !18, i64 8}
!24 = !{!20, !18, i64 12}
!25 = !{!20, !18, i64 16}
!26 = !{!20, !18, i64 20}
!27 = !{!28, !6, i64 0}
!28 = !{!"gx_color_lookup_table_s", !6, i64 0, !3, i64 4, !6, i64 20, !2, i64 24}
!29 = !{!28, !6, i64 20}
!30 = !{!31, !2, i64 0}
!31 = !{!"gs_memory_s", !2, i64 0, !32, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!32 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!33 = !{!31, !2, i64 104}
!34 = !{!31, !2, i64 24}
!35 = !{!28, !2, i64 24}
!36 = !{!37, !2, i64 0}
!37 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!38 = !{!37, !6, i64 8}
!39 = !{!40, !2, i64 0}
!40 = !{!"gs_context_state_s", !2, i64 0, !41, i64 8, !6, i64 80, !9, i64 88, !9, i64 104, !16, i64 120, !16, i64 128, !16, i64 136, !6, i64 144, !6, i64 148, !9, i64 152, !9, i64 168, !6, i64 184, !6, i64 188, !6, i64 192, !6, i64 196, !2, i64 200, !3, i64 208, !2, i64 256, !43, i64 264, !43, i64 304, !2, i64 344, !6, i64 352, !2, i64 360, !44, i64 368, !46, i64 520, !47, i64 624, !2, i64 720}
!41 = !{!"gs_dual_memory_s", !2, i64 0, !42, i64 8, !6, i64 48, !2, i64 56, !6, i64 64, !6, i64 68}
!42 = !{!"vm_spaces_s", !2, i64 0, !3, i64 8}
!43 = !{!"op_array_table_s", !9, i64 0, !2, i64 16, !6, i64 24, !6, i64 28, !6, i64 32}
!44 = !{!"dict_stack_s", !45, i64 0, !6, i64 96, !6, i64 100, !6, i64 104, !2, i64 112, !6, i64 120, !2, i64 128, !9, i64 136}
!45 = !{!"ref_stack_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !6, i64 40, !6, i64 44, !9, i64 48, !6, i64 64, !6, i64 68, !6, i64 72, !2, i64 80, !2, i64 88}
!46 = !{!"exec_stack_s", !45, i64 0, !2, i64 96}
!47 = !{!"op_stack_s", !45, i64 0}
!48 = !{i64 0, i64 2, !14, i64 2, i64 2, !14, i64 4, i64 4, !5, i64 8, i64 8, !15, i64 8, i64 2, !14, i64 8, i64 4, !17, i64 8, i64 8, !15, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !15, i64 0, i64 2, !14, i64 2, i64 2, !14, i64 4, i64 4, !5, i64 8, i64 8, !15, i64 8, i64 2, !14, i64 8, i64 4, !17, i64 8, i64 8, !15, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !15, i64 16, i64 2, !14, i64 18, i64 2, !14, i64 20, i64 4, !5, i64 24, i64 8, !15, i64 24, i64 2, !14, i64 24, i64 4, !17, i64 24, i64 8, !15, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !15, i64 16, i64 2, !14, i64 18, i64 2, !14, i64 20, i64 4, !5, i64 24, i64 8, !15, i64 24, i64 2, !14, i64 24, i64 4, !17, i64 24, i64 8, !15, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !15, i64 32, i64 2, !14, i64 34, i64 2, !14, i64 36, i64 4, !5, i64 40, i64 8, !15, i64 40, i64 2, !14, i64 40, i64 4, !17, i64 40, i64 8, !15, i64 40, i64 8, !1, i64 40, i64 8, !1, i64 40, i64 8, !1, i64 40, i64 8, !1, i64 40, i64 8, !1, i64 40, i64 8, !1, i64 40, i64 8, !1, i64 40, i64 8, !1, i64 40, i64 8, !1, i64 40, i64 8, !1, i64 40, i64 8, !1, i64 40, i64 8, !1, i64 40, i64 8, !1, i64 40, i64 8, !1, i64 40, i64 8, !15}
!49 = !{!40, !2, i64 624}
!50 = !{!40, !2, i64 640}
!51 = !{!40, !6, i64 688}
!52 = !{!53, !6, i64 31448}
!53 = !{!"gs_cie_defg_s", !54, i64 0, !59, i64 6392, !55, i64 6416, !60, i64 6440, !57, i64 6464, !61, i64 6504, !63, i64 31352, !64, i64 31384, !63, i64 31416, !28, i64 31448, !58, i64 31480}
!54 = !{!"gs_cie_common_s", !2, i64 0, !2, i64 8, !55, i64 16, !56, i64 40, !57, i64 64, !20, i64 104, !58, i64 128}
!55 = !{!"gs_range3_s", !3, i64 0}
!56 = !{!"gs_cie_common_proc3_s", !3, i64 0}
!57 = !{!"gs_matrix3_s", !21, i64 0, !21, i64 12, !21, i64 24, !6, i64 36}
!58 = !{!"", !3, i64 0}
!59 = !{!"rc_header_s", !16, i64 0, !2, i64 8, !2, i64 16}
!60 = !{!"gs_cie_abc_proc3_s", !3, i64 0}
!61 = !{!"", !6, i64 0, !62, i64 8}
!62 = !{!"gx_cie_vector_cache3_s", !3, i64 0, !3, i64 24816}
!63 = !{!"gs_range4_s", !3, i64 0}
!64 = !{!"gs_cie_defg_proc4_s", !3, i64 0}
!65 = !{!53, !6, i64 31468}
!66 = !{!40, !2, i64 8}
!67 = !{!68, !16, i64 8}
!68 = !{!"gs_color_space_s", !2, i64 0, !59, i64 8, !16, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !3, i64 72}
!69 = !{!40, !2, i64 520}
!70 = !{!40, !2, i64 536}
!71 = !{i64 0, i64 32, !7}
!72 = !{i64 0, i64 24, !7}
!73 = !{!74, !6, i64 0}
!74 = !{!"cie_cache_floats_s", !75, i64 0, !3, i64 40}
!75 = !{!"cie_cache_params_s", !6, i64 0, !76, i64 8, !76, i64 16, !77, i64 24}
!76 = !{!"double", !3, i64 0}
!77 = !{!"cie_linear_params_s", !6, i64 0, !18, i64 4, !18, i64 8}
!78 = !{!79, !6, i64 31424}
!79 = !{!"gs_cie_def_s", !54, i64 0, !59, i64 6392, !55, i64 6416, !60, i64 6440, !57, i64 6464, !61, i64 6504, !55, i64 31352, !80, i64 31376, !55, i64 31400, !28, i64 31424, !58, i64 31456}
!80 = !{!"gs_cie_def_proc3_s", !3, i64 0}
!81 = !{!79, !6, i64 31444}
!82 = !{!83, !6, i64 0}
!83 = !{!"gx_cie_vector_cache_s", !74, i64 0, !84, i64 2088}
!84 = !{!"cie_cache_vectors_s", !85, i64 0, !3, i64 36}
!85 = !{!"cie_vector_cache_params_s", !18, i64 0, !18, i64 4, !18, i64 8, !3, i64 12}
!86 = !{!87, !6, i64 6448}
!87 = !{!"gs_cie_a_s", !54, i64 0, !59, i64 6392, !88, i64 6416, !2, i64 6424, !21, i64 6432, !89, i64 6448}
!88 = !{!"gs_range_s", !18, i64 0, !18, i64 4}
!89 = !{!"", !83, i64 0}
!90 = !{!87, !2, i64 6424}
!91 = !{!92, !18, i64 0}
!92 = !{!"gs_sample_loop_params_s", !18, i64 0, !18, i64 4, !6, i64 8}
!93 = !{!92, !6, i64 8}
!94 = !{!92, !18, i64 4}
!95 = !{!40, !2, i64 528}
!96 = !{!40, !6, i64 584}
