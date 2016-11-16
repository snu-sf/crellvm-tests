; ModuleID = './gscdevn.bc'
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
%struct.gs_device_n_map_s = type { %struct.rc_header_s, i32 (float*, float*, %struct.gs_imager_state_s*, i8*)*, i8*, i32, [64 x float], [64 x i16] }
%struct.gs_device_n_attributes_s = type { %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_device_n_attributes_s* }
%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.gsicc_namedcolor_s = type { i8*, i32, [3 x i16] }
%struct.gs_overprint_params_s = type { i32, i32, i32, i64, i16, i32 }
%struct.gs_function_s = type { %struct.gs_function_head_s, %struct.gs_function_params_s }
%struct.gs_function_head_s = type { i32, %struct.gs_function_procs_s }
%struct.gs_function_procs_s = type { i32 (%struct.gs_function_s*, float*, float*)*, i32 (%struct.gs_function_s*, float*, float*, i32*)*, void (%struct.gs_function_s*, %struct.gs_function_info_s*)*, i32 (%struct.gs_function_s*, %struct.gs_param_list_s*)*, i32 (%struct.gs_function_s*, %struct.gs_function_s**, %struct.gs_range_s*, %struct.gs_memory_s*)*, void (%struct.gs_function_params_s*, %struct.gs_memory_s*)*, void (%struct.gs_function_s*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_function_s*, %struct.stream_s*)* }
%struct.gs_function_info_s = type { %struct.gs_data_source_s*, i64, %struct.gs_function_s**, i32 }
%struct.gs_data_source_s = type opaque
%struct.gs_function_params_s = type { i32, float*, i32, float* }
%struct.gc_procs_common_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)* }

@st_color_space_DeviceN = internal constant %struct.gs_memory_struct_type_s { i32 120, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @cs_DeviceN_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @cs_DeviceN_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@gs_color_space_type_DeviceN = constant { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* } { i32 4, i32 1, i32 0, %struct.gs_memory_struct_type_s* @st_color_space_DeviceN, i32 (%struct.gs_color_space_s*)* @gx_num_components_DeviceN, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)* @gx_init_DeviceN, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)* @gx_restrict_DeviceN, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)* @gx_concrete_space_DeviceN, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)* @gx_concretize_DeviceN, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* @gx_remap_concrete_DeviceN, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* @gx_remap_DeviceN, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)* @gx_install_DeviceN, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)* @gx_set_overprint_DeviceN, void (%struct.gs_color_space_s*)* @gx_final_DeviceN, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)* @gx_no_adjust_color_count, i32 (%struct.gs_color_space_s*, %struct.stream_s*)* @gx_serialize_DeviceN, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)* @gx_cspace_is_linear_default, i32 (%struct.gs_color_space_s*)* @gx_polarity_DeviceN }, align 8
@.str = private unnamed_addr constant [24 x i8] c"gs_cspace_build_DeviceN\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"gs_cspace_new_DeviceN\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c".gs_cspace_build_DeviceN(names)\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c".gs_cspace_build_DeviceN(map)\00", align 1
@st_device_n_map = internal constant %struct.gs_memory_struct_type_s { i32 432, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @device_n_map_reloc_ptrs to i8*) }, align 8
@st_device_n_attributes = internal constant %struct.gs_memory_struct_type_s { i32 48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @device_n_attributes_reloc_ptrs to i8*) }, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"gs_attachattributrescolorspace\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"gs_color_space_DeviceN\00", align 1
@ptr_name_index_procs = external constant %struct.gs_ptr_procs_s, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"gs_device_n_map\00", align 1
@device_n_map_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @device_n_map_enum_ptrs, i32 0, i32 0) }, align 8
@device_n_map_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 32 }], align 2
@.str.7 = private unnamed_addr constant [23 x i8] c"gs_device_n_attributes\00", align 1
@device_n_attributes_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 2, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([2 x %struct.gc_ptr_element_s], [2 x %struct.gc_ptr_element_s]* @device_n_attributes_enum_ptrs, i32 0, i32 0) }, align 8
@device_n_attributes_enum_ptrs = internal constant [2 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 32 }, %struct.gc_ptr_element_s { i16 0, i16 40 }], align 2
@.str.8 = private unnamed_addr constant [26 x i8] c"gx_remap_concrete_DeviceN\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"gx_install_DeviceN\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"gx_adjust_DeviceN\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"gx_final_DeviceN\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @gx_num_components_DeviceN(%struct.gs_color_space_s* %pcs) #0 {
entry:
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %0, i32 0, i32 7
  %device_n = bitcast %union.anon* %params to %struct.gs_device_n_params_s*
  %num_components = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n, i32 0, i32 1
  %1 = load i32, i32* %num_components, align 4, !tbaa !5
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define internal void @gx_init_DeviceN(%struct.gs_client_color_s* %pcc, %struct.gs_color_space_s* %pcs) #0 {
entry:
  %pcc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %i = alloca i32, align 4
  store %struct.gs_client_color_s* %pcc, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !8
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %2, i32 0, i32 7
  %device_n = bitcast %union.anon* %params to %struct.gs_device_n_params_s*
  %num_components = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n, i32 0, i32 1
  %3 = load i32, i32* %num_components, align 4, !tbaa !5
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom = zext i32 %4 to i64
  %5 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %5, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 %idxprom
  store float 1.000000e+00, float* %arrayidx, align 4, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !tbaa !8
  %inc = add i32 %6, 1
  store i32 %inc, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gx_restrict_DeviceN(%struct.gs_client_color_s* %pcc, %struct.gs_color_space_s* %pcs) #0 {
entry:
  %pcc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %i = alloca i32, align 4
  %value = alloca double, align 8
  store %struct.gs_client_color_s* %pcc, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !8
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %2, i32 0, i32 7
  %device_n = bitcast %union.anon* %params to %struct.gs_device_n_params_s*
  %num_components = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n, i32 0, i32 1
  %3 = load i32, i32* %num_components, align 4, !tbaa !5
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = bitcast double* %value to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom = zext i32 %5 to i64
  %6 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %6, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 %idxprom
  %7 = load float, float* %arrayidx, align 4, !tbaa !9
  %conv = fpext float %7 to double
  store double %conv, double* %value, align 8, !tbaa !11
  %8 = load double, double* %value, align 8, !tbaa !11
  %cmp1 = fcmp ole double %8, 0.000000e+00
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end.7

cond.false:                                       ; preds = %for.body
  %9 = load double, double* %value, align 8, !tbaa !11
  %cmp3 = fcmp oge double %9, 1.000000e+00
  br i1 %cmp3, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %cond.false
  br label %cond.end

cond.false.6:                                     ; preds = %cond.false
  %10 = load double, double* %value, align 8, !tbaa !11
  br label %cond.end

cond.end:                                         ; preds = %cond.false.6, %cond.true.5
  %cond = phi double [ 1.000000e+00, %cond.true.5 ], [ %10, %cond.false.6 ]
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.end, %cond.true
  %cond8 = phi double [ 0.000000e+00, %cond.true ], [ %cond, %cond.end ]
  %conv9 = fptrunc double %cond8 to float
  %11 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom10 = zext i32 %11 to i64
  %12 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint11 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %12, i32 0, i32 1
  %values12 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint11, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [64 x float], [64 x float]* %values12, i32 0, i64 %idxprom10
  store float %conv9, float* %arrayidx13, align 4, !tbaa !9
  %13 = bitcast double* %value to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  br label %for.inc

for.inc:                                          ; preds = %cond.end.7
  %14 = load i32, i32* %i, align 4, !tbaa !8
  %inc = add i32 %14, 1
  store i32 %inc, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_color_space_s* @gx_concrete_space_DeviceN(%struct.gs_color_space_s* %pcs, %struct.gs_imager_state_s* %pis) #0 {
entry:
  %retval = alloca %struct.gs_color_space_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %is_lab = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %0 = bitcast i32* %is_lab to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %is_lab, align 4, !tbaa !8
  %1 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %color_component_map = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %1, i32 0, i32 50
  %use_alt_cspace = getelementptr inbounds %struct.gs_devicen_color_map_s, %struct.gs_devicen_color_map_s* %color_component_map, i32 0, i32 0
  %2 = load i32, i32* %use_alt_cspace, align 4, !tbaa !13
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %3 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %3, i32 0, i32 3
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !27
  %call = call i32 @gs_color_space_is_PSCIE(%struct.gs_color_space_s* %4) #4
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then.2, label %if.end.9

if.then.2:                                        ; preds = %if.then
  %5 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space3 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %5, i32 0, i32 3
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space3, align 8, !tbaa !27
  %icc_equivalent = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %6, i32 0, i32 4
  %7 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent, align 8, !tbaa !30
  %cmp = icmp eq %struct.gs_color_space_s* %7, null
  br i1 %cmp, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then.2
  %8 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space5 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %8, i32 0, i32 3
  %9 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space5, align 8, !tbaa !27
  %10 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %10, i32 0, i32 1
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !31
  %call6 = call i32 @gs_colorspace_set_icc_equivalent(%struct.gs_color_space_s* %9, i32* %is_lab, %struct.gs_memory_s* %11) #4
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then.2
  %12 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space7 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %12, i32 0, i32 3
  %13 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space7, align 8, !tbaa !27
  %icc_equivalent8 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %13, i32 0, i32 4
  %14 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent8, align 8, !tbaa !30
  store %struct.gs_color_space_s* %14, %struct.gs_color_space_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.then
  %15 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space10 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %15, i32 0, i32 3
  %16 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space10, align 8, !tbaa !27
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %16, i32 0, i32 0
  %17 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !32
  %concrete_space = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %17, i32 0, i32 7
  %18 = load %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)** %concrete_space, align 8, !tbaa !33
  %19 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space11 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %19, i32 0, i32 3
  %20 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space11, align 8, !tbaa !27
  %21 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call12 = call %struct.gs_color_space_s* %18(%struct.gs_color_space_s* %20, %struct.gs_imager_state_s* %21) #4
  store %struct.gs_color_space_s* %call12, %struct.gs_color_space_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %entry
  %22 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %22, %struct.gs_color_space_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.13, %if.end.9, %if.end
  %23 = bitcast i32* %is_lab to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #2
  %24 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %retval
  ret %struct.gs_color_space_s* %24
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_concretize_DeviceN(%struct.gs_client_color_s* %pc, %struct.gs_color_space_s* %pcs, i16* %pconc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %pc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pconc.addr = alloca i16*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  %tcode = alloca i32, align 4
  %cc = alloca %struct.gs_client_color_s, align 8
  %pacs = alloca %struct.gs_color_space_s*, align 8
  %map = alloca %struct.gs_device_n_map_s*, align 8
  %is_lab = alloca i32, align 4
  %k = alloca i32, align 4
  %num_des_comps = alloca i32, align 4
  %named_color = alloca %struct.gsicc_namedcolor_s*, align 8
  %names = alloca i64*, align 8
  %num_src_comps = alloca i32, align 4
  %device_values = alloca [64 x i16], align 16
  %pname = alloca i8*, align 8
  %name_size = alloca i32, align 4
  %rendering_params = alloca %struct.gsicc_rendering_param_s, align 4
  %cleanup.dest.slot = alloca i32
  %i = alloca i32, align 4
  %num_out = alloca i32, align 4
  %i154 = alloca i32, align 4
  store %struct.gs_client_color_s* %pc, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store i16* %pconc, i16** %pconc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %tcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 0, i32* %tcode, align 4, !tbaa !8
  %2 = bitcast %struct.gs_client_color_s* %cc to i8*
  call void @llvm.lifetime.start(i64 264, i8* %2) #2
  %3 = bitcast %struct.gs_color_space_s** %pacs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %4, i32 0, i32 3
  %5 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !27
  store %struct.gs_color_space_s* %5, %struct.gs_color_space_s** %pacs, align 8, !tbaa !1
  %6 = bitcast %struct.gs_device_n_map_s** %map to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %7, i32 0, i32 7
  %device_n = bitcast %union.anon* %params to %struct.gs_device_n_params_s*
  %map1 = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n, i32 0, i32 2
  %8 = load %struct.gs_device_n_map_s*, %struct.gs_device_n_map_s** %map1, align 8, !tbaa !35
  store %struct.gs_device_n_map_s* %8, %struct.gs_device_n_map_s** %map, align 8, !tbaa !1
  %9 = bitcast i32* %is_lab to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast i32* %num_des_comps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %13 = load i32, i32* %num_components, align 4, !tbaa !36
  store i32 %13, i32* %num_des_comps, align 4, !tbaa !8
  %14 = bitcast %struct.gsicc_namedcolor_s** %named_color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #2
  %15 = bitcast i64** %names to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  %16 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params2 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %16, i32 0, i32 7
  %device_n3 = bitcast %union.anon* %params2 to %struct.gs_device_n_params_s*
  %names4 = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n3, i32 0, i32 0
  %17 = load i64*, i64** %names4, align 8, !tbaa !46
  store i64* %17, i64** %names, align 8, !tbaa !1
  %18 = bitcast i32* %num_src_comps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params5 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %19, i32 0, i32 7
  %device_n6 = bitcast %union.anon* %params5 to %struct.gs_device_n_params_s*
  %num_components7 = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n6, i32 0, i32 1
  %20 = load i32, i32* %num_components7, align 4, !tbaa !5
  store i32 %20, i32* %num_src_comps, align 4, !tbaa !8
  %21 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %color_component_map = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %21, i32 0, i32 50
  %use_alt_cspace = getelementptr inbounds %struct.gs_devicen_color_map_s, %struct.gs_devicen_color_map_s* %color_component_map, i32 0, i32 0
  %22 = load i32, i32* %use_alt_cspace, align 4, !tbaa !13
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %23 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_manager = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %23, i32 0, i32 35
  %24 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !47
  %device_named = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %24, i32 0, i32 0
  %25 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %device_named, align 8, !tbaa !48
  %cmp = icmp ne %struct.cmm_profile_s* %25, null
  br i1 %cmp, label %if.then.8, label %if.end.49

if.then.8:                                        ; preds = %if.then
  %26 = bitcast [64 x i16]* %device_values to i8*
  call void @llvm.lifetime.start(i64 128, i8* %26) #2
  %27 = bitcast i8** %pname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #2
  %28 = bitcast i32* %name_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #2
  %29 = bitcast %struct.gsicc_rendering_param_s* %rendering_params to i8*
  call void @llvm.lifetime.start(i64 24, i8* %29) #2
  %30 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %blackptcomp = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %30, i32 0, i32 34
  %31 = load i32, i32* %blackptcomp, align 4, !tbaa !50
  %black_point_comp = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 1
  store i32 %31, i32* %black_point_comp, align 4, !tbaa !51
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %graphics_type_tag = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %32, i32 0, i32 40
  %33 = load i32, i32* %graphics_type_tag, align 4, !tbaa !53
  %graphics_type_tag9 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 3
  store i32 %33, i32* %graphics_type_tag9, align 4, !tbaa !54
  %override_icc = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 5
  store i32 0, i32* %override_icc, align 4, !tbaa !55
  %preserve_black = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 2
  store i32 8, i32* %preserve_black, align 4, !tbaa !56
  %34 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %renderingintent = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %34, i32 0, i32 33
  %35 = load i32, i32* %renderingintent, align 4, !tbaa !57
  %rendering_intent = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 0
  store i32 %35, i32* %rendering_intent, align 4, !tbaa !58
  %cmm = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 4
  store i32 0, i32* %cmm, align 4, !tbaa !59
  %36 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %36, i32 0, i32 3
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !60
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %37, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %38 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !61
  %39 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory10 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %39, i32 0, i32 3
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory10, align 8, !tbaa !60
  %41 = load i32, i32* %num_src_comps, align 4, !tbaa !8
  %conv = sext i32 %41 to i64
  %mul = mul i64 %conv, 24
  %conv11 = trunc i64 %mul to i32
  %call = call i8* %38(%struct.gs_memory_s* %40, i32 %conv11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0)) #4
  %42 = bitcast i8* %call to %struct.gsicc_namedcolor_s*
  store %struct.gsicc_namedcolor_s* %42, %struct.gsicc_namedcolor_s** %named_color, align 8, !tbaa !1
  store i32 0, i32* %k, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.8
  %43 = load i32, i32* %k, align 4, !tbaa !8
  %44 = load i32, i32* %num_src_comps, align 4, !tbaa !8
  %cmp12 = icmp slt i32 %43, %44
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %45 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params14 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %45, i32 0, i32 7
  %device_n15 = bitcast %union.anon* %params14 to %struct.gs_device_n_params_s*
  %get_colorname_string = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n15, i32 0, i32 5
  %46 = load i32 (%struct.gs_memory_s*, i64, i8**, i32*)*, i32 (%struct.gs_memory_s*, i64, i8**, i32*)** %get_colorname_string, align 8, !tbaa !64
  %47 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory16 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %47, i32 0, i32 3
  %48 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory16, align 8, !tbaa !60
  %49 = load i32, i32* %k, align 4, !tbaa !8
  %idxprom = sext i32 %49 to i64
  %50 = load i64*, i64** %names, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %50, i64 %idxprom
  %51 = load i64, i64* %arrayidx, align 8, !tbaa !65
  %call17 = call i32 %46(%struct.gs_memory_s* %48, i64 %51, i8** %pname, i32* %name_size) #4
  %52 = load i8*, i8** %pname, align 8, !tbaa !1
  %53 = load i32, i32* %k, align 4, !tbaa !8
  %idxprom18 = sext i32 %53 to i64
  %54 = load %struct.gsicc_namedcolor_s*, %struct.gsicc_namedcolor_s** %named_color, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds %struct.gsicc_namedcolor_s, %struct.gsicc_namedcolor_s* %54, i64 %idxprom18
  %colorant_name = getelementptr inbounds %struct.gsicc_namedcolor_s, %struct.gsicc_namedcolor_s* %arrayidx19, i32 0, i32 0
  store i8* %52, i8** %colorant_name, align 8, !tbaa !66
  %55 = load i32, i32* %name_size, align 4, !tbaa !8
  %56 = load i32, i32* %k, align 4, !tbaa !8
  %idxprom20 = sext i32 %56 to i64
  %57 = load %struct.gsicc_namedcolor_s*, %struct.gsicc_namedcolor_s** %named_color, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds %struct.gsicc_namedcolor_s, %struct.gsicc_namedcolor_s* %57, i64 %idxprom20
  %name_size22 = getelementptr inbounds %struct.gsicc_namedcolor_s, %struct.gsicc_namedcolor_s* %arrayidx21, i32 0, i32 1
  store i32 %55, i32* %name_size22, align 4, !tbaa !68
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %58 = load i32, i32* %k, align 4, !tbaa !8
  %inc = add nsw i32 %58, 1
  store i32 %inc, i32* %k, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %59 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %59, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arraydecay = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i32 0
  %60 = load %struct.gsicc_namedcolor_s*, %struct.gsicc_namedcolor_s** %named_color, align 8, !tbaa !1
  %61 = load i32, i32* %num_src_comps, align 4, !tbaa !8
  %arraydecay23 = getelementptr inbounds [64 x i16], [64 x i16]* %device_values, i32 0, i32 0
  %62 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %63 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call24 = call i32 @gsicc_transform_named_color(float* %arraydecay, %struct.gsicc_namedcolor_s* %60, i32 %61, i16* %arraydecay23, %struct.gs_imager_state_s* %62, %struct.gx_device_s* %63, %struct.cmm_profile_s* null, %struct.gsicc_rendering_param_s* %rendering_params) #4
  store i32 %call24, i32* %code, align 4, !tbaa !8
  %64 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory25 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %64, i32 0, i32 3
  %65 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory25, align 8, !tbaa !60
  %procs26 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %65, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs26, i32 0, i32 2
  %66 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !69
  %67 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory27 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %67, i32 0, i32 3
  %68 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory27, align 8, !tbaa !60
  %69 = load %struct.gsicc_namedcolor_s*, %struct.gsicc_namedcolor_s** %named_color, align 8, !tbaa !1
  %70 = bitcast %struct.gsicc_namedcolor_s* %69 to i8*
  call void %66(%struct.gs_memory_s* %68, i8* %70, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0)) #4
  %71 = load i32, i32* %code, align 4, !tbaa !8
  %cmp28 = icmp eq i32 %71, 0
  br i1 %cmp28, label %if.then.30, label %if.end

if.then.30:                                       ; preds = %for.end
  store i32 0, i32* %k, align 4, !tbaa !8
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.43, %if.then.30
  %72 = load i32, i32* %k, align 4, !tbaa !8
  %73 = load i32, i32* %num_des_comps, align 4, !tbaa !8
  %cmp32 = icmp slt i32 %72, %73
  br i1 %cmp32, label %for.body.34, label %for.end.45

for.body.34:                                      ; preds = %for.cond.31
  %74 = load i32, i32* %k, align 4, !tbaa !8
  %idxprom35 = sext i32 %74 to i64
  %arrayidx36 = getelementptr inbounds [64 x i16], [64 x i16]* %device_values, i32 0, i64 %idxprom35
  %75 = load i16, i16* %arrayidx36, align 2, !tbaa !70
  %conv37 = uitofp i16 %75 to float
  %conv38 = fpext float %conv37 to double
  %div = fdiv double %conv38, 6.553500e+04
  %add = fadd double %div, 0x3EF0010010010010
  %mul39 = fmul double %add, 3.276000e+04
  %conv40 = fptosi double %mul39 to i16
  %76 = load i32, i32* %k, align 4, !tbaa !8
  %idxprom41 = sext i32 %76 to i64
  %77 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds i16, i16* %77, i64 %idxprom41
  store i16 %conv40, i16* %arrayidx42, align 2, !tbaa !70
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.body.34
  %78 = load i32, i32* %k, align 4, !tbaa !8
  %inc44 = add nsw i32 %78, 1
  store i32 %inc44, i32* %k, align 4, !tbaa !8
  br label %for.cond.31

for.end.45:                                       ; preds = %for.cond.31
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.end.45
  %79 = bitcast %struct.gsicc_rendering_param_s* %rendering_params to i8*
  call void @llvm.lifetime.end(i64 24, i8* %79) #2
  %80 = bitcast i32* %name_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #2
  %81 = bitcast i8** %pname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #2
  %82 = bitcast [64 x i16]* %device_values to i8*
  call void @llvm.lifetime.end(i64 128, i8* %82) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.175 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.49

if.end.49:                                        ; preds = %cleanup.cont, %if.then
  %83 = load %struct.gs_device_n_map_s*, %struct.gs_device_n_map_s** %map, align 8, !tbaa !1
  %cache_valid = getelementptr inbounds %struct.gs_device_n_map_s, %struct.gs_device_n_map_s* %83, i32 0, i32 3
  %84 = load i32, i32* %cache_valid, align 4, !tbaa !71
  %tobool50 = icmp ne i32 %84, 0
  br i1 %tobool50, label %if.then.51, label %if.end.90

if.then.51:                                       ; preds = %if.end.49
  %85 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %85) #2
  %86 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params52 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %86, i32 0, i32 7
  %device_n53 = bitcast %union.anon* %params52 to %struct.gs_device_n_params_s*
  %num_components54 = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n53, i32 0, i32 1
  %87 = load i32, i32* %num_components54, align 4, !tbaa !5
  store i32 %87, i32* %i, align 4, !tbaa !8
  br label %for.cond.55

for.cond.55:                                      ; preds = %if.end.68, %if.then.51
  %88 = load i32, i32* %i, align 4, !tbaa !8
  %dec = add nsw i32 %88, -1
  store i32 %dec, i32* %i, align 4, !tbaa !8
  %cmp56 = icmp sge i32 %dec, 0
  br i1 %cmp56, label %for.body.58, label %for.end.69

for.body.58:                                      ; preds = %for.cond.55
  %89 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom59 = sext i32 %89 to i64
  %90 = load %struct.gs_device_n_map_s*, %struct.gs_device_n_map_s** %map, align 8, !tbaa !1
  %tint = getelementptr inbounds %struct.gs_device_n_map_s, %struct.gs_device_n_map_s* %90, i32 0, i32 4
  %arrayidx60 = getelementptr inbounds [64 x float], [64 x float]* %tint, i32 0, i64 %idxprom59
  %91 = load float, float* %arrayidx60, align 4, !tbaa !9
  %92 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom61 = sext i32 %92 to i64
  %93 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %paint62 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %93, i32 0, i32 1
  %values63 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint62, i32 0, i32 0
  %arrayidx64 = getelementptr inbounds [64 x float], [64 x float]* %values63, i32 0, i64 %idxprom61
  %94 = load float, float* %arrayidx64, align 4, !tbaa !9
  %cmp65 = fcmp une float %91, %94
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %for.body.58
  br label %for.end.69

if.end.68:                                        ; preds = %for.body.58
  br label %for.cond.55

for.end.69:                                       ; preds = %if.then.67, %for.cond.55
  %95 = load i32, i32* %i, align 4, !tbaa !8
  %cmp70 = icmp slt i32 %95, 0
  br i1 %cmp70, label %if.then.72, label %if.end.86

if.then.72:                                       ; preds = %for.end.69
  %96 = bitcast i32* %num_out to i8*
  call void @llvm.lifetime.start(i64 4, i8* %96) #2
  %97 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pacs, align 8, !tbaa !1
  %call73 = call i32 @gs_color_space_num_components(%struct.gs_color_space_s* %97) #4
  store i32 %call73, i32* %num_out, align 4, !tbaa !8
  store i32 0, i32* %i, align 4, !tbaa !8
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc.82, %if.then.72
  %98 = load i32, i32* %i, align 4, !tbaa !8
  %99 = load i32, i32* %num_out, align 4, !tbaa !8
  %cmp75 = icmp slt i32 %98, %99
  br i1 %cmp75, label %for.body.77, label %for.end.84

for.body.77:                                      ; preds = %for.cond.74
  %100 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom78 = sext i32 %100 to i64
  %101 = load %struct.gs_device_n_map_s*, %struct.gs_device_n_map_s** %map, align 8, !tbaa !1
  %conc = getelementptr inbounds %struct.gs_device_n_map_s, %struct.gs_device_n_map_s* %101, i32 0, i32 5
  %arrayidx79 = getelementptr inbounds [64 x i16], [64 x i16]* %conc, i32 0, i64 %idxprom78
  %102 = load i16, i16* %arrayidx79, align 2, !tbaa !70
  %103 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom80 = sext i32 %103 to i64
  %104 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx81 = getelementptr inbounds i16, i16* %104, i64 %idxprom80
  store i16 %102, i16* %arrayidx81, align 2, !tbaa !70
  br label %for.inc.82

for.inc.82:                                       ; preds = %for.body.77
  %105 = load i32, i32* %i, align 4, !tbaa !8
  %inc83 = add nsw i32 %105, 1
  store i32 %inc83, i32* %i, align 4, !tbaa !8
  br label %for.cond.74

for.end.84:                                       ; preds = %for.cond.74
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %106 = bitcast i32* %num_out to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #2
  br label %cleanup.87

if.end.86:                                        ; preds = %for.end.69
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.87

cleanup.87:                                       ; preds = %if.end.86, %for.end.84
  %107 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #2
  %cleanup.dest.88 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.88, label %cleanup.175 [
    i32 0, label %cleanup.cont.89
  ]

cleanup.cont.89:                                  ; preds = %cleanup.87
  br label %if.end.90

if.end.90:                                        ; preds = %cleanup.cont.89, %if.end.49
  %108 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params91 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %108, i32 0, i32 7
  %device_n92 = bitcast %union.anon* %params91 to %struct.gs_device_n_params_s*
  %map93 = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n92, i32 0, i32 2
  %109 = load %struct.gs_device_n_map_s*, %struct.gs_device_n_map_s** %map93, align 8, !tbaa !35
  %tint_transform = getelementptr inbounds %struct.gs_device_n_map_s, %struct.gs_device_n_map_s* %109, i32 0, i32 1
  %110 = load i32 (float*, float*, %struct.gs_imager_state_s*, i8*)*, i32 (float*, float*, %struct.gs_imager_state_s*, i8*)** %tint_transform, align 8, !tbaa !73
  %111 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %paint94 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %111, i32 0, i32 1
  %values95 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint94, i32 0, i32 0
  %arraydecay96 = getelementptr inbounds [64 x float], [64 x float]* %values95, i32 0, i32 0
  %paint97 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values98 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint97, i32 0, i32 0
  %arrayidx99 = getelementptr inbounds [64 x float], [64 x float]* %values98, i32 0, i64 0
  %112 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %113 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params100 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %113, i32 0, i32 7
  %device_n101 = bitcast %union.anon* %params100 to %struct.gs_device_n_params_s*
  %map102 = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n101, i32 0, i32 2
  %114 = load %struct.gs_device_n_map_s*, %struct.gs_device_n_map_s** %map102, align 8, !tbaa !35
  %tint_transform_data = getelementptr inbounds %struct.gs_device_n_map_s, %struct.gs_device_n_map_s* %114, i32 0, i32 2
  %115 = load i8*, i8** %tint_transform_data, align 8, !tbaa !74
  %call103 = call i32 %110(float* %arraydecay96, float* %arrayidx99, %struct.gs_imager_state_s* %112, i8* %115) #4
  store i32 %call103, i32* %tcode, align 4, !tbaa !8
  %116 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pacs, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %116, i32 0, i32 0
  %117 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !32
  %restrict_color = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %117, i32 0, i32 6
  %118 = load void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)** %restrict_color, align 8, !tbaa !75
  %119 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pacs, align 8, !tbaa !1
  call void %118(%struct.gs_client_color_s* %cc, %struct.gs_color_space_s* %119) #4
  %120 = load i32, i32* %tcode, align 4, !tbaa !8
  %cmp104 = icmp slt i32 %120, 0
  br i1 %cmp104, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %if.end.90
  %121 = load i32, i32* %tcode, align 4, !tbaa !8
  store i32 %121, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.175

if.end.107:                                       ; preds = %if.end.90
  %122 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pacs, align 8, !tbaa !1
  %call108 = call i32 @gs_color_space_is_PSCIE(%struct.gs_color_space_s* %122) #4
  %tobool109 = icmp ne i32 %call108, 0
  br i1 %tobool109, label %if.then.110, label %if.end.119

if.then.110:                                      ; preds = %if.end.107
  %123 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pacs, align 8, !tbaa !1
  %call111 = call i32 @rescale_cie_colors(%struct.gs_color_space_s* %123, %struct.gs_client_color_s* %cc) #4
  %124 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pacs, align 8, !tbaa !1
  %icc_equivalent = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %124, i32 0, i32 4
  %125 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent, align 8, !tbaa !30
  %cmp112 = icmp eq %struct.gs_color_space_s* %125, null
  br i1 %cmp112, label %if.then.114, label %if.end.117

if.then.114:                                      ; preds = %if.then.110
  %126 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pacs, align 8, !tbaa !1
  %127 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory115 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %127, i32 0, i32 1
  %128 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory115, align 8, !tbaa !31
  %call116 = call i32 @gs_colorspace_set_icc_equivalent(%struct.gs_color_space_s* %126, i32* %is_lab, %struct.gs_memory_s* %128) #4
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.114, %if.then.110
  %129 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pacs, align 8, !tbaa !1
  %icc_equivalent118 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %129, i32 0, i32 4
  %130 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent118, align 8, !tbaa !30
  store %struct.gs_color_space_s* %130, %struct.gs_color_space_s** %pacs, align 8, !tbaa !1
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.117, %if.end.107
  %131 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pacs, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %131, i32 0, i32 6
  %132 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !76
  %data_cs = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %132, i32 0, i32 5
  %133 = load i32, i32* %data_cs, align 4, !tbaa !77
  %cmp120 = icmp eq i32 %133, 6
  br i1 %cmp120, label %if.then.124, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.119
  %134 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pacs, align 8, !tbaa !1
  %cmm_icc_profile_data122 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %134, i32 0, i32 6
  %135 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data122, align 8, !tbaa !76
  %islab = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %135, i32 0, i32 2
  %136 = load i32, i32* %islab, align 4, !tbaa !80
  %tobool123 = icmp ne i32 %136, 0
  br i1 %tobool123, label %if.then.124, label %if.end.151

if.then.124:                                      ; preds = %lor.lhs.false, %if.end.119
  %paint125 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values126 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint125, i32 0, i32 0
  %arrayidx127 = getelementptr inbounds [64 x float], [64 x float]* %values126, i32 0, i64 0
  %137 = load float, float* %arrayidx127, align 4, !tbaa !9
  %conv128 = fpext float %137 to double
  %div129 = fdiv double %conv128, 1.000000e+02
  %conv130 = fptrunc double %div129 to float
  store float %conv130, float* %arrayidx127, align 4, !tbaa !9
  %paint131 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values132 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint131, i32 0, i32 0
  %arrayidx133 = getelementptr inbounds [64 x float], [64 x float]* %values132, i32 0, i64 1
  %138 = load float, float* %arrayidx133, align 4, !tbaa !9
  %add134 = fadd float %138, 1.280000e+02
  %conv135 = fpext float %add134 to double
  %div136 = fdiv double %conv135, 2.550000e+02
  %conv137 = fptrunc double %div136 to float
  %paint138 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values139 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint138, i32 0, i32 0
  %arrayidx140 = getelementptr inbounds [64 x float], [64 x float]* %values139, i32 0, i64 1
  store float %conv137, float* %arrayidx140, align 4, !tbaa !9
  %paint141 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values142 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint141, i32 0, i32 0
  %arrayidx143 = getelementptr inbounds [64 x float], [64 x float]* %values142, i32 0, i64 2
  %139 = load float, float* %arrayidx143, align 4, !tbaa !9
  %add144 = fadd float %139, 1.280000e+02
  %conv145 = fpext float %add144 to double
  %div146 = fdiv double %conv145, 2.550000e+02
  %conv147 = fptrunc double %div146 to float
  %paint148 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values149 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint148, i32 0, i32 0
  %arrayidx150 = getelementptr inbounds [64 x float], [64 x float]* %values149, i32 0, i64 2
  store float %conv147, float* %arrayidx150, align 4, !tbaa !9
  br label %if.end.151

if.end.151:                                       ; preds = %if.then.124, %lor.lhs.false
  %140 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pacs, align 8, !tbaa !1
  %type152 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %140, i32 0, i32 0
  %141 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type152, align 8, !tbaa !32
  %concretize_color = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %141, i32 0, i32 8
  %142 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)** %concretize_color, align 8, !tbaa !81
  %143 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pacs, align 8, !tbaa !1
  %144 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %145 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %146 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call153 = call i32 %142(%struct.gs_client_color_s* %cc, %struct.gs_color_space_s* %143, i16* %144, %struct.gs_imager_state_s* %145, %struct.gx_device_s* %146) #4
  store i32 %call153, i32* %code, align 4, !tbaa !8
  br label %if.end.169

if.else:                                          ; preds = %entry
  %147 = bitcast i32* %i154 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %147) #2
  %148 = load i32, i32* %num_src_comps, align 4, !tbaa !8
  store i32 %148, i32* %i154, align 4, !tbaa !8
  br label %for.cond.155

for.cond.155:                                     ; preds = %for.body.159, %if.else
  %149 = load i32, i32* %i154, align 4, !tbaa !8
  %dec156 = add nsw i32 %149, -1
  store i32 %dec156, i32* %i154, align 4, !tbaa !8
  %cmp157 = icmp sge i32 %dec156, 0
  br i1 %cmp157, label %for.body.159, label %for.end.167

for.body.159:                                     ; preds = %for.cond.155
  %150 = load i32, i32* %i154, align 4, !tbaa !8
  %idxprom160 = sext i32 %150 to i64
  %151 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %paint161 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %151, i32 0, i32 1
  %values162 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint161, i32 0, i32 0
  %arrayidx163 = getelementptr inbounds [64 x float], [64 x float]* %values162, i32 0, i64 %idxprom160
  %152 = load float, float* %arrayidx163, align 4, !tbaa !9
  %call164 = call signext i16 @gx_unit_frac(float %152) #4
  %153 = load i32, i32* %i154, align 4, !tbaa !8
  %idxprom165 = sext i32 %153 to i64
  %154 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx166 = getelementptr inbounds i16, i16* %154, i64 %idxprom165
  store i16 %call164, i16* %arrayidx166, align 2, !tbaa !70
  br label %for.cond.155

for.end.167:                                      ; preds = %for.cond.155
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %155 = bitcast i32* %i154 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %155) #2
  br label %cleanup.175

if.end.169:                                       ; preds = %if.end.151
  %156 = load i32, i32* %code, align 4, !tbaa !8
  %cmp170 = icmp slt i32 %156, 0
  br i1 %cmp170, label %cond.true, label %lor.lhs.false.172

lor.lhs.false.172:                                ; preds = %if.end.169
  %157 = load i32, i32* %tcode, align 4, !tbaa !8
  %cmp173 = icmp eq i32 %157, 0
  br i1 %cmp173, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false.172, %if.end.169
  %158 = load i32, i32* %code, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false.172
  %159 = load i32, i32* %tcode, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %158, %cond.true ], [ %159, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.175

cleanup.175:                                      ; preds = %cond.end, %for.end.167, %if.then.106, %cleanup.87, %cleanup
  %160 = bitcast i32* %num_src_comps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %160) #2
  %161 = bitcast i64** %names to i8*
  call void @llvm.lifetime.end(i64 8, i8* %161) #2
  %162 = bitcast %struct.gsicc_namedcolor_s** %named_color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %162) #2
  %163 = bitcast i32* %num_des_comps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %163) #2
  %164 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %164) #2
  %165 = bitcast i32* %is_lab to i8*
  call void @llvm.lifetime.end(i64 4, i8* %165) #2
  %166 = bitcast %struct.gs_device_n_map_s** %map to i8*
  call void @llvm.lifetime.end(i64 8, i8* %166) #2
  %167 = bitcast %struct.gs_color_space_s** %pacs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %167) #2
  %168 = bitcast %struct.gs_client_color_s* %cc to i8*
  call void @llvm.lifetime.end(i64 264, i8* %168) #2
  %169 = bitcast i32* %tcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #2
  %170 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %170) #2
  %171 = load i32, i32* %retval
  ret i32 %171
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_remap_concrete_DeviceN(i16* %pconc, %struct.gs_color_space_s* %pcs, %struct.gx_device_color_s* %pdc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, i32 %select) #0 {
entry:
  %retval = alloca i32, align 4
  %pconc.addr = alloca i16*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %select.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %pacs = alloca %struct.gs_color_space_s*, align 8
  %cleanup.dest.slot = alloca i32
  %dev_profile = alloca %struct.cmm_dev_profile_s*, align 8
  %temp_val = alloca i32, align 4
  store i16* %pconc, i16** %pconc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %select, i32* %select.addr, align 4, !tbaa !82
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %color_component_map = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %1, i32 0, i32 50
  %use_alt_cspace = getelementptr inbounds %struct.gs_devicen_color_map_s, %struct.gs_devicen_color_map_s* %color_component_map, i32 0, i32 0
  %2 = load i32, i32* %use_alt_cspace, align 4, !tbaa !13
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = bitcast %struct.gs_color_space_s** %pacs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %4, i32 0, i32 3
  %5 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !27
  store %struct.gs_color_space_s* %5, %struct.gs_color_space_s** %pacs, align 8, !tbaa !1
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pacs, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %6, i32 0, i32 0
  %7 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !32
  %remap_concrete_color = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %7, i32 0, i32 9
  %8 = load i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_concrete_color, align 8, !tbaa !83
  %9 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %10 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pacs, align 8, !tbaa !1
  %11 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %12 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %14 = load i32, i32* %select.addr, align 4, !tbaa !82
  %call = call i32 %8(i16* %9, %struct.gs_color_space_s* %10, %struct.gx_device_color_s* %11, %struct.gs_imager_state_s* %12, %struct.gx_device_s* %13, i32 %14) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %15 = bitcast %struct.gs_color_space_s** %pacs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #2
  br label %cleanup

if.else:                                          ; preds = %entry
  %16 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #2
  %17 = bitcast i32* %temp_val to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %19 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !84
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call1 = call i32 %19(%struct.gx_device_s* %20, %struct.cmm_dev_profile_s** %dev_profile) #4
  store i32 %call1, i32* %code, align 4, !tbaa !8
  %21 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %spotnames = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %21, i32 0, i32 11
  %22 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %spotnames, align 8, !tbaa !85
  %cmp = icmp ne %struct.gsicc_namelist_s* %22, null
  br i1 %cmp, label %if.then.2, label %if.else.8

if.then.2:                                        ; preds = %if.else
  %23 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %spotnames3 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %23, i32 0, i32 11
  %24 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %spotnames3, align 8, !tbaa !85
  %equiv_cmyk_set = getelementptr inbounds %struct.gsicc_namelist_s, %struct.gsicc_namelist_s* %24, i32 0, i32 4
  %25 = load i32, i32* %equiv_cmyk_set, align 4, !tbaa !87
  store i32 %25, i32* %temp_val, align 4, !tbaa !8
  %26 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %spotnames4 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %26, i32 0, i32 11
  %27 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %spotnames4, align 8, !tbaa !85
  %equiv_cmyk_set5 = getelementptr inbounds %struct.gsicc_namelist_s, %struct.gsicc_namelist_s* %27, i32 0, i32 4
  store i32 0, i32* %equiv_cmyk_set5, align 4, !tbaa !87
  %28 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cmap_procs = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %28, i32 0, i32 49
  %29 = load %struct.gx_color_map_procs_s*, %struct.gx_color_map_procs_s** %cmap_procs, align 8, !tbaa !89
  %map_devicen = getelementptr inbounds %struct.gx_color_map_procs_s, %struct.gx_color_map_procs_s* %29, i32 0, i32 5
  %30 = load void (i16*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %map_devicen, align 8, !tbaa !90
  %31 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %32 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %33 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %34 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %35 = load i32, i32* %select.addr, align 4, !tbaa !82
  call void %30(i16* %31, %struct.gx_device_color_s* %32, %struct.gs_imager_state_s* %33, %struct.gx_device_s* %34, i32 %35) #4
  %36 = load i32, i32* %temp_val, align 4, !tbaa !8
  %37 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %spotnames6 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %37, i32 0, i32 11
  %38 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %spotnames6, align 8, !tbaa !85
  %equiv_cmyk_set7 = getelementptr inbounds %struct.gsicc_namelist_s, %struct.gsicc_namelist_s* %38, i32 0, i32 4
  store i32 %36, i32* %equiv_cmyk_set7, align 4, !tbaa !87
  br label %if.end

if.else.8:                                        ; preds = %if.else
  %39 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cmap_procs9 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %39, i32 0, i32 49
  %40 = load %struct.gx_color_map_procs_s*, %struct.gx_color_map_procs_s** %cmap_procs9, align 8, !tbaa !89
  %map_devicen10 = getelementptr inbounds %struct.gx_color_map_procs_s, %struct.gx_color_map_procs_s* %40, i32 0, i32 5
  %41 = load void (i16*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %map_devicen10, align 8, !tbaa !90
  %42 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %43 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %44 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %45 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %46 = load i32, i32* %select.addr, align 4, !tbaa !82
  call void %41(i16* %42, %struct.gx_device_color_s* %43, %struct.gs_imager_state_s* %44, %struct.gx_device_s* %45, i32 %46) #4
  br label %if.end

if.end:                                           ; preds = %if.else.8, %if.then.2
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %47 = bitcast i32* %temp_val to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #2
  %48 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %49 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #2
  %50 = load i32, i32* %retval
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_remap_DeviceN(%struct.gs_client_color_s* %pcc, %struct.gs_color_space_s* %pcs, %struct.gx_device_color_s* %pdc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, i32 %select) #0 {
entry:
  %retval = alloca i32, align 4
  %pcc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %select.addr = alloca i32, align 4
  %conc = alloca [64 x i16], align 16
  %pconcs = alloca %struct.gs_color_space_s*, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %code = alloca i32, align 4
  %pacs = alloca %struct.gs_color_space_s*, align 8
  %temp = alloca %struct.gs_client_color_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_client_color_s* %pcc, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %select, i32* %select.addr, align 4, !tbaa !82
  %0 = bitcast [64 x i16]* %conc to i8*
  call void @llvm.lifetime.start(i64 128, i8* %0) #2
  %1 = bitcast %struct.gs_color_space_s** %pconcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %3, i32 0, i32 0
  %4 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !32
  %num_components = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %4, i32 0, i32 4
  %num_components1 = bitcast {}** %num_components to i32 (%struct.gs_color_space_s*)**
  %5 = load i32 (%struct.gs_color_space_s*)*, i32 (%struct.gs_color_space_s*)** %num_components1, align 8, !tbaa !92
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %call = call i32 %5(%struct.gs_color_space_s* %6) #4
  store i32 %call, i32* %i, align 4, !tbaa !8
  %7 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast %struct.gs_color_space_s** %pacs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %10, i32 0, i32 3
  %11 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !27
  store %struct.gs_color_space_s* %11, %struct.gs_color_space_s** %pacs, align 8, !tbaa !1
  %12 = bitcast %struct.gs_client_color_s* %temp to i8*
  call void @llvm.lifetime.start(i64 264, i8* %12) #2
  %13 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %13, i32 0, i32 6
  %14 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !76
  %cmp = icmp ne %struct.cmm_profile_s* %14, null
  br i1 %cmp, label %land.lhs.true, label %if.else.18

land.lhs.true:                                    ; preds = %entry
  %15 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %color_component_map = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %15, i32 0, i32 50
  %use_alt_cspace = getelementptr inbounds %struct.gs_devicen_color_map_s, %struct.gs_devicen_color_map_s* %color_component_map, i32 0, i32 0
  %16 = load i32, i32* %use_alt_cspace, align 4, !tbaa !13
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then, label %if.else.18

if.then:                                          ; preds = %land.lhs.true
  %17 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data2 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %17, i32 0, i32 6
  %18 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data2, align 8, !tbaa !76
  %devicen_permute_needed = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %18, i32 0, i32 10
  %19 = load i32, i32* %devicen_permute_needed, align 4, !tbaa !93
  %tobool3 = icmp ne i32 %19, 0
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  store i32 0, i32* %k, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.4
  %20 = load i32, i32* %k, align 4, !tbaa !8
  %21 = load i32, i32* %i, align 4, !tbaa !8
  %cmp5 = icmp slt i32 %20, %21
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %k, align 4, !tbaa !8
  %idxprom = sext i32 %22 to i64
  %23 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data6 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %23, i32 0, i32 6
  %24 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data6, align 8, !tbaa !76
  %devicen_permute = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %24, i32 0, i32 9
  %arrayidx = getelementptr inbounds [15 x i32], [15 x i32]* %devicen_permute, i32 0, i64 %idxprom
  %25 = load i32, i32* %arrayidx, align 4, !tbaa !8
  %idxprom7 = sext i32 %25 to i64
  %26 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %26, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 %idxprom7
  %27 = load float, float* %arrayidx8, align 4, !tbaa !9
  %28 = load i32, i32* %k, align 4, !tbaa !8
  %idxprom9 = sext i32 %28 to i64
  %paint10 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %temp, i32 0, i32 1
  %values11 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint10, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [64 x float], [64 x float]* %values11, i32 0, i64 %idxprom9
  store float %27, float* %arrayidx12, align 4, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load i32, i32* %k, align 4, !tbaa !8
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %k, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pacs, align 8, !tbaa !1
  %type13 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %30, i32 0, i32 0
  %31 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type13, align 8, !tbaa !32
  %remap_color = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %31, i32 0, i32 10
  %32 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_color, align 8, !tbaa !94
  %33 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pacs, align 8, !tbaa !1
  %34 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %35 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %36 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %37 = load i32, i32* %select.addr, align 4, !tbaa !82
  %call14 = call i32 %32(%struct.gs_client_color_s* %temp, %struct.gs_color_space_s* %33, %struct.gx_device_color_s* %34, %struct.gs_imager_state_s* %35, %struct.gx_device_s* %36, i32 %37) #4
  store i32 %call14, i32* %code, align 4, !tbaa !8
  br label %if.end

if.else:                                          ; preds = %if.then
  %38 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pacs, align 8, !tbaa !1
  %type15 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %38, i32 0, i32 0
  %39 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type15, align 8, !tbaa !32
  %remap_color16 = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %39, i32 0, i32 10
  %40 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_color16, align 8, !tbaa !94
  %41 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %42 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pacs, align 8, !tbaa !1
  %43 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %44 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %45 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %46 = load i32, i32* %select.addr, align 4, !tbaa !82
  %call17 = call i32 %40(%struct.gs_client_color_s* %41, %struct.gs_color_space_s* %42, %struct.gx_device_color_s* %43, %struct.gs_imager_state_s* %44, %struct.gx_device_s* %45, i32 %46) #4
  store i32 %call17, i32* %code, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %47 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %47, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.18:                                       ; preds = %land.lhs.true, %entry
  %48 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %type19 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %48, i32 0, i32 0
  %49 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type19, align 8, !tbaa !32
  %concretize_color = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %49, i32 0, i32 8
  %50 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)** %concretize_color, align 8, !tbaa !81
  %51 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %52 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %conc, i32 0, i32 0
  %53 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %54 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call20 = call i32 %50(%struct.gs_client_color_s* %51, %struct.gs_color_space_s* %52, i16* %arraydecay, %struct.gs_imager_state_s* %53, %struct.gx_device_s* %54) #4
  store i32 %call20, i32* %code, align 4, !tbaa !8
  %55 = load i32, i32* %code, align 4, !tbaa !8
  %cmp21 = icmp slt i32 %55, 0
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.else.18
  %56 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %56, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %if.else.18
  %57 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %type24 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %57, i32 0, i32 0
  %58 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type24, align 8, !tbaa !32
  %concrete_space = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %58, i32 0, i32 7
  %59 = load %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)** %concrete_space, align 8, !tbaa !33
  %60 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %61 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call25 = call %struct.gs_color_space_s* %59(%struct.gs_color_space_s* %60, %struct.gs_imager_state_s* %61) #4
  store %struct.gs_color_space_s* %call25, %struct.gs_color_space_s** %pconcs, align 8, !tbaa !1
  %62 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pconcs, align 8, !tbaa !1
  %type26 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %62, i32 0, i32 0
  %63 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type26, align 8, !tbaa !32
  %remap_concrete_color = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %63, i32 0, i32 9
  %64 = load i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_concrete_color, align 8, !tbaa !83
  %arraydecay27 = getelementptr inbounds [64 x i16], [64 x i16]* %conc, i32 0, i32 0
  %65 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pconcs, align 8, !tbaa !1
  %66 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %67 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %68 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %69 = load i32, i32* %select.addr, align 4, !tbaa !82
  %call28 = call i32 %64(i16* %arraydecay27, %struct.gs_color_space_s* %65, %struct.gx_device_color_s* %66, %struct.gs_imager_state_s* %67, %struct.gx_device_s* %68, i32 %69) #4
  store i32 %call28, i32* %code, align 4, !tbaa !8
  %70 = load i32, i32* %i, align 4, !tbaa !8
  %cmp29 = icmp slt i32 %70, 0
  br i1 %cmp29, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.23
  %71 = load i32, i32* %i, align 4, !tbaa !8
  %sub = sub nsw i32 0, %71
  br label %cond.end

cond.false:                                       ; preds = %if.end.23
  %72 = load i32, i32* %i, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %72, %cond.false ]
  store i32 %cond, i32* %i, align 4, !tbaa !8
  %73 = load i32, i32* %i, align 4, !tbaa !8
  %dec = add nsw i32 %73, -1
  store i32 %dec, i32* %i, align 4, !tbaa !8
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.41, %cond.end
  %74 = load i32, i32* %i, align 4, !tbaa !8
  %cmp31 = icmp sge i32 %74, 0
  br i1 %cmp31, label %for.body.32, label %for.end.43

for.body.32:                                      ; preds = %for.cond.30
  %75 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom33 = sext i32 %75 to i64
  %76 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint34 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %76, i32 0, i32 1
  %values35 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint34, i32 0, i32 0
  %arrayidx36 = getelementptr inbounds [64 x float], [64 x float]* %values35, i32 0, i64 %idxprom33
  %77 = load float, float* %arrayidx36, align 4, !tbaa !9
  %78 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom37 = sext i32 %78 to i64
  %79 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %ccolor = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %79, i32 0, i32 4
  %paint38 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %ccolor, i32 0, i32 1
  %values39 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint38, i32 0, i32 0
  %arrayidx40 = getelementptr inbounds [64 x float], [64 x float]* %values39, i32 0, i64 %idxprom37
  store float %77, float* %arrayidx40, align 4, !tbaa !9
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.body.32
  %80 = load i32, i32* %i, align 4, !tbaa !8
  %dec42 = add nsw i32 %80, -1
  store i32 %dec42, i32* %i, align 4, !tbaa !8
  br label %for.cond.30

for.end.43:                                       ; preds = %for.cond.30
  %81 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %ccolor_valid = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %81, i32 0, i32 3
  store i32 1, i32* %ccolor_valid, align 4, !tbaa !95
  %82 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %82, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.43, %if.then.22, %if.end
  %83 = bitcast %struct.gs_client_color_s* %temp to i8*
  call void @llvm.lifetime.end(i64 264, i8* %83) #2
  %84 = bitcast %struct.gs_color_space_s** %pacs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #2
  %85 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #2
  %86 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #2
  %87 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #2
  %88 = bitcast %struct.gs_color_space_s** %pconcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #2
  %89 = bitcast [64 x i16]* %conc to i8*
  call void @llvm.lifetime.end(i64 128, i8* %89) #2
  %90 = load i32, i32* %retval
  ret i32 %90
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_install_DeviceN(%struct.gs_color_space_s* %pcs, %struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %profdata = alloca %struct.cmm_profile_s*, align 8
  %nclr_pcs = alloca %struct.gs_color_space_s*, align 8
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 @check_DeviceN_component_names(%struct.gs_color_space_s* %1, %struct.gs_state_s* %2) #4
  store i32 %call, i32* %code, align 4, !tbaa !8
  %3 = load i32, i32* %code, align 4, !tbaa !8
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %icc_manager = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %5, i32 0, i32 35
  %6 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !102
  %device_n = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %6, i32 0, i32 6
  %7 = load %struct.gsicc_devicen_s*, %struct.gsicc_devicen_s** %device_n, align 8, !tbaa !105
  %cmp1 = icmp ne %struct.gsicc_devicen_s* %7, null
  br i1 %cmp1, label %if.then.2, label %if.end.57

if.then.2:                                        ; preds = %if.end
  %8 = bitcast %struct.cmm_profile_s** %profdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %icc_manager3 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %10, i32 0, i32 35
  %11 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager3, align 8, !tbaa !102
  %call4 = call %struct.cmm_profile_s* @gsicc_finddevicen(%struct.gs_color_space_s* %9, %struct.gsicc_manager_s* %11) #4
  store %struct.cmm_profile_s* %call4, %struct.cmm_profile_s** %profdata, align 8, !tbaa !1
  %12 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profdata, align 8, !tbaa !1
  %cmp5 = icmp ne %struct.cmm_profile_s* %12, null
  br i1 %cmp5, label %if.then.6, label %if.end.15

if.then.6:                                        ; preds = %if.then.2
  br label %do.body

do.body:                                          ; preds = %if.then.6
  %13 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profdata, align 8, !tbaa !1
  %tobool = icmp ne %struct.cmm_profile_s* %13, null
  br i1 %tobool, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %do.body
  br label %do.body.8

do.body.8:                                        ; preds = %if.then.7
  %14 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profdata, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %14, i32 0, i32 18
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %15 = load i64, i64* %ref_count, align 8, !tbaa !106
  %inc = add nsw i64 %15, 1
  store i64 %inc, i64* %ref_count, align 8, !tbaa !106
  br label %do.body.9

do.body.9:                                        ; preds = %do.body.8
  br label %do.cond

do.cond:                                          ; preds = %do.body.9
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.10

do.cond.10:                                       ; preds = %do.end
  br label %do.end.11

do.end.11:                                        ; preds = %do.cond.10
  br label %if.end.12

if.end.12:                                        ; preds = %do.end.11, %do.body
  br label %do.cond.13

do.cond.13:                                       ; preds = %if.end.12
  br label %do.end.14

do.end.14:                                        ; preds = %do.cond.13
  br label %if.end.15

if.end.15:                                        ; preds = %do.end.14, %if.then.2
  %16 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %16, i32 0, i32 6
  %17 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !76
  %cmp16 = icmp ne %struct.cmm_profile_s* %17, null
  br i1 %cmp16, label %if.then.17, label %if.end.55

if.then.17:                                       ; preds = %if.end.15
  br label %do.body.18

do.body.18:                                       ; preds = %if.then.17
  %18 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data19 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %18, i32 0, i32 6
  %19 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data19, align 8, !tbaa !76
  %tobool20 = icmp ne %struct.cmm_profile_s* %19, null
  br i1 %tobool20, label %if.then.21, label %if.end.52

if.then.21:                                       ; preds = %do.body.18
  br label %do.body.22

do.body.22:                                       ; preds = %if.then.21
  br label %do.body.23

do.body.23:                                       ; preds = %do.body.22
  br label %do.cond.24

do.cond.24:                                       ; preds = %do.body.23
  br label %do.end.25

do.end.25:                                        ; preds = %do.cond.24
  %20 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data26 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %20, i32 0, i32 6
  %21 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data26, align 8, !tbaa !76
  %rc27 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %21, i32 0, i32 18
  %ref_count28 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc27, i32 0, i32 0
  %22 = load i64, i64* %ref_count28, align 8, !tbaa !106
  %add = add nsw i64 %22, -1
  store i64 %add, i64* %ref_count28, align 8, !tbaa !106
  br label %do.cond.29

do.cond.29:                                       ; preds = %do.end.25
  br label %do.end.30

do.end.30:                                        ; preds = %do.cond.29
  %23 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data31 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %23, i32 0, i32 6
  %24 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data31, align 8, !tbaa !76
  %rc32 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %24, i32 0, i32 18
  %ref_count33 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc32, i32 0, i32 0
  %25 = load i64, i64* %ref_count33, align 8, !tbaa !106
  %tobool34 = icmp ne i64 %25, 0
  br i1 %tobool34, label %if.else, label %if.then.35

if.then.35:                                       ; preds = %do.end.30
  br label %do.body.36

do.body.36:                                       ; preds = %if.then.35
  br label %do.body.37

do.body.37:                                       ; preds = %do.body.36
  br label %do.cond.38

do.cond.38:                                       ; preds = %do.body.37
  br label %do.end.39

do.end.39:                                        ; preds = %do.cond.38
  %26 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data40 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %26, i32 0, i32 6
  %27 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data40, align 8, !tbaa !76
  %rc41 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %27, i32 0, i32 18
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc41, i32 0, i32 2
  %28 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !107
  %29 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data42 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %29, i32 0, i32 6
  %30 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data42, align 8, !tbaa !76
  %rc43 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %30, i32 0, i32 18
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc43, i32 0, i32 1
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !108
  %32 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data44 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %32, i32 0, i32 6
  %33 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data44, align 8, !tbaa !76
  %34 = bitcast %struct.cmm_profile_s* %33 to i8*
  call void %28(%struct.gs_memory_s* %31, i8* %34, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0)) #4
  br label %do.cond.45

do.cond.45:                                       ; preds = %do.end.39
  br label %do.end.46

do.end.46:                                        ; preds = %do.cond.45
  %35 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data47 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %35, i32 0, i32 6
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %cmm_icc_profile_data47, align 8, !tbaa !76
  br label %if.end.51

if.else:                                          ; preds = %do.end.30
  br label %do.body.48

do.body.48:                                       ; preds = %if.else
  br label %do.cond.49

do.cond.49:                                       ; preds = %do.body.48
  br label %do.end.50

do.end.50:                                        ; preds = %do.cond.49
  br label %if.end.51

if.end.51:                                        ; preds = %do.end.50, %do.end.46
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %do.body.18
  br label %do.cond.53

do.cond.53:                                       ; preds = %if.end.52
  br label %do.end.54

do.end.54:                                        ; preds = %do.cond.53
  br label %if.end.55

if.end.55:                                        ; preds = %do.end.54, %if.end.15
  %36 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profdata, align 8, !tbaa !1
  %37 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data56 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %37, i32 0, i32 6
  store %struct.cmm_profile_s* %36, %struct.cmm_profile_s** %cmm_icc_profile_data56, align 8, !tbaa !76
  %38 = bitcast %struct.cmm_profile_s** %profdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #2
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.55, %if.end
  %39 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call58 = call i32 @using_alt_color_space(%struct.gs_state_s* %39) #4
  %40 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %40, i32 0, i32 7
  %device_n59 = bitcast %union.anon* %params to %struct.gs_device_n_params_s*
  %use_alt_cspace = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n59, i32 0, i32 4
  store i32 %call58, i32* %use_alt_cspace, align 4, !tbaa !109
  %41 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params60 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %41, i32 0, i32 7
  %device_n61 = bitcast %union.anon* %params60 to %struct.gs_device_n_params_s*
  %use_alt_cspace62 = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n61, i32 0, i32 4
  %42 = load i32, i32* %use_alt_cspace62, align 4, !tbaa !109
  %tobool63 = icmp ne i32 %42, 0
  br i1 %tobool63, label %land.lhs.true, label %if.else.69

land.lhs.true:                                    ; preds = %if.end.57
  %43 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data64 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %43, i32 0, i32 6
  %44 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data64, align 8, !tbaa !76
  %cmp65 = icmp eq %struct.cmm_profile_s* %44, null
  br i1 %cmp65, label %if.then.66, label %if.else.69

if.then.66:                                       ; preds = %land.lhs.true
  %45 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %45, i32 0, i32 3
  %46 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !27
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %46, i32 0, i32 0
  %47 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !32
  %install_cspace = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %47, i32 0, i32 11
  %48 = load i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)** %install_cspace, align 8, !tbaa !110
  %49 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space67 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %49, i32 0, i32 3
  %50 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space67, align 8, !tbaa !27
  %51 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call68 = call i32 %48(%struct.gs_color_space_s* %50, %struct.gs_state_s* %51) #4
  store i32 %call68, i32* %code, align 4, !tbaa !8
  br label %if.end.99

if.else.69:                                       ; preds = %land.lhs.true, %if.end.57
  %52 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params70 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %52, i32 0, i32 7
  %device_n71 = bitcast %union.anon* %params70 to %struct.gs_device_n_params_s*
  %use_alt_cspace72 = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n71, i32 0, i32 4
  %53 = load i32, i32* %use_alt_cspace72, align 4, !tbaa !109
  %tobool73 = icmp ne i32 %53, 0
  br i1 %tobool73, label %if.then.74, label %if.end.98

if.then.74:                                       ; preds = %if.else.69
  %54 = bitcast %struct.gs_color_space_s** %nclr_pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %54) #2
  %55 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory75 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %55, i32 0, i32 1
  %56 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory75, align 8, !tbaa !111
  %call76 = call i32 @gs_cspace_build_ICC(%struct.gs_color_space_s** %nclr_pcs, i8* null, %struct.gs_memory_s* %56) #4
  store i32 %call76, i32* %code, align 4, !tbaa !8
  %57 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data77 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %57, i32 0, i32 6
  %58 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data77, align 8, !tbaa !76
  %59 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %nclr_pcs, align 8, !tbaa !1
  %cmm_icc_profile_data78 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %59, i32 0, i32 6
  store %struct.cmm_profile_s* %58, %struct.cmm_profile_s** %cmm_icc_profile_data78, align 8, !tbaa !76
  br label %do.body.79

do.body.79:                                       ; preds = %if.then.74
  %60 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data80 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %60, i32 0, i32 6
  %61 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data80, align 8, !tbaa !76
  %tobool81 = icmp ne %struct.cmm_profile_s* %61, null
  br i1 %tobool81, label %if.then.82, label %if.end.93

if.then.82:                                       ; preds = %do.body.79
  br label %do.body.83

do.body.83:                                       ; preds = %if.then.82
  %62 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data84 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %62, i32 0, i32 6
  %63 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data84, align 8, !tbaa !76
  %rc85 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %63, i32 0, i32 18
  %ref_count86 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc85, i32 0, i32 0
  %64 = load i64, i64* %ref_count86, align 8, !tbaa !106
  %inc87 = add nsw i64 %64, 1
  store i64 %inc87, i64* %ref_count86, align 8, !tbaa !106
  br label %do.body.88

do.body.88:                                       ; preds = %do.body.83
  br label %do.cond.89

do.cond.89:                                       ; preds = %do.body.88
  br label %do.end.90

do.end.90:                                        ; preds = %do.cond.89
  br label %do.cond.91

do.cond.91:                                       ; preds = %do.end.90
  br label %do.end.92

do.end.92:                                        ; preds = %do.cond.91
  br label %if.end.93

if.end.93:                                        ; preds = %do.end.92, %do.body.79
  br label %do.cond.94

do.cond.94:                                       ; preds = %if.end.93
  br label %do.end.95

do.end.95:                                        ; preds = %do.cond.94
  %65 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %nclr_pcs, align 8, !tbaa !1
  call void @rc_increment_cs(%struct.gs_color_space_s* %65) #4
  %66 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space96 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %66, i32 0, i32 3
  %67 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space96, align 8, !tbaa !27
  call void @rc_decrement_cs(%struct.gs_color_space_s* %67, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0)) #4
  %68 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %nclr_pcs, align 8, !tbaa !1
  %69 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space97 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %69, i32 0, i32 3
  store %struct.gs_color_space_s* %68, %struct.gs_color_space_s** %base_space97, align 8, !tbaa !27
  %70 = bitcast %struct.gs_color_space_s** %nclr_pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #2
  br label %if.end.98

if.end.98:                                        ; preds = %do.end.95, %if.else.69
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %if.then.66
  %71 = load i32, i32* %code, align 4, !tbaa !8
  %cmp100 = icmp sge i32 %71, 0
  br i1 %cmp100, label %if.then.101, label %if.end.104

if.then.101:                                      ; preds = %if.end.99
  %72 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %72, i32 0, i32 78
  %73 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !112
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %73, i32 0, i32 42
  %update_spot_equivalent_colors = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 59
  %74 = load i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)** %update_spot_equivalent_colors, align 8, !tbaa !113
  %75 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device102 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %75, i32 0, i32 78
  %76 = load %struct.gx_device_s*, %struct.gx_device_s** %device102, align 8, !tbaa !112
  %77 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call103 = call i32 %74(%struct.gx_device_s* %76, %struct.gs_state_s* %77) #4
  store i32 %call103, i32* %code, align 4, !tbaa !8
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.101, %if.end.99
  %78 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %78, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.104, %if.then
  %79 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #2
  %80 = load i32, i32* %retval
  ret i32 %80
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_set_overprint_DeviceN(%struct.gs_color_space_s* %pcs, %struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pcmap = alloca %struct.gs_devicen_color_map_s*, align 8
  %code = alloca i32, align 4
  %dev = alloca %struct.gx_device_s*, align 8
  %dev_profile = alloca %struct.cmm_dev_profile_s*, align 8
  %cleanup.dest.slot = alloca i32
  %base_type = alloca %struct.gs_color_space_type_s*, align 8
  %params = alloca %struct.gs_overprint_params_s, align 8
  %i = alloca i32, align 4
  %ncomps = alloca i32, align 4
  %mcomp = alloca i32, align 4
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_devicen_color_map_s** %pcmap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color_component_map = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 50
  store %struct.gs_devicen_color_map_s* %color_component_map, %struct.gs_devicen_color_map_s** %pcmap, align 8, !tbaa !1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 78
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !112
  store %struct.gx_device_s* %5, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %6 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %8 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !84
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %call = call i32 %8(%struct.gx_device_s* %9, %struct.cmm_dev_profile_s** %dev_profile) #4
  %10 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call1 = call i32 @check_DeviceN_component_names(%struct.gs_color_space_s* %10, %struct.gs_state_s* %11) #4
  store i32 %call1, i32* %code, align 4, !tbaa !8
  %12 = load i32, i32* %code, align 4, !tbaa !8
  %cmp = icmp slt i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.41

if.end:                                           ; preds = %entry
  %14 = load %struct.gs_devicen_color_map_s*, %struct.gs_devicen_color_map_s** %pcmap, align 8, !tbaa !1
  %use_alt_cspace = getelementptr inbounds %struct.gs_devicen_color_map_s, %struct.gs_devicen_color_map_s* %14, i32 0, i32 0
  %15 = load i32, i32* %use_alt_cspace, align 4, !tbaa !114
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then.2, label %if.else.26

if.then.2:                                        ; preds = %if.end
  %16 = bitcast %struct.gs_color_space_type_s** %base_type to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #2
  %17 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %17, i32 0, i32 3
  %18 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !27
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %18, i32 0, i32 0
  %19 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !32
  store %struct.gs_color_space_type_s* %19, %struct.gs_color_space_type_s** %base_type, align 8, !tbaa !1
  %20 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %sim_overprint = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %20, i32 0, i32 10
  %21 = load i32, i32* %sim_overprint, align 4, !tbaa !115
  %tobool3 = icmp ne i32 %21, 0
  br i1 %tobool3, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.2
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %22, i32 0, i32 11
  %polarity = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 2
  %23 = load i32, i32* %polarity, align 4, !tbaa !116
  %cmp4 = icmp eq i32 %23, 0
  br i1 %cmp4, label %land.lhs.true.5, label %if.else

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %color_info6 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %24, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info6, i32 0, i32 1
  %25 = load i32, i32* %num_components, align 4, !tbaa !36
  %cmp7 = icmp sgt i32 %25, 1
  br i1 %cmp7, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.5
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %color_info8 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %26, i32 0, i32 11
  %gray_index = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info8, i32 0, i32 4
  %27 = load i8, i8* %gray_index, align 1, !tbaa !117
  %conv = zext i8 %27 to i32
  %cmp9 = icmp eq i32 %conv, 255
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true.5
  %28 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %color_info11 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %28, i32 0, i32 11
  %max_color = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info11, i32 0, i32 6
  %29 = load i32, i32* %max_color, align 4, !tbaa !118
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %color_info12 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %30, i32 0, i32 11
  %max_gray = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info12, i32 0, i32 5
  %31 = load i32, i32* %max_gray, align 4, !tbaa !119
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %29, %cond.true ], [ %31, %cond.false ]
  %cmp13 = icmp ult i32 %cond, 31
  br i1 %cmp13, label %if.else, label %if.then.15

if.then.15:                                       ; preds = %cond.end
  %32 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space16 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %32, i32 0, i32 3
  %33 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space16, align 8, !tbaa !27
  %34 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call17 = call i32 @gx_simulated_set_overprint(%struct.gs_color_space_s* %33, %struct.gs_state_s* %34) #4
  store i32 %call17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %cond.end, %land.lhs.true, %if.then.2
  %35 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %base_type, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %35, i32 0, i32 0
  %36 = load i32, i32* %index, align 4, !tbaa !120
  %cmp18 = icmp eq i32 %36, 2
  br i1 %cmp18, label %if.then.20, label %if.else.23

if.then.20:                                       ; preds = %if.else
  %37 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %base_type, align 8, !tbaa !1
  %set_overprint = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %37, i32 0, i32 12
  %38 = load i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)** %set_overprint, align 8, !tbaa !121
  %39 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space21 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %39, i32 0, i32 3
  %40 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space21, align 8, !tbaa !27
  %41 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call22 = call i32 %38(%struct.gs_color_space_s* %40, %struct.gs_state_s* %41) #4
  store i32 %call22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.23:                                       ; preds = %if.else
  %42 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space24 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %42, i32 0, i32 3
  %43 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space24, align 8, !tbaa !27
  %44 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call25 = call i32 @gx_spot_colors_set_overprint(%struct.gs_color_space_s* %43, %struct.gs_state_s* %44) #4
  store i32 %call25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else.23, %if.then.20, %if.then.15
  %45 = bitcast %struct.gs_color_space_type_s** %base_type to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #2
  br label %cleanup.41

if.else.26:                                       ; preds = %if.end
  %46 = bitcast %struct.gs_overprint_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 32, i8* %46) #2
  %47 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %overprint = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %47, i32 0, i32 21
  %48 = load i32, i32* %overprint, align 4, !tbaa !122
  %retain_any_comps = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %params, i32 0, i32 0
  store i32 %48, i32* %retain_any_comps, align 4, !tbaa !123
  %tobool27 = icmp ne i32 %48, 0
  br i1 %tobool27, label %if.then.28, label %if.end.38

if.then.28:                                       ; preds = %if.else.26
  %49 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %49) #2
  %50 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #2
  %51 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params29 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %51, i32 0, i32 7
  %device_n = bitcast %union.anon* %params29 to %struct.gs_device_n_params_s*
  %num_components30 = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n, i32 0, i32 1
  %52 = load i32, i32* %num_components30, align 4, !tbaa !5
  store i32 %52, i32* %ncomps, align 4, !tbaa !8
  %retain_spot_comps = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %params, i32 0, i32 1
  store i32 0, i32* %retain_spot_comps, align 4, !tbaa !125
  %drawn_comps = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %params, i32 0, i32 3
  store i64 0, i64* %drawn_comps, align 8, !tbaa !126
  %k_value = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %params, i32 0, i32 4
  store i16 0, i16* %k_value, align 2, !tbaa !127
  %blendspot = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %params, i32 0, i32 5
  store i32 0, i32* %blendspot, align 4, !tbaa !128
  store i32 0, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.28
  %53 = load i32, i32* %i, align 4, !tbaa !8
  %54 = load i32, i32* %ncomps, align 4, !tbaa !8
  %cmp31 = icmp slt i32 %53, %54
  br i1 %cmp31, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %55 = bitcast i32* %mcomp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #2
  %56 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom = sext i32 %56 to i64
  %57 = load %struct.gs_devicen_color_map_s*, %struct.gs_devicen_color_map_s** %pcmap, align 8, !tbaa !1
  %color_map = getelementptr inbounds %struct.gs_devicen_color_map_s, %struct.gs_devicen_color_map_s* %57, i32 0, i32 5
  %arrayidx = getelementptr inbounds [64 x i32], [64 x i32]* %color_map, i32 0, i64 %idxprom
  %58 = load i32, i32* %arrayidx, align 4, !tbaa !8
  store i32 %58, i32* %mcomp, align 4, !tbaa !8
  %59 = load i32, i32* %mcomp, align 4, !tbaa !8
  %cmp33 = icmp sge i32 %59, 0
  br i1 %cmp33, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %for.body
  %60 = load i32, i32* %mcomp, align 4, !tbaa !8
  %sh_prom = zext i32 %60 to i64
  %shl = shl i64 1, %sh_prom
  %drawn_comps36 = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %params, i32 0, i32 3
  %61 = load i64, i64* %drawn_comps36, align 8, !tbaa !126
  %or = or i64 %61, %shl
  store i64 %or, i64* %drawn_comps36, align 8, !tbaa !126
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %for.body
  %62 = bitcast i32* %mcomp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #2
  br label %for.inc

for.inc:                                          ; preds = %if.end.37
  %63 = load i32, i32* %i, align 4, !tbaa !8
  %inc = add nsw i32 %63, 1
  store i32 %inc, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %64 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #2
  %65 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #2
  br label %if.end.38

if.end.38:                                        ; preds = %for.end, %if.else.26
  %66 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %effective_overprint_mode = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %66, i32 0, i32 23
  store i32 0, i32* %effective_overprint_mode, align 4, !tbaa !129
  %67 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call39 = call i32 @gs_state_update_overprint(%struct.gs_state_s* %67, %struct.gs_overprint_params_s* %params) #4
  store i32 %call39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %68 = bitcast %struct.gs_overprint_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 32, i8* %68) #2
  br label %cleanup.41

cleanup.41:                                       ; preds = %if.end.38, %cleanup, %if.then
  %69 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #2
  %70 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #2
  %71 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #2
  %72 = bitcast %struct.gs_devicen_color_map_s** %pcmap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #2
  %73 = load i32, i32* %retval
  ret i32 %73
}

; Function Attrs: nounwind uwtable
define internal void @gx_final_DeviceN(%struct.gs_color_space_s* %pcs) #0 {
entry:
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pnextatt = alloca %struct.gs_device_n_attributes_s*, align 8
  %patt = alloca %struct.gs_device_n_attributes_s*, align 8
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_device_n_attributes_s** %pnextatt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct.gs_device_n_attributes_s** %patt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %2, i32 0, i32 7
  %device_n = bitcast %union.anon* %params to %struct.gs_device_n_params_s*
  %colorants = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n, i32 0, i32 3
  %3 = load %struct.gs_device_n_attributes_s*, %struct.gs_device_n_attributes_s** %colorants, align 8, !tbaa !130
  store %struct.gs_device_n_attributes_s* %3, %struct.gs_device_n_attributes_s** %patt, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %4, i32 0, i32 7
  %device_n2 = bitcast %union.anon* %params1 to %struct.gs_device_n_params_s*
  %map = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n2, i32 0, i32 2
  %5 = load %struct.gs_device_n_map_s*, %struct.gs_device_n_map_s** %map, align 8, !tbaa !35
  %tobool = icmp ne %struct.gs_device_n_map_s* %5, null
  br i1 %tobool, label %if.then, label %if.end.40

if.then:                                          ; preds = %do.body
  br label %do.body.3

do.body.3:                                        ; preds = %if.then
  br label %do.body.4

do.body.4:                                        ; preds = %do.body.3
  br label %do.cond

do.cond:                                          ; preds = %do.body.4
  br label %do.end

do.end:                                           ; preds = %do.cond
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params5 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %6, i32 0, i32 7
  %device_n6 = bitcast %union.anon* %params5 to %struct.gs_device_n_params_s*
  %map7 = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n6, i32 0, i32 2
  %7 = load %struct.gs_device_n_map_s*, %struct.gs_device_n_map_s** %map7, align 8, !tbaa !35
  %rc = getelementptr inbounds %struct.gs_device_n_map_s, %struct.gs_device_n_map_s* %7, i32 0, i32 0
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %8 = load i64, i64* %ref_count, align 8, !tbaa !131
  %add = add nsw i64 %8, -1
  store i64 %add, i64* %ref_count, align 8, !tbaa !131
  br label %do.cond.8

do.cond.8:                                        ; preds = %do.end
  br label %do.end.9

do.end.9:                                         ; preds = %do.cond.8
  %9 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params10 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %9, i32 0, i32 7
  %device_n11 = bitcast %union.anon* %params10 to %struct.gs_device_n_params_s*
  %map12 = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n11, i32 0, i32 2
  %10 = load %struct.gs_device_n_map_s*, %struct.gs_device_n_map_s** %map12, align 8, !tbaa !35
  %rc13 = getelementptr inbounds %struct.gs_device_n_map_s, %struct.gs_device_n_map_s* %10, i32 0, i32 0
  %ref_count14 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc13, i32 0, i32 0
  %11 = load i64, i64* %ref_count14, align 8, !tbaa !131
  %tobool15 = icmp ne i64 %11, 0
  br i1 %tobool15, label %if.else, label %if.then.16

if.then.16:                                       ; preds = %do.end.9
  br label %do.body.17

do.body.17:                                       ; preds = %if.then.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.body.17
  br label %do.cond.19

do.cond.19:                                       ; preds = %do.body.18
  br label %do.end.20

do.end.20:                                        ; preds = %do.cond.19
  %12 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params21 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %12, i32 0, i32 7
  %device_n22 = bitcast %union.anon* %params21 to %struct.gs_device_n_params_s*
  %map23 = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n22, i32 0, i32 2
  %13 = load %struct.gs_device_n_map_s*, %struct.gs_device_n_map_s** %map23, align 8, !tbaa !35
  %rc24 = getelementptr inbounds %struct.gs_device_n_map_s, %struct.gs_device_n_map_s* %13, i32 0, i32 0
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc24, i32 0, i32 2
  %14 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !132
  %15 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params25 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %15, i32 0, i32 7
  %device_n26 = bitcast %union.anon* %params25 to %struct.gs_device_n_params_s*
  %map27 = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n26, i32 0, i32 2
  %16 = load %struct.gs_device_n_map_s*, %struct.gs_device_n_map_s** %map27, align 8, !tbaa !35
  %rc28 = getelementptr inbounds %struct.gs_device_n_map_s, %struct.gs_device_n_map_s* %16, i32 0, i32 0
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc28, i32 0, i32 1
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !133
  %18 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params29 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %18, i32 0, i32 7
  %device_n30 = bitcast %union.anon* %params29 to %struct.gs_device_n_params_s*
  %map31 = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n30, i32 0, i32 2
  %19 = load %struct.gs_device_n_map_s*, %struct.gs_device_n_map_s** %map31, align 8, !tbaa !35
  %20 = bitcast %struct.gs_device_n_map_s* %19 to i8*
  call void %14(%struct.gs_memory_s* %17, i8* %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0)) #4
  br label %do.cond.32

do.cond.32:                                       ; preds = %do.end.20
  br label %do.end.33

do.end.33:                                        ; preds = %do.cond.32
  br label %do.body.34

do.body.34:                                       ; preds = %do.end.33
  br label %do.cond.35

do.cond.35:                                       ; preds = %do.body.34
  br label %do.end.36

do.end.36:                                        ; preds = %do.cond.35
  br label %if.end

if.else:                                          ; preds = %do.end.9
  br label %do.body.37

do.body.37:                                       ; preds = %if.else
  br label %do.cond.38

do.cond.38:                                       ; preds = %do.body.37
  br label %do.end.39

do.end.39:                                        ; preds = %do.cond.38
  br label %if.end

if.end:                                           ; preds = %do.end.39, %do.end.36
  br label %if.end.40

if.end.40:                                        ; preds = %if.end, %do.body
  br label %do.cond.41

do.cond.41:                                       ; preds = %if.end.40
  br label %do.end.42

do.end.42:                                        ; preds = %do.cond.41
  br label %while.cond

while.cond:                                       ; preds = %do.end.76, %do.end.42
  %21 = load %struct.gs_device_n_attributes_s*, %struct.gs_device_n_attributes_s** %patt, align 8, !tbaa !1
  %cmp = icmp ne %struct.gs_device_n_attributes_s* %21, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %22 = load %struct.gs_device_n_attributes_s*, %struct.gs_device_n_attributes_s** %patt, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gs_device_n_attributes_s, %struct.gs_device_n_attributes_s* %22, i32 0, i32 3
  %23 = load %struct.gs_device_n_attributes_s*, %struct.gs_device_n_attributes_s** %next, align 8, !tbaa !134
  store %struct.gs_device_n_attributes_s* %23, %struct.gs_device_n_attributes_s** %pnextatt, align 8, !tbaa !1
  %24 = load %struct.gs_device_n_attributes_s*, %struct.gs_device_n_attributes_s** %patt, align 8, !tbaa !1
  %cspace = getelementptr inbounds %struct.gs_device_n_attributes_s, %struct.gs_device_n_attributes_s* %24, i32 0, i32 2
  %25 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %cspace, align 8, !tbaa !136
  call void @rc_decrement_cs(%struct.gs_color_space_s* %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0)) #4
  br label %do.body.43

do.body.43:                                       ; preds = %while.body
  %26 = load %struct.gs_device_n_attributes_s*, %struct.gs_device_n_attributes_s** %patt, align 8, !tbaa !1
  %tobool44 = icmp ne %struct.gs_device_n_attributes_s* %26, null
  br i1 %tobool44, label %if.then.45, label %if.end.74

if.then.45:                                       ; preds = %do.body.43
  br label %do.body.46

do.body.46:                                       ; preds = %if.then.45
  br label %do.body.47

do.body.47:                                       ; preds = %do.body.46
  br label %do.cond.48

do.cond.48:                                       ; preds = %do.body.47
  br label %do.end.49

do.end.49:                                        ; preds = %do.cond.48
  %27 = load %struct.gs_device_n_attributes_s*, %struct.gs_device_n_attributes_s** %patt, align 8, !tbaa !1
  %rc50 = getelementptr inbounds %struct.gs_device_n_attributes_s, %struct.gs_device_n_attributes_s* %27, i32 0, i32 0
  %ref_count51 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc50, i32 0, i32 0
  %28 = load i64, i64* %ref_count51, align 8, !tbaa !137
  %add52 = add nsw i64 %28, -1
  store i64 %add52, i64* %ref_count51, align 8, !tbaa !137
  br label %do.cond.53

do.cond.53:                                       ; preds = %do.end.49
  br label %do.end.54

do.end.54:                                        ; preds = %do.cond.53
  %29 = load %struct.gs_device_n_attributes_s*, %struct.gs_device_n_attributes_s** %patt, align 8, !tbaa !1
  %rc55 = getelementptr inbounds %struct.gs_device_n_attributes_s, %struct.gs_device_n_attributes_s* %29, i32 0, i32 0
  %ref_count56 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc55, i32 0, i32 0
  %30 = load i64, i64* %ref_count56, align 8, !tbaa !137
  %tobool57 = icmp ne i64 %30, 0
  br i1 %tobool57, label %if.else.69, label %if.then.58

if.then.58:                                       ; preds = %do.end.54
  br label %do.body.59

do.body.59:                                       ; preds = %if.then.58
  br label %do.body.60

do.body.60:                                       ; preds = %do.body.59
  br label %do.cond.61

do.cond.61:                                       ; preds = %do.body.60
  br label %do.end.62

do.end.62:                                        ; preds = %do.cond.61
  %31 = load %struct.gs_device_n_attributes_s*, %struct.gs_device_n_attributes_s** %patt, align 8, !tbaa !1
  %rc63 = getelementptr inbounds %struct.gs_device_n_attributes_s, %struct.gs_device_n_attributes_s* %31, i32 0, i32 0
  %free64 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc63, i32 0, i32 2
  %32 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free64, align 8, !tbaa !138
  %33 = load %struct.gs_device_n_attributes_s*, %struct.gs_device_n_attributes_s** %patt, align 8, !tbaa !1
  %rc65 = getelementptr inbounds %struct.gs_device_n_attributes_s, %struct.gs_device_n_attributes_s* %33, i32 0, i32 0
  %memory66 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc65, i32 0, i32 1
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory66, align 8, !tbaa !139
  %35 = load %struct.gs_device_n_attributes_s*, %struct.gs_device_n_attributes_s** %patt, align 8, !tbaa !1
  %36 = bitcast %struct.gs_device_n_attributes_s* %35 to i8*
  call void %32(%struct.gs_memory_s* %34, i8* %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0)) #4
  br label %do.cond.67

do.cond.67:                                       ; preds = %do.end.62
  br label %do.end.68

do.end.68:                                        ; preds = %do.cond.67
  store %struct.gs_device_n_attributes_s* null, %struct.gs_device_n_attributes_s** %patt, align 8, !tbaa !1
  br label %if.end.73

if.else.69:                                       ; preds = %do.end.54
  br label %do.body.70

do.body.70:                                       ; preds = %if.else.69
  br label %do.cond.71

do.cond.71:                                       ; preds = %do.body.70
  br label %do.end.72

do.end.72:                                        ; preds = %do.cond.71
  br label %if.end.73

if.end.73:                                        ; preds = %do.end.72, %do.end.68
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %do.body.43
  br label %do.cond.75

do.cond.75:                                       ; preds = %if.end.74
  br label %do.end.76

do.end.76:                                        ; preds = %do.cond.75
  %37 = load %struct.gs_device_n_attributes_s*, %struct.gs_device_n_attributes_s** %pnextatt, align 8, !tbaa !1
  store %struct.gs_device_n_attributes_s* %37, %struct.gs_device_n_attributes_s** %patt, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %38 = bitcast %struct.gs_device_n_attributes_s** %patt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #2
  %39 = bitcast %struct.gs_device_n_attributes_s** %pnextatt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #2
  ret void
}

declare void @gx_no_adjust_color_count(%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @gx_serialize_DeviceN(%struct.gs_color_space_s* %pcs, %struct.stream_s* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %s.addr = alloca %struct.stream_s*, align 8
  %p = alloca %struct.gs_device_n_params_s*, align 8
  %n = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_device_n_params_s** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %1, i32 0, i32 7
  %device_n = bitcast %union.anon* %params to %struct.gs_device_n_params_s*
  store %struct.gs_device_n_params_s* %device_n, %struct.gs_device_n_params_s** %p, align 8, !tbaa !1
  %2 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @gx_serialize_cspace_type(%struct.gs_color_space_s* %4, %struct.stream_s* %5) #4
  store i32 %call, i32* %code, align 4, !tbaa !8
  %6 = load i32, i32* %code, align 4, !tbaa !8
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %9 = load %struct.gs_device_n_params_s*, %struct.gs_device_n_params_s** %p, align 8, !tbaa !1
  %num_components = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %9, i32 0, i32 1
  %10 = bitcast i32* %num_components to i8*
  %call1 = call i32 @sputs(%struct.stream_s* %8, i8* %10, i32 4, i32* %n) #4
  store i32 %call1, i32* %code, align 4, !tbaa !8
  %11 = load i32, i32* %code, align 4, !tbaa !8
  %cmp2 = icmp slt i32 %11, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %12 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %13 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %14 = load %struct.gs_device_n_params_s*, %struct.gs_device_n_params_s** %p, align 8, !tbaa !1
  %names = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %14, i32 0, i32 0
  %15 = load i64*, i64** %names, align 8, !tbaa !46
  %arrayidx = getelementptr inbounds i64, i64* %15, i64 0
  %16 = bitcast i64* %arrayidx to i8*
  %17 = load %struct.gs_device_n_params_s*, %struct.gs_device_n_params_s** %p, align 8, !tbaa !1
  %num_components5 = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %17, i32 0, i32 1
  %18 = load i32, i32* %num_components5, align 4, !tbaa !5
  %conv = zext i32 %18 to i64
  %mul = mul i64 8, %conv
  %conv6 = trunc i64 %mul to i32
  %call7 = call i32 @sputs(%struct.stream_s* %13, i8* %16, i32 %conv6, i32* %n) #4
  store i32 %call7, i32* %code, align 4, !tbaa !8
  %19 = load i32, i32* %code, align 4, !tbaa !8
  %cmp8 = icmp slt i32 %19, 0
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.4
  %20 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end.4
  %21 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %21, i32 0, i32 3
  %22 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !27
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %22, i32 0, i32 0
  %23 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !32
  %serialize = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %23, i32 0, i32 15
  %24 = load i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)** %serialize, align 8, !tbaa !140
  %25 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space12 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %25, i32 0, i32 3
  %26 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space12, align 8, !tbaa !27
  %27 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call13 = call i32 %24(%struct.gs_color_space_s* %26, %struct.stream_s* %27) #4
  store i32 %call13, i32* %code, align 4, !tbaa !8
  %28 = load i32, i32* %code, align 4, !tbaa !8
  %cmp14 = icmp slt i32 %28, 0
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.11
  %29 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.end.11
  %30 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %31 = load %struct.gs_device_n_params_s*, %struct.gs_device_n_params_s** %p, align 8, !tbaa !1
  %map = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %31, i32 0, i32 2
  %32 = load %struct.gs_device_n_map_s*, %struct.gs_device_n_map_s** %map, align 8, !tbaa !35
  %33 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call18 = call i32 @gx_serialize_device_n_map(%struct.gs_color_space_s* %30, %struct.gs_device_n_map_s* %32, %struct.stream_s* %33) #4
  store i32 %call18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.17, %if.then.16, %if.then.10, %if.then.3, %if.then
  %34 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #2
  %35 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #2
  %36 = bitcast %struct.gs_device_n_params_s** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #2
  %37 = load i32, i32* %retval
  ret i32 %37
}

declare i32 @gx_cspace_is_linear_default(%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gx_polarity_DeviceN(%struct.gs_color_space_s* %pcs) #0 {
entry:
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_cspace_new_DeviceN(%struct.gs_color_space_s** %ppcs, i32 %num_components, %struct.gs_color_space_s* %palt_cspace, %struct.gs_memory_s* %pmem) #0 {
entry:
  %retval = alloca i32, align 4
  %ppcs.addr = alloca %struct.gs_color_space_s**, align 8
  %num_components.addr = alloca i32, align 4
  %palt_cspace.addr = alloca %struct.gs_color_space_s*, align 8
  %pmem.addr = alloca %struct.gs_memory_s*, align 8
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %pcsdevn = alloca %struct.gs_device_n_params_s*, align 8
  %pnames = alloca i64*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_color_space_s** %ppcs, %struct.gs_color_space_s*** %ppcs.addr, align 8, !tbaa !1
  store i32 %num_components, i32* %num_components.addr, align 4, !tbaa !8
  store %struct.gs_color_space_s* %palt_cspace, %struct.gs_color_space_s** %palt_cspace.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %pmem, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct.gs_device_n_params_s** %pcsdevn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i64** %pnames to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %palt_cspace.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_color_space_s* %4, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %palt_cspace.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %5, i32 0, i32 0
  %6 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !32
  %can_be_alt_space = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %6, i32 0, i32 2
  %7 = load i32, i32* %can_be_alt_space, align 4, !tbaa !141
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %call = call %struct.gs_color_space_s* @gs_cspace_alloc(%struct.gs_memory_s* %8, %struct.gs_color_space_type_s* bitcast ({ i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }* @gs_color_space_type_DeviceN to %struct.gs_color_space_type_s*)) #4
  store %struct.gs_color_space_s* %call, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %9 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %cmp1 = icmp eq %struct.gs_color_space_s* %9, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %10 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %10, i32 0, i32 7
  %device_n = bitcast %union.anon* %params to %struct.gs_device_n_params_s*
  store %struct.gs_device_n_params_s* %device_n, %struct.gs_device_n_params_s** %pcsdevn, align 8, !tbaa !1
  %11 = load %struct.gs_device_n_params_s*, %struct.gs_device_n_params_s** %pcsdevn, align 8, !tbaa !1
  %names = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %11, i32 0, i32 0
  store i64* null, i64** %names, align 8, !tbaa !46
  %12 = load %struct.gs_device_n_params_s*, %struct.gs_device_n_params_s** %pcsdevn, align 8, !tbaa !1
  %map = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %12, i32 0, i32 2
  store %struct.gs_device_n_map_s* null, %struct.gs_device_n_map_s** %map, align 8, !tbaa !35
  %13 = load %struct.gs_device_n_params_s*, %struct.gs_device_n_params_s** %pcsdevn, align 8, !tbaa !1
  %colorants = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %13, i32 0, i32 3
  store %struct.gs_device_n_attributes_s* null, %struct.gs_device_n_attributes_s** %colorants, align 8, !tbaa !130
  %14 = load %struct.gs_device_n_params_s*, %struct.gs_device_n_params_s** %pcsdevn, align 8, !tbaa !1
  %map4 = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %14, i32 0, i32 2
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %call5 = call i32 @alloc_device_n_map(%struct.gs_device_n_map_s** %map4, %struct.gs_memory_s* %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0)) #4
  store i32 %call5, i32* %code, align 4, !tbaa !8
  %16 = load i32, i32* %code, align 4, !tbaa !8
  %cmp6 = icmp slt i32 %16, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.3
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %17, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %18 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !69
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %20 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %21 = bitcast %struct.gs_color_space_s* %20 to i8*
  call void %18(%struct.gs_memory_s* %19, i8* %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0)) #4
  %22 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end.3
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %procs9 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %23, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs9, i32 0, i32 10
  %24 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !142
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %26 = load i32, i32* %num_components.addr, align 4, !tbaa !8
  %call10 = call i8* %24(%struct.gs_memory_s* %25, i32 %26, i32 8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0)) #4
  %27 = bitcast i8* %call10 to i64*
  store i64* %27, i64** %pnames, align 8, !tbaa !1
  %28 = load i64*, i64** %pnames, align 8, !tbaa !1
  %cmp11 = icmp eq i64* %28, null
  br i1 %cmp11, label %if.then.12, label %if.end.18

if.then.12:                                       ; preds = %if.end.8
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %procs13 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %29, i32 0, i32 1
  %free_object14 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs13, i32 0, i32 2
  %30 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object14, align 8, !tbaa !69
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %32 = load %struct.gs_device_n_params_s*, %struct.gs_device_n_params_s** %pcsdevn, align 8, !tbaa !1
  %map15 = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %32, i32 0, i32 2
  %33 = load %struct.gs_device_n_map_s*, %struct.gs_device_n_map_s** %map15, align 8, !tbaa !35
  %34 = bitcast %struct.gs_device_n_map_s* %33 to i8*
  call void %30(%struct.gs_memory_s* %31, i8* %34, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0)) #4
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %procs16 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %35, i32 0, i32 1
  %free_object17 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs16, i32 0, i32 2
  %36 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object17, align 8, !tbaa !69
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %38 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %39 = bitcast %struct.gs_color_space_s* %38 to i8*
  call void %36(%struct.gs_memory_s* %37, i8* %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0)) #4
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.end.8
  %40 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %palt_cspace.addr, align 8, !tbaa !1
  %41 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %41, i32 0, i32 3
  store %struct.gs_color_space_s* %40, %struct.gs_color_space_s** %base_space, align 8, !tbaa !27
  %42 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %palt_cspace.addr, align 8, !tbaa !1
  call void @rc_increment_cs(%struct.gs_color_space_s* %42) #4
  %43 = load i64*, i64** %pnames, align 8, !tbaa !1
  %44 = load %struct.gs_device_n_params_s*, %struct.gs_device_n_params_s** %pcsdevn, align 8, !tbaa !1
  %names19 = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %44, i32 0, i32 0
  store i64* %43, i64** %names19, align 8, !tbaa !46
  %45 = load i32, i32* %num_components.addr, align 4, !tbaa !8
  %46 = load %struct.gs_device_n_params_s*, %struct.gs_device_n_params_s** %pcsdevn, align 8, !tbaa !1
  %num_components20 = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %46, i32 0, i32 1
  store i32 %45, i32* %num_components20, align 4, !tbaa !5
  %47 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %48 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcs.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %47, %struct.gs_color_space_s** %48, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.18, %if.then.12, %if.then.7, %if.then.2, %if.then
  %49 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #2
  %50 = bitcast i64** %pnames to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #2
  %51 = bitcast %struct.gs_device_n_params_s** %pcsdevn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #2
  %52 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #2
  %53 = load i32, i32* %retval
  ret i32 %53
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare %struct.gs_color_space_s* @gs_cspace_alloc(%struct.gs_memory_s*, %struct.gs_color_space_type_s*) #1

; Function Attrs: nounwind uwtable
define i32 @alloc_device_n_map(%struct.gs_device_n_map_s** %ppmap, %struct.gs_memory_s* %mem, i8* %cname) #0 {
entry:
  %retval = alloca i32, align 4
  %ppmap.addr = alloca %struct.gs_device_n_map_s**, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %cname.addr = alloca i8*, align 8
  %pimap = alloca %struct.gs_device_n_map_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_device_n_map_s** %ppmap, %struct.gs_device_n_map_s*** %ppmap.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_device_n_map_s** %pimap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %2 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !143
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* %2(%struct.gs_memory_s* %3, %struct.gs_memory_struct_type_s* @st_device_n_map, i8* %4) #4
  %5 = bitcast i8* %call to %struct.gs_device_n_map_s*
  store %struct.gs_device_n_map_s* %5, %struct.gs_device_n_map_s** %pimap, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_device_n_map_s* %5, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.else
  %6 = load %struct.gs_device_n_map_s*, %struct.gs_device_n_map_s** %pimap, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gs_device_n_map_s, %struct.gs_device_n_map_s* %6, i32 0, i32 0
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  store i64 1, i64* %ref_count, align 8, !tbaa !131
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %8 = load %struct.gs_device_n_map_s*, %struct.gs_device_n_map_s** %pimap, align 8, !tbaa !1
  %rc2 = getelementptr inbounds %struct.gs_device_n_map_s, %struct.gs_device_n_map_s* %8, i32 0, i32 0
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc2, i32 0, i32 1
  store %struct.gs_memory_s* %7, %struct.gs_memory_s** %memory, align 8, !tbaa !133
  %9 = load %struct.gs_device_n_map_s*, %struct.gs_device_n_map_s** %pimap, align 8, !tbaa !1
  %rc3 = getelementptr inbounds %struct.gs_device_n_map_s, %struct.gs_device_n_map_s* %9, i32 0, i32 0
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc3, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @rc_free_struct_only, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !132
  br label %do.body.4

do.body.4:                                        ; preds = %do.body.1
  br label %do.cond

do.cond:                                          ; preds = %do.body.4
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.5

do.cond.5:                                        ; preds = %do.end
  br label %do.end.6

do.end.6:                                         ; preds = %do.cond.5
  br label %if.end

if.end:                                           ; preds = %do.end.6
  br label %do.cond.7

do.cond.7:                                        ; preds = %if.end
  br label %do.end.8

do.end.8:                                         ; preds = %do.cond.7
  %10 = load %struct.gs_device_n_map_s*, %struct.gs_device_n_map_s** %pimap, align 8, !tbaa !1
  %tint_transform = getelementptr inbounds %struct.gs_device_n_map_s, %struct.gs_device_n_map_s* %10, i32 0, i32 1
  store i32 (float*, float*, %struct.gs_imager_state_s*, i8*)* null, i32 (float*, float*, %struct.gs_imager_state_s*, i8*)** %tint_transform, align 8, !tbaa !73
  %11 = load %struct.gs_device_n_map_s*, %struct.gs_device_n_map_s** %pimap, align 8, !tbaa !1
  %tint_transform_data = getelementptr inbounds %struct.gs_device_n_map_s, %struct.gs_device_n_map_s* %11, i32 0, i32 2
  store i8* null, i8** %tint_transform_data, align 8, !tbaa !74
  %12 = load %struct.gs_device_n_map_s*, %struct.gs_device_n_map_s** %pimap, align 8, !tbaa !1
  %cache_valid = getelementptr inbounds %struct.gs_device_n_map_s, %struct.gs_device_n_map_s* %12, i32 0, i32 3
  store i32 0, i32* %cache_valid, align 4, !tbaa !71
  %13 = load %struct.gs_device_n_map_s*, %struct.gs_device_n_map_s** %pimap, align 8, !tbaa !1
  %14 = load %struct.gs_device_n_map_s**, %struct.gs_device_n_map_s*** %ppmap.addr, align 8, !tbaa !1
  store %struct.gs_device_n_map_s* %13, %struct.gs_device_n_map_s** %14, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.8, %if.then
  %15 = bitcast %struct.gs_device_n_map_s** %pimap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #2
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare void @rc_increment_cs(%struct.gs_color_space_s*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare void @rc_free_struct_only(%struct.gs_memory_s*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gs_attachattributecolorspace(i64 %sep_name, %struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %sep_name.addr = alloca i64, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pdevncs = alloca %struct.gs_color_space_s*, align 8
  %patt = alloca %struct.gs_device_n_attributes_s*, align 8
  %cleanup.dest.slot = alloca i32
  store i64 %sep_name, i64* %sep_name.addr, align 8, !tbaa !65
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_color_space_s** %pdevncs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct.gs_device_n_attributes_s** %patt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %saved = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 56
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !144
  %tobool = icmp ne %struct.gs_state_s* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %saved1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 56
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %saved1, align 8, !tbaa !144
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %5, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon.1], [2 x %struct.anon.1]* %color, i32 0, i64 0
  %color_space = getelementptr inbounds %struct.anon.1, %struct.anon.1* %arrayidx, i32 0, i32 0
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space, align 8, !tbaa !145
  store %struct.gs_color_space_s* %6, %struct.gs_color_space_s** %pdevncs, align 8, !tbaa !1
  %7 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pdevncs, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %7, i32 0, i32 0
  %8 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !32
  %cmp = icmp ne %struct.gs_color_space_type_s* %8, bitcast ({ i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }* @gs_color_space_type_DeviceN to %struct.gs_color_space_type_s*)
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.3
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i32 0, i32 1
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !111
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %10, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %11 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !143
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %12, i32 0, i32 1
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory4, align 8, !tbaa !111
  %call = call i8* %11(%struct.gs_memory_s* %13, %struct.gs_memory_struct_type_s* @st_device_n_attributes, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0)) #4
  %14 = bitcast i8* %call to %struct.gs_device_n_attributes_s*
  store %struct.gs_device_n_attributes_s* %14, %struct.gs_device_n_attributes_s** %patt, align 8, !tbaa !1
  %cmp5 = icmp eq %struct.gs_device_n_attributes_s* %14, null
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  br label %do.body.7

do.body.7:                                        ; preds = %if.else
  %15 = load %struct.gs_device_n_attributes_s*, %struct.gs_device_n_attributes_s** %patt, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gs_device_n_attributes_s, %struct.gs_device_n_attributes_s* %15, i32 0, i32 0
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  store i64 1, i64* %ref_count, align 8, !tbaa !137
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory8 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %16, i32 0, i32 1
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory8, align 8, !tbaa !111
  %18 = load %struct.gs_device_n_attributes_s*, %struct.gs_device_n_attributes_s** %patt, align 8, !tbaa !1
  %rc9 = getelementptr inbounds %struct.gs_device_n_attributes_s, %struct.gs_device_n_attributes_s* %18, i32 0, i32 0
  %memory10 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc9, i32 0, i32 1
  store %struct.gs_memory_s* %17, %struct.gs_memory_s** %memory10, align 8, !tbaa !139
  %19 = load %struct.gs_device_n_attributes_s*, %struct.gs_device_n_attributes_s** %patt, align 8, !tbaa !1
  %rc11 = getelementptr inbounds %struct.gs_device_n_attributes_s, %struct.gs_device_n_attributes_s* %19, i32 0, i32 0
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc11, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @rc_free_struct_only, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !138
  br label %do.body.12

do.body.12:                                       ; preds = %do.body.7
  br label %do.cond

do.cond:                                          ; preds = %do.body.12
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.13

do.cond.13:                                       ; preds = %do.end
  br label %do.end.14

do.end.14:                                        ; preds = %do.cond.13
  br label %if.end.15

if.end.15:                                        ; preds = %do.end.14
  br label %do.cond.16

do.cond.16:                                       ; preds = %if.end.15
  br label %do.end.17

do.end.17:                                        ; preds = %do.cond.16
  %20 = load i64, i64* %sep_name.addr, align 8, !tbaa !65
  %21 = load %struct.gs_device_n_attributes_s*, %struct.gs_device_n_attributes_s** %patt, align 8, !tbaa !1
  %colorant_name = getelementptr inbounds %struct.gs_device_n_attributes_s, %struct.gs_device_n_attributes_s* %21, i32 0, i32 1
  store i64 %20, i64* %colorant_name, align 8, !tbaa !147
  %22 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color18 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %22, i32 0, i32 69
  %arrayidx19 = getelementptr inbounds [2 x %struct.anon.1], [2 x %struct.anon.1]* %color18, i32 0, i64 0
  %color_space20 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %arrayidx19, i32 0, i32 0
  %23 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space20, align 8, !tbaa !145
  %24 = load %struct.gs_device_n_attributes_s*, %struct.gs_device_n_attributes_s** %patt, align 8, !tbaa !1
  %cspace = getelementptr inbounds %struct.gs_device_n_attributes_s, %struct.gs_device_n_attributes_s* %24, i32 0, i32 2
  store %struct.gs_color_space_s* %23, %struct.gs_color_space_s** %cspace, align 8, !tbaa !136
  %25 = load %struct.gs_device_n_attributes_s*, %struct.gs_device_n_attributes_s** %patt, align 8, !tbaa !1
  %cspace21 = getelementptr inbounds %struct.gs_device_n_attributes_s, %struct.gs_device_n_attributes_s* %25, i32 0, i32 2
  %26 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %cspace21, align 8, !tbaa !136
  call void @rc_increment_cs(%struct.gs_color_space_s* %26) #4
  %27 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pdevncs, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %27, i32 0, i32 7
  %device_n = bitcast %union.anon* %params to %struct.gs_device_n_params_s*
  %colorants = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n, i32 0, i32 3
  %28 = load %struct.gs_device_n_attributes_s*, %struct.gs_device_n_attributes_s** %colorants, align 8, !tbaa !130
  %29 = load %struct.gs_device_n_attributes_s*, %struct.gs_device_n_attributes_s** %patt, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gs_device_n_attributes_s, %struct.gs_device_n_attributes_s* %29, i32 0, i32 3
  store %struct.gs_device_n_attributes_s* %28, %struct.gs_device_n_attributes_s** %next, align 8, !tbaa !134
  %30 = load %struct.gs_device_n_attributes_s*, %struct.gs_device_n_attributes_s** %patt, align 8, !tbaa !1
  %31 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pdevncs, align 8, !tbaa !1
  %params22 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %31, i32 0, i32 7
  %device_n23 = bitcast %union.anon* %params22 to %struct.gs_device_n_params_s*
  %colorants24 = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n23, i32 0, i32 3
  store %struct.gs_device_n_attributes_s* %30, %struct.gs_device_n_attributes_s** %colorants24, align 8, !tbaa !130
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.17, %if.then.6, %if.then.2, %if.then
  %32 = bitcast %struct.gs_device_n_attributes_s** %patt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #2
  %33 = bitcast %struct.gs_color_space_s** %pdevncs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #2
  %34 = load i32, i32* %retval
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define i32 @using_alt_color_space(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color_component_map = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 50
  %use_alt_cspace = getelementptr inbounds %struct.gs_devicen_color_map_s, %struct.gs_devicen_color_map_s* %color_component_map, i32 0, i32 0
  %1 = load i32, i32* %use_alt_cspace, align 4, !tbaa !148
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @map_devn_using_function(float* %in, float* %out, %struct.gs_imager_state_s* %pis, i8* %data) #0 {
entry:
  %in.addr = alloca float*, align 8
  %out.addr = alloca float*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %data.addr = alloca i8*, align 8
  %pfn = alloca %struct.gs_function_s*, align 8
  store float* %in, float** %in.addr, align 8, !tbaa !1
  store float* %out, float** %out.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_function_s** %pfn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_function_s*
  store %struct.gs_function_s* %2, %struct.gs_function_s** %pfn, align 8, !tbaa !1
  %3 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %3, i32 0, i32 0
  %procs = getelementptr inbounds %struct.gs_function_head_s, %struct.gs_function_head_s* %head, i32 0, i32 1
  %evaluate = getelementptr inbounds %struct.gs_function_procs_s, %struct.gs_function_procs_s* %procs, i32 0, i32 0
  %4 = load i32 (%struct.gs_function_s*, float*, float*)*, i32 (%struct.gs_function_s*, float*, float*)** %evaluate, align 8, !tbaa !149
  %5 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn, align 8, !tbaa !1
  %6 = load float*, float** %in.addr, align 8, !tbaa !1
  %7 = load float*, float** %out.addr, align 8, !tbaa !1
  %call = call i32 %4(%struct.gs_function_s* %5, float* %6, float* %7) #4
  %8 = bitcast %struct.gs_function_s** %pfn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gs_cspace_set_devn_function(%struct.gs_color_space_s* %pcspace, %struct.gs_function_s* %pfn) #0 {
entry:
  %retval = alloca i32, align 4
  %pcspace.addr = alloca %struct.gs_color_space_s*, align 8
  %pfn.addr = alloca %struct.gs_function_s*, align 8
  %pimap = alloca %struct.gs_device_n_map_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_color_space_s* %pcspace, %struct.gs_color_space_s** %pcspace.addr, align 8, !tbaa !1
  store %struct.gs_function_s* %pfn, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_device_n_map_s** %pimap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace.addr, align 8, !tbaa !1
  %call = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %1) #4
  %cmp = icmp ne i32 %call, 4
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %2, i32 0, i32 1
  %m = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %params, i32 0, i32 0
  %3 = load i32, i32* %m, align 4, !tbaa !154
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace.addr, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %4, i32 0, i32 7
  %device_n = bitcast %union.anon* %params1 to %struct.gs_device_n_params_s*
  %num_components = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n, i32 0, i32 1
  %5 = load i32, i32* %num_components, align 4, !tbaa !5
  %cmp2 = icmp ne i32 %3, %5
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %6 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !1
  %params4 = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %6, i32 0, i32 1
  %n = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %params4, i32 0, i32 2
  %7 = load i32, i32* %n, align 4, !tbaa !155
  %8 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace.addr, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %8, i32 0, i32 3
  %9 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !27
  %call5 = call i32 @gs_color_space_num_components(%struct.gs_color_space_s* %9) #4
  %cmp6 = icmp ne i32 %7, %call5
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.3
  %10 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace.addr, align 8, !tbaa !1
  %params7 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %10, i32 0, i32 7
  %device_n8 = bitcast %union.anon* %params7 to %struct.gs_device_n_params_s*
  %map = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n8, i32 0, i32 2
  %11 = load %struct.gs_device_n_map_s*, %struct.gs_device_n_map_s** %map, align 8, !tbaa !35
  store %struct.gs_device_n_map_s* %11, %struct.gs_device_n_map_s** %pimap, align 8, !tbaa !1
  %12 = load %struct.gs_device_n_map_s*, %struct.gs_device_n_map_s** %pimap, align 8, !tbaa !1
  %tint_transform = getelementptr inbounds %struct.gs_device_n_map_s, %struct.gs_device_n_map_s* %12, i32 0, i32 1
  store i32 (float*, float*, %struct.gs_imager_state_s*, i8*)* @map_devn_using_function, i32 (float*, float*, %struct.gs_imager_state_s*, i8*)** %tint_transform, align 8, !tbaa !73
  %13 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !1
  %14 = bitcast %struct.gs_function_s* %13 to i8*
  %15 = load %struct.gs_device_n_map_s*, %struct.gs_device_n_map_s** %pimap, align 8, !tbaa !1
  %tint_transform_data = getelementptr inbounds %struct.gs_device_n_map_s, %struct.gs_device_n_map_s* %15, i32 0, i32 2
  store i8* %14, i8** %tint_transform_data, align 8, !tbaa !74
  %16 = load %struct.gs_device_n_map_s*, %struct.gs_device_n_map_s** %pimap, align 8, !tbaa !1
  %cache_valid = getelementptr inbounds %struct.gs_device_n_map_s, %struct.gs_device_n_map_s* %16, i32 0, i32 3
  store i32 0, i32* %cache_valid, align 4, !tbaa !71
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %17 = bitcast %struct.gs_device_n_map_s** %pimap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #2
  %18 = load i32, i32* %retval
  ret i32 %18
}

declare i32 @gs_color_space_get_index(%struct.gs_color_space_s*) #1

declare i32 @gs_color_space_num_components(%struct.gs_color_space_s*) #1

; Function Attrs: nounwind uwtable
define %struct.gs_function_s* @gs_cspace_get_devn_function(%struct.gs_color_space_s* %pcspace) #0 {
entry:
  %retval = alloca %struct.gs_function_s*, align 8
  %pcspace.addr = alloca %struct.gs_color_space_s*, align 8
  store %struct.gs_color_space_s* %pcspace, %struct.gs_color_space_s** %pcspace.addr, align 8, !tbaa !1
  %0 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace.addr, align 8, !tbaa !1
  %call = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %0) #4
  %cmp = icmp eq i32 %call, 4
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %1, i32 0, i32 7
  %device_n = bitcast %union.anon* %params to %struct.gs_device_n_params_s*
  %map = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n, i32 0, i32 2
  %2 = load %struct.gs_device_n_map_s*, %struct.gs_device_n_map_s** %map, align 8, !tbaa !35
  %tint_transform = getelementptr inbounds %struct.gs_device_n_map_s, %struct.gs_device_n_map_s* %2, i32 0, i32 1
  %3 = load i32 (float*, float*, %struct.gs_imager_state_s*, i8*)*, i32 (float*, float*, %struct.gs_imager_state_s*, i8*)** %tint_transform, align 8, !tbaa !73
  %cmp1 = icmp eq i32 (float*, float*, %struct.gs_imager_state_s*, i8*)* %3, @map_devn_using_function
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace.addr, align 8, !tbaa !1
  %params2 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %4, i32 0, i32 7
  %device_n3 = bitcast %union.anon* %params2 to %struct.gs_device_n_params_s*
  %map4 = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n3, i32 0, i32 2
  %5 = load %struct.gs_device_n_map_s*, %struct.gs_device_n_map_s** %map4, align 8, !tbaa !35
  %tint_transform_data = getelementptr inbounds %struct.gs_device_n_map_s, %struct.gs_device_n_map_s* %5, i32 0, i32 2
  %6 = load i8*, i8** %tint_transform_data, align 8, !tbaa !74
  %7 = bitcast i8* %6 to %struct.gs_function_s*
  store %struct.gs_function_s* %7, %struct.gs_function_s** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  store %struct.gs_function_s* null, %struct.gs_function_s** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load %struct.gs_function_s*, %struct.gs_function_s** %retval
  ret %struct.gs_function_s* %8
}

; Function Attrs: nounwind uwtable
define i32 @gx_serialize_device_n_map(%struct.gs_color_space_s* %pcs, %struct.gs_device_n_map_s* %m, %struct.stream_s* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %m.addr = alloca %struct.gs_device_n_map_s*, align 8
  %s.addr = alloca %struct.stream_s*, align 8
  %pfn = alloca %struct.gs_function_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_device_n_map_s* %m, %struct.gs_device_n_map_s** %m.addr, align 8, !tbaa !1
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_function_s** %pfn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_device_n_map_s*, %struct.gs_device_n_map_s** %m.addr, align 8, !tbaa !1
  %tint_transform = getelementptr inbounds %struct.gs_device_n_map_s, %struct.gs_device_n_map_s* %1, i32 0, i32 1
  %2 = load i32 (float*, float*, %struct.gs_imager_state_s*, i8*)*, i32 (float*, float*, %struct.gs_imager_state_s*, i8*)** %tint_transform, align 8, !tbaa !73
  %cmp = icmp ne i32 (float*, float*, %struct.gs_imager_state_s*, i8*)* %2, @map_devn_using_function
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.gs_device_n_map_s*, %struct.gs_device_n_map_s** %m.addr, align 8, !tbaa !1
  %tint_transform_data = getelementptr inbounds %struct.gs_device_n_map_s, %struct.gs_device_n_map_s* %3, i32 0, i32 2
  %4 = load i8*, i8** %tint_transform_data, align 8, !tbaa !74
  %5 = bitcast i8* %4 to %struct.gs_function_s*
  store %struct.gs_function_s* %5, %struct.gs_function_s** %pfn, align 8, !tbaa !1
  %6 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %6, i32 0, i32 0
  %procs = getelementptr inbounds %struct.gs_function_head_s, %struct.gs_function_head_s* %head, i32 0, i32 1
  %serialize = getelementptr inbounds %struct.gs_function_procs_s, %struct.gs_function_procs_s* %procs, i32 0, i32 7
  %7 = load i32 (%struct.gs_function_s*, %struct.stream_s*)*, i32 (%struct.gs_function_s*, %struct.stream_s*)** %serialize, align 8, !tbaa !156
  %8 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn, align 8, !tbaa !1
  %9 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 %7(%struct.gs_function_s* %8, %struct.stream_s* %9) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %10 = bitcast %struct.gs_function_s** %pfn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #2
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @cs_DeviceN_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %params = alloca %struct.gs_device_n_params_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !8
  store i32 %index, i32* %index.addr, align 4, !tbaa !8
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = load i32, i32* %index.addr, align 4, !tbaa !8
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.7
    i32 2, label %sw.bb.11
  ]

sw.default:                                       ; preds = %entry
  %1 = bitcast %struct.gs_device_n_params_s** %params to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %3 = bitcast i8* %2 to %struct.gs_color_space_s*
  %params1 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %3, i32 0, i32 7
  %device_n = bitcast %union.anon* %params1 to %struct.gs_device_n_params_s*
  store %struct.gs_device_n_params_s* %device_n, %struct.gs_device_n_params_s** %params, align 8, !tbaa !1
  %4 = load i32, i32* %index.addr, align 4, !tbaa !8
  %sub = sub nsw i32 %4, 3
  %5 = load %struct.gs_device_n_params_s*, %struct.gs_device_n_params_s** %params, align 8, !tbaa !1
  %num_components = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %5, i32 0, i32 1
  %6 = load i32, i32* %num_components, align 4, !tbaa !5
  %cmp = icmp ult i32 %sub, %6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.default
  %7 = load i32, i32* %index.addr, align 4, !tbaa !8
  %sub2 = sub nsw i32 %7, 3
  %idxprom = sext i32 %sub2 to i64
  %8 = load %struct.gs_device_n_params_s*, %struct.gs_device_n_params_s** %params, align 8, !tbaa !1
  %names = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %8, i32 0, i32 0
  %9 = load i64*, i64** %names, align 8, !tbaa !46
  %arrayidx = getelementptr inbounds i64, i64* %9, i64 %idxprom
  %10 = load i64, i64* %arrayidx, align 8, !tbaa !65
  %conv = trunc i64 %10 to i32
  %11 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %size3 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %11, i32 0, i32 1
  store i32 %conv, i32* %size3, align 4, !tbaa !157
  store %struct.gs_ptr_procs_s* @ptr_name_index_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %sw.default
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %12 = bitcast %struct.gs_device_n_params_s** %params to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #2
  br label %return

sw.bb:                                            ; preds = %entry
  %13 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %14 = bitcast i8* %13 to %struct.gs_color_space_s*
  %params4 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %14, i32 0, i32 7
  %device_n5 = bitcast %union.anon* %params4 to %struct.gs_device_n_params_s*
  %names6 = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n5, i32 0, i32 0
  %15 = load i64*, i64** %names6, align 8, !tbaa !46
  %16 = bitcast i64* %15 to i8*
  %17 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %17, i32 0, i32 0
  store i8* %16, i8** %ptr, align 8, !tbaa !159
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.7:                                          ; preds = %entry
  %18 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %19 = bitcast i8* %18 to %struct.gs_color_space_s*
  %params8 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %19, i32 0, i32 7
  %device_n9 = bitcast %union.anon* %params8 to %struct.gs_device_n_params_s*
  %map = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n9, i32 0, i32 2
  %20 = load %struct.gs_device_n_map_s*, %struct.gs_device_n_map_s** %map, align 8, !tbaa !35
  %21 = bitcast %struct.gs_device_n_map_s* %20 to i8*
  %22 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr10 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %22, i32 0, i32 0
  store i8* %21, i8** %ptr10, align 8, !tbaa !159
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.11:                                         ; preds = %entry
  %23 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %24 = bitcast i8* %23 to %struct.gs_color_space_s*
  %params12 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %24, i32 0, i32 7
  %device_n13 = bitcast %union.anon* %params12 to %struct.gs_device_n_params_s*
  %colorants = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n13, i32 0, i32 3
  %25 = load %struct.gs_device_n_attributes_s*, %struct.gs_device_n_attributes_s** %colorants, align 8, !tbaa !130
  %26 = bitcast %struct.gs_device_n_attributes_s* %25 to i8*
  %27 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr14 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %27, i32 0, i32 0
  store i8* %26, i8** %ptr14, align 8, !tbaa !159
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

return:                                           ; preds = %sw.bb.11, %sw.bb.7, %sw.bb, %cleanup
  %28 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %28
}

; Function Attrs: nounwind uwtable
define internal void @cs_DeviceN_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !8
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gc_state_s* %0 to %struct.gc_procs_common_s**
  %2 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %1, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %2, i32 0, i32 0
  %3 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !160
  %4 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %5 = bitcast i8* %4 to %struct.gs_color_space_s*
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %5, i32 0, i32 7
  %device_n = bitcast %union.anon* %params to %struct.gs_device_n_params_s*
  %names = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n, i32 0, i32 0
  %6 = load i64*, i64** %names, align 8, !tbaa !46
  %7 = bitcast i64* %6 to i8*
  %8 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %3(i8* %7, %struct.gc_state_s* %8) #4
  %9 = bitcast i8* %call to i64*
  %10 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %11 = bitcast i8* %10 to %struct.gs_color_space_s*
  %params1 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %11, i32 0, i32 7
  %device_n2 = bitcast %union.anon* %params1 to %struct.gs_device_n_params_s*
  %names3 = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n2, i32 0, i32 0
  store i64* %9, i64** %names3, align 8, !tbaa !46
  %12 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %13 = bitcast %struct.gc_state_s* %12 to %struct.gc_procs_common_s**
  %14 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %13, align 8, !tbaa !1
  %reloc_struct_ptr4 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %14, i32 0, i32 0
  %15 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr4, align 8, !tbaa !160
  %16 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %17 = bitcast i8* %16 to %struct.gs_color_space_s*
  %params5 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %17, i32 0, i32 7
  %device_n6 = bitcast %union.anon* %params5 to %struct.gs_device_n_params_s*
  %map = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n6, i32 0, i32 2
  %18 = load %struct.gs_device_n_map_s*, %struct.gs_device_n_map_s** %map, align 8, !tbaa !35
  %19 = bitcast %struct.gs_device_n_map_s* %18 to i8*
  %20 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call7 = call i8* %15(i8* %19, %struct.gc_state_s* %20) #4
  %21 = bitcast i8* %call7 to %struct.gs_device_n_map_s*
  %22 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %23 = bitcast i8* %22 to %struct.gs_color_space_s*
  %params8 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %23, i32 0, i32 7
  %device_n9 = bitcast %union.anon* %params8 to %struct.gs_device_n_params_s*
  %map10 = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n9, i32 0, i32 2
  store %struct.gs_device_n_map_s* %21, %struct.gs_device_n_map_s** %map10, align 8, !tbaa !35
  %24 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %25 = bitcast %struct.gc_state_s* %24 to %struct.gc_procs_common_s**
  %26 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %25, align 8, !tbaa !1
  %reloc_struct_ptr11 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %26, i32 0, i32 0
  %27 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr11, align 8, !tbaa !160
  %28 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %29 = bitcast i8* %28 to %struct.gs_color_space_s*
  %params12 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %29, i32 0, i32 7
  %device_n13 = bitcast %union.anon* %params12 to %struct.gs_device_n_params_s*
  %colorants = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n13, i32 0, i32 3
  %30 = load %struct.gs_device_n_attributes_s*, %struct.gs_device_n_attributes_s** %colorants, align 8, !tbaa !130
  %31 = bitcast %struct.gs_device_n_attributes_s* %30 to i8*
  %32 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call14 = call i8* %27(i8* %31, %struct.gc_state_s* %32) #4
  %33 = bitcast i8* %call14 to %struct.gs_device_n_attributes_s*
  %34 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %35 = bitcast i8* %34 to %struct.gs_color_space_s*
  %params15 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %35, i32 0, i32 7
  %device_n16 = bitcast %union.anon* %params15 to %struct.gs_device_n_params_s*
  %colorants17 = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n16, i32 0, i32 3
  store %struct.gs_device_n_attributes_s* %33, %struct.gs_device_n_attributes_s** %colorants17, align 8, !tbaa !130
  ret void
}

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

declare i32 @gs_color_space_is_PSCIE(%struct.gs_color_space_s*) #1

declare i32 @gs_colorspace_set_icc_equivalent(%struct.gs_color_space_s*, i32*, %struct.gs_memory_s*) #1

declare i32 @gsicc_transform_named_color(float*, %struct.gsicc_namedcolor_s*, i32, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.cmm_profile_s*, %struct.gsicc_rendering_param_s*) #1

declare i32 @rescale_cie_colors(%struct.gs_color_space_s*, %struct.gs_client_color_s*) #1

declare signext i16 @gx_unit_frac(float) #1

; Function Attrs: nounwind uwtable
define internal i32 @check_DeviceN_component_names(%struct.gs_color_space_s* %pcs, %struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %names = alloca i64*, align 8
  %num_comp = alloca i32, align 4
  %i = alloca i32, align 4
  %colorant_number = alloca i32, align 4
  %pname = alloca i8*, align 8
  %name_size = alloca i32, align 4
  %pcolor_component_map = alloca %struct.gs_devicen_color_map_s*, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  %non_match = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast i64** %names to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %1, i32 0, i32 7
  %device_n = bitcast %union.anon* %params to %struct.gs_device_n_params_s*
  %names1 = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n, i32 0, i32 0
  %2 = load i64*, i64** %names1, align 8, !tbaa !46
  store i64* %2, i64** %names, align 8, !tbaa !1
  %3 = bitcast i32* %num_comp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params2 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %4, i32 0, i32 7
  %device_n3 = bitcast %union.anon* %params2 to %struct.gs_device_n_params_s*
  %num_components = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n3, i32 0, i32 1
  %5 = load i32, i32* %num_components, align 4, !tbaa !5
  store i32 %5, i32* %num_comp, align 4, !tbaa !8
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %colorant_number to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i8** %pname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = bitcast i32* %name_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast %struct.gs_devicen_color_map_s** %pcolor_component_map to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color_component_map = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %11, i32 0, i32 50
  store %struct.gs_devicen_color_map_s* %color_component_map, %struct.gs_devicen_color_map_s** %pcolor_component_map, align 8, !tbaa !1
  %12 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %13, i32 0, i32 78
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !112
  store %struct.gx_device_s* %14, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %15 = bitcast i32* %non_match to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  store i32 0, i32* %non_match, align 4, !tbaa !8
  %16 = load i32, i32* %num_comp, align 4, !tbaa !8
  %17 = load %struct.gs_devicen_color_map_s*, %struct.gs_devicen_color_map_s** %pcolor_component_map, align 8, !tbaa !1
  %num_components4 = getelementptr inbounds %struct.gs_devicen_color_map_s, %struct.gs_devicen_color_map_s* %17, i32 0, i32 2
  store i32 %16, i32* %num_components4, align 4, !tbaa !162
  %18 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %18, i32 0, i32 2
  %19 = load i64, i64* %id, align 8, !tbaa !163
  %20 = load %struct.gs_devicen_color_map_s*, %struct.gs_devicen_color_map_s** %pcolor_component_map, align 8, !tbaa !1
  %cspace_id = getelementptr inbounds %struct.gs_devicen_color_map_s, %struct.gs_devicen_color_map_s* %20, i32 0, i32 4
  store i64 %19, i64* %cspace_id, align 8, !tbaa !164
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %21, i32 0, i32 11
  %num_components5 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %22 = load i32, i32* %num_components5, align 4, !tbaa !36
  %23 = load %struct.gs_devicen_color_map_s*, %struct.gs_devicen_color_map_s** %pcolor_component_map, align 8, !tbaa !1
  %num_colorants = getelementptr inbounds %struct.gs_devicen_color_map_s, %struct.gs_devicen_color_map_s* %23, i32 0, i32 3
  store i32 %22, i32* %num_colorants, align 4, !tbaa !165
  %24 = load %struct.gs_devicen_color_map_s*, %struct.gs_devicen_color_map_s** %pcolor_component_map, align 8, !tbaa !1
  %sep_type = getelementptr inbounds %struct.gs_devicen_color_map_s, %struct.gs_devicen_color_map_s* %24, i32 0, i32 1
  store i32 2, i32* %sep_type, align 4, !tbaa !166
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %color_info6 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %25, i32 0, i32 11
  %polarity = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info6, i32 0, i32 2
  %26 = load i32, i32* %polarity, align 4, !tbaa !116
  %cmp = icmp eq i32 %26, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %27 = load %struct.gs_devicen_color_map_s*, %struct.gs_devicen_color_map_s** %pcolor_component_map, align 8, !tbaa !1
  %use_alt_cspace = getelementptr inbounds %struct.gs_devicen_color_map_s, %struct.gs_devicen_color_map_s* %27, i32 0, i32 0
  store i32 1, i32* %use_alt_cspace, align 4, !tbaa !114
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %non_match, align 4, !tbaa !8
  store i32 0, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %28 = load i32, i32* %i, align 4, !tbaa !8
  %29 = load i32, i32* %num_comp, align 4, !tbaa !8
  %cmp7 = icmp slt i32 %28, %29
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params8 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %30, i32 0, i32 7
  %device_n9 = bitcast %union.anon* %params8 to %struct.gs_device_n_params_s*
  %get_colorname_string = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n9, i32 0, i32 5
  %31 = load i32 (%struct.gs_memory_s*, i64, i8**, i32*)*, i32 (%struct.gs_memory_s*, i64, i8**, i32*)** %get_colorname_string, align 8, !tbaa !64
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %32, i32 0, i32 3
  %33 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !60
  %34 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom = sext i32 %34 to i64
  %35 = load i64*, i64** %names, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %35, i64 %idxprom
  %36 = load i64, i64* %arrayidx, align 8, !tbaa !65
  %call = call i32 %31(%struct.gs_memory_s* %33, i64 %36, i8** %pname, i32* %name_size) #4
  %37 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %37, i32 0, i32 42
  %get_color_comp_index = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 50
  %38 = load i32 (%struct.gx_device_s*, i8*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32)** %get_color_comp_index, align 8, !tbaa !167
  %39 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %40 = load i8*, i8** %pname, align 8, !tbaa !1
  %41 = load i32, i32* %name_size, align 4, !tbaa !8
  %call10 = call i32 %38(%struct.gx_device_s* %39, i8* %40, i32 %41, i32 1) #4
  store i32 %call10, i32* %colorant_number, align 4, !tbaa !8
  %42 = load i32, i32* %colorant_number, align 4, !tbaa !8
  %cmp11 = icmp sge i32 %42, 0
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %for.body
  %43 = load i32, i32* %colorant_number, align 4, !tbaa !8
  %cmp13 = icmp eq i32 %43, 64
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.12
  br label %cond.end

cond.false:                                       ; preds = %if.then.12
  %44 = load i32, i32* %colorant_number, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %44, %cond.false ]
  %45 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom14 = sext i32 %45 to i64
  %46 = load %struct.gs_devicen_color_map_s*, %struct.gs_devicen_color_map_s** %pcolor_component_map, align 8, !tbaa !1
  %color_map = getelementptr inbounds %struct.gs_devicen_color_map_s, %struct.gs_devicen_color_map_s* %46, i32 0, i32 5
  %arrayidx15 = getelementptr inbounds [64 x i32], [64 x i32]* %color_map, i32 0, i64 %idxprom14
  store i32 %cond, i32* %arrayidx15, align 4, !tbaa !8
  br label %if.end.25

if.else:                                          ; preds = %for.body
  %47 = load i8*, i8** %pname, align 8, !tbaa !1
  %48 = load i32, i32* %name_size, align 4, !tbaa !8
  %conv = zext i32 %48 to i64
  %call16 = call i32 @strncmp(i8* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i64 %conv) #5
  %cmp17 = icmp ne i32 %call16, 0
  br i1 %cmp17, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %if.else
  store i32 1, i32* %non_match, align 4, !tbaa !8
  br label %if.end.24

if.else.20:                                       ; preds = %if.else
  %49 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom21 = sext i32 %49 to i64
  %50 = load %struct.gs_devicen_color_map_s*, %struct.gs_devicen_color_map_s** %pcolor_component_map, align 8, !tbaa !1
  %color_map22 = getelementptr inbounds %struct.gs_devicen_color_map_s, %struct.gs_devicen_color_map_s* %50, i32 0, i32 5
  %arrayidx23 = getelementptr inbounds [64 x i32], [64 x i32]* %color_map22, i32 0, i64 %idxprom21
  store i32 -1, i32* %arrayidx23, align 4, !tbaa !8
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.20, %if.then.19
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %cond.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.25
  %51 = load i32, i32* %i, align 4, !tbaa !8
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %52 = load i32, i32* %non_match, align 4, !tbaa !8
  %53 = load %struct.gs_devicen_color_map_s*, %struct.gs_devicen_color_map_s** %pcolor_component_map, align 8, !tbaa !1
  %use_alt_cspace26 = getelementptr inbounds %struct.gs_devicen_color_map_s, %struct.gs_devicen_color_map_s* %53, i32 0, i32 0
  store i32 %52, i32* %use_alt_cspace26, align 4, !tbaa !114
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %54 = bitcast i32* %non_match to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #2
  %55 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #2
  %56 = bitcast %struct.gs_devicen_color_map_s** %pcolor_component_map to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #2
  %57 = bitcast i32* %name_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #2
  %58 = bitcast i8** %pname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #2
  %59 = bitcast i32* %colorant_number to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #2
  %60 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #2
  %61 = bitcast i32* %num_comp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #2
  %62 = bitcast i64** %names to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #2
  %63 = load i32, i32* %retval
  ret i32 %63
}

declare %struct.cmm_profile_s* @gsicc_finddevicen(%struct.gs_color_space_s*, %struct.gsicc_manager_s*) #1

declare i32 @gs_cspace_build_ICC(%struct.gs_color_space_s**, i8*, %struct.gs_memory_s*) #1

declare void @rc_decrement_cs(%struct.gs_color_space_s*, i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

declare i32 @gx_simulated_set_overprint(%struct.gs_color_space_s*, %struct.gs_state_s*) #1

declare i32 @gx_spot_colors_set_overprint(%struct.gs_color_space_s*, %struct.gs_state_s*) #1

declare i32 @gs_state_update_overprint(%struct.gs_state_s*, %struct.gs_overprint_params_s*) #1

declare i32 @gx_serialize_cspace_type(%struct.gs_color_space_s*, %struct.stream_s*) #1

declare i32 @sputs(%struct.stream_s*, i8*, i32, i32*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !7, i64 8}
!6 = !{!"gs_device_n_params_s", !2, i64 0, !7, i64 8, !2, i64 16, !2, i64 24, !7, i64 32, !2, i64 40}
!7 = !{!"int", !3, i64 0}
!8 = !{!7, !7, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !3, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"double", !3, i64 0}
!13 = !{!14, !7, i64 1024}
!14 = !{!"gs_imager_state_s", !7, i64 0, !2, i64 8, !2, i64 16, !15, i64 24, !7, i64 128, !18, i64 132, !7, i64 168, !19, i64 176, !19, i64 192, !7, i64 208, !7, i64 212, !20, i64 216, !3, i64 220, !21, i64 224, !21, i64 228, !22, i64 232, !23, i64 240, !7, i64 248, !7, i64 252, !7, i64 256, !2, i64 264, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !7, i64 288, !7, i64 292, !10, i64 296, !24, i64 300, !7, i64 308, !7, i64 312, !7, i64 316, !10, i64 320, !7, i64 324, !7, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !7, i64 408, !2, i64 416, !2, i64 424, !25, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !26, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !26, i64 1336}
!15 = !{!"gx_line_params_s", !10, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !7, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !7, i64 36, !16, i64 40, !17, i64 64}
!16 = !{!"gs_matrix_s", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20}
!17 = !{!"gx_dash_params_s", !2, i64 0, !7, i64 8, !10, i64 12, !7, i64 16, !10, i64 20, !7, i64 24, !7, i64 28, !10, i64 32}
!18 = !{!"gs_matrix_fixed_s", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !7, i64 24, !7, i64 28, !7, i64 32}
!19 = !{!"gs_point_s", !12, i64 0, !12, i64 8}
!20 = !{!"short", !3, i64 0}
!21 = !{!"gs_transparency_source_s", !10, i64 0}
!22 = !{!"gs_xstate_trans_flags", !7, i64 0, !7, i64 4}
!23 = !{!"long", !3, i64 0}
!24 = !{!"gs_fixed_point_s", !7, i64 0, !7, i64 4}
!25 = !{!"gx_transfer_s", !7, i64 0, !2, i64 8, !7, i64 16, !2, i64 24, !7, i64 32, !2, i64 40, !7, i64 48, !2, i64 56}
!26 = !{!"gs_devicen_color_map_s", !7, i64 0, !3, i64 4, !7, i64 8, !7, i64 12, !23, i64 16, !3, i64 24}
!27 = !{!28, !2, i64 40}
!28 = !{!"gs_color_space_s", !2, i64 0, !29, i64 8, !23, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !3, i64 72}
!29 = !{!"rc_header_s", !23, i64 0, !2, i64 8, !2, i64 16}
!30 = !{!28, !2, i64 48}
!31 = !{!14, !2, i64 8}
!32 = !{!28, !2, i64 0}
!33 = !{!34, !2, i64 48}
!34 = !{!"gs_color_space_type_s", !3, i64 0, !7, i64 4, !7, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128}
!35 = !{!6, !2, i64 16}
!36 = !{!37, !7, i64 100}
!37 = !{!"gx_device_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !29, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !38, i64 96, !40, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !23, i64 928, !23, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !23, i64 968, !23, i64 976, !41, i64 984, !7, i64 1052, !7, i64 1056, !42, i64 1064, !2, i64 1104, !3, i64 1112, !44, i64 1120, !45, i64 1144}
!38 = !{!"gx_device_color_info_s", !7, i64 0, !7, i64 4, !3, i64 8, !20, i64 12, !3, i64 14, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !39, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !23, i64 704, !7, i64 712}
!39 = !{!"gx_device_anti_alias_info_s", !7, i64 0, !7, i64 4}
!40 = !{!"gx_device_cached_colors_s", !23, i64 0, !23, i64 8}
!41 = !{!"gx_stroked_gradient_recognizer_s", !7, i64 0, !3, i64 4, !3, i64 36}
!42 = !{!"gdev_space_params_s", !23, i64 0, !23, i64 8, !43, i64 16, !7, i64 32, !3, i64 36}
!43 = !{!"gx_band_params_s", !7, i64 0, !7, i64 4, !23, i64 8}
!44 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!45 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!46 = !{!6, !2, i64 0}
!47 = !{!14, !2, i64 336}
!48 = !{!49, !2, i64 0}
!49 = !{!"gsicc_manager_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !7, i64 64, !2, i64 72, !2, i64 80, !29, i64 88}
!50 = !{!14, !7, i64 328}
!51 = !{!52, !3, i64 4}
!52 = !{!"gsicc_rendering_param_s", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !7, i64 20}
!53 = !{!37, !3, i64 1112}
!54 = !{!52, !3, i64 12}
!55 = !{!52, !7, i64 20}
!56 = !{!52, !3, i64 8}
!57 = !{!14, !7, i64 324}
!58 = !{!52, !3, i64 0}
!59 = !{!52, !3, i64 16}
!60 = !{!37, !2, i64 24}
!61 = !{!62, !2, i64 64}
!62 = !{!"gs_memory_s", !2, i64 0, !63, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!63 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!64 = !{!6, !2, i64 40}
!65 = !{!23, !23, i64 0}
!66 = !{!67, !2, i64 0}
!67 = !{!"gsicc_namedcolor_s", !2, i64 0, !7, i64 8, !3, i64 12}
!68 = !{!67, !7, i64 8}
!69 = !{!62, !2, i64 24}
!70 = !{!20, !20, i64 0}
!71 = !{!72, !7, i64 40}
!72 = !{!"gs_device_n_map_s", !29, i64 0, !2, i64 24, !2, i64 32, !7, i64 40, !3, i64 44, !3, i64 300}
!73 = !{!72, !2, i64 24}
!74 = !{!72, !2, i64 32}
!75 = !{!34, !2, i64 40}
!76 = !{!28, !2, i64 64}
!77 = !{!78, !3, i64 16}
!78 = !{!"cmm_profile_s", !3, i64 0, !3, i64 1, !7, i64 4, !7, i64 8, !3, i64 12, !3, i64 16, !79, i64 20, !23, i64 144, !7, i64 152, !3, i64 156, !7, i64 216, !7, i64 220, !7, i64 224, !52, i64 228, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !29, i64 288, !7, i64 312, !2, i64 320, !2, i64 328, !2, i64 336}
!79 = !{!"gs_range_icc_s", !3, i64 0}
!80 = !{!78, !7, i64 4}
!81 = !{!34, !2, i64 56}
!82 = !{!3, !3, i64 0}
!83 = !{!34, !2, i64 64}
!84 = !{!37, !2, i64 1680}
!85 = !{!86, !2, i64 176}
!86 = !{!"cmm_dev_profile_s", !3, i64 0, !2, i64 32, !2, i64 40, !2, i64 48, !3, i64 56, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !2, i64 176, !7, i64 184, !2, i64 192, !29, i64 200}
!87 = !{!88, !7, i64 32}
!88 = !{!"gsicc_namelist_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !7, i64 32}
!89 = !{!14, !2, i64 1016}
!90 = !{!91, !2, i64 40}
!91 = !{!"gx_color_map_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!92 = !{!34, !2, i64 24}
!93 = !{!78, !7, i64 216}
!94 = !{!34, !2, i64 72}
!95 = !{!96, !7, i64 360}
!96 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !97, i64 352, !7, i64 360, !98, i64 368, !100, i64 632}
!97 = !{!"gs_int_point_s", !7, i64 0, !7, i64 4}
!98 = !{!"gs_client_color_s", !2, i64 0, !99, i64 8}
!99 = !{!"gs_paint_color_s", !3, i64 0}
!100 = !{!"_mask", !101, i64 0, !23, i64 8, !2, i64 16}
!101 = !{!"mp_", !7, i64 0, !7, i64 4}
!102 = !{!103, !2, i64 336}
!103 = !{!"gs_state_s", !7, i64 0, !2, i64 8, !2, i64 16, !15, i64 24, !7, i64 128, !18, i64 132, !7, i64 168, !19, i64 176, !19, i64 192, !7, i64 208, !7, i64 212, !20, i64 216, !3, i64 220, !21, i64 224, !21, i64 228, !22, i64 232, !23, i64 240, !7, i64 248, !7, i64 252, !7, i64 256, !2, i64 264, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !7, i64 288, !7, i64 292, !10, i64 296, !24, i64 300, !7, i64 308, !7, i64 312, !7, i64 316, !10, i64 320, !7, i64 324, !7, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !7, i64 408, !2, i64 416, !2, i64 424, !25, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !26, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !26, i64 1336, !2, i64 1616, !16, i64 1624, !7, i64 1648, !16, i64 1652, !7, i64 1676, !2, i64 1680, !2, i64 1688, !2, i64 1696, !2, i64 1704, !23, i64 1712, !23, i64 1720, !2, i64 1728, !7, i64 1736, !3, i64 1744, !2, i64 1792, !2, i64 1800, !18, i64 1808, !7, i64 1844, !3, i64 1848, !3, i64 1852, !2, i64 1856, !7, i64 1864, !2, i64 1872, !2, i64 1880, !104, i64 1888}
!104 = !{!"gs_state_client_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!105 = !{!49, !2, i64 48}
!106 = !{!78, !23, i64 288}
!107 = !{!78, !2, i64 304}
!108 = !{!78, !2, i64 296}
!109 = !{!6, !7, i64 32}
!110 = !{!34, !2, i64 80}
!111 = !{!103, !2, i64 8}
!112 = !{!103, !2, i64 1872}
!113 = !{!37, !2, i64 1616}
!114 = !{!26, !7, i64 0}
!115 = !{!86, !7, i64 172}
!116 = !{!37, !3, i64 104}
!117 = !{!37, !3, i64 110}
!118 = !{!37, !7, i64 116}
!119 = !{!37, !7, i64 112}
!120 = !{!34, !3, i64 0}
!121 = !{!34, !2, i64 88}
!122 = !{!103, !7, i64 272}
!123 = !{!124, !7, i64 0}
!124 = !{!"gs_overprint_params_s", !7, i64 0, !7, i64 4, !7, i64 8, !23, i64 16, !20, i64 24, !7, i64 28}
!125 = !{!124, !7, i64 4}
!126 = !{!124, !23, i64 16}
!127 = !{!124, !20, i64 24}
!128 = !{!124, !7, i64 28}
!129 = !{!103, !7, i64 280}
!130 = !{!6, !2, i64 24}
!131 = !{!72, !23, i64 0}
!132 = !{!72, !2, i64 16}
!133 = !{!72, !2, i64 8}
!134 = !{!135, !2, i64 40}
!135 = !{!"gs_device_n_attributes_s", !29, i64 0, !23, i64 24, !2, i64 32, !2, i64 40}
!136 = !{!135, !2, i64 32}
!137 = !{!135, !23, i64 0}
!138 = !{!135, !2, i64 16}
!139 = !{!135, !2, i64 8}
!140 = !{!34, !2, i64 112}
!141 = !{!34, !7, i64 8}
!142 = !{!62, !2, i64 88}
!143 = !{!62, !2, i64 72}
!144 = !{!103, !2, i64 1616}
!145 = !{!146, !2, i64 0}
!146 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16}
!147 = !{!135, !23, i64 24}
!148 = !{!103, !7, i64 1024}
!149 = !{!150, !2, i64 8}
!150 = !{!"gs_function_s", !151, i64 0, !153, i64 72}
!151 = !{!"gs_function_head_s", !7, i64 0, !152, i64 8}
!152 = !{!"gs_function_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!153 = !{!"gs_function_params_s", !7, i64 0, !2, i64 8, !7, i64 16, !2, i64 24}
!154 = !{!150, !7, i64 72}
!155 = !{!150, !7, i64 88}
!156 = !{!150, !2, i64 64}
!157 = !{!158, !7, i64 8}
!158 = !{!"enum_ptr_s", !2, i64 0, !7, i64 8}
!159 = !{!158, !2, i64 0}
!160 = !{!161, !2, i64 0}
!161 = !{!"gc_procs_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!162 = !{!26, !7, i64 8}
!163 = !{!28, !23, i64 32}
!164 = !{!26, !23, i64 16}
!165 = !{!26, !7, i64 12}
!166 = !{!26, !3, i64 4}
!167 = !{!37, !2, i64 1544}
