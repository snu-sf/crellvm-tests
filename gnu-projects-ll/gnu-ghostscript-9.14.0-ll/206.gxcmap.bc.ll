; ModuleID = './gxcmap.bc'
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
%struct.gx_io_device_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, {}*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.gx_cm_color_map_procs_s = type { void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.gx_device_color_info_s = type { i32, i32, i32, i16, i8, i32, i32, i32, i32, %struct.gx_device_anti_alias_info_s, i32, [64 x i8], [64 x i8], [64 x i64], i8*, i32, i64, i32 }
%struct.gx_device_anti_alias_info_s = type { i32, i32 }
%struct.gx_device_cached_colors_s = type { i64, i64 }
%struct.gx_stroked_gradient_recognizer_s = type { i32, [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s] }
%struct.gs_fixed_point_s = type { i32, i32 }
%struct.gdev_space_params_s = type { i64, i64, %struct.gx_band_params_s, i32, i32 }
%struct.gx_band_params_s = type { i32, i32, i64 }
%struct.cmm_dev_profile_s = type { [4 x %struct.cmm_profile_s*], %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, [4 x %struct.gsicc_rendering_param_s], i32, i32, i32, i32, i32, i32, %struct.gsicc_namelist_s*, i32, %struct.gs_memory_s*, %struct.rc_header_s }
%struct.cmm_profile_s = type { i8, i8, i32, i32, i32, i32, %struct.gs_range_icc_s, i64, i32, [15 x i32], i32, i32, i32, %struct.gsicc_rendering_param_s, i8*, %struct.gx_device_s*, %struct.gsicc_namelist_s*, i8*, %struct.rc_header_s, i32, i8*, %struct.gs_memory_s*, %struct.gx_monitor_s* }
%struct.gs_range_icc_s = type { [15 x %struct.gs_range_s] }
%struct.gs_range_s = type { float, float }
%struct.gsicc_rendering_param_s = type { i32, i32, i32, i32, i32, i32 }
%struct.gx_monitor_s = type { %struct.gs_memory_s*, %union.gp_monitor }
%union.gp_monitor = type { i8* }
%struct.gsicc_namelist_s = type { i32, %struct.gsicc_colorname_s*, i8*, %struct.gs_devicen_color_map_s*, i32 }
%struct.gsicc_colorname_s = type { i8*, i32, %struct.gsicc_colorname_s* }
%struct.gs_devicen_color_map_s = type { i32, i32, i32, i32, i64, [64 x i32] }
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
%struct.gs_const_string_s = type { i8*, i32 }
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
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type opaque
%struct.gs_paint_color_s = type { [64 x float] }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type opaque
%struct.gx_pattern_cache_s = type opaque
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.stream_s = type opaque
%struct.client_color_space_data_s = type { void (%struct.gs_color_space_s*, i32)* }
%union.anon = type { %struct.gs_device_n_params_s }
%struct.gs_device_n_params_s = type { i64*, i32, %struct.gs_device_n_map_s*, %struct.gs_device_n_attributes_s*, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gs_device_n_map_s = type { %struct.rc_header_s, i32 (float*, float*, %struct.gs_imager_state_s*, i8*)*, i8*, i32, [64 x float], [64 x i16] }
%struct.gs_device_n_attributes_s = type { %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_device_n_attributes_s* }
%struct.gx_cie_joint_caches_s = type { i64, i64, i32, i32, %struct.rc_header_s, i32 (<2 x float>, float, i16*, float*, %struct.gs_imager_state_s*, %struct.gs_color_space_s*)*, i32, i32, %struct.gx_cie_vector_cache3_s, %struct.gs_cie_wbsd_s, i32, %struct.gx_cie_vector_cache3_s, i32 }
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
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, {}*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, {}*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, {}*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
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
%struct.gs_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32 }
%struct.gs_param_list_procs_s = type { i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)*, i32 (%struct.gs_param_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*)* }
%struct.gs_param_typed_value_s = type { %union.gs_param_value_s, i32 }
%union.gs_param_value_s = type { %struct.gs_param_string_s }
%struct.gs_param_string_s = type { i8*, i32, i32 }
%struct.gs_param_collection_s = type { %struct.gs_param_list_s*, i32 }
%union.gs_param_enumerator_s = type { i64 }
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
%struct.gs_pattern1_instance_s = type opaque
%struct.gs_fill_attributes_s = type { %struct.gs_fixed_rect_s*, i32, %struct.gx_device_halftone_s*, i32, i32, i32, %struct.patch_fill_state_s* }
%struct.patch_fill_state_s = type opaque
%struct.gs_devn_params_s = type { i32, i8**, i32, i32, i32, %struct.gs_separations_s, i32, [70 x i32], %struct.compressed_color_list_s*, %struct.compressed_color_list_s*, %struct.gs_separations_s }
%struct.compressed_color_list_s = type { %struct.gs_memory_s*, i32, i32, i32, %union.anon.10 }
%union.anon.10 = type { [256 x %struct.comp_bit_map_list_s] }
%struct.comp_bit_map_list_s = type { i16, i16, i32, i64, i64 }
%struct.gs_separations_s = type { i32, [64 x %struct.devn_separation_name_s] }
%struct.devn_separation_name_s = type { i32, i8* }
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct._devn = type { [64 x i16] }

@.str = private unnamed_addr constant [16 x i8] c"gx_device_color\00", align 1
@st_device_color = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 656, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @device_color_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @device_color_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@DeviceGray_procs = internal constant %struct.gx_cm_color_map_procs_s { void (%struct.gx_device_s*, i16, i16*)* @gray_cs_to_gray_cm, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)* @rgb_cs_to_gray_cm, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* @cmyk_cs_to_gray_cm }, align 8
@DeviceRGB_procs = internal constant %struct.gx_cm_color_map_procs_s { void (%struct.gx_device_s*, i16, i16*)* @gray_cs_to_rgb_cm, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)* @rgb_cs_to_rgb_cm, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* @cmyk_cs_to_rgb_cm }, align 8
@DeviceCMYK_procs = internal constant %struct.gx_cm_color_map_procs_s { void (%struct.gx_device_s*, i16, i16*)* @gray_cs_to_cmyk_cm, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)* @rgb_cs_to_cmyk_cm, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* @cmyk_cs_to_cmyk_cm }, align 8
@DeviceRGBK_procs = internal constant %struct.gx_cm_color_map_procs_s { void (%struct.gx_device_s*, i16, i16*)* @gray_cs_to_rgbk_cm, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)* @rgb_cs_to_rgbk_cm, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* @cmyk_cs_to_rgbk_cm }, align 8
@.str.1 = private unnamed_addr constant [57 x i8] c"No get_color_mapping_procs proc defined for device '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Gray\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Grey\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"Red\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Green\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"Blue\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"Cyan\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"Magenta\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Yellow\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"Black\00", align 1
@cmap_many = internal constant %struct.gx_color_map_procs_s { void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* @cmap_gray_direct, void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* @cmap_rgb_direct, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, %struct.gs_color_space_s*)* @cmap_cmyk_direct, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* @cmap_rgb_alpha_direct, void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* @cmap_separation_direct, void (i16*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* @cmap_devicen_direct, i32 (%struct.gs_imager_state_s*, %struct.gx_device_s*)* @cmap_direct_is_halftoned }, align 8
@cmap_procs_default = constant %struct.gx_color_map_procs_s* @cmap_many, align 8
@cmap_few = internal constant %struct.gx_color_map_procs_s { void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* @cmap_gray_halftoned, void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* @cmap_rgb_halftoned, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, %struct.gs_color_space_s*)* @cmap_cmyk_direct, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* @cmap_rgb_alpha_halftoned, void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* @cmap_separation_halftoned, void (i16*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* @cmap_devicen_halftoned, i32 (%struct.gs_imager_state_s*, %struct.gx_device_s*)* @cmap_halftoned_is_halftoned }, align 8
@gs_color_space_type_ICC = external constant %struct.gs_color_space_type_s, align 8
@gx_dc_type_data_pure = external constant %struct.gx_device_color_type_s, align 8
@gx_dc_type_data_devn = external constant %struct.gx_device_color_type_s, align 8

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @device_color_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %cptr = alloca %struct.gx_device_color_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_color_s** %cptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_device_color_s*
  store %struct.gx_device_color_s* %2, %struct.gx_device_color_s** %cptr, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !5
  switch i32 %3, label %sw.default [
  ]

sw.default:                                       ; preds = %entry
  %4 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %cptr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %4, i32 0, i32 0
  %5 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !7
  %stype = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %5, i32 0, i32 0
  %6 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %stype, align 8, !tbaa !15
  %enum_ptrs = getelementptr inbounds %struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* %6, i32 0, i32 4
  %7 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** %enum_ptrs, align 8, !tbaa !17
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %9 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %10 = load i32, i32* %size.addr, align 4, !tbaa !5
  %11 = load i32, i32* %index.addr, align 4, !tbaa !5
  %12 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %13 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %cptr, align 8, !tbaa !1
  %type1 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %13, i32 0, i32 0
  %14 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type1, align 8, !tbaa !7
  %stype2 = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %14, i32 0, i32 0
  %15 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %stype2, align 8, !tbaa !15
  %16 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %7(%struct.gs_memory_s* %8, i8* %9, i32 %10, i32 %11, %struct.enum_ptr_s* %12, %struct.gs_memory_struct_type_s* %15, %struct.gc_state_s* %16) #5
  %17 = bitcast %struct.gx_device_color_s** %cptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  ret %struct.gs_ptr_procs_s* %call
}

; Function Attrs: nounwind uwtable
define internal void @device_color_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %cptr = alloca %struct.gx_device_color_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_color_s** %cptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_device_color_s*
  store %struct.gx_device_color_s* %2, %struct.gx_device_color_s** %cptr, align 8, !tbaa !1
  %3 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %cptr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %3, i32 0, i32 0
  %4 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !7
  %stype = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %4, i32 0, i32 0
  %5 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %stype, align 8, !tbaa !15
  %reloc_ptrs = getelementptr inbounds %struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* %5, i32 0, i32 5
  %6 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** %reloc_ptrs, align 8, !tbaa !19
  %7 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %8 = load i32, i32* %size.addr, align 4, !tbaa !5
  %9 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %cptr, align 8, !tbaa !1
  %type1 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %9, i32 0, i32 0
  %10 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type1, align 8, !tbaa !7
  %stype2 = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %10, i32 0, i32 0
  %11 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %stype2, align 8, !tbaa !15
  %12 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %6(i8* %7, i32 %8, %struct.gs_memory_struct_type_s* %11, %struct.gc_state_s* %12) #5
  %13 = bitcast %struct.gx_device_color_s** %cptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @gx_default_encode_color(%struct.gx_device_s* %dev, i16* %cv) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  %ncomps = alloca i32, align 4
  %i = alloca i32, align 4
  %comp_shift = alloca i8*, align 8
  %comp_bits = alloca i8*, align 8
  %color = alloca i64, align 8
  %COLROUND_M = alloca i32, align 4
  %COLROUND_S = alloca i32, align 4
  %COLROUND_R = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %2 = load i32, i32* %num_components, align 4, !tbaa !20
  store i32 %2, i32* %ncomps, align 4, !tbaa !5
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i8** %comp_shift to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 11
  %comp_shift2 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info1, i32 0, i32 11
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %comp_shift2, i32 0, i32 0
  store i8* %arraydecay, i8** %comp_shift, align 8, !tbaa !1
  %6 = bitcast i8** %comp_bits to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 11
  %comp_bits4 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info3, i32 0, i32 12
  %arraydecay5 = getelementptr inbounds [64 x i8], [64 x i8]* %comp_bits4, i32 0, i32 0
  store i8* %arraydecay5, i8** %comp_bits, align 8, !tbaa !1
  %8 = bitcast i64* %color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i64 0, i64* %color, align 8, !tbaa !32
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %i, align 4, !tbaa !5
  %10 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp = icmp slt i32 %9, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = bitcast i32* %COLROUND_M to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %COLROUND_S to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %COLROUND_R to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  br label %do.body

do.body:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %14 to i64
  %15 = load i8*, i8** %comp_bits, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %idxprom
  %16 = load i8, i8* %arrayidx, align 1, !tbaa !33
  %conv = zext i8 %16 to i32
  %shl = shl i32 1, %conv
  %sub = sub nsw i32 %shl, 1
  %17 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom6 = sext i32 %17 to i64
  %18 = load i8*, i8** %comp_bits, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8, i8* %18, i64 %idxprom6
  %19 = load i8, i8* %arrayidx7, align 1, !tbaa !33
  %conv8 = zext i8 %19 to i64
  %sub9 = sub i64 16, %conv8
  %sh_prom = trunc i64 %sub9 to i32
  %shl10 = shl i32 %sub, %sh_prom
  %add = add nsw i32 %shl10, 1
  store i32 %add, i32* %COLROUND_M, align 4, !tbaa !5
  %20 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %20 to i64
  %21 = load i8*, i8** %comp_bits, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i8, i8* %21, i64 %idxprom11
  %22 = load i8, i8* %arrayidx12, align 1, !tbaa !33
  %conv13 = zext i8 %22 to i64
  %sub14 = sub i64 32, %conv13
  %conv15 = trunc i64 %sub14 to i32
  store i32 %conv15, i32* %COLROUND_S, align 4, !tbaa !5
  %23 = load i32, i32* %COLROUND_S, align 4, !tbaa !5
  %sub16 = sub i32 %23, 1
  %shl17 = shl i32 1, %sub16
  store i32 %shl17, i32* %COLROUND_R, align 4, !tbaa !5
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %24 = load i32, i32* %COLROUND_M, align 4, !tbaa !5
  %25 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom18 = sext i32 %25 to i64
  %26 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i16, i16* %26, i64 %idxprom18
  %27 = load i16, i16* %arrayidx19, align 2, !tbaa !34
  %conv20 = zext i16 %27 to i32
  %mul = mul i32 %24, %conv20
  %28 = load i32, i32* %COLROUND_R, align 4, !tbaa !5
  %add21 = add i32 %mul, %28
  %29 = load i32, i32* %COLROUND_S, align 4, !tbaa !5
  %shr = lshr i32 %add21, %29
  %conv22 = zext i32 %shr to i64
  %30 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom23 = sext i32 %30 to i64
  %31 = load i8*, i8** %comp_shift, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i8, i8* %31, i64 %idxprom23
  %32 = load i8, i8* %arrayidx24, align 1, !tbaa !33
  %conv25 = zext i8 %32 to i32
  %sh_prom26 = zext i32 %conv25 to i64
  %shl27 = shl i64 %conv22, %sh_prom26
  %33 = load i64, i64* %color, align 8, !tbaa !32
  %or = or i64 %33, %shl27
  store i64 %or, i64* %color, align 8, !tbaa !32
  %34 = bitcast i32* %COLROUND_R to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast i32* %COLROUND_S to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast i32* %COLROUND_M to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %37 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load i64, i64* %color, align 8, !tbaa !32
  %39 = bitcast i64* %color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast i8** %comp_bits to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = bitcast i8** %comp_shift to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  ret i64 %38
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @gx_default_decode_color(%struct.gx_device_s* %dev, i64 %color, i16* %cv) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %cv.addr = alloca i16*, align 8
  %ncomps = alloca i32, align 4
  %i = alloca i32, align 4
  %comp_shift = alloca i8*, align 8
  %comp_bits = alloca i8*, align 8
  %comp_mask = alloca i64*, align 8
  %shift = alloca i32, align 4
  %ivalue = alloca i32, align 4
  %nbits = alloca i32, align 4
  %scale = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !32
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %2 = load i32, i32* %num_components, align 4, !tbaa !20
  store i32 %2, i32* %ncomps, align 4, !tbaa !5
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i8** %comp_shift to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 11
  %comp_shift2 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info1, i32 0, i32 11
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %comp_shift2, i32 0, i32 0
  store i8* %arraydecay, i8** %comp_shift, align 8, !tbaa !1
  %6 = bitcast i8** %comp_bits to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 11
  %comp_bits4 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info3, i32 0, i32 12
  %arraydecay5 = getelementptr inbounds [64 x i8], [64 x i8]* %comp_bits4, i32 0, i32 0
  store i8* %arraydecay5, i8** %comp_bits, align 8, !tbaa !1
  %8 = bitcast i64** %comp_mask to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info6 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 11
  %comp_mask7 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info6, i32 0, i32 13
  %arraydecay8 = getelementptr inbounds [64 x i64], [64 x i64]* %comp_mask7, i32 0, i32 0
  store i64* %arraydecay8, i64** %comp_mask, align 8, !tbaa !1
  %10 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %ivalue to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %nbits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %scale to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %15 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp = icmp slt i32 %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %16 to i64
  %17 = load i8*, i8** %comp_bits, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 %idxprom
  %18 = load i8, i8* %arrayidx, align 1, !tbaa !33
  %conv = zext i8 %18 to i32
  store i32 %conv, i32* %nbits, align 4, !tbaa !5
  %19 = load i32, i32* %nbits, align 4, !tbaa !5
  %shl = shl i32 1, %19
  %sub = sub nsw i32 %shl, 1
  %div = sdiv i32 65535, %sub
  store i32 %div, i32* %scale, align 4, !tbaa !5
  %20 = load i64, i64* %color.addr, align 8, !tbaa !32
  %21 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom9 = sext i32 %21 to i64
  %22 = load i64*, i64** %comp_mask, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i64, i64* %22, i64 %idxprom9
  %23 = load i64, i64* %arrayidx10, align 8, !tbaa !32
  %and = and i64 %20, %23
  %24 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %24 to i64
  %25 = load i8*, i8** %comp_shift, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i8, i8* %25, i64 %idxprom11
  %26 = load i8, i8* %arrayidx12, align 1, !tbaa !33
  %conv13 = zext i8 %26 to i32
  %sh_prom = zext i32 %conv13 to i64
  %shr = lshr i64 %and, %sh_prom
  %conv14 = trunc i64 %shr to i32
  store i32 %conv14, i32* %ivalue, align 4, !tbaa !5
  %27 = load i32, i32* %ivalue, align 4, !tbaa !5
  %28 = load i32, i32* %scale, align 4, !tbaa !5
  %mul = mul i32 %27, %28
  %conv15 = trunc i32 %mul to i16
  %29 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom16 = sext i32 %29 to i64
  %30 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i16, i16* %30, i64 %idxprom16
  store i16 %conv15, i16* %arrayidx17, align 2, !tbaa !34
  %31 = load i32, i32* %nbits, align 4, !tbaa !5
  %conv18 = zext i32 %31 to i64
  %32 = load i32, i32* %nbits, align 4, !tbaa !5
  %conv19 = zext i32 %32 to i64
  %rem = urem i64 16, %conv19
  %sub20 = sub i64 %conv18, %rem
  %conv21 = trunc i64 %sub20 to i32
  store i32 %conv21, i32* %shift, align 4, !tbaa !5
  %33 = load i32, i32* %ivalue, align 4, !tbaa !5
  %34 = load i32, i32* %shift, align 4, !tbaa !5
  %shr22 = lshr i32 %33, %34
  %35 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom23 = sext i32 %35 to i64
  %36 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i16, i16* %36, i64 %idxprom23
  %37 = load i16, i16* %arrayidx24, align 2, !tbaa !34
  %conv25 = zext i16 %37 to i32
  %add = add i32 %conv25, %shr22
  %conv26 = trunc i32 %add to i16
  store i16 %conv26, i16* %arrayidx24, align 2, !tbaa !34
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %38 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = bitcast i32* %scale to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast i32* %nbits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast i32* %ivalue to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast i64** %comp_mask to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = bitcast i8** %comp_bits to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = bitcast i8** %comp_shift to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i64 @gx_error_encode_color(%struct.gx_device_s* %dev, i16* %colors) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %colors.addr = alloca i16*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16* %colors, i16** %colors.addr, align 8, !tbaa !1
  ret i64 -1
}

; Function Attrs: nounwind uwtable
define i32 @gx_error_decode_color(%struct.gx_device_s* %dev, i64 %cindex, i16* %colors) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cindex.addr = alloca i64, align 8
  %colors.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %cindex, i64* %cindex.addr, align 8, !tbaa !32
  store i16* %colors, i16** %colors.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %2 = load i32, i32* %num_components, align 4, !tbaa !20
  store i32 %2, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp sge i32 %3, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %5 = load i16*, i16** %colors.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %5, i64 %idxprom
  store i16 0, i16* %arrayidx, align 2, !tbaa !34
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !tbaa !5
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #1
  ret i32 -15
}

; Function Attrs: nounwind uwtable
define i64 @gx_default_gray_fast_encode(%struct.gx_device_s* %dev, i16* %cv) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  %COLROUND_M = alloca i32, align 4
  %COLROUND_S = alloca i32, align 4
  %COLROUND_R = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = bitcast i32* %COLROUND_M to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %COLROUND_S to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %COLROUND_R to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %4 = load i16, i16* %depth, align 2, !tbaa !35
  %conv = zext i16 %4 to i32
  %shl = shl i32 1, %conv
  %sub = sub nsw i32 %shl, 1
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 11
  %depth2 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info1, i32 0, i32 3
  %6 = load i16, i16* %depth2, align 2, !tbaa !35
  %conv3 = zext i16 %6 to i64
  %sub4 = sub i64 16, %conv3
  %sh_prom = trunc i64 %sub4 to i32
  %shl5 = shl i32 %sub, %sh_prom
  %add = add nsw i32 %shl5, 1
  store i32 %add, i32* %COLROUND_M, align 4, !tbaa !5
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info6 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 11
  %depth7 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info6, i32 0, i32 3
  %8 = load i16, i16* %depth7, align 2, !tbaa !35
  %conv8 = zext i16 %8 to i64
  %sub9 = sub i64 32, %conv8
  %conv10 = trunc i64 %sub9 to i32
  store i32 %conv10, i32* %COLROUND_S, align 4, !tbaa !5
  %9 = load i32, i32* %COLROUND_S, align 4, !tbaa !5
  %sub11 = sub i32 %9, 1
  %shl12 = shl i32 1, %sub11
  store i32 %shl12, i32* %COLROUND_R, align 4, !tbaa !5
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %10 = load i32, i32* %COLROUND_M, align 4, !tbaa !5
  %11 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %11, i64 0
  %12 = load i16, i16* %arrayidx, align 2, !tbaa !34
  %conv13 = zext i16 %12 to i32
  %mul = mul i32 %10, %conv13
  %13 = load i32, i32* %COLROUND_R, align 4, !tbaa !5
  %add14 = add i32 %mul, %13
  %14 = load i32, i32* %COLROUND_S, align 4, !tbaa !5
  %shr = lshr i32 %add14, %14
  %conv15 = zext i32 %shr to i64
  %15 = bitcast i32* %COLROUND_R to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = bitcast i32* %COLROUND_S to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = bitcast i32* %COLROUND_M to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  ret i64 %conv15
}

; Function Attrs: nounwind uwtable
define i64 @gx_default_gray_encode(%struct.gx_device_s* %dev, i16* %cv) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 0
  %1 = load i16, i16* %arrayidx, align 2, !tbaa !34
  %conv = zext i16 %1 to i32
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 11
  %max_gray = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 5
  %3 = load i32, i32* %max_gray, align 4, !tbaa !36
  %add = add i32 %3, 1
  %mul = mul i32 %conv, %add
  %div = udiv i32 %mul, 65536
  %conv1 = zext i32 %div to i64
  ret i64 %conv1
}

; Function Attrs: nounwind uwtable
define i64 @gx_backwards_compatible_gray_encode(%struct.gx_device_s* %dev, i16* %cv) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  %gray_val = alloca i16, align 2
  %rgb_cv = alloca [3 x i16], align 2
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = bitcast i16* %gray_val to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #1
  %1 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 0
  %2 = load i16, i16* %arrayidx, align 2, !tbaa !34
  store i16 %2, i16* %gray_val, align 2, !tbaa !34
  %3 = bitcast [3 x i16]* %rgb_cv to i8*
  call void @llvm.lifetime.start(i64 6, i8* %3) #1
  %4 = load i16, i16* %gray_val, align 2, !tbaa !34
  %arrayidx1 = getelementptr inbounds [3 x i16], [3 x i16]* %rgb_cv, i32 0, i64 0
  store i16 %4, i16* %arrayidx1, align 2, !tbaa !34
  %5 = load i16, i16* %gray_val, align 2, !tbaa !34
  %arrayidx2 = getelementptr inbounds [3 x i16], [3 x i16]* %rgb_cv, i32 0, i64 1
  store i16 %5, i16* %arrayidx2, align 2, !tbaa !34
  %6 = load i16, i16* %gray_val, align 2, !tbaa !34
  %arrayidx3 = getelementptr inbounds [3 x i16], [3 x i16]* %rgb_cv, i32 0, i64 2
  store i16 %6, i16* %arrayidx3, align 2, !tbaa !34
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 42
  %map_rgb_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 5
  %map_rgb_color4 = bitcast {}** %map_rgb_color to i64 (%struct.gx_device_s*, i16*)**
  %8 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %map_rgb_color4, align 8, !tbaa !37
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [3 x i16], [3 x i16]* %rgb_cv, i32 0, i32 0
  %call = call i64 %8(%struct.gx_device_s* %9, i16* %arraydecay) #5
  %10 = bitcast [3 x i16]* %rgb_cv to i8*
  call void @llvm.lifetime.end(i64 6, i8* %10) #1
  %11 = bitcast i16* %gray_val to i8*
  call void @llvm.lifetime.end(i64 2, i8* %11) #1
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define void @gray_cs_to_gray_cm(%struct.gx_device_s* %dev, i16 signext %gray, i16* %out) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %gray.addr = alloca i16, align 2
  %out.addr = alloca i16*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16 %gray, i16* %gray.addr, align 2, !tbaa !34
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  %0 = load i16, i16* %gray.addr, align 2, !tbaa !34
  %1 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 0
  store i16 %0, i16* %arrayidx, align 2, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define void @rgb_cs_to_rgb_cm(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, i16 signext %r, i16 signext %g, i16 signext %b, i16* %out) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %r.addr = alloca i16, align 2
  %g.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  %out.addr = alloca i16*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store i16 %r, i16* %r.addr, align 2, !tbaa !34
  store i16 %g, i16* %g.addr, align 2, !tbaa !34
  store i16 %b, i16* %b.addr, align 2, !tbaa !34
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  %0 = load i16, i16* %r.addr, align 2, !tbaa !34
  %1 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 0
  store i16 %0, i16* %arrayidx, align 2, !tbaa !34
  %2 = load i16, i16* %g.addr, align 2, !tbaa !34
  %3 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %3, i64 1
  store i16 %2, i16* %arrayidx1, align 2, !tbaa !34
  %4 = load i16, i16* %b.addr, align 2, !tbaa !34
  %5 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %5, i64 2
  store i16 %4, i16* %arrayidx2, align 2, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define void @cmyk_cs_to_cmyk_cm(%struct.gx_device_s* %dev, i16 signext %c, i16 signext %m, i16 signext %y, i16 signext %k, i16* %out) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %c.addr = alloca i16, align 2
  %m.addr = alloca i16, align 2
  %y.addr = alloca i16, align 2
  %k.addr = alloca i16, align 2
  %out.addr = alloca i16*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16 %c, i16* %c.addr, align 2, !tbaa !34
  store i16 %m, i16* %m.addr, align 2, !tbaa !34
  store i16 %y, i16* %y.addr, align 2, !tbaa !34
  store i16 %k, i16* %k.addr, align 2, !tbaa !34
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  %0 = load i16, i16* %c.addr, align 2, !tbaa !34
  %1 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 0
  store i16 %0, i16* %arrayidx, align 2, !tbaa !34
  %2 = load i16, i16* %m.addr, align 2, !tbaa !34
  %3 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %3, i64 1
  store i16 %2, i16* %arrayidx1, align 2, !tbaa !34
  %4 = load i16, i16* %y.addr, align 2, !tbaa !34
  %5 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %5, i64 2
  store i16 %4, i16* %arrayidx2, align 2, !tbaa !34
  %6 = load i16, i16* %k.addr, align 2, !tbaa !34
  %7 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %7, i64 3
  store i16 %6, i16* %arrayidx3, align 2, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.gx_cm_color_map_procs_s* @gx_default_DevGray_get_color_mapping_procs(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  ret %struct.gx_cm_color_map_procs_s* @DeviceGray_procs
}

; Function Attrs: nounwind uwtable
define %struct.gx_cm_color_map_procs_s* @gx_default_DevRGB_get_color_mapping_procs(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  ret %struct.gx_cm_color_map_procs_s* @DeviceRGB_procs
}

; Function Attrs: nounwind uwtable
define %struct.gx_cm_color_map_procs_s* @gx_default_DevCMYK_get_color_mapping_procs(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  ret %struct.gx_cm_color_map_procs_s* @DeviceCMYK_procs
}

; Function Attrs: nounwind uwtable
define %struct.gx_cm_color_map_procs_s* @gx_default_DevRGBK_get_color_mapping_procs(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  ret %struct.gx_cm_color_map_procs_s* @DeviceRGBK_procs
}

; Function Attrs: nounwind uwtable
define %struct.gx_cm_color_map_procs_s* @gx_error_get_color_mapping_procs(%struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca %struct.gx_cm_color_map_procs_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i32 0, i32 3
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !38
  %call = call i8* @gs_program_name() #5
  %call1 = call i64 @gs_revision_number() #5
  call void @emprintf_program_ident(%struct.gs_memory_s* %1, i8* %call, i64 %call1) #5
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 3
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory2, align 8, !tbaa !38
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %dname = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 2
  %5 = load i8*, i8** %dname, align 8, !tbaa !39
  %call3 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %3, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i32 0, i32 0), i8* %5) #5
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %7 = load i32, i32* %num_components, align 4, !tbaa !20
  switch i32 %7, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.5
    i32 4, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call4 = call %struct.gx_cm_color_map_procs_s* @gx_default_DevGray_get_color_mapping_procs(%struct.gx_device_s* %8) #5
  store %struct.gx_cm_color_map_procs_s* %call4, %struct.gx_cm_color_map_procs_s** %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call6 = call %struct.gx_cm_color_map_procs_s* @gx_default_DevRGB_get_color_mapping_procs(%struct.gx_device_s* %9) #5
  store %struct.gx_cm_color_map_procs_s* %call6, %struct.gx_cm_color_map_procs_s** %retval
  br label %return

sw.bb.7:                                          ; preds = %entry
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb.7
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call8 = call %struct.gx_cm_color_map_procs_s* @gx_default_DevCMYK_get_color_mapping_procs(%struct.gx_device_s* %10) #5
  store %struct.gx_cm_color_map_procs_s* %call8, %struct.gx_cm_color_map_procs_s** %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.5, %sw.bb
  %11 = load %struct.gx_cm_color_map_procs_s*, %struct.gx_cm_color_map_procs_s** %retval
  ret %struct.gx_cm_color_map_procs_s* %11
}

declare void @emprintf_program_ident(%struct.gs_memory_s*, i8*, i64) #2

declare i8* @gs_program_name() #2

declare i64 @gs_revision_number() #2

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define i32 @gx_default_DevGray_get_color_comp_index(%struct.gx_device_s* %dev, i8* %pname, i32 %name_size, i32 %component_type) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pname.addr = alloca i8*, align 8
  %name_size.addr = alloca i32, align 4
  %component_type.addr = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %pname, i8** %pname.addr, align 8, !tbaa !1
  store i32 %name_size, i32* %name_size.addr, align 4, !tbaa !5
  store i32 %component_type, i32* %component_type.addr, align 4, !tbaa !5
  %0 = load i32, i32* %name_size.addr, align 4, !tbaa !5
  %call = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0)) #6
  %conv = trunc i64 %call to i32
  %cmp = icmp eq i32 %0, %conv
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %2 = load i32, i32* %name_size.addr, align 4, !tbaa !5
  %conv2 = sext i32 %2 to i64
  %call3 = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i64 %conv2) #6
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %name_size.addr, align 4, !tbaa !5
  %call6 = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0)) #6
  %conv7 = trunc i64 %call6 to i32
  %cmp8 = icmp eq i32 %3, %conv7
  br i1 %cmp8, label %land.lhs.true.10, label %if.else

land.lhs.true.10:                                 ; preds = %lor.lhs.false
  %4 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %5 = load i32, i32* %name_size.addr, align 4, !tbaa !5
  %conv11 = sext i32 %5 to i64
  %call12 = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i64 %conv11) #6
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.10, %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.10, %lor.lhs.false
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define i32 @gx_default_DevRGB_get_color_comp_index(%struct.gx_device_s* %dev, i8* %pname, i32 %name_size, i32 %component_type) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pname.addr = alloca i8*, align 8
  %name_size.addr = alloca i32, align 4
  %component_type.addr = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %pname, i8** %pname.addr, align 8, !tbaa !1
  store i32 %name_size, i32* %name_size.addr, align 4, !tbaa !5
  store i32 %component_type, i32* %component_type.addr, align 4, !tbaa !5
  %0 = load i32, i32* %name_size.addr, align 4, !tbaa !5
  %call = call i64 @strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)) #6
  %conv = trunc i64 %call to i32
  %cmp = icmp eq i32 %0, %conv
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %2 = load i32, i32* %name_size.addr, align 4, !tbaa !5
  %conv2 = sext i32 %2 to i64
  %call3 = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i64 %conv2) #6
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %name_size.addr, align 4, !tbaa !5
  %call6 = call i64 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0)) #6
  %conv7 = trunc i64 %call6 to i32
  %cmp8 = icmp eq i32 %3, %conv7
  br i1 %cmp8, label %land.lhs.true.10, label %if.end.16

land.lhs.true.10:                                 ; preds = %if.end
  %4 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %5 = load i32, i32* %name_size.addr, align 4, !tbaa !5
  %conv11 = sext i32 %5 to i64
  %call12 = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i64 %conv11) #6
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %land.lhs.true.10
  store i32 1, i32* %retval
  br label %return

if.end.16:                                        ; preds = %land.lhs.true.10, %if.end
  %6 = load i32, i32* %name_size.addr, align 4, !tbaa !5
  %call17 = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0)) #6
  %conv18 = trunc i64 %call17 to i32
  %cmp19 = icmp eq i32 %6, %conv18
  br i1 %cmp19, label %land.lhs.true.21, label %if.else

land.lhs.true.21:                                 ; preds = %if.end.16
  %7 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %8 = load i32, i32* %name_size.addr, align 4, !tbaa !5
  %conv22 = sext i32 %8 to i64
  %call23 = call i32 @strncmp(i8* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i64 %conv22) #6
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %land.lhs.true.21
  store i32 2, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.21, %if.end.16
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.26, %if.then.15, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_DevCMYK_get_color_comp_index(%struct.gx_device_s* %dev, i8* %pname, i32 %name_size, i32 %component_type) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pname.addr = alloca i8*, align 8
  %name_size.addr = alloca i32, align 4
  %component_type.addr = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %pname, i8** %pname.addr, align 8, !tbaa !1
  store i32 %name_size, i32* %name_size.addr, align 4, !tbaa !5
  store i32 %component_type, i32* %component_type.addr, align 4, !tbaa !5
  %0 = load i32, i32* %name_size.addr, align 4, !tbaa !5
  %call = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0)) #6
  %conv = trunc i64 %call to i32
  %cmp = icmp eq i32 %0, %conv
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %2 = load i32, i32* %name_size.addr, align 4, !tbaa !5
  %conv2 = sext i32 %2 to i64
  %call3 = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i64 %conv2) #6
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %name_size.addr, align 4, !tbaa !5
  %call6 = call i64 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0)) #6
  %conv7 = trunc i64 %call6 to i32
  %cmp8 = icmp eq i32 %3, %conv7
  br i1 %cmp8, label %land.lhs.true.10, label %if.end.16

land.lhs.true.10:                                 ; preds = %if.end
  %4 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %5 = load i32, i32* %name_size.addr, align 4, !tbaa !5
  %conv11 = sext i32 %5 to i64
  %call12 = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i64 %conv11) #6
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %land.lhs.true.10
  store i32 1, i32* %retval
  br label %return

if.end.16:                                        ; preds = %land.lhs.true.10, %if.end
  %6 = load i32, i32* %name_size.addr, align 4, !tbaa !5
  %call17 = call i64 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0)) #6
  %conv18 = trunc i64 %call17 to i32
  %cmp19 = icmp eq i32 %6, %conv18
  br i1 %cmp19, label %land.lhs.true.21, label %if.end.27

land.lhs.true.21:                                 ; preds = %if.end.16
  %7 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %8 = load i32, i32* %name_size.addr, align 4, !tbaa !5
  %conv22 = sext i32 %8 to i64
  %call23 = call i32 @strncmp(i8* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i64 %conv22) #6
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %land.lhs.true.21
  store i32 2, i32* %retval
  br label %return

if.end.27:                                        ; preds = %land.lhs.true.21, %if.end.16
  %9 = load i32, i32* %name_size.addr, align 4, !tbaa !5
  %call28 = call i64 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0)) #6
  %conv29 = trunc i64 %call28 to i32
  %cmp30 = icmp eq i32 %9, %conv29
  br i1 %cmp30, label %land.lhs.true.32, label %if.else

land.lhs.true.32:                                 ; preds = %if.end.27
  %10 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %11 = load i32, i32* %name_size.addr, align 4, !tbaa !5
  %conv33 = sext i32 %11 to i64
  %call34 = call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i64 %conv33) #6
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %land.lhs.true.32
  store i32 3, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.32, %if.end.27
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.37, %if.then.26, %if.then.15, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_DevRGBK_get_color_comp_index(%struct.gx_device_s* %dev, i8* %pname, i32 %name_size, i32 %component_type) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pname.addr = alloca i8*, align 8
  %name_size.addr = alloca i32, align 4
  %component_type.addr = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %pname, i8** %pname.addr, align 8, !tbaa !1
  store i32 %name_size, i32* %name_size.addr, align 4, !tbaa !5
  store i32 %component_type, i32* %component_type.addr, align 4, !tbaa !5
  %0 = load i32, i32* %name_size.addr, align 4, !tbaa !5
  %call = call i64 @strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)) #6
  %conv = trunc i64 %call to i32
  %cmp = icmp eq i32 %0, %conv
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %2 = load i32, i32* %name_size.addr, align 4, !tbaa !5
  %conv2 = sext i32 %2 to i64
  %call3 = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i64 %conv2) #6
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %name_size.addr, align 4, !tbaa !5
  %call6 = call i64 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0)) #6
  %conv7 = trunc i64 %call6 to i32
  %cmp8 = icmp eq i32 %3, %conv7
  br i1 %cmp8, label %land.lhs.true.10, label %if.end.16

land.lhs.true.10:                                 ; preds = %if.end
  %4 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %5 = load i32, i32* %name_size.addr, align 4, !tbaa !5
  %conv11 = sext i32 %5 to i64
  %call12 = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i64 %conv11) #6
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %land.lhs.true.10
  store i32 1, i32* %retval
  br label %return

if.end.16:                                        ; preds = %land.lhs.true.10, %if.end
  %6 = load i32, i32* %name_size.addr, align 4, !tbaa !5
  %call17 = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0)) #6
  %conv18 = trunc i64 %call17 to i32
  %cmp19 = icmp eq i32 %6, %conv18
  br i1 %cmp19, label %land.lhs.true.21, label %if.end.27

land.lhs.true.21:                                 ; preds = %if.end.16
  %7 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %8 = load i32, i32* %name_size.addr, align 4, !tbaa !5
  %conv22 = sext i32 %8 to i64
  %call23 = call i32 @strncmp(i8* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i64 %conv22) #6
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %land.lhs.true.21
  store i32 2, i32* %retval
  br label %return

if.end.27:                                        ; preds = %land.lhs.true.21, %if.end.16
  %9 = load i32, i32* %name_size.addr, align 4, !tbaa !5
  %call28 = call i64 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0)) #6
  %conv29 = trunc i64 %call28 to i32
  %cmp30 = icmp eq i32 %9, %conv29
  br i1 %cmp30, label %land.lhs.true.32, label %if.else

land.lhs.true.32:                                 ; preds = %if.end.27
  %10 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %11 = load i32, i32* %name_size.addr, align 4, !tbaa !5
  %conv33 = sext i32 %11 to i64
  %call34 = call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i64 %conv33) #6
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %land.lhs.true.32
  store i32 3, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.32, %if.end.27
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.37, %if.then.26, %if.then.15, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define i32 @gx_error_get_color_comp_index(%struct.gx_device_s* %dev, i8* %pname, i32 %name_size, i32 %component_type) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pname.addr = alloca i8*, align 8
  %name_size.addr = alloca i32, align 4
  %component_type.addr = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %pname, i8** %pname.addr, align 8, !tbaa !1
  store i32 %name_size, i32* %name_size.addr, align 4, !tbaa !5
  store i32 %component_type, i32* %component_type.addr, align 4, !tbaa !5
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define %struct.gx_color_map_procs_s* @gx_get_cmap_procs(%struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev) #0 {
entry:
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %get_cmap_procs = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %0, i32 0, i32 38
  %1 = load %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)** %get_cmap_procs, align 8, !tbaa !40
  %2 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call %struct.gx_color_map_procs_s* %1(%struct.gs_imager_state_s* %2, %struct.gx_device_s* %3) #5
  ret %struct.gx_color_map_procs_s* %call
}

; Function Attrs: nounwind uwtable
define %struct.gx_color_map_procs_s* @gx_default_get_cmap_procs(%struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev) #0 {
entry:
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %1 = load i32, i32* %num_components, align 4, !tbaa !20
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 11
  %gray_index = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info1, i32 0, i32 4
  %3 = load i8, i8* %gray_index, align 1, !tbaa !54
  %conv = zext i8 %3 to i32
  %cmp2 = icmp eq i32 %conv, 255
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info4 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 11
  %max_color = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info4, i32 0, i32 6
  %5 = load i32, i32* %max_color, align 4, !tbaa !55
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info5 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 11
  %max_gray = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info5, i32 0, i32 5
  %7 = load i32, i32* %max_gray, align 4, !tbaa !36
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %5, %cond.true ], [ %7, %cond.false ]
  %cmp6 = icmp ult i32 %cond, 31
  %cond8 = select i1 %cmp6, %struct.gx_color_map_procs_s* @cmap_few, %struct.gx_color_map_procs_s* @cmap_many
  ret %struct.gx_color_map_procs_s* %cond8
}

; Function Attrs: nounwind uwtable
define void @gx_set_cmap_procs(%struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev) #0 {
entry:
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call %struct.gx_color_map_procs_s* @gx_get_cmap_procs(%struct.gs_imager_state_s* %0, %struct.gx_device_s* %1) #5
  %2 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cmap_procs = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %2, i32 0, i32 49
  store %struct.gx_color_map_procs_s* %call, %struct.gx_color_map_procs_s** %cmap_procs, align 8, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gx_remap_color(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %code = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon.1], [2 x %struct.anon.1]* %color, i32 0, i64 0
  %color_space = getelementptr inbounds %struct.anon.1, %struct.anon.1* %arrayidx, i32 0, i32 0
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space, align 8, !tbaa !57
  store %struct.gs_color_space_s* %2, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %4, i32 0, i32 0
  %5 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !59
  %remap_color = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %5, i32 0, i32 10
  %6 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_color, align 8, !tbaa !61
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %7, i32 0, i32 69
  %arrayidx2 = getelementptr inbounds [2 x %struct.anon.1], [2 x %struct.anon.1]* %color1, i32 0, i64 0
  %ccolor = getelementptr inbounds %struct.anon.1, %struct.anon.1* %arrayidx2, i32 0, i32 1
  %8 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %ccolor, align 8, !tbaa !63
  %9 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color3 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %10, i32 0, i32 69
  %arrayidx4 = getelementptr inbounds [2 x %struct.anon.1], [2 x %struct.anon.1]* %color3, i32 0, i64 0
  %dev_color = getelementptr inbounds %struct.anon.1, %struct.anon.1* %arrayidx4, i32 0, i32 2
  %11 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color, align 8, !tbaa !64
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %13 = bitcast %struct.gs_state_s* %12 to %struct.gs_imager_state_s*
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %14, i32 0, i32 78
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !65
  %call = call i32 %6(%struct.gs_client_color_s* %8, %struct.gs_color_space_s* %9, %struct.gx_device_color_s* %11, %struct.gs_imager_state_s* %13, %struct.gx_device_s* %15, i32 0) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %16 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp sge i32 %16, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %effective_overprint_mode = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %17, i32 0, i32 23
  %18 = load i32, i32* %effective_overprint_mode, align 4, !tbaa !68
  %cmp5 = icmp eq i32 %18, 1
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call6 = call i32 @gs_do_set_overprint(%struct.gs_state_s* %19) #5
  store i32 %call6, i32* %code, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %20 = load i32, i32* %code, align 4, !tbaa !5
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  ret i32 %20
}

declare i32 @gs_do_set_overprint(%struct.gs_state_s*) #2

; Function Attrs: nounwind uwtable
define %struct.gs_color_space_s* @gx_no_concrete_space(%struct.gs_color_space_s* %pcs, %struct.gs_imager_state_s* %pis) #0 {
entry:
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  ret %struct.gs_color_space_s* null
}

; Function Attrs: nounwind uwtable
define %struct.gs_color_space_s* @gx_same_concrete_space(%struct.gs_color_space_s* %pcs, %struct.gs_imager_state_s* %pis) #0 {
entry:
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %0 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  ret %struct.gs_color_space_s* %0
}

; Function Attrs: nounwind uwtable
define i32 @gx_no_concretize_color(%struct.gs_client_color_s* %pcc, %struct.gs_color_space_s* %pcs, i16* %pconc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev) #0 {
entry:
  %pcc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pconc.addr = alloca i16*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gs_client_color_s* %pcc, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store i16* %pconc, i16** %pconc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  ret i32 -15
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_remap_color(%struct.gs_client_color_s* %pcc, %struct.gs_color_space_s* %pcs, %struct.gx_device_color_s* %pdc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, i32 %select) #0 {
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
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_client_color_s* %pcc, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %select, i32* %select.addr, align 4, !tbaa !33
  %0 = bitcast [64 x i16]* %conc to i8*
  call void @llvm.lifetime.start(i64 128, i8* %0) #1
  %1 = bitcast %struct.gs_color_space_s** %pconcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %3, i32 0, i32 0
  %4 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !59
  %num_components = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %4, i32 0, i32 4
  %5 = load i32 (%struct.gs_color_space_s*)*, i32 (%struct.gs_color_space_s*)** %num_components, align 8, !tbaa !69
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %call = call i32 %5(%struct.gs_color_space_s* %6) #5
  store i32 %call, i32* %i, align 4, !tbaa !5
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %type1 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %8, i32 0, i32 0
  %9 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type1, align 8, !tbaa !59
  %concretize_color = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %9, i32 0, i32 8
  %10 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)** %concretize_color, align 8, !tbaa !70
  %11 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %12 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %conc, i32 0, i32 0
  %13 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call2 = call i32 %10(%struct.gs_client_color_s* %11, %struct.gs_color_space_s* %12, i16* %arraydecay, %struct.gs_imager_state_s* %13, %struct.gx_device_s* %14) #5
  store i32 %call2, i32* %code, align 4, !tbaa !5
  %15 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %15, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %16 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %17 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %type3 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %17, i32 0, i32 0
  %18 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type3, align 8, !tbaa !59
  %concrete_space = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %18, i32 0, i32 7
  %19 = load %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)** %concrete_space, align 8, !tbaa !71
  %20 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %21 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call4 = call %struct.gs_color_space_s* %19(%struct.gs_color_space_s* %20, %struct.gs_imager_state_s* %21) #5
  store %struct.gs_color_space_s* %call4, %struct.gs_color_space_s** %pconcs, align 8, !tbaa !1
  %22 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pconcs, align 8, !tbaa !1
  %type5 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %22, i32 0, i32 0
  %23 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type5, align 8, !tbaa !59
  %remap_concrete_color = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %23, i32 0, i32 9
  %24 = load i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_concrete_color, align 8, !tbaa !72
  %arraydecay6 = getelementptr inbounds [64 x i16], [64 x i16]* %conc, i32 0, i32 0
  %25 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pconcs, align 8, !tbaa !1
  %26 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %27 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %28 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %29 = load i32, i32* %select.addr, align 4, !tbaa !33
  %call7 = call i32 %24(i16* %arraydecay6, %struct.gs_color_space_s* %25, %struct.gx_device_color_s* %26, %struct.gs_imager_state_s* %27, %struct.gx_device_s* %28, i32 %29) #5
  store i32 %call7, i32* %code, align 4, !tbaa !5
  %30 = load i32, i32* %i, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %30, 0
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %31 = load i32, i32* %i, align 4, !tbaa !5
  %sub = sub nsw i32 0, %31
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %32 = load i32, i32* %i, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %32, %cond.false ]
  store i32 %cond, i32* %i, align 4, !tbaa !5
  %33 = load i32, i32* %i, align 4, !tbaa !5
  %dec = add nsw i32 %33, -1
  store i32 %dec, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %34 = load i32, i32* %i, align 4, !tbaa !5
  %cmp9 = icmp sge i32 %34, 0
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %35 to i64
  %36 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %36, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 %idxprom
  %37 = load float, float* %arrayidx, align 4, !tbaa !73
  %38 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom10 = sext i32 %38 to i64
  %39 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %ccolor = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %39, i32 0, i32 4
  %paint11 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %ccolor, i32 0, i32 1
  %values12 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint11, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [64 x float], [64 x float]* %values12, i32 0, i64 %idxprom10
  store float %37, float* %arrayidx13, align 4, !tbaa !73
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %40 = load i32, i32* %i, align 4, !tbaa !5
  %dec14 = add nsw i32 %40, -1
  store i32 %dec14, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %ccolor_valid = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %41, i32 0, i32 3
  store i32 1, i32* %ccolor_valid, align 4, !tbaa !74
  %42 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %42, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %43 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast %struct.gs_color_space_s** %pconcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = bitcast [64 x i16]* %conc to i8*
  call void @llvm.lifetime.end(i64 128, i8* %46) #1
  %47 = load i32, i32* %retval
  ret i32 %47
}

; Function Attrs: nounwind uwtable
define i32 @gx_concretize_DeviceGray(%struct.gs_client_color_s* %pc, %struct.gs_color_space_s* %pcs, i16* %pconc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev) #0 {
entry:
  %pc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pconc.addr = alloca i16*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gs_client_color_s* %pc, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store i16* %pconc, i16** %pconc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %0, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 0
  %1 = load float, float* %arrayidx, align 4, !tbaa !73
  %call = call signext i16 @gx_unit_frac(float %1) #5
  %2 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 0
  store i16 %call, i16* %arrayidx1, align 2, !tbaa !34
  ret i32 0
}

; Function Attrs: nounwind uwtable
define signext i16 @gx_unit_frac(float %fvalue) #0 {
entry:
  %fvalue.addr = alloca float, align 4
  %f = alloca i16, align 2
  store float %fvalue, float* %fvalue.addr, align 4, !tbaa !73
  %0 = bitcast i16* %f to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #1
  store i16 0, i16* %f, align 2, !tbaa !34
  %1 = load float, float* %fvalue.addr, align 4, !tbaa !73
  %conv = fpext float %1 to double
  %cmp = fcmp olt double %conv, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i16 0, i16* %f, align 2, !tbaa !34
  br label %if.end.9

if.else:                                          ; preds = %entry
  %2 = load float, float* %fvalue.addr, align 4, !tbaa !73
  %conv2 = fpext float %2 to double
  %cmp3 = fcmp oge double %conv2, 1.000000e+00
  br i1 %cmp3, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.else
  store i16 32760, i16* %f, align 2, !tbaa !34
  br label %if.end

if.else.6:                                        ; preds = %if.else
  %3 = load float, float* %fvalue.addr, align 4, !tbaa !73
  %conv7 = fpext float %3 to double
  %add = fadd double %conv7, 0x3EF0010010010010
  %mul = fmul double %add, 3.276000e+04
  %conv8 = fptosi double %mul to i16
  store i16 %conv8, i16* %f, align 2, !tbaa !34
  br label %if.end

if.end:                                           ; preds = %if.else.6, %if.then.5
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  %4 = load i16, i16* %f, align 2, !tbaa !34
  %5 = bitcast i16* %f to i8*
  call void @llvm.lifetime.end(i64 2, i8* %5) #1
  ret i16 %4
}

; Function Attrs: nounwind uwtable
define i32 @gx_remap_concrete_DGray(i16* %pconc, %struct.gs_color_space_s* %pcs, %struct.gx_device_color_s* %pdc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, i32 %select) #0 {
entry:
  %pconc.addr = alloca i16*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %select.addr = alloca i32, align 4
  store i16* %pconc, i16** %pconc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %select, i32* %select.addr, align 4, !tbaa !33
  %0 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %alpha = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %0, i32 0, i32 11
  %1 = load i16, i16* %alpha, align 2, !tbaa !75
  %conv = zext i16 %1 to i32
  %cmp = icmp eq i32 %conv, 65535
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cmap_procs = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %2, i32 0, i32 49
  %3 = load %struct.gx_color_map_procs_s*, %struct.gx_color_map_procs_s** %cmap_procs, align 8, !tbaa !56
  %map_gray = getelementptr inbounds %struct.gx_color_map_procs_s, %struct.gx_color_map_procs_s* %3, i32 0, i32 0
  %4 = load void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %map_gray, align 8, !tbaa !76
  %5 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %5, i64 0
  %6 = load i16, i16* %arrayidx, align 2, !tbaa !34
  %7 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %8 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %10 = load i32, i32* %select.addr, align 4, !tbaa !33
  call void %4(i16 signext %6, %struct.gx_device_color_s* %7, %struct.gs_imager_state_s* %8, %struct.gx_device_s* %9, i32 %10) #5
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cmap_procs2 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %11, i32 0, i32 49
  %12 = load %struct.gx_color_map_procs_s*, %struct.gx_color_map_procs_s** %cmap_procs2, align 8, !tbaa !56
  %map_rgb_alpha = getelementptr inbounds %struct.gx_color_map_procs_s, %struct.gx_color_map_procs_s* %12, i32 0, i32 3
  %13 = load void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %map_rgb_alpha, align 8, !tbaa !78
  %14 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %14, i64 0
  %15 = load i16, i16* %arrayidx3, align 2, !tbaa !34
  %16 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i16, i16* %16, i64 0
  %17 = load i16, i16* %arrayidx4, align 2, !tbaa !34
  %18 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i16, i16* %18, i64 0
  %19 = load i16, i16* %arrayidx5, align 2, !tbaa !34
  %20 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %alpha6 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %20, i32 0, i32 11
  %21 = load i16, i16* %alpha6, align 2, !tbaa !75
  %conv7 = zext i16 %21 to i32
  %shr = ashr i32 %conv7, 1
  %22 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %alpha8 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %22, i32 0, i32 11
  %23 = load i16, i16* %alpha8, align 2, !tbaa !75
  %conv9 = zext i16 %23 to i32
  %shr10 = ashr i32 %conv9, 13
  %sub = sub nsw i32 %shr, %shr10
  %conv11 = trunc i32 %sub to i16
  %24 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %25 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %27 = load i32, i32* %select.addr, align 4, !tbaa !33
  call void %13(i16 signext %15, i16 signext %17, i16 signext %19, i16 signext %conv11, %struct.gx_device_color_s* %24, %struct.gs_imager_state_s* %25, %struct.gx_device_s* %26, i32 %27) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gx_remap_DeviceGray(%struct.gs_client_color_s* %pc, %struct.gs_color_space_s* %pcs, %struct.gx_device_color_s* %pdc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, i32 %select) #0 {
entry:
  %retval = alloca i32, align 4
  %pc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %select.addr = alloca i32, align 4
  %fgray = alloca i16, align 2
  %code = alloca i32, align 4
  %pcs_notconst = alloca %struct.gs_color_space_s*, align 8
  %pgs = alloca %struct.gs_state_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_client_color_s* %pc, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %select, i32* %select.addr, align 4, !tbaa !33
  %0 = bitcast i16* %fgray to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #1
  %1 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %1, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 0
  %2 = load float, float* %arrayidx, align 4, !tbaa !73
  %call = call signext i16 @gx_unit_frac(float %2) #5
  store i16 %call, i16* %fgray, align 2, !tbaa !34
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_manager = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %4, i32 0, i32 35
  %5 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !79
  %default_gray = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %5, i32 0, i32 1
  %6 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_gray, align 8, !tbaa !80
  %cmp = icmp ne %struct.cmm_profile_s* %6, null
  br i1 %cmp, label %if.then, label %if.end.19

if.then:                                          ; preds = %entry
  %7 = bitcast %struct.gs_color_space_s** %pcs_notconst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %8, %struct.gs_color_space_s** %pcs_notconst, align 8, !tbaa !1
  %9 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %11 = bitcast %struct.gs_imager_state_s* %10 to %struct.gs_state_s*
  store %struct.gs_state_s* %11, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %12 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_manager1 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %12, i32 0, i32 35
  %13 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager1, align 8, !tbaa !79
  %default_gray2 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %13, i32 0, i32 1
  %14 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_gray2, align 8, !tbaa !80
  %15 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_notconst, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %15, i32 0, i32 6
  store %struct.cmm_profile_s* %14, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !82
  br label %do.body

do.body:                                          ; preds = %if.then
  %16 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_manager3 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %16, i32 0, i32 35
  %17 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager3, align 8, !tbaa !79
  %default_gray4 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %17, i32 0, i32 1
  %18 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_gray4, align 8, !tbaa !80
  %tobool = icmp ne %struct.cmm_profile_s* %18, null
  br i1 %tobool, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %do.body
  br label %do.body.6

do.body.6:                                        ; preds = %if.then.5
  %19 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_manager7 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %19, i32 0, i32 35
  %20 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager7, align 8, !tbaa !79
  %default_gray8 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %20, i32 0, i32 1
  %21 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_gray8, align 8, !tbaa !80
  %rc = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %21, i32 0, i32 18
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %22 = load i64, i64* %ref_count, align 8, !tbaa !83
  %inc = add nsw i64 %22, 1
  store i64 %inc, i64* %ref_count, align 8, !tbaa !83
  br label %do.body.9

do.body.9:                                        ; preds = %do.body.6
  br label %do.cond

do.cond:                                          ; preds = %do.body.9
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.10

do.cond.10:                                       ; preds = %do.end
  br label %do.end.11

do.end.11:                                        ; preds = %do.cond.10
  br label %if.end

if.end:                                           ; preds = %do.end.11, %do.body
  br label %do.cond.12

do.cond.12:                                       ; preds = %if.end
  br label %do.end.13

do.end.13:                                        ; preds = %do.cond.12
  %23 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_notconst, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %23, i32 0, i32 0
  store %struct.gs_color_space_type_s* @gs_color_space_type_ICC, %struct.gs_color_space_type_s** %type, align 8, !tbaa !59
  %24 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_notconst, align 8, !tbaa !1
  %type14 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %24, i32 0, i32 0
  %25 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type14, align 8, !tbaa !59
  %remap_color = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %25, i32 0, i32 10
  %26 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_color, align 8, !tbaa !61
  %27 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %27, i32 0, i32 69
  %arrayidx15 = getelementptr inbounds [2 x %struct.anon.1], [2 x %struct.anon.1]* %color, i32 0, i64 0
  %ccolor = getelementptr inbounds %struct.anon.1, %struct.anon.1* %arrayidx15, i32 0, i32 1
  %28 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %ccolor, align 8, !tbaa !63
  %29 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_notconst, align 8, !tbaa !1
  %30 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %color16 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %30, i32 0, i32 69
  %arrayidx17 = getelementptr inbounds [2 x %struct.anon.1], [2 x %struct.anon.1]* %color16, i32 0, i64 0
  %dev_color = getelementptr inbounds %struct.anon.1, %struct.anon.1* %arrayidx17, i32 0, i32 2
  %31 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color, align 8, !tbaa !64
  %32 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %33 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %33, i32 0, i32 78
  %34 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !65
  %call18 = call i32 %26(%struct.gs_client_color_s* %28, %struct.gs_color_space_s* %29, %struct.gx_device_color_s* %31, %struct.gs_imager_state_s* %32, %struct.gx_device_s* %34, i32 0) #5
  store i32 %call18, i32* %code, align 4, !tbaa !5
  %35 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %35, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %36 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = bitcast %struct.gs_color_space_s** %pcs_notconst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  br label %cleanup

if.end.19:                                        ; preds = %entry
  %38 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %paint20 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %38, i32 0, i32 1
  %values21 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint20, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [64 x float], [64 x float]* %values21, i32 0, i64 0
  %39 = load float, float* %arrayidx22, align 4, !tbaa !73
  %40 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %ccolor23 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %40, i32 0, i32 4
  %paint24 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %ccolor23, i32 0, i32 1
  %values25 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint24, i32 0, i32 0
  %arrayidx26 = getelementptr inbounds [64 x float], [64 x float]* %values25, i32 0, i64 0
  store float %39, float* %arrayidx26, align 4, !tbaa !73
  %41 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %ccolor_valid = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %41, i32 0, i32 3
  store i32 1, i32* %ccolor_valid, align 4, !tbaa !74
  %42 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %alpha = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %42, i32 0, i32 11
  %43 = load i16, i16* %alpha, align 2, !tbaa !75
  %conv = zext i16 %43 to i32
  %cmp27 = icmp eq i32 %conv, 65535
  br i1 %cmp27, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %if.end.19
  %44 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cmap_procs = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %44, i32 0, i32 49
  %45 = load %struct.gx_color_map_procs_s*, %struct.gx_color_map_procs_s** %cmap_procs, align 8, !tbaa !56
  %map_gray = getelementptr inbounds %struct.gx_color_map_procs_s, %struct.gx_color_map_procs_s* %45, i32 0, i32 0
  %46 = load void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %map_gray, align 8, !tbaa !76
  %47 = load i16, i16* %fgray, align 2, !tbaa !34
  %48 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %49 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %50 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %51 = load i32, i32* %select.addr, align 4, !tbaa !33
  call void %46(i16 signext %47, %struct.gx_device_color_s* %48, %struct.gs_imager_state_s* %49, %struct.gx_device_s* %50, i32 %51) #5
  br label %if.end.37

if.else:                                          ; preds = %if.end.19
  %52 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cmap_procs30 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %52, i32 0, i32 49
  %53 = load %struct.gx_color_map_procs_s*, %struct.gx_color_map_procs_s** %cmap_procs30, align 8, !tbaa !56
  %map_rgb_alpha = getelementptr inbounds %struct.gx_color_map_procs_s, %struct.gx_color_map_procs_s* %53, i32 0, i32 3
  %54 = load void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %map_rgb_alpha, align 8, !tbaa !78
  %55 = load i16, i16* %fgray, align 2, !tbaa !34
  %56 = load i16, i16* %fgray, align 2, !tbaa !34
  %57 = load i16, i16* %fgray, align 2, !tbaa !34
  %58 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %alpha31 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %58, i32 0, i32 11
  %59 = load i16, i16* %alpha31, align 2, !tbaa !75
  %conv32 = zext i16 %59 to i32
  %shr = ashr i32 %conv32, 1
  %60 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %alpha33 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %60, i32 0, i32 11
  %61 = load i16, i16* %alpha33, align 2, !tbaa !75
  %conv34 = zext i16 %61 to i32
  %shr35 = ashr i32 %conv34, 13
  %sub = sub nsw i32 %shr, %shr35
  %conv36 = trunc i32 %sub to i16
  %62 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %63 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %64 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %65 = load i32, i32* %select.addr, align 4, !tbaa !33
  call void %54(i16 signext %55, i16 signext %56, i16 signext %57, i16 signext %conv36, %struct.gx_device_color_s* %62, %struct.gs_imager_state_s* %63, %struct.gx_device_s* %64, i32 %65) #5
  br label %if.end.37

if.end.37:                                        ; preds = %if.else, %if.then.29
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.37, %do.end.13
  %66 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast i16* %fgray to i8*
  call void @llvm.lifetime.end(i64 2, i8* %67) #1
  %68 = load i32, i32* %retval
  ret i32 %68
}

; Function Attrs: nounwind uwtable
define i32 @gx_concretize_DeviceRGB(%struct.gs_client_color_s* %pc, %struct.gs_color_space_s* %pcs, i16* %pconc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev) #0 {
entry:
  %pc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pconc.addr = alloca i16*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gs_client_color_s* %pc, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store i16* %pconc, i16** %pconc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %0, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 0
  %1 = load float, float* %arrayidx, align 4, !tbaa !73
  %call = call signext i16 @gx_unit_frac(float %1) #5
  %2 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 0
  store i16 %call, i16* %arrayidx1, align 2, !tbaa !34
  %3 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %paint2 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %3, i32 0, i32 1
  %values3 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint2, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [64 x float], [64 x float]* %values3, i32 0, i64 1
  %4 = load float, float* %arrayidx4, align 4, !tbaa !73
  %call5 = call signext i16 @gx_unit_frac(float %4) #5
  %5 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i16, i16* %5, i64 1
  store i16 %call5, i16* %arrayidx6, align 2, !tbaa !34
  %6 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %paint7 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %6, i32 0, i32 1
  %values8 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint7, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [64 x float], [64 x float]* %values8, i32 0, i64 2
  %7 = load float, float* %arrayidx9, align 4, !tbaa !73
  %call10 = call signext i16 @gx_unit_frac(float %7) #5
  %8 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i16, i16* %8, i64 2
  store i16 %call10, i16* %arrayidx11, align 2, !tbaa !34
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gx_remap_concrete_DRGB(i16* %pconc, %struct.gs_color_space_s* %pcs, %struct.gx_device_color_s* %pdc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, i32 %select) #0 {
entry:
  %pconc.addr = alloca i16*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %select.addr = alloca i32, align 4
  store i16* %pconc, i16** %pconc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %select, i32* %select.addr, align 4, !tbaa !33
  %0 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %alpha = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %0, i32 0, i32 11
  %1 = load i16, i16* %alpha, align 2, !tbaa !75
  %conv = zext i16 %1 to i32
  %cmp = icmp eq i32 %conv, 65535
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cmap_procs = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %2, i32 0, i32 49
  %3 = load %struct.gx_color_map_procs_s*, %struct.gx_color_map_procs_s** %cmap_procs, align 8, !tbaa !56
  %map_rgb = getelementptr inbounds %struct.gx_color_map_procs_s, %struct.gx_color_map_procs_s* %3, i32 0, i32 1
  %4 = load void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %map_rgb, align 8, !tbaa !87
  %5 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %5, i64 0
  %6 = load i16, i16* %arrayidx, align 2, !tbaa !34
  %7 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %7, i64 1
  %8 = load i16, i16* %arrayidx2, align 2, !tbaa !34
  %9 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %9, i64 2
  %10 = load i16, i16* %arrayidx3, align 2, !tbaa !34
  %11 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %12 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %14 = load i32, i32* %select.addr, align 4, !tbaa !33
  call void %4(i16 signext %6, i16 signext %8, i16 signext %10, %struct.gx_device_color_s* %11, %struct.gs_imager_state_s* %12, %struct.gx_device_s* %13, i32 %14) #5
  br label %if.end

if.else:                                          ; preds = %entry
  %15 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cmap_procs4 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %15, i32 0, i32 49
  %16 = load %struct.gx_color_map_procs_s*, %struct.gx_color_map_procs_s** %cmap_procs4, align 8, !tbaa !56
  %map_rgb_alpha = getelementptr inbounds %struct.gx_color_map_procs_s, %struct.gx_color_map_procs_s* %16, i32 0, i32 3
  %17 = load void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %map_rgb_alpha, align 8, !tbaa !78
  %18 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i16, i16* %18, i64 0
  %19 = load i16, i16* %arrayidx5, align 2, !tbaa !34
  %20 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i16, i16* %20, i64 1
  %21 = load i16, i16* %arrayidx6, align 2, !tbaa !34
  %22 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i16, i16* %22, i64 2
  %23 = load i16, i16* %arrayidx7, align 2, !tbaa !34
  %24 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %alpha8 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %24, i32 0, i32 11
  %25 = load i16, i16* %alpha8, align 2, !tbaa !75
  %conv9 = zext i16 %25 to i32
  %shr = ashr i32 %conv9, 1
  %26 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %alpha10 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %26, i32 0, i32 11
  %27 = load i16, i16* %alpha10, align 2, !tbaa !75
  %conv11 = zext i16 %27 to i32
  %shr12 = ashr i32 %conv11, 13
  %sub = sub nsw i32 %shr, %shr12
  %conv13 = trunc i32 %sub to i16
  %28 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %29 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %31 = load i32, i32* %select.addr, align 4, !tbaa !33
  call void %17(i16 signext %19, i16 signext %21, i16 signext %23, i16 signext %conv13, %struct.gx_device_color_s* %28, %struct.gs_imager_state_s* %29, %struct.gx_device_s* %30, i32 %31) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gx_remap_DeviceRGB(%struct.gs_client_color_s* %pc, %struct.gs_color_space_s* %pcs, %struct.gx_device_color_s* %pdc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, i32 %select) #0 {
entry:
  %pc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %select.addr = alloca i32, align 4
  %fred = alloca i16, align 2
  %fgreen = alloca i16, align 2
  %fblue = alloca i16, align 2
  store %struct.gs_client_color_s* %pc, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %select, i32* %select.addr, align 4, !tbaa !33
  %0 = bitcast i16* %fred to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #1
  %1 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %1, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 0
  %2 = load float, float* %arrayidx, align 4, !tbaa !73
  %call = call signext i16 @gx_unit_frac(float %2) #5
  store i16 %call, i16* %fred, align 2, !tbaa !34
  %3 = bitcast i16* %fgreen to i8*
  call void @llvm.lifetime.start(i64 2, i8* %3) #1
  %4 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %paint1 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %4, i32 0, i32 1
  %values2 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint1, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [64 x float], [64 x float]* %values2, i32 0, i64 1
  %5 = load float, float* %arrayidx3, align 4, !tbaa !73
  %call4 = call signext i16 @gx_unit_frac(float %5) #5
  store i16 %call4, i16* %fgreen, align 2, !tbaa !34
  %6 = bitcast i16* %fblue to i8*
  call void @llvm.lifetime.start(i64 2, i8* %6) #1
  %7 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %paint5 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %7, i32 0, i32 1
  %values6 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint5, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [64 x float], [64 x float]* %values6, i32 0, i64 2
  %8 = load float, float* %arrayidx7, align 4, !tbaa !73
  %call8 = call signext i16 @gx_unit_frac(float %8) #5
  store i16 %call8, i16* %fblue, align 2, !tbaa !34
  %9 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %paint9 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %9, i32 0, i32 1
  %values10 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint9, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [64 x float], [64 x float]* %values10, i32 0, i64 0
  %10 = load float, float* %arrayidx11, align 4, !tbaa !73
  %11 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %ccolor = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %11, i32 0, i32 4
  %paint12 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %ccolor, i32 0, i32 1
  %values13 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint12, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [64 x float], [64 x float]* %values13, i32 0, i64 0
  store float %10, float* %arrayidx14, align 4, !tbaa !73
  %12 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %paint15 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %12, i32 0, i32 1
  %values16 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint15, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [64 x float], [64 x float]* %values16, i32 0, i64 1
  %13 = load float, float* %arrayidx17, align 4, !tbaa !73
  %14 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %ccolor18 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %14, i32 0, i32 4
  %paint19 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %ccolor18, i32 0, i32 1
  %values20 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint19, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [64 x float], [64 x float]* %values20, i32 0, i64 1
  store float %13, float* %arrayidx21, align 4, !tbaa !73
  %15 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %paint22 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %15, i32 0, i32 1
  %values23 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint22, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [64 x float], [64 x float]* %values23, i32 0, i64 2
  %16 = load float, float* %arrayidx24, align 4, !tbaa !73
  %17 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %ccolor25 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %17, i32 0, i32 4
  %paint26 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %ccolor25, i32 0, i32 1
  %values27 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint26, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [64 x float], [64 x float]* %values27, i32 0, i64 2
  store float %16, float* %arrayidx28, align 4, !tbaa !73
  %18 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %ccolor_valid = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %18, i32 0, i32 3
  store i32 1, i32* %ccolor_valid, align 4, !tbaa !74
  %19 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %alpha = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %19, i32 0, i32 11
  %20 = load i16, i16* %alpha, align 2, !tbaa !75
  %conv = zext i16 %20 to i32
  %cmp = icmp eq i32 %conv, 65535
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %21 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cmap_procs = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %21, i32 0, i32 49
  %22 = load %struct.gx_color_map_procs_s*, %struct.gx_color_map_procs_s** %cmap_procs, align 8, !tbaa !56
  %map_rgb = getelementptr inbounds %struct.gx_color_map_procs_s, %struct.gx_color_map_procs_s* %22, i32 0, i32 1
  %23 = load void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %map_rgb, align 8, !tbaa !87
  %24 = load i16, i16* %fred, align 2, !tbaa !34
  %25 = load i16, i16* %fgreen, align 2, !tbaa !34
  %26 = load i16, i16* %fblue, align 2, !tbaa !34
  %27 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %28 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %30 = load i32, i32* %select.addr, align 4, !tbaa !33
  call void %23(i16 signext %24, i16 signext %25, i16 signext %26, %struct.gx_device_color_s* %27, %struct.gs_imager_state_s* %28, %struct.gx_device_s* %29, i32 %30) #5
  br label %if.end

if.else:                                          ; preds = %entry
  %31 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cmap_procs30 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %31, i32 0, i32 49
  %32 = load %struct.gx_color_map_procs_s*, %struct.gx_color_map_procs_s** %cmap_procs30, align 8, !tbaa !56
  %map_rgb_alpha = getelementptr inbounds %struct.gx_color_map_procs_s, %struct.gx_color_map_procs_s* %32, i32 0, i32 3
  %33 = load void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %map_rgb_alpha, align 8, !tbaa !78
  %34 = load i16, i16* %fred, align 2, !tbaa !34
  %35 = load i16, i16* %fgreen, align 2, !tbaa !34
  %36 = load i16, i16* %fblue, align 2, !tbaa !34
  %37 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %alpha31 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %37, i32 0, i32 11
  %38 = load i16, i16* %alpha31, align 2, !tbaa !75
  %conv32 = zext i16 %38 to i32
  %shr = ashr i32 %conv32, 1
  %39 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %alpha33 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %39, i32 0, i32 11
  %40 = load i16, i16* %alpha33, align 2, !tbaa !75
  %conv34 = zext i16 %40 to i32
  %shr35 = ashr i32 %conv34, 13
  %sub = sub nsw i32 %shr, %shr35
  %conv36 = trunc i32 %sub to i16
  %41 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %42 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %43 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %44 = load i32, i32* %select.addr, align 4, !tbaa !33
  call void %33(i16 signext %34, i16 signext %35, i16 signext %36, i16 signext %conv36, %struct.gx_device_color_s* %41, %struct.gs_imager_state_s* %42, %struct.gx_device_s* %43, i32 %44) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %45 = bitcast i16* %fblue to i8*
  call void @llvm.lifetime.end(i64 2, i8* %45) #1
  %46 = bitcast i16* %fgreen to i8*
  call void @llvm.lifetime.end(i64 2, i8* %46) #1
  %47 = bitcast i16* %fred to i8*
  call void @llvm.lifetime.end(i64 2, i8* %47) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gx_concretize_DeviceCMYK(%struct.gs_client_color_s* %pc, %struct.gs_color_space_s* %pcs, i16* %pconc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev) #0 {
entry:
  %pc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pconc.addr = alloca i16*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gs_client_color_s* %pc, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store i16* %pconc, i16** %pconc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %0, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 0
  %1 = load float, float* %arrayidx, align 4, !tbaa !73
  %call = call signext i16 @gx_unit_frac(float %1) #5
  %2 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 0
  store i16 %call, i16* %arrayidx1, align 2, !tbaa !34
  %3 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %paint2 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %3, i32 0, i32 1
  %values3 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint2, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [64 x float], [64 x float]* %values3, i32 0, i64 1
  %4 = load float, float* %arrayidx4, align 4, !tbaa !73
  %call5 = call signext i16 @gx_unit_frac(float %4) #5
  %5 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i16, i16* %5, i64 1
  store i16 %call5, i16* %arrayidx6, align 2, !tbaa !34
  %6 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %paint7 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %6, i32 0, i32 1
  %values8 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint7, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [64 x float], [64 x float]* %values8, i32 0, i64 2
  %7 = load float, float* %arrayidx9, align 4, !tbaa !73
  %call10 = call signext i16 @gx_unit_frac(float %7) #5
  %8 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i16, i16* %8, i64 2
  store i16 %call10, i16* %arrayidx11, align 2, !tbaa !34
  %9 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %paint12 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %9, i32 0, i32 1
  %values13 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint12, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [64 x float], [64 x float]* %values13, i32 0, i64 3
  %10 = load float, float* %arrayidx14, align 4, !tbaa !73
  %call15 = call signext i16 @gx_unit_frac(float %10) #5
  %11 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i16, i16* %11, i64 3
  store i16 %call15, i16* %arrayidx16, align 2, !tbaa !34
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gx_remap_concrete_DCMYK(i16* %pconc, %struct.gs_color_space_s* %pcs, %struct.gx_device_color_s* %pdc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, i32 %select) #0 {
entry:
  %pconc.addr = alloca i16*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %select.addr = alloca i32, align 4
  store i16* %pconc, i16** %pconc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %select, i32* %select.addr, align 4, !tbaa !33
  %0 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cmap_procs = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %0, i32 0, i32 49
  %1 = load %struct.gx_color_map_procs_s*, %struct.gx_color_map_procs_s** %cmap_procs, align 8, !tbaa !56
  %map_cmyk = getelementptr inbounds %struct.gx_color_map_procs_s, %struct.gx_color_map_procs_s* %1, i32 0, i32 2
  %2 = load void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, %struct.gs_color_space_s*)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, %struct.gs_color_space_s*)** %map_cmyk, align 8, !tbaa !88
  %3 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 0
  %4 = load i16, i16* %arrayidx, align 2, !tbaa !34
  %5 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %5, i64 1
  %6 = load i16, i16* %arrayidx1, align 2, !tbaa !34
  %7 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %7, i64 2
  %8 = load i16, i16* %arrayidx2, align 2, !tbaa !34
  %9 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %9, i64 3
  %10 = load i16, i16* %arrayidx3, align 2, !tbaa !34
  %11 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %12 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %14 = load i32, i32* %select.addr, align 4, !tbaa !33
  %15 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  call void %2(i16 signext %4, i16 signext %6, i16 signext %8, i16 signext %10, %struct.gx_device_color_s* %11, %struct.gs_imager_state_s* %12, %struct.gx_device_s* %13, i32 %14, %struct.gs_color_space_s* %15) #5
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gx_remap_DeviceCMYK(%struct.gs_client_color_s* %pc, %struct.gs_color_space_s* %pcs, %struct.gx_device_color_s* %pdc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, i32 %select) #0 {
entry:
  %pc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %select.addr = alloca i32, align 4
  store %struct.gs_client_color_s* %pc, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %select, i32* %select.addr, align 4, !tbaa !33
  %0 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %0, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 0
  %1 = load float, float* %arrayidx, align 4, !tbaa !73
  %2 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %ccolor = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %2, i32 0, i32 4
  %paint1 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %ccolor, i32 0, i32 1
  %values2 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint1, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [64 x float], [64 x float]* %values2, i32 0, i64 0
  store float %1, float* %arrayidx3, align 4, !tbaa !73
  %3 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %paint4 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %3, i32 0, i32 1
  %values5 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint4, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [64 x float], [64 x float]* %values5, i32 0, i64 1
  %4 = load float, float* %arrayidx6, align 4, !tbaa !73
  %5 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %ccolor7 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %5, i32 0, i32 4
  %paint8 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %ccolor7, i32 0, i32 1
  %values9 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint8, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [64 x float], [64 x float]* %values9, i32 0, i64 1
  store float %4, float* %arrayidx10, align 4, !tbaa !73
  %6 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %paint11 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %6, i32 0, i32 1
  %values12 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint11, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [64 x float], [64 x float]* %values12, i32 0, i64 2
  %7 = load float, float* %arrayidx13, align 4, !tbaa !73
  %8 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %ccolor14 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %8, i32 0, i32 4
  %paint15 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %ccolor14, i32 0, i32 1
  %values16 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint15, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [64 x float], [64 x float]* %values16, i32 0, i64 2
  store float %7, float* %arrayidx17, align 4, !tbaa !73
  %9 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %paint18 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %9, i32 0, i32 1
  %values19 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint18, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [64 x float], [64 x float]* %values19, i32 0, i64 3
  %10 = load float, float* %arrayidx20, align 4, !tbaa !73
  %11 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %ccolor21 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %11, i32 0, i32 4
  %paint22 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %ccolor21, i32 0, i32 1
  %values23 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint22, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [64 x float], [64 x float]* %values23, i32 0, i64 3
  store float %10, float* %arrayidx24, align 4, !tbaa !73
  %12 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %ccolor_valid = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %12, i32 0, i32 3
  store i32 1, i32* %ccolor_valid, align 4, !tbaa !74
  %13 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cmap_procs = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %13, i32 0, i32 49
  %14 = load %struct.gx_color_map_procs_s*, %struct.gx_color_map_procs_s** %cmap_procs, align 8, !tbaa !56
  %map_cmyk = getelementptr inbounds %struct.gx_color_map_procs_s, %struct.gx_color_map_procs_s* %14, i32 0, i32 2
  %15 = load void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, %struct.gs_color_space_s*)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, %struct.gs_color_space_s*)** %map_cmyk, align 8, !tbaa !88
  %16 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %paint25 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %16, i32 0, i32 1
  %values26 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint25, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [64 x float], [64 x float]* %values26, i32 0, i64 0
  %17 = load float, float* %arrayidx27, align 4, !tbaa !73
  %call = call signext i16 @gx_unit_frac(float %17) #5
  %18 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %paint28 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %18, i32 0, i32 1
  %values29 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint28, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [64 x float], [64 x float]* %values29, i32 0, i64 1
  %19 = load float, float* %arrayidx30, align 4, !tbaa !73
  %call31 = call signext i16 @gx_unit_frac(float %19) #5
  %20 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %paint32 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %20, i32 0, i32 1
  %values33 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint32, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds [64 x float], [64 x float]* %values33, i32 0, i64 2
  %21 = load float, float* %arrayidx34, align 4, !tbaa !73
  %call35 = call signext i16 @gx_unit_frac(float %21) #5
  %22 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %paint36 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %22, i32 0, i32 1
  %values37 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint36, i32 0, i32 0
  %arrayidx38 = getelementptr inbounds [64 x float], [64 x float]* %values37, i32 0, i64 3
  %23 = load float, float* %arrayidx38, align 4, !tbaa !73
  %call39 = call signext i16 @gx_unit_frac(float %23) #5
  %24 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %25 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %27 = load i32, i32* %select.addr, align 4, !tbaa !33
  %28 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  call void %15(i16 signext %call, i16 signext %call31, i16 signext %call35, i16 signext %call39, %struct.gx_device_color_s* %24, %struct.gs_imager_state_s* %25, %struct.gx_device_s* %26, i32 %27, %struct.gs_color_space_s* %28) #5
  ret i32 0
}

; Function Attrs: nounwind uwtable
define float @gs_identity_transfer(double %value, %struct.gx_transfer_map_s* %pmap) #0 {
entry:
  %value.addr = alloca double, align 8
  %pmap.addr = alloca %struct.gx_transfer_map_s*, align 8
  store double %value, double* %value.addr, align 8, !tbaa !89
  store %struct.gx_transfer_map_s* %pmap, %struct.gx_transfer_map_s** %pmap.addr, align 8, !tbaa !1
  %0 = load double, double* %value.addr, align 8, !tbaa !89
  %conv = fptrunc double %0 to float
  ret float %conv
}

; Function Attrs: nounwind uwtable
define float @gs_mapped_transfer(double %value, %struct.gx_transfer_map_s* %pmap) #0 {
entry:
  %value.addr = alloca double, align 8
  %pmap.addr = alloca %struct.gx_transfer_map_s*, align 8
  store double %value, double* %value.addr, align 8, !tbaa !89
  store %struct.gx_transfer_map_s* %pmap, %struct.gx_transfer_map_s** %pmap.addr, align 8, !tbaa !1
  %0 = load double, double* %value.addr, align 8, !tbaa !89
  %mul = fmul double %0, 2.560000e+02
  %add = fadd double %mul, 5.000000e-01
  %conv = fptosi double %add to i32
  %idxprom = sext i32 %conv to i64
  %1 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %pmap.addr, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %1, i32 0, i32 4
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* %values, i32 0, i64 %idxprom
  %2 = load i16, i16* %arrayidx, align 2, !tbaa !34
  %conv1 = sext i16 %2 to i32
  %conv2 = sitofp i32 %conv1 to float
  %div = fdiv float %conv2, 3.276000e+04
  ret float %div
}

; Function Attrs: nounwind uwtable
define void @gx_set_identity_transfer(%struct.gx_transfer_map_s* %pmap) #0 {
entry:
  %pmap.addr = alloca %struct.gx_transfer_map_s*, align 8
  %i = alloca i32, align 4
  store %struct.gx_transfer_map_s* %pmap, %struct.gx_transfer_map_s** %pmap.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %pmap.addr, align 8, !tbaa !1
  %proc = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %1, i32 0, i32 1
  store float (double, %struct.gx_transfer_map_s*)* @gs_identity_transfer, float (double, %struct.gx_transfer_map_s*)** %proc, align 8, !tbaa !90
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %2, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !tbaa !5
  %conv = trunc i32 %3 to i16
  %conv1 = sext i16 %conv to i32
  %shl = shl i32 %conv1, 7
  %4 = load i32, i32* %i, align 4, !tbaa !5
  %shr = ashr i32 %4, 1
  %add = add nsw i32 %shl, %shr
  %5 = load i32, i32* %i, align 4, !tbaa !5
  %shr2 = ashr i32 %5, 5
  %sub = sub nsw i32 %add, %shr2
  %conv3 = trunc i32 %sub to i16
  %6 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %pmap.addr, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %7, i32 0, i32 4
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* %values, i32 0, i64 %idxprom
  store i16 %conv3, i16* %arrayidx, align 2, !tbaa !34
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  ret void
}

; Function Attrs: nounwind uwtable
define signext i16 @gx_color_frac_map(i16 signext %cv, i16* %values) #0 {
entry:
  %retval = alloca i16, align 2
  %cv.addr = alloca i16, align 2
  %values.addr = alloca i16*, align 8
  %cmi = alloca i32, align 4
  %mv = alloca i16, align 2
  %rem = alloca i32, align 4
  %mdv = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i16 %cv, i16* %cv.addr, align 2, !tbaa !34
  store i16* %values, i16** %values.addr, align 8, !tbaa !1
  %0 = bitcast i32* %cmi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i16, i16* %cv.addr, align 2, !tbaa !34
  %conv = sext i16 %1 to i32
  %shr = ashr i32 %conv, 12
  %2 = load i16, i16* %cv.addr, align 2, !tbaa !34
  %conv1 = sext i16 %2 to i32
  %add = add nsw i32 %shr, %conv1
  %3 = load i16, i16* %cv.addr, align 2, !tbaa !34
  %conv2 = sext i16 %3 to i32
  %shr3 = ashr i32 %conv2, 12
  %4 = load i16, i16* %cv.addr, align 2, !tbaa !34
  %conv4 = sext i16 %4 to i32
  %add5 = add nsw i32 %shr3, %conv4
  %shr6 = ashr i32 %add5, 8
  %sub = sub nsw i32 %add, %shr6
  %shr7 = ashr i32 %sub, 7
  store i32 %shr7, i32* %cmi, align 4, !tbaa !5
  %5 = bitcast i16* %mv to i8*
  call void @llvm.lifetime.start(i64 2, i8* %5) #1
  %6 = load i32, i32* %cmi, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %7 = load i16*, i16** %values.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %7, i64 %idxprom
  %8 = load i16, i16* %arrayidx, align 2, !tbaa !34
  store i16 %8, i16* %mv, align 2, !tbaa !34
  %9 = bitcast i32* %rem to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %mdv to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load i16, i16* %cv.addr, align 2, !tbaa !34
  %conv8 = sext i16 %11 to i32
  %12 = load i32, i32* %cmi, align 4, !tbaa !5
  %conv9 = trunc i32 %12 to i16
  %conv10 = sext i16 %conv9 to i32
  %shl = shl i32 %conv10, 7
  %13 = load i32, i32* %cmi, align 4, !tbaa !5
  %shr11 = ashr i32 %13, 1
  %add12 = add nsw i32 %shl, %shr11
  %14 = load i32, i32* %cmi, align 4, !tbaa !5
  %shr13 = ashr i32 %14, 5
  %sub14 = sub nsw i32 %add12, %shr13
  %conv15 = trunc i32 %sub14 to i16
  %conv16 = sext i16 %conv15 to i32
  %sub17 = sub nsw i32 %conv8, %conv16
  store i32 %sub17, i32* %rem, align 4, !tbaa !5
  %15 = load i32, i32* %rem, align 4, !tbaa !5
  %cmp = icmp eq i32 %15, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %16 = load i16, i16* %mv, align 2, !tbaa !34
  store i16 %16, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %17 = load i32, i32* %cmi, align 4, !tbaa !5
  %add19 = add nsw i32 %17, 1
  %idxprom20 = sext i32 %add19 to i64
  %18 = load i16*, i16** %values.addr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i16, i16* %18, i64 %idxprom20
  %19 = load i16, i16* %arrayidx21, align 2, !tbaa !34
  %conv22 = sext i16 %19 to i32
  %20 = load i16, i16* %mv, align 2, !tbaa !34
  %conv23 = sext i16 %20 to i32
  %sub24 = sub nsw i32 %conv22, %conv23
  store i32 %sub24, i32* %mdv, align 4, !tbaa !5
  %21 = load i16, i16* %mv, align 2, !tbaa !34
  %conv25 = sext i16 %21 to i32
  %22 = load i32, i32* %rem, align 4, !tbaa !5
  %23 = load i32, i32* %mdv, align 4, !tbaa !5
  %mul = mul nsw i32 %22, %23
  %shr26 = ashr i32 %mul, 7
  %add27 = add nsw i32 %conv25, %shr26
  %conv28 = trunc i32 %add27 to i16
  store i16 %conv28, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %24 = bitcast i32* %mdv to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast i32* %rem to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast i16* %mv to i8*
  call void @llvm.lifetime.end(i64 2, i8* %26) #1
  %27 = bitcast i32* %cmi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = load i16, i16* %retval
  ret i16 %28
}

; Function Attrs: nounwind uwtable
define i64 @gx_default_w_b_map_rgb_color(%struct.gx_device_s* %dev, i16* %cv) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  %ncomps = alloca i32, align 4
  %cv_all = alloca i16, align 2
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %3 = load i32, i32* %num_components, align 4, !tbaa !20
  store i32 %3, i32* %ncomps, align 4, !tbaa !5
  %4 = bitcast i16* %cv_all to i8*
  call void @llvm.lifetime.start(i64 2, i8* %4) #1
  store i16 0, i16* %cv_all, align 2, !tbaa !34
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !tbaa !5
  %6 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %8 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %8, i64 %idxprom
  %9 = load i16, i16* %arrayidx, align 2, !tbaa !34
  %conv = zext i16 %9 to i32
  %10 = load i16, i16* %cv_all, align 2, !tbaa !34
  %conv1 = zext i16 %10 to i32
  %or = or i32 %conv1, %conv
  %conv2 = trunc i32 %or to i16
  store i16 %conv2, i16* %cv_all, align 2, !tbaa !34
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i16, i16* %cv_all, align 2, !tbaa !34
  %conv3 = zext i16 %12 to i32
  %cmp4 = icmp sgt i32 %conv3, 32767
  %cond = select i1 %cmp4, i64 1, i64 0
  %13 = bitcast i16* %cv_all to i8*
  call void @llvm.lifetime.end(i64 2, i8* %13) #1
  %14 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %15 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  ret i64 %cond
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_w_b_map_color_rgb(%struct.gx_device_s* %dev, i64 %color, i16* %prgb) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %prgb.addr = alloca i16*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !32
  store i16* %prgb, i16** %prgb.addr, align 8, !tbaa !1
  %0 = load i64, i64* %color.addr, align 8, !tbaa !32
  %conv = trunc i64 %0 to i16
  %conv1 = zext i16 %conv to i32
  %sub = sub nsw i32 0, %conv1
  %conv2 = trunc i32 %sub to i16
  %1 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 2
  store i16 %conv2, i16* %arrayidx, align 2, !tbaa !34
  %2 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %2, i64 1
  store i16 %conv2, i16* %arrayidx3, align 2, !tbaa !34
  %3 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i16, i16* %3, i64 0
  store i16 %conv2, i16* %arrayidx4, align 2, !tbaa !34
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i64 @gx_default_b_w_map_rgb_color(%struct.gx_device_s* %dev, i16* %cv) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  %ncomps = alloca i32, align 4
  %cv_all = alloca i16, align 2
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %3 = load i32, i32* %num_components, align 4, !tbaa !20
  store i32 %3, i32* %ncomps, align 4, !tbaa !5
  %4 = bitcast i16* %cv_all to i8*
  call void @llvm.lifetime.start(i64 2, i8* %4) #1
  store i16 0, i16* %cv_all, align 2, !tbaa !34
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !tbaa !5
  %6 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %8 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %8, i64 %idxprom
  %9 = load i16, i16* %arrayidx, align 2, !tbaa !34
  %conv = zext i16 %9 to i32
  %10 = load i16, i16* %cv_all, align 2, !tbaa !34
  %conv1 = zext i16 %10 to i32
  %or = or i32 %conv1, %conv
  %conv2 = trunc i32 %or to i16
  store i16 %conv2, i16* %cv_all, align 2, !tbaa !34
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i16, i16* %cv_all, align 2, !tbaa !34
  %conv3 = zext i16 %12 to i32
  %cmp4 = icmp sgt i32 %conv3, 32767
  %cond = select i1 %cmp4, i64 0, i64 1
  %13 = bitcast i16* %cv_all to i8*
  call void @llvm.lifetime.end(i64 2, i8* %13) #1
  %14 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %15 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  ret i64 %cond
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_b_w_map_color_rgb(%struct.gx_device_s* %dev, i64 %color, i16* %prgb) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %prgb.addr = alloca i16*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !32
  store i16* %prgb, i16** %prgb.addr, align 8, !tbaa !1
  %0 = load i64, i64* %color.addr, align 8, !tbaa !32
  %conv = trunc i64 %0 to i16
  %conv1 = zext i16 %conv to i32
  %xor = xor i32 %conv1, 1
  %sub = sub nsw i32 0, %xor
  %conv2 = trunc i32 %sub to i16
  %1 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 2
  store i16 %conv2, i16* %arrayidx, align 2, !tbaa !34
  %2 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %2, i64 1
  store i16 %conv2, i16* %arrayidx3, align 2, !tbaa !34
  %3 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i16, i16* %3, i64 0
  store i16 %conv2, i16* %arrayidx4, align 2, !tbaa !34
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i64 @gx_default_gray_map_rgb_color(%struct.gx_device_s* %dev, i16* %cv) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  %gray = alloca i16, align 2
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = bitcast i16* %gray to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #1
  %1 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 0
  %2 = load i16, i16* %arrayidx, align 2, !tbaa !34
  %conv = zext i16 %2 to i64
  %mul = mul i64 %conv, 30
  %3 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %3, i64 1
  %4 = load i16, i16* %arrayidx1, align 2, !tbaa !34
  %conv2 = zext i16 %4 to i64
  %mul3 = mul i64 %conv2, 59
  %add = add i64 %mul, %mul3
  %5 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i16, i16* %5, i64 2
  %6 = load i16, i16* %arrayidx4, align 2, !tbaa !34
  %conv5 = zext i16 %6 to i64
  %mul6 = mul i64 %conv5, 11
  %add7 = add i64 %add, %mul6
  %add8 = add i64 %add7, 50
  %div = udiv i64 %add8, 100
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 11
  %max_gray = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 5
  %8 = load i32, i32* %max_gray, align 4, !tbaa !36
  %conv9 = zext i32 %8 to i64
  %mul10 = mul i64 %div, %conv9
  %add11 = add i64 %mul10, 32767
  %div12 = udiv i64 %add11, 65535
  %conv13 = trunc i64 %div12 to i16
  store i16 %conv13, i16* %gray, align 2, !tbaa !34
  %9 = load i16, i16* %gray, align 2, !tbaa !34
  %conv14 = zext i16 %9 to i64
  %10 = bitcast i16* %gray to i8*
  call void @llvm.lifetime.end(i64 2, i8* %10) #1
  ret i64 %conv14
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_gray_map_color_rgb(%struct.gx_device_s* %dev, i64 %color, i16* %prgb) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %prgb.addr = alloca i16*, align 8
  %gray = alloca i16, align 2
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !32
  store i16* %prgb, i16** %prgb.addr, align 8, !tbaa !1
  %0 = bitcast i16* %gray to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #1
  %1 = load i64, i64* %color.addr, align 8, !tbaa !32
  %mul = mul i64 %1, 65535
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 11
  %max_gray = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 5
  %3 = load i32, i32* %max_gray, align 4, !tbaa !36
  %conv = zext i32 %3 to i64
  %div = udiv i64 %mul, %conv
  %conv1 = trunc i64 %div to i16
  store i16 %conv1, i16* %gray, align 2, !tbaa !34
  %4 = load i16, i16* %gray, align 2, !tbaa !34
  %5 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %5, i64 0
  store i16 %4, i16* %arrayidx, align 2, !tbaa !34
  %6 = load i16, i16* %gray, align 2, !tbaa !34
  %7 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %7, i64 1
  store i16 %6, i16* %arrayidx2, align 2, !tbaa !34
  %8 = load i16, i16* %gray, align 2, !tbaa !34
  %9 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %9, i64 2
  store i16 %8, i16* %arrayidx3, align 2, !tbaa !34
  %10 = bitcast i16* %gray to i8*
  call void @llvm.lifetime.end(i64 2, i8* %10) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i64 @gx_default_8bit_map_gray_color(%struct.gx_device_s* %dev, i16* %cv) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  %color = alloca i64, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = bitcast i64* %color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 0
  %2 = load i16, i16* %arrayidx, align 2, !tbaa !34
  %conv = zext i16 %2 to i32
  %mul = mul i32 %conv, 65281
  %add = add i32 %mul, 8388608
  %shr = lshr i32 %add, 24
  %conv1 = trunc i32 %shr to i16
  %conv2 = zext i16 %conv1 to i64
  store i64 %conv2, i64* %color, align 8, !tbaa !32
  %3 = load i64, i64* %color, align 8, !tbaa !32
  %cmp = icmp eq i64 %3, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load i64, i64* %color, align 8, !tbaa !32
  %xor = xor i64 %4, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load i64, i64* %color, align 8, !tbaa !32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %xor, %cond.true ], [ %5, %cond.false ]
  %6 = bitcast i64* %color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  ret i64 %cond
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_8bit_map_color_gray(%struct.gx_device_s* %dev, i64 %color, i16* %pgray) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %pgray.addr = alloca i16*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !32
  store i16* %pgray, i16** %pgray.addr, align 8, !tbaa !1
  %0 = load i64, i64* %color.addr, align 8, !tbaa !32
  %mul = mul i64 %0, 65535
  %div = udiv i64 %mul, 255
  %conv = trunc i64 %div to i16
  %1 = load i16*, i16** %pgray.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 0
  store i16 %conv, i16* %arrayidx, align 2, !tbaa !34
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i64 @gx_default_rgb_map_rgb_color(%struct.gx_device_s* %dev, i16* %cv) #0 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  %COLROUND_M = alloca i32, align 4
  %COLROUND_S = alloca i32, align 4
  %COLROUND_R = alloca i32, align 4
  %bpc = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %1 = load i16, i16* %depth, align 2, !tbaa !35
  %conv = zext i16 %1 to i32
  %cmp = icmp eq i32 %conv, 24
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %2, i64 2
  %3 = load i16, i16* %arrayidx, align 2, !tbaa !34
  %conv2 = zext i16 %3 to i32
  %mul = mul i32 %conv2, 65281
  %add = add i32 %mul, 8388608
  %shr = lshr i32 %add, 24
  %conv3 = trunc i32 %shr to i16
  %conv4 = zext i16 %conv3 to i32
  %4 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i16, i16* %4, i64 1
  %5 = load i16, i16* %arrayidx5, align 2, !tbaa !34
  %conv6 = zext i16 %5 to i32
  %mul7 = mul i32 %conv6, 65281
  %add8 = add i32 %mul7, 8388608
  %shr9 = lshr i32 %add8, 24
  %conv10 = trunc i32 %shr9 to i16
  %conv11 = zext i16 %conv10 to i32
  %shl = shl i32 %conv11, 8
  %add12 = add i32 %conv4, %shl
  %conv13 = zext i32 %add12 to i64
  %6 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i16, i16* %6, i64 0
  %7 = load i16, i16* %arrayidx14, align 2, !tbaa !34
  %conv15 = zext i16 %7 to i32
  %mul16 = mul i32 %conv15, 65281
  %add17 = add i32 %mul16, 8388608
  %shr18 = lshr i32 %add17, 24
  %conv19 = trunc i32 %shr18 to i16
  %conv20 = zext i16 %conv19 to i64
  %shl21 = shl i64 %conv20, 16
  %add22 = add i64 %conv13, %shl21
  store i64 %add22, i64* %retval
  br label %return

if.else:                                          ; preds = %entry
  %8 = bitcast i32* %COLROUND_M to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %COLROUND_S to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %COLROUND_R to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info23 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 11
  %depth24 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info23, i32 0, i32 3
  %13 = load i16, i16* %depth24, align 2, !tbaa !35
  %conv25 = zext i16 %13 to i32
  %div = sdiv i32 %conv25, 3
  store i32 %div, i32* %bpc, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %if.else
  %14 = load i32, i32* %bpc, align 4, !tbaa !5
  %shl26 = shl i32 1, %14
  %sub = sub nsw i32 %shl26, 1
  %15 = load i32, i32* %bpc, align 4, !tbaa !5
  %conv27 = sext i32 %15 to i64
  %sub28 = sub i64 16, %conv27
  %sh_prom = trunc i64 %sub28 to i32
  %shl29 = shl i32 %sub, %sh_prom
  %add30 = add nsw i32 %shl29, 1
  store i32 %add30, i32* %COLROUND_M, align 4, !tbaa !5
  %16 = load i32, i32* %bpc, align 4, !tbaa !5
  %conv31 = sext i32 %16 to i64
  %sub32 = sub i64 32, %conv31
  %conv33 = trunc i64 %sub32 to i32
  store i32 %conv33, i32* %COLROUND_S, align 4, !tbaa !5
  %17 = load i32, i32* %COLROUND_S, align 4, !tbaa !5
  %sub34 = sub i32 %17, 1
  %shl35 = shl i32 1, %sub34
  store i32 %shl35, i32* %COLROUND_R, align 4, !tbaa !5
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %18 = load i32, i32* %COLROUND_M, align 4, !tbaa !5
  %19 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx36 = getelementptr inbounds i16, i16* %19, i64 0
  %20 = load i16, i16* %arrayidx36, align 2, !tbaa !34
  %conv37 = zext i16 %20 to i32
  %mul38 = mul i32 %18, %conv37
  %21 = load i32, i32* %COLROUND_R, align 4, !tbaa !5
  %add39 = add i32 %mul38, %21
  %22 = load i32, i32* %COLROUND_S, align 4, !tbaa !5
  %shr40 = lshr i32 %add39, %22
  %conv41 = zext i32 %shr40 to i64
  %23 = load i32, i32* %bpc, align 4, !tbaa !5
  %sh_prom42 = zext i32 %23 to i64
  %shl43 = shl i64 %conv41, %sh_prom42
  %24 = load i32, i32* %COLROUND_M, align 4, !tbaa !5
  %25 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds i16, i16* %25, i64 1
  %26 = load i16, i16* %arrayidx44, align 2, !tbaa !34
  %conv45 = zext i16 %26 to i32
  %mul46 = mul i32 %24, %conv45
  %27 = load i32, i32* %COLROUND_R, align 4, !tbaa !5
  %add47 = add i32 %mul46, %27
  %28 = load i32, i32* %COLROUND_S, align 4, !tbaa !5
  %shr48 = lshr i32 %add47, %28
  %conv49 = zext i32 %shr48 to i64
  %add50 = add i64 %shl43, %conv49
  %29 = load i32, i32* %bpc, align 4, !tbaa !5
  %sh_prom51 = zext i32 %29 to i64
  %shl52 = shl i64 %add50, %sh_prom51
  %30 = load i32, i32* %COLROUND_M, align 4, !tbaa !5
  %31 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx53 = getelementptr inbounds i16, i16* %31, i64 2
  %32 = load i16, i16* %arrayidx53, align 2, !tbaa !34
  %conv54 = zext i16 %32 to i32
  %mul55 = mul i32 %30, %conv54
  %33 = load i32, i32* %COLROUND_R, align 4, !tbaa !5
  %add56 = add i32 %mul55, %33
  %34 = load i32, i32* %COLROUND_S, align 4, !tbaa !5
  %shr57 = lshr i32 %add56, %34
  %conv58 = zext i32 %shr57 to i64
  %add59 = add i64 %shl52, %conv58
  store i64 %add59, i64* %retval
  %35 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast i32* %COLROUND_R to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast i32* %COLROUND_S to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast i32* %COLROUND_M to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  br label %return

return:                                           ; preds = %do.end, %if.then
  %39 = load i64, i64* %retval
  ret i64 %39
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_rgb_map_color_rgb(%struct.gx_device_s* %dev, i64 %color, i16* %prgb) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %prgb.addr = alloca i16*, align 8
  %bits_per_color = alloca i32, align 4
  %color_mask = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !32
  store i16* %prgb, i16** %prgb.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %1 = load i16, i16* %depth, align 2, !tbaa !35
  %conv = zext i16 %1 to i32
  %cmp = icmp eq i32 %conv, 24
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %color.addr, align 8, !tbaa !32
  %shr = lshr i64 %2, 16
  %shl = shl i64 %shr, 8
  %3 = load i64, i64* %color.addr, align 8, !tbaa !32
  %shr2 = lshr i64 %3, 16
  %shr3 = lshr i64 %shr2, 0
  %add = add i64 %shl, %shr3
  %conv4 = trunc i64 %add to i16
  %4 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 0
  store i16 %conv4, i16* %arrayidx, align 2, !tbaa !34
  %5 = load i64, i64* %color.addr, align 8, !tbaa !32
  %shr5 = lshr i64 %5, 8
  %and = and i64 %shr5, 255
  %shl6 = shl i64 %and, 8
  %6 = load i64, i64* %color.addr, align 8, !tbaa !32
  %shr7 = lshr i64 %6, 8
  %and8 = and i64 %shr7, 255
  %shr9 = lshr i64 %and8, 0
  %add10 = add i64 %shl6, %shr9
  %conv11 = trunc i64 %add10 to i16
  %7 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i16, i16* %7, i64 1
  store i16 %conv11, i16* %arrayidx12, align 2, !tbaa !34
  %8 = load i64, i64* %color.addr, align 8, !tbaa !32
  %and13 = and i64 %8, 255
  %shl14 = shl i64 %and13, 8
  %9 = load i64, i64* %color.addr, align 8, !tbaa !32
  %and15 = and i64 %9, 255
  %shr16 = lshr i64 %and15, 0
  %add17 = add i64 %shl14, %shr16
  %conv18 = trunc i64 %add17 to i16
  %10 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i16, i16* %10, i64 2
  store i16 %conv18, i16* %arrayidx19, align 2, !tbaa !34
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = bitcast i32* %bits_per_color to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info20 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 11
  %depth21 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info20, i32 0, i32 3
  %13 = load i16, i16* %depth21, align 2, !tbaa !35
  %conv22 = zext i16 %13 to i32
  %div = sdiv i32 %conv22, 3
  store i32 %div, i32* %bits_per_color, align 4, !tbaa !5
  %14 = bitcast i32* %color_mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load i32, i32* %bits_per_color, align 4, !tbaa !5
  %shl23 = shl i32 1, %15
  %sub = sub nsw i32 %shl23, 1
  store i32 %sub, i32* %color_mask, align 4, !tbaa !5
  %16 = load i64, i64* %color.addr, align 8, !tbaa !32
  %17 = load i32, i32* %bits_per_color, align 4, !tbaa !5
  %mul = mul i32 %17, 2
  %sh_prom = zext i32 %mul to i64
  %shr24 = lshr i64 %16, %sh_prom
  %18 = load i32, i32* %color_mask, align 4, !tbaa !5
  %conv25 = zext i32 %18 to i64
  %and26 = and i64 %shr24, %conv25
  %mul27 = mul i64 %and26, 65535
  %19 = load i32, i32* %color_mask, align 4, !tbaa !5
  %conv28 = zext i32 %19 to i64
  %div29 = udiv i64 %mul27, %conv28
  %conv30 = trunc i64 %div29 to i16
  %20 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i16, i16* %20, i64 0
  store i16 %conv30, i16* %arrayidx31, align 2, !tbaa !34
  %21 = load i64, i64* %color.addr, align 8, !tbaa !32
  %22 = load i32, i32* %bits_per_color, align 4, !tbaa !5
  %sh_prom32 = zext i32 %22 to i64
  %shr33 = lshr i64 %21, %sh_prom32
  %23 = load i32, i32* %color_mask, align 4, !tbaa !5
  %conv34 = zext i32 %23 to i64
  %and35 = and i64 %shr33, %conv34
  %mul36 = mul i64 %and35, 65535
  %24 = load i32, i32* %color_mask, align 4, !tbaa !5
  %conv37 = zext i32 %24 to i64
  %div38 = udiv i64 %mul36, %conv37
  %conv39 = trunc i64 %div38 to i16
  %25 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds i16, i16* %25, i64 1
  store i16 %conv39, i16* %arrayidx40, align 2, !tbaa !34
  %26 = load i64, i64* %color.addr, align 8, !tbaa !32
  %27 = load i32, i32* %color_mask, align 4, !tbaa !5
  %conv41 = zext i32 %27 to i64
  %and42 = and i64 %26, %conv41
  %mul43 = mul i64 %and42, 65535
  %28 = load i32, i32* %color_mask, align 4, !tbaa !5
  %conv44 = zext i32 %28 to i64
  %div45 = udiv i64 %mul43, %conv44
  %conv46 = trunc i64 %div45 to i16
  %29 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx47 = getelementptr inbounds i16, i16* %29, i64 2
  store i16 %conv46, i16* %arrayidx47, align 2, !tbaa !34
  %30 = bitcast i32* %color_mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = bitcast i32* %bits_per_color to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i64 @gx_default_map_cmyk_color(%struct.gx_device_s* %dev, i16* %cv) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  %rgb = alloca [3 x i16], align 2
  %rgb_cv = alloca [3 x i16], align 2
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = bitcast [3 x i16]* %rgb to i8*
  call void @llvm.lifetime.start(i64 6, i8* %0) #1
  %1 = bitcast [3 x i16]* %rgb_cv to i8*
  call void @llvm.lifetime.start(i64 6, i8* %1) #1
  %2 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %2, i64 0
  %3 = load i16, i16* %arrayidx, align 2, !tbaa !34
  %conv = zext i16 %3 to i32
  %shr = ashr i32 %conv, 1
  %4 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %4, i64 0
  %5 = load i16, i16* %arrayidx1, align 2, !tbaa !34
  %conv2 = zext i16 %5 to i32
  %shr3 = ashr i32 %conv2, 13
  %sub = sub nsw i32 %shr, %shr3
  %conv4 = trunc i32 %sub to i16
  %6 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i16, i16* %6, i64 1
  %7 = load i16, i16* %arrayidx5, align 2, !tbaa !34
  %conv6 = zext i16 %7 to i32
  %shr7 = ashr i32 %conv6, 1
  %8 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i16, i16* %8, i64 1
  %9 = load i16, i16* %arrayidx8, align 2, !tbaa !34
  %conv9 = zext i16 %9 to i32
  %shr10 = ashr i32 %conv9, 13
  %sub11 = sub nsw i32 %shr7, %shr10
  %conv12 = trunc i32 %sub11 to i16
  %10 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i16, i16* %10, i64 2
  %11 = load i16, i16* %arrayidx13, align 2, !tbaa !34
  %conv14 = zext i16 %11 to i32
  %shr15 = ashr i32 %conv14, 1
  %12 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i16, i16* %12, i64 2
  %13 = load i16, i16* %arrayidx16, align 2, !tbaa !34
  %conv17 = zext i16 %13 to i32
  %shr18 = ashr i32 %conv17, 13
  %sub19 = sub nsw i32 %shr15, %shr18
  %conv20 = trunc i32 %sub19 to i16
  %14 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i16, i16* %14, i64 3
  %15 = load i16, i16* %arrayidx21, align 2, !tbaa !34
  %conv22 = zext i16 %15 to i32
  %shr23 = ashr i32 %conv22, 1
  %16 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i16, i16* %16, i64 3
  %17 = load i16, i16* %arrayidx24, align 2, !tbaa !34
  %conv25 = zext i16 %17 to i32
  %shr26 = ashr i32 %conv25, 13
  %sub27 = sub nsw i32 %shr23, %shr26
  %conv28 = trunc i32 %sub27 to i16
  %arraydecay = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i32 0
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 3
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !38
  call void @color_cmyk_to_rgb(i16 signext %conv4, i16 signext %conv12, i16 signext %conv20, i16 signext %conv28, %struct.gs_imager_state_s* null, i16* %arraydecay, %struct.gs_memory_s* %19) #5
  %arrayidx29 = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i64 0
  %20 = load i16, i16* %arrayidx29, align 2, !tbaa !34
  %conv30 = sext i16 %20 to i32
  %shl = shl i32 %conv30, 1
  %arrayidx31 = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i64 0
  %21 = load i16, i16* %arrayidx31, align 2, !tbaa !34
  %conv32 = sext i16 %21 to i32
  %shr33 = ashr i32 %conv32, 11
  %add = add nsw i32 %shl, %shr33
  %conv34 = trunc i32 %add to i16
  %arrayidx35 = getelementptr inbounds [3 x i16], [3 x i16]* %rgb_cv, i32 0, i64 0
  store i16 %conv34, i16* %arrayidx35, align 2, !tbaa !34
  %arrayidx36 = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i64 1
  %22 = load i16, i16* %arrayidx36, align 2, !tbaa !34
  %conv37 = sext i16 %22 to i32
  %shl38 = shl i32 %conv37, 1
  %arrayidx39 = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i64 1
  %23 = load i16, i16* %arrayidx39, align 2, !tbaa !34
  %conv40 = sext i16 %23 to i32
  %shr41 = ashr i32 %conv40, 11
  %add42 = add nsw i32 %shl38, %shr41
  %conv43 = trunc i32 %add42 to i16
  %arrayidx44 = getelementptr inbounds [3 x i16], [3 x i16]* %rgb_cv, i32 0, i64 1
  store i16 %conv43, i16* %arrayidx44, align 2, !tbaa !34
  %arrayidx45 = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i64 2
  %24 = load i16, i16* %arrayidx45, align 2, !tbaa !34
  %conv46 = sext i16 %24 to i32
  %shl47 = shl i32 %conv46, 1
  %arrayidx48 = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i64 2
  %25 = load i16, i16* %arrayidx48, align 2, !tbaa !34
  %conv49 = sext i16 %25 to i32
  %shr50 = ashr i32 %conv49, 11
  %add51 = add nsw i32 %shl47, %shr50
  %conv52 = trunc i32 %add51 to i16
  %arrayidx53 = getelementptr inbounds [3 x i16], [3 x i16]* %rgb_cv, i32 0, i64 2
  store i16 %conv52, i16* %arrayidx53, align 2, !tbaa !34
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %26, i32 0, i32 42
  %map_rgb_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 5
  %map_rgb_color54 = bitcast {}** %map_rgb_color to i64 (%struct.gx_device_s*, i16*)**
  %27 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %map_rgb_color54, align 8, !tbaa !37
  %28 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay55 = getelementptr inbounds [3 x i16], [3 x i16]* %rgb_cv, i32 0, i32 0
  %call = call i64 %27(%struct.gx_device_s* %28, i16* %arraydecay55) #5
  %29 = bitcast [3 x i16]* %rgb_cv to i8*
  call void @llvm.lifetime.end(i64 6, i8* %29) #1
  %30 = bitcast [3 x i16]* %rgb to i8*
  call void @llvm.lifetime.end(i64 6, i8* %30) #1
  ret i64 %call
}

declare void @color_cmyk_to_rgb(i16 signext, i16 signext, i16 signext, i16 signext, %struct.gs_imager_state_s*, i16*, %struct.gs_memory_s*) #2

; Function Attrs: nounwind uwtable
define i64 @cmyk_1bit_map_cmyk_color(%struct.gx_device_s* %dev, i16* %cv) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 3
  %1 = load i16, i16* %arrayidx, align 2, !tbaa !34
  %conv = zext i16 %1 to i32
  %shr = ashr i32 %conv, 15
  %2 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 2
  %3 = load i16, i16* %arrayidx1, align 2, !tbaa !34
  %conv2 = zext i16 %3 to i32
  %shr3 = ashr i32 %conv2, 15
  %shl = shl i32 %shr3, 1
  %add = add nsw i32 %shr, %shl
  %4 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i16, i16* %4, i64 1
  %5 = load i16, i16* %arrayidx4, align 2, !tbaa !34
  %conv5 = zext i16 %5 to i32
  %shr6 = ashr i32 %conv5, 15
  %shl7 = shl i32 %shr6, 2
  %add8 = add nsw i32 %add, %shl7
  %6 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i16, i16* %6, i64 0
  %7 = load i16, i16* %arrayidx9, align 2, !tbaa !34
  %conv10 = zext i16 %7 to i32
  %shr11 = ashr i32 %conv10, 15
  %shl12 = shl i32 %shr11, 3
  %add13 = add nsw i32 %add8, %shl12
  %conv14 = sext i32 %add13 to i64
  ret i64 %conv14
}

; Function Attrs: nounwind uwtable
define i32 @cmyk_1bit_map_color_rgb(%struct.gx_device_s* %dev, i64 %color, i16* %prgb) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %prgb.addr = alloca i16*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !32
  store i16* %prgb, i16** %prgb.addr, align 8, !tbaa !1
  %0 = load i64, i64* %color.addr, align 8, !tbaa !32
  %and = and i64 %0, 1
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 2
  store i16 0, i16* %arrayidx, align 2, !tbaa !34
  %2 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 1
  store i16 0, i16* %arrayidx1, align 2, !tbaa !34
  %3 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %3, i64 0
  store i16 0, i16* %arrayidx2, align 2, !tbaa !34
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load i64, i64* %color.addr, align 8, !tbaa !32
  %and3 = and i64 %4, 8
  %tobool4 = icmp ne i64 %and3, 0
  %cond = select i1 %tobool4, i32 0, i32 65535
  %conv = trunc i32 %cond to i16
  %5 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i16, i16* %5, i64 0
  store i16 %conv, i16* %arrayidx5, align 2, !tbaa !34
  %6 = load i64, i64* %color.addr, align 8, !tbaa !32
  %and6 = and i64 %6, 4
  %tobool7 = icmp ne i64 %and6, 0
  %cond8 = select i1 %tobool7, i32 0, i32 65535
  %conv9 = trunc i32 %cond8 to i16
  %7 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i16, i16* %7, i64 1
  store i16 %conv9, i16* %arrayidx10, align 2, !tbaa !34
  %8 = load i64, i64* %color.addr, align 8, !tbaa !32
  %and11 = and i64 %8, 2
  %tobool12 = icmp ne i64 %and11, 0
  %cond13 = select i1 %tobool12, i32 0, i32 65535
  %conv14 = trunc i32 %cond13 to i16
  %9 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i16, i16* %9, i64 2
  store i16 %conv14, i16* %arrayidx15, align 2, !tbaa !34
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @cmyk_1bit_map_color_cmyk(%struct.gx_device_s* %dev, i64 %color, i16* %pcv) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %pcv.addr = alloca i16*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !32
  store i16* %pcv, i16** %pcv.addr, align 8, !tbaa !1
  %0 = load i64, i64* %color.addr, align 8, !tbaa !32
  %and = and i64 %0, 8
  %tobool = icmp ne i64 %and, 0
  %cond = select i1 %tobool, i32 0, i32 65535
  %conv = trunc i32 %cond to i16
  %1 = load i16*, i16** %pcv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 0
  store i16 %conv, i16* %arrayidx, align 2, !tbaa !34
  %2 = load i64, i64* %color.addr, align 8, !tbaa !32
  %and1 = and i64 %2, 4
  %tobool2 = icmp ne i64 %and1, 0
  %cond3 = select i1 %tobool2, i32 0, i32 65535
  %conv4 = trunc i32 %cond3 to i16
  %3 = load i16*, i16** %pcv.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i16, i16* %3, i64 1
  store i16 %conv4, i16* %arrayidx5, align 2, !tbaa !34
  %4 = load i64, i64* %color.addr, align 8, !tbaa !32
  %and6 = and i64 %4, 2
  %tobool7 = icmp ne i64 %and6, 0
  %cond8 = select i1 %tobool7, i32 0, i32 65535
  %conv9 = trunc i32 %cond8 to i16
  %5 = load i16*, i16** %pcv.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i16, i16* %5, i64 2
  store i16 %conv9, i16* %arrayidx10, align 2, !tbaa !34
  %6 = load i64, i64* %color.addr, align 8, !tbaa !32
  %and11 = and i64 %6, 1
  %tobool12 = icmp ne i64 %and11, 0
  %cond13 = select i1 %tobool12, i32 0, i32 65535
  %conv14 = trunc i32 %cond13 to i16
  %7 = load i16*, i16** %pcv.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i16, i16* %7, i64 3
  store i16 %conv14, i16* %arrayidx15, align 2, !tbaa !34
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i64 @cmyk_8bit_map_cmyk_color(%struct.gx_device_s* %dev, i16* %cv) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  %color = alloca i64, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = bitcast i64* %color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 3
  %2 = load i16, i16* %arrayidx, align 2, !tbaa !34
  %conv = zext i16 %2 to i32
  %mul = mul i32 %conv, 65281
  %add = add i32 %mul, 8388608
  %shr = lshr i32 %add, 24
  %conv1 = trunc i32 %shr to i16
  %conv2 = zext i16 %conv1 to i32
  %3 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %3, i64 2
  %4 = load i16, i16* %arrayidx3, align 2, !tbaa !34
  %conv4 = zext i16 %4 to i32
  %mul5 = mul i32 %conv4, 65281
  %add6 = add i32 %mul5, 8388608
  %shr7 = lshr i32 %add6, 24
  %conv8 = trunc i32 %shr7 to i16
  %conv9 = zext i16 %conv8 to i32
  %shl = shl i32 %conv9, 8
  %add10 = add i32 %conv2, %shl
  %5 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i16, i16* %5, i64 1
  %6 = load i16, i16* %arrayidx11, align 2, !tbaa !34
  %conv12 = zext i16 %6 to i32
  %mul13 = mul i32 %conv12, 65281
  %add14 = add i32 %mul13, 8388608
  %shr15 = lshr i32 %add14, 24
  %conv16 = trunc i32 %shr15 to i16
  %conv17 = zext i16 %conv16 to i32
  %shl18 = shl i32 %conv17, 16
  %add19 = add i32 %add10, %shl18
  %7 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i16, i16* %7, i64 0
  %8 = load i16, i16* %arrayidx20, align 2, !tbaa !34
  %conv21 = zext i16 %8 to i32
  %mul22 = mul i32 %conv21, 65281
  %add23 = add i32 %mul22, 8388608
  %shr24 = lshr i32 %add23, 24
  %conv25 = trunc i32 %shr24 to i16
  %conv26 = zext i16 %conv25 to i32
  %shl27 = shl i32 %conv26, 24
  %add28 = add i32 %add19, %shl27
  %conv29 = zext i32 %add28 to i64
  store i64 %conv29, i64* %color, align 8, !tbaa !32
  %9 = load i64, i64* %color, align 8, !tbaa !32
  %cmp = icmp eq i64 %9, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %10 = load i64, i64* %color, align 8, !tbaa !32
  %xor = xor i64 %10, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %11 = load i64, i64* %color, align 8, !tbaa !32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %xor, %cond.true ], [ %11, %cond.false ]
  %12 = bitcast i64* %color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  ret i64 %cond
}

; Function Attrs: nounwind uwtable
define i64 @cmyk_16bit_map_cmyk_color(%struct.gx_device_s* %dev, i16* %cv) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  %color = alloca i64, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = bitcast i64* %color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 3
  %2 = load i16, i16* %arrayidx, align 2, !tbaa !34
  %conv = zext i16 %2 to i64
  %3 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %3, i64 2
  %4 = load i16, i16* %arrayidx1, align 2, !tbaa !34
  %conv2 = zext i16 %4 to i64
  %shl = shl i64 %conv2, 16
  %add = add i64 %conv, %shl
  %5 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %5, i64 1
  %6 = load i16, i16* %arrayidx3, align 2, !tbaa !34
  %conv4 = zext i16 %6 to i64
  %shl5 = shl i64 %conv4, 32
  %add6 = add i64 %add, %shl5
  %7 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i16, i16* %7, i64 0
  %8 = load i16, i16* %arrayidx7, align 2, !tbaa !34
  %conv8 = zext i16 %8 to i64
  %shl9 = shl i64 %conv8, 48
  %add10 = add i64 %add6, %shl9
  store i64 %add10, i64* %color, align 8, !tbaa !32
  %9 = load i64, i64* %color, align 8, !tbaa !32
  %cmp = icmp eq i64 %9, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %10 = load i64, i64* %color, align 8, !tbaa !32
  %xor = xor i64 %10, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %11 = load i64, i64* %color, align 8, !tbaa !32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %xor, %cond.true ], [ %11, %cond.false ]
  %12 = bitcast i64* %color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  ret i64 %cond
}

; Function Attrs: nounwind uwtable
define i32 @cmyk_8bit_map_color_rgb(%struct.gx_device_s* %dev, i64 %color, i16* %prgb) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %prgb.addr = alloca i16*, align 8
  %not_k = alloca i32, align 4
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !32
  store i16* %prgb, i16** %prgb.addr, align 8, !tbaa !1
  %0 = bitcast i32* %not_k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i64, i64* %color.addr, align 8, !tbaa !32
  %neg = xor i64 %1, -1
  %and = and i64 %neg, 255
  %conv = trunc i64 %and to i32
  store i32 %conv, i32* %not_k, align 4, !tbaa !5
  %2 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32, i32* %not_k, align 4, !tbaa !5
  %4 = load i64, i64* %color.addr, align 8, !tbaa !32
  %shr = lshr i64 %4, 24
  %conv1 = trunc i64 %shr to i32
  %sub = sub nsw i32 %3, %conv1
  store i32 %sub, i32* %r, align 4, !tbaa !5
  %5 = bitcast i32* %g to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %not_k, align 4, !tbaa !5
  %7 = load i64, i64* %color.addr, align 8, !tbaa !32
  %shr2 = lshr i64 %7, 16
  %and3 = and i64 %shr2, 255
  %conv4 = trunc i64 %and3 to i32
  %sub5 = sub nsw i32 %6, %conv4
  store i32 %sub5, i32* %g, align 4, !tbaa !5
  %8 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i32, i32* %not_k, align 4, !tbaa !5
  %10 = load i64, i64* %color.addr, align 8, !tbaa !32
  %shr6 = lshr i64 %10, 8
  %and7 = and i64 %shr6, 255
  %conv8 = trunc i64 %and7 to i32
  %sub9 = sub nsw i32 %9, %conv8
  store i32 %sub9, i32* %b, align 4, !tbaa !5
  %11 = load i32, i32* %r, align 4, !tbaa !5
  %cmp = icmp slt i32 %11, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %12 = load i32, i32* %r, align 4, !tbaa !5
  %shl = shl i32 %12, 8
  %13 = load i32, i32* %r, align 4, !tbaa !5
  %shr11 = ashr i32 %13, 0
  %add = add nsw i32 %shl, %shr11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %add, %cond.false ]
  %conv12 = trunc i32 %cond to i16
  %14 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %14, i64 0
  store i16 %conv12, i16* %arrayidx, align 2, !tbaa !34
  %15 = load i32, i32* %g, align 4, !tbaa !5
  %cmp13 = icmp slt i32 %15, 0
  br i1 %cmp13, label %cond.true.15, label %cond.false.16

cond.true.15:                                     ; preds = %cond.end
  br label %cond.end.20

cond.false.16:                                    ; preds = %cond.end
  %16 = load i32, i32* %g, align 4, !tbaa !5
  %shl17 = shl i32 %16, 8
  %17 = load i32, i32* %g, align 4, !tbaa !5
  %shr18 = ashr i32 %17, 0
  %add19 = add nsw i32 %shl17, %shr18
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.16, %cond.true.15
  %cond21 = phi i32 [ 0, %cond.true.15 ], [ %add19, %cond.false.16 ]
  %conv22 = trunc i32 %cond21 to i16
  %18 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i16, i16* %18, i64 1
  store i16 %conv22, i16* %arrayidx23, align 2, !tbaa !34
  %19 = load i32, i32* %b, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %19, 0
  br i1 %cmp24, label %cond.true.26, label %cond.false.27

cond.true.26:                                     ; preds = %cond.end.20
  br label %cond.end.31

cond.false.27:                                    ; preds = %cond.end.20
  %20 = load i32, i32* %b, align 4, !tbaa !5
  %shl28 = shl i32 %20, 8
  %21 = load i32, i32* %b, align 4, !tbaa !5
  %shr29 = ashr i32 %21, 0
  %add30 = add nsw i32 %shl28, %shr29
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.27, %cond.true.26
  %cond32 = phi i32 [ 0, %cond.true.26 ], [ %add30, %cond.false.27 ]
  %conv33 = trunc i32 %cond32 to i16
  %22 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds i16, i16* %22, i64 2
  store i16 %conv33, i16* %arrayidx34, align 2, !tbaa !34
  %23 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast i32* %g to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast i32* %not_k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @cmyk_8bit_map_color_cmyk(%struct.gx_device_s* %dev, i64 %color, i16* %pcv) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %pcv.addr = alloca i16*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !32
  store i16* %pcv, i16** %pcv.addr, align 8, !tbaa !1
  %0 = load i64, i64* %color.addr, align 8, !tbaa !32
  %shr = lshr i64 %0, 24
  %and = and i64 %shr, 255
  %shl = shl i64 %and, 8
  %1 = load i64, i64* %color.addr, align 8, !tbaa !32
  %shr1 = lshr i64 %1, 24
  %and2 = and i64 %shr1, 255
  %shr3 = lshr i64 %and2, 0
  %add = add i64 %shl, %shr3
  %conv = trunc i64 %add to i16
  %2 = load i16*, i16** %pcv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %2, i64 0
  store i16 %conv, i16* %arrayidx, align 2, !tbaa !34
  %3 = load i64, i64* %color.addr, align 8, !tbaa !32
  %shr4 = lshr i64 %3, 16
  %and5 = and i64 %shr4, 255
  %shl6 = shl i64 %and5, 8
  %4 = load i64, i64* %color.addr, align 8, !tbaa !32
  %shr7 = lshr i64 %4, 16
  %and8 = and i64 %shr7, 255
  %shr9 = lshr i64 %and8, 0
  %add10 = add i64 %shl6, %shr9
  %conv11 = trunc i64 %add10 to i16
  %5 = load i16*, i16** %pcv.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i16, i16* %5, i64 1
  store i16 %conv11, i16* %arrayidx12, align 2, !tbaa !34
  %6 = load i64, i64* %color.addr, align 8, !tbaa !32
  %shr13 = lshr i64 %6, 8
  %and14 = and i64 %shr13, 255
  %shl15 = shl i64 %and14, 8
  %7 = load i64, i64* %color.addr, align 8, !tbaa !32
  %shr16 = lshr i64 %7, 8
  %and17 = and i64 %shr16, 255
  %shr18 = lshr i64 %and17, 0
  %add19 = add i64 %shl15, %shr18
  %conv20 = trunc i64 %add19 to i16
  %8 = load i16*, i16** %pcv.addr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i16, i16* %8, i64 2
  store i16 %conv20, i16* %arrayidx21, align 2, !tbaa !34
  %9 = load i64, i64* %color.addr, align 8, !tbaa !32
  %and22 = and i64 %9, 255
  %shl23 = shl i64 %and22, 8
  %10 = load i64, i64* %color.addr, align 8, !tbaa !32
  %and24 = and i64 %10, 255
  %shr25 = lshr i64 %and24, 0
  %add26 = add i64 %shl23, %shr25
  %conv27 = trunc i64 %add26 to i16
  %11 = load i16*, i16** %pcv.addr, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds i16, i16* %11, i64 3
  store i16 %conv27, i16* %arrayidx28, align 2, !tbaa !34
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @cmyk_16bit_map_color_cmyk(%struct.gx_device_s* %dev, i64 %color, i16* %pcv) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %pcv.addr = alloca i16*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !32
  store i16* %pcv, i16** %pcv.addr, align 8, !tbaa !1
  %0 = load i64, i64* %color.addr, align 8, !tbaa !32
  %shr = lshr i64 %0, 24
  %shr1 = lshr i64 %shr, 24
  %and = and i64 %shr1, 65535
  %conv = trunc i64 %and to i16
  %1 = load i16*, i16** %pcv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 0
  store i16 %conv, i16* %arrayidx, align 2, !tbaa !34
  %2 = load i64, i64* %color.addr, align 8, !tbaa !32
  %shr2 = lshr i64 %2, 16
  %shr3 = lshr i64 %shr2, 16
  %and4 = and i64 %shr3, 65535
  %conv5 = trunc i64 %and4 to i16
  %3 = load i16*, i16** %pcv.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i16, i16* %3, i64 1
  store i16 %conv5, i16* %arrayidx6, align 2, !tbaa !34
  %4 = load i64, i64* %color.addr, align 8, !tbaa !32
  %shr7 = lshr i64 %4, 16
  %and8 = and i64 %shr7, 65535
  %conv9 = trunc i64 %and8 to i16
  %5 = load i16*, i16** %pcv.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i16, i16* %5, i64 2
  store i16 %conv9, i16* %arrayidx10, align 2, !tbaa !34
  %6 = load i64, i64* %color.addr, align 8, !tbaa !32
  %and11 = and i64 %6, 65535
  %conv12 = trunc i64 %and11 to i16
  %7 = load i16*, i16** %pcv.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i16, i16* %7, i64 3
  store i16 %conv12, i16* %arrayidx13, align 2, !tbaa !34
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i64 @gx_default_map_rgb_alpha_color(%struct.gx_device_s* %dev, i16 zeroext %r, i16 zeroext %g, i16 zeroext %b, i16 zeroext %alpha) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %r.addr = alloca i16, align 2
  %g.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  %alpha.addr = alloca i16, align 2
  %cv = alloca [3 x i16], align 2
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16 %r, i16* %r.addr, align 2, !tbaa !34
  store i16 %g, i16* %g.addr, align 2, !tbaa !34
  store i16 %b, i16* %b.addr, align 2, !tbaa !34
  store i16 %alpha, i16* %alpha.addr, align 2, !tbaa !34
  %0 = bitcast [3 x i16]* %cv to i8*
  call void @llvm.lifetime.start(i64 6, i8* %0) #1
  %1 = load i16, i16* %r.addr, align 2, !tbaa !34
  %arrayidx = getelementptr inbounds [3 x i16], [3 x i16]* %cv, i32 0, i64 0
  store i16 %1, i16* %arrayidx, align 2, !tbaa !34
  %2 = load i16, i16* %g.addr, align 2, !tbaa !34
  %arrayidx1 = getelementptr inbounds [3 x i16], [3 x i16]* %cv, i32 0, i64 1
  store i16 %2, i16* %arrayidx1, align 2, !tbaa !34
  %3 = load i16, i16* %b.addr, align 2, !tbaa !34
  %arrayidx2 = getelementptr inbounds [3 x i16], [3 x i16]* %cv, i32 0, i64 2
  store i16 %3, i16* %arrayidx2, align 2, !tbaa !34
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 42
  %map_rgb_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 5
  %map_rgb_color3 = bitcast {}** %map_rgb_color to i64 (%struct.gx_device_s*, i16*)**
  %5 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %map_rgb_color3, align 8, !tbaa !37
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [3 x i16], [3 x i16]* %cv, i32 0, i32 0
  %call = call i64 %5(%struct.gx_device_s* %6, i16* %arraydecay) #5
  %7 = bitcast [3 x i16]* %cv to i8*
  call void @llvm.lifetime.end(i64 6, i8* %7) #1
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_map_color_rgb_alpha(%struct.gx_device_s* %dev, i64 %color, i16* %prgba) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %prgba.addr = alloca i16*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !32
  store i16* %prgba, i16** %prgba.addr, align 8, !tbaa !1
  %0 = load i16*, i16** %prgba.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 3
  store i16 -1, i16* %arrayidx, align 2, !tbaa !34
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 42
  %map_color_rgb = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 6
  %2 = load i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)** %map_color_rgb, align 8, !tbaa !93
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %4 = load i64, i64* %color.addr, align 8, !tbaa !32
  %5 = load i16*, i16** %prgba.addr, align 8, !tbaa !1
  %call = call i32 %2(%struct.gx_device_s* %3, i64 %4, i16* %5) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @cmap_transfer_halftone(i16* %pconc, %struct.gx_device_color_s* %pdc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, i32 %has_transfer, i32 %has_halftone, i32 %select) #0 {
entry:
  %pconc.addr = alloca i16*, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %has_transfer.addr = alloca i32, align 4
  %has_halftone.addr = alloca i32, align 4
  %select.addr = alloca i32, align 4
  %ncomps = alloca i32, align 4
  %frac_value = alloca i16, align 2
  %i = alloca i32, align 4
  %cv_frac = alloca [64 x i16], align 16
  %color = alloca i64, align 8
  %color_val = alloca [64 x i16], align 16
  %k = alloca i32, align 4
  store i16* %pconc, i16** %pconc.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %has_transfer, i32* %has_transfer.addr, align 4, !tbaa !5
  store i32 %has_halftone, i32* %has_halftone.addr, align 4, !tbaa !5
  store i32 %select, i32* %select.addr, align 4, !tbaa !33
  %0 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %2 = load i32, i32* %num_components, align 4, !tbaa !20
  store i32 %2, i32* %ncomps, align 4, !tbaa !5
  %3 = bitcast i16* %frac_value to i8*
  call void @llvm.lifetime.start(i64 2, i8* %3) #1
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast [64 x i16]* %cv_frac to i8*
  call void @llvm.lifetime.start(i64 128, i8* %5) #1
  %6 = bitcast i64* %color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast [64 x i16]* %color_val to i8*
  call void @llvm.lifetime.start(i64 128, i8* %7) #1
  %8 = load i32, i32* %has_transfer.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.else.143

if.then:                                          ; preds = %entry
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 11
  %polarity = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info1, i32 0, i32 2
  %10 = load i32, i32* %polarity, align 4, !tbaa !94
  %cmp = icmp eq i32 %10, 1
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %11 = load i32, i32* %i, align 4, !tbaa !5
  %12 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %11, %12
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %13 to i64
  %14 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %14, i64 %idxprom
  %15 = load i16, i16* %arrayidx, align 2, !tbaa !34
  %conv = zext i16 %15 to i32
  %shr = ashr i32 %conv, 1
  %16 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom4 = sext i32 %16 to i64
  %17 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i16, i16* %17, i64 %idxprom4
  %18 = load i16, i16* %arrayidx5, align 2, !tbaa !34
  %conv6 = zext i16 %18 to i32
  %shr7 = ashr i32 %conv6, 13
  %sub = sub nsw i32 %shr, %shr7
  %conv8 = trunc i32 %sub to i16
  store i16 %conv8, i16* %frac_value, align 2, !tbaa !34
  %19 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom9 = sext i32 %19 to i64
  %20 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %20, i32 0, i32 47
  %arrayidx10 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer, i32 0, i64 %idxprom9
  %21 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx10, align 8, !tbaa !1
  %proc = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %21, i32 0, i32 1
  %22 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc, align 8, !tbaa !90
  %cmp11 = icmp eq float (double, %struct.gx_transfer_map_s*)* %22, @gs_identity_transfer
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %23 = load i16, i16* %frac_value, align 2, !tbaa !34
  %conv13 = sext i16 %23 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %24 = load i16, i16* %frac_value, align 2, !tbaa !34
  %25 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom14 = sext i32 %25 to i64
  %26 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer15 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %26, i32 0, i32 47
  %arrayidx16 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer15, i32 0, i64 %idxprom14
  %27 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx16, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %27, i32 0, i32 4
  %arrayidx17 = getelementptr inbounds [256 x i16], [256 x i16]* %values, i32 0, i64 0
  %call = call signext i16 @gx_color_frac_map(i16 signext %24, i16* %arrayidx17) #5
  %conv18 = sext i16 %call to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv13, %cond.true ], [ %conv18, %cond.false ]
  %conv19 = trunc i32 %cond to i16
  %28 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom20 = sext i32 %28 to i64
  %arrayidx21 = getelementptr inbounds [64 x i16], [64 x i16]* %cv_frac, i32 0, i64 %idxprom20
  store i16 %conv19, i16* %arrayidx21, align 2, !tbaa !34
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %29 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.142

if.else:                                          ; preds = %if.then
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info22 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %30, i32 0, i32 11
  %opmode = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info22, i32 0, i32 15
  %31 = load i32, i32* %opmode, align 4, !tbaa !95
  %cmp23 = icmp eq i32 %31, -1
  br i1 %cmp23, label %if.then.25, label %if.end

if.then.25:                                       ; preds = %if.else
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call26 = call i64 @check_cmyk_color_model_comps(%struct.gx_device_s* %32) #5
  br label %if.end

if.end:                                           ; preds = %if.then.25, %if.else
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info27 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %33, i32 0, i32 11
  %opmode28 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info27, i32 0, i32 15
  %34 = load i32, i32* %opmode28, align 4, !tbaa !95
  %cmp29 = icmp eq i32 %34, 1
  br i1 %cmp29, label %if.then.31, label %if.else.95

if.then.31:                                       ; preds = %if.end
  %35 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  %36 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info32 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %36, i32 0, i32 11
  %black_component = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info32, i32 0, i32 17
  %37 = load i32, i32* %black_component, align 4, !tbaa !96
  store i32 %37, i32* %k, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.92, %if.then.31
  %38 = load i32, i32* %i, align 4, !tbaa !5
  %39 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp34 = icmp slt i32 %38, %39
  br i1 %cmp34, label %for.body.36, label %for.end.94

for.body.36:                                      ; preds = %for.cond.33
  %40 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom37 = sext i32 %40 to i64
  %41 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds i16, i16* %41, i64 %idxprom37
  %42 = load i16, i16* %arrayidx38, align 2, !tbaa !34
  %conv39 = zext i16 %42 to i32
  %shr40 = ashr i32 %conv39, 1
  %43 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom41 = sext i32 %43 to i64
  %44 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds i16, i16* %44, i64 %idxprom41
  %45 = load i16, i16* %arrayidx42, align 2, !tbaa !34
  %conv43 = zext i16 %45 to i32
  %shr44 = ashr i32 %conv43, 13
  %sub45 = sub nsw i32 %shr40, %shr44
  %conv46 = trunc i32 %sub45 to i16
  store i16 %conv46, i16* %frac_value, align 2, !tbaa !34
  %46 = load i32, i32* %i, align 4, !tbaa !5
  %47 = load i32, i32* %k, align 4, !tbaa !5
  %cmp47 = icmp eq i32 %46, %47
  br i1 %cmp47, label %if.then.49, label %if.else.78

if.then.49:                                       ; preds = %for.body.36
  %48 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom50 = sext i32 %48 to i64
  %49 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer51 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %49, i32 0, i32 47
  %arrayidx52 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer51, i32 0, i64 %idxprom50
  %50 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx52, align 8, !tbaa !1
  %proc53 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %50, i32 0, i32 1
  %51 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc53, align 8, !tbaa !90
  %cmp54 = icmp eq float (double, %struct.gx_transfer_map_s*)* %51, @gs_identity_transfer
  br i1 %cmp54, label %cond.true.56, label %cond.false.61

cond.true.56:                                     ; preds = %if.then.49
  %52 = load i16, i16* %frac_value, align 2, !tbaa !34
  %conv57 = sext i16 %52 to i32
  %sub58 = sub nsw i32 32760, %conv57
  %conv59 = trunc i32 %sub58 to i16
  %conv60 = sext i16 %conv59 to i32
  br label %cond.end.72

cond.false.61:                                    ; preds = %if.then.49
  %53 = load i16, i16* %frac_value, align 2, !tbaa !34
  %conv62 = sext i16 %53 to i32
  %sub63 = sub nsw i32 32760, %conv62
  %conv64 = trunc i32 %sub63 to i16
  %54 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom65 = sext i32 %54 to i64
  %55 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer66 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %55, i32 0, i32 47
  %arrayidx67 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer66, i32 0, i64 %idxprom65
  %56 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx67, align 8, !tbaa !1
  %values68 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %56, i32 0, i32 4
  %arrayidx69 = getelementptr inbounds [256 x i16], [256 x i16]* %values68, i32 0, i64 0
  %call70 = call signext i16 @gx_color_frac_map(i16 signext %conv64, i16* %arrayidx69) #5
  %conv71 = sext i16 %call70 to i32
  br label %cond.end.72

cond.end.72:                                      ; preds = %cond.false.61, %cond.true.56
  %cond73 = phi i32 [ %conv60, %cond.true.56 ], [ %conv71, %cond.false.61 ]
  %sub74 = sub nsw i32 32760, %cond73
  %conv75 = trunc i32 %sub74 to i16
  %57 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom76 = sext i32 %57 to i64
  %arrayidx77 = getelementptr inbounds [64 x i16], [64 x i16]* %cv_frac, i32 0, i64 %idxprom76
  store i16 %conv75, i16* %arrayidx77, align 2, !tbaa !34
  br label %if.end.91

if.else.78:                                       ; preds = %for.body.36
  %58 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom79 = sext i32 %58 to i64
  %59 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx80 = getelementptr inbounds i16, i16* %59, i64 %idxprom79
  %60 = load i16, i16* %arrayidx80, align 2, !tbaa !34
  %conv81 = zext i16 %60 to i32
  %shr82 = ashr i32 %conv81, 1
  %61 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom83 = sext i32 %61 to i64
  %62 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx84 = getelementptr inbounds i16, i16* %62, i64 %idxprom83
  %63 = load i16, i16* %arrayidx84, align 2, !tbaa !34
  %conv85 = zext i16 %63 to i32
  %shr86 = ashr i32 %conv85, 13
  %sub87 = sub nsw i32 %shr82, %shr86
  %conv88 = trunc i32 %sub87 to i16
  %64 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom89 = sext i32 %64 to i64
  %arrayidx90 = getelementptr inbounds [64 x i16], [64 x i16]* %cv_frac, i32 0, i64 %idxprom89
  store i16 %conv88, i16* %arrayidx90, align 2, !tbaa !34
  br label %if.end.91

if.end.91:                                        ; preds = %if.else.78, %cond.end.72
  br label %for.inc.92

for.inc.92:                                       ; preds = %if.end.91
  %65 = load i32, i32* %i, align 4, !tbaa !5
  %inc93 = add nsw i32 %65, 1
  store i32 %inc93, i32* %i, align 4, !tbaa !5
  br label %for.cond.33

for.end.94:                                       ; preds = %for.cond.33
  %66 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  br label %if.end.141

if.else.95:                                       ; preds = %if.end
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.96

for.cond.96:                                      ; preds = %for.inc.138, %if.else.95
  %67 = load i32, i32* %i, align 4, !tbaa !5
  %68 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp97 = icmp slt i32 %67, %68
  br i1 %cmp97, label %for.body.99, label %for.end.140

for.body.99:                                      ; preds = %for.cond.96
  %69 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom100 = sext i32 %69 to i64
  %70 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx101 = getelementptr inbounds i16, i16* %70, i64 %idxprom100
  %71 = load i16, i16* %arrayidx101, align 2, !tbaa !34
  %conv102 = zext i16 %71 to i32
  %shr103 = ashr i32 %conv102, 1
  %72 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom104 = sext i32 %72 to i64
  %73 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx105 = getelementptr inbounds i16, i16* %73, i64 %idxprom104
  %74 = load i16, i16* %arrayidx105, align 2, !tbaa !34
  %conv106 = zext i16 %74 to i32
  %shr107 = ashr i32 %conv106, 13
  %sub108 = sub nsw i32 %shr103, %shr107
  %conv109 = trunc i32 %sub108 to i16
  store i16 %conv109, i16* %frac_value, align 2, !tbaa !34
  %75 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom110 = sext i32 %75 to i64
  %76 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer111 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %76, i32 0, i32 47
  %arrayidx112 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer111, i32 0, i64 %idxprom110
  %77 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx112, align 8, !tbaa !1
  %proc113 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %77, i32 0, i32 1
  %78 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc113, align 8, !tbaa !90
  %cmp114 = icmp eq float (double, %struct.gx_transfer_map_s*)* %78, @gs_identity_transfer
  br i1 %cmp114, label %cond.true.116, label %cond.false.121

cond.true.116:                                    ; preds = %for.body.99
  %79 = load i16, i16* %frac_value, align 2, !tbaa !34
  %conv117 = sext i16 %79 to i32
  %sub118 = sub nsw i32 32760, %conv117
  %conv119 = trunc i32 %sub118 to i16
  %conv120 = sext i16 %conv119 to i32
  br label %cond.end.132

cond.false.121:                                   ; preds = %for.body.99
  %80 = load i16, i16* %frac_value, align 2, !tbaa !34
  %conv122 = sext i16 %80 to i32
  %sub123 = sub nsw i32 32760, %conv122
  %conv124 = trunc i32 %sub123 to i16
  %81 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom125 = sext i32 %81 to i64
  %82 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer126 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %82, i32 0, i32 47
  %arrayidx127 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer126, i32 0, i64 %idxprom125
  %83 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx127, align 8, !tbaa !1
  %values128 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %83, i32 0, i32 4
  %arrayidx129 = getelementptr inbounds [256 x i16], [256 x i16]* %values128, i32 0, i64 0
  %call130 = call signext i16 @gx_color_frac_map(i16 signext %conv124, i16* %arrayidx129) #5
  %conv131 = sext i16 %call130 to i32
  br label %cond.end.132

cond.end.132:                                     ; preds = %cond.false.121, %cond.true.116
  %cond133 = phi i32 [ %conv120, %cond.true.116 ], [ %conv131, %cond.false.121 ]
  %sub134 = sub nsw i32 32760, %cond133
  %conv135 = trunc i32 %sub134 to i16
  %84 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom136 = sext i32 %84 to i64
  %arrayidx137 = getelementptr inbounds [64 x i16], [64 x i16]* %cv_frac, i32 0, i64 %idxprom136
  store i16 %conv135, i16* %arrayidx137, align 2, !tbaa !34
  br label %for.inc.138

for.inc.138:                                      ; preds = %cond.end.132
  %85 = load i32, i32* %i, align 4, !tbaa !5
  %inc139 = add nsw i32 %85, 1
  store i32 %inc139, i32* %i, align 4, !tbaa !5
  br label %for.cond.96

for.end.140:                                      ; preds = %for.cond.96
  br label %if.end.141

if.end.141:                                       ; preds = %for.end.140, %for.end.94
  br label %if.end.142

if.end.142:                                       ; preds = %if.end.141, %for.end
  br label %if.end.166

if.else.143:                                      ; preds = %entry
  %86 = load i32, i32* %has_halftone.addr, align 4, !tbaa !5
  %tobool144 = icmp ne i32 %86, 0
  br i1 %tobool144, label %if.then.145, label %if.end.165

if.then.145:                                      ; preds = %if.else.143
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.146

for.cond.146:                                     ; preds = %for.inc.162, %if.then.145
  %87 = load i32, i32* %i, align 4, !tbaa !5
  %88 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp147 = icmp slt i32 %87, %88
  br i1 %cmp147, label %for.body.149, label %for.end.164

for.body.149:                                     ; preds = %for.cond.146
  %89 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom150 = sext i32 %89 to i64
  %90 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx151 = getelementptr inbounds i16, i16* %90, i64 %idxprom150
  %91 = load i16, i16* %arrayidx151, align 2, !tbaa !34
  %conv152 = zext i16 %91 to i32
  %shr153 = ashr i32 %conv152, 1
  %92 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom154 = sext i32 %92 to i64
  %93 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx155 = getelementptr inbounds i16, i16* %93, i64 %idxprom154
  %94 = load i16, i16* %arrayidx155, align 2, !tbaa !34
  %conv156 = zext i16 %94 to i32
  %shr157 = ashr i32 %conv156, 13
  %sub158 = sub nsw i32 %shr153, %shr157
  %conv159 = trunc i32 %sub158 to i16
  %95 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom160 = sext i32 %95 to i64
  %arrayidx161 = getelementptr inbounds [64 x i16], [64 x i16]* %cv_frac, i32 0, i64 %idxprom160
  store i16 %conv159, i16* %arrayidx161, align 2, !tbaa !34
  br label %for.inc.162

for.inc.162:                                      ; preds = %for.body.149
  %96 = load i32, i32* %i, align 4, !tbaa !5
  %inc163 = add nsw i32 %96, 1
  store i32 %inc163, i32* %i, align 4, !tbaa !5
  br label %for.cond.146

for.end.164:                                      ; preds = %for.cond.146
  br label %if.end.165

if.end.165:                                       ; preds = %for.end.164, %if.else.143
  br label %if.end.166

if.end.166:                                       ; preds = %if.end.165, %if.end.142
  %97 = load i32, i32* %has_halftone.addr, align 4, !tbaa !5
  %tobool167 = icmp ne i32 %97, 0
  br i1 %tobool167, label %if.then.168, label %if.else.178

if.then.168:                                      ; preds = %if.end.166
  %arrayidx169 = getelementptr inbounds [64 x i16], [64 x i16]* %cv_frac, i32 0, i64 0
  %98 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %99 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %100 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %dev_ht = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %100, i32 0, i32 41
  %101 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht, align 8, !tbaa !97
  %102 = load i32, i32* %select.addr, align 4, !tbaa !33
  %idxprom170 = sext i32 %102 to i64
  %103 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %screen_phase = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %103, i32 0, i32 40
  %arrayidx171 = getelementptr inbounds [2 x %struct.gs_int_point_s], [2 x %struct.gs_int_point_s]* %screen_phase, i32 0, i64 %idxprom170
  %call172 = call i32 @gx_render_device_DeviceN(i16* %arrayidx169, %struct.gx_device_color_s* %98, %struct.gx_device_s* %99, %struct.gx_device_halftone_s* %101, %struct.gs_int_point_s* %arrayidx171) #5
  %cmp173 = icmp eq i32 %call172, 1
  br i1 %cmp173, label %if.then.175, label %if.end.177

if.then.175:                                      ; preds = %if.then.168
  %104 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %104, i32 0, i32 0
  %105 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !7
  %load = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %105, i32 0, i32 4
  %106 = load i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %load, align 8, !tbaa !98
  %107 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %108 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %109 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %110 = load i32, i32* %select.addr, align 4, !tbaa !33
  %call176 = call i32 %106(%struct.gx_device_color_s* %107, %struct.gs_imager_state_s* %108, %struct.gx_device_s* %109, i32 %110) #5
  br label %if.end.177

if.end.177:                                       ; preds = %if.then.175, %if.then.168
  br label %if.end.204

if.else.178:                                      ; preds = %if.end.166
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.179

for.cond.179:                                     ; preds = %for.inc.193, %if.else.178
  %111 = load i32, i32* %i, align 4, !tbaa !5
  %112 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp180 = icmp slt i32 %111, %112
  br i1 %cmp180, label %for.body.182, label %for.end.195

for.body.182:                                     ; preds = %for.cond.179
  %113 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom183 = sext i32 %113 to i64
  %arrayidx184 = getelementptr inbounds [64 x i16], [64 x i16]* %cv_frac, i32 0, i64 %idxprom183
  %114 = load i16, i16* %arrayidx184, align 2, !tbaa !34
  %conv185 = sext i16 %114 to i32
  %shl = shl i32 %conv185, 1
  %115 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom186 = sext i32 %115 to i64
  %arrayidx187 = getelementptr inbounds [64 x i16], [64 x i16]* %cv_frac, i32 0, i64 %idxprom186
  %116 = load i16, i16* %arrayidx187, align 2, !tbaa !34
  %conv188 = sext i16 %116 to i32
  %shr189 = ashr i32 %conv188, 11
  %add = add nsw i32 %shl, %shr189
  %conv190 = trunc i32 %add to i16
  %117 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom191 = sext i32 %117 to i64
  %arrayidx192 = getelementptr inbounds [64 x i16], [64 x i16]* %color_val, i32 0, i64 %idxprom191
  store i16 %conv190, i16* %arrayidx192, align 2, !tbaa !34
  br label %for.inc.193

for.inc.193:                                      ; preds = %for.body.182
  %118 = load i32, i32* %i, align 4, !tbaa !5
  %inc194 = add nsw i32 %118, 1
  store i32 %inc194, i32* %i, align 4, !tbaa !5
  br label %for.cond.179

for.end.195:                                      ; preds = %for.cond.179
  %119 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %119, i32 0, i32 42
  %encode_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 51
  %encode_color196 = bitcast {}** %encode_color to i64 (%struct.gx_device_s*, i16*)**
  %120 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color196, align 8, !tbaa !99
  %121 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arrayidx197 = getelementptr inbounds [64 x i16], [64 x i16]* %color_val, i32 0, i64 0
  %call198 = call i64 %120(%struct.gx_device_s* %121, i16* %arrayidx197) #5
  store i64 %call198, i64* %color, align 8, !tbaa !32
  %122 = load i64, i64* %color, align 8, !tbaa !32
  %cmp199 = icmp ne i64 %122, -1
  br i1 %cmp199, label %if.then.201, label %if.end.203

if.then.201:                                      ; preds = %for.end.195
  %123 = load i64, i64* %color, align 8, !tbaa !32
  %124 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %124, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  store i64 %123, i64* %pure, align 8, !tbaa !32
  %125 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %type202 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %125, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_pure, %struct.gx_device_color_type_s** %type202, align 8, !tbaa !7
  br label %if.end.203

if.end.203:                                       ; preds = %if.then.201, %for.end.195
  br label %if.end.204

if.end.204:                                       ; preds = %if.end.203, %if.end.177
  %126 = bitcast [64 x i16]* %color_val to i8*
  call void @llvm.lifetime.end(i64 128, i8* %126) #1
  %127 = bitcast i64* %color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #1
  %128 = bitcast [64 x i16]* %cv_frac to i8*
  call void @llvm.lifetime.end(i64 128, i8* %128) #1
  %129 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %129) #1
  %130 = bitcast i16* %frac_value to i8*
  call void @llvm.lifetime.end(i64 2, i8* %130) #1
  %131 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %131) #1
  ret void
}

declare i64 @check_cmyk_color_model_comps(%struct.gx_device_s*) #2

declare i32 @gx_render_device_DeviceN(i16*, %struct.gx_device_color_s*, %struct.gx_device_s*, %struct.gx_device_halftone_s*, %struct.gs_int_point_s*) #2

; Function Attrs: nounwind uwtable
define void @cmap_transfer(i16* %pconc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev) #0 {
entry:
  %pconc.addr = alloca i16*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %ncomps = alloca i32, align 4
  %frac_value = alloca i16, align 2
  %i = alloca i32, align 4
  %cv_frac = alloca [64 x i16], align 16
  %k = alloca i32, align 4
  store i16* %pconc, i16** %pconc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %2 = load i32, i32* %num_components, align 4, !tbaa !20
  store i32 %2, i32* %ncomps, align 4, !tbaa !5
  %3 = bitcast i16* %frac_value to i8*
  call void @llvm.lifetime.start(i64 2, i8* %3) #1
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast [64 x i16]* %cv_frac to i8*
  call void @llvm.lifetime.start(i64 128, i8* %5) #1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 11
  %polarity = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info1, i32 0, i32 2
  %7 = load i32, i32* %polarity, align 4, !tbaa !94
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %9 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %8, %9
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %10 to i64
  %11 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %11, i64 %idxprom
  %12 = load i16, i16* %arrayidx, align 2, !tbaa !34
  %conv = zext i16 %12 to i32
  %shr = ashr i32 %conv, 1
  %13 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom3 = sext i32 %13 to i64
  %14 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i16, i16* %14, i64 %idxprom3
  %15 = load i16, i16* %arrayidx4, align 2, !tbaa !34
  %conv5 = zext i16 %15 to i32
  %shr6 = ashr i32 %conv5, 13
  %sub = sub nsw i32 %shr, %shr6
  %conv7 = trunc i32 %sub to i16
  store i16 %conv7, i16* %frac_value, align 2, !tbaa !34
  %16 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom8 = sext i32 %16 to i64
  %17 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %17, i32 0, i32 47
  %arrayidx9 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer, i32 0, i64 %idxprom8
  %18 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx9, align 8, !tbaa !1
  %proc = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %18, i32 0, i32 1
  %19 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc, align 8, !tbaa !90
  %cmp10 = icmp eq float (double, %struct.gx_transfer_map_s*)* %19, @gs_identity_transfer
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %20 = load i16, i16* %frac_value, align 2, !tbaa !34
  %conv12 = sext i16 %20 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %21 = load i16, i16* %frac_value, align 2, !tbaa !34
  %22 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom13 = sext i32 %22 to i64
  %23 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer14 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %23, i32 0, i32 47
  %arrayidx15 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer14, i32 0, i64 %idxprom13
  %24 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx15, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %24, i32 0, i32 4
  %arrayidx16 = getelementptr inbounds [256 x i16], [256 x i16]* %values, i32 0, i64 0
  %call = call signext i16 @gx_color_frac_map(i16 signext %21, i16* %arrayidx16) #5
  %conv17 = sext i16 %call to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv12, %cond.true ], [ %conv17, %cond.false ]
  %conv18 = trunc i32 %cond to i16
  %25 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom19 = sext i32 %25 to i64
  %arrayidx20 = getelementptr inbounds [64 x i16], [64 x i16]* %cv_frac, i32 0, i64 %idxprom19
  store i16 %conv18, i16* %arrayidx20, align 2, !tbaa !34
  %26 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom21 = sext i32 %26 to i64
  %arrayidx22 = getelementptr inbounds [64 x i16], [64 x i16]* %cv_frac, i32 0, i64 %idxprom21
  %27 = load i16, i16* %arrayidx22, align 2, !tbaa !34
  %conv23 = sext i16 %27 to i32
  %shl = shl i32 %conv23, 1
  %28 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom24 = sext i32 %28 to i64
  %arrayidx25 = getelementptr inbounds [64 x i16], [64 x i16]* %cv_frac, i32 0, i64 %idxprom24
  %29 = load i16, i16* %arrayidx25, align 2, !tbaa !34
  %conv26 = sext i16 %29 to i32
  %shr27 = ashr i32 %conv26, 11
  %add = add nsw i32 %shl, %shr27
  %conv28 = trunc i32 %add to i16
  %30 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom29 = sext i32 %30 to i64
  %31 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds i16, i16* %31, i64 %idxprom29
  store i16 %conv28, i16* %arrayidx30, align 2, !tbaa !34
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %32 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.175

if.else:                                          ; preds = %entry
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info31 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %33, i32 0, i32 11
  %opmode = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info31, i32 0, i32 15
  %34 = load i32, i32* %opmode, align 4, !tbaa !95
  %cmp32 = icmp eq i32 %34, -1
  br i1 %cmp32, label %if.then.34, label %if.end

if.then.34:                                       ; preds = %if.else
  %35 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call35 = call i64 @check_cmyk_color_model_comps(%struct.gx_device_s* %35) #5
  br label %if.end

if.end:                                           ; preds = %if.then.34, %if.else
  %36 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info36 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %36, i32 0, i32 11
  %opmode37 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info36, i32 0, i32 15
  %37 = load i32, i32* %opmode37, align 4, !tbaa !95
  %cmp38 = icmp eq i32 %37, 1
  br i1 %cmp38, label %if.then.40, label %if.else.116

if.then.40:                                       ; preds = %if.end
  %38 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #1
  %39 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info41 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %39, i32 0, i32 11
  %black_component = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info41, i32 0, i32 17
  %40 = load i32, i32* %black_component, align 4, !tbaa !96
  store i32 %40, i32* %k, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.113, %if.then.40
  %41 = load i32, i32* %i, align 4, !tbaa !5
  %42 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp43 = icmp slt i32 %41, %42
  br i1 %cmp43, label %for.body.45, label %for.end.115

for.body.45:                                      ; preds = %for.cond.42
  %43 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom46 = sext i32 %43 to i64
  %44 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx47 = getelementptr inbounds i16, i16* %44, i64 %idxprom46
  %45 = load i16, i16* %arrayidx47, align 2, !tbaa !34
  %conv48 = zext i16 %45 to i32
  %shr49 = ashr i32 %conv48, 1
  %46 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom50 = sext i32 %46 to i64
  %47 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx51 = getelementptr inbounds i16, i16* %47, i64 %idxprom50
  %48 = load i16, i16* %arrayidx51, align 2, !tbaa !34
  %conv52 = zext i16 %48 to i32
  %shr53 = ashr i32 %conv52, 13
  %sub54 = sub nsw i32 %shr49, %shr53
  %conv55 = trunc i32 %sub54 to i16
  store i16 %conv55, i16* %frac_value, align 2, !tbaa !34
  %49 = load i32, i32* %i, align 4, !tbaa !5
  %50 = load i32, i32* %k, align 4, !tbaa !5
  %cmp56 = icmp eq i32 %49, %50
  br i1 %cmp56, label %if.then.58, label %if.else.87

if.then.58:                                       ; preds = %for.body.45
  %51 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom59 = sext i32 %51 to i64
  %52 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer60 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %52, i32 0, i32 47
  %arrayidx61 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer60, i32 0, i64 %idxprom59
  %53 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx61, align 8, !tbaa !1
  %proc62 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %53, i32 0, i32 1
  %54 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc62, align 8, !tbaa !90
  %cmp63 = icmp eq float (double, %struct.gx_transfer_map_s*)* %54, @gs_identity_transfer
  br i1 %cmp63, label %cond.true.65, label %cond.false.70

cond.true.65:                                     ; preds = %if.then.58
  %55 = load i16, i16* %frac_value, align 2, !tbaa !34
  %conv66 = sext i16 %55 to i32
  %sub67 = sub nsw i32 32760, %conv66
  %conv68 = trunc i32 %sub67 to i16
  %conv69 = sext i16 %conv68 to i32
  br label %cond.end.81

cond.false.70:                                    ; preds = %if.then.58
  %56 = load i16, i16* %frac_value, align 2, !tbaa !34
  %conv71 = sext i16 %56 to i32
  %sub72 = sub nsw i32 32760, %conv71
  %conv73 = trunc i32 %sub72 to i16
  %57 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom74 = sext i32 %57 to i64
  %58 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer75 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %58, i32 0, i32 47
  %arrayidx76 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer75, i32 0, i64 %idxprom74
  %59 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx76, align 8, !tbaa !1
  %values77 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %59, i32 0, i32 4
  %arrayidx78 = getelementptr inbounds [256 x i16], [256 x i16]* %values77, i32 0, i64 0
  %call79 = call signext i16 @gx_color_frac_map(i16 signext %conv73, i16* %arrayidx78) #5
  %conv80 = sext i16 %call79 to i32
  br label %cond.end.81

cond.end.81:                                      ; preds = %cond.false.70, %cond.true.65
  %cond82 = phi i32 [ %conv69, %cond.true.65 ], [ %conv80, %cond.false.70 ]
  %sub83 = sub nsw i32 32760, %cond82
  %conv84 = trunc i32 %sub83 to i16
  %60 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom85 = sext i32 %60 to i64
  %arrayidx86 = getelementptr inbounds [64 x i16], [64 x i16]* %cv_frac, i32 0, i64 %idxprom85
  store i16 %conv84, i16* %arrayidx86, align 2, !tbaa !34
  br label %if.end.100

if.else.87:                                       ; preds = %for.body.45
  %61 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom88 = sext i32 %61 to i64
  %62 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx89 = getelementptr inbounds i16, i16* %62, i64 %idxprom88
  %63 = load i16, i16* %arrayidx89, align 2, !tbaa !34
  %conv90 = zext i16 %63 to i32
  %shr91 = ashr i32 %conv90, 1
  %64 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom92 = sext i32 %64 to i64
  %65 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx93 = getelementptr inbounds i16, i16* %65, i64 %idxprom92
  %66 = load i16, i16* %arrayidx93, align 2, !tbaa !34
  %conv94 = zext i16 %66 to i32
  %shr95 = ashr i32 %conv94, 13
  %sub96 = sub nsw i32 %shr91, %shr95
  %conv97 = trunc i32 %sub96 to i16
  %67 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom98 = sext i32 %67 to i64
  %arrayidx99 = getelementptr inbounds [64 x i16], [64 x i16]* %cv_frac, i32 0, i64 %idxprom98
  store i16 %conv97, i16* %arrayidx99, align 2, !tbaa !34
  br label %if.end.100

if.end.100:                                       ; preds = %if.else.87, %cond.end.81
  %68 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom101 = sext i32 %68 to i64
  %arrayidx102 = getelementptr inbounds [64 x i16], [64 x i16]* %cv_frac, i32 0, i64 %idxprom101
  %69 = load i16, i16* %arrayidx102, align 2, !tbaa !34
  %conv103 = sext i16 %69 to i32
  %shl104 = shl i32 %conv103, 1
  %70 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom105 = sext i32 %70 to i64
  %arrayidx106 = getelementptr inbounds [64 x i16], [64 x i16]* %cv_frac, i32 0, i64 %idxprom105
  %71 = load i16, i16* %arrayidx106, align 2, !tbaa !34
  %conv107 = sext i16 %71 to i32
  %shr108 = ashr i32 %conv107, 11
  %add109 = add nsw i32 %shl104, %shr108
  %conv110 = trunc i32 %add109 to i16
  %72 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom111 = sext i32 %72 to i64
  %73 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx112 = getelementptr inbounds i16, i16* %73, i64 %idxprom111
  store i16 %conv110, i16* %arrayidx112, align 2, !tbaa !34
  br label %for.inc.113

for.inc.113:                                      ; preds = %if.end.100
  %74 = load i32, i32* %i, align 4, !tbaa !5
  %inc114 = add nsw i32 %74, 1
  store i32 %inc114, i32* %i, align 4, !tbaa !5
  br label %for.cond.42

for.end.115:                                      ; preds = %for.cond.42
  %75 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  br label %if.end.174

if.else.116:                                      ; preds = %if.end
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.117

for.cond.117:                                     ; preds = %for.inc.171, %if.else.116
  %76 = load i32, i32* %i, align 4, !tbaa !5
  %77 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp118 = icmp slt i32 %76, %77
  br i1 %cmp118, label %for.body.120, label %for.end.173

for.body.120:                                     ; preds = %for.cond.117
  %78 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom121 = sext i32 %78 to i64
  %79 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx122 = getelementptr inbounds i16, i16* %79, i64 %idxprom121
  %80 = load i16, i16* %arrayidx122, align 2, !tbaa !34
  %conv123 = zext i16 %80 to i32
  %shr124 = ashr i32 %conv123, 1
  %81 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom125 = sext i32 %81 to i64
  %82 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx126 = getelementptr inbounds i16, i16* %82, i64 %idxprom125
  %83 = load i16, i16* %arrayidx126, align 2, !tbaa !34
  %conv127 = zext i16 %83 to i32
  %shr128 = ashr i32 %conv127, 13
  %sub129 = sub nsw i32 %shr124, %shr128
  %conv130 = trunc i32 %sub129 to i16
  store i16 %conv130, i16* %frac_value, align 2, !tbaa !34
  %84 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom131 = sext i32 %84 to i64
  %85 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer132 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %85, i32 0, i32 47
  %arrayidx133 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer132, i32 0, i64 %idxprom131
  %86 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx133, align 8, !tbaa !1
  %proc134 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %86, i32 0, i32 1
  %87 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc134, align 8, !tbaa !90
  %cmp135 = icmp eq float (double, %struct.gx_transfer_map_s*)* %87, @gs_identity_transfer
  br i1 %cmp135, label %cond.true.137, label %cond.false.142

cond.true.137:                                    ; preds = %for.body.120
  %88 = load i16, i16* %frac_value, align 2, !tbaa !34
  %conv138 = sext i16 %88 to i32
  %sub139 = sub nsw i32 32760, %conv138
  %conv140 = trunc i32 %sub139 to i16
  %conv141 = sext i16 %conv140 to i32
  br label %cond.end.153

cond.false.142:                                   ; preds = %for.body.120
  %89 = load i16, i16* %frac_value, align 2, !tbaa !34
  %conv143 = sext i16 %89 to i32
  %sub144 = sub nsw i32 32760, %conv143
  %conv145 = trunc i32 %sub144 to i16
  %90 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom146 = sext i32 %90 to i64
  %91 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer147 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %91, i32 0, i32 47
  %arrayidx148 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer147, i32 0, i64 %idxprom146
  %92 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx148, align 8, !tbaa !1
  %values149 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %92, i32 0, i32 4
  %arrayidx150 = getelementptr inbounds [256 x i16], [256 x i16]* %values149, i32 0, i64 0
  %call151 = call signext i16 @gx_color_frac_map(i16 signext %conv145, i16* %arrayidx150) #5
  %conv152 = sext i16 %call151 to i32
  br label %cond.end.153

cond.end.153:                                     ; preds = %cond.false.142, %cond.true.137
  %cond154 = phi i32 [ %conv141, %cond.true.137 ], [ %conv152, %cond.false.142 ]
  %sub155 = sub nsw i32 32760, %cond154
  %conv156 = trunc i32 %sub155 to i16
  %93 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom157 = sext i32 %93 to i64
  %arrayidx158 = getelementptr inbounds [64 x i16], [64 x i16]* %cv_frac, i32 0, i64 %idxprom157
  store i16 %conv156, i16* %arrayidx158, align 2, !tbaa !34
  %94 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom159 = sext i32 %94 to i64
  %arrayidx160 = getelementptr inbounds [64 x i16], [64 x i16]* %cv_frac, i32 0, i64 %idxprom159
  %95 = load i16, i16* %arrayidx160, align 2, !tbaa !34
  %conv161 = sext i16 %95 to i32
  %shl162 = shl i32 %conv161, 1
  %96 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom163 = sext i32 %96 to i64
  %arrayidx164 = getelementptr inbounds [64 x i16], [64 x i16]* %cv_frac, i32 0, i64 %idxprom163
  %97 = load i16, i16* %arrayidx164, align 2, !tbaa !34
  %conv165 = sext i16 %97 to i32
  %shr166 = ashr i32 %conv165, 11
  %add167 = add nsw i32 %shl162, %shr166
  %conv168 = trunc i32 %add167 to i16
  %98 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom169 = sext i32 %98 to i64
  %99 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx170 = getelementptr inbounds i16, i16* %99, i64 %idxprom169
  store i16 %conv168, i16* %arrayidx170, align 2, !tbaa !34
  br label %for.inc.171

for.inc.171:                                      ; preds = %cond.end.153
  %100 = load i32, i32* %i, align 4, !tbaa !5
  %inc172 = add nsw i32 %100, 1
  store i32 %inc172, i32* %i, align 4, !tbaa !5
  br label %for.cond.117

for.end.173:                                      ; preds = %for.cond.117
  br label %if.end.174

if.end.174:                                       ; preds = %for.end.173, %for.end.115
  br label %if.end.175

if.end.175:                                       ; preds = %if.end.174, %for.end
  %101 = bitcast [64 x i16]* %cv_frac to i8*
  call void @llvm.lifetime.end(i64 128, i8* %101) #1
  %102 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #1
  %103 = bitcast i16* %frac_value to i8*
  call void @llvm.lifetime.end(i64 2, i8* %103) #1
  %104 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @cmap_transfer_plane(i16* %pconc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, i32 %plane) #0 {
entry:
  %pconc.addr = alloca i16*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %plane.addr = alloca i32, align 4
  %frac_value = alloca i16, align 2
  %cv_frac = alloca i16, align 2
  %k = alloca i32, align 4
  store i16* %pconc, i16** %pconc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %plane, i32* %plane.addr, align 4, !tbaa !5
  %0 = bitcast i16* %frac_value to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #1
  %1 = bitcast i16* %cv_frac to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1) #1
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 11
  %polarity = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 2
  %3 = load i32, i32* %polarity, align 4, !tbaa !94
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 0
  %5 = load i16, i16* %arrayidx, align 2, !tbaa !34
  %conv = zext i16 %5 to i32
  %shr = ashr i32 %conv, 1
  %6 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %6, i64 0
  %7 = load i16, i16* %arrayidx1, align 2, !tbaa !34
  %conv2 = zext i16 %7 to i32
  %shr3 = ashr i32 %conv2, 13
  %sub = sub nsw i32 %shr, %shr3
  %conv4 = trunc i32 %sub to i16
  store i16 %conv4, i16* %frac_value, align 2, !tbaa !34
  %8 = load i32, i32* %plane.addr, align 4, !tbaa !5
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %9, i32 0, i32 47
  %arrayidx5 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer, i32 0, i64 %idxprom
  %10 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx5, align 8, !tbaa !1
  %proc = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %10, i32 0, i32 1
  %11 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc, align 8, !tbaa !90
  %cmp6 = icmp eq float (double, %struct.gx_transfer_map_s*)* %11, @gs_identity_transfer
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %12 = load i16, i16* %frac_value, align 2, !tbaa !34
  %conv8 = sext i16 %12 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %13 = load i16, i16* %frac_value, align 2, !tbaa !34
  %14 = load i32, i32* %plane.addr, align 4, !tbaa !5
  %idxprom9 = sext i32 %14 to i64
  %15 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer10 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %15, i32 0, i32 47
  %arrayidx11 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer10, i32 0, i64 %idxprom9
  %16 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx11, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %16, i32 0, i32 4
  %arrayidx12 = getelementptr inbounds [256 x i16], [256 x i16]* %values, i32 0, i64 0
  %call = call signext i16 @gx_color_frac_map(i16 signext %13, i16* %arrayidx12) #5
  %conv13 = sext i16 %call to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv8, %cond.true ], [ %conv13, %cond.false ]
  %conv14 = trunc i32 %cond to i16
  store i16 %conv14, i16* %cv_frac, align 2, !tbaa !34
  %17 = load i16, i16* %cv_frac, align 2, !tbaa !34
  %conv15 = sext i16 %17 to i32
  %shl = shl i32 %conv15, 1
  %18 = load i16, i16* %cv_frac, align 2, !tbaa !34
  %conv16 = sext i16 %18 to i32
  %shr17 = ashr i32 %conv16, 11
  %add = add nsw i32 %shl, %shr17
  %conv18 = trunc i32 %add to i16
  %19 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i16, i16* %19, i64 0
  store i16 %conv18, i16* %arrayidx19, align 2, !tbaa !34
  br label %if.end.128

if.else:                                          ; preds = %entry
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info20 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 11
  %opmode = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info20, i32 0, i32 15
  %21 = load i32, i32* %opmode, align 4, !tbaa !95
  %cmp21 = icmp eq i32 %21, -1
  br i1 %cmp21, label %if.then.23, label %if.end

if.then.23:                                       ; preds = %if.else
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call24 = call i64 @check_cmyk_color_model_comps(%struct.gx_device_s* %22) #5
  br label %if.end

if.end:                                           ; preds = %if.then.23, %if.else
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info25 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %23, i32 0, i32 11
  %opmode26 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info25, i32 0, i32 15
  %24 = load i32, i32* %opmode26, align 4, !tbaa !95
  %cmp27 = icmp eq i32 %24, 1
  br i1 %cmp27, label %if.then.29, label %if.else.85

if.then.29:                                       ; preds = %if.end
  %25 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info30 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %26, i32 0, i32 11
  %black_component = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info30, i32 0, i32 17
  %27 = load i32, i32* %black_component, align 4, !tbaa !96
  store i32 %27, i32* %k, align 4, !tbaa !5
  %28 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i16, i16* %28, i64 0
  %29 = load i16, i16* %arrayidx31, align 2, !tbaa !34
  %conv32 = zext i16 %29 to i32
  %shr33 = ashr i32 %conv32, 1
  %30 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds i16, i16* %30, i64 0
  %31 = load i16, i16* %arrayidx34, align 2, !tbaa !34
  %conv35 = zext i16 %31 to i32
  %shr36 = ashr i32 %conv35, 13
  %sub37 = sub nsw i32 %shr33, %shr36
  %conv38 = trunc i32 %sub37 to i16
  store i16 %conv38, i16* %frac_value, align 2, !tbaa !34
  %32 = load i32, i32* %plane.addr, align 4, !tbaa !5
  %33 = load i32, i32* %k, align 4, !tbaa !5
  %cmp39 = icmp eq i32 %32, %33
  br i1 %cmp39, label %if.then.41, label %if.else.68

if.then.41:                                       ; preds = %if.then.29
  %34 = load i32, i32* %plane.addr, align 4, !tbaa !5
  %idxprom42 = sext i32 %34 to i64
  %35 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer43 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %35, i32 0, i32 47
  %arrayidx44 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer43, i32 0, i64 %idxprom42
  %36 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx44, align 8, !tbaa !1
  %proc45 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %36, i32 0, i32 1
  %37 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc45, align 8, !tbaa !90
  %cmp46 = icmp eq float (double, %struct.gx_transfer_map_s*)* %37, @gs_identity_transfer
  br i1 %cmp46, label %cond.true.48, label %cond.false.53

cond.true.48:                                     ; preds = %if.then.41
  %38 = load i16, i16* %frac_value, align 2, !tbaa !34
  %conv49 = sext i16 %38 to i32
  %sub50 = sub nsw i32 32760, %conv49
  %conv51 = trunc i32 %sub50 to i16
  %conv52 = sext i16 %conv51 to i32
  br label %cond.end.64

cond.false.53:                                    ; preds = %if.then.41
  %39 = load i16, i16* %frac_value, align 2, !tbaa !34
  %conv54 = sext i16 %39 to i32
  %sub55 = sub nsw i32 32760, %conv54
  %conv56 = trunc i32 %sub55 to i16
  %40 = load i32, i32* %plane.addr, align 4, !tbaa !5
  %idxprom57 = sext i32 %40 to i64
  %41 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer58 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %41, i32 0, i32 47
  %arrayidx59 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer58, i32 0, i64 %idxprom57
  %42 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx59, align 8, !tbaa !1
  %values60 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %42, i32 0, i32 4
  %arrayidx61 = getelementptr inbounds [256 x i16], [256 x i16]* %values60, i32 0, i64 0
  %call62 = call signext i16 @gx_color_frac_map(i16 signext %conv56, i16* %arrayidx61) #5
  %conv63 = sext i16 %call62 to i32
  br label %cond.end.64

cond.end.64:                                      ; preds = %cond.false.53, %cond.true.48
  %cond65 = phi i32 [ %conv52, %cond.true.48 ], [ %conv63, %cond.false.53 ]
  %sub66 = sub nsw i32 32760, %cond65
  %conv67 = trunc i32 %sub66 to i16
  store i16 %conv67, i16* %cv_frac, align 2, !tbaa !34
  br label %if.end.77

if.else.68:                                       ; preds = %if.then.29
  %43 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx69 = getelementptr inbounds i16, i16* %43, i64 0
  %44 = load i16, i16* %arrayidx69, align 2, !tbaa !34
  %conv70 = zext i16 %44 to i32
  %shr71 = ashr i32 %conv70, 1
  %45 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx72 = getelementptr inbounds i16, i16* %45, i64 0
  %46 = load i16, i16* %arrayidx72, align 2, !tbaa !34
  %conv73 = zext i16 %46 to i32
  %shr74 = ashr i32 %conv73, 13
  %sub75 = sub nsw i32 %shr71, %shr74
  %conv76 = trunc i32 %sub75 to i16
  store i16 %conv76, i16* %cv_frac, align 2, !tbaa !34
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.68, %cond.end.64
  %47 = load i16, i16* %cv_frac, align 2, !tbaa !34
  %conv78 = sext i16 %47 to i32
  %shl79 = shl i32 %conv78, 1
  %48 = load i16, i16* %cv_frac, align 2, !tbaa !34
  %conv80 = sext i16 %48 to i32
  %shr81 = ashr i32 %conv80, 11
  %add82 = add nsw i32 %shl79, %shr81
  %conv83 = trunc i32 %add82 to i16
  %49 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx84 = getelementptr inbounds i16, i16* %49, i64 0
  store i16 %conv83, i16* %arrayidx84, align 2, !tbaa !34
  %50 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  br label %if.end.127

if.else.85:                                       ; preds = %if.end
  %51 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx86 = getelementptr inbounds i16, i16* %51, i64 0
  %52 = load i16, i16* %arrayidx86, align 2, !tbaa !34
  %conv87 = zext i16 %52 to i32
  %shr88 = ashr i32 %conv87, 1
  %53 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx89 = getelementptr inbounds i16, i16* %53, i64 0
  %54 = load i16, i16* %arrayidx89, align 2, !tbaa !34
  %conv90 = zext i16 %54 to i32
  %shr91 = ashr i32 %conv90, 13
  %sub92 = sub nsw i32 %shr88, %shr91
  %conv93 = trunc i32 %sub92 to i16
  store i16 %conv93, i16* %frac_value, align 2, !tbaa !34
  %55 = load i32, i32* %plane.addr, align 4, !tbaa !5
  %idxprom94 = sext i32 %55 to i64
  %56 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer95 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %56, i32 0, i32 47
  %arrayidx96 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer95, i32 0, i64 %idxprom94
  %57 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx96, align 8, !tbaa !1
  %proc97 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %57, i32 0, i32 1
  %58 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc97, align 8, !tbaa !90
  %cmp98 = icmp eq float (double, %struct.gx_transfer_map_s*)* %58, @gs_identity_transfer
  br i1 %cmp98, label %cond.true.100, label %cond.false.105

cond.true.100:                                    ; preds = %if.else.85
  %59 = load i16, i16* %frac_value, align 2, !tbaa !34
  %conv101 = sext i16 %59 to i32
  %sub102 = sub nsw i32 32760, %conv101
  %conv103 = trunc i32 %sub102 to i16
  %conv104 = sext i16 %conv103 to i32
  br label %cond.end.116

cond.false.105:                                   ; preds = %if.else.85
  %60 = load i16, i16* %frac_value, align 2, !tbaa !34
  %conv106 = sext i16 %60 to i32
  %sub107 = sub nsw i32 32760, %conv106
  %conv108 = trunc i32 %sub107 to i16
  %61 = load i32, i32* %plane.addr, align 4, !tbaa !5
  %idxprom109 = sext i32 %61 to i64
  %62 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer110 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %62, i32 0, i32 47
  %arrayidx111 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer110, i32 0, i64 %idxprom109
  %63 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx111, align 8, !tbaa !1
  %values112 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %63, i32 0, i32 4
  %arrayidx113 = getelementptr inbounds [256 x i16], [256 x i16]* %values112, i32 0, i64 0
  %call114 = call signext i16 @gx_color_frac_map(i16 signext %conv108, i16* %arrayidx113) #5
  %conv115 = sext i16 %call114 to i32
  br label %cond.end.116

cond.end.116:                                     ; preds = %cond.false.105, %cond.true.100
  %cond117 = phi i32 [ %conv104, %cond.true.100 ], [ %conv115, %cond.false.105 ]
  %sub118 = sub nsw i32 32760, %cond117
  %conv119 = trunc i32 %sub118 to i16
  store i16 %conv119, i16* %cv_frac, align 2, !tbaa !34
  %64 = load i16, i16* %cv_frac, align 2, !tbaa !34
  %conv120 = sext i16 %64 to i32
  %shl121 = shl i32 %conv120, 1
  %65 = load i16, i16* %cv_frac, align 2, !tbaa !34
  %conv122 = sext i16 %65 to i32
  %shr123 = ashr i32 %conv122, 11
  %add124 = add nsw i32 %shl121, %shr123
  %conv125 = trunc i32 %add124 to i16
  %66 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx126 = getelementptr inbounds i16, i16* %66, i64 0
  store i16 %conv125, i16* %arrayidx126, align 2, !tbaa !34
  br label %if.end.127

if.end.127:                                       ; preds = %cond.end.116, %if.end.77
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %cond.end
  %67 = bitcast i16* %cv_frac to i8*
  call void @llvm.lifetime.end(i64 2, i8* %67) #1
  %68 = bitcast i16* %frac_value to i8*
  call void @llvm.lifetime.end(i64 2, i8* %68) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gx_device_uses_std_cmap_procs(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pprocs = alloca %struct.gx_cm_color_map_procs_s*, align 8
  %render_cond = alloca %struct.gsicc_rendering_param_s, align 4
  %code = alloca i32, align 4
  %dev_profile = alloca %struct.cmm_dev_profile_s*, align 8
  %des_profile = alloca %struct.cmm_profile_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_cm_color_map_procs_s** %pprocs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.gsicc_rendering_param_s* %render_cond to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store %struct.cmm_dev_profile_s* null, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %4 = bitcast %struct.cmm_profile_s** %des_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %des_profile, align 8, !tbaa !1
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %6 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !100
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 %6(%struct.gx_device_s* %7, %struct.cmm_dev_profile_s** %dev_profile) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %graphics_type_tag = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 40
  %9 = load i32, i32* %graphics_type_tag, align 4, !tbaa !101
  %10 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  call void @gsicc_extract_profile(i32 %9, %struct.cmm_dev_profile_s* %10, %struct.cmm_profile_s** %des_profile, %struct.gsicc_rendering_param_s* %render_cond) #5
  %11 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %des_profile, align 8, !tbaa !1
  %cmp = icmp ne %struct.cmm_profile_s* %11, null
  br i1 %cmp, label %if.then, label %if.end.20

if.then:                                          ; preds = %entry
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 42
  %get_color_mapping_procs = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1, i32 0, i32 49
  %13 = load %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)** %get_color_mapping_procs, align 8, !tbaa !102
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call2 = call %struct.gx_cm_color_map_procs_s* %13(%struct.gx_device_s* %14) #5
  store %struct.gx_cm_color_map_procs_s* %call2, %struct.gx_cm_color_map_procs_s** %pprocs, align 8, !tbaa !1
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call3 = call i32 @fwd_uses_fwd_cmap_procs(%struct.gx_device_s* %15) #5
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call5 = call %struct.gx_cm_color_map_procs_s* @fwd_get_target_cmap_procs(%struct.gx_device_s* %16) #5
  store %struct.gx_cm_color_map_procs_s* %call5, %struct.gx_cm_color_map_procs_s** %pprocs, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %17 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %des_profile, align 8, !tbaa !1
  %num_comps = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %17, i32 0, i32 0
  %18 = load i8, i8* %num_comps, align 1, !tbaa !103
  %conv = zext i8 %18 to i32
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.10
    i32 4, label %sw.bb.15
  ]

sw.bb:                                            ; preds = %if.end
  %19 = load %struct.gx_cm_color_map_procs_s*, %struct.gx_cm_color_map_procs_s** %pprocs, align 8, !tbaa !1
  %cmp6 = icmp eq %struct.gx_cm_color_map_procs_s* %19, @DeviceGray_procs
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %sw.bb
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %sw.bb
  br label %sw.epilog

sw.bb.10:                                         ; preds = %if.end
  %20 = load %struct.gx_cm_color_map_procs_s*, %struct.gx_cm_color_map_procs_s** %pprocs, align 8, !tbaa !1
  %cmp11 = icmp eq %struct.gx_cm_color_map_procs_s* %20, @DeviceRGB_procs
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %sw.bb.10
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %sw.bb.10
  br label %sw.epilog

sw.bb.15:                                         ; preds = %if.end
  %21 = load %struct.gx_cm_color_map_procs_s*, %struct.gx_cm_color_map_procs_s** %pprocs, align 8, !tbaa !1
  %cmp16 = icmp eq %struct.gx_cm_color_map_procs_s* %21, @DeviceCMYK_procs
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %sw.bb.15
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %sw.bb.15
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.19, %if.end.14, %if.end.9
  br label %if.end.20

if.end.20:                                        ; preds = %sw.epilog, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.20, %if.then.18, %if.then.13, %if.then.8
  %22 = bitcast %struct.cmm_profile_s** %des_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast %struct.gsicc_rendering_param_s* %render_cond to i8*
  call void @llvm.lifetime.end(i64 24, i8* %25) #1
  %26 = bitcast %struct.gx_cm_color_map_procs_s** %pprocs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = load i32, i32* %retval
  ret i32 %27
}

declare void @gsicc_extract_profile(i32, %struct.cmm_dev_profile_s*, %struct.cmm_profile_s**, %struct.gsicc_rendering_param_s*) #2

declare i32 @fwd_uses_fwd_cmap_procs(%struct.gx_device_s*) #2

declare %struct.gx_cm_color_map_procs_s* @fwd_get_target_cmap_procs(%struct.gx_device_s*) #2

; Function Attrs: nounwind uwtable
define internal void @rgb_cs_to_gray_cm(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, i16 signext %r, i16 signext %g, i16 signext %b, i16* %out) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %r.addr = alloca i16, align 2
  %g.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  %out.addr = alloca i16*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store i16 %r, i16* %r.addr, align 2, !tbaa !34
  store i16 %g, i16* %g.addr, align 2, !tbaa !34
  store i16 %b, i16* %b.addr, align 2, !tbaa !34
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  %0 = load i16, i16* %r.addr, align 2, !tbaa !34
  %1 = load i16, i16* %g.addr, align 2, !tbaa !34
  %2 = load i16, i16* %b.addr, align 2, !tbaa !34
  %call = call signext i16 @color_rgb_to_gray(i16 signext %0, i16 signext %1, i16 signext %2, %struct.gs_imager_state_s* null) #5
  %3 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 0
  store i16 %call, i16* %arrayidx, align 2, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cmyk_cs_to_gray_cm(%struct.gx_device_s* %dev, i16 signext %c, i16 signext %m, i16 signext %y, i16 signext %k, i16* %out) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %c.addr = alloca i16, align 2
  %m.addr = alloca i16, align 2
  %y.addr = alloca i16, align 2
  %k.addr = alloca i16, align 2
  %out.addr = alloca i16*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16 %c, i16* %c.addr, align 2, !tbaa !34
  store i16 %m, i16* %m.addr, align 2, !tbaa !34
  store i16 %y, i16* %y.addr, align 2, !tbaa !34
  store i16 %k, i16* %k.addr, align 2, !tbaa !34
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  %0 = load i16, i16* %c.addr, align 2, !tbaa !34
  %1 = load i16, i16* %m.addr, align 2, !tbaa !34
  %2 = load i16, i16* %y.addr, align 2, !tbaa !34
  %3 = load i16, i16* %k.addr, align 2, !tbaa !34
  %call = call signext i16 @color_cmyk_to_gray(i16 signext %0, i16 signext %1, i16 signext %2, i16 signext %3, %struct.gs_imager_state_s* null) #5
  %4 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 0
  store i16 %call, i16* %arrayidx, align 2, !tbaa !34
  ret void
}

declare signext i16 @color_rgb_to_gray(i16 signext, i16 signext, i16 signext, %struct.gs_imager_state_s*) #2

declare signext i16 @color_cmyk_to_gray(i16 signext, i16 signext, i16 signext, i16 signext, %struct.gs_imager_state_s*) #2

; Function Attrs: nounwind uwtable
define internal void @gray_cs_to_rgb_cm(%struct.gx_device_s* %dev, i16 signext %gray, i16* %out) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %gray.addr = alloca i16, align 2
  %out.addr = alloca i16*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16 %gray, i16* %gray.addr, align 2, !tbaa !34
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  %0 = load i16, i16* %gray.addr, align 2, !tbaa !34
  %1 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 2
  store i16 %0, i16* %arrayidx, align 2, !tbaa !34
  %2 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 1
  store i16 %0, i16* %arrayidx1, align 2, !tbaa !34
  %3 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %3, i64 0
  store i16 %0, i16* %arrayidx2, align 2, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cmyk_cs_to_rgb_cm(%struct.gx_device_s* %dev, i16 signext %c, i16 signext %m, i16 signext %y, i16 signext %k, i16* %out) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %c.addr = alloca i16, align 2
  %m.addr = alloca i16, align 2
  %y.addr = alloca i16, align 2
  %k.addr = alloca i16, align 2
  %out.addr = alloca i16*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16 %c, i16* %c.addr, align 2, !tbaa !34
  store i16 %m, i16* %m.addr, align 2, !tbaa !34
  store i16 %y, i16* %y.addr, align 2, !tbaa !34
  store i16 %k, i16* %k.addr, align 2, !tbaa !34
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  %0 = load i16, i16* %c.addr, align 2, !tbaa !34
  %1 = load i16, i16* %m.addr, align 2, !tbaa !34
  %2 = load i16, i16* %y.addr, align 2, !tbaa !34
  %3 = load i16, i16* %k.addr, align 2, !tbaa !34
  %4 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 3
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !38
  call void @color_cmyk_to_rgb(i16 signext %0, i16 signext %1, i16 signext %2, i16 signext %3, %struct.gs_imager_state_s* null, i16* %4, %struct.gs_memory_s* %6) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gray_cs_to_cmyk_cm(%struct.gx_device_s* %dev, i16 signext %gray, i16* %out) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %gray.addr = alloca i16, align 2
  %out.addr = alloca i16*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16 %gray, i16* %gray.addr, align 2, !tbaa !34
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  %0 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 2
  store i16 0, i16* %arrayidx, align 2, !tbaa !34
  %1 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %1, i64 1
  store i16 0, i16* %arrayidx1, align 2, !tbaa !34
  %2 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %2, i64 0
  store i16 0, i16* %arrayidx2, align 2, !tbaa !34
  %3 = load i16, i16* %gray.addr, align 2, !tbaa !34
  %conv = sext i16 %3 to i32
  %sub = sub nsw i32 32760, %conv
  %conv3 = trunc i32 %sub to i16
  %4 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i16, i16* %4, i64 3
  store i16 %conv3, i16* %arrayidx4, align 2, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rgb_cs_to_cmyk_cm(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, i16 signext %r, i16 signext %g, i16 signext %b, i16* %out) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %r.addr = alloca i16, align 2
  %g.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  %out.addr = alloca i16*, align 8
  %c = alloca i16, align 2
  %m = alloca i16, align 2
  %y = alloca i16, align 2
  %k = alloca i16, align 2
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store i16 %r, i16* %r.addr, align 2, !tbaa !34
  store i16 %g, i16* %g.addr, align 2, !tbaa !34
  store i16 %b, i16* %b.addr, align 2, !tbaa !34
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  %0 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.gs_imager_state_s* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i16, i16* %r.addr, align 2, !tbaa !34
  %2 = load i16, i16* %g.addr, align 2, !tbaa !34
  %3 = load i16, i16* %b.addr, align 2, !tbaa !34
  %4 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %5 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 3
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !38
  call void @color_rgb_to_cmyk(i16 signext %1, i16 signext %2, i16 signext %3, %struct.gs_imager_state_s* %4, i16* %5, %struct.gs_memory_s* %7) #5
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = bitcast i16* %c to i8*
  call void @llvm.lifetime.start(i64 2, i8* %8) #1
  %9 = load i16, i16* %r.addr, align 2, !tbaa !34
  %conv = sext i16 %9 to i32
  %sub = sub nsw i32 32760, %conv
  %conv1 = trunc i32 %sub to i16
  store i16 %conv1, i16* %c, align 2, !tbaa !34
  %10 = bitcast i16* %m to i8*
  call void @llvm.lifetime.start(i64 2, i8* %10) #1
  %11 = load i16, i16* %g.addr, align 2, !tbaa !34
  %conv2 = sext i16 %11 to i32
  %sub3 = sub nsw i32 32760, %conv2
  %conv4 = trunc i32 %sub3 to i16
  store i16 %conv4, i16* %m, align 2, !tbaa !34
  %12 = bitcast i16* %y to i8*
  call void @llvm.lifetime.start(i64 2, i8* %12) #1
  %13 = load i16, i16* %b.addr, align 2, !tbaa !34
  %conv5 = sext i16 %13 to i32
  %sub6 = sub nsw i32 32760, %conv5
  %conv7 = trunc i32 %sub6 to i16
  store i16 %conv7, i16* %y, align 2, !tbaa !34
  %14 = bitcast i16* %k to i8*
  call void @llvm.lifetime.start(i64 2, i8* %14) #1
  %15 = load i16, i16* %c, align 2, !tbaa !34
  %conv8 = sext i16 %15 to i32
  %16 = load i16, i16* %m, align 2, !tbaa !34
  %conv9 = sext i16 %16 to i32
  %17 = load i16, i16* %y, align 2, !tbaa !34
  %conv10 = sext i16 %17 to i32
  %cmp11 = icmp slt i32 %conv9, %conv10
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %18 = load i16, i16* %m, align 2, !tbaa !34
  %conv13 = sext i16 %18 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %19 = load i16, i16* %y, align 2, !tbaa !34
  %conv14 = sext i16 %19 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv13, %cond.true ], [ %conv14, %cond.false ]
  %cmp15 = icmp slt i32 %conv8, %cond
  br i1 %cmp15, label %cond.true.17, label %cond.false.19

cond.true.17:                                     ; preds = %cond.end
  %20 = load i16, i16* %c, align 2, !tbaa !34
  %conv18 = sext i16 %20 to i32
  br label %cond.end.30

cond.false.19:                                    ; preds = %cond.end
  %21 = load i16, i16* %m, align 2, !tbaa !34
  %conv20 = sext i16 %21 to i32
  %22 = load i16, i16* %y, align 2, !tbaa !34
  %conv21 = sext i16 %22 to i32
  %cmp22 = icmp slt i32 %conv20, %conv21
  br i1 %cmp22, label %cond.true.24, label %cond.false.26

cond.true.24:                                     ; preds = %cond.false.19
  %23 = load i16, i16* %m, align 2, !tbaa !34
  %conv25 = sext i16 %23 to i32
  br label %cond.end.28

cond.false.26:                                    ; preds = %cond.false.19
  %24 = load i16, i16* %y, align 2, !tbaa !34
  %conv27 = sext i16 %24 to i32
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.26, %cond.true.24
  %cond29 = phi i32 [ %conv25, %cond.true.24 ], [ %conv27, %cond.false.26 ]
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.end.28, %cond.true.17
  %cond31 = phi i32 [ %conv18, %cond.true.17 ], [ %cond29, %cond.end.28 ]
  %conv32 = trunc i32 %cond31 to i16
  store i16 %conv32, i16* %k, align 2, !tbaa !34
  %25 = load i16, i16* %c, align 2, !tbaa !34
  %conv33 = sext i16 %25 to i32
  %26 = load i16, i16* %k, align 2, !tbaa !34
  %conv34 = sext i16 %26 to i32
  %sub35 = sub nsw i32 %conv33, %conv34
  %conv36 = trunc i32 %sub35 to i16
  %27 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %27, i64 0
  store i16 %conv36, i16* %arrayidx, align 2, !tbaa !34
  %28 = load i16, i16* %m, align 2, !tbaa !34
  %conv37 = sext i16 %28 to i32
  %29 = load i16, i16* %k, align 2, !tbaa !34
  %conv38 = sext i16 %29 to i32
  %sub39 = sub nsw i32 %conv37, %conv38
  %conv40 = trunc i32 %sub39 to i16
  %30 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds i16, i16* %30, i64 1
  store i16 %conv40, i16* %arrayidx41, align 2, !tbaa !34
  %31 = load i16, i16* %y, align 2, !tbaa !34
  %conv42 = sext i16 %31 to i32
  %32 = load i16, i16* %k, align 2, !tbaa !34
  %conv43 = sext i16 %32 to i32
  %sub44 = sub nsw i32 %conv42, %conv43
  %conv45 = trunc i32 %sub44 to i16
  %33 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds i16, i16* %33, i64 2
  store i16 %conv45, i16* %arrayidx46, align 2, !tbaa !34
  %34 = load i16, i16* %k, align 2, !tbaa !34
  %35 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx47 = getelementptr inbounds i16, i16* %35, i64 3
  store i16 %34, i16* %arrayidx47, align 2, !tbaa !34
  %36 = bitcast i16* %k to i8*
  call void @llvm.lifetime.end(i64 2, i8* %36) #1
  %37 = bitcast i16* %y to i8*
  call void @llvm.lifetime.end(i64 2, i8* %37) #1
  %38 = bitcast i16* %m to i8*
  call void @llvm.lifetime.end(i64 2, i8* %38) #1
  %39 = bitcast i16* %c to i8*
  call void @llvm.lifetime.end(i64 2, i8* %39) #1
  br label %if.end

if.end:                                           ; preds = %cond.end.30, %if.then
  ret void
}

declare void @color_rgb_to_cmyk(i16 signext, i16 signext, i16 signext, %struct.gs_imager_state_s*, i16*, %struct.gs_memory_s*) #2

; Function Attrs: nounwind uwtable
define internal void @gray_cs_to_rgbk_cm(%struct.gx_device_s* %dev, i16 signext %gray, i16* %out) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %gray.addr = alloca i16, align 2
  %out.addr = alloca i16*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16 %gray, i16* %gray.addr, align 2, !tbaa !34
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  %0 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 2
  store i16 0, i16* %arrayidx, align 2, !tbaa !34
  %1 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %1, i64 1
  store i16 0, i16* %arrayidx1, align 2, !tbaa !34
  %2 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %2, i64 0
  store i16 0, i16* %arrayidx2, align 2, !tbaa !34
  %3 = load i16, i16* %gray.addr, align 2, !tbaa !34
  %4 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %4, i64 3
  store i16 %3, i16* %arrayidx3, align 2, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rgb_cs_to_rgbk_cm(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, i16 signext %r, i16 signext %g, i16 signext %b, i16* %out) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %r.addr = alloca i16, align 2
  %g.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  %out.addr = alloca i16*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store i16 %r, i16* %r.addr, align 2, !tbaa !34
  store i16 %g, i16* %g.addr, align 2, !tbaa !34
  store i16 %b, i16* %b.addr, align 2, !tbaa !34
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  %0 = load i16, i16* %r.addr, align 2, !tbaa !34
  %conv = sext i16 %0 to i32
  %1 = load i16, i16* %g.addr, align 2, !tbaa !34
  %conv1 = sext i16 %1 to i32
  %cmp = icmp eq i32 %conv, %conv1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load i16, i16* %g.addr, align 2, !tbaa !34
  %conv3 = sext i16 %2 to i32
  %3 = load i16, i16* %b.addr, align 2, !tbaa !34
  %conv4 = sext i16 %3 to i32
  %cmp5 = icmp eq i32 %conv3, %conv4
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %4 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 2
  store i16 0, i16* %arrayidx, align 2, !tbaa !34
  %5 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i16, i16* %5, i64 1
  store i16 0, i16* %arrayidx7, align 2, !tbaa !34
  %6 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i16, i16* %6, i64 0
  store i16 0, i16* %arrayidx8, align 2, !tbaa !34
  %7 = load i16, i16* %r.addr, align 2, !tbaa !34
  %8 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i16, i16* %8, i64 3
  store i16 %7, i16* %arrayidx9, align 2, !tbaa !34
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %9 = load i16, i16* %r.addr, align 2, !tbaa !34
  %10 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i16, i16* %10, i64 0
  store i16 %9, i16* %arrayidx10, align 2, !tbaa !34
  %11 = load i16, i16* %g.addr, align 2, !tbaa !34
  %12 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i16, i16* %12, i64 1
  store i16 %11, i16* %arrayidx11, align 2, !tbaa !34
  %13 = load i16, i16* %b.addr, align 2, !tbaa !34
  %14 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i16, i16* %14, i64 2
  store i16 %13, i16* %arrayidx12, align 2, !tbaa !34
  %15 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i16, i16* %15, i64 3
  store i16 0, i16* %arrayidx13, align 2, !tbaa !34
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cmyk_cs_to_rgbk_cm(%struct.gx_device_s* %dev, i16 signext %c, i16 signext %m, i16 signext %y, i16 signext %k, i16* %out) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %c.addr = alloca i16, align 2
  %m.addr = alloca i16, align 2
  %y.addr = alloca i16, align 2
  %k.addr = alloca i16, align 2
  %out.addr = alloca i16*, align 8
  %rgb = alloca [3 x i16], align 2
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16 %c, i16* %c.addr, align 2, !tbaa !34
  store i16 %m, i16* %m.addr, align 2, !tbaa !34
  store i16 %y, i16* %y.addr, align 2, !tbaa !34
  store i16 %k, i16* %k.addr, align 2, !tbaa !34
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  %0 = bitcast [3 x i16]* %rgb to i8*
  call void @llvm.lifetime.start(i64 6, i8* %0) #1
  %1 = load i16, i16* %c.addr, align 2, !tbaa !34
  %conv = sext i16 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load i16, i16* %m.addr, align 2, !tbaa !34
  %conv2 = sext i16 %2 to i32
  %cmp3 = icmp eq i32 %conv2, 0
  br i1 %cmp3, label %land.lhs.true.5, label %if.else

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %3 = load i16, i16* %y.addr, align 2, !tbaa !34
  %conv6 = sext i16 %3 to i32
  %cmp7 = icmp eq i32 %conv6, 0
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.5
  %4 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 2
  store i16 0, i16* %arrayidx, align 2, !tbaa !34
  %5 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i16, i16* %5, i64 1
  store i16 0, i16* %arrayidx9, align 2, !tbaa !34
  %6 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i16, i16* %6, i64 0
  store i16 0, i16* %arrayidx10, align 2, !tbaa !34
  %7 = load i16, i16* %k.addr, align 2, !tbaa !34
  %conv11 = sext i16 %7 to i32
  %sub = sub nsw i32 32760, %conv11
  %conv12 = trunc i32 %sub to i16
  %8 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i16, i16* %8, i64 3
  store i16 %conv12, i16* %arrayidx13, align 2, !tbaa !34
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.5, %land.lhs.true, %entry
  %9 = load i16, i16* %c.addr, align 2, !tbaa !34
  %10 = load i16, i16* %m.addr, align 2, !tbaa !34
  %11 = load i16, i16* %y.addr, align 2, !tbaa !34
  %12 = load i16, i16* %k.addr, align 2, !tbaa !34
  %arraydecay = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i32 0
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %13, i32 0, i32 3
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !38
  call void @color_cmyk_to_rgb(i16 signext %9, i16 signext %10, i16 signext %11, i16 signext %12, %struct.gs_imager_state_s* null, i16* %arraydecay, %struct.gs_memory_s* %14) #5
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i64 0
  %16 = load i16, i16* %arrayidx14, align 2, !tbaa !34
  %arrayidx15 = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i64 1
  %17 = load i16, i16* %arrayidx15, align 2, !tbaa !34
  %arrayidx16 = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i64 2
  %18 = load i16, i16* %arrayidx16, align 2, !tbaa !34
  %19 = load i16*, i16** %out.addr, align 8, !tbaa !1
  call void @rgb_cs_to_rgbk_cm(%struct.gx_device_s* %15, %struct.gs_imager_state_s* null, i16 signext %16, i16 signext %17, i16 signext %18, i16* %19) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %20 = bitcast [3 x i16]* %rgb to i8*
  call void @llvm.lifetime.end(i64 6, i8* %20) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cmap_gray_direct(i16 signext %gray, %struct.gx_device_color_s* %pdc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, i32 %select) #0 {
entry:
  %gray.addr = alloca i16, align 2
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %select.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %ncomps = alloca i32, align 4
  %cm_comps = alloca [64 x i16], align 16
  %cv = alloca [64 x i16], align 16
  %color = alloca i64, align 8
  %k = alloca i32, align 4
  store i16 %gray, i16* %gray.addr, align 2, !tbaa !34
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %select, i32* %select.addr, align 4, !tbaa !33
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %3 = load i32, i32* %num_components, align 4, !tbaa !20
  store i32 %3, i32* %ncomps, align 4, !tbaa !5
  %4 = bitcast [64 x i16]* %cm_comps to i8*
  call void @llvm.lifetime.start(i64 128, i8* %4) #1
  %5 = bitcast [64 x i16]* %cv to i8*
  call void @llvm.lifetime.start(i64 128, i8* %5) #1
  %6 = bitcast i64* %color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4, !tbaa !5
  %8 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom
  store i16 0, i16* %arrayidx, align 2, !tbaa !34
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 42
  %get_color_mapping_procs = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 49
  %12 = load %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)** %get_color_mapping_procs, align 8, !tbaa !102
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call %struct.gx_cm_color_map_procs_s* %12(%struct.gx_device_s* %13) #5
  %map_gray = getelementptr inbounds %struct.gx_cm_color_map_procs_s, %struct.gx_cm_color_map_procs_s* %call, i32 0, i32 0
  %14 = load void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, i16, i16*)** %map_gray, align 8, !tbaa !104
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %16 = load i16, i16* %gray.addr, align 2, !tbaa !34
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i32 0
  call void %14(%struct.gx_device_s* %15, i16 signext %16, i16* %arraydecay) #5
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 11
  %polarity = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info1, i32 0, i32 2
  %18 = load i32, i32* %polarity, align 4, !tbaa !94
  %cmp2 = icmp eq i32 %18, 1
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.44, %if.then
  %19 = load i32, i32* %i, align 4, !tbaa !5
  %20 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %19, %20
  br i1 %cmp4, label %for.body.5, label %for.end.46

for.body.5:                                       ; preds = %for.cond.3
  %21 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom6 = sext i32 %21 to i64
  %22 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %22, i32 0, i32 47
  %arrayidx7 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer, i32 0, i64 %idxprom6
  %23 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx7, align 8, !tbaa !1
  %proc = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %23, i32 0, i32 1
  %24 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc, align 8, !tbaa !90
  %cmp8 = icmp eq float (double, %struct.gx_transfer_map_s*)* %24, @gs_identity_transfer
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.5
  %25 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom9 = sext i32 %25 to i64
  %arrayidx10 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom9
  %26 = load i16, i16* %arrayidx10, align 2, !tbaa !34
  %conv = sext i16 %26 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.body.5
  %27 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %27 to i64
  %arrayidx12 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom11
  %28 = load i16, i16* %arrayidx12, align 2, !tbaa !34
  %29 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom13 = sext i32 %29 to i64
  %30 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer14 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %30, i32 0, i32 47
  %arrayidx15 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer14, i32 0, i64 %idxprom13
  %31 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx15, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %31, i32 0, i32 4
  %arrayidx16 = getelementptr inbounds [256 x i16], [256 x i16]* %values, i32 0, i64 0
  %call17 = call signext i16 @gx_color_frac_map(i16 signext %28, i16* %arrayidx16) #5
  %conv18 = sext i16 %call17 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv18, %cond.false ]
  %shl = shl i32 %cond, 1
  %32 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom19 = sext i32 %32 to i64
  %33 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer20 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %33, i32 0, i32 47
  %arrayidx21 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer20, i32 0, i64 %idxprom19
  %34 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx21, align 8, !tbaa !1
  %proc22 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %34, i32 0, i32 1
  %35 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc22, align 8, !tbaa !90
  %cmp23 = icmp eq float (double, %struct.gx_transfer_map_s*)* %35, @gs_identity_transfer
  br i1 %cmp23, label %cond.true.25, label %cond.false.29

cond.true.25:                                     ; preds = %cond.end
  %36 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom26 = sext i32 %36 to i64
  %arrayidx27 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom26
  %37 = load i16, i16* %arrayidx27, align 2, !tbaa !34
  %conv28 = sext i16 %37 to i32
  br label %cond.end.39

cond.false.29:                                    ; preds = %cond.end
  %38 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom30 = sext i32 %38 to i64
  %arrayidx31 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom30
  %39 = load i16, i16* %arrayidx31, align 2, !tbaa !34
  %40 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom32 = sext i32 %40 to i64
  %41 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer33 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %41, i32 0, i32 47
  %arrayidx34 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer33, i32 0, i64 %idxprom32
  %42 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx34, align 8, !tbaa !1
  %values35 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %42, i32 0, i32 4
  %arrayidx36 = getelementptr inbounds [256 x i16], [256 x i16]* %values35, i32 0, i64 0
  %call37 = call signext i16 @gx_color_frac_map(i16 signext %39, i16* %arrayidx36) #5
  %conv38 = sext i16 %call37 to i32
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.false.29, %cond.true.25
  %cond40 = phi i32 [ %conv28, %cond.true.25 ], [ %conv38, %cond.false.29 ]
  %shr = ashr i32 %cond40, 11
  %add = add nsw i32 %shl, %shr
  %conv41 = trunc i32 %add to i16
  %43 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom42 = sext i32 %43 to i64
  %arrayidx43 = getelementptr inbounds [64 x i16], [64 x i16]* %cv, i32 0, i64 %idxprom42
  store i16 %conv41, i16* %arrayidx43, align 2, !tbaa !34
  br label %for.inc.44

for.inc.44:                                       ; preds = %cond.end.39
  %44 = load i32, i32* %i, align 4, !tbaa !5
  %inc45 = add nsw i32 %44, 1
  store i32 %inc45, i32* %i, align 4, !tbaa !5
  br label %for.cond.3

for.end.46:                                       ; preds = %for.cond.3
  br label %if.end.218

if.else:                                          ; preds = %for.end
  %45 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info47 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %45, i32 0, i32 11
  %opmode = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info47, i32 0, i32 15
  %46 = load i32, i32* %opmode, align 4, !tbaa !95
  %cmp48 = icmp eq i32 %46, -1
  br i1 %cmp48, label %if.then.50, label %if.end

if.then.50:                                       ; preds = %if.else
  %47 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call51 = call i64 @check_cmyk_color_model_comps(%struct.gx_device_s* %47) #5
  br label %if.end

if.end:                                           ; preds = %if.then.50, %if.else
  %48 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info52 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %48, i32 0, i32 11
  %opmode53 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info52, i32 0, i32 15
  %49 = load i32, i32* %opmode53, align 4, !tbaa !95
  %cmp54 = icmp eq i32 %49, 1
  br i1 %cmp54, label %if.then.56, label %if.else.145

if.then.56:                                       ; preds = %if.end
  %50 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #1
  %51 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info57 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %51, i32 0, i32 11
  %black_component = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info57, i32 0, i32 17
  %52 = load i32, i32* %black_component, align 4, !tbaa !96
  store i32 %52, i32* %k, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.142, %if.then.56
  %53 = load i32, i32* %i, align 4, !tbaa !5
  %54 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp59 = icmp slt i32 %53, %54
  br i1 %cmp59, label %for.body.61, label %for.end.144

for.body.61:                                      ; preds = %for.cond.58
  %55 = load i32, i32* %i, align 4, !tbaa !5
  %56 = load i32, i32* %k, align 4, !tbaa !5
  %cmp62 = icmp eq i32 %55, %56
  br i1 %cmp62, label %if.then.64, label %if.else.128

if.then.64:                                       ; preds = %for.body.61
  %57 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom65 = sext i32 %57 to i64
  %58 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer66 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %58, i32 0, i32 47
  %arrayidx67 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer66, i32 0, i64 %idxprom65
  %59 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx67, align 8, !tbaa !1
  %proc68 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %59, i32 0, i32 1
  %60 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc68, align 8, !tbaa !90
  %cmp69 = icmp eq float (double, %struct.gx_transfer_map_s*)* %60, @gs_identity_transfer
  br i1 %cmp69, label %cond.true.71, label %cond.false.77

cond.true.71:                                     ; preds = %if.then.64
  %61 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom72 = sext i32 %61 to i64
  %arrayidx73 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom72
  %62 = load i16, i16* %arrayidx73, align 2, !tbaa !34
  %conv74 = sext i16 %62 to i32
  %sub = sub nsw i32 32760, %conv74
  %conv75 = trunc i32 %sub to i16
  %conv76 = sext i16 %conv75 to i32
  br label %cond.end.90

cond.false.77:                                    ; preds = %if.then.64
  %63 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom78 = sext i32 %63 to i64
  %arrayidx79 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom78
  %64 = load i16, i16* %arrayidx79, align 2, !tbaa !34
  %conv80 = sext i16 %64 to i32
  %sub81 = sub nsw i32 32760, %conv80
  %conv82 = trunc i32 %sub81 to i16
  %65 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom83 = sext i32 %65 to i64
  %66 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer84 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %66, i32 0, i32 47
  %arrayidx85 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer84, i32 0, i64 %idxprom83
  %67 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx85, align 8, !tbaa !1
  %values86 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %67, i32 0, i32 4
  %arrayidx87 = getelementptr inbounds [256 x i16], [256 x i16]* %values86, i32 0, i64 0
  %call88 = call signext i16 @gx_color_frac_map(i16 signext %conv82, i16* %arrayidx87) #5
  %conv89 = sext i16 %call88 to i32
  br label %cond.end.90

cond.end.90:                                      ; preds = %cond.false.77, %cond.true.71
  %cond91 = phi i32 [ %conv76, %cond.true.71 ], [ %conv89, %cond.false.77 ]
  %sub92 = sub nsw i32 32760, %cond91
  %shl93 = shl i32 %sub92, 1
  %68 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom94 = sext i32 %68 to i64
  %69 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer95 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %69, i32 0, i32 47
  %arrayidx96 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer95, i32 0, i64 %idxprom94
  %70 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx96, align 8, !tbaa !1
  %proc97 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %70, i32 0, i32 1
  %71 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc97, align 8, !tbaa !90
  %cmp98 = icmp eq float (double, %struct.gx_transfer_map_s*)* %71, @gs_identity_transfer
  br i1 %cmp98, label %cond.true.100, label %cond.false.107

cond.true.100:                                    ; preds = %cond.end.90
  %72 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom101 = sext i32 %72 to i64
  %arrayidx102 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom101
  %73 = load i16, i16* %arrayidx102, align 2, !tbaa !34
  %conv103 = sext i16 %73 to i32
  %sub104 = sub nsw i32 32760, %conv103
  %conv105 = trunc i32 %sub104 to i16
  %conv106 = sext i16 %conv105 to i32
  br label %cond.end.120

cond.false.107:                                   ; preds = %cond.end.90
  %74 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom108 = sext i32 %74 to i64
  %arrayidx109 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom108
  %75 = load i16, i16* %arrayidx109, align 2, !tbaa !34
  %conv110 = sext i16 %75 to i32
  %sub111 = sub nsw i32 32760, %conv110
  %conv112 = trunc i32 %sub111 to i16
  %76 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom113 = sext i32 %76 to i64
  %77 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer114 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %77, i32 0, i32 47
  %arrayidx115 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer114, i32 0, i64 %idxprom113
  %78 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx115, align 8, !tbaa !1
  %values116 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %78, i32 0, i32 4
  %arrayidx117 = getelementptr inbounds [256 x i16], [256 x i16]* %values116, i32 0, i64 0
  %call118 = call signext i16 @gx_color_frac_map(i16 signext %conv112, i16* %arrayidx117) #5
  %conv119 = sext i16 %call118 to i32
  br label %cond.end.120

cond.end.120:                                     ; preds = %cond.false.107, %cond.true.100
  %cond121 = phi i32 [ %conv106, %cond.true.100 ], [ %conv119, %cond.false.107 ]
  %sub122 = sub nsw i32 32760, %cond121
  %shr123 = ashr i32 %sub122, 11
  %add124 = add nsw i32 %shl93, %shr123
  %conv125 = trunc i32 %add124 to i16
  %79 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom126 = sext i32 %79 to i64
  %arrayidx127 = getelementptr inbounds [64 x i16], [64 x i16]* %cv, i32 0, i64 %idxprom126
  store i16 %conv125, i16* %arrayidx127, align 2, !tbaa !34
  br label %if.end.141

if.else.128:                                      ; preds = %for.body.61
  %80 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom129 = sext i32 %80 to i64
  %arrayidx130 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom129
  %81 = load i16, i16* %arrayidx130, align 2, !tbaa !34
  %conv131 = sext i16 %81 to i32
  %shl132 = shl i32 %conv131, 1
  %82 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom133 = sext i32 %82 to i64
  %arrayidx134 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom133
  %83 = load i16, i16* %arrayidx134, align 2, !tbaa !34
  %conv135 = sext i16 %83 to i32
  %shr136 = ashr i32 %conv135, 11
  %add137 = add nsw i32 %shl132, %shr136
  %conv138 = trunc i32 %add137 to i16
  %84 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom139 = sext i32 %84 to i64
  %arrayidx140 = getelementptr inbounds [64 x i16], [64 x i16]* %cv, i32 0, i64 %idxprom139
  store i16 %conv138, i16* %arrayidx140, align 2, !tbaa !34
  br label %if.end.141

if.end.141:                                       ; preds = %if.else.128, %cond.end.120
  br label %for.inc.142

for.inc.142:                                      ; preds = %if.end.141
  %85 = load i32, i32* %i, align 4, !tbaa !5
  %inc143 = add nsw i32 %85, 1
  store i32 %inc143, i32* %i, align 4, !tbaa !5
  br label %for.cond.58

for.end.144:                                      ; preds = %for.cond.58
  %86 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #1
  br label %if.end.217

if.else.145:                                      ; preds = %if.end
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.146

for.cond.146:                                     ; preds = %for.inc.214, %if.else.145
  %87 = load i32, i32* %i, align 4, !tbaa !5
  %88 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp147 = icmp slt i32 %87, %88
  br i1 %cmp147, label %for.body.149, label %for.end.216

for.body.149:                                     ; preds = %for.cond.146
  %89 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom150 = sext i32 %89 to i64
  %90 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer151 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %90, i32 0, i32 47
  %arrayidx152 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer151, i32 0, i64 %idxprom150
  %91 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx152, align 8, !tbaa !1
  %proc153 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %91, i32 0, i32 1
  %92 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc153, align 8, !tbaa !90
  %cmp154 = icmp eq float (double, %struct.gx_transfer_map_s*)* %92, @gs_identity_transfer
  br i1 %cmp154, label %cond.true.156, label %cond.false.163

cond.true.156:                                    ; preds = %for.body.149
  %93 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom157 = sext i32 %93 to i64
  %arrayidx158 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom157
  %94 = load i16, i16* %arrayidx158, align 2, !tbaa !34
  %conv159 = sext i16 %94 to i32
  %sub160 = sub nsw i32 32760, %conv159
  %conv161 = trunc i32 %sub160 to i16
  %conv162 = sext i16 %conv161 to i32
  br label %cond.end.176

cond.false.163:                                   ; preds = %for.body.149
  %95 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom164 = sext i32 %95 to i64
  %arrayidx165 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom164
  %96 = load i16, i16* %arrayidx165, align 2, !tbaa !34
  %conv166 = sext i16 %96 to i32
  %sub167 = sub nsw i32 32760, %conv166
  %conv168 = trunc i32 %sub167 to i16
  %97 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom169 = sext i32 %97 to i64
  %98 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer170 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %98, i32 0, i32 47
  %arrayidx171 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer170, i32 0, i64 %idxprom169
  %99 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx171, align 8, !tbaa !1
  %values172 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %99, i32 0, i32 4
  %arrayidx173 = getelementptr inbounds [256 x i16], [256 x i16]* %values172, i32 0, i64 0
  %call174 = call signext i16 @gx_color_frac_map(i16 signext %conv168, i16* %arrayidx173) #5
  %conv175 = sext i16 %call174 to i32
  br label %cond.end.176

cond.end.176:                                     ; preds = %cond.false.163, %cond.true.156
  %cond177 = phi i32 [ %conv162, %cond.true.156 ], [ %conv175, %cond.false.163 ]
  %sub178 = sub nsw i32 32760, %cond177
  %shl179 = shl i32 %sub178, 1
  %100 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom180 = sext i32 %100 to i64
  %101 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer181 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %101, i32 0, i32 47
  %arrayidx182 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer181, i32 0, i64 %idxprom180
  %102 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx182, align 8, !tbaa !1
  %proc183 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %102, i32 0, i32 1
  %103 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc183, align 8, !tbaa !90
  %cmp184 = icmp eq float (double, %struct.gx_transfer_map_s*)* %103, @gs_identity_transfer
  br i1 %cmp184, label %cond.true.186, label %cond.false.193

cond.true.186:                                    ; preds = %cond.end.176
  %104 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom187 = sext i32 %104 to i64
  %arrayidx188 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom187
  %105 = load i16, i16* %arrayidx188, align 2, !tbaa !34
  %conv189 = sext i16 %105 to i32
  %sub190 = sub nsw i32 32760, %conv189
  %conv191 = trunc i32 %sub190 to i16
  %conv192 = sext i16 %conv191 to i32
  br label %cond.end.206

cond.false.193:                                   ; preds = %cond.end.176
  %106 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom194 = sext i32 %106 to i64
  %arrayidx195 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom194
  %107 = load i16, i16* %arrayidx195, align 2, !tbaa !34
  %conv196 = sext i16 %107 to i32
  %sub197 = sub nsw i32 32760, %conv196
  %conv198 = trunc i32 %sub197 to i16
  %108 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom199 = sext i32 %108 to i64
  %109 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer200 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %109, i32 0, i32 47
  %arrayidx201 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer200, i32 0, i64 %idxprom199
  %110 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx201, align 8, !tbaa !1
  %values202 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %110, i32 0, i32 4
  %arrayidx203 = getelementptr inbounds [256 x i16], [256 x i16]* %values202, i32 0, i64 0
  %call204 = call signext i16 @gx_color_frac_map(i16 signext %conv198, i16* %arrayidx203) #5
  %conv205 = sext i16 %call204 to i32
  br label %cond.end.206

cond.end.206:                                     ; preds = %cond.false.193, %cond.true.186
  %cond207 = phi i32 [ %conv192, %cond.true.186 ], [ %conv205, %cond.false.193 ]
  %sub208 = sub nsw i32 32760, %cond207
  %shr209 = ashr i32 %sub208, 11
  %add210 = add nsw i32 %shl179, %shr209
  %conv211 = trunc i32 %add210 to i16
  %111 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom212 = sext i32 %111 to i64
  %arrayidx213 = getelementptr inbounds [64 x i16], [64 x i16]* %cv, i32 0, i64 %idxprom212
  store i16 %conv211, i16* %arrayidx213, align 2, !tbaa !34
  br label %for.inc.214

for.inc.214:                                      ; preds = %cond.end.206
  %112 = load i32, i32* %i, align 4, !tbaa !5
  %inc215 = add nsw i32 %112, 1
  store i32 %inc215, i32* %i, align 4, !tbaa !5
  br label %for.cond.146

for.end.216:                                      ; preds = %for.cond.146
  br label %if.end.217

if.end.217:                                       ; preds = %for.end.216, %for.end.144
  br label %if.end.218

if.end.218:                                       ; preds = %if.end.217, %for.end.46
  %113 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs219 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %113, i32 0, i32 42
  %encode_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs219, i32 0, i32 51
  %encode_color220 = bitcast {}** %encode_color to i64 (%struct.gx_device_s*, i16*)**
  %114 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color220, align 8, !tbaa !99
  %115 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay221 = getelementptr inbounds [64 x i16], [64 x i16]* %cv, i32 0, i32 0
  %call222 = call i64 %114(%struct.gx_device_s* %115, i16* %arraydecay221) #5
  store i64 %call222, i64* %color, align 8, !tbaa !32
  %116 = load i64, i64* %color, align 8, !tbaa !32
  %cmp223 = icmp ne i64 %116, -1
  br i1 %cmp223, label %if.then.225, label %if.else.226

if.then.225:                                      ; preds = %if.end.218
  %117 = load i64, i64* %color, align 8, !tbaa !32
  %118 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %118, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  store i64 %117, i64* %pure, align 8, !tbaa !32
  %119 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %119, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_pure, %struct.gx_device_color_type_s** %type, align 8, !tbaa !7
  br label %if.end.227

if.else.226:                                      ; preds = %if.end.218
  %120 = load i16, i16* %gray.addr, align 2, !tbaa !34
  %121 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %122 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %123 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %124 = load i32, i32* %select.addr, align 4, !tbaa !33
  call void @cmap_gray_halftoned(i16 signext %120, %struct.gx_device_color_s* %121, %struct.gs_imager_state_s* %122, %struct.gx_device_s* %123, i32 %124) #5
  br label %if.end.227

if.end.227:                                       ; preds = %if.else.226, %if.then.225
  %125 = bitcast i64* %color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %125) #1
  %126 = bitcast [64 x i16]* %cv to i8*
  call void @llvm.lifetime.end(i64 128, i8* %126) #1
  %127 = bitcast [64 x i16]* %cm_comps to i8*
  call void @llvm.lifetime.end(i64 128, i8* %127) #1
  %128 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %128) #1
  %129 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %129) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cmap_rgb_direct(i16 signext %r, i16 signext %g, i16 signext %b, %struct.gx_device_color_s* %pdc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, i32 %select) #0 {
entry:
  %r.addr = alloca i16, align 2
  %g.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %select.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %ncomps = alloca i32, align 4
  %cm_comps = alloca [64 x i16], align 16
  %cv = alloca [64 x i16], align 16
  %color = alloca i64, align 8
  store i16 %r, i16* %r.addr, align 2, !tbaa !34
  store i16 %g, i16* %g.addr, align 2, !tbaa !34
  store i16 %b, i16* %b.addr, align 2, !tbaa !34
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %select, i32* %select.addr, align 4, !tbaa !33
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %3 = load i32, i32* %num_components, align 4, !tbaa !20
  store i32 %3, i32* %ncomps, align 4, !tbaa !5
  %4 = bitcast [64 x i16]* %cm_comps to i8*
  call void @llvm.lifetime.start(i64 128, i8* %4) #1
  %5 = bitcast [64 x i16]* %cv to i8*
  call void @llvm.lifetime.start(i64 128, i8* %5) #1
  %6 = bitcast i64* %color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4, !tbaa !5
  %8 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom
  store i16 0, i16* %arrayidx, align 2, !tbaa !34
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 42
  %get_color_mapping_procs = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 49
  %12 = load %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)** %get_color_mapping_procs, align 8, !tbaa !102
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call %struct.gx_cm_color_map_procs_s* %12(%struct.gx_device_s* %13) #5
  %map_rgb = getelementptr inbounds %struct.gx_cm_color_map_procs_s, %struct.gx_cm_color_map_procs_s* %call, i32 0, i32 1
  %14 = load void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)** %map_rgb, align 8, !tbaa !106
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %16 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %17 = load i16, i16* %r.addr, align 2, !tbaa !34
  %18 = load i16, i16* %g.addr, align 2, !tbaa !34
  %19 = load i16, i16* %b.addr, align 2, !tbaa !34
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i32 0
  call void %14(%struct.gx_device_s* %15, %struct.gs_imager_state_s* %16, i16 signext %17, i16 signext %18, i16 signext %19, i16* %arraydecay) #5
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 11
  %polarity = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info1, i32 0, i32 2
  %21 = load i32, i32* %polarity, align 4, !tbaa !94
  %cmp2 = icmp eq i32 %21, 1
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.44, %if.then
  %22 = load i32, i32* %i, align 4, !tbaa !5
  %23 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %22, %23
  br i1 %cmp4, label %for.body.5, label %for.end.46

for.body.5:                                       ; preds = %for.cond.3
  %24 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom6 = sext i32 %24 to i64
  %25 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %25, i32 0, i32 47
  %arrayidx7 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer, i32 0, i64 %idxprom6
  %26 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx7, align 8, !tbaa !1
  %proc = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %26, i32 0, i32 1
  %27 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc, align 8, !tbaa !90
  %cmp8 = icmp eq float (double, %struct.gx_transfer_map_s*)* %27, @gs_identity_transfer
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.5
  %28 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom9 = sext i32 %28 to i64
  %arrayidx10 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom9
  %29 = load i16, i16* %arrayidx10, align 2, !tbaa !34
  %conv = sext i16 %29 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.body.5
  %30 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %30 to i64
  %arrayidx12 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom11
  %31 = load i16, i16* %arrayidx12, align 2, !tbaa !34
  %32 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom13 = sext i32 %32 to i64
  %33 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer14 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %33, i32 0, i32 47
  %arrayidx15 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer14, i32 0, i64 %idxprom13
  %34 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx15, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %34, i32 0, i32 4
  %arrayidx16 = getelementptr inbounds [256 x i16], [256 x i16]* %values, i32 0, i64 0
  %call17 = call signext i16 @gx_color_frac_map(i16 signext %31, i16* %arrayidx16) #5
  %conv18 = sext i16 %call17 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv18, %cond.false ]
  %shl = shl i32 %cond, 1
  %35 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom19 = sext i32 %35 to i64
  %36 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer20 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %36, i32 0, i32 47
  %arrayidx21 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer20, i32 0, i64 %idxprom19
  %37 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx21, align 8, !tbaa !1
  %proc22 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %37, i32 0, i32 1
  %38 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc22, align 8, !tbaa !90
  %cmp23 = icmp eq float (double, %struct.gx_transfer_map_s*)* %38, @gs_identity_transfer
  br i1 %cmp23, label %cond.true.25, label %cond.false.29

cond.true.25:                                     ; preds = %cond.end
  %39 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom26 = sext i32 %39 to i64
  %arrayidx27 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom26
  %40 = load i16, i16* %arrayidx27, align 2, !tbaa !34
  %conv28 = sext i16 %40 to i32
  br label %cond.end.39

cond.false.29:                                    ; preds = %cond.end
  %41 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom30 = sext i32 %41 to i64
  %arrayidx31 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom30
  %42 = load i16, i16* %arrayidx31, align 2, !tbaa !34
  %43 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom32 = sext i32 %43 to i64
  %44 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer33 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %44, i32 0, i32 47
  %arrayidx34 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer33, i32 0, i64 %idxprom32
  %45 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx34, align 8, !tbaa !1
  %values35 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %45, i32 0, i32 4
  %arrayidx36 = getelementptr inbounds [256 x i16], [256 x i16]* %values35, i32 0, i64 0
  %call37 = call signext i16 @gx_color_frac_map(i16 signext %42, i16* %arrayidx36) #5
  %conv38 = sext i16 %call37 to i32
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.false.29, %cond.true.25
  %cond40 = phi i32 [ %conv28, %cond.true.25 ], [ %conv38, %cond.false.29 ]
  %shr = ashr i32 %cond40, 11
  %add = add nsw i32 %shl, %shr
  %conv41 = trunc i32 %add to i16
  %46 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom42 = sext i32 %46 to i64
  %arrayidx43 = getelementptr inbounds [64 x i16], [64 x i16]* %cv, i32 0, i64 %idxprom42
  store i16 %conv41, i16* %arrayidx43, align 2, !tbaa !34
  br label %for.inc.44

for.inc.44:                                       ; preds = %cond.end.39
  %47 = load i32, i32* %i, align 4, !tbaa !5
  %inc45 = add nsw i32 %47, 1
  store i32 %inc45, i32* %i, align 4, !tbaa !5
  br label %for.cond.3

for.end.46:                                       ; preds = %for.cond.3
  br label %if.end

if.else:                                          ; preds = %for.end
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc.114, %if.else
  %48 = load i32, i32* %i, align 4, !tbaa !5
  %49 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp48 = icmp slt i32 %48, %49
  br i1 %cmp48, label %for.body.50, label %for.end.116

for.body.50:                                      ; preds = %for.cond.47
  %50 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom51 = sext i32 %50 to i64
  %51 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer52 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %51, i32 0, i32 47
  %arrayidx53 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer52, i32 0, i64 %idxprom51
  %52 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx53, align 8, !tbaa !1
  %proc54 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %52, i32 0, i32 1
  %53 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc54, align 8, !tbaa !90
  %cmp55 = icmp eq float (double, %struct.gx_transfer_map_s*)* %53, @gs_identity_transfer
  br i1 %cmp55, label %cond.true.57, label %cond.false.63

cond.true.57:                                     ; preds = %for.body.50
  %54 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom58 = sext i32 %54 to i64
  %arrayidx59 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom58
  %55 = load i16, i16* %arrayidx59, align 2, !tbaa !34
  %conv60 = sext i16 %55 to i32
  %sub = sub nsw i32 32760, %conv60
  %conv61 = trunc i32 %sub to i16
  %conv62 = sext i16 %conv61 to i32
  br label %cond.end.76

cond.false.63:                                    ; preds = %for.body.50
  %56 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom64 = sext i32 %56 to i64
  %arrayidx65 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom64
  %57 = load i16, i16* %arrayidx65, align 2, !tbaa !34
  %conv66 = sext i16 %57 to i32
  %sub67 = sub nsw i32 32760, %conv66
  %conv68 = trunc i32 %sub67 to i16
  %58 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom69 = sext i32 %58 to i64
  %59 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer70 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %59, i32 0, i32 47
  %arrayidx71 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer70, i32 0, i64 %idxprom69
  %60 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx71, align 8, !tbaa !1
  %values72 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %60, i32 0, i32 4
  %arrayidx73 = getelementptr inbounds [256 x i16], [256 x i16]* %values72, i32 0, i64 0
  %call74 = call signext i16 @gx_color_frac_map(i16 signext %conv68, i16* %arrayidx73) #5
  %conv75 = sext i16 %call74 to i32
  br label %cond.end.76

cond.end.76:                                      ; preds = %cond.false.63, %cond.true.57
  %cond77 = phi i32 [ %conv62, %cond.true.57 ], [ %conv75, %cond.false.63 ]
  %sub78 = sub nsw i32 32760, %cond77
  %shl79 = shl i32 %sub78, 1
  %61 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom80 = sext i32 %61 to i64
  %62 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer81 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %62, i32 0, i32 47
  %arrayidx82 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer81, i32 0, i64 %idxprom80
  %63 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx82, align 8, !tbaa !1
  %proc83 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %63, i32 0, i32 1
  %64 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc83, align 8, !tbaa !90
  %cmp84 = icmp eq float (double, %struct.gx_transfer_map_s*)* %64, @gs_identity_transfer
  br i1 %cmp84, label %cond.true.86, label %cond.false.93

cond.true.86:                                     ; preds = %cond.end.76
  %65 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom87 = sext i32 %65 to i64
  %arrayidx88 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom87
  %66 = load i16, i16* %arrayidx88, align 2, !tbaa !34
  %conv89 = sext i16 %66 to i32
  %sub90 = sub nsw i32 32760, %conv89
  %conv91 = trunc i32 %sub90 to i16
  %conv92 = sext i16 %conv91 to i32
  br label %cond.end.106

cond.false.93:                                    ; preds = %cond.end.76
  %67 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom94 = sext i32 %67 to i64
  %arrayidx95 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom94
  %68 = load i16, i16* %arrayidx95, align 2, !tbaa !34
  %conv96 = sext i16 %68 to i32
  %sub97 = sub nsw i32 32760, %conv96
  %conv98 = trunc i32 %sub97 to i16
  %69 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom99 = sext i32 %69 to i64
  %70 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer100 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %70, i32 0, i32 47
  %arrayidx101 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer100, i32 0, i64 %idxprom99
  %71 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx101, align 8, !tbaa !1
  %values102 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %71, i32 0, i32 4
  %arrayidx103 = getelementptr inbounds [256 x i16], [256 x i16]* %values102, i32 0, i64 0
  %call104 = call signext i16 @gx_color_frac_map(i16 signext %conv98, i16* %arrayidx103) #5
  %conv105 = sext i16 %call104 to i32
  br label %cond.end.106

cond.end.106:                                     ; preds = %cond.false.93, %cond.true.86
  %cond107 = phi i32 [ %conv92, %cond.true.86 ], [ %conv105, %cond.false.93 ]
  %sub108 = sub nsw i32 32760, %cond107
  %shr109 = ashr i32 %sub108, 11
  %add110 = add nsw i32 %shl79, %shr109
  %conv111 = trunc i32 %add110 to i16
  %72 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom112 = sext i32 %72 to i64
  %arrayidx113 = getelementptr inbounds [64 x i16], [64 x i16]* %cv, i32 0, i64 %idxprom112
  store i16 %conv111, i16* %arrayidx113, align 2, !tbaa !34
  br label %for.inc.114

for.inc.114:                                      ; preds = %cond.end.106
  %73 = load i32, i32* %i, align 4, !tbaa !5
  %inc115 = add nsw i32 %73, 1
  store i32 %inc115, i32* %i, align 4, !tbaa !5
  br label %for.cond.47

for.end.116:                                      ; preds = %for.cond.47
  br label %if.end

if.end:                                           ; preds = %for.end.116, %for.end.46
  %74 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs117 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %74, i32 0, i32 42
  %encode_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs117, i32 0, i32 51
  %encode_color118 = bitcast {}** %encode_color to i64 (%struct.gx_device_s*, i16*)**
  %75 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color118, align 8, !tbaa !99
  %76 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay119 = getelementptr inbounds [64 x i16], [64 x i16]* %cv, i32 0, i32 0
  %call120 = call i64 %75(%struct.gx_device_s* %76, i16* %arraydecay119) #5
  store i64 %call120, i64* %color, align 8, !tbaa !32
  %77 = load i64, i64* %color, align 8, !tbaa !32
  %cmp121 = icmp ne i64 %77, -1
  br i1 %cmp121, label %if.then.123, label %if.else.124

if.then.123:                                      ; preds = %if.end
  %78 = load i64, i64* %color, align 8, !tbaa !32
  %79 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %79, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  store i64 %78, i64* %pure, align 8, !tbaa !32
  %80 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %80, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_pure, %struct.gx_device_color_type_s** %type, align 8, !tbaa !7
  br label %if.end.125

if.else.124:                                      ; preds = %if.end
  %81 = load i16, i16* %r.addr, align 2, !tbaa !34
  %82 = load i16, i16* %g.addr, align 2, !tbaa !34
  %83 = load i16, i16* %b.addr, align 2, !tbaa !34
  %84 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %85 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %86 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %87 = load i32, i32* %select.addr, align 4, !tbaa !33
  call void @cmap_rgb_halftoned(i16 signext %81, i16 signext %82, i16 signext %83, %struct.gx_device_color_s* %84, %struct.gs_imager_state_s* %85, %struct.gx_device_s* %86, i32 %87) #5
  br label %if.end.125

if.end.125:                                       ; preds = %if.else.124, %if.then.123
  %88 = bitcast i64* %color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #1
  %89 = bitcast [64 x i16]* %cv to i8*
  call void @llvm.lifetime.end(i64 128, i8* %89) #1
  %90 = bitcast [64 x i16]* %cm_comps to i8*
  call void @llvm.lifetime.end(i64 128, i8* %90) #1
  %91 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #1
  %92 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cmap_cmyk_direct(i16 signext %c, i16 signext %m, i16 signext %y, i16 signext %k, %struct.gx_device_color_s* %pdc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, i32 %select, %struct.gs_color_space_s* %source_pcs) #0 {
entry:
  %c.addr = alloca i16, align 2
  %m.addr = alloca i16, align 2
  %y.addr = alloca i16, align 2
  %k.addr = alloca i16, align 2
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %select.addr = alloca i32, align 4
  %source_pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %i = alloca i32, align 4
  %ncomps = alloca i32, align 4
  %cm_comps = alloca [64 x i16], align 16
  %cv = alloca [64 x i16], align 16
  %color = alloca i64, align 8
  %black_index = alloca i32, align 4
  %dev_profile = alloca %struct.cmm_dev_profile_s*, align 8
  %src_space = alloca i32, align 4
  %code = alloca i32, align 4
  %gray_to_k = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i16 %c, i16* %c.addr, align 2, !tbaa !34
  store i16 %m, i16* %m.addr, align 2, !tbaa !34
  store i16 %y, i16* %y.addr, align 2, !tbaa !34
  store i16 %k, i16* %k.addr, align 2, !tbaa !34
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %select, i32* %select.addr, align 4, !tbaa !33
  store %struct.gs_color_space_s* %source_pcs, %struct.gs_color_space_s** %source_pcs.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %3 = load i32, i32* %num_components, align 4, !tbaa !20
  store i32 %3, i32* %ncomps, align 4, !tbaa !5
  %4 = bitcast [64 x i16]* %cm_comps to i8*
  call void @llvm.lifetime.start(i64 128, i8* %4) #1
  %5 = bitcast [64 x i16]* %cv to i8*
  call void @llvm.lifetime.start(i64 128, i8* %5) #1
  %6 = bitcast i64* %color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %black_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i32* %src_space to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 0, i32* %src_space, align 4, !tbaa !33
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %gray_to_k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, i32* %i, align 4, !tbaa !5
  %13 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp = icmp slt i32 %12, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom
  store i16 0, i16* %arrayidx, align 2, !tbaa !34
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %16, i32 0, i32 42
  %get_color_mapping_procs = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 49
  %17 = load %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)** %get_color_mapping_procs, align 8, !tbaa !102
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call %struct.gx_cm_color_map_procs_s* %17(%struct.gx_device_s* %18) #5
  %map_cmyk = getelementptr inbounds %struct.gx_cm_color_map_procs_s, %struct.gx_cm_color_map_procs_s* %call, i32 0, i32 2
  %19 = load void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)** %map_cmyk, align 8, !tbaa !107
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %21 = load i16, i16* %c.addr, align 2, !tbaa !34
  %22 = load i16, i16* %m.addr, align 2, !tbaa !34
  %23 = load i16, i16* %y.addr, align 2, !tbaa !34
  %24 = load i16, i16* %k.addr, align 2, !tbaa !34
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i32 0
  call void %19(%struct.gx_device_s* %20, i16 signext %21, i16 signext %22, i16 signext %23, i16 signext %24, i16* %arraydecay) #5
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %25, i32 0, i32 11
  %polarity = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info1, i32 0, i32 2
  %26 = load i32, i32* %polarity, align 4, !tbaa !94
  %cmp2 = icmp eq i32 %26, 1
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.22, %if.then
  %27 = load i32, i32* %i, align 4, !tbaa !5
  %28 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %27, %28
  br i1 %cmp4, label %for.body.5, label %for.end.24

for.body.5:                                       ; preds = %for.cond.3
  %29 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom6 = sext i32 %29 to i64
  %30 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %30, i32 0, i32 47
  %arrayidx7 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer, i32 0, i64 %idxprom6
  %31 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx7, align 8, !tbaa !1
  %proc = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %31, i32 0, i32 1
  %32 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc, align 8, !tbaa !90
  %cmp8 = icmp eq float (double, %struct.gx_transfer_map_s*)* %32, @gs_identity_transfer
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.5
  %33 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom9 = sext i32 %33 to i64
  %arrayidx10 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom9
  %34 = load i16, i16* %arrayidx10, align 2, !tbaa !34
  %conv = sext i16 %34 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.body.5
  %35 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %35 to i64
  %arrayidx12 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom11
  %36 = load i16, i16* %arrayidx12, align 2, !tbaa !34
  %37 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom13 = sext i32 %37 to i64
  %38 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer14 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %38, i32 0, i32 47
  %arrayidx15 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer14, i32 0, i64 %idxprom13
  %39 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx15, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %39, i32 0, i32 4
  %arrayidx16 = getelementptr inbounds [256 x i16], [256 x i16]* %values, i32 0, i64 0
  %call17 = call signext i16 @gx_color_frac_map(i16 signext %36, i16* %arrayidx16) #5
  %conv18 = sext i16 %call17 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv18, %cond.false ]
  %conv19 = trunc i32 %cond to i16
  %40 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom20 = sext i32 %40 to i64
  %arrayidx21 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom20
  store i16 %conv19, i16* %arrayidx21, align 2, !tbaa !34
  br label %for.inc.22

for.inc.22:                                       ; preds = %cond.end
  %41 = load i32, i32* %i, align 4, !tbaa !5
  %inc23 = add nsw i32 %41, 1
  store i32 %inc23, i32* %i, align 4, !tbaa !5
  br label %for.cond.3

for.end.24:                                       ; preds = %for.cond.3
  br label %if.end.124

if.else:                                          ; preds = %for.end
  %42 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs25 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %42, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs25, i32 0, i32 67
  %43 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !100
  %44 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call26 = call i32 %43(%struct.gx_device_s* %44, %struct.cmm_dev_profile_s** %dev_profile) #5
  store i32 %call26, i32* %code, align 4, !tbaa !5
  %45 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %devicegraytok = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %45, i32 0, i32 5
  %46 = load i32, i32* %devicegraytok, align 4, !tbaa !108
  store i32 %46, i32* %gray_to_k, align 4, !tbaa !5
  %47 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %source_pcs.addr, align 8, !tbaa !1
  %cmp27 = icmp ne %struct.gs_color_space_s* %47, null
  br i1 %cmp27, label %land.lhs.true, label %if.else.33

land.lhs.true:                                    ; preds = %if.else
  %48 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %source_pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %48, i32 0, i32 6
  %49 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !82
  %cmp29 = icmp ne %struct.cmm_profile_s* %49, null
  br i1 %cmp29, label %if.then.31, label %if.else.33

if.then.31:                                       ; preds = %land.lhs.true
  %50 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %source_pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data32 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %50, i32 0, i32 6
  %51 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data32, align 8, !tbaa !82
  %data_cs = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %51, i32 0, i32 5
  %52 = load i32, i32* %data_cs, align 4, !tbaa !110
  store i32 %52, i32* %src_space, align 4, !tbaa !33
  br label %if.end.43

if.else.33:                                       ; preds = %land.lhs.true, %if.else
  %53 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %source_pcs.addr, align 8, !tbaa !1
  %cmp34 = icmp ne %struct.gs_color_space_s* %53, null
  br i1 %cmp34, label %land.lhs.true.36, label %if.end

land.lhs.true.36:                                 ; preds = %if.else.33
  %54 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %source_pcs.addr, align 8, !tbaa !1
  %icc_equivalent = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %54, i32 0, i32 4
  %55 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent, align 8, !tbaa !111
  %cmp37 = icmp ne %struct.gs_color_space_s* %55, null
  br i1 %cmp37, label %if.then.39, label %if.end

if.then.39:                                       ; preds = %land.lhs.true.36
  %56 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %source_pcs.addr, align 8, !tbaa !1
  %icc_equivalent40 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %56, i32 0, i32 4
  %57 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent40, align 8, !tbaa !111
  %cmm_icc_profile_data41 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %57, i32 0, i32 6
  %58 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data41, align 8, !tbaa !82
  %data_cs42 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %58, i32 0, i32 5
  %59 = load i32, i32* %data_cs42, align 4, !tbaa !110
  store i32 %59, i32* %src_space, align 4, !tbaa !33
  br label %if.end

if.end:                                           ; preds = %if.then.39, %land.lhs.true.36, %if.else.33
  br label %if.end.43

if.end.43:                                        ; preds = %if.end, %if.then.31
  %60 = load i32, i32* %src_space, align 4, !tbaa !33
  %cmp44 = icmp eq i32 %60, 1
  br i1 %cmp44, label %land.lhs.true.46, label %if.else.83

land.lhs.true.46:                                 ; preds = %if.end.43
  %61 = load i32, i32* %gray_to_k, align 4, !tbaa !5
  %tobool = icmp ne i32 %61, 0
  br i1 %tobool, label %if.then.47, label %if.else.83

if.then.47:                                       ; preds = %land.lhs.true.46
  %62 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs48 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %62, i32 0, i32 42
  %get_color_comp_index = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs48, i32 0, i32 50
  %63 = load i32 (%struct.gx_device_s*, i8*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32)** %get_color_comp_index, align 8, !tbaa !112
  %64 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call49 = call i64 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0)) #6
  %conv50 = trunc i64 %call49 to i32
  %call51 = call i32 %63(%struct.gx_device_s* %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 %conv50, i32 1) #5
  store i32 %call51, i32* %black_index, align 4, !tbaa !5
  %65 = load i32, i32* %black_index, align 4, !tbaa !5
  %idxprom52 = sext i32 %65 to i64
  %66 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer53 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %66, i32 0, i32 47
  %arrayidx54 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer53, i32 0, i64 %idxprom52
  %67 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx54, align 8, !tbaa !1
  %proc55 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %67, i32 0, i32 1
  %68 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc55, align 8, !tbaa !90
  %cmp56 = icmp eq float (double, %struct.gx_transfer_map_s*)* %68, @gs_identity_transfer
  br i1 %cmp56, label %cond.true.58, label %cond.false.64

cond.true.58:                                     ; preds = %if.then.47
  %69 = load i32, i32* %black_index, align 4, !tbaa !5
  %idxprom59 = sext i32 %69 to i64
  %arrayidx60 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom59
  %70 = load i16, i16* %arrayidx60, align 2, !tbaa !34
  %conv61 = sext i16 %70 to i32
  %sub = sub nsw i32 32760, %conv61
  %conv62 = trunc i32 %sub to i16
  %conv63 = sext i16 %conv62 to i32
  br label %cond.end.77

cond.false.64:                                    ; preds = %if.then.47
  %71 = load i32, i32* %black_index, align 4, !tbaa !5
  %idxprom65 = sext i32 %71 to i64
  %arrayidx66 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom65
  %72 = load i16, i16* %arrayidx66, align 2, !tbaa !34
  %conv67 = sext i16 %72 to i32
  %sub68 = sub nsw i32 32760, %conv67
  %conv69 = trunc i32 %sub68 to i16
  %73 = load i32, i32* %black_index, align 4, !tbaa !5
  %idxprom70 = sext i32 %73 to i64
  %74 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer71 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %74, i32 0, i32 47
  %arrayidx72 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer71, i32 0, i64 %idxprom70
  %75 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx72, align 8, !tbaa !1
  %values73 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %75, i32 0, i32 4
  %arrayidx74 = getelementptr inbounds [256 x i16], [256 x i16]* %values73, i32 0, i64 0
  %call75 = call signext i16 @gx_color_frac_map(i16 signext %conv69, i16* %arrayidx74) #5
  %conv76 = sext i16 %call75 to i32
  br label %cond.end.77

cond.end.77:                                      ; preds = %cond.false.64, %cond.true.58
  %cond78 = phi i32 [ %conv63, %cond.true.58 ], [ %conv76, %cond.false.64 ]
  %sub79 = sub nsw i32 32760, %cond78
  %conv80 = trunc i32 %sub79 to i16
  %76 = load i32, i32* %black_index, align 4, !tbaa !5
  %idxprom81 = sext i32 %76 to i64
  %arrayidx82 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom81
  store i16 %conv80, i16* %arrayidx82, align 2, !tbaa !34
  br label %if.end.123

if.else.83:                                       ; preds = %land.lhs.true.46, %if.end.43
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.84

for.cond.84:                                      ; preds = %for.inc.120, %if.else.83
  %77 = load i32, i32* %i, align 4, !tbaa !5
  %78 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp85 = icmp slt i32 %77, %78
  br i1 %cmp85, label %for.body.87, label %for.end.122

for.body.87:                                      ; preds = %for.cond.84
  %79 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom88 = sext i32 %79 to i64
  %80 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer89 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %80, i32 0, i32 47
  %arrayidx90 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer89, i32 0, i64 %idxprom88
  %81 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx90, align 8, !tbaa !1
  %proc91 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %81, i32 0, i32 1
  %82 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc91, align 8, !tbaa !90
  %cmp92 = icmp eq float (double, %struct.gx_transfer_map_s*)* %82, @gs_identity_transfer
  br i1 %cmp92, label %cond.true.94, label %cond.false.101

cond.true.94:                                     ; preds = %for.body.87
  %83 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom95 = sext i32 %83 to i64
  %arrayidx96 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom95
  %84 = load i16, i16* %arrayidx96, align 2, !tbaa !34
  %conv97 = sext i16 %84 to i32
  %sub98 = sub nsw i32 32760, %conv97
  %conv99 = trunc i32 %sub98 to i16
  %conv100 = sext i16 %conv99 to i32
  br label %cond.end.114

cond.false.101:                                   ; preds = %for.body.87
  %85 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom102 = sext i32 %85 to i64
  %arrayidx103 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom102
  %86 = load i16, i16* %arrayidx103, align 2, !tbaa !34
  %conv104 = sext i16 %86 to i32
  %sub105 = sub nsw i32 32760, %conv104
  %conv106 = trunc i32 %sub105 to i16
  %87 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom107 = sext i32 %87 to i64
  %88 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer108 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %88, i32 0, i32 47
  %arrayidx109 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer108, i32 0, i64 %idxprom107
  %89 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx109, align 8, !tbaa !1
  %values110 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %89, i32 0, i32 4
  %arrayidx111 = getelementptr inbounds [256 x i16], [256 x i16]* %values110, i32 0, i64 0
  %call112 = call signext i16 @gx_color_frac_map(i16 signext %conv106, i16* %arrayidx111) #5
  %conv113 = sext i16 %call112 to i32
  br label %cond.end.114

cond.end.114:                                     ; preds = %cond.false.101, %cond.true.94
  %cond115 = phi i32 [ %conv100, %cond.true.94 ], [ %conv113, %cond.false.101 ]
  %sub116 = sub nsw i32 32760, %cond115
  %conv117 = trunc i32 %sub116 to i16
  %90 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom118 = sext i32 %90 to i64
  %arrayidx119 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom118
  store i16 %conv117, i16* %arrayidx119, align 2, !tbaa !34
  br label %for.inc.120

for.inc.120:                                      ; preds = %cond.end.114
  %91 = load i32, i32* %i, align 4, !tbaa !5
  %inc121 = add nsw i32 %91, 1
  store i32 %inc121, i32* %i, align 4, !tbaa !5
  br label %for.cond.84

for.end.122:                                      ; preds = %for.cond.84
  br label %if.end.123

if.end.123:                                       ; preds = %for.end.122, %cond.end.77
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123, %for.end.24
  %92 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info125 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %92, i32 0, i32 11
  %num_components126 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info125, i32 0, i32 1
  %93 = load i32, i32* %num_components126, align 4, !tbaa !20
  %cmp127 = icmp sgt i32 %93, 1
  br i1 %cmp127, label %cond.true.133, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.124
  %94 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info129 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %94, i32 0, i32 11
  %gray_index = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info129, i32 0, i32 4
  %95 = load i8, i8* %gray_index, align 1, !tbaa !54
  %conv130 = zext i8 %95 to i32
  %cmp131 = icmp eq i32 %conv130, 255
  br i1 %cmp131, label %cond.true.133, label %cond.false.135

cond.true.133:                                    ; preds = %lor.lhs.false, %if.end.124
  %96 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info134 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %96, i32 0, i32 11
  %max_color = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info134, i32 0, i32 6
  %97 = load i32, i32* %max_color, align 4, !tbaa !55
  br label %cond.end.137

cond.false.135:                                   ; preds = %lor.lhs.false
  %98 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info136 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %98, i32 0, i32 11
  %max_gray = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info136, i32 0, i32 5
  %99 = load i32, i32* %max_gray, align 4, !tbaa !36
  br label %cond.end.137

cond.end.137:                                     ; preds = %cond.false.135, %cond.true.133
  %cond138 = phi i32 [ %97, %cond.true.133 ], [ %99, %cond.false.135 ]
  %cmp139 = icmp ult i32 %cond138, 31
  br i1 %cmp139, label %if.then.141, label %if.end.151

if.then.141:                                      ; preds = %cond.end.137
  %arraydecay142 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i32 0
  %100 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %101 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %102 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %dev_ht = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %102, i32 0, i32 41
  %103 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht, align 8, !tbaa !97
  %104 = load i32, i32* %select.addr, align 4, !tbaa !33
  %idxprom143 = sext i32 %104 to i64
  %105 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %screen_phase = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %105, i32 0, i32 40
  %arrayidx144 = getelementptr inbounds [2 x %struct.gs_int_point_s], [2 x %struct.gs_int_point_s]* %screen_phase, i32 0, i64 %idxprom143
  %call145 = call i32 @gx_render_device_DeviceN(i16* %arraydecay142, %struct.gx_device_color_s* %100, %struct.gx_device_s* %101, %struct.gx_device_halftone_s* %103, %struct.gs_int_point_s* %arrayidx144) #5
  %cmp146 = icmp eq i32 %call145, 1
  br i1 %cmp146, label %if.then.148, label %if.end.150

if.then.148:                                      ; preds = %if.then.141
  %106 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %106, i32 0, i32 0
  %107 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !7
  %load = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %107, i32 0, i32 4
  %108 = load i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %load, align 8, !tbaa !98
  %109 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %110 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %111 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %112 = load i32, i32* %select.addr, align 4, !tbaa !33
  %call149 = call i32 %108(%struct.gx_device_color_s* %109, %struct.gs_imager_state_s* %110, %struct.gx_device_s* %111, i32 %112) #5
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.148, %if.then.141
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.151:                                       ; preds = %cond.end.137
  %113 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs152 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %113, i32 0, i32 42
  %dev_spec_op = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs152, i32 0, i32 65
  %114 = load i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)** %dev_spec_op, align 8, !tbaa !113
  %115 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call153 = call i32 %114(%struct.gx_device_s* %115, i32 11, i8* null, i32 0) #5
  %tobool154 = icmp ne i32 %call153, 0
  br i1 %tobool154, label %if.then.155, label %if.else.174

if.then.155:                                      ; preds = %if.end.151
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.156

for.cond.156:                                     ; preds = %for.inc.170, %if.then.155
  %116 = load i32, i32* %i, align 4, !tbaa !5
  %117 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp157 = icmp slt i32 %116, %117
  br i1 %cmp157, label %for.body.159, label %for.end.172

for.body.159:                                     ; preds = %for.cond.156
  %118 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom160 = sext i32 %118 to i64
  %arrayidx161 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom160
  %119 = load i16, i16* %arrayidx161, align 2, !tbaa !34
  %conv162 = sext i16 %119 to i32
  %shl = shl i32 %conv162, 1
  %120 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom163 = sext i32 %120 to i64
  %arrayidx164 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom163
  %121 = load i16, i16* %arrayidx164, align 2, !tbaa !34
  %conv165 = sext i16 %121 to i32
  %shr = ashr i32 %conv165, 11
  %add = add nsw i32 %shl, %shr
  %conv166 = trunc i32 %add to i16
  %122 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom167 = sext i32 %122 to i64
  %123 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %123, i32 0, i32 1
  %devn = bitcast %union._c* %colors to %struct._devn*
  %values168 = getelementptr inbounds %struct._devn, %struct._devn* %devn, i32 0, i32 0
  %arrayidx169 = getelementptr inbounds [64 x i16], [64 x i16]* %values168, i32 0, i64 %idxprom167
  store i16 %conv166, i16* %arrayidx169, align 2, !tbaa !34
  br label %for.inc.170

for.inc.170:                                      ; preds = %for.body.159
  %124 = load i32, i32* %i, align 4, !tbaa !5
  %inc171 = add nsw i32 %124, 1
  store i32 %inc171, i32* %i, align 4, !tbaa !5
  br label %for.cond.156

for.end.172:                                      ; preds = %for.cond.156
  %125 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %type173 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %125, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_devn, %struct.gx_device_color_type_s** %type173, align 8, !tbaa !7
  br label %if.end.218

if.else.174:                                      ; preds = %if.end.151
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.175

for.cond.175:                                     ; preds = %for.inc.191, %if.else.174
  %126 = load i32, i32* %i, align 4, !tbaa !5
  %127 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp176 = icmp slt i32 %126, %127
  br i1 %cmp176, label %for.body.178, label %for.end.193

for.body.178:                                     ; preds = %for.cond.175
  %128 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom179 = sext i32 %128 to i64
  %arrayidx180 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom179
  %129 = load i16, i16* %arrayidx180, align 2, !tbaa !34
  %conv181 = sext i16 %129 to i32
  %shl182 = shl i32 %conv181, 1
  %130 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom183 = sext i32 %130 to i64
  %arrayidx184 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom183
  %131 = load i16, i16* %arrayidx184, align 2, !tbaa !34
  %conv185 = sext i16 %131 to i32
  %shr186 = ashr i32 %conv185, 11
  %add187 = add nsw i32 %shl182, %shr186
  %conv188 = trunc i32 %add187 to i16
  %132 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom189 = sext i32 %132 to i64
  %arrayidx190 = getelementptr inbounds [64 x i16], [64 x i16]* %cv, i32 0, i64 %idxprom189
  store i16 %conv188, i16* %arrayidx190, align 2, !tbaa !34
  br label %for.inc.191

for.inc.191:                                      ; preds = %for.body.178
  %133 = load i32, i32* %i, align 4, !tbaa !5
  %inc192 = add nsw i32 %133, 1
  store i32 %inc192, i32* %i, align 4, !tbaa !5
  br label %for.cond.175

for.end.193:                                      ; preds = %for.cond.175
  %134 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs194 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %134, i32 0, i32 42
  %encode_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs194, i32 0, i32 51
  %encode_color195 = bitcast {}** %encode_color to i64 (%struct.gx_device_s*, i16*)**
  %135 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color195, align 8, !tbaa !99
  %136 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay196 = getelementptr inbounds [64 x i16], [64 x i16]* %cv, i32 0, i32 0
  %call197 = call i64 %135(%struct.gx_device_s* %136, i16* %arraydecay196) #5
  store i64 %call197, i64* %color, align 8, !tbaa !32
  %137 = load i64, i64* %color, align 8, !tbaa !32
  %cmp198 = icmp ne i64 %137, -1
  br i1 %cmp198, label %if.then.200, label %if.else.203

if.then.200:                                      ; preds = %for.end.193
  %138 = load i64, i64* %color, align 8, !tbaa !32
  %139 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %colors201 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %139, i32 0, i32 1
  %pure = bitcast %union._c* %colors201 to i64*
  store i64 %138, i64* %pure, align 8, !tbaa !32
  %140 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %type202 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %140, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_pure, %struct.gx_device_color_type_s** %type202, align 8, !tbaa !7
  br label %if.end.217

if.else.203:                                      ; preds = %for.end.193
  %arraydecay204 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i32 0
  %141 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %142 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %143 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %dev_ht205 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %143, i32 0, i32 41
  %144 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht205, align 8, !tbaa !97
  %145 = load i32, i32* %select.addr, align 4, !tbaa !33
  %idxprom206 = sext i32 %145 to i64
  %146 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %screen_phase207 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %146, i32 0, i32 40
  %arrayidx208 = getelementptr inbounds [2 x %struct.gs_int_point_s], [2 x %struct.gs_int_point_s]* %screen_phase207, i32 0, i64 %idxprom206
  %call209 = call i32 @gx_render_device_DeviceN(i16* %arraydecay204, %struct.gx_device_color_s* %141, %struct.gx_device_s* %142, %struct.gx_device_halftone_s* %144, %struct.gs_int_point_s* %arrayidx208) #5
  %cmp210 = icmp eq i32 %call209, 1
  br i1 %cmp210, label %if.then.212, label %if.end.216

if.then.212:                                      ; preds = %if.else.203
  %147 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %type213 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %147, i32 0, i32 0
  %148 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type213, align 8, !tbaa !7
  %load214 = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %148, i32 0, i32 4
  %149 = load i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %load214, align 8, !tbaa !98
  %150 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %151 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %152 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %153 = load i32, i32* %select.addr, align 4, !tbaa !33
  %call215 = call i32 %149(%struct.gx_device_color_s* %150, %struct.gs_imager_state_s* %151, %struct.gx_device_s* %152, i32 %153) #5
  br label %if.end.216

if.end.216:                                       ; preds = %if.then.212, %if.else.203
  br label %if.end.217

if.end.217:                                       ; preds = %if.end.216, %if.then.200
  br label %if.end.218

if.end.218:                                       ; preds = %if.end.217, %for.end.172
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.218, %if.end.150
  %154 = bitcast i32* %gray_to_k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %154) #1
  %155 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %155) #1
  %156 = bitcast i32* %src_space to i8*
  call void @llvm.lifetime.end(i64 4, i8* %156) #1
  %157 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %157) #1
  %158 = bitcast i32* %black_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %158) #1
  %159 = bitcast i64* %color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %159) #1
  %160 = bitcast [64 x i16]* %cv to i8*
  call void @llvm.lifetime.end(i64 128, i8* %160) #1
  %161 = bitcast [64 x i16]* %cm_comps to i8*
  call void @llvm.lifetime.end(i64 128, i8* %161) #1
  %162 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %162) #1
  %163 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %163) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cmap_rgb_alpha_direct(i16 signext %r, i16 signext %g, i16 signext %b, i16 signext %alpha, %struct.gx_device_color_s* %pdc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, i32 %select) #0 {
entry:
  %r.addr = alloca i16, align 2
  %g.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  %alpha.addr = alloca i16, align 2
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %select.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %ncomps = alloca i32, align 4
  %cm_comps = alloca [64 x i16], align 16
  %cv_alpha = alloca i16, align 2
  %cv = alloca [64 x i16], align 16
  %color = alloca i64, align 8
  %alpha_bias = alloca i16, align 2
  store i16 %r, i16* %r.addr, align 2, !tbaa !34
  store i16 %g, i16* %g.addr, align 2, !tbaa !34
  store i16 %b, i16* %b.addr, align 2, !tbaa !34
  store i16 %alpha, i16* %alpha.addr, align 2, !tbaa !34
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %select, i32* %select.addr, align 4, !tbaa !33
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %3 = load i32, i32* %num_components, align 4, !tbaa !20
  store i32 %3, i32* %ncomps, align 4, !tbaa !5
  %4 = bitcast [64 x i16]* %cm_comps to i8*
  call void @llvm.lifetime.start(i64 128, i8* %4) #1
  %5 = bitcast i16* %cv_alpha to i8*
  call void @llvm.lifetime.start(i64 2, i8* %5) #1
  %6 = bitcast [64 x i16]* %cv to i8*
  call void @llvm.lifetime.start(i64 128, i8* %6) #1
  %7 = bitcast i64* %color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %9 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom
  store i16 0, i16* %arrayidx, align 2, !tbaa !34
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 42
  %get_color_mapping_procs = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 49
  %13 = load %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)** %get_color_mapping_procs, align 8, !tbaa !102
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call %struct.gx_cm_color_map_procs_s* %13(%struct.gx_device_s* %14) #5
  %map_rgb = getelementptr inbounds %struct.gx_cm_color_map_procs_s, %struct.gx_cm_color_map_procs_s* %call, i32 0, i32 1
  %15 = load void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)** %map_rgb, align 8, !tbaa !106
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %17 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %18 = load i16, i16* %r.addr, align 2, !tbaa !34
  %19 = load i16, i16* %g.addr, align 2, !tbaa !34
  %20 = load i16, i16* %b.addr, align 2, !tbaa !34
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i32 0
  call void %15(%struct.gx_device_s* %16, %struct.gs_imager_state_s* %17, i16 signext %18, i16 signext %19, i16 signext %20, i16* %arraydecay) #5
  %21 = load i16, i16* %alpha.addr, align 2, !tbaa !34
  %conv = sext i16 %21 to i32
  %cmp1 = icmp ne i32 %conv, 32760
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %22 = bitcast i16* %alpha_bias to i8*
  call void @llvm.lifetime.start(i64 2, i8* %22) #1
  store i16 0, i16* %alpha_bias, align 2, !tbaa !34
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.17, %if.then
  %23 = load i32, i32* %i, align 4, !tbaa !5
  %24 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %23, %24
  br i1 %cmp4, label %for.body.6, label %for.end.19

for.body.6:                                       ; preds = %for.cond.3
  %25 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom7 = sext i32 %25 to i64
  %arrayidx8 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom7
  %26 = load i16, i16* %arrayidx8, align 2, !tbaa !34
  %conv9 = sext i16 %26 to i64
  %27 = load i16, i16* %alpha.addr, align 2, !tbaa !34
  %conv10 = sext i16 %27 to i64
  %mul = mul nsw i64 %conv9, %conv10
  %conv11 = trunc i64 %mul to i16
  %conv12 = sext i16 %conv11 to i32
  %div = sdiv i32 %conv12, 32760
  %28 = load i16, i16* %alpha_bias, align 2, !tbaa !34
  %conv13 = sext i16 %28 to i32
  %add = add nsw i32 %div, %conv13
  %conv14 = trunc i32 %add to i16
  %29 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom15 = sext i32 %29 to i64
  %arrayidx16 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom15
  store i16 %conv14, i16* %arrayidx16, align 2, !tbaa !34
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.body.6
  %30 = load i32, i32* %i, align 4, !tbaa !5
  %inc18 = add nsw i32 %30, 1
  store i32 %inc18, i32* %i, align 4, !tbaa !5
  br label %for.cond.3

for.end.19:                                       ; preds = %for.cond.3
  %31 = bitcast i16* %alpha_bias to i8*
  call void @llvm.lifetime.end(i64 2, i8* %31) #1
  br label %if.end

if.end:                                           ; preds = %for.end.19, %for.end
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info20 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %32, i32 0, i32 11
  %polarity = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info20, i32 0, i32 2
  %33 = load i32, i32* %polarity, align 4, !tbaa !94
  %cmp21 = icmp eq i32 %33, 1
  br i1 %cmp21, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.end
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.69, %if.then.23
  %34 = load i32, i32* %i, align 4, !tbaa !5
  %35 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp25 = icmp slt i32 %34, %35
  br i1 %cmp25, label %for.body.27, label %for.end.71

for.body.27:                                      ; preds = %for.cond.24
  %36 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom28 = sext i32 %36 to i64
  %37 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %37, i32 0, i32 47
  %arrayidx29 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer, i32 0, i64 %idxprom28
  %38 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx29, align 8, !tbaa !1
  %proc = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %38, i32 0, i32 1
  %39 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc, align 8, !tbaa !90
  %cmp30 = icmp eq float (double, %struct.gx_transfer_map_s*)* %39, @gs_identity_transfer
  br i1 %cmp30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.27
  %40 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom32 = sext i32 %40 to i64
  %arrayidx33 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom32
  %41 = load i16, i16* %arrayidx33, align 2, !tbaa !34
  %conv34 = sext i16 %41 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.body.27
  %42 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom35 = sext i32 %42 to i64
  %arrayidx36 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom35
  %43 = load i16, i16* %arrayidx36, align 2, !tbaa !34
  %44 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom37 = sext i32 %44 to i64
  %45 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer38 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %45, i32 0, i32 47
  %arrayidx39 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer38, i32 0, i64 %idxprom37
  %46 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx39, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %46, i32 0, i32 4
  %arrayidx40 = getelementptr inbounds [256 x i16], [256 x i16]* %values, i32 0, i64 0
  %call41 = call signext i16 @gx_color_frac_map(i16 signext %43, i16* %arrayidx40) #5
  %conv42 = sext i16 %call41 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv34, %cond.true ], [ %conv42, %cond.false ]
  %shl = shl i32 %cond, 1
  %47 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom43 = sext i32 %47 to i64
  %48 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer44 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %48, i32 0, i32 47
  %arrayidx45 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer44, i32 0, i64 %idxprom43
  %49 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx45, align 8, !tbaa !1
  %proc46 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %49, i32 0, i32 1
  %50 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc46, align 8, !tbaa !90
  %cmp47 = icmp eq float (double, %struct.gx_transfer_map_s*)* %50, @gs_identity_transfer
  br i1 %cmp47, label %cond.true.49, label %cond.false.53

cond.true.49:                                     ; preds = %cond.end
  %51 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom50 = sext i32 %51 to i64
  %arrayidx51 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom50
  %52 = load i16, i16* %arrayidx51, align 2, !tbaa !34
  %conv52 = sext i16 %52 to i32
  br label %cond.end.63

cond.false.53:                                    ; preds = %cond.end
  %53 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom54 = sext i32 %53 to i64
  %arrayidx55 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom54
  %54 = load i16, i16* %arrayidx55, align 2, !tbaa !34
  %55 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom56 = sext i32 %55 to i64
  %56 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer57 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %56, i32 0, i32 47
  %arrayidx58 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer57, i32 0, i64 %idxprom56
  %57 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx58, align 8, !tbaa !1
  %values59 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %57, i32 0, i32 4
  %arrayidx60 = getelementptr inbounds [256 x i16], [256 x i16]* %values59, i32 0, i64 0
  %call61 = call signext i16 @gx_color_frac_map(i16 signext %54, i16* %arrayidx60) #5
  %conv62 = sext i16 %call61 to i32
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.53, %cond.true.49
  %cond64 = phi i32 [ %conv52, %cond.true.49 ], [ %conv62, %cond.false.53 ]
  %shr = ashr i32 %cond64, 11
  %add65 = add nsw i32 %shl, %shr
  %conv66 = trunc i32 %add65 to i16
  %58 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom67 = sext i32 %58 to i64
  %arrayidx68 = getelementptr inbounds [64 x i16], [64 x i16]* %cv, i32 0, i64 %idxprom67
  store i16 %conv66, i16* %arrayidx68, align 2, !tbaa !34
  br label %for.inc.69

for.inc.69:                                       ; preds = %cond.end.63
  %59 = load i32, i32* %i, align 4, !tbaa !5
  %inc70 = add nsw i32 %59, 1
  store i32 %inc70, i32* %i, align 4, !tbaa !5
  br label %for.cond.24

for.end.71:                                       ; preds = %for.cond.24
  br label %if.end.142

if.else:                                          ; preds = %if.end
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc.139, %if.else
  %60 = load i32, i32* %i, align 4, !tbaa !5
  %61 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp73 = icmp slt i32 %60, %61
  br i1 %cmp73, label %for.body.75, label %for.end.141

for.body.75:                                      ; preds = %for.cond.72
  %62 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom76 = sext i32 %62 to i64
  %63 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer77 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %63, i32 0, i32 47
  %arrayidx78 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer77, i32 0, i64 %idxprom76
  %64 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx78, align 8, !tbaa !1
  %proc79 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %64, i32 0, i32 1
  %65 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc79, align 8, !tbaa !90
  %cmp80 = icmp eq float (double, %struct.gx_transfer_map_s*)* %65, @gs_identity_transfer
  br i1 %cmp80, label %cond.true.82, label %cond.false.88

cond.true.82:                                     ; preds = %for.body.75
  %66 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom83 = sext i32 %66 to i64
  %arrayidx84 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom83
  %67 = load i16, i16* %arrayidx84, align 2, !tbaa !34
  %conv85 = sext i16 %67 to i32
  %sub = sub nsw i32 32760, %conv85
  %conv86 = trunc i32 %sub to i16
  %conv87 = sext i16 %conv86 to i32
  br label %cond.end.101

cond.false.88:                                    ; preds = %for.body.75
  %68 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom89 = sext i32 %68 to i64
  %arrayidx90 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom89
  %69 = load i16, i16* %arrayidx90, align 2, !tbaa !34
  %conv91 = sext i16 %69 to i32
  %sub92 = sub nsw i32 32760, %conv91
  %conv93 = trunc i32 %sub92 to i16
  %70 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom94 = sext i32 %70 to i64
  %71 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer95 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %71, i32 0, i32 47
  %arrayidx96 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer95, i32 0, i64 %idxprom94
  %72 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx96, align 8, !tbaa !1
  %values97 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %72, i32 0, i32 4
  %arrayidx98 = getelementptr inbounds [256 x i16], [256 x i16]* %values97, i32 0, i64 0
  %call99 = call signext i16 @gx_color_frac_map(i16 signext %conv93, i16* %arrayidx98) #5
  %conv100 = sext i16 %call99 to i32
  br label %cond.end.101

cond.end.101:                                     ; preds = %cond.false.88, %cond.true.82
  %cond102 = phi i32 [ %conv87, %cond.true.82 ], [ %conv100, %cond.false.88 ]
  %sub103 = sub nsw i32 32760, %cond102
  %shl104 = shl i32 %sub103, 1
  %73 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom105 = sext i32 %73 to i64
  %74 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer106 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %74, i32 0, i32 47
  %arrayidx107 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer106, i32 0, i64 %idxprom105
  %75 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx107, align 8, !tbaa !1
  %proc108 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %75, i32 0, i32 1
  %76 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc108, align 8, !tbaa !90
  %cmp109 = icmp eq float (double, %struct.gx_transfer_map_s*)* %76, @gs_identity_transfer
  br i1 %cmp109, label %cond.true.111, label %cond.false.118

cond.true.111:                                    ; preds = %cond.end.101
  %77 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom112 = sext i32 %77 to i64
  %arrayidx113 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom112
  %78 = load i16, i16* %arrayidx113, align 2, !tbaa !34
  %conv114 = sext i16 %78 to i32
  %sub115 = sub nsw i32 32760, %conv114
  %conv116 = trunc i32 %sub115 to i16
  %conv117 = sext i16 %conv116 to i32
  br label %cond.end.131

cond.false.118:                                   ; preds = %cond.end.101
  %79 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom119 = sext i32 %79 to i64
  %arrayidx120 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom119
  %80 = load i16, i16* %arrayidx120, align 2, !tbaa !34
  %conv121 = sext i16 %80 to i32
  %sub122 = sub nsw i32 32760, %conv121
  %conv123 = trunc i32 %sub122 to i16
  %81 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom124 = sext i32 %81 to i64
  %82 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer125 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %82, i32 0, i32 47
  %arrayidx126 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer125, i32 0, i64 %idxprom124
  %83 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx126, align 8, !tbaa !1
  %values127 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %83, i32 0, i32 4
  %arrayidx128 = getelementptr inbounds [256 x i16], [256 x i16]* %values127, i32 0, i64 0
  %call129 = call signext i16 @gx_color_frac_map(i16 signext %conv123, i16* %arrayidx128) #5
  %conv130 = sext i16 %call129 to i32
  br label %cond.end.131

cond.end.131:                                     ; preds = %cond.false.118, %cond.true.111
  %cond132 = phi i32 [ %conv117, %cond.true.111 ], [ %conv130, %cond.false.118 ]
  %sub133 = sub nsw i32 32760, %cond132
  %shr134 = ashr i32 %sub133, 11
  %add135 = add nsw i32 %shl104, %shr134
  %conv136 = trunc i32 %add135 to i16
  %84 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom137 = sext i32 %84 to i64
  %arrayidx138 = getelementptr inbounds [64 x i16], [64 x i16]* %cv, i32 0, i64 %idxprom137
  store i16 %conv136, i16* %arrayidx138, align 2, !tbaa !34
  br label %for.inc.139

for.inc.139:                                      ; preds = %cond.end.131
  %85 = load i32, i32* %i, align 4, !tbaa !5
  %inc140 = add nsw i32 %85, 1
  store i32 %inc140, i32* %i, align 4, !tbaa !5
  br label %for.cond.72

for.end.141:                                      ; preds = %for.cond.72
  br label %if.end.142

if.end.142:                                       ; preds = %for.end.141, %for.end.71
  %86 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs143 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %86, i32 0, i32 42
  %map_rgb_alpha_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs143, i32 0, i32 18
  %87 = load i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)** %map_rgb_alpha_color, align 8, !tbaa !114
  %cmp144 = icmp ne i64 (%struct.gx_device_s*, i16, i16, i16, i16)* %87, @gx_default_map_rgb_alpha_color
  br i1 %cmp144, label %land.lhs.true, label %if.else.162

land.lhs.true:                                    ; preds = %if.end.142
  %88 = load i16, i16* %alpha.addr, align 2, !tbaa !34
  %conv146 = sext i16 %88 to i32
  %shl147 = shl i32 %conv146, 1
  %89 = load i16, i16* %alpha.addr, align 2, !tbaa !34
  %conv148 = sext i16 %89 to i32
  %shr149 = ashr i32 %conv148, 11
  %add150 = add nsw i32 %shl147, %shr149
  %conv151 = trunc i32 %add150 to i16
  store i16 %conv151, i16* %cv_alpha, align 2, !tbaa !34
  %conv152 = zext i16 %conv151 to i32
  %cmp153 = icmp ne i32 %conv152, 65535
  br i1 %cmp153, label %if.then.155, label %if.else.162

if.then.155:                                      ; preds = %land.lhs.true
  %90 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs156 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %90, i32 0, i32 42
  %map_rgb_alpha_color157 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs156, i32 0, i32 18
  %91 = load i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)** %map_rgb_alpha_color157, align 8, !tbaa !114
  %92 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arrayidx158 = getelementptr inbounds [64 x i16], [64 x i16]* %cv, i32 0, i64 0
  %93 = load i16, i16* %arrayidx158, align 2, !tbaa !34
  %arrayidx159 = getelementptr inbounds [64 x i16], [64 x i16]* %cv, i32 0, i64 1
  %94 = load i16, i16* %arrayidx159, align 2, !tbaa !34
  %arrayidx160 = getelementptr inbounds [64 x i16], [64 x i16]* %cv, i32 0, i64 2
  %95 = load i16, i16* %arrayidx160, align 2, !tbaa !34
  %96 = load i16, i16* %cv_alpha, align 2, !tbaa !34
  %call161 = call i64 %91(%struct.gx_device_s* %92, i16 zeroext %93, i16 zeroext %94, i16 zeroext %95, i16 zeroext %96) #5
  store i64 %call161, i64* %color, align 8, !tbaa !32
  br label %if.end.167

if.else.162:                                      ; preds = %land.lhs.true, %if.end.142
  %97 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs163 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %97, i32 0, i32 42
  %encode_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs163, i32 0, i32 51
  %encode_color164 = bitcast {}** %encode_color to i64 (%struct.gx_device_s*, i16*)**
  %98 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color164, align 8, !tbaa !99
  %99 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay165 = getelementptr inbounds [64 x i16], [64 x i16]* %cv, i32 0, i32 0
  %call166 = call i64 %98(%struct.gx_device_s* %99, i16* %arraydecay165) #5
  store i64 %call166, i64* %color, align 8, !tbaa !32
  br label %if.end.167

if.end.167:                                       ; preds = %if.else.162, %if.then.155
  %100 = load i64, i64* %color, align 8, !tbaa !32
  %cmp168 = icmp ne i64 %100, -1
  br i1 %cmp168, label %if.then.170, label %if.else.171

if.then.170:                                      ; preds = %if.end.167
  %101 = load i64, i64* %color, align 8, !tbaa !32
  %102 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %102, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  store i64 %101, i64* %pure, align 8, !tbaa !32
  %103 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %103, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_pure, %struct.gx_device_color_type_s** %type, align 8, !tbaa !7
  br label %if.end.172

if.else.171:                                      ; preds = %if.end.167
  %104 = load i16, i16* %r.addr, align 2, !tbaa !34
  %105 = load i16, i16* %g.addr, align 2, !tbaa !34
  %106 = load i16, i16* %b.addr, align 2, !tbaa !34
  %107 = load i16, i16* %alpha.addr, align 2, !tbaa !34
  %108 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %109 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %110 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %111 = load i32, i32* %select.addr, align 4, !tbaa !33
  call void @cmap_rgb_alpha_halftoned(i16 signext %104, i16 signext %105, i16 signext %106, i16 signext %107, %struct.gx_device_color_s* %108, %struct.gs_imager_state_s* %109, %struct.gx_device_s* %110, i32 %111) #5
  br label %if.end.172

if.end.172:                                       ; preds = %if.else.171, %if.then.170
  %112 = bitcast i64* %color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #1
  %113 = bitcast [64 x i16]* %cv to i8*
  call void @llvm.lifetime.end(i64 128, i8* %113) #1
  %114 = bitcast i16* %cv_alpha to i8*
  call void @llvm.lifetime.end(i64 2, i8* %114) #1
  %115 = bitcast [64 x i16]* %cm_comps to i8*
  call void @llvm.lifetime.end(i64 128, i8* %115) #1
  %116 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #1
  %117 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cmap_separation_direct(i16 signext %all, %struct.gx_device_color_s* %pdc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, i32 %select) #0 {
entry:
  %all.addr = alloca i16, align 2
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %select.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %ncomps = alloca i32, align 4
  %additive = alloca i32, align 4
  %comp_value = alloca i16, align 2
  %cm_comps = alloca [64 x i16], align 16
  %cv = alloca [64 x i16], align 16
  %color = alloca i64, align 8
  %use_rgb2dev_icc = alloca i32, align 4
  %render_cond = alloca %struct.gsicc_rendering_param_s, align 4
  %code = alloca i32, align 4
  %dev_profile = alloca %struct.cmm_dev_profile_s*, align 8
  %des_profile = alloca %struct.cmm_profile_s*, align 8
  %icc_link = alloca %struct.gsicc_link_s*, align 8
  %rendering_params = alloca %struct.gsicc_rendering_param_s, align 4
  %psrc = alloca [64 x i16], align 16
  %psrc_cm = alloca [64 x i16], align 16
  store i16 %all, i16* %all.addr, align 2, !tbaa !34
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %select, i32* %select.addr, align 4, !tbaa !33
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %3 = load i32, i32* %num_components, align 4, !tbaa !20
  store i32 %3, i32* %ncomps, align 4, !tbaa !5
  %4 = bitcast i32* %additive to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 11
  %polarity = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info1, i32 0, i32 2
  %6 = load i32, i32* %polarity, align 4, !tbaa !94
  %cmp = icmp eq i32 %6, 1
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %additive, align 4, !tbaa !5
  %7 = bitcast i16* %comp_value to i8*
  call void @llvm.lifetime.start(i64 2, i8* %7) #1
  %8 = load i16, i16* %all.addr, align 2, !tbaa !34
  store i16 %8, i16* %comp_value, align 2, !tbaa !34
  %9 = bitcast [64 x i16]* %cm_comps to i8*
  call void @llvm.lifetime.start(i64 128, i8* %9) #1
  %10 = bitcast [64 x i16]* %cv to i8*
  call void @llvm.lifetime.start(i64 128, i8* %10) #1
  %11 = bitcast i64* %color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i32* %use_rgb2dev_icc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 0, i32* %use_rgb2dev_icc, align 4, !tbaa !5
  %13 = bitcast %struct.gsicc_rendering_param_s* %render_cond to i8*
  call void @llvm.lifetime.start(i64 24, i8* %13) #1
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  store %struct.cmm_dev_profile_s* null, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %16 = bitcast %struct.cmm_profile_s** %des_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %des_profile, align 8, !tbaa !1
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %18 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !100
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 %18(%struct.gx_device_s* %19, %struct.cmm_dev_profile_s** %dev_profile) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %graphics_type_tag = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 40
  %21 = load i32, i32* %graphics_type_tag, align 4, !tbaa !101
  %22 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  call void @gsicc_extract_profile(i32 %21, %struct.cmm_dev_profile_s* %22, %struct.cmm_profile_s** %des_profile, %struct.gsicc_rendering_param_s* %render_cond) #5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %23 = load i32, i32* %i, align 4, !tbaa !5
  %24 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %23, %24
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %25 to i64
  %arrayidx = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom
  store i16 0, i16* %arrayidx, align 2, !tbaa !34
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %color_component_map = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %27, i32 0, i32 50
  %sep_type = getelementptr inbounds %struct.gs_devicen_color_map_s, %struct.gs_devicen_color_map_s* %color_component_map, i32 0, i32 1
  %28 = load i32, i32* %sep_type, align 4, !tbaa !115
  %cmp4 = icmp eq i32 %28, 1
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %29 = load i32, i32* %additive, align 4, !tbaa !5
  %tobool = icmp ne i32 %29, 0
  br i1 %tobool, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %30 = load i16, i16* %comp_value, align 2, !tbaa !34
  %conv7 = sext i16 %30 to i32
  %sub = sub nsw i32 32760, %conv7
  %conv8 = trunc i32 %sub to i16
  store i16 %conv8, i16* %comp_value, align 2, !tbaa !34
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  %31 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %color_component_map9 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %31, i32 0, i32 50
  %num_colorants = getelementptr inbounds %struct.gs_devicen_color_map_s, %struct.gs_devicen_color_map_s* %color_component_map9, i32 0, i32 3
  %32 = load i32, i32* %num_colorants, align 4, !tbaa !116
  %sub10 = sub i32 %32, 1
  store i32 %sub10, i32* %i, align 4, !tbaa !5
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.17, %if.end
  %33 = load i32, i32* %i, align 4, !tbaa !5
  %cmp12 = icmp sge i32 %33, 0
  br i1 %cmp12, label %for.body.14, label %for.end.18

for.body.14:                                      ; preds = %for.cond.11
  %34 = load i16, i16* %comp_value, align 2, !tbaa !34
  %35 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom15 = sext i32 %35 to i64
  %arrayidx16 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom15
  store i16 %34, i16* %arrayidx16, align 2, !tbaa !34
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.body.14
  %36 = load i32, i32* %i, align 4, !tbaa !5
  %dec = add nsw i32 %36, -1
  store i32 %dec, i32* %i, align 4, !tbaa !5
  br label %for.cond.11

for.end.18:                                       ; preds = %for.cond.11
  %37 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %des_profile, align 8, !tbaa !1
  %data_cs = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %37, i32 0, i32 5
  %38 = load i32, i32* %data_cs, align 4, !tbaa !110
  %cmp19 = icmp eq i32 %38, 6
  br i1 %cmp19, label %if.then.22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end.18
  %39 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %des_profile, align 8, !tbaa !1
  %islab = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %39, i32 0, i32 2
  %40 = load i32, i32* %islab, align 4, !tbaa !117
  %tobool21 = icmp ne i32 %40, 0
  br i1 %tobool21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %lor.lhs.false, %for.end.18
  store i32 1, i32* %use_rgb2dev_icc, align 4, !tbaa !5
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %lor.lhs.false
  br label %if.end.25

if.else:                                          ; preds = %for.end
  %41 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %color_component_map24 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %41, i32 0, i32 50
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i32 0
  call void @map_components_to_colorants(i16* %comp_value, %struct.gs_devicen_color_map_s* %color_component_map24, i16* %arraydecay) #5
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %if.end.23
  %42 = load i32, i32* %additive, align 4, !tbaa !5
  %tobool26 = icmp ne i32 %42, 0
  br i1 %tobool26, label %if.then.27, label %if.else.75

if.then.27:                                       ; preds = %if.end.25
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.72, %if.then.27
  %43 = load i32, i32* %i, align 4, !tbaa !5
  %44 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp29 = icmp slt i32 %43, %44
  br i1 %cmp29, label %for.body.31, label %for.end.74

for.body.31:                                      ; preds = %for.cond.28
  %45 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom32 = sext i32 %45 to i64
  %46 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %46, i32 0, i32 47
  %arrayidx33 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer, i32 0, i64 %idxprom32
  %47 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx33, align 8, !tbaa !1
  %proc = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %47, i32 0, i32 1
  %48 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc, align 8, !tbaa !90
  %cmp34 = icmp eq float (double, %struct.gx_transfer_map_s*)* %48, @gs_identity_transfer
  br i1 %cmp34, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.31
  %49 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom36 = sext i32 %49 to i64
  %arrayidx37 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom36
  %50 = load i16, i16* %arrayidx37, align 2, !tbaa !34
  %conv38 = sext i16 %50 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.body.31
  %51 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom39 = sext i32 %51 to i64
  %arrayidx40 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom39
  %52 = load i16, i16* %arrayidx40, align 2, !tbaa !34
  %53 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom41 = sext i32 %53 to i64
  %54 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer42 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %54, i32 0, i32 47
  %arrayidx43 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer42, i32 0, i64 %idxprom41
  %55 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx43, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %55, i32 0, i32 4
  %arrayidx44 = getelementptr inbounds [256 x i16], [256 x i16]* %values, i32 0, i64 0
  %call45 = call signext i16 @gx_color_frac_map(i16 signext %52, i16* %arrayidx44) #5
  %conv46 = sext i16 %call45 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv38, %cond.true ], [ %conv46, %cond.false ]
  %shl = shl i32 %cond, 1
  %56 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom47 = sext i32 %56 to i64
  %57 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer48 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %57, i32 0, i32 47
  %arrayidx49 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer48, i32 0, i64 %idxprom47
  %58 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx49, align 8, !tbaa !1
  %proc50 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %58, i32 0, i32 1
  %59 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc50, align 8, !tbaa !90
  %cmp51 = icmp eq float (double, %struct.gx_transfer_map_s*)* %59, @gs_identity_transfer
  br i1 %cmp51, label %cond.true.53, label %cond.false.57

cond.true.53:                                     ; preds = %cond.end
  %60 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom54 = sext i32 %60 to i64
  %arrayidx55 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom54
  %61 = load i16, i16* %arrayidx55, align 2, !tbaa !34
  %conv56 = sext i16 %61 to i32
  br label %cond.end.67

cond.false.57:                                    ; preds = %cond.end
  %62 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom58 = sext i32 %62 to i64
  %arrayidx59 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom58
  %63 = load i16, i16* %arrayidx59, align 2, !tbaa !34
  %64 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom60 = sext i32 %64 to i64
  %65 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer61 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %65, i32 0, i32 47
  %arrayidx62 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer61, i32 0, i64 %idxprom60
  %66 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx62, align 8, !tbaa !1
  %values63 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %66, i32 0, i32 4
  %arrayidx64 = getelementptr inbounds [256 x i16], [256 x i16]* %values63, i32 0, i64 0
  %call65 = call signext i16 @gx_color_frac_map(i16 signext %63, i16* %arrayidx64) #5
  %conv66 = sext i16 %call65 to i32
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.57, %cond.true.53
  %cond68 = phi i32 [ %conv56, %cond.true.53 ], [ %conv66, %cond.false.57 ]
  %shr = ashr i32 %cond68, 11
  %add = add nsw i32 %shl, %shr
  %conv69 = trunc i32 %add to i16
  %67 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom70 = sext i32 %67 to i64
  %arrayidx71 = getelementptr inbounds [64 x i16], [64 x i16]* %cv, i32 0, i64 %idxprom70
  store i16 %conv69, i16* %arrayidx71, align 2, !tbaa !34
  br label %for.inc.72

for.inc.72:                                       ; preds = %cond.end.67
  %68 = load i32, i32* %i, align 4, !tbaa !5
  %inc73 = add nsw i32 %68, 1
  store i32 %inc73, i32* %i, align 4, !tbaa !5
  br label %for.cond.28

for.end.74:                                       ; preds = %for.cond.28
  br label %if.end.147

if.else.75:                                       ; preds = %if.end.25
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.144, %if.else.75
  %69 = load i32, i32* %i, align 4, !tbaa !5
  %70 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp77 = icmp slt i32 %69, %70
  br i1 %cmp77, label %for.body.79, label %for.end.146

for.body.79:                                      ; preds = %for.cond.76
  %71 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom80 = sext i32 %71 to i64
  %72 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer81 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %72, i32 0, i32 47
  %arrayidx82 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer81, i32 0, i64 %idxprom80
  %73 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx82, align 8, !tbaa !1
  %proc83 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %73, i32 0, i32 1
  %74 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc83, align 8, !tbaa !90
  %cmp84 = icmp eq float (double, %struct.gx_transfer_map_s*)* %74, @gs_identity_transfer
  br i1 %cmp84, label %cond.true.86, label %cond.false.93

cond.true.86:                                     ; preds = %for.body.79
  %75 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom87 = sext i32 %75 to i64
  %arrayidx88 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom87
  %76 = load i16, i16* %arrayidx88, align 2, !tbaa !34
  %conv89 = sext i16 %76 to i32
  %sub90 = sub nsw i32 32760, %conv89
  %conv91 = trunc i32 %sub90 to i16
  %conv92 = sext i16 %conv91 to i32
  br label %cond.end.106

cond.false.93:                                    ; preds = %for.body.79
  %77 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom94 = sext i32 %77 to i64
  %arrayidx95 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom94
  %78 = load i16, i16* %arrayidx95, align 2, !tbaa !34
  %conv96 = sext i16 %78 to i32
  %sub97 = sub nsw i32 32760, %conv96
  %conv98 = trunc i32 %sub97 to i16
  %79 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom99 = sext i32 %79 to i64
  %80 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer100 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %80, i32 0, i32 47
  %arrayidx101 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer100, i32 0, i64 %idxprom99
  %81 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx101, align 8, !tbaa !1
  %values102 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %81, i32 0, i32 4
  %arrayidx103 = getelementptr inbounds [256 x i16], [256 x i16]* %values102, i32 0, i64 0
  %call104 = call signext i16 @gx_color_frac_map(i16 signext %conv98, i16* %arrayidx103) #5
  %conv105 = sext i16 %call104 to i32
  br label %cond.end.106

cond.end.106:                                     ; preds = %cond.false.93, %cond.true.86
  %cond107 = phi i32 [ %conv92, %cond.true.86 ], [ %conv105, %cond.false.93 ]
  %sub108 = sub nsw i32 32760, %cond107
  %shl109 = shl i32 %sub108, 1
  %82 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom110 = sext i32 %82 to i64
  %83 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer111 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %83, i32 0, i32 47
  %arrayidx112 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer111, i32 0, i64 %idxprom110
  %84 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx112, align 8, !tbaa !1
  %proc113 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %84, i32 0, i32 1
  %85 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc113, align 8, !tbaa !90
  %cmp114 = icmp eq float (double, %struct.gx_transfer_map_s*)* %85, @gs_identity_transfer
  br i1 %cmp114, label %cond.true.116, label %cond.false.123

cond.true.116:                                    ; preds = %cond.end.106
  %86 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom117 = sext i32 %86 to i64
  %arrayidx118 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom117
  %87 = load i16, i16* %arrayidx118, align 2, !tbaa !34
  %conv119 = sext i16 %87 to i32
  %sub120 = sub nsw i32 32760, %conv119
  %conv121 = trunc i32 %sub120 to i16
  %conv122 = sext i16 %conv121 to i32
  br label %cond.end.136

cond.false.123:                                   ; preds = %cond.end.106
  %88 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom124 = sext i32 %88 to i64
  %arrayidx125 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom124
  %89 = load i16, i16* %arrayidx125, align 2, !tbaa !34
  %conv126 = sext i16 %89 to i32
  %sub127 = sub nsw i32 32760, %conv126
  %conv128 = trunc i32 %sub127 to i16
  %90 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom129 = sext i32 %90 to i64
  %91 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer130 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %91, i32 0, i32 47
  %arrayidx131 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer130, i32 0, i64 %idxprom129
  %92 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx131, align 8, !tbaa !1
  %values132 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %92, i32 0, i32 4
  %arrayidx133 = getelementptr inbounds [256 x i16], [256 x i16]* %values132, i32 0, i64 0
  %call134 = call signext i16 @gx_color_frac_map(i16 signext %conv128, i16* %arrayidx133) #5
  %conv135 = sext i16 %call134 to i32
  br label %cond.end.136

cond.end.136:                                     ; preds = %cond.false.123, %cond.true.116
  %cond137 = phi i32 [ %conv122, %cond.true.116 ], [ %conv135, %cond.false.123 ]
  %sub138 = sub nsw i32 32760, %cond137
  %shr139 = ashr i32 %sub138, 11
  %add140 = add nsw i32 %shl109, %shr139
  %conv141 = trunc i32 %add140 to i16
  %93 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom142 = sext i32 %93 to i64
  %arrayidx143 = getelementptr inbounds [64 x i16], [64 x i16]* %cv, i32 0, i64 %idxprom142
  store i16 %conv141, i16* %arrayidx143, align 2, !tbaa !34
  br label %for.inc.144

for.inc.144:                                      ; preds = %cond.end.136
  %94 = load i32, i32* %i, align 4, !tbaa !5
  %inc145 = add nsw i32 %94, 1
  store i32 %inc145, i32* %i, align 4, !tbaa !5
  br label %for.cond.76

for.end.146:                                      ; preds = %for.cond.76
  br label %if.end.147

if.end.147:                                       ; preds = %for.end.146, %for.end.74
  %95 = load i32, i32* %use_rgb2dev_icc, align 4, !tbaa !5
  %tobool148 = icmp ne i32 %95, 0
  br i1 %tobool148, label %land.lhs.true, label %if.end.182

land.lhs.true:                                    ; preds = %if.end.147
  %96 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_manager = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %96, i32 0, i32 35
  %97 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !79
  %default_rgb = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %97, i32 0, i32 2
  %98 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_rgb, align 8, !tbaa !118
  %cmp149 = icmp ne %struct.cmm_profile_s* %98, null
  br i1 %cmp149, label %if.then.151, label %if.end.182

if.then.151:                                      ; preds = %land.lhs.true
  %99 = bitcast %struct.gsicc_link_s** %icc_link to i8*
  call void @llvm.lifetime.start(i64 8, i8* %99) #1
  %100 = bitcast %struct.gsicc_rendering_param_s* %rendering_params to i8*
  call void @llvm.lifetime.start(i64 24, i8* %100) #1
  %101 = bitcast [64 x i16]* %psrc to i8*
  call void @llvm.lifetime.start(i64 128, i8* %101) #1
  %102 = bitcast [64 x i16]* %psrc_cm to i8*
  call void @llvm.lifetime.start(i64 128, i8* %102) #1
  %103 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %blackptcomp = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %103, i32 0, i32 34
  %104 = load i32, i32* %blackptcomp, align 4, !tbaa !119
  %black_point_comp = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 1
  store i32 %104, i32* %black_point_comp, align 4, !tbaa !120
  %105 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %graphics_type_tag152 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %105, i32 0, i32 40
  %106 = load i32, i32* %graphics_type_tag152, align 4, !tbaa !101
  %graphics_type_tag153 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 3
  store i32 %106, i32* %graphics_type_tag153, align 4, !tbaa !121
  %override_icc = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 5
  store i32 0, i32* %override_icc, align 4, !tbaa !122
  %preserve_black = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 2
  store i32 8, i32* %preserve_black, align 4, !tbaa !123
  %107 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %renderingintent = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %107, i32 0, i32 33
  %108 = load i32, i32* %renderingintent, align 4, !tbaa !124
  %rendering_intent = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 0
  store i32 %108, i32* %rendering_intent, align 4, !tbaa !125
  %cmm = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 4
  store i32 0, i32* %cmm, align 4, !tbaa !126
  %109 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %110 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %111 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_manager154 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %111, i32 0, i32 35
  %112 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager154, align 8, !tbaa !79
  %default_rgb155 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %112, i32 0, i32 2
  %113 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_rgb155, align 8, !tbaa !118
  %114 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %des_profile, align 8, !tbaa !1
  %115 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %115, i32 0, i32 1
  %116 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !127
  %117 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %devicegraytok = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %117, i32 0, i32 5
  %118 = load i32, i32* %devicegraytok, align 4, !tbaa !108
  %call156 = call %struct.gsicc_link_s* @gsicc_get_link_profile(%struct.gs_imager_state_s* %109, %struct.gx_device_s* %110, %struct.cmm_profile_s* %113, %struct.cmm_profile_s* %114, %struct.gsicc_rendering_param_s* %rendering_params, %struct.gs_memory_s* %116, i32 %118) #5
  store %struct.gsicc_link_s* %call156, %struct.gsicc_link_s** %icc_link, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.157

for.cond.157:                                     ; preds = %for.inc.165, %if.then.151
  %119 = load i32, i32* %i, align 4, !tbaa !5
  %120 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp158 = icmp slt i32 %119, %120
  br i1 %cmp158, label %for.body.160, label %for.end.167

for.body.160:                                     ; preds = %for.cond.157
  %121 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom161 = sext i32 %121 to i64
  %arrayidx162 = getelementptr inbounds [64 x i16], [64 x i16]* %cv, i32 0, i64 %idxprom161
  %122 = load i16, i16* %arrayidx162, align 2, !tbaa !34
  %123 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom163 = sext i32 %123 to i64
  %arrayidx164 = getelementptr inbounds [64 x i16], [64 x i16]* %psrc, i32 0, i64 %idxprom163
  store i16 %122, i16* %arrayidx164, align 2, !tbaa !34
  br label %for.inc.165

for.inc.165:                                      ; preds = %for.body.160
  %124 = load i32, i32* %i, align 4, !tbaa !5
  %inc166 = add nsw i32 %124, 1
  store i32 %inc166, i32* %i, align 4, !tbaa !5
  br label %for.cond.157

for.end.167:                                      ; preds = %for.cond.157
  %125 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link, align 8, !tbaa !1
  %procs168 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %125, i32 0, i32 1
  %map_color = getelementptr inbounds %struct.gscms_procs_s, %struct.gscms_procs_s* %procs168, i32 0, i32 1
  %126 = load void (%struct.gx_device_s*, %struct.gsicc_link_s*, i8*, i8*, i32)*, void (%struct.gx_device_s*, %struct.gsicc_link_s*, i8*, i8*, i32)** %map_color, align 8, !tbaa !128
  %127 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %128 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link, align 8, !tbaa !1
  %arrayidx169 = getelementptr inbounds [64 x i16], [64 x i16]* %psrc, i32 0, i64 0
  %129 = bitcast i16* %arrayidx169 to i8*
  %arrayidx170 = getelementptr inbounds [64 x i16], [64 x i16]* %psrc_cm, i32 0, i64 0
  %130 = bitcast i16* %arrayidx170 to i8*
  call void %126(%struct.gx_device_s* %127, %struct.gsicc_link_s* %128, i8* %129, i8* %130, i32 2) #5
  %131 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link, align 8, !tbaa !1
  call void @gsicc_release_link(%struct.gsicc_link_s* %131) #5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.171

for.cond.171:                                     ; preds = %for.inc.179, %for.end.167
  %132 = load i32, i32* %i, align 4, !tbaa !5
  %133 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp172 = icmp slt i32 %132, %133
  br i1 %cmp172, label %for.body.174, label %for.end.181

for.body.174:                                     ; preds = %for.cond.171
  %134 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom175 = sext i32 %134 to i64
  %arrayidx176 = getelementptr inbounds [64 x i16], [64 x i16]* %psrc_cm, i32 0, i64 %idxprom175
  %135 = load i16, i16* %arrayidx176, align 2, !tbaa !34
  %136 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom177 = sext i32 %136 to i64
  %arrayidx178 = getelementptr inbounds [64 x i16], [64 x i16]* %cv, i32 0, i64 %idxprom177
  store i16 %135, i16* %arrayidx178, align 2, !tbaa !34
  br label %for.inc.179

for.inc.179:                                      ; preds = %for.body.174
  %137 = load i32, i32* %i, align 4, !tbaa !5
  %inc180 = add nsw i32 %137, 1
  store i32 %inc180, i32* %i, align 4, !tbaa !5
  br label %for.cond.171

for.end.181:                                      ; preds = %for.cond.171
  %138 = bitcast [64 x i16]* %psrc_cm to i8*
  call void @llvm.lifetime.end(i64 128, i8* %138) #1
  %139 = bitcast [64 x i16]* %psrc to i8*
  call void @llvm.lifetime.end(i64 128, i8* %139) #1
  %140 = bitcast %struct.gsicc_rendering_param_s* %rendering_params to i8*
  call void @llvm.lifetime.end(i64 24, i8* %140) #1
  %141 = bitcast %struct.gsicc_link_s** %icc_link to i8*
  call void @llvm.lifetime.end(i64 8, i8* %141) #1
  br label %if.end.182

if.end.182:                                       ; preds = %for.end.181, %land.lhs.true, %if.end.147
  %142 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs183 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %142, i32 0, i32 42
  %dev_spec_op = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs183, i32 0, i32 65
  %143 = load i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)** %dev_spec_op, align 8, !tbaa !113
  %144 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call184 = call i32 %143(%struct.gx_device_s* %144, i32 11, i8* null, i32 0) #5
  %tobool185 = icmp ne i32 %call184, 0
  br i1 %tobool185, label %if.then.186, label %if.else.199

if.then.186:                                      ; preds = %if.end.182
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.187

for.cond.187:                                     ; preds = %for.inc.196, %if.then.186
  %145 = load i32, i32* %i, align 4, !tbaa !5
  %146 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp188 = icmp slt i32 %145, %146
  br i1 %cmp188, label %for.body.190, label %for.end.198

for.body.190:                                     ; preds = %for.cond.187
  %147 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom191 = sext i32 %147 to i64
  %arrayidx192 = getelementptr inbounds [64 x i16], [64 x i16]* %cv, i32 0, i64 %idxprom191
  %148 = load i16, i16* %arrayidx192, align 2, !tbaa !34
  %149 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom193 = sext i32 %149 to i64
  %150 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %150, i32 0, i32 1
  %devn = bitcast %union._c* %colors to %struct._devn*
  %values194 = getelementptr inbounds %struct._devn, %struct._devn* %devn, i32 0, i32 0
  %arrayidx195 = getelementptr inbounds [64 x i16], [64 x i16]* %values194, i32 0, i64 %idxprom193
  store i16 %148, i16* %arrayidx195, align 2, !tbaa !34
  br label %for.inc.196

for.inc.196:                                      ; preds = %for.body.190
  %151 = load i32, i32* %i, align 4, !tbaa !5
  %inc197 = add nsw i32 %151, 1
  store i32 %inc197, i32* %i, align 4, !tbaa !5
  br label %for.cond.187

for.end.198:                                      ; preds = %for.cond.187
  %152 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %152, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_devn, %struct.gx_device_color_type_s** %type, align 8, !tbaa !7
  br label %if.end.211

if.else.199:                                      ; preds = %if.end.182
  %153 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs200 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %153, i32 0, i32 42
  %encode_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs200, i32 0, i32 51
  %encode_color201 = bitcast {}** %encode_color to i64 (%struct.gx_device_s*, i16*)**
  %154 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color201, align 8, !tbaa !99
  %155 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay202 = getelementptr inbounds [64 x i16], [64 x i16]* %cv, i32 0, i32 0
  %call203 = call i64 %154(%struct.gx_device_s* %155, i16* %arraydecay202) #5
  store i64 %call203, i64* %color, align 8, !tbaa !32
  %156 = load i64, i64* %color, align 8, !tbaa !32
  %cmp204 = icmp ne i64 %156, -1
  br i1 %cmp204, label %if.then.206, label %if.else.209

if.then.206:                                      ; preds = %if.else.199
  %157 = load i64, i64* %color, align 8, !tbaa !32
  %158 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %colors207 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %158, i32 0, i32 1
  %pure = bitcast %union._c* %colors207 to i64*
  store i64 %157, i64* %pure, align 8, !tbaa !32
  %159 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %type208 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %159, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_pure, %struct.gx_device_color_type_s** %type208, align 8, !tbaa !7
  br label %if.end.210

if.else.209:                                      ; preds = %if.else.199
  %160 = load i16, i16* %all.addr, align 2, !tbaa !34
  %161 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %162 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %163 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %164 = load i32, i32* %select.addr, align 4, !tbaa !33
  call void @cmap_separation_halftoned(i16 signext %160, %struct.gx_device_color_s* %161, %struct.gs_imager_state_s* %162, %struct.gx_device_s* %163, i32 %164) #5
  br label %if.end.210

if.end.210:                                       ; preds = %if.else.209, %if.then.206
  br label %if.end.211

if.end.211:                                       ; preds = %if.end.210, %for.end.198
  %165 = bitcast %struct.cmm_profile_s** %des_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %165) #1
  %166 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %166) #1
  %167 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %167) #1
  %168 = bitcast %struct.gsicc_rendering_param_s* %render_cond to i8*
  call void @llvm.lifetime.end(i64 24, i8* %168) #1
  %169 = bitcast i32* %use_rgb2dev_icc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #1
  %170 = bitcast i64* %color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %170) #1
  %171 = bitcast [64 x i16]* %cv to i8*
  call void @llvm.lifetime.end(i64 128, i8* %171) #1
  %172 = bitcast [64 x i16]* %cm_comps to i8*
  call void @llvm.lifetime.end(i64 128, i8* %172) #1
  %173 = bitcast i16* %comp_value to i8*
  call void @llvm.lifetime.end(i64 2, i8* %173) #1
  %174 = bitcast i32* %additive to i8*
  call void @llvm.lifetime.end(i64 4, i8* %174) #1
  %175 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %175) #1
  %176 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %176) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cmap_devicen_direct(i16* %pcc, %struct.gx_device_color_s* %pdc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, i32 %select) #0 {
entry:
  %pcc.addr = alloca i16*, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %select.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %ncomps = alloca i32, align 4
  %cm_comps = alloca [64 x i16], align 16
  %cv = alloca [64 x i16], align 16
  %color = alloca i64, align 8
  %code = alloca i32, align 4
  %render_cond = alloca %struct.gsicc_rendering_param_s, align 4
  %dev_profile = alloca %struct.cmm_dev_profile_s*, align 8
  %des_profile = alloca %struct.cmm_profile_s*, align 8
  store i16* %pcc, i16** %pcc.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %select, i32* %select.addr, align 4, !tbaa !33
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %3 = load i32, i32* %num_components, align 4, !tbaa !20
  store i32 %3, i32* %ncomps, align 4, !tbaa !5
  %4 = bitcast [64 x i16]* %cm_comps to i8*
  call void @llvm.lifetime.start(i64 128, i8* %4) #1
  %5 = bitcast [64 x i16]* %cv to i8*
  call void @llvm.lifetime.start(i64 128, i8* %5) #1
  %6 = bitcast i64* %color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast %struct.gsicc_rendering_param_s* %render_cond to i8*
  call void @llvm.lifetime.start(i64 24, i8* %8) #1
  %9 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store %struct.cmm_dev_profile_s* null, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %10 = bitcast %struct.cmm_profile_s** %des_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %des_profile, align 8, !tbaa !1
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %12 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !100
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 %12(%struct.gx_device_s* %13, %struct.cmm_dev_profile_s** %dev_profile) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %graphics_type_tag = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %14, i32 0, i32 40
  %15 = load i32, i32* %graphics_type_tag, align 4, !tbaa !101
  %16 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  call void @gsicc_extract_profile(i32 %15, %struct.cmm_dev_profile_s* %16, %struct.cmm_profile_s** %des_profile, %struct.gsicc_rendering_param_s* %render_cond) #5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %17 = load i32, i32* %i, align 4, !tbaa !5
  %18 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp = icmp slt i32 %17, %18
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %19 to i64
  %arrayidx = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom
  store i16 0, i16* %arrayidx, align 2, !tbaa !34
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %spotnames = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %21, i32 0, i32 11
  %22 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %spotnames, align 8, !tbaa !132
  %cmp1 = icmp ne %struct.gsicc_namelist_s* %22, null
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.end
  %23 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %spotnames2 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %23, i32 0, i32 11
  %24 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %spotnames2, align 8, !tbaa !132
  %equiv_cmyk_set = getelementptr inbounds %struct.gsicc_namelist_s, %struct.gsicc_namelist_s* %24, i32 0, i32 4
  %25 = load i32, i32* %equiv_cmyk_set, align 4, !tbaa !133
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %26 = load i16*, i16** %pcc.addr, align 8, !tbaa !1
  %27 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %spotnames3 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %27, i32 0, i32 11
  %28 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %spotnames3, align 8, !tbaa !132
  %color_map = getelementptr inbounds %struct.gsicc_namelist_s, %struct.gsicc_namelist_s* %28, i32 0, i32 3
  %29 = load %struct.gs_devicen_color_map_s*, %struct.gs_devicen_color_map_s** %color_map, align 8, !tbaa !135
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i32 0
  call void @map_components_to_colorants(i16* %26, %struct.gs_devicen_color_map_s* %29, i16* %arraydecay) #5
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %for.end
  %30 = load i16*, i16** %pcc.addr, align 8, !tbaa !1
  %31 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %color_component_map = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %31, i32 0, i32 50
  %arraydecay4 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i32 0
  call void @map_components_to_colorants(i16* %30, %struct.gs_devicen_color_map_s* %color_component_map, i16* %arraydecay4) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call5 = call i32 @devicen_has_cmyk(%struct.gx_device_s* %32) #5
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %land.lhs.true.7, label %if.end.12

land.lhs.true.7:                                  ; preds = %if.end
  %33 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %des_profile, align 8, !tbaa !1
  %data_cs = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %33, i32 0, i32 5
  %34 = load i32, i32* %data_cs, align 4, !tbaa !110
  %cmp8 = icmp eq i32 %34, 3
  br i1 %cmp8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %land.lhs.true.7
  %arraydecay10 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i32 0
  %35 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %36 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call11 = call i32 @devicen_icc_cmyk(i16* %arraydecay10, %struct.gs_imager_state_s* %35, %struct.gx_device_s* %36) #5
  store i32 %call11, i32* %code, align 4, !tbaa !5
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %land.lhs.true.7, %if.end
  %37 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs13 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %37, i32 0, i32 42
  %dev_spec_op = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs13, i32 0, i32 65
  %38 = load i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)** %dev_spec_op, align 8, !tbaa !113
  %39 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call14 = call i32 %38(%struct.gx_device_s* %39, i32 11, i8* null, i32 0) #5
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.else.140

if.then.16:                                       ; preds = %if.end.12
  %40 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info17 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %40, i32 0, i32 11
  %polarity = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info17, i32 0, i32 2
  %41 = load i32, i32* %polarity, align 4, !tbaa !94
  %cmp18 = icmp eq i32 %41, 1
  br i1 %cmp18, label %if.then.19, label %if.else.65

if.then.19:                                       ; preds = %if.then.16
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.62, %if.then.19
  %42 = load i32, i32* %i, align 4, !tbaa !5
  %43 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp21 = icmp slt i32 %42, %43
  br i1 %cmp21, label %for.body.22, label %for.end.64

for.body.22:                                      ; preds = %for.cond.20
  %44 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom23 = sext i32 %44 to i64
  %45 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %45, i32 0, i32 47
  %arrayidx24 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer, i32 0, i64 %idxprom23
  %46 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx24, align 8, !tbaa !1
  %proc = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %46, i32 0, i32 1
  %47 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc, align 8, !tbaa !90
  %cmp25 = icmp eq float (double, %struct.gx_transfer_map_s*)* %47, @gs_identity_transfer
  br i1 %cmp25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.22
  %48 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom26 = sext i32 %48 to i64
  %arrayidx27 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom26
  %49 = load i16, i16* %arrayidx27, align 2, !tbaa !34
  %conv = sext i16 %49 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.body.22
  %50 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom28 = sext i32 %50 to i64
  %arrayidx29 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom28
  %51 = load i16, i16* %arrayidx29, align 2, !tbaa !34
  %52 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom30 = sext i32 %52 to i64
  %53 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer31 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %53, i32 0, i32 47
  %arrayidx32 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer31, i32 0, i64 %idxprom30
  %54 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx32, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %54, i32 0, i32 4
  %arrayidx33 = getelementptr inbounds [256 x i16], [256 x i16]* %values, i32 0, i64 0
  %call34 = call signext i16 @gx_color_frac_map(i16 signext %51, i16* %arrayidx33) #5
  %conv35 = sext i16 %call34 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv35, %cond.false ]
  %shl = shl i32 %cond, 1
  %55 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom36 = sext i32 %55 to i64
  %56 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer37 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %56, i32 0, i32 47
  %arrayidx38 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer37, i32 0, i64 %idxprom36
  %57 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx38, align 8, !tbaa !1
  %proc39 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %57, i32 0, i32 1
  %58 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc39, align 8, !tbaa !90
  %cmp40 = icmp eq float (double, %struct.gx_transfer_map_s*)* %58, @gs_identity_transfer
  br i1 %cmp40, label %cond.true.42, label %cond.false.46

cond.true.42:                                     ; preds = %cond.end
  %59 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom43 = sext i32 %59 to i64
  %arrayidx44 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom43
  %60 = load i16, i16* %arrayidx44, align 2, !tbaa !34
  %conv45 = sext i16 %60 to i32
  br label %cond.end.56

cond.false.46:                                    ; preds = %cond.end
  %61 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom47 = sext i32 %61 to i64
  %arrayidx48 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom47
  %62 = load i16, i16* %arrayidx48, align 2, !tbaa !34
  %63 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom49 = sext i32 %63 to i64
  %64 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer50 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %64, i32 0, i32 47
  %arrayidx51 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer50, i32 0, i64 %idxprom49
  %65 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx51, align 8, !tbaa !1
  %values52 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %65, i32 0, i32 4
  %arrayidx53 = getelementptr inbounds [256 x i16], [256 x i16]* %values52, i32 0, i64 0
  %call54 = call signext i16 @gx_color_frac_map(i16 signext %62, i16* %arrayidx53) #5
  %conv55 = sext i16 %call54 to i32
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.false.46, %cond.true.42
  %cond57 = phi i32 [ %conv45, %cond.true.42 ], [ %conv55, %cond.false.46 ]
  %shr = ashr i32 %cond57, 11
  %add = add nsw i32 %shl, %shr
  %conv58 = trunc i32 %add to i16
  %66 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom59 = sext i32 %66 to i64
  %67 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %67, i32 0, i32 1
  %devn = bitcast %union._c* %colors to %struct._devn*
  %values60 = getelementptr inbounds %struct._devn, %struct._devn* %devn, i32 0, i32 0
  %arrayidx61 = getelementptr inbounds [64 x i16], [64 x i16]* %values60, i32 0, i64 %idxprom59
  store i16 %conv58, i16* %arrayidx61, align 2, !tbaa !34
  br label %for.inc.62

for.inc.62:                                       ; preds = %cond.end.56
  %68 = load i32, i32* %i, align 4, !tbaa !5
  %inc63 = add nsw i32 %68, 1
  store i32 %inc63, i32* %i, align 4, !tbaa !5
  br label %for.cond.20

for.end.64:                                       ; preds = %for.cond.20
  br label %if.end.139

if.else.65:                                       ; preds = %if.then.16
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc.136, %if.else.65
  %69 = load i32, i32* %i, align 4, !tbaa !5
  %70 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp67 = icmp slt i32 %69, %70
  br i1 %cmp67, label %for.body.69, label %for.end.138

for.body.69:                                      ; preds = %for.cond.66
  %71 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom70 = sext i32 %71 to i64
  %72 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer71 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %72, i32 0, i32 47
  %arrayidx72 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer71, i32 0, i64 %idxprom70
  %73 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx72, align 8, !tbaa !1
  %proc73 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %73, i32 0, i32 1
  %74 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc73, align 8, !tbaa !90
  %cmp74 = icmp eq float (double, %struct.gx_transfer_map_s*)* %74, @gs_identity_transfer
  br i1 %cmp74, label %cond.true.76, label %cond.false.82

cond.true.76:                                     ; preds = %for.body.69
  %75 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom77 = sext i32 %75 to i64
  %arrayidx78 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom77
  %76 = load i16, i16* %arrayidx78, align 2, !tbaa !34
  %conv79 = sext i16 %76 to i32
  %sub = sub nsw i32 32760, %conv79
  %conv80 = trunc i32 %sub to i16
  %conv81 = sext i16 %conv80 to i32
  br label %cond.end.95

cond.false.82:                                    ; preds = %for.body.69
  %77 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom83 = sext i32 %77 to i64
  %arrayidx84 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom83
  %78 = load i16, i16* %arrayidx84, align 2, !tbaa !34
  %conv85 = sext i16 %78 to i32
  %sub86 = sub nsw i32 32760, %conv85
  %conv87 = trunc i32 %sub86 to i16
  %79 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom88 = sext i32 %79 to i64
  %80 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer89 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %80, i32 0, i32 47
  %arrayidx90 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer89, i32 0, i64 %idxprom88
  %81 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx90, align 8, !tbaa !1
  %values91 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %81, i32 0, i32 4
  %arrayidx92 = getelementptr inbounds [256 x i16], [256 x i16]* %values91, i32 0, i64 0
  %call93 = call signext i16 @gx_color_frac_map(i16 signext %conv87, i16* %arrayidx92) #5
  %conv94 = sext i16 %call93 to i32
  br label %cond.end.95

cond.end.95:                                      ; preds = %cond.false.82, %cond.true.76
  %cond96 = phi i32 [ %conv81, %cond.true.76 ], [ %conv94, %cond.false.82 ]
  %sub97 = sub nsw i32 32760, %cond96
  %shl98 = shl i32 %sub97, 1
  %82 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom99 = sext i32 %82 to i64
  %83 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer100 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %83, i32 0, i32 47
  %arrayidx101 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer100, i32 0, i64 %idxprom99
  %84 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx101, align 8, !tbaa !1
  %proc102 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %84, i32 0, i32 1
  %85 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc102, align 8, !tbaa !90
  %cmp103 = icmp eq float (double, %struct.gx_transfer_map_s*)* %85, @gs_identity_transfer
  br i1 %cmp103, label %cond.true.105, label %cond.false.112

cond.true.105:                                    ; preds = %cond.end.95
  %86 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom106 = sext i32 %86 to i64
  %arrayidx107 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom106
  %87 = load i16, i16* %arrayidx107, align 2, !tbaa !34
  %conv108 = sext i16 %87 to i32
  %sub109 = sub nsw i32 32760, %conv108
  %conv110 = trunc i32 %sub109 to i16
  %conv111 = sext i16 %conv110 to i32
  br label %cond.end.125

cond.false.112:                                   ; preds = %cond.end.95
  %88 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom113 = sext i32 %88 to i64
  %arrayidx114 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom113
  %89 = load i16, i16* %arrayidx114, align 2, !tbaa !34
  %conv115 = sext i16 %89 to i32
  %sub116 = sub nsw i32 32760, %conv115
  %conv117 = trunc i32 %sub116 to i16
  %90 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom118 = sext i32 %90 to i64
  %91 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer119 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %91, i32 0, i32 47
  %arrayidx120 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer119, i32 0, i64 %idxprom118
  %92 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx120, align 8, !tbaa !1
  %values121 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %92, i32 0, i32 4
  %arrayidx122 = getelementptr inbounds [256 x i16], [256 x i16]* %values121, i32 0, i64 0
  %call123 = call signext i16 @gx_color_frac_map(i16 signext %conv117, i16* %arrayidx122) #5
  %conv124 = sext i16 %call123 to i32
  br label %cond.end.125

cond.end.125:                                     ; preds = %cond.false.112, %cond.true.105
  %cond126 = phi i32 [ %conv111, %cond.true.105 ], [ %conv124, %cond.false.112 ]
  %sub127 = sub nsw i32 32760, %cond126
  %shr128 = ashr i32 %sub127, 11
  %add129 = add nsw i32 %shl98, %shr128
  %conv130 = trunc i32 %add129 to i16
  %93 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom131 = sext i32 %93 to i64
  %94 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %colors132 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %94, i32 0, i32 1
  %devn133 = bitcast %union._c* %colors132 to %struct._devn*
  %values134 = getelementptr inbounds %struct._devn, %struct._devn* %devn133, i32 0, i32 0
  %arrayidx135 = getelementptr inbounds [64 x i16], [64 x i16]* %values134, i32 0, i64 %idxprom131
  store i16 %conv130, i16* %arrayidx135, align 2, !tbaa !34
  br label %for.inc.136

for.inc.136:                                      ; preds = %cond.end.125
  %95 = load i32, i32* %i, align 4, !tbaa !5
  %inc137 = add nsw i32 %95, 1
  store i32 %inc137, i32* %i, align 4, !tbaa !5
  br label %for.cond.66

for.end.138:                                      ; preds = %for.cond.66
  br label %if.end.139

if.end.139:                                       ; preds = %for.end.138, %for.end.64
  %96 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %96, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_devn, %struct.gx_device_color_type_s** %type, align 8, !tbaa !7
  br label %if.end.287

if.else.140:                                      ; preds = %if.end.12
  %97 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info141 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %97, i32 0, i32 11
  %polarity142 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info141, i32 0, i32 2
  %98 = load i32, i32* %polarity142, align 4, !tbaa !94
  %cmp143 = icmp eq i32 %98, 1
  br i1 %cmp143, label %if.then.145, label %if.else.203

if.then.145:                                      ; preds = %if.else.140
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.146

for.cond.146:                                     ; preds = %for.inc.200, %if.then.145
  %99 = load i32, i32* %i, align 4, !tbaa !5
  %100 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp147 = icmp slt i32 %99, %100
  br i1 %cmp147, label %for.body.149, label %for.end.202

for.body.149:                                     ; preds = %for.cond.146
  %101 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom150 = sext i32 %101 to i64
  %102 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer151 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %102, i32 0, i32 47
  %arrayidx152 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer151, i32 0, i64 %idxprom150
  %103 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx152, align 8, !tbaa !1
  %proc153 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %103, i32 0, i32 1
  %104 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc153, align 8, !tbaa !90
  %cmp154 = icmp eq float (double, %struct.gx_transfer_map_s*)* %104, @gs_identity_transfer
  br i1 %cmp154, label %cond.true.156, label %cond.false.160

cond.true.156:                                    ; preds = %for.body.149
  %105 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom157 = sext i32 %105 to i64
  %arrayidx158 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom157
  %106 = load i16, i16* %arrayidx158, align 2, !tbaa !34
  %conv159 = sext i16 %106 to i32
  br label %cond.end.170

cond.false.160:                                   ; preds = %for.body.149
  %107 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom161 = sext i32 %107 to i64
  %arrayidx162 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom161
  %108 = load i16, i16* %arrayidx162, align 2, !tbaa !34
  %109 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom163 = sext i32 %109 to i64
  %110 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer164 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %110, i32 0, i32 47
  %arrayidx165 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer164, i32 0, i64 %idxprom163
  %111 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx165, align 8, !tbaa !1
  %values166 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %111, i32 0, i32 4
  %arrayidx167 = getelementptr inbounds [256 x i16], [256 x i16]* %values166, i32 0, i64 0
  %call168 = call signext i16 @gx_color_frac_map(i16 signext %108, i16* %arrayidx167) #5
  %conv169 = sext i16 %call168 to i32
  br label %cond.end.170

cond.end.170:                                     ; preds = %cond.false.160, %cond.true.156
  %cond171 = phi i32 [ %conv159, %cond.true.156 ], [ %conv169, %cond.false.160 ]
  %shl172 = shl i32 %cond171, 1
  %112 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom173 = sext i32 %112 to i64
  %113 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer174 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %113, i32 0, i32 47
  %arrayidx175 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer174, i32 0, i64 %idxprom173
  %114 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx175, align 8, !tbaa !1
  %proc176 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %114, i32 0, i32 1
  %115 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc176, align 8, !tbaa !90
  %cmp177 = icmp eq float (double, %struct.gx_transfer_map_s*)* %115, @gs_identity_transfer
  br i1 %cmp177, label %cond.true.179, label %cond.false.183

cond.true.179:                                    ; preds = %cond.end.170
  %116 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom180 = sext i32 %116 to i64
  %arrayidx181 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom180
  %117 = load i16, i16* %arrayidx181, align 2, !tbaa !34
  %conv182 = sext i16 %117 to i32
  br label %cond.end.193

cond.false.183:                                   ; preds = %cond.end.170
  %118 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom184 = sext i32 %118 to i64
  %arrayidx185 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom184
  %119 = load i16, i16* %arrayidx185, align 2, !tbaa !34
  %120 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom186 = sext i32 %120 to i64
  %121 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer187 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %121, i32 0, i32 47
  %arrayidx188 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer187, i32 0, i64 %idxprom186
  %122 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx188, align 8, !tbaa !1
  %values189 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %122, i32 0, i32 4
  %arrayidx190 = getelementptr inbounds [256 x i16], [256 x i16]* %values189, i32 0, i64 0
  %call191 = call signext i16 @gx_color_frac_map(i16 signext %119, i16* %arrayidx190) #5
  %conv192 = sext i16 %call191 to i32
  br label %cond.end.193

cond.end.193:                                     ; preds = %cond.false.183, %cond.true.179
  %cond194 = phi i32 [ %conv182, %cond.true.179 ], [ %conv192, %cond.false.183 ]
  %shr195 = ashr i32 %cond194, 11
  %add196 = add nsw i32 %shl172, %shr195
  %conv197 = trunc i32 %add196 to i16
  %123 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom198 = sext i32 %123 to i64
  %arrayidx199 = getelementptr inbounds [64 x i16], [64 x i16]* %cv, i32 0, i64 %idxprom198
  store i16 %conv197, i16* %arrayidx199, align 2, !tbaa !34
  br label %for.inc.200

for.inc.200:                                      ; preds = %cond.end.193
  %124 = load i32, i32* %i, align 4, !tbaa !5
  %inc201 = add nsw i32 %124, 1
  store i32 %inc201, i32* %i, align 4, !tbaa !5
  br label %for.cond.146

for.end.202:                                      ; preds = %for.cond.146
  br label %if.end.275

if.else.203:                                      ; preds = %if.else.140
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.204

for.cond.204:                                     ; preds = %for.inc.272, %if.else.203
  %125 = load i32, i32* %i, align 4, !tbaa !5
  %126 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp205 = icmp slt i32 %125, %126
  br i1 %cmp205, label %for.body.207, label %for.end.274

for.body.207:                                     ; preds = %for.cond.204
  %127 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom208 = sext i32 %127 to i64
  %128 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer209 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %128, i32 0, i32 47
  %arrayidx210 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer209, i32 0, i64 %idxprom208
  %129 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx210, align 8, !tbaa !1
  %proc211 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %129, i32 0, i32 1
  %130 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc211, align 8, !tbaa !90
  %cmp212 = icmp eq float (double, %struct.gx_transfer_map_s*)* %130, @gs_identity_transfer
  br i1 %cmp212, label %cond.true.214, label %cond.false.221

cond.true.214:                                    ; preds = %for.body.207
  %131 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom215 = sext i32 %131 to i64
  %arrayidx216 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom215
  %132 = load i16, i16* %arrayidx216, align 2, !tbaa !34
  %conv217 = sext i16 %132 to i32
  %sub218 = sub nsw i32 32760, %conv217
  %conv219 = trunc i32 %sub218 to i16
  %conv220 = sext i16 %conv219 to i32
  br label %cond.end.234

cond.false.221:                                   ; preds = %for.body.207
  %133 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom222 = sext i32 %133 to i64
  %arrayidx223 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom222
  %134 = load i16, i16* %arrayidx223, align 2, !tbaa !34
  %conv224 = sext i16 %134 to i32
  %sub225 = sub nsw i32 32760, %conv224
  %conv226 = trunc i32 %sub225 to i16
  %135 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom227 = sext i32 %135 to i64
  %136 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer228 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %136, i32 0, i32 47
  %arrayidx229 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer228, i32 0, i64 %idxprom227
  %137 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx229, align 8, !tbaa !1
  %values230 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %137, i32 0, i32 4
  %arrayidx231 = getelementptr inbounds [256 x i16], [256 x i16]* %values230, i32 0, i64 0
  %call232 = call signext i16 @gx_color_frac_map(i16 signext %conv226, i16* %arrayidx231) #5
  %conv233 = sext i16 %call232 to i32
  br label %cond.end.234

cond.end.234:                                     ; preds = %cond.false.221, %cond.true.214
  %cond235 = phi i32 [ %conv220, %cond.true.214 ], [ %conv233, %cond.false.221 ]
  %sub236 = sub nsw i32 32760, %cond235
  %shl237 = shl i32 %sub236, 1
  %138 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom238 = sext i32 %138 to i64
  %139 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer239 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %139, i32 0, i32 47
  %arrayidx240 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer239, i32 0, i64 %idxprom238
  %140 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx240, align 8, !tbaa !1
  %proc241 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %140, i32 0, i32 1
  %141 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc241, align 8, !tbaa !90
  %cmp242 = icmp eq float (double, %struct.gx_transfer_map_s*)* %141, @gs_identity_transfer
  br i1 %cmp242, label %cond.true.244, label %cond.false.251

cond.true.244:                                    ; preds = %cond.end.234
  %142 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom245 = sext i32 %142 to i64
  %arrayidx246 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom245
  %143 = load i16, i16* %arrayidx246, align 2, !tbaa !34
  %conv247 = sext i16 %143 to i32
  %sub248 = sub nsw i32 32760, %conv247
  %conv249 = trunc i32 %sub248 to i16
  %conv250 = sext i16 %conv249 to i32
  br label %cond.end.264

cond.false.251:                                   ; preds = %cond.end.234
  %144 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom252 = sext i32 %144 to i64
  %arrayidx253 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom252
  %145 = load i16, i16* %arrayidx253, align 2, !tbaa !34
  %conv254 = sext i16 %145 to i32
  %sub255 = sub nsw i32 32760, %conv254
  %conv256 = trunc i32 %sub255 to i16
  %146 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom257 = sext i32 %146 to i64
  %147 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer258 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %147, i32 0, i32 47
  %arrayidx259 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer258, i32 0, i64 %idxprom257
  %148 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx259, align 8, !tbaa !1
  %values260 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %148, i32 0, i32 4
  %arrayidx261 = getelementptr inbounds [256 x i16], [256 x i16]* %values260, i32 0, i64 0
  %call262 = call signext i16 @gx_color_frac_map(i16 signext %conv256, i16* %arrayidx261) #5
  %conv263 = sext i16 %call262 to i32
  br label %cond.end.264

cond.end.264:                                     ; preds = %cond.false.251, %cond.true.244
  %cond265 = phi i32 [ %conv250, %cond.true.244 ], [ %conv263, %cond.false.251 ]
  %sub266 = sub nsw i32 32760, %cond265
  %shr267 = ashr i32 %sub266, 11
  %add268 = add nsw i32 %shl237, %shr267
  %conv269 = trunc i32 %add268 to i16
  %149 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom270 = sext i32 %149 to i64
  %arrayidx271 = getelementptr inbounds [64 x i16], [64 x i16]* %cv, i32 0, i64 %idxprom270
  store i16 %conv269, i16* %arrayidx271, align 2, !tbaa !34
  br label %for.inc.272

for.inc.272:                                      ; preds = %cond.end.264
  %150 = load i32, i32* %i, align 4, !tbaa !5
  %inc273 = add nsw i32 %150, 1
  store i32 %inc273, i32* %i, align 4, !tbaa !5
  br label %for.cond.204

for.end.274:                                      ; preds = %for.cond.204
  br label %if.end.275

if.end.275:                                       ; preds = %for.end.274, %for.end.202
  %151 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs276 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %151, i32 0, i32 42
  %encode_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs276, i32 0, i32 51
  %encode_color277 = bitcast {}** %encode_color to i64 (%struct.gx_device_s*, i16*)**
  %152 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color277, align 8, !tbaa !99
  %153 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay278 = getelementptr inbounds [64 x i16], [64 x i16]* %cv, i32 0, i32 0
  %call279 = call i64 %152(%struct.gx_device_s* %153, i16* %arraydecay278) #5
  store i64 %call279, i64* %color, align 8, !tbaa !32
  %154 = load i64, i64* %color, align 8, !tbaa !32
  %cmp280 = icmp ne i64 %154, -1
  br i1 %cmp280, label %if.then.282, label %if.else.285

if.then.282:                                      ; preds = %if.end.275
  %155 = load i64, i64* %color, align 8, !tbaa !32
  %156 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %colors283 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %156, i32 0, i32 1
  %pure = bitcast %union._c* %colors283 to i64*
  store i64 %155, i64* %pure, align 8, !tbaa !32
  %157 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %type284 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %157, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_pure, %struct.gx_device_color_type_s** %type284, align 8, !tbaa !7
  br label %if.end.286

if.else.285:                                      ; preds = %if.end.275
  %158 = load i16*, i16** %pcc.addr, align 8, !tbaa !1
  %159 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %160 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %161 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %162 = load i32, i32* %select.addr, align 4, !tbaa !33
  call void @cmap_devicen_halftoned(i16* %158, %struct.gx_device_color_s* %159, %struct.gs_imager_state_s* %160, %struct.gx_device_s* %161, i32 %162) #5
  br label %if.end.286

if.end.286:                                       ; preds = %if.else.285, %if.then.282
  br label %if.end.287

if.end.287:                                       ; preds = %if.end.286, %if.end.139
  %163 = bitcast %struct.cmm_profile_s** %des_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %163) #1
  %164 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %164) #1
  %165 = bitcast %struct.gsicc_rendering_param_s* %render_cond to i8*
  call void @llvm.lifetime.end(i64 24, i8* %165) #1
  %166 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %166) #1
  %167 = bitcast i64* %color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %167) #1
  %168 = bitcast [64 x i16]* %cv to i8*
  call void @llvm.lifetime.end(i64 128, i8* %168) #1
  %169 = bitcast [64 x i16]* %cm_comps to i8*
  call void @llvm.lifetime.end(i64 128, i8* %169) #1
  %170 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %170) #1
  %171 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %171) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @cmap_direct_is_halftoned(%struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev) #0 {
entry:
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @cmap_gray_halftoned(i16 signext %gray, %struct.gx_device_color_s* %pdc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, i32 %select) #0 {
entry:
  %gray.addr = alloca i16, align 2
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %select.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %ncomps = alloca i32, align 4
  %cm_comps = alloca [64 x i16], align 16
  %k = alloca i32, align 4
  store i16 %gray, i16* %gray.addr, align 2, !tbaa !34
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %select, i32* %select.addr, align 4, !tbaa !33
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %3 = load i32, i32* %num_components, align 4, !tbaa !20
  store i32 %3, i32* %ncomps, align 4, !tbaa !5
  %4 = bitcast [64 x i16]* %cm_comps to i8*
  call void @llvm.lifetime.start(i64 128, i8* %4) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !tbaa !5
  %6 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom
  store i16 0, i16* %arrayidx, align 2, !tbaa !34
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 42
  %get_color_mapping_procs = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 49
  %10 = load %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)** %get_color_mapping_procs, align 8, !tbaa !102
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call %struct.gx_cm_color_map_procs_s* %10(%struct.gx_device_s* %11) #5
  %map_gray = getelementptr inbounds %struct.gx_cm_color_map_procs_s, %struct.gx_cm_color_map_procs_s* %call, i32 0, i32 0
  %12 = load void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, i16, i16*)** %map_gray, align 8, !tbaa !104
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %14 = load i16, i16* %gray.addr, align 2, !tbaa !34
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i32 0
  call void %12(%struct.gx_device_s* %13, i16 signext %14, i16* %arraydecay) #5
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %15, i32 0, i32 11
  %polarity = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info1, i32 0, i32 2
  %16 = load i32, i32* %polarity, align 4, !tbaa !94
  %cmp2 = icmp eq i32 %16, 1
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.22, %if.then
  %17 = load i32, i32* %i, align 4, !tbaa !5
  %18 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %17, %18
  br i1 %cmp4, label %for.body.5, label %for.end.24

for.body.5:                                       ; preds = %for.cond.3
  %19 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom6 = sext i32 %19 to i64
  %20 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %20, i32 0, i32 47
  %arrayidx7 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer, i32 0, i64 %idxprom6
  %21 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx7, align 8, !tbaa !1
  %proc = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %21, i32 0, i32 1
  %22 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc, align 8, !tbaa !90
  %cmp8 = icmp eq float (double, %struct.gx_transfer_map_s*)* %22, @gs_identity_transfer
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.5
  %23 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom9 = sext i32 %23 to i64
  %arrayidx10 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom9
  %24 = load i16, i16* %arrayidx10, align 2, !tbaa !34
  %conv = sext i16 %24 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.body.5
  %25 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %25 to i64
  %arrayidx12 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom11
  %26 = load i16, i16* %arrayidx12, align 2, !tbaa !34
  %27 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom13 = sext i32 %27 to i64
  %28 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer14 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %28, i32 0, i32 47
  %arrayidx15 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer14, i32 0, i64 %idxprom13
  %29 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx15, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %29, i32 0, i32 4
  %arrayidx16 = getelementptr inbounds [256 x i16], [256 x i16]* %values, i32 0, i64 0
  %call17 = call signext i16 @gx_color_frac_map(i16 signext %26, i16* %arrayidx16) #5
  %conv18 = sext i16 %call17 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv18, %cond.false ]
  %conv19 = trunc i32 %cond to i16
  %30 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom20 = sext i32 %30 to i64
  %arrayidx21 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom20
  store i16 %conv19, i16* %arrayidx21, align 2, !tbaa !34
  br label %for.inc.22

for.inc.22:                                       ; preds = %cond.end
  %31 = load i32, i32* %i, align 4, !tbaa !5
  %inc23 = add nsw i32 %31, 1
  store i32 %inc23, i32* %i, align 4, !tbaa !5
  br label %for.cond.3

for.end.24:                                       ; preds = %for.cond.3
  br label %if.end.124

if.else:                                          ; preds = %for.end
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info25 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %32, i32 0, i32 11
  %opmode = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info25, i32 0, i32 15
  %33 = load i32, i32* %opmode, align 4, !tbaa !95
  %cmp26 = icmp eq i32 %33, -1
  br i1 %cmp26, label %if.then.28, label %if.end

if.then.28:                                       ; preds = %if.else
  %34 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call29 = call i64 @check_cmyk_color_model_comps(%struct.gx_device_s* %34) #5
  br label %if.end

if.end:                                           ; preds = %if.then.28, %if.else
  %35 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info30 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %35, i32 0, i32 11
  %opmode31 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info30, i32 0, i32 15
  %36 = load i32, i32* %opmode31, align 4, !tbaa !95
  %cmp32 = icmp eq i32 %36, 1
  br i1 %cmp32, label %if.then.34, label %if.else.83

if.then.34:                                       ; preds = %if.end
  %37 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info35 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %38, i32 0, i32 11
  %black_component = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info35, i32 0, i32 17
  %39 = load i32, i32* %black_component, align 4, !tbaa !96
  store i32 %39, i32* %k, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.80, %if.then.34
  %40 = load i32, i32* %i, align 4, !tbaa !5
  %41 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp37 = icmp slt i32 %40, %41
  br i1 %cmp37, label %for.body.39, label %for.end.82

for.body.39:                                      ; preds = %for.cond.36
  %42 = load i32, i32* %i, align 4, !tbaa !5
  %43 = load i32, i32* %k, align 4, !tbaa !5
  %cmp40 = icmp eq i32 %42, %43
  br i1 %cmp40, label %if.then.42, label %if.else.74

if.then.42:                                       ; preds = %for.body.39
  %44 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom43 = sext i32 %44 to i64
  %45 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer44 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %45, i32 0, i32 47
  %arrayidx45 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer44, i32 0, i64 %idxprom43
  %46 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx45, align 8, !tbaa !1
  %proc46 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %46, i32 0, i32 1
  %47 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc46, align 8, !tbaa !90
  %cmp47 = icmp eq float (double, %struct.gx_transfer_map_s*)* %47, @gs_identity_transfer
  br i1 %cmp47, label %cond.true.49, label %cond.false.55

cond.true.49:                                     ; preds = %if.then.42
  %48 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom50 = sext i32 %48 to i64
  %arrayidx51 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom50
  %49 = load i16, i16* %arrayidx51, align 2, !tbaa !34
  %conv52 = sext i16 %49 to i32
  %sub = sub nsw i32 32760, %conv52
  %conv53 = trunc i32 %sub to i16
  %conv54 = sext i16 %conv53 to i32
  br label %cond.end.68

cond.false.55:                                    ; preds = %if.then.42
  %50 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom56 = sext i32 %50 to i64
  %arrayidx57 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom56
  %51 = load i16, i16* %arrayidx57, align 2, !tbaa !34
  %conv58 = sext i16 %51 to i32
  %sub59 = sub nsw i32 32760, %conv58
  %conv60 = trunc i32 %sub59 to i16
  %52 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom61 = sext i32 %52 to i64
  %53 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer62 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %53, i32 0, i32 47
  %arrayidx63 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer62, i32 0, i64 %idxprom61
  %54 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx63, align 8, !tbaa !1
  %values64 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %54, i32 0, i32 4
  %arrayidx65 = getelementptr inbounds [256 x i16], [256 x i16]* %values64, i32 0, i64 0
  %call66 = call signext i16 @gx_color_frac_map(i16 signext %conv60, i16* %arrayidx65) #5
  %conv67 = sext i16 %call66 to i32
  br label %cond.end.68

cond.end.68:                                      ; preds = %cond.false.55, %cond.true.49
  %cond69 = phi i32 [ %conv54, %cond.true.49 ], [ %conv67, %cond.false.55 ]
  %sub70 = sub nsw i32 32760, %cond69
  %conv71 = trunc i32 %sub70 to i16
  %55 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom72 = sext i32 %55 to i64
  %arrayidx73 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom72
  store i16 %conv71, i16* %arrayidx73, align 2, !tbaa !34
  br label %if.end.79

if.else.74:                                       ; preds = %for.body.39
  %56 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom75 = sext i32 %56 to i64
  %arrayidx76 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom75
  %57 = load i16, i16* %arrayidx76, align 2, !tbaa !34
  %58 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom77 = sext i32 %58 to i64
  %arrayidx78 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom77
  store i16 %57, i16* %arrayidx78, align 2, !tbaa !34
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.74, %cond.end.68
  br label %for.inc.80

for.inc.80:                                       ; preds = %if.end.79
  %59 = load i32, i32* %i, align 4, !tbaa !5
  %inc81 = add nsw i32 %59, 1
  store i32 %inc81, i32* %i, align 4, !tbaa !5
  br label %for.cond.36

for.end.82:                                       ; preds = %for.cond.36
  %60 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  br label %if.end.123

if.else.83:                                       ; preds = %if.end
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.84

for.cond.84:                                      ; preds = %for.inc.120, %if.else.83
  %61 = load i32, i32* %i, align 4, !tbaa !5
  %62 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp85 = icmp slt i32 %61, %62
  br i1 %cmp85, label %for.body.87, label %for.end.122

for.body.87:                                      ; preds = %for.cond.84
  %63 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom88 = sext i32 %63 to i64
  %64 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer89 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %64, i32 0, i32 47
  %arrayidx90 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer89, i32 0, i64 %idxprom88
  %65 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx90, align 8, !tbaa !1
  %proc91 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %65, i32 0, i32 1
  %66 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc91, align 8, !tbaa !90
  %cmp92 = icmp eq float (double, %struct.gx_transfer_map_s*)* %66, @gs_identity_transfer
  br i1 %cmp92, label %cond.true.94, label %cond.false.101

cond.true.94:                                     ; preds = %for.body.87
  %67 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom95 = sext i32 %67 to i64
  %arrayidx96 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom95
  %68 = load i16, i16* %arrayidx96, align 2, !tbaa !34
  %conv97 = sext i16 %68 to i32
  %sub98 = sub nsw i32 32760, %conv97
  %conv99 = trunc i32 %sub98 to i16
  %conv100 = sext i16 %conv99 to i32
  br label %cond.end.114

cond.false.101:                                   ; preds = %for.body.87
  %69 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom102 = sext i32 %69 to i64
  %arrayidx103 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom102
  %70 = load i16, i16* %arrayidx103, align 2, !tbaa !34
  %conv104 = sext i16 %70 to i32
  %sub105 = sub nsw i32 32760, %conv104
  %conv106 = trunc i32 %sub105 to i16
  %71 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom107 = sext i32 %71 to i64
  %72 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer108 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %72, i32 0, i32 47
  %arrayidx109 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer108, i32 0, i64 %idxprom107
  %73 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx109, align 8, !tbaa !1
  %values110 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %73, i32 0, i32 4
  %arrayidx111 = getelementptr inbounds [256 x i16], [256 x i16]* %values110, i32 0, i64 0
  %call112 = call signext i16 @gx_color_frac_map(i16 signext %conv106, i16* %arrayidx111) #5
  %conv113 = sext i16 %call112 to i32
  br label %cond.end.114

cond.end.114:                                     ; preds = %cond.false.101, %cond.true.94
  %cond115 = phi i32 [ %conv100, %cond.true.94 ], [ %conv113, %cond.false.101 ]
  %sub116 = sub nsw i32 32760, %cond115
  %conv117 = trunc i32 %sub116 to i16
  %74 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom118 = sext i32 %74 to i64
  %arrayidx119 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom118
  store i16 %conv117, i16* %arrayidx119, align 2, !tbaa !34
  br label %for.inc.120

for.inc.120:                                      ; preds = %cond.end.114
  %75 = load i32, i32* %i, align 4, !tbaa !5
  %inc121 = add nsw i32 %75, 1
  store i32 %inc121, i32* %i, align 4, !tbaa !5
  br label %for.cond.84

for.end.122:                                      ; preds = %for.cond.84
  br label %if.end.123

if.end.123:                                       ; preds = %for.end.122, %for.end.82
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123, %for.end.24
  %arraydecay125 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i32 0
  %76 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %77 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %78 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %dev_ht = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %78, i32 0, i32 41
  %79 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht, align 8, !tbaa !97
  %80 = load i32, i32* %select.addr, align 4, !tbaa !33
  %idxprom126 = sext i32 %80 to i64
  %81 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %screen_phase = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %81, i32 0, i32 40
  %arrayidx127 = getelementptr inbounds [2 x %struct.gs_int_point_s], [2 x %struct.gs_int_point_s]* %screen_phase, i32 0, i64 %idxprom126
  %call128 = call i32 @gx_render_device_DeviceN(i16* %arraydecay125, %struct.gx_device_color_s* %76, %struct.gx_device_s* %77, %struct.gx_device_halftone_s* %79, %struct.gs_int_point_s* %arrayidx127) #5
  %cmp129 = icmp eq i32 %call128, 1
  br i1 %cmp129, label %if.then.131, label %if.end.133

if.then.131:                                      ; preds = %if.end.124
  %82 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %82, i32 0, i32 0
  %83 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !7
  %load = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %83, i32 0, i32 4
  %84 = load i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %load, align 8, !tbaa !98
  %85 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %86 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %87 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %88 = load i32, i32* %select.addr, align 4, !tbaa !33
  %call132 = call i32 %84(%struct.gx_device_color_s* %85, %struct.gs_imager_state_s* %86, %struct.gx_device_s* %87, i32 %88) #5
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.131, %if.end.124
  %89 = bitcast [64 x i16]* %cm_comps to i8*
  call void @llvm.lifetime.end(i64 128, i8* %89) #1
  %90 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  %91 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cmap_rgb_halftoned(i16 signext %r, i16 signext %g, i16 signext %b, %struct.gx_device_color_s* %pdc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, i32 %select) #0 {
entry:
  %r.addr = alloca i16, align 2
  %g.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %select.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %ncomps = alloca i32, align 4
  %cm_comps = alloca [64 x i16], align 16
  store i16 %r, i16* %r.addr, align 2, !tbaa !34
  store i16 %g, i16* %g.addr, align 2, !tbaa !34
  store i16 %b, i16* %b.addr, align 2, !tbaa !34
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %select, i32* %select.addr, align 4, !tbaa !33
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %3 = load i32, i32* %num_components, align 4, !tbaa !20
  store i32 %3, i32* %ncomps, align 4, !tbaa !5
  %4 = bitcast [64 x i16]* %cm_comps to i8*
  call void @llvm.lifetime.start(i64 128, i8* %4) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !tbaa !5
  %6 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom
  store i16 0, i16* %arrayidx, align 2, !tbaa !34
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 42
  %get_color_mapping_procs = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 49
  %10 = load %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)** %get_color_mapping_procs, align 8, !tbaa !102
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call %struct.gx_cm_color_map_procs_s* %10(%struct.gx_device_s* %11) #5
  %map_rgb = getelementptr inbounds %struct.gx_cm_color_map_procs_s, %struct.gx_cm_color_map_procs_s* %call, i32 0, i32 1
  %12 = load void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)** %map_rgb, align 8, !tbaa !106
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %14 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %15 = load i16, i16* %r.addr, align 2, !tbaa !34
  %16 = load i16, i16* %g.addr, align 2, !tbaa !34
  %17 = load i16, i16* %b.addr, align 2, !tbaa !34
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i32 0
  call void %12(%struct.gx_device_s* %13, %struct.gs_imager_state_s* %14, i16 signext %15, i16 signext %16, i16 signext %17, i16* %arraydecay) #5
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 11
  %polarity = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info1, i32 0, i32 2
  %19 = load i32, i32* %polarity, align 4, !tbaa !94
  %cmp2 = icmp eq i32 %19, 1
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.22, %if.then
  %20 = load i32, i32* %i, align 4, !tbaa !5
  %21 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %20, %21
  br i1 %cmp4, label %for.body.5, label %for.end.24

for.body.5:                                       ; preds = %for.cond.3
  %22 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom6 = sext i32 %22 to i64
  %23 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %23, i32 0, i32 47
  %arrayidx7 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer, i32 0, i64 %idxprom6
  %24 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx7, align 8, !tbaa !1
  %proc = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %24, i32 0, i32 1
  %25 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc, align 8, !tbaa !90
  %cmp8 = icmp eq float (double, %struct.gx_transfer_map_s*)* %25, @gs_identity_transfer
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.5
  %26 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom9 = sext i32 %26 to i64
  %arrayidx10 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom9
  %27 = load i16, i16* %arrayidx10, align 2, !tbaa !34
  %conv = sext i16 %27 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.body.5
  %28 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %28 to i64
  %arrayidx12 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom11
  %29 = load i16, i16* %arrayidx12, align 2, !tbaa !34
  %30 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom13 = sext i32 %30 to i64
  %31 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer14 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %31, i32 0, i32 47
  %arrayidx15 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer14, i32 0, i64 %idxprom13
  %32 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx15, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %32, i32 0, i32 4
  %arrayidx16 = getelementptr inbounds [256 x i16], [256 x i16]* %values, i32 0, i64 0
  %call17 = call signext i16 @gx_color_frac_map(i16 signext %29, i16* %arrayidx16) #5
  %conv18 = sext i16 %call17 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv18, %cond.false ]
  %conv19 = trunc i32 %cond to i16
  %33 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom20 = sext i32 %33 to i64
  %arrayidx21 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom20
  store i16 %conv19, i16* %arrayidx21, align 2, !tbaa !34
  br label %for.inc.22

for.inc.22:                                       ; preds = %cond.end
  %34 = load i32, i32* %i, align 4, !tbaa !5
  %inc23 = add nsw i32 %34, 1
  store i32 %inc23, i32* %i, align 4, !tbaa !5
  br label %for.cond.3

for.end.24:                                       ; preds = %for.cond.3
  br label %if.end

if.else:                                          ; preds = %for.end
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.60, %if.else
  %35 = load i32, i32* %i, align 4, !tbaa !5
  %36 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp26 = icmp slt i32 %35, %36
  br i1 %cmp26, label %for.body.28, label %for.end.62

for.body.28:                                      ; preds = %for.cond.25
  %37 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom29 = sext i32 %37 to i64
  %38 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer30 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %38, i32 0, i32 47
  %arrayidx31 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer30, i32 0, i64 %idxprom29
  %39 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx31, align 8, !tbaa !1
  %proc32 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %39, i32 0, i32 1
  %40 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc32, align 8, !tbaa !90
  %cmp33 = icmp eq float (double, %struct.gx_transfer_map_s*)* %40, @gs_identity_transfer
  br i1 %cmp33, label %cond.true.35, label %cond.false.41

cond.true.35:                                     ; preds = %for.body.28
  %41 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom36 = sext i32 %41 to i64
  %arrayidx37 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom36
  %42 = load i16, i16* %arrayidx37, align 2, !tbaa !34
  %conv38 = sext i16 %42 to i32
  %sub = sub nsw i32 32760, %conv38
  %conv39 = trunc i32 %sub to i16
  %conv40 = sext i16 %conv39 to i32
  br label %cond.end.54

cond.false.41:                                    ; preds = %for.body.28
  %43 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom42 = sext i32 %43 to i64
  %arrayidx43 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom42
  %44 = load i16, i16* %arrayidx43, align 2, !tbaa !34
  %conv44 = sext i16 %44 to i32
  %sub45 = sub nsw i32 32760, %conv44
  %conv46 = trunc i32 %sub45 to i16
  %45 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom47 = sext i32 %45 to i64
  %46 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer48 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %46, i32 0, i32 47
  %arrayidx49 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer48, i32 0, i64 %idxprom47
  %47 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx49, align 8, !tbaa !1
  %values50 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %47, i32 0, i32 4
  %arrayidx51 = getelementptr inbounds [256 x i16], [256 x i16]* %values50, i32 0, i64 0
  %call52 = call signext i16 @gx_color_frac_map(i16 signext %conv46, i16* %arrayidx51) #5
  %conv53 = sext i16 %call52 to i32
  br label %cond.end.54

cond.end.54:                                      ; preds = %cond.false.41, %cond.true.35
  %cond55 = phi i32 [ %conv40, %cond.true.35 ], [ %conv53, %cond.false.41 ]
  %sub56 = sub nsw i32 32760, %cond55
  %conv57 = trunc i32 %sub56 to i16
  %48 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom58 = sext i32 %48 to i64
  %arrayidx59 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom58
  store i16 %conv57, i16* %arrayidx59, align 2, !tbaa !34
  br label %for.inc.60

for.inc.60:                                       ; preds = %cond.end.54
  %49 = load i32, i32* %i, align 4, !tbaa !5
  %inc61 = add nsw i32 %49, 1
  store i32 %inc61, i32* %i, align 4, !tbaa !5
  br label %for.cond.25

for.end.62:                                       ; preds = %for.cond.25
  br label %if.end

if.end:                                           ; preds = %for.end.62, %for.end.24
  %arraydecay63 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i32 0
  %50 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %51 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %52 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %dev_ht = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %52, i32 0, i32 41
  %53 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht, align 8, !tbaa !97
  %54 = load i32, i32* %select.addr, align 4, !tbaa !33
  %idxprom64 = sext i32 %54 to i64
  %55 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %screen_phase = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %55, i32 0, i32 40
  %arrayidx65 = getelementptr inbounds [2 x %struct.gs_int_point_s], [2 x %struct.gs_int_point_s]* %screen_phase, i32 0, i64 %idxprom64
  %call66 = call i32 @gx_render_device_DeviceN(i16* %arraydecay63, %struct.gx_device_color_s* %50, %struct.gx_device_s* %51, %struct.gx_device_halftone_s* %53, %struct.gs_int_point_s* %arrayidx65) #5
  %cmp67 = icmp eq i32 %call66, 1
  br i1 %cmp67, label %if.then.69, label %if.end.71

if.then.69:                                       ; preds = %if.end
  %56 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %56, i32 0, i32 0
  %57 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !7
  %load = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %57, i32 0, i32 4
  %58 = load i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %load, align 8, !tbaa !98
  %59 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %60 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %61 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %62 = load i32, i32* %select.addr, align 4, !tbaa !33
  %call70 = call i32 %58(%struct.gx_device_color_s* %59, %struct.gs_imager_state_s* %60, %struct.gx_device_s* %61, i32 %62) #5
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.69, %if.end
  %63 = bitcast [64 x i16]* %cm_comps to i8*
  call void @llvm.lifetime.end(i64 128, i8* %63) #1
  %64 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cmap_rgb_alpha_halftoned(i16 signext %r, i16 signext %g, i16 signext %b, i16 signext %alpha, %struct.gx_device_color_s* %pdc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, i32 %select) #0 {
entry:
  %r.addr = alloca i16, align 2
  %g.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  %alpha.addr = alloca i16, align 2
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %select.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %ncomps = alloca i32, align 4
  %cm_comps = alloca [64 x i16], align 16
  %alpha_bias = alloca i16, align 2
  store i16 %r, i16* %r.addr, align 2, !tbaa !34
  store i16 %g, i16* %g.addr, align 2, !tbaa !34
  store i16 %b, i16* %b.addr, align 2, !tbaa !34
  store i16 %alpha, i16* %alpha.addr, align 2, !tbaa !34
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %select, i32* %select.addr, align 4, !tbaa !33
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %3 = load i32, i32* %num_components, align 4, !tbaa !20
  store i32 %3, i32* %ncomps, align 4, !tbaa !5
  %4 = bitcast [64 x i16]* %cm_comps to i8*
  call void @llvm.lifetime.start(i64 128, i8* %4) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !tbaa !5
  %6 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom
  store i16 0, i16* %arrayidx, align 2, !tbaa !34
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 42
  %get_color_mapping_procs = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 49
  %10 = load %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)** %get_color_mapping_procs, align 8, !tbaa !102
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call %struct.gx_cm_color_map_procs_s* %10(%struct.gx_device_s* %11) #5
  %map_rgb = getelementptr inbounds %struct.gx_cm_color_map_procs_s, %struct.gx_cm_color_map_procs_s* %call, i32 0, i32 1
  %12 = load void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)** %map_rgb, align 8, !tbaa !106
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %14 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %15 = load i16, i16* %r.addr, align 2, !tbaa !34
  %16 = load i16, i16* %g.addr, align 2, !tbaa !34
  %17 = load i16, i16* %b.addr, align 2, !tbaa !34
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i32 0
  call void %12(%struct.gx_device_s* %13, %struct.gs_imager_state_s* %14, i16 signext %15, i16 signext %16, i16 signext %17, i16* %arraydecay) #5
  %18 = load i16, i16* %alpha.addr, align 2, !tbaa !34
  %conv = sext i16 %18 to i32
  %cmp1 = icmp ne i32 %conv, 32760
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %19 = bitcast i16* %alpha_bias to i8*
  call void @llvm.lifetime.start(i64 2, i8* %19) #1
  store i16 0, i16* %alpha_bias, align 2, !tbaa !34
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.17, %if.then
  %20 = load i32, i32* %i, align 4, !tbaa !5
  %21 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %20, %21
  br i1 %cmp4, label %for.body.6, label %for.end.19

for.body.6:                                       ; preds = %for.cond.3
  %22 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom7 = sext i32 %22 to i64
  %arrayidx8 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom7
  %23 = load i16, i16* %arrayidx8, align 2, !tbaa !34
  %conv9 = sext i16 %23 to i64
  %24 = load i16, i16* %alpha.addr, align 2, !tbaa !34
  %conv10 = sext i16 %24 to i64
  %mul = mul nsw i64 %conv9, %conv10
  %conv11 = trunc i64 %mul to i16
  %conv12 = sext i16 %conv11 to i32
  %div = sdiv i32 %conv12, 32760
  %25 = load i16, i16* %alpha_bias, align 2, !tbaa !34
  %conv13 = sext i16 %25 to i32
  %add = add nsw i32 %div, %conv13
  %conv14 = trunc i32 %add to i16
  %26 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom15 = sext i32 %26 to i64
  %arrayidx16 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom15
  store i16 %conv14, i16* %arrayidx16, align 2, !tbaa !34
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.body.6
  %27 = load i32, i32* %i, align 4, !tbaa !5
  %inc18 = add nsw i32 %27, 1
  store i32 %inc18, i32* %i, align 4, !tbaa !5
  br label %for.cond.3

for.end.19:                                       ; preds = %for.cond.3
  %28 = bitcast i16* %alpha_bias to i8*
  call void @llvm.lifetime.end(i64 2, i8* %28) #1
  br label %if.end

if.end:                                           ; preds = %for.end.19, %for.end
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info20 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %29, i32 0, i32 11
  %polarity = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info20, i32 0, i32 2
  %30 = load i32, i32* %polarity, align 4, !tbaa !94
  %cmp21 = icmp eq i32 %30, 1
  br i1 %cmp21, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.end
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.46, %if.then.23
  %31 = load i32, i32* %i, align 4, !tbaa !5
  %32 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp25 = icmp slt i32 %31, %32
  br i1 %cmp25, label %for.body.27, label %for.end.48

for.body.27:                                      ; preds = %for.cond.24
  %33 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom28 = sext i32 %33 to i64
  %34 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %34, i32 0, i32 47
  %arrayidx29 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer, i32 0, i64 %idxprom28
  %35 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx29, align 8, !tbaa !1
  %proc = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %35, i32 0, i32 1
  %36 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc, align 8, !tbaa !90
  %cmp30 = icmp eq float (double, %struct.gx_transfer_map_s*)* %36, @gs_identity_transfer
  br i1 %cmp30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.27
  %37 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom32 = sext i32 %37 to i64
  %arrayidx33 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom32
  %38 = load i16, i16* %arrayidx33, align 2, !tbaa !34
  %conv34 = sext i16 %38 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.body.27
  %39 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom35 = sext i32 %39 to i64
  %arrayidx36 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom35
  %40 = load i16, i16* %arrayidx36, align 2, !tbaa !34
  %41 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom37 = sext i32 %41 to i64
  %42 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer38 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %42, i32 0, i32 47
  %arrayidx39 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer38, i32 0, i64 %idxprom37
  %43 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx39, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %43, i32 0, i32 4
  %arrayidx40 = getelementptr inbounds [256 x i16], [256 x i16]* %values, i32 0, i64 0
  %call41 = call signext i16 @gx_color_frac_map(i16 signext %40, i16* %arrayidx40) #5
  %conv42 = sext i16 %call41 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv34, %cond.true ], [ %conv42, %cond.false ]
  %conv43 = trunc i32 %cond to i16
  %44 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom44 = sext i32 %44 to i64
  %arrayidx45 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom44
  store i16 %conv43, i16* %arrayidx45, align 2, !tbaa !34
  br label %for.inc.46

for.inc.46:                                       ; preds = %cond.end
  %45 = load i32, i32* %i, align 4, !tbaa !5
  %inc47 = add nsw i32 %45, 1
  store i32 %inc47, i32* %i, align 4, !tbaa !5
  br label %for.cond.24

for.end.48:                                       ; preds = %for.cond.24
  br label %if.end.87

if.else:                                          ; preds = %if.end
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.84, %if.else
  %46 = load i32, i32* %i, align 4, !tbaa !5
  %47 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp50 = icmp slt i32 %46, %47
  br i1 %cmp50, label %for.body.52, label %for.end.86

for.body.52:                                      ; preds = %for.cond.49
  %48 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom53 = sext i32 %48 to i64
  %49 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer54 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %49, i32 0, i32 47
  %arrayidx55 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer54, i32 0, i64 %idxprom53
  %50 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx55, align 8, !tbaa !1
  %proc56 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %50, i32 0, i32 1
  %51 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc56, align 8, !tbaa !90
  %cmp57 = icmp eq float (double, %struct.gx_transfer_map_s*)* %51, @gs_identity_transfer
  br i1 %cmp57, label %cond.true.59, label %cond.false.65

cond.true.59:                                     ; preds = %for.body.52
  %52 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom60 = sext i32 %52 to i64
  %arrayidx61 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom60
  %53 = load i16, i16* %arrayidx61, align 2, !tbaa !34
  %conv62 = sext i16 %53 to i32
  %sub = sub nsw i32 32760, %conv62
  %conv63 = trunc i32 %sub to i16
  %conv64 = sext i16 %conv63 to i32
  br label %cond.end.78

cond.false.65:                                    ; preds = %for.body.52
  %54 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom66 = sext i32 %54 to i64
  %arrayidx67 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom66
  %55 = load i16, i16* %arrayidx67, align 2, !tbaa !34
  %conv68 = sext i16 %55 to i32
  %sub69 = sub nsw i32 32760, %conv68
  %conv70 = trunc i32 %sub69 to i16
  %56 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom71 = sext i32 %56 to i64
  %57 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer72 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %57, i32 0, i32 47
  %arrayidx73 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer72, i32 0, i64 %idxprom71
  %58 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx73, align 8, !tbaa !1
  %values74 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %58, i32 0, i32 4
  %arrayidx75 = getelementptr inbounds [256 x i16], [256 x i16]* %values74, i32 0, i64 0
  %call76 = call signext i16 @gx_color_frac_map(i16 signext %conv70, i16* %arrayidx75) #5
  %conv77 = sext i16 %call76 to i32
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.false.65, %cond.true.59
  %cond79 = phi i32 [ %conv64, %cond.true.59 ], [ %conv77, %cond.false.65 ]
  %sub80 = sub nsw i32 32760, %cond79
  %conv81 = trunc i32 %sub80 to i16
  %59 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom82 = sext i32 %59 to i64
  %arrayidx83 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom82
  store i16 %conv81, i16* %arrayidx83, align 2, !tbaa !34
  br label %for.inc.84

for.inc.84:                                       ; preds = %cond.end.78
  %60 = load i32, i32* %i, align 4, !tbaa !5
  %inc85 = add nsw i32 %60, 1
  store i32 %inc85, i32* %i, align 4, !tbaa !5
  br label %for.cond.49

for.end.86:                                       ; preds = %for.cond.49
  br label %if.end.87

if.end.87:                                        ; preds = %for.end.86, %for.end.48
  %arraydecay88 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i32 0
  %61 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %62 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %63 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %dev_ht = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %63, i32 0, i32 41
  %64 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht, align 8, !tbaa !97
  %65 = load i32, i32* %select.addr, align 4, !tbaa !33
  %idxprom89 = sext i32 %65 to i64
  %66 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %screen_phase = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %66, i32 0, i32 40
  %arrayidx90 = getelementptr inbounds [2 x %struct.gs_int_point_s], [2 x %struct.gs_int_point_s]* %screen_phase, i32 0, i64 %idxprom89
  %call91 = call i32 @gx_render_device_DeviceN(i16* %arraydecay88, %struct.gx_device_color_s* %61, %struct.gx_device_s* %62, %struct.gx_device_halftone_s* %64, %struct.gs_int_point_s* %arrayidx90) #5
  %cmp92 = icmp eq i32 %call91, 1
  br i1 %cmp92, label %if.then.94, label %if.end.96

if.then.94:                                       ; preds = %if.end.87
  %67 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %67, i32 0, i32 0
  %68 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !7
  %load = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %68, i32 0, i32 4
  %69 = load i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %load, align 8, !tbaa !98
  %70 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %71 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %72 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %73 = load i32, i32* %select.addr, align 4, !tbaa !33
  %call95 = call i32 %69(%struct.gx_device_color_s* %70, %struct.gs_imager_state_s* %71, %struct.gx_device_s* %72, i32 %73) #5
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.94, %if.end.87
  %74 = bitcast [64 x i16]* %cm_comps to i8*
  call void @llvm.lifetime.end(i64 128, i8* %74) #1
  %75 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %76 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @map_components_to_colorants(i16* %pcc, %struct.gs_devicen_color_map_s* %pcolor_component_map, i16* %plist) #4 {
entry:
  %pcc.addr = alloca i16*, align 8
  %pcolor_component_map.addr = alloca %struct.gs_devicen_color_map_s*, align 8
  %plist.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  %pos = alloca i32, align 4
  store i16* %pcc, i16** %pcc.addr, align 8, !tbaa !1
  store %struct.gs_devicen_color_map_s* %pcolor_component_map, %struct.gs_devicen_color_map_s** %pcolor_component_map.addr, align 8, !tbaa !1
  store i16* %plist, i16** %plist.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_devicen_color_map_s*, %struct.gs_devicen_color_map_s** %pcolor_component_map.addr, align 8, !tbaa !1
  %num_colorants = getelementptr inbounds %struct.gs_devicen_color_map_s, %struct.gs_devicen_color_map_s* %1, i32 0, i32 3
  %2 = load i32, i32* %num_colorants, align 4, !tbaa !136
  %sub = sub i32 %2, 1
  store i32 %sub, i32* %i, align 4, !tbaa !5
  %3 = bitcast i32* %pos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp sge i32 %4, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %5 to i64
  %6 = load i16*, i16** %plist.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %6, i64 %idxprom
  store i16 0, i16* %arrayidx, align 2, !tbaa !34
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !tbaa !5
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.gs_devicen_color_map_s*, %struct.gs_devicen_color_map_s** %pcolor_component_map.addr, align 8, !tbaa !1
  %num_components = getelementptr inbounds %struct.gs_devicen_color_map_s, %struct.gs_devicen_color_map_s* %8, i32 0, i32 2
  %9 = load i32, i32* %num_components, align 4, !tbaa !137
  %sub1 = sub i32 %9, 1
  store i32 %sub1, i32* %i, align 4, !tbaa !5
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.12, %for.end
  %10 = load i32, i32* %i, align 4, !tbaa !5
  %cmp3 = icmp sge i32 %10, 0
  br i1 %cmp3, label %for.body.4, label %for.end.14

for.body.4:                                       ; preds = %for.cond.2
  %11 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %11 to i64
  %12 = load %struct.gs_devicen_color_map_s*, %struct.gs_devicen_color_map_s** %pcolor_component_map.addr, align 8, !tbaa !1
  %color_map = getelementptr inbounds %struct.gs_devicen_color_map_s, %struct.gs_devicen_color_map_s* %12, i32 0, i32 5
  %arrayidx6 = getelementptr inbounds [64 x i32], [64 x i32]* %color_map, i32 0, i64 %idxprom5
  %13 = load i32, i32* %arrayidx6, align 4, !tbaa !5
  store i32 %13, i32* %pos, align 4, !tbaa !5
  %14 = load i32, i32* %pos, align 4, !tbaa !5
  %cmp7 = icmp sge i32 %14, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.4
  %15 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom8 = sext i32 %15 to i64
  %16 = load i16*, i16** %pcc.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i16, i16* %16, i64 %idxprom8
  %17 = load i16, i16* %arrayidx9, align 2, !tbaa !34
  %18 = load i32, i32* %pos, align 4, !tbaa !5
  %idxprom10 = sext i32 %18 to i64
  %19 = load i16*, i16** %plist.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i16, i16* %19, i64 %idxprom10
  store i16 %17, i16* %arrayidx11, align 2, !tbaa !34
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.4
  br label %for.inc.12

for.inc.12:                                       ; preds = %if.end
  %20 = load i32, i32* %i, align 4, !tbaa !5
  %dec13 = add nsw i32 %20, -1
  store i32 %dec13, i32* %i, align 4, !tbaa !5
  br label %for.cond.2

for.end.14:                                       ; preds = %for.cond.2
  %21 = bitcast i32* %pos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  ret void
}

declare %struct.gsicc_link_s* @gsicc_get_link_profile(%struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.gsicc_rendering_param_s*, %struct.gs_memory_s*, i32) #2

declare void @gsicc_release_link(%struct.gsicc_link_s*) #2

; Function Attrs: nounwind uwtable
define internal void @cmap_separation_halftoned(i16 signext %all, %struct.gx_device_color_s* %pdc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, i32 %select) #0 {
entry:
  %all.addr = alloca i16, align 2
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %select.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %ncomps = alloca i32, align 4
  %additive = alloca i32, align 4
  %comp_value = alloca i16, align 2
  %cm_comps = alloca [64 x i16], align 16
  store i16 %all, i16* %all.addr, align 2, !tbaa !34
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %select, i32* %select.addr, align 4, !tbaa !33
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %3 = load i32, i32* %num_components, align 4, !tbaa !20
  store i32 %3, i32* %ncomps, align 4, !tbaa !5
  %4 = bitcast i32* %additive to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 11
  %polarity = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info1, i32 0, i32 2
  %6 = load i32, i32* %polarity, align 4, !tbaa !94
  %cmp = icmp eq i32 %6, 1
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %additive, align 4, !tbaa !5
  %7 = bitcast i16* %comp_value to i8*
  call void @llvm.lifetime.start(i64 2, i8* %7) #1
  %8 = load i16, i16* %all.addr, align 2, !tbaa !34
  store i16 %8, i16* %comp_value, align 2, !tbaa !34
  %9 = bitcast [64 x i16]* %cm_comps to i8*
  call void @llvm.lifetime.start(i64 128, i8* %9) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %i, align 4, !tbaa !5
  %11 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %10, %11
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom
  store i16 0, i16* %arrayidx, align 2, !tbaa !34
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %color_component_map = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %14, i32 0, i32 50
  %sep_type = getelementptr inbounds %struct.gs_devicen_color_map_s, %struct.gs_devicen_color_map_s* %color_component_map, i32 0, i32 1
  %15 = load i32, i32* %sep_type, align 4, !tbaa !115
  %cmp4 = icmp eq i32 %15, 1
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %16 = load i32, i32* %additive, align 4, !tbaa !5
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %17 = load i16, i16* %comp_value, align 2, !tbaa !34
  %conv7 = sext i16 %17 to i32
  %sub = sub nsw i32 32760, %conv7
  %conv8 = trunc i32 %sub to i16
  store i16 %conv8, i16* %comp_value, align 2, !tbaa !34
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  %18 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %color_component_map9 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %18, i32 0, i32 50
  %num_colorants = getelementptr inbounds %struct.gs_devicen_color_map_s, %struct.gs_devicen_color_map_s* %color_component_map9, i32 0, i32 3
  %19 = load i32, i32* %num_colorants, align 4, !tbaa !116
  %sub10 = sub i32 %19, 1
  store i32 %sub10, i32* %i, align 4, !tbaa !5
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.17, %if.end
  %20 = load i32, i32* %i, align 4, !tbaa !5
  %cmp12 = icmp sge i32 %20, 0
  br i1 %cmp12, label %for.body.14, label %for.end.18

for.body.14:                                      ; preds = %for.cond.11
  %21 = load i16, i16* %comp_value, align 2, !tbaa !34
  %22 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom15 = sext i32 %22 to i64
  %arrayidx16 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom15
  store i16 %21, i16* %arrayidx16, align 2, !tbaa !34
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.body.14
  %23 = load i32, i32* %i, align 4, !tbaa !5
  %dec = add nsw i32 %23, -1
  store i32 %dec, i32* %i, align 4, !tbaa !5
  br label %for.cond.11

for.end.18:                                       ; preds = %for.cond.11
  br label %if.end.20

if.else:                                          ; preds = %for.end
  %24 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %color_component_map19 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %24, i32 0, i32 50
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i32 0
  call void @map_components_to_colorants(i16* %all.addr, %struct.gs_devicen_color_map_s* %color_component_map19, i16* %arraydecay) #5
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %for.end.18
  %25 = load i32, i32* %additive, align 4, !tbaa !5
  %tobool21 = icmp ne i32 %25, 0
  br i1 %tobool21, label %if.then.22, label %if.else.47

if.then.22:                                       ; preds = %if.end.20
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.44, %if.then.22
  %26 = load i32, i32* %i, align 4, !tbaa !5
  %27 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %26, %27
  br i1 %cmp24, label %for.body.26, label %for.end.46

for.body.26:                                      ; preds = %for.cond.23
  %28 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom27 = sext i32 %28 to i64
  %29 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %29, i32 0, i32 47
  %arrayidx28 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer, i32 0, i64 %idxprom27
  %30 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx28, align 8, !tbaa !1
  %proc = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %30, i32 0, i32 1
  %31 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc, align 8, !tbaa !90
  %cmp29 = icmp eq float (double, %struct.gx_transfer_map_s*)* %31, @gs_identity_transfer
  br i1 %cmp29, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.26
  %32 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom31 = sext i32 %32 to i64
  %arrayidx32 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom31
  %33 = load i16, i16* %arrayidx32, align 2, !tbaa !34
  %conv33 = sext i16 %33 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.body.26
  %34 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom34 = sext i32 %34 to i64
  %arrayidx35 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom34
  %35 = load i16, i16* %arrayidx35, align 2, !tbaa !34
  %36 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom36 = sext i32 %36 to i64
  %37 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer37 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %37, i32 0, i32 47
  %arrayidx38 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer37, i32 0, i64 %idxprom36
  %38 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx38, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %38, i32 0, i32 4
  %arrayidx39 = getelementptr inbounds [256 x i16], [256 x i16]* %values, i32 0, i64 0
  %call = call signext i16 @gx_color_frac_map(i16 signext %35, i16* %arrayidx39) #5
  %conv40 = sext i16 %call to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv33, %cond.true ], [ %conv40, %cond.false ]
  %conv41 = trunc i32 %cond to i16
  %39 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom42 = sext i32 %39 to i64
  %arrayidx43 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom42
  store i16 %conv41, i16* %arrayidx43, align 2, !tbaa !34
  br label %for.inc.44

for.inc.44:                                       ; preds = %cond.end
  %40 = load i32, i32* %i, align 4, !tbaa !5
  %inc45 = add nsw i32 %40, 1
  store i32 %inc45, i32* %i, align 4, !tbaa !5
  br label %for.cond.23

for.end.46:                                       ; preds = %for.cond.23
  br label %if.end.87

if.else.47:                                       ; preds = %if.end.20
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.84, %if.else.47
  %41 = load i32, i32* %i, align 4, !tbaa !5
  %42 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp49 = icmp slt i32 %41, %42
  br i1 %cmp49, label %for.body.51, label %for.end.86

for.body.51:                                      ; preds = %for.cond.48
  %43 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom52 = sext i32 %43 to i64
  %44 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer53 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %44, i32 0, i32 47
  %arrayidx54 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer53, i32 0, i64 %idxprom52
  %45 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx54, align 8, !tbaa !1
  %proc55 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %45, i32 0, i32 1
  %46 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc55, align 8, !tbaa !90
  %cmp56 = icmp eq float (double, %struct.gx_transfer_map_s*)* %46, @gs_identity_transfer
  br i1 %cmp56, label %cond.true.58, label %cond.false.65

cond.true.58:                                     ; preds = %for.body.51
  %47 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom59 = sext i32 %47 to i64
  %arrayidx60 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom59
  %48 = load i16, i16* %arrayidx60, align 2, !tbaa !34
  %conv61 = sext i16 %48 to i32
  %sub62 = sub nsw i32 32760, %conv61
  %conv63 = trunc i32 %sub62 to i16
  %conv64 = sext i16 %conv63 to i32
  br label %cond.end.78

cond.false.65:                                    ; preds = %for.body.51
  %49 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom66 = sext i32 %49 to i64
  %arrayidx67 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom66
  %50 = load i16, i16* %arrayidx67, align 2, !tbaa !34
  %conv68 = sext i16 %50 to i32
  %sub69 = sub nsw i32 32760, %conv68
  %conv70 = trunc i32 %sub69 to i16
  %51 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom71 = sext i32 %51 to i64
  %52 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer72 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %52, i32 0, i32 47
  %arrayidx73 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer72, i32 0, i64 %idxprom71
  %53 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx73, align 8, !tbaa !1
  %values74 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %53, i32 0, i32 4
  %arrayidx75 = getelementptr inbounds [256 x i16], [256 x i16]* %values74, i32 0, i64 0
  %call76 = call signext i16 @gx_color_frac_map(i16 signext %conv70, i16* %arrayidx75) #5
  %conv77 = sext i16 %call76 to i32
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.false.65, %cond.true.58
  %cond79 = phi i32 [ %conv64, %cond.true.58 ], [ %conv77, %cond.false.65 ]
  %sub80 = sub nsw i32 32760, %cond79
  %conv81 = trunc i32 %sub80 to i16
  %54 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom82 = sext i32 %54 to i64
  %arrayidx83 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom82
  store i16 %conv81, i16* %arrayidx83, align 2, !tbaa !34
  br label %for.inc.84

for.inc.84:                                       ; preds = %cond.end.78
  %55 = load i32, i32* %i, align 4, !tbaa !5
  %inc85 = add nsw i32 %55, 1
  store i32 %inc85, i32* %i, align 4, !tbaa !5
  br label %for.cond.48

for.end.86:                                       ; preds = %for.cond.48
  br label %if.end.87

if.end.87:                                        ; preds = %for.end.86, %for.end.46
  %arraydecay88 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i32 0
  %56 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %57 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %58 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %dev_ht = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %58, i32 0, i32 41
  %59 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht, align 8, !tbaa !97
  %60 = load i32, i32* %select.addr, align 4, !tbaa !33
  %idxprom89 = sext i32 %60 to i64
  %61 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %screen_phase = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %61, i32 0, i32 40
  %arrayidx90 = getelementptr inbounds [2 x %struct.gs_int_point_s], [2 x %struct.gs_int_point_s]* %screen_phase, i32 0, i64 %idxprom89
  %call91 = call i32 @gx_render_device_DeviceN(i16* %arraydecay88, %struct.gx_device_color_s* %56, %struct.gx_device_s* %57, %struct.gx_device_halftone_s* %59, %struct.gs_int_point_s* %arrayidx90) #5
  %cmp92 = icmp eq i32 %call91, 1
  br i1 %cmp92, label %if.then.94, label %if.end.96

if.then.94:                                       ; preds = %if.end.87
  %62 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %62, i32 0, i32 0
  %63 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !7
  %load = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %63, i32 0, i32 4
  %64 = load i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %load, align 8, !tbaa !98
  %65 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %66 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %67 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %68 = load i32, i32* %select.addr, align 4, !tbaa !33
  %call95 = call i32 %64(%struct.gx_device_color_s* %65, %struct.gs_imager_state_s* %66, %struct.gx_device_s* %67, i32 %68) #5
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.94, %if.end.87
  %69 = bitcast [64 x i16]* %cm_comps to i8*
  call void @llvm.lifetime.end(i64 128, i8* %69) #1
  %70 = bitcast i16* %comp_value to i8*
  call void @llvm.lifetime.end(i64 2, i8* %70) #1
  %71 = bitcast i32* %additive to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %72 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @devicen_has_cmyk(%struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %devn_params = alloca %struct.gs_devn_params_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_devn_params_s** %devn_params to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 42
  %ret_devn_params = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 60
  %2 = load %struct.gs_devn_params_s* (%struct.gx_device_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)** %ret_devn_params, align 8, !tbaa !138
  %cmp = icmp ne %struct.gs_devn_params_s* (%struct.gx_device_s*)* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 42
  %ret_devn_params2 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1, i32 0, i32 60
  %4 = load %struct.gs_devn_params_s* (%struct.gx_device_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)** %ret_devn_params2, align 8, !tbaa !138
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call %struct.gs_devn_params_s* %4(%struct.gx_device_s* %5) #5
  store %struct.gs_devn_params_s* %call, %struct.gs_devn_params_s** %devn_params, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %6 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %devn_params, align 8, !tbaa !1
  %cmp3 = icmp eq %struct.gs_devn_params_s* %6, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %7 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %devn_params, align 8, !tbaa !1
  %num_std_colorant_names = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %7, i32 0, i32 2
  %8 = load i32, i32* %num_std_colorant_names, align 4, !tbaa !139
  %cmp6 = icmp eq i32 %8, 4
  %conv = zext i1 %cmp6 to i32
  store i32 %conv, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.then.4, %if.else
  %9 = bitcast %struct.gs_devn_params_s** %devn_params to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @devicen_icc_cmyk(i16* %cm_comps, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev) #0 {
entry:
  %cm_comps.addr = alloca i16*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %icc_link = alloca %struct.gsicc_link_s*, align 8
  %rendering_params = alloca %struct.gsicc_rendering_param_s, align 4
  %psrc = alloca [64 x i16], align 16
  %psrc_cm = alloca [64 x i16], align 16
  %k = alloca i32, align 4
  %psrc_temp = alloca i16*, align 8
  %render_cond = alloca %struct.gsicc_rendering_param_s, align 4
  %code = alloca i32, align 4
  %dev_profile = alloca %struct.cmm_dev_profile_s*, align 8
  %des_profile = alloca %struct.cmm_profile_s*, align 8
  store i16* %cm_comps, i16** %cm_comps.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gsicc_link_s** %icc_link to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.gsicc_rendering_param_s* %rendering_params to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #1
  %2 = bitcast [64 x i16]* %psrc to i8*
  call void @llvm.lifetime.start(i64 128, i8* %2) #1
  %3 = bitcast [64 x i16]* %psrc_cm to i8*
  call void @llvm.lifetime.start(i64 128, i8* %3) #1
  %4 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i16** %psrc_temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast %struct.gsicc_rendering_param_s* %render_cond to i8*
  call void @llvm.lifetime.start(i64 24, i8* %6) #1
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store %struct.cmm_dev_profile_s* null, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %9 = bitcast %struct.cmm_profile_s** %des_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %des_profile, align 8, !tbaa !1
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %10, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %11 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !100
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 %11(%struct.gx_device_s* %12, %struct.cmm_dev_profile_s** %dev_profile) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %graphics_type_tag = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %13, i32 0, i32 40
  %14 = load i32, i32* %graphics_type_tag, align 4, !tbaa !101
  %15 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  call void @gsicc_extract_profile(i32 %14, %struct.cmm_dev_profile_s* %15, %struct.cmm_profile_s** %des_profile, %struct.gsicc_rendering_param_s* %render_cond) #5
  %16 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %blackptcomp = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %16, i32 0, i32 34
  %17 = load i32, i32* %blackptcomp, align 4, !tbaa !119
  %black_point_comp = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 1
  store i32 %17, i32* %black_point_comp, align 4, !tbaa !120
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %graphics_type_tag1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 40
  %19 = load i32, i32* %graphics_type_tag1, align 4, !tbaa !101
  %graphics_type_tag2 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 3
  store i32 %19, i32* %graphics_type_tag2, align 4, !tbaa !121
  %override_icc = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 5
  store i32 0, i32* %override_icc, align 4, !tbaa !122
  %preserve_black = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 2
  store i32 8, i32* %preserve_black, align 4, !tbaa !123
  %20 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %renderingintent = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %20, i32 0, i32 33
  %21 = load i32, i32* %renderingintent, align 4, !tbaa !124
  %rendering_intent = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 0
  store i32 %21, i32* %rendering_intent, align 4, !tbaa !125
  %cmm = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 4
  store i32 0, i32* %cmm, align 4, !tbaa !126
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %22 = load i32, i32* %k, align 4, !tbaa !5
  %cmp = icmp slt i32 %22, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom = sext i32 %23 to i64
  %24 = load i16*, i16** %cm_comps.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %24, i64 %idxprom
  %25 = load i16, i16* %arrayidx, align 2, !tbaa !34
  %conv = sext i16 %25 to i32
  %shl = shl i32 %conv, 1
  %26 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom3 = sext i32 %26 to i64
  %27 = load i16*, i16** %cm_comps.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i16, i16* %27, i64 %idxprom3
  %28 = load i16, i16* %arrayidx4, align 2, !tbaa !34
  %conv5 = sext i16 %28 to i32
  %shr = ashr i32 %conv5, 11
  %add = add nsw i32 %shl, %shr
  %conv6 = trunc i32 %add to i16
  %29 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom7 = sext i32 %29 to i64
  %arrayidx8 = getelementptr inbounds [64 x i16], [64 x i16]* %psrc, i32 0, i64 %idxprom7
  store i16 %conv6, i16* %arrayidx8, align 2, !tbaa !34
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %k, align 4, !tbaa !5
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %33 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_manager = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %33, i32 0, i32 35
  %34 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !79
  %default_cmyk = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %34, i32 0, i32 3
  %35 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_cmyk, align 8, !tbaa !142
  %36 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %des_profile, align 8, !tbaa !1
  %37 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %37, i32 0, i32 1
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !127
  %39 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %devicegraytok = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %39, i32 0, i32 5
  %40 = load i32, i32* %devicegraytok, align 4, !tbaa !108
  %call9 = call %struct.gsicc_link_s* @gsicc_get_link_profile(%struct.gs_imager_state_s* %31, %struct.gx_device_s* %32, %struct.cmm_profile_s* %35, %struct.cmm_profile_s* %36, %struct.gsicc_rendering_param_s* %rendering_params, %struct.gs_memory_s* %38, i32 %40) #5
  store %struct.gsicc_link_s* %call9, %struct.gsicc_link_s** %icc_link, align 8, !tbaa !1
  %41 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link, align 8, !tbaa !1
  %is_identity = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %41, i32 0, i32 10
  %42 = load i32, i32* %is_identity, align 4, !tbaa !143
  %tobool = icmp ne i32 %42, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %arrayidx10 = getelementptr inbounds [64 x i16], [64 x i16]* %psrc, i32 0, i64 0
  store i16* %arrayidx10, i16** %psrc_temp, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %for.end
  %arrayidx11 = getelementptr inbounds [64 x i16], [64 x i16]* %psrc_cm, i32 0, i64 0
  store i16* %arrayidx11, i16** %psrc_temp, align 8, !tbaa !1
  %43 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link, align 8, !tbaa !1
  %procs12 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %43, i32 0, i32 1
  %map_color = getelementptr inbounds %struct.gscms_procs_s, %struct.gscms_procs_s* %procs12, i32 0, i32 1
  %44 = load void (%struct.gx_device_s*, %struct.gsicc_link_s*, i8*, i8*, i32)*, void (%struct.gx_device_s*, %struct.gsicc_link_s*, i8*, i8*, i32)** %map_color, align 8, !tbaa !128
  %45 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %46 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %psrc, i32 0, i32 0
  %47 = bitcast i16* %arraydecay to i8*
  %48 = load i16*, i16** %psrc_temp, align 8, !tbaa !1
  %49 = bitcast i16* %48 to i8*
  call void %44(%struct.gx_device_s* %45, %struct.gsicc_link_s* %46, i8* %47, i8* %49, i32 2) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.25, %if.end
  %50 = load i32, i32* %k, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %50, 4
  br i1 %cmp14, label %for.body.16, label %for.end.27

for.body.16:                                      ; preds = %for.cond.13
  %51 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom17 = sext i32 %51 to i64
  %52 = load i16*, i16** %psrc_temp, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i16, i16* %52, i64 %idxprom17
  %53 = load i16, i16* %arrayidx18, align 2, !tbaa !34
  %conv19 = uitofp i16 %53 to float
  %conv20 = fpext float %conv19 to double
  %div = fdiv double %conv20, 6.553500e+04
  %add21 = fadd double %div, 0x3EF0010010010010
  %mul = fmul double %add21, 3.276000e+04
  %conv22 = fptosi double %mul to i16
  %54 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom23 = sext i32 %54 to i64
  %55 = load i16*, i16** %cm_comps.addr, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i16, i16* %55, i64 %idxprom23
  store i16 %conv22, i16* %arrayidx24, align 2, !tbaa !34
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.body.16
  %56 = load i32, i32* %k, align 4, !tbaa !5
  %inc26 = add nsw i32 %56, 1
  store i32 %inc26, i32* %k, align 4, !tbaa !5
  br label %for.cond.13

for.end.27:                                       ; preds = %for.cond.13
  %57 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link, align 8, !tbaa !1
  call void @gsicc_release_link(%struct.gsicc_link_s* %57) #5
  %58 = bitcast %struct.cmm_profile_s** %des_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %59 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast %struct.gsicc_rendering_param_s* %render_cond to i8*
  call void @llvm.lifetime.end(i64 24, i8* %61) #1
  %62 = bitcast i16** %psrc_temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %63 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast [64 x i16]* %psrc_cm to i8*
  call void @llvm.lifetime.end(i64 128, i8* %64) #1
  %65 = bitcast [64 x i16]* %psrc to i8*
  call void @llvm.lifetime.end(i64 128, i8* %65) #1
  %66 = bitcast %struct.gsicc_rendering_param_s* %rendering_params to i8*
  call void @llvm.lifetime.end(i64 24, i8* %66) #1
  %67 = bitcast %struct.gsicc_link_s** %icc_link to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @cmap_devicen_halftoned(i16* %pcc, %struct.gx_device_color_s* %pdc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, i32 %select) #0 {
entry:
  %pcc.addr = alloca i16*, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %select.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %ncomps = alloca i32, align 4
  %cm_comps = alloca [64 x i16], align 16
  %code = alloca i32, align 4
  %render_cond = alloca %struct.gsicc_rendering_param_s, align 4
  %dev_profile = alloca %struct.cmm_dev_profile_s*, align 8
  %des_profile = alloca %struct.cmm_profile_s*, align 8
  store i16* %pcc, i16** %pcc.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %select, i32* %select.addr, align 4, !tbaa !33
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %3 = load i32, i32* %num_components, align 4, !tbaa !20
  store i32 %3, i32* %ncomps, align 4, !tbaa !5
  %4 = bitcast [64 x i16]* %cm_comps to i8*
  call void @llvm.lifetime.start(i64 128, i8* %4) #1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast %struct.gsicc_rendering_param_s* %render_cond to i8*
  call void @llvm.lifetime.start(i64 24, i8* %6) #1
  %7 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store %struct.cmm_dev_profile_s* null, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %8 = bitcast %struct.cmm_profile_s** %des_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %des_profile, align 8, !tbaa !1
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %10 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !100
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 %10(%struct.gx_device_s* %11, %struct.cmm_dev_profile_s** %dev_profile) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %graphics_type_tag = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 40
  %13 = load i32, i32* %graphics_type_tag, align 4, !tbaa !101
  %14 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  call void @gsicc_extract_profile(i32 %13, %struct.cmm_dev_profile_s* %14, %struct.cmm_profile_s** %des_profile, %struct.gsicc_rendering_param_s* %render_cond) #5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %15 = load i32, i32* %i, align 4, !tbaa !5
  %16 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp = icmp slt i32 %15, %16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom
  store i16 0, i16* %arrayidx, align 2, !tbaa !34
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i16*, i16** %pcc.addr, align 8, !tbaa !1
  %20 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %color_component_map = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %20, i32 0, i32 50
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i32 0
  call void @map_components_to_colorants(i16* %19, %struct.gs_devicen_color_map_s* %color_component_map, i16* %arraydecay) #5
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call1 = call i32 @devicen_has_cmyk(%struct.gx_device_s* %21) #5
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.end
  %22 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %des_profile, align 8, !tbaa !1
  %data_cs = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %22, i32 0, i32 5
  %23 = load i32, i32* %data_cs, align 4, !tbaa !110
  %cmp2 = icmp eq i32 %23, 3
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %arraydecay3 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i32 0
  %24 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call4 = call i32 @devicen_icc_cmyk(i16* %arraydecay3, %struct.gs_imager_state_s* %24, %struct.gx_device_s* %25) #5
  store i32 %call4, i32* %code, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.end
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info5 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %26, i32 0, i32 11
  %polarity = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info5, i32 0, i32 2
  %27 = load i32, i32* %polarity, align 4, !tbaa !94
  %cmp6 = icmp eq i32 %27, 1
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.27, %if.then.7
  %28 = load i32, i32* %i, align 4, !tbaa !5
  %29 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %28, %29
  br i1 %cmp9, label %for.body.10, label %for.end.29

for.body.10:                                      ; preds = %for.cond.8
  %30 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %30 to i64
  %31 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %31, i32 0, i32 47
  %arrayidx12 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer, i32 0, i64 %idxprom11
  %32 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx12, align 8, !tbaa !1
  %proc = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %32, i32 0, i32 1
  %33 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc, align 8, !tbaa !90
  %cmp13 = icmp eq float (double, %struct.gx_transfer_map_s*)* %33, @gs_identity_transfer
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.10
  %34 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom14 = sext i32 %34 to i64
  %arrayidx15 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom14
  %35 = load i16, i16* %arrayidx15, align 2, !tbaa !34
  %conv = sext i16 %35 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.body.10
  %36 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom16 = sext i32 %36 to i64
  %arrayidx17 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom16
  %37 = load i16, i16* %arrayidx17, align 2, !tbaa !34
  %38 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom18 = sext i32 %38 to i64
  %39 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer19 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %39, i32 0, i32 47
  %arrayidx20 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer19, i32 0, i64 %idxprom18
  %40 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx20, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %40, i32 0, i32 4
  %arrayidx21 = getelementptr inbounds [256 x i16], [256 x i16]* %values, i32 0, i64 0
  %call22 = call signext i16 @gx_color_frac_map(i16 signext %37, i16* %arrayidx21) #5
  %conv23 = sext i16 %call22 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv23, %cond.false ]
  %conv24 = trunc i32 %cond to i16
  %41 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom25 = sext i32 %41 to i64
  %arrayidx26 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom25
  store i16 %conv24, i16* %arrayidx26, align 2, !tbaa !34
  br label %for.inc.27

for.inc.27:                                       ; preds = %cond.end
  %42 = load i32, i32* %i, align 4, !tbaa !5
  %inc28 = add nsw i32 %42, 1
  store i32 %inc28, i32* %i, align 4, !tbaa !5
  br label %for.cond.8

for.end.29:                                       ; preds = %for.cond.8
  br label %if.end.68

if.else:                                          ; preds = %if.end
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.65, %if.else
  %43 = load i32, i32* %i, align 4, !tbaa !5
  %44 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp31 = icmp slt i32 %43, %44
  br i1 %cmp31, label %for.body.33, label %for.end.67

for.body.33:                                      ; preds = %for.cond.30
  %45 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom34 = sext i32 %45 to i64
  %46 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer35 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %46, i32 0, i32 47
  %arrayidx36 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer35, i32 0, i64 %idxprom34
  %47 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx36, align 8, !tbaa !1
  %proc37 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %47, i32 0, i32 1
  %48 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc37, align 8, !tbaa !90
  %cmp38 = icmp eq float (double, %struct.gx_transfer_map_s*)* %48, @gs_identity_transfer
  br i1 %cmp38, label %cond.true.40, label %cond.false.46

cond.true.40:                                     ; preds = %for.body.33
  %49 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom41 = sext i32 %49 to i64
  %arrayidx42 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom41
  %50 = load i16, i16* %arrayidx42, align 2, !tbaa !34
  %conv43 = sext i16 %50 to i32
  %sub = sub nsw i32 32760, %conv43
  %conv44 = trunc i32 %sub to i16
  %conv45 = sext i16 %conv44 to i32
  br label %cond.end.59

cond.false.46:                                    ; preds = %for.body.33
  %51 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom47 = sext i32 %51 to i64
  %arrayidx48 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom47
  %52 = load i16, i16* %arrayidx48, align 2, !tbaa !34
  %conv49 = sext i16 %52 to i32
  %sub50 = sub nsw i32 32760, %conv49
  %conv51 = trunc i32 %sub50 to i16
  %53 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom52 = sext i32 %53 to i64
  %54 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer53 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %54, i32 0, i32 47
  %arrayidx54 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer53, i32 0, i64 %idxprom52
  %55 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx54, align 8, !tbaa !1
  %values55 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %55, i32 0, i32 4
  %arrayidx56 = getelementptr inbounds [256 x i16], [256 x i16]* %values55, i32 0, i64 0
  %call57 = call signext i16 @gx_color_frac_map(i16 signext %conv51, i16* %arrayidx56) #5
  %conv58 = sext i16 %call57 to i32
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.false.46, %cond.true.40
  %cond60 = phi i32 [ %conv45, %cond.true.40 ], [ %conv58, %cond.false.46 ]
  %sub61 = sub nsw i32 32760, %cond60
  %conv62 = trunc i32 %sub61 to i16
  %56 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom63 = sext i32 %56 to i64
  %arrayidx64 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom63
  store i16 %conv62, i16* %arrayidx64, align 2, !tbaa !34
  br label %for.inc.65

for.inc.65:                                       ; preds = %cond.end.59
  %57 = load i32, i32* %i, align 4, !tbaa !5
  %inc66 = add nsw i32 %57, 1
  store i32 %inc66, i32* %i, align 4, !tbaa !5
  br label %for.cond.30

for.end.67:                                       ; preds = %for.cond.30
  br label %if.end.68

if.end.68:                                        ; preds = %for.end.67, %for.end.29
  %arraydecay69 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i32 0
  %58 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %59 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %60 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %dev_ht = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %60, i32 0, i32 41
  %61 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht, align 8, !tbaa !97
  %62 = load i32, i32* %select.addr, align 4, !tbaa !33
  %idxprom70 = sext i32 %62 to i64
  %63 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %screen_phase = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %63, i32 0, i32 40
  %arrayidx71 = getelementptr inbounds [2 x %struct.gs_int_point_s], [2 x %struct.gs_int_point_s]* %screen_phase, i32 0, i64 %idxprom70
  %call72 = call i32 @gx_render_device_DeviceN(i16* %arraydecay69, %struct.gx_device_color_s* %58, %struct.gx_device_s* %59, %struct.gx_device_halftone_s* %61, %struct.gs_int_point_s* %arrayidx71) #5
  %cmp73 = icmp eq i32 %call72, 1
  br i1 %cmp73, label %if.then.75, label %if.end.77

if.then.75:                                       ; preds = %if.end.68
  %64 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %64, i32 0, i32 0
  %65 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !7
  %load = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %65, i32 0, i32 4
  %66 = load i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %load, align 8, !tbaa !98
  %67 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %68 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %69 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %70 = load i32, i32* %select.addr, align 4, !tbaa !33
  %call76 = call i32 %66(%struct.gx_device_color_s* %67, %struct.gs_imager_state_s* %68, %struct.gx_device_s* %69, i32 %70) #5
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.75, %if.end.68
  %71 = bitcast %struct.cmm_profile_s** %des_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = bitcast %struct.gsicc_rendering_param_s* %render_cond to i8*
  call void @llvm.lifetime.end(i64 24, i8* %73) #1
  %74 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast [64 x i16]* %cm_comps to i8*
  call void @llvm.lifetime.end(i64 128, i8* %75) #1
  %76 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %77 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @cmap_halftoned_is_halftoned(%struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev) #0 {
entry:
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  ret i32 1
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!7 = !{!8, !2, i64 0}
!8 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !9, i64 352, !6, i64 360, !10, i64 368, !12, i64 632}
!9 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!10 = !{!"gs_client_color_s", !2, i64 0, !11, i64 8}
!11 = !{!"gs_paint_color_s", !3, i64 0}
!12 = !{!"_mask", !13, i64 0, !14, i64 8, !2, i64 16}
!13 = !{!"mp_", !6, i64 0, !6, i64 4}
!14 = !{!"long", !3, i64 0}
!15 = !{!16, !2, i64 0}
!16 = !{!"gx_device_color_type_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!17 = !{!18, !2, i64 32}
!18 = !{!"gs_memory_struct_type_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!19 = !{!18, !2, i64 40}
!20 = !{!21, !6, i64 100}
!21 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !22, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !23, i64 96, !26, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !14, i64 928, !14, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !14, i64 968, !14, i64 976, !27, i64 984, !6, i64 1052, !6, i64 1056, !28, i64 1064, !2, i64 1104, !3, i64 1112, !30, i64 1120, !31, i64 1144}
!22 = !{!"rc_header_s", !14, i64 0, !2, i64 8, !2, i64 16}
!23 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !24, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !25, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !14, i64 704, !6, i64 712}
!24 = !{!"short", !3, i64 0}
!25 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!26 = !{!"gx_device_cached_colors_s", !14, i64 0, !14, i64 8}
!27 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!28 = !{!"gdev_space_params_s", !14, i64 0, !14, i64 8, !29, i64 16, !6, i64 32, !3, i64 36}
!29 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !14, i64 8}
!30 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!31 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!32 = !{!14, !14, i64 0}
!33 = !{!3, !3, i64 0}
!34 = !{!24, !24, i64 0}
!35 = !{!21, !24, i64 108}
!36 = !{!21, !6, i64 112}
!37 = !{!21, !2, i64 1184}
!38 = !{!21, !2, i64 24}
!39 = !{!21, !2, i64 16}
!40 = !{!41, !2, i64 360}
!41 = !{!"gs_imager_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !42, i64 24, !6, i64 128, !46, i64 132, !6, i64 168, !47, i64 176, !47, i64 192, !6, i64 208, !6, i64 212, !24, i64 216, !3, i64 220, !49, i64 224, !49, i64 228, !50, i64 232, !14, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !43, i64 296, !51, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !43, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !52, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !53, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !53, i64 1336}
!42 = !{!"gx_line_params_s", !43, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !6, i64 36, !44, i64 40, !45, i64 64}
!43 = !{!"float", !3, i64 0}
!44 = !{!"gs_matrix_s", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20}
!45 = !{!"gx_dash_params_s", !2, i64 0, !6, i64 8, !43, i64 12, !6, i64 16, !43, i64 20, !6, i64 24, !6, i64 28, !43, i64 32}
!46 = !{!"gs_matrix_fixed_s", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!47 = !{!"gs_point_s", !48, i64 0, !48, i64 8}
!48 = !{!"double", !3, i64 0}
!49 = !{!"gs_transparency_source_s", !43, i64 0}
!50 = !{!"gs_xstate_trans_flags", !6, i64 0, !6, i64 4}
!51 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!52 = !{!"gx_transfer_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !2, i64 56}
!53 = !{!"gs_devicen_color_map_s", !6, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !14, i64 16, !3, i64 24}
!54 = !{!21, !3, i64 110}
!55 = !{!21, !6, i64 116}
!56 = !{!41, !2, i64 1016}
!57 = !{!58, !2, i64 0}
!58 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16}
!59 = !{!60, !2, i64 0}
!60 = !{!"gs_color_space_s", !2, i64 0, !22, i64 8, !14, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !3, i64 72}
!61 = !{!62, !2, i64 72}
!62 = !{!"gs_color_space_type_s", !3, i64 0, !6, i64 4, !6, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128}
!63 = !{!58, !2, i64 8}
!64 = !{!58, !2, i64 16}
!65 = !{!66, !2, i64 1872}
!66 = !{!"gs_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !42, i64 24, !6, i64 128, !46, i64 132, !6, i64 168, !47, i64 176, !47, i64 192, !6, i64 208, !6, i64 212, !24, i64 216, !3, i64 220, !49, i64 224, !49, i64 228, !50, i64 232, !14, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !43, i64 296, !51, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !43, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !52, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !53, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !53, i64 1336, !2, i64 1616, !44, i64 1624, !6, i64 1648, !44, i64 1652, !6, i64 1676, !2, i64 1680, !2, i64 1688, !2, i64 1696, !2, i64 1704, !14, i64 1712, !14, i64 1720, !2, i64 1728, !6, i64 1736, !3, i64 1744, !2, i64 1792, !2, i64 1800, !46, i64 1808, !6, i64 1844, !3, i64 1848, !3, i64 1852, !2, i64 1856, !6, i64 1864, !2, i64 1872, !2, i64 1880, !67, i64 1888}
!67 = !{!"gs_state_client_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!68 = !{!66, !6, i64 280}
!69 = !{!62, !2, i64 24}
!70 = !{!62, !2, i64 56}
!71 = !{!62, !2, i64 48}
!72 = !{!62, !2, i64 64}
!73 = !{!43, !43, i64 0}
!74 = !{!8, !6, i64 360}
!75 = !{!41, !24, i64 216}
!76 = !{!77, !2, i64 0}
!77 = !{!"gx_color_map_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!78 = !{!77, !2, i64 24}
!79 = !{!41, !2, i64 336}
!80 = !{!81, !2, i64 8}
!81 = !{!"gsicc_manager_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !6, i64 64, !2, i64 72, !2, i64 80, !22, i64 88}
!82 = !{!60, !2, i64 64}
!83 = !{!84, !14, i64 288}
!84 = !{!"cmm_profile_s", !3, i64 0, !3, i64 1, !6, i64 4, !6, i64 8, !3, i64 12, !3, i64 16, !85, i64 20, !14, i64 144, !6, i64 152, !3, i64 156, !6, i64 216, !6, i64 220, !6, i64 224, !86, i64 228, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !22, i64 288, !6, i64 312, !2, i64 320, !2, i64 328, !2, i64 336}
!85 = !{!"gs_range_icc_s", !3, i64 0}
!86 = !{!"gsicc_rendering_param_s", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20}
!87 = !{!77, !2, i64 8}
!88 = !{!77, !2, i64 16}
!89 = !{!48, !48, i64 0}
!90 = !{!91, !2, i64 24}
!91 = !{!"gx_transfer_map_s", !22, i64 0, !2, i64 24, !92, i64 32, !14, i64 48, !3, i64 56}
!92 = !{!"gs_mapping_closure_s", !2, i64 0, !2, i64 8}
!93 = !{!21, !2, i64 1192}
!94 = !{!21, !3, i64 104}
!95 = !{!21, !3, i64 792}
!96 = !{!21, !6, i64 808}
!97 = !{!41, !2, i64 392}
!98 = !{!16, !2, i64 32}
!99 = !{!21, !2, i64 1552}
!100 = !{!21, !2, i64 1680}
!101 = !{!21, !3, i64 1112}
!102 = !{!21, !2, i64 1536}
!103 = !{!84, !3, i64 0}
!104 = !{!105, !2, i64 0}
!105 = !{!"gx_cm_color_map_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!106 = !{!105, !2, i64 8}
!107 = !{!105, !2, i64 16}
!108 = !{!109, !6, i64 152}
!109 = !{!"cmm_dev_profile_s", !3, i64 0, !2, i64 32, !2, i64 40, !2, i64 48, !3, i64 56, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !2, i64 176, !6, i64 184, !2, i64 192, !22, i64 200}
!110 = !{!84, !3, i64 16}
!111 = !{!60, !2, i64 48}
!112 = !{!21, !2, i64 1544}
!113 = !{!21, !2, i64 1664}
!114 = !{!21, !2, i64 1288}
!115 = !{!41, !3, i64 1028}
!116 = !{!41, !6, i64 1036}
!117 = !{!84, !6, i64 4}
!118 = !{!81, !2, i64 16}
!119 = !{!41, !6, i64 328}
!120 = !{!86, !3, i64 4}
!121 = !{!86, !3, i64 12}
!122 = !{!86, !6, i64 20}
!123 = !{!86, !3, i64 8}
!124 = !{!41, !6, i64 324}
!125 = !{!86, !3, i64 0}
!126 = !{!86, !3, i64 16}
!127 = !{!41, !2, i64 8}
!128 = !{!129, !2, i64 16}
!129 = !{!"gsicc_link_s", !2, i64 0, !130, i64 8, !131, i64 40, !2, i64 72, !6, i64 80, !2, i64 88, !2, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !130, i64 128, !3, i64 160, !6, i64 164, !6, i64 168}
!130 = !{!"gscms_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!131 = !{!"gsicc_hashlink_s", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24}
!132 = !{!109, !2, i64 176}
!133 = !{!134, !6, i64 32}
!134 = !{!"gsicc_namelist_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32}
!135 = !{!134, !2, i64 24}
!136 = !{!53, !6, i64 12}
!137 = !{!53, !6, i64 8}
!138 = !{!21, !2, i64 1624}
!139 = !{!140, !6, i64 16}
!140 = !{!"gs_devn_params_s", !6, i64 0, !2, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !141, i64 32, !6, i64 1064, !3, i64 1068, !2, i64 1352, !2, i64 1360, !141, i64 1368}
!141 = !{!"gs_separations_s", !6, i64 0, !3, i64 8}
!142 = !{!81, !2, i64 24}
!143 = !{!129, !6, i64 116}
