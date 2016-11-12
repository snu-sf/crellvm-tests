; ModuleID = './gscspace.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, {}*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type opaque
%struct.gs_paint_color_s = type { [64 x float] }
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
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
%struct.gc_procs_common_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)* }
%struct.gs_param_string_s = type { i8*, i32, i32 }
%struct.gs_overprint_params_s = type { i32, i32, i32, i64, i16, i32 }

@.str = private unnamed_addr constant [15 x i8] c"gs_color_space\00", align 1
@st_color_space = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 120, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @color_space_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @color_space_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* @gs_cspace_final, i8* null }, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"gs_base_color_space\00", align 1
@st_base_color_space = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 120, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@gs_color_space_type_DeviceGray = internal constant %struct.gs_color_space_type_s { i32 0, i32 1, i32 1, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_base_color_space to %struct.gs_memory_struct_type_s*), i32 (%struct.gs_color_space_s*)* @gx_num_components_1, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)* @gx_init_paint_1, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)* @gx_restrict01_paint_1, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)* @gx_same_concrete_space, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)* @gx_concretize_DeviceGray, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* @gx_remap_concrete_DGray, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* @gx_remap_DeviceGray, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)* @gx_install_DeviceGray, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)* @gx_spot_colors_set_overprint, void (%struct.gs_color_space_s*)* null, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)* @gx_no_adjust_color_count, i32 (%struct.gs_color_space_s*, %struct.stream_s*)* @gx_serialize_cspace_type, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)* @gx_cspace_is_linear_default, i32 (%struct.gs_color_space_s*)* @gx_polarity_additive }, align 8
@gs_color_space_type_DeviceRGB = internal constant %struct.gs_color_space_type_s { i32 1, i32 1, i32 1, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_base_color_space to %struct.gs_memory_struct_type_s*), i32 (%struct.gs_color_space_s*)* @gx_num_components_3, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)* @gx_init_paint_3, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)* @gx_restrict01_paint_3, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)* @gx_same_concrete_space, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)* @gx_concretize_DeviceRGB, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* @gx_remap_concrete_DRGB, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* @gx_remap_DeviceRGB, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)* @gx_install_DeviceRGB, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)* @gx_spot_colors_set_overprint, void (%struct.gs_color_space_s*)* null, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)* @gx_no_adjust_color_count, i32 (%struct.gs_color_space_s*, %struct.stream_s*)* @gx_serialize_cspace_type, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)* @gx_cspace_is_linear_default, i32 (%struct.gs_color_space_s*)* @gx_polarity_additive }, align 8
@gs_color_space_type_DeviceCMYK = internal constant %struct.gs_color_space_type_s { i32 2, i32 1, i32 1, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_base_color_space to %struct.gs_memory_struct_type_s*), i32 (%struct.gs_color_space_s*)* @gx_num_components_4, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)* @gx_init_paint_4, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)* @gx_restrict01_paint_4, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)* @gx_same_concrete_space, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)* @gx_concretize_DeviceCMYK, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* @gx_remap_concrete_DCMYK, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* @gx_remap_DeviceCMYK, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)* @gx_install_DeviceCMYK, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)* @gx_set_overprint_DeviceCMYK, void (%struct.gs_color_space_s*)* null, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)* @gx_no_adjust_color_count, i32 (%struct.gs_color_space_s*, %struct.stream_s*)* @gx_serialize_cspace_type, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)* @gx_cspace_is_linear_default, i32 (%struct.gs_color_space_s*)* @gx_polarity_subtractive }, align 8
@gs_color_space_type_ICC = external constant %struct.gs_color_space_type_s, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"gs_cspace_new_ICC\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"cs_adjust_counts\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Cyan\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Magenta\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Yellow\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"Black\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"Red\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"Green\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"Blue\00", align 1
@gx_dc_type_data_none = external constant %struct.gx_device_color_type_s, align 8
@.str.11 = private unnamed_addr constant [16 x i8] c"gs_cspace_final\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"gs_cspace_alloc_with_id\00", align 1
@gx_dc_type_data_pure = external constant %struct.gx_device_color_type_s, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @color_space_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_color_space_s*
  store %struct.gs_color_space_s* %2, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %4, i32 0, i32 3
  %5 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !7
  %6 = bitcast %struct.gs_color_space_s* %5 to i8*
  %7 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %7, i32 0, i32 0
  store i8* %6, i8** %ptr, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %index.addr, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %8, 1
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %9 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %pclient_color_space_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %9, i32 0, i32 5
  %10 = load %struct.client_color_space_data_s*, %struct.client_color_space_data_s** %pclient_color_space_data, align 8, !tbaa !13
  %11 = bitcast %struct.client_color_space_data_s* %10 to i8*
  %12 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr3 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %12, i32 0, i32 0
  store i8* %11, i8** %ptr3, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %13 = load i32, i32* %index.addr, align 4, !tbaa !5
  %cmp5 = icmp eq i32 %13, 2
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end.4
  %14 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %icc_equivalent = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %14, i32 0, i32 4
  %15 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent, align 8, !tbaa !14
  %16 = bitcast %struct.gs_color_space_s* %15 to i8*
  %17 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr7 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %17, i32 0, i32 0
  store i8* %16, i8** %ptr7, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end.4
  %18 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %18, i32 0, i32 0
  %19 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !15
  %stype = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %19, i32 0, i32 3
  %20 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %stype, align 8, !tbaa !16
  %enum_ptrs = getelementptr inbounds %struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* %20, i32 0, i32 4
  %21 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** %enum_ptrs, align 8, !tbaa !18
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %23 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %24 = load i32, i32* %size.addr, align 4, !tbaa !5
  %25 = load i32, i32* %index.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %25, 3
  %26 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %27 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %type9 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %27, i32 0, i32 0
  %28 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type9, align 8, !tbaa !15
  %stype10 = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %28, i32 0, i32 3
  %29 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %stype10, align 8, !tbaa !16
  %30 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %21(%struct.gs_memory_s* %22, i8* %23, i32 %24, i32 %sub, %struct.enum_ptr_s* %26, %struct.gs_memory_struct_type_s* %29, %struct.gc_state_s* %30) #5
  store %struct.gs_ptr_procs_s* %call, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.8, %if.then.6, %if.then.2, %if.then
  %31 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #2
  %32 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %32
}

; Function Attrs: nounwind uwtable
define internal void @color_space_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pcs = alloca %struct.gs_color_space_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_color_space_s*
  store %struct.gs_color_space_s* %2, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %3 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gc_state_s* %3 to %struct.gc_procs_common_s**
  %5 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %4, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %5, i32 0, i32 0
  %6 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !20
  %7 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %7, i32 0, i32 3
  %8 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !7
  %9 = bitcast %struct.gs_color_space_s* %8 to i8*
  %10 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %6(i8* %9, %struct.gc_state_s* %10) #5
  %11 = bitcast i8* %call to %struct.gs_color_space_s*
  %12 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %base_space1 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %12, i32 0, i32 3
  store %struct.gs_color_space_s* %11, %struct.gs_color_space_s** %base_space1, align 8, !tbaa !7
  %13 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %14 = bitcast %struct.gc_state_s* %13 to %struct.gc_procs_common_s**
  %15 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %14, align 8, !tbaa !1
  %reloc_struct_ptr2 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %15, i32 0, i32 0
  %16 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr2, align 8, !tbaa !20
  %17 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %pclient_color_space_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %17, i32 0, i32 5
  %18 = load %struct.client_color_space_data_s*, %struct.client_color_space_data_s** %pclient_color_space_data, align 8, !tbaa !13
  %19 = bitcast %struct.client_color_space_data_s* %18 to i8*
  %20 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call3 = call i8* %16(i8* %19, %struct.gc_state_s* %20) #5
  %21 = bitcast i8* %call3 to %struct.client_color_space_data_s*
  %22 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %pclient_color_space_data4 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %22, i32 0, i32 5
  store %struct.client_color_space_data_s* %21, %struct.client_color_space_data_s** %pclient_color_space_data4, align 8, !tbaa !13
  %23 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %24 = bitcast %struct.gc_state_s* %23 to %struct.gc_procs_common_s**
  %25 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %24, align 8, !tbaa !1
  %reloc_struct_ptr5 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %25, i32 0, i32 0
  %26 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr5, align 8, !tbaa !20
  %27 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %icc_equivalent = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %27, i32 0, i32 4
  %28 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent, align 8, !tbaa !14
  %29 = bitcast %struct.gs_color_space_s* %28 to i8*
  %30 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call6 = call i8* %26(i8* %29, %struct.gc_state_s* %30) #5
  %31 = bitcast i8* %call6 to %struct.gs_color_space_s*
  %32 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %icc_equivalent7 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %32, i32 0, i32 4
  store %struct.gs_color_space_s* %31, %struct.gs_color_space_s** %icc_equivalent7, align 8, !tbaa !14
  %33 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %33, i32 0, i32 0
  %34 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !15
  %stype = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %34, i32 0, i32 3
  %35 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %stype, align 8, !tbaa !16
  %reloc_ptrs = getelementptr inbounds %struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* %35, i32 0, i32 5
  %36 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** %reloc_ptrs, align 8, !tbaa !22
  %37 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %38 = load i32, i32* %size.addr, align 4, !tbaa !5
  %39 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %type8 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %39, i32 0, i32 0
  %40 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type8, align 8, !tbaa !15
  %stype9 = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %40, i32 0, i32 3
  %41 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %stype9, align 8, !tbaa !16
  %42 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %36(i8* %37, i32 %38, %struct.gs_memory_struct_type_s* %41, %struct.gc_state_s* %42) #5
  %43 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gs_cspace_final(%struct.gs_memory_s* %cmem, i8* %vptr) #0 {
entry:
  %cmem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %pcs = alloca %struct.gs_color_space_s*, align 8
  store %struct.gs_memory_s* %cmem, %struct.gs_memory_s** %cmem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_color_space_s*
  store %struct.gs_color_space_s* %2, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %cmem.addr, align 8, !tbaa !1
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %4, i32 0, i32 0
  %5 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !15
  %final = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %5, i32 0, i32 13
  %6 = load void (%struct.gs_color_space_s*)*, void (%struct.gs_color_space_s*)** %final, align 8, !tbaa !23
  %tobool = icmp ne void (%struct.gs_color_space_s*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %type1 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %7, i32 0, i32 0
  %8 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type1, align 8, !tbaa !15
  %final2 = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %8, i32 0, i32 13
  %9 = load void (%struct.gs_color_space_s*)*, void (%struct.gs_color_space_s*)** %final2, align 8, !tbaa !23
  %10 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  call void %9(%struct.gs_color_space_s* %10) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %11 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %11, i32 0, i32 3
  %12 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !7
  call void @rc_decrement_only_cs(%struct.gs_color_space_s* %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0)) #5
  %13 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  ret void
}

declare %struct.gs_ptr_procs_s* @gs_no_struct_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

declare void @gs_no_struct_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

; Function Attrs: nounwind uwtable
define %struct.gs_color_space_s* @gs_cspace_alloc(%struct.gs_memory_s* %mem, %struct.gs_color_space_type_s* %pcstype) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pcstype.addr = alloca %struct.gs_color_space_type_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_color_space_type_s* %pcstype, %struct.gs_color_space_type_s** %pcstype.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i64 @gs_next_ids(%struct.gs_memory_s* %1, i32 1) #5
  %2 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %pcstype.addr, align 8, !tbaa !1
  %call1 = call %struct.gs_color_space_s* @gs_cspace_alloc_with_id(%struct.gs_memory_s* %0, i64 %call, %struct.gs_color_space_type_s* %2) #5
  ret %struct.gs_color_space_s* %call1
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_color_space_s* @gs_cspace_alloc_with_id(%struct.gs_memory_s* %mem, i64 %id, %struct.gs_color_space_type_s* %pcstype) #0 {
entry:
  %retval = alloca %struct.gs_color_space_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %id.addr = alloca i64, align 8
  %pcstype.addr = alloca %struct.gs_color_space_type_s*, align 8
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i64 %id, i64* %id.addr, align 8, !tbaa !24
  store %struct.gs_color_space_type_s* %pcstype, %struct.gs_color_space_type_s** %pcstype.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %2 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !25
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i8* %2(%struct.gs_memory_s* %3, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_color_space to %struct.gs_memory_struct_type_s*), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i32 0, i32 0)) #5
  %4 = bitcast i8* %call to %struct.gs_color_space_s*
  store %struct.gs_color_space_s* %4, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_color_space_s* %4, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.else
  %5 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %5, i32 0, i32 1
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  store i64 1, i64* %ref_count, align 8, !tbaa !28
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %7 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %rc2 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %7, i32 0, i32 1
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc2, i32 0, i32 1
  store %struct.gs_memory_s* %6, %struct.gs_memory_s** %memory, align 8, !tbaa !29
  %8 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %rc3 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %8, i32 0, i32 1
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc3, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @rc_free_struct_only, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !30
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
  br label %do.body.9

do.body.9:                                        ; preds = %do.end.8
  br label %do.cond.10

do.cond.10:                                       ; preds = %do.body.9
  br label %do.end.11

do.end.11:                                        ; preds = %do.cond.10
  %9 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %pcstype.addr, align 8, !tbaa !1
  %10 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %10, i32 0, i32 0
  store %struct.gs_color_space_type_s* %9, %struct.gs_color_space_type_s** %type, align 8, !tbaa !15
  %11 = load i64, i64* %id.addr, align 8, !tbaa !24
  %12 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %id12 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %12, i32 0, i32 2
  store i64 %11, i64* %id12, align 8, !tbaa !31
  %13 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %13, i32 0, i32 3
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %base_space, align 8, !tbaa !7
  %14 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %pclient_color_space_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %14, i32 0, i32 5
  store %struct.client_color_space_data_s* null, %struct.client_color_space_data_s** %pclient_color_space_data, align 8, !tbaa !13
  %15 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %15, i32 0, i32 6
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !32
  %16 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %icc_equivalent = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %16, i32 0, i32 4
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %icc_equivalent, align 8, !tbaa !14
  %17 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  store %struct.gs_color_space_s* %17, %struct.gs_color_space_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.11, %if.then
  %18 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #2
  %19 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %retval
  ret %struct.gs_color_space_s* %19
}

declare i64 @gs_next_ids(%struct.gs_memory_s*, i32) #1

; Function Attrs: nounwind uwtable
define %struct.gs_color_space_s* @gs_cspace_new_DeviceGray(%struct.gs_memory_s* %mem) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call %struct.gs_color_space_s* @gs_cspace_alloc_with_id(%struct.gs_memory_s* %0, i64 1, %struct.gs_color_space_type_s* @gs_color_space_type_DeviceGray) #5
  ret %struct.gs_color_space_s* %call
}

; Function Attrs: nounwind uwtable
define %struct.gs_color_space_s* @gs_cspace_new_DeviceRGB(%struct.gs_memory_s* %mem) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call %struct.gs_color_space_s* @gs_cspace_alloc_with_id(%struct.gs_memory_s* %0, i64 3, %struct.gs_color_space_type_s* @gs_color_space_type_DeviceRGB) #5
  ret %struct.gs_color_space_s* %call
}

; Function Attrs: nounwind uwtable
define %struct.gs_color_space_s* @gs_cspace_new_DeviceCMYK(%struct.gs_memory_s* %mem) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call %struct.gs_color_space_s* @gs_cspace_alloc_with_id(%struct.gs_memory_s* %0, i64 4, %struct.gs_color_space_type_s* @gs_color_space_type_DeviceCMYK) #5
  ret %struct.gs_color_space_s* %call
}

; Function Attrs: nounwind uwtable
define %struct.gs_color_space_s* @gs_cspace_new_ICC(%struct.gs_memory_s* %pmem, %struct.gs_state_s* %pgs, i32 %components) #0 {
entry:
  %retval = alloca %struct.gs_color_space_s*, align 8
  %pmem.addr = alloca %struct.gs_memory_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %components.addr = alloca i32, align 4
  %icc_manage = alloca %struct.gsicc_manager_s*, align 8
  %code = alloca i32, align 4
  %pcspace = alloca %struct.gs_color_space_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %pmem, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store i32 %components, i32* %components.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gsicc_manager_s** %icc_manage to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %icc_manager = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 35
  %2 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !33
  store %struct.gsicc_manager_s* %2, %struct.gsicc_manager_s** %icc_manage, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast %struct.gs_color_space_s** %pcspace to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %call = call %struct.gs_color_space_s* @gs_cspace_alloc(%struct.gs_memory_s* %5, %struct.gs_color_space_type_s* @gs_color_space_type_ICC) #5
  store %struct.gs_color_space_s* %call, %struct.gs_color_space_s** %pcspace, align 8, !tbaa !1
  %6 = load i32, i32* %components.addr, align 4, !tbaa !5
  switch i32 %6, label %sw.default [
    i32 -1, label %sw.bb
    i32 -3, label %sw.bb.7
    i32 1, label %sw.bb.20
    i32 3, label %sw.bb.23
    i32 4, label %sw.bb.26
  ]

sw.bb:                                            ; preds = %entry
  %7 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manage, align 8, !tbaa !1
  %smask_profiles = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %7, i32 0, i32 7
  %8 = load %struct.gsicc_smask_s*, %struct.gsicc_smask_s** %smask_profiles, align 8, !tbaa !49
  %cmp = icmp eq %struct.gsicc_smask_s* %8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %9 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manage, align 8, !tbaa !1
  %call1 = call i32 @gsicc_initialize_iccsmask(%struct.gsicc_manager_s* %9) #5
  store i32 %call1, i32* %code, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %10 = load i32, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp eq i32 %10, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %11 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manage, align 8, !tbaa !1
  %smask_profiles4 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %11, i32 0, i32 7
  %12 = load %struct.gsicc_smask_s*, %struct.gsicc_smask_s** %smask_profiles4, align 8, !tbaa !49
  %smask_gray = getelementptr inbounds %struct.gsicc_smask_s, %struct.gsicc_smask_s* %12, i32 0, i32 0
  %13 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %smask_gray, align 8, !tbaa !51
  %14 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %14, i32 0, i32 6
  store %struct.cmm_profile_s* %13, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !32
  br label %if.end.6

if.else:                                          ; preds = %if.end
  %15 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manage, align 8, !tbaa !1
  %default_gray = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %15, i32 0, i32 1
  %16 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_gray, align 8, !tbaa !53
  %17 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace, align 8, !tbaa !1
  %cmm_icc_profile_data5 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %17, i32 0, i32 6
  store %struct.cmm_profile_s* %16, %struct.cmm_profile_s** %cmm_icc_profile_data5, align 8, !tbaa !32
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.3
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %18 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manage, align 8, !tbaa !1
  %smask_profiles8 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %18, i32 0, i32 7
  %19 = load %struct.gsicc_smask_s*, %struct.gsicc_smask_s** %smask_profiles8, align 8, !tbaa !49
  %cmp9 = icmp eq %struct.gsicc_smask_s* %19, null
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %sw.bb.7
  %20 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manage, align 8, !tbaa !1
  %call11 = call i32 @gsicc_initialize_iccsmask(%struct.gsicc_manager_s* %20) #5
  store i32 %call11, i32* %code, align 4, !tbaa !5
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %sw.bb.7
  %21 = load i32, i32* %code, align 4, !tbaa !5
  %cmp13 = icmp eq i32 %21, 0
  br i1 %cmp13, label %if.then.14, label %if.else.17

if.then.14:                                       ; preds = %if.end.12
  %22 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manage, align 8, !tbaa !1
  %smask_profiles15 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %22, i32 0, i32 7
  %23 = load %struct.gsicc_smask_s*, %struct.gsicc_smask_s** %smask_profiles15, align 8, !tbaa !49
  %smask_rgb = getelementptr inbounds %struct.gsicc_smask_s, %struct.gsicc_smask_s* %23, i32 0, i32 1
  %24 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %smask_rgb, align 8, !tbaa !54
  %25 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace, align 8, !tbaa !1
  %cmm_icc_profile_data16 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %25, i32 0, i32 6
  store %struct.cmm_profile_s* %24, %struct.cmm_profile_s** %cmm_icc_profile_data16, align 8, !tbaa !32
  br label %if.end.19

if.else.17:                                       ; preds = %if.end.12
  %26 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manage, align 8, !tbaa !1
  %default_rgb = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %26, i32 0, i32 2
  %27 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_rgb, align 8, !tbaa !55
  %28 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace, align 8, !tbaa !1
  %cmm_icc_profile_data18 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %28, i32 0, i32 6
  store %struct.cmm_profile_s* %27, %struct.cmm_profile_s** %cmm_icc_profile_data18, align 8, !tbaa !32
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.17, %if.then.14
  br label %sw.epilog

sw.bb.20:                                         ; preds = %entry
  %29 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manage, align 8, !tbaa !1
  %default_gray21 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %29, i32 0, i32 1
  %30 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_gray21, align 8, !tbaa !53
  %31 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace, align 8, !tbaa !1
  %cmm_icc_profile_data22 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %31, i32 0, i32 6
  store %struct.cmm_profile_s* %30, %struct.cmm_profile_s** %cmm_icc_profile_data22, align 8, !tbaa !32
  br label %sw.epilog

sw.bb.23:                                         ; preds = %entry
  %32 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manage, align 8, !tbaa !1
  %default_rgb24 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %32, i32 0, i32 2
  %33 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_rgb24, align 8, !tbaa !55
  %34 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace, align 8, !tbaa !1
  %cmm_icc_profile_data25 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %34, i32 0, i32 6
  store %struct.cmm_profile_s* %33, %struct.cmm_profile_s** %cmm_icc_profile_data25, align 8, !tbaa !32
  br label %sw.epilog

sw.bb.26:                                         ; preds = %entry
  %35 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manage, align 8, !tbaa !1
  %default_cmyk = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %35, i32 0, i32 3
  %36 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_cmyk, align 8, !tbaa !56
  %37 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace, align 8, !tbaa !1
  %cmm_icc_profile_data27 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %37, i32 0, i32 6
  store %struct.cmm_profile_s* %36, %struct.cmm_profile_s** %cmm_icc_profile_data27, align 8, !tbaa !32
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %38 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_color_space_s* %38, null
  br i1 %tobool, label %if.then.28, label %if.end.50

if.then.28:                                       ; preds = %do.body
  br label %do.body.29

do.body.29:                                       ; preds = %if.then.28
  br label %do.body.30

do.body.30:                                       ; preds = %do.body.29
  br label %do.cond

do.cond:                                          ; preds = %do.body.30
  br label %do.end

do.end:                                           ; preds = %do.cond
  %39 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %39, i32 0, i32 1
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %40 = load i64, i64* %ref_count, align 8, !tbaa !28
  %add = add nsw i64 %40, -1
  store i64 %add, i64* %ref_count, align 8, !tbaa !28
  br label %do.cond.31

do.cond.31:                                       ; preds = %do.end
  br label %do.end.32

do.end.32:                                        ; preds = %do.cond.31
  %41 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace, align 8, !tbaa !1
  %rc33 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %41, i32 0, i32 1
  %ref_count34 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc33, i32 0, i32 0
  %42 = load i64, i64* %ref_count34, align 8, !tbaa !28
  %tobool35 = icmp ne i64 %42, 0
  br i1 %tobool35, label %if.else.45, label %if.then.36

if.then.36:                                       ; preds = %do.end.32
  br label %do.body.37

do.body.37:                                       ; preds = %if.then.36
  br label %do.body.38

do.body.38:                                       ; preds = %do.body.37
  br label %do.cond.39

do.cond.39:                                       ; preds = %do.body.38
  br label %do.end.40

do.end.40:                                        ; preds = %do.cond.39
  %43 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace, align 8, !tbaa !1
  %rc41 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %43, i32 0, i32 1
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc41, i32 0, i32 2
  %44 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !30
  %45 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace, align 8, !tbaa !1
  %rc42 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %45, i32 0, i32 1
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc42, i32 0, i32 1
  %46 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !29
  %47 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace, align 8, !tbaa !1
  %48 = bitcast %struct.gs_color_space_s* %47 to i8*
  call void %44(%struct.gs_memory_s* %46, i8* %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0)) #5
  br label %do.cond.43

do.cond.43:                                       ; preds = %do.end.40
  br label %do.end.44

do.end.44:                                        ; preds = %do.cond.43
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %pcspace, align 8, !tbaa !1
  br label %if.end.49

if.else.45:                                       ; preds = %do.end.32
  br label %do.body.46

do.body.46:                                       ; preds = %if.else.45
  br label %do.cond.47

do.cond.47:                                       ; preds = %do.body.46
  br label %do.end.48

do.end.48:                                        ; preds = %do.cond.47
  br label %if.end.49

if.end.49:                                        ; preds = %do.end.48, %do.end.44
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %do.body
  br label %do.cond.51

do.cond.51:                                       ; preds = %if.end.50
  br label %do.end.52

do.end.52:                                        ; preds = %do.cond.51
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.26, %sw.bb.23, %sw.bb.20, %if.end.19, %if.end.6
  br label %do.body.53

do.body.53:                                       ; preds = %sw.epilog
  %49 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace, align 8, !tbaa !1
  %cmm_icc_profile_data54 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %49, i32 0, i32 6
  %50 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data54, align 8, !tbaa !32
  %tobool55 = icmp ne %struct.cmm_profile_s* %50, null
  br i1 %tobool55, label %if.then.56, label %if.end.66

if.then.56:                                       ; preds = %do.body.53
  br label %do.body.57

do.body.57:                                       ; preds = %if.then.56
  %51 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace, align 8, !tbaa !1
  %cmm_icc_profile_data58 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %51, i32 0, i32 6
  %52 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data58, align 8, !tbaa !32
  %rc59 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %52, i32 0, i32 18
  %ref_count60 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc59, i32 0, i32 0
  %53 = load i64, i64* %ref_count60, align 8, !tbaa !57
  %inc = add nsw i64 %53, 1
  store i64 %inc, i64* %ref_count60, align 8, !tbaa !57
  br label %do.body.61

do.body.61:                                       ; preds = %do.body.57
  br label %do.cond.62

do.cond.62:                                       ; preds = %do.body.61
  br label %do.end.63

do.end.63:                                        ; preds = %do.cond.62
  br label %do.cond.64

do.cond.64:                                       ; preds = %do.end.63
  br label %do.end.65

do.end.65:                                        ; preds = %do.cond.64
  br label %if.end.66

if.end.66:                                        ; preds = %do.end.65, %do.body.53
  br label %do.cond.67

do.cond.67:                                       ; preds = %if.end.66
  br label %do.end.68

do.end.68:                                        ; preds = %do.cond.67
  %54 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace, align 8, !tbaa !1
  store %struct.gs_color_space_s* %54, %struct.gs_color_space_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.68, %do.end.52
  %55 = bitcast %struct.gs_color_space_s** %pcspace to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #2
  %56 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #2
  %57 = bitcast %struct.gsicc_manager_s** %icc_manage to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #2
  %58 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %retval
  ret %struct.gs_color_space_s* %58
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @gsicc_initialize_iccsmask(%struct.gsicc_manager_s*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @gs_color_space_get_index(%struct.gs_color_space_s* %pcs) #0 {
entry:
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %0, i32 0, i32 0
  %1 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !15
  %index = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %1, i32 0, i32 0
  %2 = load i32, i32* %index, align 4, !tbaa !61
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define i32 @gs_color_space_is_CIE(%struct.gs_color_space_s* %pcs) #0 {
entry:
  %retval = alloca i32, align 4
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %call = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %0) #5
  switch i32 %call, label %sw.default [
    i32 5, label %sw.bb
    i32 6, label %sw.bb
    i32 7, label %sw.bb
    i32 8, label %sw.bb
    i32 12, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry
  store i32 1, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %1 = load i32, i32* %retval
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @gs_color_space_is_PSCIE(%struct.gs_color_space_s* %pcs) #0 {
entry:
  %retval = alloca i32, align 4
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %call = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %0) #5
  switch i32 %call, label %sw.default [
    i32 5, label %sw.bb
    i32 6, label %sw.bb
    i32 7, label %sw.bb
    i32 8, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry
  store i32 1, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %1 = load i32, i32* %retval
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @gs_color_space_is_ICC(%struct.gs_color_space_s* %pcs) #0 {
entry:
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %call = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %0) #5
  %cmp = icmp eq i32 %call, 12
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @gs_color_space_num_components(%struct.gs_color_space_s* %pcs) #0 {
entry:
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %0, i32 0, i32 0
  %1 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !15
  %num_components = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %1, i32 0, i32 4
  %2 = load i32 (%struct.gs_color_space_s*)*, i32 (%struct.gs_color_space_s*)** %num_components, align 8, !tbaa !62
  %3 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %call = call i32 %2(%struct.gs_color_space_s* %3) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @gs_color_space_restrict_color(%struct.gs_client_color_s* %pcc, %struct.gs_color_space_s* %pcs) #0 {
entry:
  %pcc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  store %struct.gs_client_color_s* %pcc, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %0, i32 0, i32 0
  %1 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !15
  %restrict_color = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %1, i32 0, i32 6
  %2 = load void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)** %restrict_color, align 8, !tbaa !63
  %3 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  call void %2(%struct.gs_client_color_s* %3, %struct.gs_color_space_s* %4) #5
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gx_num_components_1(%struct.gs_color_space_s* %pcs) #0 {
entry:
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  ret i32 1
}

; Function Attrs: nounwind uwtable
define i32 @gx_num_components_3(%struct.gs_color_space_s* %pcs) #0 {
entry:
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  ret i32 3
}

; Function Attrs: nounwind uwtable
define i32 @gx_num_components_4(%struct.gs_color_space_s* %pcs) #0 {
entry:
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  ret i32 4
}

; Function Attrs: nounwind uwtable
define i32 @gx_polarity_subtractive(%struct.gs_color_space_s* %pcs) #0 {
entry:
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gx_polarity_additive(%struct.gs_color_space_s* %pcs) #0 {
entry:
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  ret i32 1
}

; Function Attrs: nounwind uwtable
define i32 @gx_polarity_unknown(%struct.gs_color_space_s* %pcs) #0 {
entry:
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define %struct.gs_color_space_s* @gs_cspace_base_space(%struct.gs_color_space_s* %pcspace) #0 {
entry:
  %pcspace.addr = alloca %struct.gs_color_space_s*, align 8
  store %struct.gs_color_space_s* %pcspace, %struct.gs_color_space_s** %pcspace.addr, align 8, !tbaa !1
  %0 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace.addr, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %0, i32 0, i32 3
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !7
  ret %struct.gs_color_space_s* %1
}

; Function Attrs: nounwind uwtable
define void @rc_increment_cs(%struct.gs_color_space_s* %pcs) #0 {
entry:
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_color_space_s* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %1, i32 0, i32 1
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %2 = load i64, i64* %ref_count, align 8, !tbaa !28
  %inc = add nsw i64 %2, 1
  store i64 %inc, i64* %ref_count, align 8, !tbaa !28
  br label %do.body.2

do.body.2:                                        ; preds = %do.body.1
  br label %do.end

do.end:                                           ; preds = %do.body.2
  br label %do.end.3

do.end.3:                                         ; preds = %do.end
  br label %if.end

if.end:                                           ; preds = %do.end.3, %do.body
  br label %do.end.4

do.end.4:                                         ; preds = %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @rc_decrement_cs(%struct.gs_color_space_s* %pcs, i8* %cname) #0 {
entry:
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %cname.addr = alloca i8*, align 8
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_color_space_s* %0, null
  br i1 %tobool, label %if.then, label %if.end.20

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %tobool1 = icmp ne %struct.gs_color_space_s* %1, null
  br i1 %tobool1, label %if.then.2, label %if.end.18

if.then.2:                                        ; preds = %do.body
  br label %do.body.3

do.body.3:                                        ; preds = %if.then.2
  br label %do.body.4

do.body.4:                                        ; preds = %do.body.3
  br label %do.end

do.end:                                           ; preds = %do.body.4
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %2, i32 0, i32 1
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %3 = load i64, i64* %ref_count, align 8, !tbaa !28
  %add = add nsw i64 %3, -1
  store i64 %add, i64* %ref_count, align 8, !tbaa !28
  br label %do.end.5

do.end.5:                                         ; preds = %do.end
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %rc6 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %4, i32 0, i32 1
  %ref_count7 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc6, i32 0, i32 0
  %5 = load i64, i64* %ref_count7, align 8, !tbaa !28
  %tobool8 = icmp ne i64 %5, 0
  br i1 %tobool8, label %if.else, label %if.then.9

if.then.9:                                        ; preds = %do.end.5
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  br label %do.body.11

do.body.11:                                       ; preds = %do.body.10
  br label %do.end.12

do.end.12:                                        ; preds = %do.body.11
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %rc13 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %6, i32 0, i32 1
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc13, i32 0, i32 2
  %7 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !30
  %8 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %rc14 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %8, i32 0, i32 1
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc14, i32 0, i32 1
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !29
  %10 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %11 = bitcast %struct.gs_color_space_s* %10 to i8*
  %12 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %7(%struct.gs_memory_s* %9, i8* %11, i8* %12) #5
  br label %do.end.15

do.end.15:                                        ; preds = %do.end.12
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %do.end.5
  br label %do.body.16

do.body.16:                                       ; preds = %if.else
  br label %do.end.17

do.end.17:                                        ; preds = %do.body.16
  br label %if.end

if.end:                                           ; preds = %do.end.17, %do.end.15
  br label %if.end.18

if.end.18:                                        ; preds = %if.end, %do.body
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  br label %if.end.20

if.end.20:                                        ; preds = %do.end.19, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @rc_decrement_only_cs(%struct.gs_color_space_s* %pcs, i8* %cname) #0 {
entry:
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %cname.addr = alloca i8*, align 8
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_color_space_s* %0, null
  br i1 %tobool, label %if.then, label %if.end.22

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %tobool1 = icmp ne %struct.gs_color_space_s* %1, null
  br i1 %tobool1, label %if.then.2, label %if.end.20

if.then.2:                                        ; preds = %do.body
  br label %do.body.3

do.body.3:                                        ; preds = %if.then.2
  br label %do.body.4

do.body.4:                                        ; preds = %do.body.3
  br label %do.end

do.end:                                           ; preds = %do.body.4
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %2, i32 0, i32 1
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %3 = load i64, i64* %ref_count, align 8, !tbaa !28
  %add = add nsw i64 %3, -1
  store i64 %add, i64* %ref_count, align 8, !tbaa !28
  br label %do.end.5

do.end.5:                                         ; preds = %do.end
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %rc6 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %4, i32 0, i32 1
  %ref_count7 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc6, i32 0, i32 0
  %5 = load i64, i64* %ref_count7, align 8, !tbaa !28
  %tobool8 = icmp ne i64 %5, 0
  br i1 %tobool8, label %if.else, label %if.then.9

if.then.9:                                        ; preds = %do.end.5
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  br label %do.body.11

do.body.11:                                       ; preds = %do.body.10
  br label %do.end.12

do.end.12:                                        ; preds = %do.body.11
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %rc13 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %6, i32 0, i32 1
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc13, i32 0, i32 2
  %7 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !30
  %8 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %rc14 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %8, i32 0, i32 1
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc14, i32 0, i32 1
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !29
  %10 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %11 = bitcast %struct.gs_color_space_s* %10 to i8*
  %12 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %7(%struct.gs_memory_s* %9, i8* %11, i8* %12) #5
  br label %do.end.15

do.end.15:                                        ; preds = %do.end.12
  br label %do.body.16

do.body.16:                                       ; preds = %do.end.15
  br label %do.end.17

do.end.17:                                        ; preds = %do.body.16
  br label %if.end

if.else:                                          ; preds = %do.end.5
  br label %do.body.18

do.body.18:                                       ; preds = %if.else
  br label %do.end.19

do.end.19:                                        ; preds = %do.body.18
  br label %if.end

if.end:                                           ; preds = %do.end.19, %do.end.17
  br label %if.end.20

if.end.20:                                        ; preds = %if.end, %do.body
  br label %do.end.21

do.end.21:                                        ; preds = %if.end.20
  br label %if.end.22

if.end.22:                                        ; preds = %do.end.21, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @cs_adjust_counts_icc(%struct.gs_state_s* %pgs, i32 %delta) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %delta.addr = alloca i32, align 4
  %pcs = alloca %struct.gs_color_space_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store i32 %delta, i32* %delta.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon.1], [2 x %struct.anon.1]* %color, i32 0, i64 0
  %color_space = getelementptr inbounds %struct.anon.1, %struct.anon.1* %arrayidx, i32 0, i32 0
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space, align 8, !tbaa !64
  store %struct.gs_color_space_s* %2, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %3 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_color_space_s* %3, null
  br i1 %tobool, label %if.then, label %if.end.54

if.then:                                          ; preds = %entry
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 69
  %arrayidx2 = getelementptr inbounds [2 x %struct.anon.1], [2 x %struct.anon.1]* %color1, i32 0, i64 0
  %color_space3 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %arrayidx2, i32 0, i32 0
  %5 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space3, align 8, !tbaa !64
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %5, i32 0, i32 0
  %6 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !15
  %adjust_color_count = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %6, i32 0, i32 14
  %7 = load void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)** %adjust_color_count, align 8, !tbaa !66
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 69
  %arrayidx5 = getelementptr inbounds [2 x %struct.anon.1], [2 x %struct.anon.1]* %color4, i32 0, i64 0
  %ccolor = getelementptr inbounds %struct.anon.1, %struct.anon.1* %arrayidx5, i32 0, i32 1
  %9 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %ccolor, align 8, !tbaa !67
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %10, i32 0, i32 69
  %arrayidx7 = getelementptr inbounds [2 x %struct.anon.1], [2 x %struct.anon.1]* %color6, i32 0, i64 0
  %color_space8 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %arrayidx7, i32 0, i32 0
  %11 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space8, align 8, !tbaa !64
  %12 = load i32, i32* %delta.addr, align 4, !tbaa !5
  call void %7(%struct.gs_client_color_s* %9, %struct.gs_color_space_s* %11, i32 %12) #5
  br label %do.body

do.body:                                          ; preds = %if.then
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color9 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %13, i32 0, i32 69
  %arrayidx10 = getelementptr inbounds [2 x %struct.anon.1], [2 x %struct.anon.1]* %color9, i32 0, i64 0
  %color_space11 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %arrayidx10, i32 0, i32 0
  %14 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space11, align 8, !tbaa !64
  %tobool12 = icmp ne %struct.gs_color_space_s* %14, null
  br i1 %tobool12, label %if.then.13, label %if.end.51

if.then.13:                                       ; preds = %do.body
  br label %do.body.14

do.body.14:                                       ; preds = %if.then.13
  br label %do.body.15

do.body.15:                                       ; preds = %do.body.14
  br label %do.cond

do.cond:                                          ; preds = %do.body.15
  br label %do.end

do.end:                                           ; preds = %do.cond
  %15 = load i32, i32* %delta.addr, align 4, !tbaa !5
  %conv = sext i32 %15 to i64
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color16 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %16, i32 0, i32 69
  %arrayidx17 = getelementptr inbounds [2 x %struct.anon.1], [2 x %struct.anon.1]* %color16, i32 0, i64 0
  %color_space18 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %arrayidx17, i32 0, i32 0
  %17 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space18, align 8, !tbaa !64
  %rc = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %17, i32 0, i32 1
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %18 = load i64, i64* %ref_count, align 8, !tbaa !28
  %add = add nsw i64 %18, %conv
  store i64 %add, i64* %ref_count, align 8, !tbaa !28
  br label %do.cond.19

do.cond.19:                                       ; preds = %do.end
  br label %do.end.20

do.end.20:                                        ; preds = %do.cond.19
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color21 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %19, i32 0, i32 69
  %arrayidx22 = getelementptr inbounds [2 x %struct.anon.1], [2 x %struct.anon.1]* %color21, i32 0, i64 0
  %color_space23 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %arrayidx22, i32 0, i32 0
  %20 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space23, align 8, !tbaa !64
  %rc24 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %20, i32 0, i32 1
  %ref_count25 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc24, i32 0, i32 0
  %21 = load i64, i64* %ref_count25, align 8, !tbaa !28
  %tobool26 = icmp ne i64 %21, 0
  br i1 %tobool26, label %if.else, label %if.then.27

if.then.27:                                       ; preds = %do.end.20
  br label %do.body.28

do.body.28:                                       ; preds = %if.then.27
  br label %do.body.29

do.body.29:                                       ; preds = %do.body.28
  br label %do.cond.30

do.cond.30:                                       ; preds = %do.body.29
  br label %do.end.31

do.end.31:                                        ; preds = %do.cond.30
  %22 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color32 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %22, i32 0, i32 69
  %arrayidx33 = getelementptr inbounds [2 x %struct.anon.1], [2 x %struct.anon.1]* %color32, i32 0, i64 0
  %color_space34 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %arrayidx33, i32 0, i32 0
  %23 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space34, align 8, !tbaa !64
  %rc35 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %23, i32 0, i32 1
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc35, i32 0, i32 2
  %24 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !30
  %25 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color36 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %25, i32 0, i32 69
  %arrayidx37 = getelementptr inbounds [2 x %struct.anon.1], [2 x %struct.anon.1]* %color36, i32 0, i64 0
  %color_space38 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %arrayidx37, i32 0, i32 0
  %26 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space38, align 8, !tbaa !64
  %rc39 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %26, i32 0, i32 1
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc39, i32 0, i32 1
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !29
  %28 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color40 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %28, i32 0, i32 69
  %arrayidx41 = getelementptr inbounds [2 x %struct.anon.1], [2 x %struct.anon.1]* %color40, i32 0, i64 0
  %color_space42 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %arrayidx41, i32 0, i32 0
  %29 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space42, align 8, !tbaa !64
  %30 = bitcast %struct.gs_color_space_s* %29 to i8*
  call void %24(%struct.gs_memory_s* %27, i8* %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0)) #5
  br label %do.cond.43

do.cond.43:                                       ; preds = %do.end.31
  br label %do.end.44

do.end.44:                                        ; preds = %do.cond.43
  br label %do.body.45

do.body.45:                                       ; preds = %do.end.44
  br label %do.cond.46

do.cond.46:                                       ; preds = %do.body.45
  br label %do.end.47

do.end.47:                                        ; preds = %do.cond.46
  br label %if.end

if.else:                                          ; preds = %do.end.20
  br label %do.body.48

do.body.48:                                       ; preds = %if.else
  br label %do.cond.49

do.cond.49:                                       ; preds = %do.body.48
  br label %do.end.50

do.end.50:                                        ; preds = %do.cond.49
  br label %if.end

if.end:                                           ; preds = %do.end.50, %do.end.47
  br label %if.end.51

if.end.51:                                        ; preds = %if.end, %do.body
  br label %do.cond.52

do.cond.52:                                       ; preds = %if.end.51
  br label %do.end.53

do.end.53:                                        ; preds = %do.cond.52
  br label %if.end.54

if.end.54:                                        ; preds = %do.end.53, %entry
  %31 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #2
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gx_no_install_cspace(%struct.gs_color_space_s* %pcs, %struct.gs_state_s* %pgs) #0 {
entry:
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gx_spot_colors_set_overprint(%struct.gs_color_space_s* %pcs, %struct.gs_state_s* %pgs) #0 {
entry:
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pis = alloca %struct.gs_imager_state_s*, align 8
  %params = alloca %struct.gs_overprint_params_s, align 8
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_state_s* %1 to %struct.gs_imager_state_s*
  store %struct.gs_imager_state_s* %2, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %3 = bitcast %struct.gs_overprint_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 32, i8* %3) #2
  %4 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %overprint = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %4, i32 0, i32 21
  %5 = load i32, i32* %overprint, align 4, !tbaa !68
  %retain_any_comps = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %params, i32 0, i32 0
  store i32 %5, i32* %retain_any_comps, align 4, !tbaa !70
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %retain_spot_comps = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %params, i32 0, i32 1
  store i32 1, i32* %retain_spot_comps, align 4, !tbaa !72
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %effective_overprint_mode = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 23
  store i32 0, i32* %effective_overprint_mode, align 4, !tbaa !73
  %k_value = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %params, i32 0, i32 4
  store i16 0, i16* %k_value, align 2, !tbaa !74
  %blendspot = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %params, i32 0, i32 5
  store i32 0, i32* %blendspot, align 4, !tbaa !75
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 @gs_state_update_overprint(%struct.gs_state_s* %7, %struct.gs_overprint_params_s* %params) #5
  %8 = bitcast %struct.gs_overprint_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 32, i8* %8) #2
  %9 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #2
  ret i32 %call
}

declare i32 @gs_state_update_overprint(%struct.gs_state_s*, %struct.gs_overprint_params_s*) #1

; Function Attrs: nounwind uwtable
define i32 @gx_simulated_set_overprint(%struct.gs_color_space_s* %pcs, %struct.gs_state_s* %pgs) #0 {
entry:
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pis = alloca %struct.gs_imager_state_s*, align 8
  %params = alloca %struct.gs_overprint_params_s, align 8
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_state_s* %1 to %struct.gs_imager_state_s*
  store %struct.gs_imager_state_s* %2, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %3 = bitcast %struct.gs_overprint_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 32, i8* %3) #2
  %4 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %overprint = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %4, i32 0, i32 21
  %5 = load i32, i32* %overprint, align 4, !tbaa !68
  %retain_any_comps = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %params, i32 0, i32 0
  store i32 %5, i32* %retain_any_comps, align 4, !tbaa !70
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %retain_spot_comps = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %params, i32 0, i32 1
  store i32 1, i32* %retain_spot_comps, align 4, !tbaa !72
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %effective_overprint_mode = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 23
  store i32 0, i32* %effective_overprint_mode, align 4, !tbaa !73
  %k_value = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %params, i32 0, i32 4
  store i16 0, i16* %k_value, align 2, !tbaa !74
  %blendspot = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %params, i32 0, i32 5
  store i32 1, i32* %blendspot, align 4, !tbaa !75
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 @gs_state_update_overprint(%struct.gs_state_s* %7, %struct.gs_overprint_params_s* %params) #5
  %8 = bitcast %struct.gs_overprint_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 32, i8* %8) #2
  %9 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i64 @check_cmyk_color_model_comps(%struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pcinfo = alloca %struct.gx_device_color_info_s*, align 8
  %ncomps = alloca i32, align 4
  %cyan_c = alloca i32, align 4
  %magenta_c = alloca i32, align 4
  %yellow_c = alloca i32, align 4
  %black_c = alloca i32, align 4
  %pprocs = alloca %struct.gx_cm_color_map_procs_s*, align 8
  %map_cmyk = alloca void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)*, align 8
  %frac_14 = alloca i16, align 2
  %out = alloca [64 x i16], align 16
  %process_comps = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_color_info_s** %pcinfo to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 11
  store %struct.gx_device_color_info_s* %color_info, %struct.gx_device_color_info_s** %pcinfo, align 8, !tbaa !1
  %2 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %pcinfo, align 8, !tbaa !1
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %3, i32 0, i32 1
  %4 = load i32, i32* %num_components, align 4, !tbaa !76
  store i32 %4, i32* %ncomps, align 4, !tbaa !5
  %5 = bitcast i32* %cyan_c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %magenta_c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %yellow_c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i32* %black_c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast %struct.gx_cm_color_map_procs_s** %pprocs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = bitcast void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)** %map_cmyk to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = bitcast i16* %frac_14 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %11) #2
  store i16 8190, i16* %frac_14, align 2, !tbaa !79
  %12 = bitcast [64 x i16]* %out to i8*
  call void @llvm.lifetime.start(i64 128, i8* %12) #2
  %13 = bitcast i64* %process_comps to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  %14 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp = icmp slt i32 %14, 4
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %15, i32 0, i32 42
  %get_color_comp_index = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 50
  %16 = load i32 (%struct.gx_device_s*, i8*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32)** %get_color_comp_index, align 8, !tbaa !80
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 %16(%struct.gx_device_s* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 4, i32 0) #5
  store i32 %call, i32* %cyan_c, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %18 = load i32, i32* %cyan_c, align 4, !tbaa !5
  %cmp3 = icmp eq i32 %18, 64
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false.2
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs5 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %19, i32 0, i32 42
  %get_color_comp_index6 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs5, i32 0, i32 50
  %20 = load i32 (%struct.gx_device_s*, i8*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32)** %get_color_comp_index6, align 8, !tbaa !80
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call7 = call i32 %20(%struct.gx_device_s* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 7, i32 0) #5
  store i32 %call7, i32* %magenta_c, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.4
  %22 = load i32, i32* %magenta_c, align 4, !tbaa !5
  %cmp10 = icmp eq i32 %22, 64
  br i1 %cmp10, label %if.then, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.9
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs12 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %23, i32 0, i32 42
  %get_color_comp_index13 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs12, i32 0, i32 50
  %24 = load i32 (%struct.gx_device_s*, i8*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32)** %get_color_comp_index13, align 8, !tbaa !80
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call14 = call i32 %24(%struct.gx_device_s* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 6, i32 0) #5
  store i32 %call14, i32* %yellow_c, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false.11
  %26 = load i32, i32* %yellow_c, align 4, !tbaa !5
  %cmp17 = icmp eq i32 %26, 64
  br i1 %cmp17, label %if.then, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %lor.lhs.false.16
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs19 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %27, i32 0, i32 42
  %get_color_comp_index20 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs19, i32 0, i32 50
  %28 = load i32 (%struct.gx_device_s*, i8*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32)** %get_color_comp_index20, align 8, !tbaa !80
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call21 = call i32 %28(%struct.gx_device_s* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 5, i32 0) #5
  store i32 %call21, i32* %black_c, align 4, !tbaa !5
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.then, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %lor.lhs.false.18
  %30 = load i32, i32* %black_c, align 4, !tbaa !5
  %cmp24 = icmp eq i32 %30, 64
  br i1 %cmp24, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.23, %lor.lhs.false.18, %lor.lhs.false.16, %lor.lhs.false.11, %lor.lhs.false.9, %lor.lhs.false.4, %lor.lhs.false.2, %lor.lhs.false, %entry
  store i64 0, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.23
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs25 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %31, i32 0, i32 42
  %get_color_mapping_procs = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs25, i32 0, i32 49
  %32 = load %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)** %get_color_mapping_procs, align 8, !tbaa !88
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call26 = call %struct.gx_cm_color_map_procs_s* %32(%struct.gx_device_s* %33) #5
  store %struct.gx_cm_color_map_procs_s* %call26, %struct.gx_cm_color_map_procs_s** %pprocs, align 8, !tbaa !1
  %cmp27 = icmp eq %struct.gx_cm_color_map_procs_s* %call26, null
  br i1 %cmp27, label %if.then.31, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %if.end
  %34 = load %struct.gx_cm_color_map_procs_s*, %struct.gx_cm_color_map_procs_s** %pprocs, align 8, !tbaa !1
  %map_cmyk29 = getelementptr inbounds %struct.gx_cm_color_map_procs_s, %struct.gx_cm_color_map_procs_s* %34, i32 0, i32 2
  %35 = load void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)** %map_cmyk29, align 8, !tbaa !89
  store void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* %35, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)** %map_cmyk, align 8, !tbaa !1
  %cmp30 = icmp eq void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* %35, null
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %lor.lhs.false.28, %if.end
  store i64 0, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.32:                                        ; preds = %lor.lhs.false.28
  %36 = load void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)** %map_cmyk, align 8, !tbaa !1
  %37 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %38 = load i16, i16* %frac_14, align 2, !tbaa !79
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %out, i32 0, i32 0
  call void %36(%struct.gx_device_s* %37, i16 signext %38, i16 signext 0, i16 signext 0, i16 signext 0, i16* %arraydecay) #5
  %39 = load i32, i32* %cyan_c, align 4, !tbaa !5
  %40 = load i16, i16* %frac_14, align 2, !tbaa !79
  %41 = load i32, i32* %ncomps, align 4, !tbaa !5
  %arraydecay33 = getelementptr inbounds [64 x i16], [64 x i16]* %out, i32 0, i32 0
  %call34 = call i32 @check_single_comp(i32 %39, i16 signext %40, i32 %41, i16* %arraydecay33) #5
  %tobool = icmp ne i32 %call34, 0
  br i1 %tobool, label %if.end.36, label %if.then.35

if.then.35:                                       ; preds = %if.end.32
  store i64 0, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.36:                                        ; preds = %if.end.32
  %42 = load void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)** %map_cmyk, align 8, !tbaa !1
  %43 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %44 = load i16, i16* %frac_14, align 2, !tbaa !79
  %arraydecay37 = getelementptr inbounds [64 x i16], [64 x i16]* %out, i32 0, i32 0
  call void %42(%struct.gx_device_s* %43, i16 signext 0, i16 signext %44, i16 signext 0, i16 signext 0, i16* %arraydecay37) #5
  %45 = load i32, i32* %magenta_c, align 4, !tbaa !5
  %46 = load i16, i16* %frac_14, align 2, !tbaa !79
  %47 = load i32, i32* %ncomps, align 4, !tbaa !5
  %arraydecay38 = getelementptr inbounds [64 x i16], [64 x i16]* %out, i32 0, i32 0
  %call39 = call i32 @check_single_comp(i32 %45, i16 signext %46, i32 %47, i16* %arraydecay38) #5
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.end.42, label %if.then.41

if.then.41:                                       ; preds = %if.end.36
  store i64 0, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.42:                                        ; preds = %if.end.36
  %48 = load void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)** %map_cmyk, align 8, !tbaa !1
  %49 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %50 = load i16, i16* %frac_14, align 2, !tbaa !79
  %arraydecay43 = getelementptr inbounds [64 x i16], [64 x i16]* %out, i32 0, i32 0
  call void %48(%struct.gx_device_s* %49, i16 signext 0, i16 signext 0, i16 signext %50, i16 signext 0, i16* %arraydecay43) #5
  %51 = load i32, i32* %yellow_c, align 4, !tbaa !5
  %52 = load i16, i16* %frac_14, align 2, !tbaa !79
  %53 = load i32, i32* %ncomps, align 4, !tbaa !5
  %arraydecay44 = getelementptr inbounds [64 x i16], [64 x i16]* %out, i32 0, i32 0
  %call45 = call i32 @check_single_comp(i32 %51, i16 signext %52, i32 %53, i16* %arraydecay44) #5
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.end.48, label %if.then.47

if.then.47:                                       ; preds = %if.end.42
  store i64 0, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.48:                                        ; preds = %if.end.42
  %54 = load void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)** %map_cmyk, align 8, !tbaa !1
  %55 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %56 = load i16, i16* %frac_14, align 2, !tbaa !79
  %arraydecay49 = getelementptr inbounds [64 x i16], [64 x i16]* %out, i32 0, i32 0
  call void %54(%struct.gx_device_s* %55, i16 signext 0, i16 signext 0, i16 signext 0, i16 signext %56, i16* %arraydecay49) #5
  %57 = load i32, i32* %black_c, align 4, !tbaa !5
  %58 = load i16, i16* %frac_14, align 2, !tbaa !79
  %59 = load i32, i32* %ncomps, align 4, !tbaa !5
  %arraydecay50 = getelementptr inbounds [64 x i16], [64 x i16]* %out, i32 0, i32 0
  %call51 = call i32 @check_single_comp(i32 %57, i16 signext %58, i32 %59, i16* %arraydecay50) #5
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.end.54, label %if.then.53

if.then.53:                                       ; preds = %if.end.48
  store i64 0, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.54:                                        ; preds = %if.end.48
  %60 = load i32, i32* %cyan_c, align 4, !tbaa !5
  %sh_prom = zext i32 %60 to i64
  %shl = shl i64 1, %sh_prom
  %61 = load i32, i32* %magenta_c, align 4, !tbaa !5
  %sh_prom55 = zext i32 %61 to i64
  %shl56 = shl i64 1, %sh_prom55
  %or = or i64 %shl, %shl56
  %62 = load i32, i32* %yellow_c, align 4, !tbaa !5
  %sh_prom57 = zext i32 %62 to i64
  %shl58 = shl i64 1, %sh_prom57
  %or59 = or i64 %or, %shl58
  %63 = load i32, i32* %black_c, align 4, !tbaa !5
  %sh_prom60 = zext i32 %63 to i64
  %shl61 = shl i64 1, %sh_prom60
  %or62 = or i64 %or59, %shl61
  store i64 %or62, i64* %process_comps, align 8, !tbaa !24
  %64 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %pcinfo, align 8, !tbaa !1
  %opmode = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %64, i32 0, i32 15
  store i32 1, i32* %opmode, align 4, !tbaa !91
  %65 = load i64, i64* %process_comps, align 8, !tbaa !24
  %66 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %pcinfo, align 8, !tbaa !1
  %process_comps63 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %66, i32 0, i32 16
  store i64 %65, i64* %process_comps63, align 8, !tbaa !92
  %67 = load i32, i32* %black_c, align 4, !tbaa !5
  %68 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %pcinfo, align 8, !tbaa !1
  %black_component = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %68, i32 0, i32 17
  store i32 %67, i32* %black_component, align 4, !tbaa !93
  %69 = load i64, i64* %process_comps, align 8, !tbaa !24
  store i64 %69, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.54, %if.then.53, %if.then.47, %if.then.41, %if.then.35, %if.then.31, %if.then
  %70 = bitcast i64* %process_comps to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #2
  %71 = bitcast [64 x i16]* %out to i8*
  call void @llvm.lifetime.end(i64 128, i8* %71) #2
  %72 = bitcast i16* %frac_14 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %72) #2
  %73 = bitcast void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)** %map_cmyk to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #2
  %74 = bitcast %struct.gx_cm_color_map_procs_s** %pprocs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #2
  %75 = bitcast i32* %black_c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #2
  %76 = bitcast i32* %yellow_c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #2
  %77 = bitcast i32* %magenta_c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #2
  %78 = bitcast i32* %cyan_c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #2
  %79 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #2
  %80 = bitcast %struct.gx_device_color_info_s** %pcinfo to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #2
  %81 = load i64, i64* %retval
  ret i64 %81
}

; Function Attrs: nounwind uwtable
define internal i32 @check_single_comp(i32 %comp, i16 signext %targ_val, i32 %ncomps, i16* %pval) #0 {
entry:
  %retval = alloca i32, align 4
  %comp.addr = alloca i32, align 4
  %targ_val.addr = alloca i16, align 2
  %ncomps.addr = alloca i32, align 4
  %pval.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32 %comp, i32* %comp.addr, align 4, !tbaa !5
  store i16 %targ_val, i16* %targ_val.addr, align 2, !tbaa !79
  store i32 %ncomps, i32* %ncomps.addr, align 4, !tbaa !5
  store i16* %pval, i16** %pval.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !5
  %2 = load i32, i32* %ncomps.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !tbaa !5
  %4 = load i32, i32* %comp.addr, align 4, !tbaa !5
  %cmp1 = icmp ne i32 %3, %4
  br i1 %cmp1, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %5 to i64
  %6 = load i16*, i16** %pval.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %6, i64 %idxprom
  %7 = load i16, i16* %arrayidx, align 2, !tbaa !79
  %conv = sext i16 %7 to i32
  %cmp2 = icmp ne i32 %conv, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %9 = load i32, i32* %comp.addr, align 4, !tbaa !5
  %cmp4 = icmp eq i32 %8, %9
  br i1 %cmp4, label %land.lhs.true.6, label %if.end

land.lhs.true.6:                                  ; preds = %lor.lhs.false
  %10 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom7 = sext i32 %10 to i64
  %11 = load i16*, i16** %pval.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i16, i16* %11, i64 %idxprom7
  %12 = load i16, i16* %arrayidx8, align 2, !tbaa !79
  %conv9 = sext i16 %12 to i32
  %13 = load i16, i16* %targ_val.addr, align 2, !tbaa !79
  %conv10 = sext i16 %13 to i32
  %cmp11 = icmp ne i32 %conv9, %conv10
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.6, %land.lhs.true
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.6, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %15 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #2
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define i64 @check_rgb_color_model_comps(%struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pcinfo = alloca %struct.gx_device_color_info_s*, align 8
  %ncomps = alloca i32, align 4
  %red_c = alloca i32, align 4
  %green_c = alloca i32, align 4
  %blue_c = alloca i32, align 4
  %pprocs = alloca %struct.gx_cm_color_map_procs_s*, align 8
  %map_rgb = alloca void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, align 8
  %frac_14 = alloca i16, align 2
  %out = alloca [64 x i16], align 16
  %process_comps = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_color_info_s** %pcinfo to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 11
  store %struct.gx_device_color_info_s* %color_info, %struct.gx_device_color_info_s** %pcinfo, align 8, !tbaa !1
  %2 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %pcinfo, align 8, !tbaa !1
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %3, i32 0, i32 1
  %4 = load i32, i32* %num_components, align 4, !tbaa !76
  store i32 %4, i32* %ncomps, align 4, !tbaa !5
  %5 = bitcast i32* %red_c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %green_c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %blue_c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast %struct.gx_cm_color_map_procs_s** %pprocs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = bitcast void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)** %map_rgb to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = bitcast i16* %frac_14 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %10) #2
  store i16 8190, i16* %frac_14, align 2, !tbaa !79
  %11 = bitcast [64 x i16]* %out to i8*
  call void @llvm.lifetime.start(i64 128, i8* %11) #2
  %12 = bitcast i64* %process_comps to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp = icmp slt i32 %13, 3
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %14, i32 0, i32 42
  %get_color_comp_index = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 50
  %15 = load i32 (%struct.gx_device_s*, i8*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32)** %get_color_comp_index, align 8, !tbaa !80
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 %15(%struct.gx_device_s* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i32 3, i32 0) #5
  store i32 %call, i32* %red_c, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %17 = load i32, i32* %red_c, align 4, !tbaa !5
  %cmp3 = icmp eq i32 %17, 64
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false.2
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs5 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 42
  %get_color_comp_index6 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs5, i32 0, i32 50
  %19 = load i32 (%struct.gx_device_s*, i8*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32)** %get_color_comp_index6, align 8, !tbaa !80
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call7 = call i32 %19(%struct.gx_device_s* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 5, i32 0) #5
  store i32 %call7, i32* %green_c, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.4
  %21 = load i32, i32* %green_c, align 4, !tbaa !5
  %cmp10 = icmp eq i32 %21, 64
  br i1 %cmp10, label %if.then, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.9
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs12 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %22, i32 0, i32 42
  %get_color_comp_index13 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs12, i32 0, i32 50
  %23 = load i32 (%struct.gx_device_s*, i8*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32)** %get_color_comp_index13, align 8, !tbaa !80
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call14 = call i32 %23(%struct.gx_device_s* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 4, i32 0) #5
  store i32 %call14, i32* %blue_c, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false.11
  %25 = load i32, i32* %blue_c, align 4, !tbaa !5
  %cmp17 = icmp eq i32 %25, 64
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.16, %lor.lhs.false.11, %lor.lhs.false.9, %lor.lhs.false.4, %lor.lhs.false.2, %lor.lhs.false, %entry
  store i64 0, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.16
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %26, i32 0, i32 42
  %get_color_mapping_procs = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs18, i32 0, i32 49
  %27 = load %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)** %get_color_mapping_procs, align 8, !tbaa !88
  %28 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call19 = call %struct.gx_cm_color_map_procs_s* %27(%struct.gx_device_s* %28) #5
  store %struct.gx_cm_color_map_procs_s* %call19, %struct.gx_cm_color_map_procs_s** %pprocs, align 8, !tbaa !1
  %cmp20 = icmp eq %struct.gx_cm_color_map_procs_s* %call19, null
  br i1 %cmp20, label %if.then.24, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %if.end
  %29 = load %struct.gx_cm_color_map_procs_s*, %struct.gx_cm_color_map_procs_s** %pprocs, align 8, !tbaa !1
  %map_rgb22 = getelementptr inbounds %struct.gx_cm_color_map_procs_s, %struct.gx_cm_color_map_procs_s* %29, i32 0, i32 1
  %30 = load void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)** %map_rgb22, align 8, !tbaa !94
  store void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)* %30, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)** %map_rgb, align 8, !tbaa !1
  %cmp23 = icmp eq void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)* %30, null
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %lor.lhs.false.21, %if.end
  store i64 0, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %lor.lhs.false.21
  %31 = load void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)** %map_rgb, align 8, !tbaa !1
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %33 = load i16, i16* %frac_14, align 2, !tbaa !79
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %out, i32 0, i32 0
  call void %31(%struct.gx_device_s* %32, %struct.gs_imager_state_s* null, i16 signext %33, i16 signext 0, i16 signext 0, i16* %arraydecay) #5
  %34 = load i32, i32* %red_c, align 4, !tbaa !5
  %35 = load i16, i16* %frac_14, align 2, !tbaa !79
  %36 = load i32, i32* %ncomps, align 4, !tbaa !5
  %arraydecay26 = getelementptr inbounds [64 x i16], [64 x i16]* %out, i32 0, i32 0
  %call27 = call i32 @check_single_comp(i32 %34, i16 signext %35, i32 %36, i16* %arraydecay26) #5
  %tobool = icmp ne i32 %call27, 0
  br i1 %tobool, label %if.end.29, label %if.then.28

if.then.28:                                       ; preds = %if.end.25
  store i64 0, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %if.end.25
  %37 = load void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)** %map_rgb, align 8, !tbaa !1
  %38 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %39 = load i16, i16* %frac_14, align 2, !tbaa !79
  %arraydecay30 = getelementptr inbounds [64 x i16], [64 x i16]* %out, i32 0, i32 0
  call void %37(%struct.gx_device_s* %38, %struct.gs_imager_state_s* null, i16 signext 0, i16 signext %39, i16 signext 0, i16* %arraydecay30) #5
  %40 = load i32, i32* %green_c, align 4, !tbaa !5
  %41 = load i16, i16* %frac_14, align 2, !tbaa !79
  %42 = load i32, i32* %ncomps, align 4, !tbaa !5
  %arraydecay31 = getelementptr inbounds [64 x i16], [64 x i16]* %out, i32 0, i32 0
  %call32 = call i32 @check_single_comp(i32 %40, i16 signext %41, i32 %42, i16* %arraydecay31) #5
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.end.35, label %if.then.34

if.then.34:                                       ; preds = %if.end.29
  store i64 0, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.35:                                        ; preds = %if.end.29
  %43 = load void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)** %map_rgb, align 8, !tbaa !1
  %44 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %45 = load i16, i16* %frac_14, align 2, !tbaa !79
  %arraydecay36 = getelementptr inbounds [64 x i16], [64 x i16]* %out, i32 0, i32 0
  call void %43(%struct.gx_device_s* %44, %struct.gs_imager_state_s* null, i16 signext 0, i16 signext 0, i16 signext %45, i16* %arraydecay36) #5
  %46 = load i32, i32* %blue_c, align 4, !tbaa !5
  %47 = load i16, i16* %frac_14, align 2, !tbaa !79
  %48 = load i32, i32* %ncomps, align 4, !tbaa !5
  %arraydecay37 = getelementptr inbounds [64 x i16], [64 x i16]* %out, i32 0, i32 0
  %call38 = call i32 @check_single_comp(i32 %46, i16 signext %47, i32 %48, i16* %arraydecay37) #5
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.end.41, label %if.then.40

if.then.40:                                       ; preds = %if.end.35
  store i64 0, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.41:                                        ; preds = %if.end.35
  %49 = load i32, i32* %red_c, align 4, !tbaa !5
  %sh_prom = zext i32 %49 to i64
  %shl = shl i64 1, %sh_prom
  %50 = load i32, i32* %green_c, align 4, !tbaa !5
  %sh_prom42 = zext i32 %50 to i64
  %shl43 = shl i64 1, %sh_prom42
  %or = or i64 %shl, %shl43
  %51 = load i32, i32* %blue_c, align 4, !tbaa !5
  %sh_prom44 = zext i32 %51 to i64
  %shl45 = shl i64 1, %sh_prom44
  %or46 = or i64 %or, %shl45
  store i64 %or46, i64* %process_comps, align 8, !tbaa !24
  %52 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %pcinfo, align 8, !tbaa !1
  %opmode = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %52, i32 0, i32 15
  store i32 3, i32* %opmode, align 4, !tbaa !91
  %53 = load i64, i64* %process_comps, align 8, !tbaa !24
  %54 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %pcinfo, align 8, !tbaa !1
  %process_comps47 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %54, i32 0, i32 16
  store i64 %53, i64* %process_comps47, align 8, !tbaa !92
  %55 = load i64, i64* %process_comps, align 8, !tbaa !24
  store i64 %55, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.41, %if.then.40, %if.then.34, %if.then.28, %if.then.24, %if.then
  %56 = bitcast i64* %process_comps to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #2
  %57 = bitcast [64 x i16]* %out to i8*
  call void @llvm.lifetime.end(i64 128, i8* %57) #2
  %58 = bitcast i16* %frac_14 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %58) #2
  %59 = bitcast void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)** %map_rgb to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #2
  %60 = bitcast %struct.gx_cm_color_map_procs_s** %pprocs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #2
  %61 = bitcast i32* %blue_c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #2
  %62 = bitcast i32* %green_c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #2
  %63 = bitcast i32* %red_c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #2
  %64 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #2
  %65 = bitcast %struct.gx_device_color_info_s** %pcinfo to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #2
  %66 = load i64, i64* %retval
  ret i64 %66
}

; Function Attrs: nounwind uwtable
define i32 @gx_set_overprint_cmyk(%struct.gs_color_space_s* %pcs, %struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  %pcinfo = alloca %struct.gx_device_color_info_s*, align 8
  %drawn_comps = alloca i64, align 8
  %params = alloca %struct.gs_overprint_params_s, align 8
  %pdc = alloca %struct.gx_device_color_s*, align 8
  %dev_profile = alloca %struct.cmm_dev_profile_s*, align 8
  %output_profile = alloca %struct.cmm_profile_s*, align 8
  %code = alloca i32, align 4
  %profile_ok = alloca i32, align 4
  %render_cond = alloca %struct.gsicc_rendering_param_s, align 4
  %cleanup.dest.slot = alloca i32
  %nz_comps = alloca i64, align 8
  %one = alloca i64, align 8
  %temp = alloca i64, align 8
  %code19 = alloca i32, align 4
  %num_colorant = alloca [4 x i32], align 16
  %k = alloca i32, align 4
  %colorant_ok = alloca i32, align 4
  %procp = alloca i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)*, align 8
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 78
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !95
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
  %6 = bitcast i64* %drawn_comps to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  store i64 0, i64* %drawn_comps, align 8, !tbaa !24
  %7 = bitcast %struct.gs_overprint_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 32, i8* %7) #2
  %8 = bitcast %struct.gx_device_color_s** %pdc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = bitcast %struct.cmm_profile_s** %output_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = bitcast i32* %profile_ok to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  store i32 0, i32* %profile_ok, align 4, !tbaa !5
  %13 = bitcast %struct.gsicc_rendering_param_s* %render_cond to i8*
  call void @llvm.lifetime.start(i64 24, i8* %13) #2
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %14, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %15 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !96
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %call = call i32 %15(%struct.gx_device_s* %16, %struct.cmm_dev_profile_s** %dev_profile) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %graphics_type_tag = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 40
  %18 = load i32, i32* %graphics_type_tag, align 4, !tbaa !97
  %19 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  call void @gsicc_extract_profile(i32 %18, %struct.cmm_dev_profile_s* %19, %struct.cmm_profile_s** %output_profile, %struct.gsicc_rendering_param_s* %render_cond) #5
  %20 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %pcinfo, align 8, !tbaa !1
  %opmode = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %20, i32 0, i32 15
  %21 = load i32, i32* %opmode, align 4, !tbaa !91
  %cmp1 = icmp eq i32 %21, -1
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %call2 = call i64 @check_cmyk_color_model_comps(%struct.gx_device_s* %22) #5
  store i64 %call2, i64* %drawn_comps, align 8, !tbaa !24
  br label %if.end

if.else:                                          ; preds = %cond.end
  %23 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %pcinfo, align 8, !tbaa !1
  %process_comps = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %23, i32 0, i32 16
  %24 = load i64, i64* %process_comps, align 8, !tbaa !92
  store i64 %24, i64* %drawn_comps, align 8, !tbaa !24
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %25 = load i64, i64* %drawn_comps, align 8, !tbaa !24
  %cmp3 = icmp eq i64 %25, 0
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %26 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %27 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call5 = call i32 @gx_spot_colors_set_overprint(%struct.gs_color_space_s* %26, %struct.gs_state_s* %27) #5
  store i32 %call5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.86

if.end.6:                                         ; preds = %if.end
  %28 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %28, i32 0, i32 6
  %29 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !32
  %cmp7 = icmp ne %struct.cmm_profile_s* %29, null
  br i1 %cmp7, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %if.end.6
  %30 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %output_profile, align 8, !tbaa !1
  %cmp8 = icmp ne %struct.cmm_profile_s* %30, null
  br i1 %cmp8, label %if.then.9, label %if.end.15

if.then.9:                                        ; preds = %land.lhs.true
  %31 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %output_profile, align 8, !tbaa !1
  %hashcode = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %31, i32 0, i32 7
  %32 = load i64, i64* %hashcode, align 8, !tbaa !98
  %33 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data10 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %33, i32 0, i32 6
  %34 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data10, align 8, !tbaa !32
  %hashcode11 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %34, i32 0, i32 7
  %35 = load i64, i64* %hashcode11, align 8, !tbaa !98
  %cmp12 = icmp eq i64 %32, %35
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.9
  store i32 1, i32* %profile_ok, align 4, !tbaa !5
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.then.9
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %land.lhs.true, %if.end.6
  %36 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %effective_overprint_mode = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %36, i32 0, i32 23
  store i32 1, i32* %effective_overprint_mode, align 4, !tbaa !73
  %37 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %37, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon.1], [2 x %struct.anon.1]* %color, i32 0, i64 0
  %dev_color = getelementptr inbounds %struct.anon.1, %struct.anon.1* %arrayidx, i32 0, i32 2
  %38 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color, align 8, !tbaa !99
  store %struct.gx_device_color_s* %38, %struct.gx_device_color_s** %pdc, align 8, !tbaa !1
  %39 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %39, i32 0, i32 0
  %40 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !100
  %cmp16 = icmp ne %struct.gx_device_color_type_s* %40, @gx_dc_type_data_none
  br i1 %cmp16, label %land.lhs.true.17, label %if.end.83

land.lhs.true.17:                                 ; preds = %if.end.15
  %41 = load i32, i32* %profile_ok, align 4, !tbaa !5
  %tobool = icmp ne i32 %41, 0
  br i1 %tobool, label %if.then.18, label %if.end.83

if.then.18:                                       ; preds = %land.lhs.true.17
  %42 = bitcast i64* %nz_comps to i8*
  call void @llvm.lifetime.start(i64 8, i8* %42) #2
  %43 = bitcast i64* %one to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #2
  %44 = bitcast i64* %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %44) #2
  %45 = bitcast i32* %code19 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #2
  %46 = bitcast [4 x i32]* %num_colorant to i8*
  call void @llvm.lifetime.start(i64 16, i8* %46) #2
  %47 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #2
  %48 = bitcast i32* %colorant_ok to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #2
  %49 = bitcast i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)** %procp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %49) #2
  %50 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc, align 8, !tbaa !1
  %type20 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %50, i32 0, i32 0
  %51 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type20, align 8, !tbaa !100
  %get_nonzero_comps = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %51, i32 0, i32 10
  %52 = load i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)** %get_nonzero_comps, align 8, !tbaa !107
  store i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* %52, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)** %procp, align 8, !tbaa !1
  %53 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc, align 8, !tbaa !1
  %ccolor_valid = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %53, i32 0, i32 3
  %54 = load i32, i32* %ccolor_valid, align 4, !tbaa !109
  %tobool21 = icmp ne i32 %54, 0
  br i1 %tobool21, label %if.then.22, label %if.else.69

if.then.22:                                       ; preds = %if.then.18
  %55 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %procs23 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %55, i32 0, i32 42
  %get_color_comp_index = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs23, i32 0, i32 50
  %56 = load i32 (%struct.gx_device_s*, i8*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32)** %get_color_comp_index, align 8, !tbaa !80
  %57 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %call24 = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0)) #6
  %conv = trunc i64 %call24 to i32
  %call25 = call i32 %56(%struct.gx_device_s* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %conv, i32 0) #5
  %arrayidx26 = getelementptr inbounds [4 x i32], [4 x i32]* %num_colorant, i32 0, i64 0
  store i32 %call25, i32* %arrayidx26, align 4, !tbaa !5
  %58 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %procs27 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %58, i32 0, i32 42
  %get_color_comp_index28 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs27, i32 0, i32 50
  %59 = load i32 (%struct.gx_device_s*, i8*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32)** %get_color_comp_index28, align 8, !tbaa !80
  %60 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %call29 = call i64 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0)) #6
  %conv30 = trunc i64 %call29 to i32
  %call31 = call i32 %59(%struct.gx_device_s* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 %conv30, i32 0) #5
  %arrayidx32 = getelementptr inbounds [4 x i32], [4 x i32]* %num_colorant, i32 0, i64 1
  store i32 %call31, i32* %arrayidx32, align 4, !tbaa !5
  %61 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %procs33 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %61, i32 0, i32 42
  %get_color_comp_index34 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs33, i32 0, i32 50
  %62 = load i32 (%struct.gx_device_s*, i8*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32)** %get_color_comp_index34, align 8, !tbaa !80
  %63 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %call35 = call i64 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0)) #6
  %conv36 = trunc i64 %call35 to i32
  %call37 = call i32 %62(%struct.gx_device_s* %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 %conv36, i32 0) #5
  %arrayidx38 = getelementptr inbounds [4 x i32], [4 x i32]* %num_colorant, i32 0, i64 2
  store i32 %call37, i32* %arrayidx38, align 4, !tbaa !5
  %64 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %procs39 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %64, i32 0, i32 42
  %get_color_comp_index40 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs39, i32 0, i32 50
  %65 = load i32 (%struct.gx_device_s*, i8*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32)** %get_color_comp_index40, align 8, !tbaa !80
  %66 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %call41 = call i64 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0)) #6
  %conv42 = trunc i64 %call41 to i32
  %call43 = call i32 %65(%struct.gx_device_s* %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 %conv42, i32 0) #5
  %arrayidx44 = getelementptr inbounds [4 x i32], [4 x i32]* %num_colorant, i32 0, i64 3
  store i32 %call43, i32* %arrayidx44, align 4, !tbaa !5
  store i64 0, i64* %nz_comps, align 8, !tbaa !24
  store i64 1, i64* %one, align 8, !tbaa !24
  store i32 1, i32* %colorant_ok, align 4, !tbaa !5
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.22
  %67 = load i32, i32* %k, align 4, !tbaa !5
  %cmp45 = icmp slt i32 %67, 4
  br i1 %cmp45, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %68 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom = sext i32 %68 to i64
  %69 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc, align 8, !tbaa !1
  %ccolor = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %69, i32 0, i32 4
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %ccolor, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx47 = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 %idxprom
  %70 = load float, float* %arrayidx47, align 4, !tbaa !110
  %cmp48 = fcmp une float %70, 0.000000e+00
  br i1 %cmp48, label %if.then.50, label %if.end.60

if.then.50:                                       ; preds = %for.body
  %71 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom51 = sext i32 %71 to i64
  %arrayidx52 = getelementptr inbounds [4 x i32], [4 x i32]* %num_colorant, i32 0, i64 %idxprom51
  %72 = load i32, i32* %arrayidx52, align 4, !tbaa !5
  %cmp53 = icmp eq i32 %72, -1
  br i1 %cmp53, label %if.then.55, label %if.else.56

if.then.55:                                       ; preds = %if.then.50
  store i32 0, i32* %colorant_ok, align 4, !tbaa !5
  br label %if.end.59

if.else.56:                                       ; preds = %if.then.50
  %73 = load i64, i64* %one, align 8, !tbaa !24
  %74 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom57 = sext i32 %74 to i64
  %arrayidx58 = getelementptr inbounds [4 x i32], [4 x i32]* %num_colorant, i32 0, i64 %idxprom57
  %75 = load i32, i32* %arrayidx58, align 4, !tbaa !5
  %sh_prom = zext i32 %75 to i64
  %shl = shl i64 %73, %sh_prom
  store i64 %shl, i64* %temp, align 8, !tbaa !24
  %76 = load i64, i64* %nz_comps, align 8, !tbaa !24
  %77 = load i64, i64* %temp, align 8, !tbaa !24
  %or = or i64 %76, %77
  store i64 %or, i64* %nz_comps, align 8, !tbaa !24
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.56, %if.then.55
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.60
  %78 = load i32, i32* %k, align 4, !tbaa !5
  %inc = add nsw i32 %78, 1
  store i32 %inc, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %79 = load i32, i32* %colorant_ok, align 4, !tbaa !5
  %tobool61 = icmp ne i32 %79, 0
  br i1 %tobool61, label %if.end.68, label %if.then.62

if.then.62:                                       ; preds = %for.end
  %80 = load i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)** %procp, align 8, !tbaa !1
  %81 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc, align 8, !tbaa !1
  %82 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %call63 = call i32 %80(%struct.gx_device_color_s* %81, %struct.gx_device_s* %82, i64* %nz_comps) #5
  store i32 %call63, i32* %code19, align 4, !tbaa !5
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.then.62
  %83 = load i32, i32* %code19, align 4, !tbaa !5
  store i32 %83, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.67:                                        ; preds = %if.then.62
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %for.end
  br label %if.end.75

if.else.69:                                       ; preds = %if.then.18
  %84 = load i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)** %procp, align 8, !tbaa !1
  %85 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc, align 8, !tbaa !1
  %86 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %call70 = call i32 %84(%struct.gx_device_color_s* %85, %struct.gx_device_s* %86, i64* %nz_comps) #5
  store i32 %call70, i32* %code19, align 4, !tbaa !5
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.else.69
  %87 = load i32, i32* %code19, align 4, !tbaa !5
  store i32 %87, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.74:                                        ; preds = %if.else.69
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.end.68
  %88 = load i64, i64* %nz_comps, align 8, !tbaa !24
  %89 = load i64, i64* %drawn_comps, align 8, !tbaa !24
  %and = and i64 %89, %88
  store i64 %and, i64* %drawn_comps, align 8, !tbaa !24
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.75, %if.then.73, %if.then.66
  %90 = bitcast i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)** %procp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %90) #2
  %91 = bitcast i32* %colorant_ok to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #2
  %92 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #2
  %93 = bitcast [4 x i32]* %num_colorant to i8*
  call void @llvm.lifetime.end(i64 16, i8* %93) #2
  %94 = bitcast i32* %code19 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #2
  %95 = bitcast i64* %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #2
  %96 = bitcast i64* %one to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #2
  %97 = bitcast i64* %nz_comps to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.86 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.83

if.end.83:                                        ; preds = %cleanup.cont, %land.lhs.true.17, %if.end.15
  %retain_any_comps = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %params, i32 0, i32 0
  store i32 1, i32* %retain_any_comps, align 4, !tbaa !70
  %retain_spot_comps = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %params, i32 0, i32 1
  store i32 0, i32* %retain_spot_comps, align 4, !tbaa !72
  %98 = load i64, i64* %drawn_comps, align 8, !tbaa !24
  %drawn_comps84 = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %params, i32 0, i32 3
  store i64 %98, i64* %drawn_comps84, align 8, !tbaa !111
  %k_value = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %params, i32 0, i32 4
  store i16 0, i16* %k_value, align 2, !tbaa !74
  %blendspot = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %params, i32 0, i32 5
  store i32 0, i32* %blendspot, align 4, !tbaa !75
  %99 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call85 = call i32 @gs_state_update_overprint(%struct.gs_state_s* %99, %struct.gs_overprint_params_s* %params) #5
  store i32 %call85, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.86

cleanup.86:                                       ; preds = %if.end.83, %cleanup, %if.then.4
  %100 = bitcast %struct.gsicc_rendering_param_s* %render_cond to i8*
  call void @llvm.lifetime.end(i64 24, i8* %100) #2
  %101 = bitcast i32* %profile_ok to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #2
  %102 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #2
  %103 = bitcast %struct.cmm_profile_s** %output_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #2
  %104 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #2
  %105 = bitcast %struct.gx_device_color_s** %pdc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #2
  %106 = bitcast %struct.gs_overprint_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 32, i8* %106) #2
  %107 = bitcast i64* %drawn_comps to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #2
  %108 = bitcast %struct.gx_device_color_info_s** %pcinfo to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #2
  %109 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #2
  %110 = load i32, i32* %retval
  ret i32 %110
}

declare void @gsicc_extract_profile(i32, %struct.cmm_dev_profile_s*, %struct.cmm_profile_s**, %struct.gsicc_rendering_param_s*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind uwtable
define i32 @gx_set_overprint_rgb(%struct.gs_color_space_s* %pcs, %struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  %pcinfo = alloca %struct.gx_device_color_info_s*, align 8
  %drawn_comps = alloca i64, align 8
  %params = alloca %struct.gs_overprint_params_s, align 8
  %pdc = alloca %struct.gx_device_color_s*, align 8
  %cleanup.dest.slot = alloca i32
  %nz_comps = alloca i64, align 8
  %one = alloca i64, align 8
  %temp = alloca i64, align 8
  %code = alloca i32, align 4
  %num_colorant = alloca [3 x i32], align 4
  %k = alloca i32, align 4
  %colorant_ok = alloca i32, align 4
  %procp = alloca i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)*, align 8
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 78
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !95
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
  %6 = bitcast i64* %drawn_comps to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  store i64 0, i64* %drawn_comps, align 8, !tbaa !24
  %7 = bitcast %struct.gs_overprint_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 32, i8* %7) #2
  %8 = bitcast %struct.gx_device_color_s** %pdc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %pcinfo, align 8, !tbaa !1
  %opmode = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %9, i32 0, i32 15
  %10 = load i32, i32* %opmode, align 4, !tbaa !91
  %cmp1 = icmp eq i32 %10, 2
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %call = call i64 @check_rgb_color_model_comps(%struct.gx_device_s* %11) #5
  store i64 %call, i64* %drawn_comps, align 8, !tbaa !24
  br label %if.end

if.else:                                          ; preds = %cond.end
  %12 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %pcinfo, align 8, !tbaa !1
  %process_comps = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %12, i32 0, i32 16
  %13 = load i64, i64* %process_comps, align 8, !tbaa !92
  store i64 %13, i64* %drawn_comps, align 8, !tbaa !24
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load i64, i64* %drawn_comps, align 8, !tbaa !24
  %cmp2 = icmp eq i64 %14, 0
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %15 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call4 = call i32 @gx_spot_colors_set_overprint(%struct.gs_color_space_s* %15, %struct.gs_state_s* %16) #5
  store i32 %call4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.72

if.end.5:                                         ; preds = %if.end
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %effective_overprint_mode = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %17, i32 0, i32 23
  store i32 1, i32* %effective_overprint_mode, align 4, !tbaa !73
  %18 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %18, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon.1], [2 x %struct.anon.1]* %color, i32 0, i64 0
  %dev_color = getelementptr inbounds %struct.anon.1, %struct.anon.1* %arrayidx, i32 0, i32 2
  %19 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color, align 8, !tbaa !99
  store %struct.gx_device_color_s* %19, %struct.gx_device_color_s** %pdc, align 8, !tbaa !1
  %k_value = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %params, i32 0, i32 4
  store i16 0, i16* %k_value, align 2, !tbaa !74
  %blendspot = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %params, i32 0, i32 5
  store i32 0, i32* %blendspot, align 4, !tbaa !75
  %20 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %20, i32 0, i32 0
  %21 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !100
  %cmp6 = icmp ne %struct.gx_device_color_type_s* %21, @gx_dc_type_data_none
  br i1 %cmp6, label %if.then.7, label %if.end.69

if.then.7:                                        ; preds = %if.end.5
  %22 = bitcast i64* %nz_comps to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #2
  %23 = bitcast i64* %one to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #2
  %24 = bitcast i64* %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #2
  %25 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #2
  %26 = bitcast [3 x i32]* %num_colorant to i8*
  call void @llvm.lifetime.start(i64 12, i8* %26) #2
  %27 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #2
  %28 = bitcast i32* %colorant_ok to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #2
  %29 = bitcast i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)** %procp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #2
  %30 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc, align 8, !tbaa !1
  %type8 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %30, i32 0, i32 0
  %31 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type8, align 8, !tbaa !100
  %get_nonzero_comps = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %31, i32 0, i32 10
  %32 = load i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)** %get_nonzero_comps, align 8, !tbaa !107
  store i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* %32, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)** %procp, align 8, !tbaa !1
  %33 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc, align 8, !tbaa !1
  %ccolor_valid = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %33, i32 0, i32 3
  %34 = load i32, i32* %ccolor_valid, align 4, !tbaa !109
  %tobool = icmp ne i32 %34, 0
  br i1 %tobool, label %if.then.9, label %if.else.55

if.then.9:                                        ; preds = %if.then.7
  %35 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %35, i32 0, i32 42
  %get_color_comp_index = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 50
  %36 = load i32 (%struct.gx_device_s*, i8*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32)** %get_color_comp_index, align 8, !tbaa !80
  %37 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %call10 = call i64 @strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)) #6
  %conv = trunc i64 %call10 to i32
  %call11 = call i32 %36(%struct.gx_device_s* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i32 %conv, i32 0) #5
  %arrayidx12 = getelementptr inbounds [3 x i32], [3 x i32]* %num_colorant, i32 0, i64 0
  store i32 %call11, i32* %arrayidx12, align 4, !tbaa !5
  %38 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %procs13 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %38, i32 0, i32 42
  %get_color_comp_index14 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs13, i32 0, i32 50
  %39 = load i32 (%struct.gx_device_s*, i8*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32)** %get_color_comp_index14, align 8, !tbaa !80
  %40 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %call15 = call i64 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0)) #6
  %conv16 = trunc i64 %call15 to i32
  %call17 = call i32 %39(%struct.gx_device_s* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 %conv16, i32 0) #5
  %arrayidx18 = getelementptr inbounds [3 x i32], [3 x i32]* %num_colorant, i32 0, i64 1
  store i32 %call17, i32* %arrayidx18, align 4, !tbaa !5
  %41 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %procs19 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %41, i32 0, i32 42
  %get_color_comp_index20 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs19, i32 0, i32 50
  %42 = load i32 (%struct.gx_device_s*, i8*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32)** %get_color_comp_index20, align 8, !tbaa !80
  %43 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %call21 = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0)) #6
  %conv22 = trunc i64 %call21 to i32
  %call23 = call i32 %42(%struct.gx_device_s* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 %conv22, i32 0) #5
  %arrayidx24 = getelementptr inbounds [3 x i32], [3 x i32]* %num_colorant, i32 0, i64 2
  store i32 %call23, i32* %arrayidx24, align 4, !tbaa !5
  store i64 0, i64* %nz_comps, align 8, !tbaa !24
  store i64 1, i64* %one, align 8, !tbaa !24
  store i32 1, i32* %colorant_ok, align 4, !tbaa !5
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.9
  %44 = load i32, i32* %k, align 4, !tbaa !5
  %cmp25 = icmp slt i32 %44, 3
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %45 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom = sext i32 %45 to i64
  %46 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc, align 8, !tbaa !1
  %ccolor = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %46, i32 0, i32 4
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %ccolor, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 %idxprom
  %47 = load float, float* %arrayidx27, align 4, !tbaa !110
  %cmp28 = fcmp une float %47, 0.000000e+00
  br i1 %cmp28, label %if.then.30, label %if.end.40

if.then.30:                                       ; preds = %for.body
  %48 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom31 = sext i32 %48 to i64
  %arrayidx32 = getelementptr inbounds [3 x i32], [3 x i32]* %num_colorant, i32 0, i64 %idxprom31
  %49 = load i32, i32* %arrayidx32, align 4, !tbaa !5
  %cmp33 = icmp eq i32 %49, -1
  br i1 %cmp33, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.then.30
  store i32 0, i32* %colorant_ok, align 4, !tbaa !5
  br label %if.end.39

if.else.36:                                       ; preds = %if.then.30
  %50 = load i64, i64* %one, align 8, !tbaa !24
  %51 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom37 = sext i32 %51 to i64
  %arrayidx38 = getelementptr inbounds [3 x i32], [3 x i32]* %num_colorant, i32 0, i64 %idxprom37
  %52 = load i32, i32* %arrayidx38, align 4, !tbaa !5
  %sh_prom = zext i32 %52 to i64
  %shl = shl i64 %50, %sh_prom
  store i64 %shl, i64* %temp, align 8, !tbaa !24
  %53 = load i64, i64* %nz_comps, align 8, !tbaa !24
  %54 = load i64, i64* %temp, align 8, !tbaa !24
  %or = or i64 %53, %54
  store i64 %or, i64* %nz_comps, align 8, !tbaa !24
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.36, %if.then.35
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.40
  %55 = load i32, i32* %k, align 4, !tbaa !5
  %inc = add nsw i32 %55, 1
  store i32 %inc, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %56 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc, align 8, !tbaa !1
  %ccolor41 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %56, i32 0, i32 4
  %paint42 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %ccolor41, i32 0, i32 1
  %values43 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint42, i32 0, i32 0
  %arrayidx44 = getelementptr inbounds [64 x float], [64 x float]* %values43, i32 0, i64 3
  %57 = load float, float* %arrayidx44, align 4, !tbaa !110
  %mul = fmul float %57, 2.560000e+02
  %conv45 = fptoui float %mul to i16
  %k_value46 = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %params, i32 0, i32 4
  store i16 %conv45, i16* %k_value46, align 2, !tbaa !74
  %58 = load i32, i32* %colorant_ok, align 4, !tbaa !5
  %tobool47 = icmp ne i32 %58, 0
  br i1 %tobool47, label %if.end.54, label %if.then.48

if.then.48:                                       ; preds = %for.end
  %59 = load i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)** %procp, align 8, !tbaa !1
  %60 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc, align 8, !tbaa !1
  %61 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %call49 = call i32 %59(%struct.gx_device_color_s* %60, %struct.gx_device_s* %61, i64* %nz_comps) #5
  store i32 %call49, i32* %code, align 4, !tbaa !5
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.then.48
  %62 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %62, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.53:                                        ; preds = %if.then.48
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %for.end
  br label %if.end.61

if.else.55:                                       ; preds = %if.then.7
  %63 = load i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)** %procp, align 8, !tbaa !1
  %64 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc, align 8, !tbaa !1
  %65 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %call56 = call i32 %63(%struct.gx_device_color_s* %64, %struct.gx_device_s* %65, i64* %nz_comps) #5
  store i32 %call56, i32* %code, align 4, !tbaa !5
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.else.55
  %66 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %66, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.60:                                        ; preds = %if.else.55
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.end.54
  %67 = load i64, i64* %nz_comps, align 8, !tbaa !24
  %68 = load i64, i64* %drawn_comps, align 8, !tbaa !24
  %and = and i64 %68, %67
  store i64 %and, i64* %drawn_comps, align 8, !tbaa !24
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.61, %if.then.59, %if.then.52
  %69 = bitcast i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)** %procp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #2
  %70 = bitcast i32* %colorant_ok to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #2
  %71 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #2
  %72 = bitcast [3 x i32]* %num_colorant to i8*
  call void @llvm.lifetime.end(i64 12, i8* %72) #2
  %73 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #2
  %74 = bitcast i64* %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #2
  %75 = bitcast i64* %one to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #2
  %76 = bitcast i64* %nz_comps to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.72 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.69

if.end.69:                                        ; preds = %cleanup.cont, %if.end.5
  %retain_any_comps = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %params, i32 0, i32 0
  store i32 1, i32* %retain_any_comps, align 4, !tbaa !70
  %retain_spot_comps = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %params, i32 0, i32 1
  store i32 0, i32* %retain_spot_comps, align 4, !tbaa !72
  %77 = load i64, i64* %drawn_comps, align 8, !tbaa !24
  %drawn_comps70 = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %params, i32 0, i32 3
  store i64 %77, i64* %drawn_comps70, align 8, !tbaa !111
  %78 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call71 = call i32 @gs_state_update_overprint(%struct.gs_state_s* %78, %struct.gs_overprint_params_s* %params) #5
  store i32 %call71, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.72

cleanup.72:                                       ; preds = %if.end.69, %cleanup, %if.then.3
  %79 = bitcast %struct.gx_device_color_s** %pdc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #2
  %80 = bitcast %struct.gs_overprint_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 32, i8* %80) #2
  %81 = bitcast i64* %drawn_comps to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #2
  %82 = bitcast %struct.gx_device_color_info_s** %pcinfo to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #2
  %83 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #2
  %84 = load i32, i32* %retval
  ret i32 %84
}

; Function Attrs: nounwind uwtable
define i32 @gx_cspace_no_linear(%struct.gs_color_space_s* %cs, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, %struct.gs_client_color_s* %c0, %struct.gs_client_color_s* %c1, %struct.gs_client_color_s* %c2, %struct.gs_client_color_s* %c3, float %smoothness, %struct.gsicc_link_s* %icclink) #0 {
entry:
  %cs.addr = alloca %struct.gs_color_space_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %c0.addr = alloca %struct.gs_client_color_s*, align 8
  %c1.addr = alloca %struct.gs_client_color_s*, align 8
  %c2.addr = alloca %struct.gs_client_color_s*, align 8
  %c3.addr = alloca %struct.gs_client_color_s*, align 8
  %smoothness.addr = alloca float, align 4
  %icclink.addr = alloca %struct.gsicc_link_s*, align 8
  store %struct.gs_color_space_s* %cs, %struct.gs_color_space_s** %cs.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_client_color_s* %c0, %struct.gs_client_color_s** %c0.addr, align 8, !tbaa !1
  store %struct.gs_client_color_s* %c1, %struct.gs_client_color_s** %c1.addr, align 8, !tbaa !1
  store %struct.gs_client_color_s* %c2, %struct.gs_client_color_s** %c2.addr, align 8, !tbaa !1
  store %struct.gs_client_color_s* %c3, %struct.gs_client_color_s** %c3.addr, align 8, !tbaa !1
  store float %smoothness, float* %smoothness.addr, align 4, !tbaa !110
  store %struct.gsicc_link_s* %icclink, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  ret i32 -15
}

; Function Attrs: nounwind uwtable
define i32 @gx_cspace_is_linear_default(%struct.gs_color_space_s* %cs, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, %struct.gs_client_color_s* %c0, %struct.gs_client_color_s* %c1, %struct.gs_client_color_s* %c2, %struct.gs_client_color_s* %c3, float %smoothness, %struct.gsicc_link_s* %icclink) #0 {
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
  store float %smoothness, float* %smoothness.addr, align 4, !tbaa !110
  store %struct.gsicc_link_s* %icclink, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 11
  %separable_and_linear = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 10
  %2 = load i32, i32* %separable_and_linear, align 4, !tbaa !112
  %cmp = icmp ne i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %c2.addr, align 8, !tbaa !1
  %cmp1 = icmp eq %struct.gs_client_color_s* %3, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %cs.addr, align 8, !tbaa !1
  %5 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %7 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %c0.addr, align 8, !tbaa !1
  %8 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %c1.addr, align 8, !tbaa !1
  %9 = load float, float* %smoothness.addr, align 4, !tbaa !110
  %call = call i32 @gx_cspace_is_linear_in_line(%struct.gs_color_space_s* %4, %struct.gs_imager_state_s* %5, %struct.gx_device_s* %6, %struct.gs_client_color_s* %7, %struct.gs_client_color_s* %8, float %9) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %10 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %cs.addr, align 8, !tbaa !1
  %11 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %13 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %c0.addr, align 8, !tbaa !1
  %14 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %c1.addr, align 8, !tbaa !1
  %15 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %c2.addr, align 8, !tbaa !1
  %16 = load float, float* %smoothness.addr, align 4, !tbaa !110
  %call4 = call i32 @gx_cspace_is_linear_in_triangle(%struct.gs_color_space_s* %10, %struct.gs_imager_state_s* %11, %struct.gx_device_s* %12, %struct.gs_client_color_s* %13, %struct.gs_client_color_s* %14, %struct.gs_client_color_s* %15, float %16) #5
  store i32 %call4, i32* %code, align 4, !tbaa !5
  %17 = load i32, i32* %code, align 4, !tbaa !5
  %cmp5 = icmp sle i32 %17, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  %18 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end.3
  %19 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %c3.addr, align 8, !tbaa !1
  %cmp8 = icmp eq %struct.gs_client_color_s* %19, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.7
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end.7
  %20 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %cs.addr, align 8, !tbaa !1
  %21 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %23 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %c1.addr, align 8, !tbaa !1
  %24 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %c2.addr, align 8, !tbaa !1
  %25 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %c3.addr, align 8, !tbaa !1
  %26 = load float, float* %smoothness.addr, align 4, !tbaa !110
  %call11 = call i32 @gx_cspace_is_linear_in_triangle(%struct.gs_color_space_s* %20, %struct.gs_imager_state_s* %21, %struct.gx_device_s* %22, %struct.gs_client_color_s* %23, %struct.gs_client_color_s* %24, %struct.gs_client_color_s* %25, float %26) #5
  store i32 %call11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.10, %if.then.9, %if.then.6, %if.then.2, %if.then
  %27 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #2
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_cspace_is_linear_in_line(%struct.gs_color_space_s* %cs, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, %struct.gs_client_color_s* %c0, %struct.gs_client_color_s* %c1, float %smoothness) #0 {
entry:
  %retval = alloca i32, align 4
  %cs.addr = alloca %struct.gs_color_space_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %c0.addr = alloca %struct.gs_client_color_s*, align 8
  %c1.addr = alloca %struct.gs_client_color_s*, align 8
  %smoothness.addr = alloca float, align 4
  %c01a = alloca %struct.gs_client_color_s, align 8
  %c01b = alloca %struct.gs_client_color_s, align 8
  %d = alloca [2 x %struct.gx_device_color_s], align 16
  %d01a = alloca %struct.gx_device_color_s, align 8
  %d01b = alloca %struct.gx_device_color_s, align 8
  %n = alloca i32, align 4
  %ndev = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_color_space_s* %cs, %struct.gs_color_space_s** %cs.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_client_color_s* %c0, %struct.gs_client_color_s** %c0.addr, align 8, !tbaa !1
  store %struct.gs_client_color_s* %c1, %struct.gs_client_color_s** %c1.addr, align 8, !tbaa !1
  store float %smoothness, float* %smoothness.addr, align 4, !tbaa !110
  %0 = bitcast %struct.gs_client_color_s* %c01a to i8*
  call void @llvm.lifetime.start(i64 264, i8* %0) #2
  %1 = bitcast %struct.gs_client_color_s* %c01b to i8*
  call void @llvm.lifetime.start(i64 264, i8* %1) #2
  %2 = bitcast [2 x %struct.gx_device_color_s]* %d to i8*
  call void @llvm.lifetime.start(i64 1312, i8* %2) #2
  %3 = bitcast %struct.gx_device_color_s* %d01a to i8*
  call void @llvm.lifetime.start(i64 656, i8* %3) #2
  %4 = bitcast %struct.gx_device_color_s* %d01b to i8*
  call void @llvm.lifetime.start(i64 656, i8* %4) #2
  %5 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %cs.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %6, i32 0, i32 0
  %7 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !15
  %num_components = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %7, i32 0, i32 4
  %8 = load i32 (%struct.gs_color_space_s*)*, i32 (%struct.gs_color_space_s*)** %num_components, align 8, !tbaa !62
  %9 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %cs.addr, align 8, !tbaa !1
  %call = call i32 %8(%struct.gs_color_space_s* %9) #5
  store i32 %call, i32* %n, align 4, !tbaa !5
  %10 = bitcast i32* %ndev to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 11
  %num_components1 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %12 = load i32, i32* %num_components1, align 4, !tbaa !113
  store i32 %12, i32* %ndev, align 4, !tbaa !5
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %cs.addr, align 8, !tbaa !1
  %15 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds [2 x %struct.gx_device_color_s], [2 x %struct.gx_device_color_s]* %d, i32 0, i64 0
  %17 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %c0.addr, align 8, !tbaa !1
  %call2 = call i32 @cc2dc(%struct.gs_color_space_s* %14, %struct.gs_imager_state_s* %15, %struct.gx_device_s* %16, %struct.gx_device_color_s* %arrayidx, %struct.gs_client_color_s* %17) #5
  store i32 %call2, i32* %code, align 4, !tbaa !5
  %18 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %18, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %19 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %20 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %cs.addr, align 8, !tbaa !1
  %21 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds [2 x %struct.gx_device_color_s], [2 x %struct.gx_device_color_s]* %d, i32 0, i64 1
  %23 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %c1.addr, align 8, !tbaa !1
  %call4 = call i32 @cc2dc(%struct.gs_color_space_s* %20, %struct.gs_imager_state_s* %21, %struct.gx_device_s* %22, %struct.gx_device_color_s* %arrayidx3, %struct.gs_client_color_s* %23) #5
  store i32 %call4, i32* %code, align 4, !tbaa !5
  %24 = load i32, i32* %code, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %24, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %25 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end
  %26 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %c0.addr, align 8, !tbaa !1
  %27 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %c1.addr, align 8, !tbaa !1
  %28 = load i32, i32* %n, align 4, !tbaa !5
  call void @interpolate_cc(%struct.gs_client_color_s* %c01a, %struct.gs_client_color_s* %26, %struct.gs_client_color_s* %27, double 3.000000e-01, i32 %28) #5
  %29 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %cs.addr, align 8, !tbaa !1
  %30 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call8 = call i32 @cc2dc(%struct.gs_color_space_s* %29, %struct.gs_imager_state_s* %30, %struct.gx_device_s* %31, %struct.gx_device_color_s* %d01a, %struct.gs_client_color_s* %c01a) #5
  store i32 %call8, i32* %code, align 4, !tbaa !5
  %32 = load i32, i32* %code, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %32, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  %33 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end.7
  %34 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds [2 x %struct.gx_device_color_s], [2 x %struct.gx_device_color_s]* %d, i32 0, i64 0
  %arrayidx13 = getelementptr inbounds [2 x %struct.gx_device_color_s], [2 x %struct.gx_device_color_s]* %d, i32 0, i64 1
  %35 = load i32, i32* %ndev, align 4, !tbaa !5
  %36 = load float, float* %smoothness.addr, align 4, !tbaa !110
  %call14 = call i32 @is_dc_nearly_linear(%struct.gx_device_s* %34, %struct.gx_device_color_s* %d01a, %struct.gx_device_color_s* %arrayidx12, %struct.gx_device_color_s* %arrayidx13, double 3.000000e-01, i32 %35, float %36) #5
  %tobool = icmp ne i32 %call14, 0
  br i1 %tobool, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.end.11
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.end.11
  %37 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %c0.addr, align 8, !tbaa !1
  %38 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %c1.addr, align 8, !tbaa !1
  %39 = load i32, i32* %n, align 4, !tbaa !5
  call void @interpolate_cc(%struct.gs_client_color_s* %c01b, %struct.gs_client_color_s* %37, %struct.gs_client_color_s* %38, double 7.000000e-01, i32 %39) #5
  %40 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %cs.addr, align 8, !tbaa !1
  %41 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %42 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call17 = call i32 @cc2dc(%struct.gs_color_space_s* %40, %struct.gs_imager_state_s* %41, %struct.gx_device_s* %42, %struct.gx_device_color_s* %d01b, %struct.gs_client_color_s* %c01b) #5
  store i32 %call17, i32* %code, align 4, !tbaa !5
  %43 = load i32, i32* %code, align 4, !tbaa !5
  %cmp18 = icmp slt i32 %43, 0
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.16
  %44 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %44, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.end.16
  %45 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds [2 x %struct.gx_device_color_s], [2 x %struct.gx_device_color_s]* %d, i32 0, i64 0
  %arrayidx22 = getelementptr inbounds [2 x %struct.gx_device_color_s], [2 x %struct.gx_device_color_s]* %d, i32 0, i64 1
  %46 = load i32, i32* %ndev, align 4, !tbaa !5
  %47 = load float, float* %smoothness.addr, align 4, !tbaa !110
  %call23 = call i32 @is_dc_nearly_linear(%struct.gx_device_s* %45, %struct.gx_device_color_s* %d01b, %struct.gx_device_color_s* %arrayidx21, %struct.gx_device_color_s* %arrayidx22, double 7.000000e-01, i32 %46, float %47) #5
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %if.end.20
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %if.end.20
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.26, %if.then.25, %if.then.19, %if.then.15, %if.then.10, %if.then.6, %if.then
  %48 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #2
  %49 = bitcast i32* %ndev to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #2
  %50 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #2
  %51 = bitcast %struct.gx_device_color_s* %d01b to i8*
  call void @llvm.lifetime.end(i64 656, i8* %51) #2
  %52 = bitcast %struct.gx_device_color_s* %d01a to i8*
  call void @llvm.lifetime.end(i64 656, i8* %52) #2
  %53 = bitcast [2 x %struct.gx_device_color_s]* %d to i8*
  call void @llvm.lifetime.end(i64 1312, i8* %53) #2
  %54 = bitcast %struct.gs_client_color_s* %c01b to i8*
  call void @llvm.lifetime.end(i64 264, i8* %54) #2
  %55 = bitcast %struct.gs_client_color_s* %c01a to i8*
  call void @llvm.lifetime.end(i64 264, i8* %55) #2
  %56 = load i32, i32* %retval
  ret i32 %56
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_cspace_is_linear_in_triangle(%struct.gs_color_space_s* %cs, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, %struct.gs_client_color_s* %c0, %struct.gs_client_color_s* %c1, %struct.gs_client_color_s* %c2, float %smoothness) #0 {
entry:
  %retval = alloca i32, align 4
  %cs.addr = alloca %struct.gs_color_space_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %c0.addr = alloca %struct.gs_client_color_s*, align 8
  %c1.addr = alloca %struct.gs_client_color_s*, align 8
  %c2.addr = alloca %struct.gs_client_color_s*, align 8
  %smoothness.addr = alloca float, align 4
  %c01 = alloca %struct.gs_client_color_s, align 8
  %c12 = alloca %struct.gs_client_color_s, align 8
  %c20 = alloca %struct.gs_client_color_s, align 8
  %c012 = alloca %struct.gs_client_color_s, align 8
  %d = alloca [3 x %struct.gx_device_color_s], align 16
  %d01 = alloca %struct.gx_device_color_s, align 8
  %d12 = alloca %struct.gx_device_color_s, align 8
  %d20 = alloca %struct.gx_device_color_s, align 8
  %d012 = alloca %struct.gx_device_color_s, align 8
  %n = alloca i32, align 4
  %ndev = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_color_space_s* %cs, %struct.gs_color_space_s** %cs.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_client_color_s* %c0, %struct.gs_client_color_s** %c0.addr, align 8, !tbaa !1
  store %struct.gs_client_color_s* %c1, %struct.gs_client_color_s** %c1.addr, align 8, !tbaa !1
  store %struct.gs_client_color_s* %c2, %struct.gs_client_color_s** %c2.addr, align 8, !tbaa !1
  store float %smoothness, float* %smoothness.addr, align 4, !tbaa !110
  %0 = bitcast %struct.gs_client_color_s* %c01 to i8*
  call void @llvm.lifetime.start(i64 264, i8* %0) #2
  %1 = bitcast %struct.gs_client_color_s* %c12 to i8*
  call void @llvm.lifetime.start(i64 264, i8* %1) #2
  %2 = bitcast %struct.gs_client_color_s* %c20 to i8*
  call void @llvm.lifetime.start(i64 264, i8* %2) #2
  %3 = bitcast %struct.gs_client_color_s* %c012 to i8*
  call void @llvm.lifetime.start(i64 264, i8* %3) #2
  %4 = bitcast [3 x %struct.gx_device_color_s]* %d to i8*
  call void @llvm.lifetime.start(i64 1968, i8* %4) #2
  %5 = bitcast %struct.gx_device_color_s* %d01 to i8*
  call void @llvm.lifetime.start(i64 656, i8* %5) #2
  %6 = bitcast %struct.gx_device_color_s* %d12 to i8*
  call void @llvm.lifetime.start(i64 656, i8* %6) #2
  %7 = bitcast %struct.gx_device_color_s* %d20 to i8*
  call void @llvm.lifetime.start(i64 656, i8* %7) #2
  %8 = bitcast %struct.gx_device_color_s* %d012 to i8*
  call void @llvm.lifetime.start(i64 656, i8* %8) #2
  %9 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %cs.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %10, i32 0, i32 0
  %11 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !15
  %num_components = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %11, i32 0, i32 4
  %12 = load i32 (%struct.gs_color_space_s*)*, i32 (%struct.gs_color_space_s*)** %num_components, align 8, !tbaa !62
  %13 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %cs.addr, align 8, !tbaa !1
  %call = call i32 %12(%struct.gs_color_space_s* %13) #5
  store i32 %call, i32* %n, align 4, !tbaa !5
  %14 = bitcast i32* %ndev to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %15, i32 0, i32 11
  %num_components1 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %16 = load i32, i32* %num_components1, align 4, !tbaa !113
  store i32 %16, i32* %ndev, align 4, !tbaa !5
  %17 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %cs.addr, align 8, !tbaa !1
  %19 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds [3 x %struct.gx_device_color_s], [3 x %struct.gx_device_color_s]* %d, i32 0, i64 0
  %21 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %c0.addr, align 8, !tbaa !1
  %call2 = call i32 @cc2dc(%struct.gs_color_space_s* %18, %struct.gs_imager_state_s* %19, %struct.gx_device_s* %20, %struct.gx_device_color_s* %arrayidx, %struct.gs_client_color_s* %21) #5
  store i32 %call2, i32* %code, align 4, !tbaa !5
  %22 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %22, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %23 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %24 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %cs.addr, align 8, !tbaa !1
  %25 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds [3 x %struct.gx_device_color_s], [3 x %struct.gx_device_color_s]* %d, i32 0, i64 1
  %27 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %c1.addr, align 8, !tbaa !1
  %call4 = call i32 @cc2dc(%struct.gs_color_space_s* %24, %struct.gs_imager_state_s* %25, %struct.gx_device_s* %26, %struct.gx_device_color_s* %arrayidx3, %struct.gs_client_color_s* %27) #5
  store i32 %call4, i32* %code, align 4, !tbaa !5
  %28 = load i32, i32* %code, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %28, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %29 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end
  %30 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %cs.addr, align 8, !tbaa !1
  %31 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds [3 x %struct.gx_device_color_s], [3 x %struct.gx_device_color_s]* %d, i32 0, i64 2
  %33 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %c2.addr, align 8, !tbaa !1
  %call9 = call i32 @cc2dc(%struct.gs_color_space_s* %30, %struct.gs_imager_state_s* %31, %struct.gx_device_s* %32, %struct.gx_device_color_s* %arrayidx8, %struct.gs_client_color_s* %33) #5
  store i32 %call9, i32* %code, align 4, !tbaa !5
  %34 = load i32, i32* %code, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %34, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.7
  %35 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %35, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end.7
  %36 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %c0.addr, align 8, !tbaa !1
  %37 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %c1.addr, align 8, !tbaa !1
  %38 = load i32, i32* %n, align 4, !tbaa !5
  call void @interpolate_cc(%struct.gs_client_color_s* %c01, %struct.gs_client_color_s* %36, %struct.gs_client_color_s* %37, double 5.000000e-01, i32 %38) #5
  %39 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %cs.addr, align 8, !tbaa !1
  %40 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %41 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call13 = call i32 @cc2dc(%struct.gs_color_space_s* %39, %struct.gs_imager_state_s* %40, %struct.gx_device_s* %41, %struct.gx_device_color_s* %d01, %struct.gs_client_color_s* %c01) #5
  store i32 %call13, i32* %code, align 4, !tbaa !5
  %42 = load i32, i32* %code, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %42, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  %43 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %43, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.end.12
  %44 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds [3 x %struct.gx_device_color_s], [3 x %struct.gx_device_color_s]* %d, i32 0, i64 0
  %arrayidx18 = getelementptr inbounds [3 x %struct.gx_device_color_s], [3 x %struct.gx_device_color_s]* %d, i32 0, i64 1
  %45 = load i32, i32* %ndev, align 4, !tbaa !5
  %46 = load float, float* %smoothness.addr, align 4, !tbaa !110
  %call19 = call i32 @is_dc_nearly_linear(%struct.gx_device_s* %44, %struct.gx_device_color_s* %d01, %struct.gx_device_color_s* %arrayidx17, %struct.gx_device_color_s* %arrayidx18, double 5.000000e-01, i32 %45, float %46) #5
  %tobool = icmp ne i32 %call19, 0
  br i1 %tobool, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %if.end.16
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.end.16
  %47 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %c2.addr, align 8, !tbaa !1
  %48 = load i32, i32* %n, align 4, !tbaa !5
  call void @interpolate_cc(%struct.gs_client_color_s* %c012, %struct.gs_client_color_s* %47, %struct.gs_client_color_s* %c01, double 0x3FE5555555555555, i32 %48) #5
  %49 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %cs.addr, align 8, !tbaa !1
  %50 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %51 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call22 = call i32 @cc2dc(%struct.gs_color_space_s* %49, %struct.gs_imager_state_s* %50, %struct.gx_device_s* %51, %struct.gx_device_color_s* %d012, %struct.gs_client_color_s* %c012) #5
  store i32 %call22, i32* %code, align 4, !tbaa !5
  %52 = load i32, i32* %code, align 4, !tbaa !5
  %cmp23 = icmp slt i32 %52, 0
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.21
  %53 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %53, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %if.end.21
  %54 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds [3 x %struct.gx_device_color_s], [3 x %struct.gx_device_color_s]* %d, i32 0, i64 2
  %55 = load i32, i32* %ndev, align 4, !tbaa !5
  %56 = load float, float* %smoothness.addr, align 4, !tbaa !110
  %call27 = call i32 @is_dc_nearly_linear(%struct.gx_device_s* %54, %struct.gx_device_color_s* %d012, %struct.gx_device_color_s* %arrayidx26, %struct.gx_device_color_s* %d01, double 0x3FE5555555555555, i32 %55, float %56) #5
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.end.30, label %if.then.29

if.then.29:                                       ; preds = %if.end.25
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %if.end.25
  %57 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %c1.addr, align 8, !tbaa !1
  %58 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %c2.addr, align 8, !tbaa !1
  %59 = load i32, i32* %n, align 4, !tbaa !5
  call void @interpolate_cc(%struct.gs_client_color_s* %c12, %struct.gs_client_color_s* %57, %struct.gs_client_color_s* %58, double 5.000000e-01, i32 %59) #5
  %60 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %cs.addr, align 8, !tbaa !1
  %61 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %62 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call31 = call i32 @cc2dc(%struct.gs_color_space_s* %60, %struct.gs_imager_state_s* %61, %struct.gx_device_s* %62, %struct.gx_device_color_s* %d12, %struct.gs_client_color_s* %c12) #5
  store i32 %call31, i32* %code, align 4, !tbaa !5
  %63 = load i32, i32* %code, align 4, !tbaa !5
  %cmp32 = icmp slt i32 %63, 0
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.30
  %64 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %64, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %if.end.30
  %65 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds [3 x %struct.gx_device_color_s], [3 x %struct.gx_device_color_s]* %d, i32 0, i64 1
  %arrayidx36 = getelementptr inbounds [3 x %struct.gx_device_color_s], [3 x %struct.gx_device_color_s]* %d, i32 0, i64 2
  %66 = load i32, i32* %ndev, align 4, !tbaa !5
  %67 = load float, float* %smoothness.addr, align 4, !tbaa !110
  %call37 = call i32 @is_dc_nearly_linear(%struct.gx_device_s* %65, %struct.gx_device_color_s* %d12, %struct.gx_device_color_s* %arrayidx35, %struct.gx_device_color_s* %arrayidx36, double 5.000000e-01, i32 %66, float %67) #5
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.end.40, label %if.then.39

if.then.39:                                       ; preds = %if.end.34
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.40:                                        ; preds = %if.end.34
  %68 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %c2.addr, align 8, !tbaa !1
  %69 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %c0.addr, align 8, !tbaa !1
  %70 = load i32, i32* %n, align 4, !tbaa !5
  call void @interpolate_cc(%struct.gs_client_color_s* %c20, %struct.gs_client_color_s* %68, %struct.gs_client_color_s* %69, double 5.000000e-01, i32 %70) #5
  %71 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %cs.addr, align 8, !tbaa !1
  %72 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %73 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call41 = call i32 @cc2dc(%struct.gs_color_space_s* %71, %struct.gs_imager_state_s* %72, %struct.gx_device_s* %73, %struct.gx_device_color_s* %d20, %struct.gs_client_color_s* %c20) #5
  store i32 %call41, i32* %code, align 4, !tbaa !5
  %74 = load i32, i32* %code, align 4, !tbaa !5
  %cmp42 = icmp slt i32 %74, 0
  br i1 %cmp42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.40
  %75 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %75, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.44:                                        ; preds = %if.end.40
  %76 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds [3 x %struct.gx_device_color_s], [3 x %struct.gx_device_color_s]* %d, i32 0, i64 2
  %arrayidx46 = getelementptr inbounds [3 x %struct.gx_device_color_s], [3 x %struct.gx_device_color_s]* %d, i32 0, i64 0
  %77 = load i32, i32* %ndev, align 4, !tbaa !5
  %78 = load float, float* %smoothness.addr, align 4, !tbaa !110
  %call47 = call i32 @is_dc_nearly_linear(%struct.gx_device_s* %76, %struct.gx_device_color_s* %d20, %struct.gx_device_color_s* %arrayidx45, %struct.gx_device_color_s* %arrayidx46, double 5.000000e-01, i32 %77, float %78) #5
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.end.50, label %if.then.49

if.then.49:                                       ; preds = %if.end.44
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.50:                                        ; preds = %if.end.44
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.50, %if.then.49, %if.then.43, %if.then.39, %if.then.33, %if.then.29, %if.then.24, %if.then.20, %if.then.15, %if.then.11, %if.then.6, %if.then
  %79 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #2
  %80 = bitcast i32* %ndev to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #2
  %81 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #2
  %82 = bitcast %struct.gx_device_color_s* %d012 to i8*
  call void @llvm.lifetime.end(i64 656, i8* %82) #2
  %83 = bitcast %struct.gx_device_color_s* %d20 to i8*
  call void @llvm.lifetime.end(i64 656, i8* %83) #2
  %84 = bitcast %struct.gx_device_color_s* %d12 to i8*
  call void @llvm.lifetime.end(i64 656, i8* %84) #2
  %85 = bitcast %struct.gx_device_color_s* %d01 to i8*
  call void @llvm.lifetime.end(i64 656, i8* %85) #2
  %86 = bitcast [3 x %struct.gx_device_color_s]* %d to i8*
  call void @llvm.lifetime.end(i64 1968, i8* %86) #2
  %87 = bitcast %struct.gs_client_color_s* %c012 to i8*
  call void @llvm.lifetime.end(i64 264, i8* %87) #2
  %88 = bitcast %struct.gs_client_color_s* %c20 to i8*
  call void @llvm.lifetime.end(i64 264, i8* %88) #2
  %89 = bitcast %struct.gs_client_color_s* %c12 to i8*
  call void @llvm.lifetime.end(i64 264, i8* %89) #2
  %90 = bitcast %struct.gs_client_color_s* %c01 to i8*
  call void @llvm.lifetime.end(i64 264, i8* %90) #2
  %91 = load i32, i32* %retval
  ret i32 %91
}

; Function Attrs: nounwind uwtable
define i32 @gx_serialize_cspace_type(%struct.gs_color_space_s* %pcs, %struct.stream_s* %s) #0 {
entry:
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %s.addr = alloca %struct.stream_s*, align 8
  %type = alloca %struct.gs_color_space_type_s*, align 8
  %n = alloca i32, align 4
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_color_space_type_s** %type to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %type1 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %1, i32 0, i32 0
  %2 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type1, align 8, !tbaa !15
  store %struct.gs_color_space_type_s* %2, %struct.gs_color_space_type_s** %type, align 8, !tbaa !1
  %3 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %5 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %5, i32 0, i32 0
  %6 = bitcast i32* %index to i8*
  %call = call i32 @sputs(%struct.stream_s* %4, i8* %6, i32 4, i32* %n) #5
  %7 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #2
  %8 = bitcast %struct.gs_color_space_type_s** %type to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #2
  ret i32 %call
}

declare i32 @sputs(%struct.stream_s*, i8*, i32, i32*) #1

declare void @rc_free_struct_only(%struct.gs_memory_s*, i8*, i8*) #1

declare void @gx_init_paint_1(%struct.gs_client_color_s*, %struct.gs_color_space_s*) #1

declare void @gx_restrict01_paint_1(%struct.gs_client_color_s*, %struct.gs_color_space_s*) #1

declare %struct.gs_color_space_s* @gx_same_concrete_space(%struct.gs_color_space_s*, %struct.gs_imager_state_s*) #1

declare i32 @gx_concretize_DeviceGray(%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*) #1

declare i32 @gx_remap_concrete_DGray(i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32) #1

declare i32 @gx_remap_DeviceGray(%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @gx_install_DeviceGray(%struct.gs_color_space_s* %pcs, %struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %0, i32 0, i32 6
  %1 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !32
  %cmp = icmp ne %struct.cmm_profile_s* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %icc_manager = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 35
  %3 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !33
  %default_gray = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %3, i32 0, i32 1
  %4 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_gray, align 8, !tbaa !53
  %cmp1 = icmp eq %struct.cmm_profile_s* %4, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 @gsicc_init_iccmanager(%struct.gs_state_s* %5) #5
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %icc_manager4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 35
  %7 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager4, align 8, !tbaa !33
  %default_gray5 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %7, i32 0, i32 1
  %8 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_gray5, align 8, !tbaa !53
  %9 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data6 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %9, i32 0, i32 6
  store %struct.cmm_profile_s* %8, %struct.cmm_profile_s** %cmm_icc_profile_data6, align 8, !tbaa !32
  br label %do.body

do.body:                                          ; preds = %if.end.3
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %icc_manager7 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %10, i32 0, i32 35
  %11 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager7, align 8, !tbaa !33
  %default_gray8 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %11, i32 0, i32 1
  %12 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_gray8, align 8, !tbaa !53
  %tobool = icmp ne %struct.cmm_profile_s* %12, null
  br i1 %tobool, label %if.then.9, label %if.end.15

if.then.9:                                        ; preds = %do.body
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %icc_manager11 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %13, i32 0, i32 35
  %14 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager11, align 8, !tbaa !33
  %default_gray12 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %14, i32 0, i32 1
  %15 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_gray12, align 8, !tbaa !53
  %rc = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %15, i32 0, i32 18
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %16 = load i64, i64* %ref_count, align 8, !tbaa !57
  %inc = add nsw i64 %16, 1
  store i64 %inc, i64* %ref_count, align 8, !tbaa !57
  br label %do.body.13

do.body.13:                                       ; preds = %do.body.10
  br label %do.end

do.end:                                           ; preds = %do.body.13
  br label %do.end.14

do.end.14:                                        ; preds = %do.end
  br label %if.end.15

if.end.15:                                        ; preds = %do.end.14, %do.body
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %17 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %17, i32 0, i32 0
  store %struct.gs_color_space_type_s* @gs_color_space_type_ICC, %struct.gs_color_space_type_s** %type, align 8, !tbaa !15
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.16, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

declare void @gx_no_adjust_color_count(%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32) #1

declare i32 @gsicc_init_iccmanager(%struct.gs_state_s*) #1

declare void @gx_init_paint_3(%struct.gs_client_color_s*, %struct.gs_color_space_s*) #1

declare void @gx_restrict01_paint_3(%struct.gs_client_color_s*, %struct.gs_color_space_s*) #1

declare i32 @gx_concretize_DeviceRGB(%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*) #1

declare i32 @gx_remap_concrete_DRGB(i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32) #1

declare i32 @gx_remap_DeviceRGB(%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @gx_install_DeviceRGB(%struct.gs_color_space_s* %pcs, %struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %0, i32 0, i32 6
  %1 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !32
  %cmp = icmp ne %struct.cmm_profile_s* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %icc_manager = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 35
  %3 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !33
  %default_rgb = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %3, i32 0, i32 2
  %4 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_rgb, align 8, !tbaa !55
  %cmp1 = icmp eq %struct.cmm_profile_s* %4, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 @gsicc_init_iccmanager(%struct.gs_state_s* %5) #5
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %icc_manager4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 35
  %7 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager4, align 8, !tbaa !33
  %default_rgb5 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %7, i32 0, i32 2
  %8 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_rgb5, align 8, !tbaa !55
  %9 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data6 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %9, i32 0, i32 6
  store %struct.cmm_profile_s* %8, %struct.cmm_profile_s** %cmm_icc_profile_data6, align 8, !tbaa !32
  br label %do.body

do.body:                                          ; preds = %if.end.3
  %10 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data7 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %10, i32 0, i32 6
  %11 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data7, align 8, !tbaa !32
  %tobool = icmp ne %struct.cmm_profile_s* %11, null
  br i1 %tobool, label %if.then.8, label %if.end.13

if.then.8:                                        ; preds = %do.body
  br label %do.body.9

do.body.9:                                        ; preds = %if.then.8
  %12 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data10 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %12, i32 0, i32 6
  %13 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data10, align 8, !tbaa !32
  %rc = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %13, i32 0, i32 18
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %14 = load i64, i64* %ref_count, align 8, !tbaa !57
  %inc = add nsw i64 %14, 1
  store i64 %inc, i64* %ref_count, align 8, !tbaa !57
  br label %do.body.11

do.body.11:                                       ; preds = %do.body.9
  br label %do.end

do.end:                                           ; preds = %do.body.11
  br label %do.end.12

do.end.12:                                        ; preds = %do.end
  br label %if.end.13

if.end.13:                                        ; preds = %do.end.12, %do.body
  br label %do.end.14

do.end.14:                                        ; preds = %if.end.13
  %15 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %15, i32 0, i32 0
  store %struct.gs_color_space_type_s* @gs_color_space_type_ICC, %struct.gs_color_space_type_s** %type, align 8, !tbaa !15
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.14, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare void @gx_init_paint_4(%struct.gs_client_color_s*, %struct.gs_color_space_s*) #1

declare void @gx_restrict01_paint_4(%struct.gs_client_color_s*, %struct.gs_color_space_s*) #1

declare i32 @gx_concretize_DeviceCMYK(%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*) #1

declare i32 @gx_remap_concrete_DCMYK(i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32) #1

declare i32 @gx_remap_DeviceCMYK(%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @gx_install_DeviceCMYK(%struct.gs_color_space_s* %pcs, %struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %0, i32 0, i32 6
  %1 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !32
  %cmp = icmp ne %struct.cmm_profile_s* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %icc_manager = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 35
  %3 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !33
  %default_cmyk = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %3, i32 0, i32 3
  %4 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_cmyk, align 8, !tbaa !56
  %cmp1 = icmp eq %struct.cmm_profile_s* %4, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 @gsicc_init_iccmanager(%struct.gs_state_s* %5) #5
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %icc_manager4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 35
  %7 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager4, align 8, !tbaa !33
  %default_cmyk5 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %7, i32 0, i32 3
  %8 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_cmyk5, align 8, !tbaa !56
  %9 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data6 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %9, i32 0, i32 6
  store %struct.cmm_profile_s* %8, %struct.cmm_profile_s** %cmm_icc_profile_data6, align 8, !tbaa !32
  br label %do.body

do.body:                                          ; preds = %if.end.3
  %10 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data7 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %10, i32 0, i32 6
  %11 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data7, align 8, !tbaa !32
  %tobool = icmp ne %struct.cmm_profile_s* %11, null
  br i1 %tobool, label %if.then.8, label %if.end.13

if.then.8:                                        ; preds = %do.body
  br label %do.body.9

do.body.9:                                        ; preds = %if.then.8
  %12 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data10 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %12, i32 0, i32 6
  %13 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data10, align 8, !tbaa !32
  %rc = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %13, i32 0, i32 18
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %14 = load i64, i64* %ref_count, align 8, !tbaa !57
  %inc = add nsw i64 %14, 1
  store i64 %inc, i64* %ref_count, align 8, !tbaa !57
  br label %do.body.11

do.body.11:                                       ; preds = %do.body.9
  br label %do.end

do.end:                                           ; preds = %do.body.11
  br label %do.end.12

do.end.12:                                        ; preds = %do.end
  br label %if.end.13

if.end.13:                                        ; preds = %do.end.12, %do.body
  br label %do.end.14

do.end.14:                                        ; preds = %if.end.13
  %15 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %15, i32 0, i32 0
  store %struct.gs_color_space_type_s* @gs_color_space_type_ICC, %struct.gs_color_space_type_s** %type, align 8, !tbaa !15
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.14, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_set_overprint_DeviceCMYK(%struct.gs_color_space_s* %pcs, %struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  %pcinfo = alloca %struct.gx_device_color_info_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 78
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !95
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
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %overprint = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 21
  %7 = load i32, i32* %overprint, align 4, !tbaa !114
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %cond.end
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %overprint_mode = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 22
  %9 = load i32, i32* %overprint_mode, align 4, !tbaa !115
  %cmp1 = icmp ne i32 %9, 1
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %10 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %pcinfo, align 8, !tbaa !1
  %cmp3 = icmp eq %struct.gx_device_color_info_s* %10, null
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false.2
  %11 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %pcinfo, align 8, !tbaa !1
  %opmode = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %11, i32 0, i32 15
  %12 = load i32, i32* %opmode, align 4, !tbaa !91
  %cmp5 = icmp eq i32 %12, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.4, %lor.lhs.false.2, %lor.lhs.false, %cond.end
  %13 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 @gx_spot_colors_set_overprint(%struct.gs_color_space_s* %13, %struct.gs_state_s* %14) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.4
  %15 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call6 = call i32 @gx_set_overprint_cmyk(%struct.gs_color_space_s* %15, %struct.gs_state_s* %16) #5
  store i32 %call6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %17 = bitcast %struct.gx_device_color_info_s** %pcinfo to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #2
  %18 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #2
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cc2dc(%struct.gs_color_space_s* %cs, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, %struct.gx_device_color_s* %dc, %struct.gs_client_color_s* %cc) #4 {
entry:
  %cs.addr = alloca %struct.gs_color_space_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %dc.addr = alloca %struct.gx_device_color_s*, align 8
  %cc.addr = alloca %struct.gs_client_color_s*, align 8
  store %struct.gs_color_space_s* %cs, %struct.gs_color_space_s** %cs.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %dc, %struct.gx_device_color_s** %dc.addr, align 8, !tbaa !1
  store %struct.gs_client_color_s* %cc, %struct.gs_client_color_s** %cc.addr, align 8, !tbaa !1
  %0 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %cs.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %0, i32 0, i32 0
  %1 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !15
  %remap_color = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %1, i32 0, i32 10
  %2 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_color, align 8, !tbaa !116
  %3 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %cc.addr, align 8, !tbaa !1
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %cs.addr, align 8, !tbaa !1
  %5 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dc.addr, align 8, !tbaa !1
  %6 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 %2(%struct.gs_client_color_s* %3, %struct.gs_color_space_s* %4, %struct.gx_device_color_s* %5, %struct.gs_imager_state_s* %6, %struct.gx_device_s* %7, i32 0) #5
  ret i32 %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @interpolate_cc(%struct.gs_client_color_s* %c, %struct.gs_client_color_s* %c0, %struct.gs_client_color_s* %c1, double %t, i32 %n) #4 {
entry:
  %c.addr = alloca %struct.gs_client_color_s*, align 8
  %c0.addr = alloca %struct.gs_client_color_s*, align 8
  %c1.addr = alloca %struct.gs_client_color_s*, align 8
  %t.addr = alloca double, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.gs_client_color_s* %c, %struct.gs_client_color_s** %c.addr, align 8, !tbaa !1
  store %struct.gs_client_color_s* %c0, %struct.gs_client_color_s** %c0.addr, align 8, !tbaa !1
  store %struct.gs_client_color_s* %c1, %struct.gs_client_color_s** %c1.addr, align 8, !tbaa !1
  store double %t, double* %t.addr, align 8, !tbaa !117
  store i32 %n, i32* %n.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !5
  %2 = load i32, i32* %n.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %c0.addr, align 8, !tbaa !1
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %4, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 %idxprom
  %5 = load float, float* %arrayidx, align 4, !tbaa !110
  %conv = fpext float %5 to double
  %6 = load double, double* %t.addr, align 8, !tbaa !117
  %mul = fmul double %conv, %6
  %7 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom1 = sext i32 %7 to i64
  %8 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %c1.addr, align 8, !tbaa !1
  %paint2 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %8, i32 0, i32 1
  %values3 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint2, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [64 x float], [64 x float]* %values3, i32 0, i64 %idxprom1
  %9 = load float, float* %arrayidx4, align 4, !tbaa !110
  %conv5 = fpext float %9 to double
  %10 = load double, double* %t.addr, align 8, !tbaa !117
  %sub = fsub double 1.000000e+00, %10
  %mul6 = fmul double %conv5, %sub
  %add = fadd double %mul, %mul6
  %conv7 = fptrunc double %add to float
  %11 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom8 = sext i32 %11 to i64
  %12 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %c.addr, align 8, !tbaa !1
  %paint9 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %12, i32 0, i32 1
  %values10 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint9, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [64 x float], [64 x float]* %values10, i32 0, i64 %idxprom8
  store float %conv7, float* %arrayidx11, align 4, !tbaa !110
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #2
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @is_dc_nearly_linear(%struct.gx_device_s* %dev, %struct.gx_device_color_s* %c, %struct.gx_device_color_s* %c0, %struct.gx_device_color_s* %c1, double %t, i32 %n, float %smoothness) #4 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %c.addr = alloca %struct.gx_device_color_s*, align 8
  %c0.addr = alloca %struct.gx_device_color_s*, align 8
  %c1.addr = alloca %struct.gx_device_color_s*, align 8
  %t.addr = alloca double, align 8
  %n.addr = alloca i32, align 4
  %smoothness.addr = alloca float, align 4
  %i = alloca i32, align 4
  %pure0 = alloca i64, align 8
  %pure1 = alloca i64, align 8
  %pure3 = alloca i64, align 8
  %shift = alloca i32, align 4
  %mask = alloca i32, align 4
  %max_color = alloca i32, align 4
  %max_diff = alloca float, align 4
  %b0 = alloca i32, align 4
  %b1 = alloca i32, align 4
  %b = alloca i32, align 4
  %bb = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %c, %struct.gx_device_color_s** %c.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %c0, %struct.gx_device_color_s** %c0.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %c1, %struct.gx_device_color_s** %c1.addr, align 8, !tbaa !1
  store double %t, double* %t.addr, align 8, !tbaa !117
  store i32 %n, i32* %n.addr, align 4, !tbaa !5
  store float %smoothness, float* %smoothness.addr, align 4, !tbaa !110
  %0 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %c0.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %0, i32 0, i32 0
  %1 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !100
  %cmp = icmp eq %struct.gx_device_color_type_s* %1, @gx_dc_type_data_pure
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i64* %pure0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %c0.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %4, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  %5 = load i64, i64* %pure, align 8, !tbaa !24
  store i64 %5, i64* %pure0, align 8, !tbaa !24
  %6 = bitcast i64* %pure1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %c1.addr, align 8, !tbaa !1
  %colors1 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %7, i32 0, i32 1
  %pure2 = bitcast %union._c* %colors1 to i64*
  %8 = load i64, i64* %pure2, align 8, !tbaa !24
  store i64 %8, i64* %pure1, align 8, !tbaa !24
  %9 = bitcast i64* %pure3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %c.addr, align 8, !tbaa !1
  %colors4 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %10, i32 0, i32 1
  %pure5 = bitcast %union._c* %colors4 to i64*
  %11 = load i64, i64* %pure5, align 8, !tbaa !24
  store i64 %11, i64* %pure3, align 8, !tbaa !24
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %12 = load i32, i32* %i, align 4, !tbaa !5
  %13 = load i32, i32* %n.addr, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %12, %13
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %15 to i64
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %16, i32 0, i32 11
  %comp_shift = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 11
  %arrayidx = getelementptr inbounds [64 x i8], [64 x i8]* %comp_shift, i32 0, i64 %idxprom
  %17 = load i8, i8* %arrayidx, align 1, !tbaa !118
  %conv = zext i8 %17 to i32
  store i32 %conv, i32* %shift, align 4, !tbaa !5
  %18 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom7 = sext i32 %19 to i64
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info8 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 11
  %comp_bits = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info8, i32 0, i32 12
  %arrayidx9 = getelementptr inbounds [64 x i8], [64 x i8]* %comp_bits, i32 0, i64 %idxprom7
  %21 = load i8, i8* %arrayidx9, align 1, !tbaa !118
  %conv10 = zext i8 %21 to i32
  %shl = shl i32 1, %conv10
  %sub = sub nsw i32 %shl, 1
  store i32 %sub, i32* %mask, align 4, !tbaa !5
  %22 = bitcast i32* %max_color to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #2
  %23 = load i32, i32* %i, align 4, !tbaa !5
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info11 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %24, i32 0, i32 11
  %gray_index = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info11, i32 0, i32 4
  %25 = load i8, i8* %gray_index, align 1, !tbaa !119
  %conv12 = zext i8 %25 to i32
  %cmp13 = icmp eq i32 %23, %conv12
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info15 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %26, i32 0, i32 11
  %max_gray = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info15, i32 0, i32 5
  %27 = load i32, i32* %max_gray, align 4, !tbaa !120
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %28 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info16 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %28, i32 0, i32 11
  %max_color17 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info16, i32 0, i32 6
  %29 = load i32, i32* %max_color17, align 4, !tbaa !121
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %27, %cond.true ], [ %29, %cond.false ]
  store i32 %cond, i32* %max_color, align 4, !tbaa !5
  %30 = bitcast float* %max_diff to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #2
  %31 = load i32, i32* %max_color, align 4, !tbaa !5
  %conv18 = sitofp i32 %31 to float
  %32 = load float, float* %smoothness.addr, align 4, !tbaa !110
  %mul = fmul float %conv18, %32
  %cmp19 = fcmp ogt float 1.000000e+00, %mul
  br i1 %cmp19, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %cond.end
  br label %cond.end.25

cond.false.22:                                    ; preds = %cond.end
  %33 = load i32, i32* %max_color, align 4, !tbaa !5
  %conv23 = sitofp i32 %33 to float
  %34 = load float, float* %smoothness.addr, align 4, !tbaa !110
  %mul24 = fmul float %conv23, %34
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.22, %cond.true.21
  %cond26 = phi float [ 1.000000e+00, %cond.true.21 ], [ %mul24, %cond.false.22 ]
  store float %cond26, float* %max_diff, align 4, !tbaa !110
  %35 = bitcast i32* %b0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #2
  %36 = load i64, i64* %pure0, align 8, !tbaa !24
  %37 = load i32, i32* %shift, align 4, !tbaa !5
  %sh_prom = zext i32 %37 to i64
  %shr = lshr i64 %36, %sh_prom
  %38 = load i32, i32* %mask, align 4, !tbaa !5
  %conv27 = sext i32 %38 to i64
  %and = and i64 %shr, %conv27
  %conv28 = trunc i64 %and to i32
  store i32 %conv28, i32* %b0, align 4, !tbaa !5
  %39 = bitcast i32* %b1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #2
  %40 = load i64, i64* %pure1, align 8, !tbaa !24
  %41 = load i32, i32* %shift, align 4, !tbaa !5
  %sh_prom29 = zext i32 %41 to i64
  %shr30 = lshr i64 %40, %sh_prom29
  %42 = load i32, i32* %mask, align 4, !tbaa !5
  %conv31 = sext i32 %42 to i64
  %and32 = and i64 %shr30, %conv31
  %conv33 = trunc i64 %and32 to i32
  store i32 %conv33, i32* %b1, align 4, !tbaa !5
  %43 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #2
  %44 = load i64, i64* %pure3, align 8, !tbaa !24
  %45 = load i32, i32* %shift, align 4, !tbaa !5
  %sh_prom34 = zext i32 %45 to i64
  %shr35 = lshr i64 %44, %sh_prom34
  %46 = load i32, i32* %mask, align 4, !tbaa !5
  %conv36 = sext i32 %46 to i64
  %and37 = and i64 %shr35, %conv36
  %conv38 = trunc i64 %and37 to i32
  store i32 %conv38, i32* %b, align 4, !tbaa !5
  %47 = bitcast double* %bb to i8*
  call void @llvm.lifetime.start(i64 8, i8* %47) #2
  %48 = load i32, i32* %b0, align 4, !tbaa !5
  %conv39 = sitofp i32 %48 to double
  %49 = load double, double* %t.addr, align 8, !tbaa !117
  %mul40 = fmul double %conv39, %49
  %50 = load i32, i32* %b1, align 4, !tbaa !5
  %conv41 = sitofp i32 %50 to double
  %51 = load double, double* %t.addr, align 8, !tbaa !117
  %sub42 = fsub double 1.000000e+00, %51
  %mul43 = fmul double %conv41, %sub42
  %add = fadd double %mul40, %mul43
  store double %add, double* %bb, align 8, !tbaa !117
  %52 = load i32, i32* %b, align 4, !tbaa !5
  %conv44 = sitofp i32 %52 to double
  %53 = load double, double* %bb, align 8, !tbaa !117
  %sub45 = fsub double %conv44, %53
  %cmp46 = fcmp olt double %sub45, 0.000000e+00
  br i1 %cmp46, label %cond.true.48, label %cond.false.52

cond.true.48:                                     ; preds = %cond.end.25
  %54 = load i32, i32* %b, align 4, !tbaa !5
  %conv49 = sitofp i32 %54 to double
  %55 = load double, double* %bb, align 8, !tbaa !117
  %sub50 = fsub double %conv49, %55
  %sub51 = fsub double -0.000000e+00, %sub50
  br label %cond.end.55

cond.false.52:                                    ; preds = %cond.end.25
  %56 = load i32, i32* %b, align 4, !tbaa !5
  %conv53 = sitofp i32 %56 to double
  %57 = load double, double* %bb, align 8, !tbaa !117
  %sub54 = fsub double %conv53, %57
  br label %cond.end.55

cond.end.55:                                      ; preds = %cond.false.52, %cond.true.48
  %cond56 = phi double [ %sub51, %cond.true.48 ], [ %sub54, %cond.false.52 ]
  %58 = load float, float* %max_diff, align 4, !tbaa !110
  %conv57 = fpext float %58 to double
  %cmp58 = fcmp ogt double %cond56, %conv57
  br i1 %cmp58, label %if.then.60, label %if.end

if.then.60:                                       ; preds = %cond.end.55
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end.55
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.60
  %59 = bitcast double* %bb to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #2
  %60 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #2
  %61 = bitcast i32* %b1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #2
  %62 = bitcast i32* %b0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #2
  %63 = bitcast float* %max_diff to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #2
  %64 = bitcast i32* %max_color to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #2
  %65 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #2
  %66 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.68 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %67 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %67, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.68

cleanup.68:                                       ; preds = %for.end, %cleanup
  %68 = bitcast i64* %pure3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #2
  %69 = bitcast i64* %pure1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #2
  %70 = bitcast i64* %pure0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #2
  %71 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #2
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %cleanup.68
  %72 = load i32, i32* %retval
  ret i32 %72
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 40}
!8 = !{!"gs_color_space_s", !2, i64 0, !9, i64 8, !10, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !3, i64 72}
!9 = !{!"rc_header_s", !10, i64 0, !2, i64 8, !2, i64 16}
!10 = !{!"long", !3, i64 0}
!11 = !{!12, !2, i64 0}
!12 = !{!"enum_ptr_s", !2, i64 0, !6, i64 8}
!13 = !{!8, !2, i64 56}
!14 = !{!8, !2, i64 48}
!15 = !{!8, !2, i64 0}
!16 = !{!17, !2, i64 16}
!17 = !{!"gs_color_space_type_s", !3, i64 0, !6, i64 4, !6, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128}
!18 = !{!19, !2, i64 32}
!19 = !{!"gs_memory_struct_type_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!20 = !{!21, !2, i64 0}
!21 = !{!"gc_procs_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!22 = !{!19, !2, i64 40}
!23 = !{!17, !2, i64 96}
!24 = !{!10, !10, i64 0}
!25 = !{!26, !2, i64 72}
!26 = !{!"gs_memory_s", !2, i64 0, !27, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!27 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!28 = !{!8, !10, i64 8}
!29 = !{!8, !2, i64 16}
!30 = !{!8, !2, i64 24}
!31 = !{!8, !10, i64 32}
!32 = !{!8, !2, i64 64}
!33 = !{!34, !2, i64 336}
!34 = !{!"gs_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !35, i64 24, !6, i64 128, !39, i64 132, !6, i64 168, !40, i64 176, !40, i64 192, !6, i64 208, !6, i64 212, !42, i64 216, !3, i64 220, !43, i64 224, !43, i64 228, !44, i64 232, !10, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !36, i64 296, !45, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !36, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !46, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !47, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !47, i64 1336, !2, i64 1616, !37, i64 1624, !6, i64 1648, !37, i64 1652, !6, i64 1676, !2, i64 1680, !2, i64 1688, !2, i64 1696, !2, i64 1704, !10, i64 1712, !10, i64 1720, !2, i64 1728, !6, i64 1736, !3, i64 1744, !2, i64 1792, !2, i64 1800, !39, i64 1808, !6, i64 1844, !3, i64 1848, !3, i64 1852, !2, i64 1856, !6, i64 1864, !2, i64 1872, !2, i64 1880, !48, i64 1888}
!35 = !{!"gx_line_params_s", !36, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !6, i64 36, !37, i64 40, !38, i64 64}
!36 = !{!"float", !3, i64 0}
!37 = !{!"gs_matrix_s", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20}
!38 = !{!"gx_dash_params_s", !2, i64 0, !6, i64 8, !36, i64 12, !6, i64 16, !36, i64 20, !6, i64 24, !6, i64 28, !36, i64 32}
!39 = !{!"gs_matrix_fixed_s", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!40 = !{!"gs_point_s", !41, i64 0, !41, i64 8}
!41 = !{!"double", !3, i64 0}
!42 = !{!"short", !3, i64 0}
!43 = !{!"gs_transparency_source_s", !36, i64 0}
!44 = !{!"gs_xstate_trans_flags", !6, i64 0, !6, i64 4}
!45 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!46 = !{!"gx_transfer_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !2, i64 56}
!47 = !{!"gs_devicen_color_map_s", !6, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !10, i64 16, !3, i64 24}
!48 = !{!"gs_state_client_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!49 = !{!50, !2, i64 56}
!50 = !{!"gsicc_manager_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !6, i64 64, !2, i64 72, !2, i64 80, !9, i64 88}
!51 = !{!52, !2, i64 0}
!52 = !{!"gsicc_smask_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32}
!53 = !{!50, !2, i64 8}
!54 = !{!52, !2, i64 8}
!55 = !{!50, !2, i64 16}
!56 = !{!50, !2, i64 24}
!57 = !{!58, !10, i64 288}
!58 = !{!"cmm_profile_s", !3, i64 0, !3, i64 1, !6, i64 4, !6, i64 8, !3, i64 12, !3, i64 16, !59, i64 20, !10, i64 144, !6, i64 152, !3, i64 156, !6, i64 216, !6, i64 220, !6, i64 224, !60, i64 228, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !9, i64 288, !6, i64 312, !2, i64 320, !2, i64 328, !2, i64 336}
!59 = !{!"gs_range_icc_s", !3, i64 0}
!60 = !{!"gsicc_rendering_param_s", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20}
!61 = !{!17, !3, i64 0}
!62 = !{!17, !2, i64 24}
!63 = !{!17, !2, i64 40}
!64 = !{!65, !2, i64 0}
!65 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16}
!66 = !{!17, !2, i64 104}
!67 = !{!65, !2, i64 8}
!68 = !{!69, !6, i64 272}
!69 = !{!"gs_imager_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !35, i64 24, !6, i64 128, !39, i64 132, !6, i64 168, !40, i64 176, !40, i64 192, !6, i64 208, !6, i64 212, !42, i64 216, !3, i64 220, !43, i64 224, !43, i64 228, !44, i64 232, !10, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !36, i64 296, !45, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !36, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !46, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !47, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !47, i64 1336}
!70 = !{!71, !6, i64 0}
!71 = !{!"gs_overprint_params_s", !6, i64 0, !6, i64 4, !6, i64 8, !10, i64 16, !42, i64 24, !6, i64 28}
!72 = !{!71, !6, i64 4}
!73 = !{!34, !6, i64 280}
!74 = !{!71, !42, i64 24}
!75 = !{!71, !6, i64 28}
!76 = !{!77, !6, i64 4}
!77 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !42, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !78, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !10, i64 704, !6, i64 712}
!78 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!79 = !{!42, !42, i64 0}
!80 = !{!81, !2, i64 1544}
!81 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !77, i64 96, !82, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !83, i64 984, !6, i64 1052, !6, i64 1056, !84, i64 1064, !2, i64 1104, !3, i64 1112, !86, i64 1120, !87, i64 1144}
!82 = !{!"gx_device_cached_colors_s", !10, i64 0, !10, i64 8}
!83 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!84 = !{!"gdev_space_params_s", !10, i64 0, !10, i64 8, !85, i64 16, !6, i64 32, !3, i64 36}
!85 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !10, i64 8}
!86 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!87 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!88 = !{!81, !2, i64 1536}
!89 = !{!90, !2, i64 16}
!90 = !{!"gx_cm_color_map_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!91 = !{!77, !3, i64 696}
!92 = !{!77, !10, i64 704}
!93 = !{!77, !6, i64 712}
!94 = !{!90, !2, i64 8}
!95 = !{!34, !2, i64 1872}
!96 = !{!81, !2, i64 1680}
!97 = !{!81, !3, i64 1112}
!98 = !{!58, !10, i64 144}
!99 = !{!65, !2, i64 16}
!100 = !{!101, !2, i64 0}
!101 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !102, i64 352, !6, i64 360, !103, i64 368, !105, i64 632}
!102 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!103 = !{!"gs_client_color_s", !2, i64 0, !104, i64 8}
!104 = !{!"gs_paint_color_s", !3, i64 0}
!105 = !{!"_mask", !106, i64 0, !10, i64 8, !2, i64 16}
!106 = !{!"mp_", !6, i64 0, !6, i64 4}
!107 = !{!108, !2, i64 80}
!108 = !{!"gx_device_color_type_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!109 = !{!101, !6, i64 360}
!110 = !{!36, !36, i64 0}
!111 = !{!71, !10, i64 16}
!112 = !{!81, !3, i64 136}
!113 = !{!81, !6, i64 100}
!114 = !{!34, !6, i64 272}
!115 = !{!34, !6, i64 276}
!116 = !{!17, !2, i64 72}
!117 = !{!41, !41, i64 0}
!118 = !{!3, !3, i64 0}
!119 = !{!81, !3, i64 110}
!120 = !{!81, !6, i64 112}
!121 = !{!81, !6, i64 116}
