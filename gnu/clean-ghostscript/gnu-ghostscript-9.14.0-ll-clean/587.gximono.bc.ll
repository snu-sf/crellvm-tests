; ModuleID = './gximono.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_device_color_type_s = type { %struct.gs_memory_struct_type_s*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* }
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
%struct.gx_io_device_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
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
%struct.gx_device_color_saved_s = type { %struct.gx_device_color_type_s*, %union._svc, %struct.gs_int_point_s }
%union._svc = type { %struct._svbin, [304 x i8] }
%struct._svbin = type { [2 x i64], i32, i32 }
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
%struct.gx_color_map_procs_s = type { void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, %struct.gs_color_space_s*)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_imager_state_s*, %struct.gx_device_s*)* }
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
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
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
%struct.gx_rop_source_s = type { i8*, i32, i32, i64, [2 x i64], i32, i32 }
%struct.gx_image_enum_s = type { %struct.gx_image_type_s*, %struct.gx_image_enum_procs_s*, %struct.gx_device_s*, %struct.gs_memory_s*, i64, i32, i32, [65 x i32], [65 x i32], i32, i32, i8, i8, i8, i8, i32, %struct.mc_, i8, i8, i8, i8, %struct.gs_matrix_s, %struct.r_, %struct.anon.11, i32, i32, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*, {}*, %struct.gs_imager_state_s*, %struct.gs_color_space_s*, i8*, i32, i8*, i32, i32, i32, i8, i8, i8, i8, %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s, i32, i32, i32, i32, %struct.gx_device_clip_s*, %struct.gx_device_rop_texture_s*, %struct.stream_image_scale_state_s*, i32, %struct.gs_int_point_s, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, %struct.dd_, i32, i32, %struct.gs_int_point_s, i32, i32, i32, i32, i32, [65 x %struct.sample_map_s], %struct.gx_image_clue_s*, %struct.gx_device_color_s, %struct.gx_device_color_s, %struct.gx_device_color_s*, %struct.gx_device_color_s*, %struct.gsicc_link_s*, %struct.gx_image_color_cache_s*, i8*, i32, i32, i32, i8*, i32, i32, %struct.ht_landscape_info_s, %struct.gx_image_icc_setup_s, i32 }
%struct.mc_ = type { [130 x i32], i32, i32, i32 }
%struct.r_ = type { i32, i32, i32, i32 }
%struct.anon.11 = type { i32, i32, i32, i32 }
%struct.sample_map_s = type { %union.sample_lookup_s, [16 x float], float, i32, i32 }
%union.sample_lookup_s = type { [16 x i32], [192 x i8] }
%struct.gx_device_clip_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, %struct.gx_clip_list_s, %struct.gx_clip_rect_s*, %struct.gs_int_point_s, %struct.gs_fixed_rect_s, i32 }
%struct.gx_clip_list_s = type { %struct.gx_clip_rect_s, %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, i32, i32, i32 }
%struct.gx_clip_rect_s = type { %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, i32, i32, i32, i32, i8 }
%struct.gx_device_rop_texture_s = type opaque
%struct.stream_image_scale_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %struct.stream_image_scale_params_s }
%struct.stream_template_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8] }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
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
%struct.gx_dda_int_s = type { %struct.ia_, %struct.ie_ }
%struct.ia_ = type { i32, i32 }
%struct.ie_ = type { i32, i32, i32 }

@gx_dc_type_data_pure = external constant %struct.gx_device_color_type_s, align 8
@gx_dc_type_data_null = external constant %struct.gx_device_color_type_s, align 8
@gx_dc_type_data_none = external constant %struct.gx_device_color_type_s, align 8

; Function Attrs: nounwind uwtable
define i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* @gs_image_class_3_mono(%struct.gx_image_enum_s* %penum) #0 {
entry:
  %retval = alloca i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)*, align 8
  %penum.addr = alloca %struct.gx_image_enum_s*, align 8
  %use_fast_code = alloca i32, align 4
  %code = alloca i32, align 4
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %rendering_params = alloca %struct.gsicc_rendering_param_s, align 4
  %num_des_comps = alloca i32, align 4
  %dev_profile = alloca %struct.cmm_dev_profile_s*, align 8
  %dev_color_ok = alloca i32, align 4
  %is_planar_dev = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_image_enum_s* %penum, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = bitcast i32* %use_fast_code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 1, i32* %use_fast_code, align 4, !tbaa !5
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %2 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct.gsicc_rendering_param_s* %rendering_params to i8*
  call void @llvm.lifetime.start(i64 24, i8* %3) #1
  %4 = bitcast i32* %num_des_comps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %dev_color_ok to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %dev_color_ok, align 4, !tbaa !5
  %7 = bitcast i32* %is_planar_dev to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %8, i32 0, i32 2
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !7
  %is_planar = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 17
  %10 = load i32, i32* %is_planar, align 4, !tbaa !30
  store i32 %10, i32* %is_planar_dev, align 4, !tbaa !5
  %11 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %spp = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %11, i32 0, i32 14
  %12 = load i8, i8* %spp, align 1, !tbaa !42
  %conv = zext i8 %12 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.end.211

if.then:                                          ; preds = %entry
  %13 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev2 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %13, i32 0, i32 2
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev2, align 8, !tbaa !7
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %14, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %15 = load i32, i32* %num_components, align 4, !tbaa !43
  %cmp3 = icmp eq i32 %15, 1
  br i1 %cmp3, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %if.then
  %16 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev5 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %16, i32 0, i32 2
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev5, align 8, !tbaa !7
  %color_info6 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info6, i32 0, i32 3
  %18 = load i16, i16* %depth, align 2, !tbaa !44
  %conv7 = zext i16 %18 to i32
  %cmp8 = icmp eq i32 %conv7, 1
  br i1 %cmp8, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true, %if.then
  %19 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev10 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %19, i32 0, i32 2
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev10, align 8, !tbaa !7
  %color_info11 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 11
  %num_components12 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info11, i32 0, i32 1
  %21 = load i32, i32* %num_components12, align 4, !tbaa !43
  %cmp13 = icmp eq i32 %21, 4
  br i1 %cmp13, label %land.lhs.true.15, label %land.end

land.lhs.true.15:                                 ; preds = %lor.rhs
  %22 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev16 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %22, i32 0, i32 2
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %dev16, align 8, !tbaa !7
  %color_info17 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %23, i32 0, i32 11
  %depth18 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info17, i32 0, i32 3
  %24 = load i16, i16* %depth18, align 2, !tbaa !44
  %conv19 = zext i16 %24 to i32
  %cmp20 = icmp eq i32 %conv19, 4
  br i1 %cmp20, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.15
  %25 = load i32, i32* %is_planar_dev, align 4, !tbaa !5
  %tobool = icmp ne i32 %25, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.15, %lor.rhs
  %26 = phi i1 [ false, %land.lhs.true.15 ], [ false, %lor.rhs ], [ %tobool, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.lhs.true
  %27 = phi i1 [ true, %land.lhs.true ], [ %26, %land.end ]
  %lor.ext = zext i1 %27 to i32
  store i32 %lor.ext, i32* %dev_color_ok, align 4, !tbaa !5
  %28 = load i32, i32* %use_fast_code, align 4, !tbaa !5
  %tobool22 = icmp ne i32 %28, 0
  br i1 %tobool22, label %land.lhs.true.23, label %if.end.164

land.lhs.true.23:                                 ; preds = %lor.end
  %29 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs24 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %29, i32 0, i32 31
  %30 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs24, align 8, !tbaa !45
  %cmp25 = icmp ne %struct.gs_color_space_s* %30, null
  br i1 %cmp25, label %land.lhs.true.27, label %if.end.164

land.lhs.true.27:                                 ; preds = %land.lhs.true.23
  %31 = load i32, i32* %dev_color_ok, align 4, !tbaa !5
  %tobool28 = icmp ne i32 %31, 0
  br i1 %tobool28, label %land.lhs.true.29, label %if.end.164

land.lhs.true.29:                                 ; preds = %land.lhs.true.27
  %32 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %bps = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %32, i32 0, i32 11
  %33 = load i8, i8* %bps, align 1, !tbaa !46
  %conv30 = zext i8 %33 to i32
  %cmp31 = icmp eq i32 %conv30, 8
  br i1 %cmp31, label %land.lhs.true.33, label %if.end.164

land.lhs.true.33:                                 ; preds = %land.lhs.true.29
  %34 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %posture = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %34, i32 0, i32 37
  %35 = load i32, i32* %posture, align 4, !tbaa !47
  %cmp34 = icmp eq i32 %35, 0
  br i1 %cmp34, label %land.lhs.true.39, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.33
  %36 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %posture36 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %36, i32 0, i32 37
  %37 = load i32, i32* %posture36, align 4, !tbaa !47
  %cmp37 = icmp eq i32 %37, 1
  br i1 %cmp37, label %land.lhs.true.39, label %if.end.164

land.lhs.true.39:                                 ; preds = %lor.lhs.false, %land.lhs.true.33
  %38 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %image_parent_type = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %38, i32 0, i32 78
  %39 = load i32, i32* %image_parent_type, align 4, !tbaa !48
  %cmp40 = icmp eq i32 %39, 0
  br i1 %cmp40, label %if.then.42, label %if.end.164

if.then.42:                                       ; preds = %land.lhs.true.39
  %40 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_setup = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %40, i32 0, i32 80
  %need_decode = getelementptr inbounds %struct.gx_image_icc_setup_s, %struct.gx_image_icc_setup_s* %icc_setup, i32 0, i32 0
  store i32 0, i32* %need_decode, align 4, !tbaa !49
  %41 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %41, i32 0, i32 64
  %arrayidx = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map, i32 0, i64 0
  %decoding = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx, i32 0, i32 3
  %42 = load i32, i32* %decoding, align 4, !tbaa !50
  %cmp43 = icmp ne i32 %42, 0
  br i1 %cmp43, label %if.then.45, label %if.end.67

if.then.45:                                       ; preds = %if.then.42
  %43 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map46 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %43, i32 0, i32 64
  %arrayidx47 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map46, i32 0, i64 0
  %decoding48 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx47, i32 0, i32 3
  %44 = load i32, i32* %decoding48, align 4, !tbaa !50
  %cmp49 = icmp eq i32 %44, 2
  br i1 %cmp49, label %land.lhs.true.51, label %if.then.64

land.lhs.true.51:                                 ; preds = %if.then.45
  %45 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map52 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %45, i32 0, i32 64
  %arrayidx53 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map52, i32 0, i64 0
  %decode_factor = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx53, i32 0, i32 2
  %46 = load float, float* %decode_factor, align 4, !tbaa !52
  %conv54 = fpext float %46 to double
  %cmp55 = fcmp oeq double %conv54, 1.000000e+00
  br i1 %cmp55, label %land.lhs.true.57, label %if.then.64

land.lhs.true.57:                                 ; preds = %land.lhs.true.51
  %47 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map58 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %47, i32 0, i32 64
  %arrayidx59 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map58, i32 0, i64 0
  %decode_lookup = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx59, i32 0, i32 1
  %arrayidx60 = getelementptr inbounds [16 x float], [16 x float]* %decode_lookup, i32 0, i64 0
  %48 = load float, float* %arrayidx60, align 4, !tbaa !53
  %conv61 = fpext float %48 to double
  %cmp62 = fcmp oeq double %conv61, 0.000000e+00
  br i1 %cmp62, label %if.end, label %if.then.64

if.then.64:                                       ; preds = %land.lhs.true.57, %land.lhs.true.51, %if.then.45
  %49 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_setup65 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %49, i32 0, i32 80
  %need_decode66 = getelementptr inbounds %struct.gx_image_icc_setup_s, %struct.gx_image_icc_setup_s* %icc_setup65, i32 0, i32 0
  store i32 1, i32* %need_decode66, align 4, !tbaa !49
  br label %if.end

if.end:                                           ; preds = %if.then.64, %land.lhs.true.57
  br label %if.end.67

if.end.67:                                        ; preds = %if.end, %if.then.42
  %50 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev68 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %50, i32 0, i32 2
  %51 = load %struct.gx_device_s*, %struct.gx_device_s** %dev68, align 8, !tbaa !7
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %51, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %52 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !54
  %53 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev69 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %53, i32 0, i32 2
  %54 = load %struct.gx_device_s*, %struct.gx_device_s** %dev69, align 8, !tbaa !7
  %call = call i32 %52(%struct.gx_device_s* %54, %struct.cmm_dev_profile_s** %dev_profile) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %55 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %call70 = call i32 @gsicc_get_device_profile_comps(%struct.cmm_dev_profile_s* %55) #5
  store i32 %call70, i32* %num_des_comps, align 4, !tbaa !5
  %56 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pis = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %56, i32 0, i32 30
  %57 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !55
  %blackptcomp = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %57, i32 0, i32 34
  %58 = load i32, i32* %blackptcomp, align 4, !tbaa !56
  %black_point_comp = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 1
  store i32 %58, i32* %black_point_comp, align 4, !tbaa !67
  %graphics_type_tag = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 3
  store i32 2, i32* %graphics_type_tag, align 4, !tbaa !69
  %override_icc = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 5
  store i32 0, i32* %override_icc, align 4, !tbaa !70
  %preserve_black = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 2
  store i32 8, i32* %preserve_black, align 4, !tbaa !71
  %59 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pis71 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %59, i32 0, i32 30
  %60 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis71, align 8, !tbaa !55
  %renderingintent = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %60, i32 0, i32 33
  %61 = load i32, i32* %renderingintent, align 4, !tbaa !72
  %rendering_intent = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 0
  store i32 %61, i32* %rendering_intent, align 4, !tbaa !73
  %cmm = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 4
  store i32 0, i32* %cmm, align 4, !tbaa !74
  %62 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs72 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %62, i32 0, i32 31
  %63 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs72, align 8, !tbaa !45
  %call73 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %63) #5
  %cmp74 = icmp eq i32 %call73, 10
  br i1 %cmp74, label %if.then.76, label %if.else

if.then.76:                                       ; preds = %if.end.67
  %64 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs77 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %64, i32 0, i32 31
  %65 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs77, align 8, !tbaa !45
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %65, i32 0, i32 3
  %66 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !75
  store %struct.gs_color_space_s* %66, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  br label %if.end.79

if.else:                                          ; preds = %if.end.67
  %67 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs78 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %67, i32 0, i32 31
  %68 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs78, align 8, !tbaa !45
  store %struct.gs_color_space_s* %68, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  br label %if.end.79

if.end.79:                                        ; preds = %if.else, %if.then.76
  %69 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call80 = call i32 @gs_color_space_is_PSCIE(%struct.gs_color_space_s* %69) #5
  %tobool81 = icmp ne i32 %call80, 0
  br i1 %tobool81, label %land.lhs.true.82, label %if.end.87

land.lhs.true.82:                                 ; preds = %if.end.79
  %70 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %icc_equivalent = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %70, i32 0, i32 4
  %71 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent, align 8, !tbaa !77
  %cmp83 = icmp ne %struct.gs_color_space_s* %71, null
  br i1 %cmp83, label %if.then.85, label %if.end.87

if.then.85:                                       ; preds = %land.lhs.true.82
  %72 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %icc_equivalent86 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %72, i32 0, i32 4
  %73 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent86, align 8, !tbaa !77
  store %struct.gs_color_space_s* %73, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.85, %land.lhs.true.82, %if.end.79
  %74 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %74, i32 0, i32 6
  %75 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !78
  %cmp88 = icmp eq %struct.cmm_profile_s* %75, null
  br i1 %cmp88, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %if.end.87
  br label %not_fast_halftoning

if.end.91:                                        ; preds = %if.end.87
  %76 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %cmm_icc_profile_data92 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %76, i32 0, i32 6
  %77 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data92, align 8, !tbaa !78
  %islab = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %77, i32 0, i32 2
  %78 = load i32, i32* %islab, align 4, !tbaa !79
  %79 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_setup93 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %79, i32 0, i32 80
  %is_lab = getelementptr inbounds %struct.gx_image_icc_setup_s, %struct.gx_image_icc_setup_s* %icc_setup93, i32 0, i32 1
  store i32 %78, i32* %is_lab, align 4, !tbaa !82
  %80 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev94 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %80, i32 0, i32 2
  %81 = load %struct.gx_device_s*, %struct.gx_device_s** %dev94, align 8, !tbaa !7
  %color_info95 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %81, i32 0, i32 11
  %num_components96 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info95, i32 0, i32 1
  %82 = load i32, i32* %num_components96, align 4, !tbaa !43
  %cmp97 = icmp sgt i32 %82, 1
  br i1 %cmp97, label %cond.true, label %lor.lhs.false.99

lor.lhs.false.99:                                 ; preds = %if.end.91
  %83 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev100 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %83, i32 0, i32 2
  %84 = load %struct.gx_device_s*, %struct.gx_device_s** %dev100, align 8, !tbaa !7
  %color_info101 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %84, i32 0, i32 11
  %gray_index = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info101, i32 0, i32 4
  %85 = load i8, i8* %gray_index, align 1, !tbaa !83
  %conv102 = zext i8 %85 to i32
  %cmp103 = icmp eq i32 %conv102, 255
  br i1 %cmp103, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false.99, %if.end.91
  %86 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev105 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %86, i32 0, i32 2
  %87 = load %struct.gx_device_s*, %struct.gx_device_s** %dev105, align 8, !tbaa !7
  %color_info106 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %87, i32 0, i32 11
  %max_color = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info106, i32 0, i32 6
  %88 = load i32, i32* %max_color, align 4, !tbaa !84
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false.99
  %89 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev107 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %89, i32 0, i32 2
  %90 = load %struct.gx_device_s*, %struct.gx_device_s** %dev107, align 8, !tbaa !7
  %color_info108 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %90, i32 0, i32 11
  %max_gray = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info108, i32 0, i32 5
  %91 = load i32, i32* %max_gray, align 4, !tbaa !85
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %88, %cond.true ], [ %91, %cond.false ]
  %cmp109 = icmp ult i32 %cond, 31
  %conv110 = zext i1 %cmp109 to i32
  %92 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_setup111 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %92, i32 0, i32 80
  %must_halftone = getelementptr inbounds %struct.gx_image_icc_setup_s, %struct.gx_image_icc_setup_s* %icc_setup111, i32 0, i32 2
  store i32 %conv110, i32* %must_halftone, align 4, !tbaa !86
  %93 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pis112 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %93, i32 0, i32 30
  %94 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis112, align 8, !tbaa !55
  %95 = load i32, i32* %num_des_comps, align 4, !tbaa !5
  %call113 = call i32 @gx_has_transfer(%struct.gs_imager_state_s* %94, i32 %95) #5
  %96 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_setup114 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %96, i32 0, i32 80
  %has_transfer = getelementptr inbounds %struct.gx_image_icc_setup_s, %struct.gx_image_icc_setup_s* %icc_setup114, i32 0, i32 3
  store i32 %call113, i32* %has_transfer, align 4, !tbaa !87
  %97 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_setup115 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %97, i32 0, i32 80
  %is_lab116 = getelementptr inbounds %struct.gx_image_icc_setup_s, %struct.gx_image_icc_setup_s* %icc_setup115, i32 0, i32 1
  %98 = load i32, i32* %is_lab116, align 4, !tbaa !82
  %tobool117 = icmp ne i32 %98, 0
  br i1 %tobool117, label %if.then.118, label %if.end.121

if.then.118:                                      ; preds = %cond.end
  %99 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_setup119 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %99, i32 0, i32 80
  %need_decode120 = getelementptr inbounds %struct.gx_image_icc_setup_s, %struct.gx_image_icc_setup_s* %icc_setup119, i32 0, i32 0
  store i32 0, i32* %need_decode120, align 4, !tbaa !49
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.118, %cond.end
  %100 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_link = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %100, i32 0, i32 70
  %101 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link, align 8, !tbaa !88
  %cmp122 = icmp eq %struct.gsicc_link_s* %101, null
  br i1 %cmp122, label %if.then.124, label %if.end.129

if.then.124:                                      ; preds = %if.end.121
  %102 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pis125 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %102, i32 0, i32 30
  %103 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis125, align 8, !tbaa !55
  %104 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev126 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %104, i32 0, i32 2
  %105 = load %struct.gx_device_s*, %struct.gx_device_s** %dev126, align 8, !tbaa !7
  %106 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %107 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %107, i32 0, i32 3
  %108 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !89
  %call127 = call %struct.gsicc_link_s* @gsicc_get_link(%struct.gs_imager_state_s* %103, %struct.gx_device_s* %105, %struct.gs_color_space_s* %106, %struct.gs_color_space_s* null, %struct.gsicc_rendering_param_s* %rendering_params, %struct.gs_memory_s* %108) #5
  %109 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_link128 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %109, i32 0, i32 70
  store %struct.gsicc_link_s* %call127, %struct.gsicc_link_s** %icc_link128, align 8, !tbaa !88
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.124, %if.end.121
  %110 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %use_cie_range = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %110, i32 0, i32 81
  store i32 0, i32* %use_cie_range, align 4, !tbaa !90
  %111 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs130 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %111, i32 0, i32 31
  %112 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs130, align 8, !tbaa !45
  %call131 = call i32 @gs_color_space_is_PSCIE(%struct.gs_color_space_s* %112) #5
  %tobool132 = icmp ne i32 %call131, 0
  br i1 %tobool132, label %land.lhs.true.133, label %if.end.149

land.lhs.true.133:                                ; preds = %if.end.129
  %113 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs134 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %113, i32 0, i32 31
  %114 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs134, align 8, !tbaa !45
  %icc_equivalent135 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %114, i32 0, i32 4
  %115 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent135, align 8, !tbaa !77
  %cmp136 = icmp ne %struct.gs_color_space_s* %115, null
  br i1 %cmp136, label %if.then.138, label %if.end.149

if.then.138:                                      ; preds = %land.lhs.true.133
  %116 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs139 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %116, i32 0, i32 31
  %117 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs139, align 8, !tbaa !45
  %call140 = call i32 @check_cie_range(%struct.gs_color_space_s* %117) #5
  %tobool141 = icmp ne i32 %call140, 0
  br i1 %tobool141, label %if.end.148, label %if.then.142

if.then.142:                                      ; preds = %if.then.138
  %118 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs143 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %118, i32 0, i32 31
  %119 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs143, align 8, !tbaa !45
  %call144 = call %struct.gs_range_s* @get_cie_range(%struct.gs_color_space_s* %119) #5
  %cmp145 = icmp ne %struct.gs_range_s* %call144, null
  %conv146 = zext i1 %cmp145 to i32
  %120 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %use_cie_range147 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %120, i32 0, i32 81
  store i32 %conv146, i32* %use_cie_range147, align 4, !tbaa !90
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.142, %if.then.138
  br label %if.end.149

if.end.149:                                       ; preds = %if.end.148, %land.lhs.true.133, %if.end.129
  %121 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %122 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %bps150 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %122, i32 0, i32 11
  %123 = load i8, i8* %bps150, align 1, !tbaa !46
  %conv151 = zext i8 %123 to i32
  %124 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %spp152 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %124, i32 0, i32 14
  %125 = load i8, i8* %spp152, align 1, !tbaa !42
  %conv153 = zext i8 %125 to i32
  %call154 = call i32 @image_init_color_cache(%struct.gx_image_enum_s* %121, i32 %conv151, i32 %conv153) #5
  store i32 %call154, i32* %code, align 4, !tbaa !5
  %126 = load i32, i32* %code, align 4, !tbaa !5
  %cmp155 = icmp sge i32 %126, 0
  br i1 %cmp155, label %if.then.157, label %if.end.163

if.then.157:                                      ; preds = %if.end.149
  %127 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %call158 = call i32 @gxht_thresh_image_init(%struct.gx_image_enum_s* %127) #5
  store i32 %call158, i32* %code, align 4, !tbaa !5
  %128 = load i32, i32* %code, align 4, !tbaa !5
  %cmp159 = icmp sge i32 %128, 0
  br i1 %cmp159, label %if.then.161, label %if.end.162

if.then.161:                                      ; preds = %if.then.157
  store i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* @image_render_mono_ht, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.162:                                       ; preds = %if.then.157
  br label %if.end.163

if.end.163:                                       ; preds = %if.end.162, %if.end.149
  br label %if.end.164

if.end.164:                                       ; preds = %if.end.163, %land.lhs.true.39, %lor.lhs.false, %land.lhs.true.29, %land.lhs.true.27, %land.lhs.true.23, %lor.end
  br label %not_fast_halftoning

not_fast_halftoning:                              ; preds = %if.end.164, %if.then.90
  %129 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %masked = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %129, i32 0, i32 19
  %130 = load i8, i8* %masked, align 1, !tbaa !91
  %conv165 = zext i8 %130 to i32
  %tobool166 = icmp ne i32 %conv165, 0
  br i1 %tobool166, label %land.lhs.true.167, label %lor.rhs.170

land.lhs.true.167:                                ; preds = %not_fast_halftoning
  %131 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icolor0 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %131, i32 0, i32 68
  %132 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %icolor0, align 8, !tbaa !92
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %132, i32 0, i32 0
  %133 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !93
  %cmp168 = icmp eq %struct.gx_device_color_type_s* %133, @gx_dc_type_data_pure
  br i1 %cmp168, label %lor.rhs.170, label %lor.end.173

lor.rhs.170:                                      ; preds = %land.lhs.true.167, %not_fast_halftoning
  %134 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %use_rop = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %134, i32 0, i32 38
  %135 = load i8, i8* %use_rop, align 1, !tbaa !94
  %conv171 = zext i8 %135 to i32
  %tobool172 = icmp ne i32 %conv171, 0
  br label %lor.end.173

lor.end.173:                                      ; preds = %lor.rhs.170, %land.lhs.true.167
  %136 = phi i1 [ true, %land.lhs.true.167 ], [ %tobool172, %lor.rhs.170 ]
  %lor.ext174 = zext i1 %136 to i32
  %conv175 = trunc i32 %lor.ext174 to i8
  %137 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %slow_loop = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %137, i32 0, i32 40
  store i8 %conv175, i8* %slow_loop, align 1, !tbaa !95
  %138 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %slow_loop176 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %138, i32 0, i32 40
  %139 = load i8, i8* %slow_loop176, align 1, !tbaa !95
  %conv177 = zext i8 %139 to i32
  %tobool178 = icmp ne i32 %conv177, 0
  br i1 %tobool178, label %if.end.186, label %lor.lhs.false.179

lor.lhs.false.179:                                ; preds = %lor.end.173
  %140 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %posture180 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %140, i32 0, i32 37
  %141 = load i32, i32* %posture180, align 4, !tbaa !47
  %cmp181 = icmp ne i32 %141, 0
  br i1 %cmp181, label %if.end.186, label %if.then.183

if.then.183:                                      ; preds = %lor.lhs.false.179
  %142 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %clip_image = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %142, i32 0, i32 39
  %143 = load i8, i8* %clip_image, align 1, !tbaa !96
  %conv184 = zext i8 %143 to i32
  %and = and i32 %conv184, -4
  %conv185 = trunc i32 %and to i8
  store i8 %conv185, i8* %clip_image, align 1, !tbaa !96
  br label %if.end.186

if.end.186:                                       ; preds = %if.then.183, %lor.lhs.false.179, %lor.end.173
  br label %do.body

do.body:                                          ; preds = %if.end.186
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %144 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %matrix = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %144, i32 0, i32 21
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %matrix, i32 0, i32 0
  %145 = load float, float* %xx, align 4, !tbaa !97
  %conv187 = fpext float %145 to double
  %add = fadd double %conv187, 1.953125e-03
  %mul = fmul double %add, 2.560000e+02
  %conv188 = fptosi double %mul to i32
  %146 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dxx = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %146, i32 0, i32 46
  store i32 %conv188, i32* %dxx, align 4, !tbaa !98
  %147 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %use_mask_color = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %147, i32 0, i32 17
  %148 = load i8, i8* %use_mask_color, align 1, !tbaa !99
  %tobool189 = icmp ne i8 %148, 0
  br i1 %tobool189, label %if.then.190, label %if.end.206

if.then.190:                                      ; preds = %do.end
  %149 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  call void @gx_image_scale_mask_colors(%struct.gx_image_enum_s* %149, i32 0) #5
  %150 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %mask_color = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %150, i32 0, i32 16
  %values = getelementptr inbounds %struct.mc_, %struct.mc_* %mask_color, i32 0, i32 0
  %arrayidx191 = getelementptr inbounds [130 x i32], [130 x i32]* %values, i32 0, i64 0
  %151 = load i32, i32* %arrayidx191, align 4, !tbaa !5
  %cmp192 = icmp ule i32 %151, 0
  br i1 %cmp192, label %if.then.194, label %if.end.197

if.then.194:                                      ; preds = %if.then.190
  %152 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icolor0195 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %152, i32 0, i32 68
  %153 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %icolor0195, align 8, !tbaa !92
  %type196 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %153, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_null, %struct.gx_device_color_type_s** %type196, align 8, !tbaa !93
  br label %if.end.197

if.end.197:                                       ; preds = %if.then.194, %if.then.190
  %154 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %mask_color198 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %154, i32 0, i32 16
  %values199 = getelementptr inbounds %struct.mc_, %struct.mc_* %mask_color198, i32 0, i32 0
  %arrayidx200 = getelementptr inbounds [130 x i32], [130 x i32]* %values199, i32 0, i64 1
  %155 = load i32, i32* %arrayidx200, align 4, !tbaa !5
  %cmp201 = icmp uge i32 %155, 255
  br i1 %cmp201, label %if.then.203, label %if.end.205

if.then.203:                                      ; preds = %if.end.197
  %156 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icolor1 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %156, i32 0, i32 69
  %157 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %icolor1, align 8, !tbaa !100
  %type204 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %157, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_null, %struct.gx_device_color_type_s** %type204, align 8, !tbaa !93
  br label %if.end.205

if.end.205:                                       ; preds = %if.then.203, %if.end.197
  br label %if.end.206

if.end.206:                                       ; preds = %if.end.205, %do.end
  %158 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %159 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %bps207 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %159, i32 0, i32 11
  %160 = load i8, i8* %bps207, align 1, !tbaa !46
  %conv208 = zext i8 %160 to i32
  %161 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %spp209 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %161, i32 0, i32 14
  %162 = load i8, i8* %spp209, align 1, !tbaa !42
  %conv210 = zext i8 %162 to i32
  call void @image_init_clues(%struct.gx_image_enum_s* %158, i32 %conv208, i32 %conv210) #5
  store i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* @image_render_mono, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.211:                                       ; preds = %entry
  store i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* null, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.211, %if.end.206, %if.then.161
  %163 = bitcast i32* %is_planar_dev to i8*
  call void @llvm.lifetime.end(i64 4, i8* %163) #1
  %164 = bitcast i32* %dev_color_ok to i8*
  call void @llvm.lifetime.end(i64 4, i8* %164) #1
  %165 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %165) #1
  %166 = bitcast i32* %num_des_comps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %166) #1
  %167 = bitcast %struct.gsicc_rendering_param_s* %rendering_params to i8*
  call void @llvm.lifetime.end(i64 24, i8* %167) #1
  %168 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %168) #1
  %169 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #1
  %170 = bitcast i32* %use_fast_code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %170) #1
  %171 = load i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)*, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)** %retval
  ret i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* %171
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @gsicc_get_device_profile_comps(%struct.cmm_dev_profile_s*) #2

declare i32 @gs_color_space_get_index(%struct.gs_color_space_s*) #2

declare i32 @gs_color_space_is_PSCIE(%struct.gs_color_space_s*) #2

declare i32 @gx_has_transfer(%struct.gs_imager_state_s*, i32) #2

declare %struct.gsicc_link_s* @gsicc_get_link(%struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gsicc_rendering_param_s*, %struct.gs_memory_s*) #2

declare i32 @check_cie_range(%struct.gs_color_space_s*) #2

declare %struct.gs_range_s* @get_cie_range(%struct.gs_color_space_s*) #2

declare i32 @image_init_color_cache(%struct.gx_image_enum_s*, i32, i32) #2

declare i32 @gxht_thresh_image_init(%struct.gx_image_enum_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @image_render_mono_ht(%struct.gx_image_enum_s* %penum_orig, i8* %buffer, i32 %data_x, i32 %w, i32 %h, %struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %penum_orig.addr = alloca %struct.gx_image_enum_s*, align 8
  %buffer.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %penum = alloca %struct.gx_image_enum_s*, align 8
  %posture = alloca i32, align 4
  %vdi = alloca i32, align 4
  %xrun = alloca i32, align 4
  %thresh_align = alloca i8*, align 8
  %spp_out = alloca i32, align 4
  %devc_contone = alloca [64 x i8*], align 16
  %devc_contone_gray = alloca i8*, align 8
  %psrc = alloca i8*, align 8
  %dest_width = alloca i32, align 4
  %dest_height = alloca i32, align 4
  %data_length = alloca i32, align 4
  %color_cache = alloca i8*, align 8
  %position = alloca i32, align 4
  %k = alloca i32, align 4
  %j = alloca i32, align 4
  %offset_bits = alloca i32, align 4
  %contone_stride = alloca i32, align 4
  %scale_factor = alloca i32, align 4
  %offset = alloca i32, align 4
  %src_size = alloca i32, align 4
  %flush_buff = alloca i32, align 4
  %offset_contone = alloca [64 x i32], align 16
  %offset_threshold = alloca i32, align 4
  %dda_ht = alloca %struct.gx_dda_int_s, align 4
  %code = alloca i32, align 4
  %dev_value = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %psrc_temp = alloca i8*, align 8
  store %struct.gx_image_enum_s* %penum_orig, %struct.gx_image_enum_s** %penum_orig.addr, align 8, !tbaa !1
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_image_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum_orig.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_s* %1, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %2 = bitcast i32* %posture to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %posture1 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %3, i32 0, i32 37
  %4 = load i32, i32* %posture1, align 4, !tbaa !47
  store i32 %4, i32* %posture, align 4, !tbaa !101
  %5 = bitcast i32* %vdi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %xrun to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i8** %thresh_align to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i32* %spp_out to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dev2 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %9, i32 0, i32 2
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev2, align 8, !tbaa !7
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %10, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %11 = load i32, i32* %num_components, align 4, !tbaa !43
  store i32 %11, i32* %spp_out, align 4, !tbaa !5
  %12 = bitcast [64 x i8*]* %devc_contone to i8*
  call void @llvm.lifetime.start(i64 512, i8* %12) #1
  %13 = bitcast i8** %devc_contone_gray to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i8** %psrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %16 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %idx.ext = sext i32 %16 to i64
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 %idx.ext
  store i8* %add.ptr, i8** %psrc, align 8, !tbaa !1
  %17 = bitcast i32* %dest_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %dest_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast i32* %data_length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = bitcast i8** %color_cache to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = bitcast i32* %position to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = bitcast i32* %offset_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_offset_bits = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %25, i32 0, i32 74
  %26 = load i32, i32* %ht_offset_bits, align 4, !tbaa !102
  store i32 %26, i32* %offset_bits, align 4, !tbaa !5
  %27 = bitcast i32* %contone_stride to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  store i32 0, i32* %contone_stride, align 4, !tbaa !5
  %28 = bitcast i32* %scale_factor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  %29 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  %30 = bitcast i32* %src_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = bitcast i32* %flush_buff to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  store i32 0, i32* %flush_buff, align 4, !tbaa !5
  %32 = bitcast [64 x i32]* %offset_contone to i8*
  call void @llvm.lifetime.start(i64 256, i8* %32) #1
  %33 = bitcast i32* %offset_threshold to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = bitcast %struct.gx_dda_int_s* %dda_ht to i8*
  call void @llvm.lifetime.start(i64 20, i8* %34) #1
  %35 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %36 = bitcast i8** %dev_value to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #1
  %37 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %37, 0
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %38 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_landscape = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %38, i32 0, i32 79
  %count = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape, i32 0, i32 0
  %39 = load i32, i32* %count, align 4, !tbaa !103
  %cmp3 = icmp eq i32 %39, 0
  br i1 %cmp3, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %40 = load i32, i32* %posture, align 4, !tbaa !101
  %cmp4 = icmp eq i32 %40, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %lor.lhs.false, %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  %41 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_landscape6 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %41, i32 0, i32 79
  %count7 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape6, i32 0, i32 0
  %42 = load i32, i32* %count7, align 4, !tbaa !103
  store i32 %42, i32* %offset_bits, align 4, !tbaa !5
  %43 = load i32, i32* %offset_bits, align 4, !tbaa !5
  %44 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_offset_bits8 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %44, i32 0, i32 74
  store i32 %43, i32* %ht_offset_bits8, align 4, !tbaa !102
  %45 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_landscape9 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %45, i32 0, i32 79
  %offset_set = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape9, i32 0, i32 6
  store i32 1, i32* %offset_set, align 4, !tbaa !104
  store i32 1, i32* %flush_buff, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  %46 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %rect = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %46, i32 0, i32 22
  %w11 = getelementptr inbounds %struct.r_, %struct.r_* %rect, i32 0, i32 2
  %47 = load i32, i32* %w11, align 4, !tbaa !105
  store i32 %47, i32* %src_size, align 4, !tbaa !5
  %48 = load i32, i32* %posture, align 4, !tbaa !101
  switch i32 %48, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.65
  ]

sw.bb:                                            ; preds = %if.end.10
  %49 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %49, i32 0, i32 55
  %pixel0 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda, i32 0, i32 2
  %x = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pixel0, i32 0, i32 0
  %state = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x, i32 0, i32 0
  %Q = getelementptr inbounds %struct._a, %struct._a* %state, i32 0, i32 0
  %50 = load i32, i32* %Q, align 4, !tbaa !106
  store i32 %50, i32* %xrun, align 4, !tbaa !5
  %51 = load i32, i32* %xrun, align 4, !tbaa !5
  %52 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %adjust = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %52, i32 0, i32 45
  %53 = load i32, i32* %adjust, align 4, !tbaa !107
  %sub = sub nsw i32 %51, %53
  %conv = sext i32 %sub to i64
  %add = add nsw i64 %conv, 127
  %conv12 = trunc i64 %add to i32
  store i32 %conv12, i32* %xrun, align 4, !tbaa !5
  %54 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %x_extent = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %54, i32 0, i32 26
  %x13 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %x_extent, i32 0, i32 0
  %55 = load i32, i32* %x13, align 4, !tbaa !108
  %cmp14 = icmp slt i32 %55, 0
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  %56 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %x_extent16 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %56, i32 0, i32 26
  %x17 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %x_extent16, i32 0, i32 0
  %57 = load i32, i32* %x17, align 4, !tbaa !108
  %sub18 = sub nsw i32 0, %57
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %58 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %x_extent19 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %58, i32 0, i32 26
  %x20 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %x_extent19, i32 0, i32 0
  %59 = load i32, i32* %x20, align 4, !tbaa !108
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub18, %cond.true ], [ %59, %cond.false ]
  %add21 = add nsw i32 %cond, 128
  %shr = ashr i32 %add21, 8
  store i32 %shr, i32* %dest_width, align 4, !tbaa !5
  %60 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %x_extent22 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %60, i32 0, i32 26
  %x23 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %x_extent22, i32 0, i32 0
  %61 = load i32, i32* %x23, align 4, !tbaa !108
  %cmp24 = icmp slt i32 %61, 0
  br i1 %cmp24, label %if.then.26, label %if.end.30

if.then.26:                                       ; preds = %cond.end
  %62 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %x_extent27 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %62, i32 0, i32 26
  %x28 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %x_extent27, i32 0, i32 0
  %63 = load i32, i32* %x28, align 4, !tbaa !108
  %64 = load i32, i32* %xrun, align 4, !tbaa !5
  %add29 = add nsw i32 %64, %63
  store i32 %add29, i32* %xrun, align 4, !tbaa !5
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.26, %cond.end
  %65 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %hci = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %65, i32 0, i32 61
  %66 = load i32, i32* %hci, align 4, !tbaa !109
  store i32 %66, i32* %vdi, align 4, !tbaa !5
  %67 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %line_size = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %67, i32 0, i32 35
  %68 = load i32, i32* %line_size, align 4, !tbaa !110
  store i32 %68, i32* %contone_stride, align 4, !tbaa !5
  %69 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %thresh_buffer = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %69, i32 0, i32 76
  %70 = load i8*, i8** %thresh_buffer, align 8, !tbaa !111
  %71 = ptrtoint i8* %70 to i64
  %72 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_offset_bits31 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %72, i32 0, i32 74
  %73 = load i32, i32* %ht_offset_bits31, align 4, !tbaa !102
  %conv32 = sext i32 %73 to i64
  %add33 = add nsw i64 %71, %conv32
  %sub34 = sub nsw i64 0, %add33
  %and = and i64 %sub34, 15
  %conv35 = trunc i64 %and to i32
  store i32 %conv35, i32* %offset_threshold, align 4, !tbaa !5
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.30
  %74 = load i32, i32* %k, align 4, !tbaa !5
  %75 = load i32, i32* %spp_out, align 4, !tbaa !5
  %cmp36 = icmp slt i32 %74, %75
  br i1 %cmp36, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %76 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %line = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %76, i32 0, i32 34
  %77 = load i8*, i8** %line, align 8, !tbaa !112
  %78 = ptrtoint i8* %77 to i64
  %79 = load i32, i32* %contone_stride, align 4, !tbaa !5
  %80 = load i32, i32* %k, align 4, !tbaa !5
  %mul = mul nsw i32 %79, %80
  %conv38 = sext i32 %mul to i64
  %add39 = add nsw i64 %78, %conv38
  %81 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_offset_bits40 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %81, i32 0, i32 74
  %82 = load i32, i32* %ht_offset_bits40, align 4, !tbaa !102
  %conv41 = sext i32 %82 to i64
  %add42 = add nsw i64 %add39, %conv41
  %sub43 = sub nsw i64 0, %add42
  %and44 = and i64 %sub43, 15
  %conv45 = trunc i64 %and44 to i32
  %83 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom = sext i32 %83 to i64
  %arrayidx = getelementptr inbounds [64 x i32], [64 x i32]* %offset_contone, i32 0, i64 %idxprom
  store i32 %conv45, i32* %arrayidx, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %84 = load i32, i32* %k, align 4, !tbaa !5
  %inc = add nsw i32 %84, 1
  store i32 %inc, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %85 = load i32, i32* %dest_width, align 4, !tbaa !5
  store i32 %85, i32* %data_length, align 4, !tbaa !5
  %86 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %y_extent = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %86, i32 0, i32 27
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %y_extent, i32 0, i32 1
  %87 = load i32, i32* %y, align 4, !tbaa !113
  %cmp46 = icmp slt i32 %87, 0
  br i1 %cmp46, label %cond.true.48, label %cond.false.52

cond.true.48:                                     ; preds = %for.end
  %88 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %y_extent49 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %88, i32 0, i32 27
  %y50 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %y_extent49, i32 0, i32 1
  %89 = load i32, i32* %y50, align 4, !tbaa !113
  %sub51 = sub nsw i32 0, %89
  br label %cond.end.55

cond.false.52:                                    ; preds = %for.end
  %90 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %y_extent53 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %90, i32 0, i32 27
  %y54 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %y_extent53, i32 0, i32 1
  %91 = load i32, i32* %y54, align 4, !tbaa !113
  br label %cond.end.55

cond.end.55:                                      ; preds = %cond.false.52, %cond.true.48
  %cond56 = phi i32 [ %sub51, %cond.true.48 ], [ %91, %cond.false.52 ]
  %add57 = add nsw i32 %cond56, 128
  %shr58 = ashr i32 %add57, 8
  store i32 %shr58, i32* %dest_height, align 4, !tbaa !5
  %92 = load i32, i32* %src_size, align 4, !tbaa !5
  %conv59 = sitofp i32 %92 to float
  %93 = load i32, i32* %dest_width, align 4, !tbaa !5
  %conv60 = sitofp i32 %93 to float
  %div = fdiv float %conv59, %conv60
  %mul61 = fmul float %div, 2.560000e+02
  %conv62 = fpext float %mul61 to double
  %add63 = fadd double %conv62, 5.000000e-01
  %call = call double @floor(double %add63) #6
  %conv64 = fptosi double %call to i32
  store i32 %conv64, i32* %scale_factor, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.65:                                         ; preds = %if.end.10
  br label %sw.default

sw.default:                                       ; preds = %if.end.10, %sw.bb.65
  %94 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %wci = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %94, i32 0, i32 63
  %95 = load i32, i32* %wci, align 4, !tbaa !114
  store i32 %95, i32* %vdi, align 4, !tbaa !5
  %96 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %line_size66 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %96, i32 0, i32 35
  %97 = load i32, i32* %line_size66, align 4, !tbaa !110
  store i32 %97, i32* %contone_stride, align 4, !tbaa !5
  %98 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %y_extent67 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %98, i32 0, i32 27
  %x68 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %y_extent67, i32 0, i32 0
  %99 = load i32, i32* %x68, align 4, !tbaa !115
  %cmp69 = icmp slt i32 %99, 0
  br i1 %cmp69, label %cond.true.71, label %cond.false.75

cond.true.71:                                     ; preds = %sw.default
  %100 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %y_extent72 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %100, i32 0, i32 27
  %x73 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %y_extent72, i32 0, i32 0
  %101 = load i32, i32* %x73, align 4, !tbaa !115
  %sub74 = sub nsw i32 0, %101
  br label %cond.end.78

cond.false.75:                                    ; preds = %sw.default
  %102 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %y_extent76 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %102, i32 0, i32 27
  %x77 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %y_extent76, i32 0, i32 0
  %103 = load i32, i32* %x77, align 4, !tbaa !115
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.false.75, %cond.true.71
  %cond79 = phi i32 [ %sub74, %cond.true.71 ], [ %103, %cond.false.75 ]
  %add80 = add nsw i32 %cond79, 128
  %shr81 = ashr i32 %add80, 8
  store i32 %shr81, i32* %dest_width, align 4, !tbaa !5
  %104 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %x_extent82 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %104, i32 0, i32 26
  %y83 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %x_extent82, i32 0, i32 1
  %105 = load i32, i32* %y83, align 4, !tbaa !116
  %cmp84 = icmp slt i32 %105, 0
  br i1 %cmp84, label %cond.true.86, label %cond.false.90

cond.true.86:                                     ; preds = %cond.end.78
  %106 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %x_extent87 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %106, i32 0, i32 26
  %y88 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %x_extent87, i32 0, i32 1
  %107 = load i32, i32* %y88, align 4, !tbaa !116
  %sub89 = sub nsw i32 0, %107
  br label %cond.end.93

cond.false.90:                                    ; preds = %cond.end.78
  %108 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %x_extent91 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %108, i32 0, i32 26
  %y92 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %x_extent91, i32 0, i32 1
  %109 = load i32, i32* %y92, align 4, !tbaa !116
  br label %cond.end.93

cond.end.93:                                      ; preds = %cond.false.90, %cond.true.86
  %cond94 = phi i32 [ %sub89, %cond.true.86 ], [ %109, %cond.false.90 ]
  %add95 = add nsw i32 %cond94, 128
  %shr96 = ashr i32 %add95, 8
  store i32 %shr96, i32* %dest_height, align 4, !tbaa !5
  %110 = load i32, i32* %dest_height, align 4, !tbaa !5
  store i32 %110, i32* %data_length, align 4, !tbaa !5
  %111 = load i32, i32* %src_size, align 4, !tbaa !5
  %conv97 = sitofp i32 %111 to float
  %112 = load i32, i32* %dest_height, align 4, !tbaa !5
  %conv98 = sitofp i32 %112 to float
  %div99 = fdiv float %conv97, %conv98
  %mul100 = fmul float %div99, 2.560000e+02
  %conv101 = fpext float %mul100 to double
  %add102 = fadd double %conv101, 5.000000e-01
  %call103 = call double @floor(double %add102) #6
  %conv104 = fptosi double %call103 to i32
  store i32 %conv104, i32* %scale_factor, align 4, !tbaa !5
  %113 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %thresh_buffer105 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %113, i32 0, i32 76
  %114 = load i8*, i8** %thresh_buffer105, align 8, !tbaa !111
  %115 = ptrtoint i8* %114 to i64
  %sub106 = sub nsw i64 0, %115
  %and107 = and i64 %sub106, 15
  %conv108 = trunc i64 %and107 to i32
  store i32 %conv108, i32* %offset_threshold, align 4, !tbaa !5
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.109

for.cond.109:                                     ; preds = %for.inc.122, %cond.end.93
  %116 = load i32, i32* %k, align 4, !tbaa !5
  %117 = load i32, i32* %spp_out, align 4, !tbaa !5
  %cmp110 = icmp slt i32 %116, %117
  br i1 %cmp110, label %for.body.112, label %for.end.124

for.body.112:                                     ; preds = %for.cond.109
  %118 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %line113 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %118, i32 0, i32 34
  %119 = load i8*, i8** %line113, align 8, !tbaa !112
  %120 = ptrtoint i8* %119 to i64
  %121 = load i32, i32* %contone_stride, align 4, !tbaa !5
  %122 = load i32, i32* %k, align 4, !tbaa !5
  %mul114 = mul nsw i32 %121, %122
  %conv115 = sext i32 %mul114 to i64
  %add116 = add nsw i64 %120, %conv115
  %sub117 = sub nsw i64 0, %add116
  %and118 = and i64 %sub117, 15
  %conv119 = trunc i64 %and118 to i32
  %123 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom120 = sext i32 %123 to i64
  %arrayidx121 = getelementptr inbounds [64 x i32], [64 x i32]* %offset_contone, i32 0, i64 %idxprom120
  store i32 %conv119, i32* %arrayidx121, align 4, !tbaa !5
  br label %for.inc.122

for.inc.122:                                      ; preds = %for.body.112
  %124 = load i32, i32* %k, align 4, !tbaa !5
  %inc123 = add nsw i32 %124, 1
  store i32 %inc123, i32* %k, align 4, !tbaa !5
  br label %for.cond.109

for.end.124:                                      ; preds = %for.cond.109
  %125 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_landscape125 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %125, i32 0, i32 79
  %count126 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape125, i32 0, i32 0
  %126 = load i32, i32* %count126, align 4, !tbaa !103
  %cmp127 = icmp eq i32 %126, 0
  br i1 %cmp127, label %if.then.129, label %if.end.172

if.then.129:                                      ; preds = %for.end.124
  %127 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_landscape130 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %127, i32 0, i32 79
  %offset_set131 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape130, i32 0, i32 6
  store i32 1, i32* %offset_set131, align 4, !tbaa !104
  %128 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_landscape132 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %128, i32 0, i32 79
  %index = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape132, i32 0, i32 4
  %129 = load i32, i32* %index, align 4, !tbaa !117
  %cmp133 = icmp slt i32 %129, 0
  br i1 %cmp133, label %if.then.135, label %if.else.147

if.then.135:                                      ; preds = %if.then.129
  %130 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %xci = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %130, i32 0, i32 62
  %131 = load i32, i32* %xci, align 4, !tbaa !118
  %132 = load i32, i32* %vdi, align 4, !tbaa !5
  %add136 = add nsw i32 %131, %132
  %sub137 = sub nsw i32 %add136, 1
  %133 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_landscape138 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %133, i32 0, i32 79
  %xstart = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape138, i32 0, i32 2
  store i32 %sub137, i32* %xstart, align 4, !tbaa !119
  %134 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_landscape139 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %134, i32 0, i32 79
  %xstart140 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape139, i32 0, i32 2
  %135 = load i32, i32* %xstart140, align 4, !tbaa !119
  %rem = srem i32 %135, 16
  %add141 = add nsw i32 %rem, 1
  store i32 %add141, i32* %offset_bits, align 4, !tbaa !5
  %136 = load i32, i32* %offset_bits, align 4, !tbaa !5
  %cmp142 = icmp sle i32 %136, 0
  br i1 %cmp142, label %if.then.144, label %if.end.146

if.then.144:                                      ; preds = %if.then.135
  %137 = load i32, i32* %offset_bits, align 4, !tbaa !5
  %add145 = add nsw i32 %137, 16
  store i32 %add145, i32* %offset_bits, align 4, !tbaa !5
  br label %if.end.146

if.end.146:                                       ; preds = %if.then.144, %if.then.135
  br label %if.end.159

if.else.147:                                      ; preds = %if.then.129
  %138 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %xci148 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %138, i32 0, i32 62
  %139 = load i32, i32* %xci148, align 4, !tbaa !118
  %140 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_landscape149 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %140, i32 0, i32 79
  %xstart150 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape149, i32 0, i32 2
  store i32 %139, i32* %xstart150, align 4, !tbaa !119
  %141 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %xci151 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %141, i32 0, i32 62
  %142 = load i32, i32* %xci151, align 4, !tbaa !118
  %rem152 = srem i32 %142, 16
  %sub153 = sub nsw i32 16, %rem152
  store i32 %sub153, i32* %offset_bits, align 4, !tbaa !5
  %143 = load i32, i32* %offset_bits, align 4, !tbaa !5
  %cmp154 = icmp sge i32 %143, 16
  br i1 %cmp154, label %if.then.156, label %if.end.158

if.then.156:                                      ; preds = %if.else.147
  %144 = load i32, i32* %offset_bits, align 4, !tbaa !5
  %sub157 = sub nsw i32 %144, 16
  store i32 %sub157, i32* %offset_bits, align 4, !tbaa !5
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.156, %if.else.147
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.158, %if.end.146
  %145 = load i32, i32* %offset_bits, align 4, !tbaa !5
  %cmp160 = icmp eq i32 %145, 0
  br i1 %cmp160, label %if.then.165, label %lor.lhs.false.162

lor.lhs.false.162:                                ; preds = %if.end.159
  %146 = load i32, i32* %offset_bits, align 4, !tbaa !5
  %cmp163 = icmp eq i32 %146, 16
  br i1 %cmp163, label %if.then.165, label %if.else.169

if.then.165:                                      ; preds = %lor.lhs.false.162, %if.end.159
  %147 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_landscape166 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %147, i32 0, i32 79
  %offset_set167 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape166, i32 0, i32 6
  store i32 0, i32* %offset_set167, align 4, !tbaa !104
  %148 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_offset_bits168 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %148, i32 0, i32 74
  store i32 0, i32* %ht_offset_bits168, align 4, !tbaa !102
  br label %if.end.171

if.else.169:                                      ; preds = %lor.lhs.false.162
  %149 = load i32, i32* %offset_bits, align 4, !tbaa !5
  %150 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_offset_bits170 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %150, i32 0, i32 74
  store i32 %149, i32* %ht_offset_bits170, align 4, !tbaa !102
  br label %if.end.171

if.end.171:                                       ; preds = %if.else.169, %if.then.165
  br label %if.end.172

if.end.172:                                       ; preds = %if.end.171, %for.end.124
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.172, %cond.end.55
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.173

for.cond.173:                                     ; preds = %for.inc.203, %sw.epilog
  %151 = load i32, i32* %k, align 4, !tbaa !5
  %152 = load i32, i32* %spp_out, align 4, !tbaa !5
  %cmp174 = icmp slt i32 %151, %152
  br i1 %cmp174, label %for.body.176, label %for.end.205

for.body.176:                                     ; preds = %for.cond.173
  %153 = load i32, i32* %posture, align 4, !tbaa !101
  %cmp177 = icmp eq i32 %153, 0
  br i1 %cmp177, label %if.then.179, label %if.else.190

if.then.179:                                      ; preds = %for.body.176
  %154 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %line180 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %154, i32 0, i32 34
  %155 = load i8*, i8** %line180, align 8, !tbaa !112
  %156 = load i32, i32* %contone_stride, align 4, !tbaa !5
  %157 = load i32, i32* %k, align 4, !tbaa !5
  %mul181 = mul nsw i32 %156, %157
  %idx.ext182 = sext i32 %mul181 to i64
  %add.ptr183 = getelementptr inbounds i8, i8* %155, i64 %idx.ext182
  %158 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom184 = sext i32 %158 to i64
  %arrayidx185 = getelementptr inbounds [64 x i32], [64 x i32]* %offset_contone, i32 0, i64 %idxprom184
  %159 = load i32, i32* %arrayidx185, align 4, !tbaa !5
  %idx.ext186 = sext i32 %159 to i64
  %add.ptr187 = getelementptr inbounds i8, i8* %add.ptr183, i64 %idx.ext186
  %160 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom188 = sext i32 %160 to i64
  %arrayidx189 = getelementptr inbounds [64 x i8*], [64 x i8*]* %devc_contone, i32 0, i64 %idxprom188
  store i8* %add.ptr187, i8** %arrayidx189, align 8, !tbaa !1
  br label %if.end.202

if.else.190:                                      ; preds = %for.body.176
  %161 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %line191 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %161, i32 0, i32 34
  %162 = load i8*, i8** %line191, align 8, !tbaa !112
  %163 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom192 = sext i32 %163 to i64
  %arrayidx193 = getelementptr inbounds [64 x i32], [64 x i32]* %offset_contone, i32 0, i64 %idxprom192
  %164 = load i32, i32* %arrayidx193, align 4, !tbaa !5
  %idx.ext194 = sext i32 %164 to i64
  %add.ptr195 = getelementptr inbounds i8, i8* %162, i64 %idx.ext194
  %165 = load i32, i32* %k, align 4, !tbaa !5
  %mul196 = mul nsw i32 64, %165
  %166 = load i32, i32* %contone_stride, align 4, !tbaa !5
  %mul197 = mul nsw i32 %mul196, %166
  %idx.ext198 = sext i32 %mul197 to i64
  %add.ptr199 = getelementptr inbounds i8, i8* %add.ptr195, i64 %idx.ext198
  %167 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom200 = sext i32 %167 to i64
  %arrayidx201 = getelementptr inbounds [64 x i8*], [64 x i8*]* %devc_contone, i32 0, i64 %idxprom200
  store i8* %add.ptr199, i8** %arrayidx201, align 8, !tbaa !1
  br label %if.end.202

if.end.202:                                       ; preds = %if.else.190, %if.then.179
  br label %for.inc.203

for.inc.203:                                      ; preds = %if.end.202
  %168 = load i32, i32* %k, align 4, !tbaa !5
  %inc204 = add nsw i32 %168, 1
  store i32 %inc204, i32* %k, align 4, !tbaa !5
  br label %for.cond.173

for.end.205:                                      ; preds = %for.cond.173
  %169 = load i32, i32* %flush_buff, align 4, !tbaa !5
  %tobool = icmp ne i32 %169, 0
  br i1 %tobool, label %if.then.206, label %if.end.207

if.then.206:                                      ; preds = %for.end.205
  br label %flush

if.end.207:                                       ; preds = %for.end.205
  br label %do.body

do.body:                                          ; preds = %if.end.207
  br label %do.body.208

do.body.208:                                      ; preds = %do.body
  %170 = load i32, i32* %data_length, align 4, !tbaa !5
  %cmp209 = icmp eq i32 %170, 0
  br i1 %cmp209, label %if.then.211, label %if.else.213

if.then.211:                                      ; preds = %do.body.208
  %step = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dQ = getelementptr inbounds %struct.ie_, %struct.ie_* %step, i32 0, i32 0
  store i32 0, i32* %dQ, align 4, !tbaa !120
  %step212 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dR = getelementptr inbounds %struct.ie_, %struct.ie_* %step212, i32 0, i32 1
  store i32 0, i32* %dR, align 4, !tbaa !124
  br label %if.end.245

if.else.213:                                      ; preds = %do.body.208
  %171 = load i32, i32* %src_size, align 4, !tbaa !5
  %cmp214 = icmp slt i32 %171, 0
  br i1 %cmp214, label %if.then.216, label %if.else.237

if.then.216:                                      ; preds = %if.else.213
  %172 = load i32, i32* %src_size, align 4, !tbaa !5
  %sub217 = sub nsw i32 0, %172
  %173 = load i32, i32* %data_length, align 4, !tbaa !5
  %div218 = udiv i32 %sub217, %173
  %sub219 = sub nsw i32 0, %div218
  %step220 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dQ221 = getelementptr inbounds %struct.ie_, %struct.ie_* %step220, i32 0, i32 0
  store i32 %sub219, i32* %dQ221, align 4, !tbaa !120
  %174 = load i32, i32* %src_size, align 4, !tbaa !5
  %sub222 = sub nsw i32 0, %174
  %175 = load i32, i32* %data_length, align 4, !tbaa !5
  %rem223 = srem i32 %sub222, %175
  %step224 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dR225 = getelementptr inbounds %struct.ie_, %struct.ie_* %step224, i32 0, i32 1
  store i32 %rem223, i32* %dR225, align 4, !tbaa !124
  %cmp226 = icmp ne i32 %rem223, 0
  br i1 %cmp226, label %if.then.228, label %if.end.236

if.then.228:                                      ; preds = %if.then.216
  %step229 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dQ230 = getelementptr inbounds %struct.ie_, %struct.ie_* %step229, i32 0, i32 0
  %176 = load i32, i32* %dQ230, align 4, !tbaa !120
  %dec = add nsw i32 %176, -1
  store i32 %dec, i32* %dQ230, align 4, !tbaa !120
  %177 = load i32, i32* %data_length, align 4, !tbaa !5
  %step231 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dR232 = getelementptr inbounds %struct.ie_, %struct.ie_* %step231, i32 0, i32 1
  %178 = load i32, i32* %dR232, align 4, !tbaa !124
  %sub233 = sub i32 %177, %178
  %step234 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dR235 = getelementptr inbounds %struct.ie_, %struct.ie_* %step234, i32 0, i32 1
  store i32 %sub233, i32* %dR235, align 4, !tbaa !124
  br label %if.end.236

if.end.236:                                       ; preds = %if.then.228, %if.then.216
  br label %if.end.244

if.else.237:                                      ; preds = %if.else.213
  %179 = load i32, i32* %src_size, align 4, !tbaa !5
  %180 = load i32, i32* %data_length, align 4, !tbaa !5
  %div238 = sdiv i32 %179, %180
  %step239 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dQ240 = getelementptr inbounds %struct.ie_, %struct.ie_* %step239, i32 0, i32 0
  store i32 %div238, i32* %dQ240, align 4, !tbaa !120
  %181 = load i32, i32* %src_size, align 4, !tbaa !5
  %182 = load i32, i32* %data_length, align 4, !tbaa !5
  %rem241 = srem i32 %181, %182
  %step242 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dR243 = getelementptr inbounds %struct.ie_, %struct.ie_* %step242, i32 0, i32 1
  store i32 %rem241, i32* %dR243, align 4, !tbaa !124
  br label %if.end.244

if.end.244:                                       ; preds = %if.else.237, %if.end.236
  br label %if.end.245

if.end.245:                                       ; preds = %if.end.244, %if.then.211
  %183 = load i32, i32* %data_length, align 4, !tbaa !5
  %step246 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %N = getelementptr inbounds %struct.ie_, %struct.ie_* %step246, i32 0, i32 2
  store i32 %183, i32* %N, align 4, !tbaa !125
  br label %do.cond

do.cond:                                          ; preds = %if.end.245
  br label %do.end

do.end:                                           ; preds = %do.cond
  %step247 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dQ248 = getelementptr inbounds %struct.ie_, %struct.ie_* %step247, i32 0, i32 0
  %184 = load i32, i32* %dQ248, align 4, !tbaa !120
  %shr249 = ashr i32 %184, 1
  %add250 = add nsw i32 0, %shr249
  %state251 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q252 = getelementptr inbounds %struct.ia_, %struct.ia_* %state251, i32 0, i32 0
  store i32 %add250, i32* %Q252, align 4, !tbaa !126
  %185 = load i32, i32* %data_length, align 4, !tbaa !5
  %sub253 = sub nsw i32 %185, 1
  %step254 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dR255 = getelementptr inbounds %struct.ie_, %struct.ie_* %step254, i32 0, i32 1
  %186 = load i32, i32* %dR255, align 4, !tbaa !124
  %step256 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dQ257 = getelementptr inbounds %struct.ie_, %struct.ie_* %step256, i32 0, i32 0
  %187 = load i32, i32* %dQ257, align 4, !tbaa !120
  %and258 = and i32 %187, 1
  %tobool259 = icmp ne i32 %and258, 0
  br i1 %tobool259, label %cond.true.260, label %cond.false.263

cond.true.260:                                    ; preds = %do.end
  %step261 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %N262 = getelementptr inbounds %struct.ie_, %struct.ie_* %step261, i32 0, i32 2
  %188 = load i32, i32* %N262, align 4, !tbaa !125
  br label %cond.end.264

cond.false.263:                                   ; preds = %do.end
  br label %cond.end.264

cond.end.264:                                     ; preds = %cond.false.263, %cond.true.260
  %cond265 = phi i32 [ %188, %cond.true.260 ], [ 0, %cond.false.263 ]
  %add266 = add i32 %186, %cond265
  %shr267 = lshr i32 %add266, 1
  %sub268 = sub i32 %sub253, %shr267
  %state269 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R = getelementptr inbounds %struct.ia_, %struct.ia_* %state269, i32 0, i32 1
  store i32 %sub268, i32* %R, align 4, !tbaa !127
  %state270 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R271 = getelementptr inbounds %struct.ia_, %struct.ia_* %state270, i32 0, i32 1
  %189 = load i32, i32* %R271, align 4, !tbaa !127
  %cmp272 = icmp slt i32 %189, 0
  br i1 %cmp272, label %if.then.274, label %if.end.283

if.then.274:                                      ; preds = %cond.end.264
  %state275 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q276 = getelementptr inbounds %struct.ia_, %struct.ia_* %state275, i32 0, i32 0
  %190 = load i32, i32* %Q276, align 4, !tbaa !126
  %inc277 = add nsw i32 %190, 1
  store i32 %inc277, i32* %Q276, align 4, !tbaa !126
  %step278 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %N279 = getelementptr inbounds %struct.ie_, %struct.ie_* %step278, i32 0, i32 2
  %191 = load i32, i32* %N279, align 4, !tbaa !125
  %state280 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R281 = getelementptr inbounds %struct.ia_, %struct.ia_* %state280, i32 0, i32 1
  %192 = load i32, i32* %R281, align 4, !tbaa !127
  %add282 = add i32 %192, %191
  store i32 %add282, i32* %R281, align 4, !tbaa !127
  br label %if.end.283

if.end.283:                                       ; preds = %if.then.274, %cond.end.264
  br label %do.cond.284

do.cond.284:                                      ; preds = %if.end.283
  br label %do.end.285

do.end.285:                                       ; preds = %do.cond.284
  %arrayidx286 = getelementptr inbounds [64 x i8*], [64 x i8*]* %devc_contone, i32 0, i64 0
  %193 = load i8*, i8** %arrayidx286, align 8, !tbaa !1
  store i8* %193, i8** %devc_contone_gray, align 8, !tbaa !1
  %194 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %color_cache287 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %194, i32 0, i32 71
  %195 = load %struct.gx_image_color_cache_s*, %struct.gx_image_color_cache_s** %color_cache287, align 8, !tbaa !128
  %cmp288 = icmp eq %struct.gx_image_color_cache_s* %195, null
  br i1 %cmp288, label %if.then.290, label %if.else.552

if.then.290:                                      ; preds = %do.end.285
  %196 = load i32, i32* %posture, align 4, !tbaa !101
  switch i32 %196, label %sw.default.550 [
    i32 0, label %sw.bb.291
    i32 1, label %sw.bb.400
  ]

sw.bb.291:                                        ; preds = %if.then.290
  %197 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dst_width = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %197, i32 0, i32 25
  %198 = load i32, i32* %dst_width, align 4, !tbaa !129
  %cmp292 = icmp sgt i32 %198, 0
  br i1 %cmp292, label %if.then.294, label %if.else.356

if.then.294:                                      ; preds = %sw.bb.291
  %199 = load i32, i32* %src_size, align 4, !tbaa !5
  %200 = load i32, i32* %dest_width, align 4, !tbaa !5
  %cmp295 = icmp eq i32 %199, %200
  br i1 %cmp295, label %if.then.297, label %if.else.300

if.then.297:                                      ; preds = %if.then.294
  %201 = load i8*, i8** %devc_contone_gray, align 8, !tbaa !1
  %202 = load i8*, i8** %psrc, align 8, !tbaa !1
  %203 = load i32, i32* %data_length, align 4, !tbaa !5
  %conv298 = sext i32 %203 to i64
  %call299 = call i8* @memcpy(i8* %201, i8* %202, i64 %conv298) #7
  br label %if.end.355

if.else.300:                                      ; preds = %if.then.294
  %204 = load i32, i32* %src_size, align 4, !tbaa !5
  %mul301 = mul nsw i32 %204, 2
  %205 = load i32, i32* %dest_width, align 4, !tbaa !5
  %cmp302 = icmp eq i32 %mul301, %205
  br i1 %cmp302, label %if.then.304, label %if.else.314

if.then.304:                                      ; preds = %if.else.300
  %206 = bitcast i8** %psrc_temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %206) #1
  %207 = load i8*, i8** %psrc, align 8, !tbaa !1
  store i8* %207, i8** %psrc_temp, align 8, !tbaa !1
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.305

for.cond.305:                                     ; preds = %for.inc.310, %if.then.304
  %208 = load i32, i32* %k, align 4, !tbaa !5
  %209 = load i32, i32* %data_length, align 4, !tbaa !5
  %cmp306 = icmp slt i32 %208, %209
  br i1 %cmp306, label %for.body.308, label %for.end.313

for.body.308:                                     ; preds = %for.cond.305
  %210 = load i8*, i8** %psrc_temp, align 8, !tbaa !1
  %211 = load i8, i8* %210, align 1, !tbaa !101
  %212 = load i8*, i8** %devc_contone_gray, align 8, !tbaa !1
  %add.ptr309 = getelementptr inbounds i8, i8* %212, i64 1
  store i8 %211, i8* %add.ptr309, align 1, !tbaa !101
  %213 = load i8*, i8** %devc_contone_gray, align 8, !tbaa !1
  store i8 %211, i8* %213, align 1, !tbaa !101
  br label %for.inc.310

for.inc.310:                                      ; preds = %for.body.308
  %214 = load i32, i32* %k, align 4, !tbaa !5
  %add311 = add nsw i32 %214, 2
  store i32 %add311, i32* %k, align 4, !tbaa !5
  %215 = load i8*, i8** %devc_contone_gray, align 8, !tbaa !1
  %add.ptr312 = getelementptr inbounds i8, i8* %215, i64 2
  store i8* %add.ptr312, i8** %devc_contone_gray, align 8, !tbaa !1
  %216 = load i8*, i8** %psrc_temp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %216, i32 1
  store i8* %incdec.ptr, i8** %psrc_temp, align 8, !tbaa !1
  br label %for.cond.305

for.end.313:                                      ; preds = %for.cond.305
  %217 = bitcast i8** %psrc_temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %217) #1
  br label %if.end.354

if.else.314:                                      ; preds = %if.else.300
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.315

for.cond.315:                                     ; preds = %for.inc.350, %if.else.314
  %218 = load i32, i32* %k, align 4, !tbaa !5
  %219 = load i32, i32* %data_length, align 4, !tbaa !5
  %cmp316 = icmp slt i32 %218, %219
  br i1 %cmp316, label %for.body.318, label %for.end.353

for.body.318:                                     ; preds = %for.cond.315
  %state319 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q320 = getelementptr inbounds %struct.ia_, %struct.ia_* %state319, i32 0, i32 0
  %220 = load i32, i32* %Q320, align 4, !tbaa !126
  %idxprom321 = sext i32 %220 to i64
  %221 = load i8*, i8** %psrc, align 8, !tbaa !1
  %arrayidx322 = getelementptr inbounds i8, i8* %221, i64 %idxprom321
  %222 = load i8, i8* %arrayidx322, align 1, !tbaa !101
  %223 = load i8*, i8** %devc_contone_gray, align 8, !tbaa !1
  store i8 %222, i8* %223, align 1, !tbaa !101
  br label %do.body.323

do.body.323:                                      ; preds = %for.body.318
  %step324 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dR325 = getelementptr inbounds %struct.ie_, %struct.ie_* %step324, i32 0, i32 1
  %224 = load i32, i32* %dR325, align 4, !tbaa !124
  %state326 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R327 = getelementptr inbounds %struct.ia_, %struct.ia_* %state326, i32 0, i32 1
  %225 = load i32, i32* %R327, align 4, !tbaa !127
  %sub328 = sub i32 %225, %224
  store i32 %sub328, i32* %R327, align 4, !tbaa !127
  %state329 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R330 = getelementptr inbounds %struct.ia_, %struct.ia_* %state329, i32 0, i32 1
  %226 = load i32, i32* %R330, align 4, !tbaa !127
  %cmp331 = icmp slt i32 %226, 0
  br i1 %cmp331, label %if.then.333, label %if.end.342

if.then.333:                                      ; preds = %do.body.323
  %state334 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q335 = getelementptr inbounds %struct.ia_, %struct.ia_* %state334, i32 0, i32 0
  %227 = load i32, i32* %Q335, align 4, !tbaa !126
  %inc336 = add nsw i32 %227, 1
  store i32 %inc336, i32* %Q335, align 4, !tbaa !126
  %step337 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %N338 = getelementptr inbounds %struct.ie_, %struct.ie_* %step337, i32 0, i32 2
  %228 = load i32, i32* %N338, align 4, !tbaa !125
  %state339 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R340 = getelementptr inbounds %struct.ia_, %struct.ia_* %state339, i32 0, i32 1
  %229 = load i32, i32* %R340, align 4, !tbaa !127
  %add341 = add i32 %229, %228
  store i32 %add341, i32* %R340, align 4, !tbaa !127
  br label %if.end.342

if.end.342:                                       ; preds = %if.then.333, %do.body.323
  %step343 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dQ344 = getelementptr inbounds %struct.ie_, %struct.ie_* %step343, i32 0, i32 0
  %230 = load i32, i32* %dQ344, align 4, !tbaa !120
  %state345 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q346 = getelementptr inbounds %struct.ia_, %struct.ia_* %state345, i32 0, i32 0
  %231 = load i32, i32* %Q346, align 4, !tbaa !126
  %add347 = add nsw i32 %231, %230
  store i32 %add347, i32* %Q346, align 4, !tbaa !126
  br label %do.cond.348

do.cond.348:                                      ; preds = %if.end.342
  br label %do.end.349

do.end.349:                                       ; preds = %do.cond.348
  br label %for.inc.350

for.inc.350:                                      ; preds = %do.end.349
  %232 = load i32, i32* %k, align 4, !tbaa !5
  %inc351 = add nsw i32 %232, 1
  store i32 %inc351, i32* %k, align 4, !tbaa !5
  %233 = load i8*, i8** %devc_contone_gray, align 8, !tbaa !1
  %incdec.ptr352 = getelementptr inbounds i8, i8* %233, i32 1
  store i8* %incdec.ptr352, i8** %devc_contone_gray, align 8, !tbaa !1
  br label %for.cond.315

for.end.353:                                      ; preds = %for.cond.315
  br label %if.end.354

if.end.354:                                       ; preds = %for.end.353, %for.end.313
  br label %if.end.355

if.end.355:                                       ; preds = %if.end.354, %if.then.297
  br label %if.end.399

if.else.356:                                      ; preds = %sw.bb.291
  %234 = load i32, i32* %data_length, align 4, !tbaa !5
  %sub357 = sub nsw i32 %234, 1
  %235 = load i8*, i8** %devc_contone_gray, align 8, !tbaa !1
  %idx.ext358 = sext i32 %sub357 to i64
  %add.ptr359 = getelementptr inbounds i8, i8* %235, i64 %idx.ext358
  store i8* %add.ptr359, i8** %devc_contone_gray, align 8, !tbaa !1
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.360

for.cond.360:                                     ; preds = %for.inc.395, %if.else.356
  %236 = load i32, i32* %k, align 4, !tbaa !5
  %237 = load i32, i32* %data_length, align 4, !tbaa !5
  %cmp361 = icmp slt i32 %236, %237
  br i1 %cmp361, label %for.body.363, label %for.end.398

for.body.363:                                     ; preds = %for.cond.360
  %state364 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q365 = getelementptr inbounds %struct.ia_, %struct.ia_* %state364, i32 0, i32 0
  %238 = load i32, i32* %Q365, align 4, !tbaa !126
  %idxprom366 = sext i32 %238 to i64
  %239 = load i8*, i8** %psrc, align 8, !tbaa !1
  %arrayidx367 = getelementptr inbounds i8, i8* %239, i64 %idxprom366
  %240 = load i8, i8* %arrayidx367, align 1, !tbaa !101
  %241 = load i8*, i8** %devc_contone_gray, align 8, !tbaa !1
  store i8 %240, i8* %241, align 1, !tbaa !101
  br label %do.body.368

do.body.368:                                      ; preds = %for.body.363
  %step369 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dR370 = getelementptr inbounds %struct.ie_, %struct.ie_* %step369, i32 0, i32 1
  %242 = load i32, i32* %dR370, align 4, !tbaa !124
  %state371 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R372 = getelementptr inbounds %struct.ia_, %struct.ia_* %state371, i32 0, i32 1
  %243 = load i32, i32* %R372, align 4, !tbaa !127
  %sub373 = sub i32 %243, %242
  store i32 %sub373, i32* %R372, align 4, !tbaa !127
  %state374 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R375 = getelementptr inbounds %struct.ia_, %struct.ia_* %state374, i32 0, i32 1
  %244 = load i32, i32* %R375, align 4, !tbaa !127
  %cmp376 = icmp slt i32 %244, 0
  br i1 %cmp376, label %if.then.378, label %if.end.387

if.then.378:                                      ; preds = %do.body.368
  %state379 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q380 = getelementptr inbounds %struct.ia_, %struct.ia_* %state379, i32 0, i32 0
  %245 = load i32, i32* %Q380, align 4, !tbaa !126
  %inc381 = add nsw i32 %245, 1
  store i32 %inc381, i32* %Q380, align 4, !tbaa !126
  %step382 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %N383 = getelementptr inbounds %struct.ie_, %struct.ie_* %step382, i32 0, i32 2
  %246 = load i32, i32* %N383, align 4, !tbaa !125
  %state384 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R385 = getelementptr inbounds %struct.ia_, %struct.ia_* %state384, i32 0, i32 1
  %247 = load i32, i32* %R385, align 4, !tbaa !127
  %add386 = add i32 %247, %246
  store i32 %add386, i32* %R385, align 4, !tbaa !127
  br label %if.end.387

if.end.387:                                       ; preds = %if.then.378, %do.body.368
  %step388 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dQ389 = getelementptr inbounds %struct.ie_, %struct.ie_* %step388, i32 0, i32 0
  %248 = load i32, i32* %dQ389, align 4, !tbaa !120
  %state390 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q391 = getelementptr inbounds %struct.ia_, %struct.ia_* %state390, i32 0, i32 0
  %249 = load i32, i32* %Q391, align 4, !tbaa !126
  %add392 = add nsw i32 %249, %248
  store i32 %add392, i32* %Q391, align 4, !tbaa !126
  br label %do.cond.393

do.cond.393:                                      ; preds = %if.end.387
  br label %do.end.394

do.end.394:                                       ; preds = %do.cond.393
  br label %for.inc.395

for.inc.395:                                      ; preds = %do.end.394
  %250 = load i32, i32* %k, align 4, !tbaa !5
  %inc396 = add nsw i32 %250, 1
  store i32 %inc396, i32* %k, align 4, !tbaa !5
  %251 = load i8*, i8** %devc_contone_gray, align 8, !tbaa !1
  %incdec.ptr397 = getelementptr inbounds i8, i8* %251, i32 -1
  store i8* %incdec.ptr397, i8** %devc_contone_gray, align 8, !tbaa !1
  br label %for.cond.360

for.end.398:                                      ; preds = %for.cond.360
  br label %if.end.399

if.end.399:                                       ; preds = %for.end.398, %if.end.355
  br label %sw.epilog.551

sw.bb.400:                                        ; preds = %if.then.290
  %252 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_landscape401 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %252, i32 0, i32 79
  %flipy = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape401, i32 0, i32 7
  %253 = load i32, i32* %flipy, align 4, !tbaa !130
  %tobool402 = icmp ne i32 %253, 0
  br i1 %tobool402, label %if.then.403, label %if.else.449

if.then.403:                                      ; preds = %sw.bb.400
  %254 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_landscape404 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %254, i32 0, i32 79
  %curr_pos = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape404, i32 0, i32 3
  %255 = load i32, i32* %curr_pos, align 4, !tbaa !131
  %256 = load i32, i32* %data_length, align 4, !tbaa !5
  %sub405 = sub nsw i32 %256, 1
  %mul406 = mul nsw i32 64, %sub405
  %add407 = add nsw i32 %255, %mul406
  store i32 %add407, i32* %position, align 4, !tbaa !5
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.408

for.cond.408:                                     ; preds = %for.inc.446, %if.then.403
  %257 = load i32, i32* %k, align 4, !tbaa !5
  %258 = load i32, i32* %data_length, align 4, !tbaa !5
  %cmp409 = icmp slt i32 %257, %258
  br i1 %cmp409, label %for.body.411, label %for.end.448

for.body.411:                                     ; preds = %for.cond.408
  %state412 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q413 = getelementptr inbounds %struct.ia_, %struct.ia_* %state412, i32 0, i32 0
  %259 = load i32, i32* %Q413, align 4, !tbaa !126
  %idxprom414 = sext i32 %259 to i64
  %260 = load i8*, i8** %psrc, align 8, !tbaa !1
  %arrayidx415 = getelementptr inbounds i8, i8* %260, i64 %idxprom414
  %261 = load i8, i8* %arrayidx415, align 1, !tbaa !101
  %262 = load i32, i32* %position, align 4, !tbaa !5
  %idxprom416 = sext i32 %262 to i64
  %263 = load i8*, i8** %devc_contone_gray, align 8, !tbaa !1
  %arrayidx417 = getelementptr inbounds i8, i8* %263, i64 %idxprom416
  store i8 %261, i8* %arrayidx417, align 1, !tbaa !101
  %264 = load i32, i32* %position, align 4, !tbaa !5
  %sub418 = sub nsw i32 %264, 64
  store i32 %sub418, i32* %position, align 4, !tbaa !5
  br label %do.body.419

do.body.419:                                      ; preds = %for.body.411
  %step420 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dR421 = getelementptr inbounds %struct.ie_, %struct.ie_* %step420, i32 0, i32 1
  %265 = load i32, i32* %dR421, align 4, !tbaa !124
  %state422 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R423 = getelementptr inbounds %struct.ia_, %struct.ia_* %state422, i32 0, i32 1
  %266 = load i32, i32* %R423, align 4, !tbaa !127
  %sub424 = sub i32 %266, %265
  store i32 %sub424, i32* %R423, align 4, !tbaa !127
  %state425 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R426 = getelementptr inbounds %struct.ia_, %struct.ia_* %state425, i32 0, i32 1
  %267 = load i32, i32* %R426, align 4, !tbaa !127
  %cmp427 = icmp slt i32 %267, 0
  br i1 %cmp427, label %if.then.429, label %if.end.438

if.then.429:                                      ; preds = %do.body.419
  %state430 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q431 = getelementptr inbounds %struct.ia_, %struct.ia_* %state430, i32 0, i32 0
  %268 = load i32, i32* %Q431, align 4, !tbaa !126
  %inc432 = add nsw i32 %268, 1
  store i32 %inc432, i32* %Q431, align 4, !tbaa !126
  %step433 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %N434 = getelementptr inbounds %struct.ie_, %struct.ie_* %step433, i32 0, i32 2
  %269 = load i32, i32* %N434, align 4, !tbaa !125
  %state435 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R436 = getelementptr inbounds %struct.ia_, %struct.ia_* %state435, i32 0, i32 1
  %270 = load i32, i32* %R436, align 4, !tbaa !127
  %add437 = add i32 %270, %269
  store i32 %add437, i32* %R436, align 4, !tbaa !127
  br label %if.end.438

if.end.438:                                       ; preds = %if.then.429, %do.body.419
  %step439 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dQ440 = getelementptr inbounds %struct.ie_, %struct.ie_* %step439, i32 0, i32 0
  %271 = load i32, i32* %dQ440, align 4, !tbaa !120
  %state441 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q442 = getelementptr inbounds %struct.ia_, %struct.ia_* %state441, i32 0, i32 0
  %272 = load i32, i32* %Q442, align 4, !tbaa !126
  %add443 = add nsw i32 %272, %271
  store i32 %add443, i32* %Q442, align 4, !tbaa !126
  br label %do.cond.444

do.cond.444:                                      ; preds = %if.end.438
  br label %do.end.445

do.end.445:                                       ; preds = %do.cond.444
  br label %for.inc.446

for.inc.446:                                      ; preds = %do.end.445
  %273 = load i32, i32* %k, align 4, !tbaa !5
  %inc447 = add nsw i32 %273, 1
  store i32 %inc447, i32* %k, align 4, !tbaa !5
  br label %for.cond.408

for.end.448:                                      ; preds = %for.cond.408
  br label %if.end.534

if.else.449:                                      ; preds = %sw.bb.400
  %274 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_landscape450 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %274, i32 0, i32 79
  %curr_pos451 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape450, i32 0, i32 3
  %275 = load i32, i32* %curr_pos451, align 4, !tbaa !131
  store i32 %275, i32* %position, align 4, !tbaa !5
  %276 = load i32, i32* %src_size, align 4, !tbaa !5
  %277 = load i32, i32* %dest_height, align 4, !tbaa !5
  %cmp452 = icmp eq i32 %276, %277
  br i1 %cmp452, label %if.then.454, label %if.else.467

if.then.454:                                      ; preds = %if.else.449
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.455

for.cond.455:                                     ; preds = %for.inc.464, %if.then.454
  %278 = load i32, i32* %k, align 4, !tbaa !5
  %279 = load i32, i32* %data_length, align 4, !tbaa !5
  %cmp456 = icmp slt i32 %278, %279
  br i1 %cmp456, label %for.body.458, label %for.end.466

for.body.458:                                     ; preds = %for.cond.455
  %280 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom459 = sext i32 %280 to i64
  %281 = load i8*, i8** %psrc, align 8, !tbaa !1
  %arrayidx460 = getelementptr inbounds i8, i8* %281, i64 %idxprom459
  %282 = load i8, i8* %arrayidx460, align 1, !tbaa !101
  %283 = load i32, i32* %position, align 4, !tbaa !5
  %idxprom461 = sext i32 %283 to i64
  %284 = load i8*, i8** %devc_contone_gray, align 8, !tbaa !1
  %arrayidx462 = getelementptr inbounds i8, i8* %284, i64 %idxprom461
  store i8 %282, i8* %arrayidx462, align 1, !tbaa !101
  %285 = load i32, i32* %position, align 4, !tbaa !5
  %add463 = add nsw i32 %285, 64
  store i32 %add463, i32* %position, align 4, !tbaa !5
  br label %for.inc.464

for.inc.464:                                      ; preds = %for.body.458
  %286 = load i32, i32* %k, align 4, !tbaa !5
  %inc465 = add nsw i32 %286, 1
  store i32 %inc465, i32* %k, align 4, !tbaa !5
  br label %for.cond.455

for.end.466:                                      ; preds = %for.cond.455
  br label %if.end.533

if.else.467:                                      ; preds = %if.else.449
  %287 = load i32, i32* %scale_factor, align 4, !tbaa !5
  %conv468 = sext i32 %287 to i64
  %cmp469 = icmp eq i64 %conv468, 128
  br i1 %cmp469, label %if.then.471, label %if.else.490

if.then.471:                                      ; preds = %if.else.467
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.472

for.cond.472:                                     ; preds = %for.inc.487, %if.then.471
  %288 = load i32, i32* %k, align 4, !tbaa !5
  %289 = load i32, i32* %data_length, align 4, !tbaa !5
  %cmp473 = icmp slt i32 %288, %289
  br i1 %cmp473, label %for.body.475, label %for.end.489

for.body.475:                                     ; preds = %for.cond.472
  %290 = load i32, i32* %scale_factor, align 4, !tbaa !5
  %291 = load i32, i32* %k, align 4, !tbaa !5
  %mul476 = mul nsw i32 %290, %291
  %add477 = add nsw i32 %mul476, 128
  %shr478 = ashr i32 %add477, 8
  store i32 %shr478, i32* %offset, align 4, !tbaa !5
  %292 = load i32, i32* %offset, align 4, !tbaa !5
  %idxprom479 = sext i32 %292 to i64
  %293 = load i8*, i8** %psrc, align 8, !tbaa !1
  %arrayidx480 = getelementptr inbounds i8, i8* %293, i64 %idxprom479
  %294 = load i8, i8* %arrayidx480, align 1, !tbaa !101
  %295 = load i32, i32* %position, align 4, !tbaa !5
  %add481 = add nsw i32 %295, 64
  %idxprom482 = sext i32 %add481 to i64
  %296 = load i8*, i8** %devc_contone_gray, align 8, !tbaa !1
  %arrayidx483 = getelementptr inbounds i8, i8* %296, i64 %idxprom482
  store i8 %294, i8* %arrayidx483, align 1, !tbaa !101
  %297 = load i32, i32* %position, align 4, !tbaa !5
  %idxprom484 = sext i32 %297 to i64
  %298 = load i8*, i8** %devc_contone_gray, align 8, !tbaa !1
  %arrayidx485 = getelementptr inbounds i8, i8* %298, i64 %idxprom484
  store i8 %294, i8* %arrayidx485, align 1, !tbaa !101
  %299 = load i32, i32* %position, align 4, !tbaa !5
  %add486 = add nsw i32 %299, 128
  store i32 %add486, i32* %position, align 4, !tbaa !5
  br label %for.inc.487

for.inc.487:                                      ; preds = %for.body.475
  %300 = load i32, i32* %k, align 4, !tbaa !5
  %add488 = add nsw i32 %300, 2
  store i32 %add488, i32* %k, align 4, !tbaa !5
  br label %for.cond.472

for.end.489:                                      ; preds = %for.cond.472
  br label %if.end.532

if.else.490:                                      ; preds = %if.else.467
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.491

for.cond.491:                                     ; preds = %for.inc.529, %if.else.490
  %301 = load i32, i32* %k, align 4, !tbaa !5
  %302 = load i32, i32* %data_length, align 4, !tbaa !5
  %cmp492 = icmp slt i32 %301, %302
  br i1 %cmp492, label %for.body.494, label %for.end.531

for.body.494:                                     ; preds = %for.cond.491
  %state495 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q496 = getelementptr inbounds %struct.ia_, %struct.ia_* %state495, i32 0, i32 0
  %303 = load i32, i32* %Q496, align 4, !tbaa !126
  %idxprom497 = sext i32 %303 to i64
  %304 = load i8*, i8** %psrc, align 8, !tbaa !1
  %arrayidx498 = getelementptr inbounds i8, i8* %304, i64 %idxprom497
  %305 = load i8, i8* %arrayidx498, align 1, !tbaa !101
  %306 = load i32, i32* %position, align 4, !tbaa !5
  %idxprom499 = sext i32 %306 to i64
  %307 = load i8*, i8** %devc_contone_gray, align 8, !tbaa !1
  %arrayidx500 = getelementptr inbounds i8, i8* %307, i64 %idxprom499
  store i8 %305, i8* %arrayidx500, align 1, !tbaa !101
  %308 = load i32, i32* %position, align 4, !tbaa !5
  %add501 = add nsw i32 %308, 64
  store i32 %add501, i32* %position, align 4, !tbaa !5
  br label %do.body.502

do.body.502:                                      ; preds = %for.body.494
  %step503 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dR504 = getelementptr inbounds %struct.ie_, %struct.ie_* %step503, i32 0, i32 1
  %309 = load i32, i32* %dR504, align 4, !tbaa !124
  %state505 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R506 = getelementptr inbounds %struct.ia_, %struct.ia_* %state505, i32 0, i32 1
  %310 = load i32, i32* %R506, align 4, !tbaa !127
  %sub507 = sub i32 %310, %309
  store i32 %sub507, i32* %R506, align 4, !tbaa !127
  %state508 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R509 = getelementptr inbounds %struct.ia_, %struct.ia_* %state508, i32 0, i32 1
  %311 = load i32, i32* %R509, align 4, !tbaa !127
  %cmp510 = icmp slt i32 %311, 0
  br i1 %cmp510, label %if.then.512, label %if.end.521

if.then.512:                                      ; preds = %do.body.502
  %state513 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q514 = getelementptr inbounds %struct.ia_, %struct.ia_* %state513, i32 0, i32 0
  %312 = load i32, i32* %Q514, align 4, !tbaa !126
  %inc515 = add nsw i32 %312, 1
  store i32 %inc515, i32* %Q514, align 4, !tbaa !126
  %step516 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %N517 = getelementptr inbounds %struct.ie_, %struct.ie_* %step516, i32 0, i32 2
  %313 = load i32, i32* %N517, align 4, !tbaa !125
  %state518 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R519 = getelementptr inbounds %struct.ia_, %struct.ia_* %state518, i32 0, i32 1
  %314 = load i32, i32* %R519, align 4, !tbaa !127
  %add520 = add i32 %314, %313
  store i32 %add520, i32* %R519, align 4, !tbaa !127
  br label %if.end.521

if.end.521:                                       ; preds = %if.then.512, %do.body.502
  %step522 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dQ523 = getelementptr inbounds %struct.ie_, %struct.ie_* %step522, i32 0, i32 0
  %315 = load i32, i32* %dQ523, align 4, !tbaa !120
  %state524 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q525 = getelementptr inbounds %struct.ia_, %struct.ia_* %state524, i32 0, i32 0
  %316 = load i32, i32* %Q525, align 4, !tbaa !126
  %add526 = add nsw i32 %316, %315
  store i32 %add526, i32* %Q525, align 4, !tbaa !126
  br label %do.cond.527

do.cond.527:                                      ; preds = %if.end.521
  br label %do.end.528

do.end.528:                                       ; preds = %do.cond.527
  br label %for.inc.529

for.inc.529:                                      ; preds = %do.end.528
  %317 = load i32, i32* %k, align 4, !tbaa !5
  %inc530 = add nsw i32 %317, 1
  store i32 %inc530, i32* %k, align 4, !tbaa !5
  br label %for.cond.491

for.end.531:                                      ; preds = %for.cond.491
  br label %if.end.532

if.end.532:                                       ; preds = %for.end.531, %for.end.489
  br label %if.end.533

if.end.533:                                       ; preds = %if.end.532, %for.end.466
  br label %if.end.534

if.end.534:                                       ; preds = %if.end.533, %for.end.448
  %318 = load i32, i32* %vdi, align 4, !tbaa !5
  %319 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_landscape535 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %319, i32 0, i32 79
  %count536 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape535, i32 0, i32 0
  %320 = load i32, i32* %count536, align 4, !tbaa !103
  %add537 = add nsw i32 %320, %318
  store i32 %add537, i32* %count536, align 4, !tbaa !103
  %321 = load i32, i32* %vdi, align 4, !tbaa !5
  %322 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_landscape538 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %322, i32 0, i32 79
  %curr_pos539 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape538, i32 0, i32 3
  %323 = load i32, i32* %curr_pos539, align 4, !tbaa !131
  %idxprom540 = sext i32 %323 to i64
  %324 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_landscape541 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %324, i32 0, i32 79
  %widths = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape541, i32 0, i32 1
  %arrayidx542 = getelementptr inbounds [64 x i32], [64 x i32]* %widths, i32 0, i64 %idxprom540
  store i32 %321, i32* %arrayidx542, align 4, !tbaa !5
  %325 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_landscape543 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %325, i32 0, i32 79
  %index544 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape543, i32 0, i32 4
  %326 = load i32, i32* %index544, align 4, !tbaa !117
  %327 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_landscape545 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %327, i32 0, i32 79
  %curr_pos546 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape545, i32 0, i32 3
  %328 = load i32, i32* %curr_pos546, align 4, !tbaa !131
  %add547 = add nsw i32 %328, %326
  store i32 %add547, i32* %curr_pos546, align 4, !tbaa !131
  %329 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_landscape548 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %329, i32 0, i32 79
  %num_contones = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape548, i32 0, i32 5
  %330 = load i32, i32* %num_contones, align 4, !tbaa !132
  %inc549 = add nsw i32 %330, 1
  store i32 %inc549, i32* %num_contones, align 4, !tbaa !132
  br label %sw.epilog.551

sw.default.550:                                   ; preds = %if.then.290
  br label %sw.epilog.551

sw.epilog.551:                                    ; preds = %sw.default.550, %if.end.534, %if.end.399
  br label %if.end.1029

if.else.552:                                      ; preds = %do.end.285
  %331 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %color_cache553 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %331, i32 0, i32 71
  %332 = load %struct.gx_image_color_cache_s*, %struct.gx_image_color_cache_s** %color_cache553, align 8, !tbaa !128
  %device_contone = getelementptr inbounds %struct.gx_image_color_cache_s, %struct.gx_image_color_cache_s* %332, i32 0, i32 1
  %333 = load i8*, i8** %device_contone, align 8, !tbaa !133
  store i8* %333, i8** %color_cache, align 8, !tbaa !1
  %334 = load i32, i32* %posture, align 4, !tbaa !101
  switch i32 %334, label %sw.default.1027 [
    i32 0, label %sw.bb.554
    i32 1, label %sw.bb.777
  ]

sw.bb.554:                                        ; preds = %if.else.552
  %335 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dst_width555 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %335, i32 0, i32 25
  %336 = load i32, i32* %dst_width555, align 4, !tbaa !129
  %cmp556 = icmp sgt i32 %336, 0
  br i1 %cmp556, label %if.then.558, label %if.else.659

if.then.558:                                      ; preds = %sw.bb.554
  %337 = load i32, i32* %spp_out, align 4, !tbaa !5
  %cmp559 = icmp eq i32 %337, 1
  br i1 %cmp559, label %if.then.561, label %if.else.603

if.then.561:                                      ; preds = %if.then.558
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.562

for.cond.562:                                     ; preds = %for.inc.600, %if.then.561
  %338 = load i32, i32* %k, align 4, !tbaa !5
  %339 = load i32, i32* %data_length, align 4, !tbaa !5
  %cmp563 = icmp slt i32 %338, %339
  br i1 %cmp563, label %for.body.565, label %for.end.602

for.body.565:                                     ; preds = %for.cond.562
  %state566 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q567 = getelementptr inbounds %struct.ia_, %struct.ia_* %state566, i32 0, i32 0
  %340 = load i32, i32* %Q567, align 4, !tbaa !126
  %idxprom568 = sext i32 %340 to i64
  %341 = load i8*, i8** %psrc, align 8, !tbaa !1
  %arrayidx569 = getelementptr inbounds i8, i8* %341, i64 %idxprom568
  %342 = load i8, i8* %arrayidx569, align 1, !tbaa !101
  %idxprom570 = zext i8 %342 to i64
  %343 = load i8*, i8** %color_cache, align 8, !tbaa !1
  %arrayidx571 = getelementptr inbounds i8, i8* %343, i64 %idxprom570
  %344 = load i8, i8* %arrayidx571, align 1, !tbaa !101
  %345 = load i8*, i8** %devc_contone_gray, align 8, !tbaa !1
  %incdec.ptr572 = getelementptr inbounds i8, i8* %345, i32 1
  store i8* %incdec.ptr572, i8** %devc_contone_gray, align 8, !tbaa !1
  store i8 %344, i8* %345, align 1, !tbaa !101
  br label %do.body.573

do.body.573:                                      ; preds = %for.body.565
  %step574 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dR575 = getelementptr inbounds %struct.ie_, %struct.ie_* %step574, i32 0, i32 1
  %346 = load i32, i32* %dR575, align 4, !tbaa !124
  %state576 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R577 = getelementptr inbounds %struct.ia_, %struct.ia_* %state576, i32 0, i32 1
  %347 = load i32, i32* %R577, align 4, !tbaa !127
  %sub578 = sub i32 %347, %346
  store i32 %sub578, i32* %R577, align 4, !tbaa !127
  %state579 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R580 = getelementptr inbounds %struct.ia_, %struct.ia_* %state579, i32 0, i32 1
  %348 = load i32, i32* %R580, align 4, !tbaa !127
  %cmp581 = icmp slt i32 %348, 0
  br i1 %cmp581, label %if.then.583, label %if.end.592

if.then.583:                                      ; preds = %do.body.573
  %state584 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q585 = getelementptr inbounds %struct.ia_, %struct.ia_* %state584, i32 0, i32 0
  %349 = load i32, i32* %Q585, align 4, !tbaa !126
  %inc586 = add nsw i32 %349, 1
  store i32 %inc586, i32* %Q585, align 4, !tbaa !126
  %step587 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %N588 = getelementptr inbounds %struct.ie_, %struct.ie_* %step587, i32 0, i32 2
  %350 = load i32, i32* %N588, align 4, !tbaa !125
  %state589 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R590 = getelementptr inbounds %struct.ia_, %struct.ia_* %state589, i32 0, i32 1
  %351 = load i32, i32* %R590, align 4, !tbaa !127
  %add591 = add i32 %351, %350
  store i32 %add591, i32* %R590, align 4, !tbaa !127
  br label %if.end.592

if.end.592:                                       ; preds = %if.then.583, %do.body.573
  %step593 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dQ594 = getelementptr inbounds %struct.ie_, %struct.ie_* %step593, i32 0, i32 0
  %352 = load i32, i32* %dQ594, align 4, !tbaa !120
  %state595 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q596 = getelementptr inbounds %struct.ia_, %struct.ia_* %state595, i32 0, i32 0
  %353 = load i32, i32* %Q596, align 4, !tbaa !126
  %add597 = add nsw i32 %353, %352
  store i32 %add597, i32* %Q596, align 4, !tbaa !126
  br label %do.cond.598

do.cond.598:                                      ; preds = %if.end.592
  br label %do.end.599

do.end.599:                                       ; preds = %do.cond.598
  br label %for.inc.600

for.inc.600:                                      ; preds = %do.end.599
  %354 = load i32, i32* %k, align 4, !tbaa !5
  %inc601 = add nsw i32 %354, 1
  store i32 %inc601, i32* %k, align 4, !tbaa !5
  br label %for.cond.562

for.end.602:                                      ; preds = %for.cond.562
  br label %if.end.658

if.else.603:                                      ; preds = %if.then.558
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.604

for.cond.604:                                     ; preds = %for.inc.655, %if.else.603
  %355 = load i32, i32* %k, align 4, !tbaa !5
  %356 = load i32, i32* %data_length, align 4, !tbaa !5
  %cmp605 = icmp slt i32 %355, %356
  br i1 %cmp605, label %for.body.607, label %for.end.657

for.body.607:                                     ; preds = %for.cond.604
  %357 = load i8*, i8** %color_cache, align 8, !tbaa !1
  %state608 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q609 = getelementptr inbounds %struct.ia_, %struct.ia_* %state608, i32 0, i32 0
  %358 = load i32, i32* %Q609, align 4, !tbaa !126
  %idxprom610 = sext i32 %358 to i64
  %359 = load i8*, i8** %psrc, align 8, !tbaa !1
  %arrayidx611 = getelementptr inbounds i8, i8* %359, i64 %idxprom610
  %360 = load i8, i8* %arrayidx611, align 1, !tbaa !101
  %conv612 = zext i8 %360 to i32
  %361 = load i32, i32* %spp_out, align 4, !tbaa !5
  %mul613 = mul nsw i32 %conv612, %361
  %idx.ext614 = sext i32 %mul613 to i64
  %add.ptr615 = getelementptr inbounds i8, i8* %357, i64 %idx.ext614
  store i8* %add.ptr615, i8** %dev_value, align 8, !tbaa !1
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.616

for.cond.616:                                     ; preds = %for.inc.625, %for.body.607
  %362 = load i32, i32* %j, align 4, !tbaa !5
  %363 = load i32, i32* %spp_out, align 4, !tbaa !5
  %cmp617 = icmp slt i32 %362, %363
  br i1 %cmp617, label %for.body.619, label %for.end.627

for.body.619:                                     ; preds = %for.cond.616
  %364 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom620 = sext i32 %364 to i64
  %365 = load i8*, i8** %dev_value, align 8, !tbaa !1
  %arrayidx621 = getelementptr inbounds i8, i8* %365, i64 %idxprom620
  %366 = load i8, i8* %arrayidx621, align 1, !tbaa !101
  %367 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom622 = sext i32 %367 to i64
  %arrayidx623 = getelementptr inbounds [64 x i8*], [64 x i8*]* %devc_contone, i32 0, i64 %idxprom622
  %368 = load i8*, i8** %arrayidx623, align 8, !tbaa !1
  %incdec.ptr624 = getelementptr inbounds i8, i8* %368, i32 1
  store i8* %incdec.ptr624, i8** %arrayidx623, align 8, !tbaa !1
  store i8 %366, i8* %368, align 1, !tbaa !101
  br label %for.inc.625

for.inc.625:                                      ; preds = %for.body.619
  %369 = load i32, i32* %j, align 4, !tbaa !5
  %inc626 = add nsw i32 %369, 1
  store i32 %inc626, i32* %j, align 4, !tbaa !5
  br label %for.cond.616

for.end.627:                                      ; preds = %for.cond.616
  br label %do.body.628

do.body.628:                                      ; preds = %for.end.627
  %step629 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dR630 = getelementptr inbounds %struct.ie_, %struct.ie_* %step629, i32 0, i32 1
  %370 = load i32, i32* %dR630, align 4, !tbaa !124
  %state631 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R632 = getelementptr inbounds %struct.ia_, %struct.ia_* %state631, i32 0, i32 1
  %371 = load i32, i32* %R632, align 4, !tbaa !127
  %sub633 = sub i32 %371, %370
  store i32 %sub633, i32* %R632, align 4, !tbaa !127
  %state634 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R635 = getelementptr inbounds %struct.ia_, %struct.ia_* %state634, i32 0, i32 1
  %372 = load i32, i32* %R635, align 4, !tbaa !127
  %cmp636 = icmp slt i32 %372, 0
  br i1 %cmp636, label %if.then.638, label %if.end.647

if.then.638:                                      ; preds = %do.body.628
  %state639 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q640 = getelementptr inbounds %struct.ia_, %struct.ia_* %state639, i32 0, i32 0
  %373 = load i32, i32* %Q640, align 4, !tbaa !126
  %inc641 = add nsw i32 %373, 1
  store i32 %inc641, i32* %Q640, align 4, !tbaa !126
  %step642 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %N643 = getelementptr inbounds %struct.ie_, %struct.ie_* %step642, i32 0, i32 2
  %374 = load i32, i32* %N643, align 4, !tbaa !125
  %state644 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R645 = getelementptr inbounds %struct.ia_, %struct.ia_* %state644, i32 0, i32 1
  %375 = load i32, i32* %R645, align 4, !tbaa !127
  %add646 = add i32 %375, %374
  store i32 %add646, i32* %R645, align 4, !tbaa !127
  br label %if.end.647

if.end.647:                                       ; preds = %if.then.638, %do.body.628
  %step648 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dQ649 = getelementptr inbounds %struct.ie_, %struct.ie_* %step648, i32 0, i32 0
  %376 = load i32, i32* %dQ649, align 4, !tbaa !120
  %state650 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q651 = getelementptr inbounds %struct.ia_, %struct.ia_* %state650, i32 0, i32 0
  %377 = load i32, i32* %Q651, align 4, !tbaa !126
  %add652 = add nsw i32 %377, %376
  store i32 %add652, i32* %Q651, align 4, !tbaa !126
  br label %do.cond.653

do.cond.653:                                      ; preds = %if.end.647
  br label %do.end.654

do.end.654:                                       ; preds = %do.cond.653
  br label %for.inc.655

for.inc.655:                                      ; preds = %do.end.654
  %378 = load i32, i32* %k, align 4, !tbaa !5
  %inc656 = add nsw i32 %378, 1
  store i32 %inc656, i32* %k, align 4, !tbaa !5
  br label %for.cond.604

for.end.657:                                      ; preds = %for.cond.604
  br label %if.end.658

if.end.658:                                       ; preds = %for.end.657, %for.end.602
  br label %if.end.776

if.else.659:                                      ; preds = %sw.bb.554
  %379 = load i32, i32* %spp_out, align 4, !tbaa !5
  %cmp660 = icmp eq i32 %379, 1
  br i1 %cmp660, label %if.then.662, label %if.else.706

if.then.662:                                      ; preds = %if.else.659
  %380 = load i32, i32* %data_length, align 4, !tbaa !5
  %sub663 = sub nsw i32 %380, 1
  store i32 %sub663, i32* %k, align 4, !tbaa !5
  br label %for.cond.664

for.cond.664:                                     ; preds = %for.inc.703, %if.then.662
  %381 = load i32, i32* %k, align 4, !tbaa !5
  %cmp665 = icmp sge i32 %381, 0
  br i1 %cmp665, label %for.body.667, label %for.end.705

for.body.667:                                     ; preds = %for.cond.664
  %state668 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q669 = getelementptr inbounds %struct.ia_, %struct.ia_* %state668, i32 0, i32 0
  %382 = load i32, i32* %Q669, align 4, !tbaa !126
  %idxprom670 = sext i32 %382 to i64
  %383 = load i8*, i8** %psrc, align 8, !tbaa !1
  %arrayidx671 = getelementptr inbounds i8, i8* %383, i64 %idxprom670
  %384 = load i8, i8* %arrayidx671, align 1, !tbaa !101
  %idxprom672 = zext i8 %384 to i64
  %385 = load i8*, i8** %color_cache, align 8, !tbaa !1
  %arrayidx673 = getelementptr inbounds i8, i8* %385, i64 %idxprom672
  %386 = load i8, i8* %arrayidx673, align 1, !tbaa !101
  %387 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom674 = sext i32 %387 to i64
  %388 = load i8*, i8** %devc_contone_gray, align 8, !tbaa !1
  %arrayidx675 = getelementptr inbounds i8, i8* %388, i64 %idxprom674
  store i8 %386, i8* %arrayidx675, align 1, !tbaa !101
  br label %do.body.676

do.body.676:                                      ; preds = %for.body.667
  %step677 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dR678 = getelementptr inbounds %struct.ie_, %struct.ie_* %step677, i32 0, i32 1
  %389 = load i32, i32* %dR678, align 4, !tbaa !124
  %state679 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R680 = getelementptr inbounds %struct.ia_, %struct.ia_* %state679, i32 0, i32 1
  %390 = load i32, i32* %R680, align 4, !tbaa !127
  %sub681 = sub i32 %390, %389
  store i32 %sub681, i32* %R680, align 4, !tbaa !127
  %state682 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R683 = getelementptr inbounds %struct.ia_, %struct.ia_* %state682, i32 0, i32 1
  %391 = load i32, i32* %R683, align 4, !tbaa !127
  %cmp684 = icmp slt i32 %391, 0
  br i1 %cmp684, label %if.then.686, label %if.end.695

if.then.686:                                      ; preds = %do.body.676
  %state687 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q688 = getelementptr inbounds %struct.ia_, %struct.ia_* %state687, i32 0, i32 0
  %392 = load i32, i32* %Q688, align 4, !tbaa !126
  %inc689 = add nsw i32 %392, 1
  store i32 %inc689, i32* %Q688, align 4, !tbaa !126
  %step690 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %N691 = getelementptr inbounds %struct.ie_, %struct.ie_* %step690, i32 0, i32 2
  %393 = load i32, i32* %N691, align 4, !tbaa !125
  %state692 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R693 = getelementptr inbounds %struct.ia_, %struct.ia_* %state692, i32 0, i32 1
  %394 = load i32, i32* %R693, align 4, !tbaa !127
  %add694 = add i32 %394, %393
  store i32 %add694, i32* %R693, align 4, !tbaa !127
  br label %if.end.695

if.end.695:                                       ; preds = %if.then.686, %do.body.676
  %step696 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dQ697 = getelementptr inbounds %struct.ie_, %struct.ie_* %step696, i32 0, i32 0
  %395 = load i32, i32* %dQ697, align 4, !tbaa !120
  %state698 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q699 = getelementptr inbounds %struct.ia_, %struct.ia_* %state698, i32 0, i32 0
  %396 = load i32, i32* %Q699, align 4, !tbaa !126
  %add700 = add nsw i32 %396, %395
  store i32 %add700, i32* %Q699, align 4, !tbaa !126
  br label %do.cond.701

do.cond.701:                                      ; preds = %if.end.695
  br label %do.end.702

do.end.702:                                       ; preds = %do.cond.701
  br label %for.inc.703

for.inc.703:                                      ; preds = %do.end.702
  %397 = load i32, i32* %k, align 4, !tbaa !5
  %dec704 = add nsw i32 %397, -1
  store i32 %dec704, i32* %k, align 4, !tbaa !5
  br label %for.cond.664

for.end.705:                                      ; preds = %for.cond.664
  br label %if.end.775

if.else.706:                                      ; preds = %if.else.659
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.707

for.cond.707:                                     ; preds = %for.inc.718, %if.else.706
  %398 = load i32, i32* %j, align 4, !tbaa !5
  %399 = load i32, i32* %spp_out, align 4, !tbaa !5
  %cmp708 = icmp slt i32 %398, %399
  br i1 %cmp708, label %for.body.710, label %for.end.720

for.body.710:                                     ; preds = %for.cond.707
  %400 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom711 = sext i32 %400 to i64
  %arrayidx712 = getelementptr inbounds [64 x i8*], [64 x i8*]* %devc_contone, i32 0, i64 %idxprom711
  %401 = load i8*, i8** %arrayidx712, align 8, !tbaa !1
  %402 = load i32, i32* %data_length, align 4, !tbaa !5
  %idx.ext713 = sext i32 %402 to i64
  %add.ptr714 = getelementptr inbounds i8, i8* %401, i64 %idx.ext713
  %add.ptr715 = getelementptr inbounds i8, i8* %add.ptr714, i64 -1
  %403 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom716 = sext i32 %403 to i64
  %arrayidx717 = getelementptr inbounds [64 x i8*], [64 x i8*]* %devc_contone, i32 0, i64 %idxprom716
  store i8* %add.ptr715, i8** %arrayidx717, align 8, !tbaa !1
  br label %for.inc.718

for.inc.718:                                      ; preds = %for.body.710
  %404 = load i32, i32* %j, align 4, !tbaa !5
  %inc719 = add nsw i32 %404, 1
  store i32 %inc719, i32* %j, align 4, !tbaa !5
  br label %for.cond.707

for.end.720:                                      ; preds = %for.cond.707
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.721

for.cond.721:                                     ; preds = %for.inc.772, %for.end.720
  %405 = load i32, i32* %k, align 4, !tbaa !5
  %406 = load i32, i32* %data_length, align 4, !tbaa !5
  %cmp722 = icmp slt i32 %405, %406
  br i1 %cmp722, label %for.body.724, label %for.end.774

for.body.724:                                     ; preds = %for.cond.721
  %407 = load i8*, i8** %color_cache, align 8, !tbaa !1
  %state725 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q726 = getelementptr inbounds %struct.ia_, %struct.ia_* %state725, i32 0, i32 0
  %408 = load i32, i32* %Q726, align 4, !tbaa !126
  %idxprom727 = sext i32 %408 to i64
  %409 = load i8*, i8** %psrc, align 8, !tbaa !1
  %arrayidx728 = getelementptr inbounds i8, i8* %409, i64 %idxprom727
  %410 = load i8, i8* %arrayidx728, align 1, !tbaa !101
  %conv729 = zext i8 %410 to i32
  %411 = load i32, i32* %spp_out, align 4, !tbaa !5
  %mul730 = mul nsw i32 %conv729, %411
  %idx.ext731 = sext i32 %mul730 to i64
  %add.ptr732 = getelementptr inbounds i8, i8* %407, i64 %idx.ext731
  store i8* %add.ptr732, i8** %dev_value, align 8, !tbaa !1
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.733

for.cond.733:                                     ; preds = %for.inc.742, %for.body.724
  %412 = load i32, i32* %j, align 4, !tbaa !5
  %413 = load i32, i32* %spp_out, align 4, !tbaa !5
  %cmp734 = icmp slt i32 %412, %413
  br i1 %cmp734, label %for.body.736, label %for.end.744

for.body.736:                                     ; preds = %for.cond.733
  %414 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom737 = sext i32 %414 to i64
  %415 = load i8*, i8** %dev_value, align 8, !tbaa !1
  %arrayidx738 = getelementptr inbounds i8, i8* %415, i64 %idxprom737
  %416 = load i8, i8* %arrayidx738, align 1, !tbaa !101
  %417 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom739 = sext i32 %417 to i64
  %arrayidx740 = getelementptr inbounds [64 x i8*], [64 x i8*]* %devc_contone, i32 0, i64 %idxprom739
  %418 = load i8*, i8** %arrayidx740, align 8, !tbaa !1
  %incdec.ptr741 = getelementptr inbounds i8, i8* %418, i32 -1
  store i8* %incdec.ptr741, i8** %arrayidx740, align 8, !tbaa !1
  store i8 %416, i8* %418, align 1, !tbaa !101
  br label %for.inc.742

for.inc.742:                                      ; preds = %for.body.736
  %419 = load i32, i32* %j, align 4, !tbaa !5
  %inc743 = add nsw i32 %419, 1
  store i32 %inc743, i32* %j, align 4, !tbaa !5
  br label %for.cond.733

for.end.744:                                      ; preds = %for.cond.733
  br label %do.body.745

do.body.745:                                      ; preds = %for.end.744
  %step746 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dR747 = getelementptr inbounds %struct.ie_, %struct.ie_* %step746, i32 0, i32 1
  %420 = load i32, i32* %dR747, align 4, !tbaa !124
  %state748 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R749 = getelementptr inbounds %struct.ia_, %struct.ia_* %state748, i32 0, i32 1
  %421 = load i32, i32* %R749, align 4, !tbaa !127
  %sub750 = sub i32 %421, %420
  store i32 %sub750, i32* %R749, align 4, !tbaa !127
  %state751 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R752 = getelementptr inbounds %struct.ia_, %struct.ia_* %state751, i32 0, i32 1
  %422 = load i32, i32* %R752, align 4, !tbaa !127
  %cmp753 = icmp slt i32 %422, 0
  br i1 %cmp753, label %if.then.755, label %if.end.764

if.then.755:                                      ; preds = %do.body.745
  %state756 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q757 = getelementptr inbounds %struct.ia_, %struct.ia_* %state756, i32 0, i32 0
  %423 = load i32, i32* %Q757, align 4, !tbaa !126
  %inc758 = add nsw i32 %423, 1
  store i32 %inc758, i32* %Q757, align 4, !tbaa !126
  %step759 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %N760 = getelementptr inbounds %struct.ie_, %struct.ie_* %step759, i32 0, i32 2
  %424 = load i32, i32* %N760, align 4, !tbaa !125
  %state761 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R762 = getelementptr inbounds %struct.ia_, %struct.ia_* %state761, i32 0, i32 1
  %425 = load i32, i32* %R762, align 4, !tbaa !127
  %add763 = add i32 %425, %424
  store i32 %add763, i32* %R762, align 4, !tbaa !127
  br label %if.end.764

if.end.764:                                       ; preds = %if.then.755, %do.body.745
  %step765 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dQ766 = getelementptr inbounds %struct.ie_, %struct.ie_* %step765, i32 0, i32 0
  %426 = load i32, i32* %dQ766, align 4, !tbaa !120
  %state767 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q768 = getelementptr inbounds %struct.ia_, %struct.ia_* %state767, i32 0, i32 0
  %427 = load i32, i32* %Q768, align 4, !tbaa !126
  %add769 = add nsw i32 %427, %426
  store i32 %add769, i32* %Q768, align 4, !tbaa !126
  br label %do.cond.770

do.cond.770:                                      ; preds = %if.end.764
  br label %do.end.771

do.end.771:                                       ; preds = %do.cond.770
  br label %for.inc.772

for.inc.772:                                      ; preds = %do.end.771
  %428 = load i32, i32* %k, align 4, !tbaa !5
  %inc773 = add nsw i32 %428, 1
  store i32 %inc773, i32* %k, align 4, !tbaa !5
  br label %for.cond.721

for.end.774:                                      ; preds = %for.cond.721
  br label %if.end.775

if.end.775:                                       ; preds = %for.end.774, %for.end.705
  br label %if.end.776

if.end.776:                                       ; preds = %if.end.775, %if.end.658
  br label %sw.epilog.1028

sw.bb.777:                                        ; preds = %if.else.552
  %429 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_landscape778 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %429, i32 0, i32 79
  %flipy779 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape778, i32 0, i32 7
  %430 = load i32, i32* %flipy779, align 4, !tbaa !130
  %tobool780 = icmp ne i32 %430, 0
  br i1 %tobool780, label %if.then.781, label %if.else.890

if.then.781:                                      ; preds = %sw.bb.777
  %431 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_landscape782 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %431, i32 0, i32 79
  %curr_pos783 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape782, i32 0, i32 3
  %432 = load i32, i32* %curr_pos783, align 4, !tbaa !131
  %433 = load i32, i32* %data_length, align 4, !tbaa !5
  %sub784 = sub nsw i32 %433, 1
  %mul785 = mul nsw i32 64, %sub784
  %add786 = add nsw i32 %432, %mul785
  store i32 %add786, i32* %position, align 4, !tbaa !5
  %434 = load i32, i32* %spp_out, align 4, !tbaa !5
  %cmp787 = icmp eq i32 %434, 1
  br i1 %cmp787, label %if.then.789, label %if.else.833

if.then.789:                                      ; preds = %if.then.781
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.790

for.cond.790:                                     ; preds = %for.inc.830, %if.then.789
  %435 = load i32, i32* %k, align 4, !tbaa !5
  %436 = load i32, i32* %data_length, align 4, !tbaa !5
  %cmp791 = icmp slt i32 %435, %436
  br i1 %cmp791, label %for.body.793, label %for.end.832

for.body.793:                                     ; preds = %for.cond.790
  %state794 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q795 = getelementptr inbounds %struct.ia_, %struct.ia_* %state794, i32 0, i32 0
  %437 = load i32, i32* %Q795, align 4, !tbaa !126
  %idxprom796 = sext i32 %437 to i64
  %438 = load i8*, i8** %psrc, align 8, !tbaa !1
  %arrayidx797 = getelementptr inbounds i8, i8* %438, i64 %idxprom796
  %439 = load i8, i8* %arrayidx797, align 1, !tbaa !101
  %idxprom798 = zext i8 %439 to i64
  %440 = load i8*, i8** %color_cache, align 8, !tbaa !1
  %arrayidx799 = getelementptr inbounds i8, i8* %440, i64 %idxprom798
  %441 = load i8, i8* %arrayidx799, align 1, !tbaa !101
  %442 = load i32, i32* %position, align 4, !tbaa !5
  %idxprom800 = sext i32 %442 to i64
  %443 = load i8*, i8** %devc_contone_gray, align 8, !tbaa !1
  %arrayidx801 = getelementptr inbounds i8, i8* %443, i64 %idxprom800
  store i8 %441, i8* %arrayidx801, align 1, !tbaa !101
  %444 = load i32, i32* %position, align 4, !tbaa !5
  %sub802 = sub nsw i32 %444, 64
  store i32 %sub802, i32* %position, align 4, !tbaa !5
  br label %do.body.803

do.body.803:                                      ; preds = %for.body.793
  %step804 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dR805 = getelementptr inbounds %struct.ie_, %struct.ie_* %step804, i32 0, i32 1
  %445 = load i32, i32* %dR805, align 4, !tbaa !124
  %state806 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R807 = getelementptr inbounds %struct.ia_, %struct.ia_* %state806, i32 0, i32 1
  %446 = load i32, i32* %R807, align 4, !tbaa !127
  %sub808 = sub i32 %446, %445
  store i32 %sub808, i32* %R807, align 4, !tbaa !127
  %state809 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R810 = getelementptr inbounds %struct.ia_, %struct.ia_* %state809, i32 0, i32 1
  %447 = load i32, i32* %R810, align 4, !tbaa !127
  %cmp811 = icmp slt i32 %447, 0
  br i1 %cmp811, label %if.then.813, label %if.end.822

if.then.813:                                      ; preds = %do.body.803
  %state814 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q815 = getelementptr inbounds %struct.ia_, %struct.ia_* %state814, i32 0, i32 0
  %448 = load i32, i32* %Q815, align 4, !tbaa !126
  %inc816 = add nsw i32 %448, 1
  store i32 %inc816, i32* %Q815, align 4, !tbaa !126
  %step817 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %N818 = getelementptr inbounds %struct.ie_, %struct.ie_* %step817, i32 0, i32 2
  %449 = load i32, i32* %N818, align 4, !tbaa !125
  %state819 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R820 = getelementptr inbounds %struct.ia_, %struct.ia_* %state819, i32 0, i32 1
  %450 = load i32, i32* %R820, align 4, !tbaa !127
  %add821 = add i32 %450, %449
  store i32 %add821, i32* %R820, align 4, !tbaa !127
  br label %if.end.822

if.end.822:                                       ; preds = %if.then.813, %do.body.803
  %step823 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dQ824 = getelementptr inbounds %struct.ie_, %struct.ie_* %step823, i32 0, i32 0
  %451 = load i32, i32* %dQ824, align 4, !tbaa !120
  %state825 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q826 = getelementptr inbounds %struct.ia_, %struct.ia_* %state825, i32 0, i32 0
  %452 = load i32, i32* %Q826, align 4, !tbaa !126
  %add827 = add nsw i32 %452, %451
  store i32 %add827, i32* %Q826, align 4, !tbaa !126
  br label %do.cond.828

do.cond.828:                                      ; preds = %if.end.822
  br label %do.end.829

do.end.829:                                       ; preds = %do.cond.828
  br label %for.inc.830

for.inc.830:                                      ; preds = %do.end.829
  %453 = load i32, i32* %k, align 4, !tbaa !5
  %inc831 = add nsw i32 %453, 1
  store i32 %inc831, i32* %k, align 4, !tbaa !5
  br label %for.cond.790

for.end.832:                                      ; preds = %for.cond.790
  br label %if.end.889

if.else.833:                                      ; preds = %if.then.781
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.834

for.cond.834:                                     ; preds = %for.inc.886, %if.else.833
  %454 = load i32, i32* %k, align 4, !tbaa !5
  %455 = load i32, i32* %data_length, align 4, !tbaa !5
  %cmp835 = icmp slt i32 %454, %455
  br i1 %cmp835, label %for.body.837, label %for.end.888

for.body.837:                                     ; preds = %for.cond.834
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.838

for.cond.838:                                     ; preds = %for.inc.855, %for.body.837
  %456 = load i32, i32* %j, align 4, !tbaa !5
  %457 = load i32, i32* %spp_out, align 4, !tbaa !5
  %cmp839 = icmp slt i32 %456, %457
  br i1 %cmp839, label %for.body.841, label %for.end.857

for.body.841:                                     ; preds = %for.cond.838
  %state842 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q843 = getelementptr inbounds %struct.ia_, %struct.ia_* %state842, i32 0, i32 0
  %458 = load i32, i32* %Q843, align 4, !tbaa !126
  %idxprom844 = sext i32 %458 to i64
  %459 = load i8*, i8** %psrc, align 8, !tbaa !1
  %arrayidx845 = getelementptr inbounds i8, i8* %459, i64 %idxprom844
  %460 = load i8, i8* %arrayidx845, align 1, !tbaa !101
  %conv846 = zext i8 %460 to i32
  %461 = load i32, i32* %spp_out, align 4, !tbaa !5
  %mul847 = mul nsw i32 %conv846, %461
  %462 = load i32, i32* %j, align 4, !tbaa !5
  %add848 = add nsw i32 %mul847, %462
  %idxprom849 = sext i32 %add848 to i64
  %463 = load i8*, i8** %color_cache, align 8, !tbaa !1
  %arrayidx850 = getelementptr inbounds i8, i8* %463, i64 %idxprom849
  %464 = load i8, i8* %arrayidx850, align 1, !tbaa !101
  %465 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom851 = sext i32 %465 to i64
  %arrayidx852 = getelementptr inbounds [64 x i8*], [64 x i8*]* %devc_contone, i32 0, i64 %idxprom851
  %466 = load i8*, i8** %arrayidx852, align 8, !tbaa !1
  %467 = load i32, i32* %position, align 4, !tbaa !5
  %idx.ext853 = sext i32 %467 to i64
  %add.ptr854 = getelementptr inbounds i8, i8* %466, i64 %idx.ext853
  store i8 %464, i8* %add.ptr854, align 1, !tbaa !101
  br label %for.inc.855

for.inc.855:                                      ; preds = %for.body.841
  %468 = load i32, i32* %j, align 4, !tbaa !5
  %inc856 = add nsw i32 %468, 1
  store i32 %inc856, i32* %j, align 4, !tbaa !5
  br label %for.cond.838

for.end.857:                                      ; preds = %for.cond.838
  %469 = load i32, i32* %position, align 4, !tbaa !5
  %sub858 = sub nsw i32 %469, 64
  store i32 %sub858, i32* %position, align 4, !tbaa !5
  br label %do.body.859

do.body.859:                                      ; preds = %for.end.857
  %step860 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dR861 = getelementptr inbounds %struct.ie_, %struct.ie_* %step860, i32 0, i32 1
  %470 = load i32, i32* %dR861, align 4, !tbaa !124
  %state862 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R863 = getelementptr inbounds %struct.ia_, %struct.ia_* %state862, i32 0, i32 1
  %471 = load i32, i32* %R863, align 4, !tbaa !127
  %sub864 = sub i32 %471, %470
  store i32 %sub864, i32* %R863, align 4, !tbaa !127
  %state865 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R866 = getelementptr inbounds %struct.ia_, %struct.ia_* %state865, i32 0, i32 1
  %472 = load i32, i32* %R866, align 4, !tbaa !127
  %cmp867 = icmp slt i32 %472, 0
  br i1 %cmp867, label %if.then.869, label %if.end.878

if.then.869:                                      ; preds = %do.body.859
  %state870 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q871 = getelementptr inbounds %struct.ia_, %struct.ia_* %state870, i32 0, i32 0
  %473 = load i32, i32* %Q871, align 4, !tbaa !126
  %inc872 = add nsw i32 %473, 1
  store i32 %inc872, i32* %Q871, align 4, !tbaa !126
  %step873 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %N874 = getelementptr inbounds %struct.ie_, %struct.ie_* %step873, i32 0, i32 2
  %474 = load i32, i32* %N874, align 4, !tbaa !125
  %state875 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R876 = getelementptr inbounds %struct.ia_, %struct.ia_* %state875, i32 0, i32 1
  %475 = load i32, i32* %R876, align 4, !tbaa !127
  %add877 = add i32 %475, %474
  store i32 %add877, i32* %R876, align 4, !tbaa !127
  br label %if.end.878

if.end.878:                                       ; preds = %if.then.869, %do.body.859
  %step879 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dQ880 = getelementptr inbounds %struct.ie_, %struct.ie_* %step879, i32 0, i32 0
  %476 = load i32, i32* %dQ880, align 4, !tbaa !120
  %state881 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q882 = getelementptr inbounds %struct.ia_, %struct.ia_* %state881, i32 0, i32 0
  %477 = load i32, i32* %Q882, align 4, !tbaa !126
  %add883 = add nsw i32 %477, %476
  store i32 %add883, i32* %Q882, align 4, !tbaa !126
  br label %do.cond.884

do.cond.884:                                      ; preds = %if.end.878
  br label %do.end.885

do.end.885:                                       ; preds = %do.cond.884
  br label %for.inc.886

for.inc.886:                                      ; preds = %do.end.885
  %478 = load i32, i32* %k, align 4, !tbaa !5
  %inc887 = add nsw i32 %478, 1
  store i32 %inc887, i32* %k, align 4, !tbaa !5
  br label %for.cond.834

for.end.888:                                      ; preds = %for.cond.834
  br label %if.end.889

if.end.889:                                       ; preds = %for.end.888, %for.end.832
  br label %if.end.1009

if.else.890:                                      ; preds = %sw.bb.777
  %479 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_landscape891 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %479, i32 0, i32 79
  %curr_pos892 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape891, i32 0, i32 3
  %480 = load i32, i32* %curr_pos892, align 4, !tbaa !131
  store i32 %480, i32* %position, align 4, !tbaa !5
  %481 = load i32, i32* %spp_out, align 4, !tbaa !5
  %cmp893 = icmp eq i32 %481, 1
  br i1 %cmp893, label %if.then.895, label %if.else.939

if.then.895:                                      ; preds = %if.else.890
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.896

for.cond.896:                                     ; preds = %for.inc.936, %if.then.895
  %482 = load i32, i32* %k, align 4, !tbaa !5
  %483 = load i32, i32* %data_length, align 4, !tbaa !5
  %cmp897 = icmp slt i32 %482, %483
  br i1 %cmp897, label %for.body.899, label %for.end.938

for.body.899:                                     ; preds = %for.cond.896
  %state900 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q901 = getelementptr inbounds %struct.ia_, %struct.ia_* %state900, i32 0, i32 0
  %484 = load i32, i32* %Q901, align 4, !tbaa !126
  %idxprom902 = sext i32 %484 to i64
  %485 = load i8*, i8** %psrc, align 8, !tbaa !1
  %arrayidx903 = getelementptr inbounds i8, i8* %485, i64 %idxprom902
  %486 = load i8, i8* %arrayidx903, align 1, !tbaa !101
  %idxprom904 = zext i8 %486 to i64
  %487 = load i8*, i8** %color_cache, align 8, !tbaa !1
  %arrayidx905 = getelementptr inbounds i8, i8* %487, i64 %idxprom904
  %488 = load i8, i8* %arrayidx905, align 1, !tbaa !101
  %489 = load i32, i32* %position, align 4, !tbaa !5
  %idxprom906 = sext i32 %489 to i64
  %490 = load i8*, i8** %devc_contone_gray, align 8, !tbaa !1
  %arrayidx907 = getelementptr inbounds i8, i8* %490, i64 %idxprom906
  store i8 %488, i8* %arrayidx907, align 1, !tbaa !101
  %491 = load i32, i32* %position, align 4, !tbaa !5
  %add908 = add nsw i32 %491, 64
  store i32 %add908, i32* %position, align 4, !tbaa !5
  br label %do.body.909

do.body.909:                                      ; preds = %for.body.899
  %step910 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dR911 = getelementptr inbounds %struct.ie_, %struct.ie_* %step910, i32 0, i32 1
  %492 = load i32, i32* %dR911, align 4, !tbaa !124
  %state912 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R913 = getelementptr inbounds %struct.ia_, %struct.ia_* %state912, i32 0, i32 1
  %493 = load i32, i32* %R913, align 4, !tbaa !127
  %sub914 = sub i32 %493, %492
  store i32 %sub914, i32* %R913, align 4, !tbaa !127
  %state915 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R916 = getelementptr inbounds %struct.ia_, %struct.ia_* %state915, i32 0, i32 1
  %494 = load i32, i32* %R916, align 4, !tbaa !127
  %cmp917 = icmp slt i32 %494, 0
  br i1 %cmp917, label %if.then.919, label %if.end.928

if.then.919:                                      ; preds = %do.body.909
  %state920 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q921 = getelementptr inbounds %struct.ia_, %struct.ia_* %state920, i32 0, i32 0
  %495 = load i32, i32* %Q921, align 4, !tbaa !126
  %inc922 = add nsw i32 %495, 1
  store i32 %inc922, i32* %Q921, align 4, !tbaa !126
  %step923 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %N924 = getelementptr inbounds %struct.ie_, %struct.ie_* %step923, i32 0, i32 2
  %496 = load i32, i32* %N924, align 4, !tbaa !125
  %state925 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R926 = getelementptr inbounds %struct.ia_, %struct.ia_* %state925, i32 0, i32 1
  %497 = load i32, i32* %R926, align 4, !tbaa !127
  %add927 = add i32 %497, %496
  store i32 %add927, i32* %R926, align 4, !tbaa !127
  br label %if.end.928

if.end.928:                                       ; preds = %if.then.919, %do.body.909
  %step929 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dQ930 = getelementptr inbounds %struct.ie_, %struct.ie_* %step929, i32 0, i32 0
  %498 = load i32, i32* %dQ930, align 4, !tbaa !120
  %state931 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q932 = getelementptr inbounds %struct.ia_, %struct.ia_* %state931, i32 0, i32 0
  %499 = load i32, i32* %Q932, align 4, !tbaa !126
  %add933 = add nsw i32 %499, %498
  store i32 %add933, i32* %Q932, align 4, !tbaa !126
  br label %do.cond.934

do.cond.934:                                      ; preds = %if.end.928
  br label %do.end.935

do.end.935:                                       ; preds = %do.cond.934
  br label %for.inc.936

for.inc.936:                                      ; preds = %do.end.935
  %500 = load i32, i32* %k, align 4, !tbaa !5
  %inc937 = add nsw i32 %500, 1
  store i32 %inc937, i32* %k, align 4, !tbaa !5
  br label %for.cond.896

for.end.938:                                      ; preds = %for.cond.896
  br label %if.end.1008

if.else.939:                                      ; preds = %if.else.890
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.940

for.cond.940:                                     ; preds = %for.inc.950, %if.else.939
  %501 = load i32, i32* %k, align 4, !tbaa !5
  %502 = load i32, i32* %spp_out, align 4, !tbaa !5
  %cmp941 = icmp slt i32 %501, %502
  br i1 %cmp941, label %for.body.943, label %for.end.952

for.body.943:                                     ; preds = %for.cond.940
  %503 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom944 = sext i32 %503 to i64
  %arrayidx945 = getelementptr inbounds [64 x i8*], [64 x i8*]* %devc_contone, i32 0, i64 %idxprom944
  %504 = load i8*, i8** %arrayidx945, align 8, !tbaa !1
  %505 = load i32, i32* %position, align 4, !tbaa !5
  %idx.ext946 = sext i32 %505 to i64
  %add.ptr947 = getelementptr inbounds i8, i8* %504, i64 %idx.ext946
  %506 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom948 = sext i32 %506 to i64
  %arrayidx949 = getelementptr inbounds [64 x i8*], [64 x i8*]* %devc_contone, i32 0, i64 %idxprom948
  store i8* %add.ptr947, i8** %arrayidx949, align 8, !tbaa !1
  br label %for.inc.950

for.inc.950:                                      ; preds = %for.body.943
  %507 = load i32, i32* %k, align 4, !tbaa !5
  %inc951 = add nsw i32 %507, 1
  store i32 %inc951, i32* %k, align 4, !tbaa !5
  br label %for.cond.940

for.end.952:                                      ; preds = %for.cond.940
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.953

for.cond.953:                                     ; preds = %for.inc.1005, %for.end.952
  %508 = load i32, i32* %k, align 4, !tbaa !5
  %509 = load i32, i32* %data_length, align 4, !tbaa !5
  %cmp954 = icmp slt i32 %508, %509
  br i1 %cmp954, label %for.body.956, label %for.end.1007

for.body.956:                                     ; preds = %for.cond.953
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.957

for.cond.957:                                     ; preds = %for.inc.975, %for.body.956
  %510 = load i32, i32* %j, align 4, !tbaa !5
  %511 = load i32, i32* %spp_out, align 4, !tbaa !5
  %cmp958 = icmp slt i32 %510, %511
  br i1 %cmp958, label %for.body.960, label %for.end.977

for.body.960:                                     ; preds = %for.cond.957
  %state961 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q962 = getelementptr inbounds %struct.ia_, %struct.ia_* %state961, i32 0, i32 0
  %512 = load i32, i32* %Q962, align 4, !tbaa !126
  %idxprom963 = sext i32 %512 to i64
  %513 = load i8*, i8** %psrc, align 8, !tbaa !1
  %arrayidx964 = getelementptr inbounds i8, i8* %513, i64 %idxprom963
  %514 = load i8, i8* %arrayidx964, align 1, !tbaa !101
  %conv965 = zext i8 %514 to i32
  %515 = load i32, i32* %spp_out, align 4, !tbaa !5
  %mul966 = mul nsw i32 %conv965, %515
  %516 = load i32, i32* %j, align 4, !tbaa !5
  %add967 = add nsw i32 %mul966, %516
  %idxprom968 = sext i32 %add967 to i64
  %517 = load i8*, i8** %color_cache, align 8, !tbaa !1
  %arrayidx969 = getelementptr inbounds i8, i8* %517, i64 %idxprom968
  %518 = load i8, i8* %arrayidx969, align 1, !tbaa !101
  %519 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom970 = sext i32 %519 to i64
  %arrayidx971 = getelementptr inbounds [64 x i8*], [64 x i8*]* %devc_contone, i32 0, i64 %idxprom970
  %520 = load i8*, i8** %arrayidx971, align 8, !tbaa !1
  store i8 %518, i8* %520, align 1, !tbaa !101
  %521 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom972 = sext i32 %521 to i64
  %arrayidx973 = getelementptr inbounds [64 x i8*], [64 x i8*]* %devc_contone, i32 0, i64 %idxprom972
  %522 = load i8*, i8** %arrayidx973, align 8, !tbaa !1
  %add.ptr974 = getelementptr inbounds i8, i8* %522, i64 64
  store i8* %add.ptr974, i8** %arrayidx973, align 8, !tbaa !1
  br label %for.inc.975

for.inc.975:                                      ; preds = %for.body.960
  %523 = load i32, i32* %j, align 4, !tbaa !5
  %inc976 = add nsw i32 %523, 1
  store i32 %inc976, i32* %j, align 4, !tbaa !5
  br label %for.cond.957

for.end.977:                                      ; preds = %for.cond.957
  br label %do.body.978

do.body.978:                                      ; preds = %for.end.977
  %step979 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dR980 = getelementptr inbounds %struct.ie_, %struct.ie_* %step979, i32 0, i32 1
  %524 = load i32, i32* %dR980, align 4, !tbaa !124
  %state981 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R982 = getelementptr inbounds %struct.ia_, %struct.ia_* %state981, i32 0, i32 1
  %525 = load i32, i32* %R982, align 4, !tbaa !127
  %sub983 = sub i32 %525, %524
  store i32 %sub983, i32* %R982, align 4, !tbaa !127
  %state984 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R985 = getelementptr inbounds %struct.ia_, %struct.ia_* %state984, i32 0, i32 1
  %526 = load i32, i32* %R985, align 4, !tbaa !127
  %cmp986 = icmp slt i32 %526, 0
  br i1 %cmp986, label %if.then.988, label %if.end.997

if.then.988:                                      ; preds = %do.body.978
  %state989 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q990 = getelementptr inbounds %struct.ia_, %struct.ia_* %state989, i32 0, i32 0
  %527 = load i32, i32* %Q990, align 4, !tbaa !126
  %inc991 = add nsw i32 %527, 1
  store i32 %inc991, i32* %Q990, align 4, !tbaa !126
  %step992 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %N993 = getelementptr inbounds %struct.ie_, %struct.ie_* %step992, i32 0, i32 2
  %528 = load i32, i32* %N993, align 4, !tbaa !125
  %state994 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R995 = getelementptr inbounds %struct.ia_, %struct.ia_* %state994, i32 0, i32 1
  %529 = load i32, i32* %R995, align 4, !tbaa !127
  %add996 = add i32 %529, %528
  store i32 %add996, i32* %R995, align 4, !tbaa !127
  br label %if.end.997

if.end.997:                                       ; preds = %if.then.988, %do.body.978
  %step998 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dQ999 = getelementptr inbounds %struct.ie_, %struct.ie_* %step998, i32 0, i32 0
  %530 = load i32, i32* %dQ999, align 4, !tbaa !120
  %state1000 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q1001 = getelementptr inbounds %struct.ia_, %struct.ia_* %state1000, i32 0, i32 0
  %531 = load i32, i32* %Q1001, align 4, !tbaa !126
  %add1002 = add nsw i32 %531, %530
  store i32 %add1002, i32* %Q1001, align 4, !tbaa !126
  br label %do.cond.1003

do.cond.1003:                                     ; preds = %if.end.997
  br label %do.end.1004

do.end.1004:                                      ; preds = %do.cond.1003
  br label %for.inc.1005

for.inc.1005:                                     ; preds = %do.end.1004
  %532 = load i32, i32* %k, align 4, !tbaa !5
  %inc1006 = add nsw i32 %532, 1
  store i32 %inc1006, i32* %k, align 4, !tbaa !5
  br label %for.cond.953

for.end.1007:                                     ; preds = %for.cond.953
  br label %if.end.1008

if.end.1008:                                      ; preds = %for.end.1007, %for.end.938
  br label %if.end.1009

if.end.1009:                                      ; preds = %if.end.1008, %if.end.889
  %533 = load i32, i32* %vdi, align 4, !tbaa !5
  %534 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_landscape1010 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %534, i32 0, i32 79
  %count1011 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape1010, i32 0, i32 0
  %535 = load i32, i32* %count1011, align 4, !tbaa !103
  %add1012 = add nsw i32 %535, %533
  store i32 %add1012, i32* %count1011, align 4, !tbaa !103
  %536 = load i32, i32* %vdi, align 4, !tbaa !5
  %537 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_landscape1013 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %537, i32 0, i32 79
  %curr_pos1014 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape1013, i32 0, i32 3
  %538 = load i32, i32* %curr_pos1014, align 4, !tbaa !131
  %idxprom1015 = sext i32 %538 to i64
  %539 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_landscape1016 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %539, i32 0, i32 79
  %widths1017 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape1016, i32 0, i32 1
  %arrayidx1018 = getelementptr inbounds [64 x i32], [64 x i32]* %widths1017, i32 0, i64 %idxprom1015
  store i32 %536, i32* %arrayidx1018, align 4, !tbaa !5
  %540 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_landscape1019 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %540, i32 0, i32 79
  %index1020 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape1019, i32 0, i32 4
  %541 = load i32, i32* %index1020, align 4, !tbaa !117
  %542 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_landscape1021 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %542, i32 0, i32 79
  %curr_pos1022 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape1021, i32 0, i32 3
  %543 = load i32, i32* %curr_pos1022, align 4, !tbaa !131
  %add1023 = add nsw i32 %543, %541
  store i32 %add1023, i32* %curr_pos1022, align 4, !tbaa !131
  %544 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_landscape1024 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %544, i32 0, i32 79
  %num_contones1025 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape1024, i32 0, i32 5
  %545 = load i32, i32* %num_contones1025, align 4, !tbaa !132
  %inc1026 = add nsw i32 %545, 1
  store i32 %inc1026, i32* %num_contones1025, align 4, !tbaa !132
  br label %sw.epilog.1028

sw.default.1027:                                  ; preds = %if.else.552
  br label %sw.epilog.1028

sw.epilog.1028:                                   ; preds = %sw.default.1027, %if.end.1009, %if.end.776
  br label %if.end.1029

if.end.1029:                                      ; preds = %sw.epilog.1028, %sw.epilog.551
  br label %flush

flush:                                            ; preds = %if.end.1029, %if.then.206
  %546 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %thresh_buffer1030 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %546, i32 0, i32 76
  %547 = load i8*, i8** %thresh_buffer1030, align 8, !tbaa !111
  %548 = load i32, i32* %offset_threshold, align 4, !tbaa !5
  %idx.ext1031 = sext i32 %548 to i64
  %add.ptr1032 = getelementptr inbounds i8, i8* %547, i64 %idx.ext1031
  store i8* %add.ptr1032, i8** %thresh_align, align 8, !tbaa !1
  %549 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %550 = load i32, i32* %xrun, align 4, !tbaa !5
  %551 = load i32, i32* %dest_width, align 4, !tbaa !5
  %552 = load i32, i32* %dest_height, align 4, !tbaa !5
  %553 = load i8*, i8** %thresh_align, align 8, !tbaa !1
  %554 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [64 x i32], [64 x i32]* %offset_contone, i32 0, i32 0
  %555 = load i32, i32* %contone_stride, align 4, !tbaa !5
  %call1033 = call i32 @gxht_thresh_planes(%struct.gx_image_enum_s* %549, i32 %550, i32 %551, i32 %552, i8* %553, %struct.gx_device_s* %554, i32* %arraydecay, i32 %555) #5
  store i32 %call1033, i32* %code, align 4, !tbaa !5
  %556 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %556, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %flush, %if.then.5
  %557 = bitcast i8** %dev_value to i8*
  call void @llvm.lifetime.end(i64 8, i8* %557) #1
  %558 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %558) #1
  %559 = bitcast %struct.gx_dda_int_s* %dda_ht to i8*
  call void @llvm.lifetime.end(i64 20, i8* %559) #1
  %560 = bitcast i32* %offset_threshold to i8*
  call void @llvm.lifetime.end(i64 4, i8* %560) #1
  %561 = bitcast [64 x i32]* %offset_contone to i8*
  call void @llvm.lifetime.end(i64 256, i8* %561) #1
  %562 = bitcast i32* %flush_buff to i8*
  call void @llvm.lifetime.end(i64 4, i8* %562) #1
  %563 = bitcast i32* %src_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %563) #1
  %564 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %564) #1
  %565 = bitcast i32* %scale_factor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %565) #1
  %566 = bitcast i32* %contone_stride to i8*
  call void @llvm.lifetime.end(i64 4, i8* %566) #1
  %567 = bitcast i32* %offset_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %567) #1
  %568 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %568) #1
  %569 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %569) #1
  %570 = bitcast i32* %position to i8*
  call void @llvm.lifetime.end(i64 4, i8* %570) #1
  %571 = bitcast i8** %color_cache to i8*
  call void @llvm.lifetime.end(i64 8, i8* %571) #1
  %572 = bitcast i32* %data_length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %572) #1
  %573 = bitcast i32* %dest_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %573) #1
  %574 = bitcast i32* %dest_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %574) #1
  %575 = bitcast i8** %psrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %575) #1
  %576 = bitcast i8** %devc_contone_gray to i8*
  call void @llvm.lifetime.end(i64 8, i8* %576) #1
  %577 = bitcast [64 x i8*]* %devc_contone to i8*
  call void @llvm.lifetime.end(i64 512, i8* %577) #1
  %578 = bitcast i32* %spp_out to i8*
  call void @llvm.lifetime.end(i64 4, i8* %578) #1
  %579 = bitcast i8** %thresh_align to i8*
  call void @llvm.lifetime.end(i64 8, i8* %579) #1
  %580 = bitcast i32* %xrun to i8*
  call void @llvm.lifetime.end(i64 4, i8* %580) #1
  %581 = bitcast i32* %vdi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %581) #1
  %582 = bitcast i32* %posture to i8*
  call void @llvm.lifetime.end(i64 4, i8* %582) #1
  %583 = bitcast %struct.gx_image_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %583) #1
  %584 = load i32, i32* %retval
  ret i32 %584
}

declare void @gx_image_scale_mask_colors(%struct.gx_image_enum_s*, i32) #2

declare void @image_init_clues(%struct.gx_image_enum_s*, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @image_render_mono(%struct.gx_image_enum_s* %penum, i8* %buffer, i32 %data_x, i32 %w, i32 %h, %struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gx_image_enum_s*, align 8
  %buffer.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis = alloca %struct.gs_imager_state_s*, align 8
  %lop = alloca i32, align 4
  %masked = alloca i32, align 4
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %remap_color = alloca i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, align 8
  %cc = alloca %struct.gs_client_color_s, align 8
  %pdevc = alloca %struct.gx_device_color_s*, align 8
  %mask_base = alloca i32, align 4
  %mask_limit = alloca i32, align 4
  %next = alloca %struct.gx_dda_fixed_point_s, align 4
  %dxx2 = alloca %struct._e, align 4
  %dxx3 = alloca %struct._e, align 4
  %dxx4 = alloca %struct._e, align 4
  %psrc_initial = alloca i8*, align 8
  %psrc = alloca i8*, align 8
  %rsrc = alloca i8*, align 8
  %endp = alloca i8*, align 8
  %stop = alloca i8*, align 8
  %xrun = alloca i32, align 4
  %run = alloca i8, align 1
  %htrun = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %last = alloca i8, align 1
  %yrun = alloca i32, align 4
  %pdyx = alloca i32, align 4
  %pdyy = alloca i32, align 4
  %fill_pgram = alloca i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, align 8
  %ax = alloca i32, align 4
  %ay = alloca i32, align 4
  %dyy = alloca i32, align 4
  %ax456 = alloca i32, align 4
  %dyx = alloca i32, align 4
  %ay468 = alloca i32, align 4
  %n_ = alloca i32, align 4
  %n_1297 = alloca i32, align 4
  %adjust1365 = alloca i32, align 4
  %dxx = alloca i32, align 4
  %xa = alloca i32, align 4
  %yt = alloca i32, align 4
  %iht = alloca i32, align 4
  %fill_proc = alloca i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, align 8
  %xmin = alloca i32, align 4
  %xmax = alloca i32, align 4
  %xi = alloca i32, align 4
  %wi = alloca i32, align 4
  %xei = alloca i32, align 4
  %xi1858 = alloca i32, align 4
  %wi1860 = alloca i32, align 4
  %xei1861 = alloca i32, align 4
  %n_1863 = alloca i32, align 4
  store %struct.gx_image_enum_s* %penum, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pis1 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1, i32 0, i32 30
  %2 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis1, align 8, !tbaa !55
  store %struct.gs_imager_state_s* %2, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %3 = bitcast i32* %lop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %log_op = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %4, i32 0, i32 44
  %5 = load i32, i32* %log_op, align 4, !tbaa !135
  store i32 %5, i32* %lop, align 4, !tbaa !5
  %6 = bitcast i32* %masked to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %masked2 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %7, i32 0, i32 19
  %8 = load i8, i8* %masked2, align 1, !tbaa !91
  %conv = zext i8 %8 to i32
  store i32 %conv, i32* %masked, align 4, !tbaa !5
  %9 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %10 = bitcast i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* null, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_color, align 8, !tbaa !1
  %11 = bitcast %struct.gs_client_color_s* %cc to i8*
  call void @llvm.lifetime.start(i64 264, i8* %11) #1
  %12 = bitcast %struct.gx_device_color_s** %pdevc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icolor1 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %13, i32 0, i32 69
  %14 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %icolor1, align 8, !tbaa !100
  store %struct.gx_device_color_s* %14, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %15 = bitcast i32* %mask_base to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %use_mask_color = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %16, i32 0, i32 17
  %17 = load i8, i8* %use_mask_color, align 1, !tbaa !99
  %conv3 = zext i8 %17 to i32
  %tobool = icmp ne i32 %conv3, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %18 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %mask_color = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %18, i32 0, i32 16
  %values = getelementptr inbounds %struct.mc_, %struct.mc_* %mask_color, i32 0, i32 0
  %arrayidx = getelementptr inbounds [130 x i32], [130 x i32]* %values, i32 0, i64 0
  %19 = load i32, i32* %arrayidx, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %mask_base, align 4, !tbaa !5
  %20 = bitcast i32* %mask_limit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %use_mask_color4 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %21, i32 0, i32 17
  %22 = load i8, i8* %use_mask_color4, align 1, !tbaa !99
  %conv5 = zext i8 %22 to i32
  %tobool6 = icmp ne i32 %conv5, 0
  br i1 %tobool6, label %cond.true.7, label %cond.false.11

cond.true.7:                                      ; preds = %cond.end
  %23 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %mask_color8 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %23, i32 0, i32 16
  %values9 = getelementptr inbounds %struct.mc_, %struct.mc_* %mask_color8, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [130 x i32], [130 x i32]* %values9, i32 0, i64 1
  %24 = load i32, i32* %arrayidx10, align 4, !tbaa !5
  %25 = load i32, i32* %mask_base, align 4, !tbaa !5
  %sub = sub i32 %24, %25
  %add = add i32 %sub, 1
  br label %cond.end.12

cond.false.11:                                    ; preds = %cond.end
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.11, %cond.true.7
  %cond13 = phi i32 [ %add, %cond.true.7 ], [ 0, %cond.false.11 ]
  store i32 %cond13, i32* %mask_limit, align 4, !tbaa !5
  %26 = bitcast %struct.gx_dda_fixed_point_s* %next to i8*
  call void @llvm.lifetime.start(i64 40, i8* %26) #1
  %27 = bitcast %struct._e* %dxx2 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %27) #1
  %28 = bitcast %struct._e* %dxx3 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %28) #1
  %29 = bitcast %struct._e* %dxx4 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %29) #1
  %30 = bitcast i8** %psrc_initial to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #1
  %31 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %32 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %idx.ext = sext i32 %32 to i64
  %add.ptr = getelementptr inbounds i8, i8* %31, i64 %idx.ext
  store i8* %add.ptr, i8** %psrc_initial, align 8, !tbaa !1
  %33 = bitcast i8** %psrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #1
  %34 = load i8*, i8** %psrc_initial, align 8, !tbaa !1
  store i8* %34, i8** %psrc, align 8, !tbaa !1
  %35 = bitcast i8** %rsrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #1
  %36 = load i8*, i8** %psrc, align 8, !tbaa !1
  store i8* %36, i8** %rsrc, align 8, !tbaa !1
  %37 = bitcast i8** %endp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %37) #1
  %38 = load i8*, i8** %psrc, align 8, !tbaa !1
  %39 = load i32, i32* %w.addr, align 4, !tbaa !5
  %idx.ext14 = zext i32 %39 to i64
  %add.ptr15 = getelementptr inbounds i8, i8* %38, i64 %idx.ext14
  store i8* %add.ptr15, i8** %endp, align 8, !tbaa !1
  %40 = bitcast i8** %stop to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #1
  %41 = load i8*, i8** %endp, align 8, !tbaa !1
  store i8* %41, i8** %stop, align 8, !tbaa !1
  %42 = bitcast i32* %xrun to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #1
  call void @llvm.lifetime.start(i64 1, i8* %run) #1
  %43 = bitcast i32* %htrun to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  %44 = load i32, i32* %masked, align 4, !tbaa !5
  %tobool16 = icmp ne i32 %44, 0
  %cond17 = select i1 %tobool16, i32 255, i32 -2
  store i32 %cond17, i32* %htrun, align 4, !tbaa !5
  %45 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %46 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %46, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.12
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.2059

if.end:                                           ; preds = %cond.end.12
  %47 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %47, i32 0, i32 55
  %pixel0 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda, i32 0, i32 2
  %48 = bitcast %struct.gx_dda_fixed_point_s* %next to i8*
  %49 = bitcast %struct.gx_dda_fixed_point_s* %pixel0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %49, i64 40, i32 4, i1 false), !tbaa.struct !136
  %x = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x, i32 0, i32 0
  %Q = getelementptr inbounds %struct._a, %struct._a* %state, i32 0, i32 0
  %50 = load i32, i32* %Q, align 4, !tbaa !137
  store i32 %50, i32* %xrun, align 4, !tbaa !5
  %51 = load i32, i32* %masked, align 4, !tbaa !5
  %tobool19 = icmp ne i32 %51, 0
  br i1 %tobool19, label %if.end.23, label %if.then.20

if.then.20:                                       ; preds = %if.end
  %52 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs21 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %52, i32 0, i32 31
  %53 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs21, align 8, !tbaa !45
  store %struct.gs_color_space_s* %53, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %54 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %54, i32 0, i32 0
  %55 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !138
  %remap_color22 = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %55, i32 0, i32 10
  %56 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_color22, align 8, !tbaa !139
  store i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* %56, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_color, align 8, !tbaa !1
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %if.end
  %57 = load i8*, i8** %psrc, align 8, !tbaa !1
  %58 = load i8, i8* %57, align 1, !tbaa !101
  store i8 %58, i8* %run, align 1, !tbaa !101
  %59 = load i32, i32* %masked, align 4, !tbaa !5
  %tobool24 = icmp ne i32 %59, 0
  br i1 %tobool24, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.23
  %60 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %posture = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %60, i32 0, i32 37
  %61 = load i32, i32* %posture, align 4, !tbaa !47
  %cmp25 = icmp ne i32 %61, 0
  br i1 %cmp25, label %land.lhs.true.27, label %if.else

land.lhs.true.27:                                 ; preds = %land.lhs.true
  %62 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %posture28 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %62, i32 0, i32 37
  %63 = load i32, i32* %posture28, align 4, !tbaa !47
  %cmp29 = icmp ne i32 %63, 1
  br i1 %cmp29, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %land.lhs.true.27
  br label %if.end.40

if.else:                                          ; preds = %land.lhs.true.27, %land.lhs.true, %if.end.23
  call void @llvm.lifetime.start(i64 1, i8* %last) #1
  %64 = load i8*, i8** %stop, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i8, i8* %64, i64 -1
  %65 = load i8, i8* %arrayidx32, align 1, !tbaa !101
  store i8 %65, i8* %last, align 1, !tbaa !101
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %66 = load i8*, i8** %stop, align 8, !tbaa !1
  %67 = load i8*, i8** %psrc, align 8, !tbaa !1
  %cmp33 = icmp ugt i8* %66, %67
  br i1 %cmp33, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %68 = load i8*, i8** %stop, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds i8, i8* %68, i64 -1
  %69 = load i8, i8* %arrayidx35, align 1, !tbaa !101
  %conv36 = zext i8 %69 to i32
  %70 = load i8, i8* %last, align 1, !tbaa !101
  %conv37 = zext i8 %70 to i32
  %cmp38 = icmp eq i32 %conv36, %conv37
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %71 = phi i1 [ false, %while.cond ], [ %cmp38, %land.rhs ]
  br i1 %71, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %72 = load i8*, i8** %stop, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %72, i32 -1
  store i8* %incdec.ptr, i8** %stop, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  call void @llvm.lifetime.end(i64 1, i8* %last) #1
  br label %if.end.40

if.end.40:                                        ; preds = %while.end, %if.then.31
  %73 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %slow_loop = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %73, i32 0, i32 40
  %74 = load i8, i8* %slow_loop, align 1, !tbaa !95
  %conv41 = zext i8 %74 to i32
  %tobool42 = icmp ne i32 %conv41, 0
  br i1 %tobool42, label %if.then.46, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.40
  %75 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %posture43 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %75, i32 0, i32 37
  %76 = load i32, i32* %posture43, align 4, !tbaa !47
  %cmp44 = icmp ne i32 %76, 0
  br i1 %cmp44, label %if.then.46, label %if.else.1364

if.then.46:                                       ; preds = %lor.lhs.false, %if.end.40
  %77 = bitcast i32* %yrun to i8*
  call void @llvm.lifetime.start(i64 4, i8* %77) #1
  %78 = bitcast i32* %pdyx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %78) #1
  %79 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda47 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %79, i32 0, i32 55
  %row = getelementptr inbounds %struct.dd_, %struct.dd_* %dda47, i32 0, i32 0
  %x48 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row, i32 0, i32 0
  %state49 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x48, i32 0, i32 0
  %Q50 = getelementptr inbounds %struct._a, %struct._a* %state49, i32 0, i32 0
  %80 = load i32, i32* %Q50, align 4, !tbaa !141
  %81 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %cur = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %81, i32 0, i32 53
  %x51 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cur, i32 0, i32 0
  %82 = load i32, i32* %x51, align 4, !tbaa !142
  %sub52 = sub nsw i32 %80, %82
  store i32 %sub52, i32* %pdyx, align 4, !tbaa !5
  %83 = bitcast i32* %pdyy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %83) #1
  %84 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda53 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %84, i32 0, i32 55
  %row54 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda53, i32 0, i32 0
  %y = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row54, i32 0, i32 1
  %state55 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y, i32 0, i32 0
  %Q56 = getelementptr inbounds %struct._a, %struct._a* %state55, i32 0, i32 0
  %85 = load i32, i32* %Q56, align 4, !tbaa !143
  %86 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %cur57 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %86, i32 0, i32 53
  %y58 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cur57, i32 0, i32 1
  %87 = load i32, i32* %y58, align 4, !tbaa !144
  %sub59 = sub nsw i32 %85, %87
  store i32 %sub59, i32* %pdyy, align 4, !tbaa !5
  %88 = bitcast i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_pgram to i8*
  call void @llvm.lifetime.start(i64 8, i8* %88) #1
  %89 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %89, i32 0, i32 42
  %fill_parallelogram = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 28
  %90 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_parallelogram, align 8, !tbaa !145
  store i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* %90, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_pgram, align 8, !tbaa !1
  %y60 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %state61 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y60, i32 0, i32 0
  %Q62 = getelementptr inbounds %struct._a, %struct._a* %state61, i32 0, i32 0
  %91 = load i32, i32* %Q62, align 4, !tbaa !146
  store i32 %91, i32* %yrun, align 4, !tbaa !5
  %92 = load i32, i32* %masked, align 4, !tbaa !5
  %tobool63 = icmp ne i32 %92, 0
  br i1 %tobool63, label %if.then.64, label %if.else.794

if.then.64:                                       ; preds = %if.then.46
  %93 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icolor165 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %93, i32 0, i32 69
  %94 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %icolor165, align 8, !tbaa !100
  store %struct.gx_device_color_s* %94, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %95 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %type66 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %95, i32 0, i32 0
  %96 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type66, align 8, !tbaa !93
  %load = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %96, i32 0, i32 4
  %97 = load i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %load, align 8, !tbaa !147
  %98 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %99 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %100 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 %97(%struct.gx_device_color_s* %98, %struct.gs_imager_state_s* %99, %struct.gx_device_s* %100, i32 0) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %101 = load i32, i32* %code, align 4, !tbaa !5
  %cmp67 = icmp slt i32 %101, 0
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.then.64
  %102 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %102, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1358

if.end.70:                                        ; preds = %if.then.64
  %103 = load i8*, i8** %stop, align 8, !tbaa !1
  %104 = load i8*, i8** %psrc, align 8, !tbaa !1
  %cmp71 = icmp ule i8* %103, %104
  br i1 %cmp71, label %land.lhs.true.73, label %if.end.85

land.lhs.true.73:                                 ; preds = %if.end.70
  %105 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %adjust = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %105, i32 0, i32 45
  %106 = load i32, i32* %adjust, align 4, !tbaa !107
  %cmp74 = icmp eq i32 %106, 0
  br i1 %cmp74, label %land.lhs.true.76, label %if.end.85

land.lhs.true.76:                                 ; preds = %land.lhs.true.73
  %107 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %posture77 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %107, i32 0, i32 37
  %108 = load i32, i32* %posture77, align 4, !tbaa !47
  %cmp78 = icmp eq i32 %108, 0
  br i1 %cmp78, label %if.then.84, label %lor.lhs.false.80

lor.lhs.false.80:                                 ; preds = %land.lhs.true.76
  %109 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %posture81 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %109, i32 0, i32 37
  %110 = load i32, i32* %posture81, align 4, !tbaa !47
  %cmp82 = icmp eq i32 %110, 1
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %lor.lhs.false.80, %land.lhs.true.76
  br label %last.1162

if.end.85:                                        ; preds = %lor.lhs.false.80, %land.lhs.true.73, %if.end.70
  %111 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %posture86 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %111, i32 0, i32 37
  %112 = load i32, i32* %posture86, align 4, !tbaa !47
  %cmp87 = icmp eq i32 %112, 0
  br i1 %cmp87, label %if.then.89, label %if.else.451

if.then.89:                                       ; preds = %if.end.85
  %113 = bitcast i32* %ax to i8*
  call void @llvm.lifetime.start(i64 4, i8* %113) #1
  %114 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %matrix = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %114, i32 0, i32 21
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %matrix, i32 0, i32 0
  %115 = load float, float* %xx, align 4, !tbaa !97
  %cmp90 = fcmp olt float %115, 0.000000e+00
  br i1 %cmp90, label %cond.true.92, label %cond.false.95

cond.true.92:                                     ; preds = %if.then.89
  %116 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %adjust93 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %116, i32 0, i32 45
  %117 = load i32, i32* %adjust93, align 4, !tbaa !107
  %sub94 = sub nsw i32 0, %117
  br label %cond.end.97

cond.false.95:                                    ; preds = %if.then.89
  %118 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %adjust96 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %118, i32 0, i32 45
  %119 = load i32, i32* %adjust96, align 4, !tbaa !107
  br label %cond.end.97

cond.end.97:                                      ; preds = %cond.false.95, %cond.true.92
  %cond98 = phi i32 [ %sub94, %cond.true.92 ], [ %119, %cond.false.95 ]
  store i32 %cond98, i32* %ax, align 4, !tbaa !5
  %120 = bitcast i32* %ay to i8*
  call void @llvm.lifetime.start(i64 4, i8* %120) #1
  %121 = load i32, i32* %pdyy, align 4, !tbaa !5
  %cmp99 = icmp slt i32 %121, 0
  br i1 %cmp99, label %cond.true.101, label %cond.false.104

cond.true.101:                                    ; preds = %cond.end.97
  %122 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %adjust102 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %122, i32 0, i32 45
  %123 = load i32, i32* %adjust102, align 4, !tbaa !107
  %sub103 = sub nsw i32 0, %123
  br label %cond.end.106

cond.false.104:                                   ; preds = %cond.end.97
  %124 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %adjust105 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %124, i32 0, i32 45
  %125 = load i32, i32* %adjust105, align 4, !tbaa !107
  br label %cond.end.106

cond.end.106:                                     ; preds = %cond.false.104, %cond.true.101
  %cond107 = phi i32 [ %sub103, %cond.true.101 ], [ %125, %cond.false.104 ]
  store i32 %cond107, i32* %ay, align 4, !tbaa !5
  %126 = bitcast i32* %dyy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %126) #1
  %127 = load i32, i32* %pdyy, align 4, !tbaa !5
  %128 = load i32, i32* %ay, align 4, !tbaa !5
  %shl = shl i32 %128, 1
  %add108 = add nsw i32 %127, %shl
  store i32 %add108, i32* %dyy, align 4, !tbaa !5
  %129 = load i32, i32* %ay, align 4, !tbaa !5
  %130 = load i32, i32* %yrun, align 4, !tbaa !5
  %sub109 = sub nsw i32 %130, %129
  store i32 %sub109, i32* %yrun, align 4, !tbaa !5
  %131 = load i32, i32* %ax, align 4, !tbaa !5
  %sub110 = sub nsw i32 0, %131
  %x111 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state112 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x111, i32 0, i32 0
  %Q113 = getelementptr inbounds %struct._a, %struct._a* %state112, i32 0, i32 0
  %132 = load i32, i32* %Q113, align 4, !tbaa !137
  %add114 = add nsw i32 %132, %sub110
  store i32 %add114, i32* %Q113, align 4, !tbaa !137
  %133 = load i32, i32* %ax, align 4, !tbaa !5
  %shl115 = shl i32 %133, 1
  store i32 %shl115, i32* %ax, align 4, !tbaa !5
  %x116 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %step = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x116, i32 0, i32 1
  %134 = bitcast %struct._e* %dxx2 to i8*
  %135 = bitcast %struct._e* %step to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %134, i8* %135, i64 12, i32 4, i1 false), !tbaa.struct !149
  br label %do.body

do.body:                                          ; preds = %cond.end.106
  %x117 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %step118 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x117, i32 0, i32 1
  %dR = getelementptr inbounds %struct._e, %struct._e* %step118, i32 0, i32 1
  %136 = load i32, i32* %dR, align 4, !tbaa !150
  %dR119 = getelementptr inbounds %struct._e, %struct._e* %dxx2, i32 0, i32 1
  %137 = load i32, i32* %dR119, align 4, !tbaa !151
  %add120 = add i32 %137, %136
  store i32 %add120, i32* %dR119, align 4, !tbaa !151
  %dR121 = getelementptr inbounds %struct._e, %struct._e* %dxx2, i32 0, i32 1
  %138 = load i32, i32* %dR121, align 4, !tbaa !151
  %N = getelementptr inbounds %struct._e, %struct._e* %dxx2, i32 0, i32 2
  %139 = load i32, i32* %N, align 4, !tbaa !152
  %cmp122 = icmp uge i32 %138, %139
  br i1 %cmp122, label %if.then.124, label %if.end.128

if.then.124:                                      ; preds = %do.body
  %dQ = getelementptr inbounds %struct._e, %struct._e* %dxx2, i32 0, i32 0
  %140 = load i32, i32* %dQ, align 4, !tbaa !153
  %inc = add nsw i32 %140, 1
  store i32 %inc, i32* %dQ, align 4, !tbaa !153
  %N125 = getelementptr inbounds %struct._e, %struct._e* %dxx2, i32 0, i32 2
  %141 = load i32, i32* %N125, align 4, !tbaa !152
  %dR126 = getelementptr inbounds %struct._e, %struct._e* %dxx2, i32 0, i32 1
  %142 = load i32, i32* %dR126, align 4, !tbaa !151
  %sub127 = sub i32 %142, %141
  store i32 %sub127, i32* %dR126, align 4, !tbaa !151
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.124, %do.body
  %x129 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %step130 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x129, i32 0, i32 1
  %dQ131 = getelementptr inbounds %struct._e, %struct._e* %step130, i32 0, i32 0
  %143 = load i32, i32* %dQ131, align 4, !tbaa !154
  %dQ132 = getelementptr inbounds %struct._e, %struct._e* %dxx2, i32 0, i32 0
  %144 = load i32, i32* %dQ132, align 4, !tbaa !153
  %add133 = add nsw i32 %144, %143
  store i32 %add133, i32* %dQ132, align 4, !tbaa !153
  br label %do.cond

do.cond:                                          ; preds = %if.end.128
  br label %do.end

do.end:                                           ; preds = %do.cond
  %145 = bitcast %struct._e* %dxx3 to i8*
  %146 = bitcast %struct._e* %dxx2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %145, i8* %146, i64 12, i32 4, i1 false), !tbaa.struct !149
  br label %do.body.134

do.body.134:                                      ; preds = %do.end
  %x135 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %step136 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x135, i32 0, i32 1
  %dR137 = getelementptr inbounds %struct._e, %struct._e* %step136, i32 0, i32 1
  %147 = load i32, i32* %dR137, align 4, !tbaa !150
  %dR138 = getelementptr inbounds %struct._e, %struct._e* %dxx3, i32 0, i32 1
  %148 = load i32, i32* %dR138, align 4, !tbaa !151
  %add139 = add i32 %148, %147
  store i32 %add139, i32* %dR138, align 4, !tbaa !151
  %dR140 = getelementptr inbounds %struct._e, %struct._e* %dxx3, i32 0, i32 1
  %149 = load i32, i32* %dR140, align 4, !tbaa !151
  %N141 = getelementptr inbounds %struct._e, %struct._e* %dxx3, i32 0, i32 2
  %150 = load i32, i32* %N141, align 4, !tbaa !152
  %cmp142 = icmp uge i32 %149, %150
  br i1 %cmp142, label %if.then.144, label %if.end.150

if.then.144:                                      ; preds = %do.body.134
  %dQ145 = getelementptr inbounds %struct._e, %struct._e* %dxx3, i32 0, i32 0
  %151 = load i32, i32* %dQ145, align 4, !tbaa !153
  %inc146 = add nsw i32 %151, 1
  store i32 %inc146, i32* %dQ145, align 4, !tbaa !153
  %N147 = getelementptr inbounds %struct._e, %struct._e* %dxx3, i32 0, i32 2
  %152 = load i32, i32* %N147, align 4, !tbaa !152
  %dR148 = getelementptr inbounds %struct._e, %struct._e* %dxx3, i32 0, i32 1
  %153 = load i32, i32* %dR148, align 4, !tbaa !151
  %sub149 = sub i32 %153, %152
  store i32 %sub149, i32* %dR148, align 4, !tbaa !151
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.144, %do.body.134
  %x151 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %step152 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x151, i32 0, i32 1
  %dQ153 = getelementptr inbounds %struct._e, %struct._e* %step152, i32 0, i32 0
  %154 = load i32, i32* %dQ153, align 4, !tbaa !154
  %dQ154 = getelementptr inbounds %struct._e, %struct._e* %dxx3, i32 0, i32 0
  %155 = load i32, i32* %dQ154, align 4, !tbaa !153
  %add155 = add nsw i32 %155, %154
  store i32 %add155, i32* %dQ154, align 4, !tbaa !153
  br label %do.cond.156

do.cond.156:                                      ; preds = %if.end.150
  br label %do.end.157

do.end.157:                                       ; preds = %do.cond.156
  %156 = bitcast %struct._e* %dxx4 to i8*
  %157 = bitcast %struct._e* %dxx3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %156, i8* %157, i64 12, i32 4, i1 false), !tbaa.struct !149
  br label %do.body.158

do.body.158:                                      ; preds = %do.end.157
  %x159 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %step160 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x159, i32 0, i32 1
  %dR161 = getelementptr inbounds %struct._e, %struct._e* %step160, i32 0, i32 1
  %158 = load i32, i32* %dR161, align 4, !tbaa !150
  %dR162 = getelementptr inbounds %struct._e, %struct._e* %dxx4, i32 0, i32 1
  %159 = load i32, i32* %dR162, align 4, !tbaa !151
  %add163 = add i32 %159, %158
  store i32 %add163, i32* %dR162, align 4, !tbaa !151
  %dR164 = getelementptr inbounds %struct._e, %struct._e* %dxx4, i32 0, i32 1
  %160 = load i32, i32* %dR164, align 4, !tbaa !151
  %N165 = getelementptr inbounds %struct._e, %struct._e* %dxx4, i32 0, i32 2
  %161 = load i32, i32* %N165, align 4, !tbaa !152
  %cmp166 = icmp uge i32 %160, %161
  br i1 %cmp166, label %if.then.168, label %if.end.174

if.then.168:                                      ; preds = %do.body.158
  %dQ169 = getelementptr inbounds %struct._e, %struct._e* %dxx4, i32 0, i32 0
  %162 = load i32, i32* %dQ169, align 4, !tbaa !153
  %inc170 = add nsw i32 %162, 1
  store i32 %inc170, i32* %dQ169, align 4, !tbaa !153
  %N171 = getelementptr inbounds %struct._e, %struct._e* %dxx4, i32 0, i32 2
  %163 = load i32, i32* %N171, align 4, !tbaa !152
  %dR172 = getelementptr inbounds %struct._e, %struct._e* %dxx4, i32 0, i32 1
  %164 = load i32, i32* %dR172, align 4, !tbaa !151
  %sub173 = sub i32 %164, %163
  store i32 %sub173, i32* %dR172, align 4, !tbaa !151
  br label %if.end.174

if.end.174:                                       ; preds = %if.then.168, %do.body.158
  %x175 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %step176 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x175, i32 0, i32 1
  %dQ177 = getelementptr inbounds %struct._e, %struct._e* %step176, i32 0, i32 0
  %165 = load i32, i32* %dQ177, align 4, !tbaa !154
  %dQ178 = getelementptr inbounds %struct._e, %struct._e* %dxx4, i32 0, i32 0
  %166 = load i32, i32* %dQ178, align 4, !tbaa !153
  %add179 = add nsw i32 %166, %165
  store i32 %add179, i32* %dQ178, align 4, !tbaa !153
  br label %do.cond.180

do.cond.180:                                      ; preds = %if.end.174
  br label %do.end.181

do.end.181:                                       ; preds = %do.cond.180
  br label %for.cond

for.cond:                                         ; preds = %if.end.447, %do.end.181
  br label %while.cond.182

while.cond.182:                                   ; preds = %if.end.382, %if.end.231, %for.cond
  %167 = load i8*, i8** %psrc, align 8, !tbaa !1
  %arrayidx183 = getelementptr inbounds i8, i8* %167, i64 0
  %168 = load i8, i8* %arrayidx183, align 1, !tbaa !101
  %tobool184 = icmp ne i8 %168, 0
  %lnot = xor i1 %tobool184, true
  br i1 %lnot, label %while.body.185, label %while.end.383

while.body.185:                                   ; preds = %while.cond.182
  %169 = load i8*, i8** %psrc, align 8, !tbaa !1
  %add.ptr186 = getelementptr inbounds i8, i8* %169, i64 4
  %170 = load i8*, i8** %endp, align 8, !tbaa !1
  %cmp187 = icmp ule i8* %add.ptr186, %170
  br i1 %cmp187, label %if.then.189, label %if.else.331

if.then.189:                                      ; preds = %while.body.185
  %171 = load i8*, i8** %psrc, align 8, !tbaa !1
  %arrayidx190 = getelementptr inbounds i8, i8* %171, i64 1
  %172 = load i8, i8* %arrayidx190, align 1, !tbaa !101
  %tobool191 = icmp ne i8 %172, 0
  br i1 %tobool191, label %if.else.294, label %if.then.192

if.then.192:                                      ; preds = %if.then.189
  %173 = load i8*, i8** %psrc, align 8, !tbaa !1
  %arrayidx193 = getelementptr inbounds i8, i8* %173, i64 2
  %174 = load i8, i8* %arrayidx193, align 1, !tbaa !101
  %tobool194 = icmp ne i8 %174, 0
  br i1 %tobool194, label %if.end.263, label %if.then.195

if.then.195:                                      ; preds = %if.then.192
  %175 = load i8*, i8** %psrc, align 8, !tbaa !1
  %arrayidx196 = getelementptr inbounds i8, i8* %175, i64 3
  %176 = load i8, i8* %arrayidx196, align 1, !tbaa !101
  %tobool197 = icmp ne i8 %176, 0
  br i1 %tobool197, label %if.end.232, label %if.then.198

if.then.198:                                      ; preds = %if.then.195
  %177 = load i8*, i8** %psrc, align 8, !tbaa !1
  %add.ptr199 = getelementptr inbounds i8, i8* %177, i64 4
  store i8* %add.ptr199, i8** %psrc, align 8, !tbaa !1
  br label %do.body.200

do.body.200:                                      ; preds = %if.then.198
  %dR201 = getelementptr inbounds %struct._e, %struct._e* %dxx4, i32 0, i32 1
  %178 = load i32, i32* %dR201, align 4, !tbaa !151
  %x202 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state203 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x202, i32 0, i32 0
  %R = getelementptr inbounds %struct._a, %struct._a* %state203, i32 0, i32 1
  %179 = load i32, i32* %R, align 4, !tbaa !155
  %sub204 = sub i32 %179, %178
  store i32 %sub204, i32* %R, align 4, !tbaa !155
  %x205 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state206 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x205, i32 0, i32 0
  %R207 = getelementptr inbounds %struct._a, %struct._a* %state206, i32 0, i32 1
  %180 = load i32, i32* %R207, align 4, !tbaa !155
  %cmp208 = icmp slt i32 %180, 0
  br i1 %cmp208, label %if.then.210, label %if.end.220

if.then.210:                                      ; preds = %do.body.200
  %x211 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state212 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x211, i32 0, i32 0
  %Q213 = getelementptr inbounds %struct._a, %struct._a* %state212, i32 0, i32 0
  %181 = load i32, i32* %Q213, align 4, !tbaa !137
  %inc214 = add nsw i32 %181, 1
  store i32 %inc214, i32* %Q213, align 4, !tbaa !137
  %N215 = getelementptr inbounds %struct._e, %struct._e* %dxx4, i32 0, i32 2
  %182 = load i32, i32* %N215, align 4, !tbaa !152
  %x216 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state217 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x216, i32 0, i32 0
  %R218 = getelementptr inbounds %struct._a, %struct._a* %state217, i32 0, i32 1
  %183 = load i32, i32* %R218, align 4, !tbaa !155
  %add219 = add i32 %183, %182
  store i32 %add219, i32* %R218, align 4, !tbaa !155
  br label %if.end.220

if.end.220:                                       ; preds = %if.then.210, %do.body.200
  %dQ221 = getelementptr inbounds %struct._e, %struct._e* %dxx4, i32 0, i32 0
  %184 = load i32, i32* %dQ221, align 4, !tbaa !153
  %x222 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state223 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x222, i32 0, i32 0
  %Q224 = getelementptr inbounds %struct._a, %struct._a* %state223, i32 0, i32 0
  %185 = load i32, i32* %Q224, align 4, !tbaa !137
  %add225 = add nsw i32 %185, %184
  store i32 %add225, i32* %Q224, align 4, !tbaa !137
  br label %do.cond.226

do.cond.226:                                      ; preds = %if.end.220
  br label %do.end.227

do.end.227:                                       ; preds = %do.cond.226
  %186 = load i8*, i8** %psrc, align 8, !tbaa !1
  %187 = load i8*, i8** %endp, align 8, !tbaa !1
  %cmp228 = icmp uge i8* %186, %187
  br i1 %cmp228, label %if.then.230, label %if.end.231

if.then.230:                                      ; preds = %do.end.227
  br label %while.end.383

if.end.231:                                       ; preds = %do.end.227
  br label %while.cond.182

if.end.232:                                       ; preds = %if.then.195
  %188 = load i8*, i8** %psrc, align 8, !tbaa !1
  %add.ptr233 = getelementptr inbounds i8, i8* %188, i64 3
  store i8* %add.ptr233, i8** %psrc, align 8, !tbaa !1
  br label %do.body.234

do.body.234:                                      ; preds = %if.end.232
  %dR235 = getelementptr inbounds %struct._e, %struct._e* %dxx3, i32 0, i32 1
  %189 = load i32, i32* %dR235, align 4, !tbaa !151
  %x236 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state237 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x236, i32 0, i32 0
  %R238 = getelementptr inbounds %struct._a, %struct._a* %state237, i32 0, i32 1
  %190 = load i32, i32* %R238, align 4, !tbaa !155
  %sub239 = sub i32 %190, %189
  store i32 %sub239, i32* %R238, align 4, !tbaa !155
  %x240 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state241 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x240, i32 0, i32 0
  %R242 = getelementptr inbounds %struct._a, %struct._a* %state241, i32 0, i32 1
  %191 = load i32, i32* %R242, align 4, !tbaa !155
  %cmp243 = icmp slt i32 %191, 0
  br i1 %cmp243, label %if.then.245, label %if.end.255

if.then.245:                                      ; preds = %do.body.234
  %x246 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state247 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x246, i32 0, i32 0
  %Q248 = getelementptr inbounds %struct._a, %struct._a* %state247, i32 0, i32 0
  %192 = load i32, i32* %Q248, align 4, !tbaa !137
  %inc249 = add nsw i32 %192, 1
  store i32 %inc249, i32* %Q248, align 4, !tbaa !137
  %N250 = getelementptr inbounds %struct._e, %struct._e* %dxx3, i32 0, i32 2
  %193 = load i32, i32* %N250, align 4, !tbaa !152
  %x251 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state252 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x251, i32 0, i32 0
  %R253 = getelementptr inbounds %struct._a, %struct._a* %state252, i32 0, i32 1
  %194 = load i32, i32* %R253, align 4, !tbaa !155
  %add254 = add i32 %194, %193
  store i32 %add254, i32* %R253, align 4, !tbaa !155
  br label %if.end.255

if.end.255:                                       ; preds = %if.then.245, %do.body.234
  %dQ256 = getelementptr inbounds %struct._e, %struct._e* %dxx3, i32 0, i32 0
  %195 = load i32, i32* %dQ256, align 4, !tbaa !153
  %x257 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state258 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x257, i32 0, i32 0
  %Q259 = getelementptr inbounds %struct._a, %struct._a* %state258, i32 0, i32 0
  %196 = load i32, i32* %Q259, align 4, !tbaa !137
  %add260 = add nsw i32 %196, %195
  store i32 %add260, i32* %Q259, align 4, !tbaa !137
  br label %do.cond.261

do.cond.261:                                      ; preds = %if.end.255
  br label %do.end.262

do.end.262:                                       ; preds = %do.cond.261
  br label %while.end.383

if.end.263:                                       ; preds = %if.then.192
  %197 = load i8*, i8** %psrc, align 8, !tbaa !1
  %add.ptr264 = getelementptr inbounds i8, i8* %197, i64 2
  store i8* %add.ptr264, i8** %psrc, align 8, !tbaa !1
  br label %do.body.265

do.body.265:                                      ; preds = %if.end.263
  %dR266 = getelementptr inbounds %struct._e, %struct._e* %dxx2, i32 0, i32 1
  %198 = load i32, i32* %dR266, align 4, !tbaa !151
  %x267 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state268 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x267, i32 0, i32 0
  %R269 = getelementptr inbounds %struct._a, %struct._a* %state268, i32 0, i32 1
  %199 = load i32, i32* %R269, align 4, !tbaa !155
  %sub270 = sub i32 %199, %198
  store i32 %sub270, i32* %R269, align 4, !tbaa !155
  %x271 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state272 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x271, i32 0, i32 0
  %R273 = getelementptr inbounds %struct._a, %struct._a* %state272, i32 0, i32 1
  %200 = load i32, i32* %R273, align 4, !tbaa !155
  %cmp274 = icmp slt i32 %200, 0
  br i1 %cmp274, label %if.then.276, label %if.end.286

if.then.276:                                      ; preds = %do.body.265
  %x277 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state278 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x277, i32 0, i32 0
  %Q279 = getelementptr inbounds %struct._a, %struct._a* %state278, i32 0, i32 0
  %201 = load i32, i32* %Q279, align 4, !tbaa !137
  %inc280 = add nsw i32 %201, 1
  store i32 %inc280, i32* %Q279, align 4, !tbaa !137
  %N281 = getelementptr inbounds %struct._e, %struct._e* %dxx2, i32 0, i32 2
  %202 = load i32, i32* %N281, align 4, !tbaa !152
  %x282 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state283 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x282, i32 0, i32 0
  %R284 = getelementptr inbounds %struct._a, %struct._a* %state283, i32 0, i32 1
  %203 = load i32, i32* %R284, align 4, !tbaa !155
  %add285 = add i32 %203, %202
  store i32 %add285, i32* %R284, align 4, !tbaa !155
  br label %if.end.286

if.end.286:                                       ; preds = %if.then.276, %do.body.265
  %dQ287 = getelementptr inbounds %struct._e, %struct._e* %dxx2, i32 0, i32 0
  %204 = load i32, i32* %dQ287, align 4, !tbaa !153
  %x288 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state289 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x288, i32 0, i32 0
  %Q290 = getelementptr inbounds %struct._a, %struct._a* %state289, i32 0, i32 0
  %205 = load i32, i32* %Q290, align 4, !tbaa !137
  %add291 = add nsw i32 %205, %204
  store i32 %add291, i32* %Q290, align 4, !tbaa !137
  br label %do.cond.292

do.cond.292:                                      ; preds = %if.end.286
  br label %do.end.293

do.end.293:                                       ; preds = %do.cond.292
  br label %while.end.383

if.else.294:                                      ; preds = %if.then.189
  %206 = load i8*, i8** %psrc, align 8, !tbaa !1
  %incdec.ptr295 = getelementptr inbounds i8, i8* %206, i32 1
  store i8* %incdec.ptr295, i8** %psrc, align 8, !tbaa !1
  br label %do.body.296

do.body.296:                                      ; preds = %if.else.294
  %x297 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %step298 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x297, i32 0, i32 1
  %dR299 = getelementptr inbounds %struct._e, %struct._e* %step298, i32 0, i32 1
  %207 = load i32, i32* %dR299, align 4, !tbaa !150
  %x300 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state301 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x300, i32 0, i32 0
  %R302 = getelementptr inbounds %struct._a, %struct._a* %state301, i32 0, i32 1
  %208 = load i32, i32* %R302, align 4, !tbaa !155
  %sub303 = sub i32 %208, %207
  store i32 %sub303, i32* %R302, align 4, !tbaa !155
  %x304 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state305 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x304, i32 0, i32 0
  %R306 = getelementptr inbounds %struct._a, %struct._a* %state305, i32 0, i32 1
  %209 = load i32, i32* %R306, align 4, !tbaa !155
  %cmp307 = icmp slt i32 %209, 0
  br i1 %cmp307, label %if.then.309, label %if.end.321

if.then.309:                                      ; preds = %do.body.296
  %x310 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state311 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x310, i32 0, i32 0
  %Q312 = getelementptr inbounds %struct._a, %struct._a* %state311, i32 0, i32 0
  %210 = load i32, i32* %Q312, align 4, !tbaa !137
  %inc313 = add nsw i32 %210, 1
  store i32 %inc313, i32* %Q312, align 4, !tbaa !137
  %x314 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %step315 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x314, i32 0, i32 1
  %N316 = getelementptr inbounds %struct._e, %struct._e* %step315, i32 0, i32 2
  %211 = load i32, i32* %N316, align 4, !tbaa !156
  %x317 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state318 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x317, i32 0, i32 0
  %R319 = getelementptr inbounds %struct._a, %struct._a* %state318, i32 0, i32 1
  %212 = load i32, i32* %R319, align 4, !tbaa !155
  %add320 = add i32 %212, %211
  store i32 %add320, i32* %R319, align 4, !tbaa !155
  br label %if.end.321

if.end.321:                                       ; preds = %if.then.309, %do.body.296
  %x322 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %step323 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x322, i32 0, i32 1
  %dQ324 = getelementptr inbounds %struct._e, %struct._e* %step323, i32 0, i32 0
  %213 = load i32, i32* %dQ324, align 4, !tbaa !154
  %x325 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state326 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x325, i32 0, i32 0
  %Q327 = getelementptr inbounds %struct._a, %struct._a* %state326, i32 0, i32 0
  %214 = load i32, i32* %Q327, align 4, !tbaa !137
  %add328 = add nsw i32 %214, %213
  store i32 %add328, i32* %Q327, align 4, !tbaa !137
  br label %do.cond.329

do.cond.329:                                      ; preds = %if.end.321
  br label %do.end.330

do.end.330:                                       ; preds = %do.cond.329
  br label %while.end.383

if.else.331:                                      ; preds = %while.body.185
  br label %while.cond.332

while.cond.332:                                   ; preds = %if.end.376, %if.else.331
  %215 = load i8*, i8** %psrc, align 8, !tbaa !1
  %arrayidx333 = getelementptr inbounds i8, i8* %215, i64 0
  %216 = load i8, i8* %arrayidx333, align 1, !tbaa !101
  %tobool334 = icmp ne i8 %216, 0
  %lnot335 = xor i1 %tobool334, true
  br i1 %lnot335, label %while.body.336, label %while.end.377

while.body.336:                                   ; preds = %while.cond.332
  %217 = load i8*, i8** %psrc, align 8, !tbaa !1
  %incdec.ptr337 = getelementptr inbounds i8, i8* %217, i32 1
  store i8* %incdec.ptr337, i8** %psrc, align 8, !tbaa !1
  br label %do.body.338

do.body.338:                                      ; preds = %while.body.336
  %x339 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %step340 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x339, i32 0, i32 1
  %dR341 = getelementptr inbounds %struct._e, %struct._e* %step340, i32 0, i32 1
  %218 = load i32, i32* %dR341, align 4, !tbaa !150
  %x342 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state343 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x342, i32 0, i32 0
  %R344 = getelementptr inbounds %struct._a, %struct._a* %state343, i32 0, i32 1
  %219 = load i32, i32* %R344, align 4, !tbaa !155
  %sub345 = sub i32 %219, %218
  store i32 %sub345, i32* %R344, align 4, !tbaa !155
  %x346 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state347 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x346, i32 0, i32 0
  %R348 = getelementptr inbounds %struct._a, %struct._a* %state347, i32 0, i32 1
  %220 = load i32, i32* %R348, align 4, !tbaa !155
  %cmp349 = icmp slt i32 %220, 0
  br i1 %cmp349, label %if.then.351, label %if.end.363

if.then.351:                                      ; preds = %do.body.338
  %x352 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state353 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x352, i32 0, i32 0
  %Q354 = getelementptr inbounds %struct._a, %struct._a* %state353, i32 0, i32 0
  %221 = load i32, i32* %Q354, align 4, !tbaa !137
  %inc355 = add nsw i32 %221, 1
  store i32 %inc355, i32* %Q354, align 4, !tbaa !137
  %x356 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %step357 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x356, i32 0, i32 1
  %N358 = getelementptr inbounds %struct._e, %struct._e* %step357, i32 0, i32 2
  %222 = load i32, i32* %N358, align 4, !tbaa !156
  %x359 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state360 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x359, i32 0, i32 0
  %R361 = getelementptr inbounds %struct._a, %struct._a* %state360, i32 0, i32 1
  %223 = load i32, i32* %R361, align 4, !tbaa !155
  %add362 = add i32 %223, %222
  store i32 %add362, i32* %R361, align 4, !tbaa !155
  br label %if.end.363

if.end.363:                                       ; preds = %if.then.351, %do.body.338
  %x364 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %step365 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x364, i32 0, i32 1
  %dQ366 = getelementptr inbounds %struct._e, %struct._e* %step365, i32 0, i32 0
  %224 = load i32, i32* %dQ366, align 4, !tbaa !154
  %x367 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state368 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x367, i32 0, i32 0
  %Q369 = getelementptr inbounds %struct._a, %struct._a* %state368, i32 0, i32 0
  %225 = load i32, i32* %Q369, align 4, !tbaa !137
  %add370 = add nsw i32 %225, %224
  store i32 %add370, i32* %Q369, align 4, !tbaa !137
  br label %do.cond.371

do.cond.371:                                      ; preds = %if.end.363
  br label %do.end.372

do.end.372:                                       ; preds = %do.cond.371
  %226 = load i8*, i8** %psrc, align 8, !tbaa !1
  %227 = load i8*, i8** %endp, align 8, !tbaa !1
  %cmp373 = icmp uge i8* %226, %227
  br i1 %cmp373, label %if.then.375, label %if.end.376

if.then.375:                                      ; preds = %do.end.372
  br label %while.end.377

if.end.376:                                       ; preds = %do.end.372
  br label %while.cond.332

while.end.377:                                    ; preds = %if.then.375, %while.cond.332
  %228 = load i8*, i8** %psrc, align 8, !tbaa !1
  %229 = load i8*, i8** %endp, align 8, !tbaa !1
  %cmp378 = icmp uge i8* %228, %229
  br i1 %cmp378, label %if.then.380, label %if.end.381

if.then.380:                                      ; preds = %while.end.377
  br label %while.end.383

if.end.381:                                       ; preds = %while.end.377
  br label %if.end.382

if.end.382:                                       ; preds = %if.end.381
  br label %while.cond.182

while.end.383:                                    ; preds = %if.then.380, %do.end.330, %do.end.293, %do.end.262, %if.then.230, %while.cond.182
  %x384 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state385 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x384, i32 0, i32 0
  %Q386 = getelementptr inbounds %struct._a, %struct._a* %state385, i32 0, i32 0
  %230 = load i32, i32* %Q386, align 4, !tbaa !137
  store i32 %230, i32* %xrun, align 4, !tbaa !5
  %231 = load i8*, i8** %psrc, align 8, !tbaa !1
  %232 = load i8*, i8** %stop, align 8, !tbaa !1
  %cmp387 = icmp uge i8* %231, %232
  br i1 %cmp387, label %if.then.389, label %if.end.390

if.then.389:                                      ; preds = %while.end.383
  br label %for.end.448

if.end.390:                                       ; preds = %while.end.383
  br label %for.cond.391

for.cond.391:                                     ; preds = %for.inc, %if.end.390
  %233 = load i8*, i8** %psrc, align 8, !tbaa !1
  %234 = load i8*, i8** %endp, align 8, !tbaa !1
  %cmp392 = icmp ult i8* %233, %234
  br i1 %cmp392, label %land.rhs.394, label %land.end.397

land.rhs.394:                                     ; preds = %for.cond.391
  %235 = load i8*, i8** %psrc, align 8, !tbaa !1
  %236 = load i8, i8* %235, align 1, !tbaa !101
  %conv395 = zext i8 %236 to i32
  %tobool396 = icmp ne i32 %conv395, 0
  br label %land.end.397

land.end.397:                                     ; preds = %land.rhs.394, %for.cond.391
  %237 = phi i1 [ false, %for.cond.391 ], [ %tobool396, %land.rhs.394 ]
  br i1 %237, label %for.body, label %for.end

for.body:                                         ; preds = %land.end.397
  br label %do.body.398

do.body.398:                                      ; preds = %for.body
  %x399 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %step400 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x399, i32 0, i32 1
  %dR401 = getelementptr inbounds %struct._e, %struct._e* %step400, i32 0, i32 1
  %238 = load i32, i32* %dR401, align 4, !tbaa !150
  %x402 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state403 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x402, i32 0, i32 0
  %R404 = getelementptr inbounds %struct._a, %struct._a* %state403, i32 0, i32 1
  %239 = load i32, i32* %R404, align 4, !tbaa !155
  %sub405 = sub i32 %239, %238
  store i32 %sub405, i32* %R404, align 4, !tbaa !155
  %x406 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state407 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x406, i32 0, i32 0
  %R408 = getelementptr inbounds %struct._a, %struct._a* %state407, i32 0, i32 1
  %240 = load i32, i32* %R408, align 4, !tbaa !155
  %cmp409 = icmp slt i32 %240, 0
  br i1 %cmp409, label %if.then.411, label %if.end.423

if.then.411:                                      ; preds = %do.body.398
  %x412 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state413 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x412, i32 0, i32 0
  %Q414 = getelementptr inbounds %struct._a, %struct._a* %state413, i32 0, i32 0
  %241 = load i32, i32* %Q414, align 4, !tbaa !137
  %inc415 = add nsw i32 %241, 1
  store i32 %inc415, i32* %Q414, align 4, !tbaa !137
  %x416 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %step417 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x416, i32 0, i32 1
  %N418 = getelementptr inbounds %struct._e, %struct._e* %step417, i32 0, i32 2
  %242 = load i32, i32* %N418, align 4, !tbaa !156
  %x419 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state420 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x419, i32 0, i32 0
  %R421 = getelementptr inbounds %struct._a, %struct._a* %state420, i32 0, i32 1
  %243 = load i32, i32* %R421, align 4, !tbaa !155
  %add422 = add i32 %243, %242
  store i32 %add422, i32* %R421, align 4, !tbaa !155
  br label %if.end.423

if.end.423:                                       ; preds = %if.then.411, %do.body.398
  %x424 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %step425 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x424, i32 0, i32 1
  %dQ426 = getelementptr inbounds %struct._e, %struct._e* %step425, i32 0, i32 0
  %244 = load i32, i32* %dQ426, align 4, !tbaa !154
  %x427 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state428 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x427, i32 0, i32 0
  %Q429 = getelementptr inbounds %struct._a, %struct._a* %state428, i32 0, i32 0
  %245 = load i32, i32* %Q429, align 4, !tbaa !137
  %add430 = add nsw i32 %245, %244
  store i32 %add430, i32* %Q429, align 4, !tbaa !137
  br label %do.cond.431

do.cond.431:                                      ; preds = %if.end.423
  br label %do.end.432

do.end.432:                                       ; preds = %do.cond.431
  br label %for.inc

for.inc:                                          ; preds = %do.end.432
  %246 = load i8*, i8** %psrc, align 8, !tbaa !1
  %incdec.ptr433 = getelementptr inbounds i8, i8* %246, i32 1
  store i8* %incdec.ptr433, i8** %psrc, align 8, !tbaa !1
  br label %for.cond.391

for.end:                                          ; preds = %land.end.397
  %247 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_pgram, align 8, !tbaa !1
  %248 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %249 = load i32, i32* %xrun, align 4, !tbaa !5
  %250 = load i32, i32* %yrun, align 4, !tbaa !5
  %x434 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state435 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x434, i32 0, i32 0
  %Q436 = getelementptr inbounds %struct._a, %struct._a* %state435, i32 0, i32 0
  %251 = load i32, i32* %Q436, align 4, !tbaa !137
  %252 = load i32, i32* %xrun, align 4, !tbaa !5
  %sub437 = sub nsw i32 %251, %252
  %253 = load i32, i32* %ax, align 4, !tbaa !5
  %add438 = add nsw i32 %sub437, %253
  %254 = load i32, i32* %dyy, align 4, !tbaa !5
  %255 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %256 = load i32, i32* %lop, align 4, !tbaa !5
  %call439 = call i32 %247(%struct.gx_device_s* %248, i32 %249, i32 %250, i32 %add438, i32 0, i32 0, i32 %254, %struct.gx_device_color_s* %255, i32 %256) #5
  store i32 %call439, i32* %code, align 4, !tbaa !5
  %257 = load i32, i32* %code, align 4, !tbaa !5
  %cmp440 = icmp slt i32 %257, 0
  br i1 %cmp440, label %if.then.442, label %if.end.443

if.then.442:                                      ; preds = %for.end
  store i32 32, i32* %cleanup.dest.slot
  br label %cleanup

if.end.443:                                       ; preds = %for.end
  %258 = load i8*, i8** %psrc, align 8, !tbaa !1
  store i8* %258, i8** %rsrc, align 8, !tbaa !1
  %259 = load i8*, i8** %psrc, align 8, !tbaa !1
  %260 = load i8*, i8** %stop, align 8, !tbaa !1
  %cmp444 = icmp uge i8* %259, %260
  br i1 %cmp444, label %if.then.446, label %if.end.447

if.then.446:                                      ; preds = %if.end.443
  br label %for.end.448

if.end.447:                                       ; preds = %if.end.443
  br label %for.cond

for.end.448:                                      ; preds = %if.then.446, %if.then.389
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.442, %for.end.448
  %261 = bitcast i32* %dyy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %261) #1
  %262 = bitcast i32* %ay to i8*
  call void @llvm.lifetime.end(i64 4, i8* %262) #1
  %263 = bitcast i32* %ax to i8*
  call void @llvm.lifetime.end(i64 4, i8* %263) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.1358 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.793

if.else.451:                                      ; preds = %if.end.85
  %264 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %posture452 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %264, i32 0, i32 37
  %265 = load i32, i32* %posture452, align 4, !tbaa !47
  %cmp453 = icmp eq i32 %265, 1
  br i1 %cmp453, label %if.then.455, label %if.else.606

if.then.455:                                      ; preds = %if.else.451
  %266 = bitcast i32* %ax456 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %266) #1
  %267 = load i32, i32* %pdyx, align 4, !tbaa !5
  %cmp457 = icmp slt i32 %267, 0
  br i1 %cmp457, label %cond.true.459, label %cond.false.462

cond.true.459:                                    ; preds = %if.then.455
  %268 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %adjust460 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %268, i32 0, i32 45
  %269 = load i32, i32* %adjust460, align 4, !tbaa !107
  %sub461 = sub nsw i32 0, %269
  br label %cond.end.464

cond.false.462:                                   ; preds = %if.then.455
  %270 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %adjust463 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %270, i32 0, i32 45
  %271 = load i32, i32* %adjust463, align 4, !tbaa !107
  br label %cond.end.464

cond.end.464:                                     ; preds = %cond.false.462, %cond.true.459
  %cond465 = phi i32 [ %sub461, %cond.true.459 ], [ %271, %cond.false.462 ]
  store i32 %cond465, i32* %ax456, align 4, !tbaa !5
  %272 = bitcast i32* %dyx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %272) #1
  %273 = load i32, i32* %pdyx, align 4, !tbaa !5
  %274 = load i32, i32* %ax456, align 4, !tbaa !5
  %shl466 = shl i32 %274, 1
  %add467 = add nsw i32 %273, %shl466
  store i32 %add467, i32* %dyx, align 4, !tbaa !5
  %275 = bitcast i32* %ay468 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %275) #1
  %276 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %matrix469 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %276, i32 0, i32 21
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %matrix469, i32 0, i32 1
  %277 = load float, float* %xy, align 4, !tbaa !157
  %cmp470 = fcmp olt float %277, 0.000000e+00
  br i1 %cmp470, label %cond.true.472, label %cond.false.475

cond.true.472:                                    ; preds = %cond.end.464
  %278 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %adjust473 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %278, i32 0, i32 45
  %279 = load i32, i32* %adjust473, align 4, !tbaa !107
  %sub474 = sub nsw i32 0, %279
  br label %cond.end.477

cond.false.475:                                   ; preds = %cond.end.464
  %280 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %adjust476 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %280, i32 0, i32 45
  %281 = load i32, i32* %adjust476, align 4, !tbaa !107
  br label %cond.end.477

cond.end.477:                                     ; preds = %cond.false.475, %cond.true.472
  %cond478 = phi i32 [ %sub474, %cond.true.472 ], [ %281, %cond.false.475 ]
  store i32 %cond478, i32* %ay468, align 4, !tbaa !5
  %282 = load i32, i32* %ax456, align 4, !tbaa !5
  %283 = load i32, i32* %xrun, align 4, !tbaa !5
  %sub479 = sub nsw i32 %283, %282
  store i32 %sub479, i32* %xrun, align 4, !tbaa !5
  %284 = load i32, i32* %ay468, align 4, !tbaa !5
  %sub480 = sub nsw i32 0, %284
  %y481 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %state482 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y481, i32 0, i32 0
  %Q483 = getelementptr inbounds %struct._a, %struct._a* %state482, i32 0, i32 0
  %285 = load i32, i32* %Q483, align 4, !tbaa !146
  %add484 = add nsw i32 %285, %sub480
  store i32 %add484, i32* %Q483, align 4, !tbaa !146
  %286 = load i32, i32* %ay468, align 4, !tbaa !5
  %shl485 = shl i32 %286, 1
  store i32 %shl485, i32* %ay468, align 4, !tbaa !5
  br label %for.cond.486

for.cond.486:                                     ; preds = %if.end.599, %cond.end.477
  br label %for.cond.487

for.cond.487:                                     ; preds = %for.inc.530, %for.cond.486
  %287 = load i8*, i8** %psrc, align 8, !tbaa !1
  %288 = load i8*, i8** %endp, align 8, !tbaa !1
  %cmp488 = icmp ult i8* %287, %288
  br i1 %cmp488, label %land.rhs.490, label %land.end.493

land.rhs.490:                                     ; preds = %for.cond.487
  %289 = load i8*, i8** %psrc, align 8, !tbaa !1
  %290 = load i8, i8* %289, align 1, !tbaa !101
  %tobool491 = icmp ne i8 %290, 0
  %lnot492 = xor i1 %tobool491, true
  br label %land.end.493

land.end.493:                                     ; preds = %land.rhs.490, %for.cond.487
  %291 = phi i1 [ false, %for.cond.487 ], [ %lnot492, %land.rhs.490 ]
  br i1 %291, label %for.body.494, label %for.end.532

for.body.494:                                     ; preds = %land.end.493
  br label %do.body.495

do.body.495:                                      ; preds = %for.body.494
  %y496 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %step497 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y496, i32 0, i32 1
  %dR498 = getelementptr inbounds %struct._e, %struct._e* %step497, i32 0, i32 1
  %292 = load i32, i32* %dR498, align 4, !tbaa !158
  %y499 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %state500 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y499, i32 0, i32 0
  %R501 = getelementptr inbounds %struct._a, %struct._a* %state500, i32 0, i32 1
  %293 = load i32, i32* %R501, align 4, !tbaa !159
  %sub502 = sub i32 %293, %292
  store i32 %sub502, i32* %R501, align 4, !tbaa !159
  %y503 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %state504 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y503, i32 0, i32 0
  %R505 = getelementptr inbounds %struct._a, %struct._a* %state504, i32 0, i32 1
  %294 = load i32, i32* %R505, align 4, !tbaa !159
  %cmp506 = icmp slt i32 %294, 0
  br i1 %cmp506, label %if.then.508, label %if.end.520

if.then.508:                                      ; preds = %do.body.495
  %y509 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %state510 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y509, i32 0, i32 0
  %Q511 = getelementptr inbounds %struct._a, %struct._a* %state510, i32 0, i32 0
  %295 = load i32, i32* %Q511, align 4, !tbaa !146
  %inc512 = add nsw i32 %295, 1
  store i32 %inc512, i32* %Q511, align 4, !tbaa !146
  %y513 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %step514 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y513, i32 0, i32 1
  %N515 = getelementptr inbounds %struct._e, %struct._e* %step514, i32 0, i32 2
  %296 = load i32, i32* %N515, align 4, !tbaa !160
  %y516 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %state517 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y516, i32 0, i32 0
  %R518 = getelementptr inbounds %struct._a, %struct._a* %state517, i32 0, i32 1
  %297 = load i32, i32* %R518, align 4, !tbaa !159
  %add519 = add i32 %297, %296
  store i32 %add519, i32* %R518, align 4, !tbaa !159
  br label %if.end.520

if.end.520:                                       ; preds = %if.then.508, %do.body.495
  %y521 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %step522 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y521, i32 0, i32 1
  %dQ523 = getelementptr inbounds %struct._e, %struct._e* %step522, i32 0, i32 0
  %298 = load i32, i32* %dQ523, align 4, !tbaa !161
  %y524 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %state525 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y524, i32 0, i32 0
  %Q526 = getelementptr inbounds %struct._a, %struct._a* %state525, i32 0, i32 0
  %299 = load i32, i32* %Q526, align 4, !tbaa !146
  %add527 = add nsw i32 %299, %298
  store i32 %add527, i32* %Q526, align 4, !tbaa !146
  br label %do.cond.528

do.cond.528:                                      ; preds = %if.end.520
  br label %do.end.529

do.end.529:                                       ; preds = %do.cond.528
  br label %for.inc.530

for.inc.530:                                      ; preds = %do.end.529
  %300 = load i8*, i8** %psrc, align 8, !tbaa !1
  %incdec.ptr531 = getelementptr inbounds i8, i8* %300, i32 1
  store i8* %incdec.ptr531, i8** %psrc, align 8, !tbaa !1
  br label %for.cond.487

for.end.532:                                      ; preds = %land.end.493
  %y533 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %state534 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y533, i32 0, i32 0
  %Q535 = getelementptr inbounds %struct._a, %struct._a* %state534, i32 0, i32 0
  %301 = load i32, i32* %Q535, align 4, !tbaa !146
  store i32 %301, i32* %yrun, align 4, !tbaa !5
  %302 = load i8*, i8** %psrc, align 8, !tbaa !1
  %303 = load i8*, i8** %stop, align 8, !tbaa !1
  %cmp536 = icmp uge i8* %302, %303
  br i1 %cmp536, label %if.then.538, label %if.end.539

if.then.538:                                      ; preds = %for.end.532
  br label %for.end.600

if.end.539:                                       ; preds = %for.end.532
  br label %for.cond.540

for.cond.540:                                     ; preds = %for.inc.583, %if.end.539
  %304 = load i8*, i8** %psrc, align 8, !tbaa !1
  %305 = load i8*, i8** %endp, align 8, !tbaa !1
  %cmp541 = icmp ult i8* %304, %305
  br i1 %cmp541, label %land.rhs.543, label %land.end.546

land.rhs.543:                                     ; preds = %for.cond.540
  %306 = load i8*, i8** %psrc, align 8, !tbaa !1
  %307 = load i8, i8* %306, align 1, !tbaa !101
  %conv544 = zext i8 %307 to i32
  %tobool545 = icmp ne i32 %conv544, 0
  br label %land.end.546

land.end.546:                                     ; preds = %land.rhs.543, %for.cond.540
  %308 = phi i1 [ false, %for.cond.540 ], [ %tobool545, %land.rhs.543 ]
  br i1 %308, label %for.body.547, label %for.end.585

for.body.547:                                     ; preds = %land.end.546
  br label %do.body.548

do.body.548:                                      ; preds = %for.body.547
  %y549 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %step550 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y549, i32 0, i32 1
  %dR551 = getelementptr inbounds %struct._e, %struct._e* %step550, i32 0, i32 1
  %309 = load i32, i32* %dR551, align 4, !tbaa !158
  %y552 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %state553 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y552, i32 0, i32 0
  %R554 = getelementptr inbounds %struct._a, %struct._a* %state553, i32 0, i32 1
  %310 = load i32, i32* %R554, align 4, !tbaa !159
  %sub555 = sub i32 %310, %309
  store i32 %sub555, i32* %R554, align 4, !tbaa !159
  %y556 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %state557 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y556, i32 0, i32 0
  %R558 = getelementptr inbounds %struct._a, %struct._a* %state557, i32 0, i32 1
  %311 = load i32, i32* %R558, align 4, !tbaa !159
  %cmp559 = icmp slt i32 %311, 0
  br i1 %cmp559, label %if.then.561, label %if.end.573

if.then.561:                                      ; preds = %do.body.548
  %y562 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %state563 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y562, i32 0, i32 0
  %Q564 = getelementptr inbounds %struct._a, %struct._a* %state563, i32 0, i32 0
  %312 = load i32, i32* %Q564, align 4, !tbaa !146
  %inc565 = add nsw i32 %312, 1
  store i32 %inc565, i32* %Q564, align 4, !tbaa !146
  %y566 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %step567 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y566, i32 0, i32 1
  %N568 = getelementptr inbounds %struct._e, %struct._e* %step567, i32 0, i32 2
  %313 = load i32, i32* %N568, align 4, !tbaa !160
  %y569 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %state570 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y569, i32 0, i32 0
  %R571 = getelementptr inbounds %struct._a, %struct._a* %state570, i32 0, i32 1
  %314 = load i32, i32* %R571, align 4, !tbaa !159
  %add572 = add i32 %314, %313
  store i32 %add572, i32* %R571, align 4, !tbaa !159
  br label %if.end.573

if.end.573:                                       ; preds = %if.then.561, %do.body.548
  %y574 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %step575 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y574, i32 0, i32 1
  %dQ576 = getelementptr inbounds %struct._e, %struct._e* %step575, i32 0, i32 0
  %315 = load i32, i32* %dQ576, align 4, !tbaa !161
  %y577 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %state578 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y577, i32 0, i32 0
  %Q579 = getelementptr inbounds %struct._a, %struct._a* %state578, i32 0, i32 0
  %316 = load i32, i32* %Q579, align 4, !tbaa !146
  %add580 = add nsw i32 %316, %315
  store i32 %add580, i32* %Q579, align 4, !tbaa !146
  br label %do.cond.581

do.cond.581:                                      ; preds = %if.end.573
  br label %do.end.582

do.end.582:                                       ; preds = %do.cond.581
  br label %for.inc.583

for.inc.583:                                      ; preds = %do.end.582
  %317 = load i8*, i8** %psrc, align 8, !tbaa !1
  %incdec.ptr584 = getelementptr inbounds i8, i8* %317, i32 1
  store i8* %incdec.ptr584, i8** %psrc, align 8, !tbaa !1
  br label %for.cond.540

for.end.585:                                      ; preds = %land.end.546
  %318 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_pgram, align 8, !tbaa !1
  %319 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %320 = load i32, i32* %xrun, align 4, !tbaa !5
  %321 = load i32, i32* %yrun, align 4, !tbaa !5
  %y586 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %state587 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y586, i32 0, i32 0
  %Q588 = getelementptr inbounds %struct._a, %struct._a* %state587, i32 0, i32 0
  %322 = load i32, i32* %Q588, align 4, !tbaa !146
  %323 = load i32, i32* %yrun, align 4, !tbaa !5
  %sub589 = sub nsw i32 %322, %323
  %324 = load i32, i32* %ay468, align 4, !tbaa !5
  %add590 = add nsw i32 %sub589, %324
  %325 = load i32, i32* %dyx, align 4, !tbaa !5
  %326 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %327 = load i32, i32* %lop, align 4, !tbaa !5
  %call591 = call i32 %318(%struct.gx_device_s* %319, i32 %320, i32 %321, i32 0, i32 %add590, i32 %325, i32 0, %struct.gx_device_color_s* %326, i32 %327) #5
  store i32 %call591, i32* %code, align 4, !tbaa !5
  %328 = load i32, i32* %code, align 4, !tbaa !5
  %cmp592 = icmp slt i32 %328, 0
  br i1 %cmp592, label %if.then.594, label %if.end.595

if.then.594:                                      ; preds = %for.end.585
  store i32 32, i32* %cleanup.dest.slot
  br label %cleanup.601

if.end.595:                                       ; preds = %for.end.585
  %329 = load i8*, i8** %psrc, align 8, !tbaa !1
  store i8* %329, i8** %rsrc, align 8, !tbaa !1
  %330 = load i8*, i8** %psrc, align 8, !tbaa !1
  %331 = load i8*, i8** %stop, align 8, !tbaa !1
  %cmp596 = icmp uge i8* %330, %331
  br i1 %cmp596, label %if.then.598, label %if.end.599

if.then.598:                                      ; preds = %if.end.595
  br label %for.end.600

if.end.599:                                       ; preds = %if.end.595
  br label %for.cond.486

for.end.600:                                      ; preds = %if.then.598, %if.then.538
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.601

cleanup.601:                                      ; preds = %if.then.594, %for.end.600
  %332 = bitcast i32* %ay468 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %332) #1
  %333 = bitcast i32* %dyx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %333) #1
  %334 = bitcast i32* %ax456 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %334) #1
  %cleanup.dest.604 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.604, label %cleanup.1358 [
    i32 0, label %cleanup.cont.605
  ]

cleanup.cont.605:                                 ; preds = %cleanup.601
  br label %if.end.792

if.else.606:                                      ; preds = %if.else.451
  %335 = load i8*, i8** %endp, align 8, !tbaa !1
  store i8* %335, i8** %stop, align 8, !tbaa !1
  br label %for.cond.607

for.cond.607:                                     ; preds = %do.end.790, %if.else.606
  br label %for.cond.608

for.cond.608:                                     ; preds = %for.inc.686, %for.cond.607
  %336 = load i8*, i8** %psrc, align 8, !tbaa !1
  %337 = load i8*, i8** %stop, align 8, !tbaa !1
  %cmp609 = icmp ult i8* %336, %337
  br i1 %cmp609, label %land.rhs.611, label %land.end.614

land.rhs.611:                                     ; preds = %for.cond.608
  %338 = load i8*, i8** %psrc, align 8, !tbaa !1
  %339 = load i8, i8* %338, align 1, !tbaa !101
  %tobool612 = icmp ne i8 %339, 0
  %lnot613 = xor i1 %tobool612, true
  br label %land.end.614

land.end.614:                                     ; preds = %land.rhs.611, %for.cond.608
  %340 = phi i1 [ false, %for.cond.608 ], [ %lnot613, %land.rhs.611 ]
  br i1 %340, label %for.body.615, label %for.end.688

for.body.615:                                     ; preds = %land.end.614
  br label %do.body.616

do.body.616:                                      ; preds = %for.body.615
  %x617 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %step618 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x617, i32 0, i32 1
  %dR619 = getelementptr inbounds %struct._e, %struct._e* %step618, i32 0, i32 1
  %341 = load i32, i32* %dR619, align 4, !tbaa !150
  %x620 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state621 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x620, i32 0, i32 0
  %R622 = getelementptr inbounds %struct._a, %struct._a* %state621, i32 0, i32 1
  %342 = load i32, i32* %R622, align 4, !tbaa !155
  %sub623 = sub i32 %342, %341
  store i32 %sub623, i32* %R622, align 4, !tbaa !155
  %x624 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state625 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x624, i32 0, i32 0
  %R626 = getelementptr inbounds %struct._a, %struct._a* %state625, i32 0, i32 1
  %343 = load i32, i32* %R626, align 4, !tbaa !155
  %cmp627 = icmp slt i32 %343, 0
  br i1 %cmp627, label %if.then.629, label %if.end.641

if.then.629:                                      ; preds = %do.body.616
  %x630 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state631 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x630, i32 0, i32 0
  %Q632 = getelementptr inbounds %struct._a, %struct._a* %state631, i32 0, i32 0
  %344 = load i32, i32* %Q632, align 4, !tbaa !137
  %inc633 = add nsw i32 %344, 1
  store i32 %inc633, i32* %Q632, align 4, !tbaa !137
  %x634 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %step635 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x634, i32 0, i32 1
  %N636 = getelementptr inbounds %struct._e, %struct._e* %step635, i32 0, i32 2
  %345 = load i32, i32* %N636, align 4, !tbaa !156
  %x637 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state638 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x637, i32 0, i32 0
  %R639 = getelementptr inbounds %struct._a, %struct._a* %state638, i32 0, i32 1
  %346 = load i32, i32* %R639, align 4, !tbaa !155
  %add640 = add i32 %346, %345
  store i32 %add640, i32* %R639, align 4, !tbaa !155
  br label %if.end.641

if.end.641:                                       ; preds = %if.then.629, %do.body.616
  %x642 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %step643 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x642, i32 0, i32 1
  %dQ644 = getelementptr inbounds %struct._e, %struct._e* %step643, i32 0, i32 0
  %347 = load i32, i32* %dQ644, align 4, !tbaa !154
  %x645 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state646 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x645, i32 0, i32 0
  %Q647 = getelementptr inbounds %struct._a, %struct._a* %state646, i32 0, i32 0
  %348 = load i32, i32* %Q647, align 4, !tbaa !137
  %add648 = add nsw i32 %348, %347
  store i32 %add648, i32* %Q647, align 4, !tbaa !137
  br label %do.cond.649

do.cond.649:                                      ; preds = %if.end.641
  br label %do.end.650

do.end.650:                                       ; preds = %do.cond.649
  br label %do.body.651

do.body.651:                                      ; preds = %do.end.650
  %y652 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %step653 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y652, i32 0, i32 1
  %dR654 = getelementptr inbounds %struct._e, %struct._e* %step653, i32 0, i32 1
  %349 = load i32, i32* %dR654, align 4, !tbaa !158
  %y655 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %state656 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y655, i32 0, i32 0
  %R657 = getelementptr inbounds %struct._a, %struct._a* %state656, i32 0, i32 1
  %350 = load i32, i32* %R657, align 4, !tbaa !159
  %sub658 = sub i32 %350, %349
  store i32 %sub658, i32* %R657, align 4, !tbaa !159
  %y659 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %state660 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y659, i32 0, i32 0
  %R661 = getelementptr inbounds %struct._a, %struct._a* %state660, i32 0, i32 1
  %351 = load i32, i32* %R661, align 4, !tbaa !159
  %cmp662 = icmp slt i32 %351, 0
  br i1 %cmp662, label %if.then.664, label %if.end.676

if.then.664:                                      ; preds = %do.body.651
  %y665 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %state666 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y665, i32 0, i32 0
  %Q667 = getelementptr inbounds %struct._a, %struct._a* %state666, i32 0, i32 0
  %352 = load i32, i32* %Q667, align 4, !tbaa !146
  %inc668 = add nsw i32 %352, 1
  store i32 %inc668, i32* %Q667, align 4, !tbaa !146
  %y669 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %step670 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y669, i32 0, i32 1
  %N671 = getelementptr inbounds %struct._e, %struct._e* %step670, i32 0, i32 2
  %353 = load i32, i32* %N671, align 4, !tbaa !160
  %y672 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %state673 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y672, i32 0, i32 0
  %R674 = getelementptr inbounds %struct._a, %struct._a* %state673, i32 0, i32 1
  %354 = load i32, i32* %R674, align 4, !tbaa !159
  %add675 = add i32 %354, %353
  store i32 %add675, i32* %R674, align 4, !tbaa !159
  br label %if.end.676

if.end.676:                                       ; preds = %if.then.664, %do.body.651
  %y677 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %step678 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y677, i32 0, i32 1
  %dQ679 = getelementptr inbounds %struct._e, %struct._e* %step678, i32 0, i32 0
  %355 = load i32, i32* %dQ679, align 4, !tbaa !161
  %y680 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %state681 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y680, i32 0, i32 0
  %Q682 = getelementptr inbounds %struct._a, %struct._a* %state681, i32 0, i32 0
  %356 = load i32, i32* %Q682, align 4, !tbaa !146
  %add683 = add nsw i32 %356, %355
  store i32 %add683, i32* %Q682, align 4, !tbaa !146
  br label %do.cond.684

do.cond.684:                                      ; preds = %if.end.676
  br label %do.end.685

do.end.685:                                       ; preds = %do.cond.684
  br label %for.inc.686

for.inc.686:                                      ; preds = %do.end.685
  %357 = load i8*, i8** %psrc, align 8, !tbaa !1
  %incdec.ptr687 = getelementptr inbounds i8, i8* %357, i32 1
  store i8* %incdec.ptr687, i8** %psrc, align 8, !tbaa !1
  br label %for.cond.608

for.end.688:                                      ; preds = %land.end.614
  %358 = load i8*, i8** %psrc, align 8, !tbaa !1
  %359 = load i8*, i8** %endp, align 8, !tbaa !1
  %cmp689 = icmp uge i8* %358, %359
  br i1 %cmp689, label %if.then.691, label %if.end.692

if.then.691:                                      ; preds = %for.end.688
  br label %for.end.791

if.end.692:                                       ; preds = %for.end.688
  br label %do.body.693

do.body.693:                                      ; preds = %do.cond.788, %if.end.692
  %y694 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %state695 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y694, i32 0, i32 0
  %Q696 = getelementptr inbounds %struct._a, %struct._a* %state695, i32 0, i32 0
  %360 = load i32, i32* %Q696, align 4, !tbaa !146
  store i32 %360, i32* %yrun, align 4, !tbaa !5
  %x697 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state698 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x697, i32 0, i32 0
  %Q699 = getelementptr inbounds %struct._a, %struct._a* %state698, i32 0, i32 0
  %361 = load i32, i32* %Q699, align 4, !tbaa !137
  store i32 %361, i32* %xrun, align 4, !tbaa !5
  br label %do.body.700

do.body.700:                                      ; preds = %do.body.693
  %x701 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %step702 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x701, i32 0, i32 1
  %dR703 = getelementptr inbounds %struct._e, %struct._e* %step702, i32 0, i32 1
  %362 = load i32, i32* %dR703, align 4, !tbaa !150
  %x704 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state705 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x704, i32 0, i32 0
  %R706 = getelementptr inbounds %struct._a, %struct._a* %state705, i32 0, i32 1
  %363 = load i32, i32* %R706, align 4, !tbaa !155
  %sub707 = sub i32 %363, %362
  store i32 %sub707, i32* %R706, align 4, !tbaa !155
  %x708 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state709 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x708, i32 0, i32 0
  %R710 = getelementptr inbounds %struct._a, %struct._a* %state709, i32 0, i32 1
  %364 = load i32, i32* %R710, align 4, !tbaa !155
  %cmp711 = icmp slt i32 %364, 0
  br i1 %cmp711, label %if.then.713, label %if.end.725

if.then.713:                                      ; preds = %do.body.700
  %x714 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state715 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x714, i32 0, i32 0
  %Q716 = getelementptr inbounds %struct._a, %struct._a* %state715, i32 0, i32 0
  %365 = load i32, i32* %Q716, align 4, !tbaa !137
  %inc717 = add nsw i32 %365, 1
  store i32 %inc717, i32* %Q716, align 4, !tbaa !137
  %x718 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %step719 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x718, i32 0, i32 1
  %N720 = getelementptr inbounds %struct._e, %struct._e* %step719, i32 0, i32 2
  %366 = load i32, i32* %N720, align 4, !tbaa !156
  %x721 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state722 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x721, i32 0, i32 0
  %R723 = getelementptr inbounds %struct._a, %struct._a* %state722, i32 0, i32 1
  %367 = load i32, i32* %R723, align 4, !tbaa !155
  %add724 = add i32 %367, %366
  store i32 %add724, i32* %R723, align 4, !tbaa !155
  br label %if.end.725

if.end.725:                                       ; preds = %if.then.713, %do.body.700
  %x726 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %step727 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x726, i32 0, i32 1
  %dQ728 = getelementptr inbounds %struct._e, %struct._e* %step727, i32 0, i32 0
  %368 = load i32, i32* %dQ728, align 4, !tbaa !154
  %x729 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state730 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x729, i32 0, i32 0
  %Q731 = getelementptr inbounds %struct._a, %struct._a* %state730, i32 0, i32 0
  %369 = load i32, i32* %Q731, align 4, !tbaa !137
  %add732 = add nsw i32 %369, %368
  store i32 %add732, i32* %Q731, align 4, !tbaa !137
  br label %do.cond.733

do.cond.733:                                      ; preds = %if.end.725
  br label %do.end.734

do.end.734:                                       ; preds = %do.cond.733
  br label %do.body.735

do.body.735:                                      ; preds = %do.end.734
  %y736 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %step737 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y736, i32 0, i32 1
  %dR738 = getelementptr inbounds %struct._e, %struct._e* %step737, i32 0, i32 1
  %370 = load i32, i32* %dR738, align 4, !tbaa !158
  %y739 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %state740 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y739, i32 0, i32 0
  %R741 = getelementptr inbounds %struct._a, %struct._a* %state740, i32 0, i32 1
  %371 = load i32, i32* %R741, align 4, !tbaa !159
  %sub742 = sub i32 %371, %370
  store i32 %sub742, i32* %R741, align 4, !tbaa !159
  %y743 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %state744 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y743, i32 0, i32 0
  %R745 = getelementptr inbounds %struct._a, %struct._a* %state744, i32 0, i32 1
  %372 = load i32, i32* %R745, align 4, !tbaa !159
  %cmp746 = icmp slt i32 %372, 0
  br i1 %cmp746, label %if.then.748, label %if.end.760

if.then.748:                                      ; preds = %do.body.735
  %y749 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %state750 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y749, i32 0, i32 0
  %Q751 = getelementptr inbounds %struct._a, %struct._a* %state750, i32 0, i32 0
  %373 = load i32, i32* %Q751, align 4, !tbaa !146
  %inc752 = add nsw i32 %373, 1
  store i32 %inc752, i32* %Q751, align 4, !tbaa !146
  %y753 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %step754 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y753, i32 0, i32 1
  %N755 = getelementptr inbounds %struct._e, %struct._e* %step754, i32 0, i32 2
  %374 = load i32, i32* %N755, align 4, !tbaa !160
  %y756 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %state757 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y756, i32 0, i32 0
  %R758 = getelementptr inbounds %struct._a, %struct._a* %state757, i32 0, i32 1
  %375 = load i32, i32* %R758, align 4, !tbaa !159
  %add759 = add i32 %375, %374
  store i32 %add759, i32* %R758, align 4, !tbaa !159
  br label %if.end.760

if.end.760:                                       ; preds = %if.then.748, %do.body.735
  %y761 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %step762 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y761, i32 0, i32 1
  %dQ763 = getelementptr inbounds %struct._e, %struct._e* %step762, i32 0, i32 0
  %376 = load i32, i32* %dQ763, align 4, !tbaa !161
  %y764 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %state765 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y764, i32 0, i32 0
  %Q766 = getelementptr inbounds %struct._a, %struct._a* %state765, i32 0, i32 0
  %377 = load i32, i32* %Q766, align 4, !tbaa !146
  %add767 = add nsw i32 %377, %376
  store i32 %add767, i32* %Q766, align 4, !tbaa !146
  br label %do.cond.768

do.cond.768:                                      ; preds = %if.end.760
  br label %do.end.769

do.end.769:                                       ; preds = %do.cond.768
  %378 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_pgram, align 8, !tbaa !1
  %379 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %380 = load i32, i32* %xrun, align 4, !tbaa !5
  %381 = load i32, i32* %yrun, align 4, !tbaa !5
  %x770 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state771 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x770, i32 0, i32 0
  %Q772 = getelementptr inbounds %struct._a, %struct._a* %state771, i32 0, i32 0
  %382 = load i32, i32* %Q772, align 4, !tbaa !137
  %383 = load i32, i32* %xrun, align 4, !tbaa !5
  %sub773 = sub nsw i32 %382, %383
  %y774 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %state775 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y774, i32 0, i32 0
  %Q776 = getelementptr inbounds %struct._a, %struct._a* %state775, i32 0, i32 0
  %384 = load i32, i32* %Q776, align 4, !tbaa !146
  %385 = load i32, i32* %yrun, align 4, !tbaa !5
  %sub777 = sub nsw i32 %384, %385
  %386 = load i32, i32* %pdyx, align 4, !tbaa !5
  %387 = load i32, i32* %pdyy, align 4, !tbaa !5
  %388 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %389 = load i32, i32* %lop, align 4, !tbaa !5
  %call778 = call i32 %378(%struct.gx_device_s* %379, i32 %380, i32 %381, i32 %sub773, i32 %sub777, i32 %386, i32 %387, %struct.gx_device_color_s* %388, i32 %389) #5
  store i32 %call778, i32* %code, align 4, !tbaa !5
  %390 = load i32, i32* %code, align 4, !tbaa !5
  %cmp779 = icmp slt i32 %390, 0
  br i1 %cmp779, label %if.then.781, label %if.end.782

if.then.781:                                      ; preds = %do.end.769
  store i32 32, i32* %cleanup.dest.slot
  br label %cleanup.1358

if.end.782:                                       ; preds = %do.end.769
  %391 = load i8*, i8** %psrc, align 8, !tbaa !1
  %incdec.ptr783 = getelementptr inbounds i8, i8* %391, i32 1
  store i8* %incdec.ptr783, i8** %psrc, align 8, !tbaa !1
  %392 = load i8*, i8** %psrc, align 8, !tbaa !1
  store i8* %392, i8** %rsrc, align 8, !tbaa !1
  %393 = load i8*, i8** %psrc, align 8, !tbaa !1
  %394 = load i8*, i8** %stop, align 8, !tbaa !1
  %cmp784 = icmp uge i8* %393, %394
  br i1 %cmp784, label %if.then.786, label %if.end.787

if.then.786:                                      ; preds = %if.end.782
  br label %do.end.790

if.end.787:                                       ; preds = %if.end.782
  br label %do.cond.788

do.cond.788:                                      ; preds = %if.end.787
  %395 = load i8*, i8** %psrc, align 8, !tbaa !1
  %396 = load i8, i8* %395, align 1, !tbaa !101
  %tobool789 = icmp ne i8 %396, 0
  br i1 %tobool789, label %do.body.693, label %do.end.790

do.end.790:                                       ; preds = %do.cond.788, %if.then.786
  br label %for.cond.607

for.end.791:                                      ; preds = %if.then.691
  br label %if.end.792

if.end.792:                                       ; preds = %for.end.791, %cleanup.cont.605
  br label %if.end.793

if.end.793:                                       ; preds = %if.end.792, %cleanup.cont
  br label %if.end.1161

if.else.794:                                      ; preds = %if.then.46
  %397 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %posture795 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %397, i32 0, i32 37
  %398 = load i32, i32* %posture795, align 4, !tbaa !47
  %cmp796 = icmp eq i32 %398, 0
  br i1 %cmp796, label %if.then.802, label %lor.lhs.false.798

lor.lhs.false.798:                                ; preds = %if.else.794
  %399 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %posture799 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %399, i32 0, i32 37
  %400 = load i32, i32* %posture799, align 4, !tbaa !47
  %cmp800 = icmp eq i32 %400, 1
  br i1 %cmp800, label %if.then.802, label %if.else.982

if.then.802:                                      ; preds = %lor.lhs.false.798, %if.else.794
  %401 = load i8*, i8** %stop, align 8, !tbaa !1
  %402 = load i8*, i8** %psrc, align 8, !tbaa !1
  %cmp803 = icmp ule i8* %401, %402
  br i1 %cmp803, label %if.then.805, label %if.end.806

if.then.805:                                      ; preds = %if.then.802
  br label %last.1162

if.end.806:                                       ; preds = %if.then.802
  br label %for.cond.807

for.cond.807:                                     ; preds = %if.end.980, %if.end.806
  %403 = load i8*, i8** %psrc, align 8, !tbaa !1
  %404 = load i8, i8* %403, align 1, !tbaa !101
  %conv808 = zext i8 %404 to i32
  %405 = load i8, i8* %run, align 1, !tbaa !101
  %conv809 = zext i8 %405 to i32
  %cmp810 = icmp ne i32 %conv808, %conv809
  br i1 %cmp810, label %if.then.812, label %if.end.905

if.then.812:                                      ; preds = %for.cond.807
  %406 = load i8, i8* %run, align 1, !tbaa !101
  %conv813 = zext i8 %406 to i32
  %407 = load i32, i32* %htrun, align 4, !tbaa !5
  %cmp814 = icmp ne i32 %conv813, %407
  br i1 %cmp814, label %if.then.816, label %if.end.881

if.then.816:                                      ; preds = %if.then.812
  %408 = load i8, i8* %run, align 1, !tbaa !101
  %conv817 = zext i8 %408 to i32
  store i32 %conv817, i32* %htrun, align 4, !tbaa !5
  br label %do.body.818

do.body.818:                                      ; preds = %if.then.816
  %409 = load i8, i8* %run, align 1, !tbaa !101
  %idxprom = zext i8 %409 to i64
  %410 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %clues = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %410, i32 0, i32 65
  %411 = load %struct.gx_image_clue_s*, %struct.gx_image_clue_s** %clues, align 8, !tbaa !162
  %arrayidx819 = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %411, i64 %idxprom
  %dev_color = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %arrayidx819, i32 0, i32 0
  store %struct.gx_device_color_s* %dev_color, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %412 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %type820 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %412, i32 0, i32 0
  %413 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type820, align 8, !tbaa !93
  %cmp821 = icmp ne %struct.gx_device_color_type_s* %413, @gx_dc_type_data_none
  br i1 %cmp821, label %if.else.865, label %if.then.823

if.then.823:                                      ; preds = %do.body.818
  %414 = load i8, i8* %run, align 1, !tbaa !101
  %conv824 = zext i8 %414 to i32
  %415 = load i32, i32* %mask_base, align 4, !tbaa !5
  %sub825 = sub i32 %conv824, %415
  %416 = load i32, i32* %mask_limit, align 4, !tbaa !5
  %cmp826 = icmp ult i32 %sub825, %416
  br i1 %cmp826, label %if.then.828, label %if.else.830

if.then.828:                                      ; preds = %if.then.823
  %417 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %type829 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %417, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_null, %struct.gx_device_color_type_s** %type829, align 8, !tbaa !93
  br label %if.end.864

if.else.830:                                      ; preds = %if.then.823
  %418 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %418, i32 0, i32 64
  %arrayidx831 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map, i32 0, i64 0
  %decoding = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx831, i32 0, i32 3
  %419 = load i32, i32* %decoding, align 4, !tbaa !50
  switch i32 %419, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.836
    i32 2, label %sw.bb.845
  ]

sw.bb:                                            ; preds = %if.else.830
  %420 = load i8, i8* %run, align 1, !tbaa !101
  %conv832 = zext i8 %420 to i32
  %conv833 = sitofp i32 %conv832 to float
  %mul = fmul float %conv833, 0x3F70101020000000
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values834 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx835 = getelementptr inbounds [64 x float], [64 x float]* %values834, i32 0, i64 0
  store float %mul, float* %arrayidx835, align 4, !tbaa !53
  br label %sw.epilog

sw.bb.836:                                        ; preds = %if.else.830
  %421 = load i8, i8* %run, align 1, !tbaa !101
  %conv837 = zext i8 %421 to i32
  %shr = ashr i32 %conv837, 4
  %idxprom838 = sext i32 %shr to i64
  %422 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map839 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %422, i32 0, i32 64
  %arrayidx840 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map839, i32 0, i64 0
  %decode_lookup = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx840, i32 0, i32 1
  %arrayidx841 = getelementptr inbounds [16 x float], [16 x float]* %decode_lookup, i32 0, i64 %idxprom838
  %423 = load float, float* %arrayidx841, align 4, !tbaa !53
  %paint842 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values843 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint842, i32 0, i32 0
  %arrayidx844 = getelementptr inbounds [64 x float], [64 x float]* %values843, i32 0, i64 0
  store float %423, float* %arrayidx844, align 4, !tbaa !53
  br label %sw.epilog

sw.bb.845:                                        ; preds = %if.else.830
  %424 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map846 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %424, i32 0, i32 64
  %arrayidx847 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map846, i32 0, i64 0
  %decode_lookup848 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx847, i32 0, i32 1
  %arrayidx849 = getelementptr inbounds [16 x float], [16 x float]* %decode_lookup848, i32 0, i64 0
  %425 = load float, float* %arrayidx849, align 4, !tbaa !53
  %426 = load i8, i8* %run, align 1, !tbaa !101
  %conv850 = zext i8 %426 to i32
  %conv851 = sitofp i32 %conv850 to float
  %427 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map852 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %427, i32 0, i32 64
  %arrayidx853 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map852, i32 0, i64 0
  %decode_factor = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx853, i32 0, i32 2
  %428 = load float, float* %decode_factor, align 4, !tbaa !52
  %mul854 = fmul float %conv851, %428
  %add855 = fadd float %425, %mul854
  %paint856 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values857 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint856, i32 0, i32 0
  %arrayidx858 = getelementptr inbounds [64 x float], [64 x float]* %values857, i32 0, i64 0
  store float %add855, float* %arrayidx858, align 4, !tbaa !53
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.845, %if.else.830, %sw.bb.836, %sw.bb
  %429 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_color, align 8, !tbaa !1
  %430 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %431 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %432 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %433 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call859 = call i32 %429(%struct.gs_client_color_s* %cc, %struct.gs_color_space_s* %430, %struct.gx_device_color_s* %431, %struct.gs_imager_state_s* %432, %struct.gx_device_s* %433, i32 1) #5
  store i32 %call859, i32* %code, align 4, !tbaa !5
  %434 = load i32, i32* %code, align 4, !tbaa !5
  %cmp860 = icmp slt i32 %434, 0
  br i1 %cmp860, label %if.then.862, label %if.end.863

if.then.862:                                      ; preds = %sw.epilog
  store i32 32, i32* %cleanup.dest.slot
  br label %cleanup.1358

if.end.863:                                       ; preds = %sw.epilog
  br label %if.end.864

if.end.864:                                       ; preds = %if.end.863, %if.then.828
  br label %if.end.878

if.else.865:                                      ; preds = %do.body.818
  %435 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %type866 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %435, i32 0, i32 0
  %436 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type866, align 8, !tbaa !93
  %cmp867 = icmp eq %struct.gx_device_color_type_s* %436, @gx_dc_type_data_pure
  br i1 %cmp867, label %if.end.877, label %if.then.869

if.then.869:                                      ; preds = %if.else.865
  %437 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %type870 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %437, i32 0, i32 0
  %438 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type870, align 8, !tbaa !93
  %load871 = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %438, i32 0, i32 4
  %439 = load i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %load871, align 8, !tbaa !147
  %440 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %441 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %442 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call872 = call i32 %439(%struct.gx_device_color_s* %440, %struct.gs_imager_state_s* %441, %struct.gx_device_s* %442, i32 1) #5
  store i32 %call872, i32* %code, align 4, !tbaa !5
  %443 = load i32, i32* %code, align 4, !tbaa !5
  %cmp873 = icmp slt i32 %443, 0
  br i1 %cmp873, label %if.then.875, label %if.end.876

if.then.875:                                      ; preds = %if.then.869
  store i32 32, i32* %cleanup.dest.slot
  br label %cleanup.1358

if.end.876:                                       ; preds = %if.then.869
  br label %if.end.877

if.end.877:                                       ; preds = %if.end.876, %if.else.865
  br label %if.end.878

if.end.878:                                       ; preds = %if.end.877, %if.end.864
  br label %do.cond.879

do.cond.879:                                      ; preds = %if.end.878
  br label %do.end.880

do.end.880:                                       ; preds = %do.cond.879
  br label %if.end.881

if.end.881:                                       ; preds = %do.end.880, %if.then.812
  %444 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_pgram, align 8, !tbaa !1
  %445 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %446 = load i32, i32* %xrun, align 4, !tbaa !5
  %447 = load i32, i32* %yrun, align 4, !tbaa !5
  %x882 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state883 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x882, i32 0, i32 0
  %Q884 = getelementptr inbounds %struct._a, %struct._a* %state883, i32 0, i32 0
  %448 = load i32, i32* %Q884, align 4, !tbaa !137
  %449 = load i32, i32* %xrun, align 4, !tbaa !5
  %sub885 = sub nsw i32 %448, %449
  %y886 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %state887 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y886, i32 0, i32 0
  %Q888 = getelementptr inbounds %struct._a, %struct._a* %state887, i32 0, i32 0
  %450 = load i32, i32* %Q888, align 4, !tbaa !146
  %451 = load i32, i32* %yrun, align 4, !tbaa !5
  %sub889 = sub nsw i32 %450, %451
  %452 = load i32, i32* %pdyx, align 4, !tbaa !5
  %453 = load i32, i32* %pdyy, align 4, !tbaa !5
  %454 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %455 = load i32, i32* %lop, align 4, !tbaa !5
  %call890 = call i32 %444(%struct.gx_device_s* %445, i32 %446, i32 %447, i32 %sub885, i32 %sub889, i32 %452, i32 %453, %struct.gx_device_color_s* %454, i32 %455) #5
  store i32 %call890, i32* %code, align 4, !tbaa !5
  %456 = load i32, i32* %code, align 4, !tbaa !5
  %cmp891 = icmp slt i32 %456, 0
  br i1 %cmp891, label %if.then.893, label %if.end.894

if.then.893:                                      ; preds = %if.end.881
  store i32 32, i32* %cleanup.dest.slot
  br label %cleanup.1358

if.end.894:                                       ; preds = %if.end.881
  %y895 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %state896 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y895, i32 0, i32 0
  %Q897 = getelementptr inbounds %struct._a, %struct._a* %state896, i32 0, i32 0
  %457 = load i32, i32* %Q897, align 4, !tbaa !146
  store i32 %457, i32* %yrun, align 4, !tbaa !5
  %x898 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state899 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x898, i32 0, i32 0
  %Q900 = getelementptr inbounds %struct._a, %struct._a* %state899, i32 0, i32 0
  %458 = load i32, i32* %Q900, align 4, !tbaa !137
  store i32 %458, i32* %xrun, align 4, !tbaa !5
  %459 = load i8*, i8** %psrc, align 8, !tbaa !1
  store i8* %459, i8** %rsrc, align 8, !tbaa !1
  %460 = load i8*, i8** %psrc, align 8, !tbaa !1
  %461 = load i8*, i8** %stop, align 8, !tbaa !1
  %cmp901 = icmp uge i8* %460, %461
  br i1 %cmp901, label %if.then.903, label %if.end.904

if.then.903:                                      ; preds = %if.end.894
  br label %for.end.981

if.end.904:                                       ; preds = %if.end.894
  %462 = load i8*, i8** %psrc, align 8, !tbaa !1
  %463 = load i8, i8* %462, align 1, !tbaa !101
  store i8 %463, i8* %run, align 1, !tbaa !101
  br label %if.end.905

if.end.905:                                       ; preds = %if.end.904, %for.cond.807
  %464 = load i8*, i8** %psrc, align 8, !tbaa !1
  %incdec.ptr906 = getelementptr inbounds i8, i8* %464, i32 1
  store i8* %incdec.ptr906, i8** %psrc, align 8, !tbaa !1
  br label %do.body.907

do.body.907:                                      ; preds = %if.end.905
  %x908 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %step909 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x908, i32 0, i32 1
  %dR910 = getelementptr inbounds %struct._e, %struct._e* %step909, i32 0, i32 1
  %465 = load i32, i32* %dR910, align 4, !tbaa !150
  %x911 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state912 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x911, i32 0, i32 0
  %R913 = getelementptr inbounds %struct._a, %struct._a* %state912, i32 0, i32 1
  %466 = load i32, i32* %R913, align 4, !tbaa !155
  %sub914 = sub i32 %466, %465
  store i32 %sub914, i32* %R913, align 4, !tbaa !155
  %x915 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state916 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x915, i32 0, i32 0
  %R917 = getelementptr inbounds %struct._a, %struct._a* %state916, i32 0, i32 1
  %467 = load i32, i32* %R917, align 4, !tbaa !155
  %cmp918 = icmp slt i32 %467, 0
  br i1 %cmp918, label %if.then.920, label %if.end.932

if.then.920:                                      ; preds = %do.body.907
  %x921 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state922 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x921, i32 0, i32 0
  %Q923 = getelementptr inbounds %struct._a, %struct._a* %state922, i32 0, i32 0
  %468 = load i32, i32* %Q923, align 4, !tbaa !137
  %inc924 = add nsw i32 %468, 1
  store i32 %inc924, i32* %Q923, align 4, !tbaa !137
  %x925 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %step926 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x925, i32 0, i32 1
  %N927 = getelementptr inbounds %struct._e, %struct._e* %step926, i32 0, i32 2
  %469 = load i32, i32* %N927, align 4, !tbaa !156
  %x928 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state929 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x928, i32 0, i32 0
  %R930 = getelementptr inbounds %struct._a, %struct._a* %state929, i32 0, i32 1
  %470 = load i32, i32* %R930, align 4, !tbaa !155
  %add931 = add i32 %470, %469
  store i32 %add931, i32* %R930, align 4, !tbaa !155
  br label %if.end.932

if.end.932:                                       ; preds = %if.then.920, %do.body.907
  %x933 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %step934 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x933, i32 0, i32 1
  %dQ935 = getelementptr inbounds %struct._e, %struct._e* %step934, i32 0, i32 0
  %471 = load i32, i32* %dQ935, align 4, !tbaa !154
  %x936 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state937 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x936, i32 0, i32 0
  %Q938 = getelementptr inbounds %struct._a, %struct._a* %state937, i32 0, i32 0
  %472 = load i32, i32* %Q938, align 4, !tbaa !137
  %add939 = add nsw i32 %472, %471
  store i32 %add939, i32* %Q938, align 4, !tbaa !137
  br label %do.cond.940

do.cond.940:                                      ; preds = %if.end.932
  br label %do.end.941

do.end.941:                                       ; preds = %do.cond.940
  br label %do.body.942

do.body.942:                                      ; preds = %do.end.941
  %y943 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %step944 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y943, i32 0, i32 1
  %dR945 = getelementptr inbounds %struct._e, %struct._e* %step944, i32 0, i32 1
  %473 = load i32, i32* %dR945, align 4, !tbaa !158
  %y946 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %state947 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y946, i32 0, i32 0
  %R948 = getelementptr inbounds %struct._a, %struct._a* %state947, i32 0, i32 1
  %474 = load i32, i32* %R948, align 4, !tbaa !159
  %sub949 = sub i32 %474, %473
  store i32 %sub949, i32* %R948, align 4, !tbaa !159
  %y950 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %state951 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y950, i32 0, i32 0
  %R952 = getelementptr inbounds %struct._a, %struct._a* %state951, i32 0, i32 1
  %475 = load i32, i32* %R952, align 4, !tbaa !159
  %cmp953 = icmp slt i32 %475, 0
  br i1 %cmp953, label %if.then.955, label %if.end.967

if.then.955:                                      ; preds = %do.body.942
  %y956 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %state957 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y956, i32 0, i32 0
  %Q958 = getelementptr inbounds %struct._a, %struct._a* %state957, i32 0, i32 0
  %476 = load i32, i32* %Q958, align 4, !tbaa !146
  %inc959 = add nsw i32 %476, 1
  store i32 %inc959, i32* %Q958, align 4, !tbaa !146
  %y960 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %step961 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y960, i32 0, i32 1
  %N962 = getelementptr inbounds %struct._e, %struct._e* %step961, i32 0, i32 2
  %477 = load i32, i32* %N962, align 4, !tbaa !160
  %y963 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %state964 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y963, i32 0, i32 0
  %R965 = getelementptr inbounds %struct._a, %struct._a* %state964, i32 0, i32 1
  %478 = load i32, i32* %R965, align 4, !tbaa !159
  %add966 = add i32 %478, %477
  store i32 %add966, i32* %R965, align 4, !tbaa !159
  br label %if.end.967

if.end.967:                                       ; preds = %if.then.955, %do.body.942
  %y968 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %step969 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y968, i32 0, i32 1
  %dQ970 = getelementptr inbounds %struct._e, %struct._e* %step969, i32 0, i32 0
  %479 = load i32, i32* %dQ970, align 4, !tbaa !161
  %y971 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %state972 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y971, i32 0, i32 0
  %Q973 = getelementptr inbounds %struct._a, %struct._a* %state972, i32 0, i32 0
  %480 = load i32, i32* %Q973, align 4, !tbaa !146
  %add974 = add nsw i32 %480, %479
  store i32 %add974, i32* %Q973, align 4, !tbaa !146
  br label %do.cond.975

do.cond.975:                                      ; preds = %if.end.967
  br label %do.end.976

do.end.976:                                       ; preds = %do.cond.975
  %481 = load i8*, i8** %psrc, align 8, !tbaa !1
  %482 = load i8*, i8** %endp, align 8, !tbaa !1
  %cmp977 = icmp uge i8* %481, %482
  br i1 %cmp977, label %if.then.979, label %if.end.980

if.then.979:                                      ; preds = %do.end.976
  br label %for.end.981

if.end.980:                                       ; preds = %do.end.976
  br label %for.cond.807

for.end.981:                                      ; preds = %if.then.979, %if.then.903
  br label %if.end.1160

if.else.982:                                      ; preds = %lor.lhs.false.798
  %483 = load i8*, i8** %endp, align 8, !tbaa !1
  store i8* %483, i8** %stop, align 8, !tbaa !1
  br label %for.cond.983

for.cond.983:                                     ; preds = %do.end.1158, %if.else.982
  %484 = load i8, i8* %run, align 1, !tbaa !101
  %conv984 = zext i8 %484 to i32
  %485 = load i32, i32* %htrun, align 4, !tbaa !5
  %cmp985 = icmp ne i32 %conv984, %485
  br i1 %cmp985, label %if.then.987, label %if.end.1064

if.then.987:                                      ; preds = %for.cond.983
  %486 = load i8, i8* %run, align 1, !tbaa !101
  %conv988 = zext i8 %486 to i32
  store i32 %conv988, i32* %htrun, align 4, !tbaa !5
  br label %do.body.989

do.body.989:                                      ; preds = %if.then.987
  %487 = load i8, i8* %run, align 1, !tbaa !101
  %idxprom990 = zext i8 %487 to i64
  %488 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %clues991 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %488, i32 0, i32 65
  %489 = load %struct.gx_image_clue_s*, %struct.gx_image_clue_s** %clues991, align 8, !tbaa !162
  %arrayidx992 = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %489, i64 %idxprom990
  %dev_color993 = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %arrayidx992, i32 0, i32 0
  store %struct.gx_device_color_s* %dev_color993, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %490 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %type994 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %490, i32 0, i32 0
  %491 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type994, align 8, !tbaa !93
  %cmp995 = icmp ne %struct.gx_device_color_type_s* %491, @gx_dc_type_data_none
  br i1 %cmp995, label %if.else.1048, label %if.then.997

if.then.997:                                      ; preds = %do.body.989
  %492 = load i8, i8* %run, align 1, !tbaa !101
  %conv998 = zext i8 %492 to i32
  %493 = load i32, i32* %mask_base, align 4, !tbaa !5
  %sub999 = sub i32 %conv998, %493
  %494 = load i32, i32* %mask_limit, align 4, !tbaa !5
  %cmp1000 = icmp ult i32 %sub999, %494
  br i1 %cmp1000, label %if.then.1002, label %if.else.1004

if.then.1002:                                     ; preds = %if.then.997
  %495 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %type1003 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %495, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_null, %struct.gx_device_color_type_s** %type1003, align 8, !tbaa !93
  br label %if.end.1047

if.else.1004:                                     ; preds = %if.then.997
  %496 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map1005 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %496, i32 0, i32 64
  %arrayidx1006 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map1005, i32 0, i64 0
  %decoding1007 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx1006, i32 0, i32 3
  %497 = load i32, i32* %decoding1007, align 4, !tbaa !50
  switch i32 %497, label %sw.epilog.1041 [
    i32 0, label %sw.bb.1008
    i32 1, label %sw.bb.1015
    i32 2, label %sw.bb.1026
  ]

sw.bb.1008:                                       ; preds = %if.else.1004
  %498 = load i8, i8* %run, align 1, !tbaa !101
  %conv1009 = zext i8 %498 to i32
  %conv1010 = sitofp i32 %conv1009 to float
  %mul1011 = fmul float %conv1010, 0x3F70101020000000
  %paint1012 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values1013 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint1012, i32 0, i32 0
  %arrayidx1014 = getelementptr inbounds [64 x float], [64 x float]* %values1013, i32 0, i64 0
  store float %mul1011, float* %arrayidx1014, align 4, !tbaa !53
  br label %sw.epilog.1041

sw.bb.1015:                                       ; preds = %if.else.1004
  %499 = load i8, i8* %run, align 1, !tbaa !101
  %conv1016 = zext i8 %499 to i32
  %shr1017 = ashr i32 %conv1016, 4
  %idxprom1018 = sext i32 %shr1017 to i64
  %500 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map1019 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %500, i32 0, i32 64
  %arrayidx1020 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map1019, i32 0, i64 0
  %decode_lookup1021 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx1020, i32 0, i32 1
  %arrayidx1022 = getelementptr inbounds [16 x float], [16 x float]* %decode_lookup1021, i32 0, i64 %idxprom1018
  %501 = load float, float* %arrayidx1022, align 4, !tbaa !53
  %paint1023 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values1024 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint1023, i32 0, i32 0
  %arrayidx1025 = getelementptr inbounds [64 x float], [64 x float]* %values1024, i32 0, i64 0
  store float %501, float* %arrayidx1025, align 4, !tbaa !53
  br label %sw.epilog.1041

sw.bb.1026:                                       ; preds = %if.else.1004
  %502 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map1027 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %502, i32 0, i32 64
  %arrayidx1028 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map1027, i32 0, i64 0
  %decode_lookup1029 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx1028, i32 0, i32 1
  %arrayidx1030 = getelementptr inbounds [16 x float], [16 x float]* %decode_lookup1029, i32 0, i64 0
  %503 = load float, float* %arrayidx1030, align 4, !tbaa !53
  %504 = load i8, i8* %run, align 1, !tbaa !101
  %conv1031 = zext i8 %504 to i32
  %conv1032 = sitofp i32 %conv1031 to float
  %505 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map1033 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %505, i32 0, i32 64
  %arrayidx1034 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map1033, i32 0, i64 0
  %decode_factor1035 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx1034, i32 0, i32 2
  %506 = load float, float* %decode_factor1035, align 4, !tbaa !52
  %mul1036 = fmul float %conv1032, %506
  %add1037 = fadd float %503, %mul1036
  %paint1038 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values1039 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint1038, i32 0, i32 0
  %arrayidx1040 = getelementptr inbounds [64 x float], [64 x float]* %values1039, i32 0, i64 0
  store float %add1037, float* %arrayidx1040, align 4, !tbaa !53
  br label %sw.epilog.1041

sw.epilog.1041:                                   ; preds = %sw.bb.1026, %if.else.1004, %sw.bb.1015, %sw.bb.1008
  %507 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_color, align 8, !tbaa !1
  %508 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %509 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %510 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %511 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call1042 = call i32 %507(%struct.gs_client_color_s* %cc, %struct.gs_color_space_s* %508, %struct.gx_device_color_s* %509, %struct.gs_imager_state_s* %510, %struct.gx_device_s* %511, i32 1) #5
  store i32 %call1042, i32* %code, align 4, !tbaa !5
  %512 = load i32, i32* %code, align 4, !tbaa !5
  %cmp1043 = icmp slt i32 %512, 0
  br i1 %cmp1043, label %if.then.1045, label %if.end.1046

if.then.1045:                                     ; preds = %sw.epilog.1041
  store i32 32, i32* %cleanup.dest.slot
  br label %cleanup.1358

if.end.1046:                                      ; preds = %sw.epilog.1041
  br label %if.end.1047

if.end.1047:                                      ; preds = %if.end.1046, %if.then.1002
  br label %if.end.1061

if.else.1048:                                     ; preds = %do.body.989
  %513 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %type1049 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %513, i32 0, i32 0
  %514 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type1049, align 8, !tbaa !93
  %cmp1050 = icmp eq %struct.gx_device_color_type_s* %514, @gx_dc_type_data_pure
  br i1 %cmp1050, label %if.end.1060, label %if.then.1052

if.then.1052:                                     ; preds = %if.else.1048
  %515 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %type1053 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %515, i32 0, i32 0
  %516 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type1053, align 8, !tbaa !93
  %load1054 = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %516, i32 0, i32 4
  %517 = load i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %load1054, align 8, !tbaa !147
  %518 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %519 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %520 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call1055 = call i32 %517(%struct.gx_device_color_s* %518, %struct.gs_imager_state_s* %519, %struct.gx_device_s* %520, i32 1) #5
  store i32 %call1055, i32* %code, align 4, !tbaa !5
  %521 = load i32, i32* %code, align 4, !tbaa !5
  %cmp1056 = icmp slt i32 %521, 0
  br i1 %cmp1056, label %if.then.1058, label %if.end.1059

if.then.1058:                                     ; preds = %if.then.1052
  store i32 32, i32* %cleanup.dest.slot
  br label %cleanup.1358

if.end.1059:                                      ; preds = %if.then.1052
  br label %if.end.1060

if.end.1060:                                      ; preds = %if.end.1059, %if.else.1048
  br label %if.end.1061

if.end.1061:                                      ; preds = %if.end.1060, %if.end.1047
  br label %do.cond.1062

do.cond.1062:                                     ; preds = %if.end.1061
  br label %do.end.1063

do.end.1063:                                      ; preds = %do.cond.1062
  br label %if.end.1064

if.end.1064:                                      ; preds = %do.end.1063, %for.cond.983
  %522 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_pgram, align 8, !tbaa !1
  %523 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %524 = load i32, i32* %xrun, align 4, !tbaa !5
  %525 = load i32, i32* %yrun, align 4, !tbaa !5
  %x1065 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state1066 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1065, i32 0, i32 0
  %Q1067 = getelementptr inbounds %struct._a, %struct._a* %state1066, i32 0, i32 0
  %526 = load i32, i32* %Q1067, align 4, !tbaa !137
  %527 = load i32, i32* %xrun, align 4, !tbaa !5
  %sub1068 = sub nsw i32 %526, %527
  %y1069 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %state1070 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y1069, i32 0, i32 0
  %Q1071 = getelementptr inbounds %struct._a, %struct._a* %state1070, i32 0, i32 0
  %528 = load i32, i32* %Q1071, align 4, !tbaa !146
  %529 = load i32, i32* %yrun, align 4, !tbaa !5
  %sub1072 = sub nsw i32 %528, %529
  %530 = load i32, i32* %pdyx, align 4, !tbaa !5
  %531 = load i32, i32* %pdyy, align 4, !tbaa !5
  %532 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %533 = load i32, i32* %lop, align 4, !tbaa !5
  %call1073 = call i32 %522(%struct.gx_device_s* %523, i32 %524, i32 %525, i32 %sub1068, i32 %sub1072, i32 %530, i32 %531, %struct.gx_device_color_s* %532, i32 %533) #5
  store i32 %call1073, i32* %code, align 4, !tbaa !5
  %534 = load i32, i32* %code, align 4, !tbaa !5
  %cmp1074 = icmp slt i32 %534, 0
  br i1 %cmp1074, label %if.then.1076, label %if.end.1077

if.then.1076:                                     ; preds = %if.end.1064
  store i32 32, i32* %cleanup.dest.slot
  br label %cleanup.1358

if.end.1077:                                      ; preds = %if.end.1064
  %y1078 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %state1079 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y1078, i32 0, i32 0
  %Q1080 = getelementptr inbounds %struct._a, %struct._a* %state1079, i32 0, i32 0
  %535 = load i32, i32* %Q1080, align 4, !tbaa !146
  store i32 %535, i32* %yrun, align 4, !tbaa !5
  %x1081 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state1082 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1081, i32 0, i32 0
  %Q1083 = getelementptr inbounds %struct._a, %struct._a* %state1082, i32 0, i32 0
  %536 = load i32, i32* %Q1083, align 4, !tbaa !137
  store i32 %536, i32* %xrun, align 4, !tbaa !5
  %537 = load i8*, i8** %psrc, align 8, !tbaa !1
  store i8* %537, i8** %rsrc, align 8, !tbaa !1
  %538 = load i8*, i8** %psrc, align 8, !tbaa !1
  %539 = load i8*, i8** %stop, align 8, !tbaa !1
  %cmp1084 = icmp uge i8* %538, %539
  br i1 %cmp1084, label %if.then.1086, label %if.end.1087

if.then.1086:                                     ; preds = %if.end.1077
  br label %for.end.1159

if.end.1087:                                      ; preds = %if.end.1077
  %540 = load i8*, i8** %psrc, align 8, !tbaa !1
  %incdec.ptr1088 = getelementptr inbounds i8, i8* %540, i32 1
  store i8* %incdec.ptr1088, i8** %psrc, align 8, !tbaa !1
  %541 = load i8, i8* %540, align 1, !tbaa !101
  store i8 %541, i8* %run, align 1, !tbaa !101
  br label %do.body.1089

do.body.1089:                                     ; preds = %if.end.1087
  %x1090 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %step1091 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1090, i32 0, i32 1
  %dR1092 = getelementptr inbounds %struct._e, %struct._e* %step1091, i32 0, i32 1
  %542 = load i32, i32* %dR1092, align 4, !tbaa !150
  %x1093 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state1094 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1093, i32 0, i32 0
  %R1095 = getelementptr inbounds %struct._a, %struct._a* %state1094, i32 0, i32 1
  %543 = load i32, i32* %R1095, align 4, !tbaa !155
  %sub1096 = sub i32 %543, %542
  store i32 %sub1096, i32* %R1095, align 4, !tbaa !155
  %x1097 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state1098 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1097, i32 0, i32 0
  %R1099 = getelementptr inbounds %struct._a, %struct._a* %state1098, i32 0, i32 1
  %544 = load i32, i32* %R1099, align 4, !tbaa !155
  %cmp1100 = icmp slt i32 %544, 0
  br i1 %cmp1100, label %if.then.1102, label %if.end.1114

if.then.1102:                                     ; preds = %do.body.1089
  %x1103 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state1104 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1103, i32 0, i32 0
  %Q1105 = getelementptr inbounds %struct._a, %struct._a* %state1104, i32 0, i32 0
  %545 = load i32, i32* %Q1105, align 4, !tbaa !137
  %inc1106 = add nsw i32 %545, 1
  store i32 %inc1106, i32* %Q1105, align 4, !tbaa !137
  %x1107 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %step1108 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1107, i32 0, i32 1
  %N1109 = getelementptr inbounds %struct._e, %struct._e* %step1108, i32 0, i32 2
  %546 = load i32, i32* %N1109, align 4, !tbaa !156
  %x1110 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state1111 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1110, i32 0, i32 0
  %R1112 = getelementptr inbounds %struct._a, %struct._a* %state1111, i32 0, i32 1
  %547 = load i32, i32* %R1112, align 4, !tbaa !155
  %add1113 = add i32 %547, %546
  store i32 %add1113, i32* %R1112, align 4, !tbaa !155
  br label %if.end.1114

if.end.1114:                                      ; preds = %if.then.1102, %do.body.1089
  %x1115 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %step1116 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1115, i32 0, i32 1
  %dQ1117 = getelementptr inbounds %struct._e, %struct._e* %step1116, i32 0, i32 0
  %548 = load i32, i32* %dQ1117, align 4, !tbaa !154
  %x1118 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state1119 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1118, i32 0, i32 0
  %Q1120 = getelementptr inbounds %struct._a, %struct._a* %state1119, i32 0, i32 0
  %549 = load i32, i32* %Q1120, align 4, !tbaa !137
  %add1121 = add nsw i32 %549, %548
  store i32 %add1121, i32* %Q1120, align 4, !tbaa !137
  br label %do.cond.1122

do.cond.1122:                                     ; preds = %if.end.1114
  br label %do.end.1123

do.end.1123:                                      ; preds = %do.cond.1122
  br label %do.body.1124

do.body.1124:                                     ; preds = %do.end.1123
  %y1125 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %step1126 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y1125, i32 0, i32 1
  %dR1127 = getelementptr inbounds %struct._e, %struct._e* %step1126, i32 0, i32 1
  %550 = load i32, i32* %dR1127, align 4, !tbaa !158
  %y1128 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %state1129 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y1128, i32 0, i32 0
  %R1130 = getelementptr inbounds %struct._a, %struct._a* %state1129, i32 0, i32 1
  %551 = load i32, i32* %R1130, align 4, !tbaa !159
  %sub1131 = sub i32 %551, %550
  store i32 %sub1131, i32* %R1130, align 4, !tbaa !159
  %y1132 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %state1133 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y1132, i32 0, i32 0
  %R1134 = getelementptr inbounds %struct._a, %struct._a* %state1133, i32 0, i32 1
  %552 = load i32, i32* %R1134, align 4, !tbaa !159
  %cmp1135 = icmp slt i32 %552, 0
  br i1 %cmp1135, label %if.then.1137, label %if.end.1149

if.then.1137:                                     ; preds = %do.body.1124
  %y1138 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %state1139 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y1138, i32 0, i32 0
  %Q1140 = getelementptr inbounds %struct._a, %struct._a* %state1139, i32 0, i32 0
  %553 = load i32, i32* %Q1140, align 4, !tbaa !146
  %inc1141 = add nsw i32 %553, 1
  store i32 %inc1141, i32* %Q1140, align 4, !tbaa !146
  %y1142 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %step1143 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y1142, i32 0, i32 1
  %N1144 = getelementptr inbounds %struct._e, %struct._e* %step1143, i32 0, i32 2
  %554 = load i32, i32* %N1144, align 4, !tbaa !160
  %y1145 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %state1146 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y1145, i32 0, i32 0
  %R1147 = getelementptr inbounds %struct._a, %struct._a* %state1146, i32 0, i32 1
  %555 = load i32, i32* %R1147, align 4, !tbaa !159
  %add1148 = add i32 %555, %554
  store i32 %add1148, i32* %R1147, align 4, !tbaa !159
  br label %if.end.1149

if.end.1149:                                      ; preds = %if.then.1137, %do.body.1124
  %y1150 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %step1151 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y1150, i32 0, i32 1
  %dQ1152 = getelementptr inbounds %struct._e, %struct._e* %step1151, i32 0, i32 0
  %556 = load i32, i32* %dQ1152, align 4, !tbaa !161
  %y1153 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %state1154 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y1153, i32 0, i32 0
  %Q1155 = getelementptr inbounds %struct._a, %struct._a* %state1154, i32 0, i32 0
  %557 = load i32, i32* %Q1155, align 4, !tbaa !146
  %add1156 = add nsw i32 %557, %556
  store i32 %add1156, i32* %Q1155, align 4, !tbaa !146
  br label %do.cond.1157

do.cond.1157:                                     ; preds = %if.end.1149
  br label %do.end.1158

do.end.1158:                                      ; preds = %do.cond.1157
  br label %for.cond.983

for.end.1159:                                     ; preds = %if.then.1086
  br label %if.end.1160

if.end.1160:                                      ; preds = %for.end.1159, %for.end.981
  br label %if.end.1161

if.end.1161:                                      ; preds = %if.end.1160, %if.end.793
  br label %last.1162

last.1162:                                        ; preds = %if.end.1161, %if.then.805, %if.then.84
  %558 = load i8*, i8** %stop, align 8, !tbaa !1
  %559 = load i8*, i8** %endp, align 8, !tbaa !1
  %cmp1163 = icmp ult i8* %558, %559
  br i1 %cmp1163, label %land.lhs.true.1165, label %if.end.1357

land.lhs.true.1165:                               ; preds = %last.1162
  %560 = load i8*, i8** %stop, align 8, !tbaa !1
  %561 = load i8, i8* %560, align 1, !tbaa !101
  %conv1166 = zext i8 %561 to i32
  %tobool1167 = icmp ne i32 %conv1166, 0
  br i1 %tobool1167, label %if.then.1170, label %lor.lhs.false.1168

lor.lhs.false.1168:                               ; preds = %land.lhs.true.1165
  %562 = load i32, i32* %masked, align 4, !tbaa !5
  %tobool1169 = icmp ne i32 %562, 0
  br i1 %tobool1169, label %if.end.1357, label %if.then.1170

if.then.1170:                                     ; preds = %lor.lhs.false.1168, %land.lhs.true.1165
  %563 = load i32, i32* %masked, align 4, !tbaa !5
  %tobool1171 = icmp ne i32 %563, 0
  br i1 %tobool1171, label %if.end.1248, label %if.then.1172

if.then.1172:                                     ; preds = %if.then.1170
  br label %do.body.1173

do.body.1173:                                     ; preds = %if.then.1172
  %564 = load i8*, i8** %stop, align 8, !tbaa !1
  %565 = load i8, i8* %564, align 1, !tbaa !101
  %idxprom1174 = zext i8 %565 to i64
  %566 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %clues1175 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %566, i32 0, i32 65
  %567 = load %struct.gx_image_clue_s*, %struct.gx_image_clue_s** %clues1175, align 8, !tbaa !162
  %arrayidx1176 = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %567, i64 %idxprom1174
  %dev_color1177 = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %arrayidx1176, i32 0, i32 0
  store %struct.gx_device_color_s* %dev_color1177, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %568 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %type1178 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %568, i32 0, i32 0
  %569 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type1178, align 8, !tbaa !93
  %cmp1179 = icmp ne %struct.gx_device_color_type_s* %569, @gx_dc_type_data_none
  br i1 %cmp1179, label %if.else.1232, label %if.then.1181

if.then.1181:                                     ; preds = %do.body.1173
  %570 = load i8*, i8** %stop, align 8, !tbaa !1
  %571 = load i8, i8* %570, align 1, !tbaa !101
  %conv1182 = zext i8 %571 to i32
  %572 = load i32, i32* %mask_base, align 4, !tbaa !5
  %sub1183 = sub i32 %conv1182, %572
  %573 = load i32, i32* %mask_limit, align 4, !tbaa !5
  %cmp1184 = icmp ult i32 %sub1183, %573
  br i1 %cmp1184, label %if.then.1186, label %if.else.1188

if.then.1186:                                     ; preds = %if.then.1181
  %574 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %type1187 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %574, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_null, %struct.gx_device_color_type_s** %type1187, align 8, !tbaa !93
  br label %if.end.1231

if.else.1188:                                     ; preds = %if.then.1181
  %575 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map1189 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %575, i32 0, i32 64
  %arrayidx1190 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map1189, i32 0, i64 0
  %decoding1191 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx1190, i32 0, i32 3
  %576 = load i32, i32* %decoding1191, align 4, !tbaa !50
  switch i32 %576, label %sw.epilog.1225 [
    i32 0, label %sw.bb.1192
    i32 1, label %sw.bb.1199
    i32 2, label %sw.bb.1210
  ]

sw.bb.1192:                                       ; preds = %if.else.1188
  %577 = load i8*, i8** %stop, align 8, !tbaa !1
  %578 = load i8, i8* %577, align 1, !tbaa !101
  %conv1193 = zext i8 %578 to i32
  %conv1194 = sitofp i32 %conv1193 to float
  %mul1195 = fmul float %conv1194, 0x3F70101020000000
  %paint1196 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values1197 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint1196, i32 0, i32 0
  %arrayidx1198 = getelementptr inbounds [64 x float], [64 x float]* %values1197, i32 0, i64 0
  store float %mul1195, float* %arrayidx1198, align 4, !tbaa !53
  br label %sw.epilog.1225

sw.bb.1199:                                       ; preds = %if.else.1188
  %579 = load i8*, i8** %stop, align 8, !tbaa !1
  %580 = load i8, i8* %579, align 1, !tbaa !101
  %conv1200 = zext i8 %580 to i32
  %shr1201 = ashr i32 %conv1200, 4
  %idxprom1202 = sext i32 %shr1201 to i64
  %581 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map1203 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %581, i32 0, i32 64
  %arrayidx1204 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map1203, i32 0, i64 0
  %decode_lookup1205 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx1204, i32 0, i32 1
  %arrayidx1206 = getelementptr inbounds [16 x float], [16 x float]* %decode_lookup1205, i32 0, i64 %idxprom1202
  %582 = load float, float* %arrayidx1206, align 4, !tbaa !53
  %paint1207 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values1208 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint1207, i32 0, i32 0
  %arrayidx1209 = getelementptr inbounds [64 x float], [64 x float]* %values1208, i32 0, i64 0
  store float %582, float* %arrayidx1209, align 4, !tbaa !53
  br label %sw.epilog.1225

sw.bb.1210:                                       ; preds = %if.else.1188
  %583 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map1211 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %583, i32 0, i32 64
  %arrayidx1212 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map1211, i32 0, i64 0
  %decode_lookup1213 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx1212, i32 0, i32 1
  %arrayidx1214 = getelementptr inbounds [16 x float], [16 x float]* %decode_lookup1213, i32 0, i64 0
  %584 = load float, float* %arrayidx1214, align 4, !tbaa !53
  %585 = load i8*, i8** %stop, align 8, !tbaa !1
  %586 = load i8, i8* %585, align 1, !tbaa !101
  %conv1215 = zext i8 %586 to i32
  %conv1216 = sitofp i32 %conv1215 to float
  %587 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map1217 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %587, i32 0, i32 64
  %arrayidx1218 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map1217, i32 0, i64 0
  %decode_factor1219 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx1218, i32 0, i32 2
  %588 = load float, float* %decode_factor1219, align 4, !tbaa !52
  %mul1220 = fmul float %conv1216, %588
  %add1221 = fadd float %584, %mul1220
  %paint1222 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values1223 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint1222, i32 0, i32 0
  %arrayidx1224 = getelementptr inbounds [64 x float], [64 x float]* %values1223, i32 0, i64 0
  store float %add1221, float* %arrayidx1224, align 4, !tbaa !53
  br label %sw.epilog.1225

sw.epilog.1225:                                   ; preds = %sw.bb.1210, %if.else.1188, %sw.bb.1199, %sw.bb.1192
  %589 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_color, align 8, !tbaa !1
  %590 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %591 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %592 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %593 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call1226 = call i32 %589(%struct.gs_client_color_s* %cc, %struct.gs_color_space_s* %590, %struct.gx_device_color_s* %591, %struct.gs_imager_state_s* %592, %struct.gx_device_s* %593, i32 1) #5
  store i32 %call1226, i32* %code, align 4, !tbaa !5
  %594 = load i32, i32* %code, align 4, !tbaa !5
  %cmp1227 = icmp slt i32 %594, 0
  br i1 %cmp1227, label %if.then.1229, label %if.end.1230

if.then.1229:                                     ; preds = %sw.epilog.1225
  store i32 32, i32* %cleanup.dest.slot
  br label %cleanup.1358

if.end.1230:                                      ; preds = %sw.epilog.1225
  br label %if.end.1231

if.end.1231:                                      ; preds = %if.end.1230, %if.then.1186
  br label %if.end.1245

if.else.1232:                                     ; preds = %do.body.1173
  %595 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %type1233 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %595, i32 0, i32 0
  %596 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type1233, align 8, !tbaa !93
  %cmp1234 = icmp eq %struct.gx_device_color_type_s* %596, @gx_dc_type_data_pure
  br i1 %cmp1234, label %if.end.1244, label %if.then.1236

if.then.1236:                                     ; preds = %if.else.1232
  %597 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %type1237 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %597, i32 0, i32 0
  %598 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type1237, align 8, !tbaa !93
  %load1238 = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %598, i32 0, i32 4
  %599 = load i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %load1238, align 8, !tbaa !147
  %600 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %601 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %602 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call1239 = call i32 %599(%struct.gx_device_color_s* %600, %struct.gs_imager_state_s* %601, %struct.gx_device_s* %602, i32 1) #5
  store i32 %call1239, i32* %code, align 4, !tbaa !5
  %603 = load i32, i32* %code, align 4, !tbaa !5
  %cmp1240 = icmp slt i32 %603, 0
  br i1 %cmp1240, label %if.then.1242, label %if.end.1243

if.then.1242:                                     ; preds = %if.then.1236
  store i32 32, i32* %cleanup.dest.slot
  br label %cleanup.1358

if.end.1243:                                      ; preds = %if.then.1236
  br label %if.end.1244

if.end.1244:                                      ; preds = %if.end.1243, %if.else.1232
  br label %if.end.1245

if.end.1245:                                      ; preds = %if.end.1244, %if.end.1231
  br label %do.cond.1246

do.cond.1246:                                     ; preds = %if.end.1245
  br label %do.end.1247

do.end.1247:                                      ; preds = %do.cond.1246
  br label %if.end.1248

if.end.1248:                                      ; preds = %do.end.1247, %if.then.1170
  br label %do.body.1249

do.body.1249:                                     ; preds = %if.end.1248
  %604 = bitcast i32* %n_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %604) #1
  %605 = load i8*, i8** %endp, align 8, !tbaa !1
  %606 = load i8*, i8** %stop, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %605 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %606 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv1250 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv1250, i32* %n_, align 4, !tbaa !5
  %x1251 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %step1252 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1251, i32 0, i32 1
  %dQ1253 = getelementptr inbounds %struct._e, %struct._e* %step1252, i32 0, i32 0
  %607 = load i32, i32* %dQ1253, align 4, !tbaa !154
  %conv1254 = sext i32 %607 to i64
  %608 = load i8*, i8** %endp, align 8, !tbaa !1
  %609 = load i8*, i8** %stop, align 8, !tbaa !1
  %sub.ptr.lhs.cast1255 = ptrtoint i8* %608 to i64
  %sub.ptr.rhs.cast1256 = ptrtoint i8* %609 to i64
  %sub.ptr.sub1257 = sub i64 %sub.ptr.lhs.cast1255, %sub.ptr.rhs.cast1256
  %mul1258 = mul nsw i64 %conv1254, %sub.ptr.sub1257
  %x1259 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state1260 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1259, i32 0, i32 0
  %Q1261 = getelementptr inbounds %struct._a, %struct._a* %state1260, i32 0, i32 0
  %610 = load i32, i32* %Q1261, align 4, !tbaa !137
  %conv1262 = sext i32 %610 to i64
  %add1263 = add nsw i64 %conv1262, %mul1258
  %conv1264 = trunc i64 %add1263 to i32
  store i32 %conv1264, i32* %Q1261, align 4, !tbaa !137
  br label %while.cond.1265

while.cond.1265:                                  ; preds = %if.end.1292, %do.body.1249
  %611 = load i32, i32* %n_, align 4, !tbaa !5
  %dec = add i32 %611, -1
  store i32 %dec, i32* %n_, align 4, !tbaa !5
  %tobool1266 = icmp ne i32 %611, 0
  br i1 %tobool1266, label %while.body.1267, label %while.end.1293

while.body.1267:                                  ; preds = %while.cond.1265
  %x1268 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %step1269 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1268, i32 0, i32 1
  %dR1270 = getelementptr inbounds %struct._e, %struct._e* %step1269, i32 0, i32 1
  %612 = load i32, i32* %dR1270, align 4, !tbaa !150
  %x1271 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state1272 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1271, i32 0, i32 0
  %R1273 = getelementptr inbounds %struct._a, %struct._a* %state1272, i32 0, i32 1
  %613 = load i32, i32* %R1273, align 4, !tbaa !155
  %sub1274 = sub i32 %613, %612
  store i32 %sub1274, i32* %R1273, align 4, !tbaa !155
  %x1275 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state1276 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1275, i32 0, i32 0
  %R1277 = getelementptr inbounds %struct._a, %struct._a* %state1276, i32 0, i32 1
  %614 = load i32, i32* %R1277, align 4, !tbaa !155
  %cmp1278 = icmp slt i32 %614, 0
  br i1 %cmp1278, label %if.then.1280, label %if.end.1292

if.then.1280:                                     ; preds = %while.body.1267
  %x1281 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state1282 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1281, i32 0, i32 0
  %Q1283 = getelementptr inbounds %struct._a, %struct._a* %state1282, i32 0, i32 0
  %615 = load i32, i32* %Q1283, align 4, !tbaa !137
  %inc1284 = add nsw i32 %615, 1
  store i32 %inc1284, i32* %Q1283, align 4, !tbaa !137
  %x1285 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %step1286 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1285, i32 0, i32 1
  %N1287 = getelementptr inbounds %struct._e, %struct._e* %step1286, i32 0, i32 2
  %616 = load i32, i32* %N1287, align 4, !tbaa !156
  %x1288 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state1289 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1288, i32 0, i32 0
  %R1290 = getelementptr inbounds %struct._a, %struct._a* %state1289, i32 0, i32 1
  %617 = load i32, i32* %R1290, align 4, !tbaa !155
  %add1291 = add i32 %617, %616
  store i32 %add1291, i32* %R1290, align 4, !tbaa !155
  br label %if.end.1292

if.end.1292:                                      ; preds = %if.then.1280, %while.body.1267
  br label %while.cond.1265

while.end.1293:                                   ; preds = %while.cond.1265
  %618 = bitcast i32* %n_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %618) #1
  br label %do.cond.1294

do.cond.1294:                                     ; preds = %while.end.1293
  br label %do.end.1295

do.end.1295:                                      ; preds = %do.cond.1294
  br label %do.body.1296

do.body.1296:                                     ; preds = %do.end.1295
  %619 = bitcast i32* %n_1297 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %619) #1
  %620 = load i8*, i8** %endp, align 8, !tbaa !1
  %621 = load i8*, i8** %stop, align 8, !tbaa !1
  %sub.ptr.lhs.cast1298 = ptrtoint i8* %620 to i64
  %sub.ptr.rhs.cast1299 = ptrtoint i8* %621 to i64
  %sub.ptr.sub1300 = sub i64 %sub.ptr.lhs.cast1298, %sub.ptr.rhs.cast1299
  %conv1301 = trunc i64 %sub.ptr.sub1300 to i32
  store i32 %conv1301, i32* %n_1297, align 4, !tbaa !5
  %y1302 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %step1303 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y1302, i32 0, i32 1
  %dQ1304 = getelementptr inbounds %struct._e, %struct._e* %step1303, i32 0, i32 0
  %622 = load i32, i32* %dQ1304, align 4, !tbaa !161
  %conv1305 = sext i32 %622 to i64
  %623 = load i8*, i8** %endp, align 8, !tbaa !1
  %624 = load i8*, i8** %stop, align 8, !tbaa !1
  %sub.ptr.lhs.cast1306 = ptrtoint i8* %623 to i64
  %sub.ptr.rhs.cast1307 = ptrtoint i8* %624 to i64
  %sub.ptr.sub1308 = sub i64 %sub.ptr.lhs.cast1306, %sub.ptr.rhs.cast1307
  %mul1309 = mul nsw i64 %conv1305, %sub.ptr.sub1308
  %y1310 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %state1311 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y1310, i32 0, i32 0
  %Q1312 = getelementptr inbounds %struct._a, %struct._a* %state1311, i32 0, i32 0
  %625 = load i32, i32* %Q1312, align 4, !tbaa !146
  %conv1313 = sext i32 %625 to i64
  %add1314 = add nsw i64 %conv1313, %mul1309
  %conv1315 = trunc i64 %add1314 to i32
  store i32 %conv1315, i32* %Q1312, align 4, !tbaa !146
  br label %while.cond.1316

while.cond.1316:                                  ; preds = %if.end.1344, %do.body.1296
  %626 = load i32, i32* %n_1297, align 4, !tbaa !5
  %dec1317 = add i32 %626, -1
  store i32 %dec1317, i32* %n_1297, align 4, !tbaa !5
  %tobool1318 = icmp ne i32 %626, 0
  br i1 %tobool1318, label %while.body.1319, label %while.end.1345

while.body.1319:                                  ; preds = %while.cond.1316
  %y1320 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %step1321 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y1320, i32 0, i32 1
  %dR1322 = getelementptr inbounds %struct._e, %struct._e* %step1321, i32 0, i32 1
  %627 = load i32, i32* %dR1322, align 4, !tbaa !158
  %y1323 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %state1324 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y1323, i32 0, i32 0
  %R1325 = getelementptr inbounds %struct._a, %struct._a* %state1324, i32 0, i32 1
  %628 = load i32, i32* %R1325, align 4, !tbaa !159
  %sub1326 = sub i32 %628, %627
  store i32 %sub1326, i32* %R1325, align 4, !tbaa !159
  %y1327 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %state1328 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y1327, i32 0, i32 0
  %R1329 = getelementptr inbounds %struct._a, %struct._a* %state1328, i32 0, i32 1
  %629 = load i32, i32* %R1329, align 4, !tbaa !159
  %cmp1330 = icmp slt i32 %629, 0
  br i1 %cmp1330, label %if.then.1332, label %if.end.1344

if.then.1332:                                     ; preds = %while.body.1319
  %y1333 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %state1334 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y1333, i32 0, i32 0
  %Q1335 = getelementptr inbounds %struct._a, %struct._a* %state1334, i32 0, i32 0
  %630 = load i32, i32* %Q1335, align 4, !tbaa !146
  %inc1336 = add nsw i32 %630, 1
  store i32 %inc1336, i32* %Q1335, align 4, !tbaa !146
  %y1337 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %step1338 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y1337, i32 0, i32 1
  %N1339 = getelementptr inbounds %struct._e, %struct._e* %step1338, i32 0, i32 2
  %631 = load i32, i32* %N1339, align 4, !tbaa !160
  %y1340 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %state1341 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y1340, i32 0, i32 0
  %R1342 = getelementptr inbounds %struct._a, %struct._a* %state1341, i32 0, i32 1
  %632 = load i32, i32* %R1342, align 4, !tbaa !159
  %add1343 = add i32 %632, %631
  store i32 %add1343, i32* %R1342, align 4, !tbaa !159
  br label %if.end.1344

if.end.1344:                                      ; preds = %if.then.1332, %while.body.1319
  br label %while.cond.1316

while.end.1345:                                   ; preds = %while.cond.1316
  %633 = bitcast i32* %n_1297 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %633) #1
  br label %do.cond.1346

do.cond.1346:                                     ; preds = %while.end.1345
  br label %do.end.1347

do.end.1347:                                      ; preds = %do.cond.1346
  %634 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_pgram, align 8, !tbaa !1
  %635 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %636 = load i32, i32* %xrun, align 4, !tbaa !5
  %637 = load i32, i32* %yrun, align 4, !tbaa !5
  %x1348 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state1349 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1348, i32 0, i32 0
  %Q1350 = getelementptr inbounds %struct._a, %struct._a* %state1349, i32 0, i32 0
  %638 = load i32, i32* %Q1350, align 4, !tbaa !137
  %639 = load i32, i32* %xrun, align 4, !tbaa !5
  %sub1351 = sub nsw i32 %638, %639
  %y1352 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 1
  %state1353 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y1352, i32 0, i32 0
  %Q1354 = getelementptr inbounds %struct._a, %struct._a* %state1353, i32 0, i32 0
  %640 = load i32, i32* %Q1354, align 4, !tbaa !146
  %641 = load i32, i32* %yrun, align 4, !tbaa !5
  %sub1355 = sub nsw i32 %640, %641
  %642 = load i32, i32* %pdyx, align 4, !tbaa !5
  %643 = load i32, i32* %pdyy, align 4, !tbaa !5
  %644 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %645 = load i32, i32* %lop, align 4, !tbaa !5
  %call1356 = call i32 %634(%struct.gx_device_s* %635, i32 %636, i32 %637, i32 %sub1351, i32 %sub1355, i32 %642, i32 %643, %struct.gx_device_color_s* %644, i32 %645) #5
  store i32 %call1356, i32* %code, align 4, !tbaa !5
  br label %if.end.1357

if.end.1357:                                      ; preds = %do.end.1347, %lor.lhs.false.1168, %last.1162
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.1358

cleanup.1358:                                     ; preds = %if.then.1242, %if.then.1229, %if.then.1076, %if.then.1058, %if.then.1045, %if.then.893, %if.then.875, %if.then.862, %if.then.781, %if.end.1357, %cleanup.601, %cleanup, %if.then.69
  %646 = bitcast i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_pgram to i8*
  call void @llvm.lifetime.end(i64 8, i8* %646) #1
  %647 = bitcast i32* %pdyy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %647) #1
  %648 = bitcast i32* %pdyx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %648) #1
  %649 = bitcast i32* %yrun to i8*
  call void @llvm.lifetime.end(i64 4, i8* %649) #1
  %cleanup.dest.1362 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1362, label %cleanup.2059 [
    i32 0, label %cleanup.cont.1363
    i32 32, label %err
  ]

cleanup.cont.1363:                                ; preds = %cleanup.1358
  br label %if.end.2047

if.else.1364:                                     ; preds = %lor.lhs.false
  %650 = bitcast i32* %adjust1365 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %650) #1
  %651 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %adjust1366 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %651, i32 0, i32 45
  %652 = load i32, i32* %adjust1366, align 4, !tbaa !107
  store i32 %652, i32* %adjust1365, align 4, !tbaa !5
  %653 = bitcast i32* %dxx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %653) #1
  %654 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dxx1367 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %654, i32 0, i32 46
  %655 = load i32, i32* %dxx1367, align 4, !tbaa !98
  store i32 %655, i32* %dxx, align 4, !tbaa !5
  %656 = bitcast i32* %xa to i8*
  call void @llvm.lifetime.start(i64 4, i8* %656) #1
  %657 = load i32, i32* %dxx, align 4, !tbaa !5
  %cmp1368 = icmp sge i32 %657, 0
  br i1 %cmp1368, label %cond.true.1370, label %cond.false.1371

cond.true.1370:                                   ; preds = %if.else.1364
  %658 = load i32, i32* %adjust1365, align 4, !tbaa !5
  br label %cond.end.1373

cond.false.1371:                                  ; preds = %if.else.1364
  %659 = load i32, i32* %adjust1365, align 4, !tbaa !5
  %sub1372 = sub nsw i32 0, %659
  br label %cond.end.1373

cond.end.1373:                                    ; preds = %cond.false.1371, %cond.true.1370
  %cond1374 = phi i32 [ %658, %cond.true.1370 ], [ %sub1372, %cond.false.1371 ]
  store i32 %cond1374, i32* %xa, align 4, !tbaa !5
  %660 = bitcast i32* %yt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %660) #1
  %661 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %yci = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %661, i32 0, i32 60
  %662 = load i32, i32* %yci, align 4, !tbaa !163
  store i32 %662, i32* %yt, align 4, !tbaa !5
  %663 = bitcast i32* %iht to i8*
  call void @llvm.lifetime.start(i64 4, i8* %663) #1
  %664 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %hci = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %664, i32 0, i32 61
  %665 = load i32, i32* %hci, align 4, !tbaa !109
  store i32 %665, i32* %iht, align 4, !tbaa !5
  %666 = bitcast i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %666) #1
  %667 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs1375 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %667, i32 0, i32 42
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1375, i32 0, i32 7
  %668 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8, !tbaa !164
  store i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* %668, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_proc, align 8, !tbaa !1
  %669 = bitcast i32* %xmin to i8*
  call void @llvm.lifetime.start(i64 4, i8* %669) #1
  %670 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %clip_outer = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %670, i32 0, i32 42
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_outer, i32 0, i32 0
  %x1376 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %671 = load i32, i32* %x1376, align 4, !tbaa !165
  %conv1377 = sext i32 %671 to i64
  %add1378 = add nsw i64 %conv1377, 127
  %shr1379 = ashr i64 %add1378, 8
  %conv1380 = trunc i64 %shr1379 to i32
  store i32 %conv1380, i32* %xmin, align 4, !tbaa !5
  %672 = bitcast i32* %xmax to i8*
  call void @llvm.lifetime.start(i64 4, i8* %672) #1
  %673 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %clip_outer1381 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %673, i32 0, i32 42
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_outer1381, i32 0, i32 1
  %x1382 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %674 = load i32, i32* %x1382, align 4, !tbaa !166
  %conv1383 = sext i32 %674 to i64
  %add1384 = add nsw i64 %conv1383, 127
  %shr1385 = ashr i64 %add1384, 8
  %conv1386 = trunc i64 %shr1385 to i32
  store i32 %conv1386, i32* %xmax, align 4, !tbaa !5
  br label %do.body.1387

do.body.1387:                                     ; preds = %cond.end.1373
  br label %do.cond.1388

do.cond.1388:                                     ; preds = %do.body.1387
  br label %do.end.1389

do.end.1389:                                      ; preds = %do.cond.1388
  %675 = load i32, i32* %xrun, align 4, !tbaa !5
  %676 = load i32, i32* %xa, align 4, !tbaa !5
  %sub1390 = sub nsw i32 %675, %676
  %conv1391 = sext i32 %sub1390 to i64
  %add1392 = add nsw i64 %conv1391, 127
  %conv1393 = trunc i64 %add1392 to i32
  store i32 %conv1393, i32* %xrun, align 4, !tbaa !5
  %677 = load i32, i32* %xa, align 4, !tbaa !5
  %conv1394 = sext i32 %677 to i64
  %add1395 = add nsw i64 %conv1394, 127
  %x1396 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state1397 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1396, i32 0, i32 0
  %Q1398 = getelementptr inbounds %struct._a, %struct._a* %state1397, i32 0, i32 0
  %678 = load i32, i32* %Q1398, align 4, !tbaa !137
  %conv1399 = sext i32 %678 to i64
  %add1400 = add nsw i64 %conv1399, %add1395
  %conv1401 = trunc i64 %add1400 to i32
  store i32 %conv1401, i32* %Q1398, align 4, !tbaa !137
  %679 = load i32, i32* %xa, align 4, !tbaa !5
  %shl1402 = shl i32 %679, 1
  store i32 %shl1402, i32* %xa, align 4, !tbaa !5
  %x1403 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %step1404 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1403, i32 0, i32 1
  %680 = bitcast %struct._e* %dxx2 to i8*
  %681 = bitcast %struct._e* %step1404 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %680, i8* %681, i64 12, i32 4, i1 false), !tbaa.struct !149
  br label %do.body.1405

do.body.1405:                                     ; preds = %do.end.1389
  %x1406 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %step1407 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1406, i32 0, i32 1
  %dR1408 = getelementptr inbounds %struct._e, %struct._e* %step1407, i32 0, i32 1
  %682 = load i32, i32* %dR1408, align 4, !tbaa !150
  %dR1409 = getelementptr inbounds %struct._e, %struct._e* %dxx2, i32 0, i32 1
  %683 = load i32, i32* %dR1409, align 4, !tbaa !151
  %add1410 = add i32 %683, %682
  store i32 %add1410, i32* %dR1409, align 4, !tbaa !151
  %dR1411 = getelementptr inbounds %struct._e, %struct._e* %dxx2, i32 0, i32 1
  %684 = load i32, i32* %dR1411, align 4, !tbaa !151
  %N1412 = getelementptr inbounds %struct._e, %struct._e* %dxx2, i32 0, i32 2
  %685 = load i32, i32* %N1412, align 4, !tbaa !152
  %cmp1413 = icmp uge i32 %684, %685
  br i1 %cmp1413, label %if.then.1415, label %if.end.1421

if.then.1415:                                     ; preds = %do.body.1405
  %dQ1416 = getelementptr inbounds %struct._e, %struct._e* %dxx2, i32 0, i32 0
  %686 = load i32, i32* %dQ1416, align 4, !tbaa !153
  %inc1417 = add nsw i32 %686, 1
  store i32 %inc1417, i32* %dQ1416, align 4, !tbaa !153
  %N1418 = getelementptr inbounds %struct._e, %struct._e* %dxx2, i32 0, i32 2
  %687 = load i32, i32* %N1418, align 4, !tbaa !152
  %dR1419 = getelementptr inbounds %struct._e, %struct._e* %dxx2, i32 0, i32 1
  %688 = load i32, i32* %dR1419, align 4, !tbaa !151
  %sub1420 = sub i32 %688, %687
  store i32 %sub1420, i32* %dR1419, align 4, !tbaa !151
  br label %if.end.1421

if.end.1421:                                      ; preds = %if.then.1415, %do.body.1405
  %x1422 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %step1423 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1422, i32 0, i32 1
  %dQ1424 = getelementptr inbounds %struct._e, %struct._e* %step1423, i32 0, i32 0
  %689 = load i32, i32* %dQ1424, align 4, !tbaa !154
  %dQ1425 = getelementptr inbounds %struct._e, %struct._e* %dxx2, i32 0, i32 0
  %690 = load i32, i32* %dQ1425, align 4, !tbaa !153
  %add1426 = add nsw i32 %690, %689
  store i32 %add1426, i32* %dQ1425, align 4, !tbaa !153
  br label %do.cond.1427

do.cond.1427:                                     ; preds = %if.end.1421
  br label %do.end.1428

do.end.1428:                                      ; preds = %do.cond.1427
  %691 = bitcast %struct._e* %dxx3 to i8*
  %692 = bitcast %struct._e* %dxx2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %691, i8* %692, i64 12, i32 4, i1 false), !tbaa.struct !149
  br label %do.body.1429

do.body.1429:                                     ; preds = %do.end.1428
  %x1430 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %step1431 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1430, i32 0, i32 1
  %dR1432 = getelementptr inbounds %struct._e, %struct._e* %step1431, i32 0, i32 1
  %693 = load i32, i32* %dR1432, align 4, !tbaa !150
  %dR1433 = getelementptr inbounds %struct._e, %struct._e* %dxx3, i32 0, i32 1
  %694 = load i32, i32* %dR1433, align 4, !tbaa !151
  %add1434 = add i32 %694, %693
  store i32 %add1434, i32* %dR1433, align 4, !tbaa !151
  %dR1435 = getelementptr inbounds %struct._e, %struct._e* %dxx3, i32 0, i32 1
  %695 = load i32, i32* %dR1435, align 4, !tbaa !151
  %N1436 = getelementptr inbounds %struct._e, %struct._e* %dxx3, i32 0, i32 2
  %696 = load i32, i32* %N1436, align 4, !tbaa !152
  %cmp1437 = icmp uge i32 %695, %696
  br i1 %cmp1437, label %if.then.1439, label %if.end.1445

if.then.1439:                                     ; preds = %do.body.1429
  %dQ1440 = getelementptr inbounds %struct._e, %struct._e* %dxx3, i32 0, i32 0
  %697 = load i32, i32* %dQ1440, align 4, !tbaa !153
  %inc1441 = add nsw i32 %697, 1
  store i32 %inc1441, i32* %dQ1440, align 4, !tbaa !153
  %N1442 = getelementptr inbounds %struct._e, %struct._e* %dxx3, i32 0, i32 2
  %698 = load i32, i32* %N1442, align 4, !tbaa !152
  %dR1443 = getelementptr inbounds %struct._e, %struct._e* %dxx3, i32 0, i32 1
  %699 = load i32, i32* %dR1443, align 4, !tbaa !151
  %sub1444 = sub i32 %699, %698
  store i32 %sub1444, i32* %dR1443, align 4, !tbaa !151
  br label %if.end.1445

if.end.1445:                                      ; preds = %if.then.1439, %do.body.1429
  %x1446 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %step1447 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1446, i32 0, i32 1
  %dQ1448 = getelementptr inbounds %struct._e, %struct._e* %step1447, i32 0, i32 0
  %700 = load i32, i32* %dQ1448, align 4, !tbaa !154
  %dQ1449 = getelementptr inbounds %struct._e, %struct._e* %dxx3, i32 0, i32 0
  %701 = load i32, i32* %dQ1449, align 4, !tbaa !153
  %add1450 = add nsw i32 %701, %700
  store i32 %add1450, i32* %dQ1449, align 4, !tbaa !153
  br label %do.cond.1451

do.cond.1451:                                     ; preds = %if.end.1445
  br label %do.end.1452

do.end.1452:                                      ; preds = %do.cond.1451
  %702 = bitcast %struct._e* %dxx4 to i8*
  %703 = bitcast %struct._e* %dxx3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %702, i8* %703, i64 12, i32 4, i1 false), !tbaa.struct !149
  br label %do.body.1453

do.body.1453:                                     ; preds = %do.end.1452
  %x1454 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %step1455 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1454, i32 0, i32 1
  %dR1456 = getelementptr inbounds %struct._e, %struct._e* %step1455, i32 0, i32 1
  %704 = load i32, i32* %dR1456, align 4, !tbaa !150
  %dR1457 = getelementptr inbounds %struct._e, %struct._e* %dxx4, i32 0, i32 1
  %705 = load i32, i32* %dR1457, align 4, !tbaa !151
  %add1458 = add i32 %705, %704
  store i32 %add1458, i32* %dR1457, align 4, !tbaa !151
  %dR1459 = getelementptr inbounds %struct._e, %struct._e* %dxx4, i32 0, i32 1
  %706 = load i32, i32* %dR1459, align 4, !tbaa !151
  %N1460 = getelementptr inbounds %struct._e, %struct._e* %dxx4, i32 0, i32 2
  %707 = load i32, i32* %N1460, align 4, !tbaa !152
  %cmp1461 = icmp uge i32 %706, %707
  br i1 %cmp1461, label %if.then.1463, label %if.end.1469

if.then.1463:                                     ; preds = %do.body.1453
  %dQ1464 = getelementptr inbounds %struct._e, %struct._e* %dxx4, i32 0, i32 0
  %708 = load i32, i32* %dQ1464, align 4, !tbaa !153
  %inc1465 = add nsw i32 %708, 1
  store i32 %inc1465, i32* %dQ1464, align 4, !tbaa !153
  %N1466 = getelementptr inbounds %struct._e, %struct._e* %dxx4, i32 0, i32 2
  %709 = load i32, i32* %N1466, align 4, !tbaa !152
  %dR1467 = getelementptr inbounds %struct._e, %struct._e* %dxx4, i32 0, i32 1
  %710 = load i32, i32* %dR1467, align 4, !tbaa !151
  %sub1468 = sub i32 %710, %709
  store i32 %sub1468, i32* %dR1467, align 4, !tbaa !151
  br label %if.end.1469

if.end.1469:                                      ; preds = %if.then.1463, %do.body.1453
  %x1470 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %step1471 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1470, i32 0, i32 1
  %dQ1472 = getelementptr inbounds %struct._e, %struct._e* %step1471, i32 0, i32 0
  %711 = load i32, i32* %dQ1472, align 4, !tbaa !154
  %dQ1473 = getelementptr inbounds %struct._e, %struct._e* %dxx4, i32 0, i32 0
  %712 = load i32, i32* %dQ1473, align 4, !tbaa !153
  %add1474 = add nsw i32 %712, %711
  store i32 %add1474, i32* %dQ1473, align 4, !tbaa !153
  br label %do.cond.1475

do.cond.1475:                                     ; preds = %if.end.1469
  br label %do.end.1476

do.end.1476:                                      ; preds = %do.cond.1475
  %713 = load i8*, i8** %stop, align 8, !tbaa !1
  %714 = load i8*, i8** %psrc, align 8, !tbaa !1
  %cmp1477 = icmp ugt i8* %713, %714
  br i1 %cmp1477, label %if.then.1479, label %if.end.1851

if.then.1479:                                     ; preds = %do.end.1476
  br label %for.cond.1480

for.cond.1480:                                    ; preds = %do.end.1849, %if.then.1479
  br label %skf

skf:                                              ; preds = %if.end.1538, %for.cond.1480
  %715 = load i8*, i8** %psrc, align 8, !tbaa !1
  %arrayidx1481 = getelementptr inbounds i8, i8* %715, i64 0
  %716 = load i8, i8* %arrayidx1481, align 1, !tbaa !101
  %conv1482 = zext i8 %716 to i32
  %717 = load i8, i8* %run, align 1, !tbaa !101
  %conv1483 = zext i8 %717 to i32
  %cmp1484 = icmp eq i32 %conv1482, %conv1483
  br i1 %cmp1484, label %if.then.1486, label %if.else.1641

if.then.1486:                                     ; preds = %skf
  %718 = load i8*, i8** %psrc, align 8, !tbaa !1
  %arrayidx1487 = getelementptr inbounds i8, i8* %718, i64 1
  %719 = load i8, i8* %arrayidx1487, align 1, !tbaa !101
  %conv1488 = zext i8 %719 to i32
  %720 = load i8, i8* %run, align 1, !tbaa !101
  %conv1489 = zext i8 %720 to i32
  %cmp1490 = icmp eq i32 %conv1488, %conv1489
  br i1 %cmp1490, label %if.then.1492, label %if.else.1603

if.then.1492:                                     ; preds = %if.then.1486
  %721 = load i8*, i8** %psrc, align 8, !tbaa !1
  %arrayidx1493 = getelementptr inbounds i8, i8* %721, i64 2
  %722 = load i8, i8* %arrayidx1493, align 1, !tbaa !101
  %conv1494 = zext i8 %722 to i32
  %723 = load i8, i8* %run, align 1, !tbaa !101
  %conv1495 = zext i8 %723 to i32
  %cmp1496 = icmp eq i32 %conv1494, %conv1495
  br i1 %cmp1496, label %if.then.1498, label %if.else.1571

if.then.1498:                                     ; preds = %if.then.1492
  %724 = load i8*, i8** %psrc, align 8, !tbaa !1
  %arrayidx1499 = getelementptr inbounds i8, i8* %724, i64 3
  %725 = load i8, i8* %arrayidx1499, align 1, !tbaa !101
  %conv1500 = zext i8 %725 to i32
  %726 = load i8, i8* %run, align 1, !tbaa !101
  %conv1501 = zext i8 %726 to i32
  %cmp1502 = icmp eq i32 %conv1500, %conv1501
  br i1 %cmp1502, label %if.then.1504, label %if.else.1539

if.then.1504:                                     ; preds = %if.then.1498
  %727 = load i8*, i8** %psrc, align 8, !tbaa !1
  %add.ptr1505 = getelementptr inbounds i8, i8* %727, i64 4
  store i8* %add.ptr1505, i8** %psrc, align 8, !tbaa !1
  br label %do.body.1506

do.body.1506:                                     ; preds = %if.then.1504
  %dR1507 = getelementptr inbounds %struct._e, %struct._e* %dxx4, i32 0, i32 1
  %728 = load i32, i32* %dR1507, align 4, !tbaa !151
  %x1508 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state1509 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1508, i32 0, i32 0
  %R1510 = getelementptr inbounds %struct._a, %struct._a* %state1509, i32 0, i32 1
  %729 = load i32, i32* %R1510, align 4, !tbaa !155
  %sub1511 = sub i32 %729, %728
  store i32 %sub1511, i32* %R1510, align 4, !tbaa !155
  %x1512 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state1513 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1512, i32 0, i32 0
  %R1514 = getelementptr inbounds %struct._a, %struct._a* %state1513, i32 0, i32 1
  %730 = load i32, i32* %R1514, align 4, !tbaa !155
  %cmp1515 = icmp slt i32 %730, 0
  br i1 %cmp1515, label %if.then.1517, label %if.end.1527

if.then.1517:                                     ; preds = %do.body.1506
  %x1518 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state1519 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1518, i32 0, i32 0
  %Q1520 = getelementptr inbounds %struct._a, %struct._a* %state1519, i32 0, i32 0
  %731 = load i32, i32* %Q1520, align 4, !tbaa !137
  %inc1521 = add nsw i32 %731, 1
  store i32 %inc1521, i32* %Q1520, align 4, !tbaa !137
  %N1522 = getelementptr inbounds %struct._e, %struct._e* %dxx4, i32 0, i32 2
  %732 = load i32, i32* %N1522, align 4, !tbaa !152
  %x1523 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state1524 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1523, i32 0, i32 0
  %R1525 = getelementptr inbounds %struct._a, %struct._a* %state1524, i32 0, i32 1
  %733 = load i32, i32* %R1525, align 4, !tbaa !155
  %add1526 = add i32 %733, %732
  store i32 %add1526, i32* %R1525, align 4, !tbaa !155
  br label %if.end.1527

if.end.1527:                                      ; preds = %if.then.1517, %do.body.1506
  %dQ1528 = getelementptr inbounds %struct._e, %struct._e* %dxx4, i32 0, i32 0
  %734 = load i32, i32* %dQ1528, align 4, !tbaa !153
  %x1529 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state1530 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1529, i32 0, i32 0
  %Q1531 = getelementptr inbounds %struct._a, %struct._a* %state1530, i32 0, i32 0
  %735 = load i32, i32* %Q1531, align 4, !tbaa !137
  %add1532 = add nsw i32 %735, %734
  store i32 %add1532, i32* %Q1531, align 4, !tbaa !137
  br label %do.cond.1533

do.cond.1533:                                     ; preds = %if.end.1527
  br label %do.end.1534

do.end.1534:                                      ; preds = %do.cond.1533
  %736 = load i8*, i8** %psrc, align 8, !tbaa !1
  %737 = load i8*, i8** %endp, align 8, !tbaa !1
  %cmp1535 = icmp uge i8* %736, %737
  br i1 %cmp1535, label %if.then.1537, label %if.end.1538

if.then.1537:                                     ; preds = %do.end.1534
  br label %for.end.1850

if.end.1538:                                      ; preds = %do.end.1534
  br label %skf

if.else.1539:                                     ; preds = %if.then.1498
  %738 = load i8*, i8** %psrc, align 8, !tbaa !1
  %add.ptr1540 = getelementptr inbounds i8, i8* %738, i64 4
  store i8* %add.ptr1540, i8** %psrc, align 8, !tbaa !1
  br label %do.body.1541

do.body.1541:                                     ; preds = %if.else.1539
  %dR1542 = getelementptr inbounds %struct._e, %struct._e* %dxx3, i32 0, i32 1
  %739 = load i32, i32* %dR1542, align 4, !tbaa !151
  %x1543 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state1544 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1543, i32 0, i32 0
  %R1545 = getelementptr inbounds %struct._a, %struct._a* %state1544, i32 0, i32 1
  %740 = load i32, i32* %R1545, align 4, !tbaa !155
  %sub1546 = sub i32 %740, %739
  store i32 %sub1546, i32* %R1545, align 4, !tbaa !155
  %x1547 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state1548 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1547, i32 0, i32 0
  %R1549 = getelementptr inbounds %struct._a, %struct._a* %state1548, i32 0, i32 1
  %741 = load i32, i32* %R1549, align 4, !tbaa !155
  %cmp1550 = icmp slt i32 %741, 0
  br i1 %cmp1550, label %if.then.1552, label %if.end.1562

if.then.1552:                                     ; preds = %do.body.1541
  %x1553 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state1554 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1553, i32 0, i32 0
  %Q1555 = getelementptr inbounds %struct._a, %struct._a* %state1554, i32 0, i32 0
  %742 = load i32, i32* %Q1555, align 4, !tbaa !137
  %inc1556 = add nsw i32 %742, 1
  store i32 %inc1556, i32* %Q1555, align 4, !tbaa !137
  %N1557 = getelementptr inbounds %struct._e, %struct._e* %dxx3, i32 0, i32 2
  %743 = load i32, i32* %N1557, align 4, !tbaa !152
  %x1558 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state1559 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1558, i32 0, i32 0
  %R1560 = getelementptr inbounds %struct._a, %struct._a* %state1559, i32 0, i32 1
  %744 = load i32, i32* %R1560, align 4, !tbaa !155
  %add1561 = add i32 %744, %743
  store i32 %add1561, i32* %R1560, align 4, !tbaa !155
  br label %if.end.1562

if.end.1562:                                      ; preds = %if.then.1552, %do.body.1541
  %dQ1563 = getelementptr inbounds %struct._e, %struct._e* %dxx3, i32 0, i32 0
  %745 = load i32, i32* %dQ1563, align 4, !tbaa !153
  %x1564 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state1565 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1564, i32 0, i32 0
  %Q1566 = getelementptr inbounds %struct._a, %struct._a* %state1565, i32 0, i32 0
  %746 = load i32, i32* %Q1566, align 4, !tbaa !137
  %add1567 = add nsw i32 %746, %745
  store i32 %add1567, i32* %Q1566, align 4, !tbaa !137
  br label %do.cond.1568

do.cond.1568:                                     ; preds = %if.end.1562
  br label %do.end.1569

do.end.1569:                                      ; preds = %do.cond.1568
  br label %if.end.1570

if.end.1570:                                      ; preds = %do.end.1569
  br label %if.end.1602

if.else.1571:                                     ; preds = %if.then.1492
  %747 = load i8*, i8** %psrc, align 8, !tbaa !1
  %add.ptr1572 = getelementptr inbounds i8, i8* %747, i64 3
  store i8* %add.ptr1572, i8** %psrc, align 8, !tbaa !1
  br label %do.body.1573

do.body.1573:                                     ; preds = %if.else.1571
  %dR1574 = getelementptr inbounds %struct._e, %struct._e* %dxx2, i32 0, i32 1
  %748 = load i32, i32* %dR1574, align 4, !tbaa !151
  %x1575 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state1576 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1575, i32 0, i32 0
  %R1577 = getelementptr inbounds %struct._a, %struct._a* %state1576, i32 0, i32 1
  %749 = load i32, i32* %R1577, align 4, !tbaa !155
  %sub1578 = sub i32 %749, %748
  store i32 %sub1578, i32* %R1577, align 4, !tbaa !155
  %x1579 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state1580 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1579, i32 0, i32 0
  %R1581 = getelementptr inbounds %struct._a, %struct._a* %state1580, i32 0, i32 1
  %750 = load i32, i32* %R1581, align 4, !tbaa !155
  %cmp1582 = icmp slt i32 %750, 0
  br i1 %cmp1582, label %if.then.1584, label %if.end.1594

if.then.1584:                                     ; preds = %do.body.1573
  %x1585 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state1586 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1585, i32 0, i32 0
  %Q1587 = getelementptr inbounds %struct._a, %struct._a* %state1586, i32 0, i32 0
  %751 = load i32, i32* %Q1587, align 4, !tbaa !137
  %inc1588 = add nsw i32 %751, 1
  store i32 %inc1588, i32* %Q1587, align 4, !tbaa !137
  %N1589 = getelementptr inbounds %struct._e, %struct._e* %dxx2, i32 0, i32 2
  %752 = load i32, i32* %N1589, align 4, !tbaa !152
  %x1590 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state1591 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1590, i32 0, i32 0
  %R1592 = getelementptr inbounds %struct._a, %struct._a* %state1591, i32 0, i32 1
  %753 = load i32, i32* %R1592, align 4, !tbaa !155
  %add1593 = add i32 %753, %752
  store i32 %add1593, i32* %R1592, align 4, !tbaa !155
  br label %if.end.1594

if.end.1594:                                      ; preds = %if.then.1584, %do.body.1573
  %dQ1595 = getelementptr inbounds %struct._e, %struct._e* %dxx2, i32 0, i32 0
  %754 = load i32, i32* %dQ1595, align 4, !tbaa !153
  %x1596 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state1597 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1596, i32 0, i32 0
  %Q1598 = getelementptr inbounds %struct._a, %struct._a* %state1597, i32 0, i32 0
  %755 = load i32, i32* %Q1598, align 4, !tbaa !137
  %add1599 = add nsw i32 %755, %754
  store i32 %add1599, i32* %Q1598, align 4, !tbaa !137
  br label %do.cond.1600

do.cond.1600:                                     ; preds = %if.end.1594
  br label %do.end.1601

do.end.1601:                                      ; preds = %do.cond.1600
  br label %if.end.1602

if.end.1602:                                      ; preds = %do.end.1601, %if.end.1570
  br label %if.end.1640

if.else.1603:                                     ; preds = %if.then.1486
  %756 = load i8*, i8** %psrc, align 8, !tbaa !1
  %add.ptr1604 = getelementptr inbounds i8, i8* %756, i64 2
  store i8* %add.ptr1604, i8** %psrc, align 8, !tbaa !1
  br label %do.body.1605

do.body.1605:                                     ; preds = %if.else.1603
  %x1606 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %step1607 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1606, i32 0, i32 1
  %dR1608 = getelementptr inbounds %struct._e, %struct._e* %step1607, i32 0, i32 1
  %757 = load i32, i32* %dR1608, align 4, !tbaa !150
  %x1609 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state1610 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1609, i32 0, i32 0
  %R1611 = getelementptr inbounds %struct._a, %struct._a* %state1610, i32 0, i32 1
  %758 = load i32, i32* %R1611, align 4, !tbaa !155
  %sub1612 = sub i32 %758, %757
  store i32 %sub1612, i32* %R1611, align 4, !tbaa !155
  %x1613 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state1614 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1613, i32 0, i32 0
  %R1615 = getelementptr inbounds %struct._a, %struct._a* %state1614, i32 0, i32 1
  %759 = load i32, i32* %R1615, align 4, !tbaa !155
  %cmp1616 = icmp slt i32 %759, 0
  br i1 %cmp1616, label %if.then.1618, label %if.end.1630

if.then.1618:                                     ; preds = %do.body.1605
  %x1619 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state1620 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1619, i32 0, i32 0
  %Q1621 = getelementptr inbounds %struct._a, %struct._a* %state1620, i32 0, i32 0
  %760 = load i32, i32* %Q1621, align 4, !tbaa !137
  %inc1622 = add nsw i32 %760, 1
  store i32 %inc1622, i32* %Q1621, align 4, !tbaa !137
  %x1623 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %step1624 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1623, i32 0, i32 1
  %N1625 = getelementptr inbounds %struct._e, %struct._e* %step1624, i32 0, i32 2
  %761 = load i32, i32* %N1625, align 4, !tbaa !156
  %x1626 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state1627 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1626, i32 0, i32 0
  %R1628 = getelementptr inbounds %struct._a, %struct._a* %state1627, i32 0, i32 1
  %762 = load i32, i32* %R1628, align 4, !tbaa !155
  %add1629 = add i32 %762, %761
  store i32 %add1629, i32* %R1628, align 4, !tbaa !155
  br label %if.end.1630

if.end.1630:                                      ; preds = %if.then.1618, %do.body.1605
  %x1631 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %step1632 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1631, i32 0, i32 1
  %dQ1633 = getelementptr inbounds %struct._e, %struct._e* %step1632, i32 0, i32 0
  %763 = load i32, i32* %dQ1633, align 4, !tbaa !154
  %x1634 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state1635 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1634, i32 0, i32 0
  %Q1636 = getelementptr inbounds %struct._a, %struct._a* %state1635, i32 0, i32 0
  %764 = load i32, i32* %Q1636, align 4, !tbaa !137
  %add1637 = add nsw i32 %764, %763
  store i32 %add1637, i32* %Q1636, align 4, !tbaa !137
  br label %do.cond.1638

do.cond.1638:                                     ; preds = %if.end.1630
  br label %do.end.1639

do.end.1639:                                      ; preds = %do.cond.1638
  br label %if.end.1640

if.end.1640:                                      ; preds = %do.end.1639, %if.end.1602
  br label %if.end.1643

if.else.1641:                                     ; preds = %skf
  %765 = load i8*, i8** %psrc, align 8, !tbaa !1
  %incdec.ptr1642 = getelementptr inbounds i8, i8* %765, i32 1
  store i8* %incdec.ptr1642, i8** %psrc, align 8, !tbaa !1
  br label %if.end.1643

if.end.1643:                                      ; preds = %if.else.1641, %if.end.1640
  %766 = bitcast i32* %xi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %766) #1
  %767 = load i32, i32* %xrun, align 4, !tbaa !5
  %shr1644 = ashr i32 %767, 8
  store i32 %shr1644, i32* %xi, align 4, !tbaa !5
  %768 = bitcast i32* %wi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %768) #1
  %x1645 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state1646 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1645, i32 0, i32 0
  %Q1647 = getelementptr inbounds %struct._a, %struct._a* %state1646, i32 0, i32 0
  %769 = load i32, i32* %Q1647, align 4, !tbaa !137
  %shr1648 = ashr i32 %769, 8
  %770 = load i32, i32* %xi, align 4, !tbaa !5
  %sub1649 = sub nsw i32 %shr1648, %770
  store i32 %sub1649, i32* %wi, align 4, !tbaa !5
  %771 = bitcast i32* %xei to i8*
  call void @llvm.lifetime.start(i64 4, i8* %771) #1
  %772 = load i32, i32* %wi, align 4, !tbaa !5
  %cmp1650 = icmp sle i32 %772, 0
  br i1 %cmp1650, label %if.then.1652, label %if.end.1659

if.then.1652:                                     ; preds = %if.end.1643
  %773 = load i32, i32* %wi, align 4, !tbaa !5
  %cmp1653 = icmp eq i32 %773, 0
  br i1 %cmp1653, label %if.then.1655, label %if.end.1656

if.then.1655:                                     ; preds = %if.then.1652
  br label %mt

if.end.1656:                                      ; preds = %if.then.1652
  %774 = load i32, i32* %wi, align 4, !tbaa !5
  %775 = load i32, i32* %xi, align 4, !tbaa !5
  %add1657 = add nsw i32 %775, %774
  store i32 %add1657, i32* %xi, align 4, !tbaa !5
  %776 = load i32, i32* %wi, align 4, !tbaa !5
  %sub1658 = sub nsw i32 0, %776
  store i32 %sub1658, i32* %wi, align 4, !tbaa !5
  br label %if.end.1659

if.end.1659:                                      ; preds = %if.end.1656, %if.end.1643
  %777 = load i32, i32* %xi, align 4, !tbaa !5
  %778 = load i32, i32* %wi, align 4, !tbaa !5
  %add1660 = add nsw i32 %777, %778
  store i32 %add1660, i32* %xei, align 4, !tbaa !5
  %779 = load i32, i32* %xmax, align 4, !tbaa !5
  %cmp1661 = icmp sgt i32 %add1660, %779
  br i1 %cmp1661, label %if.then.1666, label %lor.lhs.false.1663

lor.lhs.false.1663:                               ; preds = %if.end.1659
  %780 = load i32, i32* %xi, align 4, !tbaa !5
  %781 = load i32, i32* %xmin, align 4, !tbaa !5
  %cmp1664 = icmp slt i32 %780, %781
  br i1 %cmp1664, label %if.then.1666, label %if.end.1683

if.then.1666:                                     ; preds = %lor.lhs.false.1663, %if.end.1659
  %782 = load i32, i32* %xi, align 4, !tbaa !5
  %783 = load i32, i32* %xmin, align 4, !tbaa !5
  %cmp1667 = icmp slt i32 %782, %783
  br i1 %cmp1667, label %if.then.1669, label %if.end.1672

if.then.1669:                                     ; preds = %if.then.1666
  %784 = load i32, i32* %xmin, align 4, !tbaa !5
  %785 = load i32, i32* %xi, align 4, !tbaa !5
  %sub1670 = sub nsw i32 %784, %785
  %786 = load i32, i32* %wi, align 4, !tbaa !5
  %sub1671 = sub nsw i32 %786, %sub1670
  store i32 %sub1671, i32* %wi, align 4, !tbaa !5
  %787 = load i32, i32* %xmin, align 4, !tbaa !5
  store i32 %787, i32* %xi, align 4, !tbaa !5
  br label %if.end.1672

if.end.1672:                                      ; preds = %if.then.1669, %if.then.1666
  %788 = load i32, i32* %xei, align 4, !tbaa !5
  %789 = load i32, i32* %xmax, align 4, !tbaa !5
  %cmp1673 = icmp sgt i32 %788, %789
  br i1 %cmp1673, label %if.then.1675, label %if.end.1678

if.then.1675:                                     ; preds = %if.end.1672
  %790 = load i32, i32* %xei, align 4, !tbaa !5
  %791 = load i32, i32* %xmax, align 4, !tbaa !5
  %sub1676 = sub nsw i32 %790, %791
  %792 = load i32, i32* %wi, align 4, !tbaa !5
  %sub1677 = sub nsw i32 %792, %sub1676
  store i32 %sub1677, i32* %wi, align 4, !tbaa !5
  br label %if.end.1678

if.end.1678:                                      ; preds = %if.then.1675, %if.end.1672
  %793 = load i32, i32* %wi, align 4, !tbaa !5
  %cmp1679 = icmp sle i32 %793, 0
  br i1 %cmp1679, label %if.then.1681, label %if.end.1682

if.then.1681:                                     ; preds = %if.end.1678
  br label %mt

if.end.1682:                                      ; preds = %if.end.1678
  br label %if.end.1683

if.end.1683:                                      ; preds = %if.end.1682, %lor.lhs.false.1663
  %794 = load i8, i8* %run, align 1, !tbaa !101
  %conv1684 = zext i8 %794 to i32
  switch i32 %conv1684, label %sw.default [
    i32 0, label %sw.bb.1685
    i32 255, label %sw.bb.1696
  ]

sw.bb.1685:                                       ; preds = %if.end.1683
  %795 = load i32, i32* %masked, align 4, !tbaa !5
  %tobool1686 = icmp ne i32 %795, 0
  br i1 %tobool1686, label %if.then.1687, label %if.end.1688

if.then.1687:                                     ; preds = %sw.bb.1685
  br label %mt

if.end.1688:                                      ; preds = %sw.bb.1685
  %796 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icolor0 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %796, i32 0, i32 68
  %797 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %icolor0, align 8, !tbaa !92
  %type1689 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %797, i32 0, i32 0
  %798 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type1689, align 8, !tbaa !93
  %cmp1690 = icmp eq %struct.gx_device_color_type_s* %798, @gx_dc_type_data_pure
  br i1 %cmp1690, label %if.end.1693, label %if.then.1692

if.then.1692:                                     ; preds = %if.end.1688
  br label %ht

if.end.1693:                                      ; preds = %if.end.1688
  %799 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_proc, align 8, !tbaa !1
  %800 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %801 = load i32, i32* %xi, align 4, !tbaa !5
  %802 = load i32, i32* %yt, align 4, !tbaa !5
  %803 = load i32, i32* %wi, align 4, !tbaa !5
  %804 = load i32, i32* %iht, align 4, !tbaa !5
  %805 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icolor01694 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %805, i32 0, i32 68
  %806 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %icolor01694, align 8, !tbaa !92
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %806, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  %807 = load i64, i64* %pure, align 8, !tbaa !167
  %call1695 = call i32 %799(%struct.gx_device_s* %800, i32 %801, i32 %802, i32 %803, i32 %804, i64 %807) #5
  store i32 %call1695, i32* %code, align 4, !tbaa !5
  br label %sw.epilog.1794

sw.bb.1696:                                       ; preds = %if.end.1683
  %808 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icolor11697 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %808, i32 0, i32 69
  %809 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %icolor11697, align 8, !tbaa !100
  %type1698 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %809, i32 0, i32 0
  %810 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type1698, align 8, !tbaa !93
  %cmp1699 = icmp eq %struct.gx_device_color_type_s* %810, @gx_dc_type_data_pure
  br i1 %cmp1699, label %if.end.1702, label %if.then.1701

if.then.1701:                                     ; preds = %sw.bb.1696
  br label %ht

if.end.1702:                                      ; preds = %sw.bb.1696
  %811 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_proc, align 8, !tbaa !1
  %812 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %813 = load i32, i32* %xi, align 4, !tbaa !5
  %814 = load i32, i32* %yt, align 4, !tbaa !5
  %815 = load i32, i32* %wi, align 4, !tbaa !5
  %816 = load i32, i32* %iht, align 4, !tbaa !5
  %817 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icolor11703 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %817, i32 0, i32 69
  %818 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %icolor11703, align 8, !tbaa !100
  %colors1704 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %818, i32 0, i32 1
  %pure1705 = bitcast %union._c* %colors1704 to i64*
  %819 = load i64, i64* %pure1705, align 8, !tbaa !167
  %call1706 = call i32 %811(%struct.gx_device_s* %812, i32 %813, i32 %814, i32 %815, i32 %816, i64 %819) #5
  store i32 %call1706, i32* %code, align 4, !tbaa !5
  br label %sw.epilog.1794

sw.default:                                       ; preds = %if.end.1683
  br label %ht

ht:                                               ; preds = %sw.default, %if.then.1701, %if.then.1692
  %820 = load i8, i8* %run, align 1, !tbaa !101
  %conv1707 = zext i8 %820 to i32
  %821 = load i32, i32* %htrun, align 4, !tbaa !5
  %cmp1708 = icmp ne i32 %conv1707, %821
  br i1 %cmp1708, label %if.then.1710, label %if.end.1787

if.then.1710:                                     ; preds = %ht
  br label %do.body.1711

do.body.1711:                                     ; preds = %if.then.1710
  %822 = load i8, i8* %run, align 1, !tbaa !101
  %idxprom1712 = zext i8 %822 to i64
  %823 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %clues1713 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %823, i32 0, i32 65
  %824 = load %struct.gx_image_clue_s*, %struct.gx_image_clue_s** %clues1713, align 8, !tbaa !162
  %arrayidx1714 = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %824, i64 %idxprom1712
  %dev_color1715 = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %arrayidx1714, i32 0, i32 0
  store %struct.gx_device_color_s* %dev_color1715, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %825 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %type1716 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %825, i32 0, i32 0
  %826 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type1716, align 8, !tbaa !93
  %cmp1717 = icmp ne %struct.gx_device_color_type_s* %826, @gx_dc_type_data_none
  br i1 %cmp1717, label %if.else.1770, label %if.then.1719

if.then.1719:                                     ; preds = %do.body.1711
  %827 = load i8, i8* %run, align 1, !tbaa !101
  %conv1720 = zext i8 %827 to i32
  %828 = load i32, i32* %mask_base, align 4, !tbaa !5
  %sub1721 = sub i32 %conv1720, %828
  %829 = load i32, i32* %mask_limit, align 4, !tbaa !5
  %cmp1722 = icmp ult i32 %sub1721, %829
  br i1 %cmp1722, label %if.then.1724, label %if.else.1726

if.then.1724:                                     ; preds = %if.then.1719
  %830 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %type1725 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %830, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_null, %struct.gx_device_color_type_s** %type1725, align 8, !tbaa !93
  br label %if.end.1769

if.else.1726:                                     ; preds = %if.then.1719
  %831 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map1727 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %831, i32 0, i32 64
  %arrayidx1728 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map1727, i32 0, i64 0
  %decoding1729 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx1728, i32 0, i32 3
  %832 = load i32, i32* %decoding1729, align 4, !tbaa !50
  switch i32 %832, label %sw.epilog.1763 [
    i32 0, label %sw.bb.1730
    i32 1, label %sw.bb.1737
    i32 2, label %sw.bb.1748
  ]

sw.bb.1730:                                       ; preds = %if.else.1726
  %833 = load i8, i8* %run, align 1, !tbaa !101
  %conv1731 = zext i8 %833 to i32
  %conv1732 = sitofp i32 %conv1731 to float
  %mul1733 = fmul float %conv1732, 0x3F70101020000000
  %paint1734 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values1735 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint1734, i32 0, i32 0
  %arrayidx1736 = getelementptr inbounds [64 x float], [64 x float]* %values1735, i32 0, i64 0
  store float %mul1733, float* %arrayidx1736, align 4, !tbaa !53
  br label %sw.epilog.1763

sw.bb.1737:                                       ; preds = %if.else.1726
  %834 = load i8, i8* %run, align 1, !tbaa !101
  %conv1738 = zext i8 %834 to i32
  %shr1739 = ashr i32 %conv1738, 4
  %idxprom1740 = sext i32 %shr1739 to i64
  %835 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map1741 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %835, i32 0, i32 64
  %arrayidx1742 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map1741, i32 0, i64 0
  %decode_lookup1743 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx1742, i32 0, i32 1
  %arrayidx1744 = getelementptr inbounds [16 x float], [16 x float]* %decode_lookup1743, i32 0, i64 %idxprom1740
  %836 = load float, float* %arrayidx1744, align 4, !tbaa !53
  %paint1745 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values1746 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint1745, i32 0, i32 0
  %arrayidx1747 = getelementptr inbounds [64 x float], [64 x float]* %values1746, i32 0, i64 0
  store float %836, float* %arrayidx1747, align 4, !tbaa !53
  br label %sw.epilog.1763

sw.bb.1748:                                       ; preds = %if.else.1726
  %837 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map1749 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %837, i32 0, i32 64
  %arrayidx1750 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map1749, i32 0, i64 0
  %decode_lookup1751 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx1750, i32 0, i32 1
  %arrayidx1752 = getelementptr inbounds [16 x float], [16 x float]* %decode_lookup1751, i32 0, i64 0
  %838 = load float, float* %arrayidx1752, align 4, !tbaa !53
  %839 = load i8, i8* %run, align 1, !tbaa !101
  %conv1753 = zext i8 %839 to i32
  %conv1754 = sitofp i32 %conv1753 to float
  %840 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map1755 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %840, i32 0, i32 64
  %arrayidx1756 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map1755, i32 0, i64 0
  %decode_factor1757 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx1756, i32 0, i32 2
  %841 = load float, float* %decode_factor1757, align 4, !tbaa !52
  %mul1758 = fmul float %conv1754, %841
  %add1759 = fadd float %838, %mul1758
  %paint1760 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values1761 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint1760, i32 0, i32 0
  %arrayidx1762 = getelementptr inbounds [64 x float], [64 x float]* %values1761, i32 0, i64 0
  store float %add1759, float* %arrayidx1762, align 4, !tbaa !53
  br label %sw.epilog.1763

sw.epilog.1763:                                   ; preds = %sw.bb.1748, %if.else.1726, %sw.bb.1737, %sw.bb.1730
  %842 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_color, align 8, !tbaa !1
  %843 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %844 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %845 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %846 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call1764 = call i32 %842(%struct.gs_client_color_s* %cc, %struct.gs_color_space_s* %843, %struct.gx_device_color_s* %844, %struct.gs_imager_state_s* %845, %struct.gx_device_s* %846, i32 1) #5
  store i32 %call1764, i32* %code, align 4, !tbaa !5
  %847 = load i32, i32* %code, align 4, !tbaa !5
  %cmp1765 = icmp slt i32 %847, 0
  br i1 %cmp1765, label %if.then.1767, label %if.end.1768

if.then.1767:                                     ; preds = %sw.epilog.1763
  store i32 32, i32* %cleanup.dest.slot
  br label %cleanup.1810

if.end.1768:                                      ; preds = %sw.epilog.1763
  br label %if.end.1769

if.end.1769:                                      ; preds = %if.end.1768, %if.then.1724
  br label %if.end.1783

if.else.1770:                                     ; preds = %do.body.1711
  %848 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %type1771 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %848, i32 0, i32 0
  %849 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type1771, align 8, !tbaa !93
  %cmp1772 = icmp eq %struct.gx_device_color_type_s* %849, @gx_dc_type_data_pure
  br i1 %cmp1772, label %if.end.1782, label %if.then.1774

if.then.1774:                                     ; preds = %if.else.1770
  %850 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %type1775 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %850, i32 0, i32 0
  %851 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type1775, align 8, !tbaa !93
  %load1776 = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %851, i32 0, i32 4
  %852 = load i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %load1776, align 8, !tbaa !147
  %853 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %854 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %855 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call1777 = call i32 %852(%struct.gx_device_color_s* %853, %struct.gs_imager_state_s* %854, %struct.gx_device_s* %855, i32 1) #5
  store i32 %call1777, i32* %code, align 4, !tbaa !5
  %856 = load i32, i32* %code, align 4, !tbaa !5
  %cmp1778 = icmp slt i32 %856, 0
  br i1 %cmp1778, label %if.then.1780, label %if.end.1781

if.then.1780:                                     ; preds = %if.then.1774
  store i32 32, i32* %cleanup.dest.slot
  br label %cleanup.1810

if.end.1781:                                      ; preds = %if.then.1774
  br label %if.end.1782

if.end.1782:                                      ; preds = %if.end.1781, %if.else.1770
  br label %if.end.1783

if.end.1783:                                      ; preds = %if.end.1782, %if.end.1769
  br label %do.cond.1784

do.cond.1784:                                     ; preds = %if.end.1783
  br label %do.end.1785

do.end.1785:                                      ; preds = %do.cond.1784
  %857 = load i8, i8* %run, align 1, !tbaa !101
  %conv1786 = zext i8 %857 to i32
  store i32 %conv1786, i32* %htrun, align 4, !tbaa !5
  br label %if.end.1787

if.end.1787:                                      ; preds = %do.end.1785, %ht
  %858 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %type1788 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %858, i32 0, i32 0
  %859 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type1788, align 8, !tbaa !93
  %fill_rectangle1789 = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %859, i32 0, i32 5
  %860 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle1789, align 8, !tbaa !168
  %861 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %862 = load i32, i32* %xi, align 4, !tbaa !5
  %863 = load i32, i32* %yt, align 4, !tbaa !5
  %864 = load i32, i32* %wi, align 4, !tbaa !5
  %865 = load i32, i32* %iht, align 4, !tbaa !5
  %866 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %867 = load i32, i32* %lop, align 4, !tbaa !5
  %call1790 = call i32 %860(%struct.gx_device_color_s* %861, i32 %862, i32 %863, i32 %864, i32 %865, %struct.gx_device_s* %866, i32 %867, %struct.gx_rop_source_s* null) #5
  store i32 %call1790, i32* %code, align 4, !tbaa !5
  br label %do.body.1791

do.body.1791:                                     ; preds = %if.end.1787
  br label %do.cond.1792

do.cond.1792:                                     ; preds = %do.body.1791
  br label %do.end.1793

do.end.1793:                                      ; preds = %do.cond.1792
  br label %sw.epilog.1794

sw.epilog.1794:                                   ; preds = %do.end.1793, %if.end.1702, %if.end.1693
  %868 = load i32, i32* %code, align 4, !tbaa !5
  %cmp1795 = icmp slt i32 %868, 0
  br i1 %cmp1795, label %if.then.1797, label %if.end.1798

if.then.1797:                                     ; preds = %sw.epilog.1794
  store i32 32, i32* %cleanup.dest.slot
  br label %cleanup.1810

if.end.1798:                                      ; preds = %sw.epilog.1794
  br label %mt

mt:                                               ; preds = %if.end.1798, %if.then.1687, %if.then.1681, %if.then.1655
  %x1799 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state1800 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1799, i32 0, i32 0
  %Q1801 = getelementptr inbounds %struct._a, %struct._a* %state1800, i32 0, i32 0
  %869 = load i32, i32* %Q1801, align 4, !tbaa !137
  %870 = load i32, i32* %xa, align 4, !tbaa !5
  %sub1802 = sub nsw i32 %869, %870
  store i32 %sub1802, i32* %xrun, align 4, !tbaa !5
  %871 = load i8*, i8** %psrc, align 8, !tbaa !1
  %add.ptr1803 = getelementptr inbounds i8, i8* %871, i64 -1
  store i8* %add.ptr1803, i8** %rsrc, align 8, !tbaa !1
  %872 = load i8*, i8** %psrc, align 8, !tbaa !1
  %873 = load i8*, i8** %stop, align 8, !tbaa !1
  %cmp1804 = icmp ugt i8* %872, %873
  br i1 %cmp1804, label %if.then.1806, label %if.end.1808

if.then.1806:                                     ; preds = %mt
  %874 = load i8*, i8** %psrc, align 8, !tbaa !1
  %incdec.ptr1807 = getelementptr inbounds i8, i8* %874, i32 -1
  store i8* %incdec.ptr1807, i8** %psrc, align 8, !tbaa !1
  store i32 97, i32* %cleanup.dest.slot
  br label %cleanup.1810

if.end.1808:                                      ; preds = %mt
  %875 = load i8*, i8** %psrc, align 8, !tbaa !1
  %arrayidx1809 = getelementptr inbounds i8, i8* %875, i64 -1
  %876 = load i8, i8* %arrayidx1809, align 1, !tbaa !101
  store i8 %876, i8* %run, align 1, !tbaa !101
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.1810

cleanup.1810:                                     ; preds = %if.then.1797, %if.then.1780, %if.then.1767, %if.end.1808, %if.then.1806
  %877 = bitcast i32* %xei to i8*
  call void @llvm.lifetime.end(i64 4, i8* %877) #1
  %878 = bitcast i32* %wi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %878) #1
  %879 = bitcast i32* %xi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %879) #1
  %cleanup.dest.1813 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1813, label %cleanup.2037 [
    i32 0, label %cleanup.cont.1814
    i32 97, label %for.end.1850
  ]

cleanup.cont.1814:                                ; preds = %cleanup.1810
  br label %do.body.1815

do.body.1815:                                     ; preds = %cleanup.cont.1814
  %x1816 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %step1817 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1816, i32 0, i32 1
  %dR1818 = getelementptr inbounds %struct._e, %struct._e* %step1817, i32 0, i32 1
  %880 = load i32, i32* %dR1818, align 4, !tbaa !150
  %x1819 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state1820 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1819, i32 0, i32 0
  %R1821 = getelementptr inbounds %struct._a, %struct._a* %state1820, i32 0, i32 1
  %881 = load i32, i32* %R1821, align 4, !tbaa !155
  %sub1822 = sub i32 %881, %880
  store i32 %sub1822, i32* %R1821, align 4, !tbaa !155
  %x1823 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state1824 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1823, i32 0, i32 0
  %R1825 = getelementptr inbounds %struct._a, %struct._a* %state1824, i32 0, i32 1
  %882 = load i32, i32* %R1825, align 4, !tbaa !155
  %cmp1826 = icmp slt i32 %882, 0
  br i1 %cmp1826, label %if.then.1828, label %if.end.1840

if.then.1828:                                     ; preds = %do.body.1815
  %x1829 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state1830 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1829, i32 0, i32 0
  %Q1831 = getelementptr inbounds %struct._a, %struct._a* %state1830, i32 0, i32 0
  %883 = load i32, i32* %Q1831, align 4, !tbaa !137
  %inc1832 = add nsw i32 %883, 1
  store i32 %inc1832, i32* %Q1831, align 4, !tbaa !137
  %x1833 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %step1834 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1833, i32 0, i32 1
  %N1835 = getelementptr inbounds %struct._e, %struct._e* %step1834, i32 0, i32 2
  %884 = load i32, i32* %N1835, align 4, !tbaa !156
  %x1836 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state1837 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1836, i32 0, i32 0
  %R1838 = getelementptr inbounds %struct._a, %struct._a* %state1837, i32 0, i32 1
  %885 = load i32, i32* %R1838, align 4, !tbaa !155
  %add1839 = add i32 %885, %884
  store i32 %add1839, i32* %R1838, align 4, !tbaa !155
  br label %if.end.1840

if.end.1840:                                      ; preds = %if.then.1828, %do.body.1815
  %x1841 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %step1842 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1841, i32 0, i32 1
  %dQ1843 = getelementptr inbounds %struct._e, %struct._e* %step1842, i32 0, i32 0
  %886 = load i32, i32* %dQ1843, align 4, !tbaa !154
  %x1844 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state1845 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1844, i32 0, i32 0
  %Q1846 = getelementptr inbounds %struct._a, %struct._a* %state1845, i32 0, i32 0
  %887 = load i32, i32* %Q1846, align 4, !tbaa !137
  %add1847 = add nsw i32 %887, %886
  store i32 %add1847, i32* %Q1846, align 4, !tbaa !137
  br label %do.cond.1848

do.cond.1848:                                     ; preds = %if.end.1840
  br label %do.end.1849

do.end.1849:                                      ; preds = %do.cond.1848
  br label %for.cond.1480

for.end.1850:                                     ; preds = %cleanup.1810, %if.then.1537
  br label %if.end.1851

if.end.1851:                                      ; preds = %for.end.1850, %do.end.1476
  %888 = load i8*, i8** %stop, align 8, !tbaa !1
  %889 = load i8, i8* %888, align 1, !tbaa !101
  %conv1852 = zext i8 %889 to i32
  %cmp1853 = icmp ne i32 %conv1852, 0
  br i1 %cmp1853, label %if.then.1857, label %lor.lhs.false.1855

lor.lhs.false.1855:                               ; preds = %if.end.1851
  %890 = load i32, i32* %masked, align 4, !tbaa !5
  %tobool1856 = icmp ne i32 %890, 0
  br i1 %tobool1856, label %if.end.2036, label %if.then.1857

if.then.1857:                                     ; preds = %lor.lhs.false.1855, %if.end.1851
  %891 = bitcast i32* %xi1858 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %891) #1
  %892 = load i32, i32* %xrun, align 4, !tbaa !5
  %shr1859 = ashr i32 %892, 8
  store i32 %shr1859, i32* %xi1858, align 4, !tbaa !5
  %893 = bitcast i32* %wi1860 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %893) #1
  %894 = bitcast i32* %xei1861 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %894) #1
  br label %do.body.1862

do.body.1862:                                     ; preds = %if.then.1857
  %895 = bitcast i32* %n_1863 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %895) #1
  %896 = load i8*, i8** %endp, align 8, !tbaa !1
  %897 = load i8*, i8** %stop, align 8, !tbaa !1
  %sub.ptr.lhs.cast1864 = ptrtoint i8* %896 to i64
  %sub.ptr.rhs.cast1865 = ptrtoint i8* %897 to i64
  %sub.ptr.sub1866 = sub i64 %sub.ptr.lhs.cast1864, %sub.ptr.rhs.cast1865
  %conv1867 = trunc i64 %sub.ptr.sub1866 to i32
  store i32 %conv1867, i32* %n_1863, align 4, !tbaa !5
  %x1868 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %step1869 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1868, i32 0, i32 1
  %dQ1870 = getelementptr inbounds %struct._e, %struct._e* %step1869, i32 0, i32 0
  %898 = load i32, i32* %dQ1870, align 4, !tbaa !154
  %conv1871 = sext i32 %898 to i64
  %899 = load i8*, i8** %endp, align 8, !tbaa !1
  %900 = load i8*, i8** %stop, align 8, !tbaa !1
  %sub.ptr.lhs.cast1872 = ptrtoint i8* %899 to i64
  %sub.ptr.rhs.cast1873 = ptrtoint i8* %900 to i64
  %sub.ptr.sub1874 = sub i64 %sub.ptr.lhs.cast1872, %sub.ptr.rhs.cast1873
  %mul1875 = mul nsw i64 %conv1871, %sub.ptr.sub1874
  %x1876 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state1877 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1876, i32 0, i32 0
  %Q1878 = getelementptr inbounds %struct._a, %struct._a* %state1877, i32 0, i32 0
  %901 = load i32, i32* %Q1878, align 4, !tbaa !137
  %conv1879 = sext i32 %901 to i64
  %add1880 = add nsw i64 %conv1879, %mul1875
  %conv1881 = trunc i64 %add1880 to i32
  store i32 %conv1881, i32* %Q1878, align 4, !tbaa !137
  br label %while.cond.1882

while.cond.1882:                                  ; preds = %if.end.1910, %do.body.1862
  %902 = load i32, i32* %n_1863, align 4, !tbaa !5
  %dec1883 = add i32 %902, -1
  store i32 %dec1883, i32* %n_1863, align 4, !tbaa !5
  %tobool1884 = icmp ne i32 %902, 0
  br i1 %tobool1884, label %while.body.1885, label %while.end.1911

while.body.1885:                                  ; preds = %while.cond.1882
  %x1886 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %step1887 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1886, i32 0, i32 1
  %dR1888 = getelementptr inbounds %struct._e, %struct._e* %step1887, i32 0, i32 1
  %903 = load i32, i32* %dR1888, align 4, !tbaa !150
  %x1889 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state1890 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1889, i32 0, i32 0
  %R1891 = getelementptr inbounds %struct._a, %struct._a* %state1890, i32 0, i32 1
  %904 = load i32, i32* %R1891, align 4, !tbaa !155
  %sub1892 = sub i32 %904, %903
  store i32 %sub1892, i32* %R1891, align 4, !tbaa !155
  %x1893 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state1894 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1893, i32 0, i32 0
  %R1895 = getelementptr inbounds %struct._a, %struct._a* %state1894, i32 0, i32 1
  %905 = load i32, i32* %R1895, align 4, !tbaa !155
  %cmp1896 = icmp slt i32 %905, 0
  br i1 %cmp1896, label %if.then.1898, label %if.end.1910

if.then.1898:                                     ; preds = %while.body.1885
  %x1899 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state1900 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1899, i32 0, i32 0
  %Q1901 = getelementptr inbounds %struct._a, %struct._a* %state1900, i32 0, i32 0
  %906 = load i32, i32* %Q1901, align 4, !tbaa !137
  %inc1902 = add nsw i32 %906, 1
  store i32 %inc1902, i32* %Q1901, align 4, !tbaa !137
  %x1903 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %step1904 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1903, i32 0, i32 1
  %N1905 = getelementptr inbounds %struct._e, %struct._e* %step1904, i32 0, i32 2
  %907 = load i32, i32* %N1905, align 4, !tbaa !156
  %x1906 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state1907 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1906, i32 0, i32 0
  %R1908 = getelementptr inbounds %struct._a, %struct._a* %state1907, i32 0, i32 1
  %908 = load i32, i32* %R1908, align 4, !tbaa !155
  %add1909 = add i32 %908, %907
  store i32 %add1909, i32* %R1908, align 4, !tbaa !155
  br label %if.end.1910

if.end.1910:                                      ; preds = %if.then.1898, %while.body.1885
  br label %while.cond.1882

while.end.1911:                                   ; preds = %while.cond.1882
  %909 = bitcast i32* %n_1863 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %909) #1
  br label %do.cond.1912

do.cond.1912:                                     ; preds = %while.end.1911
  br label %do.end.1913

do.end.1913:                                      ; preds = %do.cond.1912
  %x1914 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %next, i32 0, i32 0
  %state1915 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1914, i32 0, i32 0
  %Q1916 = getelementptr inbounds %struct._a, %struct._a* %state1915, i32 0, i32 0
  %910 = load i32, i32* %Q1916, align 4, !tbaa !137
  %shr1917 = ashr i32 %910, 8
  %911 = load i32, i32* %xi1858, align 4, !tbaa !5
  %sub1918 = sub nsw i32 %shr1917, %911
  store i32 %sub1918, i32* %wi1860, align 4, !tbaa !5
  %912 = load i32, i32* %wi1860, align 4, !tbaa !5
  %cmp1919 = icmp sle i32 %912, 0
  br i1 %cmp1919, label %if.then.1921, label %if.end.1928

if.then.1921:                                     ; preds = %do.end.1913
  %913 = load i32, i32* %wi1860, align 4, !tbaa !5
  %cmp1922 = icmp eq i32 %913, 0
  br i1 %cmp1922, label %if.then.1924, label %if.end.1925

if.then.1924:                                     ; preds = %if.then.1921
  br label %lmt

if.end.1925:                                      ; preds = %if.then.1921
  %914 = load i32, i32* %wi1860, align 4, !tbaa !5
  %915 = load i32, i32* %xi1858, align 4, !tbaa !5
  %add1926 = add nsw i32 %915, %914
  store i32 %add1926, i32* %xi1858, align 4, !tbaa !5
  %916 = load i32, i32* %wi1860, align 4, !tbaa !5
  %sub1927 = sub nsw i32 0, %916
  store i32 %sub1927, i32* %wi1860, align 4, !tbaa !5
  br label %if.end.1928

if.end.1928:                                      ; preds = %if.end.1925, %do.end.1913
  %917 = load i32, i32* %xi1858, align 4, !tbaa !5
  %918 = load i32, i32* %wi1860, align 4, !tbaa !5
  %add1929 = add nsw i32 %917, %918
  store i32 %add1929, i32* %xei1861, align 4, !tbaa !5
  %919 = load i32, i32* %xmax, align 4, !tbaa !5
  %cmp1930 = icmp sgt i32 %add1929, %919
  br i1 %cmp1930, label %if.then.1935, label %lor.lhs.false.1932

lor.lhs.false.1932:                               ; preds = %if.end.1928
  %920 = load i32, i32* %xi1858, align 4, !tbaa !5
  %921 = load i32, i32* %xmin, align 4, !tbaa !5
  %cmp1933 = icmp slt i32 %920, %921
  br i1 %cmp1933, label %if.then.1935, label %if.end.1952

if.then.1935:                                     ; preds = %lor.lhs.false.1932, %if.end.1928
  %922 = load i32, i32* %xi1858, align 4, !tbaa !5
  %923 = load i32, i32* %xmin, align 4, !tbaa !5
  %cmp1936 = icmp slt i32 %922, %923
  br i1 %cmp1936, label %if.then.1938, label %if.end.1941

if.then.1938:                                     ; preds = %if.then.1935
  %924 = load i32, i32* %xmin, align 4, !tbaa !5
  %925 = load i32, i32* %xi1858, align 4, !tbaa !5
  %sub1939 = sub nsw i32 %924, %925
  %926 = load i32, i32* %wi1860, align 4, !tbaa !5
  %sub1940 = sub nsw i32 %926, %sub1939
  store i32 %sub1940, i32* %wi1860, align 4, !tbaa !5
  %927 = load i32, i32* %xmin, align 4, !tbaa !5
  store i32 %927, i32* %xi1858, align 4, !tbaa !5
  br label %if.end.1941

if.end.1941:                                      ; preds = %if.then.1938, %if.then.1935
  %928 = load i32, i32* %xei1861, align 4, !tbaa !5
  %929 = load i32, i32* %xmax, align 4, !tbaa !5
  %cmp1942 = icmp sgt i32 %928, %929
  br i1 %cmp1942, label %if.then.1944, label %if.end.1947

if.then.1944:                                     ; preds = %if.end.1941
  %930 = load i32, i32* %xei1861, align 4, !tbaa !5
  %931 = load i32, i32* %xmax, align 4, !tbaa !5
  %sub1945 = sub nsw i32 %930, %931
  %932 = load i32, i32* %wi1860, align 4, !tbaa !5
  %sub1946 = sub nsw i32 %932, %sub1945
  store i32 %sub1946, i32* %wi1860, align 4, !tbaa !5
  br label %if.end.1947

if.end.1947:                                      ; preds = %if.then.1944, %if.end.1941
  %933 = load i32, i32* %wi1860, align 4, !tbaa !5
  %cmp1948 = icmp sle i32 %933, 0
  br i1 %cmp1948, label %if.then.1950, label %if.end.1951

if.then.1950:                                     ; preds = %if.end.1947
  br label %lmt

if.end.1951:                                      ; preds = %if.end.1947
  br label %if.end.1952

if.end.1952:                                      ; preds = %if.end.1951, %lor.lhs.false.1932
  br label %do.body.1953

do.body.1953:                                     ; preds = %if.end.1952
  %934 = load i8*, i8** %stop, align 8, !tbaa !1
  %935 = load i8, i8* %934, align 1, !tbaa !101
  %idxprom1954 = zext i8 %935 to i64
  %936 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %clues1955 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %936, i32 0, i32 65
  %937 = load %struct.gx_image_clue_s*, %struct.gx_image_clue_s** %clues1955, align 8, !tbaa !162
  %arrayidx1956 = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %937, i64 %idxprom1954
  %dev_color1957 = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %arrayidx1956, i32 0, i32 0
  store %struct.gx_device_color_s* %dev_color1957, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %938 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %type1958 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %938, i32 0, i32 0
  %939 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type1958, align 8, !tbaa !93
  %cmp1959 = icmp ne %struct.gx_device_color_type_s* %939, @gx_dc_type_data_none
  br i1 %cmp1959, label %if.else.2012, label %if.then.1961

if.then.1961:                                     ; preds = %do.body.1953
  %940 = load i8*, i8** %stop, align 8, !tbaa !1
  %941 = load i8, i8* %940, align 1, !tbaa !101
  %conv1962 = zext i8 %941 to i32
  %942 = load i32, i32* %mask_base, align 4, !tbaa !5
  %sub1963 = sub i32 %conv1962, %942
  %943 = load i32, i32* %mask_limit, align 4, !tbaa !5
  %cmp1964 = icmp ult i32 %sub1963, %943
  br i1 %cmp1964, label %if.then.1966, label %if.else.1968

if.then.1966:                                     ; preds = %if.then.1961
  %944 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %type1967 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %944, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_null, %struct.gx_device_color_type_s** %type1967, align 8, !tbaa !93
  br label %if.end.2011

if.else.1968:                                     ; preds = %if.then.1961
  %945 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map1969 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %945, i32 0, i32 64
  %arrayidx1970 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map1969, i32 0, i64 0
  %decoding1971 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx1970, i32 0, i32 3
  %946 = load i32, i32* %decoding1971, align 4, !tbaa !50
  switch i32 %946, label %sw.epilog.2005 [
    i32 0, label %sw.bb.1972
    i32 1, label %sw.bb.1979
    i32 2, label %sw.bb.1990
  ]

sw.bb.1972:                                       ; preds = %if.else.1968
  %947 = load i8*, i8** %stop, align 8, !tbaa !1
  %948 = load i8, i8* %947, align 1, !tbaa !101
  %conv1973 = zext i8 %948 to i32
  %conv1974 = sitofp i32 %conv1973 to float
  %mul1975 = fmul float %conv1974, 0x3F70101020000000
  %paint1976 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values1977 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint1976, i32 0, i32 0
  %arrayidx1978 = getelementptr inbounds [64 x float], [64 x float]* %values1977, i32 0, i64 0
  store float %mul1975, float* %arrayidx1978, align 4, !tbaa !53
  br label %sw.epilog.2005

sw.bb.1979:                                       ; preds = %if.else.1968
  %949 = load i8*, i8** %stop, align 8, !tbaa !1
  %950 = load i8, i8* %949, align 1, !tbaa !101
  %conv1980 = zext i8 %950 to i32
  %shr1981 = ashr i32 %conv1980, 4
  %idxprom1982 = sext i32 %shr1981 to i64
  %951 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map1983 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %951, i32 0, i32 64
  %arrayidx1984 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map1983, i32 0, i64 0
  %decode_lookup1985 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx1984, i32 0, i32 1
  %arrayidx1986 = getelementptr inbounds [16 x float], [16 x float]* %decode_lookup1985, i32 0, i64 %idxprom1982
  %952 = load float, float* %arrayidx1986, align 4, !tbaa !53
  %paint1987 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values1988 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint1987, i32 0, i32 0
  %arrayidx1989 = getelementptr inbounds [64 x float], [64 x float]* %values1988, i32 0, i64 0
  store float %952, float* %arrayidx1989, align 4, !tbaa !53
  br label %sw.epilog.2005

sw.bb.1990:                                       ; preds = %if.else.1968
  %953 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map1991 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %953, i32 0, i32 64
  %arrayidx1992 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map1991, i32 0, i64 0
  %decode_lookup1993 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx1992, i32 0, i32 1
  %arrayidx1994 = getelementptr inbounds [16 x float], [16 x float]* %decode_lookup1993, i32 0, i64 0
  %954 = load float, float* %arrayidx1994, align 4, !tbaa !53
  %955 = load i8*, i8** %stop, align 8, !tbaa !1
  %956 = load i8, i8* %955, align 1, !tbaa !101
  %conv1995 = zext i8 %956 to i32
  %conv1996 = sitofp i32 %conv1995 to float
  %957 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map1997 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %957, i32 0, i32 64
  %arrayidx1998 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map1997, i32 0, i64 0
  %decode_factor1999 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx1998, i32 0, i32 2
  %958 = load float, float* %decode_factor1999, align 4, !tbaa !52
  %mul2000 = fmul float %conv1996, %958
  %add2001 = fadd float %954, %mul2000
  %paint2002 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values2003 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint2002, i32 0, i32 0
  %arrayidx2004 = getelementptr inbounds [64 x float], [64 x float]* %values2003, i32 0, i64 0
  store float %add2001, float* %arrayidx2004, align 4, !tbaa !53
  br label %sw.epilog.2005

sw.epilog.2005:                                   ; preds = %sw.bb.1990, %if.else.1968, %sw.bb.1979, %sw.bb.1972
  %959 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_color, align 8, !tbaa !1
  %960 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %961 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %962 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %963 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call2006 = call i32 %959(%struct.gs_client_color_s* %cc, %struct.gs_color_space_s* %960, %struct.gx_device_color_s* %961, %struct.gs_imager_state_s* %962, %struct.gx_device_s* %963, i32 1) #5
  store i32 %call2006, i32* %code, align 4, !tbaa !5
  %964 = load i32, i32* %code, align 4, !tbaa !5
  %cmp2007 = icmp slt i32 %964, 0
  br i1 %cmp2007, label %if.then.2009, label %if.end.2010

if.then.2009:                                     ; preds = %sw.epilog.2005
  store i32 32, i32* %cleanup.dest.slot
  br label %cleanup.2031

if.end.2010:                                      ; preds = %sw.epilog.2005
  br label %if.end.2011

if.end.2011:                                      ; preds = %if.end.2010, %if.then.1966
  br label %if.end.2025

if.else.2012:                                     ; preds = %do.body.1953
  %965 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %type2013 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %965, i32 0, i32 0
  %966 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type2013, align 8, !tbaa !93
  %cmp2014 = icmp eq %struct.gx_device_color_type_s* %966, @gx_dc_type_data_pure
  br i1 %cmp2014, label %if.end.2024, label %if.then.2016

if.then.2016:                                     ; preds = %if.else.2012
  %967 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %type2017 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %967, i32 0, i32 0
  %968 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type2017, align 8, !tbaa !93
  %load2018 = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %968, i32 0, i32 4
  %969 = load i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %load2018, align 8, !tbaa !147
  %970 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %971 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %972 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call2019 = call i32 %969(%struct.gx_device_color_s* %970, %struct.gs_imager_state_s* %971, %struct.gx_device_s* %972, i32 1) #5
  store i32 %call2019, i32* %code, align 4, !tbaa !5
  %973 = load i32, i32* %code, align 4, !tbaa !5
  %cmp2020 = icmp slt i32 %973, 0
  br i1 %cmp2020, label %if.then.2022, label %if.end.2023

if.then.2022:                                     ; preds = %if.then.2016
  store i32 32, i32* %cleanup.dest.slot
  br label %cleanup.2031

if.end.2023:                                      ; preds = %if.then.2016
  br label %if.end.2024

if.end.2024:                                      ; preds = %if.end.2023, %if.else.2012
  br label %if.end.2025

if.end.2025:                                      ; preds = %if.end.2024, %if.end.2011
  br label %do.cond.2026

do.cond.2026:                                     ; preds = %if.end.2025
  br label %do.end.2027

do.end.2027:                                      ; preds = %do.cond.2026
  %974 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %type2028 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %974, i32 0, i32 0
  %975 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type2028, align 8, !tbaa !93
  %fill_rectangle2029 = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %975, i32 0, i32 5
  %976 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle2029, align 8, !tbaa !168
  %977 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %978 = load i32, i32* %xi1858, align 4, !tbaa !5
  %979 = load i32, i32* %yt, align 4, !tbaa !5
  %980 = load i32, i32* %wi1860, align 4, !tbaa !5
  %981 = load i32, i32* %iht, align 4, !tbaa !5
  %982 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %983 = load i32, i32* %lop, align 4, !tbaa !5
  %call2030 = call i32 %976(%struct.gx_device_color_s* %977, i32 %978, i32 %979, i32 %980, i32 %981, %struct.gx_device_s* %982, i32 %983, %struct.gx_rop_source_s* null) #5
  store i32 %call2030, i32* %code, align 4, !tbaa !5
  br label %lmt

lmt:                                              ; preds = %do.end.2027, %if.then.1950, %if.then.1924
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.2031

cleanup.2031:                                     ; preds = %if.then.2022, %if.then.2009, %lmt
  %984 = bitcast i32* %xei1861 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %984) #1
  %985 = bitcast i32* %wi1860 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %985) #1
  %986 = bitcast i32* %xi1858 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %986) #1
  %cleanup.dest.2034 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.2034, label %cleanup.2037 [
    i32 0, label %cleanup.cont.2035
  ]

cleanup.cont.2035:                                ; preds = %cleanup.2031
  br label %if.end.2036

if.end.2036:                                      ; preds = %cleanup.cont.2035, %lor.lhs.false.1855
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.2037

cleanup.2037:                                     ; preds = %if.end.2036, %cleanup.2031, %cleanup.1810
  %987 = bitcast i32* %xmax to i8*
  call void @llvm.lifetime.end(i64 4, i8* %987) #1
  %988 = bitcast i32* %xmin to i8*
  call void @llvm.lifetime.end(i64 4, i8* %988) #1
  %989 = bitcast i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %989) #1
  %990 = bitcast i32* %iht to i8*
  call void @llvm.lifetime.end(i64 4, i8* %990) #1
  %991 = bitcast i32* %yt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %991) #1
  %992 = bitcast i32* %xa to i8*
  call void @llvm.lifetime.end(i64 4, i8* %992) #1
  %993 = bitcast i32* %dxx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %993) #1
  %994 = bitcast i32* %adjust1365 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %994) #1
  %cleanup.dest.2045 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.2045, label %cleanup.2059 [
    i32 0, label %cleanup.cont.2046
    i32 32, label %err
  ]

cleanup.cont.2046:                                ; preds = %cleanup.2037
  br label %if.end.2047

if.end.2047:                                      ; preds = %cleanup.cont.2046, %cleanup.cont.1363
  %995 = load i32, i32* %code, align 4, !tbaa !5
  %cmp2048 = icmp sge i32 %995, 0
  br i1 %cmp2048, label %if.then.2050, label %if.end.2051

if.then.2050:                                     ; preds = %if.end.2047
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.2059

if.end.2051:                                      ; preds = %if.end.2047
  br label %err

err:                                              ; preds = %if.end.2051, %cleanup.2037, %cleanup.1358
  %996 = load i8*, i8** %rsrc, align 8, !tbaa !1
  %997 = load i8*, i8** %psrc_initial, align 8, !tbaa !1
  %sub.ptr.lhs.cast2052 = ptrtoint i8* %996 to i64
  %sub.ptr.rhs.cast2053 = ptrtoint i8* %997 to i64
  %sub.ptr.sub2054 = sub i64 %sub.ptr.lhs.cast2052, %sub.ptr.rhs.cast2053
  %conv2055 = trunc i64 %sub.ptr.sub2054 to i32
  %998 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %used = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %998, i32 0, i32 52
  %x2056 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %used, i32 0, i32 0
  store i32 %conv2055, i32* %x2056, align 4, !tbaa !169
  %999 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %used2057 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %999, i32 0, i32 52
  %y2058 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %used2057, i32 0, i32 1
  store i32 0, i32* %y2058, align 4, !tbaa !170
  %1000 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %1000, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.2059

cleanup.2059:                                     ; preds = %err, %if.then.2050, %cleanup.2037, %cleanup.1358, %if.then
  %1001 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1001) #1
  %1002 = bitcast i32* %htrun to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1002) #1
  call void @llvm.lifetime.end(i64 1, i8* %run) #1
  %1003 = bitcast i32* %xrun to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1003) #1
  %1004 = bitcast i8** %stop to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1004) #1
  %1005 = bitcast i8** %endp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1005) #1
  %1006 = bitcast i8** %rsrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1006) #1
  %1007 = bitcast i8** %psrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1007) #1
  %1008 = bitcast i8** %psrc_initial to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1008) #1
  %1009 = bitcast %struct._e* %dxx4 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %1009) #1
  %1010 = bitcast %struct._e* %dxx3 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %1010) #1
  %1011 = bitcast %struct._e* %dxx2 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %1011) #1
  %1012 = bitcast %struct.gx_dda_fixed_point_s* %next to i8*
  call void @llvm.lifetime.end(i64 40, i8* %1012) #1
  %1013 = bitcast i32* %mask_limit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1013) #1
  %1014 = bitcast i32* %mask_base to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1014) #1
  %1015 = bitcast %struct.gx_device_color_s** %pdevc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1015) #1
  %1016 = bitcast %struct.gs_client_color_s* %cc to i8*
  call void @llvm.lifetime.end(i64 264, i8* %1016) #1
  %1017 = bitcast i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1017) #1
  %1018 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1018) #1
  %1019 = bitcast i32* %masked to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1019) #1
  %1020 = bitcast i32* %lop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1020) #1
  %1021 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1021) #1
  %1022 = load i32, i32* %retval
  ret i32 %1022
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind readnone
declare double @floor(double) #3

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

declare i32 @gxht_thresh_planes(%struct.gx_image_enum_s*, i32, i32, i32, i8*, %struct.gx_device_s*, i32*, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind readnone }
attributes #7 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 16}
!8 = !{!"gx_image_enum_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !9, i64 32, !6, i64 40, !6, i64 44, !3, i64 48, !3, i64 308, !6, i64 568, !6, i64 572, !3, i64 576, !3, i64 577, !3, i64 578, !3, i64 579, !3, i64 580, !10, i64 584, !3, i64 1116, !3, i64 1117, !3, i64 1118, !3, i64 1119, !11, i64 1120, !13, i64 1144, !14, i64 1160, !6, i64 1176, !6, i64 1180, !15, i64 1184, !15, i64 1192, !2, i64 1200, !2, i64 1208, !2, i64 1216, !2, i64 1224, !2, i64 1232, !6, i64 1240, !2, i64 1248, !6, i64 1256, !6, i64 1260, !3, i64 1264, !3, i64 1268, !3, i64 1269, !3, i64 1270, !3, i64 1271, !16, i64 1272, !16, i64 1288, !6, i64 1304, !6, i64 1308, !6, i64 1312, !6, i64 1316, !2, i64 1320, !2, i64 1328, !2, i64 1336, !6, i64 1344, !17, i64 1348, !15, i64 1356, !15, i64 1364, !18, i64 1372, !6, i64 1492, !6, i64 1496, !17, i64 1500, !6, i64 1508, !6, i64 1512, !6, i64 1516, !6, i64 1520, !6, i64 1524, !3, i64 1528, !2, i64 23112, !23, i64 23120, !23, i64 23776, !2, i64 24432, !2, i64 24440, !2, i64 24448, !2, i64 24456, !2, i64 24464, !6, i64 24472, !6, i64 24476, !6, i64 24480, !2, i64 24488, !6, i64 24496, !3, i64 24500, !28, i64 24504, !29, i64 24792, !6, i64 24808}
!9 = !{!"long", !3, i64 0}
!10 = !{!"mc_", !3, i64 0, !6, i64 520, !6, i64 524, !6, i64 528}
!11 = !{!"gs_matrix_s", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20}
!12 = !{!"float", !3, i64 0}
!13 = !{!"r_", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!14 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!15 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!16 = !{!"gs_fixed_rect_s", !15, i64 0, !15, i64 8}
!17 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!18 = !{!"dd_", !19, i64 0, !19, i64 40, !19, i64 80}
!19 = !{!"gx_dda_fixed_point_s", !20, i64 0, !20, i64 20}
!20 = !{!"gx_dda_fixed_s", !21, i64 0, !22, i64 8}
!21 = !{!"_a", !6, i64 0, !6, i64 4}
!22 = !{!"_e", !6, i64 0, !6, i64 4, !6, i64 8}
!23 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !17, i64 352, !6, i64 360, !24, i64 368, !26, i64 632}
!24 = !{!"gs_client_color_s", !2, i64 0, !25, i64 8}
!25 = !{!"gs_paint_color_s", !3, i64 0}
!26 = !{!"_mask", !27, i64 0, !9, i64 8, !2, i64 16}
!27 = !{!"mp_", !6, i64 0, !6, i64 4}
!28 = !{!"ht_landscape_info_s", !6, i64 0, !3, i64 4, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284}
!29 = !{!"gx_image_icc_setup_s", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!30 = !{!31, !6, i64 848}
!31 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !32, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !33, i64 96, !36, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !9, i64 968, !9, i64 976, !37, i64 984, !6, i64 1052, !6, i64 1056, !38, i64 1064, !2, i64 1104, !3, i64 1112, !40, i64 1120, !41, i64 1144}
!32 = !{!"rc_header_s", !9, i64 0, !2, i64 8, !2, i64 16}
!33 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !34, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !35, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !9, i64 704, !6, i64 712}
!34 = !{!"short", !3, i64 0}
!35 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!36 = !{!"gx_device_cached_colors_s", !9, i64 0, !9, i64 8}
!37 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!38 = !{!"gdev_space_params_s", !9, i64 0, !9, i64 8, !39, i64 16, !6, i64 32, !3, i64 36}
!39 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !9, i64 8}
!40 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!41 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!42 = !{!8, !3, i64 579}
!43 = !{!31, !6, i64 100}
!44 = !{!31, !34, i64 108}
!45 = !{!8, !2, i64 1224}
!46 = !{!8, !3, i64 576}
!47 = !{!8, !3, i64 1264}
!48 = !{!8, !3, i64 24500}
!49 = !{!8, !6, i64 24792}
!50 = !{!51, !3, i64 324}
!51 = !{!"sample_map_s", !3, i64 0, !3, i64 256, !12, i64 320, !3, i64 324, !6, i64 328}
!52 = !{!51, !12, i64 320}
!53 = !{!12, !12, i64 0}
!54 = !{!31, !2, i64 1680}
!55 = !{!8, !2, i64 1216}
!56 = !{!57, !6, i64 328}
!57 = !{!"gs_imager_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !58, i64 24, !6, i64 128, !60, i64 132, !6, i64 168, !61, i64 176, !61, i64 192, !6, i64 208, !6, i64 212, !34, i64 216, !3, i64 220, !63, i64 224, !63, i64 228, !64, i64 232, !9, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !12, i64 296, !15, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !12, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !65, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !66, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !66, i64 1336}
!58 = !{!"gx_line_params_s", !12, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !6, i64 36, !11, i64 40, !59, i64 64}
!59 = !{!"gx_dash_params_s", !2, i64 0, !6, i64 8, !12, i64 12, !6, i64 16, !12, i64 20, !6, i64 24, !6, i64 28, !12, i64 32}
!60 = !{!"gs_matrix_fixed_s", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!61 = !{!"gs_point_s", !62, i64 0, !62, i64 8}
!62 = !{!"double", !3, i64 0}
!63 = !{!"gs_transparency_source_s", !12, i64 0}
!64 = !{!"gs_xstate_trans_flags", !6, i64 0, !6, i64 4}
!65 = !{!"gx_transfer_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !2, i64 56}
!66 = !{!"gs_devicen_color_map_s", !6, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !9, i64 16, !3, i64 24}
!67 = !{!68, !3, i64 4}
!68 = !{!"gsicc_rendering_param_s", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20}
!69 = !{!68, !3, i64 12}
!70 = !{!68, !6, i64 20}
!71 = !{!68, !3, i64 8}
!72 = !{!57, !6, i64 324}
!73 = !{!68, !3, i64 0}
!74 = !{!68, !3, i64 16}
!75 = !{!76, !2, i64 40}
!76 = !{!"gs_color_space_s", !2, i64 0, !32, i64 8, !9, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !3, i64 72}
!77 = !{!76, !2, i64 48}
!78 = !{!76, !2, i64 64}
!79 = !{!80, !6, i64 4}
!80 = !{!"cmm_profile_s", !3, i64 0, !3, i64 1, !6, i64 4, !6, i64 8, !3, i64 12, !3, i64 16, !81, i64 20, !9, i64 144, !6, i64 152, !3, i64 156, !6, i64 216, !6, i64 220, !6, i64 224, !68, i64 228, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !32, i64 288, !6, i64 312, !2, i64 320, !2, i64 328, !2, i64 336}
!81 = !{!"gs_range_icc_s", !3, i64 0}
!82 = !{!8, !6, i64 24796}
!83 = !{!31, !3, i64 110}
!84 = !{!31, !6, i64 116}
!85 = !{!31, !6, i64 112}
!86 = !{!8, !6, i64 24800}
!87 = !{!8, !6, i64 24804}
!88 = !{!8, !2, i64 24448}
!89 = !{!8, !2, i64 24}
!90 = !{!8, !6, i64 24808}
!91 = !{!8, !3, i64 1118}
!92 = !{!8, !2, i64 24432}
!93 = !{!23, !2, i64 0}
!94 = !{!8, !3, i64 1268}
!95 = !{!8, !3, i64 1270}
!96 = !{!8, !3, i64 1269}
!97 = !{!8, !12, i64 1120}
!98 = !{!8, !6, i64 1312}
!99 = !{!8, !3, i64 1116}
!100 = !{!8, !2, i64 24440}
!101 = !{!3, !3, i64 0}
!102 = !{!8, !6, i64 24476}
!103 = !{!8, !6, i64 24504}
!104 = !{!8, !6, i64 24780}
!105 = !{!8, !6, i64 1152}
!106 = !{!8, !6, i64 1452}
!107 = !{!8, !6, i64 1308}
!108 = !{!8, !6, i64 1184}
!109 = !{!8, !6, i64 1516}
!110 = !{!8, !6, i64 1256}
!111 = !{!8, !2, i64 24488}
!112 = !{!8, !2, i64 1248}
!113 = !{!8, !6, i64 1196}
!114 = !{!8, !6, i64 1524}
!115 = !{!8, !6, i64 1192}
!116 = !{!8, !6, i64 1188}
!117 = !{!8, !6, i64 24772}
!118 = !{!8, !6, i64 1520}
!119 = !{!8, !6, i64 24764}
!120 = !{!121, !6, i64 8}
!121 = !{!"gx_dda_int_s", !122, i64 0, !123, i64 8}
!122 = !{!"ia_", !6, i64 0, !6, i64 4}
!123 = !{!"ie_", !6, i64 0, !6, i64 4, !6, i64 8}
!124 = !{!121, !6, i64 12}
!125 = !{!121, !6, i64 16}
!126 = !{!121, !6, i64 0}
!127 = !{!121, !6, i64 4}
!128 = !{!8, !2, i64 24456}
!129 = !{!8, !6, i64 1180}
!130 = !{!8, !6, i64 24784}
!131 = !{!8, !6, i64 24768}
!132 = !{!8, !6, i64 24776}
!133 = !{!134, !2, i64 8}
!134 = !{!"gx_image_color_cache_s", !2, i64 0, !2, i64 8}
!135 = !{!8, !6, i64 1304}
!136 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !5, i64 12, i64 4, !5, i64 16, i64 4, !5, i64 20, i64 4, !5, i64 24, i64 4, !5, i64 28, i64 4, !5, i64 32, i64 4, !5, i64 36, i64 4, !5}
!137 = !{!19, !6, i64 0}
!138 = !{!76, !2, i64 0}
!139 = !{!140, !2, i64 72}
!140 = !{!"gs_color_space_type_s", !3, i64 0, !6, i64 4, !6, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128}
!141 = !{!8, !6, i64 1372}
!142 = !{!8, !6, i64 1356}
!143 = !{!8, !6, i64 1392}
!144 = !{!8, !6, i64 1360}
!145 = !{!31, !2, i64 1368}
!146 = !{!19, !6, i64 20}
!147 = !{!148, !2, i64 32}
!148 = !{!"gx_device_color_type_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!149 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !5}
!150 = !{!19, !6, i64 12}
!151 = !{!22, !6, i64 4}
!152 = !{!22, !6, i64 8}
!153 = !{!22, !6, i64 0}
!154 = !{!19, !6, i64 8}
!155 = !{!19, !6, i64 4}
!156 = !{!19, !6, i64 16}
!157 = !{!8, !12, i64 1124}
!158 = !{!19, !6, i64 32}
!159 = !{!19, !6, i64 24}
!160 = !{!19, !6, i64 36}
!161 = !{!19, !6, i64 28}
!162 = !{!8, !2, i64 23112}
!163 = !{!8, !6, i64 1512}
!164 = !{!31, !2, i64 1200}
!165 = !{!8, !6, i64 1272}
!166 = !{!8, !6, i64 1280}
!167 = !{!9, !9, i64 0}
!168 = !{!148, !2, i64 40}
!169 = !{!8, !6, i64 1348}
!170 = !{!8, !6, i64 1352}
