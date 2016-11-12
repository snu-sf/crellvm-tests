; ModuleID = './gsistate.bc'
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
%struct.gx_color_map_procs_s = type { void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, %struct.gs_color_space_s*)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_imager_state_s*, %struct.gx_device_s*)* }
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
%struct.gx_device_color_type_s = type opaque
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
%struct.gx_device_halftone_s = type { %struct.gx_ht_order_s, %struct.rc_header_s, i64, i32, %struct.gx_ht_order_component_s*, i32, i32, i32, i32 }
%struct.gx_ht_order_s = type { %struct.gx_ht_cell_params_s, i16, i16, i16, i16, i16, i16, i32, i32, i32, %struct.gx_ht_order_procs_s*, %struct.gs_memory_s*, i32*, i8*, %struct.gx_ht_cache_s*, %struct.gx_transfer_map_s*, %struct.gx_ht_order_screen_params_s, i8*, i32 }
%struct.gx_ht_cell_params_s = type { i16, i16, i16, i16, i16, i16, i64, i16, i16, i32, i32, i32 }
%struct.gx_ht_order_procs_s = type { i32, i32 (%struct.gx_ht_order_s*, i8*)*, i32 (%struct.gx_ht_order_s*, i32, %struct.gs_int_point_s*)*, i32 (%struct.gx_ht_tile_s*, i32, %struct.gx_ht_order_s*)*, i32 (%struct.gx_ht_order_s*, i16, i8*, i32, i32, i32, i32, i32)* }
%struct.gx_ht_tile_s = type { %struct.gx_strip_bitmap_s, i32, i32 }
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gx_ht_cache_s = type { i8*, i32, %struct.gx_ht_tile_s*, i32, %struct.gx_ht_order_s, i32, i32, i32, i64, %struct.gx_ht_tile_s* (%struct.gx_ht_cache_s*, i32)* }
%struct.gx_transfer_map_s = type { %struct.rc_header_s, float (double, %struct.gx_transfer_map_s*)*, %struct.gs_mapping_closure_s, i64, [256 x i16] }
%struct.gs_mapping_closure_s = type { float (double, %struct.gx_transfer_map_s*, i8*)*, i8* }
%struct.gx_ht_order_screen_params_s = type { %struct.gs_matrix_s, i64 }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.gx_ht_order_component_s = type { %struct.gx_ht_order_s, i32, i32 }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type opaque
%struct.gs_paint_color_s = type { [64 x float] }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type opaque
%struct.gs_imager_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s }
%struct.gx_line_params_s = type { float, i32, i32, i32, i32, i32, float, float, float, i32, %struct.gs_matrix_s, %struct.gx_dash_params_s }
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
%struct.gs_halftone_s = type { i32, %struct.rc_header_s, %union.anon.7 }
%union.anon.7 = type { %struct.gs_colorscreen_halftone_s }
%struct.gs_colorscreen_halftone_s = type { %union._css }
%union._css = type { [4 x %struct.gs_screen_halftone_s] }
%struct.gs_screen_halftone_s = type { float, float, float (double, double)*, float, float }
%struct.gs_cie_render_s = type { i32, %struct.rc_header_s, i64, i8*, %struct.gs_cie_wb_s, %struct.gs_matrix3_s, %struct.gs_range3_s, %struct.gs_cie_transform_proc3_s, %struct.gs_matrix3_s, %struct.gs_cie_render_proc3_s, %struct.gs_range3_s, %struct.gs_matrix3_s, %struct.gs_cie_render_proc3_s, %struct.gs_range3_s, %struct.gs_cie_render_table_s, %struct.gs_range3_s, %struct.gs_range3_s, %struct.gs_matrix3_s, [3 x float], %struct.gs_matrix3_s, %struct.gs_vector3_s, %struct.gs_vector3_s, %struct.anon.10 }
%struct.gs_cie_wb_s = type { %struct.gs_vector3_s, %struct.gs_vector3_s }
%struct.gs_cie_transform_proc3_s = type { i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)*, i8*, %struct.gs_const_string_s, i8* }
%struct.gs_cie_wbsd_s = type { %struct.anon.9, %struct.anon.9, %struct.anon.9, %struct.anon.9 }
%struct.anon.9 = type { %struct.gs_vector3_s, %struct.gs_vector3_s }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gs_cie_render_proc3_s = type { [3 x float (double, %struct.gs_cie_render_s*)*] }
%struct.gs_cie_render_table_s = type { %struct.gx_color_lookup_table_s, %struct.gs_cie_render_table_procs_s }
%struct.gx_color_lookup_table_s = type { i32, [4 x i32], i32, %struct.gs_const_string_s* }
%struct.gs_cie_render_table_procs_s = type { [4 x i16 (i8, %struct.gs_cie_render_s*)*] }
%struct.gs_range3_s = type { [3 x %struct.gs_range_s] }
%struct.gs_matrix3_s = type { %struct.gs_vector3_s, %struct.gs_vector3_s, %struct.gs_vector3_s, i32 }
%struct.gs_vector3_s = type { float, float, float }
%struct.anon.10 = type { %struct.gx_cie_vector_cache3_s, [3 x %struct.gx_cie_float_fixed_cache_s], [4 x %union.gx_cie_scalar_cache_s], i32 }
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
%struct.gx_transfer_s = type { i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s* }
%struct.gx_pattern_cache_s = type opaque
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.gs_state_s = type opaque
%struct.stream_s = type opaque
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
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
%struct.gx_xfont_procs_s = type opaque
%struct.gx_path_s = type opaque
%struct.gx_fill_params_s = type opaque
%struct.gx_clip_path_s = type opaque
%struct.gx_stroke_params_s = type opaque
%struct.gs_fixed_edge_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image1_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, i32, i32, i32 }
%struct.gx_image_type_s = type opaque
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gx_image_enum_common_s = type opaque
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gs_get_bits_params_s = type opaque
%struct.gs_composite_s = type { %struct.gs_composite_type_s*, i64, i32, %struct.gs_composite_s*, %struct.gs_composite_s* }
%struct.gs_composite_type_s = type { i8, %struct.gs_composite_type_procs_s }
%struct.gs_composite_type_procs_s = type { i32 (%struct.gs_composite_s*, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s*)*, i32 (%struct.gs_composite_s*, i8*, i32*, %struct.gx_device_clist_writer_s*)*, i32 (%struct.gs_composite_s**, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32, i32, %struct.gs_imager_state_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s**, %struct.gx_device_s*)*, i32 (%struct.gs_composite_s*, i8, i8)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32*, i32*, i32, i32)* }
%struct.gx_device_clist_writer_s = type opaque
%struct.gs_param_list_s = type opaque
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
%struct.gs_pattern1_instance_s = type opaque
%struct.gs_fill_attributes_s = type { %struct.gs_fixed_rect_s*, i32, %struct.gx_device_halftone_s*, i32, i32, i32, %struct.patch_fill_state_s* }
%struct.patch_fill_state_s = type opaque
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gc_procs_common_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)* }
%struct.gs_string_s = type { i8*, i32 }
%struct.gs_param_string_s = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"gs_imager_state\00", align 1
@st_imager_state = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 1616, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @imager_state_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @imager_state_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@st_transfer_map = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"gs_imager_state_init(transfer)\00", align 1
@cmap_procs_default = external constant %struct.gx_color_map_procs_s*, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"gs_imager_state_copy\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"gs_imager_state_pre_assign\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"gs_imager_state_release\00", align 1
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.5 = private unnamed_addr constant [12 x i8] c"line_params\00", align 1
@st_line_params = internal constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 104, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @line_params_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @line_params_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @imager_state_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = load i32, i32* %index.addr, align 4, !tbaa !5
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.5
    i32 4, label %sw.bb.7
    i32 5, label %sw.bb.9
    i32 6, label %sw.bb.11
    i32 7, label %sw.bb.13
    i32 8, label %sw.bb.15
    i32 9, label %sw.bb.17
    i32 10, label %sw.bb.19
    i32 11, label %sw.bb.21
    i32 12, label %sw.bb.24
    i32 13, label %sw.bb.27
    i32 14, label %sw.bb.30
    i32 15, label %sw.bb.32
    i32 16, label %sw.bb.34
    i32 17, label %sw.bb.36
    i32 18, label %sw.bb.38
  ]

sw.default:                                       ; preds = %entry
  %1 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_line_params to %struct.gs_memory_struct_type_s*), i32 0, i32 4), align 8, !tbaa !7
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %4 = bitcast i8* %3 to %struct.gs_imager_state_s*
  %line_params = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %4, i32 0, i32 3
  %5 = bitcast %struct.gx_line_params_s* %line_params to i8*
  %6 = load i32, i32* %index.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %6, 19
  %7 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %8 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %1(%struct.gs_memory_s* %2, i8* %5, i32 104, i32 %sub, %struct.enum_ptr_s* %7, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_line_params to %struct.gs_memory_struct_type_s*), %struct.gc_state_s* %8) #3
  store %struct.gs_ptr_procs_s* %call, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb:                                            ; preds = %entry
  %9 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %10 = bitcast i8* %9 to %struct.gs_imager_state_s*
  %client_data = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %10, i32 0, i32 2
  %11 = load i8*, i8** %client_data, align 8, !tbaa !9
  %12 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %12, i32 0, i32 0
  store i8* %11, i8** %ptr, align 8, !tbaa !25
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %13 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %14 = bitcast i8* %13 to %struct.gs_imager_state_s*
  %trans_device = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %14, i32 0, i32 20
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %trans_device, align 8, !tbaa !27
  %16 = bitcast %struct.gx_device_s* %15 to i8*
  %17 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr2 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %17, i32 0, i32 0
  store i8* %16, i8** %ptr2, align 8, !tbaa !25
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  %18 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %19 = bitcast i8* %18 to %struct.gs_imager_state_s*
  %icc_manager = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %19, i32 0, i32 35
  %20 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !28
  %21 = bitcast %struct.gsicc_manager_s* %20 to i8*
  %22 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr4 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %22, i32 0, i32 0
  store i8* %21, i8** %ptr4, align 8, !tbaa !25
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  %23 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %24 = bitcast i8* %23 to %struct.gs_imager_state_s*
  %icc_link_cache = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %24, i32 0, i32 36
  %25 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache, align 8, !tbaa !29
  %26 = bitcast %struct.gsicc_link_cache_s* %25 to i8*
  %27 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr6 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %27, i32 0, i32 0
  store i8* %26, i8** %ptr6, align 8, !tbaa !25
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.7:                                          ; preds = %entry
  %28 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %29 = bitcast i8* %28 to %struct.gs_imager_state_s*
  %icc_profile_cache = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %29, i32 0, i32 37
  %30 = load %struct.gsicc_profile_cache_s*, %struct.gsicc_profile_cache_s** %icc_profile_cache, align 8, !tbaa !30
  %31 = bitcast %struct.gsicc_profile_cache_s* %30 to i8*
  %32 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr8 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %32, i32 0, i32 0
  store i8* %31, i8** %ptr8, align 8, !tbaa !25
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.9:                                          ; preds = %entry
  %33 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %34 = bitcast i8* %33 to %struct.gs_imager_state_s*
  %halftone = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %34, i32 0, i32 39
  %35 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %halftone, align 8, !tbaa !31
  %36 = bitcast %struct.gs_halftone_s* %35 to i8*
  %37 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr10 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %37, i32 0, i32 0
  store i8* %36, i8** %ptr10, align 8, !tbaa !25
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.11:                                         ; preds = %entry
  %38 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %39 = bitcast i8* %38 to %struct.gs_imager_state_s*
  %dev_ht = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %39, i32 0, i32 41
  %40 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht, align 8, !tbaa !32
  %41 = bitcast %struct.gx_device_halftone_s* %40 to i8*
  %42 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr12 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %42, i32 0, i32 0
  store i8* %41, i8** %ptr12, align 8, !tbaa !25
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.13:                                         ; preds = %entry
  %43 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %44 = bitcast i8* %43 to %struct.gs_imager_state_s*
  %cie_render = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %44, i32 0, i32 42
  %45 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %cie_render, align 8, !tbaa !33
  %46 = bitcast %struct.gs_cie_render_s* %45 to i8*
  %47 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr14 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %47, i32 0, i32 0
  store i8* %46, i8** %ptr14, align 8, !tbaa !25
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.15:                                         ; preds = %entry
  %48 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %49 = bitcast i8* %48 to %struct.gs_imager_state_s*
  %black_generation = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %49, i32 0, i32 44
  %50 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %black_generation, align 8, !tbaa !34
  %51 = bitcast %struct.gx_transfer_map_s* %50 to i8*
  %52 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr16 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %52, i32 0, i32 0
  store i8* %51, i8** %ptr16, align 8, !tbaa !25
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.17:                                         ; preds = %entry
  %53 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %54 = bitcast i8* %53 to %struct.gs_imager_state_s*
  %undercolor_removal = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %54, i32 0, i32 45
  %55 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %undercolor_removal, align 8, !tbaa !35
  %56 = bitcast %struct.gx_transfer_map_s* %55 to i8*
  %57 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr18 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %57, i32 0, i32 0
  store i8* %56, i8** %ptr18, align 8, !tbaa !25
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.19:                                         ; preds = %entry
  %58 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %59 = bitcast i8* %58 to %struct.gs_imager_state_s*
  %set_transfer = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %59, i32 0, i32 46
  %red = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer, i32 0, i32 1
  %60 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red, align 8, !tbaa !36
  %61 = bitcast %struct.gx_transfer_map_s* %60 to i8*
  %62 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr20 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %62, i32 0, i32 0
  store i8* %61, i8** %ptr20, align 8, !tbaa !25
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.21:                                         ; preds = %entry
  %63 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %64 = bitcast i8* %63 to %struct.gs_imager_state_s*
  %set_transfer22 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %64, i32 0, i32 46
  %green = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer22, i32 0, i32 3
  %65 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green, align 8, !tbaa !37
  %66 = bitcast %struct.gx_transfer_map_s* %65 to i8*
  %67 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr23 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %67, i32 0, i32 0
  store i8* %66, i8** %ptr23, align 8, !tbaa !25
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.24:                                         ; preds = %entry
  %68 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %69 = bitcast i8* %68 to %struct.gs_imager_state_s*
  %set_transfer25 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %69, i32 0, i32 46
  %blue = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer25, i32 0, i32 5
  %70 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %blue, align 8, !tbaa !38
  %71 = bitcast %struct.gx_transfer_map_s* %70 to i8*
  %72 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr26 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %72, i32 0, i32 0
  store i8* %71, i8** %ptr26, align 8, !tbaa !25
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.27:                                         ; preds = %entry
  %73 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %74 = bitcast i8* %73 to %struct.gs_imager_state_s*
  %set_transfer28 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %74, i32 0, i32 46
  %gray = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer28, i32 0, i32 7
  %75 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray, align 8, !tbaa !39
  %76 = bitcast %struct.gx_transfer_map_s* %75 to i8*
  %77 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr29 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %77, i32 0, i32 0
  store i8* %76, i8** %ptr29, align 8, !tbaa !25
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.30:                                         ; preds = %entry
  %78 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %79 = bitcast i8* %78 to %struct.gs_imager_state_s*
  %cie_joint_caches = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %79, i32 0, i32 48
  %80 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches, align 8, !tbaa !40
  %81 = bitcast %struct.gx_cie_joint_caches_s* %80 to i8*
  %82 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr31 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %82, i32 0, i32 0
  store i8* %81, i8** %ptr31, align 8, !tbaa !25
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.32:                                         ; preds = %entry
  %83 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %84 = bitcast i8* %83 to %struct.gs_imager_state_s*
  %pattern_cache = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %84, i32 0, i32 51
  %85 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pattern_cache, align 8, !tbaa !41
  %86 = bitcast %struct.gx_pattern_cache_s* %85 to i8*
  %87 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr33 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %87, i32 0, i32 0
  store i8* %86, i8** %ptr33, align 8, !tbaa !25
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.34:                                         ; preds = %entry
  %88 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %89 = bitcast i8* %88 to %struct.gs_imager_state_s*
  %devicergb_cs = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %89, i32 0, i32 52
  %90 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %devicergb_cs, align 8, !tbaa !42
  %91 = bitcast %struct.gs_color_space_s* %90 to i8*
  %92 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr35 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %92, i32 0, i32 0
  store i8* %91, i8** %ptr35, align 8, !tbaa !25
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.36:                                         ; preds = %entry
  %93 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %94 = bitcast i8* %93 to %struct.gs_imager_state_s*
  %devicecmyk_cs = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %94, i32 0, i32 53
  %95 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %devicecmyk_cs, align 8, !tbaa !43
  %96 = bitcast %struct.gs_color_space_s* %95 to i8*
  %97 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr37 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %97, i32 0, i32 0
  store i8* %96, i8** %ptr37, align 8, !tbaa !25
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.38:                                         ; preds = %entry
  %98 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %99 = bitcast i8* %98 to %struct.gs_imager_state_s*
  %cie_joint_caches_alt = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %99, i32 0, i32 54
  %100 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches_alt, align 8, !tbaa !44
  %101 = bitcast %struct.gx_cie_joint_caches_s* %100 to i8*
  %102 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr39 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %102, i32 0, i32 0
  store i8* %101, i8** %ptr39, align 8, !tbaa !25
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

return:                                           ; preds = %sw.bb.38, %sw.bb.36, %sw.bb.34, %sw.bb.32, %sw.bb.30, %sw.bb.27, %sw.bb.24, %sw.bb.21, %sw.bb.19, %sw.bb.17, %sw.bb.15, %sw.bb.13, %sw.bb.11, %sw.bb.9, %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb.1, %sw.bb, %sw.default
  %103 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %103
}

; Function Attrs: nounwind uwtable
define internal void @imager_state_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %i = alloca i32, align 4
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_line_params to %struct.gs_memory_struct_type_s*), i32 0, i32 5), align 8, !tbaa !45
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_imager_state_s*
  %line_params = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %2, i32 0, i32 3
  %3 = bitcast %struct.gx_line_params_s* %line_params to i8*
  %4 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %0(i8* %3, i32 104, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_line_params to %struct.gs_memory_struct_type_s*), %struct.gc_state_s* %4) #3
  %5 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gc_state_s* %5 to %struct.gc_procs_common_s**
  %7 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %6, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %7, i32 0, i32 0
  %8 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !46
  %9 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %10 = bitcast i8* %9 to %struct.gs_imager_state_s*
  %client_data = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %10, i32 0, i32 2
  %11 = load i8*, i8** %client_data, align 8, !tbaa !9
  %12 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %8(i8* %11, %struct.gc_state_s* %12) #3
  %13 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %14 = bitcast i8* %13 to %struct.gs_imager_state_s*
  %client_data1 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %14, i32 0, i32 2
  store i8* %call, i8** %client_data1, align 8, !tbaa !9
  %15 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %16 = bitcast %struct.gc_state_s* %15 to %struct.gc_procs_common_s**
  %17 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %16, align 8, !tbaa !1
  %reloc_struct_ptr2 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %17, i32 0, i32 0
  %18 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr2, align 8, !tbaa !46
  %19 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %20 = bitcast i8* %19 to %struct.gs_imager_state_s*
  %trans_device = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %20, i32 0, i32 20
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %trans_device, align 8, !tbaa !27
  %22 = bitcast %struct.gx_device_s* %21 to i8*
  %23 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call3 = call i8* %18(i8* %22, %struct.gc_state_s* %23) #3
  %24 = bitcast i8* %call3 to %struct.gx_device_s*
  %25 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %26 = bitcast i8* %25 to %struct.gs_imager_state_s*
  %trans_device4 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %26, i32 0, i32 20
  store %struct.gx_device_s* %24, %struct.gx_device_s** %trans_device4, align 8, !tbaa !27
  %27 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %28 = bitcast %struct.gc_state_s* %27 to %struct.gc_procs_common_s**
  %29 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %28, align 8, !tbaa !1
  %reloc_struct_ptr5 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %29, i32 0, i32 0
  %30 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr5, align 8, !tbaa !46
  %31 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %32 = bitcast i8* %31 to %struct.gs_imager_state_s*
  %icc_manager = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %32, i32 0, i32 35
  %33 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !28
  %34 = bitcast %struct.gsicc_manager_s* %33 to i8*
  %35 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call6 = call i8* %30(i8* %34, %struct.gc_state_s* %35) #3
  %36 = bitcast i8* %call6 to %struct.gsicc_manager_s*
  %37 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %38 = bitcast i8* %37 to %struct.gs_imager_state_s*
  %icc_manager7 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %38, i32 0, i32 35
  store %struct.gsicc_manager_s* %36, %struct.gsicc_manager_s** %icc_manager7, align 8, !tbaa !28
  %39 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %40 = bitcast %struct.gc_state_s* %39 to %struct.gc_procs_common_s**
  %41 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %40, align 8, !tbaa !1
  %reloc_struct_ptr8 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %41, i32 0, i32 0
  %42 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr8, align 8, !tbaa !46
  %43 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %44 = bitcast i8* %43 to %struct.gs_imager_state_s*
  %icc_link_cache = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %44, i32 0, i32 36
  %45 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache, align 8, !tbaa !29
  %46 = bitcast %struct.gsicc_link_cache_s* %45 to i8*
  %47 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call9 = call i8* %42(i8* %46, %struct.gc_state_s* %47) #3
  %48 = bitcast i8* %call9 to %struct.gsicc_link_cache_s*
  %49 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %50 = bitcast i8* %49 to %struct.gs_imager_state_s*
  %icc_link_cache10 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %50, i32 0, i32 36
  store %struct.gsicc_link_cache_s* %48, %struct.gsicc_link_cache_s** %icc_link_cache10, align 8, !tbaa !29
  %51 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %52 = bitcast %struct.gc_state_s* %51 to %struct.gc_procs_common_s**
  %53 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %52, align 8, !tbaa !1
  %reloc_struct_ptr11 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %53, i32 0, i32 0
  %54 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr11, align 8, !tbaa !46
  %55 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %56 = bitcast i8* %55 to %struct.gs_imager_state_s*
  %icc_profile_cache = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %56, i32 0, i32 37
  %57 = load %struct.gsicc_profile_cache_s*, %struct.gsicc_profile_cache_s** %icc_profile_cache, align 8, !tbaa !30
  %58 = bitcast %struct.gsicc_profile_cache_s* %57 to i8*
  %59 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call12 = call i8* %54(i8* %58, %struct.gc_state_s* %59) #3
  %60 = bitcast i8* %call12 to %struct.gsicc_profile_cache_s*
  %61 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %62 = bitcast i8* %61 to %struct.gs_imager_state_s*
  %icc_profile_cache13 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %62, i32 0, i32 37
  store %struct.gsicc_profile_cache_s* %60, %struct.gsicc_profile_cache_s** %icc_profile_cache13, align 8, !tbaa !30
  %63 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %64 = bitcast %struct.gc_state_s* %63 to %struct.gc_procs_common_s**
  %65 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %64, align 8, !tbaa !1
  %reloc_struct_ptr14 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %65, i32 0, i32 0
  %66 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr14, align 8, !tbaa !46
  %67 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %68 = bitcast i8* %67 to %struct.gs_imager_state_s*
  %halftone = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %68, i32 0, i32 39
  %69 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %halftone, align 8, !tbaa !31
  %70 = bitcast %struct.gs_halftone_s* %69 to i8*
  %71 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call15 = call i8* %66(i8* %70, %struct.gc_state_s* %71) #3
  %72 = bitcast i8* %call15 to %struct.gs_halftone_s*
  %73 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %74 = bitcast i8* %73 to %struct.gs_imager_state_s*
  %halftone16 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %74, i32 0, i32 39
  store %struct.gs_halftone_s* %72, %struct.gs_halftone_s** %halftone16, align 8, !tbaa !31
  %75 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %76 = bitcast %struct.gc_state_s* %75 to %struct.gc_procs_common_s**
  %77 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %76, align 8, !tbaa !1
  %reloc_struct_ptr17 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %77, i32 0, i32 0
  %78 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr17, align 8, !tbaa !46
  %79 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %80 = bitcast i8* %79 to %struct.gs_imager_state_s*
  %dev_ht = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %80, i32 0, i32 41
  %81 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht, align 8, !tbaa !32
  %82 = bitcast %struct.gx_device_halftone_s* %81 to i8*
  %83 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call18 = call i8* %78(i8* %82, %struct.gc_state_s* %83) #3
  %84 = bitcast i8* %call18 to %struct.gx_device_halftone_s*
  %85 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %86 = bitcast i8* %85 to %struct.gs_imager_state_s*
  %dev_ht19 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %86, i32 0, i32 41
  store %struct.gx_device_halftone_s* %84, %struct.gx_device_halftone_s** %dev_ht19, align 8, !tbaa !32
  %87 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %88 = bitcast %struct.gc_state_s* %87 to %struct.gc_procs_common_s**
  %89 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %88, align 8, !tbaa !1
  %reloc_struct_ptr20 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %89, i32 0, i32 0
  %90 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr20, align 8, !tbaa !46
  %91 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %92 = bitcast i8* %91 to %struct.gs_imager_state_s*
  %cie_render = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %92, i32 0, i32 42
  %93 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %cie_render, align 8, !tbaa !33
  %94 = bitcast %struct.gs_cie_render_s* %93 to i8*
  %95 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call21 = call i8* %90(i8* %94, %struct.gc_state_s* %95) #3
  %96 = bitcast i8* %call21 to %struct.gs_cie_render_s*
  %97 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %98 = bitcast i8* %97 to %struct.gs_imager_state_s*
  %cie_render22 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %98, i32 0, i32 42
  store %struct.gs_cie_render_s* %96, %struct.gs_cie_render_s** %cie_render22, align 8, !tbaa !33
  %99 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %100 = bitcast %struct.gc_state_s* %99 to %struct.gc_procs_common_s**
  %101 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %100, align 8, !tbaa !1
  %reloc_struct_ptr23 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %101, i32 0, i32 0
  %102 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr23, align 8, !tbaa !46
  %103 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %104 = bitcast i8* %103 to %struct.gs_imager_state_s*
  %black_generation = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %104, i32 0, i32 44
  %105 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %black_generation, align 8, !tbaa !34
  %106 = bitcast %struct.gx_transfer_map_s* %105 to i8*
  %107 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call24 = call i8* %102(i8* %106, %struct.gc_state_s* %107) #3
  %108 = bitcast i8* %call24 to %struct.gx_transfer_map_s*
  %109 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %110 = bitcast i8* %109 to %struct.gs_imager_state_s*
  %black_generation25 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %110, i32 0, i32 44
  store %struct.gx_transfer_map_s* %108, %struct.gx_transfer_map_s** %black_generation25, align 8, !tbaa !34
  %111 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %112 = bitcast %struct.gc_state_s* %111 to %struct.gc_procs_common_s**
  %113 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %112, align 8, !tbaa !1
  %reloc_struct_ptr26 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %113, i32 0, i32 0
  %114 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr26, align 8, !tbaa !46
  %115 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %116 = bitcast i8* %115 to %struct.gs_imager_state_s*
  %undercolor_removal = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %116, i32 0, i32 45
  %117 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %undercolor_removal, align 8, !tbaa !35
  %118 = bitcast %struct.gx_transfer_map_s* %117 to i8*
  %119 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call27 = call i8* %114(i8* %118, %struct.gc_state_s* %119) #3
  %120 = bitcast i8* %call27 to %struct.gx_transfer_map_s*
  %121 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %122 = bitcast i8* %121 to %struct.gs_imager_state_s*
  %undercolor_removal28 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %122, i32 0, i32 45
  store %struct.gx_transfer_map_s* %120, %struct.gx_transfer_map_s** %undercolor_removal28, align 8, !tbaa !35
  %123 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %124 = bitcast %struct.gc_state_s* %123 to %struct.gc_procs_common_s**
  %125 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %124, align 8, !tbaa !1
  %reloc_struct_ptr29 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %125, i32 0, i32 0
  %126 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr29, align 8, !tbaa !46
  %127 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %128 = bitcast i8* %127 to %struct.gs_imager_state_s*
  %set_transfer = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %128, i32 0, i32 46
  %red = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer, i32 0, i32 1
  %129 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red, align 8, !tbaa !36
  %130 = bitcast %struct.gx_transfer_map_s* %129 to i8*
  %131 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call30 = call i8* %126(i8* %130, %struct.gc_state_s* %131) #3
  %132 = bitcast i8* %call30 to %struct.gx_transfer_map_s*
  %133 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %134 = bitcast i8* %133 to %struct.gs_imager_state_s*
  %set_transfer31 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %134, i32 0, i32 46
  %red32 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer31, i32 0, i32 1
  store %struct.gx_transfer_map_s* %132, %struct.gx_transfer_map_s** %red32, align 8, !tbaa !36
  %135 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %136 = bitcast %struct.gc_state_s* %135 to %struct.gc_procs_common_s**
  %137 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %136, align 8, !tbaa !1
  %reloc_struct_ptr33 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %137, i32 0, i32 0
  %138 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr33, align 8, !tbaa !46
  %139 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %140 = bitcast i8* %139 to %struct.gs_imager_state_s*
  %set_transfer34 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %140, i32 0, i32 46
  %green = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer34, i32 0, i32 3
  %141 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green, align 8, !tbaa !37
  %142 = bitcast %struct.gx_transfer_map_s* %141 to i8*
  %143 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call35 = call i8* %138(i8* %142, %struct.gc_state_s* %143) #3
  %144 = bitcast i8* %call35 to %struct.gx_transfer_map_s*
  %145 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %146 = bitcast i8* %145 to %struct.gs_imager_state_s*
  %set_transfer36 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %146, i32 0, i32 46
  %green37 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer36, i32 0, i32 3
  store %struct.gx_transfer_map_s* %144, %struct.gx_transfer_map_s** %green37, align 8, !tbaa !37
  %147 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %148 = bitcast %struct.gc_state_s* %147 to %struct.gc_procs_common_s**
  %149 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %148, align 8, !tbaa !1
  %reloc_struct_ptr38 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %149, i32 0, i32 0
  %150 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr38, align 8, !tbaa !46
  %151 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %152 = bitcast i8* %151 to %struct.gs_imager_state_s*
  %set_transfer39 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %152, i32 0, i32 46
  %blue = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer39, i32 0, i32 5
  %153 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %blue, align 8, !tbaa !38
  %154 = bitcast %struct.gx_transfer_map_s* %153 to i8*
  %155 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call40 = call i8* %150(i8* %154, %struct.gc_state_s* %155) #3
  %156 = bitcast i8* %call40 to %struct.gx_transfer_map_s*
  %157 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %158 = bitcast i8* %157 to %struct.gs_imager_state_s*
  %set_transfer41 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %158, i32 0, i32 46
  %blue42 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer41, i32 0, i32 5
  store %struct.gx_transfer_map_s* %156, %struct.gx_transfer_map_s** %blue42, align 8, !tbaa !38
  %159 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %160 = bitcast %struct.gc_state_s* %159 to %struct.gc_procs_common_s**
  %161 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %160, align 8, !tbaa !1
  %reloc_struct_ptr43 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %161, i32 0, i32 0
  %162 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr43, align 8, !tbaa !46
  %163 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %164 = bitcast i8* %163 to %struct.gs_imager_state_s*
  %set_transfer44 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %164, i32 0, i32 46
  %gray = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer44, i32 0, i32 7
  %165 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray, align 8, !tbaa !39
  %166 = bitcast %struct.gx_transfer_map_s* %165 to i8*
  %167 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call45 = call i8* %162(i8* %166, %struct.gc_state_s* %167) #3
  %168 = bitcast i8* %call45 to %struct.gx_transfer_map_s*
  %169 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %170 = bitcast i8* %169 to %struct.gs_imager_state_s*
  %set_transfer46 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %170, i32 0, i32 46
  %gray47 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer46, i32 0, i32 7
  store %struct.gx_transfer_map_s* %168, %struct.gx_transfer_map_s** %gray47, align 8, !tbaa !39
  %171 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %172 = bitcast %struct.gc_state_s* %171 to %struct.gc_procs_common_s**
  %173 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %172, align 8, !tbaa !1
  %reloc_struct_ptr48 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %173, i32 0, i32 0
  %174 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr48, align 8, !tbaa !46
  %175 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %176 = bitcast i8* %175 to %struct.gs_imager_state_s*
  %cie_joint_caches = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %176, i32 0, i32 48
  %177 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches, align 8, !tbaa !40
  %178 = bitcast %struct.gx_cie_joint_caches_s* %177 to i8*
  %179 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call49 = call i8* %174(i8* %178, %struct.gc_state_s* %179) #3
  %180 = bitcast i8* %call49 to %struct.gx_cie_joint_caches_s*
  %181 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %182 = bitcast i8* %181 to %struct.gs_imager_state_s*
  %cie_joint_caches50 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %182, i32 0, i32 48
  store %struct.gx_cie_joint_caches_s* %180, %struct.gx_cie_joint_caches_s** %cie_joint_caches50, align 8, !tbaa !40
  %183 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %184 = bitcast %struct.gc_state_s* %183 to %struct.gc_procs_common_s**
  %185 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %184, align 8, !tbaa !1
  %reloc_struct_ptr51 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %185, i32 0, i32 0
  %186 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr51, align 8, !tbaa !46
  %187 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %188 = bitcast i8* %187 to %struct.gs_imager_state_s*
  %pattern_cache = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %188, i32 0, i32 51
  %189 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pattern_cache, align 8, !tbaa !41
  %190 = bitcast %struct.gx_pattern_cache_s* %189 to i8*
  %191 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call52 = call i8* %186(i8* %190, %struct.gc_state_s* %191) #3
  %192 = bitcast i8* %call52 to %struct.gx_pattern_cache_s*
  %193 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %194 = bitcast i8* %193 to %struct.gs_imager_state_s*
  %pattern_cache53 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %194, i32 0, i32 51
  store %struct.gx_pattern_cache_s* %192, %struct.gx_pattern_cache_s** %pattern_cache53, align 8, !tbaa !41
  %195 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %196 = bitcast %struct.gc_state_s* %195 to %struct.gc_procs_common_s**
  %197 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %196, align 8, !tbaa !1
  %reloc_struct_ptr54 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %197, i32 0, i32 0
  %198 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr54, align 8, !tbaa !46
  %199 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %200 = bitcast i8* %199 to %struct.gs_imager_state_s*
  %devicergb_cs = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %200, i32 0, i32 52
  %201 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %devicergb_cs, align 8, !tbaa !42
  %202 = bitcast %struct.gs_color_space_s* %201 to i8*
  %203 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call55 = call i8* %198(i8* %202, %struct.gc_state_s* %203) #3
  %204 = bitcast i8* %call55 to %struct.gs_color_space_s*
  %205 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %206 = bitcast i8* %205 to %struct.gs_imager_state_s*
  %devicergb_cs56 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %206, i32 0, i32 52
  store %struct.gs_color_space_s* %204, %struct.gs_color_space_s** %devicergb_cs56, align 8, !tbaa !42
  %207 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %208 = bitcast %struct.gc_state_s* %207 to %struct.gc_procs_common_s**
  %209 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %208, align 8, !tbaa !1
  %reloc_struct_ptr57 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %209, i32 0, i32 0
  %210 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr57, align 8, !tbaa !46
  %211 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %212 = bitcast i8* %211 to %struct.gs_imager_state_s*
  %devicecmyk_cs = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %212, i32 0, i32 53
  %213 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %devicecmyk_cs, align 8, !tbaa !43
  %214 = bitcast %struct.gs_color_space_s* %213 to i8*
  %215 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call58 = call i8* %210(i8* %214, %struct.gc_state_s* %215) #3
  %216 = bitcast i8* %call58 to %struct.gs_color_space_s*
  %217 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %218 = bitcast i8* %217 to %struct.gs_imager_state_s*
  %devicecmyk_cs59 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %218, i32 0, i32 53
  store %struct.gs_color_space_s* %216, %struct.gs_color_space_s** %devicecmyk_cs59, align 8, !tbaa !43
  %219 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %220 = bitcast %struct.gc_state_s* %219 to %struct.gc_procs_common_s**
  %221 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %220, align 8, !tbaa !1
  %reloc_struct_ptr60 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %221, i32 0, i32 0
  %222 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr60, align 8, !tbaa !46
  %223 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %224 = bitcast i8* %223 to %struct.gs_imager_state_s*
  %cie_joint_caches_alt = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %224, i32 0, i32 54
  %225 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches_alt, align 8, !tbaa !44
  %226 = bitcast %struct.gx_cie_joint_caches_s* %225 to i8*
  %227 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call61 = call i8* %222(i8* %226, %struct.gc_state_s* %227) #3
  %228 = bitcast i8* %call61 to %struct.gx_cie_joint_caches_s*
  %229 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %230 = bitcast i8* %229 to %struct.gs_imager_state_s*
  %cie_joint_caches_alt62 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %230, i32 0, i32 54
  store %struct.gx_cie_joint_caches_s* %228, %struct.gx_cie_joint_caches_s** %cie_joint_caches_alt62, align 8, !tbaa !44
  %231 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %231) #1
  store i32 63, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %232 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp sge i32 %232, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %233 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %234 = bitcast %struct.gc_state_s* %233 to %struct.gc_procs_common_s**
  %235 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %234, align 8, !tbaa !1
  %reloc_struct_ptr63 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %235, i32 0, i32 0
  %236 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr63, align 8, !tbaa !46
  %237 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %237 to i64
  %238 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %239 = bitcast i8* %238 to %struct.gs_imager_state_s*
  %effective_transfer = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %239, i32 0, i32 47
  %arrayidx = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer, i32 0, i64 %idxprom
  %240 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx, align 8, !tbaa !1
  %241 = bitcast %struct.gx_transfer_map_s* %240 to i8*
  %242 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call64 = call i8* %236(i8* %241, %struct.gc_state_s* %242) #3
  %243 = bitcast i8* %call64 to %struct.gx_transfer_map_s*
  %244 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom65 = sext i32 %244 to i64
  %245 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %246 = bitcast i8* %245 to %struct.gs_imager_state_s*
  %effective_transfer66 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %246, i32 0, i32 47
  %arrayidx67 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer66, i32 0, i64 %idxprom65
  store %struct.gx_transfer_map_s* %243, %struct.gx_transfer_map_s** %arrayidx67, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %247 = load i32, i32* %i, align 4, !tbaa !5
  %dec = add nsw i32 %247, -1
  store i32 %dec, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %248 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %248) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_imager_state_initialize(%struct.gs_imager_state_s* %pis, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %2, i32 0, i32 1
  store %struct.gs_memory_s* %1, %struct.gs_memory_s** %memory, align 8, !tbaa !48
  %3 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %3, i32 0, i32 2
  store i8* null, i8** %client_data, align 8, !tbaa !9
  %4 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %trans_device = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %4, i32 0, i32 20
  store %struct.gx_device_s* null, %struct.gx_device_s** %trans_device, align 8, !tbaa !27
  %5 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %halftone = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %5, i32 0, i32 39
  store %struct.gs_halftone_s* null, %struct.gs_halftone_s** %halftone, align 8, !tbaa !31
  %6 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %i1, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i1, align 4, !tbaa !5
  %cmp = icmp slt i32 %7, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i1, align 4, !tbaa !5
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %screen_phase = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %9, i32 0, i32 40
  %arrayidx = getelementptr inbounds [2 x %struct.gs_int_point_s], [2 x %struct.gs_int_point_s]* %screen_phase, i32 0, i64 %idxprom
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %arrayidx, i32 0, i32 1
  store i32 0, i32* %y, align 4, !tbaa !49
  %10 = load i32, i32* %i1, align 4, !tbaa !5
  %idxprom2 = sext i32 %10 to i64
  %11 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %screen_phase3 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %11, i32 0, i32 40
  %arrayidx4 = getelementptr inbounds [2 x %struct.gs_int_point_s], [2 x %struct.gs_int_point_s]* %screen_phase3, i32 0, i64 %idxprom2
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %arrayidx4, i32 0, i32 0
  store i32 0, i32* %x, align 4, !tbaa !51
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i1, align 4, !tbaa !5
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i1, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %dev_ht = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %14, i32 0, i32 41
  store %struct.gx_device_halftone_s* null, %struct.gx_device_halftone_s** %dev_ht, align 8, !tbaa !32
  %15 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cie_render = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %15, i32 0, i32 42
  store %struct.gs_cie_render_s* null, %struct.gs_cie_render_s** %cie_render, align 8, !tbaa !33
  %16 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cie_to_xyz = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %16, i32 0, i32 43
  store i32 0, i32* %cie_to_xyz, align 4, !tbaa !52
  %17 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %black_generation = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %17, i32 0, i32 44
  store %struct.gx_transfer_map_s* null, %struct.gx_transfer_map_s** %black_generation, align 8, !tbaa !34
  %18 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %undercolor_removal = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %18, i32 0, i32 45
  store %struct.gx_transfer_map_s* null, %struct.gx_transfer_map_s** %undercolor_removal, align 8, !tbaa !35
  br label %do.body

do.body:                                          ; preds = %for.end
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %19, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %20 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !53
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i8* %20(%struct.gs_memory_s* %21, %struct.gs_memory_struct_type_s* @st_transfer_map, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0)) #3
  %22 = bitcast i8* %call to %struct.gx_transfer_map_s*
  %23 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %23, i32 0, i32 46
  %gray = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer, i32 0, i32 7
  store %struct.gx_transfer_map_s* %22, %struct.gx_transfer_map_s** %gray, align 8, !tbaa !39
  %cmp5 = icmp eq %struct.gx_transfer_map_s* %22, null
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  br label %do.body.6

do.body.6:                                        ; preds = %if.else
  %24 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer7 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %24, i32 0, i32 46
  %gray8 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer7, i32 0, i32 7
  %25 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray8, align 8, !tbaa !39
  %rc = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %25, i32 0, i32 0
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  store i64 1, i64* %ref_count, align 8, !tbaa !56
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %27 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer9 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %27, i32 0, i32 46
  %gray10 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer9, i32 0, i32 7
  %28 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray10, align 8, !tbaa !39
  %rc11 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %28, i32 0, i32 0
  %memory12 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc11, i32 0, i32 1
  store %struct.gs_memory_s* %26, %struct.gs_memory_s** %memory12, align 8, !tbaa !60
  %29 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer13 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %29, i32 0, i32 46
  %gray14 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer13, i32 0, i32 7
  %30 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray14, align 8, !tbaa !39
  %rc15 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %30, i32 0, i32 0
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc15, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @rc_free_struct_only, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !61
  br label %do.body.16

do.body.16:                                       ; preds = %do.body.6
  br label %do.cond

do.cond:                                          ; preds = %do.body.16
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.17

do.cond.17:                                       ; preds = %do.end
  br label %do.end.18

do.end.18:                                        ; preds = %do.cond.17
  br label %if.end

if.end:                                           ; preds = %do.end.18
  br label %do.cond.19

do.cond.19:                                       ; preds = %if.end
  br label %do.end.20

do.end.20:                                        ; preds = %do.cond.19
  %31 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer21 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %31, i32 0, i32 46
  %gray22 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer21, i32 0, i32 7
  %32 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray22, align 8, !tbaa !39
  %proc = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %32, i32 0, i32 1
  store float (double, %struct.gx_transfer_map_s*)* @gs_identity_transfer, float (double, %struct.gx_transfer_map_s*)** %proc, align 8, !tbaa !62
  %33 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory23 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %33, i32 0, i32 1
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory23, align 8, !tbaa !48
  %call24 = call i64 @gs_next_ids(%struct.gs_memory_s* %34, i32 1) #3
  %35 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer25 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %35, i32 0, i32 46
  %gray26 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer25, i32 0, i32 7
  %36 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray26, align 8, !tbaa !39
  %id = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %36, i32 0, i32 3
  store i64 %call24, i64* %id, align 8, !tbaa !63
  %37 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer27 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %37, i32 0, i32 46
  %gray28 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer27, i32 0, i32 7
  %38 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray28, align 8, !tbaa !39
  %values = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %38, i32 0, i32 4
  %arrayidx29 = getelementptr inbounds [256 x i16], [256 x i16]* %values, i32 0, i64 0
  store i16 0, i16* %arrayidx29, align 2, !tbaa !64
  %39 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer30 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %39, i32 0, i32 46
  %blue = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer30, i32 0, i32 5
  store %struct.gx_transfer_map_s* null, %struct.gx_transfer_map_s** %blue, align 8, !tbaa !38
  %40 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer31 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %40, i32 0, i32 46
  %green = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer31, i32 0, i32 3
  store %struct.gx_transfer_map_s* null, %struct.gx_transfer_map_s** %green, align 8, !tbaa !37
  %41 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer32 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %41, i32 0, i32 46
  %red = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer32, i32 0, i32 1
  store %struct.gx_transfer_map_s* null, %struct.gx_transfer_map_s** %red, align 8, !tbaa !36
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.40, %do.end.20
  %42 = load i32, i32* %i, align 4, !tbaa !5
  %cmp34 = icmp slt i32 %42, 64
  br i1 %cmp34, label %for.body.35, label %for.end.42

for.body.35:                                      ; preds = %for.cond.33
  %43 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer36 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %43, i32 0, i32 46
  %gray37 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer36, i32 0, i32 7
  %44 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray37, align 8, !tbaa !39
  %45 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom38 = sext i32 %45 to i64
  %46 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %46, i32 0, i32 47
  %arrayidx39 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer, i32 0, i64 %idxprom38
  store %struct.gx_transfer_map_s* %44, %struct.gx_transfer_map_s** %arrayidx39, align 8, !tbaa !1
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.body.35
  %47 = load i32, i32* %i, align 4, !tbaa !5
  %inc41 = add nsw i32 %47, 1
  store i32 %inc41, i32* %i, align 4, !tbaa !5
  br label %for.cond.33

for.end.42:                                       ; preds = %for.cond.33
  %48 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cie_joint_caches = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %48, i32 0, i32 48
  store %struct.gx_cie_joint_caches_s* null, %struct.gx_cie_joint_caches_s** %cie_joint_caches, align 8, !tbaa !40
  %49 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cie_joint_caches_alt = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %49, i32 0, i32 54
  store %struct.gx_cie_joint_caches_s* null, %struct.gx_cie_joint_caches_s** %cie_joint_caches_alt, align 8, !tbaa !44
  %50 = load %struct.gx_color_map_procs_s*, %struct.gx_color_map_procs_s** @cmap_procs_default, align 8, !tbaa !1
  %51 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cmap_procs = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %51, i32 0, i32 49
  store %struct.gx_color_map_procs_s* %50, %struct.gx_color_map_procs_s** %cmap_procs, align 8, !tbaa !65
  %52 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %pattern_cache = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %52, i32 0, i32 51
  store %struct.gx_pattern_cache_s* null, %struct.gx_pattern_cache_s** %pattern_cache, align 8, !tbaa !41
  %53 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %have_pattern_streams = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %53, i32 0, i32 31
  store i32 0, i32* %have_pattern_streams, align 4, !tbaa !66
  %54 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call43 = call %struct.gs_color_space_s* @gs_cspace_new_DeviceRGB(%struct.gs_memory_s* %54) #3
  %55 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %devicergb_cs = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %55, i32 0, i32 52
  store %struct.gs_color_space_s* %call43, %struct.gs_color_space_s** %devicergb_cs, align 8, !tbaa !42
  %56 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call44 = call %struct.gs_color_space_s* @gs_cspace_new_DeviceCMYK(%struct.gs_memory_s* %56) #3
  %57 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %devicecmyk_cs = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %57, i32 0, i32 53
  store %struct.gs_color_space_s* %call44, %struct.gs_color_space_s** %devicecmyk_cs, align 8, !tbaa !43
  %58 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory45 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %58, i32 0, i32 1
  %59 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory45, align 8, !tbaa !48
  %call46 = call %struct.gsicc_link_cache_s* @gsicc_cache_new(%struct.gs_memory_s* %59) #3
  %60 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_link_cache = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %60, i32 0, i32 36
  store %struct.gsicc_link_cache_s* %call46, %struct.gsicc_link_cache_s** %icc_link_cache, align 8, !tbaa !29
  %61 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory47 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %61, i32 0, i32 1
  %62 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory47, align 8, !tbaa !48
  %call48 = call %struct.gsicc_manager_s* @gsicc_manager_new(%struct.gs_memory_s* %62) #3
  %63 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_manager = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %63, i32 0, i32 35
  store %struct.gsicc_manager_s* %call48, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !28
  %64 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory49 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %64, i32 0, i32 1
  %65 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory49, align 8, !tbaa !48
  %call50 = call %struct.gsicc_profile_cache_s* @gsicc_profilecache_new(%struct.gs_memory_s* %65) #3
  %66 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_profile_cache = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %66, i32 0, i32 37
  store %struct.gsicc_profile_cache_s* %call50, %struct.gsicc_profile_cache_s** %icc_profile_cache, align 8, !tbaa !30
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.42, %if.then
  %67 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = load i32, i32* %retval
  ret i32 %68
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare void @rc_free_struct_only(%struct.gs_memory_s*, i8*, i8*) #2

declare float @gs_identity_transfer(double, %struct.gx_transfer_map_s*) #2

declare i64 @gs_next_ids(%struct.gs_memory_s*, i32) #2

declare %struct.gs_color_space_s* @gs_cspace_new_DeviceRGB(%struct.gs_memory_s*) #2

declare %struct.gs_color_space_s* @gs_cspace_new_DeviceCMYK(%struct.gs_memory_s*) #2

declare %struct.gsicc_link_cache_s* @gsicc_cache_new(%struct.gs_memory_s*) #2

declare %struct.gsicc_manager_s* @gsicc_manager_new(%struct.gs_memory_s*) #2

declare %struct.gsicc_profile_cache_s* @gsicc_profilecache_new(%struct.gs_memory_s*) #2

; Function Attrs: nounwind uwtable
define %struct.gs_imager_state_s* @gs_imager_state_copy(%struct.gs_imager_state_s* %pis, %struct.gs_memory_s* %mem) #0 {
entry:
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pis_copy = alloca %struct.gs_imager_state_s*, align 8
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_imager_state_s** %pis_copy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %2 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !53
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i8* %2(%struct.gs_memory_s* %3, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_imager_state to %struct.gs_memory_struct_type_s*), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0)) #3
  %4 = bitcast i8* %call to %struct.gs_imager_state_s*
  store %struct.gs_imager_state_s* %4, %struct.gs_imager_state_s** %pis_copy, align 8, !tbaa !1
  %5 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis_copy, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_imager_state_s* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis_copy, align 8, !tbaa !1
  %7 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gs_imager_state_s* %6 to i8*
  %9 = bitcast %struct.gs_imager_state_s* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 1616, i32 8, i1 false), !tbaa.struct !67
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis_copy, align 8, !tbaa !1
  %11 = bitcast %struct.gs_imager_state_s** %pis_copy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  ret %struct.gs_imager_state_s* %10
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define void @gs_imager_state_copied(%struct.gs_imager_state_s* %pis) #0 {
entry:
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %halftone = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %0, i32 0, i32 39
  %1 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %halftone, align 8, !tbaa !31
  %tobool = icmp ne %struct.gs_halftone_s* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %2 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %halftone2 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %2, i32 0, i32 39
  %3 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %halftone2, align 8, !tbaa !31
  %rc = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %3, i32 0, i32 1
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %4 = load i64, i64* %ref_count, align 8, !tbaa !72
  %inc = add nsw i64 %4, 1
  store i64 %inc, i64* %ref_count, align 8, !tbaa !72
  br label %do.body.3

do.body.3:                                        ; preds = %do.body.1
  br label %do.end

do.end:                                           ; preds = %do.body.3
  br label %do.end.4

do.end.4:                                         ; preds = %do.end
  br label %if.end

if.end:                                           ; preds = %do.end.4, %do.body
  br label %do.end.5

do.end.5:                                         ; preds = %if.end
  br label %do.body.6

do.body.6:                                        ; preds = %do.end.5
  %5 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %dev_ht = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %5, i32 0, i32 41
  %6 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht, align 8, !tbaa !32
  %tobool7 = icmp ne %struct.gx_device_halftone_s* %6, null
  br i1 %tobool7, label %if.then.8, label %if.end.17

if.then.8:                                        ; preds = %do.body.6
  br label %do.body.9

do.body.9:                                        ; preds = %if.then.8
  %7 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %dev_ht10 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %7, i32 0, i32 41
  %8 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht10, align 8, !tbaa !32
  %rc11 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %8, i32 0, i32 1
  %ref_count12 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc11, i32 0, i32 0
  %9 = load i64, i64* %ref_count12, align 8, !tbaa !74
  %inc13 = add nsw i64 %9, 1
  store i64 %inc13, i64* %ref_count12, align 8, !tbaa !74
  br label %do.body.14

do.body.14:                                       ; preds = %do.body.9
  br label %do.end.15

do.end.15:                                        ; preds = %do.body.14
  br label %do.end.16

do.end.16:                                        ; preds = %do.end.15
  br label %if.end.17

if.end.17:                                        ; preds = %do.end.16, %do.body.6
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  br label %do.body.19

do.body.19:                                       ; preds = %do.end.18
  %10 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cie_render = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %10, i32 0, i32 42
  %11 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %cie_render, align 8, !tbaa !33
  %tobool20 = icmp ne %struct.gs_cie_render_s* %11, null
  br i1 %tobool20, label %if.then.21, label %if.end.30

if.then.21:                                       ; preds = %do.body.19
  br label %do.body.22

do.body.22:                                       ; preds = %if.then.21
  %12 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cie_render23 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %12, i32 0, i32 42
  %13 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %cie_render23, align 8, !tbaa !33
  %rc24 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %13, i32 0, i32 1
  %ref_count25 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc24, i32 0, i32 0
  %14 = load i64, i64* %ref_count25, align 8, !tbaa !79
  %inc26 = add nsw i64 %14, 1
  store i64 %inc26, i64* %ref_count25, align 8, !tbaa !79
  br label %do.body.27

do.body.27:                                       ; preds = %do.body.22
  br label %do.end.28

do.end.28:                                        ; preds = %do.body.27
  br label %do.end.29

do.end.29:                                        ; preds = %do.end.28
  br label %if.end.30

if.end.30:                                        ; preds = %do.end.29, %do.body.19
  br label %do.end.31

do.end.31:                                        ; preds = %if.end.30
  br label %do.body.32

do.body.32:                                       ; preds = %do.end.31
  %15 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %black_generation = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %15, i32 0, i32 44
  %16 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %black_generation, align 8, !tbaa !34
  %tobool33 = icmp ne %struct.gx_transfer_map_s* %16, null
  br i1 %tobool33, label %if.then.34, label %if.end.43

if.then.34:                                       ; preds = %do.body.32
  br label %do.body.35

do.body.35:                                       ; preds = %if.then.34
  %17 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %black_generation36 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %17, i32 0, i32 44
  %18 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %black_generation36, align 8, !tbaa !34
  %rc37 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %18, i32 0, i32 0
  %ref_count38 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc37, i32 0, i32 0
  %19 = load i64, i64* %ref_count38, align 8, !tbaa !56
  %inc39 = add nsw i64 %19, 1
  store i64 %inc39, i64* %ref_count38, align 8, !tbaa !56
  br label %do.body.40

do.body.40:                                       ; preds = %do.body.35
  br label %do.end.41

do.end.41:                                        ; preds = %do.body.40
  br label %do.end.42

do.end.42:                                        ; preds = %do.end.41
  br label %if.end.43

if.end.43:                                        ; preds = %do.end.42, %do.body.32
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  br label %do.body.45

do.body.45:                                       ; preds = %do.end.44
  %20 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %undercolor_removal = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %20, i32 0, i32 45
  %21 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %undercolor_removal, align 8, !tbaa !35
  %tobool46 = icmp ne %struct.gx_transfer_map_s* %21, null
  br i1 %tobool46, label %if.then.47, label %if.end.56

if.then.47:                                       ; preds = %do.body.45
  br label %do.body.48

do.body.48:                                       ; preds = %if.then.47
  %22 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %undercolor_removal49 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %22, i32 0, i32 45
  %23 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %undercolor_removal49, align 8, !tbaa !35
  %rc50 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %23, i32 0, i32 0
  %ref_count51 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc50, i32 0, i32 0
  %24 = load i64, i64* %ref_count51, align 8, !tbaa !56
  %inc52 = add nsw i64 %24, 1
  store i64 %inc52, i64* %ref_count51, align 8, !tbaa !56
  br label %do.body.53

do.body.53:                                       ; preds = %do.body.48
  br label %do.end.54

do.end.54:                                        ; preds = %do.body.53
  br label %do.end.55

do.end.55:                                        ; preds = %do.end.54
  br label %if.end.56

if.end.56:                                        ; preds = %do.end.55, %do.body.45
  br label %do.end.57

do.end.57:                                        ; preds = %if.end.56
  br label %do.body.58

do.body.58:                                       ; preds = %do.end.57
  %25 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %25, i32 0, i32 46
  %gray = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer, i32 0, i32 7
  %26 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray, align 8, !tbaa !39
  %tobool59 = icmp ne %struct.gx_transfer_map_s* %26, null
  br i1 %tobool59, label %if.then.60, label %if.end.70

if.then.60:                                       ; preds = %do.body.58
  br label %do.body.61

do.body.61:                                       ; preds = %if.then.60
  %27 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer62 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %27, i32 0, i32 46
  %gray63 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer62, i32 0, i32 7
  %28 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray63, align 8, !tbaa !39
  %rc64 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %28, i32 0, i32 0
  %ref_count65 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc64, i32 0, i32 0
  %29 = load i64, i64* %ref_count65, align 8, !tbaa !56
  %inc66 = add nsw i64 %29, 1
  store i64 %inc66, i64* %ref_count65, align 8, !tbaa !56
  br label %do.body.67

do.body.67:                                       ; preds = %do.body.61
  br label %do.end.68

do.end.68:                                        ; preds = %do.body.67
  br label %do.end.69

do.end.69:                                        ; preds = %do.end.68
  br label %if.end.70

if.end.70:                                        ; preds = %do.end.69, %do.body.58
  br label %do.end.71

do.end.71:                                        ; preds = %if.end.70
  br label %do.body.72

do.body.72:                                       ; preds = %do.end.71
  %30 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer73 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %30, i32 0, i32 46
  %red = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer73, i32 0, i32 1
  %31 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red, align 8, !tbaa !36
  %tobool74 = icmp ne %struct.gx_transfer_map_s* %31, null
  br i1 %tobool74, label %if.then.75, label %if.end.85

if.then.75:                                       ; preds = %do.body.72
  br label %do.body.76

do.body.76:                                       ; preds = %if.then.75
  %32 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer77 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %32, i32 0, i32 46
  %red78 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer77, i32 0, i32 1
  %33 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red78, align 8, !tbaa !36
  %rc79 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %33, i32 0, i32 0
  %ref_count80 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc79, i32 0, i32 0
  %34 = load i64, i64* %ref_count80, align 8, !tbaa !56
  %inc81 = add nsw i64 %34, 1
  store i64 %inc81, i64* %ref_count80, align 8, !tbaa !56
  br label %do.body.82

do.body.82:                                       ; preds = %do.body.76
  br label %do.end.83

do.end.83:                                        ; preds = %do.body.82
  br label %do.end.84

do.end.84:                                        ; preds = %do.end.83
  br label %if.end.85

if.end.85:                                        ; preds = %do.end.84, %do.body.72
  br label %do.end.86

do.end.86:                                        ; preds = %if.end.85
  br label %do.body.87

do.body.87:                                       ; preds = %do.end.86
  %35 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer88 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %35, i32 0, i32 46
  %green = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer88, i32 0, i32 3
  %36 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green, align 8, !tbaa !37
  %tobool89 = icmp ne %struct.gx_transfer_map_s* %36, null
  br i1 %tobool89, label %if.then.90, label %if.end.100

if.then.90:                                       ; preds = %do.body.87
  br label %do.body.91

do.body.91:                                       ; preds = %if.then.90
  %37 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer92 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %37, i32 0, i32 46
  %green93 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer92, i32 0, i32 3
  %38 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green93, align 8, !tbaa !37
  %rc94 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %38, i32 0, i32 0
  %ref_count95 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc94, i32 0, i32 0
  %39 = load i64, i64* %ref_count95, align 8, !tbaa !56
  %inc96 = add nsw i64 %39, 1
  store i64 %inc96, i64* %ref_count95, align 8, !tbaa !56
  br label %do.body.97

do.body.97:                                       ; preds = %do.body.91
  br label %do.end.98

do.end.98:                                        ; preds = %do.body.97
  br label %do.end.99

do.end.99:                                        ; preds = %do.end.98
  br label %if.end.100

if.end.100:                                       ; preds = %do.end.99, %do.body.87
  br label %do.end.101

do.end.101:                                       ; preds = %if.end.100
  br label %do.body.102

do.body.102:                                      ; preds = %do.end.101
  %40 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer103 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %40, i32 0, i32 46
  %blue = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer103, i32 0, i32 5
  %41 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %blue, align 8, !tbaa !38
  %tobool104 = icmp ne %struct.gx_transfer_map_s* %41, null
  br i1 %tobool104, label %if.then.105, label %if.end.115

if.then.105:                                      ; preds = %do.body.102
  br label %do.body.106

do.body.106:                                      ; preds = %if.then.105
  %42 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer107 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %42, i32 0, i32 46
  %blue108 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer107, i32 0, i32 5
  %43 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %blue108, align 8, !tbaa !38
  %rc109 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %43, i32 0, i32 0
  %ref_count110 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc109, i32 0, i32 0
  %44 = load i64, i64* %ref_count110, align 8, !tbaa !56
  %inc111 = add nsw i64 %44, 1
  store i64 %inc111, i64* %ref_count110, align 8, !tbaa !56
  br label %do.body.112

do.body.112:                                      ; preds = %do.body.106
  br label %do.end.113

do.end.113:                                       ; preds = %do.body.112
  br label %do.end.114

do.end.114:                                       ; preds = %do.end.113
  br label %if.end.115

if.end.115:                                       ; preds = %do.end.114, %do.body.102
  br label %do.end.116

do.end.116:                                       ; preds = %if.end.115
  br label %do.body.117

do.body.117:                                      ; preds = %do.end.116
  %45 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cie_joint_caches = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %45, i32 0, i32 48
  %46 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches, align 8, !tbaa !40
  %tobool118 = icmp ne %struct.gx_cie_joint_caches_s* %46, null
  br i1 %tobool118, label %if.then.119, label %if.end.128

if.then.119:                                      ; preds = %do.body.117
  br label %do.body.120

do.body.120:                                      ; preds = %if.then.119
  %47 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cie_joint_caches121 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %47, i32 0, i32 48
  %48 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches121, align 8, !tbaa !40
  %rc122 = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %48, i32 0, i32 4
  %ref_count123 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc122, i32 0, i32 0
  %49 = load i64, i64* %ref_count123, align 8, !tbaa !93
  %inc124 = add nsw i64 %49, 1
  store i64 %inc124, i64* %ref_count123, align 8, !tbaa !93
  br label %do.body.125

do.body.125:                                      ; preds = %do.body.120
  br label %do.end.126

do.end.126:                                       ; preds = %do.body.125
  br label %do.end.127

do.end.127:                                       ; preds = %do.end.126
  br label %if.end.128

if.end.128:                                       ; preds = %do.end.127, %do.body.117
  br label %do.end.129

do.end.129:                                       ; preds = %if.end.128
  br label %do.body.130

do.body.130:                                      ; preds = %do.end.129
  %50 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cie_joint_caches_alt = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %50, i32 0, i32 54
  %51 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches_alt, align 8, !tbaa !44
  %tobool131 = icmp ne %struct.gx_cie_joint_caches_s* %51, null
  br i1 %tobool131, label %if.then.132, label %if.end.141

if.then.132:                                      ; preds = %do.body.130
  br label %do.body.133

do.body.133:                                      ; preds = %if.then.132
  %52 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cie_joint_caches_alt134 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %52, i32 0, i32 54
  %53 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches_alt134, align 8, !tbaa !44
  %rc135 = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %53, i32 0, i32 4
  %ref_count136 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc135, i32 0, i32 0
  %54 = load i64, i64* %ref_count136, align 8, !tbaa !93
  %inc137 = add nsw i64 %54, 1
  store i64 %inc137, i64* %ref_count136, align 8, !tbaa !93
  br label %do.body.138

do.body.138:                                      ; preds = %do.body.133
  br label %do.end.139

do.end.139:                                       ; preds = %do.body.138
  br label %do.end.140

do.end.140:                                       ; preds = %do.end.139
  br label %if.end.141

if.end.141:                                       ; preds = %do.end.140, %do.body.130
  br label %do.end.142

do.end.142:                                       ; preds = %if.end.141
  br label %do.body.143

do.body.143:                                      ; preds = %do.end.142
  %55 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %devicergb_cs = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %55, i32 0, i32 52
  %56 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %devicergb_cs, align 8, !tbaa !42
  %tobool144 = icmp ne %struct.gs_color_space_s* %56, null
  br i1 %tobool144, label %if.then.145, label %if.end.154

if.then.145:                                      ; preds = %do.body.143
  br label %do.body.146

do.body.146:                                      ; preds = %if.then.145
  %57 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %devicergb_cs147 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %57, i32 0, i32 52
  %58 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %devicergb_cs147, align 8, !tbaa !42
  %rc148 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %58, i32 0, i32 1
  %ref_count149 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc148, i32 0, i32 0
  %59 = load i64, i64* %ref_count149, align 8, !tbaa !97
  %inc150 = add nsw i64 %59, 1
  store i64 %inc150, i64* %ref_count149, align 8, !tbaa !97
  br label %do.body.151

do.body.151:                                      ; preds = %do.body.146
  br label %do.end.152

do.end.152:                                       ; preds = %do.body.151
  br label %do.end.153

do.end.153:                                       ; preds = %do.end.152
  br label %if.end.154

if.end.154:                                       ; preds = %do.end.153, %do.body.143
  br label %do.end.155

do.end.155:                                       ; preds = %if.end.154
  br label %do.body.156

do.body.156:                                      ; preds = %do.end.155
  %60 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %devicecmyk_cs = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %60, i32 0, i32 53
  %61 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %devicecmyk_cs, align 8, !tbaa !43
  %tobool157 = icmp ne %struct.gs_color_space_s* %61, null
  br i1 %tobool157, label %if.then.158, label %if.end.167

if.then.158:                                      ; preds = %do.body.156
  br label %do.body.159

do.body.159:                                      ; preds = %if.then.158
  %62 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %devicecmyk_cs160 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %62, i32 0, i32 53
  %63 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %devicecmyk_cs160, align 8, !tbaa !43
  %rc161 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %63, i32 0, i32 1
  %ref_count162 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc161, i32 0, i32 0
  %64 = load i64, i64* %ref_count162, align 8, !tbaa !97
  %inc163 = add nsw i64 %64, 1
  store i64 %inc163, i64* %ref_count162, align 8, !tbaa !97
  br label %do.body.164

do.body.164:                                      ; preds = %do.body.159
  br label %do.end.165

do.end.165:                                       ; preds = %do.body.164
  br label %do.end.166

do.end.166:                                       ; preds = %do.end.165
  br label %if.end.167

if.end.167:                                       ; preds = %do.end.166, %do.body.156
  br label %do.end.168

do.end.168:                                       ; preds = %if.end.167
  br label %do.body.169

do.body.169:                                      ; preds = %do.end.168
  %65 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_link_cache = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %65, i32 0, i32 36
  %66 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache, align 8, !tbaa !29
  %tobool170 = icmp ne %struct.gsicc_link_cache_s* %66, null
  br i1 %tobool170, label %if.then.171, label %if.end.180

if.then.171:                                      ; preds = %do.body.169
  br label %do.body.172

do.body.172:                                      ; preds = %if.then.171
  %67 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_link_cache173 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %67, i32 0, i32 36
  %68 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache173, align 8, !tbaa !29
  %rc174 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %68, i32 0, i32 2
  %ref_count175 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc174, i32 0, i32 0
  %69 = load i64, i64* %ref_count175, align 8, !tbaa !99
  %inc176 = add nsw i64 %69, 1
  store i64 %inc176, i64* %ref_count175, align 8, !tbaa !99
  br label %do.body.177

do.body.177:                                      ; preds = %do.body.172
  br label %do.end.178

do.end.178:                                       ; preds = %do.body.177
  br label %do.end.179

do.end.179:                                       ; preds = %do.end.178
  br label %if.end.180

if.end.180:                                       ; preds = %do.end.179, %do.body.169
  br label %do.end.181

do.end.181:                                       ; preds = %if.end.180
  br label %do.body.182

do.body.182:                                      ; preds = %do.end.181
  %70 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_profile_cache = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %70, i32 0, i32 37
  %71 = load %struct.gsicc_profile_cache_s*, %struct.gsicc_profile_cache_s** %icc_profile_cache, align 8, !tbaa !30
  %tobool183 = icmp ne %struct.gsicc_profile_cache_s* %71, null
  br i1 %tobool183, label %if.then.184, label %if.end.193

if.then.184:                                      ; preds = %do.body.182
  br label %do.body.185

do.body.185:                                      ; preds = %if.then.184
  %72 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_profile_cache186 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %72, i32 0, i32 37
  %73 = load %struct.gsicc_profile_cache_s*, %struct.gsicc_profile_cache_s** %icc_profile_cache186, align 8, !tbaa !30
  %rc187 = getelementptr inbounds %struct.gsicc_profile_cache_s, %struct.gsicc_profile_cache_s* %73, i32 0, i32 2
  %ref_count188 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc187, i32 0, i32 0
  %74 = load i64, i64* %ref_count188, align 8, !tbaa !101
  %inc189 = add nsw i64 %74, 1
  store i64 %inc189, i64* %ref_count188, align 8, !tbaa !101
  br label %do.body.190

do.body.190:                                      ; preds = %do.body.185
  br label %do.end.191

do.end.191:                                       ; preds = %do.body.190
  br label %do.end.192

do.end.192:                                       ; preds = %do.end.191
  br label %if.end.193

if.end.193:                                       ; preds = %do.end.192, %do.body.182
  br label %do.end.194

do.end.194:                                       ; preds = %if.end.193
  br label %do.body.195

do.body.195:                                      ; preds = %do.end.194
  %75 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_manager = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %75, i32 0, i32 35
  %76 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !28
  %tobool196 = icmp ne %struct.gsicc_manager_s* %76, null
  br i1 %tobool196, label %if.then.197, label %if.end.206

if.then.197:                                      ; preds = %do.body.195
  br label %do.body.198

do.body.198:                                      ; preds = %if.then.197
  %77 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_manager199 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %77, i32 0, i32 35
  %78 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager199, align 8, !tbaa !28
  %rc200 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %78, i32 0, i32 11
  %ref_count201 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc200, i32 0, i32 0
  %79 = load i64, i64* %ref_count201, align 8, !tbaa !103
  %inc202 = add nsw i64 %79, 1
  store i64 %inc202, i64* %ref_count201, align 8, !tbaa !103
  br label %do.body.203

do.body.203:                                      ; preds = %do.body.198
  br label %do.end.204

do.end.204:                                       ; preds = %do.body.203
  br label %do.end.205

do.end.205:                                       ; preds = %do.end.204
  br label %if.end.206

if.end.206:                                       ; preds = %do.end.205, %do.body.195
  br label %do.end.207

do.end.207:                                       ; preds = %if.end.206
  ret void
}

; Function Attrs: nounwind uwtable
define void @gs_imager_state_pre_assign(%struct.gs_imager_state_s* %pto, %struct.gs_imager_state_s* %pfrom) #0 {
entry:
  %pto.addr = alloca %struct.gs_imager_state_s*, align 8
  %pfrom.addr = alloca %struct.gs_imager_state_s*, align 8
  %cname = alloca i8*, align 8
  store %struct.gs_imager_state_s* %pto, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pfrom, %struct.gs_imager_state_s** %pfrom.addr, align 8, !tbaa !1
  %0 = bitcast i8** %cname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), i8** %cname, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %cie_joint_caches = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %1, i32 0, i32 48
  %2 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches, align 8, !tbaa !40
  %3 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pfrom.addr, align 8, !tbaa !1
  %cie_joint_caches1 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %3, i32 0, i32 48
  %4 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches1, align 8, !tbaa !40
  %cmp = icmp ne %struct.gx_cie_joint_caches_s* %2, %4
  br i1 %cmp, label %if.then, label %if.end.51

if.then:                                          ; preds = %do.body
  br label %do.body.2

do.body.2:                                        ; preds = %if.then
  %5 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pfrom.addr, align 8, !tbaa !1
  %cie_joint_caches3 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %5, i32 0, i32 48
  %6 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches3, align 8, !tbaa !40
  %tobool = icmp ne %struct.gx_cie_joint_caches_s* %6, null
  br i1 %tobool, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %do.body.2
  br label %do.body.5

do.body.5:                                        ; preds = %if.then.4
  %7 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pfrom.addr, align 8, !tbaa !1
  %cie_joint_caches6 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %7, i32 0, i32 48
  %8 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches6, align 8, !tbaa !40
  %rc = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %8, i32 0, i32 4
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %9 = load i64, i64* %ref_count, align 8, !tbaa !93
  %inc = add nsw i64 %9, 1
  store i64 %inc, i64* %ref_count, align 8, !tbaa !93
  br label %do.body.7

do.body.7:                                        ; preds = %do.body.5
  br label %do.cond

do.cond:                                          ; preds = %do.body.7
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.8

do.cond.8:                                        ; preds = %do.end
  br label %do.end.9

do.end.9:                                         ; preds = %do.cond.8
  br label %if.end

if.end:                                           ; preds = %do.end.9, %do.body.2
  br label %do.cond.10

do.cond.10:                                       ; preds = %if.end
  br label %do.end.11

do.end.11:                                        ; preds = %do.cond.10
  br label %do.body.12

do.body.12:                                       ; preds = %do.end.11
  %10 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %cie_joint_caches13 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %10, i32 0, i32 48
  %11 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches13, align 8, !tbaa !40
  %tobool14 = icmp ne %struct.gx_cie_joint_caches_s* %11, null
  br i1 %tobool14, label %if.then.15, label %if.end.48

if.then.15:                                       ; preds = %do.body.12
  br label %do.body.16

do.body.16:                                       ; preds = %if.then.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.body.16
  br label %do.cond.18

do.cond.18:                                       ; preds = %do.body.17
  br label %do.end.19

do.end.19:                                        ; preds = %do.cond.18
  %12 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %cie_joint_caches20 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %12, i32 0, i32 48
  %13 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches20, align 8, !tbaa !40
  %rc21 = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %13, i32 0, i32 4
  %ref_count22 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc21, i32 0, i32 0
  %14 = load i64, i64* %ref_count22, align 8, !tbaa !93
  %add = add nsw i64 %14, -1
  store i64 %add, i64* %ref_count22, align 8, !tbaa !93
  br label %do.cond.23

do.cond.23:                                       ; preds = %do.end.19
  br label %do.end.24

do.end.24:                                        ; preds = %do.cond.23
  %15 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %cie_joint_caches25 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %15, i32 0, i32 48
  %16 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches25, align 8, !tbaa !40
  %rc26 = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %16, i32 0, i32 4
  %ref_count27 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc26, i32 0, i32 0
  %17 = load i64, i64* %ref_count27, align 8, !tbaa !93
  %tobool28 = icmp ne i64 %17, 0
  br i1 %tobool28, label %if.else, label %if.then.29

if.then.29:                                       ; preds = %do.end.24
  br label %do.body.30

do.body.30:                                       ; preds = %if.then.29
  br label %do.body.31

do.body.31:                                       ; preds = %do.body.30
  br label %do.cond.32

do.cond.32:                                       ; preds = %do.body.31
  br label %do.end.33

do.end.33:                                        ; preds = %do.cond.32
  %18 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %cie_joint_caches34 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %18, i32 0, i32 48
  %19 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches34, align 8, !tbaa !40
  %rc35 = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %19, i32 0, i32 4
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc35, i32 0, i32 2
  %20 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !105
  %21 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %cie_joint_caches36 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %21, i32 0, i32 48
  %22 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches36, align 8, !tbaa !40
  %rc37 = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %22, i32 0, i32 4
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc37, i32 0, i32 1
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !106
  %24 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %cie_joint_caches38 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %24, i32 0, i32 48
  %25 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches38, align 8, !tbaa !40
  %26 = bitcast %struct.gx_cie_joint_caches_s* %25 to i8*
  %27 = load i8*, i8** %cname, align 8, !tbaa !1
  call void %20(%struct.gs_memory_s* %23, i8* %26, i8* %27) #3
  br label %do.cond.39

do.cond.39:                                       ; preds = %do.end.33
  br label %do.end.40

do.end.40:                                        ; preds = %do.cond.39
  br label %do.body.41

do.body.41:                                       ; preds = %do.end.40
  br label %do.cond.42

do.cond.42:                                       ; preds = %do.body.41
  br label %do.end.43

do.end.43:                                        ; preds = %do.cond.42
  br label %if.end.47

if.else:                                          ; preds = %do.end.24
  br label %do.body.44

do.body.44:                                       ; preds = %if.else
  br label %do.cond.45

do.cond.45:                                       ; preds = %do.body.44
  br label %do.end.46

do.end.46:                                        ; preds = %do.cond.45
  br label %if.end.47

if.end.47:                                        ; preds = %do.end.46, %do.end.43
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %do.body.12
  br label %do.cond.49

do.cond.49:                                       ; preds = %if.end.48
  br label %do.end.50

do.end.50:                                        ; preds = %do.cond.49
  br label %if.end.51

if.end.51:                                        ; preds = %do.end.50, %do.body
  br label %do.cond.52

do.cond.52:                                       ; preds = %if.end.51
  br label %do.end.53

do.end.53:                                        ; preds = %do.cond.52
  br label %do.body.54

do.body.54:                                       ; preds = %do.end.53
  %28 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %cie_joint_caches_alt = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %28, i32 0, i32 54
  %29 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches_alt, align 8, !tbaa !44
  %30 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pfrom.addr, align 8, !tbaa !1
  %cie_joint_caches_alt55 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %30, i32 0, i32 54
  %31 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches_alt55, align 8, !tbaa !44
  %cmp56 = icmp ne %struct.gx_cie_joint_caches_s* %29, %31
  br i1 %cmp56, label %if.then.57, label %if.end.118

if.then.57:                                       ; preds = %do.body.54
  br label %do.body.58

do.body.58:                                       ; preds = %if.then.57
  %32 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pfrom.addr, align 8, !tbaa !1
  %cie_joint_caches_alt59 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %32, i32 0, i32 54
  %33 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches_alt59, align 8, !tbaa !44
  %tobool60 = icmp ne %struct.gx_cie_joint_caches_s* %33, null
  br i1 %tobool60, label %if.then.61, label %if.end.72

if.then.61:                                       ; preds = %do.body.58
  br label %do.body.62

do.body.62:                                       ; preds = %if.then.61
  %34 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pfrom.addr, align 8, !tbaa !1
  %cie_joint_caches_alt63 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %34, i32 0, i32 54
  %35 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches_alt63, align 8, !tbaa !44
  %rc64 = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %35, i32 0, i32 4
  %ref_count65 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc64, i32 0, i32 0
  %36 = load i64, i64* %ref_count65, align 8, !tbaa !93
  %inc66 = add nsw i64 %36, 1
  store i64 %inc66, i64* %ref_count65, align 8, !tbaa !93
  br label %do.body.67

do.body.67:                                       ; preds = %do.body.62
  br label %do.cond.68

do.cond.68:                                       ; preds = %do.body.67
  br label %do.end.69

do.end.69:                                        ; preds = %do.cond.68
  br label %do.cond.70

do.cond.70:                                       ; preds = %do.end.69
  br label %do.end.71

do.end.71:                                        ; preds = %do.cond.70
  br label %if.end.72

if.end.72:                                        ; preds = %do.end.71, %do.body.58
  br label %do.cond.73

do.cond.73:                                       ; preds = %if.end.72
  br label %do.end.74

do.end.74:                                        ; preds = %do.cond.73
  br label %do.body.75

do.body.75:                                       ; preds = %do.end.74
  %37 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %cie_joint_caches_alt76 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %37, i32 0, i32 54
  %38 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches_alt76, align 8, !tbaa !44
  %tobool77 = icmp ne %struct.gx_cie_joint_caches_s* %38, null
  br i1 %tobool77, label %if.then.78, label %if.end.115

if.then.78:                                       ; preds = %do.body.75
  br label %do.body.79

do.body.79:                                       ; preds = %if.then.78
  br label %do.body.80

do.body.80:                                       ; preds = %do.body.79
  br label %do.cond.81

do.cond.81:                                       ; preds = %do.body.80
  br label %do.end.82

do.end.82:                                        ; preds = %do.cond.81
  %39 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %cie_joint_caches_alt83 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %39, i32 0, i32 54
  %40 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches_alt83, align 8, !tbaa !44
  %rc84 = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %40, i32 0, i32 4
  %ref_count85 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc84, i32 0, i32 0
  %41 = load i64, i64* %ref_count85, align 8, !tbaa !93
  %add86 = add nsw i64 %41, -1
  store i64 %add86, i64* %ref_count85, align 8, !tbaa !93
  br label %do.cond.87

do.cond.87:                                       ; preds = %do.end.82
  br label %do.end.88

do.end.88:                                        ; preds = %do.cond.87
  %42 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %cie_joint_caches_alt89 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %42, i32 0, i32 54
  %43 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches_alt89, align 8, !tbaa !44
  %rc90 = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %43, i32 0, i32 4
  %ref_count91 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc90, i32 0, i32 0
  %44 = load i64, i64* %ref_count91, align 8, !tbaa !93
  %tobool92 = icmp ne i64 %44, 0
  br i1 %tobool92, label %if.else.110, label %if.then.93

if.then.93:                                       ; preds = %do.end.88
  br label %do.body.94

do.body.94:                                       ; preds = %if.then.93
  br label %do.body.95

do.body.95:                                       ; preds = %do.body.94
  br label %do.cond.96

do.cond.96:                                       ; preds = %do.body.95
  br label %do.end.97

do.end.97:                                        ; preds = %do.cond.96
  %45 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %cie_joint_caches_alt98 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %45, i32 0, i32 54
  %46 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches_alt98, align 8, !tbaa !44
  %rc99 = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %46, i32 0, i32 4
  %free100 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc99, i32 0, i32 2
  %47 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free100, align 8, !tbaa !105
  %48 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %cie_joint_caches_alt101 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %48, i32 0, i32 54
  %49 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches_alt101, align 8, !tbaa !44
  %rc102 = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %49, i32 0, i32 4
  %memory103 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc102, i32 0, i32 1
  %50 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory103, align 8, !tbaa !106
  %51 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %cie_joint_caches_alt104 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %51, i32 0, i32 54
  %52 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches_alt104, align 8, !tbaa !44
  %53 = bitcast %struct.gx_cie_joint_caches_s* %52 to i8*
  %54 = load i8*, i8** %cname, align 8, !tbaa !1
  call void %47(%struct.gs_memory_s* %50, i8* %53, i8* %54) #3
  br label %do.cond.105

do.cond.105:                                      ; preds = %do.end.97
  br label %do.end.106

do.end.106:                                       ; preds = %do.cond.105
  br label %do.body.107

do.body.107:                                      ; preds = %do.end.106
  br label %do.cond.108

do.cond.108:                                      ; preds = %do.body.107
  br label %do.end.109

do.end.109:                                       ; preds = %do.cond.108
  br label %if.end.114

if.else.110:                                      ; preds = %do.end.88
  br label %do.body.111

do.body.111:                                      ; preds = %if.else.110
  br label %do.cond.112

do.cond.112:                                      ; preds = %do.body.111
  br label %do.end.113

do.end.113:                                       ; preds = %do.cond.112
  br label %if.end.114

if.end.114:                                       ; preds = %do.end.113, %do.end.109
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %do.body.75
  br label %do.cond.116

do.cond.116:                                      ; preds = %if.end.115
  br label %do.end.117

do.end.117:                                       ; preds = %do.cond.116
  br label %if.end.118

if.end.118:                                       ; preds = %do.end.117, %do.body.54
  br label %do.cond.119

do.cond.119:                                      ; preds = %if.end.118
  br label %do.end.120

do.end.120:                                       ; preds = %do.cond.119
  br label %do.body.121

do.body.121:                                      ; preds = %do.end.120
  %55 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %set_transfer = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %55, i32 0, i32 46
  %blue = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer, i32 0, i32 5
  %56 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %blue, align 8, !tbaa !38
  %57 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pfrom.addr, align 8, !tbaa !1
  %set_transfer122 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %57, i32 0, i32 46
  %blue123 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer122, i32 0, i32 5
  %58 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %blue123, align 8, !tbaa !38
  %cmp124 = icmp ne %struct.gx_transfer_map_s* %56, %58
  br i1 %cmp124, label %if.then.125, label %if.end.194

if.then.125:                                      ; preds = %do.body.121
  br label %do.body.126

do.body.126:                                      ; preds = %if.then.125
  %59 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pfrom.addr, align 8, !tbaa !1
  %set_transfer127 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %59, i32 0, i32 46
  %blue128 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer127, i32 0, i32 5
  %60 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %blue128, align 8, !tbaa !38
  %tobool129 = icmp ne %struct.gx_transfer_map_s* %60, null
  br i1 %tobool129, label %if.then.130, label %if.end.142

if.then.130:                                      ; preds = %do.body.126
  br label %do.body.131

do.body.131:                                      ; preds = %if.then.130
  %61 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pfrom.addr, align 8, !tbaa !1
  %set_transfer132 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %61, i32 0, i32 46
  %blue133 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer132, i32 0, i32 5
  %62 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %blue133, align 8, !tbaa !38
  %rc134 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %62, i32 0, i32 0
  %ref_count135 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc134, i32 0, i32 0
  %63 = load i64, i64* %ref_count135, align 8, !tbaa !56
  %inc136 = add nsw i64 %63, 1
  store i64 %inc136, i64* %ref_count135, align 8, !tbaa !56
  br label %do.body.137

do.body.137:                                      ; preds = %do.body.131
  br label %do.cond.138

do.cond.138:                                      ; preds = %do.body.137
  br label %do.end.139

do.end.139:                                       ; preds = %do.cond.138
  br label %do.cond.140

do.cond.140:                                      ; preds = %do.end.139
  br label %do.end.141

do.end.141:                                       ; preds = %do.cond.140
  br label %if.end.142

if.end.142:                                       ; preds = %do.end.141, %do.body.126
  br label %do.cond.143

do.cond.143:                                      ; preds = %if.end.142
  br label %do.end.144

do.end.144:                                       ; preds = %do.cond.143
  br label %do.body.145

do.body.145:                                      ; preds = %do.end.144
  %64 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %set_transfer146 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %64, i32 0, i32 46
  %blue147 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer146, i32 0, i32 5
  %65 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %blue147, align 8, !tbaa !38
  %tobool148 = icmp ne %struct.gx_transfer_map_s* %65, null
  br i1 %tobool148, label %if.then.149, label %if.end.191

if.then.149:                                      ; preds = %do.body.145
  br label %do.body.150

do.body.150:                                      ; preds = %if.then.149
  br label %do.body.151

do.body.151:                                      ; preds = %do.body.150
  br label %do.cond.152

do.cond.152:                                      ; preds = %do.body.151
  br label %do.end.153

do.end.153:                                       ; preds = %do.cond.152
  %66 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %set_transfer154 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %66, i32 0, i32 46
  %blue155 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer154, i32 0, i32 5
  %67 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %blue155, align 8, !tbaa !38
  %rc156 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %67, i32 0, i32 0
  %ref_count157 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc156, i32 0, i32 0
  %68 = load i64, i64* %ref_count157, align 8, !tbaa !56
  %add158 = add nsw i64 %68, -1
  store i64 %add158, i64* %ref_count157, align 8, !tbaa !56
  br label %do.cond.159

do.cond.159:                                      ; preds = %do.end.153
  br label %do.end.160

do.end.160:                                       ; preds = %do.cond.159
  %69 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %set_transfer161 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %69, i32 0, i32 46
  %blue162 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer161, i32 0, i32 5
  %70 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %blue162, align 8, !tbaa !38
  %rc163 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %70, i32 0, i32 0
  %ref_count164 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc163, i32 0, i32 0
  %71 = load i64, i64* %ref_count164, align 8, !tbaa !56
  %tobool165 = icmp ne i64 %71, 0
  br i1 %tobool165, label %if.else.186, label %if.then.166

if.then.166:                                      ; preds = %do.end.160
  br label %do.body.167

do.body.167:                                      ; preds = %if.then.166
  br label %do.body.168

do.body.168:                                      ; preds = %do.body.167
  br label %do.cond.169

do.cond.169:                                      ; preds = %do.body.168
  br label %do.end.170

do.end.170:                                       ; preds = %do.cond.169
  %72 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %set_transfer171 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %72, i32 0, i32 46
  %blue172 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer171, i32 0, i32 5
  %73 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %blue172, align 8, !tbaa !38
  %rc173 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %73, i32 0, i32 0
  %free174 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc173, i32 0, i32 2
  %74 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free174, align 8, !tbaa !61
  %75 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %set_transfer175 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %75, i32 0, i32 46
  %blue176 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer175, i32 0, i32 5
  %76 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %blue176, align 8, !tbaa !38
  %rc177 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %76, i32 0, i32 0
  %memory178 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc177, i32 0, i32 1
  %77 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory178, align 8, !tbaa !60
  %78 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %set_transfer179 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %78, i32 0, i32 46
  %blue180 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer179, i32 0, i32 5
  %79 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %blue180, align 8, !tbaa !38
  %80 = bitcast %struct.gx_transfer_map_s* %79 to i8*
  %81 = load i8*, i8** %cname, align 8, !tbaa !1
  call void %74(%struct.gs_memory_s* %77, i8* %80, i8* %81) #3
  br label %do.cond.181

do.cond.181:                                      ; preds = %do.end.170
  br label %do.end.182

do.end.182:                                       ; preds = %do.cond.181
  br label %do.body.183

do.body.183:                                      ; preds = %do.end.182
  br label %do.cond.184

do.cond.184:                                      ; preds = %do.body.183
  br label %do.end.185

do.end.185:                                       ; preds = %do.cond.184
  br label %if.end.190

if.else.186:                                      ; preds = %do.end.160
  br label %do.body.187

do.body.187:                                      ; preds = %if.else.186
  br label %do.cond.188

do.cond.188:                                      ; preds = %do.body.187
  br label %do.end.189

do.end.189:                                       ; preds = %do.cond.188
  br label %if.end.190

if.end.190:                                       ; preds = %do.end.189, %do.end.185
  br label %if.end.191

if.end.191:                                       ; preds = %if.end.190, %do.body.145
  br label %do.cond.192

do.cond.192:                                      ; preds = %if.end.191
  br label %do.end.193

do.end.193:                                       ; preds = %do.cond.192
  br label %if.end.194

if.end.194:                                       ; preds = %do.end.193, %do.body.121
  br label %do.cond.195

do.cond.195:                                      ; preds = %if.end.194
  br label %do.end.196

do.end.196:                                       ; preds = %do.cond.195
  br label %do.body.197

do.body.197:                                      ; preds = %do.end.196
  %82 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %set_transfer198 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %82, i32 0, i32 46
  %green = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer198, i32 0, i32 3
  %83 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green, align 8, !tbaa !37
  %84 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pfrom.addr, align 8, !tbaa !1
  %set_transfer199 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %84, i32 0, i32 46
  %green200 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer199, i32 0, i32 3
  %85 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green200, align 8, !tbaa !37
  %cmp201 = icmp ne %struct.gx_transfer_map_s* %83, %85
  br i1 %cmp201, label %if.then.202, label %if.end.271

if.then.202:                                      ; preds = %do.body.197
  br label %do.body.203

do.body.203:                                      ; preds = %if.then.202
  %86 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pfrom.addr, align 8, !tbaa !1
  %set_transfer204 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %86, i32 0, i32 46
  %green205 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer204, i32 0, i32 3
  %87 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green205, align 8, !tbaa !37
  %tobool206 = icmp ne %struct.gx_transfer_map_s* %87, null
  br i1 %tobool206, label %if.then.207, label %if.end.219

if.then.207:                                      ; preds = %do.body.203
  br label %do.body.208

do.body.208:                                      ; preds = %if.then.207
  %88 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pfrom.addr, align 8, !tbaa !1
  %set_transfer209 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %88, i32 0, i32 46
  %green210 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer209, i32 0, i32 3
  %89 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green210, align 8, !tbaa !37
  %rc211 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %89, i32 0, i32 0
  %ref_count212 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc211, i32 0, i32 0
  %90 = load i64, i64* %ref_count212, align 8, !tbaa !56
  %inc213 = add nsw i64 %90, 1
  store i64 %inc213, i64* %ref_count212, align 8, !tbaa !56
  br label %do.body.214

do.body.214:                                      ; preds = %do.body.208
  br label %do.cond.215

do.cond.215:                                      ; preds = %do.body.214
  br label %do.end.216

do.end.216:                                       ; preds = %do.cond.215
  br label %do.cond.217

do.cond.217:                                      ; preds = %do.end.216
  br label %do.end.218

do.end.218:                                       ; preds = %do.cond.217
  br label %if.end.219

if.end.219:                                       ; preds = %do.end.218, %do.body.203
  br label %do.cond.220

do.cond.220:                                      ; preds = %if.end.219
  br label %do.end.221

do.end.221:                                       ; preds = %do.cond.220
  br label %do.body.222

do.body.222:                                      ; preds = %do.end.221
  %91 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %set_transfer223 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %91, i32 0, i32 46
  %green224 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer223, i32 0, i32 3
  %92 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green224, align 8, !tbaa !37
  %tobool225 = icmp ne %struct.gx_transfer_map_s* %92, null
  br i1 %tobool225, label %if.then.226, label %if.end.268

if.then.226:                                      ; preds = %do.body.222
  br label %do.body.227

do.body.227:                                      ; preds = %if.then.226
  br label %do.body.228

do.body.228:                                      ; preds = %do.body.227
  br label %do.cond.229

do.cond.229:                                      ; preds = %do.body.228
  br label %do.end.230

do.end.230:                                       ; preds = %do.cond.229
  %93 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %set_transfer231 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %93, i32 0, i32 46
  %green232 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer231, i32 0, i32 3
  %94 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green232, align 8, !tbaa !37
  %rc233 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %94, i32 0, i32 0
  %ref_count234 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc233, i32 0, i32 0
  %95 = load i64, i64* %ref_count234, align 8, !tbaa !56
  %add235 = add nsw i64 %95, -1
  store i64 %add235, i64* %ref_count234, align 8, !tbaa !56
  br label %do.cond.236

do.cond.236:                                      ; preds = %do.end.230
  br label %do.end.237

do.end.237:                                       ; preds = %do.cond.236
  %96 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %set_transfer238 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %96, i32 0, i32 46
  %green239 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer238, i32 0, i32 3
  %97 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green239, align 8, !tbaa !37
  %rc240 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %97, i32 0, i32 0
  %ref_count241 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc240, i32 0, i32 0
  %98 = load i64, i64* %ref_count241, align 8, !tbaa !56
  %tobool242 = icmp ne i64 %98, 0
  br i1 %tobool242, label %if.else.263, label %if.then.243

if.then.243:                                      ; preds = %do.end.237
  br label %do.body.244

do.body.244:                                      ; preds = %if.then.243
  br label %do.body.245

do.body.245:                                      ; preds = %do.body.244
  br label %do.cond.246

do.cond.246:                                      ; preds = %do.body.245
  br label %do.end.247

do.end.247:                                       ; preds = %do.cond.246
  %99 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %set_transfer248 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %99, i32 0, i32 46
  %green249 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer248, i32 0, i32 3
  %100 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green249, align 8, !tbaa !37
  %rc250 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %100, i32 0, i32 0
  %free251 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc250, i32 0, i32 2
  %101 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free251, align 8, !tbaa !61
  %102 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %set_transfer252 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %102, i32 0, i32 46
  %green253 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer252, i32 0, i32 3
  %103 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green253, align 8, !tbaa !37
  %rc254 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %103, i32 0, i32 0
  %memory255 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc254, i32 0, i32 1
  %104 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory255, align 8, !tbaa !60
  %105 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %set_transfer256 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %105, i32 0, i32 46
  %green257 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer256, i32 0, i32 3
  %106 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green257, align 8, !tbaa !37
  %107 = bitcast %struct.gx_transfer_map_s* %106 to i8*
  %108 = load i8*, i8** %cname, align 8, !tbaa !1
  call void %101(%struct.gs_memory_s* %104, i8* %107, i8* %108) #3
  br label %do.cond.258

do.cond.258:                                      ; preds = %do.end.247
  br label %do.end.259

do.end.259:                                       ; preds = %do.cond.258
  br label %do.body.260

do.body.260:                                      ; preds = %do.end.259
  br label %do.cond.261

do.cond.261:                                      ; preds = %do.body.260
  br label %do.end.262

do.end.262:                                       ; preds = %do.cond.261
  br label %if.end.267

if.else.263:                                      ; preds = %do.end.237
  br label %do.body.264

do.body.264:                                      ; preds = %if.else.263
  br label %do.cond.265

do.cond.265:                                      ; preds = %do.body.264
  br label %do.end.266

do.end.266:                                       ; preds = %do.cond.265
  br label %if.end.267

if.end.267:                                       ; preds = %do.end.266, %do.end.262
  br label %if.end.268

if.end.268:                                       ; preds = %if.end.267, %do.body.222
  br label %do.cond.269

do.cond.269:                                      ; preds = %if.end.268
  br label %do.end.270

do.end.270:                                       ; preds = %do.cond.269
  br label %if.end.271

if.end.271:                                       ; preds = %do.end.270, %do.body.197
  br label %do.cond.272

do.cond.272:                                      ; preds = %if.end.271
  br label %do.end.273

do.end.273:                                       ; preds = %do.cond.272
  br label %do.body.274

do.body.274:                                      ; preds = %do.end.273
  %109 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %set_transfer275 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %109, i32 0, i32 46
  %red = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer275, i32 0, i32 1
  %110 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red, align 8, !tbaa !36
  %111 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pfrom.addr, align 8, !tbaa !1
  %set_transfer276 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %111, i32 0, i32 46
  %red277 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer276, i32 0, i32 1
  %112 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red277, align 8, !tbaa !36
  %cmp278 = icmp ne %struct.gx_transfer_map_s* %110, %112
  br i1 %cmp278, label %if.then.279, label %if.end.348

if.then.279:                                      ; preds = %do.body.274
  br label %do.body.280

do.body.280:                                      ; preds = %if.then.279
  %113 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pfrom.addr, align 8, !tbaa !1
  %set_transfer281 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %113, i32 0, i32 46
  %red282 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer281, i32 0, i32 1
  %114 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red282, align 8, !tbaa !36
  %tobool283 = icmp ne %struct.gx_transfer_map_s* %114, null
  br i1 %tobool283, label %if.then.284, label %if.end.296

if.then.284:                                      ; preds = %do.body.280
  br label %do.body.285

do.body.285:                                      ; preds = %if.then.284
  %115 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pfrom.addr, align 8, !tbaa !1
  %set_transfer286 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %115, i32 0, i32 46
  %red287 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer286, i32 0, i32 1
  %116 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red287, align 8, !tbaa !36
  %rc288 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %116, i32 0, i32 0
  %ref_count289 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc288, i32 0, i32 0
  %117 = load i64, i64* %ref_count289, align 8, !tbaa !56
  %inc290 = add nsw i64 %117, 1
  store i64 %inc290, i64* %ref_count289, align 8, !tbaa !56
  br label %do.body.291

do.body.291:                                      ; preds = %do.body.285
  br label %do.cond.292

do.cond.292:                                      ; preds = %do.body.291
  br label %do.end.293

do.end.293:                                       ; preds = %do.cond.292
  br label %do.cond.294

do.cond.294:                                      ; preds = %do.end.293
  br label %do.end.295

do.end.295:                                       ; preds = %do.cond.294
  br label %if.end.296

if.end.296:                                       ; preds = %do.end.295, %do.body.280
  br label %do.cond.297

do.cond.297:                                      ; preds = %if.end.296
  br label %do.end.298

do.end.298:                                       ; preds = %do.cond.297
  br label %do.body.299

do.body.299:                                      ; preds = %do.end.298
  %118 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %set_transfer300 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %118, i32 0, i32 46
  %red301 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer300, i32 0, i32 1
  %119 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red301, align 8, !tbaa !36
  %tobool302 = icmp ne %struct.gx_transfer_map_s* %119, null
  br i1 %tobool302, label %if.then.303, label %if.end.345

if.then.303:                                      ; preds = %do.body.299
  br label %do.body.304

do.body.304:                                      ; preds = %if.then.303
  br label %do.body.305

do.body.305:                                      ; preds = %do.body.304
  br label %do.cond.306

do.cond.306:                                      ; preds = %do.body.305
  br label %do.end.307

do.end.307:                                       ; preds = %do.cond.306
  %120 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %set_transfer308 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %120, i32 0, i32 46
  %red309 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer308, i32 0, i32 1
  %121 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red309, align 8, !tbaa !36
  %rc310 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %121, i32 0, i32 0
  %ref_count311 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc310, i32 0, i32 0
  %122 = load i64, i64* %ref_count311, align 8, !tbaa !56
  %add312 = add nsw i64 %122, -1
  store i64 %add312, i64* %ref_count311, align 8, !tbaa !56
  br label %do.cond.313

do.cond.313:                                      ; preds = %do.end.307
  br label %do.end.314

do.end.314:                                       ; preds = %do.cond.313
  %123 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %set_transfer315 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %123, i32 0, i32 46
  %red316 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer315, i32 0, i32 1
  %124 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red316, align 8, !tbaa !36
  %rc317 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %124, i32 0, i32 0
  %ref_count318 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc317, i32 0, i32 0
  %125 = load i64, i64* %ref_count318, align 8, !tbaa !56
  %tobool319 = icmp ne i64 %125, 0
  br i1 %tobool319, label %if.else.340, label %if.then.320

if.then.320:                                      ; preds = %do.end.314
  br label %do.body.321

do.body.321:                                      ; preds = %if.then.320
  br label %do.body.322

do.body.322:                                      ; preds = %do.body.321
  br label %do.cond.323

do.cond.323:                                      ; preds = %do.body.322
  br label %do.end.324

do.end.324:                                       ; preds = %do.cond.323
  %126 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %set_transfer325 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %126, i32 0, i32 46
  %red326 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer325, i32 0, i32 1
  %127 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red326, align 8, !tbaa !36
  %rc327 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %127, i32 0, i32 0
  %free328 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc327, i32 0, i32 2
  %128 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free328, align 8, !tbaa !61
  %129 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %set_transfer329 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %129, i32 0, i32 46
  %red330 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer329, i32 0, i32 1
  %130 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red330, align 8, !tbaa !36
  %rc331 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %130, i32 0, i32 0
  %memory332 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc331, i32 0, i32 1
  %131 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory332, align 8, !tbaa !60
  %132 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %set_transfer333 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %132, i32 0, i32 46
  %red334 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer333, i32 0, i32 1
  %133 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red334, align 8, !tbaa !36
  %134 = bitcast %struct.gx_transfer_map_s* %133 to i8*
  %135 = load i8*, i8** %cname, align 8, !tbaa !1
  call void %128(%struct.gs_memory_s* %131, i8* %134, i8* %135) #3
  br label %do.cond.335

do.cond.335:                                      ; preds = %do.end.324
  br label %do.end.336

do.end.336:                                       ; preds = %do.cond.335
  br label %do.body.337

do.body.337:                                      ; preds = %do.end.336
  br label %do.cond.338

do.cond.338:                                      ; preds = %do.body.337
  br label %do.end.339

do.end.339:                                       ; preds = %do.cond.338
  br label %if.end.344

if.else.340:                                      ; preds = %do.end.314
  br label %do.body.341

do.body.341:                                      ; preds = %if.else.340
  br label %do.cond.342

do.cond.342:                                      ; preds = %do.body.341
  br label %do.end.343

do.end.343:                                       ; preds = %do.cond.342
  br label %if.end.344

if.end.344:                                       ; preds = %do.end.343, %do.end.339
  br label %if.end.345

if.end.345:                                       ; preds = %if.end.344, %do.body.299
  br label %do.cond.346

do.cond.346:                                      ; preds = %if.end.345
  br label %do.end.347

do.end.347:                                       ; preds = %do.cond.346
  br label %if.end.348

if.end.348:                                       ; preds = %do.end.347, %do.body.274
  br label %do.cond.349

do.cond.349:                                      ; preds = %if.end.348
  br label %do.end.350

do.end.350:                                       ; preds = %do.cond.349
  br label %do.body.351

do.body.351:                                      ; preds = %do.end.350
  %136 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %set_transfer352 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %136, i32 0, i32 46
  %gray = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer352, i32 0, i32 7
  %137 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray, align 8, !tbaa !39
  %138 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pfrom.addr, align 8, !tbaa !1
  %set_transfer353 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %138, i32 0, i32 46
  %gray354 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer353, i32 0, i32 7
  %139 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray354, align 8, !tbaa !39
  %cmp355 = icmp ne %struct.gx_transfer_map_s* %137, %139
  br i1 %cmp355, label %if.then.356, label %if.end.425

if.then.356:                                      ; preds = %do.body.351
  br label %do.body.357

do.body.357:                                      ; preds = %if.then.356
  %140 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pfrom.addr, align 8, !tbaa !1
  %set_transfer358 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %140, i32 0, i32 46
  %gray359 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer358, i32 0, i32 7
  %141 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray359, align 8, !tbaa !39
  %tobool360 = icmp ne %struct.gx_transfer_map_s* %141, null
  br i1 %tobool360, label %if.then.361, label %if.end.373

if.then.361:                                      ; preds = %do.body.357
  br label %do.body.362

do.body.362:                                      ; preds = %if.then.361
  %142 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pfrom.addr, align 8, !tbaa !1
  %set_transfer363 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %142, i32 0, i32 46
  %gray364 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer363, i32 0, i32 7
  %143 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray364, align 8, !tbaa !39
  %rc365 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %143, i32 0, i32 0
  %ref_count366 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc365, i32 0, i32 0
  %144 = load i64, i64* %ref_count366, align 8, !tbaa !56
  %inc367 = add nsw i64 %144, 1
  store i64 %inc367, i64* %ref_count366, align 8, !tbaa !56
  br label %do.body.368

do.body.368:                                      ; preds = %do.body.362
  br label %do.cond.369

do.cond.369:                                      ; preds = %do.body.368
  br label %do.end.370

do.end.370:                                       ; preds = %do.cond.369
  br label %do.cond.371

do.cond.371:                                      ; preds = %do.end.370
  br label %do.end.372

do.end.372:                                       ; preds = %do.cond.371
  br label %if.end.373

if.end.373:                                       ; preds = %do.end.372, %do.body.357
  br label %do.cond.374

do.cond.374:                                      ; preds = %if.end.373
  br label %do.end.375

do.end.375:                                       ; preds = %do.cond.374
  br label %do.body.376

do.body.376:                                      ; preds = %do.end.375
  %145 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %set_transfer377 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %145, i32 0, i32 46
  %gray378 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer377, i32 0, i32 7
  %146 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray378, align 8, !tbaa !39
  %tobool379 = icmp ne %struct.gx_transfer_map_s* %146, null
  br i1 %tobool379, label %if.then.380, label %if.end.422

if.then.380:                                      ; preds = %do.body.376
  br label %do.body.381

do.body.381:                                      ; preds = %if.then.380
  br label %do.body.382

do.body.382:                                      ; preds = %do.body.381
  br label %do.cond.383

do.cond.383:                                      ; preds = %do.body.382
  br label %do.end.384

do.end.384:                                       ; preds = %do.cond.383
  %147 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %set_transfer385 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %147, i32 0, i32 46
  %gray386 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer385, i32 0, i32 7
  %148 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray386, align 8, !tbaa !39
  %rc387 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %148, i32 0, i32 0
  %ref_count388 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc387, i32 0, i32 0
  %149 = load i64, i64* %ref_count388, align 8, !tbaa !56
  %add389 = add nsw i64 %149, -1
  store i64 %add389, i64* %ref_count388, align 8, !tbaa !56
  br label %do.cond.390

do.cond.390:                                      ; preds = %do.end.384
  br label %do.end.391

do.end.391:                                       ; preds = %do.cond.390
  %150 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %set_transfer392 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %150, i32 0, i32 46
  %gray393 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer392, i32 0, i32 7
  %151 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray393, align 8, !tbaa !39
  %rc394 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %151, i32 0, i32 0
  %ref_count395 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc394, i32 0, i32 0
  %152 = load i64, i64* %ref_count395, align 8, !tbaa !56
  %tobool396 = icmp ne i64 %152, 0
  br i1 %tobool396, label %if.else.417, label %if.then.397

if.then.397:                                      ; preds = %do.end.391
  br label %do.body.398

do.body.398:                                      ; preds = %if.then.397
  br label %do.body.399

do.body.399:                                      ; preds = %do.body.398
  br label %do.cond.400

do.cond.400:                                      ; preds = %do.body.399
  br label %do.end.401

do.end.401:                                       ; preds = %do.cond.400
  %153 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %set_transfer402 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %153, i32 0, i32 46
  %gray403 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer402, i32 0, i32 7
  %154 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray403, align 8, !tbaa !39
  %rc404 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %154, i32 0, i32 0
  %free405 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc404, i32 0, i32 2
  %155 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free405, align 8, !tbaa !61
  %156 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %set_transfer406 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %156, i32 0, i32 46
  %gray407 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer406, i32 0, i32 7
  %157 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray407, align 8, !tbaa !39
  %rc408 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %157, i32 0, i32 0
  %memory409 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc408, i32 0, i32 1
  %158 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory409, align 8, !tbaa !60
  %159 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %set_transfer410 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %159, i32 0, i32 46
  %gray411 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer410, i32 0, i32 7
  %160 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray411, align 8, !tbaa !39
  %161 = bitcast %struct.gx_transfer_map_s* %160 to i8*
  %162 = load i8*, i8** %cname, align 8, !tbaa !1
  call void %155(%struct.gs_memory_s* %158, i8* %161, i8* %162) #3
  br label %do.cond.412

do.cond.412:                                      ; preds = %do.end.401
  br label %do.end.413

do.end.413:                                       ; preds = %do.cond.412
  br label %do.body.414

do.body.414:                                      ; preds = %do.end.413
  br label %do.cond.415

do.cond.415:                                      ; preds = %do.body.414
  br label %do.end.416

do.end.416:                                       ; preds = %do.cond.415
  br label %if.end.421

if.else.417:                                      ; preds = %do.end.391
  br label %do.body.418

do.body.418:                                      ; preds = %if.else.417
  br label %do.cond.419

do.cond.419:                                      ; preds = %do.body.418
  br label %do.end.420

do.end.420:                                       ; preds = %do.cond.419
  br label %if.end.421

if.end.421:                                       ; preds = %do.end.420, %do.end.416
  br label %if.end.422

if.end.422:                                       ; preds = %if.end.421, %do.body.376
  br label %do.cond.423

do.cond.423:                                      ; preds = %if.end.422
  br label %do.end.424

do.end.424:                                       ; preds = %do.cond.423
  br label %if.end.425

if.end.425:                                       ; preds = %do.end.424, %do.body.351
  br label %do.cond.426

do.cond.426:                                      ; preds = %if.end.425
  br label %do.end.427

do.end.427:                                       ; preds = %do.cond.426
  br label %do.body.428

do.body.428:                                      ; preds = %do.end.427
  %163 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %undercolor_removal = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %163, i32 0, i32 45
  %164 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %undercolor_removal, align 8, !tbaa !35
  %165 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pfrom.addr, align 8, !tbaa !1
  %undercolor_removal429 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %165, i32 0, i32 45
  %166 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %undercolor_removal429, align 8, !tbaa !35
  %cmp430 = icmp ne %struct.gx_transfer_map_s* %164, %166
  br i1 %cmp430, label %if.then.431, label %if.end.492

if.then.431:                                      ; preds = %do.body.428
  br label %do.body.432

do.body.432:                                      ; preds = %if.then.431
  %167 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pfrom.addr, align 8, !tbaa !1
  %undercolor_removal433 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %167, i32 0, i32 45
  %168 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %undercolor_removal433, align 8, !tbaa !35
  %tobool434 = icmp ne %struct.gx_transfer_map_s* %168, null
  br i1 %tobool434, label %if.then.435, label %if.end.446

if.then.435:                                      ; preds = %do.body.432
  br label %do.body.436

do.body.436:                                      ; preds = %if.then.435
  %169 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pfrom.addr, align 8, !tbaa !1
  %undercolor_removal437 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %169, i32 0, i32 45
  %170 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %undercolor_removal437, align 8, !tbaa !35
  %rc438 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %170, i32 0, i32 0
  %ref_count439 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc438, i32 0, i32 0
  %171 = load i64, i64* %ref_count439, align 8, !tbaa !56
  %inc440 = add nsw i64 %171, 1
  store i64 %inc440, i64* %ref_count439, align 8, !tbaa !56
  br label %do.body.441

do.body.441:                                      ; preds = %do.body.436
  br label %do.cond.442

do.cond.442:                                      ; preds = %do.body.441
  br label %do.end.443

do.end.443:                                       ; preds = %do.cond.442
  br label %do.cond.444

do.cond.444:                                      ; preds = %do.end.443
  br label %do.end.445

do.end.445:                                       ; preds = %do.cond.444
  br label %if.end.446

if.end.446:                                       ; preds = %do.end.445, %do.body.432
  br label %do.cond.447

do.cond.447:                                      ; preds = %if.end.446
  br label %do.end.448

do.end.448:                                       ; preds = %do.cond.447
  br label %do.body.449

do.body.449:                                      ; preds = %do.end.448
  %172 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %undercolor_removal450 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %172, i32 0, i32 45
  %173 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %undercolor_removal450, align 8, !tbaa !35
  %tobool451 = icmp ne %struct.gx_transfer_map_s* %173, null
  br i1 %tobool451, label %if.then.452, label %if.end.489

if.then.452:                                      ; preds = %do.body.449
  br label %do.body.453

do.body.453:                                      ; preds = %if.then.452
  br label %do.body.454

do.body.454:                                      ; preds = %do.body.453
  br label %do.cond.455

do.cond.455:                                      ; preds = %do.body.454
  br label %do.end.456

do.end.456:                                       ; preds = %do.cond.455
  %174 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %undercolor_removal457 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %174, i32 0, i32 45
  %175 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %undercolor_removal457, align 8, !tbaa !35
  %rc458 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %175, i32 0, i32 0
  %ref_count459 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc458, i32 0, i32 0
  %176 = load i64, i64* %ref_count459, align 8, !tbaa !56
  %add460 = add nsw i64 %176, -1
  store i64 %add460, i64* %ref_count459, align 8, !tbaa !56
  br label %do.cond.461

do.cond.461:                                      ; preds = %do.end.456
  br label %do.end.462

do.end.462:                                       ; preds = %do.cond.461
  %177 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %undercolor_removal463 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %177, i32 0, i32 45
  %178 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %undercolor_removal463, align 8, !tbaa !35
  %rc464 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %178, i32 0, i32 0
  %ref_count465 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc464, i32 0, i32 0
  %179 = load i64, i64* %ref_count465, align 8, !tbaa !56
  %tobool466 = icmp ne i64 %179, 0
  br i1 %tobool466, label %if.else.484, label %if.then.467

if.then.467:                                      ; preds = %do.end.462
  br label %do.body.468

do.body.468:                                      ; preds = %if.then.467
  br label %do.body.469

do.body.469:                                      ; preds = %do.body.468
  br label %do.cond.470

do.cond.470:                                      ; preds = %do.body.469
  br label %do.end.471

do.end.471:                                       ; preds = %do.cond.470
  %180 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %undercolor_removal472 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %180, i32 0, i32 45
  %181 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %undercolor_removal472, align 8, !tbaa !35
  %rc473 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %181, i32 0, i32 0
  %free474 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc473, i32 0, i32 2
  %182 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free474, align 8, !tbaa !61
  %183 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %undercolor_removal475 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %183, i32 0, i32 45
  %184 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %undercolor_removal475, align 8, !tbaa !35
  %rc476 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %184, i32 0, i32 0
  %memory477 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc476, i32 0, i32 1
  %185 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory477, align 8, !tbaa !60
  %186 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %undercolor_removal478 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %186, i32 0, i32 45
  %187 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %undercolor_removal478, align 8, !tbaa !35
  %188 = bitcast %struct.gx_transfer_map_s* %187 to i8*
  %189 = load i8*, i8** %cname, align 8, !tbaa !1
  call void %182(%struct.gs_memory_s* %185, i8* %188, i8* %189) #3
  br label %do.cond.479

do.cond.479:                                      ; preds = %do.end.471
  br label %do.end.480

do.end.480:                                       ; preds = %do.cond.479
  br label %do.body.481

do.body.481:                                      ; preds = %do.end.480
  br label %do.cond.482

do.cond.482:                                      ; preds = %do.body.481
  br label %do.end.483

do.end.483:                                       ; preds = %do.cond.482
  br label %if.end.488

if.else.484:                                      ; preds = %do.end.462
  br label %do.body.485

do.body.485:                                      ; preds = %if.else.484
  br label %do.cond.486

do.cond.486:                                      ; preds = %do.body.485
  br label %do.end.487

do.end.487:                                       ; preds = %do.cond.486
  br label %if.end.488

if.end.488:                                       ; preds = %do.end.487, %do.end.483
  br label %if.end.489

if.end.489:                                       ; preds = %if.end.488, %do.body.449
  br label %do.cond.490

do.cond.490:                                      ; preds = %if.end.489
  br label %do.end.491

do.end.491:                                       ; preds = %do.cond.490
  br label %if.end.492

if.end.492:                                       ; preds = %do.end.491, %do.body.428
  br label %do.cond.493

do.cond.493:                                      ; preds = %if.end.492
  br label %do.end.494

do.end.494:                                       ; preds = %do.cond.493
  br label %do.body.495

do.body.495:                                      ; preds = %do.end.494
  %190 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %black_generation = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %190, i32 0, i32 44
  %191 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %black_generation, align 8, !tbaa !34
  %192 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pfrom.addr, align 8, !tbaa !1
  %black_generation496 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %192, i32 0, i32 44
  %193 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %black_generation496, align 8, !tbaa !34
  %cmp497 = icmp ne %struct.gx_transfer_map_s* %191, %193
  br i1 %cmp497, label %if.then.498, label %if.end.559

if.then.498:                                      ; preds = %do.body.495
  br label %do.body.499

do.body.499:                                      ; preds = %if.then.498
  %194 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pfrom.addr, align 8, !tbaa !1
  %black_generation500 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %194, i32 0, i32 44
  %195 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %black_generation500, align 8, !tbaa !34
  %tobool501 = icmp ne %struct.gx_transfer_map_s* %195, null
  br i1 %tobool501, label %if.then.502, label %if.end.513

if.then.502:                                      ; preds = %do.body.499
  br label %do.body.503

do.body.503:                                      ; preds = %if.then.502
  %196 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pfrom.addr, align 8, !tbaa !1
  %black_generation504 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %196, i32 0, i32 44
  %197 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %black_generation504, align 8, !tbaa !34
  %rc505 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %197, i32 0, i32 0
  %ref_count506 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc505, i32 0, i32 0
  %198 = load i64, i64* %ref_count506, align 8, !tbaa !56
  %inc507 = add nsw i64 %198, 1
  store i64 %inc507, i64* %ref_count506, align 8, !tbaa !56
  br label %do.body.508

do.body.508:                                      ; preds = %do.body.503
  br label %do.cond.509

do.cond.509:                                      ; preds = %do.body.508
  br label %do.end.510

do.end.510:                                       ; preds = %do.cond.509
  br label %do.cond.511

do.cond.511:                                      ; preds = %do.end.510
  br label %do.end.512

do.end.512:                                       ; preds = %do.cond.511
  br label %if.end.513

if.end.513:                                       ; preds = %do.end.512, %do.body.499
  br label %do.cond.514

do.cond.514:                                      ; preds = %if.end.513
  br label %do.end.515

do.end.515:                                       ; preds = %do.cond.514
  br label %do.body.516

do.body.516:                                      ; preds = %do.end.515
  %199 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %black_generation517 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %199, i32 0, i32 44
  %200 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %black_generation517, align 8, !tbaa !34
  %tobool518 = icmp ne %struct.gx_transfer_map_s* %200, null
  br i1 %tobool518, label %if.then.519, label %if.end.556

if.then.519:                                      ; preds = %do.body.516
  br label %do.body.520

do.body.520:                                      ; preds = %if.then.519
  br label %do.body.521

do.body.521:                                      ; preds = %do.body.520
  br label %do.cond.522

do.cond.522:                                      ; preds = %do.body.521
  br label %do.end.523

do.end.523:                                       ; preds = %do.cond.522
  %201 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %black_generation524 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %201, i32 0, i32 44
  %202 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %black_generation524, align 8, !tbaa !34
  %rc525 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %202, i32 0, i32 0
  %ref_count526 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc525, i32 0, i32 0
  %203 = load i64, i64* %ref_count526, align 8, !tbaa !56
  %add527 = add nsw i64 %203, -1
  store i64 %add527, i64* %ref_count526, align 8, !tbaa !56
  br label %do.cond.528

do.cond.528:                                      ; preds = %do.end.523
  br label %do.end.529

do.end.529:                                       ; preds = %do.cond.528
  %204 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %black_generation530 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %204, i32 0, i32 44
  %205 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %black_generation530, align 8, !tbaa !34
  %rc531 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %205, i32 0, i32 0
  %ref_count532 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc531, i32 0, i32 0
  %206 = load i64, i64* %ref_count532, align 8, !tbaa !56
  %tobool533 = icmp ne i64 %206, 0
  br i1 %tobool533, label %if.else.551, label %if.then.534

if.then.534:                                      ; preds = %do.end.529
  br label %do.body.535

do.body.535:                                      ; preds = %if.then.534
  br label %do.body.536

do.body.536:                                      ; preds = %do.body.535
  br label %do.cond.537

do.cond.537:                                      ; preds = %do.body.536
  br label %do.end.538

do.end.538:                                       ; preds = %do.cond.537
  %207 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %black_generation539 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %207, i32 0, i32 44
  %208 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %black_generation539, align 8, !tbaa !34
  %rc540 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %208, i32 0, i32 0
  %free541 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc540, i32 0, i32 2
  %209 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free541, align 8, !tbaa !61
  %210 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %black_generation542 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %210, i32 0, i32 44
  %211 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %black_generation542, align 8, !tbaa !34
  %rc543 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %211, i32 0, i32 0
  %memory544 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc543, i32 0, i32 1
  %212 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory544, align 8, !tbaa !60
  %213 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %black_generation545 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %213, i32 0, i32 44
  %214 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %black_generation545, align 8, !tbaa !34
  %215 = bitcast %struct.gx_transfer_map_s* %214 to i8*
  %216 = load i8*, i8** %cname, align 8, !tbaa !1
  call void %209(%struct.gs_memory_s* %212, i8* %215, i8* %216) #3
  br label %do.cond.546

do.cond.546:                                      ; preds = %do.end.538
  br label %do.end.547

do.end.547:                                       ; preds = %do.cond.546
  br label %do.body.548

do.body.548:                                      ; preds = %do.end.547
  br label %do.cond.549

do.cond.549:                                      ; preds = %do.body.548
  br label %do.end.550

do.end.550:                                       ; preds = %do.cond.549
  br label %if.end.555

if.else.551:                                      ; preds = %do.end.529
  br label %do.body.552

do.body.552:                                      ; preds = %if.else.551
  br label %do.cond.553

do.cond.553:                                      ; preds = %do.body.552
  br label %do.end.554

do.end.554:                                       ; preds = %do.cond.553
  br label %if.end.555

if.end.555:                                       ; preds = %do.end.554, %do.end.550
  br label %if.end.556

if.end.556:                                       ; preds = %if.end.555, %do.body.516
  br label %do.cond.557

do.cond.557:                                      ; preds = %if.end.556
  br label %do.end.558

do.end.558:                                       ; preds = %do.cond.557
  br label %if.end.559

if.end.559:                                       ; preds = %do.end.558, %do.body.495
  br label %do.cond.560

do.cond.560:                                      ; preds = %if.end.559
  br label %do.end.561

do.end.561:                                       ; preds = %do.cond.560
  br label %do.body.562

do.body.562:                                      ; preds = %do.end.561
  %217 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %cie_render = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %217, i32 0, i32 42
  %218 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %cie_render, align 8, !tbaa !33
  %219 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pfrom.addr, align 8, !tbaa !1
  %cie_render563 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %219, i32 0, i32 42
  %220 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %cie_render563, align 8, !tbaa !33
  %cmp564 = icmp ne %struct.gs_cie_render_s* %218, %220
  br i1 %cmp564, label %if.then.565, label %if.end.626

if.then.565:                                      ; preds = %do.body.562
  br label %do.body.566

do.body.566:                                      ; preds = %if.then.565
  %221 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pfrom.addr, align 8, !tbaa !1
  %cie_render567 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %221, i32 0, i32 42
  %222 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %cie_render567, align 8, !tbaa !33
  %tobool568 = icmp ne %struct.gs_cie_render_s* %222, null
  br i1 %tobool568, label %if.then.569, label %if.end.580

if.then.569:                                      ; preds = %do.body.566
  br label %do.body.570

do.body.570:                                      ; preds = %if.then.569
  %223 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pfrom.addr, align 8, !tbaa !1
  %cie_render571 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %223, i32 0, i32 42
  %224 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %cie_render571, align 8, !tbaa !33
  %rc572 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %224, i32 0, i32 1
  %ref_count573 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc572, i32 0, i32 0
  %225 = load i64, i64* %ref_count573, align 8, !tbaa !79
  %inc574 = add nsw i64 %225, 1
  store i64 %inc574, i64* %ref_count573, align 8, !tbaa !79
  br label %do.body.575

do.body.575:                                      ; preds = %do.body.570
  br label %do.cond.576

do.cond.576:                                      ; preds = %do.body.575
  br label %do.end.577

do.end.577:                                       ; preds = %do.cond.576
  br label %do.cond.578

do.cond.578:                                      ; preds = %do.end.577
  br label %do.end.579

do.end.579:                                       ; preds = %do.cond.578
  br label %if.end.580

if.end.580:                                       ; preds = %do.end.579, %do.body.566
  br label %do.cond.581

do.cond.581:                                      ; preds = %if.end.580
  br label %do.end.582

do.end.582:                                       ; preds = %do.cond.581
  br label %do.body.583

do.body.583:                                      ; preds = %do.end.582
  %226 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %cie_render584 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %226, i32 0, i32 42
  %227 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %cie_render584, align 8, !tbaa !33
  %tobool585 = icmp ne %struct.gs_cie_render_s* %227, null
  br i1 %tobool585, label %if.then.586, label %if.end.623

if.then.586:                                      ; preds = %do.body.583
  br label %do.body.587

do.body.587:                                      ; preds = %if.then.586
  br label %do.body.588

do.body.588:                                      ; preds = %do.body.587
  br label %do.cond.589

do.cond.589:                                      ; preds = %do.body.588
  br label %do.end.590

do.end.590:                                       ; preds = %do.cond.589
  %228 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %cie_render591 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %228, i32 0, i32 42
  %229 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %cie_render591, align 8, !tbaa !33
  %rc592 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %229, i32 0, i32 1
  %ref_count593 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc592, i32 0, i32 0
  %230 = load i64, i64* %ref_count593, align 8, !tbaa !79
  %add594 = add nsw i64 %230, -1
  store i64 %add594, i64* %ref_count593, align 8, !tbaa !79
  br label %do.cond.595

do.cond.595:                                      ; preds = %do.end.590
  br label %do.end.596

do.end.596:                                       ; preds = %do.cond.595
  %231 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %cie_render597 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %231, i32 0, i32 42
  %232 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %cie_render597, align 8, !tbaa !33
  %rc598 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %232, i32 0, i32 1
  %ref_count599 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc598, i32 0, i32 0
  %233 = load i64, i64* %ref_count599, align 8, !tbaa !79
  %tobool600 = icmp ne i64 %233, 0
  br i1 %tobool600, label %if.else.618, label %if.then.601

if.then.601:                                      ; preds = %do.end.596
  br label %do.body.602

do.body.602:                                      ; preds = %if.then.601
  br label %do.body.603

do.body.603:                                      ; preds = %do.body.602
  br label %do.cond.604

do.cond.604:                                      ; preds = %do.body.603
  br label %do.end.605

do.end.605:                                       ; preds = %do.cond.604
  %234 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %cie_render606 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %234, i32 0, i32 42
  %235 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %cie_render606, align 8, !tbaa !33
  %rc607 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %235, i32 0, i32 1
  %free608 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc607, i32 0, i32 2
  %236 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free608, align 8, !tbaa !107
  %237 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %cie_render609 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %237, i32 0, i32 42
  %238 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %cie_render609, align 8, !tbaa !33
  %rc610 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %238, i32 0, i32 1
  %memory611 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc610, i32 0, i32 1
  %239 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory611, align 8, !tbaa !108
  %240 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %cie_render612 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %240, i32 0, i32 42
  %241 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %cie_render612, align 8, !tbaa !33
  %242 = bitcast %struct.gs_cie_render_s* %241 to i8*
  %243 = load i8*, i8** %cname, align 8, !tbaa !1
  call void %236(%struct.gs_memory_s* %239, i8* %242, i8* %243) #3
  br label %do.cond.613

do.cond.613:                                      ; preds = %do.end.605
  br label %do.end.614

do.end.614:                                       ; preds = %do.cond.613
  br label %do.body.615

do.body.615:                                      ; preds = %do.end.614
  br label %do.cond.616

do.cond.616:                                      ; preds = %do.body.615
  br label %do.end.617

do.end.617:                                       ; preds = %do.cond.616
  br label %if.end.622

if.else.618:                                      ; preds = %do.end.596
  br label %do.body.619

do.body.619:                                      ; preds = %if.else.618
  br label %do.cond.620

do.cond.620:                                      ; preds = %do.body.619
  br label %do.end.621

do.end.621:                                       ; preds = %do.cond.620
  br label %if.end.622

if.end.622:                                       ; preds = %do.end.621, %do.end.617
  br label %if.end.623

if.end.623:                                       ; preds = %if.end.622, %do.body.583
  br label %do.cond.624

do.cond.624:                                      ; preds = %if.end.623
  br label %do.end.625

do.end.625:                                       ; preds = %do.cond.624
  br label %if.end.626

if.end.626:                                       ; preds = %do.end.625, %do.body.562
  br label %do.cond.627

do.cond.627:                                      ; preds = %if.end.626
  br label %do.end.628

do.end.628:                                       ; preds = %do.cond.627
  br label %do.body.629

do.body.629:                                      ; preds = %do.end.628
  %244 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %dev_ht = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %244, i32 0, i32 41
  %245 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht, align 8, !tbaa !32
  %246 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pfrom.addr, align 8, !tbaa !1
  %dev_ht630 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %246, i32 0, i32 41
  %247 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht630, align 8, !tbaa !32
  %cmp631 = icmp ne %struct.gx_device_halftone_s* %245, %247
  br i1 %cmp631, label %if.then.632, label %if.end.693

if.then.632:                                      ; preds = %do.body.629
  br label %do.body.633

do.body.633:                                      ; preds = %if.then.632
  %248 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pfrom.addr, align 8, !tbaa !1
  %dev_ht634 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %248, i32 0, i32 41
  %249 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht634, align 8, !tbaa !32
  %tobool635 = icmp ne %struct.gx_device_halftone_s* %249, null
  br i1 %tobool635, label %if.then.636, label %if.end.647

if.then.636:                                      ; preds = %do.body.633
  br label %do.body.637

do.body.637:                                      ; preds = %if.then.636
  %250 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pfrom.addr, align 8, !tbaa !1
  %dev_ht638 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %250, i32 0, i32 41
  %251 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht638, align 8, !tbaa !32
  %rc639 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %251, i32 0, i32 1
  %ref_count640 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc639, i32 0, i32 0
  %252 = load i64, i64* %ref_count640, align 8, !tbaa !74
  %inc641 = add nsw i64 %252, 1
  store i64 %inc641, i64* %ref_count640, align 8, !tbaa !74
  br label %do.body.642

do.body.642:                                      ; preds = %do.body.637
  br label %do.cond.643

do.cond.643:                                      ; preds = %do.body.642
  br label %do.end.644

do.end.644:                                       ; preds = %do.cond.643
  br label %do.cond.645

do.cond.645:                                      ; preds = %do.end.644
  br label %do.end.646

do.end.646:                                       ; preds = %do.cond.645
  br label %if.end.647

if.end.647:                                       ; preds = %do.end.646, %do.body.633
  br label %do.cond.648

do.cond.648:                                      ; preds = %if.end.647
  br label %do.end.649

do.end.649:                                       ; preds = %do.cond.648
  br label %do.body.650

do.body.650:                                      ; preds = %do.end.649
  %253 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %dev_ht651 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %253, i32 0, i32 41
  %254 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht651, align 8, !tbaa !32
  %tobool652 = icmp ne %struct.gx_device_halftone_s* %254, null
  br i1 %tobool652, label %if.then.653, label %if.end.690

if.then.653:                                      ; preds = %do.body.650
  br label %do.body.654

do.body.654:                                      ; preds = %if.then.653
  br label %do.body.655

do.body.655:                                      ; preds = %do.body.654
  br label %do.cond.656

do.cond.656:                                      ; preds = %do.body.655
  br label %do.end.657

do.end.657:                                       ; preds = %do.cond.656
  %255 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %dev_ht658 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %255, i32 0, i32 41
  %256 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht658, align 8, !tbaa !32
  %rc659 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %256, i32 0, i32 1
  %ref_count660 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc659, i32 0, i32 0
  %257 = load i64, i64* %ref_count660, align 8, !tbaa !74
  %add661 = add nsw i64 %257, -1
  store i64 %add661, i64* %ref_count660, align 8, !tbaa !74
  br label %do.cond.662

do.cond.662:                                      ; preds = %do.end.657
  br label %do.end.663

do.end.663:                                       ; preds = %do.cond.662
  %258 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %dev_ht664 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %258, i32 0, i32 41
  %259 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht664, align 8, !tbaa !32
  %rc665 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %259, i32 0, i32 1
  %ref_count666 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc665, i32 0, i32 0
  %260 = load i64, i64* %ref_count666, align 8, !tbaa !74
  %tobool667 = icmp ne i64 %260, 0
  br i1 %tobool667, label %if.else.685, label %if.then.668

if.then.668:                                      ; preds = %do.end.663
  br label %do.body.669

do.body.669:                                      ; preds = %if.then.668
  br label %do.body.670

do.body.670:                                      ; preds = %do.body.669
  br label %do.cond.671

do.cond.671:                                      ; preds = %do.body.670
  br label %do.end.672

do.end.672:                                       ; preds = %do.cond.671
  %261 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %dev_ht673 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %261, i32 0, i32 41
  %262 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht673, align 8, !tbaa !32
  %rc674 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %262, i32 0, i32 1
  %free675 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc674, i32 0, i32 2
  %263 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free675, align 8, !tbaa !109
  %264 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %dev_ht676 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %264, i32 0, i32 41
  %265 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht676, align 8, !tbaa !32
  %rc677 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %265, i32 0, i32 1
  %memory678 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc677, i32 0, i32 1
  %266 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory678, align 8, !tbaa !110
  %267 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %dev_ht679 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %267, i32 0, i32 41
  %268 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht679, align 8, !tbaa !32
  %269 = bitcast %struct.gx_device_halftone_s* %268 to i8*
  %270 = load i8*, i8** %cname, align 8, !tbaa !1
  call void %263(%struct.gs_memory_s* %266, i8* %269, i8* %270) #3
  br label %do.cond.680

do.cond.680:                                      ; preds = %do.end.672
  br label %do.end.681

do.end.681:                                       ; preds = %do.cond.680
  br label %do.body.682

do.body.682:                                      ; preds = %do.end.681
  br label %do.cond.683

do.cond.683:                                      ; preds = %do.body.682
  br label %do.end.684

do.end.684:                                       ; preds = %do.cond.683
  br label %if.end.689

if.else.685:                                      ; preds = %do.end.663
  br label %do.body.686

do.body.686:                                      ; preds = %if.else.685
  br label %do.cond.687

do.cond.687:                                      ; preds = %do.body.686
  br label %do.end.688

do.end.688:                                       ; preds = %do.cond.687
  br label %if.end.689

if.end.689:                                       ; preds = %do.end.688, %do.end.684
  br label %if.end.690

if.end.690:                                       ; preds = %if.end.689, %do.body.650
  br label %do.cond.691

do.cond.691:                                      ; preds = %if.end.690
  br label %do.end.692

do.end.692:                                       ; preds = %do.cond.691
  br label %if.end.693

if.end.693:                                       ; preds = %do.end.692, %do.body.629
  br label %do.cond.694

do.cond.694:                                      ; preds = %if.end.693
  br label %do.end.695

do.end.695:                                       ; preds = %do.cond.694
  br label %do.body.696

do.body.696:                                      ; preds = %do.end.695
  %271 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %halftone = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %271, i32 0, i32 39
  %272 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %halftone, align 8, !tbaa !31
  %273 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pfrom.addr, align 8, !tbaa !1
  %halftone697 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %273, i32 0, i32 39
  %274 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %halftone697, align 8, !tbaa !31
  %cmp698 = icmp ne %struct.gs_halftone_s* %272, %274
  br i1 %cmp698, label %if.then.699, label %if.end.760

if.then.699:                                      ; preds = %do.body.696
  br label %do.body.700

do.body.700:                                      ; preds = %if.then.699
  %275 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pfrom.addr, align 8, !tbaa !1
  %halftone701 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %275, i32 0, i32 39
  %276 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %halftone701, align 8, !tbaa !31
  %tobool702 = icmp ne %struct.gs_halftone_s* %276, null
  br i1 %tobool702, label %if.then.703, label %if.end.714

if.then.703:                                      ; preds = %do.body.700
  br label %do.body.704

do.body.704:                                      ; preds = %if.then.703
  %277 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pfrom.addr, align 8, !tbaa !1
  %halftone705 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %277, i32 0, i32 39
  %278 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %halftone705, align 8, !tbaa !31
  %rc706 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %278, i32 0, i32 1
  %ref_count707 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc706, i32 0, i32 0
  %279 = load i64, i64* %ref_count707, align 8, !tbaa !72
  %inc708 = add nsw i64 %279, 1
  store i64 %inc708, i64* %ref_count707, align 8, !tbaa !72
  br label %do.body.709

do.body.709:                                      ; preds = %do.body.704
  br label %do.cond.710

do.cond.710:                                      ; preds = %do.body.709
  br label %do.end.711

do.end.711:                                       ; preds = %do.cond.710
  br label %do.cond.712

do.cond.712:                                      ; preds = %do.end.711
  br label %do.end.713

do.end.713:                                       ; preds = %do.cond.712
  br label %if.end.714

if.end.714:                                       ; preds = %do.end.713, %do.body.700
  br label %do.cond.715

do.cond.715:                                      ; preds = %if.end.714
  br label %do.end.716

do.end.716:                                       ; preds = %do.cond.715
  br label %do.body.717

do.body.717:                                      ; preds = %do.end.716
  %280 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %halftone718 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %280, i32 0, i32 39
  %281 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %halftone718, align 8, !tbaa !31
  %tobool719 = icmp ne %struct.gs_halftone_s* %281, null
  br i1 %tobool719, label %if.then.720, label %if.end.757

if.then.720:                                      ; preds = %do.body.717
  br label %do.body.721

do.body.721:                                      ; preds = %if.then.720
  br label %do.body.722

do.body.722:                                      ; preds = %do.body.721
  br label %do.cond.723

do.cond.723:                                      ; preds = %do.body.722
  br label %do.end.724

do.end.724:                                       ; preds = %do.cond.723
  %282 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %halftone725 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %282, i32 0, i32 39
  %283 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %halftone725, align 8, !tbaa !31
  %rc726 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %283, i32 0, i32 1
  %ref_count727 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc726, i32 0, i32 0
  %284 = load i64, i64* %ref_count727, align 8, !tbaa !72
  %add728 = add nsw i64 %284, -1
  store i64 %add728, i64* %ref_count727, align 8, !tbaa !72
  br label %do.cond.729

do.cond.729:                                      ; preds = %do.end.724
  br label %do.end.730

do.end.730:                                       ; preds = %do.cond.729
  %285 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %halftone731 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %285, i32 0, i32 39
  %286 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %halftone731, align 8, !tbaa !31
  %rc732 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %286, i32 0, i32 1
  %ref_count733 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc732, i32 0, i32 0
  %287 = load i64, i64* %ref_count733, align 8, !tbaa !72
  %tobool734 = icmp ne i64 %287, 0
  br i1 %tobool734, label %if.else.752, label %if.then.735

if.then.735:                                      ; preds = %do.end.730
  br label %do.body.736

do.body.736:                                      ; preds = %if.then.735
  br label %do.body.737

do.body.737:                                      ; preds = %do.body.736
  br label %do.cond.738

do.cond.738:                                      ; preds = %do.body.737
  br label %do.end.739

do.end.739:                                       ; preds = %do.cond.738
  %288 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %halftone740 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %288, i32 0, i32 39
  %289 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %halftone740, align 8, !tbaa !31
  %rc741 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %289, i32 0, i32 1
  %free742 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc741, i32 0, i32 2
  %290 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free742, align 8, !tbaa !111
  %291 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %halftone743 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %291, i32 0, i32 39
  %292 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %halftone743, align 8, !tbaa !31
  %rc744 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %292, i32 0, i32 1
  %memory745 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc744, i32 0, i32 1
  %293 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory745, align 8, !tbaa !112
  %294 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %halftone746 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %294, i32 0, i32 39
  %295 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %halftone746, align 8, !tbaa !31
  %296 = bitcast %struct.gs_halftone_s* %295 to i8*
  %297 = load i8*, i8** %cname, align 8, !tbaa !1
  call void %290(%struct.gs_memory_s* %293, i8* %296, i8* %297) #3
  br label %do.cond.747

do.cond.747:                                      ; preds = %do.end.739
  br label %do.end.748

do.end.748:                                       ; preds = %do.cond.747
  br label %do.body.749

do.body.749:                                      ; preds = %do.end.748
  br label %do.cond.750

do.cond.750:                                      ; preds = %do.body.749
  br label %do.end.751

do.end.751:                                       ; preds = %do.cond.750
  br label %if.end.756

if.else.752:                                      ; preds = %do.end.730
  br label %do.body.753

do.body.753:                                      ; preds = %if.else.752
  br label %do.cond.754

do.cond.754:                                      ; preds = %do.body.753
  br label %do.end.755

do.end.755:                                       ; preds = %do.cond.754
  br label %if.end.756

if.end.756:                                       ; preds = %do.end.755, %do.end.751
  br label %if.end.757

if.end.757:                                       ; preds = %if.end.756, %do.body.717
  br label %do.cond.758

do.cond.758:                                      ; preds = %if.end.757
  br label %do.end.759

do.end.759:                                       ; preds = %do.cond.758
  br label %if.end.760

if.end.760:                                       ; preds = %do.end.759, %do.body.696
  br label %do.cond.761

do.cond.761:                                      ; preds = %if.end.760
  br label %do.end.762

do.end.762:                                       ; preds = %do.cond.761
  br label %do.body.763

do.body.763:                                      ; preds = %do.end.762
  %298 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %devicergb_cs = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %298, i32 0, i32 52
  %299 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %devicergb_cs, align 8, !tbaa !42
  %300 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pfrom.addr, align 8, !tbaa !1
  %devicergb_cs764 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %300, i32 0, i32 52
  %301 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %devicergb_cs764, align 8, !tbaa !42
  %cmp765 = icmp ne %struct.gs_color_space_s* %299, %301
  br i1 %cmp765, label %if.then.766, label %if.end.827

if.then.766:                                      ; preds = %do.body.763
  br label %do.body.767

do.body.767:                                      ; preds = %if.then.766
  %302 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pfrom.addr, align 8, !tbaa !1
  %devicergb_cs768 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %302, i32 0, i32 52
  %303 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %devicergb_cs768, align 8, !tbaa !42
  %tobool769 = icmp ne %struct.gs_color_space_s* %303, null
  br i1 %tobool769, label %if.then.770, label %if.end.781

if.then.770:                                      ; preds = %do.body.767
  br label %do.body.771

do.body.771:                                      ; preds = %if.then.770
  %304 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pfrom.addr, align 8, !tbaa !1
  %devicergb_cs772 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %304, i32 0, i32 52
  %305 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %devicergb_cs772, align 8, !tbaa !42
  %rc773 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %305, i32 0, i32 1
  %ref_count774 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc773, i32 0, i32 0
  %306 = load i64, i64* %ref_count774, align 8, !tbaa !97
  %inc775 = add nsw i64 %306, 1
  store i64 %inc775, i64* %ref_count774, align 8, !tbaa !97
  br label %do.body.776

do.body.776:                                      ; preds = %do.body.771
  br label %do.cond.777

do.cond.777:                                      ; preds = %do.body.776
  br label %do.end.778

do.end.778:                                       ; preds = %do.cond.777
  br label %do.cond.779

do.cond.779:                                      ; preds = %do.end.778
  br label %do.end.780

do.end.780:                                       ; preds = %do.cond.779
  br label %if.end.781

if.end.781:                                       ; preds = %do.end.780, %do.body.767
  br label %do.cond.782

do.cond.782:                                      ; preds = %if.end.781
  br label %do.end.783

do.end.783:                                       ; preds = %do.cond.782
  br label %do.body.784

do.body.784:                                      ; preds = %do.end.783
  %307 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %devicergb_cs785 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %307, i32 0, i32 52
  %308 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %devicergb_cs785, align 8, !tbaa !42
  %tobool786 = icmp ne %struct.gs_color_space_s* %308, null
  br i1 %tobool786, label %if.then.787, label %if.end.824

if.then.787:                                      ; preds = %do.body.784
  br label %do.body.788

do.body.788:                                      ; preds = %if.then.787
  br label %do.body.789

do.body.789:                                      ; preds = %do.body.788
  br label %do.cond.790

do.cond.790:                                      ; preds = %do.body.789
  br label %do.end.791

do.end.791:                                       ; preds = %do.cond.790
  %309 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %devicergb_cs792 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %309, i32 0, i32 52
  %310 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %devicergb_cs792, align 8, !tbaa !42
  %rc793 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %310, i32 0, i32 1
  %ref_count794 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc793, i32 0, i32 0
  %311 = load i64, i64* %ref_count794, align 8, !tbaa !97
  %add795 = add nsw i64 %311, -1
  store i64 %add795, i64* %ref_count794, align 8, !tbaa !97
  br label %do.cond.796

do.cond.796:                                      ; preds = %do.end.791
  br label %do.end.797

do.end.797:                                       ; preds = %do.cond.796
  %312 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %devicergb_cs798 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %312, i32 0, i32 52
  %313 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %devicergb_cs798, align 8, !tbaa !42
  %rc799 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %313, i32 0, i32 1
  %ref_count800 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc799, i32 0, i32 0
  %314 = load i64, i64* %ref_count800, align 8, !tbaa !97
  %tobool801 = icmp ne i64 %314, 0
  br i1 %tobool801, label %if.else.819, label %if.then.802

if.then.802:                                      ; preds = %do.end.797
  br label %do.body.803

do.body.803:                                      ; preds = %if.then.802
  br label %do.body.804

do.body.804:                                      ; preds = %do.body.803
  br label %do.cond.805

do.cond.805:                                      ; preds = %do.body.804
  br label %do.end.806

do.end.806:                                       ; preds = %do.cond.805
  %315 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %devicergb_cs807 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %315, i32 0, i32 52
  %316 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %devicergb_cs807, align 8, !tbaa !42
  %rc808 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %316, i32 0, i32 1
  %free809 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc808, i32 0, i32 2
  %317 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free809, align 8, !tbaa !113
  %318 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %devicergb_cs810 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %318, i32 0, i32 52
  %319 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %devicergb_cs810, align 8, !tbaa !42
  %rc811 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %319, i32 0, i32 1
  %memory812 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc811, i32 0, i32 1
  %320 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory812, align 8, !tbaa !114
  %321 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %devicergb_cs813 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %321, i32 0, i32 52
  %322 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %devicergb_cs813, align 8, !tbaa !42
  %323 = bitcast %struct.gs_color_space_s* %322 to i8*
  %324 = load i8*, i8** %cname, align 8, !tbaa !1
  call void %317(%struct.gs_memory_s* %320, i8* %323, i8* %324) #3
  br label %do.cond.814

do.cond.814:                                      ; preds = %do.end.806
  br label %do.end.815

do.end.815:                                       ; preds = %do.cond.814
  br label %do.body.816

do.body.816:                                      ; preds = %do.end.815
  br label %do.cond.817

do.cond.817:                                      ; preds = %do.body.816
  br label %do.end.818

do.end.818:                                       ; preds = %do.cond.817
  br label %if.end.823

if.else.819:                                      ; preds = %do.end.797
  br label %do.body.820

do.body.820:                                      ; preds = %if.else.819
  br label %do.cond.821

do.cond.821:                                      ; preds = %do.body.820
  br label %do.end.822

do.end.822:                                       ; preds = %do.cond.821
  br label %if.end.823

if.end.823:                                       ; preds = %do.end.822, %do.end.818
  br label %if.end.824

if.end.824:                                       ; preds = %if.end.823, %do.body.784
  br label %do.cond.825

do.cond.825:                                      ; preds = %if.end.824
  br label %do.end.826

do.end.826:                                       ; preds = %do.cond.825
  br label %if.end.827

if.end.827:                                       ; preds = %do.end.826, %do.body.763
  br label %do.cond.828

do.cond.828:                                      ; preds = %if.end.827
  br label %do.end.829

do.end.829:                                       ; preds = %do.cond.828
  br label %do.body.830

do.body.830:                                      ; preds = %do.end.829
  %325 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %devicecmyk_cs = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %325, i32 0, i32 53
  %326 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %devicecmyk_cs, align 8, !tbaa !43
  %327 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pfrom.addr, align 8, !tbaa !1
  %devicecmyk_cs831 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %327, i32 0, i32 53
  %328 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %devicecmyk_cs831, align 8, !tbaa !43
  %cmp832 = icmp ne %struct.gs_color_space_s* %326, %328
  br i1 %cmp832, label %if.then.833, label %if.end.894

if.then.833:                                      ; preds = %do.body.830
  br label %do.body.834

do.body.834:                                      ; preds = %if.then.833
  %329 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pfrom.addr, align 8, !tbaa !1
  %devicecmyk_cs835 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %329, i32 0, i32 53
  %330 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %devicecmyk_cs835, align 8, !tbaa !43
  %tobool836 = icmp ne %struct.gs_color_space_s* %330, null
  br i1 %tobool836, label %if.then.837, label %if.end.848

if.then.837:                                      ; preds = %do.body.834
  br label %do.body.838

do.body.838:                                      ; preds = %if.then.837
  %331 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pfrom.addr, align 8, !tbaa !1
  %devicecmyk_cs839 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %331, i32 0, i32 53
  %332 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %devicecmyk_cs839, align 8, !tbaa !43
  %rc840 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %332, i32 0, i32 1
  %ref_count841 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc840, i32 0, i32 0
  %333 = load i64, i64* %ref_count841, align 8, !tbaa !97
  %inc842 = add nsw i64 %333, 1
  store i64 %inc842, i64* %ref_count841, align 8, !tbaa !97
  br label %do.body.843

do.body.843:                                      ; preds = %do.body.838
  br label %do.cond.844

do.cond.844:                                      ; preds = %do.body.843
  br label %do.end.845

do.end.845:                                       ; preds = %do.cond.844
  br label %do.cond.846

do.cond.846:                                      ; preds = %do.end.845
  br label %do.end.847

do.end.847:                                       ; preds = %do.cond.846
  br label %if.end.848

if.end.848:                                       ; preds = %do.end.847, %do.body.834
  br label %do.cond.849

do.cond.849:                                      ; preds = %if.end.848
  br label %do.end.850

do.end.850:                                       ; preds = %do.cond.849
  br label %do.body.851

do.body.851:                                      ; preds = %do.end.850
  %334 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %devicecmyk_cs852 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %334, i32 0, i32 53
  %335 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %devicecmyk_cs852, align 8, !tbaa !43
  %tobool853 = icmp ne %struct.gs_color_space_s* %335, null
  br i1 %tobool853, label %if.then.854, label %if.end.891

if.then.854:                                      ; preds = %do.body.851
  br label %do.body.855

do.body.855:                                      ; preds = %if.then.854
  br label %do.body.856

do.body.856:                                      ; preds = %do.body.855
  br label %do.cond.857

do.cond.857:                                      ; preds = %do.body.856
  br label %do.end.858

do.end.858:                                       ; preds = %do.cond.857
  %336 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %devicecmyk_cs859 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %336, i32 0, i32 53
  %337 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %devicecmyk_cs859, align 8, !tbaa !43
  %rc860 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %337, i32 0, i32 1
  %ref_count861 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc860, i32 0, i32 0
  %338 = load i64, i64* %ref_count861, align 8, !tbaa !97
  %add862 = add nsw i64 %338, -1
  store i64 %add862, i64* %ref_count861, align 8, !tbaa !97
  br label %do.cond.863

do.cond.863:                                      ; preds = %do.end.858
  br label %do.end.864

do.end.864:                                       ; preds = %do.cond.863
  %339 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %devicecmyk_cs865 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %339, i32 0, i32 53
  %340 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %devicecmyk_cs865, align 8, !tbaa !43
  %rc866 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %340, i32 0, i32 1
  %ref_count867 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc866, i32 0, i32 0
  %341 = load i64, i64* %ref_count867, align 8, !tbaa !97
  %tobool868 = icmp ne i64 %341, 0
  br i1 %tobool868, label %if.else.886, label %if.then.869

if.then.869:                                      ; preds = %do.end.864
  br label %do.body.870

do.body.870:                                      ; preds = %if.then.869
  br label %do.body.871

do.body.871:                                      ; preds = %do.body.870
  br label %do.cond.872

do.cond.872:                                      ; preds = %do.body.871
  br label %do.end.873

do.end.873:                                       ; preds = %do.cond.872
  %342 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %devicecmyk_cs874 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %342, i32 0, i32 53
  %343 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %devicecmyk_cs874, align 8, !tbaa !43
  %rc875 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %343, i32 0, i32 1
  %free876 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc875, i32 0, i32 2
  %344 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free876, align 8, !tbaa !113
  %345 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %devicecmyk_cs877 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %345, i32 0, i32 53
  %346 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %devicecmyk_cs877, align 8, !tbaa !43
  %rc878 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %346, i32 0, i32 1
  %memory879 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc878, i32 0, i32 1
  %347 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory879, align 8, !tbaa !114
  %348 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %devicecmyk_cs880 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %348, i32 0, i32 53
  %349 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %devicecmyk_cs880, align 8, !tbaa !43
  %350 = bitcast %struct.gs_color_space_s* %349 to i8*
  %351 = load i8*, i8** %cname, align 8, !tbaa !1
  call void %344(%struct.gs_memory_s* %347, i8* %350, i8* %351) #3
  br label %do.cond.881

do.cond.881:                                      ; preds = %do.end.873
  br label %do.end.882

do.end.882:                                       ; preds = %do.cond.881
  br label %do.body.883

do.body.883:                                      ; preds = %do.end.882
  br label %do.cond.884

do.cond.884:                                      ; preds = %do.body.883
  br label %do.end.885

do.end.885:                                       ; preds = %do.cond.884
  br label %if.end.890

if.else.886:                                      ; preds = %do.end.864
  br label %do.body.887

do.body.887:                                      ; preds = %if.else.886
  br label %do.cond.888

do.cond.888:                                      ; preds = %do.body.887
  br label %do.end.889

do.end.889:                                       ; preds = %do.cond.888
  br label %if.end.890

if.end.890:                                       ; preds = %do.end.889, %do.end.885
  br label %if.end.891

if.end.891:                                       ; preds = %if.end.890, %do.body.851
  br label %do.cond.892

do.cond.892:                                      ; preds = %if.end.891
  br label %do.end.893

do.end.893:                                       ; preds = %do.cond.892
  br label %if.end.894

if.end.894:                                       ; preds = %do.end.893, %do.body.830
  br label %do.cond.895

do.cond.895:                                      ; preds = %if.end.894
  br label %do.end.896

do.end.896:                                       ; preds = %do.cond.895
  br label %do.body.897

do.body.897:                                      ; preds = %do.end.896
  %352 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %icc_link_cache = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %352, i32 0, i32 36
  %353 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache, align 8, !tbaa !29
  %354 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pfrom.addr, align 8, !tbaa !1
  %icc_link_cache898 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %354, i32 0, i32 36
  %355 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache898, align 8, !tbaa !29
  %cmp899 = icmp ne %struct.gsicc_link_cache_s* %353, %355
  br i1 %cmp899, label %if.then.900, label %if.end.961

if.then.900:                                      ; preds = %do.body.897
  br label %do.body.901

do.body.901:                                      ; preds = %if.then.900
  %356 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pfrom.addr, align 8, !tbaa !1
  %icc_link_cache902 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %356, i32 0, i32 36
  %357 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache902, align 8, !tbaa !29
  %tobool903 = icmp ne %struct.gsicc_link_cache_s* %357, null
  br i1 %tobool903, label %if.then.904, label %if.end.915

if.then.904:                                      ; preds = %do.body.901
  br label %do.body.905

do.body.905:                                      ; preds = %if.then.904
  %358 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pfrom.addr, align 8, !tbaa !1
  %icc_link_cache906 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %358, i32 0, i32 36
  %359 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache906, align 8, !tbaa !29
  %rc907 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %359, i32 0, i32 2
  %ref_count908 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc907, i32 0, i32 0
  %360 = load i64, i64* %ref_count908, align 8, !tbaa !99
  %inc909 = add nsw i64 %360, 1
  store i64 %inc909, i64* %ref_count908, align 8, !tbaa !99
  br label %do.body.910

do.body.910:                                      ; preds = %do.body.905
  br label %do.cond.911

do.cond.911:                                      ; preds = %do.body.910
  br label %do.end.912

do.end.912:                                       ; preds = %do.cond.911
  br label %do.cond.913

do.cond.913:                                      ; preds = %do.end.912
  br label %do.end.914

do.end.914:                                       ; preds = %do.cond.913
  br label %if.end.915

if.end.915:                                       ; preds = %do.end.914, %do.body.901
  br label %do.cond.916

do.cond.916:                                      ; preds = %if.end.915
  br label %do.end.917

do.end.917:                                       ; preds = %do.cond.916
  br label %do.body.918

do.body.918:                                      ; preds = %do.end.917
  %361 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %icc_link_cache919 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %361, i32 0, i32 36
  %362 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache919, align 8, !tbaa !29
  %tobool920 = icmp ne %struct.gsicc_link_cache_s* %362, null
  br i1 %tobool920, label %if.then.921, label %if.end.958

if.then.921:                                      ; preds = %do.body.918
  br label %do.body.922

do.body.922:                                      ; preds = %if.then.921
  br label %do.body.923

do.body.923:                                      ; preds = %do.body.922
  br label %do.cond.924

do.cond.924:                                      ; preds = %do.body.923
  br label %do.end.925

do.end.925:                                       ; preds = %do.cond.924
  %363 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %icc_link_cache926 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %363, i32 0, i32 36
  %364 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache926, align 8, !tbaa !29
  %rc927 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %364, i32 0, i32 2
  %ref_count928 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc927, i32 0, i32 0
  %365 = load i64, i64* %ref_count928, align 8, !tbaa !99
  %add929 = add nsw i64 %365, -1
  store i64 %add929, i64* %ref_count928, align 8, !tbaa !99
  br label %do.cond.930

do.cond.930:                                      ; preds = %do.end.925
  br label %do.end.931

do.end.931:                                       ; preds = %do.cond.930
  %366 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %icc_link_cache932 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %366, i32 0, i32 36
  %367 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache932, align 8, !tbaa !29
  %rc933 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %367, i32 0, i32 2
  %ref_count934 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc933, i32 0, i32 0
  %368 = load i64, i64* %ref_count934, align 8, !tbaa !99
  %tobool935 = icmp ne i64 %368, 0
  br i1 %tobool935, label %if.else.953, label %if.then.936

if.then.936:                                      ; preds = %do.end.931
  br label %do.body.937

do.body.937:                                      ; preds = %if.then.936
  br label %do.body.938

do.body.938:                                      ; preds = %do.body.937
  br label %do.cond.939

do.cond.939:                                      ; preds = %do.body.938
  br label %do.end.940

do.end.940:                                       ; preds = %do.cond.939
  %369 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %icc_link_cache941 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %369, i32 0, i32 36
  %370 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache941, align 8, !tbaa !29
  %rc942 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %370, i32 0, i32 2
  %free943 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc942, i32 0, i32 2
  %371 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free943, align 8, !tbaa !115
  %372 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %icc_link_cache944 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %372, i32 0, i32 36
  %373 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache944, align 8, !tbaa !29
  %rc945 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %373, i32 0, i32 2
  %memory946 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc945, i32 0, i32 1
  %374 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory946, align 8, !tbaa !116
  %375 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %icc_link_cache947 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %375, i32 0, i32 36
  %376 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache947, align 8, !tbaa !29
  %377 = bitcast %struct.gsicc_link_cache_s* %376 to i8*
  %378 = load i8*, i8** %cname, align 8, !tbaa !1
  call void %371(%struct.gs_memory_s* %374, i8* %377, i8* %378) #3
  br label %do.cond.948

do.cond.948:                                      ; preds = %do.end.940
  br label %do.end.949

do.end.949:                                       ; preds = %do.cond.948
  br label %do.body.950

do.body.950:                                      ; preds = %do.end.949
  br label %do.cond.951

do.cond.951:                                      ; preds = %do.body.950
  br label %do.end.952

do.end.952:                                       ; preds = %do.cond.951
  br label %if.end.957

if.else.953:                                      ; preds = %do.end.931
  br label %do.body.954

do.body.954:                                      ; preds = %if.else.953
  br label %do.cond.955

do.cond.955:                                      ; preds = %do.body.954
  br label %do.end.956

do.end.956:                                       ; preds = %do.cond.955
  br label %if.end.957

if.end.957:                                       ; preds = %do.end.956, %do.end.952
  br label %if.end.958

if.end.958:                                       ; preds = %if.end.957, %do.body.918
  br label %do.cond.959

do.cond.959:                                      ; preds = %if.end.958
  br label %do.end.960

do.end.960:                                       ; preds = %do.cond.959
  br label %if.end.961

if.end.961:                                       ; preds = %do.end.960, %do.body.897
  br label %do.cond.962

do.cond.962:                                      ; preds = %if.end.961
  br label %do.end.963

do.end.963:                                       ; preds = %do.cond.962
  br label %do.body.964

do.body.964:                                      ; preds = %do.end.963
  %379 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %icc_profile_cache = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %379, i32 0, i32 37
  %380 = load %struct.gsicc_profile_cache_s*, %struct.gsicc_profile_cache_s** %icc_profile_cache, align 8, !tbaa !30
  %381 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pfrom.addr, align 8, !tbaa !1
  %icc_profile_cache965 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %381, i32 0, i32 37
  %382 = load %struct.gsicc_profile_cache_s*, %struct.gsicc_profile_cache_s** %icc_profile_cache965, align 8, !tbaa !30
  %cmp966 = icmp ne %struct.gsicc_profile_cache_s* %380, %382
  br i1 %cmp966, label %if.then.967, label %if.end.1028

if.then.967:                                      ; preds = %do.body.964
  br label %do.body.968

do.body.968:                                      ; preds = %if.then.967
  %383 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pfrom.addr, align 8, !tbaa !1
  %icc_profile_cache969 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %383, i32 0, i32 37
  %384 = load %struct.gsicc_profile_cache_s*, %struct.gsicc_profile_cache_s** %icc_profile_cache969, align 8, !tbaa !30
  %tobool970 = icmp ne %struct.gsicc_profile_cache_s* %384, null
  br i1 %tobool970, label %if.then.971, label %if.end.982

if.then.971:                                      ; preds = %do.body.968
  br label %do.body.972

do.body.972:                                      ; preds = %if.then.971
  %385 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pfrom.addr, align 8, !tbaa !1
  %icc_profile_cache973 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %385, i32 0, i32 37
  %386 = load %struct.gsicc_profile_cache_s*, %struct.gsicc_profile_cache_s** %icc_profile_cache973, align 8, !tbaa !30
  %rc974 = getelementptr inbounds %struct.gsicc_profile_cache_s, %struct.gsicc_profile_cache_s* %386, i32 0, i32 2
  %ref_count975 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc974, i32 0, i32 0
  %387 = load i64, i64* %ref_count975, align 8, !tbaa !101
  %inc976 = add nsw i64 %387, 1
  store i64 %inc976, i64* %ref_count975, align 8, !tbaa !101
  br label %do.body.977

do.body.977:                                      ; preds = %do.body.972
  br label %do.cond.978

do.cond.978:                                      ; preds = %do.body.977
  br label %do.end.979

do.end.979:                                       ; preds = %do.cond.978
  br label %do.cond.980

do.cond.980:                                      ; preds = %do.end.979
  br label %do.end.981

do.end.981:                                       ; preds = %do.cond.980
  br label %if.end.982

if.end.982:                                       ; preds = %do.end.981, %do.body.968
  br label %do.cond.983

do.cond.983:                                      ; preds = %if.end.982
  br label %do.end.984

do.end.984:                                       ; preds = %do.cond.983
  br label %do.body.985

do.body.985:                                      ; preds = %do.end.984
  %388 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %icc_profile_cache986 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %388, i32 0, i32 37
  %389 = load %struct.gsicc_profile_cache_s*, %struct.gsicc_profile_cache_s** %icc_profile_cache986, align 8, !tbaa !30
  %tobool987 = icmp ne %struct.gsicc_profile_cache_s* %389, null
  br i1 %tobool987, label %if.then.988, label %if.end.1025

if.then.988:                                      ; preds = %do.body.985
  br label %do.body.989

do.body.989:                                      ; preds = %if.then.988
  br label %do.body.990

do.body.990:                                      ; preds = %do.body.989
  br label %do.cond.991

do.cond.991:                                      ; preds = %do.body.990
  br label %do.end.992

do.end.992:                                       ; preds = %do.cond.991
  %390 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %icc_profile_cache993 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %390, i32 0, i32 37
  %391 = load %struct.gsicc_profile_cache_s*, %struct.gsicc_profile_cache_s** %icc_profile_cache993, align 8, !tbaa !30
  %rc994 = getelementptr inbounds %struct.gsicc_profile_cache_s, %struct.gsicc_profile_cache_s* %391, i32 0, i32 2
  %ref_count995 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc994, i32 0, i32 0
  %392 = load i64, i64* %ref_count995, align 8, !tbaa !101
  %add996 = add nsw i64 %392, -1
  store i64 %add996, i64* %ref_count995, align 8, !tbaa !101
  br label %do.cond.997

do.cond.997:                                      ; preds = %do.end.992
  br label %do.end.998

do.end.998:                                       ; preds = %do.cond.997
  %393 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %icc_profile_cache999 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %393, i32 0, i32 37
  %394 = load %struct.gsicc_profile_cache_s*, %struct.gsicc_profile_cache_s** %icc_profile_cache999, align 8, !tbaa !30
  %rc1000 = getelementptr inbounds %struct.gsicc_profile_cache_s, %struct.gsicc_profile_cache_s* %394, i32 0, i32 2
  %ref_count1001 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc1000, i32 0, i32 0
  %395 = load i64, i64* %ref_count1001, align 8, !tbaa !101
  %tobool1002 = icmp ne i64 %395, 0
  br i1 %tobool1002, label %if.else.1020, label %if.then.1003

if.then.1003:                                     ; preds = %do.end.998
  br label %do.body.1004

do.body.1004:                                     ; preds = %if.then.1003
  br label %do.body.1005

do.body.1005:                                     ; preds = %do.body.1004
  br label %do.cond.1006

do.cond.1006:                                     ; preds = %do.body.1005
  br label %do.end.1007

do.end.1007:                                      ; preds = %do.cond.1006
  %396 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %icc_profile_cache1008 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %396, i32 0, i32 37
  %397 = load %struct.gsicc_profile_cache_s*, %struct.gsicc_profile_cache_s** %icc_profile_cache1008, align 8, !tbaa !30
  %rc1009 = getelementptr inbounds %struct.gsicc_profile_cache_s, %struct.gsicc_profile_cache_s* %397, i32 0, i32 2
  %free1010 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc1009, i32 0, i32 2
  %398 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free1010, align 8, !tbaa !117
  %399 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %icc_profile_cache1011 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %399, i32 0, i32 37
  %400 = load %struct.gsicc_profile_cache_s*, %struct.gsicc_profile_cache_s** %icc_profile_cache1011, align 8, !tbaa !30
  %rc1012 = getelementptr inbounds %struct.gsicc_profile_cache_s, %struct.gsicc_profile_cache_s* %400, i32 0, i32 2
  %memory1013 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc1012, i32 0, i32 1
  %401 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1013, align 8, !tbaa !118
  %402 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %icc_profile_cache1014 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %402, i32 0, i32 37
  %403 = load %struct.gsicc_profile_cache_s*, %struct.gsicc_profile_cache_s** %icc_profile_cache1014, align 8, !tbaa !30
  %404 = bitcast %struct.gsicc_profile_cache_s* %403 to i8*
  %405 = load i8*, i8** %cname, align 8, !tbaa !1
  call void %398(%struct.gs_memory_s* %401, i8* %404, i8* %405) #3
  br label %do.cond.1015

do.cond.1015:                                     ; preds = %do.end.1007
  br label %do.end.1016

do.end.1016:                                      ; preds = %do.cond.1015
  br label %do.body.1017

do.body.1017:                                     ; preds = %do.end.1016
  br label %do.cond.1018

do.cond.1018:                                     ; preds = %do.body.1017
  br label %do.end.1019

do.end.1019:                                      ; preds = %do.cond.1018
  br label %if.end.1024

if.else.1020:                                     ; preds = %do.end.998
  br label %do.body.1021

do.body.1021:                                     ; preds = %if.else.1020
  br label %do.cond.1022

do.cond.1022:                                     ; preds = %do.body.1021
  br label %do.end.1023

do.end.1023:                                      ; preds = %do.cond.1022
  br label %if.end.1024

if.end.1024:                                      ; preds = %do.end.1023, %do.end.1019
  br label %if.end.1025

if.end.1025:                                      ; preds = %if.end.1024, %do.body.985
  br label %do.cond.1026

do.cond.1026:                                     ; preds = %if.end.1025
  br label %do.end.1027

do.end.1027:                                      ; preds = %do.cond.1026
  br label %if.end.1028

if.end.1028:                                      ; preds = %do.end.1027, %do.body.964
  br label %do.cond.1029

do.cond.1029:                                     ; preds = %if.end.1028
  br label %do.end.1030

do.end.1030:                                      ; preds = %do.cond.1029
  br label %do.body.1031

do.body.1031:                                     ; preds = %do.end.1030
  %406 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %icc_manager = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %406, i32 0, i32 35
  %407 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !28
  %408 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pfrom.addr, align 8, !tbaa !1
  %icc_manager1032 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %408, i32 0, i32 35
  %409 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager1032, align 8, !tbaa !28
  %cmp1033 = icmp ne %struct.gsicc_manager_s* %407, %409
  br i1 %cmp1033, label %if.then.1034, label %if.end.1095

if.then.1034:                                     ; preds = %do.body.1031
  br label %do.body.1035

do.body.1035:                                     ; preds = %if.then.1034
  %410 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pfrom.addr, align 8, !tbaa !1
  %icc_manager1036 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %410, i32 0, i32 35
  %411 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager1036, align 8, !tbaa !28
  %tobool1037 = icmp ne %struct.gsicc_manager_s* %411, null
  br i1 %tobool1037, label %if.then.1038, label %if.end.1049

if.then.1038:                                     ; preds = %do.body.1035
  br label %do.body.1039

do.body.1039:                                     ; preds = %if.then.1038
  %412 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pfrom.addr, align 8, !tbaa !1
  %icc_manager1040 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %412, i32 0, i32 35
  %413 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager1040, align 8, !tbaa !28
  %rc1041 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %413, i32 0, i32 11
  %ref_count1042 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc1041, i32 0, i32 0
  %414 = load i64, i64* %ref_count1042, align 8, !tbaa !103
  %inc1043 = add nsw i64 %414, 1
  store i64 %inc1043, i64* %ref_count1042, align 8, !tbaa !103
  br label %do.body.1044

do.body.1044:                                     ; preds = %do.body.1039
  br label %do.cond.1045

do.cond.1045:                                     ; preds = %do.body.1044
  br label %do.end.1046

do.end.1046:                                      ; preds = %do.cond.1045
  br label %do.cond.1047

do.cond.1047:                                     ; preds = %do.end.1046
  br label %do.end.1048

do.end.1048:                                      ; preds = %do.cond.1047
  br label %if.end.1049

if.end.1049:                                      ; preds = %do.end.1048, %do.body.1035
  br label %do.cond.1050

do.cond.1050:                                     ; preds = %if.end.1049
  br label %do.end.1051

do.end.1051:                                      ; preds = %do.cond.1050
  br label %do.body.1052

do.body.1052:                                     ; preds = %do.end.1051
  %415 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %icc_manager1053 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %415, i32 0, i32 35
  %416 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager1053, align 8, !tbaa !28
  %tobool1054 = icmp ne %struct.gsicc_manager_s* %416, null
  br i1 %tobool1054, label %if.then.1055, label %if.end.1092

if.then.1055:                                     ; preds = %do.body.1052
  br label %do.body.1056

do.body.1056:                                     ; preds = %if.then.1055
  br label %do.body.1057

do.body.1057:                                     ; preds = %do.body.1056
  br label %do.cond.1058

do.cond.1058:                                     ; preds = %do.body.1057
  br label %do.end.1059

do.end.1059:                                      ; preds = %do.cond.1058
  %417 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %icc_manager1060 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %417, i32 0, i32 35
  %418 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager1060, align 8, !tbaa !28
  %rc1061 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %418, i32 0, i32 11
  %ref_count1062 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc1061, i32 0, i32 0
  %419 = load i64, i64* %ref_count1062, align 8, !tbaa !103
  %add1063 = add nsw i64 %419, -1
  store i64 %add1063, i64* %ref_count1062, align 8, !tbaa !103
  br label %do.cond.1064

do.cond.1064:                                     ; preds = %do.end.1059
  br label %do.end.1065

do.end.1065:                                      ; preds = %do.cond.1064
  %420 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %icc_manager1066 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %420, i32 0, i32 35
  %421 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager1066, align 8, !tbaa !28
  %rc1067 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %421, i32 0, i32 11
  %ref_count1068 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc1067, i32 0, i32 0
  %422 = load i64, i64* %ref_count1068, align 8, !tbaa !103
  %tobool1069 = icmp ne i64 %422, 0
  br i1 %tobool1069, label %if.else.1087, label %if.then.1070

if.then.1070:                                     ; preds = %do.end.1065
  br label %do.body.1071

do.body.1071:                                     ; preds = %if.then.1070
  br label %do.body.1072

do.body.1072:                                     ; preds = %do.body.1071
  br label %do.cond.1073

do.cond.1073:                                     ; preds = %do.body.1072
  br label %do.end.1074

do.end.1074:                                      ; preds = %do.cond.1073
  %423 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %icc_manager1075 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %423, i32 0, i32 35
  %424 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager1075, align 8, !tbaa !28
  %rc1076 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %424, i32 0, i32 11
  %free1077 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc1076, i32 0, i32 2
  %425 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free1077, align 8, !tbaa !119
  %426 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %icc_manager1078 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %426, i32 0, i32 35
  %427 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager1078, align 8, !tbaa !28
  %rc1079 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %427, i32 0, i32 11
  %memory1080 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc1079, i32 0, i32 1
  %428 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1080, align 8, !tbaa !120
  %429 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pto.addr, align 8, !tbaa !1
  %icc_manager1081 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %429, i32 0, i32 35
  %430 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager1081, align 8, !tbaa !28
  %431 = bitcast %struct.gsicc_manager_s* %430 to i8*
  %432 = load i8*, i8** %cname, align 8, !tbaa !1
  call void %425(%struct.gs_memory_s* %428, i8* %431, i8* %432) #3
  br label %do.cond.1082

do.cond.1082:                                     ; preds = %do.end.1074
  br label %do.end.1083

do.end.1083:                                      ; preds = %do.cond.1082
  br label %do.body.1084

do.body.1084:                                     ; preds = %do.end.1083
  br label %do.cond.1085

do.cond.1085:                                     ; preds = %do.body.1084
  br label %do.end.1086

do.end.1086:                                      ; preds = %do.cond.1085
  br label %if.end.1091

if.else.1087:                                     ; preds = %do.end.1065
  br label %do.body.1088

do.body.1088:                                     ; preds = %if.else.1087
  br label %do.cond.1089

do.cond.1089:                                     ; preds = %do.body.1088
  br label %do.end.1090

do.end.1090:                                      ; preds = %do.cond.1089
  br label %if.end.1091

if.end.1091:                                      ; preds = %do.end.1090, %do.end.1086
  br label %if.end.1092

if.end.1092:                                      ; preds = %if.end.1091, %do.body.1052
  br label %do.cond.1093

do.cond.1093:                                     ; preds = %if.end.1092
  br label %do.end.1094

do.end.1094:                                      ; preds = %do.cond.1093
  br label %if.end.1095

if.end.1095:                                      ; preds = %do.end.1094, %do.body.1031
  br label %do.cond.1096

do.cond.1096:                                     ; preds = %if.end.1095
  br label %do.end.1097

do.end.1097:                                      ; preds = %do.cond.1096
  %433 = bitcast i8** %cname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %433) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @gs_imager_state_release(%struct.gs_imager_state_s* %pis) #0 {
entry:
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %cname = alloca i8*, align 8
  %pdht = alloca %struct.gx_device_halftone_s*, align 8
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %0 = bitcast i8** %cname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0), i8** %cname, align 8, !tbaa !1
  %1 = bitcast %struct.gx_device_halftone_s** %pdht to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %dev_ht = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %2, i32 0, i32 41
  %3 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht, align 8, !tbaa !32
  store %struct.gx_device_halftone_s* %3, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cie_joint_caches = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %4, i32 0, i32 48
  %5 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches, align 8, !tbaa !40
  %tobool = icmp ne %struct.gx_cie_joint_caches_s* %5, null
  br i1 %tobool, label %if.then, label %if.end.26

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  br label %do.body.2

do.body.2:                                        ; preds = %do.body.1
  br label %do.cond

do.cond:                                          ; preds = %do.body.2
  br label %do.end

do.end:                                           ; preds = %do.cond
  %6 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cie_joint_caches3 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %6, i32 0, i32 48
  %7 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches3, align 8, !tbaa !40
  %rc = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %7, i32 0, i32 4
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %8 = load i64, i64* %ref_count, align 8, !tbaa !93
  %add = add nsw i64 %8, -1
  store i64 %add, i64* %ref_count, align 8, !tbaa !93
  br label %do.cond.4

do.cond.4:                                        ; preds = %do.end
  br label %do.end.5

do.end.5:                                         ; preds = %do.cond.4
  %9 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cie_joint_caches6 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %9, i32 0, i32 48
  %10 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches6, align 8, !tbaa !40
  %rc7 = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %10, i32 0, i32 4
  %ref_count8 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc7, i32 0, i32 0
  %11 = load i64, i64* %ref_count8, align 8, !tbaa !93
  %tobool9 = icmp ne i64 %11, 0
  br i1 %tobool9, label %if.else, label %if.then.10

if.then.10:                                       ; preds = %do.end.5
  br label %do.body.11

do.body.11:                                       ; preds = %if.then.10
  br label %do.body.12

do.body.12:                                       ; preds = %do.body.11
  br label %do.cond.13

do.cond.13:                                       ; preds = %do.body.12
  br label %do.end.14

do.end.14:                                        ; preds = %do.cond.13
  %12 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cie_joint_caches15 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %12, i32 0, i32 48
  %13 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches15, align 8, !tbaa !40
  %rc16 = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %13, i32 0, i32 4
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc16, i32 0, i32 2
  %14 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !105
  %15 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cie_joint_caches17 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %15, i32 0, i32 48
  %16 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches17, align 8, !tbaa !40
  %rc18 = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %16, i32 0, i32 4
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc18, i32 0, i32 1
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !106
  %18 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cie_joint_caches19 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %18, i32 0, i32 48
  %19 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches19, align 8, !tbaa !40
  %20 = bitcast %struct.gx_cie_joint_caches_s* %19 to i8*
  %21 = load i8*, i8** %cname, align 8, !tbaa !1
  call void %14(%struct.gs_memory_s* %17, i8* %20, i8* %21) #3
  br label %do.cond.20

do.cond.20:                                       ; preds = %do.end.14
  br label %do.end.21

do.end.21:                                        ; preds = %do.cond.20
  %22 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cie_joint_caches22 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %22, i32 0, i32 48
  store %struct.gx_cie_joint_caches_s* null, %struct.gx_cie_joint_caches_s** %cie_joint_caches22, align 8, !tbaa !40
  br label %if.end

if.else:                                          ; preds = %do.end.5
  br label %do.body.23

do.body.23:                                       ; preds = %if.else
  br label %do.cond.24

do.cond.24:                                       ; preds = %do.body.23
  br label %do.end.25

do.end.25:                                        ; preds = %do.cond.24
  br label %if.end

if.end:                                           ; preds = %do.end.25, %do.end.21
  br label %if.end.26

if.end.26:                                        ; preds = %if.end, %do.body
  br label %do.cond.27

do.cond.27:                                       ; preds = %if.end.26
  br label %do.end.28

do.end.28:                                        ; preds = %do.cond.27
  %23 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cie_joint_caches29 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %23, i32 0, i32 48
  store %struct.gx_cie_joint_caches_s* null, %struct.gx_cie_joint_caches_s** %cie_joint_caches29, align 8, !tbaa !40
  br label %do.body.30

do.body.30:                                       ; preds = %do.end.28
  %24 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %24, i32 0, i32 46
  %gray = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer, i32 0, i32 7
  %25 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray, align 8, !tbaa !39
  %tobool31 = icmp ne %struct.gx_transfer_map_s* %25, null
  br i1 %tobool31, label %if.then.32, label %if.end.73

if.then.32:                                       ; preds = %do.body.30
  br label %do.body.33

do.body.33:                                       ; preds = %if.then.32
  br label %do.body.34

do.body.34:                                       ; preds = %do.body.33
  br label %do.cond.35

do.cond.35:                                       ; preds = %do.body.34
  br label %do.end.36

do.end.36:                                        ; preds = %do.cond.35
  %26 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer37 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %26, i32 0, i32 46
  %gray38 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer37, i32 0, i32 7
  %27 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray38, align 8, !tbaa !39
  %rc39 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %27, i32 0, i32 0
  %ref_count40 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc39, i32 0, i32 0
  %28 = load i64, i64* %ref_count40, align 8, !tbaa !56
  %add41 = add nsw i64 %28, -1
  store i64 %add41, i64* %ref_count40, align 8, !tbaa !56
  br label %do.cond.42

do.cond.42:                                       ; preds = %do.end.36
  br label %do.end.43

do.end.43:                                        ; preds = %do.cond.42
  %29 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer44 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %29, i32 0, i32 46
  %gray45 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer44, i32 0, i32 7
  %30 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray45, align 8, !tbaa !39
  %rc46 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %30, i32 0, i32 0
  %ref_count47 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc46, i32 0, i32 0
  %31 = load i64, i64* %ref_count47, align 8, !tbaa !56
  %tobool48 = icmp ne i64 %31, 0
  br i1 %tobool48, label %if.else.68, label %if.then.49

if.then.49:                                       ; preds = %do.end.43
  br label %do.body.50

do.body.50:                                       ; preds = %if.then.49
  br label %do.body.51

do.body.51:                                       ; preds = %do.body.50
  br label %do.cond.52

do.cond.52:                                       ; preds = %do.body.51
  br label %do.end.53

do.end.53:                                        ; preds = %do.cond.52
  %32 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer54 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %32, i32 0, i32 46
  %gray55 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer54, i32 0, i32 7
  %33 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray55, align 8, !tbaa !39
  %rc56 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %33, i32 0, i32 0
  %free57 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc56, i32 0, i32 2
  %34 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free57, align 8, !tbaa !61
  %35 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer58 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %35, i32 0, i32 46
  %gray59 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer58, i32 0, i32 7
  %36 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray59, align 8, !tbaa !39
  %rc60 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %36, i32 0, i32 0
  %memory61 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc60, i32 0, i32 1
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory61, align 8, !tbaa !60
  %38 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer62 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %38, i32 0, i32 46
  %gray63 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer62, i32 0, i32 7
  %39 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray63, align 8, !tbaa !39
  %40 = bitcast %struct.gx_transfer_map_s* %39 to i8*
  %41 = load i8*, i8** %cname, align 8, !tbaa !1
  call void %34(%struct.gs_memory_s* %37, i8* %40, i8* %41) #3
  br label %do.cond.64

do.cond.64:                                       ; preds = %do.end.53
  br label %do.end.65

do.end.65:                                        ; preds = %do.cond.64
  %42 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer66 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %42, i32 0, i32 46
  %gray67 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer66, i32 0, i32 7
  store %struct.gx_transfer_map_s* null, %struct.gx_transfer_map_s** %gray67, align 8, !tbaa !39
  br label %if.end.72

if.else.68:                                       ; preds = %do.end.43
  br label %do.body.69

do.body.69:                                       ; preds = %if.else.68
  br label %do.cond.70

do.cond.70:                                       ; preds = %do.body.69
  br label %do.end.71

do.end.71:                                        ; preds = %do.cond.70
  br label %if.end.72

if.end.72:                                        ; preds = %do.end.71, %do.end.65
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %do.body.30
  br label %do.cond.74

do.cond.74:                                       ; preds = %if.end.73
  br label %do.end.75

do.end.75:                                        ; preds = %do.cond.74
  %43 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer76 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %43, i32 0, i32 46
  %gray77 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer76, i32 0, i32 7
  store %struct.gx_transfer_map_s* null, %struct.gx_transfer_map_s** %gray77, align 8, !tbaa !39
  br label %do.body.78

do.body.78:                                       ; preds = %do.end.75
  %44 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer79 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %44, i32 0, i32 46
  %blue = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer79, i32 0, i32 5
  %45 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %blue, align 8, !tbaa !38
  %tobool80 = icmp ne %struct.gx_transfer_map_s* %45, null
  br i1 %tobool80, label %if.then.81, label %if.end.122

if.then.81:                                       ; preds = %do.body.78
  br label %do.body.82

do.body.82:                                       ; preds = %if.then.81
  br label %do.body.83

do.body.83:                                       ; preds = %do.body.82
  br label %do.cond.84

do.cond.84:                                       ; preds = %do.body.83
  br label %do.end.85

do.end.85:                                        ; preds = %do.cond.84
  %46 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer86 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %46, i32 0, i32 46
  %blue87 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer86, i32 0, i32 5
  %47 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %blue87, align 8, !tbaa !38
  %rc88 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %47, i32 0, i32 0
  %ref_count89 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc88, i32 0, i32 0
  %48 = load i64, i64* %ref_count89, align 8, !tbaa !56
  %add90 = add nsw i64 %48, -1
  store i64 %add90, i64* %ref_count89, align 8, !tbaa !56
  br label %do.cond.91

do.cond.91:                                       ; preds = %do.end.85
  br label %do.end.92

do.end.92:                                        ; preds = %do.cond.91
  %49 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer93 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %49, i32 0, i32 46
  %blue94 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer93, i32 0, i32 5
  %50 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %blue94, align 8, !tbaa !38
  %rc95 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %50, i32 0, i32 0
  %ref_count96 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc95, i32 0, i32 0
  %51 = load i64, i64* %ref_count96, align 8, !tbaa !56
  %tobool97 = icmp ne i64 %51, 0
  br i1 %tobool97, label %if.else.117, label %if.then.98

if.then.98:                                       ; preds = %do.end.92
  br label %do.body.99

do.body.99:                                       ; preds = %if.then.98
  br label %do.body.100

do.body.100:                                      ; preds = %do.body.99
  br label %do.cond.101

do.cond.101:                                      ; preds = %do.body.100
  br label %do.end.102

do.end.102:                                       ; preds = %do.cond.101
  %52 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer103 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %52, i32 0, i32 46
  %blue104 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer103, i32 0, i32 5
  %53 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %blue104, align 8, !tbaa !38
  %rc105 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %53, i32 0, i32 0
  %free106 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc105, i32 0, i32 2
  %54 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free106, align 8, !tbaa !61
  %55 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer107 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %55, i32 0, i32 46
  %blue108 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer107, i32 0, i32 5
  %56 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %blue108, align 8, !tbaa !38
  %rc109 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %56, i32 0, i32 0
  %memory110 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc109, i32 0, i32 1
  %57 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory110, align 8, !tbaa !60
  %58 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer111 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %58, i32 0, i32 46
  %blue112 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer111, i32 0, i32 5
  %59 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %blue112, align 8, !tbaa !38
  %60 = bitcast %struct.gx_transfer_map_s* %59 to i8*
  %61 = load i8*, i8** %cname, align 8, !tbaa !1
  call void %54(%struct.gs_memory_s* %57, i8* %60, i8* %61) #3
  br label %do.cond.113

do.cond.113:                                      ; preds = %do.end.102
  br label %do.end.114

do.end.114:                                       ; preds = %do.cond.113
  %62 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer115 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %62, i32 0, i32 46
  %blue116 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer115, i32 0, i32 5
  store %struct.gx_transfer_map_s* null, %struct.gx_transfer_map_s** %blue116, align 8, !tbaa !38
  br label %if.end.121

if.else.117:                                      ; preds = %do.end.92
  br label %do.body.118

do.body.118:                                      ; preds = %if.else.117
  br label %do.cond.119

do.cond.119:                                      ; preds = %do.body.118
  br label %do.end.120

do.end.120:                                       ; preds = %do.cond.119
  br label %if.end.121

if.end.121:                                       ; preds = %do.end.120, %do.end.114
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %do.body.78
  br label %do.cond.123

do.cond.123:                                      ; preds = %if.end.122
  br label %do.end.124

do.end.124:                                       ; preds = %do.cond.123
  %63 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer125 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %63, i32 0, i32 46
  %blue126 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer125, i32 0, i32 5
  store %struct.gx_transfer_map_s* null, %struct.gx_transfer_map_s** %blue126, align 8, !tbaa !38
  br label %do.body.127

do.body.127:                                      ; preds = %do.end.124
  %64 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer128 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %64, i32 0, i32 46
  %green = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer128, i32 0, i32 3
  %65 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green, align 8, !tbaa !37
  %tobool129 = icmp ne %struct.gx_transfer_map_s* %65, null
  br i1 %tobool129, label %if.then.130, label %if.end.171

if.then.130:                                      ; preds = %do.body.127
  br label %do.body.131

do.body.131:                                      ; preds = %if.then.130
  br label %do.body.132

do.body.132:                                      ; preds = %do.body.131
  br label %do.cond.133

do.cond.133:                                      ; preds = %do.body.132
  br label %do.end.134

do.end.134:                                       ; preds = %do.cond.133
  %66 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer135 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %66, i32 0, i32 46
  %green136 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer135, i32 0, i32 3
  %67 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green136, align 8, !tbaa !37
  %rc137 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %67, i32 0, i32 0
  %ref_count138 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc137, i32 0, i32 0
  %68 = load i64, i64* %ref_count138, align 8, !tbaa !56
  %add139 = add nsw i64 %68, -1
  store i64 %add139, i64* %ref_count138, align 8, !tbaa !56
  br label %do.cond.140

do.cond.140:                                      ; preds = %do.end.134
  br label %do.end.141

do.end.141:                                       ; preds = %do.cond.140
  %69 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer142 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %69, i32 0, i32 46
  %green143 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer142, i32 0, i32 3
  %70 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green143, align 8, !tbaa !37
  %rc144 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %70, i32 0, i32 0
  %ref_count145 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc144, i32 0, i32 0
  %71 = load i64, i64* %ref_count145, align 8, !tbaa !56
  %tobool146 = icmp ne i64 %71, 0
  br i1 %tobool146, label %if.else.166, label %if.then.147

if.then.147:                                      ; preds = %do.end.141
  br label %do.body.148

do.body.148:                                      ; preds = %if.then.147
  br label %do.body.149

do.body.149:                                      ; preds = %do.body.148
  br label %do.cond.150

do.cond.150:                                      ; preds = %do.body.149
  br label %do.end.151

do.end.151:                                       ; preds = %do.cond.150
  %72 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer152 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %72, i32 0, i32 46
  %green153 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer152, i32 0, i32 3
  %73 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green153, align 8, !tbaa !37
  %rc154 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %73, i32 0, i32 0
  %free155 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc154, i32 0, i32 2
  %74 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free155, align 8, !tbaa !61
  %75 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer156 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %75, i32 0, i32 46
  %green157 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer156, i32 0, i32 3
  %76 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green157, align 8, !tbaa !37
  %rc158 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %76, i32 0, i32 0
  %memory159 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc158, i32 0, i32 1
  %77 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory159, align 8, !tbaa !60
  %78 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer160 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %78, i32 0, i32 46
  %green161 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer160, i32 0, i32 3
  %79 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green161, align 8, !tbaa !37
  %80 = bitcast %struct.gx_transfer_map_s* %79 to i8*
  %81 = load i8*, i8** %cname, align 8, !tbaa !1
  call void %74(%struct.gs_memory_s* %77, i8* %80, i8* %81) #3
  br label %do.cond.162

do.cond.162:                                      ; preds = %do.end.151
  br label %do.end.163

do.end.163:                                       ; preds = %do.cond.162
  %82 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer164 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %82, i32 0, i32 46
  %green165 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer164, i32 0, i32 3
  store %struct.gx_transfer_map_s* null, %struct.gx_transfer_map_s** %green165, align 8, !tbaa !37
  br label %if.end.170

if.else.166:                                      ; preds = %do.end.141
  br label %do.body.167

do.body.167:                                      ; preds = %if.else.166
  br label %do.cond.168

do.cond.168:                                      ; preds = %do.body.167
  br label %do.end.169

do.end.169:                                       ; preds = %do.cond.168
  br label %if.end.170

if.end.170:                                       ; preds = %do.end.169, %do.end.163
  br label %if.end.171

if.end.171:                                       ; preds = %if.end.170, %do.body.127
  br label %do.cond.172

do.cond.172:                                      ; preds = %if.end.171
  br label %do.end.173

do.end.173:                                       ; preds = %do.cond.172
  %83 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer174 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %83, i32 0, i32 46
  %green175 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer174, i32 0, i32 3
  store %struct.gx_transfer_map_s* null, %struct.gx_transfer_map_s** %green175, align 8, !tbaa !37
  br label %do.body.176

do.body.176:                                      ; preds = %do.end.173
  %84 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer177 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %84, i32 0, i32 46
  %red = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer177, i32 0, i32 1
  %85 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red, align 8, !tbaa !36
  %tobool178 = icmp ne %struct.gx_transfer_map_s* %85, null
  br i1 %tobool178, label %if.then.179, label %if.end.220

if.then.179:                                      ; preds = %do.body.176
  br label %do.body.180

do.body.180:                                      ; preds = %if.then.179
  br label %do.body.181

do.body.181:                                      ; preds = %do.body.180
  br label %do.cond.182

do.cond.182:                                      ; preds = %do.body.181
  br label %do.end.183

do.end.183:                                       ; preds = %do.cond.182
  %86 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer184 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %86, i32 0, i32 46
  %red185 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer184, i32 0, i32 1
  %87 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red185, align 8, !tbaa !36
  %rc186 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %87, i32 0, i32 0
  %ref_count187 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc186, i32 0, i32 0
  %88 = load i64, i64* %ref_count187, align 8, !tbaa !56
  %add188 = add nsw i64 %88, -1
  store i64 %add188, i64* %ref_count187, align 8, !tbaa !56
  br label %do.cond.189

do.cond.189:                                      ; preds = %do.end.183
  br label %do.end.190

do.end.190:                                       ; preds = %do.cond.189
  %89 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer191 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %89, i32 0, i32 46
  %red192 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer191, i32 0, i32 1
  %90 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red192, align 8, !tbaa !36
  %rc193 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %90, i32 0, i32 0
  %ref_count194 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc193, i32 0, i32 0
  %91 = load i64, i64* %ref_count194, align 8, !tbaa !56
  %tobool195 = icmp ne i64 %91, 0
  br i1 %tobool195, label %if.else.215, label %if.then.196

if.then.196:                                      ; preds = %do.end.190
  br label %do.body.197

do.body.197:                                      ; preds = %if.then.196
  br label %do.body.198

do.body.198:                                      ; preds = %do.body.197
  br label %do.cond.199

do.cond.199:                                      ; preds = %do.body.198
  br label %do.end.200

do.end.200:                                       ; preds = %do.cond.199
  %92 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer201 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %92, i32 0, i32 46
  %red202 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer201, i32 0, i32 1
  %93 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red202, align 8, !tbaa !36
  %rc203 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %93, i32 0, i32 0
  %free204 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc203, i32 0, i32 2
  %94 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free204, align 8, !tbaa !61
  %95 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer205 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %95, i32 0, i32 46
  %red206 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer205, i32 0, i32 1
  %96 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red206, align 8, !tbaa !36
  %rc207 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %96, i32 0, i32 0
  %memory208 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc207, i32 0, i32 1
  %97 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory208, align 8, !tbaa !60
  %98 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer209 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %98, i32 0, i32 46
  %red210 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer209, i32 0, i32 1
  %99 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red210, align 8, !tbaa !36
  %100 = bitcast %struct.gx_transfer_map_s* %99 to i8*
  %101 = load i8*, i8** %cname, align 8, !tbaa !1
  call void %94(%struct.gs_memory_s* %97, i8* %100, i8* %101) #3
  br label %do.cond.211

do.cond.211:                                      ; preds = %do.end.200
  br label %do.end.212

do.end.212:                                       ; preds = %do.cond.211
  %102 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer213 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %102, i32 0, i32 46
  %red214 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer213, i32 0, i32 1
  store %struct.gx_transfer_map_s* null, %struct.gx_transfer_map_s** %red214, align 8, !tbaa !36
  br label %if.end.219

if.else.215:                                      ; preds = %do.end.190
  br label %do.body.216

do.body.216:                                      ; preds = %if.else.215
  br label %do.cond.217

do.cond.217:                                      ; preds = %do.body.216
  br label %do.end.218

do.end.218:                                       ; preds = %do.cond.217
  br label %if.end.219

if.end.219:                                       ; preds = %do.end.218, %do.end.212
  br label %if.end.220

if.end.220:                                       ; preds = %if.end.219, %do.body.176
  br label %do.cond.221

do.cond.221:                                      ; preds = %if.end.220
  br label %do.end.222

do.end.222:                                       ; preds = %do.cond.221
  %103 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer223 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %103, i32 0, i32 46
  %red224 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer223, i32 0, i32 1
  store %struct.gx_transfer_map_s* null, %struct.gx_transfer_map_s** %red224, align 8, !tbaa !36
  br label %do.body.225

do.body.225:                                      ; preds = %do.end.222
  %104 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %undercolor_removal = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %104, i32 0, i32 45
  %105 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %undercolor_removal, align 8, !tbaa !35
  %tobool226 = icmp ne %struct.gx_transfer_map_s* %105, null
  br i1 %tobool226, label %if.then.227, label %if.end.262

if.then.227:                                      ; preds = %do.body.225
  br label %do.body.228

do.body.228:                                      ; preds = %if.then.227
  br label %do.body.229

do.body.229:                                      ; preds = %do.body.228
  br label %do.cond.230

do.cond.230:                                      ; preds = %do.body.229
  br label %do.end.231

do.end.231:                                       ; preds = %do.cond.230
  %106 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %undercolor_removal232 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %106, i32 0, i32 45
  %107 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %undercolor_removal232, align 8, !tbaa !35
  %rc233 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %107, i32 0, i32 0
  %ref_count234 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc233, i32 0, i32 0
  %108 = load i64, i64* %ref_count234, align 8, !tbaa !56
  %add235 = add nsw i64 %108, -1
  store i64 %add235, i64* %ref_count234, align 8, !tbaa !56
  br label %do.cond.236

do.cond.236:                                      ; preds = %do.end.231
  br label %do.end.237

do.end.237:                                       ; preds = %do.cond.236
  %109 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %undercolor_removal238 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %109, i32 0, i32 45
  %110 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %undercolor_removal238, align 8, !tbaa !35
  %rc239 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %110, i32 0, i32 0
  %ref_count240 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc239, i32 0, i32 0
  %111 = load i64, i64* %ref_count240, align 8, !tbaa !56
  %tobool241 = icmp ne i64 %111, 0
  br i1 %tobool241, label %if.else.257, label %if.then.242

if.then.242:                                      ; preds = %do.end.237
  br label %do.body.243

do.body.243:                                      ; preds = %if.then.242
  br label %do.body.244

do.body.244:                                      ; preds = %do.body.243
  br label %do.cond.245

do.cond.245:                                      ; preds = %do.body.244
  br label %do.end.246

do.end.246:                                       ; preds = %do.cond.245
  %112 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %undercolor_removal247 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %112, i32 0, i32 45
  %113 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %undercolor_removal247, align 8, !tbaa !35
  %rc248 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %113, i32 0, i32 0
  %free249 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc248, i32 0, i32 2
  %114 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free249, align 8, !tbaa !61
  %115 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %undercolor_removal250 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %115, i32 0, i32 45
  %116 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %undercolor_removal250, align 8, !tbaa !35
  %rc251 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %116, i32 0, i32 0
  %memory252 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc251, i32 0, i32 1
  %117 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory252, align 8, !tbaa !60
  %118 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %undercolor_removal253 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %118, i32 0, i32 45
  %119 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %undercolor_removal253, align 8, !tbaa !35
  %120 = bitcast %struct.gx_transfer_map_s* %119 to i8*
  %121 = load i8*, i8** %cname, align 8, !tbaa !1
  call void %114(%struct.gs_memory_s* %117, i8* %120, i8* %121) #3
  br label %do.cond.254

do.cond.254:                                      ; preds = %do.end.246
  br label %do.end.255

do.end.255:                                       ; preds = %do.cond.254
  %122 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %undercolor_removal256 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %122, i32 0, i32 45
  store %struct.gx_transfer_map_s* null, %struct.gx_transfer_map_s** %undercolor_removal256, align 8, !tbaa !35
  br label %if.end.261

if.else.257:                                      ; preds = %do.end.237
  br label %do.body.258

do.body.258:                                      ; preds = %if.else.257
  br label %do.cond.259

do.cond.259:                                      ; preds = %do.body.258
  br label %do.end.260

do.end.260:                                       ; preds = %do.cond.259
  br label %if.end.261

if.end.261:                                       ; preds = %do.end.260, %do.end.255
  br label %if.end.262

if.end.262:                                       ; preds = %if.end.261, %do.body.225
  br label %do.cond.263

do.cond.263:                                      ; preds = %if.end.262
  br label %do.end.264

do.end.264:                                       ; preds = %do.cond.263
  %123 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %undercolor_removal265 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %123, i32 0, i32 45
  store %struct.gx_transfer_map_s* null, %struct.gx_transfer_map_s** %undercolor_removal265, align 8, !tbaa !35
  br label %do.body.266

do.body.266:                                      ; preds = %do.end.264
  %124 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %black_generation = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %124, i32 0, i32 44
  %125 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %black_generation, align 8, !tbaa !34
  %tobool267 = icmp ne %struct.gx_transfer_map_s* %125, null
  br i1 %tobool267, label %if.then.268, label %if.end.303

if.then.268:                                      ; preds = %do.body.266
  br label %do.body.269

do.body.269:                                      ; preds = %if.then.268
  br label %do.body.270

do.body.270:                                      ; preds = %do.body.269
  br label %do.cond.271

do.cond.271:                                      ; preds = %do.body.270
  br label %do.end.272

do.end.272:                                       ; preds = %do.cond.271
  %126 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %black_generation273 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %126, i32 0, i32 44
  %127 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %black_generation273, align 8, !tbaa !34
  %rc274 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %127, i32 0, i32 0
  %ref_count275 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc274, i32 0, i32 0
  %128 = load i64, i64* %ref_count275, align 8, !tbaa !56
  %add276 = add nsw i64 %128, -1
  store i64 %add276, i64* %ref_count275, align 8, !tbaa !56
  br label %do.cond.277

do.cond.277:                                      ; preds = %do.end.272
  br label %do.end.278

do.end.278:                                       ; preds = %do.cond.277
  %129 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %black_generation279 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %129, i32 0, i32 44
  %130 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %black_generation279, align 8, !tbaa !34
  %rc280 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %130, i32 0, i32 0
  %ref_count281 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc280, i32 0, i32 0
  %131 = load i64, i64* %ref_count281, align 8, !tbaa !56
  %tobool282 = icmp ne i64 %131, 0
  br i1 %tobool282, label %if.else.298, label %if.then.283

if.then.283:                                      ; preds = %do.end.278
  br label %do.body.284

do.body.284:                                      ; preds = %if.then.283
  br label %do.body.285

do.body.285:                                      ; preds = %do.body.284
  br label %do.cond.286

do.cond.286:                                      ; preds = %do.body.285
  br label %do.end.287

do.end.287:                                       ; preds = %do.cond.286
  %132 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %black_generation288 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %132, i32 0, i32 44
  %133 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %black_generation288, align 8, !tbaa !34
  %rc289 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %133, i32 0, i32 0
  %free290 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc289, i32 0, i32 2
  %134 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free290, align 8, !tbaa !61
  %135 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %black_generation291 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %135, i32 0, i32 44
  %136 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %black_generation291, align 8, !tbaa !34
  %rc292 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %136, i32 0, i32 0
  %memory293 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc292, i32 0, i32 1
  %137 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory293, align 8, !tbaa !60
  %138 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %black_generation294 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %138, i32 0, i32 44
  %139 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %black_generation294, align 8, !tbaa !34
  %140 = bitcast %struct.gx_transfer_map_s* %139 to i8*
  %141 = load i8*, i8** %cname, align 8, !tbaa !1
  call void %134(%struct.gs_memory_s* %137, i8* %140, i8* %141) #3
  br label %do.cond.295

do.cond.295:                                      ; preds = %do.end.287
  br label %do.end.296

do.end.296:                                       ; preds = %do.cond.295
  %142 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %black_generation297 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %142, i32 0, i32 44
  store %struct.gx_transfer_map_s* null, %struct.gx_transfer_map_s** %black_generation297, align 8, !tbaa !34
  br label %if.end.302

if.else.298:                                      ; preds = %do.end.278
  br label %do.body.299

do.body.299:                                      ; preds = %if.else.298
  br label %do.cond.300

do.cond.300:                                      ; preds = %do.body.299
  br label %do.end.301

do.end.301:                                       ; preds = %do.cond.300
  br label %if.end.302

if.end.302:                                       ; preds = %do.end.301, %do.end.296
  br label %if.end.303

if.end.303:                                       ; preds = %if.end.302, %do.body.266
  br label %do.cond.304

do.cond.304:                                      ; preds = %if.end.303
  br label %do.end.305

do.end.305:                                       ; preds = %do.cond.304
  %143 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %black_generation306 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %143, i32 0, i32 44
  store %struct.gx_transfer_map_s* null, %struct.gx_transfer_map_s** %black_generation306, align 8, !tbaa !34
  br label %do.body.307

do.body.307:                                      ; preds = %do.end.305
  %144 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cie_render = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %144, i32 0, i32 42
  %145 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %cie_render, align 8, !tbaa !33
  %tobool308 = icmp ne %struct.gs_cie_render_s* %145, null
  br i1 %tobool308, label %if.then.309, label %if.end.344

if.then.309:                                      ; preds = %do.body.307
  br label %do.body.310

do.body.310:                                      ; preds = %if.then.309
  br label %do.body.311

do.body.311:                                      ; preds = %do.body.310
  br label %do.cond.312

do.cond.312:                                      ; preds = %do.body.311
  br label %do.end.313

do.end.313:                                       ; preds = %do.cond.312
  %146 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cie_render314 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %146, i32 0, i32 42
  %147 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %cie_render314, align 8, !tbaa !33
  %rc315 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %147, i32 0, i32 1
  %ref_count316 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc315, i32 0, i32 0
  %148 = load i64, i64* %ref_count316, align 8, !tbaa !79
  %add317 = add nsw i64 %148, -1
  store i64 %add317, i64* %ref_count316, align 8, !tbaa !79
  br label %do.cond.318

do.cond.318:                                      ; preds = %do.end.313
  br label %do.end.319

do.end.319:                                       ; preds = %do.cond.318
  %149 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cie_render320 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %149, i32 0, i32 42
  %150 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %cie_render320, align 8, !tbaa !33
  %rc321 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %150, i32 0, i32 1
  %ref_count322 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc321, i32 0, i32 0
  %151 = load i64, i64* %ref_count322, align 8, !tbaa !79
  %tobool323 = icmp ne i64 %151, 0
  br i1 %tobool323, label %if.else.339, label %if.then.324

if.then.324:                                      ; preds = %do.end.319
  br label %do.body.325

do.body.325:                                      ; preds = %if.then.324
  br label %do.body.326

do.body.326:                                      ; preds = %do.body.325
  br label %do.cond.327

do.cond.327:                                      ; preds = %do.body.326
  br label %do.end.328

do.end.328:                                       ; preds = %do.cond.327
  %152 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cie_render329 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %152, i32 0, i32 42
  %153 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %cie_render329, align 8, !tbaa !33
  %rc330 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %153, i32 0, i32 1
  %free331 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc330, i32 0, i32 2
  %154 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free331, align 8, !tbaa !107
  %155 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cie_render332 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %155, i32 0, i32 42
  %156 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %cie_render332, align 8, !tbaa !33
  %rc333 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %156, i32 0, i32 1
  %memory334 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc333, i32 0, i32 1
  %157 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory334, align 8, !tbaa !108
  %158 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cie_render335 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %158, i32 0, i32 42
  %159 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %cie_render335, align 8, !tbaa !33
  %160 = bitcast %struct.gs_cie_render_s* %159 to i8*
  %161 = load i8*, i8** %cname, align 8, !tbaa !1
  call void %154(%struct.gs_memory_s* %157, i8* %160, i8* %161) #3
  br label %do.cond.336

do.cond.336:                                      ; preds = %do.end.328
  br label %do.end.337

do.end.337:                                       ; preds = %do.cond.336
  %162 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cie_render338 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %162, i32 0, i32 42
  store %struct.gs_cie_render_s* null, %struct.gs_cie_render_s** %cie_render338, align 8, !tbaa !33
  br label %if.end.343

if.else.339:                                      ; preds = %do.end.319
  br label %do.body.340

do.body.340:                                      ; preds = %if.else.339
  br label %do.cond.341

do.cond.341:                                      ; preds = %do.body.340
  br label %do.end.342

do.end.342:                                       ; preds = %do.cond.341
  br label %if.end.343

if.end.343:                                       ; preds = %do.end.342, %do.end.337
  br label %if.end.344

if.end.344:                                       ; preds = %if.end.343, %do.body.307
  br label %do.cond.345

do.cond.345:                                      ; preds = %if.end.344
  br label %do.end.346

do.end.346:                                       ; preds = %do.cond.345
  %163 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cie_render347 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %163, i32 0, i32 42
  store %struct.gs_cie_render_s* null, %struct.gs_cie_render_s** %cie_render347, align 8, !tbaa !33
  %164 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %cmp = icmp ne %struct.gx_device_halftone_s* %164, null
  br i1 %cmp, label %land.lhs.true, label %if.end.354

land.lhs.true:                                    ; preds = %do.end.346
  %165 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %rc348 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %165, i32 0, i32 1
  %ref_count349 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc348, i32 0, i32 0
  %166 = load i64, i64* %ref_count349, align 8, !tbaa !74
  %cmp350 = icmp eq i64 %166, 1
  br i1 %cmp350, label %if.then.351, label %if.end.354

if.then.351:                                      ; preds = %land.lhs.true
  %167 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %168 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %rc352 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %168, i32 0, i32 1
  %memory353 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc352, i32 0, i32 1
  %169 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory353, align 8, !tbaa !110
  call void @gx_device_halftone_release(%struct.gx_device_halftone_s* %167, %struct.gs_memory_s* %169) #3
  br label %if.end.354

if.end.354:                                       ; preds = %if.then.351, %land.lhs.true, %do.end.346
  br label %do.body.355

do.body.355:                                      ; preds = %if.end.354
  %170 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %dev_ht356 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %170, i32 0, i32 41
  %171 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht356, align 8, !tbaa !32
  %tobool357 = icmp ne %struct.gx_device_halftone_s* %171, null
  br i1 %tobool357, label %if.then.358, label %if.end.393

if.then.358:                                      ; preds = %do.body.355
  br label %do.body.359

do.body.359:                                      ; preds = %if.then.358
  br label %do.body.360

do.body.360:                                      ; preds = %do.body.359
  br label %do.cond.361

do.cond.361:                                      ; preds = %do.body.360
  br label %do.end.362

do.end.362:                                       ; preds = %do.cond.361
  %172 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %dev_ht363 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %172, i32 0, i32 41
  %173 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht363, align 8, !tbaa !32
  %rc364 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %173, i32 0, i32 1
  %ref_count365 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc364, i32 0, i32 0
  %174 = load i64, i64* %ref_count365, align 8, !tbaa !74
  %add366 = add nsw i64 %174, -1
  store i64 %add366, i64* %ref_count365, align 8, !tbaa !74
  br label %do.cond.367

do.cond.367:                                      ; preds = %do.end.362
  br label %do.end.368

do.end.368:                                       ; preds = %do.cond.367
  %175 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %dev_ht369 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %175, i32 0, i32 41
  %176 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht369, align 8, !tbaa !32
  %rc370 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %176, i32 0, i32 1
  %ref_count371 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc370, i32 0, i32 0
  %177 = load i64, i64* %ref_count371, align 8, !tbaa !74
  %tobool372 = icmp ne i64 %177, 0
  br i1 %tobool372, label %if.else.388, label %if.then.373

if.then.373:                                      ; preds = %do.end.368
  br label %do.body.374

do.body.374:                                      ; preds = %if.then.373
  br label %do.body.375

do.body.375:                                      ; preds = %do.body.374
  br label %do.cond.376

do.cond.376:                                      ; preds = %do.body.375
  br label %do.end.377

do.end.377:                                       ; preds = %do.cond.376
  %178 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %dev_ht378 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %178, i32 0, i32 41
  %179 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht378, align 8, !tbaa !32
  %rc379 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %179, i32 0, i32 1
  %free380 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc379, i32 0, i32 2
  %180 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free380, align 8, !tbaa !109
  %181 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %dev_ht381 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %181, i32 0, i32 41
  %182 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht381, align 8, !tbaa !32
  %rc382 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %182, i32 0, i32 1
  %memory383 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc382, i32 0, i32 1
  %183 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory383, align 8, !tbaa !110
  %184 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %dev_ht384 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %184, i32 0, i32 41
  %185 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht384, align 8, !tbaa !32
  %186 = bitcast %struct.gx_device_halftone_s* %185 to i8*
  %187 = load i8*, i8** %cname, align 8, !tbaa !1
  call void %180(%struct.gs_memory_s* %183, i8* %186, i8* %187) #3
  br label %do.cond.385

do.cond.385:                                      ; preds = %do.end.377
  br label %do.end.386

do.end.386:                                       ; preds = %do.cond.385
  %188 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %dev_ht387 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %188, i32 0, i32 41
  store %struct.gx_device_halftone_s* null, %struct.gx_device_halftone_s** %dev_ht387, align 8, !tbaa !32
  br label %if.end.392

if.else.388:                                      ; preds = %do.end.368
  br label %do.body.389

do.body.389:                                      ; preds = %if.else.388
  br label %do.cond.390

do.cond.390:                                      ; preds = %do.body.389
  br label %do.end.391

do.end.391:                                       ; preds = %do.cond.390
  br label %if.end.392

if.end.392:                                       ; preds = %do.end.391, %do.end.386
  br label %if.end.393

if.end.393:                                       ; preds = %if.end.392, %do.body.355
  br label %do.cond.394

do.cond.394:                                      ; preds = %if.end.393
  br label %do.end.395

do.end.395:                                       ; preds = %do.cond.394
  %189 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %dev_ht396 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %189, i32 0, i32 41
  store %struct.gx_device_halftone_s* null, %struct.gx_device_halftone_s** %dev_ht396, align 8, !tbaa !32
  br label %do.body.397

do.body.397:                                      ; preds = %do.end.395
  %190 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %halftone = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %190, i32 0, i32 39
  %191 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %halftone, align 8, !tbaa !31
  %tobool398 = icmp ne %struct.gs_halftone_s* %191, null
  br i1 %tobool398, label %if.then.399, label %if.end.434

if.then.399:                                      ; preds = %do.body.397
  br label %do.body.400

do.body.400:                                      ; preds = %if.then.399
  br label %do.body.401

do.body.401:                                      ; preds = %do.body.400
  br label %do.cond.402

do.cond.402:                                      ; preds = %do.body.401
  br label %do.end.403

do.end.403:                                       ; preds = %do.cond.402
  %192 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %halftone404 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %192, i32 0, i32 39
  %193 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %halftone404, align 8, !tbaa !31
  %rc405 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %193, i32 0, i32 1
  %ref_count406 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc405, i32 0, i32 0
  %194 = load i64, i64* %ref_count406, align 8, !tbaa !72
  %add407 = add nsw i64 %194, -1
  store i64 %add407, i64* %ref_count406, align 8, !tbaa !72
  br label %do.cond.408

do.cond.408:                                      ; preds = %do.end.403
  br label %do.end.409

do.end.409:                                       ; preds = %do.cond.408
  %195 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %halftone410 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %195, i32 0, i32 39
  %196 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %halftone410, align 8, !tbaa !31
  %rc411 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %196, i32 0, i32 1
  %ref_count412 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc411, i32 0, i32 0
  %197 = load i64, i64* %ref_count412, align 8, !tbaa !72
  %tobool413 = icmp ne i64 %197, 0
  br i1 %tobool413, label %if.else.429, label %if.then.414

if.then.414:                                      ; preds = %do.end.409
  br label %do.body.415

do.body.415:                                      ; preds = %if.then.414
  br label %do.body.416

do.body.416:                                      ; preds = %do.body.415
  br label %do.cond.417

do.cond.417:                                      ; preds = %do.body.416
  br label %do.end.418

do.end.418:                                       ; preds = %do.cond.417
  %198 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %halftone419 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %198, i32 0, i32 39
  %199 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %halftone419, align 8, !tbaa !31
  %rc420 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %199, i32 0, i32 1
  %free421 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc420, i32 0, i32 2
  %200 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free421, align 8, !tbaa !111
  %201 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %halftone422 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %201, i32 0, i32 39
  %202 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %halftone422, align 8, !tbaa !31
  %rc423 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %202, i32 0, i32 1
  %memory424 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc423, i32 0, i32 1
  %203 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory424, align 8, !tbaa !112
  %204 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %halftone425 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %204, i32 0, i32 39
  %205 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %halftone425, align 8, !tbaa !31
  %206 = bitcast %struct.gs_halftone_s* %205 to i8*
  %207 = load i8*, i8** %cname, align 8, !tbaa !1
  call void %200(%struct.gs_memory_s* %203, i8* %206, i8* %207) #3
  br label %do.cond.426

do.cond.426:                                      ; preds = %do.end.418
  br label %do.end.427

do.end.427:                                       ; preds = %do.cond.426
  %208 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %halftone428 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %208, i32 0, i32 39
  store %struct.gs_halftone_s* null, %struct.gs_halftone_s** %halftone428, align 8, !tbaa !31
  br label %if.end.433

if.else.429:                                      ; preds = %do.end.409
  br label %do.body.430

do.body.430:                                      ; preds = %if.else.429
  br label %do.cond.431

do.cond.431:                                      ; preds = %do.body.430
  br label %do.end.432

do.end.432:                                       ; preds = %do.cond.431
  br label %if.end.433

if.end.433:                                       ; preds = %do.end.432, %do.end.427
  br label %if.end.434

if.end.434:                                       ; preds = %if.end.433, %do.body.397
  br label %do.cond.435

do.cond.435:                                      ; preds = %if.end.434
  br label %do.end.436

do.end.436:                                       ; preds = %do.cond.435
  %209 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %halftone437 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %209, i32 0, i32 39
  store %struct.gs_halftone_s* null, %struct.gs_halftone_s** %halftone437, align 8, !tbaa !31
  br label %do.body.438

do.body.438:                                      ; preds = %do.end.436
  %210 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %devicergb_cs = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %210, i32 0, i32 52
  %211 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %devicergb_cs, align 8, !tbaa !42
  %tobool439 = icmp ne %struct.gs_color_space_s* %211, null
  br i1 %tobool439, label %if.then.440, label %if.end.475

if.then.440:                                      ; preds = %do.body.438
  br label %do.body.441

do.body.441:                                      ; preds = %if.then.440
  br label %do.body.442

do.body.442:                                      ; preds = %do.body.441
  br label %do.cond.443

do.cond.443:                                      ; preds = %do.body.442
  br label %do.end.444

do.end.444:                                       ; preds = %do.cond.443
  %212 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %devicergb_cs445 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %212, i32 0, i32 52
  %213 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %devicergb_cs445, align 8, !tbaa !42
  %rc446 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %213, i32 0, i32 1
  %ref_count447 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc446, i32 0, i32 0
  %214 = load i64, i64* %ref_count447, align 8, !tbaa !97
  %add448 = add nsw i64 %214, -1
  store i64 %add448, i64* %ref_count447, align 8, !tbaa !97
  br label %do.cond.449

do.cond.449:                                      ; preds = %do.end.444
  br label %do.end.450

do.end.450:                                       ; preds = %do.cond.449
  %215 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %devicergb_cs451 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %215, i32 0, i32 52
  %216 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %devicergb_cs451, align 8, !tbaa !42
  %rc452 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %216, i32 0, i32 1
  %ref_count453 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc452, i32 0, i32 0
  %217 = load i64, i64* %ref_count453, align 8, !tbaa !97
  %tobool454 = icmp ne i64 %217, 0
  br i1 %tobool454, label %if.else.470, label %if.then.455

if.then.455:                                      ; preds = %do.end.450
  br label %do.body.456

do.body.456:                                      ; preds = %if.then.455
  br label %do.body.457

do.body.457:                                      ; preds = %do.body.456
  br label %do.cond.458

do.cond.458:                                      ; preds = %do.body.457
  br label %do.end.459

do.end.459:                                       ; preds = %do.cond.458
  %218 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %devicergb_cs460 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %218, i32 0, i32 52
  %219 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %devicergb_cs460, align 8, !tbaa !42
  %rc461 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %219, i32 0, i32 1
  %free462 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc461, i32 0, i32 2
  %220 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free462, align 8, !tbaa !113
  %221 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %devicergb_cs463 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %221, i32 0, i32 52
  %222 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %devicergb_cs463, align 8, !tbaa !42
  %rc464 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %222, i32 0, i32 1
  %memory465 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc464, i32 0, i32 1
  %223 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory465, align 8, !tbaa !114
  %224 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %devicergb_cs466 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %224, i32 0, i32 52
  %225 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %devicergb_cs466, align 8, !tbaa !42
  %226 = bitcast %struct.gs_color_space_s* %225 to i8*
  %227 = load i8*, i8** %cname, align 8, !tbaa !1
  call void %220(%struct.gs_memory_s* %223, i8* %226, i8* %227) #3
  br label %do.cond.467

do.cond.467:                                      ; preds = %do.end.459
  br label %do.end.468

do.end.468:                                       ; preds = %do.cond.467
  %228 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %devicergb_cs469 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %228, i32 0, i32 52
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %devicergb_cs469, align 8, !tbaa !42
  br label %if.end.474

if.else.470:                                      ; preds = %do.end.450
  br label %do.body.471

do.body.471:                                      ; preds = %if.else.470
  br label %do.cond.472

do.cond.472:                                      ; preds = %do.body.471
  br label %do.end.473

do.end.473:                                       ; preds = %do.cond.472
  br label %if.end.474

if.end.474:                                       ; preds = %do.end.473, %do.end.468
  br label %if.end.475

if.end.475:                                       ; preds = %if.end.474, %do.body.438
  br label %do.cond.476

do.cond.476:                                      ; preds = %if.end.475
  br label %do.end.477

do.end.477:                                       ; preds = %do.cond.476
  %229 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %devicergb_cs478 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %229, i32 0, i32 52
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %devicergb_cs478, align 8, !tbaa !42
  br label %do.body.479

do.body.479:                                      ; preds = %do.end.477
  %230 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %devicecmyk_cs = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %230, i32 0, i32 53
  %231 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %devicecmyk_cs, align 8, !tbaa !43
  %tobool480 = icmp ne %struct.gs_color_space_s* %231, null
  br i1 %tobool480, label %if.then.481, label %if.end.516

if.then.481:                                      ; preds = %do.body.479
  br label %do.body.482

do.body.482:                                      ; preds = %if.then.481
  br label %do.body.483

do.body.483:                                      ; preds = %do.body.482
  br label %do.cond.484

do.cond.484:                                      ; preds = %do.body.483
  br label %do.end.485

do.end.485:                                       ; preds = %do.cond.484
  %232 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %devicecmyk_cs486 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %232, i32 0, i32 53
  %233 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %devicecmyk_cs486, align 8, !tbaa !43
  %rc487 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %233, i32 0, i32 1
  %ref_count488 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc487, i32 0, i32 0
  %234 = load i64, i64* %ref_count488, align 8, !tbaa !97
  %add489 = add nsw i64 %234, -1
  store i64 %add489, i64* %ref_count488, align 8, !tbaa !97
  br label %do.cond.490

do.cond.490:                                      ; preds = %do.end.485
  br label %do.end.491

do.end.491:                                       ; preds = %do.cond.490
  %235 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %devicecmyk_cs492 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %235, i32 0, i32 53
  %236 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %devicecmyk_cs492, align 8, !tbaa !43
  %rc493 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %236, i32 0, i32 1
  %ref_count494 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc493, i32 0, i32 0
  %237 = load i64, i64* %ref_count494, align 8, !tbaa !97
  %tobool495 = icmp ne i64 %237, 0
  br i1 %tobool495, label %if.else.511, label %if.then.496

if.then.496:                                      ; preds = %do.end.491
  br label %do.body.497

do.body.497:                                      ; preds = %if.then.496
  br label %do.body.498

do.body.498:                                      ; preds = %do.body.497
  br label %do.cond.499

do.cond.499:                                      ; preds = %do.body.498
  br label %do.end.500

do.end.500:                                       ; preds = %do.cond.499
  %238 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %devicecmyk_cs501 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %238, i32 0, i32 53
  %239 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %devicecmyk_cs501, align 8, !tbaa !43
  %rc502 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %239, i32 0, i32 1
  %free503 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc502, i32 0, i32 2
  %240 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free503, align 8, !tbaa !113
  %241 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %devicecmyk_cs504 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %241, i32 0, i32 53
  %242 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %devicecmyk_cs504, align 8, !tbaa !43
  %rc505 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %242, i32 0, i32 1
  %memory506 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc505, i32 0, i32 1
  %243 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory506, align 8, !tbaa !114
  %244 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %devicecmyk_cs507 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %244, i32 0, i32 53
  %245 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %devicecmyk_cs507, align 8, !tbaa !43
  %246 = bitcast %struct.gs_color_space_s* %245 to i8*
  %247 = load i8*, i8** %cname, align 8, !tbaa !1
  call void %240(%struct.gs_memory_s* %243, i8* %246, i8* %247) #3
  br label %do.cond.508

do.cond.508:                                      ; preds = %do.end.500
  br label %do.end.509

do.end.509:                                       ; preds = %do.cond.508
  %248 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %devicecmyk_cs510 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %248, i32 0, i32 53
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %devicecmyk_cs510, align 8, !tbaa !43
  br label %if.end.515

if.else.511:                                      ; preds = %do.end.491
  br label %do.body.512

do.body.512:                                      ; preds = %if.else.511
  br label %do.cond.513

do.cond.513:                                      ; preds = %do.body.512
  br label %do.end.514

do.end.514:                                       ; preds = %do.cond.513
  br label %if.end.515

if.end.515:                                       ; preds = %do.end.514, %do.end.509
  br label %if.end.516

if.end.516:                                       ; preds = %if.end.515, %do.body.479
  br label %do.cond.517

do.cond.517:                                      ; preds = %if.end.516
  br label %do.end.518

do.end.518:                                       ; preds = %do.cond.517
  %249 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %devicecmyk_cs519 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %249, i32 0, i32 53
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %devicecmyk_cs519, align 8, !tbaa !43
  br label %do.body.520

do.body.520:                                      ; preds = %do.end.518
  %250 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_link_cache = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %250, i32 0, i32 36
  %251 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache, align 8, !tbaa !29
  %tobool521 = icmp ne %struct.gsicc_link_cache_s* %251, null
  br i1 %tobool521, label %if.then.522, label %if.end.557

if.then.522:                                      ; preds = %do.body.520
  br label %do.body.523

do.body.523:                                      ; preds = %if.then.522
  br label %do.body.524

do.body.524:                                      ; preds = %do.body.523
  br label %do.cond.525

do.cond.525:                                      ; preds = %do.body.524
  br label %do.end.526

do.end.526:                                       ; preds = %do.cond.525
  %252 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_link_cache527 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %252, i32 0, i32 36
  %253 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache527, align 8, !tbaa !29
  %rc528 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %253, i32 0, i32 2
  %ref_count529 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc528, i32 0, i32 0
  %254 = load i64, i64* %ref_count529, align 8, !tbaa !99
  %add530 = add nsw i64 %254, -1
  store i64 %add530, i64* %ref_count529, align 8, !tbaa !99
  br label %do.cond.531

do.cond.531:                                      ; preds = %do.end.526
  br label %do.end.532

do.end.532:                                       ; preds = %do.cond.531
  %255 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_link_cache533 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %255, i32 0, i32 36
  %256 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache533, align 8, !tbaa !29
  %rc534 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %256, i32 0, i32 2
  %ref_count535 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc534, i32 0, i32 0
  %257 = load i64, i64* %ref_count535, align 8, !tbaa !99
  %tobool536 = icmp ne i64 %257, 0
  br i1 %tobool536, label %if.else.552, label %if.then.537

if.then.537:                                      ; preds = %do.end.532
  br label %do.body.538

do.body.538:                                      ; preds = %if.then.537
  br label %do.body.539

do.body.539:                                      ; preds = %do.body.538
  br label %do.cond.540

do.cond.540:                                      ; preds = %do.body.539
  br label %do.end.541

do.end.541:                                       ; preds = %do.cond.540
  %258 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_link_cache542 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %258, i32 0, i32 36
  %259 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache542, align 8, !tbaa !29
  %rc543 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %259, i32 0, i32 2
  %free544 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc543, i32 0, i32 2
  %260 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free544, align 8, !tbaa !115
  %261 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_link_cache545 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %261, i32 0, i32 36
  %262 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache545, align 8, !tbaa !29
  %rc546 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %262, i32 0, i32 2
  %memory547 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc546, i32 0, i32 1
  %263 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory547, align 8, !tbaa !116
  %264 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_link_cache548 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %264, i32 0, i32 36
  %265 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache548, align 8, !tbaa !29
  %266 = bitcast %struct.gsicc_link_cache_s* %265 to i8*
  %267 = load i8*, i8** %cname, align 8, !tbaa !1
  call void %260(%struct.gs_memory_s* %263, i8* %266, i8* %267) #3
  br label %do.cond.549

do.cond.549:                                      ; preds = %do.end.541
  br label %do.end.550

do.end.550:                                       ; preds = %do.cond.549
  %268 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_link_cache551 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %268, i32 0, i32 36
  store %struct.gsicc_link_cache_s* null, %struct.gsicc_link_cache_s** %icc_link_cache551, align 8, !tbaa !29
  br label %if.end.556

if.else.552:                                      ; preds = %do.end.532
  br label %do.body.553

do.body.553:                                      ; preds = %if.else.552
  br label %do.cond.554

do.cond.554:                                      ; preds = %do.body.553
  br label %do.end.555

do.end.555:                                       ; preds = %do.cond.554
  br label %if.end.556

if.end.556:                                       ; preds = %do.end.555, %do.end.550
  br label %if.end.557

if.end.557:                                       ; preds = %if.end.556, %do.body.520
  br label %do.cond.558

do.cond.558:                                      ; preds = %if.end.557
  br label %do.end.559

do.end.559:                                       ; preds = %do.cond.558
  %269 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_link_cache560 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %269, i32 0, i32 36
  store %struct.gsicc_link_cache_s* null, %struct.gsicc_link_cache_s** %icc_link_cache560, align 8, !tbaa !29
  br label %do.body.561

do.body.561:                                      ; preds = %do.end.559
  %270 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_profile_cache = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %270, i32 0, i32 37
  %271 = load %struct.gsicc_profile_cache_s*, %struct.gsicc_profile_cache_s** %icc_profile_cache, align 8, !tbaa !30
  %tobool562 = icmp ne %struct.gsicc_profile_cache_s* %271, null
  br i1 %tobool562, label %if.then.563, label %if.end.598

if.then.563:                                      ; preds = %do.body.561
  br label %do.body.564

do.body.564:                                      ; preds = %if.then.563
  br label %do.body.565

do.body.565:                                      ; preds = %do.body.564
  br label %do.cond.566

do.cond.566:                                      ; preds = %do.body.565
  br label %do.end.567

do.end.567:                                       ; preds = %do.cond.566
  %272 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_profile_cache568 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %272, i32 0, i32 37
  %273 = load %struct.gsicc_profile_cache_s*, %struct.gsicc_profile_cache_s** %icc_profile_cache568, align 8, !tbaa !30
  %rc569 = getelementptr inbounds %struct.gsicc_profile_cache_s, %struct.gsicc_profile_cache_s* %273, i32 0, i32 2
  %ref_count570 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc569, i32 0, i32 0
  %274 = load i64, i64* %ref_count570, align 8, !tbaa !101
  %add571 = add nsw i64 %274, -1
  store i64 %add571, i64* %ref_count570, align 8, !tbaa !101
  br label %do.cond.572

do.cond.572:                                      ; preds = %do.end.567
  br label %do.end.573

do.end.573:                                       ; preds = %do.cond.572
  %275 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_profile_cache574 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %275, i32 0, i32 37
  %276 = load %struct.gsicc_profile_cache_s*, %struct.gsicc_profile_cache_s** %icc_profile_cache574, align 8, !tbaa !30
  %rc575 = getelementptr inbounds %struct.gsicc_profile_cache_s, %struct.gsicc_profile_cache_s* %276, i32 0, i32 2
  %ref_count576 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc575, i32 0, i32 0
  %277 = load i64, i64* %ref_count576, align 8, !tbaa !101
  %tobool577 = icmp ne i64 %277, 0
  br i1 %tobool577, label %if.else.593, label %if.then.578

if.then.578:                                      ; preds = %do.end.573
  br label %do.body.579

do.body.579:                                      ; preds = %if.then.578
  br label %do.body.580

do.body.580:                                      ; preds = %do.body.579
  br label %do.cond.581

do.cond.581:                                      ; preds = %do.body.580
  br label %do.end.582

do.end.582:                                       ; preds = %do.cond.581
  %278 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_profile_cache583 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %278, i32 0, i32 37
  %279 = load %struct.gsicc_profile_cache_s*, %struct.gsicc_profile_cache_s** %icc_profile_cache583, align 8, !tbaa !30
  %rc584 = getelementptr inbounds %struct.gsicc_profile_cache_s, %struct.gsicc_profile_cache_s* %279, i32 0, i32 2
  %free585 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc584, i32 0, i32 2
  %280 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free585, align 8, !tbaa !117
  %281 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_profile_cache586 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %281, i32 0, i32 37
  %282 = load %struct.gsicc_profile_cache_s*, %struct.gsicc_profile_cache_s** %icc_profile_cache586, align 8, !tbaa !30
  %rc587 = getelementptr inbounds %struct.gsicc_profile_cache_s, %struct.gsicc_profile_cache_s* %282, i32 0, i32 2
  %memory588 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc587, i32 0, i32 1
  %283 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory588, align 8, !tbaa !118
  %284 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_profile_cache589 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %284, i32 0, i32 37
  %285 = load %struct.gsicc_profile_cache_s*, %struct.gsicc_profile_cache_s** %icc_profile_cache589, align 8, !tbaa !30
  %286 = bitcast %struct.gsicc_profile_cache_s* %285 to i8*
  %287 = load i8*, i8** %cname, align 8, !tbaa !1
  call void %280(%struct.gs_memory_s* %283, i8* %286, i8* %287) #3
  br label %do.cond.590

do.cond.590:                                      ; preds = %do.end.582
  br label %do.end.591

do.end.591:                                       ; preds = %do.cond.590
  %288 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_profile_cache592 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %288, i32 0, i32 37
  store %struct.gsicc_profile_cache_s* null, %struct.gsicc_profile_cache_s** %icc_profile_cache592, align 8, !tbaa !30
  br label %if.end.597

if.else.593:                                      ; preds = %do.end.573
  br label %do.body.594

do.body.594:                                      ; preds = %if.else.593
  br label %do.cond.595

do.cond.595:                                      ; preds = %do.body.594
  br label %do.end.596

do.end.596:                                       ; preds = %do.cond.595
  br label %if.end.597

if.end.597:                                       ; preds = %do.end.596, %do.end.591
  br label %if.end.598

if.end.598:                                       ; preds = %if.end.597, %do.body.561
  br label %do.cond.599

do.cond.599:                                      ; preds = %if.end.598
  br label %do.end.600

do.end.600:                                       ; preds = %do.cond.599
  %289 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_profile_cache601 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %289, i32 0, i32 37
  store %struct.gsicc_profile_cache_s* null, %struct.gsicc_profile_cache_s** %icc_profile_cache601, align 8, !tbaa !30
  br label %do.body.602

do.body.602:                                      ; preds = %do.end.600
  %290 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_manager = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %290, i32 0, i32 35
  %291 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !28
  %tobool603 = icmp ne %struct.gsicc_manager_s* %291, null
  br i1 %tobool603, label %if.then.604, label %if.end.639

if.then.604:                                      ; preds = %do.body.602
  br label %do.body.605

do.body.605:                                      ; preds = %if.then.604
  br label %do.body.606

do.body.606:                                      ; preds = %do.body.605
  br label %do.cond.607

do.cond.607:                                      ; preds = %do.body.606
  br label %do.end.608

do.end.608:                                       ; preds = %do.cond.607
  %292 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_manager609 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %292, i32 0, i32 35
  %293 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager609, align 8, !tbaa !28
  %rc610 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %293, i32 0, i32 11
  %ref_count611 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc610, i32 0, i32 0
  %294 = load i64, i64* %ref_count611, align 8, !tbaa !103
  %add612 = add nsw i64 %294, -1
  store i64 %add612, i64* %ref_count611, align 8, !tbaa !103
  br label %do.cond.613

do.cond.613:                                      ; preds = %do.end.608
  br label %do.end.614

do.end.614:                                       ; preds = %do.cond.613
  %295 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_manager615 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %295, i32 0, i32 35
  %296 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager615, align 8, !tbaa !28
  %rc616 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %296, i32 0, i32 11
  %ref_count617 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc616, i32 0, i32 0
  %297 = load i64, i64* %ref_count617, align 8, !tbaa !103
  %tobool618 = icmp ne i64 %297, 0
  br i1 %tobool618, label %if.else.634, label %if.then.619

if.then.619:                                      ; preds = %do.end.614
  br label %do.body.620

do.body.620:                                      ; preds = %if.then.619
  br label %do.body.621

do.body.621:                                      ; preds = %do.body.620
  br label %do.cond.622

do.cond.622:                                      ; preds = %do.body.621
  br label %do.end.623

do.end.623:                                       ; preds = %do.cond.622
  %298 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_manager624 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %298, i32 0, i32 35
  %299 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager624, align 8, !tbaa !28
  %rc625 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %299, i32 0, i32 11
  %free626 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc625, i32 0, i32 2
  %300 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free626, align 8, !tbaa !119
  %301 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_manager627 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %301, i32 0, i32 35
  %302 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager627, align 8, !tbaa !28
  %rc628 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %302, i32 0, i32 11
  %memory629 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc628, i32 0, i32 1
  %303 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory629, align 8, !tbaa !120
  %304 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_manager630 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %304, i32 0, i32 35
  %305 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager630, align 8, !tbaa !28
  %306 = bitcast %struct.gsicc_manager_s* %305 to i8*
  %307 = load i8*, i8** %cname, align 8, !tbaa !1
  call void %300(%struct.gs_memory_s* %303, i8* %306, i8* %307) #3
  br label %do.cond.631

do.cond.631:                                      ; preds = %do.end.623
  br label %do.end.632

do.end.632:                                       ; preds = %do.cond.631
  %308 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_manager633 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %308, i32 0, i32 35
  store %struct.gsicc_manager_s* null, %struct.gsicc_manager_s** %icc_manager633, align 8, !tbaa !28
  br label %if.end.638

if.else.634:                                      ; preds = %do.end.614
  br label %do.body.635

do.body.635:                                      ; preds = %if.else.634
  br label %do.cond.636

do.cond.636:                                      ; preds = %do.body.635
  br label %do.end.637

do.end.637:                                       ; preds = %do.cond.636
  br label %if.end.638

if.end.638:                                       ; preds = %do.end.637, %do.end.632
  br label %if.end.639

if.end.639:                                       ; preds = %if.end.638, %do.body.602
  br label %do.cond.640

do.cond.640:                                      ; preds = %if.end.639
  br label %do.end.641

do.end.641:                                       ; preds = %do.cond.640
  %309 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_manager642 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %309, i32 0, i32 35
  store %struct.gsicc_manager_s* null, %struct.gsicc_manager_s** %icc_manager642, align 8, !tbaa !28
  %310 = bitcast %struct.gx_device_halftone_s** %pdht to i8*
  call void @llvm.lifetime.end(i64 8, i8* %310) #1
  %311 = bitcast i8** %cname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %311) #1
  ret void
}

declare void @gx_device_halftone_release(%struct.gx_device_halftone_s*, %struct.gs_memory_s*) #2

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @line_params_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %plp = alloca %struct.gx_line_params_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_line_params_s** %plp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_line_params_s*
  store %struct.gx_line_params_s* %2, %struct.gx_line_params_s** %plp, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !5
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.default:                                       ; preds = %entry
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %4 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %plp, align 8, !tbaa !1
  %dash = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %4, i32 0, i32 11
  %pattern_size = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash, i32 0, i32 1
  %5 = load i32, i32* %pattern_size, align 4, !tbaa !121
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %6 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %plp, align 8, !tbaa !1
  %dash1 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %6, i32 0, i32 11
  %pattern = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash1, i32 0, i32 0
  %7 = load float*, float** %pattern, align 8, !tbaa !122
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float* [ null, %cond.true ], [ %7, %cond.false ]
  %8 = bitcast float* %cond to i8*
  %9 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %9, i32 0, i32 0
  store i8* %8, i8** %ptr, align 8, !tbaa !25
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %sw.default
  %10 = bitcast %struct.gx_line_params_s** %plp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  %11 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %11
}

; Function Attrs: nounwind uwtable
define internal void @line_params_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %plp = alloca %struct.gx_line_params_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_line_params_s** %plp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_line_params_s*
  store %struct.gx_line_params_s* %2, %struct.gx_line_params_s** %plp, align 8, !tbaa !1
  %3 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %plp, align 8, !tbaa !1
  %dash = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %3, i32 0, i32 11
  %pattern_size = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash, i32 0, i32 1
  %4 = load i32, i32* %pattern_size, align 4, !tbaa !121
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gc_state_s* %5 to %struct.gc_procs_common_s**
  %7 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %6, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %7, i32 0, i32 0
  %8 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !46
  %9 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %plp, align 8, !tbaa !1
  %dash1 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %9, i32 0, i32 11
  %pattern = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash1, i32 0, i32 0
  %10 = load float*, float** %pattern, align 8, !tbaa !122
  %11 = bitcast float* %10 to i8*
  %12 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %8(i8* %11, %struct.gc_state_s* %12) #3
  %13 = bitcast i8* %call to float*
  %14 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %plp, align 8, !tbaa !1
  %dash2 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %14, i32 0, i32 11
  %pattern3 = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash2, i32 0, i32 0
  store float* %13, float** %pattern3, align 8, !tbaa !122
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = bitcast %struct.gx_line_params_s** %plp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  ret void
}

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
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 32}
!8 = !{!"gs_memory_struct_type_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!9 = !{!10, !2, i64 16}
!10 = !{!"gs_imager_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !11, i64 24, !6, i64 128, !15, i64 132, !6, i64 168, !16, i64 176, !16, i64 192, !6, i64 208, !6, i64 212, !18, i64 216, !3, i64 220, !19, i64 224, !19, i64 228, !20, i64 232, !21, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !12, i64 296, !22, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !12, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !23, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !24, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !24, i64 1336}
!11 = !{!"gx_line_params_s", !12, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !6, i64 36, !13, i64 40, !14, i64 64}
!12 = !{!"float", !3, i64 0}
!13 = !{!"gs_matrix_s", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20}
!14 = !{!"gx_dash_params_s", !2, i64 0, !6, i64 8, !12, i64 12, !6, i64 16, !12, i64 20, !6, i64 24, !6, i64 28, !12, i64 32}
!15 = !{!"gs_matrix_fixed_s", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!16 = !{!"gs_point_s", !17, i64 0, !17, i64 8}
!17 = !{!"double", !3, i64 0}
!18 = !{!"short", !3, i64 0}
!19 = !{!"gs_transparency_source_s", !12, i64 0}
!20 = !{!"gs_xstate_trans_flags", !6, i64 0, !6, i64 4}
!21 = !{!"long", !3, i64 0}
!22 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!23 = !{!"gx_transfer_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !2, i64 56}
!24 = !{!"gs_devicen_color_map_s", !6, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !21, i64 16, !3, i64 24}
!25 = !{!26, !2, i64 0}
!26 = !{!"enum_ptr_s", !2, i64 0, !6, i64 8}
!27 = !{!10, !2, i64 264}
!28 = !{!10, !2, i64 336}
!29 = !{!10, !2, i64 344}
!30 = !{!10, !2, i64 352}
!31 = !{!10, !2, i64 368}
!32 = !{!10, !2, i64 392}
!33 = !{!10, !2, i64 400}
!34 = !{!10, !2, i64 416}
!35 = !{!10, !2, i64 424}
!36 = !{!10, !2, i64 440}
!37 = !{!10, !2, i64 456}
!38 = !{!10, !2, i64 472}
!39 = !{!10, !2, i64 488}
!40 = !{!10, !2, i64 1008}
!41 = !{!10, !2, i64 1304}
!42 = !{!10, !2, i64 1312}
!43 = !{!10, !2, i64 1320}
!44 = !{!10, !2, i64 1328}
!45 = !{!8, !2, i64 40}
!46 = !{!47, !2, i64 0}
!47 = !{!"gc_procs_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!48 = !{!10, !2, i64 8}
!49 = !{!50, !6, i64 4}
!50 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!51 = !{!50, !6, i64 0}
!52 = !{!10, !6, i64 408}
!53 = !{!54, !2, i64 72}
!54 = !{!"gs_memory_s", !2, i64 0, !55, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!55 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!56 = !{!57, !21, i64 0}
!57 = !{!"gx_transfer_map_s", !58, i64 0, !2, i64 24, !59, i64 32, !21, i64 48, !3, i64 56}
!58 = !{!"rc_header_s", !21, i64 0, !2, i64 8, !2, i64 16}
!59 = !{!"gs_mapping_closure_s", !2, i64 0, !2, i64 8}
!60 = !{!57, !2, i64 8}
!61 = !{!57, !2, i64 16}
!62 = !{!57, !2, i64 24}
!63 = !{!57, !21, i64 48}
!64 = !{!18, !18, i64 0}
!65 = !{!10, !2, i64 1016}
!66 = !{!10, !6, i64 316}
!67 = !{i64 0, i64 4, !5, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 4, !68, i64 28, i64 4, !69, i64 32, i64 4, !69, i64 36, i64 4, !69, i64 40, i64 4, !69, i64 44, i64 4, !5, i64 48, i64 4, !68, i64 52, i64 4, !68, i64 56, i64 4, !68, i64 60, i64 4, !5, i64 64, i64 4, !68, i64 68, i64 4, !68, i64 72, i64 4, !68, i64 76, i64 4, !68, i64 80, i64 4, !68, i64 84, i64 4, !68, i64 88, i64 8, !1, i64 96, i64 4, !5, i64 100, i64 4, !68, i64 104, i64 4, !5, i64 108, i64 4, !68, i64 112, i64 4, !5, i64 116, i64 4, !5, i64 120, i64 4, !68, i64 128, i64 4, !5, i64 132, i64 4, !68, i64 136, i64 4, !68, i64 140, i64 4, !68, i64 144, i64 4, !68, i64 148, i64 4, !68, i64 152, i64 4, !68, i64 156, i64 4, !5, i64 160, i64 4, !5, i64 164, i64 4, !5, i64 168, i64 4, !5, i64 176, i64 8, !70, i64 184, i64 8, !70, i64 192, i64 8, !70, i64 200, i64 8, !70, i64 208, i64 4, !5, i64 212, i64 4, !5, i64 216, i64 2, !64, i64 220, i64 4, !69, i64 224, i64 4, !68, i64 228, i64 4, !68, i64 232, i64 4, !5, i64 236, i64 4, !5, i64 240, i64 8, !71, i64 248, i64 4, !5, i64 252, i64 4, !5, i64 256, i64 4, !5, i64 264, i64 8, !1, i64 272, i64 4, !5, i64 276, i64 4, !5, i64 280, i64 4, !5, i64 284, i64 4, !5, i64 288, i64 4, !5, i64 292, i64 4, !5, i64 296, i64 4, !68, i64 300, i64 4, !5, i64 304, i64 4, !5, i64 308, i64 4, !5, i64 312, i64 4, !5, i64 316, i64 4, !5, i64 320, i64 4, !68, i64 324, i64 4, !5, i64 328, i64 4, !5, i64 336, i64 8, !1, i64 344, i64 8, !1, i64 352, i64 8, !1, i64 360, i64 8, !1, i64 368, i64 8, !1, i64 376, i64 16, !69, i64 392, i64 8, !1, i64 400, i64 8, !1, i64 408, i64 4, !5, i64 416, i64 8, !1, i64 424, i64 8, !1, i64 432, i64 4, !5, i64 440, i64 8, !1, i64 448, i64 4, !5, i64 456, i64 8, !1, i64 464, i64 4, !5, i64 472, i64 8, !1, i64 480, i64 4, !5, i64 488, i64 8, !1, i64 496, i64 512, !69, i64 1008, i64 8, !1, i64 1016, i64 8, !1, i64 1024, i64 4, !5, i64 1028, i64 4, !69, i64 1032, i64 4, !5, i64 1036, i64 4, !5, i64 1040, i64 8, !71, i64 1048, i64 256, !69, i64 1304, i64 8, !1, i64 1312, i64 8, !1, i64 1320, i64 8, !1, i64 1328, i64 8, !1, i64 1336, i64 4, !5, i64 1340, i64 4, !69, i64 1344, i64 4, !5, i64 1348, i64 4, !5, i64 1352, i64 8, !71, i64 1360, i64 256, !69}
!68 = !{!12, !12, i64 0}
!69 = !{!3, !3, i64 0}
!70 = !{!17, !17, i64 0}
!71 = !{!21, !21, i64 0}
!72 = !{!73, !21, i64 8}
!73 = !{!"gs_halftone_s", !3, i64 0, !58, i64 8, !3, i64 32}
!74 = !{!75, !21, i64 160}
!75 = !{!"gx_device_halftone_s", !76, i64 0, !58, i64 160, !21, i64 184, !3, i64 192, !2, i64 200, !6, i64 208, !6, i64 212, !6, i64 216, !6, i64 220}
!76 = !{!"gx_ht_order_s", !77, i64 0, !18, i64 40, !18, i64 42, !18, i64 44, !18, i64 46, !18, i64 48, !18, i64 50, !6, i64 52, !6, i64 56, !6, i64 60, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !78, i64 112, !2, i64 144, !6, i64 152}
!77 = !{!"gx_ht_cell_params_s", !18, i64 0, !18, i64 2, !18, i64 4, !18, i64 6, !18, i64 8, !18, i64 10, !21, i64 16, !18, i64 24, !18, i64 26, !6, i64 28, !6, i64 32, !6, i64 36}
!78 = !{!"gx_ht_order_screen_params_s", !13, i64 0, !21, i64 24}
!79 = !{!80, !21, i64 8}
!80 = !{!"gs_cie_render_s", !3, i64 0, !58, i64 8, !21, i64 32, !2, i64 40, !81, i64 48, !83, i64 72, !84, i64 112, !85, i64 136, !83, i64 176, !87, i64 216, !84, i64 240, !83, i64 264, !87, i64 304, !84, i64 328, !88, i64 352, !84, i64 416, !84, i64 440, !83, i64 464, !3, i64 504, !83, i64 516, !82, i64 556, !82, i64 568, !91, i64 584}
!81 = !{!"gs_cie_wb_s", !82, i64 0, !82, i64 12}
!82 = !{!"gs_vector3_s", !12, i64 0, !12, i64 4, !12, i64 8}
!83 = !{!"gs_matrix3_s", !82, i64 0, !82, i64 12, !82, i64 24, !6, i64 36}
!84 = !{!"gs_range3_s", !3, i64 0}
!85 = !{!"gs_cie_transform_proc3_s", !2, i64 0, !2, i64 8, !86, i64 16, !2, i64 32}
!86 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!87 = !{!"gs_cie_render_proc3_s", !3, i64 0}
!88 = !{!"gs_cie_render_table_s", !89, i64 0, !90, i64 32}
!89 = !{!"gx_color_lookup_table_s", !6, i64 0, !3, i64 4, !6, i64 20, !2, i64 24}
!90 = !{!"gs_cie_render_table_procs_s", !3, i64 0}
!91 = !{!"", !92, i64 0, !3, i64 24840, !3, i64 37368, !6, i64 45720}
!92 = !{!"gx_cie_vector_cache3_s", !3, i64 0, !3, i64 24816}
!93 = !{!94, !21, i64 24}
!94 = !{!"gx_cie_joint_caches_s", !21, i64 0, !21, i64 8, !3, i64 16, !3, i64 20, !58, i64 24, !2, i64 48, !6, i64 56, !6, i64 60, !92, i64 64, !95, i64 24904, !6, i64 25000, !92, i64 25008, !6, i64 49848}
!95 = !{!"gs_cie_wbsd_s", !96, i64 0, !96, i64 24, !96, i64 48, !96, i64 72}
!96 = !{!"", !82, i64 0, !82, i64 12}
!97 = !{!98, !21, i64 8}
!98 = !{!"gs_color_space_s", !2, i64 0, !58, i64 8, !21, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !3, i64 72}
!99 = !{!100, !21, i64 16}
!100 = !{!"gsicc_link_cache_s", !2, i64 0, !6, i64 8, !58, i64 16, !2, i64 40, !2, i64 48, !2, i64 56, !6, i64 64}
!101 = !{!102, !21, i64 16}
!102 = !{!"gsicc_profile_cache_s", !2, i64 0, !6, i64 8, !58, i64 16, !2, i64 40}
!103 = !{!104, !21, i64 88}
!104 = !{!"gsicc_manager_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !6, i64 64, !2, i64 72, !2, i64 80, !58, i64 88}
!105 = !{!94, !2, i64 40}
!106 = !{!94, !2, i64 32}
!107 = !{!80, !2, i64 24}
!108 = !{!80, !2, i64 16}
!109 = !{!75, !2, i64 176}
!110 = !{!75, !2, i64 168}
!111 = !{!73, !2, i64 24}
!112 = !{!73, !2, i64 16}
!113 = !{!98, !2, i64 24}
!114 = !{!98, !2, i64 16}
!115 = !{!100, !2, i64 32}
!116 = !{!100, !2, i64 24}
!117 = !{!102, !2, i64 32}
!118 = !{!102, !2, i64 24}
!119 = !{!104, !2, i64 104}
!120 = !{!104, !2, i64 96}
!121 = !{!11, !6, i64 72}
!122 = !{!11, !2, i64 64}
