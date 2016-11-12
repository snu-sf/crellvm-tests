; ModuleID = './gxiscale.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_template_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* }
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
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.gs_string_s = type { i8*, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8] }
%struct.gs_const_string_s = type { i8*, i32 }
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
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.sample_map_s = type { %union.sample_lookup_s, [16 x float], float, i32, i32 }
%union.sample_lookup_s = type { [16 x i32], [192 x i8] }
%struct.gx_device_color_type_s = type { %struct.gs_memory_struct_type_s*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* }
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
%struct.gx_device_halftone_s = type opaque
%struct.gs_int_point_s = type { i32, i32 }
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64 }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.gs_pattern_type_s = type opaque
%struct.gs_state_s = type opaque
%struct.gs_paint_color_s = type { [64 x float] }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type opaque
%struct.gx_device_color_saved_s = type { %struct.gx_device_color_type_s*, %union._svc, %struct.gs_int_point_s }
%union._svc = type { %struct._svbin, [304 x i8] }
%struct._svbin = type { [2 x i64], i32, i32 }
%struct.gs_imager_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s }
%struct.gx_line_params_s = type { float, i32, i32, i32, i32, i32, float, float, float, i32, %struct.gs_matrix_s, %struct.gx_dash_params_s }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gx_dash_params_s = type { float*, i32, float, i32, float, i32, i32, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i32, i32, i32 }
%struct.gs_point_s = type { double, double }
%struct.gs_transparency_source_s = type { float }
%struct.gs_xstate_trans_flags = type { i32, i32 }
%struct.gs_fixed_point_s = type { i32, i32 }
%struct.gsicc_manager_s = type { %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.gsicc_devicen_s*, %struct.gsicc_smask_s*, i32, %struct.cmm_srcgtag_profile_s*, %struct.gs_memory_s*, %struct.rc_header_s }
%struct.cmm_profile_s = type { i8, i8, i32, i32, i32, i32, %struct.gs_range_icc_s, i64, i32, [15 x i32], i32, i32, i32, %struct.gsicc_rendering_param_s, i8*, %struct.gx_device_s*, %struct.gsicc_namelist_s*, i8*, %struct.rc_header_s, i32, i8*, %struct.gs_memory_s*, %struct.gx_monitor_s* }
%struct.gs_range_icc_s = type { [15 x %struct.gs_range_s] }
%struct.gs_range_s = type { float, float }
%struct.gsicc_rendering_param_s = type { i32, i32, i32, i32, i32, i32 }
%struct.gsicc_namelist_s = type { i32, %struct.gsicc_colorname_s*, i8*, %struct.gs_devicen_color_map_s*, i32 }
%struct.gsicc_colorname_s = type { i8*, i32, %struct.gsicc_colorname_s* }
%struct.gx_monitor_s = type { %struct.gs_memory_s*, %union.gp_monitor }
%union.gp_monitor = type { i8* }
%struct.gsicc_devicen_s = type { %struct.gsicc_devicen_entry_s*, %struct.gsicc_devicen_entry_s*, i32 }
%struct.gsicc_devicen_entry_s = type { %struct.cmm_profile_s*, %struct.gsicc_devicen_entry_s* }
%struct.gsicc_smask_s = type { %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.gs_memory_s*, i32 }
%struct.cmm_srcgtag_profile_s = type { [3 x %struct.cmm_profile_s*], [3 x %struct.gsicc_rendering_param_s], [3 x %struct.cmm_profile_s*], [3 x %struct.gsicc_rendering_param_s], %struct.cmm_profile_s*, %struct.gs_memory_s*, i32, i8*, %struct.rc_header_s }
%struct.gsicc_link_cache_s = type { %struct.gsicc_link_s*, i32, %struct.rc_header_s, %struct.gs_memory_s*, %struct.gx_monitor_s*, %struct.gx_semaphore_s*, i32 }
%struct.gsicc_link_s = type { i8*, %struct.gscms_procs_s, %struct.gsicc_hashlink_s, %struct.gsicc_link_cache_s*, i32, %struct.gsicc_link_s*, %struct.gx_semaphore_s*, i32, i32, i32, i32, i32, i32, %struct.gscms_procs_s, i32, i32, i32 }
%struct.gsicc_hashlink_s = type { i64, i64, i64, i64 }
%struct.gscms_procs_s = type { void (%struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s*, i8*, i8*)*, void (%struct.gx_device_s*, %struct.gsicc_link_s*, i8*, i8*, i32)*, void (%struct.gsicc_link_s*)*, i32 (i8*, i32)* }
%struct.gsicc_bufferdesc_s = type { i8, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gx_semaphore_s = type { %struct.gs_memory_s*, %union.gp_semaphore }
%union.gp_semaphore = type { i8* }
%struct.gsicc_profile_cache_s = type { %struct.gsicc_profile_entry_s*, i32, %struct.rc_header_s, %struct.gs_memory_s* }
%struct.gsicc_profile_entry_s = type { %struct.gs_color_space_s*, %struct.gsicc_profile_entry_s*, i64 }
%struct.gs_halftone_s = type opaque
%struct.gs_cie_render_s = type { i32, %struct.rc_header_s, i64, i8*, %struct.gs_cie_wb_s, %struct.gs_matrix3_s, %struct.gs_range3_s, %struct.gs_cie_transform_proc3_s, %struct.gs_matrix3_s, %struct.gs_cie_render_proc3_s, %struct.gs_range3_s, %struct.gs_matrix3_s, %struct.gs_cie_render_proc3_s, %struct.gs_range3_s, %struct.gs_cie_render_table_s, %struct.gs_range3_s, %struct.gs_range3_s, %struct.gs_matrix3_s, [3 x float], %struct.gs_matrix3_s, %struct.gs_vector3_s, %struct.gs_vector3_s, %struct.anon.9 }
%struct.gs_cie_wb_s = type { %struct.gs_vector3_s, %struct.gs_vector3_s }
%struct.gs_cie_transform_proc3_s = type { i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)*, i8*, %struct.gs_const_string_s, i8* }
%struct.gs_cie_wbsd_s = type { %struct.anon.8, %struct.anon.8, %struct.anon.8, %struct.anon.8 }
%struct.anon.8 = type { %struct.gs_vector3_s, %struct.gs_vector3_s }
%struct.gs_cie_render_proc3_s = type { [3 x float (double, %struct.gs_cie_render_s*)*] }
%struct.gs_cie_render_table_s = type { %struct.gx_color_lookup_table_s, %struct.gs_cie_render_table_procs_s }
%struct.gx_color_lookup_table_s = type { i32, [4 x i32], i32, %struct.gs_const_string_s* }
%struct.gs_cie_render_table_procs_s = type { [4 x i16 (i8, %struct.gs_cie_render_s*)*] }
%struct.gs_range3_s = type { [3 x %struct.gs_range_s] }
%struct.gs_matrix3_s = type { %struct.gs_vector3_s, %struct.gs_vector3_s, %struct.gs_vector3_s, i32 }
%struct.gs_vector3_s = type { float, float, float }
%struct.anon.9 = type { %struct.gx_cie_vector_cache3_s, [3 x %struct.gx_cie_float_fixed_cache_s], [4 x %union.gx_cie_scalar_cache_s], i32 }
%struct.gx_cie_vector_cache3_s = type { [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.cie_interpolation_range_s] }
%struct.gx_cie_vector_cache_s = type { %struct.cie_cache_floats_s, %struct.cie_cache_vectors_s }
%struct.cie_cache_floats_s = type { %struct.cie_cache_params_s, [512 x float] }
%struct.cie_cache_params_s = type { i32, double, double, %struct.cie_linear_params_s }
%struct.cie_linear_params_s = type { i32, float, float }
%struct.cie_cache_vectors_s = type { %struct.cie_vector_cache_params_s, [512 x %struct.cie_cached_vector3_s] }
%struct.cie_vector_cache_params_s = type { float, float, float, [3 x %struct.cie_interpolation_range_s] }
%struct.cie_cached_vector3_s = type { float, float, float }
%struct.cie_interpolation_range_s = type { float, float }
%struct.gx_cie_float_fixed_cache_s = type { %struct.cie_cache_floats_s, %union.if_ }
%union.if_ = type { %struct.cie_cache_ints_s }
%struct.cie_cache_ints_s = type { %struct.cie_cache_params_s, [512 x i32] }
%union.gx_cie_scalar_cache_s = type { %struct.cie_cache_floats_s }
%struct.gx_transfer_map_s = type { %struct.rc_header_s, float (double, %struct.gx_transfer_map_s*)*, %struct.gs_mapping_closure_s, i64, [256 x i16] }
%struct.gs_mapping_closure_s = type { float (double, %struct.gx_transfer_map_s*, i8*)*, i8* }
%struct.gx_transfer_s = type { i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s* }
%struct.gx_color_map_procs_s = type { void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, %struct.gs_color_space_s*)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_imager_state_s*, %struct.gx_device_s*)* }
%struct.gx_pattern_cache_s = type opaque
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.client_color_space_data_s = type { void (%struct.gs_color_space_s*, i32)* }
%union.anon = type { %struct.gs_device_n_params_s }
%struct.gs_device_n_params_s = type { i64*, i32, %struct.gs_device_n_map_s*, %struct.gs_device_n_attributes_s*, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gs_device_n_map_s = type opaque
%struct.gs_device_n_attributes_s = type opaque
%struct.gx_cie_joint_caches_s = type { i64, i64, i32, i32, %struct.rc_header_s, i32 (<2 x float>, float, i16*, float*, %struct.gs_imager_state_s*, %struct.gs_color_space_s*)*, i32, i32, %struct.gx_cie_vector_cache3_s, %struct.gs_cie_wbsd_s, i32, %struct.gx_cie_vector_cache3_s, i32 }
%struct.gs_devicen_color_map_s = type { i32, i32, i32, i32, i64, [64 x i32] }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_color_info_s = type { i32, i32, i32, i16, i8, i32, i32, i32, i32, %struct.gx_device_anti_alias_info_s, i32, [64 x i8], [64 x i8], [64 x i64], i8*, i32, i64, i32 }
%struct.gx_device_anti_alias_info_s = type { i32, i32 }
%struct.gx_device_cached_colors_s = type { i64, i64 }
%struct.gx_stroked_gradient_recognizer_s = type { i32, [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s] }
%struct.gdev_space_params_s = type { i64, i64, %struct.gx_band_params_s, i32, i32 }
%struct.gx_band_params_s = type { i32, i32, i64 }
%struct.cmm_dev_profile_s = type { [4 x %struct.cmm_profile_s*], %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, [4 x %struct.gsicc_rendering_param_s], i32, i32, i32, i32, i32, i32, %struct.gsicc_namelist_s*, i32, %struct.gs_memory_s*, %struct.rc_header_s }
%struct.gx_page_device_procs_s = type { i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, {}*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
%struct.gx_xfont_procs_s = type opaque
%struct.gx_path_s = type opaque
%struct.gx_fill_params_s = type opaque
%struct.gx_clip_path_s = type opaque
%struct.gx_stroke_params_s = type opaque
%struct.gs_fixed_edge_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image1_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, i32, i32, i32 }
%struct.gx_image_type_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gs_imager_state_s*, %struct.gs_image_common_s*, %struct.gs_int_point_s*)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s**)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s*)*, void (%struct.gs_image_common_s*, %struct.gs_memory_s*)*, i32 }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gx_image_enum_common_s = type { %struct.gx_image_type_s*, %struct.gx_image_enum_procs_s*, %struct.gx_device_s*, %struct.gs_memory_s*, i64, i32, i32, [65 x i32], [65 x i32] }
%struct.gx_image_enum_procs_s = type { i32 (%struct.gx_image_enum_common_s*, %struct.gx_image_plane_s*, i32, i32*)*, i32 (%struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_image_enum_common_s*)*, i32 (%struct.gx_image_enum_common_s*, i8*)* }
%struct.gx_image_plane_s = type { i8*, i32, i32 }
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_get_bits_params_s = type opaque
%struct.gs_composite_s = type { %struct.gs_composite_type_s*, i64, i32, %struct.gs_composite_s*, %struct.gs_composite_s* }
%struct.gs_composite_type_s = type { i8, %struct.gs_composite_type_procs_s }
%struct.gs_composite_type_procs_s = type { i32 (%struct.gs_composite_s*, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s*)*, i32 (%struct.gs_composite_s*, i8*, i32*, %struct.gx_device_clist_writer_s*)*, i32 (%struct.gs_composite_s**, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32, i32, %struct.gs_imager_state_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s**, %struct.gx_device_s*)*, i32 (%struct.gs_composite_s*, i8, i8)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32*, i32*, i32, i32)* }
%struct.gx_device_clist_writer_s = type opaque
%struct.gs_text_params_s = type { i32, %union.sd_, i32, %struct.gs_point_s, %struct.gs_point_s, %union.s_, float*, float*, i32 }
%union.sd_ = type { i8* }
%union.s_ = type { i64 }
%struct.gs_font_s = type opaque
%struct.gs_text_enum_s = type { %struct.gs_text_params_s, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_procs_s*, %struct.rc_header_s, i8*, %struct.gs_font_s*, i64, i32, %struct.gs_log2_scale_point_s, %struct.cached_fm_pair_s*, i32, i32, %struct.gx_font_stack_s, i32, i32, i32, %struct.gs_point_s, i64, i32, %struct.gs_log2_scale_point_s, %struct.gs_point_s, %struct.gs_text_returned_s }
%struct.gs_text_enum_procs_s = type { i32 (%struct.gs_text_enum_s*, %struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_point_s*)*, i32 (%struct.gs_text_enum_s*, double*, i32)*, i32 (%struct.gs_text_enum_s*)*, void (%struct.gs_text_enum_s*, i8*)* }
%struct.cached_fm_pair_s = type opaque
%struct.gx_font_stack_s = type { i32, [6 x %struct.gx_font_stack_item_s] }
%struct.gx_font_stack_item_s = type { %struct.gs_font_s*, i32 }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gs_text_returned_s = type { i64, i64, %struct.gs_point_s }
%struct.gs_transparency_group_params_s = type { %struct.gs_color_space_s*, i32, i32, i32, i32, i32, i32, i32, i64, %struct.cmm_profile_s* }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gx_transparency_mask_params_s = type { i32, i32, i32, i32, [64 x float], float, i32, i32, i32, i32, [256 x i8], i64, %struct.cmm_profile_s* }
%struct.gx_cm_color_map_procs_s = type { void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* }
%struct.gs_pattern1_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64, %struct.gs_pattern1_template_s, %struct.gs_matrix_s, %struct.gs_rect_s, i32, i32, i32, i32, i32, %struct.gs_int_point_s, i64 }
%struct.gs_pattern1_template_s = type { %struct.gs_pattern_type_s*, i32, %struct.gs_uid_s, i8*, i32, i32, i32, %struct.gs_rect_s, float, float, i32 (%struct.gs_client_color_s*, %struct.gs_state_s*)* }
%struct.gs_uid_s = type { i64, i64* }
%struct.gs_fill_attributes_s = type { %struct.gs_fixed_rect_s*, i32, %struct.gx_device_halftone_s*, i32, i32, i32, %struct.patch_fill_state_s* }
%struct.patch_fill_state_s = type opaque
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gx_rop_source_s = type { i8*, i32, i32, i64, [2 x i64], i32, i32 }
%struct.gx_image_enum_s = type { %struct.gx_image_type_s*, %struct.gx_image_enum_procs_s*, %struct.gx_device_s*, %struct.gs_memory_s*, i64, i32, i32, [65 x i32], [65 x i32], i32, i32, i8, i8, i8, i8, i32, %struct.mc_, i8, i8, i8, i8, %struct.gs_matrix_s, %struct.r_, %struct.anon.10, i32, i32, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*, {}*, %struct.gs_imager_state_s*, %struct.gs_color_space_s*, i8*, i32, i8*, i32, i32, i32, i8, i8, i8, i8, %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s, i32, i32, i32, i32, %struct.gx_device_clip_s*, %struct.gx_device_rop_texture_s*, %struct.stream_image_scale_state_s*, i32, %struct.gs_int_point_s, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, %struct.dd_, i32, i32, %struct.gs_int_point_s, i32, i32, i32, i32, i32, [65 x %struct.sample_map_s], %struct.gx_image_clue_s*, %struct.gx_device_color_s, %struct.gx_device_color_s, %struct.gx_device_color_s*, %struct.gx_device_color_s*, %struct.gsicc_link_s*, %struct.gx_image_color_cache_s*, i8*, i32, i32, i32, i8*, i32, i32, %struct.ht_landscape_info_s, %struct.gx_image_icc_setup_s, i32 }
%struct.mc_ = type { [130 x i32], i32, i32, i32 }
%struct.r_ = type { i32, i32, i32, i32 }
%struct.anon.10 = type { i32, i32, i32, i32 }
%struct.gx_device_clip_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, %struct.gx_clip_list_s, %struct.gx_clip_rect_s*, %struct.gs_int_point_s, %struct.gs_fixed_rect_s, i32 }
%struct.gx_clip_list_s = type { %struct.gx_clip_rect_s, %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, i32, i32, i32 }
%struct.gx_clip_rect_s = type { %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, i32, i32, i32, i32, i8 }
%struct.gx_device_rop_texture_s = type opaque
%struct.stream_image_scale_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %struct.stream_image_scale_params_s }
%struct.stream_image_scale_params_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dd_ = type { %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s }
%struct.gx_dda_fixed_point_s = type { %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s }
%struct.gx_dda_fixed_s = type { %struct._a, %struct._e }
%struct._a = type { i32, i32 }
%struct._e = type { i32, i32, i32 }
%struct.gx_image_clue_s = type { %struct.gx_device_color_s, i32 }
%struct.gx_image_color_cache_s = type { i32*, i8* }
%struct.ht_landscape_info_s = type { i32, [64 x i32], i32, i32, i32, i32, i32, i32, i32 }
%struct.gx_image_icc_setup_s = type { i32, i32, i32, i32 }

@s_IScale_template = external constant %struct.stream_template_s, align 8
@s_ISpecialDownScale_template = external constant %struct.stream_template_s, align 8
@.str = private unnamed_addr constant [25 x i8] c"image scale src+dst line\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"image scale state\00", align 1
@sample_unpackicc_16_proc = external constant i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*, align 8
@gx_dc_type_data_pure = external constant %struct.gx_device_color_type_s, align 8
@__func__.image_render_interpolate_icc = private unnamed_addr constant [29 x i8] c"image_render_interpolate_icc\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"./base/gxiscale.c\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"ICC Link not created during gs_image_class_0_interpolate\00", align 1
@__func__.image_render_interpolate_landscape_icc = private unnamed_addr constant [39 x i8] c"image_render_interpolate_landscape_icc\00", align 1

; Function Attrs: nounwind uwtable
define i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* @gs_image_class_0_interpolate(%struct.gx_image_enum_s* %penum) #0 {
entry:
  %retval = alloca i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)*, align 8
  %penum.addr = alloca %struct.gx_image_enum_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %iss = alloca %struct.stream_image_scale_params_s, align 4
  %pss = alloca %struct.stream_image_scale_state_s*, align 8
  %templat = alloca %struct.stream_template_s*, align 8
  %line = alloca i8*, align 8
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %in_size = alloca i32, align 4
  %use_icc = alloca i32, align 4
  %num_des_comps = alloca i32, align 4
  %dev_profile = alloca %struct.cmm_dev_profile_s*, align 8
  %code = alloca i32, align 4
  %pol = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %dw = alloca i32, align 4
  %dh = alloca i32, align 4
  %dw621 = alloca i32, align 4
  %dh632 = alloca i32, align 4
  %reverse = alloca i32, align 4
  %threshold = alloca i32, align 4
  %out_size = alloca i32, align 4
  %x0 = alloca %struct.gx_dda_fixed_s, align 4
  %n_ = alloca i32, align 4
  %x01569 = alloca i32, align 4
  %pcs1651 = alloca %struct.gs_color_space_s*, align 8
  %rendering_params = alloca %struct.gsicc_rendering_param_s, align 4
  %k = alloca i32, align 4
  %src_num_comp = alloca i32, align 4
  store %struct.gx_image_enum_s* %penum, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1, i32 0, i32 3
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !5
  store %struct.gs_memory_s* %2, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %3 = bitcast %struct.stream_image_scale_params_s* %iss to i8*
  call void @llvm.lifetime.start(i64 100, i8* %3) #1
  %4 = bitcast %struct.stream_image_scale_state_s** %pss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast %struct.stream_template_s** %templat to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i8** %line to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs1 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %8, i32 0, i32 31
  %9 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs1, align 8, !tbaa !29
  store %struct.gs_color_space_s* %9, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %10 = bitcast i32* %in_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %use_icc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 0, i32* %use_icc, align 4, !tbaa !30
  %12 = bitcast i32* %num_des_comps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %pol to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %interpolate = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %16, i32 0, i32 20
  %17 = load i8, i8* %interpolate, align 1, !tbaa !31
  %tobool = icmp ne i8 %17, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* null, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1753

if.end:                                           ; preds = %entry
  %18 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %use_mask_color = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %18, i32 0, i32 17
  %19 = load i8, i8* %use_mask_color, align 1, !tbaa !32
  %conv = zext i8 %19 to i32
  %tobool2 = icmp ne i32 %conv, 0
  br i1 %tobool2, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %20 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %posture = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %20, i32 0, i32 37
  %21 = load i32, i32* %posture, align 4, !tbaa !33
  %cmp = icmp ne i32 %21, 0
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false.7

land.lhs.true:                                    ; preds = %lor.lhs.false
  %22 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %posture4 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %22, i32 0, i32 37
  %23 = load i32, i32* %posture4, align 4, !tbaa !33
  %cmp5 = icmp ne i32 %23, 1
  br i1 %cmp5, label %if.then.12, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %land.lhs.true, %lor.lhs.false
  %24 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %masked = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %24, i32 0, i32 19
  %25 = load i8, i8* %masked, align 1, !tbaa !34
  %conv8 = zext i8 %25 to i32
  %tobool9 = icmp ne i32 %conv8, 0
  br i1 %tobool9, label %if.then.12, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false.7
  %26 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %alpha = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %26, i32 0, i32 15
  %27 = load i32, i32* %alpha, align 4, !tbaa !35
  %tobool11 = icmp ne i32 %27, 0
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %lor.lhs.false.10, %lor.lhs.false.7, %land.lhs.true, %if.end
  %28 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %interpolate13 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %28, i32 0, i32 20
  store i8 0, i8* %interpolate13, align 1, !tbaa !31
  store i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* null, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1753

if.end.14:                                        ; preds = %lor.lhs.false.10
  %29 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Width = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %29, i32 0, i32 9
  %30 = load i32, i32* %Width, align 4, !tbaa !36
  %cmp15 = icmp eq i32 %30, 0
  br i1 %cmp15, label %if.then.20, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %if.end.14
  %31 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Height = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %31, i32 0, i32 10
  %32 = load i32, i32* %Height, align 4, !tbaa !37
  %cmp18 = icmp eq i32 %32, 0
  br i1 %cmp18, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %lor.lhs.false.17, %if.end.14
  %33 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %interpolate21 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %33, i32 0, i32 20
  store i8 0, i8* %interpolate21, align 1, !tbaa !31
  store i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* null, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1753

if.end.22:                                        ; preds = %lor.lhs.false.17
  %34 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %34, i32 0, i32 6
  %35 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !38
  %cmp23 = icmp ne %struct.cmm_profile_s* %35, null
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.22
  store i32 1, i32* %use_icc, align 4, !tbaa !30
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.end.22
  %36 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %36, i32 0, i32 0
  %37 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !41
  %index = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %37, i32 0, i32 0
  %38 = load i32, i32* %index, align 4, !tbaa !42
  %cmp27 = icmp eq i32 %38, 10
  br i1 %cmp27, label %if.then.29, label %if.end.35

if.then.29:                                       ; preds = %if.end.26
  %39 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %39, i32 0, i32 3
  %40 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !44
  %cmm_icc_profile_data30 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %40, i32 0, i32 6
  %41 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data30, align 8, !tbaa !38
  %cmp31 = icmp ne %struct.cmm_profile_s* %41, null
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.then.29
  store i32 1, i32* %use_icc, align 4, !tbaa !30
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.then.29
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.end.26
  %42 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %bps = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %42, i32 0, i32 11
  %43 = load i8, i8* %bps, align 1, !tbaa !45
  %conv36 = zext i8 %43 to i32
  %cmp37 = icmp sle i32 %conv36, 8
  br i1 %cmp37, label %if.end.45, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %if.end.35
  %44 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %bps40 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %44, i32 0, i32 11
  %45 = load i8, i8* %bps40, align 1, !tbaa !45
  %conv41 = zext i8 %45 to i32
  %cmp42 = icmp eq i32 %conv41, 16
  br i1 %cmp42, label %if.end.45, label %if.then.44

if.then.44:                                       ; preds = %lor.lhs.false.39
  store i32 0, i32* %use_icc, align 4, !tbaa !30
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %lor.lhs.false.39, %if.end.35
  %46 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %46, i32 0, i32 2
  %47 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !46
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %47, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %48 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !47
  %49 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev46 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %49, i32 0, i32 2
  %50 = load %struct.gx_device_s*, %struct.gx_device_s** %dev46, align 8, !tbaa !46
  %call = call i32 %48(%struct.gx_device_s* %50, %struct.cmm_dev_profile_s** %dev_profile) #4
  store i32 %call, i32* %code, align 4, !tbaa !30
  %51 = load i32, i32* %code, align 4, !tbaa !30
  %tobool47 = icmp ne i32 %51, 0
  br i1 %tobool47, label %if.then.48, label %if.end.50

if.then.48:                                       ; preds = %if.end.45
  %52 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %interpolate49 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %52, i32 0, i32 20
  store i8 0, i8* %interpolate49, align 1, !tbaa !31
  store i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* null, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1753

if.end.50:                                        ; preds = %if.end.45
  %53 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %call51 = call i32 @gsicc_get_device_profile_comps(%struct.cmm_dev_profile_s* %53) #4
  store i32 %call51, i32* %num_des_comps, align 4, !tbaa !30
  %54 = load i32, i32* %num_des_comps, align 4, !tbaa !30
  %55 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev52 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %55, i32 0, i32 2
  %56 = load %struct.gx_device_s*, %struct.gx_device_s** %dev52, align 8, !tbaa !46
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %56, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %57 = load i32, i32* %num_components, align 4, !tbaa !58
  %cmp53 = icmp ne i32 %54, %57
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.50
  store i32 0, i32* %use_icc, align 4, !tbaa !30
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %if.end.50
  %58 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev57 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %58, i32 0, i32 2
  %59 = load %struct.gx_device_s*, %struct.gx_device_s** %dev57, align 8, !tbaa !46
  %60 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pis = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %60, i32 0, i32 30
  %61 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !59
  %call58 = call i32 @gx_device_uses_std_cmap_procs(%struct.gx_device_s* %59, %struct.gs_imager_state_s* %61) #4
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.end.61, label %if.then.60

if.then.60:                                       ; preds = %if.end.56
  store i32 0, i32* %use_icc, align 4, !tbaa !30
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %if.end.56
  %62 = load i32, i32* %use_icc, align 4, !tbaa !30
  %tobool62 = icmp ne i32 %62, 0
  br i1 %tobool62, label %if.then.63, label %if.else

if.then.63:                                       ; preds = %if.end.61
  %BitsPerComponentOut = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 8
  store i32 16, i32* %BitsPerComponentOut, align 4, !tbaa !60
  %MaxValueOut = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 9
  store i32 65535, i32* %MaxValueOut, align 4, !tbaa !62
  br label %if.end.66

if.else:                                          ; preds = %if.end.61
  %BitsPerComponentOut64 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 8
  store i32 16, i32* %BitsPerComponentOut64, align 4, !tbaa !60
  %MaxValueOut65 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 9
  store i32 32760, i32* %MaxValueOut65, align 4, !tbaa !62
  br label %if.end.66

if.end.66:                                        ; preds = %if.else, %if.then.63
  %63 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %63, i32 0, i32 23
  %w = getelementptr inbounds %struct.anon.10, %struct.anon.10* %rrect, i32 0, i32 2
  %64 = load i32, i32* %w, align 4, !tbaa !63
  %PatchWidthIn = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 2
  store i32 %64, i32* %PatchWidthIn, align 4, !tbaa !64
  %65 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect67 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %65, i32 0, i32 23
  %h = getelementptr inbounds %struct.anon.10, %struct.anon.10* %rrect67, i32 0, i32 3
  %66 = load i32, i32* %h, align 4, !tbaa !65
  %PatchHeightIn = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 3
  store i32 %66, i32* %PatchHeightIn, align 4, !tbaa !66
  %67 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect68 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %67, i32 0, i32 23
  %x = getelementptr inbounds %struct.anon.10, %struct.anon.10* %rrect68, i32 0, i32 0
  %68 = load i32, i32* %x, align 4, !tbaa !67
  %69 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %69, i32 0, i32 22
  %x69 = getelementptr inbounds %struct.r_, %struct.r_* %rect, i32 0, i32 0
  %70 = load i32, i32* %x69, align 4, !tbaa !68
  %sub = sub nsw i32 %68, %70
  %LeftMarginIn = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 21
  store i32 %sub, i32* %LeftMarginIn, align 4, !tbaa !69
  %71 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect70 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %71, i32 0, i32 23
  %y = getelementptr inbounds %struct.anon.10, %struct.anon.10* %rrect70, i32 0, i32 1
  %72 = load i32, i32* %y, align 4, !tbaa !70
  %73 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect71 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %73, i32 0, i32 22
  %y72 = getelementptr inbounds %struct.r_, %struct.r_* %rect71, i32 0, i32 1
  %74 = load i32, i32* %y72, align 4, !tbaa !71
  %sub73 = sub nsw i32 %72, %74
  %TopMargin = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 23
  store i32 %sub73, i32* %TopMargin, align 4, !tbaa !72
  %75 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %posture74 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %75, i32 0, i32 37
  %76 = load i32, i32* %posture74, align 4, !tbaa !33
  %cmp75 = icmp eq i32 %76, 0
  br i1 %cmp75, label %if.then.77, label %if.else.620

if.then.77:                                       ; preds = %if.end.66
  %77 = bitcast i32* %dw to i8*
  call void @llvm.lifetime.start(i64 4, i8* %77) #1
  %78 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dst_width = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %78, i32 0, i32 25
  %79 = load i32, i32* %dst_width, align 4, !tbaa !73
  %cmp78 = icmp slt i32 %79, 0
  br i1 %cmp78, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.77
  %80 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dst_width80 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %80, i32 0, i32 25
  %81 = load i32, i32* %dst_width80, align 4, !tbaa !73
  %sub81 = sub nsw i32 0, %81
  br label %cond.end

cond.false:                                       ; preds = %if.then.77
  %82 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dst_width82 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %82, i32 0, i32 25
  %83 = load i32, i32* %dst_width82, align 4, !tbaa !73
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub81, %cond.true ], [ %83, %cond.false ]
  store i32 %cond, i32* %dw, align 4, !tbaa !30
  %84 = bitcast i32* %dh to i8*
  call void @llvm.lifetime.start(i64 4, i8* %84) #1
  %85 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dst_height = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %85, i32 0, i32 24
  %86 = load i32, i32* %dst_height, align 4, !tbaa !74
  %cmp83 = icmp slt i32 %86, 0
  br i1 %cmp83, label %cond.true.85, label %cond.false.88

cond.true.85:                                     ; preds = %cond.end
  %87 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dst_height86 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %87, i32 0, i32 24
  %88 = load i32, i32* %dst_height86, align 4, !tbaa !74
  %sub87 = sub nsw i32 0, %88
  br label %cond.end.90

cond.false.88:                                    ; preds = %cond.end
  %89 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dst_height89 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %89, i32 0, i32 24
  %90 = load i32, i32* %dst_height89, align 4, !tbaa !74
  br label %cond.end.90

cond.end.90:                                      ; preds = %cond.false.88, %cond.true.85
  %cond91 = phi i32 [ %sub87, %cond.true.85 ], [ %90, %cond.false.88 ]
  store i32 %cond91, i32* %dh, align 4, !tbaa !30
  %91 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect92 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %91, i32 0, i32 22
  %x93 = getelementptr inbounds %struct.r_, %struct.r_* %rect92, i32 0, i32 0
  %92 = load i32, i32* %x93, align 4, !tbaa !68
  %93 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect94 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %93, i32 0, i32 22
  %w95 = getelementptr inbounds %struct.r_, %struct.r_* %rect94, i32 0, i32 2
  %94 = load i32, i32* %w95, align 4, !tbaa !75
  %add = add nsw i32 %92, %94
  %conv96 = sext i32 %add to i64
  %95 = load i32, i32* %dw, align 4, !tbaa !30
  %conv97 = sext i32 %95 to i64
  %mul = mul nsw i64 %conv96, %conv97
  %96 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Width98 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %96, i32 0, i32 9
  %97 = load i32, i32* %Width98, align 4, !tbaa !36
  %conv99 = sext i32 %97 to i64
  %div = sdiv i64 %mul, %conv99
  %conv100 = trunc i64 %div to i32
  %cmp101 = icmp slt i32 %conv100, 0
  br i1 %cmp101, label %land.lhs.true.103, label %cond.false.133

land.lhs.true.103:                                ; preds = %cond.end.90
  %98 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect104 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %98, i32 0, i32 22
  %x105 = getelementptr inbounds %struct.r_, %struct.r_* %rect104, i32 0, i32 0
  %99 = load i32, i32* %x105, align 4, !tbaa !68
  %100 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect106 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %100, i32 0, i32 22
  %w107 = getelementptr inbounds %struct.r_, %struct.r_* %rect106, i32 0, i32 2
  %101 = load i32, i32* %w107, align 4, !tbaa !75
  %add108 = add nsw i32 %99, %101
  %conv109 = sext i32 %add108 to i64
  %102 = load i32, i32* %dw, align 4, !tbaa !30
  %conv110 = sext i32 %102 to i64
  %mul111 = mul nsw i64 %conv109, %conv110
  %103 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Width112 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %103, i32 0, i32 9
  %104 = load i32, i32* %Width112, align 4, !tbaa !36
  %conv113 = sext i32 %104 to i64
  %div114 = sdiv i64 %mul111, %conv113
  %conv115 = trunc i64 %div114 to i32
  %conv116 = sext i32 %conv115 to i64
  %and = and i64 %conv116, 255
  %cmp117 = icmp eq i64 %and, 128
  br i1 %cmp117, label %cond.true.119, label %cond.false.133

cond.true.119:                                    ; preds = %land.lhs.true.103
  %105 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect120 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %105, i32 0, i32 22
  %x121 = getelementptr inbounds %struct.r_, %struct.r_* %rect120, i32 0, i32 0
  %106 = load i32, i32* %x121, align 4, !tbaa !68
  %107 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect122 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %107, i32 0, i32 22
  %w123 = getelementptr inbounds %struct.r_, %struct.r_* %rect122, i32 0, i32 2
  %108 = load i32, i32* %w123, align 4, !tbaa !75
  %add124 = add nsw i32 %106, %108
  %conv125 = sext i32 %add124 to i64
  %109 = load i32, i32* %dw, align 4, !tbaa !30
  %conv126 = sext i32 %109 to i64
  %mul127 = mul nsw i64 %conv125, %conv126
  %110 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Width128 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %110, i32 0, i32 9
  %111 = load i32, i32* %Width128, align 4, !tbaa !36
  %conv129 = sext i32 %111 to i64
  %div130 = sdiv i64 %mul127, %conv129
  %conv131 = trunc i64 %div130 to i32
  %shr = ashr i32 %conv131, 8
  %add132 = add nsw i32 %shr, 1
  br label %cond.end.150

cond.false.133:                                   ; preds = %land.lhs.true.103, %cond.end.90
  %112 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect134 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %112, i32 0, i32 22
  %x135 = getelementptr inbounds %struct.r_, %struct.r_* %rect134, i32 0, i32 0
  %113 = load i32, i32* %x135, align 4, !tbaa !68
  %114 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect136 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %114, i32 0, i32 22
  %w137 = getelementptr inbounds %struct.r_, %struct.r_* %rect136, i32 0, i32 2
  %115 = load i32, i32* %w137, align 4, !tbaa !75
  %add138 = add nsw i32 %113, %115
  %conv139 = sext i32 %add138 to i64
  %116 = load i32, i32* %dw, align 4, !tbaa !30
  %conv140 = sext i32 %116 to i64
  %mul141 = mul nsw i64 %conv139, %conv140
  %117 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Width142 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %117, i32 0, i32 9
  %118 = load i32, i32* %Width142, align 4, !tbaa !36
  %conv143 = sext i32 %118 to i64
  %div144 = sdiv i64 %mul141, %conv143
  %conv145 = trunc i64 %div144 to i32
  %conv146 = sext i32 %conv145 to i64
  %add147 = add nsw i64 %conv146, 127
  %shr148 = ashr i64 %add147, 8
  %conv149 = trunc i64 %shr148 to i32
  br label %cond.end.150

cond.end.150:                                     ; preds = %cond.false.133, %cond.true.119
  %cond151 = phi i32 [ %add132, %cond.true.119 ], [ %conv149, %cond.false.133 ]
  %119 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect152 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %119, i32 0, i32 22
  %x153 = getelementptr inbounds %struct.r_, %struct.r_* %rect152, i32 0, i32 0
  %120 = load i32, i32* %x153, align 4, !tbaa !68
  %conv154 = sext i32 %120 to i64
  %121 = load i32, i32* %dw, align 4, !tbaa !30
  %conv155 = sext i32 %121 to i64
  %mul156 = mul nsw i64 %conv154, %conv155
  %122 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Width157 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %122, i32 0, i32 9
  %123 = load i32, i32* %Width157, align 4, !tbaa !36
  %conv158 = sext i32 %123 to i64
  %div159 = sdiv i64 %mul156, %conv158
  %conv160 = trunc i64 %div159 to i32
  %cmp161 = icmp slt i32 %conv160, 0
  br i1 %cmp161, label %land.lhs.true.163, label %cond.false.189

land.lhs.true.163:                                ; preds = %cond.end.150
  %124 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect164 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %124, i32 0, i32 22
  %x165 = getelementptr inbounds %struct.r_, %struct.r_* %rect164, i32 0, i32 0
  %125 = load i32, i32* %x165, align 4, !tbaa !68
  %conv166 = sext i32 %125 to i64
  %126 = load i32, i32* %dw, align 4, !tbaa !30
  %conv167 = sext i32 %126 to i64
  %mul168 = mul nsw i64 %conv166, %conv167
  %127 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Width169 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %127, i32 0, i32 9
  %128 = load i32, i32* %Width169, align 4, !tbaa !36
  %conv170 = sext i32 %128 to i64
  %div171 = sdiv i64 %mul168, %conv170
  %conv172 = trunc i64 %div171 to i32
  %conv173 = sext i32 %conv172 to i64
  %and174 = and i64 %conv173, 255
  %cmp175 = icmp eq i64 %and174, 128
  br i1 %cmp175, label %cond.true.177, label %cond.false.189

cond.true.177:                                    ; preds = %land.lhs.true.163
  %129 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect178 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %129, i32 0, i32 22
  %x179 = getelementptr inbounds %struct.r_, %struct.r_* %rect178, i32 0, i32 0
  %130 = load i32, i32* %x179, align 4, !tbaa !68
  %conv180 = sext i32 %130 to i64
  %131 = load i32, i32* %dw, align 4, !tbaa !30
  %conv181 = sext i32 %131 to i64
  %mul182 = mul nsw i64 %conv180, %conv181
  %132 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Width183 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %132, i32 0, i32 9
  %133 = load i32, i32* %Width183, align 4, !tbaa !36
  %conv184 = sext i32 %133 to i64
  %div185 = sdiv i64 %mul182, %conv184
  %conv186 = trunc i64 %div185 to i32
  %shr187 = ashr i32 %conv186, 8
  %add188 = add nsw i32 %shr187, 1
  br label %cond.end.203

cond.false.189:                                   ; preds = %land.lhs.true.163, %cond.end.150
  %134 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect190 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %134, i32 0, i32 22
  %x191 = getelementptr inbounds %struct.r_, %struct.r_* %rect190, i32 0, i32 0
  %135 = load i32, i32* %x191, align 4, !tbaa !68
  %conv192 = sext i32 %135 to i64
  %136 = load i32, i32* %dw, align 4, !tbaa !30
  %conv193 = sext i32 %136 to i64
  %mul194 = mul nsw i64 %conv192, %conv193
  %137 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Width195 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %137, i32 0, i32 9
  %138 = load i32, i32* %Width195, align 4, !tbaa !36
  %conv196 = sext i32 %138 to i64
  %div197 = sdiv i64 %mul194, %conv196
  %conv198 = trunc i64 %div197 to i32
  %conv199 = sext i32 %conv198 to i64
  %add200 = add nsw i64 %conv199, 127
  %shr201 = ashr i64 %add200, 8
  %conv202 = trunc i64 %shr201 to i32
  br label %cond.end.203

cond.end.203:                                     ; preds = %cond.false.189, %cond.true.177
  %cond204 = phi i32 [ %add188, %cond.true.177 ], [ %conv202, %cond.false.189 ]
  %sub205 = sub nsw i32 %cond151, %cond204
  %WidthOut = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 12
  store i32 %sub205, i32* %WidthOut, align 4, !tbaa !76
  %139 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect206 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %139, i32 0, i32 22
  %y207 = getelementptr inbounds %struct.r_, %struct.r_* %rect206, i32 0, i32 1
  %140 = load i32, i32* %y207, align 4, !tbaa !71
  %141 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect208 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %141, i32 0, i32 22
  %h209 = getelementptr inbounds %struct.r_, %struct.r_* %rect208, i32 0, i32 3
  %142 = load i32, i32* %h209, align 4, !tbaa !77
  %add210 = add nsw i32 %140, %142
  %conv211 = sext i32 %add210 to i64
  %143 = load i32, i32* %dh, align 4, !tbaa !30
  %conv212 = sext i32 %143 to i64
  %mul213 = mul nsw i64 %conv211, %conv212
  %144 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Height214 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %144, i32 0, i32 10
  %145 = load i32, i32* %Height214, align 4, !tbaa !37
  %conv215 = sext i32 %145 to i64
  %div216 = sdiv i64 %mul213, %conv215
  %conv217 = trunc i64 %div216 to i32
  %cmp218 = icmp slt i32 %conv217, 0
  br i1 %cmp218, label %land.lhs.true.220, label %cond.false.252

land.lhs.true.220:                                ; preds = %cond.end.203
  %146 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect221 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %146, i32 0, i32 22
  %y222 = getelementptr inbounds %struct.r_, %struct.r_* %rect221, i32 0, i32 1
  %147 = load i32, i32* %y222, align 4, !tbaa !71
  %148 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect223 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %148, i32 0, i32 22
  %h224 = getelementptr inbounds %struct.r_, %struct.r_* %rect223, i32 0, i32 3
  %149 = load i32, i32* %h224, align 4, !tbaa !77
  %add225 = add nsw i32 %147, %149
  %conv226 = sext i32 %add225 to i64
  %150 = load i32, i32* %dh, align 4, !tbaa !30
  %conv227 = sext i32 %150 to i64
  %mul228 = mul nsw i64 %conv226, %conv227
  %151 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Height229 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %151, i32 0, i32 10
  %152 = load i32, i32* %Height229, align 4, !tbaa !37
  %conv230 = sext i32 %152 to i64
  %div231 = sdiv i64 %mul228, %conv230
  %conv232 = trunc i64 %div231 to i32
  %conv233 = sext i32 %conv232 to i64
  %and234 = and i64 %conv233, 255
  %cmp235 = icmp eq i64 %and234, 128
  br i1 %cmp235, label %cond.true.237, label %cond.false.252

cond.true.237:                                    ; preds = %land.lhs.true.220
  %153 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect238 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %153, i32 0, i32 22
  %y239 = getelementptr inbounds %struct.r_, %struct.r_* %rect238, i32 0, i32 1
  %154 = load i32, i32* %y239, align 4, !tbaa !71
  %155 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect240 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %155, i32 0, i32 22
  %h241 = getelementptr inbounds %struct.r_, %struct.r_* %rect240, i32 0, i32 3
  %156 = load i32, i32* %h241, align 4, !tbaa !77
  %add242 = add nsw i32 %154, %156
  %conv243 = sext i32 %add242 to i64
  %157 = load i32, i32* %dh, align 4, !tbaa !30
  %conv244 = sext i32 %157 to i64
  %mul245 = mul nsw i64 %conv243, %conv244
  %158 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Height246 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %158, i32 0, i32 10
  %159 = load i32, i32* %Height246, align 4, !tbaa !37
  %conv247 = sext i32 %159 to i64
  %div248 = sdiv i64 %mul245, %conv247
  %conv249 = trunc i64 %div248 to i32
  %shr250 = ashr i32 %conv249, 8
  %add251 = add nsw i32 %shr250, 1
  br label %cond.end.269

cond.false.252:                                   ; preds = %land.lhs.true.220, %cond.end.203
  %160 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect253 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %160, i32 0, i32 22
  %y254 = getelementptr inbounds %struct.r_, %struct.r_* %rect253, i32 0, i32 1
  %161 = load i32, i32* %y254, align 4, !tbaa !71
  %162 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect255 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %162, i32 0, i32 22
  %h256 = getelementptr inbounds %struct.r_, %struct.r_* %rect255, i32 0, i32 3
  %163 = load i32, i32* %h256, align 4, !tbaa !77
  %add257 = add nsw i32 %161, %163
  %conv258 = sext i32 %add257 to i64
  %164 = load i32, i32* %dh, align 4, !tbaa !30
  %conv259 = sext i32 %164 to i64
  %mul260 = mul nsw i64 %conv258, %conv259
  %165 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Height261 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %165, i32 0, i32 10
  %166 = load i32, i32* %Height261, align 4, !tbaa !37
  %conv262 = sext i32 %166 to i64
  %div263 = sdiv i64 %mul260, %conv262
  %conv264 = trunc i64 %div263 to i32
  %conv265 = sext i32 %conv264 to i64
  %add266 = add nsw i64 %conv265, 127
  %shr267 = ashr i64 %add266, 8
  %conv268 = trunc i64 %shr267 to i32
  br label %cond.end.269

cond.end.269:                                     ; preds = %cond.false.252, %cond.true.237
  %cond270 = phi i32 [ %add251, %cond.true.237 ], [ %conv268, %cond.false.252 ]
  %167 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect271 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %167, i32 0, i32 22
  %y272 = getelementptr inbounds %struct.r_, %struct.r_* %rect271, i32 0, i32 1
  %168 = load i32, i32* %y272, align 4, !tbaa !71
  %conv273 = sext i32 %168 to i64
  %169 = load i32, i32* %dh, align 4, !tbaa !30
  %conv274 = sext i32 %169 to i64
  %mul275 = mul nsw i64 %conv273, %conv274
  %170 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Height276 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %170, i32 0, i32 10
  %171 = load i32, i32* %Height276, align 4, !tbaa !37
  %conv277 = sext i32 %171 to i64
  %div278 = sdiv i64 %mul275, %conv277
  %conv279 = trunc i64 %div278 to i32
  %cmp280 = icmp slt i32 %conv279, 0
  br i1 %cmp280, label %land.lhs.true.282, label %cond.false.308

land.lhs.true.282:                                ; preds = %cond.end.269
  %172 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect283 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %172, i32 0, i32 22
  %y284 = getelementptr inbounds %struct.r_, %struct.r_* %rect283, i32 0, i32 1
  %173 = load i32, i32* %y284, align 4, !tbaa !71
  %conv285 = sext i32 %173 to i64
  %174 = load i32, i32* %dh, align 4, !tbaa !30
  %conv286 = sext i32 %174 to i64
  %mul287 = mul nsw i64 %conv285, %conv286
  %175 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Height288 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %175, i32 0, i32 10
  %176 = load i32, i32* %Height288, align 4, !tbaa !37
  %conv289 = sext i32 %176 to i64
  %div290 = sdiv i64 %mul287, %conv289
  %conv291 = trunc i64 %div290 to i32
  %conv292 = sext i32 %conv291 to i64
  %and293 = and i64 %conv292, 255
  %cmp294 = icmp eq i64 %and293, 128
  br i1 %cmp294, label %cond.true.296, label %cond.false.308

cond.true.296:                                    ; preds = %land.lhs.true.282
  %177 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect297 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %177, i32 0, i32 22
  %y298 = getelementptr inbounds %struct.r_, %struct.r_* %rect297, i32 0, i32 1
  %178 = load i32, i32* %y298, align 4, !tbaa !71
  %conv299 = sext i32 %178 to i64
  %179 = load i32, i32* %dh, align 4, !tbaa !30
  %conv300 = sext i32 %179 to i64
  %mul301 = mul nsw i64 %conv299, %conv300
  %180 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Height302 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %180, i32 0, i32 10
  %181 = load i32, i32* %Height302, align 4, !tbaa !37
  %conv303 = sext i32 %181 to i64
  %div304 = sdiv i64 %mul301, %conv303
  %conv305 = trunc i64 %div304 to i32
  %shr306 = ashr i32 %conv305, 8
  %add307 = add nsw i32 %shr306, 1
  br label %cond.end.322

cond.false.308:                                   ; preds = %land.lhs.true.282, %cond.end.269
  %182 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect309 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %182, i32 0, i32 22
  %y310 = getelementptr inbounds %struct.r_, %struct.r_* %rect309, i32 0, i32 1
  %183 = load i32, i32* %y310, align 4, !tbaa !71
  %conv311 = sext i32 %183 to i64
  %184 = load i32, i32* %dh, align 4, !tbaa !30
  %conv312 = sext i32 %184 to i64
  %mul313 = mul nsw i64 %conv311, %conv312
  %185 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Height314 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %185, i32 0, i32 10
  %186 = load i32, i32* %Height314, align 4, !tbaa !37
  %conv315 = sext i32 %186 to i64
  %div316 = sdiv i64 %mul313, %conv315
  %conv317 = trunc i64 %div316 to i32
  %conv318 = sext i32 %conv317 to i64
  %add319 = add nsw i64 %conv318, 127
  %shr320 = ashr i64 %add319, 8
  %conv321 = trunc i64 %shr320 to i32
  br label %cond.end.322

cond.end.322:                                     ; preds = %cond.false.308, %cond.true.296
  %cond323 = phi i32 [ %add307, %cond.true.296 ], [ %conv321, %cond.false.308 ]
  %sub324 = sub nsw i32 %cond270, %cond323
  %HeightOut = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 13
  store i32 %sub324, i32* %HeightOut, align 4, !tbaa !78
  %187 = load i32, i32* %dw, align 4, !tbaa !30
  %conv325 = sext i32 %187 to i64
  %add326 = add nsw i64 %conv325, 127
  %shr327 = ashr i64 %add326, 8
  %conv328 = trunc i64 %shr327 to i32
  %EntireWidthOut = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 18
  store i32 %conv328, i32* %EntireWidthOut, align 4, !tbaa !79
  %188 = load i32, i32* %dh, align 4, !tbaa !30
  %conv329 = sext i32 %188 to i64
  %add330 = add nsw i64 %conv329, 127
  %shr331 = ashr i64 %add330, 8
  %conv332 = trunc i64 %shr331 to i32
  %EntireHeightOut = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 19
  store i32 %conv332, i32* %EntireHeightOut, align 4, !tbaa !80
  %189 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect333 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %189, i32 0, i32 23
  %x334 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %rrect333, i32 0, i32 0
  %190 = load i32, i32* %x334, align 4, !tbaa !67
  %191 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect335 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %191, i32 0, i32 23
  %w336 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %rrect335, i32 0, i32 2
  %192 = load i32, i32* %w336, align 4, !tbaa !63
  %add337 = add nsw i32 %190, %192
  %conv338 = sext i32 %add337 to i64
  %193 = load i32, i32* %dw, align 4, !tbaa !30
  %conv339 = sext i32 %193 to i64
  %mul340 = mul nsw i64 %conv338, %conv339
  %194 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Width341 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %194, i32 0, i32 9
  %195 = load i32, i32* %Width341, align 4, !tbaa !36
  %conv342 = sext i32 %195 to i64
  %div343 = sdiv i64 %mul340, %conv342
  %conv344 = trunc i64 %div343 to i32
  %cmp345 = icmp slt i32 %conv344, 0
  br i1 %cmp345, label %land.lhs.true.347, label %cond.false.379

land.lhs.true.347:                                ; preds = %cond.end.322
  %196 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect348 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %196, i32 0, i32 23
  %x349 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %rrect348, i32 0, i32 0
  %197 = load i32, i32* %x349, align 4, !tbaa !67
  %198 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect350 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %198, i32 0, i32 23
  %w351 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %rrect350, i32 0, i32 2
  %199 = load i32, i32* %w351, align 4, !tbaa !63
  %add352 = add nsw i32 %197, %199
  %conv353 = sext i32 %add352 to i64
  %200 = load i32, i32* %dw, align 4, !tbaa !30
  %conv354 = sext i32 %200 to i64
  %mul355 = mul nsw i64 %conv353, %conv354
  %201 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Width356 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %201, i32 0, i32 9
  %202 = load i32, i32* %Width356, align 4, !tbaa !36
  %conv357 = sext i32 %202 to i64
  %div358 = sdiv i64 %mul355, %conv357
  %conv359 = trunc i64 %div358 to i32
  %conv360 = sext i32 %conv359 to i64
  %and361 = and i64 %conv360, 255
  %cmp362 = icmp eq i64 %and361, 128
  br i1 %cmp362, label %cond.true.364, label %cond.false.379

cond.true.364:                                    ; preds = %land.lhs.true.347
  %203 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect365 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %203, i32 0, i32 23
  %x366 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %rrect365, i32 0, i32 0
  %204 = load i32, i32* %x366, align 4, !tbaa !67
  %205 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect367 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %205, i32 0, i32 23
  %w368 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %rrect367, i32 0, i32 2
  %206 = load i32, i32* %w368, align 4, !tbaa !63
  %add369 = add nsw i32 %204, %206
  %conv370 = sext i32 %add369 to i64
  %207 = load i32, i32* %dw, align 4, !tbaa !30
  %conv371 = sext i32 %207 to i64
  %mul372 = mul nsw i64 %conv370, %conv371
  %208 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Width373 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %208, i32 0, i32 9
  %209 = load i32, i32* %Width373, align 4, !tbaa !36
  %conv374 = sext i32 %209 to i64
  %div375 = sdiv i64 %mul372, %conv374
  %conv376 = trunc i64 %div375 to i32
  %shr377 = ashr i32 %conv376, 8
  %add378 = add nsw i32 %shr377, 1
  br label %cond.end.396

cond.false.379:                                   ; preds = %land.lhs.true.347, %cond.end.322
  %210 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect380 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %210, i32 0, i32 23
  %x381 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %rrect380, i32 0, i32 0
  %211 = load i32, i32* %x381, align 4, !tbaa !67
  %212 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect382 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %212, i32 0, i32 23
  %w383 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %rrect382, i32 0, i32 2
  %213 = load i32, i32* %w383, align 4, !tbaa !63
  %add384 = add nsw i32 %211, %213
  %conv385 = sext i32 %add384 to i64
  %214 = load i32, i32* %dw, align 4, !tbaa !30
  %conv386 = sext i32 %214 to i64
  %mul387 = mul nsw i64 %conv385, %conv386
  %215 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Width388 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %215, i32 0, i32 9
  %216 = load i32, i32* %Width388, align 4, !tbaa !36
  %conv389 = sext i32 %216 to i64
  %div390 = sdiv i64 %mul387, %conv389
  %conv391 = trunc i64 %div390 to i32
  %conv392 = sext i32 %conv391 to i64
  %add393 = add nsw i64 %conv392, 127
  %shr394 = ashr i64 %add393, 8
  %conv395 = trunc i64 %shr394 to i32
  br label %cond.end.396

cond.end.396:                                     ; preds = %cond.false.379, %cond.true.364
  %cond397 = phi i32 [ %add378, %cond.true.364 ], [ %conv395, %cond.false.379 ]
  %217 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect398 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %217, i32 0, i32 23
  %x399 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %rrect398, i32 0, i32 0
  %218 = load i32, i32* %x399, align 4, !tbaa !67
  %conv400 = sext i32 %218 to i64
  %219 = load i32, i32* %dw, align 4, !tbaa !30
  %conv401 = sext i32 %219 to i64
  %mul402 = mul nsw i64 %conv400, %conv401
  %220 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Width403 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %220, i32 0, i32 9
  %221 = load i32, i32* %Width403, align 4, !tbaa !36
  %conv404 = sext i32 %221 to i64
  %div405 = sdiv i64 %mul402, %conv404
  %conv406 = trunc i64 %div405 to i32
  %cmp407 = icmp slt i32 %conv406, 0
  br i1 %cmp407, label %land.lhs.true.409, label %cond.false.435

land.lhs.true.409:                                ; preds = %cond.end.396
  %222 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect410 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %222, i32 0, i32 23
  %x411 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %rrect410, i32 0, i32 0
  %223 = load i32, i32* %x411, align 4, !tbaa !67
  %conv412 = sext i32 %223 to i64
  %224 = load i32, i32* %dw, align 4, !tbaa !30
  %conv413 = sext i32 %224 to i64
  %mul414 = mul nsw i64 %conv412, %conv413
  %225 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Width415 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %225, i32 0, i32 9
  %226 = load i32, i32* %Width415, align 4, !tbaa !36
  %conv416 = sext i32 %226 to i64
  %div417 = sdiv i64 %mul414, %conv416
  %conv418 = trunc i64 %div417 to i32
  %conv419 = sext i32 %conv418 to i64
  %and420 = and i64 %conv419, 255
  %cmp421 = icmp eq i64 %and420, 128
  br i1 %cmp421, label %cond.true.423, label %cond.false.435

cond.true.423:                                    ; preds = %land.lhs.true.409
  %227 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect424 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %227, i32 0, i32 23
  %x425 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %rrect424, i32 0, i32 0
  %228 = load i32, i32* %x425, align 4, !tbaa !67
  %conv426 = sext i32 %228 to i64
  %229 = load i32, i32* %dw, align 4, !tbaa !30
  %conv427 = sext i32 %229 to i64
  %mul428 = mul nsw i64 %conv426, %conv427
  %230 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Width429 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %230, i32 0, i32 9
  %231 = load i32, i32* %Width429, align 4, !tbaa !36
  %conv430 = sext i32 %231 to i64
  %div431 = sdiv i64 %mul428, %conv430
  %conv432 = trunc i64 %div431 to i32
  %shr433 = ashr i32 %conv432, 8
  %add434 = add nsw i32 %shr433, 1
  br label %cond.end.449

cond.false.435:                                   ; preds = %land.lhs.true.409, %cond.end.396
  %232 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect436 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %232, i32 0, i32 23
  %x437 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %rrect436, i32 0, i32 0
  %233 = load i32, i32* %x437, align 4, !tbaa !67
  %conv438 = sext i32 %233 to i64
  %234 = load i32, i32* %dw, align 4, !tbaa !30
  %conv439 = sext i32 %234 to i64
  %mul440 = mul nsw i64 %conv438, %conv439
  %235 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Width441 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %235, i32 0, i32 9
  %236 = load i32, i32* %Width441, align 4, !tbaa !36
  %conv442 = sext i32 %236 to i64
  %div443 = sdiv i64 %mul440, %conv442
  %conv444 = trunc i64 %div443 to i32
  %conv445 = sext i32 %conv444 to i64
  %add446 = add nsw i64 %conv445, 127
  %shr447 = ashr i64 %add446, 8
  %conv448 = trunc i64 %shr447 to i32
  br label %cond.end.449

cond.end.449:                                     ; preds = %cond.false.435, %cond.true.423
  %cond450 = phi i32 [ %add434, %cond.true.423 ], [ %conv448, %cond.false.435 ]
  %sub451 = sub nsw i32 %cond397, %cond450
  %PatchWidthOut = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 4
  store i32 %sub451, i32* %PatchWidthOut, align 4, !tbaa !81
  %237 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect452 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %237, i32 0, i32 23
  %y453 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %rrect452, i32 0, i32 1
  %238 = load i32, i32* %y453, align 4, !tbaa !70
  %239 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect454 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %239, i32 0, i32 23
  %h455 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %rrect454, i32 0, i32 3
  %240 = load i32, i32* %h455, align 4, !tbaa !65
  %add456 = add nsw i32 %238, %240
  %conv457 = sext i32 %add456 to i64
  %241 = load i32, i32* %dh, align 4, !tbaa !30
  %conv458 = sext i32 %241 to i64
  %mul459 = mul nsw i64 %conv457, %conv458
  %242 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Height460 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %242, i32 0, i32 10
  %243 = load i32, i32* %Height460, align 4, !tbaa !37
  %conv461 = sext i32 %243 to i64
  %div462 = sdiv i64 %mul459, %conv461
  %conv463 = trunc i64 %div462 to i32
  %cmp464 = icmp slt i32 %conv463, 0
  br i1 %cmp464, label %land.lhs.true.466, label %cond.false.498

land.lhs.true.466:                                ; preds = %cond.end.449
  %244 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect467 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %244, i32 0, i32 23
  %y468 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %rrect467, i32 0, i32 1
  %245 = load i32, i32* %y468, align 4, !tbaa !70
  %246 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect469 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %246, i32 0, i32 23
  %h470 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %rrect469, i32 0, i32 3
  %247 = load i32, i32* %h470, align 4, !tbaa !65
  %add471 = add nsw i32 %245, %247
  %conv472 = sext i32 %add471 to i64
  %248 = load i32, i32* %dh, align 4, !tbaa !30
  %conv473 = sext i32 %248 to i64
  %mul474 = mul nsw i64 %conv472, %conv473
  %249 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Height475 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %249, i32 0, i32 10
  %250 = load i32, i32* %Height475, align 4, !tbaa !37
  %conv476 = sext i32 %250 to i64
  %div477 = sdiv i64 %mul474, %conv476
  %conv478 = trunc i64 %div477 to i32
  %conv479 = sext i32 %conv478 to i64
  %and480 = and i64 %conv479, 255
  %cmp481 = icmp eq i64 %and480, 128
  br i1 %cmp481, label %cond.true.483, label %cond.false.498

cond.true.483:                                    ; preds = %land.lhs.true.466
  %251 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect484 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %251, i32 0, i32 23
  %y485 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %rrect484, i32 0, i32 1
  %252 = load i32, i32* %y485, align 4, !tbaa !70
  %253 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect486 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %253, i32 0, i32 23
  %h487 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %rrect486, i32 0, i32 3
  %254 = load i32, i32* %h487, align 4, !tbaa !65
  %add488 = add nsw i32 %252, %254
  %conv489 = sext i32 %add488 to i64
  %255 = load i32, i32* %dh, align 4, !tbaa !30
  %conv490 = sext i32 %255 to i64
  %mul491 = mul nsw i64 %conv489, %conv490
  %256 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Height492 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %256, i32 0, i32 10
  %257 = load i32, i32* %Height492, align 4, !tbaa !37
  %conv493 = sext i32 %257 to i64
  %div494 = sdiv i64 %mul491, %conv493
  %conv495 = trunc i64 %div494 to i32
  %shr496 = ashr i32 %conv495, 8
  %add497 = add nsw i32 %shr496, 1
  br label %cond.end.515

cond.false.498:                                   ; preds = %land.lhs.true.466, %cond.end.449
  %258 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect499 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %258, i32 0, i32 23
  %y500 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %rrect499, i32 0, i32 1
  %259 = load i32, i32* %y500, align 4, !tbaa !70
  %260 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect501 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %260, i32 0, i32 23
  %h502 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %rrect501, i32 0, i32 3
  %261 = load i32, i32* %h502, align 4, !tbaa !65
  %add503 = add nsw i32 %259, %261
  %conv504 = sext i32 %add503 to i64
  %262 = load i32, i32* %dh, align 4, !tbaa !30
  %conv505 = sext i32 %262 to i64
  %mul506 = mul nsw i64 %conv504, %conv505
  %263 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Height507 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %263, i32 0, i32 10
  %264 = load i32, i32* %Height507, align 4, !tbaa !37
  %conv508 = sext i32 %264 to i64
  %div509 = sdiv i64 %mul506, %conv508
  %conv510 = trunc i64 %div509 to i32
  %conv511 = sext i32 %conv510 to i64
  %add512 = add nsw i64 %conv511, 127
  %shr513 = ashr i64 %add512, 8
  %conv514 = trunc i64 %shr513 to i32
  br label %cond.end.515

cond.end.515:                                     ; preds = %cond.false.498, %cond.true.483
  %cond516 = phi i32 [ %add497, %cond.true.483 ], [ %conv514, %cond.false.498 ]
  %265 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect517 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %265, i32 0, i32 23
  %y518 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %rrect517, i32 0, i32 1
  %266 = load i32, i32* %y518, align 4, !tbaa !70
  %conv519 = sext i32 %266 to i64
  %267 = load i32, i32* %dh, align 4, !tbaa !30
  %conv520 = sext i32 %267 to i64
  %mul521 = mul nsw i64 %conv519, %conv520
  %268 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Height522 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %268, i32 0, i32 10
  %269 = load i32, i32* %Height522, align 4, !tbaa !37
  %conv523 = sext i32 %269 to i64
  %div524 = sdiv i64 %mul521, %conv523
  %conv525 = trunc i64 %div524 to i32
  %cmp526 = icmp slt i32 %conv525, 0
  br i1 %cmp526, label %land.lhs.true.528, label %cond.false.554

land.lhs.true.528:                                ; preds = %cond.end.515
  %270 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect529 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %270, i32 0, i32 23
  %y530 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %rrect529, i32 0, i32 1
  %271 = load i32, i32* %y530, align 4, !tbaa !70
  %conv531 = sext i32 %271 to i64
  %272 = load i32, i32* %dh, align 4, !tbaa !30
  %conv532 = sext i32 %272 to i64
  %mul533 = mul nsw i64 %conv531, %conv532
  %273 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Height534 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %273, i32 0, i32 10
  %274 = load i32, i32* %Height534, align 4, !tbaa !37
  %conv535 = sext i32 %274 to i64
  %div536 = sdiv i64 %mul533, %conv535
  %conv537 = trunc i64 %div536 to i32
  %conv538 = sext i32 %conv537 to i64
  %and539 = and i64 %conv538, 255
  %cmp540 = icmp eq i64 %and539, 128
  br i1 %cmp540, label %cond.true.542, label %cond.false.554

cond.true.542:                                    ; preds = %land.lhs.true.528
  %275 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect543 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %275, i32 0, i32 23
  %y544 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %rrect543, i32 0, i32 1
  %276 = load i32, i32* %y544, align 4, !tbaa !70
  %conv545 = sext i32 %276 to i64
  %277 = load i32, i32* %dh, align 4, !tbaa !30
  %conv546 = sext i32 %277 to i64
  %mul547 = mul nsw i64 %conv545, %conv546
  %278 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Height548 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %278, i32 0, i32 10
  %279 = load i32, i32* %Height548, align 4, !tbaa !37
  %conv549 = sext i32 %279 to i64
  %div550 = sdiv i64 %mul547, %conv549
  %conv551 = trunc i64 %div550 to i32
  %shr552 = ashr i32 %conv551, 8
  %add553 = add nsw i32 %shr552, 1
  br label %cond.end.568

cond.false.554:                                   ; preds = %land.lhs.true.528, %cond.end.515
  %280 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect555 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %280, i32 0, i32 23
  %y556 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %rrect555, i32 0, i32 1
  %281 = load i32, i32* %y556, align 4, !tbaa !70
  %conv557 = sext i32 %281 to i64
  %282 = load i32, i32* %dh, align 4, !tbaa !30
  %conv558 = sext i32 %282 to i64
  %mul559 = mul nsw i64 %conv557, %conv558
  %283 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Height560 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %283, i32 0, i32 10
  %284 = load i32, i32* %Height560, align 4, !tbaa !37
  %conv561 = sext i32 %284 to i64
  %div562 = sdiv i64 %mul559, %conv561
  %conv563 = trunc i64 %div562 to i32
  %conv564 = sext i32 %conv563 to i64
  %add565 = add nsw i64 %conv564, 127
  %shr566 = ashr i64 %add565, 8
  %conv567 = trunc i64 %shr566 to i32
  br label %cond.end.568

cond.end.568:                                     ; preds = %cond.false.554, %cond.true.542
  %cond569 = phi i32 [ %add553, %cond.true.542 ], [ %conv567, %cond.false.554 ]
  %sub570 = sub nsw i32 %cond516, %cond569
  %PatchHeightOut = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 5
  store i32 %sub570, i32* %PatchHeightOut, align 4, !tbaa !82
  %LeftMarginIn571 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 21
  %285 = load i32, i32* %LeftMarginIn571, align 4, !tbaa !69
  %conv572 = sext i32 %285 to i64
  %286 = load i32, i32* %dw, align 4, !tbaa !30
  %conv573 = sext i32 %286 to i64
  %mul574 = mul nsw i64 %conv572, %conv573
  %287 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Width575 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %287, i32 0, i32 9
  %288 = load i32, i32* %Width575, align 4, !tbaa !36
  %conv576 = sext i32 %288 to i64
  %div577 = sdiv i64 %mul574, %conv576
  %conv578 = trunc i64 %div577 to i32
  %cmp579 = icmp slt i32 %conv578, 0
  br i1 %cmp579, label %land.lhs.true.581, label %cond.false.605

land.lhs.true.581:                                ; preds = %cond.end.568
  %LeftMarginIn582 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 21
  %289 = load i32, i32* %LeftMarginIn582, align 4, !tbaa !69
  %conv583 = sext i32 %289 to i64
  %290 = load i32, i32* %dw, align 4, !tbaa !30
  %conv584 = sext i32 %290 to i64
  %mul585 = mul nsw i64 %conv583, %conv584
  %291 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Width586 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %291, i32 0, i32 9
  %292 = load i32, i32* %Width586, align 4, !tbaa !36
  %conv587 = sext i32 %292 to i64
  %div588 = sdiv i64 %mul585, %conv587
  %conv589 = trunc i64 %div588 to i32
  %conv590 = sext i32 %conv589 to i64
  %and591 = and i64 %conv590, 255
  %cmp592 = icmp eq i64 %and591, 128
  br i1 %cmp592, label %cond.true.594, label %cond.false.605

cond.true.594:                                    ; preds = %land.lhs.true.581
  %LeftMarginIn595 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 21
  %293 = load i32, i32* %LeftMarginIn595, align 4, !tbaa !69
  %conv596 = sext i32 %293 to i64
  %294 = load i32, i32* %dw, align 4, !tbaa !30
  %conv597 = sext i32 %294 to i64
  %mul598 = mul nsw i64 %conv596, %conv597
  %295 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Width599 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %295, i32 0, i32 9
  %296 = load i32, i32* %Width599, align 4, !tbaa !36
  %conv600 = sext i32 %296 to i64
  %div601 = sdiv i64 %mul598, %conv600
  %conv602 = trunc i64 %div601 to i32
  %shr603 = ashr i32 %conv602, 8
  %add604 = add nsw i32 %shr603, 1
  br label %cond.end.618

cond.false.605:                                   ; preds = %land.lhs.true.581, %cond.end.568
  %LeftMarginIn606 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 21
  %297 = load i32, i32* %LeftMarginIn606, align 4, !tbaa !69
  %conv607 = sext i32 %297 to i64
  %298 = load i32, i32* %dw, align 4, !tbaa !30
  %conv608 = sext i32 %298 to i64
  %mul609 = mul nsw i64 %conv607, %conv608
  %299 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Width610 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %299, i32 0, i32 9
  %300 = load i32, i32* %Width610, align 4, !tbaa !36
  %conv611 = sext i32 %300 to i64
  %div612 = sdiv i64 %mul609, %conv611
  %conv613 = trunc i64 %div612 to i32
  %conv614 = sext i32 %conv613 to i64
  %add615 = add nsw i64 %conv614, 127
  %shr616 = ashr i64 %add615, 8
  %conv617 = trunc i64 %shr616 to i32
  br label %cond.end.618

cond.end.618:                                     ; preds = %cond.false.605, %cond.true.594
  %cond619 = phi i32 [ %add604, %cond.true.594 ], [ %conv617, %cond.false.605 ]
  %LeftMarginOut = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 22
  store i32 %cond619, i32* %LeftMarginOut, align 4, !tbaa !83
  %301 = bitcast i32* %dh to i8*
  call void @llvm.lifetime.end(i64 4, i8* %301) #1
  %302 = bitcast i32* %dw to i8*
  call void @llvm.lifetime.end(i64 4, i8* %302) #1
  br label %if.end.1183

if.else.620:                                      ; preds = %if.end.66
  %303 = bitcast i32* %dw621 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %303) #1
  %304 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dst_width622 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %304, i32 0, i32 25
  %305 = load i32, i32* %dst_width622, align 4, !tbaa !73
  %cmp623 = icmp slt i32 %305, 0
  br i1 %cmp623, label %cond.true.625, label %cond.false.628

cond.true.625:                                    ; preds = %if.else.620
  %306 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dst_width626 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %306, i32 0, i32 25
  %307 = load i32, i32* %dst_width626, align 4, !tbaa !73
  %sub627 = sub nsw i32 0, %307
  br label %cond.end.630

cond.false.628:                                   ; preds = %if.else.620
  %308 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dst_width629 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %308, i32 0, i32 25
  %309 = load i32, i32* %dst_width629, align 4, !tbaa !73
  br label %cond.end.630

cond.end.630:                                     ; preds = %cond.false.628, %cond.true.625
  %cond631 = phi i32 [ %sub627, %cond.true.625 ], [ %309, %cond.false.628 ]
  store i32 %cond631, i32* %dw621, align 4, !tbaa !30
  %310 = bitcast i32* %dh632 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %310) #1
  %311 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dst_height633 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %311, i32 0, i32 24
  %312 = load i32, i32* %dst_height633, align 4, !tbaa !74
  %cmp634 = icmp slt i32 %312, 0
  br i1 %cmp634, label %cond.true.636, label %cond.false.639

cond.true.636:                                    ; preds = %cond.end.630
  %313 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dst_height637 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %313, i32 0, i32 24
  %314 = load i32, i32* %dst_height637, align 4, !tbaa !74
  %sub638 = sub nsw i32 0, %314
  br label %cond.end.641

cond.false.639:                                   ; preds = %cond.end.630
  %315 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dst_height640 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %315, i32 0, i32 24
  %316 = load i32, i32* %dst_height640, align 4, !tbaa !74
  br label %cond.end.641

cond.end.641:                                     ; preds = %cond.false.639, %cond.true.636
  %cond642 = phi i32 [ %sub638, %cond.true.636 ], [ %316, %cond.false.639 ]
  store i32 %cond642, i32* %dh632, align 4, !tbaa !30
  %317 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect643 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %317, i32 0, i32 22
  %x644 = getelementptr inbounds %struct.r_, %struct.r_* %rect643, i32 0, i32 0
  %318 = load i32, i32* %x644, align 4, !tbaa !68
  %319 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect645 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %319, i32 0, i32 22
  %w646 = getelementptr inbounds %struct.r_, %struct.r_* %rect645, i32 0, i32 2
  %320 = load i32, i32* %w646, align 4, !tbaa !75
  %add647 = add nsw i32 %318, %320
  %conv648 = sext i32 %add647 to i64
  %321 = load i32, i32* %dh632, align 4, !tbaa !30
  %conv649 = sext i32 %321 to i64
  %mul650 = mul nsw i64 %conv648, %conv649
  %322 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Width651 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %322, i32 0, i32 9
  %323 = load i32, i32* %Width651, align 4, !tbaa !36
  %conv652 = sext i32 %323 to i64
  %div653 = sdiv i64 %mul650, %conv652
  %conv654 = trunc i64 %div653 to i32
  %cmp655 = icmp slt i32 %conv654, 0
  br i1 %cmp655, label %land.lhs.true.657, label %cond.false.689

land.lhs.true.657:                                ; preds = %cond.end.641
  %324 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect658 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %324, i32 0, i32 22
  %x659 = getelementptr inbounds %struct.r_, %struct.r_* %rect658, i32 0, i32 0
  %325 = load i32, i32* %x659, align 4, !tbaa !68
  %326 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect660 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %326, i32 0, i32 22
  %w661 = getelementptr inbounds %struct.r_, %struct.r_* %rect660, i32 0, i32 2
  %327 = load i32, i32* %w661, align 4, !tbaa !75
  %add662 = add nsw i32 %325, %327
  %conv663 = sext i32 %add662 to i64
  %328 = load i32, i32* %dh632, align 4, !tbaa !30
  %conv664 = sext i32 %328 to i64
  %mul665 = mul nsw i64 %conv663, %conv664
  %329 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Width666 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %329, i32 0, i32 9
  %330 = load i32, i32* %Width666, align 4, !tbaa !36
  %conv667 = sext i32 %330 to i64
  %div668 = sdiv i64 %mul665, %conv667
  %conv669 = trunc i64 %div668 to i32
  %conv670 = sext i32 %conv669 to i64
  %and671 = and i64 %conv670, 255
  %cmp672 = icmp eq i64 %and671, 128
  br i1 %cmp672, label %cond.true.674, label %cond.false.689

cond.true.674:                                    ; preds = %land.lhs.true.657
  %331 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect675 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %331, i32 0, i32 22
  %x676 = getelementptr inbounds %struct.r_, %struct.r_* %rect675, i32 0, i32 0
  %332 = load i32, i32* %x676, align 4, !tbaa !68
  %333 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect677 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %333, i32 0, i32 22
  %w678 = getelementptr inbounds %struct.r_, %struct.r_* %rect677, i32 0, i32 2
  %334 = load i32, i32* %w678, align 4, !tbaa !75
  %add679 = add nsw i32 %332, %334
  %conv680 = sext i32 %add679 to i64
  %335 = load i32, i32* %dh632, align 4, !tbaa !30
  %conv681 = sext i32 %335 to i64
  %mul682 = mul nsw i64 %conv680, %conv681
  %336 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Width683 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %336, i32 0, i32 9
  %337 = load i32, i32* %Width683, align 4, !tbaa !36
  %conv684 = sext i32 %337 to i64
  %div685 = sdiv i64 %mul682, %conv684
  %conv686 = trunc i64 %div685 to i32
  %shr687 = ashr i32 %conv686, 8
  %add688 = add nsw i32 %shr687, 1
  br label %cond.end.706

cond.false.689:                                   ; preds = %land.lhs.true.657, %cond.end.641
  %338 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect690 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %338, i32 0, i32 22
  %x691 = getelementptr inbounds %struct.r_, %struct.r_* %rect690, i32 0, i32 0
  %339 = load i32, i32* %x691, align 4, !tbaa !68
  %340 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect692 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %340, i32 0, i32 22
  %w693 = getelementptr inbounds %struct.r_, %struct.r_* %rect692, i32 0, i32 2
  %341 = load i32, i32* %w693, align 4, !tbaa !75
  %add694 = add nsw i32 %339, %341
  %conv695 = sext i32 %add694 to i64
  %342 = load i32, i32* %dh632, align 4, !tbaa !30
  %conv696 = sext i32 %342 to i64
  %mul697 = mul nsw i64 %conv695, %conv696
  %343 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Width698 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %343, i32 0, i32 9
  %344 = load i32, i32* %Width698, align 4, !tbaa !36
  %conv699 = sext i32 %344 to i64
  %div700 = sdiv i64 %mul697, %conv699
  %conv701 = trunc i64 %div700 to i32
  %conv702 = sext i32 %conv701 to i64
  %add703 = add nsw i64 %conv702, 127
  %shr704 = ashr i64 %add703, 8
  %conv705 = trunc i64 %shr704 to i32
  br label %cond.end.706

cond.end.706:                                     ; preds = %cond.false.689, %cond.true.674
  %cond707 = phi i32 [ %add688, %cond.true.674 ], [ %conv705, %cond.false.689 ]
  %345 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect708 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %345, i32 0, i32 22
  %x709 = getelementptr inbounds %struct.r_, %struct.r_* %rect708, i32 0, i32 0
  %346 = load i32, i32* %x709, align 4, !tbaa !68
  %conv710 = sext i32 %346 to i64
  %347 = load i32, i32* %dh632, align 4, !tbaa !30
  %conv711 = sext i32 %347 to i64
  %mul712 = mul nsw i64 %conv710, %conv711
  %348 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Width713 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %348, i32 0, i32 9
  %349 = load i32, i32* %Width713, align 4, !tbaa !36
  %conv714 = sext i32 %349 to i64
  %div715 = sdiv i64 %mul712, %conv714
  %conv716 = trunc i64 %div715 to i32
  %cmp717 = icmp slt i32 %conv716, 0
  br i1 %cmp717, label %land.lhs.true.719, label %cond.false.745

land.lhs.true.719:                                ; preds = %cond.end.706
  %350 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect720 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %350, i32 0, i32 22
  %x721 = getelementptr inbounds %struct.r_, %struct.r_* %rect720, i32 0, i32 0
  %351 = load i32, i32* %x721, align 4, !tbaa !68
  %conv722 = sext i32 %351 to i64
  %352 = load i32, i32* %dh632, align 4, !tbaa !30
  %conv723 = sext i32 %352 to i64
  %mul724 = mul nsw i64 %conv722, %conv723
  %353 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Width725 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %353, i32 0, i32 9
  %354 = load i32, i32* %Width725, align 4, !tbaa !36
  %conv726 = sext i32 %354 to i64
  %div727 = sdiv i64 %mul724, %conv726
  %conv728 = trunc i64 %div727 to i32
  %conv729 = sext i32 %conv728 to i64
  %and730 = and i64 %conv729, 255
  %cmp731 = icmp eq i64 %and730, 128
  br i1 %cmp731, label %cond.true.733, label %cond.false.745

cond.true.733:                                    ; preds = %land.lhs.true.719
  %355 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect734 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %355, i32 0, i32 22
  %x735 = getelementptr inbounds %struct.r_, %struct.r_* %rect734, i32 0, i32 0
  %356 = load i32, i32* %x735, align 4, !tbaa !68
  %conv736 = sext i32 %356 to i64
  %357 = load i32, i32* %dh632, align 4, !tbaa !30
  %conv737 = sext i32 %357 to i64
  %mul738 = mul nsw i64 %conv736, %conv737
  %358 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Width739 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %358, i32 0, i32 9
  %359 = load i32, i32* %Width739, align 4, !tbaa !36
  %conv740 = sext i32 %359 to i64
  %div741 = sdiv i64 %mul738, %conv740
  %conv742 = trunc i64 %div741 to i32
  %shr743 = ashr i32 %conv742, 8
  %add744 = add nsw i32 %shr743, 1
  br label %cond.end.759

cond.false.745:                                   ; preds = %land.lhs.true.719, %cond.end.706
  %360 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect746 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %360, i32 0, i32 22
  %x747 = getelementptr inbounds %struct.r_, %struct.r_* %rect746, i32 0, i32 0
  %361 = load i32, i32* %x747, align 4, !tbaa !68
  %conv748 = sext i32 %361 to i64
  %362 = load i32, i32* %dh632, align 4, !tbaa !30
  %conv749 = sext i32 %362 to i64
  %mul750 = mul nsw i64 %conv748, %conv749
  %363 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Width751 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %363, i32 0, i32 9
  %364 = load i32, i32* %Width751, align 4, !tbaa !36
  %conv752 = sext i32 %364 to i64
  %div753 = sdiv i64 %mul750, %conv752
  %conv754 = trunc i64 %div753 to i32
  %conv755 = sext i32 %conv754 to i64
  %add756 = add nsw i64 %conv755, 127
  %shr757 = ashr i64 %add756, 8
  %conv758 = trunc i64 %shr757 to i32
  br label %cond.end.759

cond.end.759:                                     ; preds = %cond.false.745, %cond.true.733
  %cond760 = phi i32 [ %add744, %cond.true.733 ], [ %conv758, %cond.false.745 ]
  %sub761 = sub nsw i32 %cond707, %cond760
  %WidthOut762 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 12
  store i32 %sub761, i32* %WidthOut762, align 4, !tbaa !76
  %365 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect763 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %365, i32 0, i32 22
  %y764 = getelementptr inbounds %struct.r_, %struct.r_* %rect763, i32 0, i32 1
  %366 = load i32, i32* %y764, align 4, !tbaa !71
  %367 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect765 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %367, i32 0, i32 22
  %h766 = getelementptr inbounds %struct.r_, %struct.r_* %rect765, i32 0, i32 3
  %368 = load i32, i32* %h766, align 4, !tbaa !77
  %add767 = add nsw i32 %366, %368
  %conv768 = sext i32 %add767 to i64
  %369 = load i32, i32* %dw621, align 4, !tbaa !30
  %conv769 = sext i32 %369 to i64
  %mul770 = mul nsw i64 %conv768, %conv769
  %370 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Height771 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %370, i32 0, i32 10
  %371 = load i32, i32* %Height771, align 4, !tbaa !37
  %conv772 = sext i32 %371 to i64
  %div773 = sdiv i64 %mul770, %conv772
  %conv774 = trunc i64 %div773 to i32
  %cmp775 = icmp slt i32 %conv774, 0
  br i1 %cmp775, label %land.lhs.true.777, label %cond.false.809

land.lhs.true.777:                                ; preds = %cond.end.759
  %372 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect778 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %372, i32 0, i32 22
  %y779 = getelementptr inbounds %struct.r_, %struct.r_* %rect778, i32 0, i32 1
  %373 = load i32, i32* %y779, align 4, !tbaa !71
  %374 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect780 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %374, i32 0, i32 22
  %h781 = getelementptr inbounds %struct.r_, %struct.r_* %rect780, i32 0, i32 3
  %375 = load i32, i32* %h781, align 4, !tbaa !77
  %add782 = add nsw i32 %373, %375
  %conv783 = sext i32 %add782 to i64
  %376 = load i32, i32* %dw621, align 4, !tbaa !30
  %conv784 = sext i32 %376 to i64
  %mul785 = mul nsw i64 %conv783, %conv784
  %377 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Height786 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %377, i32 0, i32 10
  %378 = load i32, i32* %Height786, align 4, !tbaa !37
  %conv787 = sext i32 %378 to i64
  %div788 = sdiv i64 %mul785, %conv787
  %conv789 = trunc i64 %div788 to i32
  %conv790 = sext i32 %conv789 to i64
  %and791 = and i64 %conv790, 255
  %cmp792 = icmp eq i64 %and791, 128
  br i1 %cmp792, label %cond.true.794, label %cond.false.809

cond.true.794:                                    ; preds = %land.lhs.true.777
  %379 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect795 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %379, i32 0, i32 22
  %y796 = getelementptr inbounds %struct.r_, %struct.r_* %rect795, i32 0, i32 1
  %380 = load i32, i32* %y796, align 4, !tbaa !71
  %381 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect797 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %381, i32 0, i32 22
  %h798 = getelementptr inbounds %struct.r_, %struct.r_* %rect797, i32 0, i32 3
  %382 = load i32, i32* %h798, align 4, !tbaa !77
  %add799 = add nsw i32 %380, %382
  %conv800 = sext i32 %add799 to i64
  %383 = load i32, i32* %dw621, align 4, !tbaa !30
  %conv801 = sext i32 %383 to i64
  %mul802 = mul nsw i64 %conv800, %conv801
  %384 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Height803 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %384, i32 0, i32 10
  %385 = load i32, i32* %Height803, align 4, !tbaa !37
  %conv804 = sext i32 %385 to i64
  %div805 = sdiv i64 %mul802, %conv804
  %conv806 = trunc i64 %div805 to i32
  %shr807 = ashr i32 %conv806, 8
  %add808 = add nsw i32 %shr807, 1
  br label %cond.end.826

cond.false.809:                                   ; preds = %land.lhs.true.777, %cond.end.759
  %386 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect810 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %386, i32 0, i32 22
  %y811 = getelementptr inbounds %struct.r_, %struct.r_* %rect810, i32 0, i32 1
  %387 = load i32, i32* %y811, align 4, !tbaa !71
  %388 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect812 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %388, i32 0, i32 22
  %h813 = getelementptr inbounds %struct.r_, %struct.r_* %rect812, i32 0, i32 3
  %389 = load i32, i32* %h813, align 4, !tbaa !77
  %add814 = add nsw i32 %387, %389
  %conv815 = sext i32 %add814 to i64
  %390 = load i32, i32* %dw621, align 4, !tbaa !30
  %conv816 = sext i32 %390 to i64
  %mul817 = mul nsw i64 %conv815, %conv816
  %391 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Height818 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %391, i32 0, i32 10
  %392 = load i32, i32* %Height818, align 4, !tbaa !37
  %conv819 = sext i32 %392 to i64
  %div820 = sdiv i64 %mul817, %conv819
  %conv821 = trunc i64 %div820 to i32
  %conv822 = sext i32 %conv821 to i64
  %add823 = add nsw i64 %conv822, 127
  %shr824 = ashr i64 %add823, 8
  %conv825 = trunc i64 %shr824 to i32
  br label %cond.end.826

cond.end.826:                                     ; preds = %cond.false.809, %cond.true.794
  %cond827 = phi i32 [ %add808, %cond.true.794 ], [ %conv825, %cond.false.809 ]
  %393 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect828 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %393, i32 0, i32 22
  %y829 = getelementptr inbounds %struct.r_, %struct.r_* %rect828, i32 0, i32 1
  %394 = load i32, i32* %y829, align 4, !tbaa !71
  %conv830 = sext i32 %394 to i64
  %395 = load i32, i32* %dw621, align 4, !tbaa !30
  %conv831 = sext i32 %395 to i64
  %mul832 = mul nsw i64 %conv830, %conv831
  %396 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Height833 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %396, i32 0, i32 10
  %397 = load i32, i32* %Height833, align 4, !tbaa !37
  %conv834 = sext i32 %397 to i64
  %div835 = sdiv i64 %mul832, %conv834
  %conv836 = trunc i64 %div835 to i32
  %cmp837 = icmp slt i32 %conv836, 0
  br i1 %cmp837, label %land.lhs.true.839, label %cond.false.865

land.lhs.true.839:                                ; preds = %cond.end.826
  %398 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect840 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %398, i32 0, i32 22
  %y841 = getelementptr inbounds %struct.r_, %struct.r_* %rect840, i32 0, i32 1
  %399 = load i32, i32* %y841, align 4, !tbaa !71
  %conv842 = sext i32 %399 to i64
  %400 = load i32, i32* %dw621, align 4, !tbaa !30
  %conv843 = sext i32 %400 to i64
  %mul844 = mul nsw i64 %conv842, %conv843
  %401 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Height845 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %401, i32 0, i32 10
  %402 = load i32, i32* %Height845, align 4, !tbaa !37
  %conv846 = sext i32 %402 to i64
  %div847 = sdiv i64 %mul844, %conv846
  %conv848 = trunc i64 %div847 to i32
  %conv849 = sext i32 %conv848 to i64
  %and850 = and i64 %conv849, 255
  %cmp851 = icmp eq i64 %and850, 128
  br i1 %cmp851, label %cond.true.853, label %cond.false.865

cond.true.853:                                    ; preds = %land.lhs.true.839
  %403 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect854 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %403, i32 0, i32 22
  %y855 = getelementptr inbounds %struct.r_, %struct.r_* %rect854, i32 0, i32 1
  %404 = load i32, i32* %y855, align 4, !tbaa !71
  %conv856 = sext i32 %404 to i64
  %405 = load i32, i32* %dw621, align 4, !tbaa !30
  %conv857 = sext i32 %405 to i64
  %mul858 = mul nsw i64 %conv856, %conv857
  %406 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Height859 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %406, i32 0, i32 10
  %407 = load i32, i32* %Height859, align 4, !tbaa !37
  %conv860 = sext i32 %407 to i64
  %div861 = sdiv i64 %mul858, %conv860
  %conv862 = trunc i64 %div861 to i32
  %shr863 = ashr i32 %conv862, 8
  %add864 = add nsw i32 %shr863, 1
  br label %cond.end.879

cond.false.865:                                   ; preds = %land.lhs.true.839, %cond.end.826
  %408 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect866 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %408, i32 0, i32 22
  %y867 = getelementptr inbounds %struct.r_, %struct.r_* %rect866, i32 0, i32 1
  %409 = load i32, i32* %y867, align 4, !tbaa !71
  %conv868 = sext i32 %409 to i64
  %410 = load i32, i32* %dw621, align 4, !tbaa !30
  %conv869 = sext i32 %410 to i64
  %mul870 = mul nsw i64 %conv868, %conv869
  %411 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Height871 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %411, i32 0, i32 10
  %412 = load i32, i32* %Height871, align 4, !tbaa !37
  %conv872 = sext i32 %412 to i64
  %div873 = sdiv i64 %mul870, %conv872
  %conv874 = trunc i64 %div873 to i32
  %conv875 = sext i32 %conv874 to i64
  %add876 = add nsw i64 %conv875, 127
  %shr877 = ashr i64 %add876, 8
  %conv878 = trunc i64 %shr877 to i32
  br label %cond.end.879

cond.end.879:                                     ; preds = %cond.false.865, %cond.true.853
  %cond880 = phi i32 [ %add864, %cond.true.853 ], [ %conv878, %cond.false.865 ]
  %sub881 = sub nsw i32 %cond827, %cond880
  %HeightOut882 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 13
  store i32 %sub881, i32* %HeightOut882, align 4, !tbaa !78
  %413 = load i32, i32* %dh632, align 4, !tbaa !30
  %conv883 = sext i32 %413 to i64
  %add884 = add nsw i64 %conv883, 127
  %shr885 = ashr i64 %add884, 8
  %conv886 = trunc i64 %shr885 to i32
  %EntireWidthOut887 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 18
  store i32 %conv886, i32* %EntireWidthOut887, align 4, !tbaa !79
  %414 = load i32, i32* %dw621, align 4, !tbaa !30
  %conv888 = sext i32 %414 to i64
  %add889 = add nsw i64 %conv888, 127
  %shr890 = ashr i64 %add889, 8
  %conv891 = trunc i64 %shr890 to i32
  %EntireHeightOut892 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 19
  store i32 %conv891, i32* %EntireHeightOut892, align 4, !tbaa !80
  %415 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect893 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %415, i32 0, i32 23
  %x894 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %rrect893, i32 0, i32 0
  %416 = load i32, i32* %x894, align 4, !tbaa !67
  %417 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect895 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %417, i32 0, i32 23
  %w896 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %rrect895, i32 0, i32 2
  %418 = load i32, i32* %w896, align 4, !tbaa !63
  %add897 = add nsw i32 %416, %418
  %conv898 = sext i32 %add897 to i64
  %419 = load i32, i32* %dh632, align 4, !tbaa !30
  %conv899 = sext i32 %419 to i64
  %mul900 = mul nsw i64 %conv898, %conv899
  %420 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Width901 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %420, i32 0, i32 9
  %421 = load i32, i32* %Width901, align 4, !tbaa !36
  %conv902 = sext i32 %421 to i64
  %div903 = sdiv i64 %mul900, %conv902
  %conv904 = trunc i64 %div903 to i32
  %cmp905 = icmp slt i32 %conv904, 0
  br i1 %cmp905, label %land.lhs.true.907, label %cond.false.939

land.lhs.true.907:                                ; preds = %cond.end.879
  %422 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect908 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %422, i32 0, i32 23
  %x909 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %rrect908, i32 0, i32 0
  %423 = load i32, i32* %x909, align 4, !tbaa !67
  %424 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect910 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %424, i32 0, i32 23
  %w911 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %rrect910, i32 0, i32 2
  %425 = load i32, i32* %w911, align 4, !tbaa !63
  %add912 = add nsw i32 %423, %425
  %conv913 = sext i32 %add912 to i64
  %426 = load i32, i32* %dh632, align 4, !tbaa !30
  %conv914 = sext i32 %426 to i64
  %mul915 = mul nsw i64 %conv913, %conv914
  %427 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Width916 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %427, i32 0, i32 9
  %428 = load i32, i32* %Width916, align 4, !tbaa !36
  %conv917 = sext i32 %428 to i64
  %div918 = sdiv i64 %mul915, %conv917
  %conv919 = trunc i64 %div918 to i32
  %conv920 = sext i32 %conv919 to i64
  %and921 = and i64 %conv920, 255
  %cmp922 = icmp eq i64 %and921, 128
  br i1 %cmp922, label %cond.true.924, label %cond.false.939

cond.true.924:                                    ; preds = %land.lhs.true.907
  %429 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect925 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %429, i32 0, i32 23
  %x926 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %rrect925, i32 0, i32 0
  %430 = load i32, i32* %x926, align 4, !tbaa !67
  %431 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect927 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %431, i32 0, i32 23
  %w928 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %rrect927, i32 0, i32 2
  %432 = load i32, i32* %w928, align 4, !tbaa !63
  %add929 = add nsw i32 %430, %432
  %conv930 = sext i32 %add929 to i64
  %433 = load i32, i32* %dh632, align 4, !tbaa !30
  %conv931 = sext i32 %433 to i64
  %mul932 = mul nsw i64 %conv930, %conv931
  %434 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Width933 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %434, i32 0, i32 9
  %435 = load i32, i32* %Width933, align 4, !tbaa !36
  %conv934 = sext i32 %435 to i64
  %div935 = sdiv i64 %mul932, %conv934
  %conv936 = trunc i64 %div935 to i32
  %shr937 = ashr i32 %conv936, 8
  %add938 = add nsw i32 %shr937, 1
  br label %cond.end.956

cond.false.939:                                   ; preds = %land.lhs.true.907, %cond.end.879
  %436 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect940 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %436, i32 0, i32 23
  %x941 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %rrect940, i32 0, i32 0
  %437 = load i32, i32* %x941, align 4, !tbaa !67
  %438 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect942 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %438, i32 0, i32 23
  %w943 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %rrect942, i32 0, i32 2
  %439 = load i32, i32* %w943, align 4, !tbaa !63
  %add944 = add nsw i32 %437, %439
  %conv945 = sext i32 %add944 to i64
  %440 = load i32, i32* %dh632, align 4, !tbaa !30
  %conv946 = sext i32 %440 to i64
  %mul947 = mul nsw i64 %conv945, %conv946
  %441 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Width948 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %441, i32 0, i32 9
  %442 = load i32, i32* %Width948, align 4, !tbaa !36
  %conv949 = sext i32 %442 to i64
  %div950 = sdiv i64 %mul947, %conv949
  %conv951 = trunc i64 %div950 to i32
  %conv952 = sext i32 %conv951 to i64
  %add953 = add nsw i64 %conv952, 127
  %shr954 = ashr i64 %add953, 8
  %conv955 = trunc i64 %shr954 to i32
  br label %cond.end.956

cond.end.956:                                     ; preds = %cond.false.939, %cond.true.924
  %cond957 = phi i32 [ %add938, %cond.true.924 ], [ %conv955, %cond.false.939 ]
  %443 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect958 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %443, i32 0, i32 23
  %x959 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %rrect958, i32 0, i32 0
  %444 = load i32, i32* %x959, align 4, !tbaa !67
  %conv960 = sext i32 %444 to i64
  %445 = load i32, i32* %dh632, align 4, !tbaa !30
  %conv961 = sext i32 %445 to i64
  %mul962 = mul nsw i64 %conv960, %conv961
  %446 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Width963 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %446, i32 0, i32 9
  %447 = load i32, i32* %Width963, align 4, !tbaa !36
  %conv964 = sext i32 %447 to i64
  %div965 = sdiv i64 %mul962, %conv964
  %conv966 = trunc i64 %div965 to i32
  %cmp967 = icmp slt i32 %conv966, 0
  br i1 %cmp967, label %land.lhs.true.969, label %cond.false.995

land.lhs.true.969:                                ; preds = %cond.end.956
  %448 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect970 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %448, i32 0, i32 23
  %x971 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %rrect970, i32 0, i32 0
  %449 = load i32, i32* %x971, align 4, !tbaa !67
  %conv972 = sext i32 %449 to i64
  %450 = load i32, i32* %dh632, align 4, !tbaa !30
  %conv973 = sext i32 %450 to i64
  %mul974 = mul nsw i64 %conv972, %conv973
  %451 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Width975 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %451, i32 0, i32 9
  %452 = load i32, i32* %Width975, align 4, !tbaa !36
  %conv976 = sext i32 %452 to i64
  %div977 = sdiv i64 %mul974, %conv976
  %conv978 = trunc i64 %div977 to i32
  %conv979 = sext i32 %conv978 to i64
  %and980 = and i64 %conv979, 255
  %cmp981 = icmp eq i64 %and980, 128
  br i1 %cmp981, label %cond.true.983, label %cond.false.995

cond.true.983:                                    ; preds = %land.lhs.true.969
  %453 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect984 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %453, i32 0, i32 23
  %x985 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %rrect984, i32 0, i32 0
  %454 = load i32, i32* %x985, align 4, !tbaa !67
  %conv986 = sext i32 %454 to i64
  %455 = load i32, i32* %dh632, align 4, !tbaa !30
  %conv987 = sext i32 %455 to i64
  %mul988 = mul nsw i64 %conv986, %conv987
  %456 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Width989 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %456, i32 0, i32 9
  %457 = load i32, i32* %Width989, align 4, !tbaa !36
  %conv990 = sext i32 %457 to i64
  %div991 = sdiv i64 %mul988, %conv990
  %conv992 = trunc i64 %div991 to i32
  %shr993 = ashr i32 %conv992, 8
  %add994 = add nsw i32 %shr993, 1
  br label %cond.end.1009

cond.false.995:                                   ; preds = %land.lhs.true.969, %cond.end.956
  %458 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect996 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %458, i32 0, i32 23
  %x997 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %rrect996, i32 0, i32 0
  %459 = load i32, i32* %x997, align 4, !tbaa !67
  %conv998 = sext i32 %459 to i64
  %460 = load i32, i32* %dh632, align 4, !tbaa !30
  %conv999 = sext i32 %460 to i64
  %mul1000 = mul nsw i64 %conv998, %conv999
  %461 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Width1001 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %461, i32 0, i32 9
  %462 = load i32, i32* %Width1001, align 4, !tbaa !36
  %conv1002 = sext i32 %462 to i64
  %div1003 = sdiv i64 %mul1000, %conv1002
  %conv1004 = trunc i64 %div1003 to i32
  %conv1005 = sext i32 %conv1004 to i64
  %add1006 = add nsw i64 %conv1005, 127
  %shr1007 = ashr i64 %add1006, 8
  %conv1008 = trunc i64 %shr1007 to i32
  br label %cond.end.1009

cond.end.1009:                                    ; preds = %cond.false.995, %cond.true.983
  %cond1010 = phi i32 [ %add994, %cond.true.983 ], [ %conv1008, %cond.false.995 ]
  %sub1011 = sub nsw i32 %cond957, %cond1010
  %PatchWidthOut1012 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 4
  store i32 %sub1011, i32* %PatchWidthOut1012, align 4, !tbaa !81
  %463 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect1013 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %463, i32 0, i32 23
  %y1014 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %rrect1013, i32 0, i32 1
  %464 = load i32, i32* %y1014, align 4, !tbaa !70
  %465 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect1015 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %465, i32 0, i32 23
  %h1016 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %rrect1015, i32 0, i32 3
  %466 = load i32, i32* %h1016, align 4, !tbaa !65
  %add1017 = add nsw i32 %464, %466
  %conv1018 = sext i32 %add1017 to i64
  %467 = load i32, i32* %dw621, align 4, !tbaa !30
  %conv1019 = sext i32 %467 to i64
  %mul1020 = mul nsw i64 %conv1018, %conv1019
  %468 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Height1021 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %468, i32 0, i32 10
  %469 = load i32, i32* %Height1021, align 4, !tbaa !37
  %conv1022 = sext i32 %469 to i64
  %div1023 = sdiv i64 %mul1020, %conv1022
  %conv1024 = trunc i64 %div1023 to i32
  %cmp1025 = icmp slt i32 %conv1024, 0
  br i1 %cmp1025, label %land.lhs.true.1027, label %cond.false.1059

land.lhs.true.1027:                               ; preds = %cond.end.1009
  %470 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect1028 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %470, i32 0, i32 23
  %y1029 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %rrect1028, i32 0, i32 1
  %471 = load i32, i32* %y1029, align 4, !tbaa !70
  %472 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect1030 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %472, i32 0, i32 23
  %h1031 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %rrect1030, i32 0, i32 3
  %473 = load i32, i32* %h1031, align 4, !tbaa !65
  %add1032 = add nsw i32 %471, %473
  %conv1033 = sext i32 %add1032 to i64
  %474 = load i32, i32* %dw621, align 4, !tbaa !30
  %conv1034 = sext i32 %474 to i64
  %mul1035 = mul nsw i64 %conv1033, %conv1034
  %475 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Height1036 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %475, i32 0, i32 10
  %476 = load i32, i32* %Height1036, align 4, !tbaa !37
  %conv1037 = sext i32 %476 to i64
  %div1038 = sdiv i64 %mul1035, %conv1037
  %conv1039 = trunc i64 %div1038 to i32
  %conv1040 = sext i32 %conv1039 to i64
  %and1041 = and i64 %conv1040, 255
  %cmp1042 = icmp eq i64 %and1041, 128
  br i1 %cmp1042, label %cond.true.1044, label %cond.false.1059

cond.true.1044:                                   ; preds = %land.lhs.true.1027
  %477 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect1045 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %477, i32 0, i32 23
  %y1046 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %rrect1045, i32 0, i32 1
  %478 = load i32, i32* %y1046, align 4, !tbaa !70
  %479 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect1047 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %479, i32 0, i32 23
  %h1048 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %rrect1047, i32 0, i32 3
  %480 = load i32, i32* %h1048, align 4, !tbaa !65
  %add1049 = add nsw i32 %478, %480
  %conv1050 = sext i32 %add1049 to i64
  %481 = load i32, i32* %dw621, align 4, !tbaa !30
  %conv1051 = sext i32 %481 to i64
  %mul1052 = mul nsw i64 %conv1050, %conv1051
  %482 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Height1053 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %482, i32 0, i32 10
  %483 = load i32, i32* %Height1053, align 4, !tbaa !37
  %conv1054 = sext i32 %483 to i64
  %div1055 = sdiv i64 %mul1052, %conv1054
  %conv1056 = trunc i64 %div1055 to i32
  %shr1057 = ashr i32 %conv1056, 8
  %add1058 = add nsw i32 %shr1057, 1
  br label %cond.end.1076

cond.false.1059:                                  ; preds = %land.lhs.true.1027, %cond.end.1009
  %484 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect1060 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %484, i32 0, i32 23
  %y1061 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %rrect1060, i32 0, i32 1
  %485 = load i32, i32* %y1061, align 4, !tbaa !70
  %486 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect1062 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %486, i32 0, i32 23
  %h1063 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %rrect1062, i32 0, i32 3
  %487 = load i32, i32* %h1063, align 4, !tbaa !65
  %add1064 = add nsw i32 %485, %487
  %conv1065 = sext i32 %add1064 to i64
  %488 = load i32, i32* %dw621, align 4, !tbaa !30
  %conv1066 = sext i32 %488 to i64
  %mul1067 = mul nsw i64 %conv1065, %conv1066
  %489 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Height1068 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %489, i32 0, i32 10
  %490 = load i32, i32* %Height1068, align 4, !tbaa !37
  %conv1069 = sext i32 %490 to i64
  %div1070 = sdiv i64 %mul1067, %conv1069
  %conv1071 = trunc i64 %div1070 to i32
  %conv1072 = sext i32 %conv1071 to i64
  %add1073 = add nsw i64 %conv1072, 127
  %shr1074 = ashr i64 %add1073, 8
  %conv1075 = trunc i64 %shr1074 to i32
  br label %cond.end.1076

cond.end.1076:                                    ; preds = %cond.false.1059, %cond.true.1044
  %cond1077 = phi i32 [ %add1058, %cond.true.1044 ], [ %conv1075, %cond.false.1059 ]
  %491 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect1078 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %491, i32 0, i32 23
  %y1079 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %rrect1078, i32 0, i32 1
  %492 = load i32, i32* %y1079, align 4, !tbaa !70
  %conv1080 = sext i32 %492 to i64
  %493 = load i32, i32* %dw621, align 4, !tbaa !30
  %conv1081 = sext i32 %493 to i64
  %mul1082 = mul nsw i64 %conv1080, %conv1081
  %494 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Height1083 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %494, i32 0, i32 10
  %495 = load i32, i32* %Height1083, align 4, !tbaa !37
  %conv1084 = sext i32 %495 to i64
  %div1085 = sdiv i64 %mul1082, %conv1084
  %conv1086 = trunc i64 %div1085 to i32
  %cmp1087 = icmp slt i32 %conv1086, 0
  br i1 %cmp1087, label %land.lhs.true.1089, label %cond.false.1115

land.lhs.true.1089:                               ; preds = %cond.end.1076
  %496 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect1090 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %496, i32 0, i32 23
  %y1091 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %rrect1090, i32 0, i32 1
  %497 = load i32, i32* %y1091, align 4, !tbaa !70
  %conv1092 = sext i32 %497 to i64
  %498 = load i32, i32* %dw621, align 4, !tbaa !30
  %conv1093 = sext i32 %498 to i64
  %mul1094 = mul nsw i64 %conv1092, %conv1093
  %499 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Height1095 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %499, i32 0, i32 10
  %500 = load i32, i32* %Height1095, align 4, !tbaa !37
  %conv1096 = sext i32 %500 to i64
  %div1097 = sdiv i64 %mul1094, %conv1096
  %conv1098 = trunc i64 %div1097 to i32
  %conv1099 = sext i32 %conv1098 to i64
  %and1100 = and i64 %conv1099, 255
  %cmp1101 = icmp eq i64 %and1100, 128
  br i1 %cmp1101, label %cond.true.1103, label %cond.false.1115

cond.true.1103:                                   ; preds = %land.lhs.true.1089
  %501 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect1104 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %501, i32 0, i32 23
  %y1105 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %rrect1104, i32 0, i32 1
  %502 = load i32, i32* %y1105, align 4, !tbaa !70
  %conv1106 = sext i32 %502 to i64
  %503 = load i32, i32* %dw621, align 4, !tbaa !30
  %conv1107 = sext i32 %503 to i64
  %mul1108 = mul nsw i64 %conv1106, %conv1107
  %504 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Height1109 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %504, i32 0, i32 10
  %505 = load i32, i32* %Height1109, align 4, !tbaa !37
  %conv1110 = sext i32 %505 to i64
  %div1111 = sdiv i64 %mul1108, %conv1110
  %conv1112 = trunc i64 %div1111 to i32
  %shr1113 = ashr i32 %conv1112, 8
  %add1114 = add nsw i32 %shr1113, 1
  br label %cond.end.1129

cond.false.1115:                                  ; preds = %land.lhs.true.1089, %cond.end.1076
  %506 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect1116 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %506, i32 0, i32 23
  %y1117 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %rrect1116, i32 0, i32 1
  %507 = load i32, i32* %y1117, align 4, !tbaa !70
  %conv1118 = sext i32 %507 to i64
  %508 = load i32, i32* %dw621, align 4, !tbaa !30
  %conv1119 = sext i32 %508 to i64
  %mul1120 = mul nsw i64 %conv1118, %conv1119
  %509 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Height1121 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %509, i32 0, i32 10
  %510 = load i32, i32* %Height1121, align 4, !tbaa !37
  %conv1122 = sext i32 %510 to i64
  %div1123 = sdiv i64 %mul1120, %conv1122
  %conv1124 = trunc i64 %div1123 to i32
  %conv1125 = sext i32 %conv1124 to i64
  %add1126 = add nsw i64 %conv1125, 127
  %shr1127 = ashr i64 %add1126, 8
  %conv1128 = trunc i64 %shr1127 to i32
  br label %cond.end.1129

cond.end.1129:                                    ; preds = %cond.false.1115, %cond.true.1103
  %cond1130 = phi i32 [ %add1114, %cond.true.1103 ], [ %conv1128, %cond.false.1115 ]
  %sub1131 = sub nsw i32 %cond1077, %cond1130
  %PatchHeightOut1132 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 5
  store i32 %sub1131, i32* %PatchHeightOut1132, align 4, !tbaa !82
  %LeftMarginIn1133 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 21
  %511 = load i32, i32* %LeftMarginIn1133, align 4, !tbaa !69
  %conv1134 = sext i32 %511 to i64
  %512 = load i32, i32* %dh632, align 4, !tbaa !30
  %conv1135 = sext i32 %512 to i64
  %mul1136 = mul nsw i64 %conv1134, %conv1135
  %513 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Width1137 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %513, i32 0, i32 9
  %514 = load i32, i32* %Width1137, align 4, !tbaa !36
  %conv1138 = sext i32 %514 to i64
  %div1139 = sdiv i64 %mul1136, %conv1138
  %conv1140 = trunc i64 %div1139 to i32
  %cmp1141 = icmp slt i32 %conv1140, 0
  br i1 %cmp1141, label %land.lhs.true.1143, label %cond.false.1167

land.lhs.true.1143:                               ; preds = %cond.end.1129
  %LeftMarginIn1144 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 21
  %515 = load i32, i32* %LeftMarginIn1144, align 4, !tbaa !69
  %conv1145 = sext i32 %515 to i64
  %516 = load i32, i32* %dh632, align 4, !tbaa !30
  %conv1146 = sext i32 %516 to i64
  %mul1147 = mul nsw i64 %conv1145, %conv1146
  %517 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Width1148 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %517, i32 0, i32 9
  %518 = load i32, i32* %Width1148, align 4, !tbaa !36
  %conv1149 = sext i32 %518 to i64
  %div1150 = sdiv i64 %mul1147, %conv1149
  %conv1151 = trunc i64 %div1150 to i32
  %conv1152 = sext i32 %conv1151 to i64
  %and1153 = and i64 %conv1152, 255
  %cmp1154 = icmp eq i64 %and1153, 128
  br i1 %cmp1154, label %cond.true.1156, label %cond.false.1167

cond.true.1156:                                   ; preds = %land.lhs.true.1143
  %LeftMarginIn1157 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 21
  %519 = load i32, i32* %LeftMarginIn1157, align 4, !tbaa !69
  %conv1158 = sext i32 %519 to i64
  %520 = load i32, i32* %dh632, align 4, !tbaa !30
  %conv1159 = sext i32 %520 to i64
  %mul1160 = mul nsw i64 %conv1158, %conv1159
  %521 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Width1161 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %521, i32 0, i32 9
  %522 = load i32, i32* %Width1161, align 4, !tbaa !36
  %conv1162 = sext i32 %522 to i64
  %div1163 = sdiv i64 %mul1160, %conv1162
  %conv1164 = trunc i64 %div1163 to i32
  %shr1165 = ashr i32 %conv1164, 8
  %add1166 = add nsw i32 %shr1165, 1
  br label %cond.end.1180

cond.false.1167:                                  ; preds = %land.lhs.true.1143, %cond.end.1129
  %LeftMarginIn1168 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 21
  %523 = load i32, i32* %LeftMarginIn1168, align 4, !tbaa !69
  %conv1169 = sext i32 %523 to i64
  %524 = load i32, i32* %dh632, align 4, !tbaa !30
  %conv1170 = sext i32 %524 to i64
  %mul1171 = mul nsw i64 %conv1169, %conv1170
  %525 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Width1172 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %525, i32 0, i32 9
  %526 = load i32, i32* %Width1172, align 4, !tbaa !36
  %conv1173 = sext i32 %526 to i64
  %div1174 = sdiv i64 %mul1171, %conv1173
  %conv1175 = trunc i64 %div1174 to i32
  %conv1176 = sext i32 %conv1175 to i64
  %add1177 = add nsw i64 %conv1176, 127
  %shr1178 = ashr i64 %add1177, 8
  %conv1179 = trunc i64 %shr1178 to i32
  br label %cond.end.1180

cond.end.1180:                                    ; preds = %cond.false.1167, %cond.true.1156
  %cond1181 = phi i32 [ %add1166, %cond.true.1156 ], [ %conv1179, %cond.false.1167 ]
  %LeftMarginOut1182 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 22
  store i32 %cond1181, i32* %LeftMarginOut1182, align 4, !tbaa !83
  %527 = bitcast i32* %dh632 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %527) #1
  %528 = bitcast i32* %dw621 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %528) #1
  br label %if.end.1183

if.end.1183:                                      ; preds = %cond.end.1180, %cond.end.618
  %PatchWidthOut1184 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 4
  %529 = load i32, i32* %PatchWidthOut1184, align 4, !tbaa !81
  %cmp1185 = icmp slt i32 %529, 0
  br i1 %cmp1185, label %cond.true.1187, label %cond.false.1190

cond.true.1187:                                   ; preds = %if.end.1183
  %PatchWidthOut1188 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 4
  %530 = load i32, i32* %PatchWidthOut1188, align 4, !tbaa !81
  %sub1189 = sub nsw i32 0, %530
  br label %cond.end.1192

cond.false.1190:                                  ; preds = %if.end.1183
  %PatchWidthOut1191 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 4
  %531 = load i32, i32* %PatchWidthOut1191, align 4, !tbaa !81
  br label %cond.end.1192

cond.end.1192:                                    ; preds = %cond.false.1190, %cond.true.1187
  %cond1193 = phi i32 [ %sub1189, %cond.true.1187 ], [ %531, %cond.false.1190 ]
  %PatchWidthOut1194 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 4
  store i32 %cond1193, i32* %PatchWidthOut1194, align 4, !tbaa !81
  %PatchHeightOut1195 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 5
  %532 = load i32, i32* %PatchHeightOut1195, align 4, !tbaa !82
  %cmp1196 = icmp slt i32 %532, 0
  br i1 %cmp1196, label %cond.true.1198, label %cond.false.1201

cond.true.1198:                                   ; preds = %cond.end.1192
  %PatchHeightOut1199 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 5
  %533 = load i32, i32* %PatchHeightOut1199, align 4, !tbaa !82
  %sub1200 = sub nsw i32 0, %533
  br label %cond.end.1203

cond.false.1201:                                  ; preds = %cond.end.1192
  %PatchHeightOut1202 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 5
  %534 = load i32, i32* %PatchHeightOut1202, align 4, !tbaa !82
  br label %cond.end.1203

cond.end.1203:                                    ; preds = %cond.false.1201, %cond.true.1198
  %cond1204 = phi i32 [ %sub1200, %cond.true.1198 ], [ %534, %cond.false.1201 ]
  %PatchHeightOut1205 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 5
  store i32 %cond1204, i32* %PatchHeightOut1205, align 4, !tbaa !82
  %LeftMarginOut1206 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 22
  %535 = load i32, i32* %LeftMarginOut1206, align 4, !tbaa !83
  %PatchWidthOut1207 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 4
  %536 = load i32, i32* %PatchWidthOut1207, align 4, !tbaa !81
  %add1208 = add nsw i32 %535, %536
  %WidthOut1209 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 12
  %537 = load i32, i32* %WidthOut1209, align 4, !tbaa !76
  %cmp1210 = icmp sge i32 %add1208, %537
  br i1 %cmp1210, label %if.then.1212, label %if.end.1226

if.then.1212:                                     ; preds = %cond.end.1203
  %WidthOut1213 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 12
  %538 = load i32, i32* %WidthOut1213, align 4, !tbaa !76
  %PatchWidthOut1214 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 4
  %539 = load i32, i32* %PatchWidthOut1214, align 4, !tbaa !81
  %sub1215 = sub nsw i32 %538, %539
  %LeftMarginOut1216 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 22
  store i32 %sub1215, i32* %LeftMarginOut1216, align 4, !tbaa !83
  %LeftMarginOut1217 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 22
  %540 = load i32, i32* %LeftMarginOut1217, align 4, !tbaa !83
  %cmp1218 = icmp slt i32 %540, 0
  br i1 %cmp1218, label %if.then.1220, label %if.end.1225

if.then.1220:                                     ; preds = %if.then.1212
  %LeftMarginOut1221 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 22
  %541 = load i32, i32* %LeftMarginOut1221, align 4, !tbaa !83
  %WidthOut1222 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 12
  %542 = load i32, i32* %WidthOut1222, align 4, !tbaa !76
  %add1223 = add nsw i32 %542, %541
  store i32 %add1223, i32* %WidthOut1222, align 4, !tbaa !76
  %LeftMarginOut1224 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 22
  store i32 0, i32* %LeftMarginOut1224, align 4, !tbaa !83
  br label %if.end.1225

if.end.1225:                                      ; preds = %if.then.1220, %if.then.1212
  br label %if.end.1226

if.end.1226:                                      ; preds = %if.end.1225, %cond.end.1203
  %543 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect1227 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %543, i32 0, i32 22
  %y1228 = getelementptr inbounds %struct.r_, %struct.r_* %rect1227, i32 0, i32 1
  %544 = load i32, i32* %y1228, align 4, !tbaa !71
  %src_y_offset = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 15
  store i32 %544, i32* %src_y_offset, align 4, !tbaa !84
  %545 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Width1229 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %545, i32 0, i32 9
  %546 = load i32, i32* %Width1229, align 4, !tbaa !36
  %EntireWidthIn = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 16
  store i32 %546, i32* %EntireWidthIn, align 4, !tbaa !85
  %547 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Height1230 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %547, i32 0, i32 10
  %548 = load i32, i32* %Height1230, align 4, !tbaa !37
  %EntireHeightIn = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 17
  store i32 %548, i32* %EntireHeightIn, align 4, !tbaa !86
  %549 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect1231 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %549, i32 0, i32 22
  %w1232 = getelementptr inbounds %struct.r_, %struct.r_* %rect1231, i32 0, i32 2
  %550 = load i32, i32* %w1232, align 4, !tbaa !75
  %WidthIn = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 10
  store i32 %550, i32* %WidthIn, align 4, !tbaa !87
  %551 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect1233 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %551, i32 0, i32 22
  %h1234 = getelementptr inbounds %struct.r_, %struct.r_* %rect1233, i32 0, i32 3
  %552 = load i32, i32* %h1234, align 4, !tbaa !77
  %HeightIn = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 11
  store i32 %552, i32* %HeightIn, align 4, !tbaa !88
  %WidthOut1235 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 12
  %553 = load i32, i32* %WidthOut1235, align 4, !tbaa !76
  %cmp1236 = icmp slt i32 %553, 0
  br i1 %cmp1236, label %cond.true.1238, label %cond.false.1241

cond.true.1238:                                   ; preds = %if.end.1226
  %WidthOut1239 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 12
  %554 = load i32, i32* %WidthOut1239, align 4, !tbaa !76
  %sub1240 = sub nsw i32 0, %554
  br label %cond.end.1243

cond.false.1241:                                  ; preds = %if.end.1226
  %WidthOut1242 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 12
  %555 = load i32, i32* %WidthOut1242, align 4, !tbaa !76
  br label %cond.end.1243

cond.end.1243:                                    ; preds = %cond.false.1241, %cond.true.1238
  %cond1244 = phi i32 [ %sub1240, %cond.true.1238 ], [ %555, %cond.false.1241 ]
  %WidthOut1245 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 12
  store i32 %cond1244, i32* %WidthOut1245, align 4, !tbaa !76
  %HeightOut1246 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 13
  %556 = load i32, i32* %HeightOut1246, align 4, !tbaa !78
  %cmp1247 = icmp slt i32 %556, 0
  br i1 %cmp1247, label %cond.true.1249, label %cond.false.1252

cond.true.1249:                                   ; preds = %cond.end.1243
  %HeightOut1250 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 13
  %557 = load i32, i32* %HeightOut1250, align 4, !tbaa !78
  %sub1251 = sub nsw i32 0, %557
  br label %cond.end.1254

cond.false.1252:                                  ; preds = %cond.end.1243
  %HeightOut1253 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 13
  %558 = load i32, i32* %HeightOut1253, align 4, !tbaa !78
  br label %cond.end.1254

cond.end.1254:                                    ; preds = %cond.false.1252, %cond.true.1249
  %cond1255 = phi i32 [ %sub1251, %cond.true.1249 ], [ %558, %cond.false.1252 ]
  %HeightOut1256 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 13
  store i32 %cond1255, i32* %HeightOut1256, align 4, !tbaa !78
  %559 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %posture1257 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %559, i32 0, i32 37
  %560 = load i32, i32* %posture1257, align 4, !tbaa !33
  %cmp1258 = icmp eq i32 %560, 0
  br i1 %cmp1258, label %cond.true.1260, label %cond.false.1262

cond.true.1260:                                   ; preds = %cond.end.1254
  %561 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dst_width1261 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %561, i32 0, i32 25
  %562 = load i32, i32* %dst_width1261, align 4, !tbaa !73
  br label %cond.end.1264

cond.false.1262:                                  ; preds = %cond.end.1254
  %563 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dst_height1263 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %563, i32 0, i32 24
  %564 = load i32, i32* %dst_height1263, align 4, !tbaa !74
  br label %cond.end.1264

cond.end.1264:                                    ; preds = %cond.false.1262, %cond.true.1260
  %cond1265 = phi i32 [ %562, %cond.true.1260 ], [ %564, %cond.false.1262 ]
  %cmp1266 = icmp slt i32 %cond1265, 0
  br i1 %cmp1266, label %if.then.1268, label %if.end.1275

if.then.1268:                                     ; preds = %cond.end.1264
  %WidthOut1269 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 12
  %565 = load i32, i32* %WidthOut1269, align 4, !tbaa !76
  %LeftMarginOut1270 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 22
  %566 = load i32, i32* %LeftMarginOut1270, align 4, !tbaa !83
  %sub1271 = sub nsw i32 %565, %566
  %PatchWidthOut1272 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 4
  %567 = load i32, i32* %PatchWidthOut1272, align 4, !tbaa !81
  %sub1273 = sub nsw i32 %sub1271, %567
  %LeftMarginOut1274 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 22
  store i32 %sub1273, i32* %LeftMarginOut1274, align 4, !tbaa !83
  br label %if.end.1275

if.end.1275:                                      ; preds = %if.then.1268, %cond.end.1264
  %Active = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 24
  store i32 1, i32* %Active, align 4, !tbaa !89
  %EntireWidthOut1276 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 18
  %568 = load i32, i32* %EntireWidthOut1276, align 4, !tbaa !79
  %cmp1277 = icmp eq i32 %568, 0
  br i1 %cmp1277, label %if.then.1283, label %lor.lhs.false.1279

lor.lhs.false.1279:                               ; preds = %if.end.1275
  %EntireHeightOut1280 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 19
  %569 = load i32, i32* %EntireHeightOut1280, align 4, !tbaa !80
  %cmp1281 = icmp eq i32 %569, 0
  br i1 %cmp1281, label %if.then.1283, label %if.end.1285

if.then.1283:                                     ; preds = %lor.lhs.false.1279, %if.end.1275
  %570 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %interpolate1284 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %570, i32 0, i32 20
  store i8 0, i8* %interpolate1284, align 1, !tbaa !31
  store i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* null, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1753

if.end.1285:                                      ; preds = %lor.lhs.false.1279
  %571 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %type1286 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %571, i32 0, i32 0
  %572 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type1286, align 8, !tbaa !41
  %index1287 = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %572, i32 0, i32 0
  %573 = load i32, i32* %index1287, align 4, !tbaa !42
  %cmp1288 = icmp eq i32 %573, 10
  br i1 %cmp1288, label %if.then.1290, label %if.else.1296

if.then.1290:                                     ; preds = %if.end.1285
  %574 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %base_space1291 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %574, i32 0, i32 3
  %575 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space1291, align 8, !tbaa !44
  %type1292 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %575, i32 0, i32 0
  %576 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type1292, align 8, !tbaa !41
  %num_components1293 = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %576, i32 0, i32 4
  %577 = load i32 (%struct.gs_color_space_s*)*, i32 (%struct.gs_color_space_s*)** %num_components1293, align 8, !tbaa !90
  %578 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %base_space1294 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %578, i32 0, i32 3
  %579 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space1294, align 8, !tbaa !44
  %call1295 = call i32 %577(%struct.gs_color_space_s* %579) #4
  %spp_decode = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 0
  store i32 %call1295, i32* %spp_decode, align 4, !tbaa !91
  br label %if.end.1301

if.else.1296:                                     ; preds = %if.end.1285
  %580 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %type1297 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %580, i32 0, i32 0
  %581 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type1297, align 8, !tbaa !41
  %num_components1298 = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %581, i32 0, i32 4
  %582 = load i32 (%struct.gs_color_space_s*)*, i32 (%struct.gs_color_space_s*)** %num_components1298, align 8, !tbaa !90
  %583 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call1299 = call i32 %582(%struct.gs_color_space_s* %583) #4
  %spp_decode1300 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 0
  store i32 %call1299, i32* %spp_decode1300, align 4, !tbaa !91
  br label %if.end.1301

if.end.1301:                                      ; preds = %if.else.1296, %if.then.1290
  %HeightOut1302 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 13
  %584 = load i32, i32* %HeightOut1302, align 4, !tbaa !78
  %EntireHeightIn1303 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 17
  %585 = load i32, i32* %EntireHeightIn1303, align 4, !tbaa !86
  %cmp1304 = icmp sgt i32 %584, %585
  br i1 %cmp1304, label %land.lhs.true.1306, label %if.else.1309

land.lhs.true.1306:                               ; preds = %if.end.1301
  %586 = load i32, i32* %use_icc, align 4, !tbaa !30
  %tobool1307 = icmp ne i32 %586, 0
  br i1 %tobool1307, label %if.then.1308, label %if.else.1309

if.then.1308:                                     ; preds = %land.lhs.true.1306
  %early_cm = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 20
  store i32 1, i32* %early_cm, align 4, !tbaa !92
  %587 = load i32, i32* %num_des_comps, align 4, !tbaa !30
  %spp_interp = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 1
  store i32 %587, i32* %spp_interp, align 4, !tbaa !93
  br label %if.end.1313

if.else.1309:                                     ; preds = %land.lhs.true.1306, %if.end.1301
  %early_cm1310 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 20
  store i32 0, i32* %early_cm1310, align 4, !tbaa !92
  %spp_decode1311 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 0
  %588 = load i32, i32* %spp_decode1311, align 4, !tbaa !91
  %spp_interp1312 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 1
  store i32 %588, i32* %spp_interp1312, align 4, !tbaa !93
  br label %if.end.1313

if.end.1313:                                      ; preds = %if.else.1309, %if.then.1308
  %589 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %bps1314 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %589, i32 0, i32 11
  %590 = load i8, i8* %bps1314, align 1, !tbaa !45
  %conv1315 = zext i8 %590 to i32
  %cmp1316 = icmp sle i32 %conv1315, 8
  br i1 %cmp1316, label %if.then.1318, label %if.else.1356

if.then.1318:                                     ; preds = %if.end.1313
  %BitsPerComponentIn = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 6
  store i32 8, i32* %BitsPerComponentIn, align 4, !tbaa !94
  %MaxValueIn = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 7
  store i32 255, i32* %MaxValueIn, align 4, !tbaa !95
  %591 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %type1319 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %591, i32 0, i32 0
  %592 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type1319, align 8, !tbaa !41
  %index1320 = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %592, i32 0, i32 0
  %593 = load i32, i32* %index1320, align 4, !tbaa !42
  %cmp1321 = icmp eq i32 %593, 10
  br i1 %cmp1321, label %if.then.1323, label %if.else.1327

if.then.1323:                                     ; preds = %if.then.1318
  %WidthIn1324 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 10
  %594 = load i32, i32* %WidthIn1324, align 4, !tbaa !87
  %spp_decode1325 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 0
  %595 = load i32, i32* %spp_decode1325, align 4, !tbaa !91
  %mul1326 = mul nsw i32 %594, %595
  store i32 %mul1326, i32* %in_size, align 4, !tbaa !30
  br label %if.end.1355

if.else.1327:                                     ; preds = %if.then.1318
  %596 = bitcast i32* %reverse to i8*
  call void @llvm.lifetime.start(i64 4, i8* %596) #1
  %597 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %posture1328 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %597, i32 0, i32 37
  %598 = load i32, i32* %posture1328, align 4, !tbaa !33
  %cmp1329 = icmp eq i32 %598, 0
  br i1 %cmp1329, label %cond.true.1331, label %cond.false.1332

cond.true.1331:                                   ; preds = %if.else.1327
  %599 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %matrix = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %599, i32 0, i32 21
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %matrix, i32 0, i32 0
  %600 = load float, float* %xx, align 4, !tbaa !96
  br label %cond.end.1334

cond.false.1332:                                  ; preds = %if.else.1327
  %601 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %matrix1333 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %601, i32 0, i32 21
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %matrix1333, i32 0, i32 1
  %602 = load float, float* %xy, align 4, !tbaa !97
  br label %cond.end.1334

cond.end.1334:                                    ; preds = %cond.false.1332, %cond.true.1331
  %cond1335 = phi float [ %600, %cond.true.1331 ], [ %602, %cond.false.1332 ]
  %cmp1336 = fcmp olt float %cond1335, 0.000000e+00
  %conv1337 = zext i1 %cmp1336 to i32
  store i32 %conv1337, i32* %reverse, align 4, !tbaa !30
  %603 = load i32, i32* %reverse, align 4, !tbaa !30
  %tobool1338 = icmp ne i32 %603, 0
  br i1 %tobool1338, label %cond.true.1339, label %cond.false.1343

cond.true.1339:                                   ; preds = %cond.end.1334
  %WidthIn1340 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 10
  %604 = load i32, i32* %WidthIn1340, align 4, !tbaa !87
  %spp_decode1341 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 0
  %605 = load i32, i32* %spp_decode1341, align 4, !tbaa !91
  %mul1342 = mul nsw i32 %604, %605
  br label %cond.end.1344

cond.false.1343:                                  ; preds = %cond.end.1334
  br label %cond.end.1344

cond.end.1344:                                    ; preds = %cond.false.1343, %cond.true.1339
  %cond1345 = phi i32 [ %mul1342, %cond.true.1339 ], [ 0, %cond.false.1343 ]
  store i32 %cond1345, i32* %in_size, align 4, !tbaa !30
  %606 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %device_color = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %606, i32 0, i32 41
  %607 = load i8, i8* %device_color, align 1, !tbaa !98
  %tobool1346 = icmp ne i8 %607, 0
  br i1 %tobool1346, label %if.end.1354, label %land.lhs.true.1347

land.lhs.true.1347:                               ; preds = %cond.end.1344
  %608 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call1348 = call i32 @gs_color_space_is_CIE(%struct.gs_color_space_s* %608) #4
  %tobool1349 = icmp ne i32 %call1348, 0
  br i1 %tobool1349, label %if.end.1354, label %if.then.1350

if.then.1350:                                     ; preds = %land.lhs.true.1347
  %WidthIn1351 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 10
  %609 = load i32, i32* %WidthIn1351, align 4, !tbaa !87
  %spp_decode1352 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 0
  %610 = load i32, i32* %spp_decode1352, align 4, !tbaa !91
  %mul1353 = mul nsw i32 %609, %610
  store i32 %mul1353, i32* %in_size, align 4, !tbaa !30
  br label %if.end.1354

if.end.1354:                                      ; preds = %if.then.1350, %land.lhs.true.1347, %cond.end.1344
  %611 = bitcast i32* %reverse to i8*
  call void @llvm.lifetime.end(i64 4, i8* %611) #1
  br label %if.end.1355

if.end.1355:                                      ; preds = %if.end.1354, %if.then.1323
  br label %if.end.1373

if.else.1356:                                     ; preds = %if.end.1313
  %612 = load i32, i32* %use_icc, align 4, !tbaa !30
  %tobool1357 = icmp ne i32 %612, 0
  br i1 %tobool1357, label %if.then.1358, label %if.else.1361

if.then.1358:                                     ; preds = %if.else.1356
  %BitsPerComponentIn1359 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 6
  store i32 16, i32* %BitsPerComponentIn1359, align 4, !tbaa !94
  %MaxValueIn1360 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 7
  store i32 65535, i32* %MaxValueIn1360, align 4, !tbaa !95
  br label %if.end.1364

if.else.1361:                                     ; preds = %if.else.1356
  %BitsPerComponentIn1362 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 6
  store i32 16, i32* %BitsPerComponentIn1362, align 4, !tbaa !94
  %MaxValueIn1363 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 7
  store i32 32760, i32* %MaxValueIn1363, align 4, !tbaa !95
  br label %if.end.1364

if.end.1364:                                      ; preds = %if.else.1361, %if.then.1358
  %WidthIn1365 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 10
  %613 = load i32, i32* %WidthIn1365, align 4, !tbaa !87
  %spp_decode1366 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 0
  %614 = load i32, i32* %spp_decode1366, align 4, !tbaa !91
  %mul1367 = mul nsw i32 %613, %614
  %conv1368 = sext i32 %mul1367 to i64
  %mul1369 = mul i64 %conv1368, 2
  %add1370 = add i64 %mul1369, 7
  %and1371 = and i64 %add1370, -8
  %conv1372 = trunc i64 %and1371 to i32
  store i32 %conv1372, i32* %in_size, align 4, !tbaa !30
  br label %if.end.1373

if.end.1373:                                      ; preds = %if.end.1364, %if.end.1355
  store %struct.stream_template_s* @s_IScale_template, %struct.stream_template_s** %templat, align 8, !tbaa !1
  %615 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %type1374 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %615, i32 0, i32 0
  %616 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type1374, align 8, !tbaa !41
  %polarity = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %616, i32 0, i32 17
  %617 = load i32 (%struct.gs_color_space_s*)*, i32 (%struct.gs_color_space_s*)** %polarity, align 8, !tbaa !99
  %618 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call1375 = call i32 %617(%struct.gs_color_space_s* %618) #4
  store i32 %call1375, i32* %pol, align 4, !tbaa !100
  %WidthOut1376 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 12
  %619 = load i32, i32* %WidthOut1376, align 4, !tbaa !76
  %WidthIn1377 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 10
  %620 = load i32, i32* %WidthIn1377, align 4, !tbaa !87
  %cmp1378 = icmp slt i32 %619, %620
  br i1 %cmp1378, label %land.lhs.true.1380, label %if.else.1396

land.lhs.true.1380:                               ; preds = %if.end.1373
  %HeightOut1381 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 13
  %621 = load i32, i32* %HeightOut1381, align 4, !tbaa !78
  %HeightIn1382 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 11
  %622 = load i32, i32* %HeightIn1382, align 4, !tbaa !88
  %cmp1383 = icmp slt i32 %621, %622
  br i1 %cmp1383, label %land.lhs.true.1385, label %if.else.1396

land.lhs.true.1385:                               ; preds = %land.lhs.true.1380
  %623 = load i32, i32* %pol, align 4, !tbaa !100
  %cmp1386 = icmp ne i32 %623, -1
  br i1 %cmp1386, label %land.lhs.true.1388, label %if.else.1396

land.lhs.true.1388:                               ; preds = %land.lhs.true.1385
  %624 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev1389 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %624, i32 0, i32 2
  %625 = load %struct.gx_device_s*, %struct.gx_device_s** %dev1389, align 8, !tbaa !46
  %procs1390 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %625, i32 0, i32 42
  %dev_spec_op = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1390, i32 0, i32 65
  %626 = load i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)** %dev_spec_op, align 8, !tbaa !101
  %627 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev1391 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %627, i32 0, i32 2
  %628 = load %struct.gx_device_s*, %struct.gx_device_s** %dev1391, align 8, !tbaa !46
  %call1392 = call i32 %626(%struct.gx_device_s* %628, i32 14, i8* null, i32 0) #4
  %cmp1393 = icmp sgt i32 %call1392, 0
  br i1 %cmp1393, label %if.then.1395, label %if.else.1396

if.then.1395:                                     ; preds = %land.lhs.true.1388
  store %struct.stream_template_s* @s_ISpecialDownScale_template, %struct.stream_template_s** %templat, align 8, !tbaa !1
  br label %if.end.1419

if.else.1396:                                     ; preds = %land.lhs.true.1388, %land.lhs.true.1385, %land.lhs.true.1380, %if.end.1373
  %629 = bitcast i32* %threshold to i8*
  call void @llvm.lifetime.start(i64 4, i8* %629) #1
  %630 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev1397 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %630, i32 0, i32 2
  %631 = load %struct.gx_device_s*, %struct.gx_device_s** %dev1397, align 8, !tbaa !46
  %procs1398 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %631, i32 0, i32 42
  %dev_spec_op1399 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1398, i32 0, i32 65
  %632 = load i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)** %dev_spec_op1399, align 8, !tbaa !101
  %633 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev1400 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %633, i32 0, i32 2
  %634 = load %struct.gx_device_s*, %struct.gx_device_s** %dev1400, align 8, !tbaa !46
  %call1401 = call i32 %632(%struct.gx_device_s* %634, i32 13, i8* null, i32 0) #4
  store i32 %call1401, i32* %threshold, align 4, !tbaa !30
  %635 = load i32, i32* %threshold, align 4, !tbaa !30
  %cmp1402 = icmp sgt i32 %635, 0
  br i1 %cmp1402, label %land.lhs.true.1404, label %if.end.1418

land.lhs.true.1404:                               ; preds = %if.else.1396
  %WidthOut1405 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 12
  %636 = load i32, i32* %WidthOut1405, align 4, !tbaa !76
  %WidthIn1406 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 10
  %637 = load i32, i32* %WidthIn1406, align 4, !tbaa !87
  %638 = load i32, i32* %threshold, align 4, !tbaa !30
  %mul1407 = mul nsw i32 %637, %638
  %cmp1408 = icmp slt i32 %636, %mul1407
  br i1 %cmp1408, label %land.lhs.true.1410, label %if.end.1418

land.lhs.true.1410:                               ; preds = %land.lhs.true.1404
  %HeightOut1411 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 13
  %639 = load i32, i32* %HeightOut1411, align 4, !tbaa !78
  %HeightIn1412 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 11
  %640 = load i32, i32* %HeightIn1412, align 4, !tbaa !88
  %641 = load i32, i32* %threshold, align 4, !tbaa !30
  %mul1413 = mul nsw i32 %640, %641
  %cmp1414 = icmp slt i32 %639, %mul1413
  br i1 %cmp1414, label %if.then.1416, label %if.end.1418

if.then.1416:                                     ; preds = %land.lhs.true.1410
  %642 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %interpolate1417 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %642, i32 0, i32 20
  store i8 0, i8* %interpolate1417, align 1, !tbaa !31
  store i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* null, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.1418:                                      ; preds = %land.lhs.true.1410, %land.lhs.true.1404, %if.else.1396
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.1418, %if.then.1416
  %643 = bitcast i32* %threshold to i8*
  call void @llvm.lifetime.end(i64 4, i8* %643) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.1753 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.1419

if.end.1419:                                      ; preds = %cleanup.cont, %if.then.1395
  %644 = load i32, i32* %pol, align 4, !tbaa !100
  %cmp1420 = icmp eq i32 %644, 1
  %conv1421 = zext i1 %cmp1420 to i32
  %ColorPolarityAdditive = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 14
  store i32 %conv1421, i32* %ColorPolarityAdditive, align 4, !tbaa !102
  %645 = bitcast i32* %out_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %645) #1
  %WidthOut1422 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 12
  %646 = load i32, i32* %WidthOut1422, align 4, !tbaa !76
  %conv1423 = sext i32 %646 to i64
  %spp_interp1424 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 1
  %647 = load i32, i32* %spp_interp1424, align 4, !tbaa !93
  %BitsPerComponentOut1425 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 8
  %648 = load i32, i32* %BitsPerComponentOut1425, align 4, !tbaa !60
  %div1426 = sdiv i32 %648, 8
  %mul1427 = mul nsw i32 %647, %div1426
  %conv1428 = sext i32 %mul1427 to i64
  %cmp1429 = icmp ugt i64 %conv1428, 8
  br i1 %cmp1429, label %cond.true.1431, label %cond.false.1437

cond.true.1431:                                   ; preds = %if.end.1419
  %spp_interp1432 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 1
  %649 = load i32, i32* %spp_interp1432, align 4, !tbaa !93
  %BitsPerComponentOut1433 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %iss, i32 0, i32 8
  %650 = load i32, i32* %BitsPerComponentOut1433, align 4, !tbaa !60
  %div1434 = sdiv i32 %650, 8
  %mul1435 = mul nsw i32 %649, %div1434
  %conv1436 = sext i32 %mul1435 to i64
  br label %cond.end.1438

cond.false.1437:                                  ; preds = %if.end.1419
  br label %cond.end.1438

cond.end.1438:                                    ; preds = %cond.false.1437, %cond.true.1431
  %cond1439 = phi i64 [ %conv1436, %cond.true.1431 ], [ 8, %cond.false.1437 ]
  %mul1440 = mul i64 %conv1423, %cond1439
  %conv1441 = trunc i64 %mul1440 to i32
  store i32 %conv1441, i32* %out_size, align 4, !tbaa !30
  %651 = load i32, i32* %out_size, align 4, !tbaa !30
  %add1442 = add i32 %651, 8
  store i32 %add1442, i32* %out_size, align 4, !tbaa !30
  %652 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs1443 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %652, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs1443, i32 0, i32 7
  %653 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !103
  %654 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %655 = load i32, i32* %in_size, align 4, !tbaa !30
  %656 = load i32, i32* %out_size, align 4, !tbaa !30
  %add1444 = add i32 %655, %656
  %call1445 = call i8* %653(%struct.gs_memory_s* %654, i32 %add1444, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0)) #4
  store i8* %call1445, i8** %line, align 8, !tbaa !1
  %657 = bitcast i32* %out_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %657) #1
  %658 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %659 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !1
  %stype = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %659, i32 0, i32 0
  %660 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %stype, align 8, !tbaa !106
  %call1446 = call %struct.stream_state_s* @s_alloc_state(%struct.gs_memory_s* %658, %struct.gs_memory_struct_type_s* %660, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0)) #4
  %661 = bitcast %struct.stream_state_s* %call1446 to %struct.stream_image_scale_state_s*
  store %struct.stream_image_scale_state_s* %661, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %662 = load i8*, i8** %line, align 8, !tbaa !1
  %cmp1447 = icmp eq i8* %662, null
  br i1 %cmp1447, label %if.then.1458, label %lor.lhs.false.1449

lor.lhs.false.1449:                               ; preds = %cond.end.1438
  %663 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %cmp1450 = icmp eq %struct.stream_image_scale_state_s* %663, null
  br i1 %cmp1450, label %if.then.1458, label %lor.lhs.false.1452

lor.lhs.false.1452:                               ; preds = %lor.lhs.false.1449
  %664 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %664, i32 0, i32 5
  %665 = bitcast %struct.stream_image_scale_params_s* %params to i8*
  %666 = bitcast %struct.stream_image_scale_params_s* %iss to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %665, i8* %666, i64 100, i32 4, i1 false), !tbaa.struct !108
  %667 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !1
  %668 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %templat1453 = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %668, i32 0, i32 0
  store %struct.stream_template_s* %667, %struct.stream_template_s** %templat1453, align 8, !tbaa !109
  %669 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %templat1454 = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %669, i32 0, i32 0
  %670 = load %struct.stream_template_s*, %struct.stream_template_s** %templat1454, align 8, !tbaa !109
  %init = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %670, i32 0, i32 1
  %671 = load i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)** %init, align 8, !tbaa !111
  %672 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %673 = bitcast %struct.stream_image_scale_state_s* %672 to %struct.stream_state_s*
  %call1455 = call i32 %671(%struct.stream_state_s* %673) #4
  %cmp1456 = icmp slt i32 %call1455, 0
  br i1 %cmp1456, label %if.then.1458, label %if.end.1463

if.then.1458:                                     ; preds = %lor.lhs.false.1452, %lor.lhs.false.1449, %cond.end.1438
  %674 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs1459 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %674, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs1459, i32 0, i32 2
  %675 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !112
  %676 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %677 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %678 = bitcast %struct.stream_image_scale_state_s* %677 to i8*
  call void %675(%struct.gs_memory_s* %676, i8* %678, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0)) #4
  %679 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs1460 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %679, i32 0, i32 1
  %free_object1461 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs1460, i32 0, i32 2
  %680 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object1461, align 8, !tbaa !112
  %681 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %682 = load i8*, i8** %line, align 8, !tbaa !1
  call void %680(%struct.gs_memory_s* %681, i8* %682, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0)) #4
  %683 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %interpolate1462 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %683, i32 0, i32 20
  store i8 0, i8* %interpolate1462, align 1, !tbaa !31
  store i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* null, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1753

if.end.1463:                                      ; preds = %lor.lhs.false.1452
  %684 = load i8*, i8** %line, align 8, !tbaa !1
  %685 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line1464 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %685, i32 0, i32 34
  store i8* %684, i8** %line1464, align 8, !tbaa !113
  %686 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %687 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %scaler = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %687, i32 0, i32 50
  store %struct.stream_image_scale_state_s* %686, %struct.stream_image_scale_state_s** %scaler, align 8, !tbaa !114
  %688 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line_xy = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %688, i32 0, i32 56
  store i32 0, i32* %line_xy, align 4, !tbaa !115
  %689 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %posture1465 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %689, i32 0, i32 37
  %690 = load i32, i32* %posture1465, align 4, !tbaa !33
  %cmp1466 = icmp eq i32 %690, 0
  br i1 %cmp1466, label %if.then.1468, label %if.else.1568

if.then.1468:                                     ; preds = %if.end.1463
  %691 = bitcast %struct.gx_dda_fixed_s* %x0 to i8*
  call void @llvm.lifetime.start(i64 20, i8* %691) #1
  %692 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %692, i32 0, i32 55
  %pixel0 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda, i32 0, i32 2
  %x1469 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pixel0, i32 0, i32 0
  %693 = bitcast %struct.gx_dda_fixed_s* %x0 to i8*
  %694 = bitcast %struct.gx_dda_fixed_s* %x1469 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %693, i8* %694, i64 20, i32 4, i1 false), !tbaa.struct !116
  %695 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %matrix1470 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %695, i32 0, i32 21
  %xx1471 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %matrix1470, i32 0, i32 0
  %696 = load float, float* %xx1471, align 4, !tbaa !96
  %cmp1472 = fcmp olt float %696, 0.000000e+00
  br i1 %cmp1472, label %if.then.1474, label %if.end.1497

if.then.1474:                                     ; preds = %if.then.1468
  br label %do.body

do.body:                                          ; preds = %if.then.1474
  %697 = bitcast i32* %n_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %697) #1
  %698 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect1475 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %698, i32 0, i32 22
  %w1476 = getelementptr inbounds %struct.r_, %struct.r_* %rect1475, i32 0, i32 2
  %699 = load i32, i32* %w1476, align 4, !tbaa !75
  store i32 %699, i32* %n_, align 4, !tbaa !30
  %step = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x0, i32 0, i32 1
  %dQ = getelementptr inbounds %struct._e, %struct._e* %step, i32 0, i32 0
  %700 = load i32, i32* %dQ, align 4, !tbaa !117
  %701 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect1477 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %701, i32 0, i32 22
  %w1478 = getelementptr inbounds %struct.r_, %struct.r_* %rect1477, i32 0, i32 2
  %702 = load i32, i32* %w1478, align 4, !tbaa !75
  %mul1479 = mul nsw i32 %700, %702
  %state = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x0, i32 0, i32 0
  %Q = getelementptr inbounds %struct._a, %struct._a* %state, i32 0, i32 0
  %703 = load i32, i32* %Q, align 4, !tbaa !118
  %add1480 = add nsw i32 %703, %mul1479
  store i32 %add1480, i32* %Q, align 4, !tbaa !118
  br label %while.cond

while.cond:                                       ; preds = %if.end.1496, %do.body
  %704 = load i32, i32* %n_, align 4, !tbaa !30
  %dec = add i32 %704, -1
  store i32 %dec, i32* %n_, align 4, !tbaa !30
  %tobool1481 = icmp ne i32 %704, 0
  br i1 %tobool1481, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %step1482 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x0, i32 0, i32 1
  %dR = getelementptr inbounds %struct._e, %struct._e* %step1482, i32 0, i32 1
  %705 = load i32, i32* %dR, align 4, !tbaa !119
  %state1483 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x0, i32 0, i32 0
  %R = getelementptr inbounds %struct._a, %struct._a* %state1483, i32 0, i32 1
  %706 = load i32, i32* %R, align 4, !tbaa !120
  %sub1484 = sub i32 %706, %705
  store i32 %sub1484, i32* %R, align 4, !tbaa !120
  %state1485 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x0, i32 0, i32 0
  %R1486 = getelementptr inbounds %struct._a, %struct._a* %state1485, i32 0, i32 1
  %707 = load i32, i32* %R1486, align 4, !tbaa !120
  %cmp1487 = icmp slt i32 %707, 0
  br i1 %cmp1487, label %if.then.1489, label %if.end.1496

if.then.1489:                                     ; preds = %while.body
  %state1490 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x0, i32 0, i32 0
  %Q1491 = getelementptr inbounds %struct._a, %struct._a* %state1490, i32 0, i32 0
  %708 = load i32, i32* %Q1491, align 4, !tbaa !118
  %inc = add nsw i32 %708, 1
  store i32 %inc, i32* %Q1491, align 4, !tbaa !118
  %step1492 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x0, i32 0, i32 1
  %N = getelementptr inbounds %struct._e, %struct._e* %step1492, i32 0, i32 2
  %709 = load i32, i32* %N, align 4, !tbaa !121
  %state1493 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x0, i32 0, i32 0
  %R1494 = getelementptr inbounds %struct._a, %struct._a* %state1493, i32 0, i32 1
  %710 = load i32, i32* %R1494, align 4, !tbaa !120
  %add1495 = add i32 %710, %709
  store i32 %add1495, i32* %R1494, align 4, !tbaa !120
  br label %if.end.1496

if.end.1496:                                      ; preds = %if.then.1489, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %711 = bitcast i32* %n_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %711) #1
  br label %do.cond

do.cond:                                          ; preds = %while.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.1497

if.end.1497:                                      ; preds = %do.end, %if.then.1468
  %state1498 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x0, i32 0, i32 0
  %Q1499 = getelementptr inbounds %struct._a, %struct._a* %state1498, i32 0, i32 0
  %712 = load i32, i32* %Q1499, align 4, !tbaa !118
  %conv1500 = sext i32 %712 to i64
  %add1501 = add nsw i64 %conv1500, 127
  %shr1502 = ashr i64 %add1501, 8
  %conv1503 = trunc i64 %shr1502 to i32
  %713 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params1504 = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %713, i32 0, i32 5
  %LeftMarginOut1505 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params1504, i32 0, i32 22
  %714 = load i32, i32* %LeftMarginOut1505, align 4, !tbaa !122
  %add1506 = add nsw i32 %conv1503, %714
  %715 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %xyi = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %715, i32 0, i32 58
  %x1507 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %xyi, i32 0, i32 0
  store i32 %add1506, i32* %x1507, align 4, !tbaa !123
  %716 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %yi0 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %716, i32 0, i32 59
  %717 = load i32, i32* %yi0, align 4, !tbaa !124
  %718 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect1508 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %718, i32 0, i32 22
  %y1509 = getelementptr inbounds %struct.r_, %struct.r_* %rect1508, i32 0, i32 1
  %719 = load i32, i32* %y1509, align 4, !tbaa !71
  %conv1510 = sext i32 %719 to i64
  %720 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dst_height1511 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %720, i32 0, i32 24
  %721 = load i32, i32* %dst_height1511, align 4, !tbaa !74
  %conv1512 = sext i32 %721 to i64
  %mul1513 = mul nsw i64 %conv1510, %conv1512
  %722 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Height1514 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %722, i32 0, i32 10
  %723 = load i32, i32* %Height1514, align 4, !tbaa !37
  %conv1515 = sext i32 %723 to i64
  %div1516 = sdiv i64 %mul1513, %conv1515
  %conv1517 = trunc i64 %div1516 to i32
  %cmp1518 = icmp slt i32 %conv1517, 0
  br i1 %cmp1518, label %land.lhs.true.1520, label %cond.false.1548

land.lhs.true.1520:                               ; preds = %if.end.1497
  %724 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect1521 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %724, i32 0, i32 22
  %y1522 = getelementptr inbounds %struct.r_, %struct.r_* %rect1521, i32 0, i32 1
  %725 = load i32, i32* %y1522, align 4, !tbaa !71
  %conv1523 = sext i32 %725 to i64
  %726 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dst_height1524 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %726, i32 0, i32 24
  %727 = load i32, i32* %dst_height1524, align 4, !tbaa !74
  %conv1525 = sext i32 %727 to i64
  %mul1526 = mul nsw i64 %conv1523, %conv1525
  %728 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Height1527 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %728, i32 0, i32 10
  %729 = load i32, i32* %Height1527, align 4, !tbaa !37
  %conv1528 = sext i32 %729 to i64
  %div1529 = sdiv i64 %mul1526, %conv1528
  %conv1530 = trunc i64 %div1529 to i32
  %conv1531 = sext i32 %conv1530 to i64
  %and1532 = and i64 %conv1531, 255
  %cmp1533 = icmp eq i64 %and1532, 128
  br i1 %cmp1533, label %cond.true.1535, label %cond.false.1548

cond.true.1535:                                   ; preds = %land.lhs.true.1520
  %730 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect1536 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %730, i32 0, i32 22
  %y1537 = getelementptr inbounds %struct.r_, %struct.r_* %rect1536, i32 0, i32 1
  %731 = load i32, i32* %y1537, align 4, !tbaa !71
  %conv1538 = sext i32 %731 to i64
  %732 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dst_height1539 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %732, i32 0, i32 24
  %733 = load i32, i32* %dst_height1539, align 4, !tbaa !74
  %conv1540 = sext i32 %733 to i64
  %mul1541 = mul nsw i64 %conv1538, %conv1540
  %734 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Height1542 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %734, i32 0, i32 10
  %735 = load i32, i32* %Height1542, align 4, !tbaa !37
  %conv1543 = sext i32 %735 to i64
  %div1544 = sdiv i64 %mul1541, %conv1543
  %conv1545 = trunc i64 %div1544 to i32
  %shr1546 = ashr i32 %conv1545, 8
  %add1547 = add nsw i32 %shr1546, 1
  br label %cond.end.1563

cond.false.1548:                                  ; preds = %land.lhs.true.1520, %if.end.1497
  %736 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect1549 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %736, i32 0, i32 22
  %y1550 = getelementptr inbounds %struct.r_, %struct.r_* %rect1549, i32 0, i32 1
  %737 = load i32, i32* %y1550, align 4, !tbaa !71
  %conv1551 = sext i32 %737 to i64
  %738 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dst_height1552 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %738, i32 0, i32 24
  %739 = load i32, i32* %dst_height1552, align 4, !tbaa !74
  %conv1553 = sext i32 %739 to i64
  %mul1554 = mul nsw i64 %conv1551, %conv1553
  %740 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Height1555 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %740, i32 0, i32 10
  %741 = load i32, i32* %Height1555, align 4, !tbaa !37
  %conv1556 = sext i32 %741 to i64
  %div1557 = sdiv i64 %mul1554, %conv1556
  %conv1558 = trunc i64 %div1557 to i32
  %conv1559 = sext i32 %conv1558 to i64
  %add1560 = add nsw i64 %conv1559, 127
  %shr1561 = ashr i64 %add1560, 8
  %conv1562 = trunc i64 %shr1561 to i32
  br label %cond.end.1563

cond.end.1563:                                    ; preds = %cond.false.1548, %cond.true.1535
  %cond1564 = phi i32 [ %add1547, %cond.true.1535 ], [ %conv1562, %cond.false.1548 ]
  %add1565 = add nsw i32 %717, %cond1564
  %742 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %xyi1566 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %742, i32 0, i32 58
  %y1567 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %xyi1566, i32 0, i32 1
  store i32 %add1565, i32* %y1567, align 4, !tbaa !125
  %743 = bitcast %struct.gx_dda_fixed_s* %x0 to i8*
  call void @llvm.lifetime.end(i64 20, i8* %743) #1
  br label %if.end.1645

if.else.1568:                                     ; preds = %if.end.1463
  %744 = bitcast i32* %x01569 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %744) #1
  %745 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect1570 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %745, i32 0, i32 23
  %x1571 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %rrect1570, i32 0, i32 0
  %746 = load i32, i32* %x1571, align 4, !tbaa !67
  store i32 %746, i32* %x01569, align 4, !tbaa !30
  %747 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %matrix1572 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %747, i32 0, i32 21
  %xy1573 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %matrix1572, i32 0, i32 1
  %748 = load float, float* %xy1573, align 4, !tbaa !97
  %cmp1574 = fcmp olt float %748, 0.000000e+00
  br i1 %cmp1574, label %if.then.1576, label %if.end.1580

if.then.1576:                                     ; preds = %if.else.1568
  %749 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect1577 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %749, i32 0, i32 23
  %w1578 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %rrect1577, i32 0, i32 2
  %750 = load i32, i32* %w1578, align 4, !tbaa !63
  %751 = load i32, i32* %x01569, align 4, !tbaa !30
  %add1579 = add nsw i32 %751, %750
  store i32 %add1579, i32* %x01569, align 4, !tbaa !30
  br label %if.end.1580

if.end.1580:                                      ; preds = %if.then.1576, %if.else.1568
  %752 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1581 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %752, i32 0, i32 55
  %pixel01582 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1581, i32 0, i32 2
  %x1583 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pixel01582, i32 0, i32 0
  %state1584 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1583, i32 0, i32 0
  %Q1585 = getelementptr inbounds %struct._a, %struct._a* %state1584, i32 0, i32 0
  %753 = load i32, i32* %Q1585, align 4, !tbaa !126
  %conv1586 = sext i32 %753 to i64
  %add1587 = add nsw i64 %conv1586, 127
  %shr1588 = ashr i64 %add1587, 8
  %conv1589 = trunc i64 %shr1588 to i32
  %754 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %xyi1590 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %754, i32 0, i32 58
  %x1591 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %xyi1590, i32 0, i32 0
  store i32 %conv1589, i32* %x1591, align 4, !tbaa !123
  %755 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %yi01592 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %755, i32 0, i32 59
  %756 = load i32, i32* %yi01592, align 4, !tbaa !124
  %757 = load i32, i32* %x01569, align 4, !tbaa !30
  %conv1593 = sext i32 %757 to i64
  %758 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dst_height1594 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %758, i32 0, i32 24
  %759 = load i32, i32* %dst_height1594, align 4, !tbaa !74
  %conv1595 = sext i32 %759 to i64
  %mul1596 = mul nsw i64 %conv1593, %conv1595
  %760 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Width1597 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %760, i32 0, i32 9
  %761 = load i32, i32* %Width1597, align 4, !tbaa !36
  %conv1598 = sext i32 %761 to i64
  %div1599 = sdiv i64 %mul1596, %conv1598
  %conv1600 = trunc i64 %div1599 to i32
  %cmp1601 = icmp slt i32 %conv1600, 0
  br i1 %cmp1601, label %land.lhs.true.1603, label %cond.false.1627

land.lhs.true.1603:                               ; preds = %if.end.1580
  %762 = load i32, i32* %x01569, align 4, !tbaa !30
  %conv1604 = sext i32 %762 to i64
  %763 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dst_height1605 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %763, i32 0, i32 24
  %764 = load i32, i32* %dst_height1605, align 4, !tbaa !74
  %conv1606 = sext i32 %764 to i64
  %mul1607 = mul nsw i64 %conv1604, %conv1606
  %765 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Width1608 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %765, i32 0, i32 9
  %766 = load i32, i32* %Width1608, align 4, !tbaa !36
  %conv1609 = sext i32 %766 to i64
  %div1610 = sdiv i64 %mul1607, %conv1609
  %conv1611 = trunc i64 %div1610 to i32
  %conv1612 = sext i32 %conv1611 to i64
  %and1613 = and i64 %conv1612, 255
  %cmp1614 = icmp eq i64 %and1613, 128
  br i1 %cmp1614, label %cond.true.1616, label %cond.false.1627

cond.true.1616:                                   ; preds = %land.lhs.true.1603
  %767 = load i32, i32* %x01569, align 4, !tbaa !30
  %conv1617 = sext i32 %767 to i64
  %768 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dst_height1618 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %768, i32 0, i32 24
  %769 = load i32, i32* %dst_height1618, align 4, !tbaa !74
  %conv1619 = sext i32 %769 to i64
  %mul1620 = mul nsw i64 %conv1617, %conv1619
  %770 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Width1621 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %770, i32 0, i32 9
  %771 = load i32, i32* %Width1621, align 4, !tbaa !36
  %conv1622 = sext i32 %771 to i64
  %div1623 = sdiv i64 %mul1620, %conv1622
  %conv1624 = trunc i64 %div1623 to i32
  %shr1625 = ashr i32 %conv1624, 8
  %add1626 = add nsw i32 %shr1625, 1
  br label %cond.end.1640

cond.false.1627:                                  ; preds = %land.lhs.true.1603, %if.end.1580
  %772 = load i32, i32* %x01569, align 4, !tbaa !30
  %conv1628 = sext i32 %772 to i64
  %773 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dst_height1629 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %773, i32 0, i32 24
  %774 = load i32, i32* %dst_height1629, align 4, !tbaa !74
  %conv1630 = sext i32 %774 to i64
  %mul1631 = mul nsw i64 %conv1628, %conv1630
  %775 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Width1632 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %775, i32 0, i32 9
  %776 = load i32, i32* %Width1632, align 4, !tbaa !36
  %conv1633 = sext i32 %776 to i64
  %div1634 = sdiv i64 %mul1631, %conv1633
  %conv1635 = trunc i64 %div1634 to i32
  %conv1636 = sext i32 %conv1635 to i64
  %add1637 = add nsw i64 %conv1636, 127
  %shr1638 = ashr i64 %add1637, 8
  %conv1639 = trunc i64 %shr1638 to i32
  br label %cond.end.1640

cond.end.1640:                                    ; preds = %cond.false.1627, %cond.true.1616
  %cond1641 = phi i32 [ %add1626, %cond.true.1616 ], [ %conv1639, %cond.false.1627 ]
  %add1642 = add nsw i32 %756, %cond1641
  %777 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %xyi1643 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %777, i32 0, i32 58
  %y1644 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %xyi1643, i32 0, i32 1
  store i32 %add1642, i32* %y1644, align 4, !tbaa !125
  %778 = bitcast i32* %x01569 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %778) #1
  br label %if.end.1645

if.end.1645:                                      ; preds = %cond.end.1640, %cond.end.1563
  br label %do.body.1646

do.body.1646:                                     ; preds = %if.end.1645
  br label %do.cond.1647

do.cond.1647:                                     ; preds = %do.body.1646
  br label %do.end.1648

do.end.1648:                                      ; preds = %do.cond.1647
  %779 = load i32, i32* %use_icc, align 4, !tbaa !30
  %tobool1649 = icmp ne i32 %779, 0
  br i1 %tobool1649, label %if.then.1650, label %if.else.1748

if.then.1650:                                     ; preds = %do.end.1648
  %780 = bitcast %struct.gs_color_space_s** %pcs1651 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %780) #1
  %781 = bitcast %struct.gsicc_rendering_param_s* %rendering_params to i8*
  call void @llvm.lifetime.start(i64 24, i8* %781) #1
  %782 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %782) #1
  %783 = bitcast i32* %src_num_comp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %783) #1
  %784 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs1652 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %784, i32 0, i32 31
  %785 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs1652, align 8, !tbaa !29
  %type1653 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %785, i32 0, i32 0
  %786 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type1653, align 8, !tbaa !41
  %num_components1654 = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %786, i32 0, i32 4
  %787 = load i32 (%struct.gs_color_space_s*)*, i32 (%struct.gs_color_space_s*)** %num_components1654, align 8, !tbaa !90
  %788 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs1655 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %788, i32 0, i32 31
  %789 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs1655, align 8, !tbaa !29
  %call1656 = call i32 %787(%struct.gs_color_space_s* %789) #4
  store i32 %call1656, i32* %src_num_comp, align 4, !tbaa !30
  %790 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_setup = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %790, i32 0, i32 80
  %need_decode = getelementptr inbounds %struct.gx_image_icc_setup_s, %struct.gx_image_icc_setup_s* %icc_setup, i32 0, i32 0
  store i32 0, i32* %need_decode, align 4, !tbaa !127
  store i32 0, i32* %k, align 4, !tbaa !30
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.1650
  %791 = load i32, i32* %k, align 4, !tbaa !30
  %792 = load i32, i32* %src_num_comp, align 4, !tbaa !30
  %cmp1657 = icmp slt i32 %791, %792
  br i1 %cmp1657, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %793 = load i32, i32* %k, align 4, !tbaa !30
  %idxprom = sext i32 %793 to i64
  %794 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %794, i32 0, i32 64
  %arrayidx = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map, i32 0, i64 %idxprom
  %decoding = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx, i32 0, i32 3
  %795 = load i32, i32* %decoding, align 4, !tbaa !128
  %cmp1659 = icmp ne i32 %795, 0
  br i1 %cmp1659, label %if.then.1661, label %if.end.1664

if.then.1661:                                     ; preds = %for.body
  %796 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_setup1662 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %796, i32 0, i32 80
  %need_decode1663 = getelementptr inbounds %struct.gx_image_icc_setup_s, %struct.gx_image_icc_setup_s* %icc_setup1662, i32 0, i32 0
  store i32 1, i32* %need_decode1663, align 4, !tbaa !127
  br label %for.end

if.end.1664:                                      ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.1664
  %797 = load i32, i32* %k, align 4, !tbaa !30
  %inc1665 = add nsw i32 %797, 1
  store i32 %inc1665, i32* %k, align 4, !tbaa !30
  br label %for.cond

for.end:                                          ; preds = %if.then.1661, %for.cond
  %798 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pis1666 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %798, i32 0, i32 30
  %799 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis1666, align 8, !tbaa !59
  %blackptcomp = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %799, i32 0, i32 34
  %800 = load i32, i32* %blackptcomp, align 4, !tbaa !130
  %black_point_comp = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 1
  store i32 %800, i32* %black_point_comp, align 4, !tbaa !141
  %graphics_type_tag = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 3
  store i32 2, i32* %graphics_type_tag, align 4, !tbaa !143
  %override_icc = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 5
  store i32 0, i32* %override_icc, align 4, !tbaa !144
  %preserve_black = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 2
  store i32 8, i32* %preserve_black, align 4, !tbaa !145
  %801 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pis1667 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %801, i32 0, i32 30
  %802 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis1667, align 8, !tbaa !59
  %renderingintent = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %802, i32 0, i32 33
  %803 = load i32, i32* %renderingintent, align 4, !tbaa !146
  %rendering_intent = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 0
  store i32 %803, i32* %rendering_intent, align 4, !tbaa !147
  %cmm = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 4
  store i32 0, i32* %cmm, align 4, !tbaa !148
  %804 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs1668 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %804, i32 0, i32 31
  %805 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs1668, align 8, !tbaa !29
  %call1669 = call i32 @gs_color_space_is_PSCIE(%struct.gs_color_space_s* %805) #4
  %tobool1670 = icmp ne i32 %call1669, 0
  br i1 %tobool1670, label %land.lhs.true.1671, label %if.else.1678

land.lhs.true.1671:                               ; preds = %for.end
  %806 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs1672 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %806, i32 0, i32 31
  %807 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs1672, align 8, !tbaa !29
  %icc_equivalent = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %807, i32 0, i32 4
  %808 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent, align 8, !tbaa !149
  %cmp1673 = icmp ne %struct.gs_color_space_s* %808, null
  br i1 %cmp1673, label %if.then.1675, label %if.else.1678

if.then.1675:                                     ; preds = %land.lhs.true.1671
  %809 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs1676 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %809, i32 0, i32 31
  %810 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs1676, align 8, !tbaa !29
  %icc_equivalent1677 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %810, i32 0, i32 4
  %811 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent1677, align 8, !tbaa !149
  store %struct.gs_color_space_s* %811, %struct.gs_color_space_s** %pcs1651, align 8, !tbaa !1
  br label %if.end.1690

if.else.1678:                                     ; preds = %land.lhs.true.1671, %for.end
  %812 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs1679 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %812, i32 0, i32 31
  %813 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs1679, align 8, !tbaa !29
  %type1680 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %813, i32 0, i32 0
  %814 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type1680, align 8, !tbaa !41
  %index1681 = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %814, i32 0, i32 0
  %815 = load i32, i32* %index1681, align 4, !tbaa !42
  %cmp1682 = icmp eq i32 %815, 10
  br i1 %cmp1682, label %if.then.1684, label %if.else.1687

if.then.1684:                                     ; preds = %if.else.1678
  %816 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs1685 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %816, i32 0, i32 31
  %817 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs1685, align 8, !tbaa !29
  %base_space1686 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %817, i32 0, i32 3
  %818 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space1686, align 8, !tbaa !44
  store %struct.gs_color_space_s* %818, %struct.gs_color_space_s** %pcs1651, align 8, !tbaa !1
  br label %if.end.1689

if.else.1687:                                     ; preds = %if.else.1678
  %819 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs1688 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %819, i32 0, i32 31
  %820 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs1688, align 8, !tbaa !29
  store %struct.gs_color_space_s* %820, %struct.gs_color_space_s** %pcs1651, align 8, !tbaa !1
  br label %if.end.1689

if.end.1689:                                      ; preds = %if.else.1687, %if.then.1684
  br label %if.end.1690

if.end.1690:                                      ; preds = %if.end.1689, %if.then.1675
  %821 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs1651, align 8, !tbaa !1
  %cmm_icc_profile_data1691 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %821, i32 0, i32 6
  %822 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data1691, align 8, !tbaa !38
  %islab = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %822, i32 0, i32 2
  %823 = load i32, i32* %islab, align 4, !tbaa !150
  %824 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_setup1692 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %824, i32 0, i32 80
  %is_lab = getelementptr inbounds %struct.gx_image_icc_setup_s, %struct.gx_image_icc_setup_s* %icc_setup1692, i32 0, i32 1
  store i32 %823, i32* %is_lab, align 4, !tbaa !153
  %825 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_setup1693 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %825, i32 0, i32 80
  %is_lab1694 = getelementptr inbounds %struct.gx_image_icc_setup_s, %struct.gx_image_icc_setup_s* %icc_setup1693, i32 0, i32 1
  %826 = load i32, i32* %is_lab1694, align 4, !tbaa !153
  %tobool1695 = icmp ne i32 %826, 0
  br i1 %tobool1695, label %if.then.1696, label %if.end.1699

if.then.1696:                                     ; preds = %if.end.1690
  %827 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_setup1697 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %827, i32 0, i32 80
  %need_decode1698 = getelementptr inbounds %struct.gx_image_icc_setup_s, %struct.gx_image_icc_setup_s* %icc_setup1697, i32 0, i32 0
  store i32 0, i32* %need_decode1698, align 4, !tbaa !127
  br label %if.end.1699

if.end.1699:                                      ; preds = %if.then.1696, %if.end.1690
  %828 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev1700 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %828, i32 0, i32 2
  %829 = load %struct.gx_device_s*, %struct.gx_device_s** %dev1700, align 8, !tbaa !46
  %color_info1701 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %829, i32 0, i32 11
  %num_components1702 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info1701, i32 0, i32 1
  %830 = load i32, i32* %num_components1702, align 4, !tbaa !58
  %cmp1703 = icmp sgt i32 %830, 1
  br i1 %cmp1703, label %cond.true.1711, label %lor.lhs.false.1705

lor.lhs.false.1705:                               ; preds = %if.end.1699
  %831 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev1706 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %831, i32 0, i32 2
  %832 = load %struct.gx_device_s*, %struct.gx_device_s** %dev1706, align 8, !tbaa !46
  %color_info1707 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %832, i32 0, i32 11
  %gray_index = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info1707, i32 0, i32 4
  %833 = load i8, i8* %gray_index, align 1, !tbaa !154
  %conv1708 = zext i8 %833 to i32
  %cmp1709 = icmp eq i32 %conv1708, 255
  br i1 %cmp1709, label %cond.true.1711, label %cond.false.1714

cond.true.1711:                                   ; preds = %lor.lhs.false.1705, %if.end.1699
  %834 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev1712 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %834, i32 0, i32 2
  %835 = load %struct.gx_device_s*, %struct.gx_device_s** %dev1712, align 8, !tbaa !46
  %color_info1713 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %835, i32 0, i32 11
  %max_color = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info1713, i32 0, i32 6
  %836 = load i32, i32* %max_color, align 4, !tbaa !155
  br label %cond.end.1717

cond.false.1714:                                  ; preds = %lor.lhs.false.1705
  %837 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev1715 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %837, i32 0, i32 2
  %838 = load %struct.gx_device_s*, %struct.gx_device_s** %dev1715, align 8, !tbaa !46
  %color_info1716 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %838, i32 0, i32 11
  %max_gray = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info1716, i32 0, i32 5
  %839 = load i32, i32* %max_gray, align 4, !tbaa !156
  br label %cond.end.1717

cond.end.1717:                                    ; preds = %cond.false.1714, %cond.true.1711
  %cond1718 = phi i32 [ %836, %cond.true.1711 ], [ %839, %cond.false.1714 ]
  %cmp1719 = icmp ult i32 %cond1718, 31
  %conv1720 = zext i1 %cmp1719 to i32
  %840 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_setup1721 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %840, i32 0, i32 80
  %must_halftone = getelementptr inbounds %struct.gx_image_icc_setup_s, %struct.gx_image_icc_setup_s* %icc_setup1721, i32 0, i32 2
  store i32 %conv1720, i32* %must_halftone, align 4, !tbaa !157
  %841 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pis1722 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %841, i32 0, i32 30
  %842 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis1722, align 8, !tbaa !59
  %843 = load i32, i32* %num_des_comps, align 4, !tbaa !30
  %call1723 = call i32 @gx_has_transfer(%struct.gs_imager_state_s* %842, i32 %843) #4
  %844 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_setup1724 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %844, i32 0, i32 80
  %has_transfer = getelementptr inbounds %struct.gx_image_icc_setup_s, %struct.gx_image_icc_setup_s* %icc_setup1724, i32 0, i32 3
  store i32 %call1723, i32* %has_transfer, align 4, !tbaa !158
  %845 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_link = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %845, i32 0, i32 70
  %846 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link, align 8, !tbaa !159
  %cmp1725 = icmp eq %struct.gsicc_link_s* %846, null
  br i1 %cmp1725, label %if.then.1727, label %if.end.1733

if.then.1727:                                     ; preds = %cond.end.1717
  %847 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pis1728 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %847, i32 0, i32 30
  %848 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis1728, align 8, !tbaa !59
  %849 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev1729 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %849, i32 0, i32 2
  %850 = load %struct.gx_device_s*, %struct.gx_device_s** %dev1729, align 8, !tbaa !46
  %851 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs1651, align 8, !tbaa !1
  %852 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %memory1730 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %852, i32 0, i32 3
  %853 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1730, align 8, !tbaa !5
  %call1731 = call %struct.gsicc_link_s* @gsicc_get_link(%struct.gs_imager_state_s* %848, %struct.gx_device_s* %850, %struct.gs_color_space_s* %851, %struct.gs_color_space_s* null, %struct.gsicc_rendering_param_s* %rendering_params, %struct.gs_memory_s* %853) #4
  %854 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_link1732 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %854, i32 0, i32 70
  store %struct.gsicc_link_s* %call1731, %struct.gsicc_link_s** %icc_link1732, align 8, !tbaa !159
  br label %if.end.1733

if.end.1733:                                      ; preds = %if.then.1727, %cond.end.1717
  %855 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %bps1734 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %855, i32 0, i32 11
  %856 = load i8, i8* %bps1734, align 1, !tbaa !45
  %conv1735 = zext i8 %856 to i32
  %cmp1736 = icmp eq i32 %conv1735, 16
  br i1 %cmp1736, label %if.then.1738, label %if.end.1739

if.then.1738:                                     ; preds = %if.end.1733
  %857 = load i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)** @sample_unpackicc_16_proc, align 8, !tbaa !1
  %858 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %unpack = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %858, i32 0, i32 28
  store i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)* %857, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)** %unpack, align 8, !tbaa !160
  br label %if.end.1739

if.end.1739:                                      ; preds = %if.then.1738, %if.end.1733
  %859 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %posture1740 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %859, i32 0, i32 37
  %860 = load i32, i32* %posture1740, align 4, !tbaa !33
  %cmp1741 = icmp eq i32 %860, 0
  %cond1743 = select i1 %cmp1741, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* @image_render_interpolate_icc, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* @image_render_interpolate_landscape_icc
  store i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* %cond1743, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)** %retval
  store i32 1, i32* %cleanup.dest.slot
  %861 = bitcast i32* %src_num_comp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %861) #1
  %862 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %862) #1
  %863 = bitcast %struct.gsicc_rendering_param_s* %rendering_params to i8*
  call void @llvm.lifetime.end(i64 24, i8* %863) #1
  %864 = bitcast %struct.gs_color_space_s** %pcs1651 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %864) #1
  br label %cleanup.1753

if.else.1748:                                     ; preds = %do.end.1648
  %865 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %posture1749 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %865, i32 0, i32 37
  %866 = load i32, i32* %posture1749, align 4, !tbaa !33
  %cmp1750 = icmp eq i32 %866, 0
  %cond1752 = select i1 %cmp1750, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* @image_render_interpolate, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* @image_render_interpolate_landscape
  store i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* %cond1752, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1753

cleanup.1753:                                     ; preds = %if.else.1748, %if.end.1739, %if.then.1458, %cleanup, %if.then.1283, %if.then.48, %if.then.20, %if.then.12, %if.then
  %867 = bitcast i32* %pol to i8*
  call void @llvm.lifetime.end(i64 4, i8* %867) #1
  %868 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %868) #1
  %869 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %869) #1
  %870 = bitcast i32* %num_des_comps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %870) #1
  %871 = bitcast i32* %use_icc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %871) #1
  %872 = bitcast i32* %in_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %872) #1
  %873 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %873) #1
  %874 = bitcast i8** %line to i8*
  call void @llvm.lifetime.end(i64 8, i8* %874) #1
  %875 = bitcast %struct.stream_template_s** %templat to i8*
  call void @llvm.lifetime.end(i64 8, i8* %875) #1
  %876 = bitcast %struct.stream_image_scale_state_s** %pss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %876) #1
  %877 = bitcast %struct.stream_image_scale_params_s* %iss to i8*
  call void @llvm.lifetime.end(i64 100, i8* %877) #1
  %878 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %878) #1
  %879 = load i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)*, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)** %retval
  ret i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* %879
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @gsicc_get_device_profile_comps(%struct.cmm_dev_profile_s*) #2

declare i32 @gx_device_uses_std_cmap_procs(%struct.gx_device_s*, %struct.gs_imager_state_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @gs_color_space_is_CIE(%struct.gs_color_space_s*) #2

declare %struct.stream_state_s* @s_alloc_state(%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @gs_color_space_is_PSCIE(%struct.gs_color_space_s*) #2

declare i32 @gx_has_transfer(%struct.gs_imager_state_s*, i32) #2

declare %struct.gsicc_link_s* @gsicc_get_link(%struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gsicc_rendering_param_s*, %struct.gs_memory_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @image_render_interpolate_icc(%struct.gx_image_enum_s* %penum, i8* %buffer, i32 %data_x, i32 %iw, i32 %h, %struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gx_image_enum_s*, align 8
  %buffer.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %iw.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pss = alloca %struct.stream_image_scale_state_s*, align 8
  %pis = alloca %struct.gs_imager_state_s*, align 8
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %lop = alloca i32, align 4
  %out = alloca i8*, align 8
  %must_halftone = alloca i32, align 4
  %has_transfer = alloca i32, align 4
  %stream_r = alloca %struct.stream_cursor_read_s, align 8
  %stream_w = alloca %struct.stream_cursor_write_s, align 8
  %need_decode = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %xo = alloca i32, align 4
  %yo = alloca i32, align 4
  %width = alloca i32, align 4
  %width_in = alloca i32, align 4
  %sizeofPixelOut = alloca i32, align 4
  %dy = alloca i32, align 4
  %bpp = alloca i32, align 4
  %raster = alloca i32, align 4
  %p_cm_interp = alloca i16*, align 8
  %p_cm_buff = alloca i8*, align 8
  %psrc = alloca i8*, align 8
  %spp_decode = alloca i32, align 4
  %spp_interp = alloca i32, align 4
  %spp_cm = alloca i32, align 4
  %input_buff_desc = alloca %struct.gsicc_bufferdesc_s, align 4
  %output_buff_desc = alloca %struct.gsicc_bufferdesc_s, align 4
  %color = alloca i64, align 8
  %code = alloca i32, align 4
  %dev_profile = alloca %struct.cmm_dev_profile_s*, align 8
  %num_bytes_decode = alloca i32, align 4
  %ry = alloca i32, align 4
  %x90 = alloca i32, align 4
  %pinterp = alloca i16*, align 8
  %devc = alloca %struct.gx_device_color_s, align 8
  %status = alloca i32, align 4
  %l_dptr = alloca i8*, align 8
  %l_dbit = alloca i32, align 4
  %l_dbyte = alloca i8, align 1
  %l_xprev = alloca i32, align 4
  %xe = alloca i32, align 4
  %color189 = alloca i64, align 8
  %rcode = alloca i32, align 4
  %code646 = alloca i32, align 4
  %code716 = alloca i32, align 4
  store %struct.gx_image_enum_s* %penum, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !30
  store i32 %iw, i32* %iw.addr, align 4, !tbaa !30
  store i32 %h, i32* %h.addr, align 4, !tbaa !30
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_image_scale_state_s** %pss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %scaler = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1, i32 0, i32 50
  %2 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %scaler, align 8, !tbaa !114
  store %struct.stream_image_scale_state_s* %2, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %3 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pis1 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %4, i32 0, i32 30
  %5 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis1, align 8, !tbaa !59
  store %struct.gs_imager_state_s* %5, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %6 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs2 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %7, i32 0, i32 31
  %8 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !29
  store %struct.gs_color_space_s* %8, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %9 = bitcast i32* %lop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %log_op = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %10, i32 0, i32 44
  %11 = load i32, i32* %log_op, align 4, !tbaa !161
  store i32 %11, i32* %lop, align 4, !tbaa !30
  %12 = bitcast i8** %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %13, i32 0, i32 34
  %14 = load i8*, i8** %line, align 8, !tbaa !113
  store i8* %14, i8** %out, align 8, !tbaa !1
  %15 = bitcast i32* %must_halftone to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_setup = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %16, i32 0, i32 80
  %must_halftone3 = getelementptr inbounds %struct.gx_image_icc_setup_s, %struct.gx_image_icc_setup_s* %icc_setup, i32 0, i32 2
  %17 = load i32, i32* %must_halftone3, align 4, !tbaa !157
  store i32 %17, i32* %must_halftone, align 4, !tbaa !30
  %18 = bitcast i32* %has_transfer to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_setup4 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %19, i32 0, i32 80
  %has_transfer5 = getelementptr inbounds %struct.gx_image_icc_setup_s, %struct.gx_image_icc_setup_s* %icc_setup4, i32 0, i32 3
  %20 = load i32, i32* %has_transfer5, align 4, !tbaa !158
  store i32 %20, i32* %has_transfer, align 4, !tbaa !30
  %21 = bitcast %struct.stream_cursor_read_s* %stream_r to i8*
  call void @llvm.lifetime.start(i64 24, i8* %21) #1
  %22 = bitcast %struct.stream_cursor_write_s* %stream_w to i8*
  call void @llvm.lifetime.start(i64 24, i8* %22) #1
  %23 = bitcast i32* %need_decode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_link = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %24, i32 0, i32 70
  %25 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link, align 8, !tbaa !159
  %cmp = icmp eq %struct.gsicc_link_s* %25, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.image_render_interpolate_icc, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i32 913, i32 1, i32 -1, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i32 0, i32 0)) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.805

if.end:                                           ; preds = %entry
  %26 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %device_color = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %26, i32 0, i32 41
  %27 = load i8, i8* %device_color, align 1, !tbaa !98
  %conv = zext i8 %27 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %28 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_setup6 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %28, i32 0, i32 80
  %is_lab = getelementptr inbounds %struct.gx_image_icc_setup_s, %struct.gx_image_icc_setup_s* %icc_setup6, i32 0, i32 1
  %29 = load i32, i32* %is_lab, align 4, !tbaa !153
  %tobool7 = icmp ne i32 %29, 0
  br i1 %tobool7, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end
  %30 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_setup8 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %30, i32 0, i32 80
  %need_decode9 = getelementptr inbounds %struct.gx_image_icc_setup_s, %struct.gx_image_icc_setup_s* %icc_setup8, i32 0, i32 0
  %31 = load i32, i32* %need_decode9, align 4, !tbaa !127
  %cmp10 = icmp eq i32 %31, 0
  br i1 %cmp10, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %32 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call12 = call i32 @gs_color_space_is_CIE(%struct.gs_color_space_s* %32) #4
  %tobool13 = icmp ne i32 %call12, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true
  %33 = phi i1 [ true, %land.lhs.true ], [ %tobool13, %lor.rhs ]
  %lnot = xor i1 %33, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %need_decode, align 4, !tbaa !30
  %34 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %35 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %36 = load i32, i32* %data_x.addr, align 4, !tbaa !30
  %37 = load i32, i32* %h.addr, align 4, !tbaa !30
  %38 = load i32, i32* %need_decode, align 4, !tbaa !30
  call void @initial_decode(%struct.gx_image_enum_s* %34, i8* %35, i32 %36, i32 %37, i32 %38, %struct.stream_cursor_read_s* %stream_r, i32 1) #4
  %39 = bitcast i32* %xo to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  %40 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %xyi = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %40, i32 0, i32 58
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %xyi, i32 0, i32 0
  %41 = load i32, i32* %x, align 4, !tbaa !123
  store i32 %41, i32* %xo, align 4, !tbaa !30
  %42 = bitcast i32* %yo to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #1
  %43 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %xyi14 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %43, i32 0, i32 58
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %xyi14, i32 0, i32 1
  %44 = load i32, i32* %y, align 4, !tbaa !125
  store i32 %44, i32* %yo, align 4, !tbaa !30
  %45 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #1
  %46 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %46, i32 0, i32 5
  %WidthOut = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params, i32 0, i32 12
  %47 = load i32, i32* %WidthOut, align 4, !tbaa !162
  store i32 %47, i32* %width, align 4, !tbaa !30
  %48 = bitcast i32* %width_in to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #1
  %49 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params15 = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %49, i32 0, i32 5
  %WidthIn = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params15, i32 0, i32 10
  %50 = load i32, i32* %WidthIn, align 4, !tbaa !163
  store i32 %50, i32* %width_in, align 4, !tbaa !30
  %51 = bitcast i32* %sizeofPixelOut to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #1
  %52 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params16 = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %52, i32 0, i32 5
  %BitsPerComponentOut = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params16, i32 0, i32 8
  %53 = load i32, i32* %BitsPerComponentOut, align 4, !tbaa !164
  %div = sdiv i32 %53, 8
  store i32 %div, i32* %sizeofPixelOut, align 4, !tbaa !30
  %54 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #1
  %55 = bitcast i32* %bpp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #1
  %56 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %56, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %57 = load i16, i16* %depth, align 2, !tbaa !165
  %conv17 = zext i16 %57 to i32
  store i32 %conv17, i32* %bpp, align 4, !tbaa !30
  %58 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %58) #1
  %59 = load i32, i32* %width, align 4, !tbaa !30
  %60 = load i32, i32* %bpp, align 4, !tbaa !30
  %mul = mul nsw i32 %59, %60
  %add = add nsw i32 %mul, 63
  %shr = ashr i32 %add, 6
  %shl = shl i32 %shr, 3
  store i32 %shl, i32* %raster, align 4, !tbaa !30
  %61 = bitcast i16** %p_cm_interp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %61) #1
  %62 = bitcast i8** %p_cm_buff to i8*
  call void @llvm.lifetime.start(i64 8, i8* %62) #1
  store i8* null, i8** %p_cm_buff, align 8, !tbaa !1
  %63 = bitcast i8** %psrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %63) #1
  %64 = bitcast i32* %spp_decode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %64) #1
  %65 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params18 = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %65, i32 0, i32 5
  %spp_decode19 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params18, i32 0, i32 0
  %66 = load i32, i32* %spp_decode19, align 4, !tbaa !166
  store i32 %66, i32* %spp_decode, align 4, !tbaa !30
  %67 = bitcast i32* %spp_interp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %67) #1
  %68 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params20 = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %68, i32 0, i32 5
  %spp_interp21 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params20, i32 0, i32 1
  %69 = load i32, i32* %spp_interp21, align 4, !tbaa !167
  store i32 %69, i32* %spp_interp, align 4, !tbaa !30
  %70 = bitcast i32* %spp_cm to i8*
  call void @llvm.lifetime.start(i64 4, i8* %70) #1
  %71 = bitcast %struct.gsicc_bufferdesc_s* %input_buff_desc to i8*
  call void @llvm.lifetime.start(i64 36, i8* %71) #1
  %72 = bitcast %struct.gsicc_bufferdesc_s* %output_buff_desc to i8*
  call void @llvm.lifetime.start(i64 36, i8* %72) #1
  %73 = bitcast i64* %color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %73) #1
  %74 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %74) #1
  %75 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %75) #1
  %76 = bitcast i32* %num_bytes_decode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %76) #1
  %77 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params22 = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %77, i32 0, i32 5
  %BitsPerComponentIn = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params22, i32 0, i32 6
  %78 = load i32, i32* %BitsPerComponentIn, align 4, !tbaa !168
  %div23 = sdiv i32 %78, 8
  store i32 %div23, i32* %num_bytes_decode, align 4, !tbaa !30
  %79 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %79, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %80 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !47
  %81 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call24 = call i32 %80(%struct.gx_device_s* %81, %struct.cmm_dev_profile_s** %dev_profile) #4
  store i32 %call24, i32* %code, align 4, !tbaa !30
  %82 = load i32, i32* %code, align 4, !tbaa !30
  %tobool25 = icmp ne i32 %82, 0
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %lor.end
  %83 = load i32, i32* %code, align 4, !tbaa !30
  store i32 %83, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.780

if.end.27:                                        ; preds = %lor.end
  %84 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %call28 = call i32 @gsicc_get_device_profile_comps(%struct.cmm_dev_profile_s* %84) #4
  store i32 %call28, i32* %spp_cm, align 4, !tbaa !30
  %85 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %matrix = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %85, i32 0, i32 21
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %matrix, i32 0, i32 3
  %86 = load float, float* %yy, align 4, !tbaa !169
  %cmp29 = fcmp ogt float %86, 0.000000e+00
  br i1 %cmp29, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %if.end.27
  store i32 1, i32* %dy, align 4, !tbaa !30
  br label %if.end.32

if.else:                                          ; preds = %if.end.27
  store i32 -1, i32* %dy, align 4, !tbaa !30
  %87 = load i32, i32* %yo, align 4, !tbaa !30
  %dec = add nsw i32 %87, -1
  store i32 %dec, i32* %yo, align 4, !tbaa !30
  br label %if.end.32

if.end.32:                                        ; preds = %if.else, %if.then.31
  %88 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params33 = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %88, i32 0, i32 5
  %early_cm = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params33, i32 0, i32 20
  %89 = load i32, i32* %early_cm, align 4, !tbaa !170
  %tobool34 = icmp ne i32 %89, 0
  br i1 %tobool34, label %land.lhs.true.35, label %if.else.64

land.lhs.true.35:                                 ; preds = %if.end.32
  %90 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_link36 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %90, i32 0, i32 70
  %91 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link36, align 8, !tbaa !159
  %is_identity = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %91, i32 0, i32 10
  %92 = load i32, i32* %is_identity, align 4, !tbaa !171
  %tobool37 = icmp ne i32 %92, 0
  br i1 %tobool37, label %if.else.64, label %land.lhs.true.38

land.lhs.true.38:                                 ; preds = %land.lhs.true.35
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %stream_r, i32 0, i32 0
  %93 = load i8*, i8** %ptr, align 8, !tbaa !175
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %stream_r, i32 0, i32 1
  %94 = load i8*, i8** %limit, align 8, !tbaa !177
  %cmp39 = icmp ne i8* %93, %94
  br i1 %cmp39, label %if.then.41, label %if.else.64

if.then.41:                                       ; preds = %land.lhs.true.38
  %95 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %95, i32 0, i32 1
  %96 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !178
  %procs42 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %96, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs42, i32 0, i32 7
  %97 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !103
  %98 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %memory43 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %98, i32 0, i32 1
  %99 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory43, align 8, !tbaa !178
  %100 = load i32, i32* %num_bytes_decode, align 4, !tbaa !30
  %101 = load i32, i32* %width_in, align 4, !tbaa !30
  %mul44 = mul nsw i32 %100, %101
  %102 = load i32, i32* %spp_cm, align 4, !tbaa !30
  %mul45 = mul nsw i32 %mul44, %102
  %call46 = call i8* %97(%struct.gs_memory_s* %99, i32 %mul45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.image_render_interpolate_icc, i32 0, i32 0)) #4
  store i8* %call46, i8** %p_cm_buff, align 8, !tbaa !1
  %103 = load i32, i32* %spp_decode, align 4, !tbaa !30
  %conv47 = trunc i32 %103 to i8
  %104 = load i32, i32* %num_bytes_decode, align 4, !tbaa !30
  %conv48 = trunc i32 %104 to i8
  %105 = load i32, i32* %width_in, align 4, !tbaa !30
  %106 = load i32, i32* %spp_decode, align 4, !tbaa !30
  %mul49 = mul nsw i32 %105, %106
  %107 = load i32, i32* %width_in, align 4, !tbaa !30
  call void @gsicc_init_buffer(%struct.gsicc_bufferdesc_s* %input_buff_desc, i8 zeroext %conv47, i8 zeroext %conv48, i32 0, i32 0, i32 0, i32 0, i32 %mul49, i32 1, i32 %107) #4
  %108 = load i32, i32* %spp_cm, align 4, !tbaa !30
  %conv50 = trunc i32 %108 to i8
  %109 = load i32, i32* %num_bytes_decode, align 4, !tbaa !30
  %conv51 = trunc i32 %109 to i8
  %110 = load i32, i32* %width_in, align 4, !tbaa !30
  %111 = load i32, i32* %spp_cm, align 4, !tbaa !30
  %mul52 = mul nsw i32 %110, %111
  %112 = load i32, i32* %width_in, align 4, !tbaa !30
  call void @gsicc_init_buffer(%struct.gsicc_bufferdesc_s* %output_buff_desc, i8 zeroext %conv50, i8 zeroext %conv51, i32 0, i32 0, i32 0, i32 0, i32 %mul52, i32 1, i32 %112) #4
  %ptr53 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %stream_r, i32 0, i32 0
  %113 = load i8*, i8** %ptr53, align 8, !tbaa !175
  %add.ptr = getelementptr inbounds i8, i8* %113, i64 1
  store i8* %add.ptr, i8** %psrc, align 8, !tbaa !1
  %114 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_link54 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %114, i32 0, i32 70
  %115 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link54, align 8, !tbaa !159
  %procs55 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %115, i32 0, i32 1
  %map_buffer = getelementptr inbounds %struct.gscms_procs_s, %struct.gscms_procs_s* %procs55, i32 0, i32 0
  %116 = load void (%struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s*, i8*, i8*)*, void (%struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s*, i8*, i8*)** %map_buffer, align 8, !tbaa !179
  %117 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %118 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_link56 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %118, i32 0, i32 70
  %119 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link56, align 8, !tbaa !159
  %120 = load i8*, i8** %psrc, align 8, !tbaa !1
  %121 = load i8*, i8** %p_cm_buff, align 8, !tbaa !1
  call void %116(%struct.gx_device_s* %117, %struct.gsicc_link_s* %119, %struct.gsicc_bufferdesc_s* %input_buff_desc, %struct.gsicc_bufferdesc_s* %output_buff_desc, i8* %120, i8* %121) #4
  %122 = load i8*, i8** %p_cm_buff, align 8, !tbaa !1
  %add.ptr57 = getelementptr inbounds i8, i8* %122, i64 -1
  %ptr58 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %stream_r, i32 0, i32 0
  store i8* %add.ptr57, i8** %ptr58, align 8, !tbaa !175
  %ptr59 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %stream_r, i32 0, i32 0
  %123 = load i8*, i8** %ptr59, align 8, !tbaa !175
  %124 = load i32, i32* %num_bytes_decode, align 4, !tbaa !30
  %125 = load i32, i32* %width_in, align 4, !tbaa !30
  %mul60 = mul nsw i32 %124, %125
  %126 = load i32, i32* %spp_cm, align 4, !tbaa !30
  %mul61 = mul nsw i32 %mul60, %126
  %idx.ext = sext i32 %mul61 to i64
  %add.ptr62 = getelementptr inbounds i8, i8* %123, i64 %idx.ext
  %limit63 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %stream_r, i32 0, i32 1
  store i8* %add.ptr62, i8** %limit63, align 8, !tbaa !177
  br label %if.end.87

if.else.64:                                       ; preds = %land.lhs.true.38, %land.lhs.true.35, %if.end.32
  %127 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_link65 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %127, i32 0, i32 70
  %128 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link65, align 8, !tbaa !159
  %is_identity66 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %128, i32 0, i32 10
  %129 = load i32, i32* %is_identity66, align 4, !tbaa !171
  %tobool67 = icmp ne i32 %129, 0
  br i1 %tobool67, label %if.end.86, label %if.then.68

if.then.68:                                       ; preds = %if.else.64
  %130 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %memory69 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %130, i32 0, i32 1
  %131 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory69, align 8, !tbaa !178
  %procs70 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %131, i32 0, i32 1
  %alloc_bytes71 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs70, i32 0, i32 7
  %132 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes71, align 8, !tbaa !103
  %133 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %memory72 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %133, i32 0, i32 1
  %134 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory72, align 8, !tbaa !178
  %135 = load i32, i32* %width, align 4, !tbaa !30
  %conv73 = sext i32 %135 to i64
  %mul74 = mul i64 2, %conv73
  %136 = load i32, i32* %spp_cm, align 4, !tbaa !30
  %conv75 = sext i32 %136 to i64
  %mul76 = mul i64 %mul74, %conv75
  %conv77 = trunc i64 %mul76 to i32
  %call78 = call i8* %132(%struct.gs_memory_s* %134, i32 %conv77, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.image_render_interpolate_icc, i32 0, i32 0)) #4
  store i8* %call78, i8** %p_cm_buff, align 8, !tbaa !1
  %137 = load i32, i32* %spp_decode, align 4, !tbaa !30
  %conv79 = trunc i32 %137 to i8
  %138 = load i32, i32* %width, align 4, !tbaa !30
  %139 = load i32, i32* %spp_decode, align 4, !tbaa !30
  %mul80 = mul nsw i32 %138, %139
  %140 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params81 = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %140, i32 0, i32 5
  %PatchWidthOut = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params81, i32 0, i32 4
  %141 = load i32, i32* %PatchWidthOut, align 4, !tbaa !180
  call void @gsicc_init_buffer(%struct.gsicc_bufferdesc_s* %input_buff_desc, i8 zeroext %conv79, i8 zeroext 2, i32 0, i32 0, i32 0, i32 0, i32 %mul80, i32 1, i32 %141) #4
  %142 = load i32, i32* %spp_cm, align 4, !tbaa !30
  %conv82 = trunc i32 %142 to i8
  %143 = load i32, i32* %width, align 4, !tbaa !30
  %144 = load i32, i32* %spp_cm, align 4, !tbaa !30
  %mul83 = mul nsw i32 %143, %144
  %145 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params84 = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %145, i32 0, i32 5
  %PatchWidthOut85 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params84, i32 0, i32 4
  %146 = load i32, i32* %PatchWidthOut85, align 4, !tbaa !180
  call void @gsicc_init_buffer(%struct.gsicc_bufferdesc_s* %output_buff_desc, i8 zeroext %conv82, i8 zeroext 2, i32 0, i32 0, i32 0, i32 0, i32 %mul83, i32 1, i32 %146) #4
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.68, %if.else.64
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %if.then.41
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont.771, %if.end.87
  %147 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.start(i64 4, i8* %147) #1
  %148 = load i32, i32* %yo, align 4, !tbaa !30
  %149 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line_xy = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %149, i32 0, i32 56
  %150 = load i32, i32* %line_xy, align 4, !tbaa !115
  %151 = load i32, i32* %dy, align 4, !tbaa !30
  %mul88 = mul nsw i32 %150, %151
  %add89 = add nsw i32 %148, %mul88
  store i32 %add89, i32* %ry, align 4, !tbaa !30
  %152 = bitcast i32* %x90 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %152) #1
  %153 = bitcast i16** %pinterp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %153) #1
  %154 = bitcast %struct.gx_device_color_s* %devc to i8*
  call void @llvm.lifetime.start(i64 656, i8* %154) #1
  %155 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %155) #1
  %156 = bitcast i8** %l_dptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %156) #1
  %157 = load i8*, i8** %out, align 8, !tbaa !1
  store i8* %157, i8** %l_dptr, align 8, !tbaa !1
  %158 = bitcast i32* %l_dbit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %158) #1
  store i32 0, i32* %l_dbit, align 4, !tbaa !30
  call void @llvm.lifetime.start(i64 1, i8* %l_dbyte) #1
  %159 = load i32, i32* %l_dbit, align 4, !tbaa !30
  %tobool91 = icmp ne i32 %159, 0
  br i1 %tobool91, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  %160 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %161 = load i8, i8* %160, align 1, !tbaa !100
  %conv92 = zext i8 %161 to i32
  %162 = load i32, i32* %l_dbit, align 4, !tbaa !30
  %shr93 = ashr i32 65280, %162
  %and = and i32 %conv92, %shr93
  %conv94 = trunc i32 %and to i8
  %conv95 = zext i8 %conv94 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv95, %cond.true ], [ 0, %cond.false ]
  %conv96 = trunc i32 %cond to i8
  store i8 %conv96, i8* %l_dbyte, align 1, !tbaa !100
  %163 = bitcast i32* %l_xprev to i8*
  call void @llvm.lifetime.start(i64 4, i8* %163) #1
  %164 = load i32, i32* %xo, align 4, !tbaa !30
  store i32 %164, i32* %l_xprev, align 4, !tbaa !30
  %165 = load i8*, i8** %out, align 8, !tbaa !1
  %166 = load i32, i32* %width, align 4, !tbaa !30
  %conv97 = sext i32 %166 to i64
  %167 = load i32, i32* %spp_interp, align 4, !tbaa !30
  %168 = load i32, i32* %sizeofPixelOut, align 4, !tbaa !30
  %mul98 = mul nsw i32 %167, %168
  %conv99 = sext i32 %mul98 to i64
  %cmp100 = icmp ugt i64 %conv99, 8
  br i1 %cmp100, label %cond.true.102, label %cond.false.105

cond.true.102:                                    ; preds = %cond.end
  %169 = load i32, i32* %spp_interp, align 4, !tbaa !30
  %170 = load i32, i32* %sizeofPixelOut, align 4, !tbaa !30
  %mul103 = mul nsw i32 %169, %170
  %conv104 = sext i32 %mul103 to i64
  br label %cond.end.106

cond.false.105:                                   ; preds = %cond.end
  br label %cond.end.106

cond.end.106:                                     ; preds = %cond.false.105, %cond.true.102
  %cond107 = phi i64 [ %conv104, %cond.true.102 ], [ 8, %cond.false.105 ]
  %mul108 = mul i64 %conv97, %cond107
  %add.ptr109 = getelementptr inbounds i8, i8* %165, i64 %mul108
  %add.ptr110 = getelementptr inbounds i8, i8* %add.ptr109, i64 -1
  %limit111 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %stream_w, i32 0, i32 2
  store i8* %add.ptr110, i8** %limit111, align 8, !tbaa !181
  %limit112 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %stream_w, i32 0, i32 2
  %171 = load i8*, i8** %limit112, align 8, !tbaa !181
  %172 = load i32, i32* %width, align 4, !tbaa !30
  %173 = load i32, i32* %spp_interp, align 4, !tbaa !30
  %mul113 = mul nsw i32 %172, %173
  %174 = load i32, i32* %sizeofPixelOut, align 4, !tbaa !30
  %mul114 = mul nsw i32 %mul113, %174
  %idx.ext115 = sext i32 %mul114 to i64
  %idx.neg = sub i64 0, %idx.ext115
  %add.ptr116 = getelementptr inbounds i8, i8* %171, i64 %idx.neg
  %ptr117 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %stream_w, i32 0, i32 1
  store i8* %add.ptr116, i8** %ptr117, align 8, !tbaa !183
  %ptr118 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %stream_w, i32 0, i32 1
  %175 = load i8*, i8** %ptr118, align 8, !tbaa !183
  %add.ptr119 = getelementptr inbounds i8, i8* %175, i64 1
  %176 = bitcast i8* %add.ptr119 to i16*
  store i16* %176, i16** %pinterp, align 8, !tbaa !1
  %177 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %templat = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %177, i32 0, i32 0
  %178 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !109
  %process = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %178, i32 0, i32 2
  %179 = load i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)** %process, align 8, !tbaa !184
  %180 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %181 = bitcast %struct.stream_image_scale_state_s* %180 to %struct.stream_state_s*
  %182 = load i32, i32* %h.addr, align 4, !tbaa !30
  %cmp120 = icmp eq i32 %182, 0
  %conv121 = zext i1 %cmp120 to i32
  %call122 = call i32 %179(%struct.stream_state_s* %181, %struct.stream_cursor_read_s* %stream_r, %struct.stream_cursor_write_s* %stream_w, i32 %conv121) #4
  store i32 %call122, i32* %status, align 4, !tbaa !30
  %183 = load i32, i32* %status, align 4, !tbaa !30
  %cmp123 = icmp slt i32 %183, 0
  br i1 %cmp123, label %land.lhs.true.125, label %if.end.129

land.lhs.true.125:                                ; preds = %cond.end.106
  %184 = load i32, i32* %status, align 4, !tbaa !30
  %cmp126 = icmp ne i32 %184, -1
  br i1 %cmp126, label %if.then.128, label %if.end.129

if.then.128:                                      ; preds = %land.lhs.true.125
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.761

if.end.129:                                       ; preds = %land.lhs.true.125, %cond.end.106
  %ptr130 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %stream_w, i32 0, i32 1
  %185 = load i8*, i8** %ptr130, align 8, !tbaa !183
  %limit131 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %stream_w, i32 0, i32 2
  %186 = load i8*, i8** %limit131, align 8, !tbaa !181
  %cmp132 = icmp eq i8* %185, %186
  br i1 %cmp132, label %if.then.134, label %if.end.748

if.then.134:                                      ; preds = %if.end.129
  %187 = bitcast i32* %xe to i8*
  call void @llvm.lifetime.start(i64 4, i8* %187) #1
  %188 = load i32, i32* %xo, align 4, !tbaa !30
  %189 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params135 = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %189, i32 0, i32 5
  %PatchWidthOut136 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params135, i32 0, i32 4
  %190 = load i32, i32* %PatchWidthOut136, align 4, !tbaa !180
  %add137 = add nsw i32 %188, %190
  store i32 %add137, i32* %xe, align 4, !tbaa !30
  %191 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params138 = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %191, i32 0, i32 5
  %Active = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params138, i32 0, i32 24
  %192 = load i32, i32* %Active, align 4, !tbaa !185
  %tobool139 = icmp ne i32 %192, 0
  br i1 %tobool139, label %if.end.141, label %if.then.140

if.then.140:                                      ; preds = %if.then.134
  br label %inactive

if.end.141:                                       ; preds = %if.then.134
  br label %do.body

do.body:                                          ; preds = %if.end.141
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %193 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_link142 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %193, i32 0, i32 70
  %194 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link142, align 8, !tbaa !159
  %is_identity143 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %194, i32 0, i32 10
  %195 = load i32, i32* %is_identity143, align 4, !tbaa !171
  %tobool144 = icmp ne i32 %195, 0
  br i1 %tobool144, label %if.then.149, label %lor.lhs.false.145

lor.lhs.false.145:                                ; preds = %do.end
  %196 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params146 = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %196, i32 0, i32 5
  %early_cm147 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params146, i32 0, i32 20
  %197 = load i32, i32* %early_cm147, align 4, !tbaa !170
  %tobool148 = icmp ne i32 %197, 0
  br i1 %tobool148, label %if.then.149, label %if.else.154

if.then.149:                                      ; preds = %lor.lhs.false.145, %do.end
  %198 = load i16*, i16** %pinterp, align 8, !tbaa !1
  store i16* %198, i16** %p_cm_interp, align 8, !tbaa !1
  %199 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params150 = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %199, i32 0, i32 5
  %LeftMarginOut = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params150, i32 0, i32 22
  %200 = load i32, i32* %LeftMarginOut, align 4, !tbaa !122
  %201 = load i32, i32* %spp_cm, align 4, !tbaa !30
  %mul151 = mul nsw i32 %200, %201
  %202 = load i16*, i16** %p_cm_interp, align 8, !tbaa !1
  %idx.ext152 = sext i32 %mul151 to i64
  %add.ptr153 = getelementptr inbounds i16, i16* %202, i64 %idx.ext152
  store i16* %add.ptr153, i16** %p_cm_interp, align 8, !tbaa !1
  br label %if.end.169

if.else.154:                                      ; preds = %lor.lhs.false.145
  %203 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params155 = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %203, i32 0, i32 5
  %LeftMarginOut156 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params155, i32 0, i32 22
  %204 = load i32, i32* %LeftMarginOut156, align 4, !tbaa !122
  %205 = load i32, i32* %spp_decode, align 4, !tbaa !30
  %mul157 = mul nsw i32 %204, %205
  %206 = load i16*, i16** %pinterp, align 8, !tbaa !1
  %idx.ext158 = sext i32 %mul157 to i64
  %add.ptr159 = getelementptr inbounds i16, i16* %206, i64 %idx.ext158
  store i16* %add.ptr159, i16** %pinterp, align 8, !tbaa !1
  %207 = load i8*, i8** %p_cm_buff, align 8, !tbaa !1
  %208 = bitcast i8* %207 to i16*
  store i16* %208, i16** %p_cm_interp, align 8, !tbaa !1
  %209 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params160 = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %209, i32 0, i32 5
  %LeftMarginOut161 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params160, i32 0, i32 22
  %210 = load i32, i32* %LeftMarginOut161, align 4, !tbaa !122
  %211 = load i32, i32* %spp_cm, align 4, !tbaa !30
  %mul162 = mul nsw i32 %210, %211
  %212 = load i16*, i16** %p_cm_interp, align 8, !tbaa !1
  %idx.ext163 = sext i32 %mul162 to i64
  %add.ptr164 = getelementptr inbounds i16, i16* %212, i64 %idx.ext163
  store i16* %add.ptr164, i16** %p_cm_interp, align 8, !tbaa !1
  %213 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_link165 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %213, i32 0, i32 70
  %214 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link165, align 8, !tbaa !159
  %procs166 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %214, i32 0, i32 1
  %map_buffer167 = getelementptr inbounds %struct.gscms_procs_s, %struct.gscms_procs_s* %procs166, i32 0, i32 0
  %215 = load void (%struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s*, i8*, i8*)*, void (%struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s*, i8*, i8*)** %map_buffer167, align 8, !tbaa !179
  %216 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %217 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_link168 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %217, i32 0, i32 70
  %218 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link168, align 8, !tbaa !159
  %219 = load i16*, i16** %pinterp, align 8, !tbaa !1
  %220 = bitcast i16* %219 to i8*
  %221 = load i16*, i16** %p_cm_interp, align 8, !tbaa !1
  %222 = bitcast i16* %221 to i8*
  call void %215(%struct.gx_device_s* %216, %struct.gsicc_link_s* %218, %struct.gsicc_bufferdesc_s* %input_buff_desc, %struct.gsicc_bufferdesc_s* %output_buff_desc, i8* %220, i8* %222) #4
  br label %if.end.169

if.end.169:                                       ; preds = %if.else.154, %if.then.149
  %223 = load i32, i32* %xo, align 4, !tbaa !30
  store i32 %223, i32* %x90, align 4, !tbaa !30
  br label %for.cond.170

for.cond.170:                                     ; preds = %if.end.712, %if.end.169
  %224 = load i32, i32* %x90, align 4, !tbaa !30
  %225 = load i32, i32* %xe, align 4, !tbaa !30
  %cmp171 = icmp slt i32 %224, %225
  br i1 %cmp171, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.170
  %226 = load i32, i32* %must_halftone, align 4, !tbaa !30
  %tobool173 = icmp ne i32 %226, 0
  br i1 %tobool173, label %if.then.176, label %lor.lhs.false.174

lor.lhs.false.174:                                ; preds = %for.body
  %227 = load i32, i32* %has_transfer, align 4, !tbaa !30
  %tobool175 = icmp ne i32 %227, 0
  br i1 %tobool175, label %if.then.176, label %if.else.177

if.then.176:                                      ; preds = %lor.lhs.false.174, %for.body
  %228 = load i16*, i16** %p_cm_interp, align 8, !tbaa !1
  %229 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %230 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %231 = load i32, i32* %has_transfer, align 4, !tbaa !30
  %232 = load i32, i32* %must_halftone, align 4, !tbaa !30
  call void @cmap_transfer_halftone(i16* %228, %struct.gx_device_color_s* %devc, %struct.gs_imager_state_s* %229, %struct.gx_device_s* %230, i32 %231, i32 %232, i32 1) #4
  br label %if.end.184

if.else.177:                                      ; preds = %lor.lhs.false.174
  %233 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs178 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %233, i32 0, i32 42
  %encode_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs178, i32 0, i32 51
  %234 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color, align 8, !tbaa !186
  %235 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %236 = load i16*, i16** %p_cm_interp, align 8, !tbaa !1
  %call179 = call i64 %234(%struct.gx_device_s* %235, i16* %236) #4
  store i64 %call179, i64* %color, align 8, !tbaa !187
  %237 = load i64, i64* %color, align 8, !tbaa !187
  %cmp180 = icmp ne i64 %237, -1
  br i1 %cmp180, label %if.then.182, label %if.end.183

if.then.182:                                      ; preds = %if.else.177
  %238 = load i64, i64* %color, align 8, !tbaa !187
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  store i64 %238, i64* %pure, align 8, !tbaa !187
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_pure, %struct.gx_device_color_type_s** %type, align 8, !tbaa !188
  br label %if.end.183

if.end.183:                                       ; preds = %if.then.182, %if.else.177
  br label %if.end.184

if.end.184:                                       ; preds = %if.end.183, %if.then.176
  %type185 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 0
  %239 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type185, align 8, !tbaa !188
  %cmp186 = icmp eq %struct.gx_device_color_type_s* %239, @gx_dc_type_data_pure
  br i1 %cmp186, label %if.then.188, label %if.else.642

if.then.188:                                      ; preds = %if.end.184
  %240 = bitcast i64* %color189 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %240) #1
  %colors190 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 1
  %pure191 = bitcast %union._c* %colors190 to i64*
  %241 = load i64, i64* %pure191, align 8, !tbaa !187
  store i64 %241, i64* %color189, align 8, !tbaa !187
  %242 = load i32, i32* %spp_cm, align 4, !tbaa !30
  switch i32 %242, label %sw.default.545 [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.291
    i32 4, label %sw.bb.416
  ]

sw.bb:                                            ; preds = %if.then.188
  br label %do.body.192

do.body.192:                                      ; preds = %land.end, %sw.bb
  br label %do.body.193

do.body.193:                                      ; preds = %do.body.192
  %243 = load i32, i32* %bpp, align 4, !tbaa !30
  %shr194 = ashr i32 %243, 2
  switch i32 %shr194, label %sw.default [
    i32 0, label %sw.bb.195
    i32 1, label %sw.bb.212
    i32 3, label %sw.bb.225
    i32 16, label %sw.bb.244
    i32 14, label %sw.bb.248
    i32 12, label %sw.bb.252
    i32 10, label %sw.bb.256
    i32 8, label %sw.bb.260
    i32 6, label %sw.bb.264
    i32 4, label %sw.bb.268
    i32 2, label %sw.bb.272
  ]

sw.bb.195:                                        ; preds = %do.body.193
  %244 = load i32, i32* %bpp, align 4, !tbaa !30
  %245 = load i32, i32* %l_dbit, align 4, !tbaa !30
  %add196 = add nsw i32 %245, %244
  store i32 %add196, i32* %l_dbit, align 4, !tbaa !30
  %cmp197 = icmp eq i32 %add196, 8
  br i1 %cmp197, label %if.then.199, label %if.else.204

if.then.199:                                      ; preds = %sw.bb.195
  %246 = load i8, i8* %l_dbyte, align 1, !tbaa !100
  %conv200 = zext i8 %246 to i32
  %247 = load i64, i64* %color189, align 8, !tbaa !187
  %conv201 = trunc i64 %247 to i8
  %conv202 = zext i8 %conv201 to i32
  %or = or i32 %conv200, %conv202
  %conv203 = trunc i32 %or to i8
  %248 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %248, i32 1
  store i8* %incdec.ptr, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv203, i8* %248, align 1, !tbaa !100
  store i8 0, i8* %l_dbyte, align 1, !tbaa !100
  store i32 0, i32* %l_dbit, align 4, !tbaa !30
  br label %if.end.211

if.else.204:                                      ; preds = %sw.bb.195
  %249 = load i64, i64* %color189, align 8, !tbaa !187
  %250 = load i32, i32* %l_dbit, align 4, !tbaa !30
  %sub = sub nsw i32 8, %250
  %sh_prom = zext i32 %sub to i64
  %shl205 = shl i64 %249, %sh_prom
  %conv206 = trunc i64 %shl205 to i8
  %conv207 = zext i8 %conv206 to i32
  %251 = load i8, i8* %l_dbyte, align 1, !tbaa !100
  %conv208 = zext i8 %251 to i32
  %or209 = or i32 %conv208, %conv207
  %conv210 = trunc i32 %or209 to i8
  store i8 %conv210, i8* %l_dbyte, align 1, !tbaa !100
  br label %if.end.211

if.end.211:                                       ; preds = %if.else.204, %if.then.199
  br label %sw.epilog

sw.bb.212:                                        ; preds = %do.body.193
  %252 = load i32, i32* %l_dbit, align 4, !tbaa !30
  %xor = xor i32 %252, 4
  store i32 %xor, i32* %l_dbit, align 4, !tbaa !30
  %tobool213 = icmp ne i32 %xor, 0
  br i1 %tobool213, label %if.then.214, label %if.else.217

if.then.214:                                      ; preds = %sw.bb.212
  %253 = load i64, i64* %color189, align 8, !tbaa !187
  %shl215 = shl i64 %253, 4
  %conv216 = trunc i64 %shl215 to i8
  store i8 %conv216, i8* %l_dbyte, align 1, !tbaa !100
  br label %if.end.224

if.else.217:                                      ; preds = %sw.bb.212
  %254 = load i8, i8* %l_dbyte, align 1, !tbaa !100
  %conv218 = zext i8 %254 to i32
  %255 = load i64, i64* %color189, align 8, !tbaa !187
  %conv219 = trunc i64 %255 to i8
  %conv220 = zext i8 %conv219 to i32
  %or221 = or i32 %conv218, %conv220
  %conv222 = trunc i32 %or221 to i8
  %256 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr223 = getelementptr inbounds i8, i8* %256, i32 1
  store i8* %incdec.ptr223, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv222, i8* %256, align 1, !tbaa !100
  br label %if.end.224

if.end.224:                                       ; preds = %if.else.217, %if.then.214
  br label %sw.epilog

sw.bb.225:                                        ; preds = %do.body.193
  %257 = load i32, i32* %l_dbit, align 4, !tbaa !30
  %xor226 = xor i32 %257, 4
  store i32 %xor226, i32* %l_dbit, align 4, !tbaa !30
  %tobool227 = icmp ne i32 %xor226, 0
  br i1 %tobool227, label %if.then.228, label %if.else.234

if.then.228:                                      ; preds = %sw.bb.225
  %258 = load i64, i64* %color189, align 8, !tbaa !187
  %shr229 = lshr i64 %258, 4
  %conv230 = trunc i64 %shr229 to i8
  %259 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr231 = getelementptr inbounds i8, i8* %259, i32 1
  store i8* %incdec.ptr231, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv230, i8* %259, align 1, !tbaa !100
  %260 = load i64, i64* %color189, align 8, !tbaa !187
  %shl232 = shl i64 %260, 4
  %conv233 = trunc i64 %shl232 to i8
  store i8 %conv233, i8* %l_dbyte, align 1, !tbaa !100
  br label %if.end.243

if.else.234:                                      ; preds = %sw.bb.225
  %261 = load i8, i8* %l_dbyte, align 1, !tbaa !100
  %conv235 = zext i8 %261 to i32
  %262 = load i64, i64* %color189, align 8, !tbaa !187
  %shr236 = lshr i64 %262, 8
  %conv237 = trunc i64 %shr236 to i8
  %conv238 = zext i8 %conv237 to i32
  %or239 = or i32 %conv235, %conv238
  %conv240 = trunc i32 %or239 to i8
  %263 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv240, i8* %263, align 1, !tbaa !100
  %264 = load i64, i64* %color189, align 8, !tbaa !187
  %conv241 = trunc i64 %264 to i8
  %265 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %265, i64 1
  store i8 %conv241, i8* %arrayidx, align 1, !tbaa !100
  %266 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %add.ptr242 = getelementptr inbounds i8, i8* %266, i64 2
  store i8* %add.ptr242, i8** %l_dptr, align 8, !tbaa !1
  br label %if.end.243

if.end.243:                                       ; preds = %if.else.234, %if.then.228
  br label %sw.epilog

sw.bb.244:                                        ; preds = %do.body.193
  %267 = load i64, i64* %color189, align 8, !tbaa !187
  %shr245 = lshr i64 %267, 56
  %conv246 = trunc i64 %shr245 to i8
  %268 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr247 = getelementptr inbounds i8, i8* %268, i32 1
  store i8* %incdec.ptr247, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv246, i8* %268, align 1, !tbaa !100
  br label %sw.bb.248

sw.bb.248:                                        ; preds = %do.body.193, %sw.bb.244
  %269 = load i64, i64* %color189, align 8, !tbaa !187
  %shr249 = lshr i64 %269, 48
  %conv250 = trunc i64 %shr249 to i8
  %270 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr251 = getelementptr inbounds i8, i8* %270, i32 1
  store i8* %incdec.ptr251, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv250, i8* %270, align 1, !tbaa !100
  br label %sw.bb.252

sw.bb.252:                                        ; preds = %do.body.193, %sw.bb.248
  %271 = load i64, i64* %color189, align 8, !tbaa !187
  %shr253 = lshr i64 %271, 40
  %conv254 = trunc i64 %shr253 to i8
  %272 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr255 = getelementptr inbounds i8, i8* %272, i32 1
  store i8* %incdec.ptr255, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv254, i8* %272, align 1, !tbaa !100
  br label %sw.bb.256

sw.bb.256:                                        ; preds = %do.body.193, %sw.bb.252
  %273 = load i64, i64* %color189, align 8, !tbaa !187
  %shr257 = lshr i64 %273, 32
  %conv258 = trunc i64 %shr257 to i8
  %274 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr259 = getelementptr inbounds i8, i8* %274, i32 1
  store i8* %incdec.ptr259, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv258, i8* %274, align 1, !tbaa !100
  br label %sw.bb.260

sw.bb.260:                                        ; preds = %do.body.193, %sw.bb.256
  %275 = load i64, i64* %color189, align 8, !tbaa !187
  %shr261 = lshr i64 %275, 24
  %conv262 = trunc i64 %shr261 to i8
  %276 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr263 = getelementptr inbounds i8, i8* %276, i32 1
  store i8* %incdec.ptr263, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv262, i8* %276, align 1, !tbaa !100
  br label %sw.bb.264

sw.bb.264:                                        ; preds = %do.body.193, %sw.bb.260
  %277 = load i64, i64* %color189, align 8, !tbaa !187
  %shr265 = lshr i64 %277, 16
  %conv266 = trunc i64 %shr265 to i8
  %278 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr267 = getelementptr inbounds i8, i8* %278, i32 1
  store i8* %incdec.ptr267, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv266, i8* %278, align 1, !tbaa !100
  br label %sw.bb.268

sw.bb.268:                                        ; preds = %do.body.193, %sw.bb.264
  %279 = load i64, i64* %color189, align 8, !tbaa !187
  %shr269 = lshr i64 %279, 8
  %conv270 = trunc i64 %shr269 to i8
  %280 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr271 = getelementptr inbounds i8, i8* %280, i32 1
  store i8* %incdec.ptr271, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv270, i8* %280, align 1, !tbaa !100
  br label %sw.bb.272

sw.bb.272:                                        ; preds = %do.body.193, %sw.bb.268
  %281 = load i64, i64* %color189, align 8, !tbaa !187
  %conv273 = trunc i64 %281 to i8
  %282 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr274 = getelementptr inbounds i8, i8* %282, i32 1
  store i8* %incdec.ptr274, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv273, i8* %282, align 1, !tbaa !100
  br label %sw.epilog

sw.default:                                       ; preds = %do.body.193
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.272, %if.end.243, %if.end.224, %if.end.211
  br label %do.cond.275

do.cond.275:                                      ; preds = %sw.epilog
  br label %do.end.276

do.end.276:                                       ; preds = %do.cond.275
  br label %do.body.277

do.body.277:                                      ; preds = %do.end.276
  br label %do.cond.278

do.cond.278:                                      ; preds = %do.body.277
  br label %do.end.279

do.end.279:                                       ; preds = %do.cond.278
  %283 = load i32, i32* %x90, align 4, !tbaa !30
  %inc = add nsw i32 %283, 1
  store i32 %inc, i32* %x90, align 4, !tbaa !30
  %284 = load i16*, i16** %p_cm_interp, align 8, !tbaa !1
  %add.ptr280 = getelementptr inbounds i16, i16* %284, i64 1
  store i16* %add.ptr280, i16** %p_cm_interp, align 8, !tbaa !1
  br label %do.cond.281

do.cond.281:                                      ; preds = %do.end.279
  %285 = load i32, i32* %x90, align 4, !tbaa !30
  %286 = load i32, i32* %xe, align 4, !tbaa !30
  %cmp282 = icmp slt i32 %285, %286
  br i1 %cmp282, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond.281
  %287 = load i16*, i16** %p_cm_interp, align 8, !tbaa !1
  %arrayidx284 = getelementptr inbounds i16, i16* %287, i64 -1
  %288 = load i16, i16* %arrayidx284, align 2, !tbaa !189
  %conv285 = zext i16 %288 to i32
  %289 = load i16*, i16** %p_cm_interp, align 8, !tbaa !1
  %arrayidx286 = getelementptr inbounds i16, i16* %289, i64 0
  %290 = load i16, i16* %arrayidx286, align 2, !tbaa !189
  %conv287 = zext i16 %290 to i32
  %cmp288 = icmp eq i32 %conv285, %conv287
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond.281
  %291 = phi i1 [ false, %do.cond.281 ], [ %cmp288, %land.rhs ]
  br i1 %291, label %do.body.192, label %do.end.290

do.end.290:                                       ; preds = %land.end
  br label %sw.epilog.641

sw.bb.291:                                        ; preds = %if.then.188
  br label %do.body.292

do.body.292:                                      ; preds = %land.end.414, %sw.bb.291
  br label %do.body.293

do.body.293:                                      ; preds = %do.body.292
  %292 = load i32, i32* %bpp, align 4, !tbaa !30
  %shr294 = ashr i32 %292, 2
  switch i32 %shr294, label %sw.default.381 [
    i32 0, label %sw.bb.295
    i32 1, label %sw.bb.316
    i32 3, label %sw.bb.330
    i32 16, label %sw.bb.350
    i32 14, label %sw.bb.354
    i32 12, label %sw.bb.358
    i32 10, label %sw.bb.362
    i32 8, label %sw.bb.366
    i32 6, label %sw.bb.370
    i32 4, label %sw.bb.374
    i32 2, label %sw.bb.378
  ]

sw.bb.295:                                        ; preds = %do.body.293
  %293 = load i32, i32* %bpp, align 4, !tbaa !30
  %294 = load i32, i32* %l_dbit, align 4, !tbaa !30
  %add296 = add nsw i32 %294, %293
  store i32 %add296, i32* %l_dbit, align 4, !tbaa !30
  %cmp297 = icmp eq i32 %add296, 8
  br i1 %cmp297, label %if.then.299, label %if.else.306

if.then.299:                                      ; preds = %sw.bb.295
  %295 = load i8, i8* %l_dbyte, align 1, !tbaa !100
  %conv300 = zext i8 %295 to i32
  %296 = load i64, i64* %color189, align 8, !tbaa !187
  %conv301 = trunc i64 %296 to i8
  %conv302 = zext i8 %conv301 to i32
  %or303 = or i32 %conv300, %conv302
  %conv304 = trunc i32 %or303 to i8
  %297 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr305 = getelementptr inbounds i8, i8* %297, i32 1
  store i8* %incdec.ptr305, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv304, i8* %297, align 1, !tbaa !100
  store i8 0, i8* %l_dbyte, align 1, !tbaa !100
  store i32 0, i32* %l_dbit, align 4, !tbaa !30
  br label %if.end.315

if.else.306:                                      ; preds = %sw.bb.295
  %298 = load i64, i64* %color189, align 8, !tbaa !187
  %299 = load i32, i32* %l_dbit, align 4, !tbaa !30
  %sub307 = sub nsw i32 8, %299
  %sh_prom308 = zext i32 %sub307 to i64
  %shl309 = shl i64 %298, %sh_prom308
  %conv310 = trunc i64 %shl309 to i8
  %conv311 = zext i8 %conv310 to i32
  %300 = load i8, i8* %l_dbyte, align 1, !tbaa !100
  %conv312 = zext i8 %300 to i32
  %or313 = or i32 %conv312, %conv311
  %conv314 = trunc i32 %or313 to i8
  store i8 %conv314, i8* %l_dbyte, align 1, !tbaa !100
  br label %if.end.315

if.end.315:                                       ; preds = %if.else.306, %if.then.299
  br label %sw.epilog.382

sw.bb.316:                                        ; preds = %do.body.293
  %301 = load i32, i32* %l_dbit, align 4, !tbaa !30
  %xor317 = xor i32 %301, 4
  store i32 %xor317, i32* %l_dbit, align 4, !tbaa !30
  %tobool318 = icmp ne i32 %xor317, 0
  br i1 %tobool318, label %if.then.319, label %if.else.322

if.then.319:                                      ; preds = %sw.bb.316
  %302 = load i64, i64* %color189, align 8, !tbaa !187
  %shl320 = shl i64 %302, 4
  %conv321 = trunc i64 %shl320 to i8
  store i8 %conv321, i8* %l_dbyte, align 1, !tbaa !100
  br label %if.end.329

if.else.322:                                      ; preds = %sw.bb.316
  %303 = load i8, i8* %l_dbyte, align 1, !tbaa !100
  %conv323 = zext i8 %303 to i32
  %304 = load i64, i64* %color189, align 8, !tbaa !187
  %conv324 = trunc i64 %304 to i8
  %conv325 = zext i8 %conv324 to i32
  %or326 = or i32 %conv323, %conv325
  %conv327 = trunc i32 %or326 to i8
  %305 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr328 = getelementptr inbounds i8, i8* %305, i32 1
  store i8* %incdec.ptr328, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv327, i8* %305, align 1, !tbaa !100
  br label %if.end.329

if.end.329:                                       ; preds = %if.else.322, %if.then.319
  br label %sw.epilog.382

sw.bb.330:                                        ; preds = %do.body.293
  %306 = load i32, i32* %l_dbit, align 4, !tbaa !30
  %xor331 = xor i32 %306, 4
  store i32 %xor331, i32* %l_dbit, align 4, !tbaa !30
  %tobool332 = icmp ne i32 %xor331, 0
  br i1 %tobool332, label %if.then.333, label %if.else.339

if.then.333:                                      ; preds = %sw.bb.330
  %307 = load i64, i64* %color189, align 8, !tbaa !187
  %shr334 = lshr i64 %307, 4
  %conv335 = trunc i64 %shr334 to i8
  %308 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr336 = getelementptr inbounds i8, i8* %308, i32 1
  store i8* %incdec.ptr336, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv335, i8* %308, align 1, !tbaa !100
  %309 = load i64, i64* %color189, align 8, !tbaa !187
  %shl337 = shl i64 %309, 4
  %conv338 = trunc i64 %shl337 to i8
  store i8 %conv338, i8* %l_dbyte, align 1, !tbaa !100
  br label %if.end.349

if.else.339:                                      ; preds = %sw.bb.330
  %310 = load i8, i8* %l_dbyte, align 1, !tbaa !100
  %conv340 = zext i8 %310 to i32
  %311 = load i64, i64* %color189, align 8, !tbaa !187
  %shr341 = lshr i64 %311, 8
  %conv342 = trunc i64 %shr341 to i8
  %conv343 = zext i8 %conv342 to i32
  %or344 = or i32 %conv340, %conv343
  %conv345 = trunc i32 %or344 to i8
  %312 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv345, i8* %312, align 1, !tbaa !100
  %313 = load i64, i64* %color189, align 8, !tbaa !187
  %conv346 = trunc i64 %313 to i8
  %314 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %arrayidx347 = getelementptr inbounds i8, i8* %314, i64 1
  store i8 %conv346, i8* %arrayidx347, align 1, !tbaa !100
  %315 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %add.ptr348 = getelementptr inbounds i8, i8* %315, i64 2
  store i8* %add.ptr348, i8** %l_dptr, align 8, !tbaa !1
  br label %if.end.349

if.end.349:                                       ; preds = %if.else.339, %if.then.333
  br label %sw.epilog.382

sw.bb.350:                                        ; preds = %do.body.293
  %316 = load i64, i64* %color189, align 8, !tbaa !187
  %shr351 = lshr i64 %316, 56
  %conv352 = trunc i64 %shr351 to i8
  %317 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr353 = getelementptr inbounds i8, i8* %317, i32 1
  store i8* %incdec.ptr353, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv352, i8* %317, align 1, !tbaa !100
  br label %sw.bb.354

sw.bb.354:                                        ; preds = %do.body.293, %sw.bb.350
  %318 = load i64, i64* %color189, align 8, !tbaa !187
  %shr355 = lshr i64 %318, 48
  %conv356 = trunc i64 %shr355 to i8
  %319 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr357 = getelementptr inbounds i8, i8* %319, i32 1
  store i8* %incdec.ptr357, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv356, i8* %319, align 1, !tbaa !100
  br label %sw.bb.358

sw.bb.358:                                        ; preds = %do.body.293, %sw.bb.354
  %320 = load i64, i64* %color189, align 8, !tbaa !187
  %shr359 = lshr i64 %320, 40
  %conv360 = trunc i64 %shr359 to i8
  %321 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr361 = getelementptr inbounds i8, i8* %321, i32 1
  store i8* %incdec.ptr361, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv360, i8* %321, align 1, !tbaa !100
  br label %sw.bb.362

sw.bb.362:                                        ; preds = %do.body.293, %sw.bb.358
  %322 = load i64, i64* %color189, align 8, !tbaa !187
  %shr363 = lshr i64 %322, 32
  %conv364 = trunc i64 %shr363 to i8
  %323 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr365 = getelementptr inbounds i8, i8* %323, i32 1
  store i8* %incdec.ptr365, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv364, i8* %323, align 1, !tbaa !100
  br label %sw.bb.366

sw.bb.366:                                        ; preds = %do.body.293, %sw.bb.362
  %324 = load i64, i64* %color189, align 8, !tbaa !187
  %shr367 = lshr i64 %324, 24
  %conv368 = trunc i64 %shr367 to i8
  %325 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr369 = getelementptr inbounds i8, i8* %325, i32 1
  store i8* %incdec.ptr369, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv368, i8* %325, align 1, !tbaa !100
  br label %sw.bb.370

sw.bb.370:                                        ; preds = %do.body.293, %sw.bb.366
  %326 = load i64, i64* %color189, align 8, !tbaa !187
  %shr371 = lshr i64 %326, 16
  %conv372 = trunc i64 %shr371 to i8
  %327 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr373 = getelementptr inbounds i8, i8* %327, i32 1
  store i8* %incdec.ptr373, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv372, i8* %327, align 1, !tbaa !100
  br label %sw.bb.374

sw.bb.374:                                        ; preds = %do.body.293, %sw.bb.370
  %328 = load i64, i64* %color189, align 8, !tbaa !187
  %shr375 = lshr i64 %328, 8
  %conv376 = trunc i64 %shr375 to i8
  %329 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr377 = getelementptr inbounds i8, i8* %329, i32 1
  store i8* %incdec.ptr377, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv376, i8* %329, align 1, !tbaa !100
  br label %sw.bb.378

sw.bb.378:                                        ; preds = %do.body.293, %sw.bb.374
  %330 = load i64, i64* %color189, align 8, !tbaa !187
  %conv379 = trunc i64 %330 to i8
  %331 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr380 = getelementptr inbounds i8, i8* %331, i32 1
  store i8* %incdec.ptr380, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv379, i8* %331, align 1, !tbaa !100
  br label %sw.epilog.382

sw.default.381:                                   ; preds = %do.body.293
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog.382:                                    ; preds = %sw.bb.378, %if.end.349, %if.end.329, %if.end.315
  br label %do.cond.383

do.cond.383:                                      ; preds = %sw.epilog.382
  br label %do.end.384

do.end.384:                                       ; preds = %do.cond.383
  br label %do.body.385

do.body.385:                                      ; preds = %do.end.384
  br label %do.cond.386

do.cond.386:                                      ; preds = %do.body.385
  br label %do.end.387

do.end.387:                                       ; preds = %do.cond.386
  %332 = load i32, i32* %x90, align 4, !tbaa !30
  %inc388 = add nsw i32 %332, 1
  store i32 %inc388, i32* %x90, align 4, !tbaa !30
  %333 = load i16*, i16** %p_cm_interp, align 8, !tbaa !1
  %add.ptr389 = getelementptr inbounds i16, i16* %333, i64 3
  store i16* %add.ptr389, i16** %p_cm_interp, align 8, !tbaa !1
  br label %do.cond.390

do.cond.390:                                      ; preds = %do.end.387
  %334 = load i32, i32* %x90, align 4, !tbaa !30
  %335 = load i32, i32* %xe, align 4, !tbaa !30
  %cmp391 = icmp slt i32 %334, %335
  br i1 %cmp391, label %land.lhs.true.393, label %land.end.414

land.lhs.true.393:                                ; preds = %do.cond.390
  %336 = load i16*, i16** %p_cm_interp, align 8, !tbaa !1
  %arrayidx394 = getelementptr inbounds i16, i16* %336, i64 -3
  %337 = load i16, i16* %arrayidx394, align 2, !tbaa !189
  %conv395 = zext i16 %337 to i32
  %338 = load i16*, i16** %p_cm_interp, align 8, !tbaa !1
  %arrayidx396 = getelementptr inbounds i16, i16* %338, i64 0
  %339 = load i16, i16* %arrayidx396, align 2, !tbaa !189
  %conv397 = zext i16 %339 to i32
  %cmp398 = icmp eq i32 %conv395, %conv397
  br i1 %cmp398, label %land.lhs.true.400, label %land.end.414

land.lhs.true.400:                                ; preds = %land.lhs.true.393
  %340 = load i16*, i16** %p_cm_interp, align 8, !tbaa !1
  %arrayidx401 = getelementptr inbounds i16, i16* %340, i64 -2
  %341 = load i16, i16* %arrayidx401, align 2, !tbaa !189
  %conv402 = zext i16 %341 to i32
  %342 = load i16*, i16** %p_cm_interp, align 8, !tbaa !1
  %arrayidx403 = getelementptr inbounds i16, i16* %342, i64 1
  %343 = load i16, i16* %arrayidx403, align 2, !tbaa !189
  %conv404 = zext i16 %343 to i32
  %cmp405 = icmp eq i32 %conv402, %conv404
  br i1 %cmp405, label %land.rhs.407, label %land.end.414

land.rhs.407:                                     ; preds = %land.lhs.true.400
  %344 = load i16*, i16** %p_cm_interp, align 8, !tbaa !1
  %arrayidx408 = getelementptr inbounds i16, i16* %344, i64 -1
  %345 = load i16, i16* %arrayidx408, align 2, !tbaa !189
  %conv409 = zext i16 %345 to i32
  %346 = load i16*, i16** %p_cm_interp, align 8, !tbaa !1
  %arrayidx410 = getelementptr inbounds i16, i16* %346, i64 2
  %347 = load i16, i16* %arrayidx410, align 2, !tbaa !189
  %conv411 = zext i16 %347 to i32
  %cmp412 = icmp eq i32 %conv409, %conv411
  br label %land.end.414

land.end.414:                                     ; preds = %land.rhs.407, %land.lhs.true.400, %land.lhs.true.393, %do.cond.390
  %348 = phi i1 [ false, %land.lhs.true.400 ], [ false, %land.lhs.true.393 ], [ false, %do.cond.390 ], [ %cmp412, %land.rhs.407 ]
  br i1 %348, label %do.body.292, label %do.end.415

do.end.415:                                       ; preds = %land.end.414
  br label %sw.epilog.641

sw.bb.416:                                        ; preds = %if.then.188
  br label %do.body.417

do.body.417:                                      ; preds = %land.end.543, %sw.bb.416
  br label %do.body.418

do.body.418:                                      ; preds = %do.body.417
  %349 = load i32, i32* %bpp, align 4, !tbaa !30
  %shr419 = ashr i32 %349, 2
  switch i32 %shr419, label %sw.default.506 [
    i32 0, label %sw.bb.420
    i32 1, label %sw.bb.441
    i32 3, label %sw.bb.455
    i32 16, label %sw.bb.475
    i32 14, label %sw.bb.479
    i32 12, label %sw.bb.483
    i32 10, label %sw.bb.487
    i32 8, label %sw.bb.491
    i32 6, label %sw.bb.495
    i32 4, label %sw.bb.499
    i32 2, label %sw.bb.503
  ]

sw.bb.420:                                        ; preds = %do.body.418
  %350 = load i32, i32* %bpp, align 4, !tbaa !30
  %351 = load i32, i32* %l_dbit, align 4, !tbaa !30
  %add421 = add nsw i32 %351, %350
  store i32 %add421, i32* %l_dbit, align 4, !tbaa !30
  %cmp422 = icmp eq i32 %add421, 8
  br i1 %cmp422, label %if.then.424, label %if.else.431

if.then.424:                                      ; preds = %sw.bb.420
  %352 = load i8, i8* %l_dbyte, align 1, !tbaa !100
  %conv425 = zext i8 %352 to i32
  %353 = load i64, i64* %color189, align 8, !tbaa !187
  %conv426 = trunc i64 %353 to i8
  %conv427 = zext i8 %conv426 to i32
  %or428 = or i32 %conv425, %conv427
  %conv429 = trunc i32 %or428 to i8
  %354 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr430 = getelementptr inbounds i8, i8* %354, i32 1
  store i8* %incdec.ptr430, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv429, i8* %354, align 1, !tbaa !100
  store i8 0, i8* %l_dbyte, align 1, !tbaa !100
  store i32 0, i32* %l_dbit, align 4, !tbaa !30
  br label %if.end.440

if.else.431:                                      ; preds = %sw.bb.420
  %355 = load i64, i64* %color189, align 8, !tbaa !187
  %356 = load i32, i32* %l_dbit, align 4, !tbaa !30
  %sub432 = sub nsw i32 8, %356
  %sh_prom433 = zext i32 %sub432 to i64
  %shl434 = shl i64 %355, %sh_prom433
  %conv435 = trunc i64 %shl434 to i8
  %conv436 = zext i8 %conv435 to i32
  %357 = load i8, i8* %l_dbyte, align 1, !tbaa !100
  %conv437 = zext i8 %357 to i32
  %or438 = or i32 %conv437, %conv436
  %conv439 = trunc i32 %or438 to i8
  store i8 %conv439, i8* %l_dbyte, align 1, !tbaa !100
  br label %if.end.440

if.end.440:                                       ; preds = %if.else.431, %if.then.424
  br label %sw.epilog.507

sw.bb.441:                                        ; preds = %do.body.418
  %358 = load i32, i32* %l_dbit, align 4, !tbaa !30
  %xor442 = xor i32 %358, 4
  store i32 %xor442, i32* %l_dbit, align 4, !tbaa !30
  %tobool443 = icmp ne i32 %xor442, 0
  br i1 %tobool443, label %if.then.444, label %if.else.447

if.then.444:                                      ; preds = %sw.bb.441
  %359 = load i64, i64* %color189, align 8, !tbaa !187
  %shl445 = shl i64 %359, 4
  %conv446 = trunc i64 %shl445 to i8
  store i8 %conv446, i8* %l_dbyte, align 1, !tbaa !100
  br label %if.end.454

if.else.447:                                      ; preds = %sw.bb.441
  %360 = load i8, i8* %l_dbyte, align 1, !tbaa !100
  %conv448 = zext i8 %360 to i32
  %361 = load i64, i64* %color189, align 8, !tbaa !187
  %conv449 = trunc i64 %361 to i8
  %conv450 = zext i8 %conv449 to i32
  %or451 = or i32 %conv448, %conv450
  %conv452 = trunc i32 %or451 to i8
  %362 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr453 = getelementptr inbounds i8, i8* %362, i32 1
  store i8* %incdec.ptr453, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv452, i8* %362, align 1, !tbaa !100
  br label %if.end.454

if.end.454:                                       ; preds = %if.else.447, %if.then.444
  br label %sw.epilog.507

sw.bb.455:                                        ; preds = %do.body.418
  %363 = load i32, i32* %l_dbit, align 4, !tbaa !30
  %xor456 = xor i32 %363, 4
  store i32 %xor456, i32* %l_dbit, align 4, !tbaa !30
  %tobool457 = icmp ne i32 %xor456, 0
  br i1 %tobool457, label %if.then.458, label %if.else.464

if.then.458:                                      ; preds = %sw.bb.455
  %364 = load i64, i64* %color189, align 8, !tbaa !187
  %shr459 = lshr i64 %364, 4
  %conv460 = trunc i64 %shr459 to i8
  %365 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr461 = getelementptr inbounds i8, i8* %365, i32 1
  store i8* %incdec.ptr461, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv460, i8* %365, align 1, !tbaa !100
  %366 = load i64, i64* %color189, align 8, !tbaa !187
  %shl462 = shl i64 %366, 4
  %conv463 = trunc i64 %shl462 to i8
  store i8 %conv463, i8* %l_dbyte, align 1, !tbaa !100
  br label %if.end.474

if.else.464:                                      ; preds = %sw.bb.455
  %367 = load i8, i8* %l_dbyte, align 1, !tbaa !100
  %conv465 = zext i8 %367 to i32
  %368 = load i64, i64* %color189, align 8, !tbaa !187
  %shr466 = lshr i64 %368, 8
  %conv467 = trunc i64 %shr466 to i8
  %conv468 = zext i8 %conv467 to i32
  %or469 = or i32 %conv465, %conv468
  %conv470 = trunc i32 %or469 to i8
  %369 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv470, i8* %369, align 1, !tbaa !100
  %370 = load i64, i64* %color189, align 8, !tbaa !187
  %conv471 = trunc i64 %370 to i8
  %371 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %arrayidx472 = getelementptr inbounds i8, i8* %371, i64 1
  store i8 %conv471, i8* %arrayidx472, align 1, !tbaa !100
  %372 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %add.ptr473 = getelementptr inbounds i8, i8* %372, i64 2
  store i8* %add.ptr473, i8** %l_dptr, align 8, !tbaa !1
  br label %if.end.474

if.end.474:                                       ; preds = %if.else.464, %if.then.458
  br label %sw.epilog.507

sw.bb.475:                                        ; preds = %do.body.418
  %373 = load i64, i64* %color189, align 8, !tbaa !187
  %shr476 = lshr i64 %373, 56
  %conv477 = trunc i64 %shr476 to i8
  %374 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr478 = getelementptr inbounds i8, i8* %374, i32 1
  store i8* %incdec.ptr478, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv477, i8* %374, align 1, !tbaa !100
  br label %sw.bb.479

sw.bb.479:                                        ; preds = %do.body.418, %sw.bb.475
  %375 = load i64, i64* %color189, align 8, !tbaa !187
  %shr480 = lshr i64 %375, 48
  %conv481 = trunc i64 %shr480 to i8
  %376 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr482 = getelementptr inbounds i8, i8* %376, i32 1
  store i8* %incdec.ptr482, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv481, i8* %376, align 1, !tbaa !100
  br label %sw.bb.483

sw.bb.483:                                        ; preds = %do.body.418, %sw.bb.479
  %377 = load i64, i64* %color189, align 8, !tbaa !187
  %shr484 = lshr i64 %377, 40
  %conv485 = trunc i64 %shr484 to i8
  %378 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr486 = getelementptr inbounds i8, i8* %378, i32 1
  store i8* %incdec.ptr486, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv485, i8* %378, align 1, !tbaa !100
  br label %sw.bb.487

sw.bb.487:                                        ; preds = %do.body.418, %sw.bb.483
  %379 = load i64, i64* %color189, align 8, !tbaa !187
  %shr488 = lshr i64 %379, 32
  %conv489 = trunc i64 %shr488 to i8
  %380 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr490 = getelementptr inbounds i8, i8* %380, i32 1
  store i8* %incdec.ptr490, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv489, i8* %380, align 1, !tbaa !100
  br label %sw.bb.491

sw.bb.491:                                        ; preds = %do.body.418, %sw.bb.487
  %381 = load i64, i64* %color189, align 8, !tbaa !187
  %shr492 = lshr i64 %381, 24
  %conv493 = trunc i64 %shr492 to i8
  %382 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr494 = getelementptr inbounds i8, i8* %382, i32 1
  store i8* %incdec.ptr494, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv493, i8* %382, align 1, !tbaa !100
  br label %sw.bb.495

sw.bb.495:                                        ; preds = %do.body.418, %sw.bb.491
  %383 = load i64, i64* %color189, align 8, !tbaa !187
  %shr496 = lshr i64 %383, 16
  %conv497 = trunc i64 %shr496 to i8
  %384 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr498 = getelementptr inbounds i8, i8* %384, i32 1
  store i8* %incdec.ptr498, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv497, i8* %384, align 1, !tbaa !100
  br label %sw.bb.499

sw.bb.499:                                        ; preds = %do.body.418, %sw.bb.495
  %385 = load i64, i64* %color189, align 8, !tbaa !187
  %shr500 = lshr i64 %385, 8
  %conv501 = trunc i64 %shr500 to i8
  %386 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr502 = getelementptr inbounds i8, i8* %386, i32 1
  store i8* %incdec.ptr502, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv501, i8* %386, align 1, !tbaa !100
  br label %sw.bb.503

sw.bb.503:                                        ; preds = %do.body.418, %sw.bb.499
  %387 = load i64, i64* %color189, align 8, !tbaa !187
  %conv504 = trunc i64 %387 to i8
  %388 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr505 = getelementptr inbounds i8, i8* %388, i32 1
  store i8* %incdec.ptr505, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv504, i8* %388, align 1, !tbaa !100
  br label %sw.epilog.507

sw.default.506:                                   ; preds = %do.body.418
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog.507:                                    ; preds = %sw.bb.503, %if.end.474, %if.end.454, %if.end.440
  br label %do.cond.508

do.cond.508:                                      ; preds = %sw.epilog.507
  br label %do.end.509

do.end.509:                                       ; preds = %do.cond.508
  %389 = load i32, i32* %x90, align 4, !tbaa !30
  %inc510 = add nsw i32 %389, 1
  store i32 %inc510, i32* %x90, align 4, !tbaa !30
  %390 = load i16*, i16** %p_cm_interp, align 8, !tbaa !1
  %add.ptr511 = getelementptr inbounds i16, i16* %390, i64 4
  store i16* %add.ptr511, i16** %p_cm_interp, align 8, !tbaa !1
  br label %do.cond.512

do.cond.512:                                      ; preds = %do.end.509
  %391 = load i32, i32* %x90, align 4, !tbaa !30
  %392 = load i32, i32* %xe, align 4, !tbaa !30
  %cmp513 = icmp slt i32 %391, %392
  br i1 %cmp513, label %land.lhs.true.515, label %land.end.543

land.lhs.true.515:                                ; preds = %do.cond.512
  %393 = load i16*, i16** %p_cm_interp, align 8, !tbaa !1
  %arrayidx516 = getelementptr inbounds i16, i16* %393, i64 -4
  %394 = load i16, i16* %arrayidx516, align 2, !tbaa !189
  %conv517 = zext i16 %394 to i32
  %395 = load i16*, i16** %p_cm_interp, align 8, !tbaa !1
  %arrayidx518 = getelementptr inbounds i16, i16* %395, i64 0
  %396 = load i16, i16* %arrayidx518, align 2, !tbaa !189
  %conv519 = zext i16 %396 to i32
  %cmp520 = icmp eq i32 %conv517, %conv519
  br i1 %cmp520, label %land.lhs.true.522, label %land.end.543

land.lhs.true.522:                                ; preds = %land.lhs.true.515
  %397 = load i16*, i16** %p_cm_interp, align 8, !tbaa !1
  %arrayidx523 = getelementptr inbounds i16, i16* %397, i64 -3
  %398 = load i16, i16* %arrayidx523, align 2, !tbaa !189
  %conv524 = zext i16 %398 to i32
  %399 = load i16*, i16** %p_cm_interp, align 8, !tbaa !1
  %arrayidx525 = getelementptr inbounds i16, i16* %399, i64 1
  %400 = load i16, i16* %arrayidx525, align 2, !tbaa !189
  %conv526 = zext i16 %400 to i32
  %cmp527 = icmp eq i32 %conv524, %conv526
  br i1 %cmp527, label %land.lhs.true.529, label %land.end.543

land.lhs.true.529:                                ; preds = %land.lhs.true.522
  %401 = load i16*, i16** %p_cm_interp, align 8, !tbaa !1
  %arrayidx530 = getelementptr inbounds i16, i16* %401, i64 -2
  %402 = load i16, i16* %arrayidx530, align 2, !tbaa !189
  %conv531 = zext i16 %402 to i32
  %403 = load i16*, i16** %p_cm_interp, align 8, !tbaa !1
  %arrayidx532 = getelementptr inbounds i16, i16* %403, i64 2
  %404 = load i16, i16* %arrayidx532, align 2, !tbaa !189
  %conv533 = zext i16 %404 to i32
  %cmp534 = icmp eq i32 %conv531, %conv533
  br i1 %cmp534, label %land.rhs.536, label %land.end.543

land.rhs.536:                                     ; preds = %land.lhs.true.529
  %405 = load i16*, i16** %p_cm_interp, align 8, !tbaa !1
  %arrayidx537 = getelementptr inbounds i16, i16* %405, i64 -1
  %406 = load i16, i16* %arrayidx537, align 2, !tbaa !189
  %conv538 = zext i16 %406 to i32
  %407 = load i16*, i16** %p_cm_interp, align 8, !tbaa !1
  %arrayidx539 = getelementptr inbounds i16, i16* %407, i64 3
  %408 = load i16, i16* %arrayidx539, align 2, !tbaa !189
  %conv540 = zext i16 %408 to i32
  %cmp541 = icmp eq i32 %conv538, %conv540
  br label %land.end.543

land.end.543:                                     ; preds = %land.rhs.536, %land.lhs.true.529, %land.lhs.true.522, %land.lhs.true.515, %do.cond.512
  %409 = phi i1 [ false, %land.lhs.true.529 ], [ false, %land.lhs.true.522 ], [ false, %land.lhs.true.515 ], [ false, %do.cond.512 ], [ %cmp541, %land.rhs.536 ]
  br i1 %409, label %do.body.417, label %do.end.544

do.end.544:                                       ; preds = %land.end.543
  br label %sw.epilog.641

sw.default.545:                                   ; preds = %if.then.188
  br label %do.body.546

do.body.546:                                      ; preds = %sw.default.545
  %410 = load i32, i32* %bpp, align 4, !tbaa !30
  %shr547 = ashr i32 %410, 2
  switch i32 %shr547, label %sw.default.634 [
    i32 0, label %sw.bb.548
    i32 1, label %sw.bb.569
    i32 3, label %sw.bb.583
    i32 16, label %sw.bb.603
    i32 14, label %sw.bb.607
    i32 12, label %sw.bb.611
    i32 10, label %sw.bb.615
    i32 8, label %sw.bb.619
    i32 6, label %sw.bb.623
    i32 4, label %sw.bb.627
    i32 2, label %sw.bb.631
  ]

sw.bb.548:                                        ; preds = %do.body.546
  %411 = load i32, i32* %bpp, align 4, !tbaa !30
  %412 = load i32, i32* %l_dbit, align 4, !tbaa !30
  %add549 = add nsw i32 %412, %411
  store i32 %add549, i32* %l_dbit, align 4, !tbaa !30
  %cmp550 = icmp eq i32 %add549, 8
  br i1 %cmp550, label %if.then.552, label %if.else.559

if.then.552:                                      ; preds = %sw.bb.548
  %413 = load i8, i8* %l_dbyte, align 1, !tbaa !100
  %conv553 = zext i8 %413 to i32
  %414 = load i64, i64* %color189, align 8, !tbaa !187
  %conv554 = trunc i64 %414 to i8
  %conv555 = zext i8 %conv554 to i32
  %or556 = or i32 %conv553, %conv555
  %conv557 = trunc i32 %or556 to i8
  %415 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr558 = getelementptr inbounds i8, i8* %415, i32 1
  store i8* %incdec.ptr558, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv557, i8* %415, align 1, !tbaa !100
  store i8 0, i8* %l_dbyte, align 1, !tbaa !100
  store i32 0, i32* %l_dbit, align 4, !tbaa !30
  br label %if.end.568

if.else.559:                                      ; preds = %sw.bb.548
  %416 = load i64, i64* %color189, align 8, !tbaa !187
  %417 = load i32, i32* %l_dbit, align 4, !tbaa !30
  %sub560 = sub nsw i32 8, %417
  %sh_prom561 = zext i32 %sub560 to i64
  %shl562 = shl i64 %416, %sh_prom561
  %conv563 = trunc i64 %shl562 to i8
  %conv564 = zext i8 %conv563 to i32
  %418 = load i8, i8* %l_dbyte, align 1, !tbaa !100
  %conv565 = zext i8 %418 to i32
  %or566 = or i32 %conv565, %conv564
  %conv567 = trunc i32 %or566 to i8
  store i8 %conv567, i8* %l_dbyte, align 1, !tbaa !100
  br label %if.end.568

if.end.568:                                       ; preds = %if.else.559, %if.then.552
  br label %sw.epilog.635

sw.bb.569:                                        ; preds = %do.body.546
  %419 = load i32, i32* %l_dbit, align 4, !tbaa !30
  %xor570 = xor i32 %419, 4
  store i32 %xor570, i32* %l_dbit, align 4, !tbaa !30
  %tobool571 = icmp ne i32 %xor570, 0
  br i1 %tobool571, label %if.then.572, label %if.else.575

if.then.572:                                      ; preds = %sw.bb.569
  %420 = load i64, i64* %color189, align 8, !tbaa !187
  %shl573 = shl i64 %420, 4
  %conv574 = trunc i64 %shl573 to i8
  store i8 %conv574, i8* %l_dbyte, align 1, !tbaa !100
  br label %if.end.582

if.else.575:                                      ; preds = %sw.bb.569
  %421 = load i8, i8* %l_dbyte, align 1, !tbaa !100
  %conv576 = zext i8 %421 to i32
  %422 = load i64, i64* %color189, align 8, !tbaa !187
  %conv577 = trunc i64 %422 to i8
  %conv578 = zext i8 %conv577 to i32
  %or579 = or i32 %conv576, %conv578
  %conv580 = trunc i32 %or579 to i8
  %423 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr581 = getelementptr inbounds i8, i8* %423, i32 1
  store i8* %incdec.ptr581, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv580, i8* %423, align 1, !tbaa !100
  br label %if.end.582

if.end.582:                                       ; preds = %if.else.575, %if.then.572
  br label %sw.epilog.635

sw.bb.583:                                        ; preds = %do.body.546
  %424 = load i32, i32* %l_dbit, align 4, !tbaa !30
  %xor584 = xor i32 %424, 4
  store i32 %xor584, i32* %l_dbit, align 4, !tbaa !30
  %tobool585 = icmp ne i32 %xor584, 0
  br i1 %tobool585, label %if.then.586, label %if.else.592

if.then.586:                                      ; preds = %sw.bb.583
  %425 = load i64, i64* %color189, align 8, !tbaa !187
  %shr587 = lshr i64 %425, 4
  %conv588 = trunc i64 %shr587 to i8
  %426 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr589 = getelementptr inbounds i8, i8* %426, i32 1
  store i8* %incdec.ptr589, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv588, i8* %426, align 1, !tbaa !100
  %427 = load i64, i64* %color189, align 8, !tbaa !187
  %shl590 = shl i64 %427, 4
  %conv591 = trunc i64 %shl590 to i8
  store i8 %conv591, i8* %l_dbyte, align 1, !tbaa !100
  br label %if.end.602

if.else.592:                                      ; preds = %sw.bb.583
  %428 = load i8, i8* %l_dbyte, align 1, !tbaa !100
  %conv593 = zext i8 %428 to i32
  %429 = load i64, i64* %color189, align 8, !tbaa !187
  %shr594 = lshr i64 %429, 8
  %conv595 = trunc i64 %shr594 to i8
  %conv596 = zext i8 %conv595 to i32
  %or597 = or i32 %conv593, %conv596
  %conv598 = trunc i32 %or597 to i8
  %430 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv598, i8* %430, align 1, !tbaa !100
  %431 = load i64, i64* %color189, align 8, !tbaa !187
  %conv599 = trunc i64 %431 to i8
  %432 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %arrayidx600 = getelementptr inbounds i8, i8* %432, i64 1
  store i8 %conv599, i8* %arrayidx600, align 1, !tbaa !100
  %433 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %add.ptr601 = getelementptr inbounds i8, i8* %433, i64 2
  store i8* %add.ptr601, i8** %l_dptr, align 8, !tbaa !1
  br label %if.end.602

if.end.602:                                       ; preds = %if.else.592, %if.then.586
  br label %sw.epilog.635

sw.bb.603:                                        ; preds = %do.body.546
  %434 = load i64, i64* %color189, align 8, !tbaa !187
  %shr604 = lshr i64 %434, 56
  %conv605 = trunc i64 %shr604 to i8
  %435 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr606 = getelementptr inbounds i8, i8* %435, i32 1
  store i8* %incdec.ptr606, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv605, i8* %435, align 1, !tbaa !100
  br label %sw.bb.607

sw.bb.607:                                        ; preds = %do.body.546, %sw.bb.603
  %436 = load i64, i64* %color189, align 8, !tbaa !187
  %shr608 = lshr i64 %436, 48
  %conv609 = trunc i64 %shr608 to i8
  %437 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr610 = getelementptr inbounds i8, i8* %437, i32 1
  store i8* %incdec.ptr610, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv609, i8* %437, align 1, !tbaa !100
  br label %sw.bb.611

sw.bb.611:                                        ; preds = %do.body.546, %sw.bb.607
  %438 = load i64, i64* %color189, align 8, !tbaa !187
  %shr612 = lshr i64 %438, 40
  %conv613 = trunc i64 %shr612 to i8
  %439 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr614 = getelementptr inbounds i8, i8* %439, i32 1
  store i8* %incdec.ptr614, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv613, i8* %439, align 1, !tbaa !100
  br label %sw.bb.615

sw.bb.615:                                        ; preds = %do.body.546, %sw.bb.611
  %440 = load i64, i64* %color189, align 8, !tbaa !187
  %shr616 = lshr i64 %440, 32
  %conv617 = trunc i64 %shr616 to i8
  %441 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr618 = getelementptr inbounds i8, i8* %441, i32 1
  store i8* %incdec.ptr618, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv617, i8* %441, align 1, !tbaa !100
  br label %sw.bb.619

sw.bb.619:                                        ; preds = %do.body.546, %sw.bb.615
  %442 = load i64, i64* %color189, align 8, !tbaa !187
  %shr620 = lshr i64 %442, 24
  %conv621 = trunc i64 %shr620 to i8
  %443 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr622 = getelementptr inbounds i8, i8* %443, i32 1
  store i8* %incdec.ptr622, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv621, i8* %443, align 1, !tbaa !100
  br label %sw.bb.623

sw.bb.623:                                        ; preds = %do.body.546, %sw.bb.619
  %444 = load i64, i64* %color189, align 8, !tbaa !187
  %shr624 = lshr i64 %444, 16
  %conv625 = trunc i64 %shr624 to i8
  %445 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr626 = getelementptr inbounds i8, i8* %445, i32 1
  store i8* %incdec.ptr626, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv625, i8* %445, align 1, !tbaa !100
  br label %sw.bb.627

sw.bb.627:                                        ; preds = %do.body.546, %sw.bb.623
  %446 = load i64, i64* %color189, align 8, !tbaa !187
  %shr628 = lshr i64 %446, 8
  %conv629 = trunc i64 %shr628 to i8
  %447 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr630 = getelementptr inbounds i8, i8* %447, i32 1
  store i8* %incdec.ptr630, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv629, i8* %447, align 1, !tbaa !100
  br label %sw.bb.631

sw.bb.631:                                        ; preds = %do.body.546, %sw.bb.627
  %448 = load i64, i64* %color189, align 8, !tbaa !187
  %conv632 = trunc i64 %448 to i8
  %449 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr633 = getelementptr inbounds i8, i8* %449, i32 1
  store i8* %incdec.ptr633, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv632, i8* %449, align 1, !tbaa !100
  br label %sw.epilog.635

sw.default.634:                                   ; preds = %do.body.546
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog.635:                                    ; preds = %sw.bb.631, %if.end.602, %if.end.582, %if.end.568
  br label %do.cond.636

do.cond.636:                                      ; preds = %sw.epilog.635
  br label %do.end.637

do.end.637:                                       ; preds = %do.cond.636
  %450 = load i32, i32* %x90, align 4, !tbaa !30
  %inc638 = add nsw i32 %450, 1
  store i32 %inc638, i32* %x90, align 4, !tbaa !30
  %451 = load i32, i32* %spp_cm, align 4, !tbaa !30
  %452 = load i16*, i16** %p_cm_interp, align 8, !tbaa !1
  %idx.ext639 = sext i32 %451 to i64
  %add.ptr640 = getelementptr inbounds i16, i16* %452, i64 %idx.ext639
  store i16* %add.ptr640, i16** %p_cm_interp, align 8, !tbaa !1
  br label %sw.epilog.641

sw.epilog.641:                                    ; preds = %do.end.637, %do.end.544, %do.end.415, %do.end.290
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.641, %sw.default.634, %sw.default.506, %sw.default.381, %sw.default
  %453 = bitcast i64* %color189 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %453) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.745 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.712

if.else.642:                                      ; preds = %if.end.184
  %454 = bitcast i32* %rcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %454) #1
  %455 = load i32, i32* %x90, align 4, !tbaa !30
  %456 = load i32, i32* %l_xprev, align 4, !tbaa !30
  %cmp643 = icmp sgt i32 %455, %456
  br i1 %cmp643, label %if.then.645, label %if.end.668

if.then.645:                                      ; preds = %if.else.642
  %457 = bitcast i32* %code646 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %457) #1
  %458 = load i32, i32* %l_dbit, align 4, !tbaa !30
  %cmp647 = icmp ne i32 %458, 0
  br i1 %cmp647, label %if.then.649, label %if.end.656

if.then.649:                                      ; preds = %if.then.645
  %459 = load i8, i8* %l_dbyte, align 1, !tbaa !100
  %conv650 = zext i8 %459 to i32
  %460 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %461 = load i8, i8* %460, align 1, !tbaa !100
  %conv651 = zext i8 %461 to i32
  %462 = load i32, i32* %l_dbit, align 4, !tbaa !30
  %shr652 = ashr i32 255, %462
  %and653 = and i32 %conv651, %shr652
  %or654 = or i32 %conv650, %and653
  %conv655 = trunc i32 %or654 to i8
  %463 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv655, i8* %463, align 1, !tbaa !100
  br label %if.end.656

if.end.656:                                       ; preds = %if.then.649, %if.then.645
  %464 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs657 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %464, i32 0, i32 42
  %copy_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs657, i32 0, i32 10
  %465 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %copy_color, align 8, !tbaa !190
  %466 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %467 = load i8*, i8** %out, align 8, !tbaa !1
  %468 = load i32, i32* %l_xprev, align 4, !tbaa !30
  %469 = load i32, i32* %xo, align 4, !tbaa !30
  %sub658 = sub nsw i32 %468, %469
  %470 = load i32, i32* %raster, align 4, !tbaa !30
  %471 = load i32, i32* %l_xprev, align 4, !tbaa !30
  %472 = load i32, i32* %ry, align 4, !tbaa !30
  %473 = load i32, i32* %x90, align 4, !tbaa !30
  %474 = load i32, i32* %l_xprev, align 4, !tbaa !30
  %sub659 = sub nsw i32 %473, %474
  %call660 = call i32 %465(%struct.gx_device_s* %466, i8* %467, i32 %sub658, i32 %470, i64 0, i32 %471, i32 %472, i32 %sub659, i32 1) #4
  store i32 %call660, i32* %code646, align 4, !tbaa !30
  %475 = load i32, i32* %code646, align 4, !tbaa !30
  %cmp661 = icmp slt i32 %475, 0
  br i1 %cmp661, label %if.then.663, label %if.end.664

if.then.663:                                      ; preds = %if.end.656
  %476 = load i32, i32* %code646, align 4, !tbaa !30
  store i32 %476, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.665

if.end.664:                                       ; preds = %if.end.656
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.665

cleanup.665:                                      ; preds = %if.end.664, %if.then.663
  %477 = bitcast i32* %code646 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %477) #1
  %cleanup.dest.666 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.666, label %cleanup.709 [
    i32 0, label %cleanup.cont.667
  ]

cleanup.cont.667:                                 ; preds = %cleanup.665
  br label %if.end.668

if.end.668:                                       ; preds = %cleanup.cont.667, %if.else.642
  %type669 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 0
  %478 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type669, align 8, !tbaa !188
  %fill_rectangle = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %478, i32 0, i32 5
  %479 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle, align 8, !tbaa !191
  %480 = load i32, i32* %x90, align 4, !tbaa !30
  %481 = load i32, i32* %ry, align 4, !tbaa !30
  %482 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %483 = load i32, i32* %lop, align 4, !tbaa !30
  %call670 = call i32 %479(%struct.gx_device_color_s* %devc, i32 %480, i32 %481, i32 1, i32 1, %struct.gx_device_s* %482, i32 %483, %struct.gx_rop_source_s* null) #4
  store i32 %call670, i32* %rcode, align 4, !tbaa !30
  %484 = load i32, i32* %rcode, align 4, !tbaa !30
  %cmp671 = icmp slt i32 %484, 0
  br i1 %cmp671, label %if.then.673, label %if.end.674

if.then.673:                                      ; preds = %if.end.668
  %485 = load i32, i32* %rcode, align 4, !tbaa !30
  store i32 %485, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.709

if.end.674:                                       ; preds = %if.end.668
  %486 = load i32, i32* %bpp, align 4, !tbaa !30
  %cmp675 = icmp slt i32 %486, 8
  br i1 %cmp675, label %if.then.677, label %if.else.700

if.then.677:                                      ; preds = %if.end.674
  %487 = load i32, i32* %l_dbit, align 4, !tbaa !30
  %cmp678 = icmp ne i32 %487, 0
  br i1 %cmp678, label %if.then.680, label %if.end.687

if.then.680:                                      ; preds = %if.then.677
  %488 = load i8, i8* %l_dbyte, align 1, !tbaa !100
  %conv681 = zext i8 %488 to i32
  %489 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %490 = load i8, i8* %489, align 1, !tbaa !100
  %conv682 = zext i8 %490 to i32
  %491 = load i32, i32* %l_dbit, align 4, !tbaa !30
  %shr683 = ashr i32 255, %491
  %and684 = and i32 %conv682, %shr683
  %or685 = or i32 %conv681, %and684
  %conv686 = trunc i32 %or685 to i8
  %492 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv686, i8* %492, align 1, !tbaa !100
  br label %if.end.687

if.end.687:                                       ; preds = %if.then.680, %if.then.677
  br label %do.body.688

do.body.688:                                      ; preds = %if.end.687
  %493 = load i32, i32* %bpp, align 4, !tbaa !30
  %494 = load i32, i32* %l_dbit, align 4, !tbaa !30
  %add689 = add nsw i32 %494, %493
  store i32 %add689, i32* %l_dbit, align 4, !tbaa !30
  %495 = load i32, i32* %l_dbit, align 4, !tbaa !30
  %shr690 = ashr i32 %495, 3
  %496 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %idx.ext691 = sext i32 %shr690 to i64
  %add.ptr692 = getelementptr inbounds i8, i8* %496, i64 %idx.ext691
  store i8* %add.ptr692, i8** %l_dptr, align 8, !tbaa !1
  %497 = load i32, i32* %l_dbit, align 4, !tbaa !30
  %and693 = and i32 %497, 7
  store i32 %and693, i32* %l_dbit, align 4, !tbaa !30
  br label %do.cond.694

do.cond.694:                                      ; preds = %do.body.688
  br label %do.end.695

do.end.695:                                       ; preds = %do.cond.694
  %498 = load i32, i32* %l_dbit, align 4, !tbaa !30
  %shl696 = shl i32 255, %498
  %neg = xor i32 %shl696, -1
  %499 = load i8, i8* %l_dbyte, align 1, !tbaa !100
  %conv697 = zext i8 %499 to i32
  %and698 = and i32 %conv697, %neg
  %conv699 = trunc i32 %and698 to i8
  store i8 %conv699, i8* %l_dbyte, align 1, !tbaa !100
  br label %if.end.704

if.else.700:                                      ; preds = %if.end.674
  %500 = load i32, i32* %bpp, align 4, !tbaa !30
  %shr701 = ashr i32 %500, 3
  %501 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %idx.ext702 = sext i32 %shr701 to i64
  %add.ptr703 = getelementptr inbounds i8, i8* %501, i64 %idx.ext702
  store i8* %add.ptr703, i8** %l_dptr, align 8, !tbaa !1
  br label %if.end.704

if.end.704:                                       ; preds = %if.else.700, %do.end.695
  %502 = load i32, i32* %x90, align 4, !tbaa !30
  %add705 = add nsw i32 %502, 1
  store i32 %add705, i32* %l_xprev, align 4, !tbaa !30
  %503 = load i32, i32* %x90, align 4, !tbaa !30
  %inc706 = add nsw i32 %503, 1
  store i32 %inc706, i32* %x90, align 4, !tbaa !30
  %504 = load i32, i32* %spp_cm, align 4, !tbaa !30
  %505 = load i16*, i16** %p_cm_interp, align 8, !tbaa !1
  %idx.ext707 = sext i32 %504 to i64
  %add.ptr708 = getelementptr inbounds i16, i16* %505, i64 %idx.ext707
  store i16* %add.ptr708, i16** %p_cm_interp, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.709

cleanup.709:                                      ; preds = %if.end.704, %if.then.673, %cleanup.665
  %506 = bitcast i32* %rcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %506) #1
  %cleanup.dest.710 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.710, label %cleanup.745 [
    i32 0, label %cleanup.cont.711
  ]

cleanup.cont.711:                                 ; preds = %cleanup.709
  br label %if.end.712

if.end.712:                                       ; preds = %cleanup.cont.711, %cleanup.cont
  br label %for.cond.170

for.end:                                          ; preds = %for.cond.170
  %507 = load i32, i32* %x90, align 4, !tbaa !30
  %508 = load i32, i32* %l_xprev, align 4, !tbaa !30
  %cmp713 = icmp sgt i32 %507, %508
  br i1 %cmp713, label %if.then.715, label %if.end.739

if.then.715:                                      ; preds = %for.end
  %509 = bitcast i32* %code716 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %509) #1
  %510 = load i32, i32* %l_dbit, align 4, !tbaa !30
  %cmp717 = icmp ne i32 %510, 0
  br i1 %cmp717, label %if.then.719, label %if.end.726

if.then.719:                                      ; preds = %if.then.715
  %511 = load i8, i8* %l_dbyte, align 1, !tbaa !100
  %conv720 = zext i8 %511 to i32
  %512 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %513 = load i8, i8* %512, align 1, !tbaa !100
  %conv721 = zext i8 %513 to i32
  %514 = load i32, i32* %l_dbit, align 4, !tbaa !30
  %shr722 = ashr i32 255, %514
  %and723 = and i32 %conv721, %shr722
  %or724 = or i32 %conv720, %and723
  %conv725 = trunc i32 %or724 to i8
  %515 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv725, i8* %515, align 1, !tbaa !100
  br label %if.end.726

if.end.726:                                       ; preds = %if.then.719, %if.then.715
  %516 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs727 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %516, i32 0, i32 42
  %copy_color728 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs727, i32 0, i32 10
  %517 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %copy_color728, align 8, !tbaa !190
  %518 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %519 = load i8*, i8** %out, align 8, !tbaa !1
  %520 = load i32, i32* %l_xprev, align 4, !tbaa !30
  %521 = load i32, i32* %xo, align 4, !tbaa !30
  %sub729 = sub nsw i32 %520, %521
  %522 = load i32, i32* %raster, align 4, !tbaa !30
  %523 = load i32, i32* %l_xprev, align 4, !tbaa !30
  %524 = load i32, i32* %ry, align 4, !tbaa !30
  %525 = load i32, i32* %x90, align 4, !tbaa !30
  %526 = load i32, i32* %l_xprev, align 4, !tbaa !30
  %sub730 = sub nsw i32 %525, %526
  %call731 = call i32 %517(%struct.gx_device_s* %518, i8* %519, i32 %sub729, i32 %522, i64 0, i32 %523, i32 %524, i32 %sub730, i32 1) #4
  store i32 %call731, i32* %code716, align 4, !tbaa !30
  %527 = load i32, i32* %code716, align 4, !tbaa !30
  %cmp732 = icmp slt i32 %527, 0
  br i1 %cmp732, label %if.then.734, label %if.end.735

if.then.734:                                      ; preds = %if.end.726
  %528 = load i32, i32* %code716, align 4, !tbaa !30
  store i32 %528, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.736

if.end.735:                                       ; preds = %if.end.726
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.736

cleanup.736:                                      ; preds = %if.end.735, %if.then.734
  %529 = bitcast i32* %code716 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %529) #1
  %cleanup.dest.737 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.737, label %cleanup.745 [
    i32 0, label %cleanup.cont.738
  ]

cleanup.cont.738:                                 ; preds = %cleanup.736
  br label %if.end.739

if.end.739:                                       ; preds = %cleanup.cont.738, %for.end
  br label %inactive

inactive:                                         ; preds = %if.end.739, %if.then.140
  %530 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line_xy740 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %530, i32 0, i32 56
  %531 = load i32, i32* %line_xy740, align 4, !tbaa !115
  %inc741 = add nsw i32 %531, 1
  store i32 %inc741, i32* %line_xy740, align 4, !tbaa !115
  br label %do.body.742

do.body.742:                                      ; preds = %inactive
  br label %do.cond.743

do.cond.743:                                      ; preds = %do.body.742
  br label %do.end.744

do.end.744:                                       ; preds = %do.cond.743
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.745

cleanup.745:                                      ; preds = %do.end.744, %cleanup.736, %cleanup.709, %cleanup
  %532 = bitcast i32* %xe to i8*
  call void @llvm.lifetime.end(i64 4, i8* %532) #1
  %cleanup.dest.746 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.746, label %cleanup.761 [
    i32 0, label %cleanup.cont.747
  ]

cleanup.cont.747:                                 ; preds = %cleanup.745
  br label %if.end.748

if.end.748:                                       ; preds = %cleanup.cont.747, %if.end.129
  %533 = load i32, i32* %status, align 4, !tbaa !30
  %cmp749 = icmp eq i32 %533, 0
  br i1 %cmp749, label %land.lhs.true.751, label %lor.lhs.false.756

land.lhs.true.751:                                ; preds = %if.end.748
  %ptr752 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %stream_r, i32 0, i32 0
  %534 = load i8*, i8** %ptr752, align 8, !tbaa !175
  %limit753 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %stream_r, i32 0, i32 1
  %535 = load i8*, i8** %limit753, align 8, !tbaa !177
  %cmp754 = icmp eq i8* %534, %535
  br i1 %cmp754, label %if.then.759, label %lor.lhs.false.756

lor.lhs.false.756:                                ; preds = %land.lhs.true.751, %if.end.748
  %536 = load i32, i32* %status, align 4, !tbaa !30
  %cmp757 = icmp eq i32 %536, -1
  br i1 %cmp757, label %if.then.759, label %if.end.760

if.then.759:                                      ; preds = %lor.lhs.false.756, %land.lhs.true.751
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.761

if.end.760:                                       ; preds = %lor.lhs.false.756
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.761

cleanup.761:                                      ; preds = %if.end.760, %if.then.759, %cleanup.745, %if.then.128
  %537 = bitcast i32* %l_xprev to i8*
  call void @llvm.lifetime.end(i64 4, i8* %537) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_dbyte) #1
  %538 = bitcast i32* %l_dbit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %538) #1
  %539 = bitcast i8** %l_dptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %539) #1
  %540 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %540) #1
  %541 = bitcast %struct.gx_device_color_s* %devc to i8*
  call void @llvm.lifetime.end(i64 656, i8* %541) #1
  %542 = bitcast i16** %pinterp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %542) #1
  %543 = bitcast i32* %x90 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %543) #1
  %544 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.end(i64 4, i8* %544) #1
  %cleanup.dest.770 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.770, label %cleanup.780 [
    i32 0, label %cleanup.cont.771
    i32 2, label %for.end.772
  ]

cleanup.cont.771:                                 ; preds = %cleanup.761
  br label %for.cond

for.end.772:                                      ; preds = %cleanup.761
  %545 = load i8*, i8** %p_cm_buff, align 8, !tbaa !1
  %cmp773 = icmp ne i8* %545, null
  br i1 %cmp773, label %if.then.775, label %if.end.779

if.then.775:                                      ; preds = %for.end.772
  %546 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %memory776 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %546, i32 0, i32 1
  %547 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory776, align 8, !tbaa !178
  %procs777 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %547, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs777, i32 0, i32 2
  %548 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !112
  %549 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %memory778 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %549, i32 0, i32 1
  %550 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory778, align 8, !tbaa !178
  %551 = load i8*, i8** %p_cm_buff, align 8, !tbaa !1
  call void %548(%struct.gs_memory_s* %550, i8* %551, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.image_render_interpolate_icc, i32 0, i32 0)) #4
  br label %if.end.779

if.end.779:                                       ; preds = %if.then.775, %for.end.772
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.780

cleanup.780:                                      ; preds = %if.end.779, %cleanup.761, %if.then.26
  %552 = bitcast i32* %num_bytes_decode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %552) #1
  %553 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %553) #1
  %554 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %554) #1
  %555 = bitcast i64* %color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %555) #1
  %556 = bitcast %struct.gsicc_bufferdesc_s* %output_buff_desc to i8*
  call void @llvm.lifetime.end(i64 36, i8* %556) #1
  %557 = bitcast %struct.gsicc_bufferdesc_s* %input_buff_desc to i8*
  call void @llvm.lifetime.end(i64 36, i8* %557) #1
  %558 = bitcast i32* %spp_cm to i8*
  call void @llvm.lifetime.end(i64 4, i8* %558) #1
  %559 = bitcast i32* %spp_interp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %559) #1
  %560 = bitcast i32* %spp_decode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %560) #1
  %561 = bitcast i8** %psrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %561) #1
  %562 = bitcast i8** %p_cm_buff to i8*
  call void @llvm.lifetime.end(i64 8, i8* %562) #1
  %563 = bitcast i16** %p_cm_interp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %563) #1
  %564 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %564) #1
  %565 = bitcast i32* %bpp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %565) #1
  %566 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %566) #1
  %567 = bitcast i32* %sizeofPixelOut to i8*
  call void @llvm.lifetime.end(i64 4, i8* %567) #1
  %568 = bitcast i32* %width_in to i8*
  call void @llvm.lifetime.end(i64 4, i8* %568) #1
  %569 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %569) #1
  %570 = bitcast i32* %yo to i8*
  call void @llvm.lifetime.end(i64 4, i8* %570) #1
  %571 = bitcast i32* %xo to i8*
  call void @llvm.lifetime.end(i64 4, i8* %571) #1
  %cleanup.dest.800 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.800, label %cleanup.805 [
    i32 0, label %cleanup.cont.801
  ]

cleanup.cont.801:                                 ; preds = %cleanup.780
  %572 = load i32, i32* %h.addr, align 4, !tbaa !30
  %cmp802 = icmp eq i32 %572, 0
  %cond804 = select i1 %cmp802, i32 0, i32 1
  store i32 %cond804, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.805

cleanup.805:                                      ; preds = %cleanup.cont.801, %cleanup.780, %if.then
  %573 = bitcast i32* %need_decode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %573) #1
  %574 = bitcast %struct.stream_cursor_write_s* %stream_w to i8*
  call void @llvm.lifetime.end(i64 24, i8* %574) #1
  %575 = bitcast %struct.stream_cursor_read_s* %stream_r to i8*
  call void @llvm.lifetime.end(i64 24, i8* %575) #1
  %576 = bitcast i32* %has_transfer to i8*
  call void @llvm.lifetime.end(i64 4, i8* %576) #1
  %577 = bitcast i32* %must_halftone to i8*
  call void @llvm.lifetime.end(i64 4, i8* %577) #1
  %578 = bitcast i8** %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %578) #1
  %579 = bitcast i32* %lop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %579) #1
  %580 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %580) #1
  %581 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.end(i64 8, i8* %581) #1
  %582 = bitcast %struct.stream_image_scale_state_s** %pss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %582) #1
  %583 = load i32, i32* %retval
  ret i32 %583
}

; Function Attrs: nounwind uwtable
define internal i32 @image_render_interpolate_landscape_icc(%struct.gx_image_enum_s* %penum, i8* %buffer, i32 %data_x, i32 %iw, i32 %h, %struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gx_image_enum_s*, align 8
  %buffer.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %iw.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pss = alloca %struct.stream_image_scale_state_s*, align 8
  %pis = alloca %struct.gs_imager_state_s*, align 8
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %lop = alloca i32, align 4
  %out = alloca i8*, align 8
  %must_halftone = alloca i32, align 4
  %has_transfer = alloca i32, align 4
  %stream_r = alloca %struct.stream_cursor_read_s, align 8
  %stream_w = alloca %struct.stream_cursor_write_s, align 8
  %need_decode = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %xo = alloca i32, align 4
  %yo = alloca i32, align 4
  %width = alloca i32, align 4
  %width_in = alloca i32, align 4
  %sizeofPixelOut = alloca i32, align 4
  %dy = alloca i32, align 4
  %p_cm_interp = alloca i16*, align 8
  %p_cm_buff = alloca i8*, align 8
  %psrc = alloca i8*, align 8
  %spp_decode = alloca i32, align 4
  %spp_interp = alloca i32, align 4
  %spp_cm = alloca i32, align 4
  %input_buff_desc = alloca %struct.gsicc_bufferdesc_s, align 4
  %output_buff_desc = alloca %struct.gsicc_bufferdesc_s, align 4
  %color = alloca i64, align 8
  %code = alloca i32, align 4
  %dev_profile = alloca %struct.cmm_dev_profile_s*, align 8
  %num_bytes_decode = alloca i32, align 4
  %ry = alloca i32, align 4
  %x84 = alloca i32, align 4
  %pinterp = alloca i16*, align 8
  %devc = alloca %struct.gx_device_color_s, align 8
  %status = alloca i32, align 4
  %xe = alloca i32, align 4
  %rcode = alloca i32, align 4
  store %struct.gx_image_enum_s* %penum, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !30
  store i32 %iw, i32* %iw.addr, align 4, !tbaa !30
  store i32 %h, i32* %h.addr, align 4, !tbaa !30
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_image_scale_state_s** %pss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %scaler = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1, i32 0, i32 50
  %2 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %scaler, align 8, !tbaa !114
  store %struct.stream_image_scale_state_s* %2, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %3 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pis1 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %4, i32 0, i32 30
  %5 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis1, align 8, !tbaa !59
  store %struct.gs_imager_state_s* %5, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %6 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs2 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %7, i32 0, i32 31
  %8 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !29
  store %struct.gs_color_space_s* %8, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %9 = bitcast i32* %lop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %log_op = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %10, i32 0, i32 44
  %11 = load i32, i32* %log_op, align 4, !tbaa !161
  store i32 %11, i32* %lop, align 4, !tbaa !30
  %12 = bitcast i8** %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %13, i32 0, i32 34
  %14 = load i8*, i8** %line, align 8, !tbaa !113
  store i8* %14, i8** %out, align 8, !tbaa !1
  %15 = bitcast i32* %must_halftone to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_setup = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %16, i32 0, i32 80
  %must_halftone3 = getelementptr inbounds %struct.gx_image_icc_setup_s, %struct.gx_image_icc_setup_s* %icc_setup, i32 0, i32 2
  %17 = load i32, i32* %must_halftone3, align 4, !tbaa !157
  store i32 %17, i32* %must_halftone, align 4, !tbaa !30
  %18 = bitcast i32* %has_transfer to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_setup4 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %19, i32 0, i32 80
  %has_transfer5 = getelementptr inbounds %struct.gx_image_icc_setup_s, %struct.gx_image_icc_setup_s* %icc_setup4, i32 0, i32 3
  %20 = load i32, i32* %has_transfer5, align 4, !tbaa !158
  store i32 %20, i32* %has_transfer, align 4, !tbaa !30
  %21 = bitcast %struct.stream_cursor_read_s* %stream_r to i8*
  call void @llvm.lifetime.start(i64 24, i8* %21) #1
  %22 = bitcast %struct.stream_cursor_write_s* %stream_w to i8*
  call void @llvm.lifetime.start(i64 24, i8* %22) #1
  %23 = bitcast i32* %need_decode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_link = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %24, i32 0, i32 70
  %25 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link, align 8, !tbaa !159
  %cmp = icmp eq %struct.gsicc_link_s* %25, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.image_render_interpolate_landscape_icc, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i32 1316, i32 1, i32 -1, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i32 0, i32 0)) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.225

if.end:                                           ; preds = %entry
  %26 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %device_color = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %26, i32 0, i32 41
  %27 = load i8, i8* %device_color, align 1, !tbaa !98
  %conv = zext i8 %27 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %28 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_setup6 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %28, i32 0, i32 80
  %is_lab = getelementptr inbounds %struct.gx_image_icc_setup_s, %struct.gx_image_icc_setup_s* %icc_setup6, i32 0, i32 1
  %29 = load i32, i32* %is_lab, align 4, !tbaa !153
  %tobool7 = icmp ne i32 %29, 0
  br i1 %tobool7, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end
  %30 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_setup8 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %30, i32 0, i32 80
  %need_decode9 = getelementptr inbounds %struct.gx_image_icc_setup_s, %struct.gx_image_icc_setup_s* %icc_setup8, i32 0, i32 0
  %31 = load i32, i32* %need_decode9, align 4, !tbaa !127
  %cmp10 = icmp eq i32 %31, 0
  br i1 %cmp10, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %32 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call12 = call i32 @gs_color_space_is_CIE(%struct.gs_color_space_s* %32) #4
  %tobool13 = icmp ne i32 %call12, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true
  %33 = phi i1 [ true, %land.lhs.true ], [ %tobool13, %lor.rhs ]
  %lnot = xor i1 %33, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %need_decode, align 4, !tbaa !30
  %34 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %35 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %36 = load i32, i32* %data_x.addr, align 4, !tbaa !30
  %37 = load i32, i32* %h.addr, align 4, !tbaa !30
  %38 = load i32, i32* %need_decode, align 4, !tbaa !30
  call void @initial_decode(%struct.gx_image_enum_s* %34, i8* %35, i32 %36, i32 %37, i32 %38, %struct.stream_cursor_read_s* %stream_r, i32 1) #4
  %39 = bitcast i32* %xo to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  %40 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %xyi = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %40, i32 0, i32 58
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %xyi, i32 0, i32 1
  %41 = load i32, i32* %y, align 4, !tbaa !125
  store i32 %41, i32* %xo, align 4, !tbaa !30
  %42 = bitcast i32* %yo to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #1
  %43 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %xyi14 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %43, i32 0, i32 58
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %xyi14, i32 0, i32 0
  %44 = load i32, i32* %x, align 4, !tbaa !123
  store i32 %44, i32* %yo, align 4, !tbaa !30
  %45 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #1
  %46 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %46, i32 0, i32 5
  %WidthOut = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params, i32 0, i32 12
  %47 = load i32, i32* %WidthOut, align 4, !tbaa !162
  store i32 %47, i32* %width, align 4, !tbaa !30
  %48 = bitcast i32* %width_in to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #1
  %49 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params15 = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %49, i32 0, i32 5
  %WidthIn = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params15, i32 0, i32 10
  %50 = load i32, i32* %WidthIn, align 4, !tbaa !163
  store i32 %50, i32* %width_in, align 4, !tbaa !30
  %51 = bitcast i32* %sizeofPixelOut to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #1
  %52 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params16 = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %52, i32 0, i32 5
  %BitsPerComponentOut = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params16, i32 0, i32 8
  %53 = load i32, i32* %BitsPerComponentOut, align 4, !tbaa !164
  %div = sdiv i32 %53, 8
  store i32 %div, i32* %sizeofPixelOut, align 4, !tbaa !30
  %54 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #1
  %55 = bitcast i16** %p_cm_interp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %55) #1
  %56 = bitcast i8** %p_cm_buff to i8*
  call void @llvm.lifetime.start(i64 8, i8* %56) #1
  store i8* null, i8** %p_cm_buff, align 8, !tbaa !1
  %57 = bitcast i8** %psrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %57) #1
  %58 = bitcast i32* %spp_decode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %58) #1
  %59 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params17 = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %59, i32 0, i32 5
  %spp_decode18 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params17, i32 0, i32 0
  %60 = load i32, i32* %spp_decode18, align 4, !tbaa !166
  store i32 %60, i32* %spp_decode, align 4, !tbaa !30
  %61 = bitcast i32* %spp_interp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %61) #1
  %62 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params19 = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %62, i32 0, i32 5
  %spp_interp20 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params19, i32 0, i32 1
  %63 = load i32, i32* %spp_interp20, align 4, !tbaa !167
  store i32 %63, i32* %spp_interp, align 4, !tbaa !30
  %64 = bitcast i32* %spp_cm to i8*
  call void @llvm.lifetime.start(i64 4, i8* %64) #1
  %65 = bitcast %struct.gsicc_bufferdesc_s* %input_buff_desc to i8*
  call void @llvm.lifetime.start(i64 36, i8* %65) #1
  %66 = bitcast %struct.gsicc_bufferdesc_s* %output_buff_desc to i8*
  call void @llvm.lifetime.start(i64 36, i8* %66) #1
  %67 = bitcast i64* %color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %67) #1
  %68 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %68) #1
  %69 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %69) #1
  %70 = bitcast i32* %num_bytes_decode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %70) #1
  %71 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params21 = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %71, i32 0, i32 5
  %BitsPerComponentIn = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params21, i32 0, i32 6
  %72 = load i32, i32* %BitsPerComponentIn, align 4, !tbaa !168
  %div22 = sdiv i32 %72, 8
  store i32 %div22, i32* %num_bytes_decode, align 4, !tbaa !30
  %73 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %73, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %74 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !47
  %75 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call23 = call i32 %74(%struct.gx_device_s* %75, %struct.cmm_dev_profile_s** %dev_profile) #4
  store i32 %call23, i32* %code, align 4, !tbaa !30
  %76 = load i32, i32* %code, align 4, !tbaa !30
  %tobool24 = icmp ne i32 %76, 0
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %lor.end
  %77 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %interpolate = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %77, i32 0, i32 20
  store i8 0, i8* %interpolate, align 1, !tbaa !31
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.202

if.end.26:                                        ; preds = %lor.end
  %78 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %call27 = call i32 @gsicc_get_device_profile_comps(%struct.cmm_dev_profile_s* %78) #4
  store i32 %call27, i32* %spp_cm, align 4, !tbaa !30
  %79 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %matrix = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %79, i32 0, i32 21
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %matrix, i32 0, i32 2
  %80 = load float, float* %yx, align 4, !tbaa !193
  %cmp28 = fcmp ogt float %80, 0.000000e+00
  br i1 %cmp28, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %if.end.26
  store i32 1, i32* %dy, align 4, !tbaa !30
  br label %if.end.31

if.else:                                          ; preds = %if.end.26
  store i32 -1, i32* %dy, align 4, !tbaa !30
  %81 = load i32, i32* %yo, align 4, !tbaa !30
  %dec = add nsw i32 %81, -1
  store i32 %dec, i32* %yo, align 4, !tbaa !30
  br label %if.end.31

if.end.31:                                        ; preds = %if.else, %if.then.30
  %82 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params32 = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %82, i32 0, i32 5
  %early_cm = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params32, i32 0, i32 20
  %83 = load i32, i32* %early_cm, align 4, !tbaa !170
  %tobool33 = icmp ne i32 %83, 0
  br i1 %tobool33, label %land.lhs.true.34, label %if.else.62

land.lhs.true.34:                                 ; preds = %if.end.31
  %84 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_link35 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %84, i32 0, i32 70
  %85 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link35, align 8, !tbaa !159
  %is_identity = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %85, i32 0, i32 10
  %86 = load i32, i32* %is_identity, align 4, !tbaa !171
  %tobool36 = icmp ne i32 %86, 0
  br i1 %tobool36, label %if.else.62, label %land.lhs.true.37

land.lhs.true.37:                                 ; preds = %land.lhs.true.34
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %stream_r, i32 0, i32 0
  %87 = load i8*, i8** %ptr, align 8, !tbaa !175
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %stream_r, i32 0, i32 1
  %88 = load i8*, i8** %limit, align 8, !tbaa !177
  %cmp38 = icmp ne i8* %87, %88
  br i1 %cmp38, label %if.then.40, label %if.else.62

if.then.40:                                       ; preds = %land.lhs.true.37
  %89 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %89, i32 0, i32 1
  %90 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !178
  %procs41 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %90, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs41, i32 0, i32 7
  %91 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !103
  %92 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %memory42 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %92, i32 0, i32 1
  %93 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory42, align 8, !tbaa !178
  %94 = load i32, i32* %num_bytes_decode, align 4, !tbaa !30
  %95 = load i32, i32* %width_in, align 4, !tbaa !30
  %mul = mul nsw i32 %94, %95
  %96 = load i32, i32* %spp_cm, align 4, !tbaa !30
  %mul43 = mul nsw i32 %mul, %96
  %call44 = call i8* %91(%struct.gs_memory_s* %93, i32 %mul43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.image_render_interpolate_icc, i32 0, i32 0)) #4
  store i8* %call44, i8** %p_cm_buff, align 8, !tbaa !1
  %97 = load i32, i32* %spp_decode, align 4, !tbaa !30
  %conv45 = trunc i32 %97 to i8
  %98 = load i32, i32* %num_bytes_decode, align 4, !tbaa !30
  %conv46 = trunc i32 %98 to i8
  %99 = load i32, i32* %width_in, align 4, !tbaa !30
  %100 = load i32, i32* %spp_decode, align 4, !tbaa !30
  %mul47 = mul nsw i32 %99, %100
  %101 = load i32, i32* %width_in, align 4, !tbaa !30
  call void @gsicc_init_buffer(%struct.gsicc_bufferdesc_s* %input_buff_desc, i8 zeroext %conv45, i8 zeroext %conv46, i32 0, i32 0, i32 0, i32 0, i32 %mul47, i32 1, i32 %101) #4
  %102 = load i32, i32* %spp_cm, align 4, !tbaa !30
  %conv48 = trunc i32 %102 to i8
  %103 = load i32, i32* %num_bytes_decode, align 4, !tbaa !30
  %conv49 = trunc i32 %103 to i8
  %104 = load i32, i32* %width_in, align 4, !tbaa !30
  %105 = load i32, i32* %spp_cm, align 4, !tbaa !30
  %mul50 = mul nsw i32 %104, %105
  %106 = load i32, i32* %width_in, align 4, !tbaa !30
  call void @gsicc_init_buffer(%struct.gsicc_bufferdesc_s* %output_buff_desc, i8 zeroext %conv48, i8 zeroext %conv49, i32 0, i32 0, i32 0, i32 0, i32 %mul50, i32 1, i32 %106) #4
  %ptr51 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %stream_r, i32 0, i32 0
  %107 = load i8*, i8** %ptr51, align 8, !tbaa !175
  %add.ptr = getelementptr inbounds i8, i8* %107, i64 1
  store i8* %add.ptr, i8** %psrc, align 8, !tbaa !1
  %108 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_link52 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %108, i32 0, i32 70
  %109 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link52, align 8, !tbaa !159
  %procs53 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %109, i32 0, i32 1
  %map_buffer = getelementptr inbounds %struct.gscms_procs_s, %struct.gscms_procs_s* %procs53, i32 0, i32 0
  %110 = load void (%struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s*, i8*, i8*)*, void (%struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s*, i8*, i8*)** %map_buffer, align 8, !tbaa !179
  %111 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %112 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_link54 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %112, i32 0, i32 70
  %113 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link54, align 8, !tbaa !159
  %114 = load i8*, i8** %psrc, align 8, !tbaa !1
  %115 = load i8*, i8** %p_cm_buff, align 8, !tbaa !1
  call void %110(%struct.gx_device_s* %111, %struct.gsicc_link_s* %113, %struct.gsicc_bufferdesc_s* %input_buff_desc, %struct.gsicc_bufferdesc_s* %output_buff_desc, i8* %114, i8* %115) #4
  %116 = load i8*, i8** %p_cm_buff, align 8, !tbaa !1
  %add.ptr55 = getelementptr inbounds i8, i8* %116, i64 -1
  %ptr56 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %stream_r, i32 0, i32 0
  store i8* %add.ptr55, i8** %ptr56, align 8, !tbaa !175
  %ptr57 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %stream_r, i32 0, i32 0
  %117 = load i8*, i8** %ptr57, align 8, !tbaa !175
  %118 = load i32, i32* %num_bytes_decode, align 4, !tbaa !30
  %119 = load i32, i32* %width_in, align 4, !tbaa !30
  %mul58 = mul nsw i32 %118, %119
  %120 = load i32, i32* %spp_cm, align 4, !tbaa !30
  %mul59 = mul nsw i32 %mul58, %120
  %idx.ext = sext i32 %mul59 to i64
  %add.ptr60 = getelementptr inbounds i8, i8* %117, i64 %idx.ext
  %limit61 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %stream_r, i32 0, i32 1
  store i8* %add.ptr60, i8** %limit61, align 8, !tbaa !177
  br label %if.end.82

if.else.62:                                       ; preds = %land.lhs.true.37, %land.lhs.true.34, %if.end.31
  %121 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_link63 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %121, i32 0, i32 70
  %122 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link63, align 8, !tbaa !159
  %is_identity64 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %122, i32 0, i32 10
  %123 = load i32, i32* %is_identity64, align 4, !tbaa !171
  %tobool65 = icmp ne i32 %123, 0
  br i1 %tobool65, label %if.end.81, label %if.then.66

if.then.66:                                       ; preds = %if.else.62
  %124 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %memory67 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %124, i32 0, i32 1
  %125 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory67, align 8, !tbaa !178
  %procs68 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %125, i32 0, i32 1
  %alloc_bytes69 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs68, i32 0, i32 7
  %126 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes69, align 8, !tbaa !103
  %127 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %memory70 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %127, i32 0, i32 1
  %128 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory70, align 8, !tbaa !178
  %129 = load i32, i32* %width, align 4, !tbaa !30
  %conv71 = sext i32 %129 to i64
  %mul72 = mul i64 2, %conv71
  %130 = load i32, i32* %spp_cm, align 4, !tbaa !30
  %conv73 = sext i32 %130 to i64
  %mul74 = mul i64 %mul72, %conv73
  %conv75 = trunc i64 %mul74 to i32
  %call76 = call i8* %126(%struct.gs_memory_s* %128, i32 %conv75, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.image_render_interpolate_icc, i32 0, i32 0)) #4
  store i8* %call76, i8** %p_cm_buff, align 8, !tbaa !1
  %131 = load i32, i32* %spp_decode, align 4, !tbaa !30
  %conv77 = trunc i32 %131 to i8
  %132 = load i32, i32* %width, align 4, !tbaa !30
  %133 = load i32, i32* %spp_decode, align 4, !tbaa !30
  %mul78 = mul nsw i32 %132, %133
  %134 = load i32, i32* %width, align 4, !tbaa !30
  call void @gsicc_init_buffer(%struct.gsicc_bufferdesc_s* %input_buff_desc, i8 zeroext %conv77, i8 zeroext 2, i32 0, i32 0, i32 0, i32 0, i32 %mul78, i32 1, i32 %134) #4
  %135 = load i32, i32* %spp_cm, align 4, !tbaa !30
  %conv79 = trunc i32 %135 to i8
  %136 = load i32, i32* %width, align 4, !tbaa !30
  %137 = load i32, i32* %spp_cm, align 4, !tbaa !30
  %mul80 = mul nsw i32 %136, %137
  %138 = load i32, i32* %width, align 4, !tbaa !30
  call void @gsicc_init_buffer(%struct.gsicc_bufferdesc_s* %output_buff_desc, i8 zeroext %conv79, i8 zeroext 2, i32 0, i32 0, i32 0, i32 0, i32 %mul80, i32 1, i32 %138) #4
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.66, %if.else.62
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.then.40
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont.193, %if.end.82
  %139 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.start(i64 4, i8* %139) #1
  %140 = load i32, i32* %yo, align 4, !tbaa !30
  %141 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line_xy = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %141, i32 0, i32 56
  %142 = load i32, i32* %line_xy, align 4, !tbaa !115
  %143 = load i32, i32* %dy, align 4, !tbaa !30
  %mul83 = mul nsw i32 %142, %143
  %add = add nsw i32 %140, %mul83
  store i32 %add, i32* %ry, align 4, !tbaa !30
  %144 = bitcast i32* %x84 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %144) #1
  %145 = bitcast i16** %pinterp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %145) #1
  %146 = bitcast %struct.gx_device_color_s* %devc to i8*
  call void @llvm.lifetime.start(i64 656, i8* %146) #1
  %147 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %147) #1
  %148 = load i8*, i8** %out, align 8, !tbaa !1
  %149 = load i32, i32* %width, align 4, !tbaa !30
  %conv85 = sext i32 %149 to i64
  %150 = load i32, i32* %spp_interp, align 4, !tbaa !30
  %151 = load i32, i32* %sizeofPixelOut, align 4, !tbaa !30
  %mul86 = mul nsw i32 %150, %151
  %conv87 = sext i32 %mul86 to i64
  %cmp88 = icmp ugt i64 %conv87, 8
  br i1 %cmp88, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  %152 = load i32, i32* %spp_interp, align 4, !tbaa !30
  %153 = load i32, i32* %sizeofPixelOut, align 4, !tbaa !30
  %mul90 = mul nsw i32 %152, %153
  %conv91 = sext i32 %mul90 to i64
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv91, %cond.true ], [ 8, %cond.false ]
  %mul92 = mul i64 %conv85, %cond
  %add.ptr93 = getelementptr inbounds i8, i8* %148, i64 %mul92
  %add.ptr94 = getelementptr inbounds i8, i8* %add.ptr93, i64 -1
  %limit95 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %stream_w, i32 0, i32 2
  store i8* %add.ptr94, i8** %limit95, align 8, !tbaa !181
  %limit96 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %stream_w, i32 0, i32 2
  %154 = load i8*, i8** %limit96, align 8, !tbaa !181
  %155 = load i32, i32* %width, align 4, !tbaa !30
  %156 = load i32, i32* %spp_interp, align 4, !tbaa !30
  %mul97 = mul nsw i32 %155, %156
  %157 = load i32, i32* %sizeofPixelOut, align 4, !tbaa !30
  %mul98 = mul nsw i32 %mul97, %157
  %idx.ext99 = sext i32 %mul98 to i64
  %idx.neg = sub i64 0, %idx.ext99
  %add.ptr100 = getelementptr inbounds i8, i8* %154, i64 %idx.neg
  %ptr101 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %stream_w, i32 0, i32 1
  store i8* %add.ptr100, i8** %ptr101, align 8, !tbaa !183
  %ptr102 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %stream_w, i32 0, i32 1
  %158 = load i8*, i8** %ptr102, align 8, !tbaa !183
  %add.ptr103 = getelementptr inbounds i8, i8* %158, i64 1
  %159 = bitcast i8* %add.ptr103 to i16*
  store i16* %159, i16** %pinterp, align 8, !tbaa !1
  %160 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %templat = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %160, i32 0, i32 0
  %161 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !109
  %process = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %161, i32 0, i32 2
  %162 = load i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)** %process, align 8, !tbaa !184
  %163 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %164 = bitcast %struct.stream_image_scale_state_s* %163 to %struct.stream_state_s*
  %165 = load i32, i32* %h.addr, align 4, !tbaa !30
  %cmp104 = icmp eq i32 %165, 0
  %conv105 = zext i1 %cmp104 to i32
  %call106 = call i32 %162(%struct.stream_state_s* %164, %struct.stream_cursor_read_s* %stream_r, %struct.stream_cursor_write_s* %stream_w, i32 %conv105) #4
  store i32 %call106, i32* %status, align 4, !tbaa !30
  %166 = load i32, i32* %status, align 4, !tbaa !30
  %cmp107 = icmp slt i32 %166, 0
  br i1 %cmp107, label %land.lhs.true.109, label %if.end.113

land.lhs.true.109:                                ; preds = %cond.end
  %167 = load i32, i32* %status, align 4, !tbaa !30
  %cmp110 = icmp ne i32 %167, -1
  br i1 %cmp110, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %land.lhs.true.109
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.187

if.end.113:                                       ; preds = %land.lhs.true.109, %cond.end
  %ptr114 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %stream_w, i32 0, i32 1
  %168 = load i8*, i8** %ptr114, align 8, !tbaa !183
  %limit115 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %stream_w, i32 0, i32 2
  %169 = load i8*, i8** %limit115, align 8, !tbaa !181
  %cmp116 = icmp eq i8* %168, %169
  br i1 %cmp116, label %if.then.118, label %if.end.174

if.then.118:                                      ; preds = %if.end.113
  %170 = bitcast i32* %xe to i8*
  call void @llvm.lifetime.start(i64 4, i8* %170) #1
  %171 = load i32, i32* %xo, align 4, !tbaa !30
  %172 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params119 = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %172, i32 0, i32 5
  %PatchWidthOut = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params119, i32 0, i32 4
  %173 = load i32, i32* %PatchWidthOut, align 4, !tbaa !180
  %add120 = add nsw i32 %171, %173
  store i32 %add120, i32* %xe, align 4, !tbaa !30
  %174 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params121 = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %174, i32 0, i32 5
  %Active = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params121, i32 0, i32 24
  %175 = load i32, i32* %Active, align 4, !tbaa !185
  %tobool122 = icmp ne i32 %175, 0
  br i1 %tobool122, label %if.end.124, label %if.then.123

if.then.123:                                      ; preds = %if.then.118
  br label %inactive

if.end.124:                                       ; preds = %if.then.118
  br label %do.body

do.body:                                          ; preds = %if.end.124
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %176 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_link125 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %176, i32 0, i32 70
  %177 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link125, align 8, !tbaa !159
  %is_identity126 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %177, i32 0, i32 10
  %178 = load i32, i32* %is_identity126, align 4, !tbaa !171
  %tobool127 = icmp ne i32 %178, 0
  br i1 %tobool127, label %if.then.132, label %lor.lhs.false.128

lor.lhs.false.128:                                ; preds = %do.end
  %179 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params129 = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %179, i32 0, i32 5
  %early_cm130 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params129, i32 0, i32 20
  %180 = load i32, i32* %early_cm130, align 4, !tbaa !170
  %tobool131 = icmp ne i32 %180, 0
  br i1 %tobool131, label %if.then.132, label %if.else.133

if.then.132:                                      ; preds = %lor.lhs.false.128, %do.end
  %181 = load i16*, i16** %pinterp, align 8, !tbaa !1
  store i16* %181, i16** %p_cm_interp, align 8, !tbaa !1
  br label %if.end.138

if.else.133:                                      ; preds = %lor.lhs.false.128
  %182 = load i8*, i8** %p_cm_buff, align 8, !tbaa !1
  %183 = bitcast i8* %182 to i16*
  store i16* %183, i16** %p_cm_interp, align 8, !tbaa !1
  %184 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_link134 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %184, i32 0, i32 70
  %185 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link134, align 8, !tbaa !159
  %procs135 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %185, i32 0, i32 1
  %map_buffer136 = getelementptr inbounds %struct.gscms_procs_s, %struct.gscms_procs_s* %procs135, i32 0, i32 0
  %186 = load void (%struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s*, i8*, i8*)*, void (%struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s*, i8*, i8*)** %map_buffer136, align 8, !tbaa !179
  %187 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %188 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_link137 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %188, i32 0, i32 70
  %189 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link137, align 8, !tbaa !159
  %190 = load i16*, i16** %pinterp, align 8, !tbaa !1
  %191 = bitcast i16* %190 to i8*
  %192 = load i16*, i16** %p_cm_interp, align 8, !tbaa !1
  %193 = bitcast i16* %192 to i8*
  call void %186(%struct.gx_device_s* %187, %struct.gsicc_link_s* %189, %struct.gsicc_bufferdesc_s* %input_buff_desc, %struct.gsicc_bufferdesc_s* %output_buff_desc, i8* %191, i8* %193) #4
  br label %if.end.138

if.end.138:                                       ; preds = %if.else.133, %if.then.132
  %194 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params139 = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %194, i32 0, i32 5
  %LeftMarginOut = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params139, i32 0, i32 22
  %195 = load i32, i32* %LeftMarginOut, align 4, !tbaa !122
  %196 = load i32, i32* %spp_cm, align 4, !tbaa !30
  %mul140 = mul nsw i32 %195, %196
  %197 = load i16*, i16** %p_cm_interp, align 8, !tbaa !1
  %idx.ext141 = sext i32 %mul140 to i64
  %add.ptr142 = getelementptr inbounds i16, i16* %197, i64 %idx.ext141
  store i16* %add.ptr142, i16** %p_cm_interp, align 8, !tbaa !1
  %198 = load i32, i32* %xo, align 4, !tbaa !30
  store i32 %198, i32* %x84, align 4, !tbaa !30
  br label %for.cond.143

for.cond.143:                                     ; preds = %cleanup.cont, %if.end.138
  %199 = load i32, i32* %x84, align 4, !tbaa !30
  %200 = load i32, i32* %xe, align 4, !tbaa !30
  %cmp144 = icmp slt i32 %199, %200
  br i1 %cmp144, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.143
  %201 = load i32, i32* %must_halftone, align 4, !tbaa !30
  %tobool146 = icmp ne i32 %201, 0
  br i1 %tobool146, label %if.then.149, label %lor.lhs.false.147

lor.lhs.false.147:                                ; preds = %for.body
  %202 = load i32, i32* %has_transfer, align 4, !tbaa !30
  %tobool148 = icmp ne i32 %202, 0
  br i1 %tobool148, label %if.then.149, label %if.else.150

if.then.149:                                      ; preds = %lor.lhs.false.147, %for.body
  %203 = load i16*, i16** %p_cm_interp, align 8, !tbaa !1
  %204 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %205 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %206 = load i32, i32* %has_transfer, align 4, !tbaa !30
  %207 = load i32, i32* %must_halftone, align 4, !tbaa !30
  call void @cmap_transfer_halftone(i16* %203, %struct.gx_device_color_s* %devc, %struct.gs_imager_state_s* %204, %struct.gx_device_s* %205, i32 %206, i32 %207, i32 1) #4
  br label %if.end.157

if.else.150:                                      ; preds = %lor.lhs.false.147
  %208 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs151 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %208, i32 0, i32 42
  %encode_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs151, i32 0, i32 51
  %209 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color, align 8, !tbaa !186
  %210 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %211 = load i16*, i16** %p_cm_interp, align 8, !tbaa !1
  %call152 = call i64 %209(%struct.gx_device_s* %210, i16* %211) #4
  store i64 %call152, i64* %color, align 8, !tbaa !187
  %212 = load i64, i64* %color, align 8, !tbaa !187
  %cmp153 = icmp ne i64 %212, -1
  br i1 %cmp153, label %if.then.155, label %if.end.156

if.then.155:                                      ; preds = %if.else.150
  %213 = load i64, i64* %color, align 8, !tbaa !187
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  store i64 %213, i64* %pure, align 8, !tbaa !187
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_pure, %struct.gx_device_color_type_s** %type, align 8, !tbaa !188
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.155, %if.else.150
  br label %if.end.157

if.end.157:                                       ; preds = %if.end.156, %if.then.149
  %214 = bitcast i32* %rcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %214) #1
  %type158 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 0
  %215 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type158, align 8, !tbaa !188
  %fill_rectangle = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %215, i32 0, i32 5
  %216 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle, align 8, !tbaa !191
  %217 = load i32, i32* %ry, align 4, !tbaa !30
  %218 = load i32, i32* %x84, align 4, !tbaa !30
  %219 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %220 = load i32, i32* %lop, align 4, !tbaa !30
  %call159 = call i32 %216(%struct.gx_device_color_s* %devc, i32 %217, i32 %218, i32 1, i32 1, %struct.gx_device_s* %219, i32 %220, %struct.gx_rop_source_s* null) #4
  store i32 %call159, i32* %rcode, align 4, !tbaa !30
  %221 = load i32, i32* %rcode, align 4, !tbaa !30
  %cmp160 = icmp slt i32 %221, 0
  br i1 %cmp160, label %if.then.162, label %if.end.163

if.then.162:                                      ; preds = %if.end.157
  %222 = load i32, i32* %rcode, align 4, !tbaa !30
  store i32 %222, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.163:                                       ; preds = %if.end.157
  %223 = load i32, i32* %x84, align 4, !tbaa !30
  %inc = add nsw i32 %223, 1
  store i32 %inc, i32* %x84, align 4, !tbaa !30
  %224 = load i32, i32* %spp_cm, align 4, !tbaa !30
  %225 = load i16*, i16** %p_cm_interp, align 8, !tbaa !1
  %idx.ext164 = sext i32 %224 to i64
  %add.ptr165 = getelementptr inbounds i16, i16* %225, i64 %idx.ext164
  store i16* %add.ptr165, i16** %p_cm_interp, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.163, %if.then.162
  %226 = bitcast i32* %rcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %226) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.171 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond.143

for.end:                                          ; preds = %for.cond.143
  br label %inactive

inactive:                                         ; preds = %for.end, %if.then.123
  %227 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line_xy166 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %227, i32 0, i32 56
  %228 = load i32, i32* %line_xy166, align 4, !tbaa !115
  %inc167 = add nsw i32 %228, 1
  store i32 %inc167, i32* %line_xy166, align 4, !tbaa !115
  br label %do.body.168

do.body.168:                                      ; preds = %inactive
  br label %do.cond.169

do.cond.169:                                      ; preds = %do.body.168
  br label %do.end.170

do.end.170:                                       ; preds = %do.cond.169
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.171

cleanup.171:                                      ; preds = %do.end.170, %cleanup
  %229 = bitcast i32* %xe to i8*
  call void @llvm.lifetime.end(i64 4, i8* %229) #1
  %cleanup.dest.172 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.172, label %cleanup.187 [
    i32 0, label %cleanup.cont.173
  ]

cleanup.cont.173:                                 ; preds = %cleanup.171
  br label %if.end.174

if.end.174:                                       ; preds = %cleanup.cont.173, %if.end.113
  %230 = load i32, i32* %status, align 4, !tbaa !30
  %cmp175 = icmp eq i32 %230, 0
  br i1 %cmp175, label %land.lhs.true.177, label %lor.lhs.false.182

land.lhs.true.177:                                ; preds = %if.end.174
  %ptr178 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %stream_r, i32 0, i32 0
  %231 = load i8*, i8** %ptr178, align 8, !tbaa !175
  %limit179 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %stream_r, i32 0, i32 1
  %232 = load i8*, i8** %limit179, align 8, !tbaa !177
  %cmp180 = icmp eq i8* %231, %232
  br i1 %cmp180, label %if.then.185, label %lor.lhs.false.182

lor.lhs.false.182:                                ; preds = %land.lhs.true.177, %if.end.174
  %233 = load i32, i32* %status, align 4, !tbaa !30
  %cmp183 = icmp eq i32 %233, -1
  br i1 %cmp183, label %if.then.185, label %if.end.186

if.then.185:                                      ; preds = %lor.lhs.false.182, %land.lhs.true.177
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.187

if.end.186:                                       ; preds = %lor.lhs.false.182
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.187

cleanup.187:                                      ; preds = %if.end.186, %if.then.185, %cleanup.171, %if.then.112
  %234 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %234) #1
  %235 = bitcast %struct.gx_device_color_s* %devc to i8*
  call void @llvm.lifetime.end(i64 656, i8* %235) #1
  %236 = bitcast i16** %pinterp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %236) #1
  %237 = bitcast i32* %x84 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %237) #1
  %238 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.end(i64 4, i8* %238) #1
  %cleanup.dest.192 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.192, label %cleanup.202 [
    i32 0, label %cleanup.cont.193
    i32 2, label %for.end.194
  ]

cleanup.cont.193:                                 ; preds = %cleanup.187
  br label %for.cond

for.end.194:                                      ; preds = %cleanup.187
  %239 = load i8*, i8** %p_cm_buff, align 8, !tbaa !1
  %cmp195 = icmp ne i8* %239, null
  br i1 %cmp195, label %if.then.197, label %if.end.201

if.then.197:                                      ; preds = %for.end.194
  %240 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %memory198 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %240, i32 0, i32 1
  %241 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory198, align 8, !tbaa !178
  %procs199 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %241, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs199, i32 0, i32 2
  %242 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !112
  %243 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %memory200 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %243, i32 0, i32 1
  %244 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory200, align 8, !tbaa !178
  %245 = load i8*, i8** %p_cm_buff, align 8, !tbaa !1
  call void %242(%struct.gs_memory_s* %244, i8* %245, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.image_render_interpolate_icc, i32 0, i32 0)) #4
  br label %if.end.201

if.end.201:                                       ; preds = %if.then.197, %for.end.194
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.202

cleanup.202:                                      ; preds = %if.end.201, %cleanup.187, %if.then.25
  %246 = bitcast i32* %num_bytes_decode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %246) #1
  %247 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %247) #1
  %248 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %248) #1
  %249 = bitcast i64* %color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %249) #1
  %250 = bitcast %struct.gsicc_bufferdesc_s* %output_buff_desc to i8*
  call void @llvm.lifetime.end(i64 36, i8* %250) #1
  %251 = bitcast %struct.gsicc_bufferdesc_s* %input_buff_desc to i8*
  call void @llvm.lifetime.end(i64 36, i8* %251) #1
  %252 = bitcast i32* %spp_cm to i8*
  call void @llvm.lifetime.end(i64 4, i8* %252) #1
  %253 = bitcast i32* %spp_interp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %253) #1
  %254 = bitcast i32* %spp_decode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %254) #1
  %255 = bitcast i8** %psrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %255) #1
  %256 = bitcast i8** %p_cm_buff to i8*
  call void @llvm.lifetime.end(i64 8, i8* %256) #1
  %257 = bitcast i16** %p_cm_interp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %257) #1
  %258 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %258) #1
  %259 = bitcast i32* %sizeofPixelOut to i8*
  call void @llvm.lifetime.end(i64 4, i8* %259) #1
  %260 = bitcast i32* %width_in to i8*
  call void @llvm.lifetime.end(i64 4, i8* %260) #1
  %261 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %261) #1
  %262 = bitcast i32* %yo to i8*
  call void @llvm.lifetime.end(i64 4, i8* %262) #1
  %263 = bitcast i32* %xo to i8*
  call void @llvm.lifetime.end(i64 4, i8* %263) #1
  %cleanup.dest.220 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.220, label %cleanup.225 [
    i32 0, label %cleanup.cont.221
  ]

cleanup.cont.221:                                 ; preds = %cleanup.202
  %264 = load i32, i32* %h.addr, align 4, !tbaa !30
  %cmp222 = icmp eq i32 %264, 0
  %cond224 = select i1 %cmp222, i32 0, i32 1
  store i32 %cond224, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.225

cleanup.225:                                      ; preds = %cleanup.cont.221, %cleanup.202, %if.then
  %265 = bitcast i32* %need_decode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %265) #1
  %266 = bitcast %struct.stream_cursor_write_s* %stream_w to i8*
  call void @llvm.lifetime.end(i64 24, i8* %266) #1
  %267 = bitcast %struct.stream_cursor_read_s* %stream_r to i8*
  call void @llvm.lifetime.end(i64 24, i8* %267) #1
  %268 = bitcast i32* %has_transfer to i8*
  call void @llvm.lifetime.end(i64 4, i8* %268) #1
  %269 = bitcast i32* %must_halftone to i8*
  call void @llvm.lifetime.end(i64 4, i8* %269) #1
  %270 = bitcast i8** %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %270) #1
  %271 = bitcast i32* %lop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %271) #1
  %272 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %272) #1
  %273 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.end(i64 8, i8* %273) #1
  %274 = bitcast %struct.stream_image_scale_state_s** %pss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %274) #1
  %275 = load i32, i32* %retval
  ret i32 %275
}

; Function Attrs: nounwind uwtable
define internal i32 @image_render_interpolate(%struct.gx_image_enum_s* %penum, i8* %buffer, i32 %data_x, i32 %iw, i32 %h, %struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gx_image_enum_s*, align 8
  %buffer.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %iw.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pss = alloca %struct.stream_image_scale_state_s*, align 8
  %pis = alloca %struct.gs_imager_state_s*, align 8
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %lop = alloca i32, align 4
  %spp_decode = alloca i32, align 4
  %stream_r = alloca %struct.stream_cursor_read_s, align 8
  %stream_w = alloca %struct.stream_cursor_write_s, align 8
  %is_index_space = alloca i32, align 4
  %out = alloca i8*, align 8
  %islab = alloca i32, align 4
  %need_decode = alloca i32, align 4
  %xo = alloca i32, align 4
  %yo = alloca i32, align 4
  %width = alloca i32, align 4
  %sizeofPixelOut = alloca i32, align 4
  %dy = alloca i32, align 4
  %pconcs = alloca %struct.gs_color_space_s*, align 8
  %pactual_cs = alloca %struct.gs_color_space_s*, align 8
  %bpp = alloca i32, align 4
  %raster = alloca i32, align 4
  %device_color14 = alloca i32, align 4
  %ry = alloca i32, align 4
  %x21 = alloca i32, align 4
  %psrc = alloca i16*, align 8
  %devc = alloca %struct.gx_device_color_s, align 8
  %status = alloca i32, align 4
  %code = alloca i32, align 4
  %l_dptr = alloca i8*, align 8
  %l_dbit = alloca i32, align 4
  %l_dbyte = alloca i8, align 1
  %l_xprev = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %xe = alloca i32, align 4
  %cc = alloca %struct.gs_client_color_s, align 8
  %j = alloca i32, align 4
  %num_components = alloca i32, align 4
  %color = alloca i64, align 8
  %rcode = alloca i32, align 4
  %code595 = alloca i32, align 4
  %code665 = alloca i32, align 4
  store %struct.gx_image_enum_s* %penum, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !30
  store i32 %iw, i32* %iw.addr, align 4, !tbaa !30
  store i32 %h, i32* %h.addr, align 4, !tbaa !30
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_image_scale_state_s** %pss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %scaler = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1, i32 0, i32 50
  %2 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %scaler, align 8, !tbaa !114
  store %struct.stream_image_scale_state_s* %2, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %3 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pis1 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %4, i32 0, i32 30
  %5 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis1, align 8, !tbaa !59
  store %struct.gs_imager_state_s* %5, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %6 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs2 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %7, i32 0, i32 31
  %8 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !29
  store %struct.gs_color_space_s* %8, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %9 = bitcast i32* %lop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %log_op = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %10, i32 0, i32 44
  %11 = load i32, i32* %log_op, align 4, !tbaa !161
  store i32 %11, i32* %lop, align 4, !tbaa !30
  %12 = bitcast i32* %spp_decode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %13, i32 0, i32 5
  %spp_decode3 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params, i32 0, i32 0
  %14 = load i32, i32* %spp_decode3, align 4, !tbaa !166
  store i32 %14, i32* %spp_decode, align 4, !tbaa !30
  %15 = bitcast %struct.stream_cursor_read_s* %stream_r to i8*
  call void @llvm.lifetime.start(i64 24, i8* %15) #1
  %16 = bitcast %struct.stream_cursor_write_s* %stream_w to i8*
  call void @llvm.lifetime.start(i64 24, i8* %16) #1
  %17 = bitcast i32* %is_index_space to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i8** %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %19, i32 0, i32 34
  %20 = load i8*, i8** %line, align 8, !tbaa !113
  store i8* %20, i8** %out, align 8, !tbaa !1
  %21 = bitcast i32* %islab to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  store i32 0, i32* %islab, align 4, !tbaa !30
  %22 = bitcast i32* %need_decode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %23, i32 0, i32 6
  %24 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !38
  %cmp = icmp ne %struct.cmm_profile_s* %24, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %25 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %cmm_icc_profile_data4 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %25, i32 0, i32 6
  %26 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data4, align 8, !tbaa !38
  %islab5 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %26, i32 0, i32 2
  %27 = load i32, i32* %islab5, align 4, !tbaa !150
  store i32 %27, i32* %islab, align 4, !tbaa !30
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %28 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %device_color = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %28, i32 0, i32 41
  %29 = load i8, i8* %device_color, align 1, !tbaa !98
  %conv = zext i8 %29 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %30 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call = call i32 @gs_color_space_is_CIE(%struct.gs_color_space_s* %30) #4
  %tobool6 = icmp ne i32 %call, 0
  br i1 %tobool6, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %31 = load i32, i32* %islab, align 4, !tbaa !30
  %tobool7 = icmp ne i32 %31, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %if.end
  %32 = phi i1 [ true, %lor.lhs.false ], [ true, %if.end ], [ %tobool7, %lor.rhs ]
  %lnot = xor i1 %32, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %need_decode, align 4, !tbaa !30
  %33 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %34 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %35 = load i32, i32* %data_x.addr, align 4, !tbaa !30
  %36 = load i32, i32* %h.addr, align 4, !tbaa !30
  %37 = load i32, i32* %need_decode, align 4, !tbaa !30
  call void @initial_decode(%struct.gx_image_enum_s* %33, i8* %34, i32 %35, i32 %36, i32 %37, %struct.stream_cursor_read_s* %stream_r, i32 0) #4
  %38 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %38, i32 0, i32 0
  %39 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !41
  %index = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %39, i32 0, i32 0
  %40 = load i32, i32* %index, align 4, !tbaa !42
  %cmp8 = icmp eq i32 %40, 10
  %conv9 = zext i1 %cmp8 to i32
  store i32 %conv9, i32* %is_index_space, align 4, !tbaa !30
  %41 = bitcast i32* %xo to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #1
  %42 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %xyi = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %42, i32 0, i32 58
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %xyi, i32 0, i32 0
  %43 = load i32, i32* %x, align 4, !tbaa !123
  store i32 %43, i32* %xo, align 4, !tbaa !30
  %44 = bitcast i32* %yo to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  %45 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %xyi10 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %45, i32 0, i32 58
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %xyi10, i32 0, i32 1
  %46 = load i32, i32* %y, align 4, !tbaa !125
  store i32 %46, i32* %yo, align 4, !tbaa !30
  %47 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #1
  %48 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params11 = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %48, i32 0, i32 5
  %WidthOut = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params11, i32 0, i32 12
  %49 = load i32, i32* %WidthOut, align 4, !tbaa !162
  store i32 %49, i32* %width, align 4, !tbaa !30
  %50 = bitcast i32* %sizeofPixelOut to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #1
  %51 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params12 = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %51, i32 0, i32 5
  %BitsPerComponentOut = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params12, i32 0, i32 8
  %52 = load i32, i32* %BitsPerComponentOut, align 4, !tbaa !164
  %div = sdiv i32 %52, 8
  store i32 %div, i32* %sizeofPixelOut, align 4, !tbaa !30
  %53 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %53) #1
  %54 = bitcast %struct.gs_color_space_s** %pconcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %54) #1
  %55 = bitcast %struct.gs_color_space_s** %pactual_cs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %55) #1
  %56 = bitcast i32* %bpp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %56) #1
  %57 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %57, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %58 = load i16, i16* %depth, align 2, !tbaa !165
  %conv13 = zext i16 %58 to i32
  store i32 %conv13, i32* %bpp, align 4, !tbaa !30
  %59 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #1
  %60 = load i32, i32* %width, align 4, !tbaa !30
  %61 = load i32, i32* %bpp, align 4, !tbaa !30
  %mul = mul nsw i32 %60, %61
  %add = add nsw i32 %mul, 63
  %shr = ashr i32 %add, 6
  %shl = shl i32 %shr, 3
  store i32 %shl, i32* %raster, align 4, !tbaa !30
  %62 = bitcast i32* %device_color14 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %62) #1
  %63 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %matrix = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %63, i32 0, i32 21
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %matrix, i32 0, i32 3
  %64 = load float, float* %yy, align 4, !tbaa !169
  %cmp15 = fcmp ogt float %64, 0.000000e+00
  br i1 %cmp15, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %lor.end
  store i32 1, i32* %dy, align 4, !tbaa !30
  br label %if.end.18

if.else:                                          ; preds = %lor.end
  store i32 -1, i32* %dy, align 4, !tbaa !30
  %65 = load i32, i32* %yo, align 4, !tbaa !30
  %dec = add nsw i32 %65, -1
  store i32 %dec, i32* %yo, align 4, !tbaa !30
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.17
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont.721, %if.end.18
  %66 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.start(i64 4, i8* %66) #1
  %67 = load i32, i32* %yo, align 4, !tbaa !30
  %68 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line_xy = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %68, i32 0, i32 56
  %69 = load i32, i32* %line_xy, align 4, !tbaa !115
  %70 = load i32, i32* %dy, align 4, !tbaa !30
  %mul19 = mul nsw i32 %69, %70
  %add20 = add nsw i32 %67, %mul19
  store i32 %add20, i32* %ry, align 4, !tbaa !30
  %71 = bitcast i32* %x21 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %71) #1
  %72 = bitcast i16** %psrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %72) #1
  %73 = bitcast %struct.gx_device_color_s* %devc to i8*
  call void @llvm.lifetime.start(i64 656, i8* %73) #1
  %74 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %74) #1
  %75 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %75) #1
  %76 = bitcast i8** %l_dptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %76) #1
  %77 = load i8*, i8** %out, align 8, !tbaa !1
  store i8* %77, i8** %l_dptr, align 8, !tbaa !1
  %78 = bitcast i32* %l_dbit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %78) #1
  store i32 0, i32* %l_dbit, align 4, !tbaa !30
  call void @llvm.lifetime.start(i64 1, i8* %l_dbyte) #1
  %79 = load i32, i32* %l_dbit, align 4, !tbaa !30
  %tobool22 = icmp ne i32 %79, 0
  br i1 %tobool22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  %80 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %81 = load i8, i8* %80, align 1, !tbaa !100
  %conv23 = zext i8 %81 to i32
  %82 = load i32, i32* %l_dbit, align 4, !tbaa !30
  %shr24 = ashr i32 65280, %82
  %and = and i32 %conv23, %shr24
  %conv25 = trunc i32 %and to i8
  %conv26 = zext i8 %conv25 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv26, %cond.true ], [ 0, %cond.false ]
  %conv27 = trunc i32 %cond to i8
  store i8 %conv27, i8* %l_dbyte, align 1, !tbaa !100
  %83 = bitcast i32* %l_xprev to i8*
  call void @llvm.lifetime.start(i64 4, i8* %83) #1
  %84 = load i32, i32* %xo, align 4, !tbaa !30
  store i32 %84, i32* %l_xprev, align 4, !tbaa !30
  %85 = load i8*, i8** %out, align 8, !tbaa !1
  %86 = load i32, i32* %width, align 4, !tbaa !30
  %conv28 = sext i32 %86 to i64
  %87 = load i32, i32* %spp_decode, align 4, !tbaa !30
  %88 = load i32, i32* %sizeofPixelOut, align 4, !tbaa !30
  %mul29 = mul nsw i32 %87, %88
  %conv30 = sext i32 %mul29 to i64
  %cmp31 = icmp ugt i64 %conv30, 8
  br i1 %cmp31, label %cond.true.33, label %cond.false.36

cond.true.33:                                     ; preds = %cond.end
  %89 = load i32, i32* %spp_decode, align 4, !tbaa !30
  %90 = load i32, i32* %sizeofPixelOut, align 4, !tbaa !30
  %mul34 = mul nsw i32 %89, %90
  %conv35 = sext i32 %mul34 to i64
  br label %cond.end.37

cond.false.36:                                    ; preds = %cond.end
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.36, %cond.true.33
  %cond38 = phi i64 [ %conv35, %cond.true.33 ], [ 8, %cond.false.36 ]
  %mul39 = mul i64 %conv28, %cond38
  %add.ptr = getelementptr inbounds i8, i8* %85, i64 %mul39
  %add.ptr40 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %stream_w, i32 0, i32 2
  store i8* %add.ptr40, i8** %limit, align 8, !tbaa !181
  %limit41 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %stream_w, i32 0, i32 2
  %91 = load i8*, i8** %limit41, align 8, !tbaa !181
  %92 = load i32, i32* %width, align 4, !tbaa !30
  %93 = load i32, i32* %spp_decode, align 4, !tbaa !30
  %mul42 = mul nsw i32 %92, %93
  %94 = load i32, i32* %sizeofPixelOut, align 4, !tbaa !30
  %mul43 = mul nsw i32 %mul42, %94
  %idx.ext = sext i32 %mul43 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr44 = getelementptr inbounds i8, i8* %91, i64 %idx.neg
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %stream_w, i32 0, i32 1
  store i8* %add.ptr44, i8** %ptr, align 8, !tbaa !183
  %ptr45 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %stream_w, i32 0, i32 1
  %95 = load i8*, i8** %ptr45, align 8, !tbaa !183
  %add.ptr46 = getelementptr inbounds i8, i8* %95, i64 1
  %96 = bitcast i8* %add.ptr46 to i16*
  store i16* %96, i16** %psrc, align 8, !tbaa !1
  %97 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %templat = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %97, i32 0, i32 0
  %98 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !109
  %process = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %98, i32 0, i32 2
  %99 = load i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)** %process, align 8, !tbaa !184
  %100 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %101 = bitcast %struct.stream_image_scale_state_s* %100 to %struct.stream_state_s*
  %102 = load i32, i32* %h.addr, align 4, !tbaa !30
  %cmp47 = icmp eq i32 %102, 0
  %conv48 = zext i1 %cmp47 to i32
  %call49 = call i32 %99(%struct.stream_state_s* %101, %struct.stream_cursor_read_s* %stream_r, %struct.stream_cursor_write_s* %stream_w, i32 %conv48) #4
  store i32 %call49, i32* %status, align 4, !tbaa !30
  %103 = load i32, i32* %status, align 4, !tbaa !30
  %cmp50 = icmp slt i32 %103, 0
  br i1 %cmp50, label %land.lhs.true, label %if.end.55

land.lhs.true:                                    ; preds = %cond.end.37
  %104 = load i32, i32* %status, align 4, !tbaa !30
  %cmp52 = icmp ne i32 %104, -1
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %land.lhs.true
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.710

if.end.55:                                        ; preds = %land.lhs.true, %cond.end.37
  %ptr56 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %stream_w, i32 0, i32 1
  %105 = load i8*, i8** %ptr56, align 8, !tbaa !183
  %limit57 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %stream_w, i32 0, i32 2
  %106 = load i8*, i8** %limit57, align 8, !tbaa !181
  %cmp58 = icmp eq i8* %105, %106
  br i1 %cmp58, label %if.then.60, label %if.end.697

if.then.60:                                       ; preds = %if.end.55
  %107 = bitcast i32* %xe to i8*
  call void @llvm.lifetime.start(i64 4, i8* %107) #1
  %108 = load i32, i32* %xo, align 4, !tbaa !30
  %109 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params61 = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %109, i32 0, i32 5
  %PatchWidthOut = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params61, i32 0, i32 4
  %110 = load i32, i32* %PatchWidthOut, align 4, !tbaa !180
  %add62 = add nsw i32 %108, %110
  store i32 %add62, i32* %xe, align 4, !tbaa !30
  %111 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params63 = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %111, i32 0, i32 5
  %Active = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params63, i32 0, i32 24
  %112 = load i32, i32* %Active, align 4, !tbaa !185
  %tobool64 = icmp ne i32 %112, 0
  br i1 %tobool64, label %if.end.66, label %if.then.65

if.then.65:                                       ; preds = %if.then.60
  br label %inactive

if.end.66:                                        ; preds = %if.then.60
  br label %do.body

do.body:                                          ; preds = %if.end.66
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %113 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params67 = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %113, i32 0, i32 5
  %LeftMarginOut = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params67, i32 0, i32 22
  %114 = load i32, i32* %LeftMarginOut, align 4, !tbaa !122
  %115 = load i32, i32* %spp_decode, align 4, !tbaa !30
  %mul68 = mul nsw i32 %114, %115
  %116 = load i16*, i16** %psrc, align 8, !tbaa !1
  %idx.ext69 = sext i32 %mul68 to i64
  %add.ptr70 = getelementptr inbounds i16, i16* %116, i64 %idx.ext69
  store i16* %add.ptr70, i16** %psrc, align 8, !tbaa !1
  %117 = load i32, i32* %xo, align 4, !tbaa !30
  store i32 %117, i32* %x21, align 4, !tbaa !30
  br label %for.cond.71

for.cond.71:                                      ; preds = %if.end.660, %do.end
  %118 = load i32, i32* %x21, align 4, !tbaa !30
  %119 = load i32, i32* %xe, align 4, !tbaa !30
  %cmp72 = icmp slt i32 %118, %119
  br i1 %cmp72, label %for.body, label %for.end.661

for.body:                                         ; preds = %for.cond.71
  %120 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %type74 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %120, i32 0, i32 0
  %121 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type74, align 8, !tbaa !41
  %index75 = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %121, i32 0, i32 0
  %122 = load i32, i32* %index75, align 4, !tbaa !42
  %cmp76 = icmp eq i32 %122, 10
  br i1 %cmp76, label %if.then.78, label %if.else.79

if.then.78:                                       ; preds = %for.body
  %123 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %123, i32 0, i32 3
  %124 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !44
  store %struct.gs_color_space_s* %124, %struct.gs_color_space_s** %pactual_cs, align 8, !tbaa !1
  br label %if.end.80

if.else.79:                                       ; preds = %for.body
  %125 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  store %struct.gs_color_space_s* %125, %struct.gs_color_space_s** %pactual_cs, align 8, !tbaa !1
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.79, %if.then.78
  %126 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pactual_cs, align 8, !tbaa !1
  %type81 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %126, i32 0, i32 0
  %127 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type81, align 8, !tbaa !41
  %concrete_space = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %127, i32 0, i32 7
  %128 = load %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)** %concrete_space, align 8, !tbaa !194
  %129 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pactual_cs, align 8, !tbaa !1
  %130 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %call82 = call %struct.gs_color_space_s* %128(%struct.gs_color_space_s* %129, %struct.gs_imager_state_s* %130) #4
  store %struct.gs_color_space_s* %call82, %struct.gs_color_space_s** %pconcs, align 8, !tbaa !1
  %131 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pconcs, align 8, !tbaa !1
  %cmm_icc_profile_data83 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %131, i32 0, i32 6
  %132 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data83, align 8, !tbaa !38
  %cmp84 = icmp ne %struct.cmm_profile_s* %132, null
  br i1 %cmp84, label %if.then.86, label %if.else.87

if.then.86:                                       ; preds = %if.end.80
  store i32 0, i32* %device_color14, align 4, !tbaa !30
  br label %if.end.90

if.else.87:                                       ; preds = %if.end.80
  %133 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pconcs, align 8, !tbaa !1
  %134 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pactual_cs, align 8, !tbaa !1
  %cmp88 = icmp eq %struct.gs_color_space_s* %133, %134
  %conv89 = zext i1 %cmp88 to i32
  store i32 %conv89, i32* %device_color14, align 4, !tbaa !30
  br label %if.end.90

if.end.90:                                        ; preds = %if.else.87, %if.then.86
  %135 = load i32, i32* %device_color14, align 4, !tbaa !30
  %tobool91 = icmp ne i32 %135, 0
  br i1 %tobool91, label %if.then.92, label %if.else.95

if.then.92:                                       ; preds = %if.end.90
  %136 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pconcs, align 8, !tbaa !1
  %type93 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %136, i32 0, i32 0
  %137 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type93, align 8, !tbaa !41
  %remap_concrete_color = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %137, i32 0, i32 9
  %138 = load i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_concrete_color, align 8, !tbaa !195
  %139 = load i16*, i16** %psrc, align 8, !tbaa !1
  %140 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pconcs, align 8, !tbaa !1
  %141 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %142 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call94 = call i32 %138(i16* %139, %struct.gs_color_space_s* %140, %struct.gx_device_color_s* %devc, %struct.gs_imager_state_s* %141, %struct.gx_device_s* %142, i32 1) #4
  store i32 %call94, i32* %code, align 4, !tbaa !30
  br label %if.end.130

if.else.95:                                       ; preds = %if.end.90
  %143 = bitcast %struct.gs_client_color_s* %cc to i8*
  call void @llvm.lifetime.start(i64 264, i8* %143) #1
  %144 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %144) #1
  %145 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.start(i64 4, i8* %145) #1
  %146 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pactual_cs, align 8, !tbaa !1
  %call96 = call i32 @gs_color_space_num_components(%struct.gs_color_space_s* %146) #4
  store i32 %call96, i32* %num_components, align 4, !tbaa !30
  store i32 0, i32* %j, align 4, !tbaa !30
  br label %for.cond.97

for.cond.97:                                      ; preds = %for.inc, %if.else.95
  %147 = load i32, i32* %j, align 4, !tbaa !30
  %148 = load i32, i32* %num_components, align 4, !tbaa !30
  %cmp98 = icmp slt i32 %147, %148
  br i1 %cmp98, label %for.body.100, label %for.end

for.body.100:                                     ; preds = %for.cond.97
  %149 = load i32, i32* %is_index_space, align 4, !tbaa !30
  %tobool101 = icmp ne i32 %149, 0
  br i1 %tobool101, label %if.then.104, label %lor.lhs.false.102

lor.lhs.false.102:                                ; preds = %for.body.100
  %150 = load i32, i32* %islab, align 4, !tbaa !30
  %tobool103 = icmp ne i32 %150, 0
  br i1 %tobool103, label %if.then.104, label %if.else.110

if.then.104:                                      ; preds = %lor.lhs.false.102, %for.body.100
  %151 = load i32, i32* %j, align 4, !tbaa !30
  %idxprom = sext i32 %151 to i64
  %152 = load i16*, i16** %psrc, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %152, i64 %idxprom
  %153 = load i16, i16* %arrayidx, align 2, !tbaa !189
  %conv105 = sext i16 %153 to i32
  %conv106 = sitofp i32 %conv105 to float
  %div107 = fdiv float %conv106, 3.276000e+04
  %154 = load i32, i32* %j, align 4, !tbaa !30
  %idxprom108 = sext i32 %154 to i64
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx109 = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 %idxprom108
  store float %div107, float* %arrayidx109, align 4, !tbaa !196
  br label %if.end.113

if.else.110:                                      ; preds = %lor.lhs.false.102
  %155 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %156 = load i32, i32* %j, align 4, !tbaa !30
  %idxprom111 = sext i32 %156 to i64
  %157 = load i16*, i16** %psrc, align 8, !tbaa !1
  %arrayidx112 = getelementptr inbounds i16, i16* %157, i64 %idxprom111
  %158 = load i16, i16* %arrayidx112, align 2, !tbaa !189
  %159 = load i32, i32* %j, align 4, !tbaa !30
  call void @decode_sample_frac_to_float(%struct.gx_image_enum_s* %155, i16 signext %158, %struct.gs_client_color_s* %cc, i32 %159) #4
  br label %if.end.113

if.end.113:                                       ; preds = %if.else.110, %if.then.104
  br label %for.inc

for.inc:                                          ; preds = %if.end.113
  %160 = load i32, i32* %j, align 4, !tbaa !30
  %inc = add nsw i32 %160, 1
  store i32 %inc, i32* %j, align 4, !tbaa !30
  br label %for.cond.97

for.end:                                          ; preds = %for.cond.97
  %161 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pactual_cs, align 8, !tbaa !1
  %call114 = call i32 @gs_color_space_is_ICC(%struct.gs_color_space_s* %161) #4
  %tobool115 = icmp ne i32 %call114, 0
  br i1 %tobool115, label %land.lhs.true.116, label %if.else.126

land.lhs.true.116:                                ; preds = %for.end
  %162 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pactual_cs, align 8, !tbaa !1
  %cmm_icc_profile_data117 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %162, i32 0, i32 6
  %163 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data117, align 8, !tbaa !38
  %cmp118 = icmp ne %struct.cmm_profile_s* %163, null
  br i1 %cmp118, label %land.lhs.true.120, label %if.else.126

land.lhs.true.120:                                ; preds = %land.lhs.true.116
  %164 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pactual_cs, align 8, !tbaa !1
  %cmm_icc_profile_data121 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %164, i32 0, i32 6
  %165 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data121, align 8, !tbaa !38
  %islab122 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %165, i32 0, i32 2
  %166 = load i32, i32* %islab122, align 4, !tbaa !150
  %tobool123 = icmp ne i32 %166, 0
  br i1 %tobool123, label %if.then.124, label %if.else.126

if.then.124:                                      ; preds = %land.lhs.true.120
  %167 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pactual_cs, align 8, !tbaa !1
  %168 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %169 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call125 = call i32 @gx_remap_ICC_imagelab(%struct.gs_client_color_s* %cc, %struct.gs_color_space_s* %167, %struct.gx_device_color_s* %devc, %struct.gs_imager_state_s* %168, %struct.gx_device_s* %169, i32 1) #4
  store i32 %call125, i32* %code, align 4, !tbaa !30
  br label %if.end.129

if.else.126:                                      ; preds = %land.lhs.true.120, %land.lhs.true.116, %for.end
  %170 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pactual_cs, align 8, !tbaa !1
  %type127 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %170, i32 0, i32 0
  %171 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type127, align 8, !tbaa !41
  %remap_color = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %171, i32 0, i32 10
  %172 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_color, align 8, !tbaa !197
  %173 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pactual_cs, align 8, !tbaa !1
  %174 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %175 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call128 = call i32 %172(%struct.gs_client_color_s* %cc, %struct.gs_color_space_s* %173, %struct.gx_device_color_s* %devc, %struct.gs_imager_state_s* %174, %struct.gx_device_s* %175, i32 1) #4
  store i32 %call128, i32* %code, align 4, !tbaa !30
  br label %if.end.129

if.end.129:                                       ; preds = %if.else.126, %if.then.124
  %176 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.end(i64 4, i8* %176) #1
  %177 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %177) #1
  %178 = bitcast %struct.gs_client_color_s* %cc to i8*
  call void @llvm.lifetime.end(i64 264, i8* %178) #1
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.129, %if.then.92
  %179 = load i32, i32* %code, align 4, !tbaa !30
  %cmp131 = icmp slt i32 %179, 0
  br i1 %cmp131, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %if.end.130
  %180 = load i32, i32* %code, align 4, !tbaa !30
  store i32 %180, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.694

if.end.134:                                       ; preds = %if.end.130
  %type135 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 0
  %181 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type135, align 8, !tbaa !188
  %cmp136 = icmp eq %struct.gx_device_color_type_s* %181, @gx_dc_type_data_pure
  br i1 %cmp136, label %if.then.138, label %if.else.591

if.then.138:                                      ; preds = %if.end.134
  %182 = bitcast i64* %color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %182) #1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  %183 = load i64, i64* %pure, align 8, !tbaa !187
  store i64 %183, i64* %color, align 8, !tbaa !187
  %184 = load i32, i32* %spp_decode, align 4, !tbaa !30
  switch i32 %184, label %sw.default.494 [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.240
    i32 4, label %sw.bb.365
  ]

sw.bb:                                            ; preds = %if.then.138
  br label %do.body.139

do.body.139:                                      ; preds = %land.end, %sw.bb
  br label %do.body.140

do.body.140:                                      ; preds = %do.body.139
  %185 = load i32, i32* %bpp, align 4, !tbaa !30
  %shr141 = ashr i32 %185, 2
  switch i32 %shr141, label %sw.default [
    i32 0, label %sw.bb.142
    i32 1, label %sw.bb.159
    i32 3, label %sw.bb.172
    i32 16, label %sw.bb.192
    i32 14, label %sw.bb.196
    i32 12, label %sw.bb.200
    i32 10, label %sw.bb.204
    i32 8, label %sw.bb.208
    i32 6, label %sw.bb.212
    i32 4, label %sw.bb.216
    i32 2, label %sw.bb.220
  ]

sw.bb.142:                                        ; preds = %do.body.140
  %186 = load i32, i32* %bpp, align 4, !tbaa !30
  %187 = load i32, i32* %l_dbit, align 4, !tbaa !30
  %add143 = add nsw i32 %187, %186
  store i32 %add143, i32* %l_dbit, align 4, !tbaa !30
  %cmp144 = icmp eq i32 %add143, 8
  br i1 %cmp144, label %if.then.146, label %if.else.151

if.then.146:                                      ; preds = %sw.bb.142
  %188 = load i8, i8* %l_dbyte, align 1, !tbaa !100
  %conv147 = zext i8 %188 to i32
  %189 = load i64, i64* %color, align 8, !tbaa !187
  %conv148 = trunc i64 %189 to i8
  %conv149 = zext i8 %conv148 to i32
  %or = or i32 %conv147, %conv149
  %conv150 = trunc i32 %or to i8
  %190 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %190, i32 1
  store i8* %incdec.ptr, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv150, i8* %190, align 1, !tbaa !100
  store i8 0, i8* %l_dbyte, align 1, !tbaa !100
  store i32 0, i32* %l_dbit, align 4, !tbaa !30
  br label %if.end.158

if.else.151:                                      ; preds = %sw.bb.142
  %191 = load i64, i64* %color, align 8, !tbaa !187
  %192 = load i32, i32* %l_dbit, align 4, !tbaa !30
  %sub = sub nsw i32 8, %192
  %sh_prom = zext i32 %sub to i64
  %shl152 = shl i64 %191, %sh_prom
  %conv153 = trunc i64 %shl152 to i8
  %conv154 = zext i8 %conv153 to i32
  %193 = load i8, i8* %l_dbyte, align 1, !tbaa !100
  %conv155 = zext i8 %193 to i32
  %or156 = or i32 %conv155, %conv154
  %conv157 = trunc i32 %or156 to i8
  store i8 %conv157, i8* %l_dbyte, align 1, !tbaa !100
  br label %if.end.158

if.end.158:                                       ; preds = %if.else.151, %if.then.146
  br label %sw.epilog

sw.bb.159:                                        ; preds = %do.body.140
  %194 = load i32, i32* %l_dbit, align 4, !tbaa !30
  %xor = xor i32 %194, 4
  store i32 %xor, i32* %l_dbit, align 4, !tbaa !30
  %tobool160 = icmp ne i32 %xor, 0
  br i1 %tobool160, label %if.then.161, label %if.else.164

if.then.161:                                      ; preds = %sw.bb.159
  %195 = load i64, i64* %color, align 8, !tbaa !187
  %shl162 = shl i64 %195, 4
  %conv163 = trunc i64 %shl162 to i8
  store i8 %conv163, i8* %l_dbyte, align 1, !tbaa !100
  br label %if.end.171

if.else.164:                                      ; preds = %sw.bb.159
  %196 = load i8, i8* %l_dbyte, align 1, !tbaa !100
  %conv165 = zext i8 %196 to i32
  %197 = load i64, i64* %color, align 8, !tbaa !187
  %conv166 = trunc i64 %197 to i8
  %conv167 = zext i8 %conv166 to i32
  %or168 = or i32 %conv165, %conv167
  %conv169 = trunc i32 %or168 to i8
  %198 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr170 = getelementptr inbounds i8, i8* %198, i32 1
  store i8* %incdec.ptr170, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv169, i8* %198, align 1, !tbaa !100
  br label %if.end.171

if.end.171:                                       ; preds = %if.else.164, %if.then.161
  br label %sw.epilog

sw.bb.172:                                        ; preds = %do.body.140
  %199 = load i32, i32* %l_dbit, align 4, !tbaa !30
  %xor173 = xor i32 %199, 4
  store i32 %xor173, i32* %l_dbit, align 4, !tbaa !30
  %tobool174 = icmp ne i32 %xor173, 0
  br i1 %tobool174, label %if.then.175, label %if.else.181

if.then.175:                                      ; preds = %sw.bb.172
  %200 = load i64, i64* %color, align 8, !tbaa !187
  %shr176 = lshr i64 %200, 4
  %conv177 = trunc i64 %shr176 to i8
  %201 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr178 = getelementptr inbounds i8, i8* %201, i32 1
  store i8* %incdec.ptr178, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv177, i8* %201, align 1, !tbaa !100
  %202 = load i64, i64* %color, align 8, !tbaa !187
  %shl179 = shl i64 %202, 4
  %conv180 = trunc i64 %shl179 to i8
  store i8 %conv180, i8* %l_dbyte, align 1, !tbaa !100
  br label %if.end.191

if.else.181:                                      ; preds = %sw.bb.172
  %203 = load i8, i8* %l_dbyte, align 1, !tbaa !100
  %conv182 = zext i8 %203 to i32
  %204 = load i64, i64* %color, align 8, !tbaa !187
  %shr183 = lshr i64 %204, 8
  %conv184 = trunc i64 %shr183 to i8
  %conv185 = zext i8 %conv184 to i32
  %or186 = or i32 %conv182, %conv185
  %conv187 = trunc i32 %or186 to i8
  %205 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv187, i8* %205, align 1, !tbaa !100
  %206 = load i64, i64* %color, align 8, !tbaa !187
  %conv188 = trunc i64 %206 to i8
  %207 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %arrayidx189 = getelementptr inbounds i8, i8* %207, i64 1
  store i8 %conv188, i8* %arrayidx189, align 1, !tbaa !100
  %208 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %add.ptr190 = getelementptr inbounds i8, i8* %208, i64 2
  store i8* %add.ptr190, i8** %l_dptr, align 8, !tbaa !1
  br label %if.end.191

if.end.191:                                       ; preds = %if.else.181, %if.then.175
  br label %sw.epilog

sw.bb.192:                                        ; preds = %do.body.140
  %209 = load i64, i64* %color, align 8, !tbaa !187
  %shr193 = lshr i64 %209, 56
  %conv194 = trunc i64 %shr193 to i8
  %210 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr195 = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %incdec.ptr195, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv194, i8* %210, align 1, !tbaa !100
  br label %sw.bb.196

sw.bb.196:                                        ; preds = %do.body.140, %sw.bb.192
  %211 = load i64, i64* %color, align 8, !tbaa !187
  %shr197 = lshr i64 %211, 48
  %conv198 = trunc i64 %shr197 to i8
  %212 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr199 = getelementptr inbounds i8, i8* %212, i32 1
  store i8* %incdec.ptr199, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv198, i8* %212, align 1, !tbaa !100
  br label %sw.bb.200

sw.bb.200:                                        ; preds = %do.body.140, %sw.bb.196
  %213 = load i64, i64* %color, align 8, !tbaa !187
  %shr201 = lshr i64 %213, 40
  %conv202 = trunc i64 %shr201 to i8
  %214 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr203 = getelementptr inbounds i8, i8* %214, i32 1
  store i8* %incdec.ptr203, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv202, i8* %214, align 1, !tbaa !100
  br label %sw.bb.204

sw.bb.204:                                        ; preds = %do.body.140, %sw.bb.200
  %215 = load i64, i64* %color, align 8, !tbaa !187
  %shr205 = lshr i64 %215, 32
  %conv206 = trunc i64 %shr205 to i8
  %216 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr207 = getelementptr inbounds i8, i8* %216, i32 1
  store i8* %incdec.ptr207, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv206, i8* %216, align 1, !tbaa !100
  br label %sw.bb.208

sw.bb.208:                                        ; preds = %do.body.140, %sw.bb.204
  %217 = load i64, i64* %color, align 8, !tbaa !187
  %shr209 = lshr i64 %217, 24
  %conv210 = trunc i64 %shr209 to i8
  %218 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr211 = getelementptr inbounds i8, i8* %218, i32 1
  store i8* %incdec.ptr211, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv210, i8* %218, align 1, !tbaa !100
  br label %sw.bb.212

sw.bb.212:                                        ; preds = %do.body.140, %sw.bb.208
  %219 = load i64, i64* %color, align 8, !tbaa !187
  %shr213 = lshr i64 %219, 16
  %conv214 = trunc i64 %shr213 to i8
  %220 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr215 = getelementptr inbounds i8, i8* %220, i32 1
  store i8* %incdec.ptr215, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv214, i8* %220, align 1, !tbaa !100
  br label %sw.bb.216

sw.bb.216:                                        ; preds = %do.body.140, %sw.bb.212
  %221 = load i64, i64* %color, align 8, !tbaa !187
  %shr217 = lshr i64 %221, 8
  %conv218 = trunc i64 %shr217 to i8
  %222 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr219 = getelementptr inbounds i8, i8* %222, i32 1
  store i8* %incdec.ptr219, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv218, i8* %222, align 1, !tbaa !100
  br label %sw.bb.220

sw.bb.220:                                        ; preds = %do.body.140, %sw.bb.216
  %223 = load i64, i64* %color, align 8, !tbaa !187
  %conv221 = trunc i64 %223 to i8
  %224 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr222 = getelementptr inbounds i8, i8* %224, i32 1
  store i8* %incdec.ptr222, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv221, i8* %224, align 1, !tbaa !100
  br label %sw.epilog

sw.default:                                       ; preds = %do.body.140
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.220, %if.end.191, %if.end.171, %if.end.158
  br label %do.cond.223

do.cond.223:                                      ; preds = %sw.epilog
  br label %do.end.224

do.end.224:                                       ; preds = %do.cond.223
  br label %do.body.225

do.body.225:                                      ; preds = %do.end.224
  br label %do.cond.226

do.cond.226:                                      ; preds = %do.body.225
  br label %do.end.227

do.end.227:                                       ; preds = %do.cond.226
  %225 = load i32, i32* %x21, align 4, !tbaa !30
  %inc228 = add nsw i32 %225, 1
  store i32 %inc228, i32* %x21, align 4, !tbaa !30
  %226 = load i16*, i16** %psrc, align 8, !tbaa !1
  %add.ptr229 = getelementptr inbounds i16, i16* %226, i64 1
  store i16* %add.ptr229, i16** %psrc, align 8, !tbaa !1
  br label %do.cond.230

do.cond.230:                                      ; preds = %do.end.227
  %227 = load i32, i32* %x21, align 4, !tbaa !30
  %228 = load i32, i32* %xe, align 4, !tbaa !30
  %cmp231 = icmp slt i32 %227, %228
  br i1 %cmp231, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond.230
  %229 = load i16*, i16** %psrc, align 8, !tbaa !1
  %arrayidx233 = getelementptr inbounds i16, i16* %229, i64 -1
  %230 = load i16, i16* %arrayidx233, align 2, !tbaa !189
  %conv234 = sext i16 %230 to i32
  %231 = load i16*, i16** %psrc, align 8, !tbaa !1
  %arrayidx235 = getelementptr inbounds i16, i16* %231, i64 0
  %232 = load i16, i16* %arrayidx235, align 2, !tbaa !189
  %conv236 = sext i16 %232 to i32
  %cmp237 = icmp eq i32 %conv234, %conv236
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond.230
  %233 = phi i1 [ false, %do.cond.230 ], [ %cmp237, %land.rhs ]
  br i1 %233, label %do.body.139, label %do.end.239

do.end.239:                                       ; preds = %land.end
  br label %sw.epilog.590

sw.bb.240:                                        ; preds = %if.then.138
  br label %do.body.241

do.body.241:                                      ; preds = %land.end.363, %sw.bb.240
  br label %do.body.242

do.body.242:                                      ; preds = %do.body.241
  %234 = load i32, i32* %bpp, align 4, !tbaa !30
  %shr243 = ashr i32 %234, 2
  switch i32 %shr243, label %sw.default.330 [
    i32 0, label %sw.bb.244
    i32 1, label %sw.bb.265
    i32 3, label %sw.bb.279
    i32 16, label %sw.bb.299
    i32 14, label %sw.bb.303
    i32 12, label %sw.bb.307
    i32 10, label %sw.bb.311
    i32 8, label %sw.bb.315
    i32 6, label %sw.bb.319
    i32 4, label %sw.bb.323
    i32 2, label %sw.bb.327
  ]

sw.bb.244:                                        ; preds = %do.body.242
  %235 = load i32, i32* %bpp, align 4, !tbaa !30
  %236 = load i32, i32* %l_dbit, align 4, !tbaa !30
  %add245 = add nsw i32 %236, %235
  store i32 %add245, i32* %l_dbit, align 4, !tbaa !30
  %cmp246 = icmp eq i32 %add245, 8
  br i1 %cmp246, label %if.then.248, label %if.else.255

if.then.248:                                      ; preds = %sw.bb.244
  %237 = load i8, i8* %l_dbyte, align 1, !tbaa !100
  %conv249 = zext i8 %237 to i32
  %238 = load i64, i64* %color, align 8, !tbaa !187
  %conv250 = trunc i64 %238 to i8
  %conv251 = zext i8 %conv250 to i32
  %or252 = or i32 %conv249, %conv251
  %conv253 = trunc i32 %or252 to i8
  %239 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr254 = getelementptr inbounds i8, i8* %239, i32 1
  store i8* %incdec.ptr254, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv253, i8* %239, align 1, !tbaa !100
  store i8 0, i8* %l_dbyte, align 1, !tbaa !100
  store i32 0, i32* %l_dbit, align 4, !tbaa !30
  br label %if.end.264

if.else.255:                                      ; preds = %sw.bb.244
  %240 = load i64, i64* %color, align 8, !tbaa !187
  %241 = load i32, i32* %l_dbit, align 4, !tbaa !30
  %sub256 = sub nsw i32 8, %241
  %sh_prom257 = zext i32 %sub256 to i64
  %shl258 = shl i64 %240, %sh_prom257
  %conv259 = trunc i64 %shl258 to i8
  %conv260 = zext i8 %conv259 to i32
  %242 = load i8, i8* %l_dbyte, align 1, !tbaa !100
  %conv261 = zext i8 %242 to i32
  %or262 = or i32 %conv261, %conv260
  %conv263 = trunc i32 %or262 to i8
  store i8 %conv263, i8* %l_dbyte, align 1, !tbaa !100
  br label %if.end.264

if.end.264:                                       ; preds = %if.else.255, %if.then.248
  br label %sw.epilog.331

sw.bb.265:                                        ; preds = %do.body.242
  %243 = load i32, i32* %l_dbit, align 4, !tbaa !30
  %xor266 = xor i32 %243, 4
  store i32 %xor266, i32* %l_dbit, align 4, !tbaa !30
  %tobool267 = icmp ne i32 %xor266, 0
  br i1 %tobool267, label %if.then.268, label %if.else.271

if.then.268:                                      ; preds = %sw.bb.265
  %244 = load i64, i64* %color, align 8, !tbaa !187
  %shl269 = shl i64 %244, 4
  %conv270 = trunc i64 %shl269 to i8
  store i8 %conv270, i8* %l_dbyte, align 1, !tbaa !100
  br label %if.end.278

if.else.271:                                      ; preds = %sw.bb.265
  %245 = load i8, i8* %l_dbyte, align 1, !tbaa !100
  %conv272 = zext i8 %245 to i32
  %246 = load i64, i64* %color, align 8, !tbaa !187
  %conv273 = trunc i64 %246 to i8
  %conv274 = zext i8 %conv273 to i32
  %or275 = or i32 %conv272, %conv274
  %conv276 = trunc i32 %or275 to i8
  %247 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr277 = getelementptr inbounds i8, i8* %247, i32 1
  store i8* %incdec.ptr277, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv276, i8* %247, align 1, !tbaa !100
  br label %if.end.278

if.end.278:                                       ; preds = %if.else.271, %if.then.268
  br label %sw.epilog.331

sw.bb.279:                                        ; preds = %do.body.242
  %248 = load i32, i32* %l_dbit, align 4, !tbaa !30
  %xor280 = xor i32 %248, 4
  store i32 %xor280, i32* %l_dbit, align 4, !tbaa !30
  %tobool281 = icmp ne i32 %xor280, 0
  br i1 %tobool281, label %if.then.282, label %if.else.288

if.then.282:                                      ; preds = %sw.bb.279
  %249 = load i64, i64* %color, align 8, !tbaa !187
  %shr283 = lshr i64 %249, 4
  %conv284 = trunc i64 %shr283 to i8
  %250 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr285 = getelementptr inbounds i8, i8* %250, i32 1
  store i8* %incdec.ptr285, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv284, i8* %250, align 1, !tbaa !100
  %251 = load i64, i64* %color, align 8, !tbaa !187
  %shl286 = shl i64 %251, 4
  %conv287 = trunc i64 %shl286 to i8
  store i8 %conv287, i8* %l_dbyte, align 1, !tbaa !100
  br label %if.end.298

if.else.288:                                      ; preds = %sw.bb.279
  %252 = load i8, i8* %l_dbyte, align 1, !tbaa !100
  %conv289 = zext i8 %252 to i32
  %253 = load i64, i64* %color, align 8, !tbaa !187
  %shr290 = lshr i64 %253, 8
  %conv291 = trunc i64 %shr290 to i8
  %conv292 = zext i8 %conv291 to i32
  %or293 = or i32 %conv289, %conv292
  %conv294 = trunc i32 %or293 to i8
  %254 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv294, i8* %254, align 1, !tbaa !100
  %255 = load i64, i64* %color, align 8, !tbaa !187
  %conv295 = trunc i64 %255 to i8
  %256 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %arrayidx296 = getelementptr inbounds i8, i8* %256, i64 1
  store i8 %conv295, i8* %arrayidx296, align 1, !tbaa !100
  %257 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %add.ptr297 = getelementptr inbounds i8, i8* %257, i64 2
  store i8* %add.ptr297, i8** %l_dptr, align 8, !tbaa !1
  br label %if.end.298

if.end.298:                                       ; preds = %if.else.288, %if.then.282
  br label %sw.epilog.331

sw.bb.299:                                        ; preds = %do.body.242
  %258 = load i64, i64* %color, align 8, !tbaa !187
  %shr300 = lshr i64 %258, 56
  %conv301 = trunc i64 %shr300 to i8
  %259 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr302 = getelementptr inbounds i8, i8* %259, i32 1
  store i8* %incdec.ptr302, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv301, i8* %259, align 1, !tbaa !100
  br label %sw.bb.303

sw.bb.303:                                        ; preds = %do.body.242, %sw.bb.299
  %260 = load i64, i64* %color, align 8, !tbaa !187
  %shr304 = lshr i64 %260, 48
  %conv305 = trunc i64 %shr304 to i8
  %261 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr306 = getelementptr inbounds i8, i8* %261, i32 1
  store i8* %incdec.ptr306, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv305, i8* %261, align 1, !tbaa !100
  br label %sw.bb.307

sw.bb.307:                                        ; preds = %do.body.242, %sw.bb.303
  %262 = load i64, i64* %color, align 8, !tbaa !187
  %shr308 = lshr i64 %262, 40
  %conv309 = trunc i64 %shr308 to i8
  %263 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr310 = getelementptr inbounds i8, i8* %263, i32 1
  store i8* %incdec.ptr310, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv309, i8* %263, align 1, !tbaa !100
  br label %sw.bb.311

sw.bb.311:                                        ; preds = %do.body.242, %sw.bb.307
  %264 = load i64, i64* %color, align 8, !tbaa !187
  %shr312 = lshr i64 %264, 32
  %conv313 = trunc i64 %shr312 to i8
  %265 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr314 = getelementptr inbounds i8, i8* %265, i32 1
  store i8* %incdec.ptr314, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv313, i8* %265, align 1, !tbaa !100
  br label %sw.bb.315

sw.bb.315:                                        ; preds = %do.body.242, %sw.bb.311
  %266 = load i64, i64* %color, align 8, !tbaa !187
  %shr316 = lshr i64 %266, 24
  %conv317 = trunc i64 %shr316 to i8
  %267 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr318 = getelementptr inbounds i8, i8* %267, i32 1
  store i8* %incdec.ptr318, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv317, i8* %267, align 1, !tbaa !100
  br label %sw.bb.319

sw.bb.319:                                        ; preds = %do.body.242, %sw.bb.315
  %268 = load i64, i64* %color, align 8, !tbaa !187
  %shr320 = lshr i64 %268, 16
  %conv321 = trunc i64 %shr320 to i8
  %269 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr322 = getelementptr inbounds i8, i8* %269, i32 1
  store i8* %incdec.ptr322, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv321, i8* %269, align 1, !tbaa !100
  br label %sw.bb.323

sw.bb.323:                                        ; preds = %do.body.242, %sw.bb.319
  %270 = load i64, i64* %color, align 8, !tbaa !187
  %shr324 = lshr i64 %270, 8
  %conv325 = trunc i64 %shr324 to i8
  %271 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr326 = getelementptr inbounds i8, i8* %271, i32 1
  store i8* %incdec.ptr326, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv325, i8* %271, align 1, !tbaa !100
  br label %sw.bb.327

sw.bb.327:                                        ; preds = %do.body.242, %sw.bb.323
  %272 = load i64, i64* %color, align 8, !tbaa !187
  %conv328 = trunc i64 %272 to i8
  %273 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr329 = getelementptr inbounds i8, i8* %273, i32 1
  store i8* %incdec.ptr329, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv328, i8* %273, align 1, !tbaa !100
  br label %sw.epilog.331

sw.default.330:                                   ; preds = %do.body.242
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog.331:                                    ; preds = %sw.bb.327, %if.end.298, %if.end.278, %if.end.264
  br label %do.cond.332

do.cond.332:                                      ; preds = %sw.epilog.331
  br label %do.end.333

do.end.333:                                       ; preds = %do.cond.332
  br label %do.body.334

do.body.334:                                      ; preds = %do.end.333
  br label %do.cond.335

do.cond.335:                                      ; preds = %do.body.334
  br label %do.end.336

do.end.336:                                       ; preds = %do.cond.335
  %274 = load i32, i32* %x21, align 4, !tbaa !30
  %inc337 = add nsw i32 %274, 1
  store i32 %inc337, i32* %x21, align 4, !tbaa !30
  %275 = load i16*, i16** %psrc, align 8, !tbaa !1
  %add.ptr338 = getelementptr inbounds i16, i16* %275, i64 3
  store i16* %add.ptr338, i16** %psrc, align 8, !tbaa !1
  br label %do.cond.339

do.cond.339:                                      ; preds = %do.end.336
  %276 = load i32, i32* %x21, align 4, !tbaa !30
  %277 = load i32, i32* %xe, align 4, !tbaa !30
  %cmp340 = icmp slt i32 %276, %277
  br i1 %cmp340, label %land.lhs.true.342, label %land.end.363

land.lhs.true.342:                                ; preds = %do.cond.339
  %278 = load i16*, i16** %psrc, align 8, !tbaa !1
  %arrayidx343 = getelementptr inbounds i16, i16* %278, i64 -3
  %279 = load i16, i16* %arrayidx343, align 2, !tbaa !189
  %conv344 = sext i16 %279 to i32
  %280 = load i16*, i16** %psrc, align 8, !tbaa !1
  %arrayidx345 = getelementptr inbounds i16, i16* %280, i64 0
  %281 = load i16, i16* %arrayidx345, align 2, !tbaa !189
  %conv346 = sext i16 %281 to i32
  %cmp347 = icmp eq i32 %conv344, %conv346
  br i1 %cmp347, label %land.lhs.true.349, label %land.end.363

land.lhs.true.349:                                ; preds = %land.lhs.true.342
  %282 = load i16*, i16** %psrc, align 8, !tbaa !1
  %arrayidx350 = getelementptr inbounds i16, i16* %282, i64 -2
  %283 = load i16, i16* %arrayidx350, align 2, !tbaa !189
  %conv351 = sext i16 %283 to i32
  %284 = load i16*, i16** %psrc, align 8, !tbaa !1
  %arrayidx352 = getelementptr inbounds i16, i16* %284, i64 1
  %285 = load i16, i16* %arrayidx352, align 2, !tbaa !189
  %conv353 = sext i16 %285 to i32
  %cmp354 = icmp eq i32 %conv351, %conv353
  br i1 %cmp354, label %land.rhs.356, label %land.end.363

land.rhs.356:                                     ; preds = %land.lhs.true.349
  %286 = load i16*, i16** %psrc, align 8, !tbaa !1
  %arrayidx357 = getelementptr inbounds i16, i16* %286, i64 -1
  %287 = load i16, i16* %arrayidx357, align 2, !tbaa !189
  %conv358 = sext i16 %287 to i32
  %288 = load i16*, i16** %psrc, align 8, !tbaa !1
  %arrayidx359 = getelementptr inbounds i16, i16* %288, i64 2
  %289 = load i16, i16* %arrayidx359, align 2, !tbaa !189
  %conv360 = sext i16 %289 to i32
  %cmp361 = icmp eq i32 %conv358, %conv360
  br label %land.end.363

land.end.363:                                     ; preds = %land.rhs.356, %land.lhs.true.349, %land.lhs.true.342, %do.cond.339
  %290 = phi i1 [ false, %land.lhs.true.349 ], [ false, %land.lhs.true.342 ], [ false, %do.cond.339 ], [ %cmp361, %land.rhs.356 ]
  br i1 %290, label %do.body.241, label %do.end.364

do.end.364:                                       ; preds = %land.end.363
  br label %sw.epilog.590

sw.bb.365:                                        ; preds = %if.then.138
  br label %do.body.366

do.body.366:                                      ; preds = %land.end.492, %sw.bb.365
  br label %do.body.367

do.body.367:                                      ; preds = %do.body.366
  %291 = load i32, i32* %bpp, align 4, !tbaa !30
  %shr368 = ashr i32 %291, 2
  switch i32 %shr368, label %sw.default.455 [
    i32 0, label %sw.bb.369
    i32 1, label %sw.bb.390
    i32 3, label %sw.bb.404
    i32 16, label %sw.bb.424
    i32 14, label %sw.bb.428
    i32 12, label %sw.bb.432
    i32 10, label %sw.bb.436
    i32 8, label %sw.bb.440
    i32 6, label %sw.bb.444
    i32 4, label %sw.bb.448
    i32 2, label %sw.bb.452
  ]

sw.bb.369:                                        ; preds = %do.body.367
  %292 = load i32, i32* %bpp, align 4, !tbaa !30
  %293 = load i32, i32* %l_dbit, align 4, !tbaa !30
  %add370 = add nsw i32 %293, %292
  store i32 %add370, i32* %l_dbit, align 4, !tbaa !30
  %cmp371 = icmp eq i32 %add370, 8
  br i1 %cmp371, label %if.then.373, label %if.else.380

if.then.373:                                      ; preds = %sw.bb.369
  %294 = load i8, i8* %l_dbyte, align 1, !tbaa !100
  %conv374 = zext i8 %294 to i32
  %295 = load i64, i64* %color, align 8, !tbaa !187
  %conv375 = trunc i64 %295 to i8
  %conv376 = zext i8 %conv375 to i32
  %or377 = or i32 %conv374, %conv376
  %conv378 = trunc i32 %or377 to i8
  %296 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr379 = getelementptr inbounds i8, i8* %296, i32 1
  store i8* %incdec.ptr379, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv378, i8* %296, align 1, !tbaa !100
  store i8 0, i8* %l_dbyte, align 1, !tbaa !100
  store i32 0, i32* %l_dbit, align 4, !tbaa !30
  br label %if.end.389

if.else.380:                                      ; preds = %sw.bb.369
  %297 = load i64, i64* %color, align 8, !tbaa !187
  %298 = load i32, i32* %l_dbit, align 4, !tbaa !30
  %sub381 = sub nsw i32 8, %298
  %sh_prom382 = zext i32 %sub381 to i64
  %shl383 = shl i64 %297, %sh_prom382
  %conv384 = trunc i64 %shl383 to i8
  %conv385 = zext i8 %conv384 to i32
  %299 = load i8, i8* %l_dbyte, align 1, !tbaa !100
  %conv386 = zext i8 %299 to i32
  %or387 = or i32 %conv386, %conv385
  %conv388 = trunc i32 %or387 to i8
  store i8 %conv388, i8* %l_dbyte, align 1, !tbaa !100
  br label %if.end.389

if.end.389:                                       ; preds = %if.else.380, %if.then.373
  br label %sw.epilog.456

sw.bb.390:                                        ; preds = %do.body.367
  %300 = load i32, i32* %l_dbit, align 4, !tbaa !30
  %xor391 = xor i32 %300, 4
  store i32 %xor391, i32* %l_dbit, align 4, !tbaa !30
  %tobool392 = icmp ne i32 %xor391, 0
  br i1 %tobool392, label %if.then.393, label %if.else.396

if.then.393:                                      ; preds = %sw.bb.390
  %301 = load i64, i64* %color, align 8, !tbaa !187
  %shl394 = shl i64 %301, 4
  %conv395 = trunc i64 %shl394 to i8
  store i8 %conv395, i8* %l_dbyte, align 1, !tbaa !100
  br label %if.end.403

if.else.396:                                      ; preds = %sw.bb.390
  %302 = load i8, i8* %l_dbyte, align 1, !tbaa !100
  %conv397 = zext i8 %302 to i32
  %303 = load i64, i64* %color, align 8, !tbaa !187
  %conv398 = trunc i64 %303 to i8
  %conv399 = zext i8 %conv398 to i32
  %or400 = or i32 %conv397, %conv399
  %conv401 = trunc i32 %or400 to i8
  %304 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr402 = getelementptr inbounds i8, i8* %304, i32 1
  store i8* %incdec.ptr402, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv401, i8* %304, align 1, !tbaa !100
  br label %if.end.403

if.end.403:                                       ; preds = %if.else.396, %if.then.393
  br label %sw.epilog.456

sw.bb.404:                                        ; preds = %do.body.367
  %305 = load i32, i32* %l_dbit, align 4, !tbaa !30
  %xor405 = xor i32 %305, 4
  store i32 %xor405, i32* %l_dbit, align 4, !tbaa !30
  %tobool406 = icmp ne i32 %xor405, 0
  br i1 %tobool406, label %if.then.407, label %if.else.413

if.then.407:                                      ; preds = %sw.bb.404
  %306 = load i64, i64* %color, align 8, !tbaa !187
  %shr408 = lshr i64 %306, 4
  %conv409 = trunc i64 %shr408 to i8
  %307 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr410 = getelementptr inbounds i8, i8* %307, i32 1
  store i8* %incdec.ptr410, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv409, i8* %307, align 1, !tbaa !100
  %308 = load i64, i64* %color, align 8, !tbaa !187
  %shl411 = shl i64 %308, 4
  %conv412 = trunc i64 %shl411 to i8
  store i8 %conv412, i8* %l_dbyte, align 1, !tbaa !100
  br label %if.end.423

if.else.413:                                      ; preds = %sw.bb.404
  %309 = load i8, i8* %l_dbyte, align 1, !tbaa !100
  %conv414 = zext i8 %309 to i32
  %310 = load i64, i64* %color, align 8, !tbaa !187
  %shr415 = lshr i64 %310, 8
  %conv416 = trunc i64 %shr415 to i8
  %conv417 = zext i8 %conv416 to i32
  %or418 = or i32 %conv414, %conv417
  %conv419 = trunc i32 %or418 to i8
  %311 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv419, i8* %311, align 1, !tbaa !100
  %312 = load i64, i64* %color, align 8, !tbaa !187
  %conv420 = trunc i64 %312 to i8
  %313 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %arrayidx421 = getelementptr inbounds i8, i8* %313, i64 1
  store i8 %conv420, i8* %arrayidx421, align 1, !tbaa !100
  %314 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %add.ptr422 = getelementptr inbounds i8, i8* %314, i64 2
  store i8* %add.ptr422, i8** %l_dptr, align 8, !tbaa !1
  br label %if.end.423

if.end.423:                                       ; preds = %if.else.413, %if.then.407
  br label %sw.epilog.456

sw.bb.424:                                        ; preds = %do.body.367
  %315 = load i64, i64* %color, align 8, !tbaa !187
  %shr425 = lshr i64 %315, 56
  %conv426 = trunc i64 %shr425 to i8
  %316 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr427 = getelementptr inbounds i8, i8* %316, i32 1
  store i8* %incdec.ptr427, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv426, i8* %316, align 1, !tbaa !100
  br label %sw.bb.428

sw.bb.428:                                        ; preds = %do.body.367, %sw.bb.424
  %317 = load i64, i64* %color, align 8, !tbaa !187
  %shr429 = lshr i64 %317, 48
  %conv430 = trunc i64 %shr429 to i8
  %318 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr431 = getelementptr inbounds i8, i8* %318, i32 1
  store i8* %incdec.ptr431, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv430, i8* %318, align 1, !tbaa !100
  br label %sw.bb.432

sw.bb.432:                                        ; preds = %do.body.367, %sw.bb.428
  %319 = load i64, i64* %color, align 8, !tbaa !187
  %shr433 = lshr i64 %319, 40
  %conv434 = trunc i64 %shr433 to i8
  %320 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr435 = getelementptr inbounds i8, i8* %320, i32 1
  store i8* %incdec.ptr435, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv434, i8* %320, align 1, !tbaa !100
  br label %sw.bb.436

sw.bb.436:                                        ; preds = %do.body.367, %sw.bb.432
  %321 = load i64, i64* %color, align 8, !tbaa !187
  %shr437 = lshr i64 %321, 32
  %conv438 = trunc i64 %shr437 to i8
  %322 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr439 = getelementptr inbounds i8, i8* %322, i32 1
  store i8* %incdec.ptr439, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv438, i8* %322, align 1, !tbaa !100
  br label %sw.bb.440

sw.bb.440:                                        ; preds = %do.body.367, %sw.bb.436
  %323 = load i64, i64* %color, align 8, !tbaa !187
  %shr441 = lshr i64 %323, 24
  %conv442 = trunc i64 %shr441 to i8
  %324 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr443 = getelementptr inbounds i8, i8* %324, i32 1
  store i8* %incdec.ptr443, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv442, i8* %324, align 1, !tbaa !100
  br label %sw.bb.444

sw.bb.444:                                        ; preds = %do.body.367, %sw.bb.440
  %325 = load i64, i64* %color, align 8, !tbaa !187
  %shr445 = lshr i64 %325, 16
  %conv446 = trunc i64 %shr445 to i8
  %326 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr447 = getelementptr inbounds i8, i8* %326, i32 1
  store i8* %incdec.ptr447, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv446, i8* %326, align 1, !tbaa !100
  br label %sw.bb.448

sw.bb.448:                                        ; preds = %do.body.367, %sw.bb.444
  %327 = load i64, i64* %color, align 8, !tbaa !187
  %shr449 = lshr i64 %327, 8
  %conv450 = trunc i64 %shr449 to i8
  %328 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr451 = getelementptr inbounds i8, i8* %328, i32 1
  store i8* %incdec.ptr451, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv450, i8* %328, align 1, !tbaa !100
  br label %sw.bb.452

sw.bb.452:                                        ; preds = %do.body.367, %sw.bb.448
  %329 = load i64, i64* %color, align 8, !tbaa !187
  %conv453 = trunc i64 %329 to i8
  %330 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr454 = getelementptr inbounds i8, i8* %330, i32 1
  store i8* %incdec.ptr454, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv453, i8* %330, align 1, !tbaa !100
  br label %sw.epilog.456

sw.default.455:                                   ; preds = %do.body.367
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog.456:                                    ; preds = %sw.bb.452, %if.end.423, %if.end.403, %if.end.389
  br label %do.cond.457

do.cond.457:                                      ; preds = %sw.epilog.456
  br label %do.end.458

do.end.458:                                       ; preds = %do.cond.457
  %331 = load i32, i32* %x21, align 4, !tbaa !30
  %inc459 = add nsw i32 %331, 1
  store i32 %inc459, i32* %x21, align 4, !tbaa !30
  %332 = load i16*, i16** %psrc, align 8, !tbaa !1
  %add.ptr460 = getelementptr inbounds i16, i16* %332, i64 4
  store i16* %add.ptr460, i16** %psrc, align 8, !tbaa !1
  br label %do.cond.461

do.cond.461:                                      ; preds = %do.end.458
  %333 = load i32, i32* %x21, align 4, !tbaa !30
  %334 = load i32, i32* %xe, align 4, !tbaa !30
  %cmp462 = icmp slt i32 %333, %334
  br i1 %cmp462, label %land.lhs.true.464, label %land.end.492

land.lhs.true.464:                                ; preds = %do.cond.461
  %335 = load i16*, i16** %psrc, align 8, !tbaa !1
  %arrayidx465 = getelementptr inbounds i16, i16* %335, i64 -4
  %336 = load i16, i16* %arrayidx465, align 2, !tbaa !189
  %conv466 = sext i16 %336 to i32
  %337 = load i16*, i16** %psrc, align 8, !tbaa !1
  %arrayidx467 = getelementptr inbounds i16, i16* %337, i64 0
  %338 = load i16, i16* %arrayidx467, align 2, !tbaa !189
  %conv468 = sext i16 %338 to i32
  %cmp469 = icmp eq i32 %conv466, %conv468
  br i1 %cmp469, label %land.lhs.true.471, label %land.end.492

land.lhs.true.471:                                ; preds = %land.lhs.true.464
  %339 = load i16*, i16** %psrc, align 8, !tbaa !1
  %arrayidx472 = getelementptr inbounds i16, i16* %339, i64 -3
  %340 = load i16, i16* %arrayidx472, align 2, !tbaa !189
  %conv473 = sext i16 %340 to i32
  %341 = load i16*, i16** %psrc, align 8, !tbaa !1
  %arrayidx474 = getelementptr inbounds i16, i16* %341, i64 1
  %342 = load i16, i16* %arrayidx474, align 2, !tbaa !189
  %conv475 = sext i16 %342 to i32
  %cmp476 = icmp eq i32 %conv473, %conv475
  br i1 %cmp476, label %land.lhs.true.478, label %land.end.492

land.lhs.true.478:                                ; preds = %land.lhs.true.471
  %343 = load i16*, i16** %psrc, align 8, !tbaa !1
  %arrayidx479 = getelementptr inbounds i16, i16* %343, i64 -2
  %344 = load i16, i16* %arrayidx479, align 2, !tbaa !189
  %conv480 = sext i16 %344 to i32
  %345 = load i16*, i16** %psrc, align 8, !tbaa !1
  %arrayidx481 = getelementptr inbounds i16, i16* %345, i64 2
  %346 = load i16, i16* %arrayidx481, align 2, !tbaa !189
  %conv482 = sext i16 %346 to i32
  %cmp483 = icmp eq i32 %conv480, %conv482
  br i1 %cmp483, label %land.rhs.485, label %land.end.492

land.rhs.485:                                     ; preds = %land.lhs.true.478
  %347 = load i16*, i16** %psrc, align 8, !tbaa !1
  %arrayidx486 = getelementptr inbounds i16, i16* %347, i64 -1
  %348 = load i16, i16* %arrayidx486, align 2, !tbaa !189
  %conv487 = sext i16 %348 to i32
  %349 = load i16*, i16** %psrc, align 8, !tbaa !1
  %arrayidx488 = getelementptr inbounds i16, i16* %349, i64 3
  %350 = load i16, i16* %arrayidx488, align 2, !tbaa !189
  %conv489 = sext i16 %350 to i32
  %cmp490 = icmp eq i32 %conv487, %conv489
  br label %land.end.492

land.end.492:                                     ; preds = %land.rhs.485, %land.lhs.true.478, %land.lhs.true.471, %land.lhs.true.464, %do.cond.461
  %351 = phi i1 [ false, %land.lhs.true.478 ], [ false, %land.lhs.true.471 ], [ false, %land.lhs.true.464 ], [ false, %do.cond.461 ], [ %cmp490, %land.rhs.485 ]
  br i1 %351, label %do.body.366, label %do.end.493

do.end.493:                                       ; preds = %land.end.492
  br label %sw.epilog.590

sw.default.494:                                   ; preds = %if.then.138
  br label %do.body.495

do.body.495:                                      ; preds = %sw.default.494
  %352 = load i32, i32* %bpp, align 4, !tbaa !30
  %shr496 = ashr i32 %352, 2
  switch i32 %shr496, label %sw.default.583 [
    i32 0, label %sw.bb.497
    i32 1, label %sw.bb.518
    i32 3, label %sw.bb.532
    i32 16, label %sw.bb.552
    i32 14, label %sw.bb.556
    i32 12, label %sw.bb.560
    i32 10, label %sw.bb.564
    i32 8, label %sw.bb.568
    i32 6, label %sw.bb.572
    i32 4, label %sw.bb.576
    i32 2, label %sw.bb.580
  ]

sw.bb.497:                                        ; preds = %do.body.495
  %353 = load i32, i32* %bpp, align 4, !tbaa !30
  %354 = load i32, i32* %l_dbit, align 4, !tbaa !30
  %add498 = add nsw i32 %354, %353
  store i32 %add498, i32* %l_dbit, align 4, !tbaa !30
  %cmp499 = icmp eq i32 %add498, 8
  br i1 %cmp499, label %if.then.501, label %if.else.508

if.then.501:                                      ; preds = %sw.bb.497
  %355 = load i8, i8* %l_dbyte, align 1, !tbaa !100
  %conv502 = zext i8 %355 to i32
  %356 = load i64, i64* %color, align 8, !tbaa !187
  %conv503 = trunc i64 %356 to i8
  %conv504 = zext i8 %conv503 to i32
  %or505 = or i32 %conv502, %conv504
  %conv506 = trunc i32 %or505 to i8
  %357 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr507 = getelementptr inbounds i8, i8* %357, i32 1
  store i8* %incdec.ptr507, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv506, i8* %357, align 1, !tbaa !100
  store i8 0, i8* %l_dbyte, align 1, !tbaa !100
  store i32 0, i32* %l_dbit, align 4, !tbaa !30
  br label %if.end.517

if.else.508:                                      ; preds = %sw.bb.497
  %358 = load i64, i64* %color, align 8, !tbaa !187
  %359 = load i32, i32* %l_dbit, align 4, !tbaa !30
  %sub509 = sub nsw i32 8, %359
  %sh_prom510 = zext i32 %sub509 to i64
  %shl511 = shl i64 %358, %sh_prom510
  %conv512 = trunc i64 %shl511 to i8
  %conv513 = zext i8 %conv512 to i32
  %360 = load i8, i8* %l_dbyte, align 1, !tbaa !100
  %conv514 = zext i8 %360 to i32
  %or515 = or i32 %conv514, %conv513
  %conv516 = trunc i32 %or515 to i8
  store i8 %conv516, i8* %l_dbyte, align 1, !tbaa !100
  br label %if.end.517

if.end.517:                                       ; preds = %if.else.508, %if.then.501
  br label %sw.epilog.584

sw.bb.518:                                        ; preds = %do.body.495
  %361 = load i32, i32* %l_dbit, align 4, !tbaa !30
  %xor519 = xor i32 %361, 4
  store i32 %xor519, i32* %l_dbit, align 4, !tbaa !30
  %tobool520 = icmp ne i32 %xor519, 0
  br i1 %tobool520, label %if.then.521, label %if.else.524

if.then.521:                                      ; preds = %sw.bb.518
  %362 = load i64, i64* %color, align 8, !tbaa !187
  %shl522 = shl i64 %362, 4
  %conv523 = trunc i64 %shl522 to i8
  store i8 %conv523, i8* %l_dbyte, align 1, !tbaa !100
  br label %if.end.531

if.else.524:                                      ; preds = %sw.bb.518
  %363 = load i8, i8* %l_dbyte, align 1, !tbaa !100
  %conv525 = zext i8 %363 to i32
  %364 = load i64, i64* %color, align 8, !tbaa !187
  %conv526 = trunc i64 %364 to i8
  %conv527 = zext i8 %conv526 to i32
  %or528 = or i32 %conv525, %conv527
  %conv529 = trunc i32 %or528 to i8
  %365 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr530 = getelementptr inbounds i8, i8* %365, i32 1
  store i8* %incdec.ptr530, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv529, i8* %365, align 1, !tbaa !100
  br label %if.end.531

if.end.531:                                       ; preds = %if.else.524, %if.then.521
  br label %sw.epilog.584

sw.bb.532:                                        ; preds = %do.body.495
  %366 = load i32, i32* %l_dbit, align 4, !tbaa !30
  %xor533 = xor i32 %366, 4
  store i32 %xor533, i32* %l_dbit, align 4, !tbaa !30
  %tobool534 = icmp ne i32 %xor533, 0
  br i1 %tobool534, label %if.then.535, label %if.else.541

if.then.535:                                      ; preds = %sw.bb.532
  %367 = load i64, i64* %color, align 8, !tbaa !187
  %shr536 = lshr i64 %367, 4
  %conv537 = trunc i64 %shr536 to i8
  %368 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr538 = getelementptr inbounds i8, i8* %368, i32 1
  store i8* %incdec.ptr538, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv537, i8* %368, align 1, !tbaa !100
  %369 = load i64, i64* %color, align 8, !tbaa !187
  %shl539 = shl i64 %369, 4
  %conv540 = trunc i64 %shl539 to i8
  store i8 %conv540, i8* %l_dbyte, align 1, !tbaa !100
  br label %if.end.551

if.else.541:                                      ; preds = %sw.bb.532
  %370 = load i8, i8* %l_dbyte, align 1, !tbaa !100
  %conv542 = zext i8 %370 to i32
  %371 = load i64, i64* %color, align 8, !tbaa !187
  %shr543 = lshr i64 %371, 8
  %conv544 = trunc i64 %shr543 to i8
  %conv545 = zext i8 %conv544 to i32
  %or546 = or i32 %conv542, %conv545
  %conv547 = trunc i32 %or546 to i8
  %372 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv547, i8* %372, align 1, !tbaa !100
  %373 = load i64, i64* %color, align 8, !tbaa !187
  %conv548 = trunc i64 %373 to i8
  %374 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %arrayidx549 = getelementptr inbounds i8, i8* %374, i64 1
  store i8 %conv548, i8* %arrayidx549, align 1, !tbaa !100
  %375 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %add.ptr550 = getelementptr inbounds i8, i8* %375, i64 2
  store i8* %add.ptr550, i8** %l_dptr, align 8, !tbaa !1
  br label %if.end.551

if.end.551:                                       ; preds = %if.else.541, %if.then.535
  br label %sw.epilog.584

sw.bb.552:                                        ; preds = %do.body.495
  %376 = load i64, i64* %color, align 8, !tbaa !187
  %shr553 = lshr i64 %376, 56
  %conv554 = trunc i64 %shr553 to i8
  %377 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr555 = getelementptr inbounds i8, i8* %377, i32 1
  store i8* %incdec.ptr555, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv554, i8* %377, align 1, !tbaa !100
  br label %sw.bb.556

sw.bb.556:                                        ; preds = %do.body.495, %sw.bb.552
  %378 = load i64, i64* %color, align 8, !tbaa !187
  %shr557 = lshr i64 %378, 48
  %conv558 = trunc i64 %shr557 to i8
  %379 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr559 = getelementptr inbounds i8, i8* %379, i32 1
  store i8* %incdec.ptr559, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv558, i8* %379, align 1, !tbaa !100
  br label %sw.bb.560

sw.bb.560:                                        ; preds = %do.body.495, %sw.bb.556
  %380 = load i64, i64* %color, align 8, !tbaa !187
  %shr561 = lshr i64 %380, 40
  %conv562 = trunc i64 %shr561 to i8
  %381 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr563 = getelementptr inbounds i8, i8* %381, i32 1
  store i8* %incdec.ptr563, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv562, i8* %381, align 1, !tbaa !100
  br label %sw.bb.564

sw.bb.564:                                        ; preds = %do.body.495, %sw.bb.560
  %382 = load i64, i64* %color, align 8, !tbaa !187
  %shr565 = lshr i64 %382, 32
  %conv566 = trunc i64 %shr565 to i8
  %383 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr567 = getelementptr inbounds i8, i8* %383, i32 1
  store i8* %incdec.ptr567, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv566, i8* %383, align 1, !tbaa !100
  br label %sw.bb.568

sw.bb.568:                                        ; preds = %do.body.495, %sw.bb.564
  %384 = load i64, i64* %color, align 8, !tbaa !187
  %shr569 = lshr i64 %384, 24
  %conv570 = trunc i64 %shr569 to i8
  %385 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr571 = getelementptr inbounds i8, i8* %385, i32 1
  store i8* %incdec.ptr571, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv570, i8* %385, align 1, !tbaa !100
  br label %sw.bb.572

sw.bb.572:                                        ; preds = %do.body.495, %sw.bb.568
  %386 = load i64, i64* %color, align 8, !tbaa !187
  %shr573 = lshr i64 %386, 16
  %conv574 = trunc i64 %shr573 to i8
  %387 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr575 = getelementptr inbounds i8, i8* %387, i32 1
  store i8* %incdec.ptr575, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv574, i8* %387, align 1, !tbaa !100
  br label %sw.bb.576

sw.bb.576:                                        ; preds = %do.body.495, %sw.bb.572
  %388 = load i64, i64* %color, align 8, !tbaa !187
  %shr577 = lshr i64 %388, 8
  %conv578 = trunc i64 %shr577 to i8
  %389 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr579 = getelementptr inbounds i8, i8* %389, i32 1
  store i8* %incdec.ptr579, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv578, i8* %389, align 1, !tbaa !100
  br label %sw.bb.580

sw.bb.580:                                        ; preds = %do.body.495, %sw.bb.576
  %390 = load i64, i64* %color, align 8, !tbaa !187
  %conv581 = trunc i64 %390 to i8
  %391 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr582 = getelementptr inbounds i8, i8* %391, i32 1
  store i8* %incdec.ptr582, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv581, i8* %391, align 1, !tbaa !100
  br label %sw.epilog.584

sw.default.583:                                   ; preds = %do.body.495
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog.584:                                    ; preds = %sw.bb.580, %if.end.551, %if.end.531, %if.end.517
  br label %do.cond.585

do.cond.585:                                      ; preds = %sw.epilog.584
  br label %do.end.586

do.end.586:                                       ; preds = %do.cond.585
  %392 = load i32, i32* %x21, align 4, !tbaa !30
  %inc587 = add nsw i32 %392, 1
  store i32 %inc587, i32* %x21, align 4, !tbaa !30
  %393 = load i32, i32* %spp_decode, align 4, !tbaa !30
  %394 = load i16*, i16** %psrc, align 8, !tbaa !1
  %idx.ext588 = sext i32 %393 to i64
  %add.ptr589 = getelementptr inbounds i16, i16* %394, i64 %idx.ext588
  store i16* %add.ptr589, i16** %psrc, align 8, !tbaa !1
  br label %sw.epilog.590

sw.epilog.590:                                    ; preds = %do.end.586, %do.end.493, %do.end.364, %do.end.239
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.590, %sw.default.583, %sw.default.455, %sw.default.330, %sw.default
  %395 = bitcast i64* %color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %395) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.694 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.660

if.else.591:                                      ; preds = %if.end.134
  %396 = bitcast i32* %rcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %396) #1
  %397 = load i32, i32* %x21, align 4, !tbaa !30
  %398 = load i32, i32* %l_xprev, align 4, !tbaa !30
  %cmp592 = icmp sgt i32 %397, %398
  br i1 %cmp592, label %if.then.594, label %if.end.616

if.then.594:                                      ; preds = %if.else.591
  %399 = bitcast i32* %code595 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %399) #1
  %400 = load i32, i32* %l_dbit, align 4, !tbaa !30
  %cmp596 = icmp ne i32 %400, 0
  br i1 %cmp596, label %if.then.598, label %if.end.605

if.then.598:                                      ; preds = %if.then.594
  %401 = load i8, i8* %l_dbyte, align 1, !tbaa !100
  %conv599 = zext i8 %401 to i32
  %402 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %403 = load i8, i8* %402, align 1, !tbaa !100
  %conv600 = zext i8 %403 to i32
  %404 = load i32, i32* %l_dbit, align 4, !tbaa !30
  %shr601 = ashr i32 255, %404
  %and602 = and i32 %conv600, %shr601
  %or603 = or i32 %conv599, %and602
  %conv604 = trunc i32 %or603 to i8
  %405 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv604, i8* %405, align 1, !tbaa !100
  br label %if.end.605

if.end.605:                                       ; preds = %if.then.598, %if.then.594
  %406 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %406, i32 0, i32 42
  %copy_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 10
  %407 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %copy_color, align 8, !tbaa !190
  %408 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %409 = load i8*, i8** %out, align 8, !tbaa !1
  %410 = load i32, i32* %l_xprev, align 4, !tbaa !30
  %411 = load i32, i32* %xo, align 4, !tbaa !30
  %sub606 = sub nsw i32 %410, %411
  %412 = load i32, i32* %raster, align 4, !tbaa !30
  %413 = load i32, i32* %l_xprev, align 4, !tbaa !30
  %414 = load i32, i32* %ry, align 4, !tbaa !30
  %415 = load i32, i32* %x21, align 4, !tbaa !30
  %416 = load i32, i32* %l_xprev, align 4, !tbaa !30
  %sub607 = sub nsw i32 %415, %416
  %call608 = call i32 %407(%struct.gx_device_s* %408, i8* %409, i32 %sub606, i32 %412, i64 0, i32 %413, i32 %414, i32 %sub607, i32 1) #4
  store i32 %call608, i32* %code595, align 4, !tbaa !30
  %417 = load i32, i32* %code595, align 4, !tbaa !30
  %cmp609 = icmp slt i32 %417, 0
  br i1 %cmp609, label %if.then.611, label %if.end.612

if.then.611:                                      ; preds = %if.end.605
  %418 = load i32, i32* %code595, align 4, !tbaa !30
  store i32 %418, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.613

if.end.612:                                       ; preds = %if.end.605
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.613

cleanup.613:                                      ; preds = %if.end.612, %if.then.611
  %419 = bitcast i32* %code595 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %419) #1
  %cleanup.dest.614 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.614, label %cleanup.657 [
    i32 0, label %cleanup.cont.615
  ]

cleanup.cont.615:                                 ; preds = %cleanup.613
  br label %if.end.616

if.end.616:                                       ; preds = %cleanup.cont.615, %if.else.591
  %type617 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 0
  %420 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type617, align 8, !tbaa !188
  %fill_rectangle = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %420, i32 0, i32 5
  %421 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle, align 8, !tbaa !191
  %422 = load i32, i32* %x21, align 4, !tbaa !30
  %423 = load i32, i32* %ry, align 4, !tbaa !30
  %424 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %425 = load i32, i32* %lop, align 4, !tbaa !30
  %call618 = call i32 %421(%struct.gx_device_color_s* %devc, i32 %422, i32 %423, i32 1, i32 1, %struct.gx_device_s* %424, i32 %425, %struct.gx_rop_source_s* null) #4
  store i32 %call618, i32* %rcode, align 4, !tbaa !30
  %426 = load i32, i32* %rcode, align 4, !tbaa !30
  %cmp619 = icmp slt i32 %426, 0
  br i1 %cmp619, label %if.then.621, label %if.end.622

if.then.621:                                      ; preds = %if.end.616
  %427 = load i32, i32* %rcode, align 4, !tbaa !30
  store i32 %427, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.657

if.end.622:                                       ; preds = %if.end.616
  %428 = load i32, i32* %bpp, align 4, !tbaa !30
  %cmp623 = icmp slt i32 %428, 8
  br i1 %cmp623, label %if.then.625, label %if.else.648

if.then.625:                                      ; preds = %if.end.622
  %429 = load i32, i32* %l_dbit, align 4, !tbaa !30
  %cmp626 = icmp ne i32 %429, 0
  br i1 %cmp626, label %if.then.628, label %if.end.635

if.then.628:                                      ; preds = %if.then.625
  %430 = load i8, i8* %l_dbyte, align 1, !tbaa !100
  %conv629 = zext i8 %430 to i32
  %431 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %432 = load i8, i8* %431, align 1, !tbaa !100
  %conv630 = zext i8 %432 to i32
  %433 = load i32, i32* %l_dbit, align 4, !tbaa !30
  %shr631 = ashr i32 255, %433
  %and632 = and i32 %conv630, %shr631
  %or633 = or i32 %conv629, %and632
  %conv634 = trunc i32 %or633 to i8
  %434 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv634, i8* %434, align 1, !tbaa !100
  br label %if.end.635

if.end.635:                                       ; preds = %if.then.628, %if.then.625
  br label %do.body.636

do.body.636:                                      ; preds = %if.end.635
  %435 = load i32, i32* %bpp, align 4, !tbaa !30
  %436 = load i32, i32* %l_dbit, align 4, !tbaa !30
  %add637 = add nsw i32 %436, %435
  store i32 %add637, i32* %l_dbit, align 4, !tbaa !30
  %437 = load i32, i32* %l_dbit, align 4, !tbaa !30
  %shr638 = ashr i32 %437, 3
  %438 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %idx.ext639 = sext i32 %shr638 to i64
  %add.ptr640 = getelementptr inbounds i8, i8* %438, i64 %idx.ext639
  store i8* %add.ptr640, i8** %l_dptr, align 8, !tbaa !1
  %439 = load i32, i32* %l_dbit, align 4, !tbaa !30
  %and641 = and i32 %439, 7
  store i32 %and641, i32* %l_dbit, align 4, !tbaa !30
  br label %do.cond.642

do.cond.642:                                      ; preds = %do.body.636
  br label %do.end.643

do.end.643:                                       ; preds = %do.cond.642
  %440 = load i32, i32* %l_dbit, align 4, !tbaa !30
  %shl644 = shl i32 255, %440
  %neg = xor i32 %shl644, -1
  %441 = load i8, i8* %l_dbyte, align 1, !tbaa !100
  %conv645 = zext i8 %441 to i32
  %and646 = and i32 %conv645, %neg
  %conv647 = trunc i32 %and646 to i8
  store i8 %conv647, i8* %l_dbyte, align 1, !tbaa !100
  br label %if.end.652

if.else.648:                                      ; preds = %if.end.622
  %442 = load i32, i32* %bpp, align 4, !tbaa !30
  %shr649 = ashr i32 %442, 3
  %443 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %idx.ext650 = sext i32 %shr649 to i64
  %add.ptr651 = getelementptr inbounds i8, i8* %443, i64 %idx.ext650
  store i8* %add.ptr651, i8** %l_dptr, align 8, !tbaa !1
  br label %if.end.652

if.end.652:                                       ; preds = %if.else.648, %do.end.643
  %444 = load i32, i32* %x21, align 4, !tbaa !30
  %add653 = add nsw i32 %444, 1
  store i32 %add653, i32* %l_xprev, align 4, !tbaa !30
  %445 = load i32, i32* %x21, align 4, !tbaa !30
  %inc654 = add nsw i32 %445, 1
  store i32 %inc654, i32* %x21, align 4, !tbaa !30
  %446 = load i32, i32* %spp_decode, align 4, !tbaa !30
  %447 = load i16*, i16** %psrc, align 8, !tbaa !1
  %idx.ext655 = sext i32 %446 to i64
  %add.ptr656 = getelementptr inbounds i16, i16* %447, i64 %idx.ext655
  store i16* %add.ptr656, i16** %psrc, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.657

cleanup.657:                                      ; preds = %if.end.652, %if.then.621, %cleanup.613
  %448 = bitcast i32* %rcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %448) #1
  %cleanup.dest.658 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.658, label %cleanup.694 [
    i32 0, label %cleanup.cont.659
  ]

cleanup.cont.659:                                 ; preds = %cleanup.657
  br label %if.end.660

if.end.660:                                       ; preds = %cleanup.cont.659, %cleanup.cont
  br label %for.cond.71

for.end.661:                                      ; preds = %for.cond.71
  %449 = load i32, i32* %x21, align 4, !tbaa !30
  %450 = load i32, i32* %l_xprev, align 4, !tbaa !30
  %cmp662 = icmp sgt i32 %449, %450
  br i1 %cmp662, label %if.then.664, label %if.end.688

if.then.664:                                      ; preds = %for.end.661
  %451 = bitcast i32* %code665 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %451) #1
  %452 = load i32, i32* %l_dbit, align 4, !tbaa !30
  %cmp666 = icmp ne i32 %452, 0
  br i1 %cmp666, label %if.then.668, label %if.end.675

if.then.668:                                      ; preds = %if.then.664
  %453 = load i8, i8* %l_dbyte, align 1, !tbaa !100
  %conv669 = zext i8 %453 to i32
  %454 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %455 = load i8, i8* %454, align 1, !tbaa !100
  %conv670 = zext i8 %455 to i32
  %456 = load i32, i32* %l_dbit, align 4, !tbaa !30
  %shr671 = ashr i32 255, %456
  %and672 = and i32 %conv670, %shr671
  %or673 = or i32 %conv669, %and672
  %conv674 = trunc i32 %or673 to i8
  %457 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv674, i8* %457, align 1, !tbaa !100
  br label %if.end.675

if.end.675:                                       ; preds = %if.then.668, %if.then.664
  %458 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs676 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %458, i32 0, i32 42
  %copy_color677 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs676, i32 0, i32 10
  %459 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %copy_color677, align 8, !tbaa !190
  %460 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %461 = load i8*, i8** %out, align 8, !tbaa !1
  %462 = load i32, i32* %l_xprev, align 4, !tbaa !30
  %463 = load i32, i32* %xo, align 4, !tbaa !30
  %sub678 = sub nsw i32 %462, %463
  %464 = load i32, i32* %raster, align 4, !tbaa !30
  %465 = load i32, i32* %l_xprev, align 4, !tbaa !30
  %466 = load i32, i32* %ry, align 4, !tbaa !30
  %467 = load i32, i32* %x21, align 4, !tbaa !30
  %468 = load i32, i32* %l_xprev, align 4, !tbaa !30
  %sub679 = sub nsw i32 %467, %468
  %call680 = call i32 %459(%struct.gx_device_s* %460, i8* %461, i32 %sub678, i32 %464, i64 0, i32 %465, i32 %466, i32 %sub679, i32 1) #4
  store i32 %call680, i32* %code665, align 4, !tbaa !30
  %469 = load i32, i32* %code665, align 4, !tbaa !30
  %cmp681 = icmp slt i32 %469, 0
  br i1 %cmp681, label %if.then.683, label %if.end.684

if.then.683:                                      ; preds = %if.end.675
  %470 = load i32, i32* %code665, align 4, !tbaa !30
  store i32 %470, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.685

if.end.684:                                       ; preds = %if.end.675
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.685

cleanup.685:                                      ; preds = %if.end.684, %if.then.683
  %471 = bitcast i32* %code665 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %471) #1
  %cleanup.dest.686 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.686, label %cleanup.694 [
    i32 0, label %cleanup.cont.687
  ]

cleanup.cont.687:                                 ; preds = %cleanup.685
  br label %if.end.688

if.end.688:                                       ; preds = %cleanup.cont.687, %for.end.661
  br label %inactive

inactive:                                         ; preds = %if.end.688, %if.then.65
  %472 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line_xy689 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %472, i32 0, i32 56
  %473 = load i32, i32* %line_xy689, align 4, !tbaa !115
  %inc690 = add nsw i32 %473, 1
  store i32 %inc690, i32* %line_xy689, align 4, !tbaa !115
  br label %do.body.691

do.body.691:                                      ; preds = %inactive
  br label %do.cond.692

do.cond.692:                                      ; preds = %do.body.691
  br label %do.end.693

do.end.693:                                       ; preds = %do.cond.692
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.694

cleanup.694:                                      ; preds = %do.end.693, %cleanup.685, %cleanup.657, %cleanup, %if.then.133
  %474 = bitcast i32* %xe to i8*
  call void @llvm.lifetime.end(i64 4, i8* %474) #1
  %cleanup.dest.695 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.695, label %cleanup.710 [
    i32 0, label %cleanup.cont.696
  ]

cleanup.cont.696:                                 ; preds = %cleanup.694
  br label %if.end.697

if.end.697:                                       ; preds = %cleanup.cont.696, %if.end.55
  %475 = load i32, i32* %status, align 4, !tbaa !30
  %cmp698 = icmp eq i32 %475, 0
  br i1 %cmp698, label %land.lhs.true.700, label %lor.lhs.false.705

land.lhs.true.700:                                ; preds = %if.end.697
  %ptr701 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %stream_r, i32 0, i32 0
  %476 = load i8*, i8** %ptr701, align 8, !tbaa !175
  %limit702 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %stream_r, i32 0, i32 1
  %477 = load i8*, i8** %limit702, align 8, !tbaa !177
  %cmp703 = icmp eq i8* %476, %477
  br i1 %cmp703, label %if.then.708, label %lor.lhs.false.705

lor.lhs.false.705:                                ; preds = %land.lhs.true.700, %if.end.697
  %478 = load i32, i32* %status, align 4, !tbaa !30
  %cmp706 = icmp eq i32 %478, -1
  br i1 %cmp706, label %if.then.708, label %if.end.709

if.then.708:                                      ; preds = %lor.lhs.false.705, %land.lhs.true.700
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.710

if.end.709:                                       ; preds = %lor.lhs.false.705
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.710

cleanup.710:                                      ; preds = %if.end.709, %if.then.708, %cleanup.694, %if.then.54
  %479 = bitcast i32* %l_xprev to i8*
  call void @llvm.lifetime.end(i64 4, i8* %479) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_dbyte) #1
  %480 = bitcast i32* %l_dbit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %480) #1
  %481 = bitcast i8** %l_dptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %481) #1
  %482 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %482) #1
  %483 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %483) #1
  %484 = bitcast %struct.gx_device_color_s* %devc to i8*
  call void @llvm.lifetime.end(i64 656, i8* %484) #1
  %485 = bitcast i16** %psrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %485) #1
  %486 = bitcast i32* %x21 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %486) #1
  %487 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.end(i64 4, i8* %487) #1
  %cleanup.dest.720 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.720, label %cleanup.723 [
    i32 0, label %cleanup.cont.721
    i32 2, label %for.end.722
  ]

cleanup.cont.721:                                 ; preds = %cleanup.710
  br label %for.cond

for.end.722:                                      ; preds = %cleanup.710
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.723

cleanup.723:                                      ; preds = %for.end.722, %cleanup.710
  %488 = bitcast i32* %device_color14 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %488) #1
  %489 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %489) #1
  %490 = bitcast i32* %bpp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %490) #1
  %491 = bitcast %struct.gs_color_space_s** %pactual_cs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %491) #1
  %492 = bitcast %struct.gs_color_space_s** %pconcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %492) #1
  %493 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %493) #1
  %494 = bitcast i32* %sizeofPixelOut to i8*
  call void @llvm.lifetime.end(i64 4, i8* %494) #1
  %495 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %495) #1
  %496 = bitcast i32* %yo to i8*
  call void @llvm.lifetime.end(i64 4, i8* %496) #1
  %497 = bitcast i32* %xo to i8*
  call void @llvm.lifetime.end(i64 4, i8* %497) #1
  %cleanup.dest.733 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.733, label %cleanup.738 [
    i32 0, label %cleanup.cont.734
  ]

cleanup.cont.734:                                 ; preds = %cleanup.723
  %498 = load i32, i32* %h.addr, align 4, !tbaa !30
  %cmp735 = icmp eq i32 %498, 0
  %cond737 = select i1 %cmp735, i32 0, i32 1
  store i32 %cond737, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.738

cleanup.738:                                      ; preds = %cleanup.cont.734, %cleanup.723
  %499 = bitcast i32* %need_decode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %499) #1
  %500 = bitcast i32* %islab to i8*
  call void @llvm.lifetime.end(i64 4, i8* %500) #1
  %501 = bitcast i8** %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %501) #1
  %502 = bitcast i32* %is_index_space to i8*
  call void @llvm.lifetime.end(i64 4, i8* %502) #1
  %503 = bitcast %struct.stream_cursor_write_s* %stream_w to i8*
  call void @llvm.lifetime.end(i64 24, i8* %503) #1
  %504 = bitcast %struct.stream_cursor_read_s* %stream_r to i8*
  call void @llvm.lifetime.end(i64 24, i8* %504) #1
  %505 = bitcast i32* %spp_decode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %505) #1
  %506 = bitcast i32* %lop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %506) #1
  %507 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %507) #1
  %508 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.end(i64 8, i8* %508) #1
  %509 = bitcast %struct.stream_image_scale_state_s** %pss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %509) #1
  %510 = load i32, i32* %retval
  ret i32 %510
}

; Function Attrs: nounwind uwtable
define internal i32 @image_render_interpolate_landscape(%struct.gx_image_enum_s* %penum, i8* %buffer, i32 %data_x, i32 %iw, i32 %h, %struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gx_image_enum_s*, align 8
  %buffer.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %iw.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pss = alloca %struct.stream_image_scale_state_s*, align 8
  %pis = alloca %struct.gs_imager_state_s*, align 8
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %lop = alloca i32, align 4
  %spp_decode = alloca i32, align 4
  %stream_r = alloca %struct.stream_cursor_read_s, align 8
  %stream_w = alloca %struct.stream_cursor_write_s, align 8
  %is_index_space = alloca i32, align 4
  %out = alloca i8*, align 8
  %islab = alloca i32, align 4
  %need_decode = alloca i32, align 4
  %xo = alloca i32, align 4
  %yo = alloca i32, align 4
  %width = alloca i32, align 4
  %sizeofPixelOut = alloca i32, align 4
  %dy = alloca i32, align 4
  %pconcs = alloca %struct.gs_color_space_s*, align 8
  %pactual_cs = alloca %struct.gs_color_space_s*, align 8
  %device_color13 = alloca i32, align 4
  %ry = alloca i32, align 4
  %x18 = alloca i32, align 4
  %psrc = alloca i16*, align 8
  %devc = alloca %struct.gx_device_color_s, align 8
  %status = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %xe = alloca i32, align 4
  %cc = alloca %struct.gs_client_color_s, align 8
  %j = alloca i32, align 4
  %num_components = alloca i32, align 4
  %rcode = alloca i32, align 4
  store %struct.gx_image_enum_s* %penum, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !30
  store i32 %iw, i32* %iw.addr, align 4, !tbaa !30
  store i32 %h, i32* %h.addr, align 4, !tbaa !30
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_image_scale_state_s** %pss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %scaler = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1, i32 0, i32 50
  %2 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %scaler, align 8, !tbaa !114
  store %struct.stream_image_scale_state_s* %2, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %3 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pis1 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %4, i32 0, i32 30
  %5 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis1, align 8, !tbaa !59
  store %struct.gs_imager_state_s* %5, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %6 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs2 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %7, i32 0, i32 31
  %8 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !29
  store %struct.gs_color_space_s* %8, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %9 = bitcast i32* %lop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %log_op = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %10, i32 0, i32 44
  %11 = load i32, i32* %log_op, align 4, !tbaa !161
  store i32 %11, i32* %lop, align 4, !tbaa !30
  %12 = bitcast i32* %spp_decode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %13, i32 0, i32 5
  %spp_decode3 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params, i32 0, i32 0
  %14 = load i32, i32* %spp_decode3, align 4, !tbaa !166
  store i32 %14, i32* %spp_decode, align 4, !tbaa !30
  %15 = bitcast %struct.stream_cursor_read_s* %stream_r to i8*
  call void @llvm.lifetime.start(i64 24, i8* %15) #1
  %16 = bitcast %struct.stream_cursor_write_s* %stream_w to i8*
  call void @llvm.lifetime.start(i64 24, i8* %16) #1
  %17 = bitcast i32* %is_index_space to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i8** %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %19, i32 0, i32 34
  %20 = load i8*, i8** %line, align 8, !tbaa !113
  store i8* %20, i8** %out, align 8, !tbaa !1
  %21 = bitcast i32* %islab to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  store i32 0, i32* %islab, align 4, !tbaa !30
  %22 = bitcast i32* %need_decode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %23, i32 0, i32 6
  %24 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !38
  %cmp = icmp ne %struct.cmm_profile_s* %24, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %25 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %cmm_icc_profile_data4 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %25, i32 0, i32 6
  %26 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data4, align 8, !tbaa !38
  %islab5 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %26, i32 0, i32 2
  %27 = load i32, i32* %islab5, align 4, !tbaa !150
  store i32 %27, i32* %islab, align 4, !tbaa !30
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %28 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %device_color = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %28, i32 0, i32 41
  %29 = load i8, i8* %device_color, align 1, !tbaa !98
  %conv = zext i8 %29 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %30 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call = call i32 @gs_color_space_is_CIE(%struct.gs_color_space_s* %30) #4
  %tobool6 = icmp ne i32 %call, 0
  br i1 %tobool6, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %31 = load i32, i32* %islab, align 4, !tbaa !30
  %tobool7 = icmp ne i32 %31, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %if.end
  %32 = phi i1 [ true, %lor.lhs.false ], [ true, %if.end ], [ %tobool7, %lor.rhs ]
  %lnot = xor i1 %32, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %need_decode, align 4, !tbaa !30
  %33 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %34 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %35 = load i32, i32* %data_x.addr, align 4, !tbaa !30
  %36 = load i32, i32* %h.addr, align 4, !tbaa !30
  %37 = load i32, i32* %need_decode, align 4, !tbaa !30
  call void @initial_decode(%struct.gx_image_enum_s* %33, i8* %34, i32 %35, i32 %36, i32 %37, %struct.stream_cursor_read_s* %stream_r, i32 0) #4
  %38 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %38, i32 0, i32 0
  %39 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !41
  %index = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %39, i32 0, i32 0
  %40 = load i32, i32* %index, align 4, !tbaa !42
  %cmp8 = icmp eq i32 %40, 10
  %conv9 = zext i1 %cmp8 to i32
  store i32 %conv9, i32* %is_index_space, align 4, !tbaa !30
  %41 = bitcast i32* %xo to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #1
  %42 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %xyi = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %42, i32 0, i32 58
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %xyi, i32 0, i32 1
  %43 = load i32, i32* %y, align 4, !tbaa !125
  store i32 %43, i32* %xo, align 4, !tbaa !30
  %44 = bitcast i32* %yo to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  %45 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %xyi10 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %45, i32 0, i32 58
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %xyi10, i32 0, i32 0
  %46 = load i32, i32* %x, align 4, !tbaa !123
  store i32 %46, i32* %yo, align 4, !tbaa !30
  %47 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #1
  %48 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params11 = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %48, i32 0, i32 5
  %WidthOut = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params11, i32 0, i32 12
  %49 = load i32, i32* %WidthOut, align 4, !tbaa !162
  store i32 %49, i32* %width, align 4, !tbaa !30
  %50 = bitcast i32* %sizeofPixelOut to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #1
  %51 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params12 = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %51, i32 0, i32 5
  %BitsPerComponentOut = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params12, i32 0, i32 8
  %52 = load i32, i32* %BitsPerComponentOut, align 4, !tbaa !164
  %div = sdiv i32 %52, 8
  store i32 %div, i32* %sizeofPixelOut, align 4, !tbaa !30
  %53 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %53) #1
  %54 = bitcast %struct.gs_color_space_s** %pconcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %54) #1
  %55 = bitcast %struct.gs_color_space_s** %pactual_cs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %55) #1
  %56 = bitcast i32* %device_color13 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %56) #1
  %57 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %matrix = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %57, i32 0, i32 21
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %matrix, i32 0, i32 2
  %58 = load float, float* %yx, align 4, !tbaa !193
  %cmp14 = fcmp ogt float %58, 0.000000e+00
  br i1 %cmp14, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %lor.end
  store i32 1, i32* %dy, align 4, !tbaa !30
  br label %if.end.17

if.else:                                          ; preds = %lor.end
  store i32 -1, i32* %dy, align 4, !tbaa !30
  %59 = load i32, i32* %yo, align 4, !tbaa !30
  %dec = add nsw i32 %59, -1
  store i32 %dec, i32* %yo, align 4, !tbaa !30
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.16
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont.160, %if.end.17
  %60 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.start(i64 4, i8* %60) #1
  %61 = load i32, i32* %yo, align 4, !tbaa !30
  %62 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line_xy = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %62, i32 0, i32 56
  %63 = load i32, i32* %line_xy, align 4, !tbaa !115
  %64 = load i32, i32* %dy, align 4, !tbaa !30
  %mul = mul nsw i32 %63, %64
  %add = add nsw i32 %61, %mul
  store i32 %add, i32* %ry, align 4, !tbaa !30
  %65 = bitcast i32* %x18 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %65) #1
  %66 = bitcast i16** %psrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %66) #1
  %67 = bitcast %struct.gx_device_color_s* %devc to i8*
  call void @llvm.lifetime.start(i64 656, i8* %67) #1
  %68 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %68) #1
  %69 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %69) #1
  %70 = load i8*, i8** %out, align 8, !tbaa !1
  %71 = load i32, i32* %width, align 4, !tbaa !30
  %conv19 = sext i32 %71 to i64
  %72 = load i32, i32* %spp_decode, align 4, !tbaa !30
  %73 = load i32, i32* %sizeofPixelOut, align 4, !tbaa !30
  %mul20 = mul nsw i32 %72, %73
  %conv21 = sext i32 %mul20 to i64
  %cmp22 = icmp ugt i64 %conv21, 8
  br i1 %cmp22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  %74 = load i32, i32* %spp_decode, align 4, !tbaa !30
  %75 = load i32, i32* %sizeofPixelOut, align 4, !tbaa !30
  %mul24 = mul nsw i32 %74, %75
  %conv25 = sext i32 %mul24 to i64
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv25, %cond.true ], [ 8, %cond.false ]
  %mul26 = mul i64 %conv19, %cond
  %add.ptr = getelementptr inbounds i8, i8* %70, i64 %mul26
  %add.ptr27 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %stream_w, i32 0, i32 2
  store i8* %add.ptr27, i8** %limit, align 8, !tbaa !181
  %limit28 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %stream_w, i32 0, i32 2
  %76 = load i8*, i8** %limit28, align 8, !tbaa !181
  %77 = load i32, i32* %width, align 4, !tbaa !30
  %78 = load i32, i32* %spp_decode, align 4, !tbaa !30
  %mul29 = mul nsw i32 %77, %78
  %79 = load i32, i32* %sizeofPixelOut, align 4, !tbaa !30
  %mul30 = mul nsw i32 %mul29, %79
  %idx.ext = sext i32 %mul30 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr31 = getelementptr inbounds i8, i8* %76, i64 %idx.neg
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %stream_w, i32 0, i32 1
  store i8* %add.ptr31, i8** %ptr, align 8, !tbaa !183
  %ptr32 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %stream_w, i32 0, i32 1
  %80 = load i8*, i8** %ptr32, align 8, !tbaa !183
  %add.ptr33 = getelementptr inbounds i8, i8* %80, i64 1
  %81 = bitcast i8* %add.ptr33 to i16*
  store i16* %81, i16** %psrc, align 8, !tbaa !1
  %82 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %templat = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %82, i32 0, i32 0
  %83 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !109
  %process = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %83, i32 0, i32 2
  %84 = load i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)** %process, align 8, !tbaa !184
  %85 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %86 = bitcast %struct.stream_image_scale_state_s* %85 to %struct.stream_state_s*
  %87 = load i32, i32* %h.addr, align 4, !tbaa !30
  %cmp34 = icmp eq i32 %87, 0
  %conv35 = zext i1 %cmp34 to i32
  %call36 = call i32 %84(%struct.stream_state_s* %86, %struct.stream_cursor_read_s* %stream_r, %struct.stream_cursor_write_s* %stream_w, i32 %conv35) #4
  store i32 %call36, i32* %status, align 4, !tbaa !30
  %88 = load i32, i32* %status, align 4, !tbaa !30
  %cmp37 = icmp slt i32 %88, 0
  br i1 %cmp37, label %land.lhs.true, label %if.end.42

land.lhs.true:                                    ; preds = %cond.end
  %89 = load i32, i32* %status, align 4, !tbaa !30
  %cmp39 = icmp ne i32 %89, -1
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %land.lhs.true
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.153

if.end.42:                                        ; preds = %land.lhs.true, %cond.end
  %ptr43 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %stream_w, i32 0, i32 1
  %90 = load i8*, i8** %ptr43, align 8, !tbaa !183
  %limit44 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %stream_w, i32 0, i32 2
  %91 = load i8*, i8** %limit44, align 8, !tbaa !181
  %cmp45 = icmp eq i8* %90, %91
  br i1 %cmp45, label %if.then.47, label %if.end.140

if.then.47:                                       ; preds = %if.end.42
  %92 = bitcast i32* %xe to i8*
  call void @llvm.lifetime.start(i64 4, i8* %92) #1
  %93 = load i32, i32* %xo, align 4, !tbaa !30
  %94 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params48 = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %94, i32 0, i32 5
  %PatchWidthOut = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params48, i32 0, i32 4
  %95 = load i32, i32* %PatchWidthOut, align 4, !tbaa !180
  %add49 = add nsw i32 %93, %95
  store i32 %add49, i32* %xe, align 4, !tbaa !30
  %96 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params50 = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %96, i32 0, i32 5
  %Active = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params50, i32 0, i32 24
  %97 = load i32, i32* %Active, align 4, !tbaa !185
  %tobool51 = icmp ne i32 %97, 0
  br i1 %tobool51, label %if.end.53, label %if.then.52

if.then.52:                                       ; preds = %if.then.47
  br label %inactive

if.end.53:                                        ; preds = %if.then.47
  br label %do.body

do.body:                                          ; preds = %if.end.53
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %98 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params54 = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %98, i32 0, i32 5
  %LeftMarginOut = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params54, i32 0, i32 22
  %99 = load i32, i32* %LeftMarginOut, align 4, !tbaa !122
  %100 = load i32, i32* %spp_decode, align 4, !tbaa !30
  %mul55 = mul nsw i32 %99, %100
  %101 = load i16*, i16** %psrc, align 8, !tbaa !1
  %idx.ext56 = sext i32 %mul55 to i64
  %add.ptr57 = getelementptr inbounds i16, i16* %101, i64 %idx.ext56
  store i16* %add.ptr57, i16** %psrc, align 8, !tbaa !1
  %102 = load i32, i32* %xo, align 4, !tbaa !30
  store i32 %102, i32* %x18, align 4, !tbaa !30
  br label %for.cond.58

for.cond.58:                                      ; preds = %cleanup.cont, %do.end
  %103 = load i32, i32* %x18, align 4, !tbaa !30
  %104 = load i32, i32* %xe, align 4, !tbaa !30
  %cmp59 = icmp slt i32 %103, %104
  br i1 %cmp59, label %for.body, label %for.end.131

for.body:                                         ; preds = %for.cond.58
  %105 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %type61 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %105, i32 0, i32 0
  %106 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type61, align 8, !tbaa !41
  %index62 = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %106, i32 0, i32 0
  %107 = load i32, i32* %index62, align 4, !tbaa !42
  %cmp63 = icmp eq i32 %107, 10
  br i1 %cmp63, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %for.body
  %108 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %108, i32 0, i32 3
  %109 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !44
  store %struct.gs_color_space_s* %109, %struct.gs_color_space_s** %pactual_cs, align 8, !tbaa !1
  br label %if.end.67

if.else.66:                                       ; preds = %for.body
  %110 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  store %struct.gs_color_space_s* %110, %struct.gs_color_space_s** %pactual_cs, align 8, !tbaa !1
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.66, %if.then.65
  %111 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pactual_cs, align 8, !tbaa !1
  %type68 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %111, i32 0, i32 0
  %112 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type68, align 8, !tbaa !41
  %concrete_space = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %112, i32 0, i32 7
  %113 = load %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)** %concrete_space, align 8, !tbaa !194
  %114 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pactual_cs, align 8, !tbaa !1
  %115 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %call69 = call %struct.gs_color_space_s* %113(%struct.gs_color_space_s* %114, %struct.gs_imager_state_s* %115) #4
  store %struct.gs_color_space_s* %call69, %struct.gs_color_space_s** %pconcs, align 8, !tbaa !1
  %116 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pconcs, align 8, !tbaa !1
  %cmm_icc_profile_data70 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %116, i32 0, i32 6
  %117 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data70, align 8, !tbaa !38
  %cmp71 = icmp ne %struct.cmm_profile_s* %117, null
  br i1 %cmp71, label %if.then.73, label %if.else.74

if.then.73:                                       ; preds = %if.end.67
  store i32 0, i32* %device_color13, align 4, !tbaa !30
  br label %if.end.77

if.else.74:                                       ; preds = %if.end.67
  %118 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pconcs, align 8, !tbaa !1
  %119 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pactual_cs, align 8, !tbaa !1
  %cmp75 = icmp eq %struct.gs_color_space_s* %118, %119
  %conv76 = zext i1 %cmp75 to i32
  store i32 %conv76, i32* %device_color13, align 4, !tbaa !30
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.74, %if.then.73
  %120 = load i32, i32* %device_color13, align 4, !tbaa !30
  %tobool78 = icmp ne i32 %120, 0
  br i1 %tobool78, label %if.then.79, label %if.else.82

if.then.79:                                       ; preds = %if.end.77
  %121 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pconcs, align 8, !tbaa !1
  %type80 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %121, i32 0, i32 0
  %122 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type80, align 8, !tbaa !41
  %remap_concrete_color = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %122, i32 0, i32 9
  %123 = load i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_concrete_color, align 8, !tbaa !195
  %124 = load i16*, i16** %psrc, align 8, !tbaa !1
  %125 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pconcs, align 8, !tbaa !1
  %126 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %127 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call81 = call i32 %123(i16* %124, %struct.gs_color_space_s* %125, %struct.gx_device_color_s* %devc, %struct.gs_imager_state_s* %126, %struct.gx_device_s* %127, i32 1) #4
  store i32 %call81, i32* %code, align 4, !tbaa !30
  br label %if.end.117

if.else.82:                                       ; preds = %if.end.77
  %128 = bitcast %struct.gs_client_color_s* %cc to i8*
  call void @llvm.lifetime.start(i64 264, i8* %128) #1
  %129 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %129) #1
  %130 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.start(i64 4, i8* %130) #1
  %131 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pactual_cs, align 8, !tbaa !1
  %call83 = call i32 @gs_color_space_num_components(%struct.gs_color_space_s* %131) #4
  store i32 %call83, i32* %num_components, align 4, !tbaa !30
  store i32 0, i32* %j, align 4, !tbaa !30
  br label %for.cond.84

for.cond.84:                                      ; preds = %for.inc, %if.else.82
  %132 = load i32, i32* %j, align 4, !tbaa !30
  %133 = load i32, i32* %num_components, align 4, !tbaa !30
  %cmp85 = icmp slt i32 %132, %133
  br i1 %cmp85, label %for.body.87, label %for.end

for.body.87:                                      ; preds = %for.cond.84
  %134 = load i32, i32* %is_index_space, align 4, !tbaa !30
  %tobool88 = icmp ne i32 %134, 0
  br i1 %tobool88, label %if.then.91, label %lor.lhs.false.89

lor.lhs.false.89:                                 ; preds = %for.body.87
  %135 = load i32, i32* %islab, align 4, !tbaa !30
  %tobool90 = icmp ne i32 %135, 0
  br i1 %tobool90, label %if.then.91, label %if.else.97

if.then.91:                                       ; preds = %lor.lhs.false.89, %for.body.87
  %136 = load i32, i32* %j, align 4, !tbaa !30
  %idxprom = sext i32 %136 to i64
  %137 = load i16*, i16** %psrc, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %137, i64 %idxprom
  %138 = load i16, i16* %arrayidx, align 2, !tbaa !189
  %conv92 = sext i16 %138 to i32
  %conv93 = sitofp i32 %conv92 to float
  %div94 = fdiv float %conv93, 3.276000e+04
  %139 = load i32, i32* %j, align 4, !tbaa !30
  %idxprom95 = sext i32 %139 to i64
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx96 = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 %idxprom95
  store float %div94, float* %arrayidx96, align 4, !tbaa !196
  br label %if.end.100

if.else.97:                                       ; preds = %lor.lhs.false.89
  %140 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %141 = load i32, i32* %j, align 4, !tbaa !30
  %idxprom98 = sext i32 %141 to i64
  %142 = load i16*, i16** %psrc, align 8, !tbaa !1
  %arrayidx99 = getelementptr inbounds i16, i16* %142, i64 %idxprom98
  %143 = load i16, i16* %arrayidx99, align 2, !tbaa !189
  %144 = load i32, i32* %j, align 4, !tbaa !30
  call void @decode_sample_frac_to_float(%struct.gx_image_enum_s* %140, i16 signext %143, %struct.gs_client_color_s* %cc, i32 %144) #4
  br label %if.end.100

if.end.100:                                       ; preds = %if.else.97, %if.then.91
  br label %for.inc

for.inc:                                          ; preds = %if.end.100
  %145 = load i32, i32* %j, align 4, !tbaa !30
  %inc = add nsw i32 %145, 1
  store i32 %inc, i32* %j, align 4, !tbaa !30
  br label %for.cond.84

for.end:                                          ; preds = %for.cond.84
  %146 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pactual_cs, align 8, !tbaa !1
  %call101 = call i32 @gs_color_space_is_ICC(%struct.gs_color_space_s* %146) #4
  %tobool102 = icmp ne i32 %call101, 0
  br i1 %tobool102, label %land.lhs.true.103, label %if.else.113

land.lhs.true.103:                                ; preds = %for.end
  %147 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pactual_cs, align 8, !tbaa !1
  %cmm_icc_profile_data104 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %147, i32 0, i32 6
  %148 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data104, align 8, !tbaa !38
  %cmp105 = icmp ne %struct.cmm_profile_s* %148, null
  br i1 %cmp105, label %land.lhs.true.107, label %if.else.113

land.lhs.true.107:                                ; preds = %land.lhs.true.103
  %149 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pactual_cs, align 8, !tbaa !1
  %cmm_icc_profile_data108 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %149, i32 0, i32 6
  %150 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data108, align 8, !tbaa !38
  %islab109 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %150, i32 0, i32 2
  %151 = load i32, i32* %islab109, align 4, !tbaa !150
  %tobool110 = icmp ne i32 %151, 0
  br i1 %tobool110, label %if.then.111, label %if.else.113

if.then.111:                                      ; preds = %land.lhs.true.107
  %152 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pactual_cs, align 8, !tbaa !1
  %153 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %154 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call112 = call i32 @gx_remap_ICC_imagelab(%struct.gs_client_color_s* %cc, %struct.gs_color_space_s* %152, %struct.gx_device_color_s* %devc, %struct.gs_imager_state_s* %153, %struct.gx_device_s* %154, i32 1) #4
  store i32 %call112, i32* %code, align 4, !tbaa !30
  br label %if.end.116

if.else.113:                                      ; preds = %land.lhs.true.107, %land.lhs.true.103, %for.end
  %155 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pactual_cs, align 8, !tbaa !1
  %type114 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %155, i32 0, i32 0
  %156 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type114, align 8, !tbaa !41
  %remap_color = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %156, i32 0, i32 10
  %157 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_color, align 8, !tbaa !197
  %158 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pactual_cs, align 8, !tbaa !1
  %159 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %160 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call115 = call i32 %157(%struct.gs_client_color_s* %cc, %struct.gs_color_space_s* %158, %struct.gx_device_color_s* %devc, %struct.gs_imager_state_s* %159, %struct.gx_device_s* %160, i32 1) #4
  store i32 %call115, i32* %code, align 4, !tbaa !30
  br label %if.end.116

if.end.116:                                       ; preds = %if.else.113, %if.then.111
  %161 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.end(i64 4, i8* %161) #1
  %162 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %162) #1
  %163 = bitcast %struct.gs_client_color_s* %cc to i8*
  call void @llvm.lifetime.end(i64 264, i8* %163) #1
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.116, %if.then.79
  %164 = load i32, i32* %code, align 4, !tbaa !30
  %cmp118 = icmp slt i32 %164, 0
  br i1 %cmp118, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %if.end.117
  %165 = load i32, i32* %code, align 4, !tbaa !30
  store i32 %165, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.137

if.end.121:                                       ; preds = %if.end.117
  %166 = bitcast i32* %rcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %166) #1
  %type122 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 0
  %167 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type122, align 8, !tbaa !188
  %fill_rectangle = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %167, i32 0, i32 5
  %168 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle, align 8, !tbaa !191
  %169 = load i32, i32* %ry, align 4, !tbaa !30
  %170 = load i32, i32* %x18, align 4, !tbaa !30
  %171 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %172 = load i32, i32* %lop, align 4, !tbaa !30
  %call123 = call i32 %168(%struct.gx_device_color_s* %devc, i32 %169, i32 %170, i32 1, i32 1, %struct.gx_device_s* %171, i32 %172, %struct.gx_rop_source_s* null) #4
  store i32 %call123, i32* %rcode, align 4, !tbaa !30
  %173 = load i32, i32* %rcode, align 4, !tbaa !30
  %cmp124 = icmp slt i32 %173, 0
  br i1 %cmp124, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %if.end.121
  %174 = load i32, i32* %rcode, align 4, !tbaa !30
  store i32 %174, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.127:                                       ; preds = %if.end.121
  %175 = load i32, i32* %x18, align 4, !tbaa !30
  %inc128 = add nsw i32 %175, 1
  store i32 %inc128, i32* %x18, align 4, !tbaa !30
  %176 = load i32, i32* %spp_decode, align 4, !tbaa !30
  %177 = load i16*, i16** %psrc, align 8, !tbaa !1
  %idx.ext129 = sext i32 %176 to i64
  %add.ptr130 = getelementptr inbounds i16, i16* %177, i64 %idx.ext129
  store i16* %add.ptr130, i16** %psrc, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.127, %if.then.126
  %178 = bitcast i32* %rcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %178) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.137 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond.58

for.end.131:                                      ; preds = %for.cond.58
  br label %inactive

inactive:                                         ; preds = %for.end.131, %if.then.52
  %179 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line_xy132 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %179, i32 0, i32 56
  %180 = load i32, i32* %line_xy132, align 4, !tbaa !115
  %inc133 = add nsw i32 %180, 1
  store i32 %inc133, i32* %line_xy132, align 4, !tbaa !115
  br label %do.body.134

do.body.134:                                      ; preds = %inactive
  br label %do.cond.135

do.cond.135:                                      ; preds = %do.body.134
  br label %do.end.136

do.end.136:                                       ; preds = %do.cond.135
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.137

cleanup.137:                                      ; preds = %do.end.136, %cleanup, %if.then.120
  %181 = bitcast i32* %xe to i8*
  call void @llvm.lifetime.end(i64 4, i8* %181) #1
  %cleanup.dest.138 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.138, label %cleanup.153 [
    i32 0, label %cleanup.cont.139
  ]

cleanup.cont.139:                                 ; preds = %cleanup.137
  br label %if.end.140

if.end.140:                                       ; preds = %cleanup.cont.139, %if.end.42
  %182 = load i32, i32* %status, align 4, !tbaa !30
  %cmp141 = icmp eq i32 %182, 0
  br i1 %cmp141, label %land.lhs.true.143, label %lor.lhs.false.148

land.lhs.true.143:                                ; preds = %if.end.140
  %ptr144 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %stream_r, i32 0, i32 0
  %183 = load i8*, i8** %ptr144, align 8, !tbaa !175
  %limit145 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %stream_r, i32 0, i32 1
  %184 = load i8*, i8** %limit145, align 8, !tbaa !177
  %cmp146 = icmp eq i8* %183, %184
  br i1 %cmp146, label %if.then.151, label %lor.lhs.false.148

lor.lhs.false.148:                                ; preds = %land.lhs.true.143, %if.end.140
  %185 = load i32, i32* %status, align 4, !tbaa !30
  %cmp149 = icmp eq i32 %185, -1
  br i1 %cmp149, label %if.then.151, label %if.end.152

if.then.151:                                      ; preds = %lor.lhs.false.148, %land.lhs.true.143
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.153

if.end.152:                                       ; preds = %lor.lhs.false.148
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.153

cleanup.153:                                      ; preds = %if.end.152, %if.then.151, %cleanup.137, %if.then.41
  %186 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %186) #1
  %187 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %187) #1
  %188 = bitcast %struct.gx_device_color_s* %devc to i8*
  call void @llvm.lifetime.end(i64 656, i8* %188) #1
  %189 = bitcast i16** %psrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %189) #1
  %190 = bitcast i32* %x18 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %190) #1
  %191 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.end(i64 4, i8* %191) #1
  %cleanup.dest.159 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.159, label %cleanup.162 [
    i32 0, label %cleanup.cont.160
    i32 2, label %for.end.161
  ]

cleanup.cont.160:                                 ; preds = %cleanup.153
  br label %for.cond

for.end.161:                                      ; preds = %cleanup.153
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.162

cleanup.162:                                      ; preds = %for.end.161, %cleanup.153
  %192 = bitcast i32* %device_color13 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %192) #1
  %193 = bitcast %struct.gs_color_space_s** %pactual_cs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %193) #1
  %194 = bitcast %struct.gs_color_space_s** %pconcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %194) #1
  %195 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %195) #1
  %196 = bitcast i32* %sizeofPixelOut to i8*
  call void @llvm.lifetime.end(i64 4, i8* %196) #1
  %197 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %197) #1
  %198 = bitcast i32* %yo to i8*
  call void @llvm.lifetime.end(i64 4, i8* %198) #1
  %199 = bitcast i32* %xo to i8*
  call void @llvm.lifetime.end(i64 4, i8* %199) #1
  %cleanup.dest.170 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.170, label %cleanup.175 [
    i32 0, label %cleanup.cont.171
  ]

cleanup.cont.171:                                 ; preds = %cleanup.162
  %200 = load i32, i32* %h.addr, align 4, !tbaa !30
  %cmp172 = icmp eq i32 %200, 0
  %cond174 = select i1 %cmp172, i32 0, i32 1
  store i32 %cond174, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.175

cleanup.175:                                      ; preds = %cleanup.cont.171, %cleanup.162
  %201 = bitcast i32* %need_decode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %201) #1
  %202 = bitcast i32* %islab to i8*
  call void @llvm.lifetime.end(i64 4, i8* %202) #1
  %203 = bitcast i8** %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %203) #1
  %204 = bitcast i32* %is_index_space to i8*
  call void @llvm.lifetime.end(i64 4, i8* %204) #1
  %205 = bitcast %struct.stream_cursor_write_s* %stream_w to i8*
  call void @llvm.lifetime.end(i64 24, i8* %205) #1
  %206 = bitcast %struct.stream_cursor_read_s* %stream_r to i8*
  call void @llvm.lifetime.end(i64 24, i8* %206) #1
  %207 = bitcast i32* %spp_decode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %207) #1
  %208 = bitcast i32* %lop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %208) #1
  %209 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %209) #1
  %210 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.end(i64 8, i8* %210) #1
  %211 = bitcast %struct.stream_image_scale_state_s** %pss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %211) #1
  %212 = load i32, i32* %retval
  ret i32 %212
}

; Function Attrs: nounwind uwtable
define internal void @initial_decode(%struct.gx_image_enum_s* %penum, i8* %buffer, i32 %data_x, i32 %h, i32 %need_decode, %struct.stream_cursor_read_s* %stream_r, i32 %is_icc) #0 {
entry:
  %penum.addr = alloca %struct.gx_image_enum_s*, align 8
  %buffer.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %need_decode.addr = alloca i32, align 4
  %stream_r.addr = alloca %struct.stream_cursor_read_s*, align 8
  %is_icc.addr = alloca i32, align 4
  %pss = alloca %struct.stream_image_scale_state_s*, align 8
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %spp_decode = alloca i32, align 4
  %out = alloca i8*, align 8
  %reversed = alloca i32, align 4
  %sizeofPixelIn = alloca i32, align 4
  %row_size = alloca i32, align 4
  %raw_size = alloca i32, align 4
  %bdata = alloca i8*, align 8
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %i = alloca i32, align 4
  %dc = alloca i32, align 4
  %pdata = alloca i8*, align 8
  %psrc = alloca i8*, align 8
  %i54 = alloca i32, align 4
  %j = alloca i32, align 4
  %dpd = alloca i32, align 4
  %cc = alloca %struct.gs_client_color_s, align 8
  %bps = alloca i32, align 4
  %dc173 = alloca i32, align 4
  %pdata176 = alloca i8*, align 8
  %psrc177 = alloca i8*, align 8
  %i179 = alloca i32, align 4
  %dpd180 = alloca i32, align 4
  %max_range = alloca float, align 4
  %decode_value = alloca float, align 4
  %bps285 = alloca i32, align 4
  %dc288 = alloca i32, align 4
  %pdata291 = alloca i8*, align 8
  %psrc292 = alloca i16*, align 8
  %i294 = alloca i32, align 4
  %j295 = alloca i32, align 4
  %dpd296 = alloca i32, align 4
  %to = alloca i8*, align 8
  %bps393 = alloca i32, align 4
  %dc396 = alloca i32, align 4
  %pdata399 = alloca i8*, align 8
  %psrc400 = alloca i16*, align 8
  %i402 = alloca i32, align 4
  %dpd403 = alloca i32, align 4
  %decode_value410 = alloca float, align 4
  store %struct.gx_image_enum_s* %penum, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !30
  store i32 %h, i32* %h.addr, align 4, !tbaa !30
  store i32 %need_decode, i32* %need_decode.addr, align 4, !tbaa !30
  store %struct.stream_cursor_read_s* %stream_r, %struct.stream_cursor_read_s** %stream_r.addr, align 8, !tbaa !1
  store i32 %is_icc, i32* %is_icc.addr, align 4, !tbaa !30
  %0 = bitcast %struct.stream_image_scale_state_s** %pss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %scaler = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1, i32 0, i32 50
  %2 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %scaler, align 8, !tbaa !114
  store %struct.stream_image_scale_state_s* %2, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %3 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs1 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %4, i32 0, i32 31
  %5 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs1, align 8, !tbaa !29
  store %struct.gs_color_space_s* %5, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %6 = bitcast i32* %spp_decode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %7, i32 0, i32 5
  %spp_decode2 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params, i32 0, i32 0
  %8 = load i32, i32* %spp_decode2, align 4, !tbaa !166
  store i32 %8, i32* %spp_decode, align 4, !tbaa !30
  %9 = bitcast i8** %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %10, i32 0, i32 34
  %11 = load i8*, i8** %line, align 8, !tbaa !113
  store i8* %11, i8** %out, align 8, !tbaa !1
  %12 = bitcast i32* %reversed to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %posture = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %13, i32 0, i32 37
  %14 = load i32, i32* %posture, align 4, !tbaa !33
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %15 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %matrix = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %15, i32 0, i32 21
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %matrix, i32 0, i32 0
  %16 = load float, float* %xx, align 4, !tbaa !96
  br label %cond.end

cond.false:                                       ; preds = %entry
  %17 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %matrix3 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %17, i32 0, i32 21
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %matrix3, i32 0, i32 1
  %18 = load float, float* %xy, align 4, !tbaa !97
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %16, %cond.true ], [ %18, %cond.false ]
  %cmp4 = fcmp olt float %cond, 0.000000e+00
  %conv = zext i1 %cmp4 to i32
  store i32 %conv, i32* %reversed, align 4, !tbaa !30
  %19 = load i32, i32* %h.addr, align 4, !tbaa !30
  %cmp5 = icmp ne i32 %19, 0
  br i1 %cmp5, label %if.then, label %if.else.463

if.then:                                          ; preds = %cond.end
  %20 = bitcast i32* %sizeofPixelIn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params7 = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %21, i32 0, i32 5
  %BitsPerComponentIn = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params7, i32 0, i32 6
  %22 = load i32, i32* %BitsPerComponentIn, align 4, !tbaa !168
  %div = sdiv i32 %22, 8
  store i32 %div, i32* %sizeofPixelIn, align 4, !tbaa !30
  %23 = bitcast i32* %row_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params8 = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %24, i32 0, i32 5
  %WidthIn = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params8, i32 0, i32 10
  %25 = load i32, i32* %WidthIn, align 4, !tbaa !163
  %26 = load i32, i32* %spp_decode, align 4, !tbaa !30
  %mul = mul nsw i32 %25, %26
  %27 = load i32, i32* %sizeofPixelIn, align 4, !tbaa !30
  %mul9 = mul nsw i32 %mul, %27
  store i32 %mul9, i32* %row_size, align 4, !tbaa !30
  %28 = bitcast i32* %raw_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  %29 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %29, i32 0, i32 0
  %30 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !41
  %index = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %30, i32 0, i32 0
  %31 = load i32, i32* %index, align 4, !tbaa !42
  %cmp10 = icmp eq i32 %31, 10
  br i1 %cmp10, label %cond.true.12, label %cond.false.13

cond.true.12:                                     ; preds = %if.then
  br label %cond.end.14

cond.false.13:                                    ; preds = %if.then
  %32 = load i32, i32* %spp_decode, align 4, !tbaa !30
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.13, %cond.true.12
  %cond15 = phi i32 [ 1, %cond.true.12 ], [ %32, %cond.false.13 ]
  store i32 %cond15, i32* %raw_size, align 4, !tbaa !30
  %33 = bitcast i8** %bdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #1
  %34 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %35 = load i32, i32* %data_x.addr, align 4, !tbaa !30
  %36 = load i32, i32* %raw_size, align 4, !tbaa !30
  %mul16 = mul nsw i32 %35, %36
  %37 = load i32, i32* %sizeofPixelIn, align 4, !tbaa !30
  %mul17 = mul nsw i32 %mul16, %37
  %idx.ext = sext i32 %mul17 to i64
  %add.ptr = getelementptr inbounds i8, i8* %34, i64 %idx.ext
  store i8* %add.ptr, i8** %bdata, align 8, !tbaa !1
  %38 = load i32, i32* %sizeofPixelIn, align 4, !tbaa !30
  %cmp18 = icmp eq i32 %38, 1
  br i1 %cmp18, label %if.then.20, label %if.else.279

if.then.20:                                       ; preds = %cond.end.14
  %39 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %type21 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %39, i32 0, i32 0
  %40 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type21, align 8, !tbaa !41
  %index22 = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %40, i32 0, i32 0
  %41 = load i32, i32* %index22, align 4, !tbaa !42
  %cmp23 = icmp ne i32 %41, 10
  br i1 %cmp23, label %if.then.25, label %if.else.170

if.then.25:                                       ; preds = %if.then.20
  %42 = load i32, i32* %need_decode.addr, align 4, !tbaa !30
  %tobool = icmp ne i32 %42, 0
  br i1 %tobool, label %if.else.51, label %if.then.26

if.then.26:                                       ; preds = %if.then.25
  %43 = load i32, i32* %reversed, align 4, !tbaa !30
  %tobool27 = icmp ne i32 %43, 0
  br i1 %tobool27, label %if.else, label %if.then.28

if.then.28:                                       ; preds = %if.then.26
  %44 = load i8*, i8** %bdata, align 8, !tbaa !1
  %add.ptr29 = getelementptr inbounds i8, i8* %44, i64 -1
  %45 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %stream_r.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %45, i32 0, i32 0
  store i8* %add.ptr29, i8** %ptr, align 8, !tbaa !175
  br label %if.end

if.else:                                          ; preds = %if.then.26
  %46 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %46) #1
  %47 = load i8*, i8** %bdata, align 8, !tbaa !1
  %48 = load i32, i32* %row_size, align 4, !tbaa !30
  %idx.ext30 = zext i32 %48 to i64
  %add.ptr31 = getelementptr inbounds i8, i8* %47, i64 %idx.ext30
  %49 = load i32, i32* %spp_decode, align 4, !tbaa !30
  %idx.ext32 = sext i32 %49 to i64
  %idx.neg = sub i64 0, %idx.ext32
  %add.ptr33 = getelementptr inbounds i8, i8* %add.ptr31, i64 %idx.neg
  store i8* %add.ptr33, i8** %p, align 8, !tbaa !1
  %50 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %50) #1
  %51 = load i8*, i8** %out, align 8, !tbaa !1
  store i8* %51, i8** %q, align 8, !tbaa !1
  %52 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %52) #1
  store i32 0, i32* %i, align 4, !tbaa !30
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %53 = load i32, i32* %i, align 4, !tbaa !30
  %54 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params34 = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %54, i32 0, i32 5
  %WidthIn35 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params34, i32 0, i32 10
  %55 = load i32, i32* %WidthIn35, align 4, !tbaa !163
  %cmp36 = icmp slt i32 %53, %55
  br i1 %cmp36, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %56 = load i8*, i8** %q, align 8, !tbaa !1
  %57 = load i8*, i8** %p, align 8, !tbaa !1
  %58 = load i32, i32* %spp_decode, align 4, !tbaa !30
  %conv38 = sext i32 %58 to i64
  %call = call i8* @memcpy(i8* %56, i8* %57, i64 %conv38) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %59 = load i32, i32* %spp_decode, align 4, !tbaa !30
  %60 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext39 = sext i32 %59 to i64
  %idx.neg40 = sub i64 0, %idx.ext39
  %add.ptr41 = getelementptr inbounds i8, i8* %60, i64 %idx.neg40
  store i8* %add.ptr41, i8** %p, align 8, !tbaa !1
  %61 = load i32, i32* %spp_decode, align 4, !tbaa !30
  %62 = load i8*, i8** %q, align 8, !tbaa !1
  %idx.ext42 = sext i32 %61 to i64
  %add.ptr43 = getelementptr inbounds i8, i8* %62, i64 %idx.ext42
  store i8* %add.ptr43, i8** %q, align 8, !tbaa !1
  %63 = load i32, i32* %i, align 4, !tbaa !30
  %inc = add nsw i32 %63, 1
  store i32 %inc, i32* %i, align 4, !tbaa !30
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %64 = load i8*, i8** %out, align 8, !tbaa !1
  %add.ptr44 = getelementptr inbounds i8, i8* %64, i64 -1
  %65 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %stream_r.addr, align 8, !tbaa !1
  %ptr45 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %65, i32 0, i32 0
  store i8* %add.ptr44, i8** %ptr45, align 8, !tbaa !175
  %66 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params46 = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %66, i32 0, i32 5
  %WidthIn47 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params46, i32 0, i32 10
  %67 = load i32, i32* %WidthIn47, align 4, !tbaa !163
  %68 = load i32, i32* %spp_decode, align 4, !tbaa !30
  %mul48 = mul nsw i32 %67, %68
  %add = add nsw i32 %mul48, 7
  %and = and i32 %add, -8
  %69 = load i8*, i8** %out, align 8, !tbaa !1
  %idx.ext49 = sext i32 %and to i64
  %add.ptr50 = getelementptr inbounds i8, i8* %69, i64 %idx.ext49
  store i8* %add.ptr50, i8** %out, align 8, !tbaa !1
  %70 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %71 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then.28
  br label %if.end.169

if.else.51:                                       ; preds = %if.then.25
  %73 = bitcast i32* %dc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %73) #1
  %74 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %spp = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %74, i32 0, i32 14
  %75 = load i8, i8* %spp, align 1, !tbaa !198
  %conv52 = zext i8 %75 to i32
  store i32 %conv52, i32* %dc, align 4, !tbaa !30
  %76 = bitcast i8** %pdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %76) #1
  %77 = load i8*, i8** %bdata, align 8, !tbaa !1
  store i8* %77, i8** %pdata, align 8, !tbaa !1
  %78 = bitcast i8** %psrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %78) #1
  %79 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line53 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %79, i32 0, i32 34
  %80 = load i8*, i8** %line53, align 8, !tbaa !113
  store i8* %80, i8** %psrc, align 8, !tbaa !1
  %81 = bitcast i32* %i54 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %81) #1
  %82 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %82) #1
  %83 = bitcast i32* %dpd to i8*
  call void @llvm.lifetime.start(i64 4, i8* %83) #1
  %84 = load i32, i32* %dc, align 4, !tbaa !30
  store i32 %84, i32* %dpd, align 4, !tbaa !30
  %85 = bitcast %struct.gs_client_color_s* %cc to i8*
  call void @llvm.lifetime.start(i64 264, i8* %85) #1
  %86 = load i32, i32* %reversed, align 4, !tbaa !30
  %tobool55 = icmp ne i32 %86, 0
  br i1 %tobool55, label %if.then.56, label %if.end.63

if.then.56:                                       ; preds = %if.else.51
  %87 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params57 = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %87, i32 0, i32 5
  %WidthIn58 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params57, i32 0, i32 10
  %88 = load i32, i32* %WidthIn58, align 4, !tbaa !163
  %sub = sub nsw i32 %88, 1
  %89 = load i32, i32* %dpd, align 4, !tbaa !30
  %mul59 = mul nsw i32 %sub, %89
  %90 = load i8*, i8** %pdata, align 8, !tbaa !1
  %idx.ext60 = sext i32 %mul59 to i64
  %add.ptr61 = getelementptr inbounds i8, i8* %90, i64 %idx.ext60
  store i8* %add.ptr61, i8** %pdata, align 8, !tbaa !1
  %91 = load i32, i32* %dpd, align 4, !tbaa !30
  %sub62 = sub nsw i32 0, %91
  store i32 %sub62, i32* %dpd, align 4, !tbaa !30
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.56, %if.else.51
  %92 = load i8*, i8** %psrc, align 8, !tbaa !1
  %add.ptr64 = getelementptr inbounds i8, i8* %92, i64 -1
  %93 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %stream_r.addr, align 8, !tbaa !1
  %ptr65 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %93, i32 0, i32 0
  store i8* %add.ptr64, i8** %ptr65, align 8, !tbaa !175
  store i32 0, i32* %i54, align 4, !tbaa !30
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc.157, %if.end.63
  %94 = load i32, i32* %i54, align 4, !tbaa !30
  %95 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params67 = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %95, i32 0, i32 5
  %WidthIn68 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params67, i32 0, i32 10
  %96 = load i32, i32* %WidthIn68, align 4, !tbaa !163
  %cmp69 = icmp slt i32 %94, %96
  br i1 %cmp69, label %for.body.71, label %for.end.161

for.body.71:                                      ; preds = %for.cond.66
  store i32 0, i32* %j, align 4, !tbaa !30
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc.152, %for.body.71
  %97 = load i32, i32* %j, align 4, !tbaa !30
  %98 = load i32, i32* %dc, align 4, !tbaa !30
  %cmp73 = icmp slt i32 %97, %98
  br i1 %cmp73, label %for.body.75, label %for.end.154

for.body.75:                                      ; preds = %for.cond.72
  %99 = load i32, i32* %j, align 4, !tbaa !30
  %idxprom = sext i32 %99 to i64
  %100 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %100, i32 0, i32 64
  %arrayidx = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map, i32 0, i64 %idxprom
  %decoding = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx, i32 0, i32 3
  %101 = load i32, i32* %decoding, align 4, !tbaa !128
  switch i32 %101, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.83
    i32 2, label %sw.bb.96
  ]

sw.bb:                                            ; preds = %for.body.75
  %102 = load i32, i32* %j, align 4, !tbaa !30
  %idxprom76 = sext i32 %102 to i64
  %103 = load i8*, i8** %pdata, align 8, !tbaa !1
  %arrayidx77 = getelementptr inbounds i8, i8* %103, i64 %idxprom76
  %104 = load i8, i8* %arrayidx77, align 1, !tbaa !100
  %conv78 = zext i8 %104 to i32
  %conv79 = sitofp i32 %conv78 to float
  %mul80 = fmul float %conv79, 0x3F70101020000000
  %105 = load i32, i32* %j, align 4, !tbaa !30
  %idxprom81 = sext i32 %105 to i64
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx82 = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 %idxprom81
  store float %mul80, float* %arrayidx82, align 4, !tbaa !196
  br label %sw.epilog

sw.bb.83:                                         ; preds = %for.body.75
  %106 = load i32, i32* %j, align 4, !tbaa !30
  %idxprom84 = sext i32 %106 to i64
  %107 = load i8*, i8** %pdata, align 8, !tbaa !1
  %arrayidx85 = getelementptr inbounds i8, i8* %107, i64 %idxprom84
  %108 = load i8, i8* %arrayidx85, align 1, !tbaa !100
  %conv86 = zext i8 %108 to i32
  %shr = ashr i32 %conv86, 4
  %idxprom87 = sext i32 %shr to i64
  %109 = load i32, i32* %j, align 4, !tbaa !30
  %idxprom88 = sext i32 %109 to i64
  %110 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map89 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %110, i32 0, i32 64
  %arrayidx90 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map89, i32 0, i64 %idxprom88
  %decode_lookup = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx90, i32 0, i32 1
  %arrayidx91 = getelementptr inbounds [16 x float], [16 x float]* %decode_lookup, i32 0, i64 %idxprom87
  %111 = load float, float* %arrayidx91, align 4, !tbaa !196
  %112 = load i32, i32* %j, align 4, !tbaa !30
  %idxprom92 = sext i32 %112 to i64
  %paint93 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values94 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint93, i32 0, i32 0
  %arrayidx95 = getelementptr inbounds [64 x float], [64 x float]* %values94, i32 0, i64 %idxprom92
  store float %111, float* %arrayidx95, align 4, !tbaa !196
  br label %sw.epilog

sw.bb.96:                                         ; preds = %for.body.75
  %113 = load i32, i32* %j, align 4, !tbaa !30
  %idxprom97 = sext i32 %113 to i64
  %114 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map98 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %114, i32 0, i32 64
  %arrayidx99 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map98, i32 0, i64 %idxprom97
  %decode_lookup100 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx99, i32 0, i32 1
  %arrayidx101 = getelementptr inbounds [16 x float], [16 x float]* %decode_lookup100, i32 0, i64 0
  %115 = load float, float* %arrayidx101, align 4, !tbaa !196
  %116 = load i32, i32* %j, align 4, !tbaa !30
  %idxprom102 = sext i32 %116 to i64
  %117 = load i8*, i8** %pdata, align 8, !tbaa !1
  %arrayidx103 = getelementptr inbounds i8, i8* %117, i64 %idxprom102
  %118 = load i8, i8* %arrayidx103, align 1, !tbaa !100
  %conv104 = zext i8 %118 to i32
  %conv105 = sitofp i32 %conv104 to float
  %119 = load i32, i32* %j, align 4, !tbaa !30
  %idxprom106 = sext i32 %119 to i64
  %120 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map107 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %120, i32 0, i32 64
  %arrayidx108 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map107, i32 0, i64 %idxprom106
  %decode_factor = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx108, i32 0, i32 2
  %121 = load float, float* %decode_factor, align 4, !tbaa !199
  %mul109 = fmul float %conv105, %121
  %add110 = fadd float %115, %mul109
  %122 = load i32, i32* %j, align 4, !tbaa !30
  %idxprom111 = sext i32 %122 to i64
  %paint112 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values113 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint112, i32 0, i32 0
  %arrayidx114 = getelementptr inbounds [64 x float], [64 x float]* %values113, i32 0, i64 %idxprom111
  store float %add110, float* %arrayidx114, align 4, !tbaa !196
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.96, %for.body.75, %sw.bb.83, %sw.bb
  %123 = load i32, i32* %j, align 4, !tbaa !30
  %idxprom115 = sext i32 %123 to i64
  %paint116 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values117 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint116, i32 0, i32 0
  %arrayidx118 = getelementptr inbounds [64 x float], [64 x float]* %values117, i32 0, i64 %idxprom115
  %124 = load float, float* %arrayidx118, align 4, !tbaa !196
  %conv119 = fpext float %124 to double
  %cmp120 = fcmp olt double 0.000000e+00, %conv119
  br i1 %cmp120, label %land.lhs.true, label %cond.false.138

land.lhs.true:                                    ; preds = %sw.epilog
  %125 = load i32, i32* %j, align 4, !tbaa !30
  %idxprom122 = sext i32 %125 to i64
  %paint123 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values124 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint123, i32 0, i32 0
  %arrayidx125 = getelementptr inbounds [64 x float], [64 x float]* %values124, i32 0, i64 %idxprom122
  %126 = load float, float* %arrayidx125, align 4, !tbaa !196
  %conv126 = fpext float %126 to double
  %cmp127 = fcmp olt double %conv126, 1.000000e+00
  br i1 %cmp127, label %cond.true.129, label %cond.false.138

cond.true.129:                                    ; preds = %land.lhs.true
  %127 = load i32, i32* %j, align 4, !tbaa !30
  %idxprom130 = sext i32 %127 to i64
  %paint131 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values132 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint131, i32 0, i32 0
  %arrayidx133 = getelementptr inbounds [64 x float], [64 x float]* %values132, i32 0, i64 %idxprom130
  %128 = load float, float* %arrayidx133, align 4, !tbaa !196
  %conv134 = fpext float %128 to double
  %mul135 = fmul double %conv134, 2.550000e+02
  %conv136 = fptoui double %mul135 to i8
  %conv137 = zext i8 %conv136 to i32
  br label %cond.end.147

cond.false.138:                                   ; preds = %land.lhs.true, %sw.epilog
  %129 = load i32, i32* %j, align 4, !tbaa !30
  %idxprom139 = sext i32 %129 to i64
  %paint140 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values141 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint140, i32 0, i32 0
  %arrayidx142 = getelementptr inbounds [64 x float], [64 x float]* %values141, i32 0, i64 %idxprom139
  %130 = load float, float* %arrayidx142, align 4, !tbaa !196
  %conv143 = fpext float %130 to double
  %cmp144 = fcmp ole double %conv143, 0.000000e+00
  %cond146 = select i1 %cmp144, i32 0, i32 255
  br label %cond.end.147

cond.end.147:                                     ; preds = %cond.false.138, %cond.true.129
  %cond148 = phi i32 [ %conv137, %cond.true.129 ], [ %cond146, %cond.false.138 ]
  %conv149 = trunc i32 %cond148 to i8
  %131 = load i32, i32* %j, align 4, !tbaa !30
  %idxprom150 = sext i32 %131 to i64
  %132 = load i8*, i8** %psrc, align 8, !tbaa !1
  %arrayidx151 = getelementptr inbounds i8, i8* %132, i64 %idxprom150
  store i8 %conv149, i8* %arrayidx151, align 1, !tbaa !100
  br label %for.inc.152

for.inc.152:                                      ; preds = %cond.end.147
  %133 = load i32, i32* %j, align 4, !tbaa !30
  %inc153 = add nsw i32 %133, 1
  store i32 %inc153, i32* %j, align 4, !tbaa !30
  br label %for.cond.72

for.end.154:                                      ; preds = %for.cond.72
  %134 = load i32, i32* %dpd, align 4, !tbaa !30
  %135 = load i8*, i8** %pdata, align 8, !tbaa !1
  %idx.ext155 = sext i32 %134 to i64
  %add.ptr156 = getelementptr inbounds i8, i8* %135, i64 %idx.ext155
  store i8* %add.ptr156, i8** %pdata, align 8, !tbaa !1
  br label %for.inc.157

for.inc.157:                                      ; preds = %for.end.154
  %136 = load i32, i32* %i54, align 4, !tbaa !30
  %inc158 = add nsw i32 %136, 1
  store i32 %inc158, i32* %i54, align 4, !tbaa !30
  %137 = load i32, i32* %spp_decode, align 4, !tbaa !30
  %138 = load i8*, i8** %psrc, align 8, !tbaa !1
  %idx.ext159 = sext i32 %137 to i64
  %add.ptr160 = getelementptr inbounds i8, i8* %138, i64 %idx.ext159
  store i8* %add.ptr160, i8** %psrc, align 8, !tbaa !1
  br label %for.cond.66

for.end.161:                                      ; preds = %for.cond.66
  %139 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params162 = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %139, i32 0, i32 5
  %WidthIn163 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params162, i32 0, i32 10
  %140 = load i32, i32* %WidthIn163, align 4, !tbaa !163
  %141 = load i32, i32* %spp_decode, align 4, !tbaa !30
  %mul164 = mul nsw i32 %140, %141
  %add165 = add nsw i32 %mul164, 7
  %and166 = and i32 %add165, -8
  %142 = load i8*, i8** %out, align 8, !tbaa !1
  %idx.ext167 = sext i32 %and166 to i64
  %add.ptr168 = getelementptr inbounds i8, i8* %142, i64 %idx.ext167
  store i8* %add.ptr168, i8** %out, align 8, !tbaa !1
  %143 = bitcast %struct.gs_client_color_s* %cc to i8*
  call void @llvm.lifetime.end(i64 264, i8* %143) #1
  %144 = bitcast i32* %dpd to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #1
  %145 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #1
  %146 = bitcast i32* %i54 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #1
  %147 = bitcast i8** %psrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #1
  %148 = bitcast i8** %pdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %148) #1
  %149 = bitcast i32* %dc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %149) #1
  br label %if.end.169

if.end.169:                                       ; preds = %for.end.161, %if.end
  br label %if.end.278

if.else.170:                                      ; preds = %if.then.20
  %150 = bitcast i32* %bps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %150) #1
  %151 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %bps171 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %151, i32 0, i32 11
  %152 = load i8, i8* %bps171, align 1, !tbaa !45
  %conv172 = zext i8 %152 to i32
  store i32 %conv172, i32* %bps, align 4, !tbaa !30
  %153 = bitcast i32* %dc173 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %153) #1
  %154 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %spp174 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %154, i32 0, i32 14
  %155 = load i8, i8* %spp174, align 1, !tbaa !198
  %conv175 = zext i8 %155 to i32
  store i32 %conv175, i32* %dc173, align 4, !tbaa !30
  %156 = bitcast i8** %pdata176 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %156) #1
  %157 = load i8*, i8** %bdata, align 8, !tbaa !1
  store i8* %157, i8** %pdata176, align 8, !tbaa !1
  %158 = bitcast i8** %psrc177 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %158) #1
  %159 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line178 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %159, i32 0, i32 34
  %160 = load i8*, i8** %line178, align 8, !tbaa !113
  store i8* %160, i8** %psrc177, align 8, !tbaa !1
  %161 = bitcast i32* %i179 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %161) #1
  %162 = bitcast i32* %dpd180 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %162) #1
  %163 = load i32, i32* %dc173, align 4, !tbaa !30
  %conv181 = sext i32 %163 to i64
  %164 = load i32, i32* %bps, align 4, !tbaa !30
  %cmp182 = icmp sle i32 %164, 8
  %cond184 = select i1 %cmp182, i64 1, i64 2
  %mul185 = mul i64 %conv181, %cond184
  %conv186 = trunc i64 %mul185 to i32
  store i32 %conv186, i32* %dpd180, align 4, !tbaa !30
  %165 = bitcast float* %max_range to i8*
  call void @llvm.lifetime.start(i64 4, i8* %165) #1
  %166 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map187 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %166, i32 0, i32 64
  %arrayidx188 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map187, i32 0, i64 0
  %decode_factor189 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx188, i32 0, i32 2
  %167 = load float, float* %decode_factor189, align 4, !tbaa !199
  %cmp190 = fcmp olt float %167, 0.000000e+00
  br i1 %cmp190, label %cond.true.192, label %cond.false.198

cond.true.192:                                    ; preds = %if.else.170
  %168 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map193 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %168, i32 0, i32 64
  %arrayidx194 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map193, i32 0, i64 0
  %decode_lookup195 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx194, i32 0, i32 1
  %arrayidx196 = getelementptr inbounds [16 x float], [16 x float]* %decode_lookup195, i32 0, i64 0
  %169 = load float, float* %arrayidx196, align 4, !tbaa !196
  %conv197 = fpext float %169 to double
  br label %cond.end.210

cond.false.198:                                   ; preds = %if.else.170
  %170 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map199 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %170, i32 0, i32 64
  %arrayidx200 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map199, i32 0, i64 0
  %decode_lookup201 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx200, i32 0, i32 1
  %arrayidx202 = getelementptr inbounds [16 x float], [16 x float]* %decode_lookup201, i32 0, i64 0
  %171 = load float, float* %arrayidx202, align 4, !tbaa !196
  %conv203 = fpext float %171 to double
  %172 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map204 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %172, i32 0, i32 64
  %arrayidx205 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map204, i32 0, i64 0
  %decode_factor206 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx205, i32 0, i32 2
  %173 = load float, float* %decode_factor206, align 4, !tbaa !199
  %conv207 = fpext float %173 to double
  %mul208 = fmul double 2.550000e+02, %conv207
  %add209 = fadd double %conv203, %mul208
  br label %cond.end.210

cond.end.210:                                     ; preds = %cond.false.198, %cond.true.192
  %cond211 = phi double [ %conv197, %cond.true.192 ], [ %add209, %cond.false.198 ]
  %conv212 = fptrunc double %cond211 to float
  store float %conv212, float* %max_range, align 4, !tbaa !196
  %174 = load i32, i32* %reversed, align 4, !tbaa !30
  %tobool213 = icmp ne i32 %174, 0
  br i1 %tobool213, label %if.then.214, label %if.end.222

if.then.214:                                      ; preds = %cond.end.210
  %175 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params215 = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %175, i32 0, i32 5
  %WidthIn216 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params215, i32 0, i32 10
  %176 = load i32, i32* %WidthIn216, align 4, !tbaa !163
  %sub217 = sub nsw i32 %176, 1
  %177 = load i32, i32* %dpd180, align 4, !tbaa !30
  %mul218 = mul nsw i32 %sub217, %177
  %178 = load i8*, i8** %pdata176, align 8, !tbaa !1
  %idx.ext219 = sext i32 %mul218 to i64
  %add.ptr220 = getelementptr inbounds i8, i8* %178, i64 %idx.ext219
  store i8* %add.ptr220, i8** %pdata176, align 8, !tbaa !1
  %179 = load i32, i32* %dpd180, align 4, !tbaa !30
  %sub221 = sub nsw i32 0, %179
  store i32 %sub221, i32* %dpd180, align 4, !tbaa !30
  br label %if.end.222

if.end.222:                                       ; preds = %if.then.214, %cond.end.210
  %180 = load i8*, i8** %psrc177, align 8, !tbaa !1
  %add.ptr223 = getelementptr inbounds i8, i8* %180, i64 -1
  %181 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %stream_r.addr, align 8, !tbaa !1
  %ptr224 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %181, i32 0, i32 0
  store i8* %add.ptr223, i8** %ptr224, align 8, !tbaa !175
  store i32 0, i32* %i179, align 4, !tbaa !30
  br label %for.cond.225

for.cond.225:                                     ; preds = %for.inc.266, %if.end.222
  %182 = load i32, i32* %i179, align 4, !tbaa !30
  %183 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params226 = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %183, i32 0, i32 5
  %WidthIn227 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params226, i32 0, i32 10
  %184 = load i32, i32* %WidthIn227, align 4, !tbaa !163
  %cmp228 = icmp slt i32 %182, %184
  br i1 %cmp228, label %for.body.230, label %for.end.270

for.body.230:                                     ; preds = %for.cond.225
  %185 = bitcast float* %decode_value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %185) #1
  %186 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map231 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %186, i32 0, i32 64
  %arrayidx232 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map231, i32 0, i64 0
  %decoding233 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx232, i32 0, i32 3
  %187 = load i32, i32* %decoding233, align 4, !tbaa !128
  switch i32 %187, label %sw.default [
    i32 0, label %sw.bb.234
    i32 1, label %sw.bb.241
    i32 2, label %sw.bb.250
  ]

sw.bb.234:                                        ; preds = %for.body.230
  %188 = load i8*, i8** %pdata176, align 8, !tbaa !1
  %arrayidx235 = getelementptr inbounds i8, i8* %188, i64 0
  %189 = load i8, i8* %arrayidx235, align 1, !tbaa !100
  %conv236 = uitofp i8 %189 to float
  %190 = load float, float* %max_range, align 4, !tbaa !196
  %mul237 = fmul float %conv236, %190
  %conv238 = fpext float %mul237 to double
  %div239 = fdiv double %conv238, 2.550000e+02
  %conv240 = fptrunc double %div239 to float
  store float %conv240, float* %decode_value, align 4, !tbaa !196
  br label %sw.epilog.262

sw.bb.241:                                        ; preds = %for.body.230
  %191 = load i8*, i8** %pdata176, align 8, !tbaa !1
  %arrayidx242 = getelementptr inbounds i8, i8* %191, i64 0
  %192 = load i8, i8* %arrayidx242, align 1, !tbaa !100
  %conv243 = zext i8 %192 to i32
  %shr244 = ashr i32 %conv243, 4
  %idxprom245 = sext i32 %shr244 to i64
  %193 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map246 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %193, i32 0, i32 64
  %arrayidx247 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map246, i32 0, i64 0
  %decode_lookup248 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx247, i32 0, i32 1
  %arrayidx249 = getelementptr inbounds [16 x float], [16 x float]* %decode_lookup248, i32 0, i64 %idxprom245
  %194 = load float, float* %arrayidx249, align 4, !tbaa !196
  store float %194, float* %decode_value, align 4, !tbaa !196
  br label %sw.epilog.262

sw.bb.250:                                        ; preds = %for.body.230
  %195 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map251 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %195, i32 0, i32 64
  %arrayidx252 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map251, i32 0, i64 0
  %decode_lookup253 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx252, i32 0, i32 1
  %arrayidx254 = getelementptr inbounds [16 x float], [16 x float]* %decode_lookup253, i32 0, i64 0
  %196 = load float, float* %arrayidx254, align 4, !tbaa !196
  %197 = load i8*, i8** %pdata176, align 8, !tbaa !1
  %arrayidx255 = getelementptr inbounds i8, i8* %197, i64 0
  %198 = load i8, i8* %arrayidx255, align 1, !tbaa !100
  %conv256 = uitofp i8 %198 to float
  %199 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map257 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %199, i32 0, i32 64
  %arrayidx258 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map257, i32 0, i64 0
  %decode_factor259 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx258, i32 0, i32 2
  %200 = load float, float* %decode_factor259, align 4, !tbaa !199
  %mul260 = fmul float %conv256, %200
  %add261 = fadd float %196, %mul260
  store float %add261, float* %decode_value, align 4, !tbaa !196
  br label %sw.epilog.262

sw.default:                                       ; preds = %for.body.230
  store float 0.000000e+00, float* %decode_value, align 4, !tbaa !196
  br label %sw.epilog.262

sw.epilog.262:                                    ; preds = %sw.default, %sw.bb.250, %sw.bb.241, %sw.bb.234
  %201 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %202 = load float, float* %decode_value, align 4, !tbaa !196
  %203 = load i8*, i8** %psrc177, align 8, !tbaa !1
  %call263 = call i32 @gs_cspace_indexed_lookup_bytes(%struct.gs_color_space_s* %201, float %202, i8* %203) #4
  %204 = load i32, i32* %dpd180, align 4, !tbaa !30
  %205 = load i8*, i8** %pdata176, align 8, !tbaa !1
  %idx.ext264 = sext i32 %204 to i64
  %add.ptr265 = getelementptr inbounds i8, i8* %205, i64 %idx.ext264
  store i8* %add.ptr265, i8** %pdata176, align 8, !tbaa !1
  %206 = bitcast float* %decode_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %206) #1
  br label %for.inc.266

for.inc.266:                                      ; preds = %sw.epilog.262
  %207 = load i32, i32* %i179, align 4, !tbaa !30
  %inc267 = add nsw i32 %207, 1
  store i32 %inc267, i32* %i179, align 4, !tbaa !30
  %208 = load i32, i32* %spp_decode, align 4, !tbaa !30
  %209 = load i8*, i8** %psrc177, align 8, !tbaa !1
  %idx.ext268 = sext i32 %208 to i64
  %add.ptr269 = getelementptr inbounds i8, i8* %209, i64 %idx.ext268
  store i8* %add.ptr269, i8** %psrc177, align 8, !tbaa !1
  br label %for.cond.225

for.end.270:                                      ; preds = %for.cond.225
  %210 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params271 = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %210, i32 0, i32 5
  %WidthIn272 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params271, i32 0, i32 10
  %211 = load i32, i32* %WidthIn272, align 4, !tbaa !163
  %212 = load i32, i32* %spp_decode, align 4, !tbaa !30
  %mul273 = mul nsw i32 %211, %212
  %add274 = add nsw i32 %mul273, 7
  %and275 = and i32 %add274, -8
  %213 = load i8*, i8** %out, align 8, !tbaa !1
  %idx.ext276 = sext i32 %and275 to i64
  %add.ptr277 = getelementptr inbounds i8, i8* %213, i64 %idx.ext276
  store i8* %add.ptr277, i8** %out, align 8, !tbaa !1
  %214 = bitcast float* %max_range to i8*
  call void @llvm.lifetime.end(i64 4, i8* %214) #1
  %215 = bitcast i32* %dpd180 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %215) #1
  %216 = bitcast i32* %i179 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %216) #1
  %217 = bitcast i8** %psrc177 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %217) #1
  %218 = bitcast i8** %pdata176 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %218) #1
  %219 = bitcast i32* %dc173 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %219) #1
  %220 = bitcast i32* %bps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %220) #1
  br label %if.end.278

if.end.278:                                       ; preds = %for.end.270, %if.end.169
  br label %if.end.459

if.else.279:                                      ; preds = %cond.end.14
  %221 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %type280 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %221, i32 0, i32 0
  %222 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type280, align 8, !tbaa !41
  %index281 = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %222, i32 0, i32 0
  %223 = load i32, i32* %index281, align 4, !tbaa !42
  %cmp282 = icmp ne i32 %223, 10
  br i1 %cmp282, label %if.then.284, label %if.else.392

if.then.284:                                      ; preds = %if.else.279
  %224 = bitcast i32* %bps285 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %224) #1
  %225 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %bps286 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %225, i32 0, i32 11
  %226 = load i8, i8* %bps286, align 1, !tbaa !45
  %conv287 = zext i8 %226 to i32
  store i32 %conv287, i32* %bps285, align 4, !tbaa !30
  %227 = bitcast i32* %dc288 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %227) #1
  %228 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %spp289 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %228, i32 0, i32 14
  %229 = load i8, i8* %spp289, align 1, !tbaa !198
  %conv290 = zext i8 %229 to i32
  store i32 %conv290, i32* %dc288, align 4, !tbaa !30
  %230 = bitcast i8** %pdata291 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %230) #1
  %231 = load i8*, i8** %bdata, align 8, !tbaa !1
  store i8* %231, i8** %pdata291, align 8, !tbaa !1
  %232 = bitcast i16** %psrc292 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %232) #1
  %233 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line293 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %233, i32 0, i32 34
  %234 = load i8*, i8** %line293, align 8, !tbaa !113
  %235 = bitcast i8* %234 to i16*
  store i16* %235, i16** %psrc292, align 8, !tbaa !1
  %236 = bitcast i32* %i294 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %236) #1
  %237 = bitcast i32* %j295 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %237) #1
  %238 = bitcast i32* %dpd296 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %238) #1
  %239 = load i32, i32* %dc288, align 4, !tbaa !30
  %conv297 = sext i32 %239 to i64
  %240 = load i32, i32* %bps285, align 4, !tbaa !30
  %cmp298 = icmp sle i32 %240, 8
  %cond300 = select i1 %cmp298, i64 1, i64 2
  %mul301 = mul i64 %conv297, %cond300
  %conv302 = trunc i64 %mul301 to i32
  store i32 %conv302, i32* %dpd296, align 4, !tbaa !30
  %241 = load i32, i32* %reversed, align 4, !tbaa !30
  %tobool303 = icmp ne i32 %241, 0
  br i1 %tobool303, label %if.then.304, label %if.end.312

if.then.304:                                      ; preds = %if.then.284
  %242 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params305 = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %242, i32 0, i32 5
  %WidthIn306 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params305, i32 0, i32 10
  %243 = load i32, i32* %WidthIn306, align 4, !tbaa !163
  %sub307 = sub nsw i32 %243, 1
  %244 = load i32, i32* %dpd296, align 4, !tbaa !30
  %mul308 = mul nsw i32 %sub307, %244
  %245 = load i8*, i8** %pdata291, align 8, !tbaa !1
  %idx.ext309 = sext i32 %mul308 to i64
  %add.ptr310 = getelementptr inbounds i8, i8* %245, i64 %idx.ext309
  store i8* %add.ptr310, i8** %pdata291, align 8, !tbaa !1
  %246 = load i32, i32* %dpd296, align 4, !tbaa !30
  %sub311 = sub nsw i32 0, %246
  store i32 %sub311, i32* %dpd296, align 4, !tbaa !30
  br label %if.end.312

if.end.312:                                       ; preds = %if.then.304, %if.then.284
  %247 = load i16*, i16** %psrc292, align 8, !tbaa !1
  %248 = bitcast i16* %247 to i8*
  %add.ptr313 = getelementptr inbounds i8, i8* %248, i64 -1
  %249 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %stream_r.addr, align 8, !tbaa !1
  %ptr314 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %249, i32 0, i32 0
  store i8* %add.ptr313, i8** %ptr314, align 8, !tbaa !175
  br label %do.body

do.body:                                          ; preds = %if.end.312
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %250 = load i32, i32* %is_icc.addr, align 4, !tbaa !30
  %tobool315 = icmp ne i32 %250, 0
  br i1 %tobool315, label %if.then.316, label %if.else.341

if.then.316:                                      ; preds = %do.end
  %251 = load i32, i32* %reversed, align 4, !tbaa !30
  %tobool317 = icmp ne i32 %251, 0
  br i1 %tobool317, label %if.then.318, label %if.else.337

if.then.318:                                      ; preds = %if.then.316
  %252 = bitcast i8** %to to i8*
  call void @llvm.lifetime.start(i64 8, i8* %252) #1
  %253 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line319 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %253, i32 0, i32 34
  %254 = load i8*, i8** %line319, align 8, !tbaa !113
  store i8* %254, i8** %to, align 8, !tbaa !1
  store i32 0, i32* %i294, align 4, !tbaa !30
  br label %for.cond.320

for.cond.320:                                     ; preds = %for.inc.334, %if.then.318
  %255 = load i32, i32* %i294, align 4, !tbaa !30
  %256 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params321 = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %256, i32 0, i32 5
  %WidthIn322 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params321, i32 0, i32 10
  %257 = load i32, i32* %WidthIn322, align 4, !tbaa !163
  %cmp323 = icmp slt i32 %255, %257
  br i1 %cmp323, label %for.body.325, label %for.end.336

for.body.325:                                     ; preds = %for.cond.320
  %258 = load i8*, i8** %to, align 8, !tbaa !1
  %259 = load i8*, i8** %pdata291, align 8, !tbaa !1
  %260 = load i32, i32* %dpd296, align 4, !tbaa !30
  %sub326 = sub nsw i32 0, %260
  %conv327 = sext i32 %sub326 to i64
  %call328 = call i8* @memcpy(i8* %258, i8* %259, i64 %conv327) #5
  %261 = load i32, i32* %dpd296, align 4, !tbaa !30
  %262 = load i8*, i8** %to, align 8, !tbaa !1
  %idx.ext329 = sext i32 %261 to i64
  %idx.neg330 = sub i64 0, %idx.ext329
  %add.ptr331 = getelementptr inbounds i8, i8* %262, i64 %idx.neg330
  store i8* %add.ptr331, i8** %to, align 8, !tbaa !1
  %263 = load i32, i32* %dpd296, align 4, !tbaa !30
  %264 = load i8*, i8** %pdata291, align 8, !tbaa !1
  %idx.ext332 = sext i32 %263 to i64
  %add.ptr333 = getelementptr inbounds i8, i8* %264, i64 %idx.ext332
  store i8* %add.ptr333, i8** %pdata291, align 8, !tbaa !1
  br label %for.inc.334

for.inc.334:                                      ; preds = %for.body.325
  %265 = load i32, i32* %i294, align 4, !tbaa !30
  %inc335 = add nsw i32 %265, 1
  store i32 %inc335, i32* %i294, align 4, !tbaa !30
  br label %for.cond.320

for.end.336:                                      ; preds = %for.cond.320
  %266 = bitcast i8** %to to i8*
  call void @llvm.lifetime.end(i64 8, i8* %266) #1
  br label %if.end.340

if.else.337:                                      ; preds = %if.then.316
  %267 = load i8*, i8** %pdata291, align 8, !tbaa !1
  %add.ptr338 = getelementptr inbounds i8, i8* %267, i64 -1
  %268 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %stream_r.addr, align 8, !tbaa !1
  %ptr339 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %268, i32 0, i32 0
  store i8* %add.ptr338, i8** %ptr339, align 8, !tbaa !175
  br label %if.end.340

if.end.340:                                       ; preds = %if.else.337, %for.end.336
  br label %if.end.380

if.else.341:                                      ; preds = %do.end
  store i32 0, i32* %i294, align 4, !tbaa !30
  br label %for.cond.342

for.cond.342:                                     ; preds = %for.inc.375, %if.else.341
  %269 = load i32, i32* %i294, align 4, !tbaa !30
  %270 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params343 = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %270, i32 0, i32 5
  %WidthIn344 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params343, i32 0, i32 10
  %271 = load i32, i32* %WidthIn344, align 4, !tbaa !163
  %cmp345 = icmp slt i32 %269, %271
  br i1 %cmp345, label %for.body.347, label %for.end.379

for.body.347:                                     ; preds = %for.cond.342
  store i32 0, i32* %j295, align 4, !tbaa !30
  br label %for.cond.348

for.cond.348:                                     ; preds = %for.inc.370, %for.body.347
  %272 = load i32, i32* %j295, align 4, !tbaa !30
  %273 = load i32, i32* %dc288, align 4, !tbaa !30
  %cmp349 = icmp slt i32 %272, %273
  br i1 %cmp349, label %for.body.351, label %for.end.372

for.body.351:                                     ; preds = %for.cond.348
  %274 = load i32, i32* %j295, align 4, !tbaa !30
  %idxprom352 = sext i32 %274 to i64
  %275 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map353 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %275, i32 0, i32 64
  %arrayidx354 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map353, i32 0, i64 %idxprom352
  %decode_lookup355 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx354, i32 0, i32 1
  %arrayidx356 = getelementptr inbounds [16 x float], [16 x float]* %decode_lookup355, i32 0, i64 0
  %276 = load float, float* %arrayidx356, align 4, !tbaa !196
  %277 = load i32, i32* %j295, align 4, !tbaa !30
  %idxprom357 = sext i32 %277 to i64
  %278 = load i8*, i8** %pdata291, align 8, !tbaa !1
  %279 = bitcast i8* %278 to i16*
  %arrayidx358 = getelementptr inbounds i16, i16* %279, i64 %idxprom357
  %280 = load i16, i16* %arrayidx358, align 2, !tbaa !189
  %conv359 = sext i16 %280 to i32
  %conv360 = sitofp i32 %conv359 to float
  %281 = load i32, i32* %j295, align 4, !tbaa !30
  %idxprom361 = sext i32 %281 to i64
  %282 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map362 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %282, i32 0, i32 64
  %arrayidx363 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map362, i32 0, i64 %idxprom361
  %decode_factor364 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx363, i32 0, i32 2
  %283 = load float, float* %decode_factor364, align 4, !tbaa !199
  %mul365 = fmul float %conv360, %283
  %add366 = fadd float %276, %mul365
  %call367 = call signext i16 @gx_unit_frac(float %add366) #4
  %284 = load i32, i32* %j295, align 4, !tbaa !30
  %idxprom368 = sext i32 %284 to i64
  %285 = load i16*, i16** %psrc292, align 8, !tbaa !1
  %arrayidx369 = getelementptr inbounds i16, i16* %285, i64 %idxprom368
  store i16 %call367, i16* %arrayidx369, align 2, !tbaa !189
  br label %for.inc.370

for.inc.370:                                      ; preds = %for.body.351
  %286 = load i32, i32* %j295, align 4, !tbaa !30
  %inc371 = add nsw i32 %286, 1
  store i32 %inc371, i32* %j295, align 4, !tbaa !30
  br label %for.cond.348

for.end.372:                                      ; preds = %for.cond.348
  %287 = load i32, i32* %dpd296, align 4, !tbaa !30
  %288 = load i8*, i8** %pdata291, align 8, !tbaa !1
  %idx.ext373 = sext i32 %287 to i64
  %add.ptr374 = getelementptr inbounds i8, i8* %288, i64 %idx.ext373
  store i8* %add.ptr374, i8** %pdata291, align 8, !tbaa !1
  br label %for.inc.375

for.inc.375:                                      ; preds = %for.end.372
  %289 = load i32, i32* %i294, align 4, !tbaa !30
  %inc376 = add nsw i32 %289, 1
  store i32 %inc376, i32* %i294, align 4, !tbaa !30
  %290 = load i32, i32* %spp_decode, align 4, !tbaa !30
  %291 = load i16*, i16** %psrc292, align 8, !tbaa !1
  %idx.ext377 = sext i32 %290 to i64
  %add.ptr378 = getelementptr inbounds i16, i16* %291, i64 %idx.ext377
  store i16* %add.ptr378, i16** %psrc292, align 8, !tbaa !1
  br label %for.cond.342

for.end.379:                                      ; preds = %for.cond.342
  br label %if.end.380

if.end.380:                                       ; preds = %for.end.379, %if.end.340
  %292 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params381 = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %292, i32 0, i32 5
  %WidthIn382 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params381, i32 0, i32 10
  %293 = load i32, i32* %WidthIn382, align 4, !tbaa !163
  %294 = load i32, i32* %spp_decode, align 4, !tbaa !30
  %mul383 = mul nsw i32 %293, %294
  %conv384 = sext i32 %mul383 to i64
  %mul385 = mul i64 %conv384, 2
  %add386 = add i64 %mul385, 7
  %and387 = and i64 %add386, -8
  %295 = load i8*, i8** %out, align 8, !tbaa !1
  %add.ptr388 = getelementptr inbounds i8, i8* %295, i64 %and387
  store i8* %add.ptr388, i8** %out, align 8, !tbaa !1
  br label %do.body.389

do.body.389:                                      ; preds = %if.end.380
  br label %do.cond.390

do.cond.390:                                      ; preds = %do.body.389
  br label %do.end.391

do.end.391:                                       ; preds = %do.cond.390
  %296 = bitcast i32* %dpd296 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %296) #1
  %297 = bitcast i32* %j295 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %297) #1
  %298 = bitcast i32* %i294 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %298) #1
  %299 = bitcast i16** %psrc292 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %299) #1
  %300 = bitcast i8** %pdata291 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %300) #1
  %301 = bitcast i32* %dc288 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %301) #1
  %302 = bitcast i32* %bps285 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %302) #1
  br label %if.end.458

if.else.392:                                      ; preds = %if.else.279
  %303 = bitcast i32* %bps393 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %303) #1
  %304 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %bps394 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %304, i32 0, i32 11
  %305 = load i8, i8* %bps394, align 1, !tbaa !45
  %conv395 = zext i8 %305 to i32
  store i32 %conv395, i32* %bps393, align 4, !tbaa !30
  %306 = bitcast i32* %dc396 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %306) #1
  %307 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %spp397 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %307, i32 0, i32 14
  %308 = load i8, i8* %spp397, align 1, !tbaa !198
  %conv398 = zext i8 %308 to i32
  store i32 %conv398, i32* %dc396, align 4, !tbaa !30
  %309 = bitcast i8** %pdata399 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %309) #1
  %310 = load i8*, i8** %bdata, align 8, !tbaa !1
  store i8* %310, i8** %pdata399, align 8, !tbaa !1
  %311 = bitcast i16** %psrc400 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %311) #1
  %312 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line401 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %312, i32 0, i32 34
  %313 = load i8*, i8** %line401, align 8, !tbaa !113
  %314 = bitcast i8* %313 to i16*
  store i16* %314, i16** %psrc400, align 8, !tbaa !1
  %315 = bitcast i32* %i402 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %315) #1
  %316 = bitcast i32* %dpd403 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %316) #1
  %317 = load i32, i32* %dc396, align 4, !tbaa !30
  %conv404 = sext i32 %317 to i64
  %318 = load i32, i32* %bps393, align 4, !tbaa !30
  %cmp405 = icmp sle i32 %318, 8
  %cond407 = select i1 %cmp405, i64 1, i64 2
  %mul408 = mul i64 %conv404, %cond407
  %conv409 = trunc i64 %mul408 to i32
  store i32 %conv409, i32* %dpd403, align 4, !tbaa !30
  %319 = bitcast float* %decode_value410 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %319) #1
  %320 = load i32, i32* %reversed, align 4, !tbaa !30
  %tobool411 = icmp ne i32 %320, 0
  br i1 %tobool411, label %if.then.412, label %if.end.420

if.then.412:                                      ; preds = %if.else.392
  %321 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params413 = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %321, i32 0, i32 5
  %WidthIn414 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params413, i32 0, i32 10
  %322 = load i32, i32* %WidthIn414, align 4, !tbaa !163
  %sub415 = sub nsw i32 %322, 1
  %323 = load i32, i32* %dpd403, align 4, !tbaa !30
  %mul416 = mul nsw i32 %sub415, %323
  %324 = load i8*, i8** %pdata399, align 8, !tbaa !1
  %idx.ext417 = sext i32 %mul416 to i64
  %add.ptr418 = getelementptr inbounds i8, i8* %324, i64 %idx.ext417
  store i8* %add.ptr418, i8** %pdata399, align 8, !tbaa !1
  %325 = load i32, i32* %dpd403, align 4, !tbaa !30
  %sub419 = sub nsw i32 0, %325
  store i32 %sub419, i32* %dpd403, align 4, !tbaa !30
  br label %if.end.420

if.end.420:                                       ; preds = %if.then.412, %if.else.392
  %326 = load i16*, i16** %psrc400, align 8, !tbaa !1
  %327 = bitcast i16* %326 to i8*
  %add.ptr421 = getelementptr inbounds i8, i8* %327, i64 -1
  %328 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %stream_r.addr, align 8, !tbaa !1
  %ptr422 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %328, i32 0, i32 0
  store i8* %add.ptr421, i8** %ptr422, align 8, !tbaa !175
  store i32 0, i32* %i402, align 4, !tbaa !30
  br label %for.cond.423

for.cond.423:                                     ; preds = %for.inc.446, %if.end.420
  %329 = load i32, i32* %i402, align 4, !tbaa !30
  %330 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params424 = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %330, i32 0, i32 5
  %WidthIn425 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params424, i32 0, i32 10
  %331 = load i32, i32* %WidthIn425, align 4, !tbaa !163
  %cmp426 = icmp slt i32 %329, %331
  br i1 %cmp426, label %for.body.428, label %for.end.450

for.body.428:                                     ; preds = %for.cond.423
  %332 = load i32, i32* %i402, align 4, !tbaa !30
  %idxprom429 = sext i32 %332 to i64
  %333 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map430 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %333, i32 0, i32 64
  %arrayidx431 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map430, i32 0, i64 %idxprom429
  %decode_lookup432 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx431, i32 0, i32 1
  %arrayidx433 = getelementptr inbounds [16 x float], [16 x float]* %decode_lookup432, i32 0, i64 0
  %334 = load float, float* %arrayidx433, align 4, !tbaa !196
  %335 = load i8*, i8** %pdata399, align 8, !tbaa !1
  %336 = bitcast i8* %335 to i16*
  %arrayidx434 = getelementptr inbounds i16, i16* %336, i64 0
  %337 = load i16, i16* %arrayidx434, align 2, !tbaa !189
  %conv435 = sext i16 %337 to i32
  %conv436 = sitofp i32 %conv435 to float
  %338 = load i32, i32* %i402, align 4, !tbaa !30
  %idxprom437 = sext i32 %338 to i64
  %339 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map438 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %339, i32 0, i32 64
  %arrayidx439 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map438, i32 0, i64 %idxprom437
  %decode_factor440 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx439, i32 0, i32 2
  %340 = load float, float* %decode_factor440, align 4, !tbaa !199
  %mul441 = fmul float %conv436, %340
  %add442 = fadd float %334, %mul441
  store float %add442, float* %decode_value410, align 4, !tbaa !196
  %341 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %342 = load float, float* %decode_value410, align 4, !tbaa !196
  %343 = load i16*, i16** %psrc400, align 8, !tbaa !1
  %call443 = call i32 @gs_cspace_indexed_lookup_frac(%struct.gs_color_space_s* %341, float %342, i16* %343) #4
  %344 = load i32, i32* %dpd403, align 4, !tbaa !30
  %345 = load i8*, i8** %pdata399, align 8, !tbaa !1
  %idx.ext444 = sext i32 %344 to i64
  %add.ptr445 = getelementptr inbounds i8, i8* %345, i64 %idx.ext444
  store i8* %add.ptr445, i8** %pdata399, align 8, !tbaa !1
  br label %for.inc.446

for.inc.446:                                      ; preds = %for.body.428
  %346 = load i32, i32* %i402, align 4, !tbaa !30
  %inc447 = add nsw i32 %346, 1
  store i32 %inc447, i32* %i402, align 4, !tbaa !30
  %347 = load i32, i32* %spp_decode, align 4, !tbaa !30
  %348 = load i16*, i16** %psrc400, align 8, !tbaa !1
  %idx.ext448 = sext i32 %347 to i64
  %add.ptr449 = getelementptr inbounds i16, i16* %348, i64 %idx.ext448
  store i16* %add.ptr449, i16** %psrc400, align 8, !tbaa !1
  br label %for.cond.423

for.end.450:                                      ; preds = %for.cond.423
  %349 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %pss, align 8, !tbaa !1
  %params451 = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %349, i32 0, i32 5
  %WidthIn452 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params451, i32 0, i32 10
  %350 = load i32, i32* %WidthIn452, align 4, !tbaa !163
  %351 = load i32, i32* %spp_decode, align 4, !tbaa !30
  %mul453 = mul nsw i32 %350, %351
  %add454 = add nsw i32 %mul453, 7
  %and455 = and i32 %add454, -8
  %352 = load i8*, i8** %out, align 8, !tbaa !1
  %idx.ext456 = sext i32 %and455 to i64
  %add.ptr457 = getelementptr inbounds i8, i8* %352, i64 %idx.ext456
  store i8* %add.ptr457, i8** %out, align 8, !tbaa !1
  %353 = bitcast float* %decode_value410 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %353) #1
  %354 = bitcast i32* %dpd403 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %354) #1
  %355 = bitcast i32* %i402 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %355) #1
  %356 = bitcast i16** %psrc400 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %356) #1
  %357 = bitcast i8** %pdata399 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %357) #1
  %358 = bitcast i32* %dc396 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %358) #1
  %359 = bitcast i32* %bps393 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %359) #1
  br label %if.end.458

if.end.458:                                       ; preds = %for.end.450, %do.end.391
  br label %if.end.459

if.end.459:                                       ; preds = %if.end.458, %if.end.278
  %360 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %stream_r.addr, align 8, !tbaa !1
  %ptr460 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %360, i32 0, i32 0
  %361 = load i8*, i8** %ptr460, align 8, !tbaa !175
  %362 = load i32, i32* %row_size, align 4, !tbaa !30
  %idx.ext461 = zext i32 %362 to i64
  %add.ptr462 = getelementptr inbounds i8, i8* %361, i64 %idx.ext461
  %363 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %stream_r.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %363, i32 0, i32 1
  store i8* %add.ptr462, i8** %limit, align 8, !tbaa !177
  %364 = bitcast i8** %bdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %364) #1
  %365 = bitcast i32* %raw_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %365) #1
  %366 = bitcast i32* %row_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %366) #1
  %367 = bitcast i32* %sizeofPixelIn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %367) #1
  br label %if.end.466

if.else.463:                                      ; preds = %cond.end
  %368 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %stream_r.addr, align 8, !tbaa !1
  %ptr464 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %368, i32 0, i32 0
  store i8* null, i8** %ptr464, align 8, !tbaa !175
  %369 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %stream_r.addr, align 8, !tbaa !1
  %limit465 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %369, i32 0, i32 1
  store i8* null, i8** %limit465, align 8, !tbaa !177
  br label %if.end.466

if.end.466:                                       ; preds = %if.else.463, %if.end.459
  %370 = bitcast i32* %reversed to i8*
  call void @llvm.lifetime.end(i64 4, i8* %370) #1
  %371 = bitcast i8** %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %371) #1
  %372 = bitcast i32* %spp_decode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %372) #1
  %373 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %373) #1
  %374 = bitcast %struct.stream_image_scale_state_s** %pss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %374) #1
  ret void
}

declare i32 @gs_color_space_num_components(%struct.gs_color_space_s*) #2

; Function Attrs: nounwind uwtable
define internal void @decode_sample_frac_to_float(%struct.gx_image_enum_s* %penum, i16 signext %sample_value, %struct.gs_client_color_s* %cc, i32 %i) #0 {
entry:
  %penum.addr = alloca %struct.gx_image_enum_s*, align 8
  %sample_value.addr = alloca i16, align 2
  %cc.addr = alloca %struct.gs_client_color_s*, align 8
  %i.addr = alloca i32, align 4
  store %struct.gx_image_enum_s* %penum, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  store i16 %sample_value, i16* %sample_value.addr, align 2, !tbaa !189
  store %struct.gs_client_color_s* %cc, %struct.gs_client_color_s** %cc.addr, align 8, !tbaa !1
  store i32 %i, i32* %i.addr, align 4, !tbaa !30
  %0 = load i32, i32* %i.addr, align 4, !tbaa !30
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1, i32 0, i32 64
  %arrayidx = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map, i32 0, i64 %idxprom
  %decoding = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx, i32 0, i32 3
  %2 = load i32, i32* %decoding, align 4, !tbaa !128
  switch i32 %2, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.4
    i32 2, label %sw.bb.20
  ]

sw.bb:                                            ; preds = %entry
  %3 = load i16, i16* %sample_value.addr, align 2, !tbaa !189
  %conv = sext i16 %3 to i32
  %conv1 = sitofp i32 %conv to float
  %div = fdiv float %conv1, 3.276000e+04
  %4 = load i32, i32* %i.addr, align 4, !tbaa !30
  %idxprom2 = sext i32 %4 to i64
  %5 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %cc.addr, align 8, !tbaa !1
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %5, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 %idxprom2
  store float %div, float* %arrayidx3, align 4, !tbaa !196
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %6 = load i16, i16* %sample_value.addr, align 2, !tbaa !189
  %conv5 = sext i16 %6 to i32
  %shr = ashr i32 %conv5, 12
  %7 = load i16, i16* %sample_value.addr, align 2, !tbaa !189
  %conv6 = sext i16 %7 to i32
  %add = add nsw i32 %shr, %conv6
  %shr7 = ashr i32 %add, 7
  %conv8 = trunc i32 %shr7 to i8
  %conv9 = zext i8 %conv8 to i32
  %shr10 = ashr i32 %conv9, 4
  %idxprom11 = sext i32 %shr10 to i64
  %8 = load i32, i32* %i.addr, align 4, !tbaa !30
  %idxprom12 = sext i32 %8 to i64
  %9 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map13 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %9, i32 0, i32 64
  %arrayidx14 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map13, i32 0, i64 %idxprom12
  %decode_lookup = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx14, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [16 x float], [16 x float]* %decode_lookup, i32 0, i64 %idxprom11
  %10 = load float, float* %arrayidx15, align 4, !tbaa !196
  %11 = load i32, i32* %i.addr, align 4, !tbaa !30
  %idxprom16 = sext i32 %11 to i64
  %12 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %cc.addr, align 8, !tbaa !1
  %paint17 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %12, i32 0, i32 1
  %values18 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint17, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [64 x float], [64 x float]* %values18, i32 0, i64 %idxprom16
  store float %10, float* %arrayidx19, align 4, !tbaa !196
  br label %sw.epilog

sw.bb.20:                                         ; preds = %entry
  %13 = load i32, i32* %i.addr, align 4, !tbaa !30
  %idxprom21 = sext i32 %13 to i64
  %14 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map22 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %14, i32 0, i32 64
  %arrayidx23 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map22, i32 0, i64 %idxprom21
  %decode_lookup24 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx23, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [16 x float], [16 x float]* %decode_lookup24, i32 0, i64 0
  %15 = load float, float* %arrayidx25, align 4, !tbaa !196
  %conv26 = fpext float %15 to double
  %16 = load i16, i16* %sample_value.addr, align 2, !tbaa !189
  %conv27 = sext i16 %16 to i32
  %conv28 = sitofp i32 %conv27 to float
  %div29 = fdiv float %conv28, 3.276000e+04
  %conv30 = fpext float %div29 to double
  %mul = fmul double %conv30, 2.550000e+02
  %17 = load i32, i32* %i.addr, align 4, !tbaa !30
  %idxprom31 = sext i32 %17 to i64
  %18 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map32 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %18, i32 0, i32 64
  %arrayidx33 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map32, i32 0, i64 %idxprom31
  %decode_factor = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx33, i32 0, i32 2
  %19 = load float, float* %decode_factor, align 4, !tbaa !199
  %conv34 = fpext float %19 to double
  %mul35 = fmul double %mul, %conv34
  %add36 = fadd double %conv26, %mul35
  %conv37 = fptrunc double %add36 to float
  %20 = load i32, i32* %i.addr, align 4, !tbaa !30
  %idxprom38 = sext i32 %20 to i64
  %21 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %cc.addr, align 8, !tbaa !1
  %paint39 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %21, i32 0, i32 1
  %values40 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint39, i32 0, i32 0
  %arrayidx41 = getelementptr inbounds [64 x float], [64 x float]* %values40, i32 0, i64 %idxprom38
  store float %conv37, float* %arrayidx41, align 4, !tbaa !196
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.20, %entry, %sw.bb.4, %sw.bb
  ret void
}

declare i32 @gs_color_space_is_ICC(%struct.gs_color_space_s*) #2

declare i32 @gx_remap_ICC_imagelab(%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

declare i32 @gs_cspace_indexed_lookup_bytes(%struct.gs_color_space_s*, float, i8*) #2

declare signext i16 @gx_unit_frac(float) #2

declare i32 @gs_cspace_indexed_lookup_frac(%struct.gs_color_space_s*, float, i16*) #2

declare i32 @gs_throw_imp(i8*, i8*, i32, i32, i32, i8*, ...) #2

declare void @gsicc_init_buffer(%struct.gsicc_bufferdesc_s*, i8 zeroext, i8 zeroext, i32, i32, i32, i32, i32, i32, i32) #2

declare void @cmap_transfer_halftone(i16*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, i32, i32) #2

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
!5 = !{!6, !2, i64 24}
!6 = !{!"gx_image_enum_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !7, i64 32, !8, i64 40, !8, i64 44, !3, i64 48, !3, i64 308, !8, i64 568, !8, i64 572, !3, i64 576, !3, i64 577, !3, i64 578, !3, i64 579, !3, i64 580, !9, i64 584, !3, i64 1116, !3, i64 1117, !3, i64 1118, !3, i64 1119, !10, i64 1120, !12, i64 1144, !13, i64 1160, !8, i64 1176, !8, i64 1180, !14, i64 1184, !14, i64 1192, !2, i64 1200, !2, i64 1208, !2, i64 1216, !2, i64 1224, !2, i64 1232, !8, i64 1240, !2, i64 1248, !8, i64 1256, !8, i64 1260, !3, i64 1264, !3, i64 1268, !3, i64 1269, !3, i64 1270, !3, i64 1271, !15, i64 1272, !15, i64 1288, !8, i64 1304, !8, i64 1308, !8, i64 1312, !8, i64 1316, !2, i64 1320, !2, i64 1328, !2, i64 1336, !8, i64 1344, !16, i64 1348, !14, i64 1356, !14, i64 1364, !17, i64 1372, !8, i64 1492, !8, i64 1496, !16, i64 1500, !8, i64 1508, !8, i64 1512, !8, i64 1516, !8, i64 1520, !8, i64 1524, !3, i64 1528, !2, i64 23112, !22, i64 23120, !22, i64 23776, !2, i64 24432, !2, i64 24440, !2, i64 24448, !2, i64 24456, !2, i64 24464, !8, i64 24472, !8, i64 24476, !8, i64 24480, !2, i64 24488, !8, i64 24496, !3, i64 24500, !27, i64 24504, !28, i64 24792, !8, i64 24808}
!7 = !{!"long", !3, i64 0}
!8 = !{!"int", !3, i64 0}
!9 = !{!"mc_", !3, i64 0, !8, i64 520, !8, i64 524, !8, i64 528}
!10 = !{!"gs_matrix_s", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20}
!11 = !{!"float", !3, i64 0}
!12 = !{!"r_", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12}
!13 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12}
!14 = !{!"gs_fixed_point_s", !8, i64 0, !8, i64 4}
!15 = !{!"gs_fixed_rect_s", !14, i64 0, !14, i64 8}
!16 = !{!"gs_int_point_s", !8, i64 0, !8, i64 4}
!17 = !{!"dd_", !18, i64 0, !18, i64 40, !18, i64 80}
!18 = !{!"gx_dda_fixed_point_s", !19, i64 0, !19, i64 20}
!19 = !{!"gx_dda_fixed_s", !20, i64 0, !21, i64 8}
!20 = !{!"_a", !8, i64 0, !8, i64 4}
!21 = !{!"_e", !8, i64 0, !8, i64 4, !8, i64 8}
!22 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !16, i64 352, !8, i64 360, !23, i64 368, !25, i64 632}
!23 = !{!"gs_client_color_s", !2, i64 0, !24, i64 8}
!24 = !{!"gs_paint_color_s", !3, i64 0}
!25 = !{!"_mask", !26, i64 0, !7, i64 8, !2, i64 16}
!26 = !{!"mp_", !8, i64 0, !8, i64 4}
!27 = !{!"ht_landscape_info_s", !8, i64 0, !3, i64 4, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284}
!28 = !{!"gx_image_icc_setup_s", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12}
!29 = !{!6, !2, i64 1224}
!30 = !{!8, !8, i64 0}
!31 = !{!6, !3, i64 1119}
!32 = !{!6, !3, i64 1116}
!33 = !{!6, !3, i64 1264}
!34 = !{!6, !3, i64 1118}
!35 = !{!6, !3, i64 580}
!36 = !{!6, !8, i64 568}
!37 = !{!6, !8, i64 572}
!38 = !{!39, !2, i64 64}
!39 = !{!"gs_color_space_s", !2, i64 0, !40, i64 8, !7, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !3, i64 72}
!40 = !{!"rc_header_s", !7, i64 0, !2, i64 8, !2, i64 16}
!41 = !{!39, !2, i64 0}
!42 = !{!43, !3, i64 0}
!43 = !{!"gs_color_space_type_s", !3, i64 0, !8, i64 4, !8, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128}
!44 = !{!39, !2, i64 40}
!45 = !{!6, !3, i64 576}
!46 = !{!6, !2, i64 16}
!47 = !{!48, !2, i64 1680}
!48 = !{!"gx_device_s", !8, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !8, i64 40, !2, i64 48, !40, i64 56, !8, i64 80, !8, i64 84, !8, i64 88, !49, i64 96, !52, i64 816, !8, i64 832, !8, i64 836, !8, i64 840, !8, i64 844, !8, i64 848, !8, i64 852, !3, i64 856, !3, i64 864, !8, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !7, i64 928, !7, i64 936, !8, i64 944, !8, i64 948, !8, i64 952, !8, i64 956, !8, i64 960, !7, i64 968, !7, i64 976, !53, i64 984, !8, i64 1052, !8, i64 1056, !54, i64 1064, !2, i64 1104, !3, i64 1112, !56, i64 1120, !57, i64 1144}
!49 = !{!"gx_device_color_info_s", !8, i64 0, !8, i64 4, !3, i64 8, !50, i64 12, !3, i64 14, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !51, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !7, i64 704, !8, i64 712}
!50 = !{!"short", !3, i64 0}
!51 = !{!"gx_device_anti_alias_info_s", !8, i64 0, !8, i64 4}
!52 = !{!"gx_device_cached_colors_s", !7, i64 0, !7, i64 8}
!53 = !{!"gx_stroked_gradient_recognizer_s", !8, i64 0, !3, i64 4, !3, i64 36}
!54 = !{!"gdev_space_params_s", !7, i64 0, !7, i64 8, !55, i64 16, !8, i64 32, !3, i64 36}
!55 = !{!"gx_band_params_s", !8, i64 0, !8, i64 4, !7, i64 8}
!56 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!57 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!58 = !{!48, !8, i64 100}
!59 = !{!6, !2, i64 1216}
!60 = !{!61, !8, i64 32}
!61 = !{!"stream_image_scale_params_s", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !8, i64 96}
!62 = !{!61, !8, i64 36}
!63 = !{!6, !8, i64 1168}
!64 = !{!61, !8, i64 8}
!65 = !{!6, !8, i64 1172}
!66 = !{!61, !8, i64 12}
!67 = !{!6, !8, i64 1160}
!68 = !{!6, !8, i64 1144}
!69 = !{!61, !8, i64 84}
!70 = !{!6, !8, i64 1164}
!71 = !{!6, !8, i64 1148}
!72 = !{!61, !8, i64 92}
!73 = !{!6, !8, i64 1180}
!74 = !{!6, !8, i64 1176}
!75 = !{!6, !8, i64 1152}
!76 = !{!61, !8, i64 48}
!77 = !{!6, !8, i64 1156}
!78 = !{!61, !8, i64 52}
!79 = !{!61, !8, i64 72}
!80 = !{!61, !8, i64 76}
!81 = !{!61, !8, i64 16}
!82 = !{!61, !8, i64 20}
!83 = !{!61, !8, i64 88}
!84 = !{!61, !8, i64 60}
!85 = !{!61, !8, i64 64}
!86 = !{!61, !8, i64 68}
!87 = !{!61, !8, i64 40}
!88 = !{!61, !8, i64 44}
!89 = !{!61, !8, i64 96}
!90 = !{!43, !2, i64 24}
!91 = !{!61, !8, i64 0}
!92 = !{!61, !8, i64 80}
!93 = !{!61, !8, i64 4}
!94 = !{!61, !8, i64 24}
!95 = !{!61, !8, i64 28}
!96 = !{!6, !11, i64 1120}
!97 = !{!6, !11, i64 1124}
!98 = !{!6, !3, i64 1271}
!99 = !{!43, !2, i64 128}
!100 = !{!3, !3, i64 0}
!101 = !{!48, !2, i64 1664}
!102 = !{!61, !8, i64 56}
!103 = !{!104, !2, i64 64}
!104 = !{!"gs_memory_s", !2, i64 0, !105, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!105 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!106 = !{!107, !2, i64 0}
!107 = !{!"stream_template_s", !2, i64 0, !2, i64 8, !2, i64 16, !8, i64 24, !8, i64 28, !2, i64 32, !2, i64 40, !2, i64 48}
!108 = !{i64 0, i64 4, !30, i64 4, i64 4, !30, i64 8, i64 4, !30, i64 12, i64 4, !30, i64 16, i64 4, !30, i64 20, i64 4, !30, i64 24, i64 4, !30, i64 28, i64 4, !30, i64 32, i64 4, !30, i64 36, i64 4, !30, i64 40, i64 4, !30, i64 44, i64 4, !30, i64 48, i64 4, !30, i64 52, i64 4, !30, i64 56, i64 4, !30, i64 60, i64 4, !30, i64 64, i64 4, !30, i64 68, i64 4, !30, i64 72, i64 4, !30, i64 76, i64 4, !30, i64 80, i64 4, !30, i64 84, i64 4, !30, i64 88, i64 4, !30, i64 92, i64 4, !30, i64 96, i64 4, !30}
!109 = !{!110, !2, i64 0}
!110 = !{!"stream_image_scale_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !8, i64 24, !3, i64 28, !61, i64 108}
!111 = !{!107, !2, i64 8}
!112 = !{!104, !2, i64 24}
!113 = !{!6, !2, i64 1248}
!114 = !{!6, !2, i64 1336}
!115 = !{!6, !8, i64 1492}
!116 = !{i64 0, i64 4, !30, i64 4, i64 4, !30, i64 8, i64 4, !30, i64 12, i64 4, !30, i64 16, i64 4, !30}
!117 = !{!19, !8, i64 8}
!118 = !{!19, !8, i64 0}
!119 = !{!19, !8, i64 12}
!120 = !{!19, !8, i64 4}
!121 = !{!19, !8, i64 16}
!122 = !{!110, !8, i64 196}
!123 = !{!6, !8, i64 1500}
!124 = !{!6, !8, i64 1508}
!125 = !{!6, !8, i64 1504}
!126 = !{!6, !8, i64 1452}
!127 = !{!6, !8, i64 24792}
!128 = !{!129, !3, i64 324}
!129 = !{!"sample_map_s", !3, i64 0, !3, i64 256, !11, i64 320, !3, i64 324, !8, i64 328}
!130 = !{!131, !8, i64 328}
!131 = !{!"gs_imager_state_s", !8, i64 0, !2, i64 8, !2, i64 16, !132, i64 24, !8, i64 128, !134, i64 132, !8, i64 168, !135, i64 176, !135, i64 192, !8, i64 208, !8, i64 212, !50, i64 216, !3, i64 220, !137, i64 224, !137, i64 228, !138, i64 232, !7, i64 240, !8, i64 248, !8, i64 252, !8, i64 256, !2, i64 264, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !8, i64 288, !8, i64 292, !11, i64 296, !14, i64 300, !8, i64 308, !8, i64 312, !8, i64 316, !11, i64 320, !8, i64 324, !8, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !8, i64 408, !2, i64 416, !2, i64 424, !139, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !140, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !140, i64 1336}
!132 = !{!"gx_line_params_s", !11, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !8, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !8, i64 36, !10, i64 40, !133, i64 64}
!133 = !{!"gx_dash_params_s", !2, i64 0, !8, i64 8, !11, i64 12, !8, i64 16, !11, i64 20, !8, i64 24, !8, i64 28, !11, i64 32}
!134 = !{!"gs_matrix_fixed_s", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !8, i64 24, !8, i64 28, !8, i64 32}
!135 = !{!"gs_point_s", !136, i64 0, !136, i64 8}
!136 = !{!"double", !3, i64 0}
!137 = !{!"gs_transparency_source_s", !11, i64 0}
!138 = !{!"gs_xstate_trans_flags", !8, i64 0, !8, i64 4}
!139 = !{!"gx_transfer_s", !8, i64 0, !2, i64 8, !8, i64 16, !2, i64 24, !8, i64 32, !2, i64 40, !8, i64 48, !2, i64 56}
!140 = !{!"gs_devicen_color_map_s", !8, i64 0, !3, i64 4, !8, i64 8, !8, i64 12, !7, i64 16, !3, i64 24}
!141 = !{!142, !3, i64 4}
!142 = !{!"gsicc_rendering_param_s", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !8, i64 20}
!143 = !{!142, !3, i64 12}
!144 = !{!142, !8, i64 20}
!145 = !{!142, !3, i64 8}
!146 = !{!131, !8, i64 324}
!147 = !{!142, !3, i64 0}
!148 = !{!142, !3, i64 16}
!149 = !{!39, !2, i64 48}
!150 = !{!151, !8, i64 4}
!151 = !{!"cmm_profile_s", !3, i64 0, !3, i64 1, !8, i64 4, !8, i64 8, !3, i64 12, !3, i64 16, !152, i64 20, !7, i64 144, !8, i64 152, !3, i64 156, !8, i64 216, !8, i64 220, !8, i64 224, !142, i64 228, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !40, i64 288, !8, i64 312, !2, i64 320, !2, i64 328, !2, i64 336}
!152 = !{!"gs_range_icc_s", !3, i64 0}
!153 = !{!6, !8, i64 24796}
!154 = !{!48, !3, i64 110}
!155 = !{!48, !8, i64 116}
!156 = !{!48, !8, i64 112}
!157 = !{!6, !8, i64 24800}
!158 = !{!6, !8, i64 24804}
!159 = !{!6, !2, i64 24448}
!160 = !{!6, !2, i64 1200}
!161 = !{!6, !8, i64 1304}
!162 = !{!110, !8, i64 156}
!163 = !{!110, !8, i64 148}
!164 = !{!110, !8, i64 140}
!165 = !{!48, !50, i64 108}
!166 = !{!110, !8, i64 108}
!167 = !{!110, !8, i64 112}
!168 = !{!110, !8, i64 132}
!169 = !{!6, !11, i64 1132}
!170 = !{!110, !8, i64 188}
!171 = !{!172, !8, i64 116}
!172 = !{!"gsicc_link_s", !2, i64 0, !173, i64 8, !174, i64 40, !2, i64 72, !8, i64 80, !2, i64 88, !2, i64 96, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !173, i64 128, !3, i64 160, !8, i64 164, !8, i64 168}
!173 = !{!"gscms_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!174 = !{!"gsicc_hashlink_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!175 = !{!176, !2, i64 0}
!176 = !{!"stream_cursor_read_s", !2, i64 0, !2, i64 8, !2, i64 16}
!177 = !{!176, !2, i64 8}
!178 = !{!131, !2, i64 8}
!179 = !{!172, !2, i64 8}
!180 = !{!110, !8, i64 124}
!181 = !{!182, !2, i64 16}
!182 = !{!"stream_cursor_write_s", !2, i64 0, !2, i64 8, !2, i64 16}
!183 = !{!182, !2, i64 8}
!184 = !{!107, !2, i64 16}
!185 = !{!110, !8, i64 204}
!186 = !{!48, !2, i64 1552}
!187 = !{!7, !7, i64 0}
!188 = !{!22, !2, i64 0}
!189 = !{!50, !50, i64 0}
!190 = !{!48, !2, i64 1224}
!191 = !{!192, !2, i64 40}
!192 = !{!"gx_device_color_type_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!193 = !{!6, !11, i64 1128}
!194 = !{!43, !2, i64 48}
!195 = !{!43, !2, i64 64}
!196 = !{!11, !11, i64 0}
!197 = !{!43, !2, i64 72}
!198 = !{!6, !3, i64 579}
!199 = !{!129, !11, i64 320}
