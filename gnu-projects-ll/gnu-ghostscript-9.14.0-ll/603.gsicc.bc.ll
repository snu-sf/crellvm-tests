; ModuleID = './gsicc.bc'
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
%struct.gs_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32 }
%struct.gs_param_list_procs_s = type { i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)*, i32 (%struct.gs_param_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*)* }
%struct.gs_param_typed_value_s = type { %union.gs_param_value_s, i32 }
%union.gs_param_value_s = type { %struct.gs_param_string_s }
%struct.gs_param_string_s = type { i8*, i32, i32 }
%struct.gs_param_collection_s = type { %struct.gs_param_list_s*, i32 }
%union.gs_param_enumerator_s = type { i64 }
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type opaque
%struct.gs_paint_color_s = type { [64 x float] }
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, {}*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.client_color_space_data_s = type { void (%struct.gs_color_space_s*, i32)* }
%struct.cmm_profile_s = type { i8, i8, i32, i32, i32, i32, %struct.gs_range_icc_s, i64, i32, [15 x i32], i32, i32, i32, %struct.gsicc_rendering_param_s, i8*, %struct.gx_device_s*, %struct.gsicc_namelist_s*, i8*, %struct.rc_header_s, i32, i8*, %struct.gs_memory_s*, %struct.gx_monitor_s* }
%struct.gs_range_icc_s = type { [15 x %struct.gs_range_s] }
%struct.gs_range_s = type { float, float }
%struct.gsicc_rendering_param_s = type { i32, i32, i32, i32, i32, i32 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_color_info_s = type { i32, i32, i32, i16, i8, i32, i32, i32, i32, %struct.gx_device_anti_alias_info_s, i32, [64 x i8], [64 x i8], [64 x i64], i8*, i32, i64, i32 }
%struct.gx_device_anti_alias_info_s = type { i32, i32 }
%struct.gx_device_cached_colors_s = type { i64, i64 }
%struct.gx_stroked_gradient_recognizer_s = type { i32, [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s] }
%struct.gs_fixed_point_s = type { i32, i32 }
%struct.gdev_space_params_s = type { i64, i64, %struct.gx_band_params_s, i32, i32 }
%struct.gx_band_params_s = type { i32, i32, i64 }
%struct.cmm_dev_profile_s = type { [4 x %struct.cmm_profile_s*], %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, [4 x %struct.gsicc_rendering_param_s], i32, i32, i32, i32, i32, i32, %struct.gsicc_namelist_s*, i32, %struct.gs_memory_s*, %struct.rc_header_s }
%struct.gx_page_device_procs_s = type { i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* }
%struct.gs_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s, %struct.gs_state_s*, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, %struct.gx_path_s*, %struct.gx_clip_path_s*, %struct.gx_clip_stack_s*, %struct.gx_clip_path_s*, i64, i64, %struct.gx_clip_path_s*, i32, [2 x %struct.anon.1], %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_matrix_fixed_s, i32, i32, i32, %struct.gs_state_s*, i32, %struct.gx_device_s*, %struct.gs_device_filter_stack_s*, %struct.gs_state_client_procs_s }
%struct.gx_line_params_s = type { float, i32, i32, i32, i32, i32, float, float, float, i32, %struct.gs_matrix_s, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { float*, i32, float, i32, float, i32, i32, float }
%struct.gs_point_s = type { double, double }
%struct.gs_transparency_source_s = type { float }
%struct.gs_xstate_trans_flags = type { i32, i32 }
%struct.gsicc_manager_s = type { %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.gsicc_devicen_s*, %struct.gsicc_smask_s*, i32, %struct.cmm_srcgtag_profile_s*, %struct.gs_memory_s*, %struct.rc_header_s }
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
%struct.gs_imager_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s }
%struct.gs_halftone_s = type opaque
%struct.gs_int_point_s = type { i32, i32 }
%struct.gx_device_halftone_s = type opaque
%struct.gs_cie_render_s = type { i32, %struct.rc_header_s, i64, i8*, %struct.gs_cie_wb_s, %struct.gs_matrix3_s, %struct.gs_range3_s, %struct.gs_cie_transform_proc3_s, %struct.gs_matrix3_s, %struct.gs_cie_render_proc3_s, %struct.gs_range3_s, %struct.gs_matrix3_s, %struct.gs_cie_render_proc3_s, %struct.gs_range3_s, %struct.gs_cie_render_table_s, %struct.gs_range3_s, %struct.gs_range3_s, %struct.gs_matrix3_s, [3 x float], %struct.gs_matrix3_s, %struct.gs_vector3_s, %struct.gs_vector3_s, %struct.anon.0 }
%struct.gs_cie_wb_s = type { %struct.gs_vector3_s, %struct.gs_vector3_s }
%struct.gs_cie_transform_proc3_s = type { i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)*, i8*, %struct.gs_const_string_s, i8* }
%struct.gs_cie_wbsd_s = type { %struct.anon, %struct.anon, %struct.anon, %struct.anon }
%struct.anon = type { %struct.gs_vector3_s, %struct.gs_vector3_s }
%struct.gs_cie_render_proc3_s = type { [3 x float (double, %struct.gs_cie_render_s*)*] }
%struct.gs_cie_render_table_s = type { %struct.gx_color_lookup_table_s, %struct.gs_cie_render_table_procs_s }
%struct.gx_color_lookup_table_s = type { i32, [4 x i32], i32, %struct.gs_const_string_s* }
%struct.gs_cie_render_table_procs_s = type { [4 x i16 (i8, %struct.gs_cie_render_s*)*] }
%struct.gs_range3_s = type { [3 x %struct.gs_range_s] }
%struct.gs_matrix3_s = type { %struct.gs_vector3_s, %struct.gs_vector3_s, %struct.gs_vector3_s, i32 }
%struct.gs_vector3_s = type { float, float, float }
%struct.anon.0 = type { %struct.gx_cie_vector_cache3_s, [3 x %struct.gx_cie_float_fixed_cache_s], [4 x %union.gx_cie_scalar_cache_s], i32 }
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
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
%struct.gx_device_color_type_s = type { %struct.gs_memory_struct_type_s*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* }
%struct.gx_device_color_saved_s = type { %struct.gx_device_color_type_s*, %union._svc, %struct.gs_int_point_s }
%union._svc = type { %struct._svbin, [304 x i8] }
%struct._svbin = type { [2 x i64], i32, i32 }
%struct.gx_rop_source_s = type { i8*, i32, i32, i64, [2 x i64], i32, i32 }
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type opaque
%struct.gx_pattern_cache_s = type opaque
%struct.gx_cie_joint_caches_s = type { i64, i64, i32, i32, %struct.rc_header_s, i32 (<2 x float>, float, i16*, float*, %struct.gs_imager_state_s*, %struct.gs_color_space_s*)*, i32, i32, %struct.gx_cie_vector_cache3_s, %struct.gs_cie_wbsd_s, i32, %struct.gx_cie_vector_cache3_s, i32 }
%struct.gs_devicen_color_map_s = type { i32, i32, i32, i32, i64, [64 x i32] }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gx_path_s = type opaque
%struct.gx_clip_stack_s = type opaque
%struct.gx_clip_path_s = type opaque
%struct.anon.1 = type { %struct.gs_color_space_s*, %struct.gs_client_color_s*, %struct.gx_device_color_s* }
%struct.gs_font_s = type opaque
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i32, i32, i32 }
%struct.gs_device_filter_stack_s = type { %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_s*, %struct.gx_device_s*, %struct.rc_header_s }
%struct.gs_device_filter_s = type opaque
%struct.gs_state_client_procs_s = type { i8* (%struct.gs_memory_s*)*, i32 (i8*, i8*)*, void (i8*, %struct.gs_memory_s*)*, i32 (i8*, i8*, i32)* }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
%struct.gx_xfont_procs_s = type opaque
%struct.gx_fill_params_s = type opaque
%struct.gx_stroke_params_s = type opaque
%struct.gs_fixed_edge_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image1_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, i32, i32, i32 }
%struct.gx_image_type_s = type opaque
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gx_image_enum_common_s = type opaque
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gs_get_bits_params_s = type opaque
%struct.gs_composite_s = type { %struct.gs_composite_type_s*, i64, i32, %struct.gs_composite_s*, %struct.gs_composite_s* }
%struct.gs_composite_type_s = type { i8, %struct.gs_composite_type_procs_s }
%struct.gs_composite_type_procs_s = type { i32 (%struct.gs_composite_s*, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s*)*, i32 (%struct.gs_composite_s*, i8*, i32*, %struct.gx_device_clist_writer_s*)*, i32 (%struct.gs_composite_s**, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32, i32, %struct.gs_imager_state_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s**, %struct.gx_device_s*)*, i32 (%struct.gs_composite_s*, i8, i8)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32*, i32*, i32, i32)* }
%struct.gx_device_clist_writer_s = type opaque
%struct.gs_text_params_s = type { i32, %union.sd_, i32, %struct.gs_point_s, %struct.gs_point_s, %union.s_, float*, float*, i32 }
%union.sd_ = type { i8* }
%union.s_ = type { i64 }
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
%struct.gs_pattern1_instance_s = type opaque
%struct.gs_fill_attributes_s = type { %struct.gs_fixed_rect_s*, i32, %struct.gx_device_halftone_s*, i32, i32, i32, %struct.patch_fill_state_s* }
%struct.patch_fill_state_s = type opaque
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gsicc_namelist_s = type { i32, %struct.gsicc_colorname_s*, i8*, %struct.gs_devicen_color_map_s*, i32 }
%struct.gsicc_colorname_s = type { i8*, i32, %struct.gsicc_colorname_s* }
%struct.gx_monitor_s = type { %struct.gs_memory_s*, %union.gp_monitor }
%union.gp_monitor = type { i8* }
%union.anon = type { %struct.gs_device_n_params_s }
%struct.gs_device_n_params_s = type { i64*, i32, %struct.gs_device_n_map_s*, %struct.gs_device_n_attributes_s*, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gs_device_n_map_s = type opaque
%struct.gs_device_n_attributes_s = type opaque
%struct.gsicc_serialized_profile_s = type { i8, i8, i32, i32, i32, i32, %struct.gs_range_icc_s, i64, i32, [15 x i32], i32, i32, i32, %struct.gsicc_rendering_param_s }

@st_base_color_space = external constant %struct.gs_memory_struct_type_s, align 8
@gs_color_space_type_ICC = constant { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* } { i32 12, i32 1, i32 1, %struct.gs_memory_struct_type_s* @st_base_color_space, i32 (%struct.gs_color_space_s*)* @gx_num_components_ICC, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)* @gx_init_ICC, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)* @gx_restrict_ICC, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)* @gx_same_concrete_space, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)* @gx_concretize_ICC, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* @gx_remap_concrete_ICC, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* @gx_remap_ICC, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)* @gx_install_ICC, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)* @gx_set_overprint_ICC, void (%struct.gs_color_space_s*)* @gx_final_ICC, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)* @gx_no_adjust_color_count, i32 (%struct.gs_color_space_s*, %struct.stream_s*)* @gx_serialize_ICC, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)* @gx_cspace_is_linear_ICC, i32 (%struct.gs_color_space_s*)* @gx_polarity_ICC }, align 8
@__func__.gx_remap_ICC_imagelab = private unnamed_addr constant [22 x i8] c"gx_remap_ICC_imagelab\00", align 1
@.str = private unnamed_addr constant [15 x i8] c"./base/gsicc.c\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Could not create ICC link:  Check profiles\00", align 1
@__func__.gx_remap_ICC = private unnamed_addr constant [13 x i8] c"gx_remap_ICC\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Attempting to do ICC remap with no profile\00", align 1
@__func__.gx_concretize_ICC = private unnamed_addr constant [18 x i8] c"gx_concretize_ICC\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"gx_final_ICC\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @gx_num_components_ICC(%struct.gs_color_space_s* %pcs) #0 {
entry:
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %0, i32 0, i32 6
  %1 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !5
  %num_comps = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %1, i32 0, i32 0
  %2 = load i8, i8* %num_comps, align 1, !tbaa !9
  %conv = zext i8 %2 to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal void @gx_init_ICC(%struct.gs_client_color_s* %pcc, %struct.gs_color_space_s* %pcs) #0 {
entry:
  %pcc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %i = alloca i32, align 4
  %ncomps = alloca i32, align 4
  store %struct.gs_client_color_s* %pcc, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %2, i32 0, i32 6
  %3 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !5
  %num_comps = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %3, i32 0, i32 0
  %4 = load i8, i8* %num_comps, align 1, !tbaa !9
  %conv = zext i8 %4 to i32
  store i32 %conv, i32* %ncomps, align 4, !tbaa !14
  store i32 0, i32* %i, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !tbaa !14
  %6 = load i32, i32* %ncomps, align 4, !tbaa !14
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %8, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 %idxprom
  store float 0.000000e+00, float* %arrayidx, align 4, !tbaa !15
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !tbaa !14
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4, !tbaa !14
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %11 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  call void @gx_restrict_ICC(%struct.gs_client_color_s* %10, %struct.gs_color_space_s* %11) #5
  %12 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #2
  %13 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gx_restrict_ICC(%struct.gs_client_color_s* %pcc, %struct.gs_color_space_s* %pcs) #0 {
entry:
  %pcc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %i = alloca i32, align 4
  %ncomps = alloca i32, align 4
  %ranges = alloca %struct.gs_range_s*, align 8
  %v = alloca double, align 8
  %rmin = alloca double, align 8
  %rmax = alloca double, align 8
  store %struct.gs_client_color_s* %pcc, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %2, i32 0, i32 6
  %3 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !5
  %num_comps = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %3, i32 0, i32 0
  %4 = load i8, i8* %num_comps, align 1, !tbaa !9
  %conv = zext i8 %4 to i32
  store i32 %conv, i32* %ncomps, align 4, !tbaa !14
  %5 = bitcast %struct.gs_range_s** %ranges to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data1 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %6, i32 0, i32 6
  %7 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data1, align 8, !tbaa !5
  %Range = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %7, i32 0, i32 6
  %ranges2 = getelementptr inbounds %struct.gs_range_icc_s, %struct.gs_range_icc_s* %Range, i32 0, i32 0
  %arraydecay = getelementptr inbounds [15 x %struct.gs_range_s], [15 x %struct.gs_range_s]* %ranges2, i32 0, i32 0
  store %struct.gs_range_s* %arraydecay, %struct.gs_range_s** %ranges, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4, !tbaa !14
  %9 = load i32, i32* %ncomps, align 4, !tbaa !14
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = bitcast double* %v to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %12, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 %idxprom
  %13 = load float, float* %arrayidx, align 4, !tbaa !15
  %conv4 = fpext float %13 to double
  store double %conv4, double* %v, align 8, !tbaa !17
  %14 = bitcast double* %rmin to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #2
  %15 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom5 = sext i32 %15 to i64
  %16 = load %struct.gs_range_s*, %struct.gs_range_s** %ranges, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %16, i64 %idxprom5
  %rmin7 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx6, i32 0, i32 0
  %17 = load float, float* %rmin7, align 4, !tbaa !19
  %conv8 = fpext float %17 to double
  store double %conv8, double* %rmin, align 8, !tbaa !17
  %18 = bitcast double* %rmax to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #2
  %19 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom9 = sext i32 %19 to i64
  %20 = load %struct.gs_range_s*, %struct.gs_range_s** %ranges, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %20, i64 %idxprom9
  %rmax11 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx10, i32 0, i32 1
  %21 = load float, float* %rmax11, align 4, !tbaa !21
  %conv12 = fpext float %21 to double
  store double %conv12, double* %rmax, align 8, !tbaa !17
  %22 = load double, double* %v, align 8, !tbaa !17
  %23 = load double, double* %rmin, align 8, !tbaa !17
  %cmp13 = fcmp olt double %22, %23
  br i1 %cmp13, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %24 = load double, double* %rmin, align 8, !tbaa !17
  %conv15 = fptrunc double %24 to float
  %25 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom16 = sext i32 %25 to i64
  %26 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint17 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %26, i32 0, i32 1
  %values18 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint17, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [64 x float], [64 x float]* %values18, i32 0, i64 %idxprom16
  store float %conv15, float* %arrayidx19, align 4, !tbaa !15
  br label %if.end.28

if.else:                                          ; preds = %for.body
  %27 = load double, double* %v, align 8, !tbaa !17
  %28 = load double, double* %rmax, align 8, !tbaa !17
  %cmp20 = fcmp ogt double %27, %28
  br i1 %cmp20, label %if.then.22, label %if.end

if.then.22:                                       ; preds = %if.else
  %29 = load double, double* %rmax, align 8, !tbaa !17
  %conv23 = fptrunc double %29 to float
  %30 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom24 = sext i32 %30 to i64
  %31 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint25 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %31, i32 0, i32 1
  %values26 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint25, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [64 x float], [64 x float]* %values26, i32 0, i64 %idxprom24
  store float %conv23, float* %arrayidx27, align 4, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %if.then.22, %if.else
  br label %if.end.28

if.end.28:                                        ; preds = %if.end, %if.then
  %32 = bitcast double* %rmax to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #2
  %33 = bitcast double* %rmin to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #2
  %34 = bitcast double* %v to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #2
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %35 = load i32, i32* %i, align 4, !tbaa !14
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %i, align 4, !tbaa !14
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = bitcast %struct.gs_range_s** %ranges to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #2
  %37 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #2
  %38 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #2
  ret void
}

declare %struct.gs_color_space_s* @gx_same_concrete_space(%struct.gs_color_space_s*, %struct.gs_imager_state_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gx_concretize_ICC(%struct.gs_client_color_s* %pcc, %struct.gs_color_space_s* %pcs, i16* %pconc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %pcc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pconc.addr = alloca i16*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %icc_link = alloca %struct.gsicc_link_s*, align 8
  %rendering_params = alloca %struct.gsicc_rendering_param_s, align 4
  %psrc = alloca [64 x i16], align 16
  %psrc_cm = alloca [64 x i16], align 16
  %k = alloca i32, align 4
  %psrc_temp = alloca i16*, align 8
  %num_des_comps = alloca i32, align 4
  %code = alloca i32, align 4
  %dev_profile = alloca %struct.cmm_dev_profile_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_client_color_s* %pcc, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store i16* %pconc, i16** %pconc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gsicc_link_s** %icc_link to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct.gsicc_rendering_param_s* %rendering_params to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #2
  %2 = bitcast [64 x i16]* %psrc to i8*
  call void @llvm.lifetime.start(i64 128, i8* %2) #2
  %3 = bitcast [64 x i16]* %psrc_cm to i8*
  call void @llvm.lifetime.start(i64 128, i8* %3) #2
  %4 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i16** %psrc_temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast i32* %num_des_comps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %10 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !22
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 %10(%struct.gx_device_s* %11, %struct.cmm_dev_profile_s** %dev_profile) #5
  store i32 %call, i32* %code, align 4, !tbaa !14
  %12 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %call1 = call i32 @gsicc_get_device_profile_comps(%struct.cmm_dev_profile_s* %12) #5
  store i32 %call1, i32* %num_des_comps, align 4, !tbaa !14
  %13 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %blackptcomp = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %13, i32 0, i32 34
  %14 = load i32, i32* %blackptcomp, align 4, !tbaa !33
  %black_point_comp = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 1
  store i32 %14, i32* %black_point_comp, align 4, !tbaa !45
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %graphics_type_tag = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %15, i32 0, i32 40
  %16 = load i32, i32* %graphics_type_tag, align 4, !tbaa !46
  %graphics_type_tag2 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 3
  store i32 %16, i32* %graphics_type_tag2, align 4, !tbaa !47
  %override_icc = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 5
  store i32 0, i32* %override_icc, align 4, !tbaa !48
  %preserve_black = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 2
  store i32 8, i32* %preserve_black, align 4, !tbaa !49
  %17 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %renderingintent = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %17, i32 0, i32 33
  %18 = load i32, i32* %renderingintent, align 4, !tbaa !50
  %rendering_intent = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 0
  store i32 %18, i32* %rendering_intent, align 4, !tbaa !51
  %cmm = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 4
  store i32 0, i32* %cmm, align 4, !tbaa !52
  store i32 0, i32* %k, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %19 = load i32, i32* %k, align 4, !tbaa !14
  %20 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %20, i32 0, i32 6
  %21 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !5
  %num_comps = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %21, i32 0, i32 0
  %22 = load i8, i8* %num_comps, align 1, !tbaa !9
  %conv = zext i8 %22 to i32
  %cmp = icmp slt i32 %19, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom = sext i32 %23 to i64
  %24 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %24, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 %idxprom
  %25 = load float, float* %arrayidx, align 4, !tbaa !15
  %conv4 = fpext float %25 to double
  %mul = fmul double %conv4, 6.553500e+04
  %conv5 = fptoui double %mul to i16
  %26 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom6 = sext i32 %26 to i64
  %arrayidx7 = getelementptr inbounds [64 x i16], [64 x i16]* %psrc, i32 0, i64 %idxprom6
  store i16 %conv5, i16* %arrayidx7, align 2, !tbaa !53
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %k, align 4, !tbaa !14
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %k, align 4, !tbaa !14
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %30 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %31 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %31, i32 0, i32 1
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !54
  %call8 = call %struct.gsicc_link_s* @gsicc_get_link(%struct.gs_imager_state_s* %28, %struct.gx_device_s* %29, %struct.gs_color_space_s* %30, %struct.gs_color_space_s* null, %struct.gsicc_rendering_param_s* %rendering_params, %struct.gs_memory_s* %32) #5
  store %struct.gsicc_link_s* %call8, %struct.gsicc_link_s** %icc_link, align 8, !tbaa !1
  %33 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link, align 8, !tbaa !1
  %cmp9 = icmp eq %struct.gsicc_link_s* %33, null
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %call11 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gx_concretize_ICC, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 551, i32 1, i32 -1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0)) #5
  store i32 %call11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.end
  %34 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link, align 8, !tbaa !1
  %is_identity = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %34, i32 0, i32 10
  %35 = load i32, i32* %is_identity, align 4, !tbaa !55
  %tobool = icmp ne i32 %35, 0
  br i1 %tobool, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end
  %arrayidx13 = getelementptr inbounds [64 x i16], [64 x i16]* %psrc, i32 0, i64 0
  store i16* %arrayidx13, i16** %psrc_temp, align 8, !tbaa !1
  br label %if.end.16

if.else:                                          ; preds = %if.end
  %arrayidx14 = getelementptr inbounds [64 x i16], [64 x i16]* %psrc_cm, i32 0, i64 0
  store i16* %arrayidx14, i16** %psrc_temp, align 8, !tbaa !1
  %36 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link, align 8, !tbaa !1
  %procs15 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %36, i32 0, i32 1
  %map_color = getelementptr inbounds %struct.gscms_procs_s, %struct.gscms_procs_s* %procs15, i32 0, i32 1
  %37 = load void (%struct.gx_device_s*, %struct.gsicc_link_s*, i8*, i8*, i32)*, void (%struct.gx_device_s*, %struct.gsicc_link_s*, i8*, i8*, i32)** %map_color, align 8, !tbaa !59
  %38 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %39 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %psrc, i32 0, i32 0
  %40 = bitcast i16* %arraydecay to i8*
  %41 = load i16*, i16** %psrc_temp, align 8, !tbaa !1
  %42 = bitcast i16* %41 to i8*
  call void %37(%struct.gx_device_s* %38, %struct.gsicc_link_s* %39, i8* %40, i8* %42, i32 2) #5
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.12
  store i32 0, i32* %k, align 4, !tbaa !14
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.29, %if.end.16
  %43 = load i32, i32* %k, align 4, !tbaa !14
  %44 = load i32, i32* %num_des_comps, align 4, !tbaa !14
  %cmp18 = icmp slt i32 %43, %44
  br i1 %cmp18, label %for.body.20, label %for.end.31

for.body.20:                                      ; preds = %for.cond.17
  %45 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom21 = sext i32 %45 to i64
  %46 = load i16*, i16** %psrc_temp, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i16, i16* %46, i64 %idxprom21
  %47 = load i16, i16* %arrayidx22, align 2, !tbaa !53
  %conv23 = uitofp i16 %47 to float
  %conv24 = fpext float %conv23 to double
  %div = fdiv double %conv24, 6.553500e+04
  %add = fadd double %div, 0x3EF0010010010010
  %mul25 = fmul double %add, 3.276000e+04
  %conv26 = fptosi double %mul25 to i16
  %48 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom27 = sext i32 %48 to i64
  %49 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds i16, i16* %49, i64 %idxprom27
  store i16 %conv26, i16* %arrayidx28, align 2, !tbaa !53
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.body.20
  %50 = load i32, i32* %k, align 4, !tbaa !14
  %inc30 = add nsw i32 %50, 1
  store i32 %inc30, i32* %k, align 4, !tbaa !14
  br label %for.cond.17

for.end.31:                                       ; preds = %for.cond.17
  %51 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link, align 8, !tbaa !1
  call void @gsicc_release_link(%struct.gsicc_link_s* %51) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.31, %if.then
  %52 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #2
  %53 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #2
  %54 = bitcast i32* %num_des_comps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #2
  %55 = bitcast i16** %psrc_temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #2
  %56 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #2
  %57 = bitcast [64 x i16]* %psrc_cm to i8*
  call void @llvm.lifetime.end(i64 128, i8* %57) #2
  %58 = bitcast [64 x i16]* %psrc to i8*
  call void @llvm.lifetime.end(i64 128, i8* %58) #2
  %59 = bitcast %struct.gsicc_rendering_param_s* %rendering_params to i8*
  call void @llvm.lifetime.end(i64 24, i8* %59) #2
  %60 = bitcast %struct.gsicc_link_s** %icc_link to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #2
  %61 = load i32, i32* %retval
  ret i32 %61
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_remap_concrete_ICC(i16* %pconc, %struct.gs_color_space_s* %pcs, %struct.gx_device_color_s* %pdc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, i32 %select) #0 {
entry:
  %pconc.addr = alloca i16*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %select.addr = alloca i32, align 4
  %num_colorants = alloca i32, align 4
  %code = alloca i32, align 4
  %dev_profile = alloca %struct.cmm_dev_profile_s*, align 8
  store i16* %pconc, i16** %pconc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %select, i32* %select.addr, align 4, !tbaa !60
  %0 = bitcast i32* %num_colorants to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %4 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !22
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 %4(%struct.gx_device_s* %5, %struct.cmm_dev_profile_s** %dev_profile) #5
  store i32 %call, i32* %code, align 4, !tbaa !14
  %6 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %call1 = call i32 @gsicc_get_device_profile_comps(%struct.cmm_dev_profile_s* %6) #5
  store i32 %call1, i32* %num_colorants, align 4, !tbaa !14
  %7 = load i32, i32* %num_colorants, align 4, !tbaa !14
  switch i32 %7, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %8 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %9 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %10 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %11 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %13 = load i32, i32* %select.addr, align 4, !tbaa !60
  %call2 = call i32 @gx_remap_concrete_DGray(i16* %8, %struct.gs_color_space_s* %9, %struct.gx_device_color_s* %10, %struct.gs_imager_state_s* %11, %struct.gx_device_s* %12, i32 %13) #5
  store i32 %call2, i32* %code, align 4, !tbaa !14
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %14 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %15 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %16 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %17 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %19 = load i32, i32* %select.addr, align 4, !tbaa !60
  %call4 = call i32 @gx_remap_concrete_DRGB(i16* %14, %struct.gs_color_space_s* %15, %struct.gx_device_color_s* %16, %struct.gs_imager_state_s* %17, %struct.gx_device_s* %18, i32 %19) #5
  store i32 %call4, i32* %code, align 4, !tbaa !14
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %20 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %21 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %22 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %23 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %25 = load i32, i32* %select.addr, align 4, !tbaa !60
  %call6 = call i32 @gx_remap_concrete_DCMYK(i16* %20, %struct.gs_color_space_s* %21, %struct.gx_device_color_s* %22, %struct.gs_imager_state_s* %23, %struct.gx_device_s* %24, i32 %25) #5
  store i32 %call6, i32* %code, align 4, !tbaa !14
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %26 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %27 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %28 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %29 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %31 = load i32, i32* %select.addr, align 4, !tbaa !60
  %call7 = call i32 @gx_remap_concrete_icc_devicen(i16* %26, %struct.gs_color_space_s* %27, %struct.gx_device_color_s* %28, %struct.gs_imager_state_s* %29, %struct.gx_device_s* %30, i32 %31) #5
  store i32 %call7, i32* %code, align 4, !tbaa !14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.5, %sw.bb.3, %sw.bb
  %32 = load i32, i32* %code, align 4, !tbaa !14
  %33 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #2
  %34 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #2
  %35 = bitcast i32* %num_colorants to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #2
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_remap_ICC(%struct.gs_client_color_s* %pcc, %struct.gs_color_space_s* %pcs, %struct.gx_device_color_s* %pdc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, i32 %select) #0 {
entry:
  %retval = alloca i32, align 4
  %pcc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %select.addr = alloca i32, align 4
  %icc_link = alloca %struct.gsicc_link_s*, align 8
  %rendering_params = alloca %struct.gsicc_rendering_param_s, align 4
  %psrc = alloca [64 x i16], align 16
  %psrc_cm = alloca [64 x i16], align 16
  %psrc_temp = alloca i16*, align 8
  %conc = alloca [64 x i16], align 16
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %num_des_comps = alloca i32, align 4
  %code = alloca i32, align 4
  %dev_profile = alloca %struct.cmm_dev_profile_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_client_color_s* %pcc, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %select, i32* %select.addr, align 4, !tbaa !60
  %0 = bitcast %struct.gsicc_link_s** %icc_link to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct.gsicc_rendering_param_s* %rendering_params to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #2
  %2 = bitcast [64 x i16]* %psrc to i8*
  call void @llvm.lifetime.start(i64 128, i8* %2) #2
  %3 = bitcast [64 x i16]* %psrc_cm to i8*
  call void @llvm.lifetime.start(i64 128, i8* %3) #2
  %4 = bitcast i16** %psrc_temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast [64 x i16]* %conc to i8*
  call void @llvm.lifetime.start(i64 128, i8* %5) #2
  %6 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i32* %num_des_comps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %12 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !22
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 %12(%struct.gx_device_s* %13, %struct.cmm_dev_profile_s** %dev_profile) #5
  store i32 %call, i32* %code, align 4, !tbaa !14
  %14 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %cmp = icmp eq %struct.cmm_dev_profile_s* %14, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.gx_remap_ICC, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 381, i32 0, i32 -100, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i32 0, i32 0)) #5
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %call2 = call i32 @gsicc_get_device_profile_comps(%struct.cmm_dev_profile_s* %15) #5
  store i32 %call2, i32* %num_des_comps, align 4, !tbaa !14
  %16 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %blackptcomp = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %16, i32 0, i32 34
  %17 = load i32, i32* %blackptcomp, align 4, !tbaa !33
  %black_point_comp = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 1
  store i32 %17, i32* %black_point_comp, align 4, !tbaa !45
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %graphics_type_tag = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 40
  %19 = load i32, i32* %graphics_type_tag, align 4, !tbaa !46
  %graphics_type_tag3 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 3
  store i32 %19, i32* %graphics_type_tag3, align 4, !tbaa !47
  %override_icc = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 5
  store i32 0, i32* %override_icc, align 4, !tbaa !48
  %preserve_black = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 2
  store i32 8, i32* %preserve_black, align 4, !tbaa !49
  %20 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %renderingintent = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %20, i32 0, i32 33
  %21 = load i32, i32* %renderingintent, align 4, !tbaa !50
  %rendering_intent = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 0
  store i32 %21, i32* %rendering_intent, align 4, !tbaa !51
  %cmm = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 4
  store i32 0, i32* %cmm, align 4, !tbaa !52
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %psrc_cm, i32 0, i32 0
  %22 = bitcast i16* %arraydecay to i8*
  %call4 = call i8* @memset(i8* %22, i32 0, i64 128) #6
  %23 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %23, i32 0, i32 6
  %24 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !5
  %data_cs = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %24, i32 0, i32 5
  %25 = load i32, i32* %data_cs, align 4, !tbaa !61
  %cmp5 = icmp eq i32 %25, 6
  br i1 %cmp5, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %26 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data6 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %26, i32 0, i32 6
  %27 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data6, align 8, !tbaa !5
  %islab = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %27, i32 0, i32 2
  %28 = load i32, i32* %islab, align 4, !tbaa !62
  %tobool = icmp ne i32 %28, 0
  br i1 %tobool, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %lor.lhs.false, %if.end
  %29 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %29, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 0
  %30 = load float, float* %arrayidx, align 4, !tbaa !15
  %conv = fpext float %30 to double
  %mul = fmul double %conv, 6.553500e+04
  %div = fdiv double %mul, 1.000000e+02
  %conv8 = fptoui double %div to i16
  %arrayidx9 = getelementptr inbounds [64 x i16], [64 x i16]* %psrc, i32 0, i64 0
  store i16 %conv8, i16* %arrayidx9, align 2, !tbaa !53
  %31 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint10 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %31, i32 0, i32 1
  %values11 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint10, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [64 x float], [64 x float]* %values11, i32 0, i64 1
  %32 = load float, float* %arrayidx12, align 4, !tbaa !15
  %add = fadd float %32, 1.280000e+02
  %conv13 = fpext float %add to double
  %div14 = fdiv double %conv13, 2.550000e+02
  %mul15 = fmul double %div14, 6.553500e+04
  %conv16 = fptoui double %mul15 to i16
  %arrayidx17 = getelementptr inbounds [64 x i16], [64 x i16]* %psrc, i32 0, i64 1
  store i16 %conv16, i16* %arrayidx17, align 2, !tbaa !53
  %33 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint18 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %33, i32 0, i32 1
  %values19 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint18, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [64 x float], [64 x float]* %values19, i32 0, i64 2
  %34 = load float, float* %arrayidx20, align 4, !tbaa !15
  %add21 = fadd float %34, 1.280000e+02
  %conv22 = fpext float %add21 to double
  %div23 = fdiv double %conv22, 2.550000e+02
  %mul24 = fmul double %div23, 6.553500e+04
  %conv25 = fptoui double %mul24 to i16
  %arrayidx26 = getelementptr inbounds [64 x i16], [64 x i16]* %psrc, i32 0, i64 2
  store i16 %conv25, i16* %arrayidx26, align 2, !tbaa !53
  br label %if.end.39

if.else:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %k, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %35 = load i32, i32* %k, align 4, !tbaa !14
  %36 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data27 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %36, i32 0, i32 6
  %37 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data27, align 8, !tbaa !5
  %num_comps = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %37, i32 0, i32 0
  %38 = load i8, i8* %num_comps, align 1, !tbaa !9
  %conv28 = zext i8 %38 to i32
  %cmp29 = icmp slt i32 %35, %conv28
  br i1 %cmp29, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %39 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom = sext i32 %39 to i64
  %40 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint31 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %40, i32 0, i32 1
  %values32 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint31, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [64 x float], [64 x float]* %values32, i32 0, i64 %idxprom
  %41 = load float, float* %arrayidx33, align 4, !tbaa !15
  %conv34 = fpext float %41 to double
  %mul35 = fmul double %conv34, 6.553500e+04
  %conv36 = fptoui double %mul35 to i16
  %42 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom37 = sext i32 %42 to i64
  %arrayidx38 = getelementptr inbounds [64 x i16], [64 x i16]* %psrc, i32 0, i64 %idxprom37
  store i16 %conv36, i16* %arrayidx38, align 2, !tbaa !53
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %43 = load i32, i32* %k, align 4, !tbaa !14
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %k, align 4, !tbaa !14
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.39

if.end.39:                                        ; preds = %for.end, %if.then.7
  %44 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %45 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %46 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %47 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %47, i32 0, i32 1
  %48 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !54
  %call40 = call %struct.gsicc_link_s* @gsicc_get_link(%struct.gs_imager_state_s* %44, %struct.gx_device_s* %45, %struct.gs_color_space_s* %46, %struct.gs_color_space_s* null, %struct.gsicc_rendering_param_s* %rendering_params, %struct.gs_memory_s* %48) #5
  store %struct.gsicc_link_s* %call40, %struct.gsicc_link_s** %icc_link, align 8, !tbaa !1
  %49 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link, align 8, !tbaa !1
  %cmp41 = icmp eq %struct.gsicc_link_s* %49, null
  br i1 %cmp41, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %if.end.39
  %call44 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.gx_remap_ICC, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 407, i32 1, i32 -1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0)) #5
  store i32 %call44, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.45:                                        ; preds = %if.end.39
  %50 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link, align 8, !tbaa !1
  %is_identity = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %50, i32 0, i32 10
  %51 = load i32, i32* %is_identity, align 4, !tbaa !55
  %tobool46 = icmp ne i32 %51, 0
  br i1 %tobool46, label %if.then.47, label %if.else.49

if.then.47:                                       ; preds = %if.end.45
  %arrayidx48 = getelementptr inbounds [64 x i16], [64 x i16]* %psrc, i32 0, i64 0
  store i16* %arrayidx48, i16** %psrc_temp, align 8, !tbaa !1
  br label %if.end.53

if.else.49:                                       ; preds = %if.end.45
  %arrayidx50 = getelementptr inbounds [64 x i16], [64 x i16]* %psrc_cm, i32 0, i64 0
  store i16* %arrayidx50, i16** %psrc_temp, align 8, !tbaa !1
  %52 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link, align 8, !tbaa !1
  %procs51 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %52, i32 0, i32 1
  %map_color = getelementptr inbounds %struct.gscms_procs_s, %struct.gscms_procs_s* %procs51, i32 0, i32 1
  %53 = load void (%struct.gx_device_s*, %struct.gsicc_link_s*, i8*, i8*, i32)*, void (%struct.gx_device_s*, %struct.gsicc_link_s*, i8*, i8*, i32)** %map_color, align 8, !tbaa !59
  %54 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %55 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link, align 8, !tbaa !1
  %arraydecay52 = getelementptr inbounds [64 x i16], [64 x i16]* %psrc, i32 0, i32 0
  %56 = bitcast i16* %arraydecay52 to i8*
  %57 = load i16*, i16** %psrc_temp, align 8, !tbaa !1
  %58 = bitcast i16* %57 to i8*
  call void %53(%struct.gx_device_s* %54, %struct.gsicc_link_s* %55, i8* %56, i8* %58, i32 2) #5
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.49, %if.then.47
  %59 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link, align 8, !tbaa !1
  call void @gsicc_release_link(%struct.gsicc_link_s* %59) #5
  store i32 0, i32* %k, align 4, !tbaa !14
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.68, %if.end.53
  %60 = load i32, i32* %k, align 4, !tbaa !14
  %61 = load i32, i32* %num_des_comps, align 4, !tbaa !14
  %cmp55 = icmp slt i32 %60, %61
  br i1 %cmp55, label %for.body.57, label %for.end.70

for.body.57:                                      ; preds = %for.cond.54
  %62 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom58 = sext i32 %62 to i64
  %63 = load i16*, i16** %psrc_temp, align 8, !tbaa !1
  %arrayidx59 = getelementptr inbounds i16, i16* %63, i64 %idxprom58
  %64 = load i16, i16* %arrayidx59, align 2, !tbaa !53
  %conv60 = zext i16 %64 to i32
  %shr = ashr i32 %conv60, 1
  %65 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom61 = sext i32 %65 to i64
  %66 = load i16*, i16** %psrc_temp, align 8, !tbaa !1
  %arrayidx62 = getelementptr inbounds i16, i16* %66, i64 %idxprom61
  %67 = load i16, i16* %arrayidx62, align 2, !tbaa !53
  %conv63 = zext i16 %67 to i32
  %shr64 = ashr i32 %conv63, 13
  %sub = sub nsw i32 %shr, %shr64
  %conv65 = trunc i32 %sub to i16
  %68 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom66 = sext i32 %68 to i64
  %arrayidx67 = getelementptr inbounds [64 x i16], [64 x i16]* %conc, i32 0, i64 %idxprom66
  store i16 %conv65, i16* %arrayidx67, align 2, !tbaa !53
  br label %for.inc.68

for.inc.68:                                       ; preds = %for.body.57
  %69 = load i32, i32* %k, align 4, !tbaa !14
  %inc69 = add nsw i32 %69, 1
  store i32 %inc69, i32* %k, align 4, !tbaa !14
  br label %for.cond.54

for.end.70:                                       ; preds = %for.cond.54
  %arraydecay71 = getelementptr inbounds [64 x i16], [64 x i16]* %conc, i32 0, i32 0
  %70 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %71 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %72 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %73 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %74 = load i32, i32* %select.addr, align 4, !tbaa !60
  %call72 = call i32 @gx_remap_concrete_ICC(i16* %arraydecay71, %struct.gs_color_space_s* %70, %struct.gx_device_color_s* %71, %struct.gs_imager_state_s* %72, %struct.gx_device_s* %73, i32 %74) #5
  %75 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data73 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %75, i32 0, i32 6
  %76 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data73, align 8, !tbaa !5
  %num_comps74 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %76, i32 0, i32 0
  %77 = load i8, i8* %num_comps74, align 1, !tbaa !9
  %conv75 = zext i8 %77 to i32
  store i32 %conv75, i32* %i, align 4, !tbaa !14
  %78 = load i32, i32* %i, align 4, !tbaa !14
  %dec = add nsw i32 %78, -1
  store i32 %dec, i32* %i, align 4, !tbaa !14
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.88, %for.end.70
  %79 = load i32, i32* %i, align 4, !tbaa !14
  %cmp77 = icmp sge i32 %79, 0
  br i1 %cmp77, label %for.body.79, label %for.end.90

for.body.79:                                      ; preds = %for.cond.76
  %80 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom80 = sext i32 %80 to i64
  %81 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint81 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %81, i32 0, i32 1
  %values82 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint81, i32 0, i32 0
  %arrayidx83 = getelementptr inbounds [64 x float], [64 x float]* %values82, i32 0, i64 %idxprom80
  %82 = load float, float* %arrayidx83, align 4, !tbaa !15
  %83 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom84 = sext i32 %83 to i64
  %84 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %ccolor = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %84, i32 0, i32 4
  %paint85 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %ccolor, i32 0, i32 1
  %values86 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint85, i32 0, i32 0
  %arrayidx87 = getelementptr inbounds [64 x float], [64 x float]* %values86, i32 0, i64 %idxprom84
  store float %82, float* %arrayidx87, align 4, !tbaa !15
  br label %for.inc.88

for.inc.88:                                       ; preds = %for.body.79
  %85 = load i32, i32* %i, align 4, !tbaa !14
  %dec89 = add nsw i32 %85, -1
  store i32 %dec89, i32* %i, align 4, !tbaa !14
  br label %for.cond.76

for.end.90:                                       ; preds = %for.cond.76
  %86 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %ccolor_valid = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %86, i32 0, i32 3
  store i32 1, i32* %ccolor_valid, align 4, !tbaa !63
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.90, %if.then.43, %if.then
  %87 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #2
  %88 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #2
  %89 = bitcast i32* %num_des_comps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #2
  %90 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #2
  %91 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #2
  %92 = bitcast [64 x i16]* %conc to i8*
  call void @llvm.lifetime.end(i64 128, i8* %92) #2
  %93 = bitcast i16** %psrc_temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #2
  %94 = bitcast [64 x i16]* %psrc_cm to i8*
  call void @llvm.lifetime.end(i64 128, i8* %94) #2
  %95 = bitcast [64 x i16]* %psrc to i8*
  call void @llvm.lifetime.end(i64 128, i8* %95) #2
  %96 = bitcast %struct.gsicc_rendering_param_s* %rendering_params to i8*
  call void @llvm.lifetime.end(i64 24, i8* %96) #2
  %97 = bitcast %struct.gsicc_link_s** %icc_link to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #2
  %98 = load i32, i32* %retval
  ret i32 %98
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_install_ICC(%struct.gs_color_space_s* %pcs, %struct.gs_state_s* %pgs) #0 {
entry:
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_set_overprint_ICC(%struct.gs_color_space_s* %pcs, %struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  %pcinfo = alloca %struct.gx_device_color_info_s*, align 8
  %dev_profile = alloca %struct.cmm_dev_profile_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 78
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !70
  store %struct.gx_device_s* %2, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_color_info_s** %pcinfo to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %4, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gx_device_color_info_s* [ null, %cond.true ], [ %color_info, %cond.false ]
  store %struct.gx_device_color_info_s* %cond, %struct.gx_device_color_info_s** %pcinfo, align 8, !tbaa !1
  %6 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %9 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !22
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %call = call i32 %9(%struct.gx_device_s* %10, %struct.cmm_dev_profile_s** %dev_profile) #5
  store i32 %call, i32* %code, align 4, !tbaa !14
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %overprint = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %11, i32 0, i32 21
  %12 = load i32, i32* %overprint, align 4, !tbaa !73
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %cond.end
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %overprint_mode = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %13, i32 0, i32 22
  %14 = load i32, i32* %overprint_mode, align 4, !tbaa !74
  %cmp1 = icmp ne i32 %14, 1
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %15 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %pcinfo, align 8, !tbaa !1
  %cmp3 = icmp eq %struct.gx_device_color_info_s* %15, null
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false.2
  %16 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %16, i32 0, i32 6
  %17 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !5
  %data_cs = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %17, i32 0, i32 5
  %18 = load i32, i32* %data_cs, align 4, !tbaa !61
  %cmp5 = icmp ne i32 %18, 3
  br i1 %cmp5, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.4
  %19 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %pcinfo, align 8, !tbaa !1
  %opmode = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %19, i32 0, i32 15
  %20 = load i32, i32* %opmode, align 4, !tbaa !75
  %cmp7 = icmp eq i32 %20, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.6, %lor.lhs.false.4, %lor.lhs.false.2, %lor.lhs.false, %cond.end
  %21 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %22 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call8 = call i32 @gx_spot_colors_set_overprint(%struct.gs_color_space_s* %21, %struct.gs_state_s* %22) #5
  store i32 %call8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.6
  %23 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %pcinfo, align 8, !tbaa !1
  %opmode9 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %23, i32 0, i32 15
  %24 = load i32, i32* %opmode9, align 4, !tbaa !75
  %cmp10 = icmp eq i32 %24, 2
  br i1 %cmp10, label %if.then.14, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %if.end
  %25 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %pcinfo, align 8, !tbaa !1
  %opmode12 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %25, i32 0, i32 15
  %26 = load i32, i32* %opmode12, align 4, !tbaa !75
  %cmp13 = icmp eq i32 %26, 3
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %lor.lhs.false.11, %if.end
  %27 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %28 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call15 = call i32 @gx_set_overprint_rgb(%struct.gs_color_space_s* %27, %struct.gs_state_s* %28) #5
  store i32 %call15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false.11
  %29 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %30 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call16 = call i32 @gx_set_overprint_cmyk(%struct.gs_color_space_s* %29, %struct.gs_state_s* %30) #5
  store i32 %call16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then.14, %if.then
  %31 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #2
  %32 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #2
  %33 = bitcast %struct.gx_device_color_info_s** %pcinfo to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #2
  %34 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #2
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define internal void @gx_final_ICC(%struct.gs_color_space_s* %pcs) #0 {
entry:
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %0, i32 0, i32 6
  %1 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !5
  %cmp = icmp ne %struct.cmm_profile_s* %1, null
  br i1 %cmp, label %if.then, label %if.end.27

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data1 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %2, i32 0, i32 6
  %3 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data1, align 8, !tbaa !5
  %tobool = icmp ne %struct.cmm_profile_s* %3, null
  br i1 %tobool, label %if.then.2, label %if.end.25

if.then.2:                                        ; preds = %do.body
  br label %do.body.3

do.body.3:                                        ; preds = %if.then.2
  br label %do.body.4

do.body.4:                                        ; preds = %do.body.3
  br label %do.end

do.end:                                           ; preds = %do.body.4
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data5 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %4, i32 0, i32 6
  %5 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data5, align 8, !tbaa !5
  %rc = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %5, i32 0, i32 18
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %6 = load i64, i64* %ref_count, align 8, !tbaa !76
  %add = add nsw i64 %6, -1
  store i64 %add, i64* %ref_count, align 8, !tbaa !76
  br label %do.end.6

do.end.6:                                         ; preds = %do.end
  %7 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data7 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %7, i32 0, i32 6
  %8 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data7, align 8, !tbaa !5
  %rc8 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %8, i32 0, i32 18
  %ref_count9 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc8, i32 0, i32 0
  %9 = load i64, i64* %ref_count9, align 8, !tbaa !76
  %tobool10 = icmp ne i64 %9, 0
  br i1 %tobool10, label %if.else, label %if.then.11

if.then.11:                                       ; preds = %do.end.6
  br label %do.body.12

do.body.12:                                       ; preds = %if.then.11
  br label %do.body.13

do.body.13:                                       ; preds = %do.body.12
  br label %do.end.14

do.end.14:                                        ; preds = %do.body.13
  %10 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data15 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %10, i32 0, i32 6
  %11 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data15, align 8, !tbaa !5
  %rc16 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %11, i32 0, i32 18
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc16, i32 0, i32 2
  %12 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !77
  %13 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data17 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %13, i32 0, i32 6
  %14 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data17, align 8, !tbaa !5
  %rc18 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %14, i32 0, i32 18
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc18, i32 0, i32 1
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !78
  %16 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data19 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %16, i32 0, i32 6
  %17 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data19, align 8, !tbaa !5
  %18 = bitcast %struct.cmm_profile_s* %17 to i8*
  call void %12(%struct.gs_memory_s* %15, i8* %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0)) #5
  br label %do.end.20

do.end.20:                                        ; preds = %do.end.14
  br label %do.body.21

do.body.21:                                       ; preds = %do.end.20
  br label %do.end.22

do.end.22:                                        ; preds = %do.body.21
  br label %if.end

if.else:                                          ; preds = %do.end.6
  br label %do.body.23

do.body.23:                                       ; preds = %if.else
  br label %do.end.24

do.end.24:                                        ; preds = %do.body.23
  br label %if.end

if.end:                                           ; preds = %do.end.24, %do.end.22
  br label %if.end.25

if.end.25:                                        ; preds = %if.end, %do.body
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  br label %if.end.27

if.end.27:                                        ; preds = %do.end.26, %entry
  ret void
}

declare void @gx_no_adjust_color_count(%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @gx_serialize_ICC(%struct.gs_color_space_s* %pcs, %struct.stream_s* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %s.addr = alloca %struct.stream_s*, align 8
  %profile__serial = alloca %struct.gsicc_serialized_profile_s*, align 8
  %n = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gsicc_serialized_profile_s** %profile__serial to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @gx_serialize_cspace_type(%struct.gs_color_space_s* %3, %struct.stream_s* %4) #5
  store i32 %call, i32* %code, align 4, !tbaa !14
  %5 = load i32, i32* %code, align 4, !tbaa !14
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %code, align 4, !tbaa !14
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %7, i32 0, i32 6
  %8 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !5
  %9 = bitcast %struct.cmm_profile_s* %8 to %struct.gsicc_serialized_profile_s*
  store %struct.gsicc_serialized_profile_s* %9, %struct.gsicc_serialized_profile_s** %profile__serial, align 8, !tbaa !1
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %11 = load %struct.gsicc_serialized_profile_s*, %struct.gsicc_serialized_profile_s** %profile__serial, align 8, !tbaa !1
  %12 = bitcast %struct.gsicc_serialized_profile_s* %11 to i8*
  %call1 = call i32 @sputs(%struct.stream_s* %10, i8* %12, i32 ptrtoint (i8** getelementptr inbounds (%struct.cmm_profile_s, %struct.cmm_profile_s* null, i32 0, i32 14) to i32), i32* %n) #5
  store i32 %call1, i32* %code, align 4, !tbaa !14
  %13 = load i32, i32* %code, align 4, !tbaa !14
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #2
  %15 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #2
  %16 = bitcast %struct.gsicc_serialized_profile_s** %profile__serial to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #2
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_cspace_is_linear_ICC(%struct.gs_color_space_s* %cs, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, %struct.gs_client_color_s* %c0, %struct.gs_client_color_s* %c1, %struct.gs_client_color_s* %c2, %struct.gs_client_color_s* %c3, float %smoothness, %struct.gsicc_link_s* %icclink) #0 {
entry:
  %retval = alloca i32, align 4
  %cs.addr = alloca %struct.gs_color_space_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %c0.addr = alloca %struct.gs_client_color_s*, align 8
  %c1.addr = alloca %struct.gs_client_color_s*, align 8
  %c2.addr = alloca %struct.gs_client_color_s*, align 8
  %c3.addr = alloca %struct.gs_client_color_s*, align 8
  %smoothness.addr = alloca float, align 4
  %icclink.addr = alloca %struct.gsicc_link_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_color_space_s* %cs, %struct.gs_color_space_s** %cs.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_client_color_s* %c0, %struct.gs_client_color_s** %c0.addr, align 8, !tbaa !1
  store %struct.gs_client_color_s* %c1, %struct.gs_client_color_s** %c1.addr, align 8, !tbaa !1
  store %struct.gs_client_color_s* %c2, %struct.gs_client_color_s** %c2.addr, align 8, !tbaa !1
  store %struct.gs_client_color_s* %c3, %struct.gs_client_color_s** %c3.addr, align 8, !tbaa !1
  store float %smoothness, float* %smoothness.addr, align 4, !tbaa !15
  store %struct.gsicc_link_s* %icclink, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %2 = load i32, i32* %num_components, align 4, !tbaa !79
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 11
  %gray_index = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info1, i32 0, i32 4
  %4 = load i8, i8* %gray_index, align 1, !tbaa !80
  %conv = zext i8 %4 to i32
  %cmp2 = icmp eq i32 %conv, 255
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info4 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 11
  %max_color = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info4, i32 0, i32 6
  %6 = load i32, i32* %max_color, align 4, !tbaa !81
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info5 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 11
  %max_gray = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info5, i32 0, i32 5
  %8 = load i32, i32* %max_gray, align 4, !tbaa !82
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ %8, %cond.false ]
  %cmp6 = icmp ult i32 %cond, 31
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %9 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %is_identity = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %9, i32 0, i32 10
  %10 = load i32, i32* %is_identity, align 4, !tbaa !55
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info10 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 11
  %separable_and_linear = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info10, i32 0, i32 10
  %12 = load i32, i32* %separable_and_linear, align 4, !tbaa !83
  %cmp11 = icmp ne i32 %12, 1
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.9
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.end.9
  %13 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %c2.addr, align 8, !tbaa !1
  %cmp15 = icmp eq %struct.gs_client_color_s* %13, null
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.14
  %14 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %cs.addr, align 8, !tbaa !1
  %15 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %17 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %c0.addr, align 8, !tbaa !1
  %18 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %c1.addr, align 8, !tbaa !1
  %19 = load float, float* %smoothness.addr, align 4, !tbaa !15
  %20 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %call = call i32 @gx_icc_is_linear_in_line(%struct.gs_color_space_s* %14, %struct.gs_imager_state_s* %15, %struct.gx_device_s* %16, %struct.gs_client_color_s* %17, %struct.gs_client_color_s* %18, float %19, %struct.gsicc_link_s* %20) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.end.14
  %21 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %cs.addr, align 8, !tbaa !1
  %22 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %24 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %c0.addr, align 8, !tbaa !1
  %25 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %c1.addr, align 8, !tbaa !1
  %26 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %c2.addr, align 8, !tbaa !1
  %27 = load float, float* %smoothness.addr, align 4, !tbaa !15
  %28 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %call19 = call i32 @gx_icc_is_linear_in_triangle(%struct.gs_color_space_s* %21, %struct.gs_imager_state_s* %22, %struct.gx_device_s* %23, %struct.gs_client_color_s* %24, %struct.gs_client_color_s* %25, %struct.gs_client_color_s* %26, float %27, %struct.gsicc_link_s* %28) #5
  store i32 %call19, i32* %code, align 4, !tbaa !14
  %29 = load i32, i32* %code, align 4, !tbaa !14
  %cmp20 = icmp sle i32 %29, 0
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.18
  %30 = load i32, i32* %code, align 4, !tbaa !14
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %if.end.18
  %31 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %c3.addr, align 8, !tbaa !1
  %cmp24 = icmp eq %struct.gs_client_color_s* %31, null
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.23
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %if.end.23
  %32 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %cs.addr, align 8, !tbaa !1
  %33 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %34 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %35 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %c1.addr, align 8, !tbaa !1
  %36 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %c2.addr, align 8, !tbaa !1
  %37 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %c3.addr, align 8, !tbaa !1
  %38 = load float, float* %smoothness.addr, align 4, !tbaa !15
  %39 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %call28 = call i32 @gx_icc_is_linear_in_triangle(%struct.gs_color_space_s* %32, %struct.gs_imager_state_s* %33, %struct.gx_device_s* %34, %struct.gs_client_color_s* %35, %struct.gs_client_color_s* %36, %struct.gs_client_color_s* %37, float %38, %struct.gsicc_link_s* %39) #5
  store i32 %call28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.27, %if.then.26, %if.then.22, %if.then.17, %if.then.13, %if.then.8, %if.then
  %40 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #2
  %41 = load i32, i32* %retval
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_polarity_ICC(%struct.gs_color_space_s* %pcs) #0 {
entry:
  %retval = alloca i32, align 4
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %0, i32 0, i32 6
  %1 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !5
  %data_cs = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %1, i32 0, i32 5
  %2 = load i32, i32* %data_cs, align 4, !tbaa !61
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 7, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.1
    i32 6, label %sw.bb.1
    i32 5, label %sw.bb.1
    i32 3, label %sw.bb.2
    i32 4, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry, %entry
  store i32 -1, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry, %entry, %entry, %entry
  store i32 1, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry, %entry
  store i32 0, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.2, %sw.bb.1, %sw.bb
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @gx_remap_ICC_imagelab(%struct.gs_client_color_s* %pcc, %struct.gs_color_space_s* %pcs, %struct.gx_device_color_s* %pdc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, i32 %select) #0 {
entry:
  %retval = alloca i32, align 4
  %pcc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %select.addr = alloca i32, align 4
  %icc_link = alloca %struct.gsicc_link_s*, align 8
  %rendering_params = alloca %struct.gsicc_rendering_param_s, align 4
  %psrc = alloca [64 x i16], align 16
  %psrc_cm = alloca [64 x i16], align 16
  %psrc_temp = alloca i16*, align 8
  %conc = alloca [64 x i16], align 16
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %num_des_comps = alloca i32, align 4
  %code = alloca i32, align 4
  %dev_profile = alloca %struct.cmm_dev_profile_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_client_color_s* %pcc, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %select, i32* %select.addr, align 4, !tbaa !60
  %0 = bitcast %struct.gsicc_link_s** %icc_link to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct.gsicc_rendering_param_s* %rendering_params to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #2
  %2 = bitcast [64 x i16]* %psrc to i8*
  call void @llvm.lifetime.start(i64 128, i8* %2) #2
  %3 = bitcast [64 x i16]* %psrc_cm to i8*
  call void @llvm.lifetime.start(i64 128, i8* %3) #2
  %4 = bitcast i16** %psrc_temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast [64 x i16]* %conc to i8*
  call void @llvm.lifetime.start(i64 128, i8* %5) #2
  %6 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i32* %num_des_comps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %12 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !22
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 %12(%struct.gx_device_s* %13, %struct.cmm_dev_profile_s** %dev_profile) #5
  store i32 %call, i32* %code, align 4, !tbaa !14
  %14 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %call1 = call i32 @gsicc_get_device_profile_comps(%struct.cmm_dev_profile_s* %14) #5
  store i32 %call1, i32* %num_des_comps, align 4, !tbaa !14
  %15 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %blackptcomp = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %15, i32 0, i32 34
  %16 = load i32, i32* %blackptcomp, align 4, !tbaa !33
  %black_point_comp = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 1
  store i32 %16, i32* %black_point_comp, align 4, !tbaa !45
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %graphics_type_tag = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 40
  %18 = load i32, i32* %graphics_type_tag, align 4, !tbaa !46
  %graphics_type_tag2 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 3
  store i32 %18, i32* %graphics_type_tag2, align 4, !tbaa !47
  %override_icc = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 5
  store i32 0, i32* %override_icc, align 4, !tbaa !48
  %preserve_black = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 2
  store i32 8, i32* %preserve_black, align 4, !tbaa !49
  %19 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %renderingintent = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %19, i32 0, i32 33
  %20 = load i32, i32* %renderingintent, align 4, !tbaa !50
  %rendering_intent = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 0
  store i32 %20, i32* %rendering_intent, align 4, !tbaa !51
  %cmm = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 4
  store i32 0, i32* %cmm, align 4, !tbaa !52
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %psrc_cm, i32 0, i32 0
  %21 = bitcast i16* %arraydecay to i8*
  %call3 = call i8* @memset(i8* %21, i32 0, i64 128) #6
  store i32 0, i32* %k, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %22 = load i32, i32* %k, align 4, !tbaa !14
  %23 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %23, i32 0, i32 6
  %24 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !5
  %num_comps = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %24, i32 0, i32 0
  %25 = load i8, i8* %num_comps, align 1, !tbaa !9
  %conv = zext i8 %25 to i32
  %cmp = icmp slt i32 %22, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom = sext i32 %26 to i64
  %27 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %27, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 %idxprom
  %28 = load float, float* %arrayidx, align 4, !tbaa !15
  %conv5 = fpext float %28 to double
  %mul = fmul double %conv5, 6.553500e+04
  %conv6 = fptoui double %mul to i16
  %29 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom7 = sext i32 %29 to i64
  %arrayidx8 = getelementptr inbounds [64 x i16], [64 x i16]* %psrc, i32 0, i64 %idxprom7
  store i16 %conv6, i16* %arrayidx8, align 2, !tbaa !53
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %k, align 4, !tbaa !14
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %k, align 4, !tbaa !14
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %33 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %34 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %34, i32 0, i32 1
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !54
  %call9 = call %struct.gsicc_link_s* @gsicc_get_link(%struct.gs_imager_state_s* %31, %struct.gx_device_s* %32, %struct.gs_color_space_s* %33, %struct.gs_color_space_s* null, %struct.gsicc_rendering_param_s* %rendering_params, %struct.gs_memory_s* %35) #5
  store %struct.gsicc_link_s* %call9, %struct.gsicc_link_s** %icc_link, align 8, !tbaa !1
  %36 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link, align 8, !tbaa !1
  %cmp10 = icmp eq %struct.gsicc_link_s* %36, null
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %call12 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gx_remap_ICC_imagelab, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 488, i32 1, i32 -1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0)) #5
  store i32 %call12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.end
  %37 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link, align 8, !tbaa !1
  %is_identity = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %37, i32 0, i32 10
  %38 = load i32, i32* %is_identity, align 4, !tbaa !55
  %tobool = icmp ne i32 %38, 0
  br i1 %tobool, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end
  %arrayidx14 = getelementptr inbounds [64 x i16], [64 x i16]* %psrc, i32 0, i64 0
  store i16* %arrayidx14, i16** %psrc_temp, align 8, !tbaa !1
  br label %if.end.18

if.else:                                          ; preds = %if.end
  %arrayidx15 = getelementptr inbounds [64 x i16], [64 x i16]* %psrc_cm, i32 0, i64 0
  store i16* %arrayidx15, i16** %psrc_temp, align 8, !tbaa !1
  %39 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link, align 8, !tbaa !1
  %procs16 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %39, i32 0, i32 1
  %map_color = getelementptr inbounds %struct.gscms_procs_s, %struct.gscms_procs_s* %procs16, i32 0, i32 1
  %40 = load void (%struct.gx_device_s*, %struct.gsicc_link_s*, i8*, i8*, i32)*, void (%struct.gx_device_s*, %struct.gsicc_link_s*, i8*, i8*, i32)** %map_color, align 8, !tbaa !59
  %41 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %42 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link, align 8, !tbaa !1
  %arraydecay17 = getelementptr inbounds [64 x i16], [64 x i16]* %psrc, i32 0, i32 0
  %43 = bitcast i16* %arraydecay17 to i8*
  %44 = load i16*, i16** %psrc_temp, align 8, !tbaa !1
  %45 = bitcast i16* %44 to i8*
  call void %40(%struct.gx_device_s* %41, %struct.gsicc_link_s* %42, i8* %43, i8* %45, i32 2) #5
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.13
  %46 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link, align 8, !tbaa !1
  call void @gsicc_release_link(%struct.gsicc_link_s* %46) #5
  store i32 0, i32* %k, align 4, !tbaa !14
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.33, %if.end.18
  %47 = load i32, i32* %k, align 4, !tbaa !14
  %48 = load i32, i32* %num_des_comps, align 4, !tbaa !14
  %cmp20 = icmp slt i32 %47, %48
  br i1 %cmp20, label %for.body.22, label %for.end.35

for.body.22:                                      ; preds = %for.cond.19
  %49 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom23 = sext i32 %49 to i64
  %50 = load i16*, i16** %psrc_temp, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i16, i16* %50, i64 %idxprom23
  %51 = load i16, i16* %arrayidx24, align 2, !tbaa !53
  %conv25 = zext i16 %51 to i32
  %shr = ashr i32 %conv25, 1
  %52 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom26 = sext i32 %52 to i64
  %53 = load i16*, i16** %psrc_temp, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds i16, i16* %53, i64 %idxprom26
  %54 = load i16, i16* %arrayidx27, align 2, !tbaa !53
  %conv28 = zext i16 %54 to i32
  %shr29 = ashr i32 %conv28, 13
  %sub = sub nsw i32 %shr, %shr29
  %conv30 = trunc i32 %sub to i16
  %55 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom31 = sext i32 %55 to i64
  %arrayidx32 = getelementptr inbounds [64 x i16], [64 x i16]* %conc, i32 0, i64 %idxprom31
  store i16 %conv30, i16* %arrayidx32, align 2, !tbaa !53
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.body.22
  %56 = load i32, i32* %k, align 4, !tbaa !14
  %inc34 = add nsw i32 %56, 1
  store i32 %inc34, i32* %k, align 4, !tbaa !14
  br label %for.cond.19

for.end.35:                                       ; preds = %for.cond.19
  %arraydecay36 = getelementptr inbounds [64 x i16], [64 x i16]* %conc, i32 0, i32 0
  %57 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %58 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %59 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %60 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %61 = load i32, i32* %select.addr, align 4, !tbaa !60
  %call37 = call i32 @gx_remap_concrete_ICC(i16* %arraydecay36, %struct.gs_color_space_s* %57, %struct.gx_device_color_s* %58, %struct.gs_imager_state_s* %59, %struct.gx_device_s* %60, i32 %61) #5
  %62 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data38 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %62, i32 0, i32 6
  %63 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data38, align 8, !tbaa !5
  %num_comps39 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %63, i32 0, i32 0
  %64 = load i8, i8* %num_comps39, align 1, !tbaa !9
  %conv40 = zext i8 %64 to i32
  store i32 %conv40, i32* %i, align 4, !tbaa !14
  %65 = load i32, i32* %i, align 4, !tbaa !14
  %dec = add nsw i32 %65, -1
  store i32 %dec, i32* %i, align 4, !tbaa !14
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.53, %for.end.35
  %66 = load i32, i32* %i, align 4, !tbaa !14
  %cmp42 = icmp sge i32 %66, 0
  br i1 %cmp42, label %for.body.44, label %for.end.55

for.body.44:                                      ; preds = %for.cond.41
  %67 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom45 = sext i32 %67 to i64
  %68 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint46 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %68, i32 0, i32 1
  %values47 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint46, i32 0, i32 0
  %arrayidx48 = getelementptr inbounds [64 x float], [64 x float]* %values47, i32 0, i64 %idxprom45
  %69 = load float, float* %arrayidx48, align 4, !tbaa !15
  %70 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom49 = sext i32 %70 to i64
  %71 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %ccolor = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %71, i32 0, i32 4
  %paint50 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %ccolor, i32 0, i32 1
  %values51 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint50, i32 0, i32 0
  %arrayidx52 = getelementptr inbounds [64 x float], [64 x float]* %values51, i32 0, i64 %idxprom49
  store float %69, float* %arrayidx52, align 4, !tbaa !15
  br label %for.inc.53

for.inc.53:                                       ; preds = %for.body.44
  %72 = load i32, i32* %i, align 4, !tbaa !14
  %dec54 = add nsw i32 %72, -1
  store i32 %dec54, i32* %i, align 4, !tbaa !14
  br label %for.cond.41

for.end.55:                                       ; preds = %for.cond.41
  %73 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %ccolor_valid = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %73, i32 0, i32 3
  store i32 1, i32* %ccolor_valid, align 4, !tbaa !63
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.55, %if.then
  %74 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #2
  %75 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #2
  %76 = bitcast i32* %num_des_comps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #2
  %77 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #2
  %78 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #2
  %79 = bitcast [64 x i16]* %conc to i8*
  call void @llvm.lifetime.end(i64 128, i8* %79) #2
  %80 = bitcast i16** %psrc_temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #2
  %81 = bitcast [64 x i16]* %psrc_cm to i8*
  call void @llvm.lifetime.end(i64 128, i8* %81) #2
  %82 = bitcast [64 x i16]* %psrc to i8*
  call void @llvm.lifetime.end(i64 128, i8* %82) #2
  %83 = bitcast %struct.gsicc_rendering_param_s* %rendering_params to i8*
  call void @llvm.lifetime.end(i64 24, i8* %83) #2
  %84 = bitcast %struct.gsicc_link_s** %icc_link to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #2
  %85 = load i32, i32* %retval
  ret i32 %85
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @gsicc_get_device_profile_comps(%struct.cmm_dev_profile_s*) #1

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

declare %struct.gsicc_link_s* @gsicc_get_link(%struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gsicc_rendering_param_s*, %struct.gs_memory_s*) #1

declare i32 @gs_throw_imp(i8*, i8*, i32, i32, i32, i8*, ...) #1

declare void @gsicc_release_link(%struct.gsicc_link_s*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @gs_cspace_build_ICC(%struct.gs_color_space_s** %ppcspace, i8* %client_data, %struct.gs_memory_s* %pmem) #0 {
entry:
  %ppcspace.addr = alloca %struct.gs_color_space_s**, align 8
  %client_data.addr = alloca i8*, align 8
  %pmem.addr = alloca %struct.gs_memory_s*, align 8
  %pcspace = alloca %struct.gs_color_space_s*, align 8
  store %struct.gs_color_space_s** %ppcspace, %struct.gs_color_space_s*** %ppcspace.addr, align 8, !tbaa !1
  store i8* %client_data, i8** %client_data.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %pmem, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_color_space_s** %pcspace to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %call = call %struct.gs_color_space_s* @gs_cspace_alloc(%struct.gs_memory_s* %1, %struct.gs_color_space_type_s* bitcast ({ i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }* @gs_color_space_type_ICC to %struct.gs_color_space_type_s*)) #5
  store %struct.gs_color_space_s* %call, %struct.gs_color_space_s** %pcspace, align 8, !tbaa !1
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace, align 8, !tbaa !1
  %3 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcspace.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %2, %struct.gs_color_space_s** %3, align 8, !tbaa !1
  %4 = bitcast %struct.gs_color_space_s** %pcspace to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4) #2
  ret i32 0
}

declare %struct.gs_color_space_s* @gs_cspace_alloc(%struct.gs_memory_s*, %struct.gs_color_space_type_s*) #1

; Function Attrs: nounwind uwtable
define i32 @gx_default_get_profile(%struct.gx_device_s* %dev, %struct.cmm_dev_profile_s** %profile) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %profile.addr = alloca %struct.cmm_dev_profile_s**, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.cmm_dev_profile_s** %profile, %struct.cmm_dev_profile_s*** %profile.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i32 0, i32 39
  %1 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !84
  %2 = load %struct.cmm_dev_profile_s**, %struct.cmm_dev_profile_s*** %profile.addr, align 8, !tbaa !1
  store %struct.cmm_dev_profile_s* %1, %struct.cmm_dev_profile_s** %2, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_icc_is_linear_in_line(%struct.gs_color_space_s* %cs, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, %struct.gs_client_color_s* %c0, %struct.gs_client_color_s* %c1, float %smoothness, %struct.gsicc_link_s* %icclink) #0 {
entry:
  %retval = alloca i32, align 4
  %cs.addr = alloca %struct.gs_color_space_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %c0.addr = alloca %struct.gs_client_color_s*, align 8
  %c1.addr = alloca %struct.gs_client_color_s*, align 8
  %smoothness.addr = alloca float, align 4
  %icclink.addr = alloca %struct.gsicc_link_s*, align 8
  %nsrc = alloca i32, align 4
  %dev_profile = alloca %struct.cmm_dev_profile_s*, align 8
  %ndes = alloca i32, align 4
  %code = alloca i32, align 4
  %src0 = alloca [64 x i16], align 16
  %src1 = alloca [64 x i16], align 16
  %src01 = alloca [64 x i16], align 16
  %des0 = alloca [64 x i16], align 16
  %des1 = alloca [64 x i16], align 16
  %des01 = alloca [64 x i16], align 16
  %interp_des = alloca i16, align 2
  %max_diff = alloca i16, align 2
  %k = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_color_space_s* %cs, %struct.gs_color_space_s** %cs.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_client_color_s* %c0, %struct.gs_client_color_s** %c0.addr, align 8, !tbaa !1
  store %struct.gs_client_color_s* %c1, %struct.gs_client_color_s** %c1.addr, align 8, !tbaa !1
  store float %smoothness, float* %smoothness.addr, align 4, !tbaa !15
  store %struct.gsicc_link_s* %icclink, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %0 = bitcast i32* %nsrc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %cs.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %1, i32 0, i32 0
  %2 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !85
  %num_components = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %2, i32 0, i32 4
  %num_components1 = bitcast {}** %num_components to i32 (%struct.gs_color_space_s*)**
  %3 = load i32 (%struct.gs_color_space_s*)*, i32 (%struct.gs_color_space_s*)** %num_components1, align 8, !tbaa !86
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %cs.addr, align 8, !tbaa !1
  %call = call i32 %3(%struct.gs_color_space_s* %4) #5
  store i32 %call, i32* %nsrc, align 4, !tbaa !14
  %5 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast i32* %ndes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast [64 x i16]* %src0 to i8*
  call void @llvm.lifetime.start(i64 128, i8* %8) #2
  %9 = bitcast [64 x i16]* %src1 to i8*
  call void @llvm.lifetime.start(i64 128, i8* %9) #2
  %10 = bitcast [64 x i16]* %src01 to i8*
  call void @llvm.lifetime.start(i64 128, i8* %10) #2
  %11 = bitcast [64 x i16]* %des0 to i8*
  call void @llvm.lifetime.start(i64 128, i8* %11) #2
  %12 = bitcast [64 x i16]* %des1 to i8*
  call void @llvm.lifetime.start(i64 128, i8* %12) #2
  %13 = bitcast [64 x i16]* %des01 to i8*
  call void @llvm.lifetime.start(i64 128, i8* %13) #2
  %14 = bitcast i16* %interp_des to i8*
  call void @llvm.lifetime.start(i64 2, i8* %14) #2
  %15 = bitcast i16* %max_diff to i8*
  call void @llvm.lifetime.start(i64 2, i8* %15) #2
  %16 = load float, float* %smoothness.addr, align 4, !tbaa !15
  %mul = fmul float 6.553500e+04, %16
  %cmp = fcmp ogt float 1.000000e+00, %mul
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %17 = load float, float* %smoothness.addr, align 4, !tbaa !15
  %mul2 = fmul float 6.553500e+04, %17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ 1.000000e+00, %cond.true ], [ %mul2, %cond.false ]
  %conv = fptoui float %cond to i16
  store i16 %conv, i16* %max_diff, align 2, !tbaa !53
  %18 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %19, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %20 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !22
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call3 = call i32 %20(%struct.gx_device_s* %21, %struct.cmm_dev_profile_s** %dev_profile) #5
  store i32 %call3, i32* %code, align 4, !tbaa !14
  %22 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %call4 = call i32 @gsicc_get_device_profile_comps(%struct.cmm_dev_profile_s* %22) #5
  store i32 %call4, i32* %ndes, align 4, !tbaa !14
  store i32 0, i32* %k, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %23 = load i32, i32* %k, align 4, !tbaa !14
  %24 = load i32, i32* %nsrc, align 4, !tbaa !14
  %cmp5 = icmp slt i32 %23, %24
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom = sext i32 %25 to i64
  %26 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %c0.addr, align 8, !tbaa !1
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %26, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 %idxprom
  %27 = load float, float* %arrayidx, align 4, !tbaa !15
  %mul7 = fmul float %27, 6.553500e+04
  %conv8 = fptoui float %mul7 to i16
  %28 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom9 = sext i32 %28 to i64
  %arrayidx10 = getelementptr inbounds [64 x i16], [64 x i16]* %src0, i32 0, i64 %idxprom9
  store i16 %conv8, i16* %arrayidx10, align 2, !tbaa !53
  %29 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom11 = sext i32 %29 to i64
  %30 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %c1.addr, align 8, !tbaa !1
  %paint12 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %30, i32 0, i32 1
  %values13 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint12, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [64 x float], [64 x float]* %values13, i32 0, i64 %idxprom11
  %31 = load float, float* %arrayidx14, align 4, !tbaa !15
  %mul15 = fmul float %31, 6.553500e+04
  %conv16 = fptoui float %mul15 to i16
  %32 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom17 = sext i32 %32 to i64
  %arrayidx18 = getelementptr inbounds [64 x i16], [64 x i16]* %src1, i32 0, i64 %idxprom17
  store i16 %conv16, i16* %arrayidx18, align 2, !tbaa !53
  %33 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom19 = sext i32 %33 to i64
  %arrayidx20 = getelementptr inbounds [64 x i16], [64 x i16]* %src0, i32 0, i64 %idxprom19
  %34 = load i16, i16* %arrayidx20, align 2, !tbaa !53
  %conv21 = zext i16 %34 to i32
  %35 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom22 = sext i32 %35 to i64
  %arrayidx23 = getelementptr inbounds [64 x i16], [64 x i16]* %src1, i32 0, i64 %idxprom22
  %36 = load i16, i16* %arrayidx23, align 2, !tbaa !53
  %conv24 = zext i16 %36 to i32
  %add = add i32 %conv21, %conv24
  %shr = lshr i32 %add, 1
  %conv25 = trunc i32 %shr to i16
  %37 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom26 = sext i32 %37 to i64
  %arrayidx27 = getelementptr inbounds [64 x i16], [64 x i16]* %src01, i32 0, i64 %idxprom26
  store i16 %conv25, i16* %arrayidx27, align 2, !tbaa !53
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %38 = load i32, i32* %k, align 4, !tbaa !14
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %k, align 4, !tbaa !14
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds [64 x i16], [64 x i16]* %src0, i32 0, i64 0
  %arrayidx29 = getelementptr inbounds [64 x i16], [64 x i16]* %des0, i32 0, i64 0
  %40 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  call void @gsicc_remap_fast(%struct.gx_device_s* %39, i16* %arrayidx28, i16* %arrayidx29, %struct.gsicc_link_s* %40) #5
  %41 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds [64 x i16], [64 x i16]* %src1, i32 0, i64 0
  %arrayidx31 = getelementptr inbounds [64 x i16], [64 x i16]* %des1, i32 0, i64 0
  %42 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  call void @gsicc_remap_fast(%struct.gx_device_s* %41, i16* %arrayidx30, i16* %arrayidx31, %struct.gsicc_link_s* %42) #5
  %43 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds [64 x i16], [64 x i16]* %src01, i32 0, i64 0
  %arrayidx33 = getelementptr inbounds [64 x i16], [64 x i16]* %des01, i32 0, i64 0
  %44 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  call void @gsicc_remap_fast(%struct.gx_device_s* %43, i16* %arrayidx32, i16* %arrayidx33, %struct.gsicc_link_s* %44) #5
  store i32 0, i32* %k, align 4, !tbaa !14
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.71, %for.end
  %45 = load i32, i32* %k, align 4, !tbaa !14
  %46 = load i32, i32* %ndes, align 4, !tbaa !14
  %cmp35 = icmp slt i32 %45, %46
  br i1 %cmp35, label %for.body.37, label %for.end.73

for.body.37:                                      ; preds = %for.cond.34
  %47 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom38 = sext i32 %47 to i64
  %arrayidx39 = getelementptr inbounds [64 x i16], [64 x i16]* %des0, i32 0, i64 %idxprom38
  %48 = load i16, i16* %arrayidx39, align 2, !tbaa !53
  %conv40 = zext i16 %48 to i32
  %49 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom41 = sext i32 %49 to i64
  %arrayidx42 = getelementptr inbounds [64 x i16], [64 x i16]* %des1, i32 0, i64 %idxprom41
  %50 = load i16, i16* %arrayidx42, align 2, !tbaa !53
  %conv43 = zext i16 %50 to i32
  %add44 = add nsw i32 %conv40, %conv43
  %shr45 = ashr i32 %add44, 1
  %conv46 = trunc i32 %shr45 to i16
  store i16 %conv46, i16* %interp_des, align 2, !tbaa !53
  %51 = load i16, i16* %interp_des, align 2, !tbaa !53
  %conv47 = zext i16 %51 to i32
  %52 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom48 = sext i32 %52 to i64
  %arrayidx49 = getelementptr inbounds [64 x i16], [64 x i16]* %des01, i32 0, i64 %idxprom48
  %53 = load i16, i16* %arrayidx49, align 2, !tbaa !53
  %conv50 = zext i16 %53 to i32
  %sub = sub nsw i32 %conv47, %conv50
  %cmp51 = icmp slt i32 %sub, 0
  br i1 %cmp51, label %cond.true.53, label %cond.false.60

cond.true.53:                                     ; preds = %for.body.37
  %54 = load i16, i16* %interp_des, align 2, !tbaa !53
  %conv54 = zext i16 %54 to i32
  %55 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom55 = sext i32 %55 to i64
  %arrayidx56 = getelementptr inbounds [64 x i16], [64 x i16]* %des01, i32 0, i64 %idxprom55
  %56 = load i16, i16* %arrayidx56, align 2, !tbaa !53
  %conv57 = zext i16 %56 to i32
  %sub58 = sub nsw i32 %conv54, %conv57
  %sub59 = sub nsw i32 0, %sub58
  br label %cond.end.66

cond.false.60:                                    ; preds = %for.body.37
  %57 = load i16, i16* %interp_des, align 2, !tbaa !53
  %conv61 = zext i16 %57 to i32
  %58 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom62 = sext i32 %58 to i64
  %arrayidx63 = getelementptr inbounds [64 x i16], [64 x i16]* %des01, i32 0, i64 %idxprom62
  %59 = load i16, i16* %arrayidx63, align 2, !tbaa !53
  %conv64 = zext i16 %59 to i32
  %sub65 = sub nsw i32 %conv61, %conv64
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.false.60, %cond.true.53
  %cond67 = phi i32 [ %sub59, %cond.true.53 ], [ %sub65, %cond.false.60 ]
  %60 = load i16, i16* %max_diff, align 2, !tbaa !53
  %conv68 = zext i16 %60 to i32
  %cmp69 = icmp sgt i32 %cond67, %conv68
  br i1 %cmp69, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.66
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end.66
  br label %for.inc.71

for.inc.71:                                       ; preds = %if.end
  %61 = load i32, i32* %k, align 4, !tbaa !14
  %inc72 = add nsw i32 %61, 1
  store i32 %inc72, i32* %k, align 4, !tbaa !14
  br label %for.cond.34

for.end.73:                                       ; preds = %for.cond.34
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.73, %if.then
  %62 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #2
  %63 = bitcast i16* %max_diff to i8*
  call void @llvm.lifetime.end(i64 2, i8* %63) #2
  %64 = bitcast i16* %interp_des to i8*
  call void @llvm.lifetime.end(i64 2, i8* %64) #2
  %65 = bitcast [64 x i16]* %des01 to i8*
  call void @llvm.lifetime.end(i64 128, i8* %65) #2
  %66 = bitcast [64 x i16]* %des1 to i8*
  call void @llvm.lifetime.end(i64 128, i8* %66) #2
  %67 = bitcast [64 x i16]* %des0 to i8*
  call void @llvm.lifetime.end(i64 128, i8* %67) #2
  %68 = bitcast [64 x i16]* %src01 to i8*
  call void @llvm.lifetime.end(i64 128, i8* %68) #2
  %69 = bitcast [64 x i16]* %src1 to i8*
  call void @llvm.lifetime.end(i64 128, i8* %69) #2
  %70 = bitcast [64 x i16]* %src0 to i8*
  call void @llvm.lifetime.end(i64 128, i8* %70) #2
  %71 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #2
  %72 = bitcast i32* %ndes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #2
  %73 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #2
  %74 = bitcast i32* %nsrc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #2
  %75 = load i32, i32* %retval
  ret i32 %75
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_icc_is_linear_in_triangle(%struct.gs_color_space_s* %cs, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, %struct.gs_client_color_s* %c0, %struct.gs_client_color_s* %c1, %struct.gs_client_color_s* %c2, float %smoothness, %struct.gsicc_link_s* %icclink) #0 {
entry:
  %retval = alloca i32, align 4
  %cs.addr = alloca %struct.gs_color_space_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %c0.addr = alloca %struct.gs_client_color_s*, align 8
  %c1.addr = alloca %struct.gs_client_color_s*, align 8
  %c2.addr = alloca %struct.gs_client_color_s*, align 8
  %smoothness.addr = alloca float, align 4
  %icclink.addr = alloca %struct.gsicc_link_s*, align 8
  %src0 = alloca [64 x i16], align 16
  %src1 = alloca [64 x i16], align 16
  %src2 = alloca [64 x i16], align 16
  %des0 = alloca [64 x i16], align 16
  %des1 = alloca [64 x i16], align 16
  %des2 = alloca [64 x i16], align 16
  %src01 = alloca [64 x i16], align 16
  %src12 = alloca [64 x i16], align 16
  %src02 = alloca [64 x i16], align 16
  %src012 = alloca [64 x i16], align 16
  %des01 = alloca [64 x i16], align 16
  %des12 = alloca [64 x i16], align 16
  %des02 = alloca [64 x i16], align 16
  %des012 = alloca [64 x i16], align 16
  %nsrc = alloca i32, align 4
  %ndes = alloca i32, align 4
  %code = alloca i32, align 4
  %max_diff = alloca i16, align 2
  %interp_des = alloca i32, align 4
  %k = alloca i32, align 4
  %dev_profile = alloca %struct.cmm_dev_profile_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_color_space_s* %cs, %struct.gs_color_space_s** %cs.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_client_color_s* %c0, %struct.gs_client_color_s** %c0.addr, align 8, !tbaa !1
  store %struct.gs_client_color_s* %c1, %struct.gs_client_color_s** %c1.addr, align 8, !tbaa !1
  store %struct.gs_client_color_s* %c2, %struct.gs_client_color_s** %c2.addr, align 8, !tbaa !1
  store float %smoothness, float* %smoothness.addr, align 4, !tbaa !15
  store %struct.gsicc_link_s* %icclink, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %0 = bitcast [64 x i16]* %src0 to i8*
  call void @llvm.lifetime.start(i64 128, i8* %0) #2
  %1 = bitcast [64 x i16]* %src1 to i8*
  call void @llvm.lifetime.start(i64 128, i8* %1) #2
  %2 = bitcast [64 x i16]* %src2 to i8*
  call void @llvm.lifetime.start(i64 128, i8* %2) #2
  %3 = bitcast [64 x i16]* %des0 to i8*
  call void @llvm.lifetime.start(i64 128, i8* %3) #2
  %4 = bitcast [64 x i16]* %des1 to i8*
  call void @llvm.lifetime.start(i64 128, i8* %4) #2
  %5 = bitcast [64 x i16]* %des2 to i8*
  call void @llvm.lifetime.start(i64 128, i8* %5) #2
  %6 = bitcast [64 x i16]* %src01 to i8*
  call void @llvm.lifetime.start(i64 128, i8* %6) #2
  %7 = bitcast [64 x i16]* %src12 to i8*
  call void @llvm.lifetime.start(i64 128, i8* %7) #2
  %8 = bitcast [64 x i16]* %src02 to i8*
  call void @llvm.lifetime.start(i64 128, i8* %8) #2
  %9 = bitcast [64 x i16]* %src012 to i8*
  call void @llvm.lifetime.start(i64 128, i8* %9) #2
  %10 = bitcast [64 x i16]* %des01 to i8*
  call void @llvm.lifetime.start(i64 128, i8* %10) #2
  %11 = bitcast [64 x i16]* %des12 to i8*
  call void @llvm.lifetime.start(i64 128, i8* %11) #2
  %12 = bitcast [64 x i16]* %des02 to i8*
  call void @llvm.lifetime.start(i64 128, i8* %12) #2
  %13 = bitcast [64 x i16]* %des012 to i8*
  call void @llvm.lifetime.start(i64 128, i8* %13) #2
  %14 = bitcast i32* %nsrc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %cs.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %15, i32 0, i32 0
  %16 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !85
  %num_components = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %16, i32 0, i32 4
  %num_components1 = bitcast {}** %num_components to i32 (%struct.gs_color_space_s*)**
  %17 = load i32 (%struct.gs_color_space_s*)*, i32 (%struct.gs_color_space_s*)** %num_components1, align 8, !tbaa !86
  %18 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %cs.addr, align 8, !tbaa !1
  %call = call i32 %17(%struct.gs_color_space_s* %18) #5
  store i32 %call, i32* %nsrc, align 4, !tbaa !14
  %19 = bitcast i32* %ndes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #2
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #2
  %21 = bitcast i16* %max_diff to i8*
  call void @llvm.lifetime.start(i64 2, i8* %21) #2
  %22 = load float, float* %smoothness.addr, align 4, !tbaa !15
  %mul = fmul float 6.553500e+04, %22
  %cmp = fcmp ogt float 1.000000e+00, %mul
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %23 = load float, float* %smoothness.addr, align 4, !tbaa !15
  %mul2 = fmul float 6.553500e+04, %23
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ 1.000000e+00, %cond.true ], [ %mul2, %cond.false ]
  %conv = fptoui float %cond to i16
  store i16 %conv, i16* %max_diff, align 2, !tbaa !53
  %24 = bitcast i32* %interp_des to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #2
  %25 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #2
  %26 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #2
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %27, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %28 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !22
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call3 = call i32 %28(%struct.gx_device_s* %29, %struct.cmm_dev_profile_s** %dev_profile) #5
  store i32 %call3, i32* %code, align 4, !tbaa !14
  %30 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %call4 = call i32 @gsicc_get_device_profile_comps(%struct.cmm_dev_profile_s* %30) #5
  store i32 %call4, i32* %ndes, align 4, !tbaa !14
  store i32 0, i32* %k, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %31 = load i32, i32* %k, align 4, !tbaa !14
  %32 = load i32, i32* %nsrc, align 4, !tbaa !14
  %cmp5 = icmp slt i32 %31, %32
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom = sext i32 %33 to i64
  %34 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %c0.addr, align 8, !tbaa !1
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %34, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 %idxprom
  %35 = load float, float* %arrayidx, align 4, !tbaa !15
  %mul7 = fmul float %35, 6.553500e+04
  %conv8 = fptoui float %mul7 to i16
  %36 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom9 = sext i32 %36 to i64
  %arrayidx10 = getelementptr inbounds [64 x i16], [64 x i16]* %src0, i32 0, i64 %idxprom9
  store i16 %conv8, i16* %arrayidx10, align 2, !tbaa !53
  %37 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom11 = sext i32 %37 to i64
  %38 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %c1.addr, align 8, !tbaa !1
  %paint12 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %38, i32 0, i32 1
  %values13 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint12, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [64 x float], [64 x float]* %values13, i32 0, i64 %idxprom11
  %39 = load float, float* %arrayidx14, align 4, !tbaa !15
  %mul15 = fmul float %39, 6.553500e+04
  %conv16 = fptoui float %mul15 to i16
  %40 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom17 = sext i32 %40 to i64
  %arrayidx18 = getelementptr inbounds [64 x i16], [64 x i16]* %src1, i32 0, i64 %idxprom17
  store i16 %conv16, i16* %arrayidx18, align 2, !tbaa !53
  %41 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom19 = sext i32 %41 to i64
  %42 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %c2.addr, align 8, !tbaa !1
  %paint20 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %42, i32 0, i32 1
  %values21 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint20, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [64 x float], [64 x float]* %values21, i32 0, i64 %idxprom19
  %43 = load float, float* %arrayidx22, align 4, !tbaa !15
  %mul23 = fmul float %43, 6.553500e+04
  %conv24 = fptoui float %mul23 to i16
  %44 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom25 = sext i32 %44 to i64
  %arrayidx26 = getelementptr inbounds [64 x i16], [64 x i16]* %src2, i32 0, i64 %idxprom25
  store i16 %conv24, i16* %arrayidx26, align 2, !tbaa !53
  %45 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom27 = sext i32 %45 to i64
  %arrayidx28 = getelementptr inbounds [64 x i16], [64 x i16]* %src0, i32 0, i64 %idxprom27
  %46 = load i16, i16* %arrayidx28, align 2, !tbaa !53
  %conv29 = zext i16 %46 to i32
  %47 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom30 = sext i32 %47 to i64
  %arrayidx31 = getelementptr inbounds [64 x i16], [64 x i16]* %src1, i32 0, i64 %idxprom30
  %48 = load i16, i16* %arrayidx31, align 2, !tbaa !53
  %conv32 = zext i16 %48 to i32
  %add = add nsw i32 %conv29, %conv32
  %shr = ashr i32 %add, 1
  %conv33 = trunc i32 %shr to i16
  %49 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom34 = sext i32 %49 to i64
  %arrayidx35 = getelementptr inbounds [64 x i16], [64 x i16]* %src01, i32 0, i64 %idxprom34
  store i16 %conv33, i16* %arrayidx35, align 2, !tbaa !53
  %50 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom36 = sext i32 %50 to i64
  %arrayidx37 = getelementptr inbounds [64 x i16], [64 x i16]* %src0, i32 0, i64 %idxprom36
  %51 = load i16, i16* %arrayidx37, align 2, !tbaa !53
  %conv38 = zext i16 %51 to i32
  %52 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom39 = sext i32 %52 to i64
  %arrayidx40 = getelementptr inbounds [64 x i16], [64 x i16]* %src2, i32 0, i64 %idxprom39
  %53 = load i16, i16* %arrayidx40, align 2, !tbaa !53
  %conv41 = zext i16 %53 to i32
  %add42 = add nsw i32 %conv38, %conv41
  %shr43 = ashr i32 %add42, 1
  %conv44 = trunc i32 %shr43 to i16
  %54 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom45 = sext i32 %54 to i64
  %arrayidx46 = getelementptr inbounds [64 x i16], [64 x i16]* %src02, i32 0, i64 %idxprom45
  store i16 %conv44, i16* %arrayidx46, align 2, !tbaa !53
  %55 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom47 = sext i32 %55 to i64
  %arrayidx48 = getelementptr inbounds [64 x i16], [64 x i16]* %src1, i32 0, i64 %idxprom47
  %56 = load i16, i16* %arrayidx48, align 2, !tbaa !53
  %conv49 = zext i16 %56 to i32
  %57 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom50 = sext i32 %57 to i64
  %arrayidx51 = getelementptr inbounds [64 x i16], [64 x i16]* %src2, i32 0, i64 %idxprom50
  %58 = load i16, i16* %arrayidx51, align 2, !tbaa !53
  %conv52 = zext i16 %58 to i32
  %add53 = add nsw i32 %conv49, %conv52
  %shr54 = ashr i32 %add53, 1
  %conv55 = trunc i32 %shr54 to i16
  %59 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom56 = sext i32 %59 to i64
  %arrayidx57 = getelementptr inbounds [64 x i16], [64 x i16]* %src12, i32 0, i64 %idxprom56
  store i16 %conv55, i16* %arrayidx57, align 2, !tbaa !53
  %60 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom58 = sext i32 %60 to i64
  %arrayidx59 = getelementptr inbounds [64 x i16], [64 x i16]* %src12, i32 0, i64 %idxprom58
  %61 = load i16, i16* %arrayidx59, align 2, !tbaa !53
  %conv60 = zext i16 %61 to i32
  %62 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom61 = sext i32 %62 to i64
  %arrayidx62 = getelementptr inbounds [64 x i16], [64 x i16]* %src0, i32 0, i64 %idxprom61
  %63 = load i16, i16* %arrayidx62, align 2, !tbaa !53
  %conv63 = zext i16 %63 to i32
  %add64 = add nsw i32 %conv60, %conv63
  %shr65 = ashr i32 %add64, 1
  %conv66 = trunc i32 %shr65 to i16
  %64 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom67 = sext i32 %64 to i64
  %arrayidx68 = getelementptr inbounds [64 x i16], [64 x i16]* %src012, i32 0, i64 %idxprom67
  store i16 %conv66, i16* %arrayidx68, align 2, !tbaa !53
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %65 = load i32, i32* %k, align 4, !tbaa !14
  %inc = add nsw i32 %65, 1
  store i32 %inc, i32* %k, align 4, !tbaa !14
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %66 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arrayidx69 = getelementptr inbounds [64 x i16], [64 x i16]* %src0, i32 0, i64 0
  %arrayidx70 = getelementptr inbounds [64 x i16], [64 x i16]* %des0, i32 0, i64 0
  %67 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  call void @gsicc_remap_fast(%struct.gx_device_s* %66, i16* %arrayidx69, i16* %arrayidx70, %struct.gsicc_link_s* %67) #5
  %68 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arrayidx71 = getelementptr inbounds [64 x i16], [64 x i16]* %src1, i32 0, i64 0
  %arrayidx72 = getelementptr inbounds [64 x i16], [64 x i16]* %des1, i32 0, i64 0
  %69 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  call void @gsicc_remap_fast(%struct.gx_device_s* %68, i16* %arrayidx71, i16* %arrayidx72, %struct.gsicc_link_s* %69) #5
  %70 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arrayidx73 = getelementptr inbounds [64 x i16], [64 x i16]* %src2, i32 0, i64 0
  %arrayidx74 = getelementptr inbounds [64 x i16], [64 x i16]* %des2, i32 0, i64 0
  %71 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  call void @gsicc_remap_fast(%struct.gx_device_s* %70, i16* %arrayidx73, i16* %arrayidx74, %struct.gsicc_link_s* %71) #5
  %72 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arrayidx75 = getelementptr inbounds [64 x i16], [64 x i16]* %src01, i32 0, i64 0
  %arrayidx76 = getelementptr inbounds [64 x i16], [64 x i16]* %des01, i32 0, i64 0
  %73 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  call void @gsicc_remap_fast(%struct.gx_device_s* %72, i16* %arrayidx75, i16* %arrayidx76, %struct.gsicc_link_s* %73) #5
  %74 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arrayidx77 = getelementptr inbounds [64 x i16], [64 x i16]* %src12, i32 0, i64 0
  %arrayidx78 = getelementptr inbounds [64 x i16], [64 x i16]* %des12, i32 0, i64 0
  %75 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  call void @gsicc_remap_fast(%struct.gx_device_s* %74, i16* %arrayidx77, i16* %arrayidx78, %struct.gsicc_link_s* %75) #5
  %76 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arrayidx79 = getelementptr inbounds [64 x i16], [64 x i16]* %src02, i32 0, i64 0
  %arrayidx80 = getelementptr inbounds [64 x i16], [64 x i16]* %des02, i32 0, i64 0
  %77 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  call void @gsicc_remap_fast(%struct.gx_device_s* %76, i16* %arrayidx79, i16* %arrayidx80, %struct.gsicc_link_s* %77) #5
  %78 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arrayidx81 = getelementptr inbounds [64 x i16], [64 x i16]* %src012, i32 0, i64 0
  %arrayidx82 = getelementptr inbounds [64 x i16], [64 x i16]* %des012, i32 0, i64 0
  %79 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  call void @gsicc_remap_fast(%struct.gx_device_s* %78, i16* %arrayidx81, i16* %arrayidx82, %struct.gsicc_link_s* %79) #5
  store i32 0, i32* %k, align 4, !tbaa !14
  br label %for.cond.83

for.cond.83:                                      ; preds = %for.inc.209, %for.end
  %80 = load i32, i32* %k, align 4, !tbaa !14
  %81 = load i32, i32* %ndes, align 4, !tbaa !14
  %cmp84 = icmp slt i32 %80, %81
  br i1 %cmp84, label %for.body.86, label %for.end.211

for.body.86:                                      ; preds = %for.cond.83
  %82 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom87 = sext i32 %82 to i64
  %arrayidx88 = getelementptr inbounds [64 x i16], [64 x i16]* %des0, i32 0, i64 %idxprom87
  %83 = load i16, i16* %arrayidx88, align 2, !tbaa !53
  %conv89 = zext i16 %83 to i32
  %84 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom90 = sext i32 %84 to i64
  %arrayidx91 = getelementptr inbounds [64 x i16], [64 x i16]* %des1, i32 0, i64 %idxprom90
  %85 = load i16, i16* %arrayidx91, align 2, !tbaa !53
  %conv92 = zext i16 %85 to i32
  %add93 = add nsw i32 %conv89, %conv92
  %shr94 = ashr i32 %add93, 1
  store i32 %shr94, i32* %interp_des, align 4, !tbaa !14
  %86 = load i32, i32* %interp_des, align 4, !tbaa !14
  %87 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom95 = sext i32 %87 to i64
  %arrayidx96 = getelementptr inbounds [64 x i16], [64 x i16]* %des01, i32 0, i64 %idxprom95
  %88 = load i16, i16* %arrayidx96, align 2, !tbaa !53
  %conv97 = zext i16 %88 to i32
  %sub = sub nsw i32 %86, %conv97
  %cmp98 = icmp slt i32 %sub, 0
  br i1 %cmp98, label %cond.true.100, label %cond.false.106

cond.true.100:                                    ; preds = %for.body.86
  %89 = load i32, i32* %interp_des, align 4, !tbaa !14
  %90 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom101 = sext i32 %90 to i64
  %arrayidx102 = getelementptr inbounds [64 x i16], [64 x i16]* %des01, i32 0, i64 %idxprom101
  %91 = load i16, i16* %arrayidx102, align 2, !tbaa !53
  %conv103 = zext i16 %91 to i32
  %sub104 = sub nsw i32 %89, %conv103
  %sub105 = sub nsw i32 0, %sub104
  br label %cond.end.111

cond.false.106:                                   ; preds = %for.body.86
  %92 = load i32, i32* %interp_des, align 4, !tbaa !14
  %93 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom107 = sext i32 %93 to i64
  %arrayidx108 = getelementptr inbounds [64 x i16], [64 x i16]* %des01, i32 0, i64 %idxprom107
  %94 = load i16, i16* %arrayidx108, align 2, !tbaa !53
  %conv109 = zext i16 %94 to i32
  %sub110 = sub nsw i32 %92, %conv109
  br label %cond.end.111

cond.end.111:                                     ; preds = %cond.false.106, %cond.true.100
  %cond112 = phi i32 [ %sub105, %cond.true.100 ], [ %sub110, %cond.false.106 ]
  %95 = load i16, i16* %max_diff, align 2, !tbaa !53
  %conv113 = zext i16 %95 to i32
  %cmp114 = icmp sgt i32 %cond112, %conv113
  br i1 %cmp114, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.111
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end.111
  %96 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom116 = sext i32 %96 to i64
  %arrayidx117 = getelementptr inbounds [64 x i16], [64 x i16]* %des0, i32 0, i64 %idxprom116
  %97 = load i16, i16* %arrayidx117, align 2, !tbaa !53
  %conv118 = zext i16 %97 to i32
  %98 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom119 = sext i32 %98 to i64
  %arrayidx120 = getelementptr inbounds [64 x i16], [64 x i16]* %des2, i32 0, i64 %idxprom119
  %99 = load i16, i16* %arrayidx120, align 2, !tbaa !53
  %conv121 = zext i16 %99 to i32
  %add122 = add nsw i32 %conv118, %conv121
  %shr123 = ashr i32 %add122, 1
  store i32 %shr123, i32* %interp_des, align 4, !tbaa !14
  %100 = load i32, i32* %interp_des, align 4, !tbaa !14
  %101 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom124 = sext i32 %101 to i64
  %arrayidx125 = getelementptr inbounds [64 x i16], [64 x i16]* %des02, i32 0, i64 %idxprom124
  %102 = load i16, i16* %arrayidx125, align 2, !tbaa !53
  %conv126 = zext i16 %102 to i32
  %sub127 = sub nsw i32 %100, %conv126
  %cmp128 = icmp slt i32 %sub127, 0
  br i1 %cmp128, label %cond.true.130, label %cond.false.136

cond.true.130:                                    ; preds = %if.end
  %103 = load i32, i32* %interp_des, align 4, !tbaa !14
  %104 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom131 = sext i32 %104 to i64
  %arrayidx132 = getelementptr inbounds [64 x i16], [64 x i16]* %des02, i32 0, i64 %idxprom131
  %105 = load i16, i16* %arrayidx132, align 2, !tbaa !53
  %conv133 = zext i16 %105 to i32
  %sub134 = sub nsw i32 %103, %conv133
  %sub135 = sub nsw i32 0, %sub134
  br label %cond.end.141

cond.false.136:                                   ; preds = %if.end
  %106 = load i32, i32* %interp_des, align 4, !tbaa !14
  %107 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom137 = sext i32 %107 to i64
  %arrayidx138 = getelementptr inbounds [64 x i16], [64 x i16]* %des02, i32 0, i64 %idxprom137
  %108 = load i16, i16* %arrayidx138, align 2, !tbaa !53
  %conv139 = zext i16 %108 to i32
  %sub140 = sub nsw i32 %106, %conv139
  br label %cond.end.141

cond.end.141:                                     ; preds = %cond.false.136, %cond.true.130
  %cond142 = phi i32 [ %sub135, %cond.true.130 ], [ %sub140, %cond.false.136 ]
  %109 = load i16, i16* %max_diff, align 2, !tbaa !53
  %conv143 = zext i16 %109 to i32
  %cmp144 = icmp sgt i32 %cond142, %conv143
  br i1 %cmp144, label %if.then.146, label %if.end.147

if.then.146:                                      ; preds = %cond.end.141
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.147:                                       ; preds = %cond.end.141
  %110 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom148 = sext i32 %110 to i64
  %arrayidx149 = getelementptr inbounds [64 x i16], [64 x i16]* %des1, i32 0, i64 %idxprom148
  %111 = load i16, i16* %arrayidx149, align 2, !tbaa !53
  %conv150 = zext i16 %111 to i32
  %112 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom151 = sext i32 %112 to i64
  %arrayidx152 = getelementptr inbounds [64 x i16], [64 x i16]* %des2, i32 0, i64 %idxprom151
  %113 = load i16, i16* %arrayidx152, align 2, !tbaa !53
  %conv153 = zext i16 %113 to i32
  %add154 = add nsw i32 %conv150, %conv153
  %shr155 = ashr i32 %add154, 1
  store i32 %shr155, i32* %interp_des, align 4, !tbaa !14
  %114 = load i32, i32* %interp_des, align 4, !tbaa !14
  %115 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom156 = sext i32 %115 to i64
  %arrayidx157 = getelementptr inbounds [64 x i16], [64 x i16]* %des12, i32 0, i64 %idxprom156
  %116 = load i16, i16* %arrayidx157, align 2, !tbaa !53
  %conv158 = zext i16 %116 to i32
  %sub159 = sub nsw i32 %114, %conv158
  %cmp160 = icmp slt i32 %sub159, 0
  br i1 %cmp160, label %cond.true.162, label %cond.false.168

cond.true.162:                                    ; preds = %if.end.147
  %117 = load i32, i32* %interp_des, align 4, !tbaa !14
  %118 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom163 = sext i32 %118 to i64
  %arrayidx164 = getelementptr inbounds [64 x i16], [64 x i16]* %des12, i32 0, i64 %idxprom163
  %119 = load i16, i16* %arrayidx164, align 2, !tbaa !53
  %conv165 = zext i16 %119 to i32
  %sub166 = sub nsw i32 %117, %conv165
  %sub167 = sub nsw i32 0, %sub166
  br label %cond.end.173

cond.false.168:                                   ; preds = %if.end.147
  %120 = load i32, i32* %interp_des, align 4, !tbaa !14
  %121 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom169 = sext i32 %121 to i64
  %arrayidx170 = getelementptr inbounds [64 x i16], [64 x i16]* %des12, i32 0, i64 %idxprom169
  %122 = load i16, i16* %arrayidx170, align 2, !tbaa !53
  %conv171 = zext i16 %122 to i32
  %sub172 = sub nsw i32 %120, %conv171
  br label %cond.end.173

cond.end.173:                                     ; preds = %cond.false.168, %cond.true.162
  %cond174 = phi i32 [ %sub167, %cond.true.162 ], [ %sub172, %cond.false.168 ]
  %123 = load i16, i16* %max_diff, align 2, !tbaa !53
  %conv175 = zext i16 %123 to i32
  %cmp176 = icmp sgt i32 %cond174, %conv175
  br i1 %cmp176, label %if.then.178, label %if.end.179

if.then.178:                                      ; preds = %cond.end.173
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.179:                                       ; preds = %cond.end.173
  %124 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom180 = sext i32 %124 to i64
  %arrayidx181 = getelementptr inbounds [64 x i16], [64 x i16]* %des0, i32 0, i64 %idxprom180
  %125 = load i16, i16* %arrayidx181, align 2, !tbaa !53
  %conv182 = zext i16 %125 to i32
  %126 = load i32, i32* %interp_des, align 4, !tbaa !14
  %add183 = add i32 %conv182, %126
  %shr184 = lshr i32 %add183, 1
  store i32 %shr184, i32* %interp_des, align 4, !tbaa !14
  %127 = load i32, i32* %interp_des, align 4, !tbaa !14
  %128 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom185 = sext i32 %128 to i64
  %arrayidx186 = getelementptr inbounds [64 x i16], [64 x i16]* %des012, i32 0, i64 %idxprom185
  %129 = load i16, i16* %arrayidx186, align 2, !tbaa !53
  %conv187 = zext i16 %129 to i32
  %sub188 = sub nsw i32 %127, %conv187
  %cmp189 = icmp slt i32 %sub188, 0
  br i1 %cmp189, label %cond.true.191, label %cond.false.197

cond.true.191:                                    ; preds = %if.end.179
  %130 = load i32, i32* %interp_des, align 4, !tbaa !14
  %131 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom192 = sext i32 %131 to i64
  %arrayidx193 = getelementptr inbounds [64 x i16], [64 x i16]* %des012, i32 0, i64 %idxprom192
  %132 = load i16, i16* %arrayidx193, align 2, !tbaa !53
  %conv194 = zext i16 %132 to i32
  %sub195 = sub nsw i32 %130, %conv194
  %sub196 = sub nsw i32 0, %sub195
  br label %cond.end.202

cond.false.197:                                   ; preds = %if.end.179
  %133 = load i32, i32* %interp_des, align 4, !tbaa !14
  %134 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom198 = sext i32 %134 to i64
  %arrayidx199 = getelementptr inbounds [64 x i16], [64 x i16]* %des012, i32 0, i64 %idxprom198
  %135 = load i16, i16* %arrayidx199, align 2, !tbaa !53
  %conv200 = zext i16 %135 to i32
  %sub201 = sub nsw i32 %133, %conv200
  br label %cond.end.202

cond.end.202:                                     ; preds = %cond.false.197, %cond.true.191
  %cond203 = phi i32 [ %sub196, %cond.true.191 ], [ %sub201, %cond.false.197 ]
  %136 = load i16, i16* %max_diff, align 2, !tbaa !53
  %conv204 = zext i16 %136 to i32
  %cmp205 = icmp sgt i32 %cond203, %conv204
  br i1 %cmp205, label %if.then.207, label %if.end.208

if.then.207:                                      ; preds = %cond.end.202
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.208:                                       ; preds = %cond.end.202
  br label %for.inc.209

for.inc.209:                                      ; preds = %if.end.208
  %137 = load i32, i32* %k, align 4, !tbaa !14
  %inc210 = add nsw i32 %137, 1
  store i32 %inc210, i32* %k, align 4, !tbaa !14
  br label %for.cond.83

for.end.211:                                      ; preds = %for.cond.83
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.211, %if.then.207, %if.then.178, %if.then.146, %if.then
  %138 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %138) #2
  %139 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %139) #2
  %140 = bitcast i32* %interp_des to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #2
  %141 = bitcast i16* %max_diff to i8*
  call void @llvm.lifetime.end(i64 2, i8* %141) #2
  %142 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %142) #2
  %143 = bitcast i32* %ndes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #2
  %144 = bitcast i32* %nsrc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #2
  %145 = bitcast [64 x i16]* %des012 to i8*
  call void @llvm.lifetime.end(i64 128, i8* %145) #2
  %146 = bitcast [64 x i16]* %des02 to i8*
  call void @llvm.lifetime.end(i64 128, i8* %146) #2
  %147 = bitcast [64 x i16]* %des12 to i8*
  call void @llvm.lifetime.end(i64 128, i8* %147) #2
  %148 = bitcast [64 x i16]* %des01 to i8*
  call void @llvm.lifetime.end(i64 128, i8* %148) #2
  %149 = bitcast [64 x i16]* %src012 to i8*
  call void @llvm.lifetime.end(i64 128, i8* %149) #2
  %150 = bitcast [64 x i16]* %src02 to i8*
  call void @llvm.lifetime.end(i64 128, i8* %150) #2
  %151 = bitcast [64 x i16]* %src12 to i8*
  call void @llvm.lifetime.end(i64 128, i8* %151) #2
  %152 = bitcast [64 x i16]* %src01 to i8*
  call void @llvm.lifetime.end(i64 128, i8* %152) #2
  %153 = bitcast [64 x i16]* %des2 to i8*
  call void @llvm.lifetime.end(i64 128, i8* %153) #2
  %154 = bitcast [64 x i16]* %des1 to i8*
  call void @llvm.lifetime.end(i64 128, i8* %154) #2
  %155 = bitcast [64 x i16]* %des0 to i8*
  call void @llvm.lifetime.end(i64 128, i8* %155) #2
  %156 = bitcast [64 x i16]* %src2 to i8*
  call void @llvm.lifetime.end(i64 128, i8* %156) #2
  %157 = bitcast [64 x i16]* %src1 to i8*
  call void @llvm.lifetime.end(i64 128, i8* %157) #2
  %158 = bitcast [64 x i16]* %src0 to i8*
  call void @llvm.lifetime.end(i64 128, i8* %158) #2
  %159 = load i32, i32* %retval
  ret i32 %159
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @gsicc_remap_fast(%struct.gx_device_s* %dev, i16* %psrc, i16* %psrc_cm, %struct.gsicc_link_s* %icc_link) #4 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %psrc.addr = alloca i16*, align 8
  %psrc_cm.addr = alloca i16*, align 8
  %icc_link.addr = alloca %struct.gsicc_link_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16* %psrc, i16** %psrc.addr, align 8, !tbaa !1
  store i16* %psrc_cm, i16** %psrc_cm.addr, align 8, !tbaa !1
  store %struct.gsicc_link_s* %icc_link, %struct.gsicc_link_s** %icc_link.addr, align 8, !tbaa !1
  %0 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %0, i32 0, i32 1
  %map_color = getelementptr inbounds %struct.gscms_procs_s, %struct.gscms_procs_s* %procs, i32 0, i32 1
  %1 = load void (%struct.gx_device_s*, %struct.gsicc_link_s*, i8*, i8*, i32)*, void (%struct.gx_device_s*, %struct.gsicc_link_s*, i8*, i8*, i32)** %map_color, align 8, !tbaa !59
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %3 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link.addr, align 8, !tbaa !1
  %4 = load i16*, i16** %psrc.addr, align 8, !tbaa !1
  %5 = bitcast i16* %4 to i8*
  %6 = load i16*, i16** %psrc_cm.addr, align 8, !tbaa !1
  %7 = bitcast i16* %6 to i8*
  call void %1(%struct.gx_device_s* %2, %struct.gsicc_link_s* %3, i8* %5, i8* %7, i32 2) #5
  ret void
}

declare i32 @gx_remap_concrete_DGray(i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32) #1

declare i32 @gx_remap_concrete_DRGB(i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32) #1

declare i32 @gx_remap_concrete_DCMYK(i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @gx_remap_concrete_icc_devicen(i16* %pconc, %struct.gs_color_space_s* %pcs, %struct.gx_device_color_s* %pdc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, i32 %select) #0 {
entry:
  %pconc.addr = alloca i16*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %select.addr = alloca i32, align 4
  %dev_profile = alloca %struct.cmm_dev_profile_s*, align 8
  %code = alloca i32, align 4
  store i16* %pconc, i16** %pconc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %select, i32* %select.addr, align 4, !tbaa !60
  %0 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %3 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !22
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 %3(%struct.gx_device_s* %4, %struct.cmm_dev_profile_s** %dev_profile) #5
  store i32 %call, i32* %code, align 4, !tbaa !14
  %5 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %spotnames = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %5, i32 0, i32 11
  %6 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %spotnames, align 8, !tbaa !88
  %cmp = icmp ne %struct.gsicc_namelist_s* %6, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %spotnames1 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %7, i32 0, i32 11
  %8 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %spotnames1, align 8, !tbaa !88
  %equiv_cmyk_set = getelementptr inbounds %struct.gsicc_namelist_s, %struct.gsicc_namelist_s* %8, i32 0, i32 4
  %9 = load i32, i32* %equiv_cmyk_set, align 4, !tbaa !90
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %11 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %12 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %device_profile = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %12, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile, i32 0, i64 0
  %13 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx, align 8, !tbaa !1
  %call2 = call i32 @gsicc_set_devicen_equiv_colors(%struct.gx_device_s* %10, %struct.gs_imager_state_s* %11, %struct.cmm_profile_s* %13) #5
  store i32 %call2, i32* %code, align 4, !tbaa !14
  %14 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %spotnames3 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %14, i32 0, i32 11
  %15 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %spotnames3, align 8, !tbaa !88
  %equiv_cmyk_set4 = getelementptr inbounds %struct.gsicc_namelist_s, %struct.gsicc_namelist_s* %15, i32 0, i32 4
  store i32 1, i32* %equiv_cmyk_set4, align 4, !tbaa !90
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %16 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cmap_procs = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %16, i32 0, i32 49
  %17 = load %struct.gx_color_map_procs_s*, %struct.gx_color_map_procs_s** %cmap_procs, align 8, !tbaa !92
  %map_devicen = getelementptr inbounds %struct.gx_color_map_procs_s, %struct.gx_color_map_procs_s* %17, i32 0, i32 5
  %18 = load void (i16*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %map_devicen, align 8, !tbaa !93
  %19 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %20 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %21 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %23 = load i32, i32* %select.addr, align 4, !tbaa !60
  call void %18(i16* %19, %struct.gx_device_color_s* %20, %struct.gs_imager_state_s* %21, %struct.gx_device_s* %22, i32 %23) #5
  %24 = load i32, i32* %code, align 4, !tbaa !14
  %25 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  %26 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #2
  ret i32 %24
}

declare i32 @gsicc_set_devicen_equiv_colors(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.cmm_profile_s*) #1

declare i32 @gx_serialize_cspace_type(%struct.gs_color_space_s*, %struct.stream_s*) #1

declare i32 @sputs(%struct.stream_s*, i8*, i32, i32*) #1

declare i32 @gx_spot_colors_set_overprint(%struct.gs_color_space_s*, %struct.gs_state_s*) #1

declare i32 @gx_set_overprint_rgb(%struct.gs_color_space_s*, %struct.gs_state_s*) #1

declare i32 @gx_set_overprint_cmyk(%struct.gs_color_space_s*, %struct.gs_state_s*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 64}
!6 = !{!"gs_color_space_s", !2, i64 0, !7, i64 8, !8, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !3, i64 72}
!7 = !{!"rc_header_s", !8, i64 0, !2, i64 8, !2, i64 16}
!8 = !{!"long", !3, i64 0}
!9 = !{!10, !3, i64 0}
!10 = !{!"cmm_profile_s", !3, i64 0, !3, i64 1, !11, i64 4, !11, i64 8, !3, i64 12, !3, i64 16, !12, i64 20, !8, i64 144, !11, i64 152, !3, i64 156, !11, i64 216, !11, i64 220, !11, i64 224, !13, i64 228, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !7, i64 288, !11, i64 312, !2, i64 320, !2, i64 328, !2, i64 336}
!11 = !{!"int", !3, i64 0}
!12 = !{!"gs_range_icc_s", !3, i64 0}
!13 = !{!"gsicc_rendering_param_s", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !11, i64 20}
!14 = !{!11, !11, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"float", !3, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"double", !3, i64 0}
!19 = !{!20, !16, i64 0}
!20 = !{!"gs_range_s", !16, i64 0, !16, i64 4}
!21 = !{!20, !16, i64 4}
!22 = !{!23, !2, i64 1680}
!23 = !{!"gx_device_s", !11, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !11, i64 40, !2, i64 48, !7, i64 56, !11, i64 80, !11, i64 84, !11, i64 88, !24, i64 96, !27, i64 816, !11, i64 832, !11, i64 836, !11, i64 840, !11, i64 844, !11, i64 848, !11, i64 852, !3, i64 856, !3, i64 864, !11, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !8, i64 928, !8, i64 936, !11, i64 944, !11, i64 948, !11, i64 952, !11, i64 956, !11, i64 960, !8, i64 968, !8, i64 976, !28, i64 984, !11, i64 1052, !11, i64 1056, !29, i64 1064, !2, i64 1104, !3, i64 1112, !31, i64 1120, !32, i64 1144}
!24 = !{!"gx_device_color_info_s", !11, i64 0, !11, i64 4, !3, i64 8, !25, i64 12, !3, i64 14, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !26, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !8, i64 704, !11, i64 712}
!25 = !{!"short", !3, i64 0}
!26 = !{!"gx_device_anti_alias_info_s", !11, i64 0, !11, i64 4}
!27 = !{!"gx_device_cached_colors_s", !8, i64 0, !8, i64 8}
!28 = !{!"gx_stroked_gradient_recognizer_s", !11, i64 0, !3, i64 4, !3, i64 36}
!29 = !{!"gdev_space_params_s", !8, i64 0, !8, i64 8, !30, i64 16, !11, i64 32, !3, i64 36}
!30 = !{!"gx_band_params_s", !11, i64 0, !11, i64 4, !8, i64 8}
!31 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!32 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!33 = !{!34, !11, i64 328}
!34 = !{!"gs_imager_state_s", !11, i64 0, !2, i64 8, !2, i64 16, !35, i64 24, !11, i64 128, !38, i64 132, !11, i64 168, !39, i64 176, !39, i64 192, !11, i64 208, !11, i64 212, !25, i64 216, !3, i64 220, !40, i64 224, !40, i64 228, !41, i64 232, !8, i64 240, !11, i64 248, !11, i64 252, !11, i64 256, !2, i64 264, !11, i64 272, !11, i64 276, !11, i64 280, !11, i64 284, !11, i64 288, !11, i64 292, !16, i64 296, !42, i64 300, !11, i64 308, !11, i64 312, !11, i64 316, !16, i64 320, !11, i64 324, !11, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !11, i64 408, !2, i64 416, !2, i64 424, !43, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !44, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !44, i64 1336}
!35 = !{!"gx_line_params_s", !16, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !11, i64 20, !16, i64 24, !16, i64 28, !16, i64 32, !11, i64 36, !36, i64 40, !37, i64 64}
!36 = !{!"gs_matrix_s", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20}
!37 = !{!"gx_dash_params_s", !2, i64 0, !11, i64 8, !16, i64 12, !11, i64 16, !16, i64 20, !11, i64 24, !11, i64 28, !16, i64 32}
!38 = !{!"gs_matrix_fixed_s", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20, !11, i64 24, !11, i64 28, !11, i64 32}
!39 = !{!"gs_point_s", !18, i64 0, !18, i64 8}
!40 = !{!"gs_transparency_source_s", !16, i64 0}
!41 = !{!"gs_xstate_trans_flags", !11, i64 0, !11, i64 4}
!42 = !{!"gs_fixed_point_s", !11, i64 0, !11, i64 4}
!43 = !{!"gx_transfer_s", !11, i64 0, !2, i64 8, !11, i64 16, !2, i64 24, !11, i64 32, !2, i64 40, !11, i64 48, !2, i64 56}
!44 = !{!"gs_devicen_color_map_s", !11, i64 0, !3, i64 4, !11, i64 8, !11, i64 12, !8, i64 16, !3, i64 24}
!45 = !{!13, !3, i64 4}
!46 = !{!23, !3, i64 1112}
!47 = !{!13, !3, i64 12}
!48 = !{!13, !11, i64 20}
!49 = !{!13, !3, i64 8}
!50 = !{!34, !11, i64 324}
!51 = !{!13, !3, i64 0}
!52 = !{!13, !3, i64 16}
!53 = !{!25, !25, i64 0}
!54 = !{!34, !2, i64 8}
!55 = !{!56, !11, i64 116}
!56 = !{!"gsicc_link_s", !2, i64 0, !57, i64 8, !58, i64 40, !2, i64 72, !11, i64 80, !2, i64 88, !2, i64 96, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !57, i64 128, !3, i64 160, !11, i64 164, !11, i64 168}
!57 = !{!"gscms_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!58 = !{!"gsicc_hashlink_s", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!59 = !{!56, !2, i64 16}
!60 = !{!3, !3, i64 0}
!61 = !{!10, !3, i64 16}
!62 = !{!10, !11, i64 4}
!63 = !{!64, !11, i64 360}
!64 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !65, i64 352, !11, i64 360, !66, i64 368, !68, i64 632}
!65 = !{!"gs_int_point_s", !11, i64 0, !11, i64 4}
!66 = !{!"gs_client_color_s", !2, i64 0, !67, i64 8}
!67 = !{!"gs_paint_color_s", !3, i64 0}
!68 = !{!"_mask", !69, i64 0, !8, i64 8, !2, i64 16}
!69 = !{!"mp_", !11, i64 0, !11, i64 4}
!70 = !{!71, !2, i64 1872}
!71 = !{!"gs_state_s", !11, i64 0, !2, i64 8, !2, i64 16, !35, i64 24, !11, i64 128, !38, i64 132, !11, i64 168, !39, i64 176, !39, i64 192, !11, i64 208, !11, i64 212, !25, i64 216, !3, i64 220, !40, i64 224, !40, i64 228, !41, i64 232, !8, i64 240, !11, i64 248, !11, i64 252, !11, i64 256, !2, i64 264, !11, i64 272, !11, i64 276, !11, i64 280, !11, i64 284, !11, i64 288, !11, i64 292, !16, i64 296, !42, i64 300, !11, i64 308, !11, i64 312, !11, i64 316, !16, i64 320, !11, i64 324, !11, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !11, i64 408, !2, i64 416, !2, i64 424, !43, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !44, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !44, i64 1336, !2, i64 1616, !36, i64 1624, !11, i64 1648, !36, i64 1652, !11, i64 1676, !2, i64 1680, !2, i64 1688, !2, i64 1696, !2, i64 1704, !8, i64 1712, !8, i64 1720, !2, i64 1728, !11, i64 1736, !3, i64 1744, !2, i64 1792, !2, i64 1800, !38, i64 1808, !11, i64 1844, !3, i64 1848, !3, i64 1852, !2, i64 1856, !11, i64 1864, !2, i64 1872, !2, i64 1880, !72, i64 1888}
!72 = !{!"gs_state_client_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!73 = !{!71, !11, i64 272}
!74 = !{!71, !11, i64 276}
!75 = !{!24, !3, i64 696}
!76 = !{!10, !8, i64 288}
!77 = !{!10, !2, i64 304}
!78 = !{!10, !2, i64 296}
!79 = !{!23, !11, i64 100}
!80 = !{!23, !3, i64 110}
!81 = !{!23, !11, i64 116}
!82 = !{!23, !11, i64 112}
!83 = !{!23, !3, i64 136}
!84 = !{!23, !2, i64 1104}
!85 = !{!6, !2, i64 0}
!86 = !{!87, !2, i64 24}
!87 = !{!"gs_color_space_type_s", !3, i64 0, !11, i64 4, !11, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128}
!88 = !{!89, !2, i64 176}
!89 = !{!"cmm_dev_profile_s", !3, i64 0, !2, i64 32, !2, i64 40, !2, i64 48, !3, i64 56, !11, i64 152, !11, i64 156, !11, i64 160, !11, i64 164, !11, i64 168, !11, i64 172, !2, i64 176, !11, i64 184, !2, i64 192, !7, i64 200}
!90 = !{!91, !11, i64 32}
!91 = !{!"gsicc_namelist_s", !11, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !11, i64 32}
!92 = !{!34, !2, i64 1016}
!93 = !{!94, !2, i64 40}
!94 = !{!"gx_color_map_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
