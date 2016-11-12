; ModuleID = './gshtx.bc'
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
%struct.gx_io_device_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gs_client_order_ht_procs_s = type { i32 (%struct.gx_ht_order_s*, %struct.gs_state_s*, %struct.gs_client_order_halftone_s*, %struct.gs_memory_s*)* }
%struct.gx_ht_order_s = type { %struct.gx_ht_cell_params_s, i16, i16, i16, i16, i16, i16, i32, i32, i32, %struct.gx_ht_order_procs_s*, %struct.gs_memory_s*, i32*, i8*, %struct.gx_ht_cache_s*, %struct.gx_transfer_map_s*, %struct.gx_ht_order_screen_params_s, i8*, i32 }
%struct.gx_ht_cell_params_s = type { i16, i16, i16, i16, i16, i16, i64, i16, i16, i32, i32, i32 }
%struct.gx_ht_order_procs_s = type { i32, i32 (%struct.gx_ht_order_s*, i8*)*, i32 (%struct.gx_ht_order_s*, i32, %struct.gs_int_point_s*)*, i32 (%struct.gx_ht_tile_s*, i32, %struct.gx_ht_order_s*)*, i32 (%struct.gx_ht_order_s*, i16, i8*, i32, i32, i32, i32, i32)* }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gx_ht_tile_s = type { %struct.gx_strip_bitmap_s, i32, i32 }
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gx_ht_cache_s = type { i8*, i32, %struct.gx_ht_tile_s*, i32, %struct.gx_ht_order_s, i32, i32, i32, i64, %struct.gx_ht_tile_s* (%struct.gx_ht_cache_s*, i32)* }
%struct.gx_transfer_map_s = type { %struct.rc_header_s, {}*, %struct.gs_mapping_closure_s, i64, [256 x i16] }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.gs_mapping_closure_s = type { float (double, %struct.gx_transfer_map_s*, i8*)*, i8* }
%struct.gx_ht_order_screen_params_s = type { %struct.gs_matrix_s, i64 }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s, %struct.gs_state_s*, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, %struct.gx_path_s*, %struct.gx_clip_path_s*, %struct.gx_clip_stack_s*, %struct.gx_clip_path_s*, i64, i64, %struct.gx_clip_path_s*, i32, [2 x %struct.anon], %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_matrix_fixed_s, i32, i32, i32, %struct.gs_state_s*, i32, %struct.gx_device_s*, %struct.gs_device_filter_stack_s*, %struct.gs_state_client_procs_s }
%struct.gx_line_params_s = type { float, i32, i32, i32, i32, i32, float, float, float, i32, %struct.gs_matrix_s, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { float*, i32, float, i32, float, i32, i32, float }
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
%struct.gs_imager_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s }
%struct.gs_halftone_s = type { i32, %struct.rc_header_s, %union.anon }
%union.anon = type { %struct.gs_colorscreen_halftone_s }
%struct.gs_colorscreen_halftone_s = type { %union._css }
%union._css = type { [4 x %struct.gs_screen_halftone_s] }
%struct.gs_screen_halftone_s = type { float, float, float (double, double)*, float, float }
%struct.gx_device_halftone_s = type { %struct.gx_ht_order_s, %struct.rc_header_s, i64, i32, %struct.gx_ht_order_component_s*, i32, i32, i32, i32 }
%struct.gx_ht_order_component_s = type { %struct.gx_ht_order_s, i32, i32 }
%struct.gs_cie_render_s = type opaque
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
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon.0 }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.stream_s = type opaque
%struct.client_color_space_data_s = type { void (%struct.gs_color_space_s*, i32)* }
%union.anon.0 = type { %struct.gs_device_n_params_s }
%struct.gs_device_n_params_s = type { i64*, i32, %struct.gs_device_n_map_s*, %struct.gs_device_n_attributes_s*, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gs_device_n_map_s = type opaque
%struct.gs_device_n_attributes_s = type opaque
%struct.gx_cie_joint_caches_s = type opaque
%struct.gs_devicen_color_map_s = type { i32, i32, i32, i32, i64, [64 x i32] }
%struct.gx_path_s = type opaque
%struct.gx_clip_stack_s = type opaque
%struct.gx_clip_path_s = type opaque
%struct.anon = type { %struct.gs_color_space_s*, %struct.gs_client_color_s*, %struct.gx_device_color_s* }
%struct.gs_font_s = type opaque
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i32, i32, i32 }
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
%struct.gx_fill_params_s = type opaque
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
%struct.gs_device_filter_stack_s = type { %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_s*, %struct.gx_device_s*, %struct.rc_header_s }
%struct.gs_device_filter_s = type opaque
%struct.gs_state_client_procs_s = type { i8* (%struct.gs_memory_s*)*, i32 (i8*, i8*)*, void (i8*, %struct.gs_memory_s*)*, i32 (i8*, i8*, i32)* }
%struct.gs_client_order_halftone_s = type { i32, i32, i32, %struct.gs_client_order_ht_procs_s*, i8*, %struct.gs_mapping_closure_s }
%struct.gs_halftone_component_s = type { i32, i32, i32, %union.anon.2 }
%union.anon.2 = type { %struct.gs_threshold2_halftone_s }
%struct.gs_threshold2_halftone_s = type { i32, i32, %struct.gs_mapping_closure_s, i32, i32, i32, %struct.gs_const_bytestring_s }
%struct.gs_const_bytestring_s = type { i8*, i32, i8* }
%struct.gs_multiple_halftone_s = type { %struct.gs_halftone_component_s*, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gs_spot_halftone_s = type { %struct.gs_screen_halftone_s, i32, float (double, %struct.gx_transfer_map_s*)*, %struct.gs_mapping_closure_s }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gs_threshold_halftone_s = type { i32, i32, %struct.gs_mapping_closure_s, %struct.gs_const_string_s, float (double, %struct.gx_transfer_map_s*)* }
%struct.gs_screen_enum_s = type { %struct.gs_halftone_s, %struct.gx_ht_order_s, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, %struct.gs_state_s* }
%struct.gx_ht_bit_s = type { i32, i32 }

@st_halftone = external constant %struct.gs_memory_struct_type_s, align 8
@.str = private unnamed_addr constant [12 x i8] c"gs_ht_build\00", align 1
@st_ht_component_element = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"gs_ht_release\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"gs_ht_install\00", align 1
@mask_order_procs = internal constant %struct.gs_client_order_ht_procs_s { i32 (%struct.gx_ht_order_s*, %struct.gs_state_s*, %struct.gs_client_order_halftone_s*, %struct.gs_memory_s*)* @create_mask_order }, align 8
@st_ht_order_component_element = external constant %struct.gs_memory_struct_type_s, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"alloc_ht_order\00", align 1
@st_transfer_map = external constant %struct.gs_memory_struct_type_s, align 8

; Function Attrs: nounwind uwtable
define i32 @gs_ht_build(%struct.gs_halftone_s** %ppht, i32 %num_comps, %struct.gs_memory_s* %pmem) #0 {
entry:
  %retval = alloca i32, align 4
  %ppht.addr = alloca %struct.gs_halftone_s**, align 8
  %num_comps.addr = alloca i32, align 4
  %pmem.addr = alloca %struct.gs_memory_s*, align 8
  %pht = alloca %struct.gs_halftone_s*, align 8
  %phtc = alloca %struct.gs_halftone_component_s*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_halftone_s** %ppht, %struct.gs_halftone_s*** %ppht.addr, align 8, !tbaa !1
  store i32 %num_comps, i32* %num_comps.addr, align 4, !tbaa !5
  store %struct.gs_memory_s* %pmem, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_halftone_s** %pht to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.gs_halftone_component_s** %phtc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gs_halftone_s**, %struct.gs_halftone_s*** %ppht.addr, align 8, !tbaa !1
  store %struct.gs_halftone_s* null, %struct.gs_halftone_s** %3, align 8, !tbaa !1
  %4 = load i32, i32* %num_comps.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %5, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %6 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !7
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %call = call i8* %6(%struct.gs_memory_s* %7, %struct.gs_memory_struct_type_s* @st_halftone, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0)) #3
  %8 = bitcast i8* %call to %struct.gs_halftone_s*
  store %struct.gs_halftone_s* %8, %struct.gs_halftone_s** %pht, align 8, !tbaa !1
  %cmp1 = icmp eq %struct.gs_halftone_s* %8, null
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %do.body
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  br label %do.body.3

do.body.3:                                        ; preds = %if.else
  %9 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %9, i32 0, i32 1
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  store i64 1, i64* %ref_count, align 8, !tbaa !10
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %11 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht, align 8, !tbaa !1
  %rc4 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %11, i32 0, i32 1
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc4, i32 0, i32 1
  store %struct.gs_memory_s* %10, %struct.gs_memory_s** %memory, align 8, !tbaa !14
  %12 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht, align 8, !tbaa !1
  %rc5 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %12, i32 0, i32 1
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc5, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @rc_free_struct_only, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !15
  br label %do.body.6

do.body.6:                                        ; preds = %do.body.3
  br label %do.cond

do.cond:                                          ; preds = %do.body.6
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.7

do.cond.7:                                        ; preds = %do.end
  br label %do.end.8

do.end.8:                                         ; preds = %do.cond.7
  br label %if.end.9

if.end.9:                                         ; preds = %do.end.8
  br label %do.cond.10

do.cond.10:                                       ; preds = %if.end.9
  br label %do.end.11

do.end.11:                                        ; preds = %do.cond.10
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %procs12 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %13, i32 0, i32 1
  %alloc_struct_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs12, i32 0, i32 12
  %14 = load i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct_array, align 8, !tbaa !16
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %16 = load i32, i32* %num_comps.addr, align 4, !tbaa !5
  %call13 = call i8* %14(%struct.gs_memory_s* %15, i32 %16, %struct.gs_memory_struct_type_s* @st_ht_component_element, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0)) #3
  %17 = bitcast i8* %call13 to %struct.gs_halftone_component_s*
  store %struct.gs_halftone_component_s* %17, %struct.gs_halftone_component_s** %phtc, align 8, !tbaa !1
  %18 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc, align 8, !tbaa !1
  %cmp14 = icmp eq %struct.gs_halftone_component_s* %18, null
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %do.end.11
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %procs16 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %19, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs16, i32 0, i32 2
  %20 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !17
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %22 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht, align 8, !tbaa !1
  %23 = bitcast %struct.gs_halftone_s* %22 to i8*
  call void %20(%struct.gs_memory_s* %21, i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0)) #3
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %do.end.11
  %24 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %24, i32 0, i32 0
  store i32 6, i32* %type, align 4, !tbaa !18
  %25 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht, align 8, !tbaa !1
  %rc18 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %25, i32 0, i32 1
  %free19 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc18, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @free_comps, void (%struct.gs_memory_s*, i8*, i8*)** %free19, align 8, !tbaa !15
  %26 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc, align 8, !tbaa !1
  %27 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %27, i32 0, i32 2
  %multiple = bitcast %union.anon* %params to %struct.gs_multiple_halftone_s*
  %components = getelementptr inbounds %struct.gs_multiple_halftone_s, %struct.gs_multiple_halftone_s* %multiple, i32 0, i32 0
  store %struct.gs_halftone_component_s* %26, %struct.gs_halftone_component_s** %components, align 8, !tbaa !19
  %28 = load i32, i32* %num_comps.addr, align 4, !tbaa !5
  %29 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht, align 8, !tbaa !1
  %params20 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %29, i32 0, i32 2
  %multiple21 = bitcast %union.anon* %params20 to %struct.gs_multiple_halftone_s*
  %num_comp = getelementptr inbounds %struct.gs_multiple_halftone_s, %struct.gs_multiple_halftone_s* %multiple21, i32 0, i32 1
  store i32 %28, i32* %num_comp, align 4, !tbaa !21
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.17
  %30 = load i32, i32* %i, align 4, !tbaa !5
  %31 = load i32, i32* %num_comps.addr, align 4, !tbaa !5
  %cmp22 = icmp ult i32 %30, %31
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load i32, i32* %i, align 4, !tbaa !5
  %33 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %33 to i64
  %34 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %34, i64 %idxprom
  %comp_number = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %arrayidx, i32 0, i32 0
  store i32 %32, i32* %comp_number, align 4, !tbaa !22
  %35 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom23 = sext i32 %35 to i64
  %36 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %36, i64 %idxprom23
  %cname = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %arrayidx24, i32 0, i32 1
  store i32 0, i32* %cname, align 4, !tbaa !24
  %37 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom25 = sext i32 %37 to i64
  %38 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %38, i64 %idxprom25
  %type27 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %arrayidx26, i32 0, i32 2
  store i32 0, i32* %type27, align 4, !tbaa !25
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %40 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht, align 8, !tbaa !1
  %41 = load %struct.gs_halftone_s**, %struct.gs_halftone_s*** %ppht.addr, align 8, !tbaa !1
  store %struct.gs_halftone_s* %40, %struct.gs_halftone_s** %41, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.15, %if.then.2, %if.then
  %42 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast %struct.gs_halftone_component_s** %phtc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = bitcast %struct.gs_halftone_s** %pht to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = load i32, i32* %retval
  ret i32 %45
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare void @rc_free_struct_only(%struct.gs_memory_s*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @free_comps(%struct.gs_memory_s* %pmem, i8* %pvht, i8* %cname) #0 {
entry:
  %pmem.addr = alloca %struct.gs_memory_s*, align 8
  %pvht.addr = alloca i8*, align 8
  %cname.addr = alloca i8*, align 8
  %pht = alloca %struct.gs_halftone_s*, align 8
  store %struct.gs_memory_s* %pmem, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  store i8* %pvht, i8** %pvht.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_halftone_s** %pht to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %pvht.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_halftone_s*
  store %struct.gs_halftone_s* %2, %struct.gs_halftone_s** %pht, align 8, !tbaa !1
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %4 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !17
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %6 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %6, i32 0, i32 2
  %multiple = bitcast %union.anon* %params to %struct.gs_multiple_halftone_s*
  %components = getelementptr inbounds %struct.gs_multiple_halftone_s, %struct.gs_multiple_halftone_s* %multiple, i32 0, i32 0
  %7 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %components, align 8, !tbaa !19
  %8 = bitcast %struct.gs_halftone_component_s* %7 to i8*
  %9 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %4(%struct.gs_memory_s* %5, i8* %8, i8* %9) #3
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %10, i32 0, i32 1
  %free_object2 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs1, i32 0, i32 2
  %11 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object2, align 8, !tbaa !17
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %13 = load i8*, i8** %pvht.addr, align 8, !tbaa !1
  %14 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %11(%struct.gs_memory_s* %12, i8* %13, i8* %14) #3
  %15 = bitcast %struct.gs_halftone_s** %pht to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @gs_ht_set_spot_comp(%struct.gs_halftone_s* %pht, i32 %comp, double %freq, double %angle, float (double, double)* %spot_func, i32 %accurate, float (double, %struct.gx_transfer_map_s*, i8*)* %transfer, i8* %client_data) #0 {
entry:
  %retval = alloca i32, align 4
  %pht.addr = alloca %struct.gs_halftone_s*, align 8
  %comp.addr = alloca i32, align 4
  %freq.addr = alloca double, align 8
  %angle.addr = alloca double, align 8
  %spot_func.addr = alloca float (double, double)*, align 8
  %accurate.addr = alloca i32, align 4
  %transfer.addr = alloca float (double, %struct.gx_transfer_map_s*, i8*)*, align 8
  %client_data.addr = alloca i8*, align 8
  %phtc = alloca %struct.gs_halftone_component_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_halftone_s* %pht, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  store i32 %comp, i32* %comp.addr, align 4, !tbaa !5
  store double %freq, double* %freq.addr, align 8, !tbaa !26
  store double %angle, double* %angle.addr, align 8, !tbaa !26
  store float (double, double)* %spot_func, float (double, double)** %spot_func.addr, align 8, !tbaa !1
  store i32 %accurate, i32* %accurate.addr, align 4, !tbaa !5
  store float (double, %struct.gx_transfer_map_s*, i8*)* %transfer, float (double, %struct.gx_transfer_map_s*, i8*)** %transfer.addr, align 8, !tbaa !1
  store i8* %client_data, i8** %client_data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_halftone_component_s** %phtc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i32, i32* %comp.addr, align 4, !tbaa !5
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %2, i32 0, i32 2
  %multiple = bitcast %union.anon* %params to %struct.gs_multiple_halftone_s*
  %components = getelementptr inbounds %struct.gs_multiple_halftone_s, %struct.gs_multiple_halftone_s* %multiple, i32 0, i32 0
  %3 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %components, align 8, !tbaa !19
  %arrayidx = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %3, i64 %idxprom
  store %struct.gs_halftone_component_s* %arrayidx, %struct.gs_halftone_component_s** %phtc, align 8, !tbaa !1
  %4 = load i32, i32* %comp.addr, align 4, !tbaa !5
  %5 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %5, i32 0, i32 2
  %multiple2 = bitcast %union.anon* %params1 to %struct.gs_multiple_halftone_s*
  %num_comp = getelementptr inbounds %struct.gs_multiple_halftone_s, %struct.gs_multiple_halftone_s* %multiple2, i32 0, i32 1
  %6 = load i32, i32* %num_comp, align 4, !tbaa !21
  %cmp = icmp uge i32 %4, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %7, i32 0, i32 2
  %8 = load i32, i32* %type, align 4, !tbaa !25
  %cmp3 = icmp ne i32 %8, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %9 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc, align 8, !tbaa !1
  %type6 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %9, i32 0, i32 2
  store i32 3, i32* %type6, align 4, !tbaa !25
  %10 = load double, double* %freq.addr, align 8, !tbaa !26
  %conv = fptrunc double %10 to float
  %11 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc, align 8, !tbaa !1
  %params7 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %11, i32 0, i32 3
  %spot = bitcast %union.anon.2* %params7 to %struct.gs_spot_halftone_s*
  %screen = getelementptr inbounds %struct.gs_spot_halftone_s, %struct.gs_spot_halftone_s* %spot, i32 0, i32 0
  %frequency = getelementptr inbounds %struct.gs_screen_halftone_s, %struct.gs_screen_halftone_s* %screen, i32 0, i32 0
  store float %conv, float* %frequency, align 4, !tbaa !28
  %12 = load double, double* %angle.addr, align 8, !tbaa !26
  %conv8 = fptrunc double %12 to float
  %13 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc, align 8, !tbaa !1
  %params9 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %13, i32 0, i32 3
  %spot10 = bitcast %union.anon.2* %params9 to %struct.gs_spot_halftone_s*
  %screen11 = getelementptr inbounds %struct.gs_spot_halftone_s, %struct.gs_spot_halftone_s* %spot10, i32 0, i32 0
  %angle12 = getelementptr inbounds %struct.gs_screen_halftone_s, %struct.gs_screen_halftone_s* %screen11, i32 0, i32 1
  store float %conv8, float* %angle12, align 4, !tbaa !33
  %14 = load float (double, double)*, float (double, double)** %spot_func.addr, align 8, !tbaa !1
  %15 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc, align 8, !tbaa !1
  %params13 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %15, i32 0, i32 3
  %spot14 = bitcast %union.anon.2* %params13 to %struct.gs_spot_halftone_s*
  %screen15 = getelementptr inbounds %struct.gs_spot_halftone_s, %struct.gs_spot_halftone_s* %spot14, i32 0, i32 0
  %spot_function = getelementptr inbounds %struct.gs_screen_halftone_s, %struct.gs_screen_halftone_s* %screen15, i32 0, i32 2
  store float (double, double)* %14, float (double, double)** %spot_function, align 8, !tbaa !34
  %16 = load i32, i32* %accurate.addr, align 4, !tbaa !5
  %17 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc, align 8, !tbaa !1
  %params16 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %17, i32 0, i32 3
  %spot17 = bitcast %union.anon.2* %params16 to %struct.gs_spot_halftone_s*
  %accurate_screens = getelementptr inbounds %struct.gs_spot_halftone_s, %struct.gs_spot_halftone_s* %spot17, i32 0, i32 1
  store i32 %16, i32* %accurate_screens, align 4, !tbaa !35
  %18 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc, align 8, !tbaa !1
  %params18 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %18, i32 0, i32 3
  %spot19 = bitcast %union.anon.2* %params18 to %struct.gs_spot_halftone_s*
  %transfer20 = getelementptr inbounds %struct.gs_spot_halftone_s, %struct.gs_spot_halftone_s* %spot19, i32 0, i32 2
  store float (double, %struct.gx_transfer_map_s*)* @gs_mapped_transfer, float (double, %struct.gx_transfer_map_s*)** %transfer20, align 8, !tbaa !36
  %19 = load float (double, %struct.gx_transfer_map_s*, i8*)*, float (double, %struct.gx_transfer_map_s*, i8*)** %transfer.addr, align 8, !tbaa !1
  %cmp21 = icmp eq float (double, %struct.gx_transfer_map_s*, i8*)* %19, null
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.5
  br label %cond.end

cond.false:                                       ; preds = %if.end.5
  %20 = load float (double, %struct.gx_transfer_map_s*, i8*)*, float (double, %struct.gx_transfer_map_s*, i8*)** %transfer.addr, align 8, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float (double, %struct.gx_transfer_map_s*, i8*)* [ @null_closure_transfer, %cond.true ], [ %20, %cond.false ]
  %21 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc, align 8, !tbaa !1
  %params23 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %21, i32 0, i32 3
  %spot24 = bitcast %union.anon.2* %params23 to %struct.gs_spot_halftone_s*
  %transfer_closure = getelementptr inbounds %struct.gs_spot_halftone_s, %struct.gs_spot_halftone_s* %spot24, i32 0, i32 3
  %proc = getelementptr inbounds %struct.gs_mapping_closure_s, %struct.gs_mapping_closure_s* %transfer_closure, i32 0, i32 0
  store float (double, %struct.gx_transfer_map_s*, i8*)* %cond, float (double, %struct.gx_transfer_map_s*, i8*)** %proc, align 8, !tbaa !37
  %22 = load i8*, i8** %client_data.addr, align 8, !tbaa !1
  %23 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc, align 8, !tbaa !1
  %params25 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %23, i32 0, i32 3
  %spot26 = bitcast %union.anon.2* %params25 to %struct.gs_spot_halftone_s*
  %transfer_closure27 = getelementptr inbounds %struct.gs_spot_halftone_s, %struct.gs_spot_halftone_s* %spot26, i32 0, i32 3
  %data = getelementptr inbounds %struct.gs_mapping_closure_s, %struct.gs_mapping_closure_s* %transfer_closure27, i32 0, i32 1
  store i8* %22, i8** %data, align 8, !tbaa !38
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then.4, %if.then
  %24 = bitcast %struct.gs_halftone_component_s** %phtc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = load i32, i32* %retval
  ret i32 %25
}

declare float @gs_mapped_transfer(double, %struct.gx_transfer_map_s*) #2

; Function Attrs: nounwind uwtable
define internal float @null_closure_transfer(double %val, %struct.gx_transfer_map_s* %pmap_dummy, i8* %dummy) #0 {
entry:
  %val.addr = alloca double, align 8
  %pmap_dummy.addr = alloca %struct.gx_transfer_map_s*, align 8
  %dummy.addr = alloca i8*, align 8
  store double %val, double* %val.addr, align 8, !tbaa !26
  store %struct.gx_transfer_map_s* %pmap_dummy, %struct.gx_transfer_map_s** %pmap_dummy.addr, align 8, !tbaa !1
  store i8* %dummy, i8** %dummy.addr, align 8, !tbaa !1
  %0 = load double, double* %val.addr, align 8, !tbaa !26
  %conv = fptrunc double %0 to float
  ret float %conv
}

; Function Attrs: nounwind uwtable
define i32 @gs_ht_set_threshold_comp(%struct.gs_halftone_s* %pht, i32 %comp, i32 %width, i32 %height, %struct.gs_const_string_s* %thresholds, float (double, %struct.gx_transfer_map_s*, i8*)* %transfer, i8* %client_data) #0 {
entry:
  %retval = alloca i32, align 4
  %pht.addr = alloca %struct.gs_halftone_s*, align 8
  %comp.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %thresholds.addr = alloca %struct.gs_const_string_s*, align 8
  %transfer.addr = alloca float (double, %struct.gx_transfer_map_s*, i8*)*, align 8
  %client_data.addr = alloca i8*, align 8
  %phtc = alloca %struct.gs_halftone_component_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_halftone_s* %pht, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  store i32 %comp, i32* %comp.addr, align 4, !tbaa !5
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store %struct.gs_const_string_s* %thresholds, %struct.gs_const_string_s** %thresholds.addr, align 8, !tbaa !1
  store float (double, %struct.gx_transfer_map_s*, i8*)* %transfer, float (double, %struct.gx_transfer_map_s*, i8*)** %transfer.addr, align 8, !tbaa !1
  store i8* %client_data, i8** %client_data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_halftone_component_s** %phtc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i32, i32* %comp.addr, align 4, !tbaa !5
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %2, i32 0, i32 2
  %multiple = bitcast %union.anon* %params to %struct.gs_multiple_halftone_s*
  %components = getelementptr inbounds %struct.gs_multiple_halftone_s, %struct.gs_multiple_halftone_s* %multiple, i32 0, i32 0
  %3 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %components, align 8, !tbaa !19
  %arrayidx = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %3, i64 %idxprom
  store %struct.gs_halftone_component_s* %arrayidx, %struct.gs_halftone_component_s** %phtc, align 8, !tbaa !1
  %4 = load i32, i32* %comp.addr, align 4, !tbaa !5
  %5 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %5, i32 0, i32 2
  %multiple2 = bitcast %union.anon* %params1 to %struct.gs_multiple_halftone_s*
  %num_comp = getelementptr inbounds %struct.gs_multiple_halftone_s, %struct.gs_multiple_halftone_s* %multiple2, i32 0, i32 1
  %6 = load i32, i32* %num_comp, align 4, !tbaa !21
  %cmp = icmp uge i32 %4, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %7, i32 0, i32 2
  %8 = load i32, i32* %type, align 4, !tbaa !25
  %cmp3 = icmp ne i32 %8, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %9 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc, align 8, !tbaa !1
  %type6 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %9, i32 0, i32 2
  store i32 4, i32* %type6, align 4, !tbaa !25
  %10 = load i32, i32* %width.addr, align 4, !tbaa !5
  %11 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc, align 8, !tbaa !1
  %params7 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %11, i32 0, i32 3
  %threshold = bitcast %union.anon.2* %params7 to %struct.gs_threshold_halftone_s*
  %width8 = getelementptr inbounds %struct.gs_threshold_halftone_s, %struct.gs_threshold_halftone_s* %threshold, i32 0, i32 0
  store i32 %10, i32* %width8, align 4, !tbaa !39
  %12 = load i32, i32* %height.addr, align 4, !tbaa !5
  %13 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc, align 8, !tbaa !1
  %params9 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %13, i32 0, i32 3
  %threshold10 = bitcast %union.anon.2* %params9 to %struct.gs_threshold_halftone_s*
  %height11 = getelementptr inbounds %struct.gs_threshold_halftone_s, %struct.gs_threshold_halftone_s* %threshold10, i32 0, i32 1
  store i32 %12, i32* %height11, align 4, !tbaa !42
  %14 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc, align 8, !tbaa !1
  %params12 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %14, i32 0, i32 3
  %threshold13 = bitcast %union.anon.2* %params12 to %struct.gs_threshold_halftone_s*
  %thresholds14 = getelementptr inbounds %struct.gs_threshold_halftone_s, %struct.gs_threshold_halftone_s* %threshold13, i32 0, i32 3
  %15 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %thresholds.addr, align 8, !tbaa !1
  %16 = bitcast %struct.gs_const_string_s* %thresholds14 to i8*
  %17 = bitcast %struct.gs_const_string_s* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 16, i32 8, i1 false), !tbaa.struct !43
  %18 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc, align 8, !tbaa !1
  %params15 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %18, i32 0, i32 3
  %threshold16 = bitcast %union.anon.2* %params15 to %struct.gs_threshold_halftone_s*
  %transfer17 = getelementptr inbounds %struct.gs_threshold_halftone_s, %struct.gs_threshold_halftone_s* %threshold16, i32 0, i32 4
  store float (double, %struct.gx_transfer_map_s*)* @gs_mapped_transfer, float (double, %struct.gx_transfer_map_s*)** %transfer17, align 8, !tbaa !44
  %19 = load float (double, %struct.gx_transfer_map_s*, i8*)*, float (double, %struct.gx_transfer_map_s*, i8*)** %transfer.addr, align 8, !tbaa !1
  %cmp18 = icmp eq float (double, %struct.gx_transfer_map_s*, i8*)* %19, null
  br i1 %cmp18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.5
  br label %cond.end

cond.false:                                       ; preds = %if.end.5
  %20 = load float (double, %struct.gx_transfer_map_s*, i8*)*, float (double, %struct.gx_transfer_map_s*, i8*)** %transfer.addr, align 8, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float (double, %struct.gx_transfer_map_s*, i8*)* [ @null_closure_transfer, %cond.true ], [ %20, %cond.false ]
  %21 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc, align 8, !tbaa !1
  %params19 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %21, i32 0, i32 3
  %threshold20 = bitcast %union.anon.2* %params19 to %struct.gs_threshold_halftone_s*
  %transfer_closure = getelementptr inbounds %struct.gs_threshold_halftone_s, %struct.gs_threshold_halftone_s* %threshold20, i32 0, i32 2
  %proc = getelementptr inbounds %struct.gs_mapping_closure_s, %struct.gs_mapping_closure_s* %transfer_closure, i32 0, i32 0
  store float (double, %struct.gx_transfer_map_s*, i8*)* %cond, float (double, %struct.gx_transfer_map_s*, i8*)** %proc, align 8, !tbaa !45
  %22 = load i8*, i8** %client_data.addr, align 8, !tbaa !1
  %23 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc, align 8, !tbaa !1
  %params21 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %23, i32 0, i32 3
  %threshold22 = bitcast %union.anon.2* %params21 to %struct.gs_threshold_halftone_s*
  %transfer_closure23 = getelementptr inbounds %struct.gs_threshold_halftone_s, %struct.gs_threshold_halftone_s* %threshold22, i32 0, i32 2
  %data = getelementptr inbounds %struct.gs_mapping_closure_s, %struct.gs_mapping_closure_s* %transfer_closure23, i32 0, i32 1
  store i8* %22, i8** %data, align 8, !tbaa !46
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then.4, %if.then
  %24 = bitcast %struct.gs_halftone_component_s** %phtc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define void @gs_ht_reference(%struct.gs_halftone_s* %pht) #0 {
entry:
  %pht.addr = alloca %struct.gs_halftone_s*, align 8
  store %struct.gs_halftone_s* %pht, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_halftone_s* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %1 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %1, i32 0, i32 1
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %2 = load i64, i64* %ref_count, align 8, !tbaa !10
  %inc = add nsw i64 %2, 1
  store i64 %inc, i64* %ref_count, align 8, !tbaa !10
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
define void @gs_ht_release(%struct.gs_halftone_s* %pht) #0 {
entry:
  %pht.addr = alloca %struct.gs_halftone_s*, align 8
  store %struct.gs_halftone_s* %pht, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_halftone_s* %0, null
  br i1 %tobool, label %if.then, label %if.end.18

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  br label %do.body.2

do.body.2:                                        ; preds = %do.body.1
  br label %do.end

do.end:                                           ; preds = %do.body.2
  %1 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %1, i32 0, i32 1
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %2 = load i64, i64* %ref_count, align 8, !tbaa !10
  %add = add nsw i64 %2, -1
  store i64 %add, i64* %ref_count, align 8, !tbaa !10
  br label %do.end.3

do.end.3:                                         ; preds = %do.end
  %3 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  %rc4 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %3, i32 0, i32 1
  %ref_count5 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc4, i32 0, i32 0
  %4 = load i64, i64* %ref_count5, align 8, !tbaa !10
  %tobool6 = icmp ne i64 %4, 0
  br i1 %tobool6, label %if.else, label %if.then.7

if.then.7:                                        ; preds = %do.end.3
  br label %do.body.8

do.body.8:                                        ; preds = %if.then.7
  br label %do.body.9

do.body.9:                                        ; preds = %do.body.8
  br label %do.end.10

do.end.10:                                        ; preds = %do.body.9
  %5 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  %rc11 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %5, i32 0, i32 1
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc11, i32 0, i32 2
  %6 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !15
  %7 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  %rc12 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %7, i32 0, i32 1
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc12, i32 0, i32 1
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !14
  %9 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  %10 = bitcast %struct.gs_halftone_s* %9 to i8*
  call void %6(%struct.gs_memory_s* %8, i8* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0)) #3
  br label %do.end.13

do.end.13:                                        ; preds = %do.end.10
  br label %do.body.14

do.body.14:                                       ; preds = %do.end.13
  br label %do.end.15

do.end.15:                                        ; preds = %do.body.14
  br label %if.end

if.else:                                          ; preds = %do.end.3
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
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_ht_install(%struct.gs_state_s* %pgs, %struct.gs_halftone_s* %pht) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pht.addr = alloca %struct.gs_halftone_s*, align 8
  %code = alloca i32, align 4
  %pmem = alloca %struct.gs_memory_s*, align 8
  %dev_ht = alloca %struct.gx_device_halftone_s, align 8
  %pocs = alloca %struct.gx_ht_order_component_s*, align 8
  %comp2order = alloca [32 x i8], align 16
  %num_comps = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %j = alloca i32, align 4
  %pcache = alloca %struct.gx_ht_cache_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_halftone_s* %pht, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %1 = bitcast %struct.gs_memory_s** %pmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %2, i32 0, i32 1
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 1
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !14
  store %struct.gs_memory_s* %3, %struct.gs_memory_s** %pmem, align 8, !tbaa !1
  %4 = bitcast %struct.gx_device_halftone_s* %dev_ht to i8*
  call void @llvm.lifetime.start(i64 224, i8* %4) #1
  %5 = bitcast %struct.gx_ht_order_component_s** %pocs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast [32 x i8]* %comp2order to i8*
  call void @llvm.lifetime.start(i64 32, i8* %6) #1
  %7 = bitcast i32* %num_comps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %8, i32 0, i32 2
  %multiple = bitcast %union.anon* %params to %struct.gs_multiple_halftone_s*
  %num_comp = getelementptr inbounds %struct.gs_multiple_halftone_s, %struct.gs_multiple_halftone_s* %multiple, i32 0, i32 1
  %9 = load i32, i32* %num_comp, align 4, !tbaa !21
  store i32 %9, i32* %num_comps, align 4, !tbaa !5
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  %call = call i32 @check_ht(%struct.gs_halftone_s* %11) #3
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.67

if.end:                                           ; preds = %entry
  %13 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %comp2order, i32 0, i32 0
  %call1 = call %struct.gx_ht_order_component_s* @alloc_ht_order(%struct.gs_halftone_s* %13, %struct.gs_memory_s* %14, i8* %arraydecay) #3
  store %struct.gx_ht_order_component_s* %call1, %struct.gx_ht_order_component_s** %pocs, align 8, !tbaa !1
  %cmp2 = icmp eq %struct.gx_ht_order_component_s* %call1, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.67

if.end.4:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %15 = load i32, i32* %i, align 4, !tbaa !5
  %16 = load i32, i32* %num_comps, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %15, %16
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %18 to i64
  %arrayidx = getelementptr inbounds [32 x i8], [32 x i8]* %comp2order, i32 0, i64 %idxprom
  %19 = load i8, i8* %arrayidx, align 1, !tbaa !47
  %conv = zext i8 %19 to i32
  store i32 %conv, i32* %j, align 4, !tbaa !5
  %20 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom6 = sext i32 %20 to i64
  %21 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  %params7 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %21, i32 0, i32 2
  %multiple8 = bitcast %union.anon* %params7 to %struct.gs_multiple_halftone_s*
  %components = getelementptr inbounds %struct.gs_multiple_halftone_s, %struct.gs_multiple_halftone_s* %multiple8, i32 0, i32 0
  %22 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %components, align 8, !tbaa !19
  %arrayidx9 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %22, i64 %idxprom6
  %23 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom10 = sext i32 %23 to i64
  %24 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %pocs, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %24, i64 %idxprom10
  %corder = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx11, i32 0, i32 0
  %25 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem, align 8, !tbaa !1
  %call12 = call i32 @build_component(%struct.gs_halftone_component_s* %arrayidx9, %struct.gx_ht_order_s* %corder, %struct.gs_state_s* %25, %struct.gs_memory_s* %26) #3
  store i32 %call12, i32* %code, align 4, !tbaa !5
  %27 = load i32, i32* %code, align 4, !tbaa !5
  %cmp13 = icmp sge i32 %27, 0
  br i1 %cmp13, label %land.lhs.true, label %if.end.41

land.lhs.true:                                    ; preds = %for.body
  %28 = load i32, i32* %j, align 4, !tbaa !5
  %cmp15 = icmp ne i32 %28, 0
  br i1 %cmp15, label %if.then.17, label %if.end.41

if.then.17:                                       ; preds = %land.lhs.true
  %29 = bitcast %struct.gx_ht_cache_s** %pcache to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem, align 8, !tbaa !1
  %31 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom18 = sext i32 %31 to i64
  %32 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %pocs, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %32, i64 %idxprom18
  %corder20 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx19, i32 0, i32 0
  %raster = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %corder20, i32 0, i32 3
  %33 = load i16, i16* %raster, align 2, !tbaa !48
  %conv21 = zext i16 %33 to i32
  %34 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom22 = sext i32 %34 to i64
  %35 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %pocs, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %35, i64 %idxprom22
  %corder24 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx23, i32 0, i32 0
  %num_bits = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %corder24, i32 0, i32 9
  %36 = load i32, i32* %num_bits, align 4, !tbaa !55
  %37 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom25 = sext i32 %37 to i64
  %38 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %pocs, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %38, i64 %idxprom25
  %corder27 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx26, i32 0, i32 0
  %width = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %corder27, i32 0, i32 1
  %39 = load i16, i16* %width, align 2, !tbaa !56
  %conv28 = zext i16 %39 to i32
  %div = udiv i32 %36, %conv28
  %mul = mul i32 %conv21, %div
  %mul29 = mul i32 %mul, 4
  %call30 = call %struct.gx_ht_cache_s* @gx_ht_alloc_cache(%struct.gs_memory_s* %30, i32 4, i32 %mul29) #3
  store %struct.gx_ht_cache_s* %call30, %struct.gx_ht_cache_s** %pcache, align 8, !tbaa !1
  %40 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %pcache, align 8, !tbaa !1
  %cmp31 = icmp eq %struct.gx_ht_cache_s* %40, null
  br i1 %cmp31, label %if.then.33, label %if.else

if.then.33:                                       ; preds = %if.then.17
  store i32 -25, i32* %code, align 4, !tbaa !5
  br label %if.end.40

if.else:                                          ; preds = %if.then.17
  %41 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %pcache, align 8, !tbaa !1
  %42 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom34 = sext i32 %42 to i64
  %43 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %pocs, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %43, i64 %idxprom34
  %corder36 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx35, i32 0, i32 0
  %cache = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %corder36, i32 0, i32 14
  store %struct.gx_ht_cache_s* %41, %struct.gx_ht_cache_s** %cache, align 8, !tbaa !57
  %44 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem, align 8, !tbaa !1
  %45 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %pcache, align 8, !tbaa !1
  %46 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom37 = sext i32 %46 to i64
  %47 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %pocs, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %47, i64 %idxprom37
  %corder39 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx38, i32 0, i32 0
  call void @gx_ht_init_cache(%struct.gs_memory_s* %44, %struct.gx_ht_cache_s* %45, %struct.gx_ht_order_s* %corder39) #3
  br label %if.end.40

if.end.40:                                        ; preds = %if.else, %if.then.33
  %48 = bitcast %struct.gx_ht_cache_s** %pcache to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %land.lhs.true, %for.body
  %49 = load i32, i32* %code, align 4, !tbaa !5
  %cmp42 = icmp slt i32 %49, 0
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.end.41
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.45:                                        ; preds = %if.end.41
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.45, %if.then.44
  %50 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %51 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %cleanup, %for.cond
  %52 = load i32, i32* %code, align 4, !tbaa !5
  %cmp46 = icmp slt i32 %52, 0
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %for.end
  %53 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %pocs, align 8, !tbaa !1
  %54 = load i32, i32* %num_comps, align 4, !tbaa !5
  %55 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem, align 8, !tbaa !1
  call void @free_order_array(%struct.gx_ht_order_component_s* %53, i32 %54, %struct.gs_memory_s* %55) #3
  %56 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %56, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.67

if.end.49:                                        ; preds = %for.end
  %57 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem, align 8, !tbaa !1
  %rc50 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %dev_ht, i32 0, i32 1
  %memory51 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc50, i32 0, i32 1
  store %struct.gs_memory_s* %57, %struct.gs_memory_s** %memory51, align 8, !tbaa !58
  %order = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %dev_ht, i32 0, i32 0
  %58 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %pocs, align 8, !tbaa !1
  %arrayidx52 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %58, i64 0
  %corder53 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx52, i32 0, i32 0
  %59 = bitcast %struct.gx_ht_order_s* %order to i8*
  %60 = bitcast %struct.gx_ht_order_s* %corder53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* %60, i64 160, i32 8, i1 false), !tbaa.struct !60
  %61 = load i32, i32* %num_comps, align 4, !tbaa !5
  %cmp54 = icmp eq i32 %61, 1
  br i1 %cmp54, label %if.then.56, label %if.else.58

if.then.56:                                       ; preds = %if.end.49
  %62 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %62, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %63 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !17
  %64 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem, align 8, !tbaa !1
  %65 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %pocs, align 8, !tbaa !1
  %66 = bitcast %struct.gx_ht_order_component_s* %65 to i8*
  call void %63(%struct.gs_memory_s* %64, i8* %66, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0)) #3
  %components57 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %dev_ht, i32 0, i32 4
  store %struct.gx_ht_order_component_s* null, %struct.gx_ht_order_component_s** %components57, align 8, !tbaa !64
  br label %if.end.61

if.else.58:                                       ; preds = %if.end.49
  %67 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %pocs, align 8, !tbaa !1
  %components59 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %dev_ht, i32 0, i32 4
  store %struct.gx_ht_order_component_s* %67, %struct.gx_ht_order_component_s** %components59, align 8, !tbaa !64
  %68 = load i32, i32* %num_comps, align 4, !tbaa !5
  %num_comp60 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %dev_ht, i32 0, i32 5
  store i32 %68, i32* %num_comp60, align 4, !tbaa !65
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.58, %if.then.56
  %69 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %70 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  %call62 = call i32 @gx_ht_install(%struct.gs_state_s* %69, %struct.gs_halftone_s* %70, %struct.gx_device_halftone_s* %dev_ht) #3
  store i32 %call62, i32* %code, align 4, !tbaa !5
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.end.61
  %71 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem, align 8, !tbaa !1
  call void @gx_device_halftone_release(%struct.gx_device_halftone_s* %dev_ht, %struct.gs_memory_s* %71) #3
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.65, %if.end.61
  %72 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %72, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.67

cleanup.67:                                       ; preds = %if.end.66, %if.then.48, %if.then.3, %if.then
  %73 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = bitcast i32* %num_comps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast [32 x i8]* %comp2order to i8*
  call void @llvm.lifetime.end(i64 32, i8* %75) #1
  %76 = bitcast %struct.gx_ht_order_component_s** %pocs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %77 = bitcast %struct.gx_device_halftone_s* %dev_ht to i8*
  call void @llvm.lifetime.end(i64 224, i8* %77) #1
  %78 = bitcast %struct.gs_memory_s** %pmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %79 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #1
  %80 = load i32, i32* %retval
  ret i32 %80

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @check_ht(%struct.gs_halftone_s* %pht) #0 {
entry:
  %retval = alloca i32, align 4
  %pht.addr = alloca %struct.gs_halftone_s*, align 8
  %i = alloca i32, align 4
  %num_comps = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %phtc = alloca %struct.gs_halftone_component_s*, align 8
  store %struct.gs_halftone_s* %pht, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %num_comps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %2, i32 0, i32 2
  %multiple = bitcast %union.anon* %params to %struct.gs_multiple_halftone_s*
  %num_comp = getelementptr inbounds %struct.gs_multiple_halftone_s, %struct.gs_multiple_halftone_s* %multiple, i32 0, i32 1
  %3 = load i32, i32* %num_comp, align 4, !tbaa !21
  store i32 %3, i32* %num_comps, align 4, !tbaa !5
  %4 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %4, i32 0, i32 0
  %5 = load i32, i32* %type, align 4, !tbaa !18
  %cmp = icmp ne i32 %5, 6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.10

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %i, align 4, !tbaa !5
  %7 = load i32, i32* %num_comps, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %6, %7
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = bitcast %struct.gs_halftone_component_s** %phtc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  %params2 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %10, i32 0, i32 2
  %multiple3 = bitcast %union.anon* %params2 to %struct.gs_multiple_halftone_s*
  %components = getelementptr inbounds %struct.gs_multiple_halftone_s, %struct.gs_multiple_halftone_s* %multiple3, i32 0, i32 0
  %11 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %components, align 8, !tbaa !19
  %arrayidx = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %11, i64 %idxprom
  store %struct.gs_halftone_component_s* %arrayidx, %struct.gs_halftone_component_s** %phtc, align 8, !tbaa !1
  %12 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc, align 8, !tbaa !1
  %type4 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %12, i32 0, i32 2
  %13 = load i32, i32* %type4, align 4, !tbaa !25
  %cmp5 = icmp ne i32 %13, 3
  br i1 %cmp5, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %for.body
  %14 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc, align 8, !tbaa !1
  %type6 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %14, i32 0, i32 2
  %15 = load i32, i32* %type6, align 4, !tbaa !25
  %cmp7 = icmp ne i32 %15, 4
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %land.lhs.true
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %land.lhs.true, %for.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.then.8
  %16 = bitcast %struct.gs_halftone_component_s** %phtc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.10 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %17 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.10

cleanup.10:                                       ; preds = %for.end, %cleanup, %if.then
  %18 = bitcast i32* %num_comps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %19 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal %struct.gx_ht_order_component_s* @alloc_ht_order(%struct.gs_halftone_s* %pht, %struct.gs_memory_s* %pmem, i8* %comp2order) #0 {
entry:
  %retval = alloca %struct.gx_ht_order_component_s*, align 8
  %pht.addr = alloca %struct.gs_halftone_s*, align 8
  %pmem.addr = alloca %struct.gs_memory_s*, align 8
  %comp2order.addr = alloca i8*, align 8
  %num_comps = alloca i32, align 4
  %pocs = alloca %struct.gx_ht_order_component_s*, align 8
  %inext = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %phtc = alloca %struct.gs_halftone_component_s*, align 8
  %pmap = alloca %struct.gx_transfer_map_s*, align 8
  %j = alloca i32, align 4
  store %struct.gs_halftone_s* %pht, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %pmem, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  store i8* %comp2order, i8** %comp2order.addr, align 8, !tbaa !1
  %0 = bitcast i32* %num_comps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %1, i32 0, i32 2
  %multiple = bitcast %union.anon* %params to %struct.gs_multiple_halftone_s*
  %num_comp = getelementptr inbounds %struct.gs_multiple_halftone_s, %struct.gs_multiple_halftone_s* %multiple, i32 0, i32 1
  %2 = load i32, i32* %num_comp, align 4, !tbaa !21
  store i32 %2, i32* %num_comps, align 4, !tbaa !5
  %3 = bitcast %struct.gx_ht_order_component_s** %pocs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 1
  %alloc_struct_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 12
  %5 = load i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct_array, align 8, !tbaa !16
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %7 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %7, i32 0, i32 2
  %multiple2 = bitcast %union.anon* %params1 to %struct.gs_multiple_halftone_s*
  %num_comp3 = getelementptr inbounds %struct.gs_multiple_halftone_s, %struct.gs_multiple_halftone_s* %multiple2, i32 0, i32 1
  %8 = load i32, i32* %num_comp3, align 4, !tbaa !21
  %call = call i8* %5(%struct.gs_memory_s* %6, i32 %8, %struct.gs_memory_struct_type_s* @st_ht_order_component_element, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0)) #3
  %9 = bitcast i8* %call to %struct.gx_ht_order_component_s*
  store %struct.gx_ht_order_component_s* %9, %struct.gx_ht_order_component_s** %pocs, align 8, !tbaa !1
  %10 = bitcast i32* %inext to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 0, i32* %inext, align 4, !tbaa !5
  %11 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %pocs, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_ht_order_component_s* %12, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.gx_ht_order_component_s* null, %struct.gx_ht_order_component_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.50

if.end:                                           ; preds = %entry
  %13 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %pocs, align 8, !tbaa !1
  %corder = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %13, i32 0, i32 0
  %transfer = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %corder, i32 0, i32 15
  store %struct.gx_transfer_map_s* null, %struct.gx_transfer_map_s** %transfer, align 8, !tbaa !66
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.47, %if.end
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %15 = load i32, i32* %num_comps, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %14, %15
  br i1 %cmp4, label %for.body, label %for.end.49

for.body:                                         ; preds = %for.cond
  %16 = bitcast %struct.gs_halftone_component_s** %phtc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %17 to i64
  %18 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  %params5 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %18, i32 0, i32 2
  %multiple6 = bitcast %union.anon* %params5 to %struct.gs_multiple_halftone_s*
  %components = getelementptr inbounds %struct.gs_multiple_halftone_s, %struct.gs_multiple_halftone_s* %multiple6, i32 0, i32 0
  %19 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %components, align 8, !tbaa !19
  %arrayidx = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %19, i64 %idxprom
  store %struct.gs_halftone_component_s* %arrayidx, %struct.gs_halftone_component_s** %phtc, align 8, !tbaa !1
  %20 = bitcast %struct.gx_transfer_map_s** %pmap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %procs7 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %21, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs7, i32 0, i32 8
  %22 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !7
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %call8 = call i8* %22(%struct.gs_memory_s* %23, %struct.gs_memory_struct_type_s* @st_transfer_map, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0)) #3
  %24 = bitcast i8* %call8 to %struct.gx_transfer_map_s*
  store %struct.gx_transfer_map_s* %24, %struct.gx_transfer_map_s** %pmap, align 8, !tbaa !1
  %25 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %pmap, align 8, !tbaa !1
  %cmp9 = icmp eq %struct.gx_transfer_map_s* %25, null
  br i1 %cmp9, label %if.then.10, label %if.end.21

if.then.10:                                       ; preds = %for.body
  %26 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc, %if.then.10
  %27 = load i32, i32* %j, align 4, !tbaa !5
  %28 = load i32, i32* %inext, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %27, %28
  br i1 %cmp12, label %for.body.13, label %for.end

for.body.13:                                      ; preds = %for.cond.11
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %procs14 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %29, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs14, i32 0, i32 2
  %30 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !17
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %32 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom15 = sext i32 %32 to i64
  %33 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %pocs, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %33, i64 %idxprom15
  %corder17 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx16, i32 0, i32 0
  %transfer18 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %corder17, i32 0, i32 15
  %34 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %transfer18, align 8, !tbaa !66
  %35 = bitcast %struct.gx_transfer_map_s* %34 to i8*
  call void %30(%struct.gs_memory_s* %31, i8* %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0)) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body.13
  %36 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond.11

for.end:                                          ; preds = %for.cond.11
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %procs19 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %37, i32 0, i32 1
  %free_object20 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs19, i32 0, i32 2
  %38 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object20, align 8, !tbaa !17
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %40 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %pocs, align 8, !tbaa !1
  %41 = bitcast %struct.gx_ht_order_component_s* %40 to i8*
  call void %38(%struct.gs_memory_s* %39, i8* %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0)) #3
  store %struct.gx_ht_order_component_s* null, %struct.gx_ht_order_component_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  %42 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  br label %cleanup

if.end.21:                                        ; preds = %for.body
  %43 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %pmap, align 8, !tbaa !1
  %proc = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %43, i32 0, i32 1
  %proc22 = bitcast {}** %proc to float (double, %struct.gx_transfer_map_s*)**
  store float (double, %struct.gx_transfer_map_s*)* @gs_mapped_transfer, float (double, %struct.gx_transfer_map_s*)** %proc22, align 8, !tbaa !67
  %44 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %call23 = call i64 @gs_next_ids(%struct.gs_memory_s* %44, i32 1) #3
  %45 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %pmap, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %45, i32 0, i32 3
  store i64 %call23, i64* %id, align 8, !tbaa !69
  %46 = load i32, i32* %inext, align 4, !tbaa !5
  %idxprom24 = sext i32 %46 to i64
  %47 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %pocs, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %47, i64 %idxprom24
  %corder26 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx25, i32 0, i32 0
  %levels = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %corder26, i32 0, i32 12
  store i32* null, i32** %levels, align 8, !tbaa !70
  %48 = load i32, i32* %inext, align 4, !tbaa !5
  %idxprom27 = sext i32 %48 to i64
  %49 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %pocs, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %49, i64 %idxprom27
  %corder29 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx28, i32 0, i32 0
  %bit_data = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %corder29, i32 0, i32 13
  store i8* null, i8** %bit_data, align 8, !tbaa !71
  %50 = load i32, i32* %inext, align 4, !tbaa !5
  %idxprom30 = sext i32 %50 to i64
  %51 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %pocs, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %51, i64 %idxprom30
  %corder32 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx31, i32 0, i32 0
  %cache = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %corder32, i32 0, i32 14
  store %struct.gx_ht_cache_s* null, %struct.gx_ht_cache_s** %cache, align 8, !tbaa !57
  %52 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %pmap, align 8, !tbaa !1
  %53 = load i32, i32* %inext, align 4, !tbaa !5
  %idxprom33 = sext i32 %53 to i64
  %54 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %pocs, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %54, i64 %idxprom33
  %corder35 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx34, i32 0, i32 0
  %transfer36 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %corder35, i32 0, i32 15
  store %struct.gx_transfer_map_s* %52, %struct.gx_transfer_map_s** %transfer36, align 8, !tbaa !66
  %55 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc, align 8, !tbaa !1
  %cname = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %55, i32 0, i32 1
  %56 = load i32, i32* %cname, align 4, !tbaa !24
  %57 = load i32, i32* %inext, align 4, !tbaa !5
  %idxprom37 = sext i32 %57 to i64
  %58 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %pocs, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %58, i64 %idxprom37
  %cname39 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx38, i32 0, i32 2
  store i32 %56, i32* %cname39, align 4, !tbaa !72
  %59 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc, align 8, !tbaa !1
  %comp_number = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %59, i32 0, i32 0
  %60 = load i32, i32* %comp_number, align 4, !tbaa !22
  %61 = load i32, i32* %inext, align 4, !tbaa !5
  %idxprom40 = sext i32 %61 to i64
  %62 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %pocs, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %62, i64 %idxprom40
  %comp_number42 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx41, i32 0, i32 1
  store i32 %60, i32* %comp_number42, align 4, !tbaa !73
  %63 = load i32, i32* %inext, align 4, !tbaa !5
  %inc43 = add nsw i32 %63, 1
  store i32 %inc43, i32* %inext, align 4, !tbaa !5
  %conv = trunc i32 %63 to i8
  %64 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom44 = sext i32 %64 to i64
  %65 = load i8*, i8** %comp2order.addr, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds i8, i8* %65, i64 %idxprom44
  store i8 %conv, i8* %arrayidx45, align 1, !tbaa !47
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.21, %for.end
  %66 = bitcast %struct.gx_transfer_map_s** %pmap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = bitcast %struct.gs_halftone_component_s** %phtc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.50 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.47

for.inc.47:                                       ; preds = %cleanup.cont
  %68 = load i32, i32* %i, align 4, !tbaa !5
  %inc48 = add nsw i32 %68, 1
  store i32 %inc48, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end.49:                                       ; preds = %for.cond
  %69 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %pocs, align 8, !tbaa !1
  store %struct.gx_ht_order_component_s* %69, %struct.gx_ht_order_component_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.50

cleanup.50:                                       ; preds = %for.end.49, %cleanup, %if.then
  %70 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %71 = bitcast i32* %inext to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %72 = bitcast %struct.gx_ht_order_component_s** %pocs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = bitcast i32* %num_comps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %retval
  ret %struct.gx_ht_order_component_s* %74
}

; Function Attrs: nounwind uwtable
define internal i32 @build_component(%struct.gs_halftone_component_s* %phtc, %struct.gx_ht_order_s* %porder, %struct.gs_state_s* %pgs, %struct.gs_memory_s* %pmem) #0 {
entry:
  %retval = alloca i32, align 4
  %phtc.addr = alloca %struct.gs_halftone_component_s*, align 8
  %porder.addr = alloca %struct.gx_ht_order_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pmem.addr = alloca %struct.gs_memory_s*, align 8
  %senum = alloca %struct.gs_screen_enum_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %code8 = alloca i32, align 4
  %transfer9 = alloca %struct.gx_transfer_map_s*, align 8
  store %struct.gs_halftone_component_s* %phtc, %struct.gs_halftone_component_s** %phtc.addr, align 8, !tbaa !1
  store %struct.gx_ht_order_s* %porder, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %pmem, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %0, i32 0, i32 2
  %1 = load i32, i32* %type, align 4, !tbaa !25
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.gs_screen_enum_s* %senum to i8*
  call void @llvm.lifetime.start(i64 360, i8* %2) #1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %5 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %5, i32 0, i32 3
  %spot = bitcast %union.anon.2* %params to %struct.gs_spot_halftone_s*
  %screen = getelementptr inbounds %struct.gs_spot_halftone_s, %struct.gs_spot_halftone_s* %spot, i32 0, i32 0
  %6 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc.addr, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %6, i32 0, i32 3
  %spot2 = bitcast %union.anon.2* %params1 to %struct.gs_spot_halftone_s*
  %accurate_screens = getelementptr inbounds %struct.gs_spot_halftone_s, %struct.gs_spot_halftone_s* %spot2, i32 0, i32 1
  %7 = load i32, i32* %accurate_screens, align 4, !tbaa !35
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %call = call i32 @gx_ht_process_screen_memory(%struct.gs_screen_enum_s* %senum, %struct.gs_state_s* %4, %struct.gs_screen_halftone_s* %screen, i32 %7, %struct.gs_memory_s* %8) #3
  store i32 %call, i32* %code, align 4, !tbaa !5
  %9 = load i32, i32* %code, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %9, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %10 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %11 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %transfer = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %11, i32 0, i32 15
  %12 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %transfer, align 8, !tbaa !74
  %order = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %senum, i32 0, i32 1
  %transfer5 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %order, i32 0, i32 15
  store %struct.gx_transfer_map_s* %12, %struct.gx_transfer_map_s** %transfer5, align 8, !tbaa !75
  %13 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %order6 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %senum, i32 0, i32 1
  %14 = bitcast %struct.gx_ht_order_s* %13 to i8*
  %15 = bitcast %struct.gx_ht_order_s* %order6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 160, i32 8, i1 false), !tbaa.struct !60
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.4
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = bitcast %struct.gs_screen_enum_s* %senum to i8*
  call void @llvm.lifetime.end(i64 360, i8* %17) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.40

if.else:                                          ; preds = %entry
  %18 = bitcast i32* %code8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast %struct.gx_transfer_map_s** %transfer9 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %transfer10 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %20, i32 0, i32 15
  %21 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %transfer10, align 8, !tbaa !74
  store %struct.gx_transfer_map_s* %21, %struct.gx_transfer_map_s** %transfer9, align 8, !tbaa !1
  %22 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc.addr, align 8, !tbaa !1
  %params11 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %22, i32 0, i32 3
  %threshold = bitcast %union.anon.2* %params11 to %struct.gs_threshold_halftone_s*
  %width = getelementptr inbounds %struct.gs_threshold_halftone_s, %struct.gs_threshold_halftone_s* %threshold, i32 0, i32 0
  %23 = load i32, i32* %width, align 4, !tbaa !39
  %conv = trunc i32 %23 to i16
  %24 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %params12 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %24, i32 0, i32 0
  %M = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %params12, i32 0, i32 0
  store i16 %conv, i16* %M, align 2, !tbaa !77
  %25 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %params13 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %25, i32 0, i32 0
  %N = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %params13, i32 0, i32 1
  store i16 0, i16* %N, align 2, !tbaa !78
  %26 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %params14 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %26, i32 0, i32 0
  %R = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %params14, i32 0, i32 2
  store i16 1, i16* %R, align 2, !tbaa !79
  %27 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc.addr, align 8, !tbaa !1
  %params15 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %27, i32 0, i32 3
  %threshold16 = bitcast %union.anon.2* %params15 to %struct.gs_threshold_halftone_s*
  %height = getelementptr inbounds %struct.gs_threshold_halftone_s, %struct.gs_threshold_halftone_s* %threshold16, i32 0, i32 1
  %28 = load i32, i32* %height, align 4, !tbaa !42
  %conv17 = trunc i32 %28 to i16
  %29 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %params18 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %29, i32 0, i32 0
  %M1 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %params18, i32 0, i32 3
  store i16 %conv17, i16* %M1, align 2, !tbaa !80
  %30 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %params19 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %30, i32 0, i32 0
  %N1 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %params19, i32 0, i32 4
  store i16 0, i16* %N1, align 2, !tbaa !81
  %31 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %params20 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %31, i32 0, i32 0
  %R1 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %params20, i32 0, i32 5
  store i16 1, i16* %R1, align 2, !tbaa !82
  %32 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %33 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc.addr, align 8, !tbaa !1
  %params21 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %33, i32 0, i32 3
  %threshold22 = bitcast %union.anon.2* %params21 to %struct.gs_threshold_halftone_s*
  %width23 = getelementptr inbounds %struct.gs_threshold_halftone_s, %struct.gs_threshold_halftone_s* %threshold22, i32 0, i32 0
  %34 = load i32, i32* %width23, align 4, !tbaa !39
  %35 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc.addr, align 8, !tbaa !1
  %params24 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %35, i32 0, i32 3
  %threshold25 = bitcast %union.anon.2* %params24 to %struct.gs_threshold_halftone_s*
  %height26 = getelementptr inbounds %struct.gs_threshold_halftone_s, %struct.gs_threshold_halftone_s* %threshold25, i32 0, i32 1
  %36 = load i32, i32* %height26, align 4, !tbaa !42
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %call27 = call i32 @gx_ht_alloc_threshold_order(%struct.gx_ht_order_s* %32, i32 %34, i32 %36, i32 256, %struct.gs_memory_s* %37) #3
  store i32 %call27, i32* %code8, align 4, !tbaa !5
  %38 = load i32, i32* %code8, align 4, !tbaa !5
  %cmp28 = icmp slt i32 %38, 0
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.else
  %39 = load i32, i32* %code8, align 4, !tbaa !5
  store i32 %39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.36

if.end.31:                                        ; preds = %if.else
  %40 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %41 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc.addr, align 8, !tbaa !1
  %params32 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %41, i32 0, i32 3
  %threshold33 = bitcast %union.anon.2* %params32 to %struct.gs_threshold_halftone_s*
  %thresholds = getelementptr inbounds %struct.gs_threshold_halftone_s, %struct.gs_threshold_halftone_s* %threshold33, i32 0, i32 3
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %thresholds, i32 0, i32 0
  %42 = load i8*, i8** %data, align 8, !tbaa !83
  %call34 = call i32 @gx_ht_construct_threshold_order(%struct.gx_ht_order_s* %40, i8* %42) #3
  %43 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %transfer9, align 8, !tbaa !1
  %44 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %transfer35 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %44, i32 0, i32 15
  store %struct.gx_transfer_map_s* %43, %struct.gx_transfer_map_s** %transfer35, align 8, !tbaa !74
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.36

cleanup.36:                                       ; preds = %if.end.31, %if.then.30
  %45 = bitcast %struct.gx_transfer_map_s** %transfer9 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = bitcast i32* %code8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %cleanup.dest.38 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.38, label %unreachable [
    i32 0, label %cleanup.cont.39
    i32 1, label %return
  ]

cleanup.cont.39:                                  ; preds = %cleanup.36
  br label %if.end.40

if.end.40:                                        ; preds = %cleanup.cont.39, %cleanup.cont
  %47 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc.addr, align 8, !tbaa !1
  %48 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %transfer41 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %48, i32 0, i32 15
  %49 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %transfer41, align 8, !tbaa !74
  call void @build_transfer_map(%struct.gs_halftone_component_s* %47, %struct.gx_transfer_map_s* %49) #3
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.40, %cleanup.36, %cleanup
  %50 = load i32, i32* %retval
  ret i32 %50

unreachable:                                      ; preds = %cleanup.36, %cleanup
  unreachable
}

declare %struct.gx_ht_cache_s* @gx_ht_alloc_cache(%struct.gs_memory_s*, i32, i32) #2

declare void @gx_ht_init_cache(%struct.gs_memory_s*, %struct.gx_ht_cache_s*, %struct.gx_ht_order_s*) #2

; Function Attrs: nounwind uwtable
define internal void @free_order_array(%struct.gx_ht_order_component_s* %pocs, i32 %num_comps, %struct.gs_memory_s* %pmem) #0 {
entry:
  %pocs.addr = alloca %struct.gx_ht_order_component_s*, align 8
  %num_comps.addr = alloca i32, align 4
  %pmem.addr = alloca %struct.gs_memory_s*, align 8
  %i = alloca i32, align 4
  store %struct.gx_ht_order_component_s* %pocs, %struct.gx_ht_order_component_s** %pocs.addr, align 8, !tbaa !1
  store i32 %num_comps, i32* %num_comps.addr, align 4, !tbaa !5
  store %struct.gs_memory_s* %pmem, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !5
  %2 = load i32, i32* %num_comps.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %pocs.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %4, i64 %idxprom
  %corder = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx, i32 0, i32 0
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  call void @gx_ht_order_release(%struct.gx_ht_order_s* %corder, %struct.gs_memory_s* %5, i32 1) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %8 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !17
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %10 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %pocs.addr, align 8, !tbaa !1
  %11 = bitcast %struct.gx_ht_order_component_s* %10 to i8*
  call void %8(%struct.gs_memory_s* %9, i8* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0)) #3
  %12 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  ret void
}

declare i32 @gx_ht_install(%struct.gs_state_s*, %struct.gs_halftone_s*, %struct.gx_device_halftone_s*) #2

declare void @gx_device_halftone_release(%struct.gx_device_halftone_s*, %struct.gs_memory_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gs_ht_set_mask_comp(%struct.gs_halftone_s* %pht, i32 %component_index, i32 %width, i32 %height, i32 %num_levels, i8* %masks, float (double, %struct.gx_transfer_map_s*, i8*)* %transfer, i8* %client_data) #0 {
entry:
  %retval = alloca i32, align 4
  %pht.addr = alloca %struct.gs_halftone_s*, align 8
  %component_index.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %num_levels.addr = alloca i32, align 4
  %masks.addr = alloca i8*, align 8
  %transfer.addr = alloca float (double, %struct.gx_transfer_map_s*, i8*)*, align 8
  %client_data.addr = alloca i8*, align 8
  %phtc = alloca %struct.gs_halftone_component_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_halftone_s* %pht, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  store i32 %component_index, i32* %component_index.addr, align 4, !tbaa !5
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store i32 %num_levels, i32* %num_levels.addr, align 4, !tbaa !5
  store i8* %masks, i8** %masks.addr, align 8, !tbaa !1
  store float (double, %struct.gx_transfer_map_s*, i8*)* %transfer, float (double, %struct.gx_transfer_map_s*, i8*)** %transfer.addr, align 8, !tbaa !1
  store i8* %client_data, i8** %client_data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_halftone_component_s** %phtc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i32, i32* %component_index.addr, align 4, !tbaa !5
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %2, i32 0, i32 2
  %multiple = bitcast %union.anon* %params to %struct.gs_multiple_halftone_s*
  %components = getelementptr inbounds %struct.gs_multiple_halftone_s, %struct.gs_multiple_halftone_s* %multiple, i32 0, i32 0
  %3 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %components, align 8, !tbaa !19
  %arrayidx = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %3, i64 %idxprom
  store %struct.gs_halftone_component_s* %arrayidx, %struct.gs_halftone_component_s** %phtc, align 8, !tbaa !1
  %4 = load i32, i32* %component_index.addr, align 4, !tbaa !5
  %5 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %5, i32 0, i32 2
  %multiple2 = bitcast %union.anon* %params1 to %struct.gs_multiple_halftone_s*
  %num_comp = getelementptr inbounds %struct.gs_multiple_halftone_s, %struct.gs_multiple_halftone_s* %multiple2, i32 0, i32 1
  %6 = load i32, i32* %num_comp, align 4, !tbaa !21
  %cmp = icmp uge i32 %4, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %7, i32 0, i32 2
  %8 = load i32, i32* %type, align 4, !tbaa !25
  %cmp3 = icmp ne i32 %8, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %9 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc, align 8, !tbaa !1
  %type6 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %9, i32 0, i32 2
  store i32 8, i32* %type6, align 4, !tbaa !25
  %10 = load i32, i32* %width.addr, align 4, !tbaa !5
  %11 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc, align 8, !tbaa !1
  %params7 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %11, i32 0, i32 3
  %client_order = bitcast %union.anon.2* %params7 to %struct.gs_client_order_halftone_s*
  %width8 = getelementptr inbounds %struct.gs_client_order_halftone_s, %struct.gs_client_order_halftone_s* %client_order, i32 0, i32 0
  store i32 %10, i32* %width8, align 4, !tbaa !84
  %12 = load i32, i32* %height.addr, align 4, !tbaa !5
  %13 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc, align 8, !tbaa !1
  %params9 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %13, i32 0, i32 3
  %client_order10 = bitcast %union.anon.2* %params9 to %struct.gs_client_order_halftone_s*
  %height11 = getelementptr inbounds %struct.gs_client_order_halftone_s, %struct.gs_client_order_halftone_s* %client_order10, i32 0, i32 1
  store i32 %12, i32* %height11, align 4, !tbaa !86
  %14 = load i32, i32* %num_levels.addr, align 4, !tbaa !5
  %15 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc, align 8, !tbaa !1
  %params12 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %15, i32 0, i32 3
  %client_order13 = bitcast %union.anon.2* %params12 to %struct.gs_client_order_halftone_s*
  %num_levels14 = getelementptr inbounds %struct.gs_client_order_halftone_s, %struct.gs_client_order_halftone_s* %client_order13, i32 0, i32 2
  store i32 %14, i32* %num_levels14, align 4, !tbaa !87
  %16 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc, align 8, !tbaa !1
  %params15 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %16, i32 0, i32 3
  %client_order16 = bitcast %union.anon.2* %params15 to %struct.gs_client_order_halftone_s*
  %procs = getelementptr inbounds %struct.gs_client_order_halftone_s, %struct.gs_client_order_halftone_s* %client_order16, i32 0, i32 3
  store %struct.gs_client_order_ht_procs_s* @mask_order_procs, %struct.gs_client_order_ht_procs_s** %procs, align 8, !tbaa !88
  %17 = load i8*, i8** %masks.addr, align 8, !tbaa !1
  %18 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc, align 8, !tbaa !1
  %params17 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %18, i32 0, i32 3
  %client_order18 = bitcast %union.anon.2* %params17 to %struct.gs_client_order_halftone_s*
  %client_data19 = getelementptr inbounds %struct.gs_client_order_halftone_s, %struct.gs_client_order_halftone_s* %client_order18, i32 0, i32 4
  store i8* %17, i8** %client_data19, align 8, !tbaa !89
  %19 = load float (double, %struct.gx_transfer_map_s*, i8*)*, float (double, %struct.gx_transfer_map_s*, i8*)** %transfer.addr, align 8, !tbaa !1
  %cmp20 = icmp eq float (double, %struct.gx_transfer_map_s*, i8*)* %19, null
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.5
  br label %cond.end

cond.false:                                       ; preds = %if.end.5
  %20 = load float (double, %struct.gx_transfer_map_s*, i8*)*, float (double, %struct.gx_transfer_map_s*, i8*)** %transfer.addr, align 8, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float (double, %struct.gx_transfer_map_s*, i8*)* [ @null_closure_transfer, %cond.true ], [ %20, %cond.false ]
  %21 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc, align 8, !tbaa !1
  %params21 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %21, i32 0, i32 3
  %client_order22 = bitcast %union.anon.2* %params21 to %struct.gs_client_order_halftone_s*
  %transfer_closure = getelementptr inbounds %struct.gs_client_order_halftone_s, %struct.gs_client_order_halftone_s* %client_order22, i32 0, i32 5
  %proc = getelementptr inbounds %struct.gs_mapping_closure_s, %struct.gs_mapping_closure_s* %transfer_closure, i32 0, i32 0
  store float (double, %struct.gx_transfer_map_s*, i8*)* %cond, float (double, %struct.gx_transfer_map_s*, i8*)** %proc, align 8, !tbaa !90
  %22 = load i8*, i8** %client_data.addr, align 8, !tbaa !1
  %23 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc, align 8, !tbaa !1
  %params23 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %23, i32 0, i32 3
  %client_order24 = bitcast %union.anon.2* %params23 to %struct.gs_client_order_halftone_s*
  %transfer_closure25 = getelementptr inbounds %struct.gs_client_order_halftone_s, %struct.gs_client_order_halftone_s* %client_order24, i32 0, i32 5
  %data = getelementptr inbounds %struct.gs_mapping_closure_s, %struct.gs_mapping_closure_s* %transfer_closure25, i32 0, i32 1
  store i8* %22, i8** %data, align 8, !tbaa !91
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then.4, %if.then
  %24 = bitcast %struct.gs_halftone_component_s** %phtc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = load i32, i32* %retval
  ret i32 %25
}

declare i64 @gs_next_ids(%struct.gs_memory_s*, i32) #2

declare i32 @gx_ht_process_screen_memory(%struct.gs_screen_enum_s*, %struct.gs_state_s*, %struct.gs_screen_halftone_s*, i32, %struct.gs_memory_s*) #2

declare i32 @gx_ht_alloc_threshold_order(%struct.gx_ht_order_s*, i32, i32, i32, %struct.gs_memory_s*) #2

declare i32 @gx_ht_construct_threshold_order(%struct.gx_ht_order_s*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @build_transfer_map(%struct.gs_halftone_component_s* %phtc, %struct.gx_transfer_map_s* %pmap) #0 {
entry:
  %phtc.addr = alloca %struct.gs_halftone_component_s*, align 8
  %pmap.addr = alloca %struct.gx_transfer_map_s*, align 8
  %proc = alloca float (double, %struct.gx_transfer_map_s*, i8*)*, align 8
  %client_info = alloca i8*, align 8
  %i = alloca i32, align 4
  %values = alloca i16*, align 8
  %fval = alloca float, align 4
  store %struct.gs_halftone_component_s* %phtc, %struct.gs_halftone_component_s** %phtc.addr, align 8, !tbaa !1
  store %struct.gx_transfer_map_s* %pmap, %struct.gx_transfer_map_s** %pmap.addr, align 8, !tbaa !1
  %0 = bitcast float (double, %struct.gx_transfer_map_s*, i8*)** %proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %client_info to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i16** %values to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %pmap.addr, align 8, !tbaa !1
  %values1 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %4, i32 0, i32 4
  %arraydecay = getelementptr inbounds [256 x i16], [256 x i16]* %values1, i32 0, i32 0
  store i16* %arraydecay, i16** %values, align 8, !tbaa !1
  %5 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %5, i32 0, i32 2
  %6 = load i32, i32* %type, align 4, !tbaa !25
  %cmp = icmp eq i32 %6, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %7, i32 0, i32 3
  %spot = bitcast %union.anon.2* %params to %struct.gs_spot_halftone_s*
  %transfer_closure = getelementptr inbounds %struct.gs_spot_halftone_s, %struct.gs_spot_halftone_s* %spot, i32 0, i32 3
  %proc2 = getelementptr inbounds %struct.gs_mapping_closure_s, %struct.gs_mapping_closure_s* %transfer_closure, i32 0, i32 0
  %8 = load float (double, %struct.gx_transfer_map_s*, i8*)*, float (double, %struct.gx_transfer_map_s*, i8*)** %proc2, align 8, !tbaa !37
  store float (double, %struct.gx_transfer_map_s*, i8*)* %8, float (double, %struct.gx_transfer_map_s*, i8*)** %proc, align 8, !tbaa !1
  %9 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc.addr, align 8, !tbaa !1
  %params3 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %9, i32 0, i32 3
  %spot4 = bitcast %union.anon.2* %params3 to %struct.gs_spot_halftone_s*
  %transfer_closure5 = getelementptr inbounds %struct.gs_spot_halftone_s, %struct.gs_spot_halftone_s* %spot4, i32 0, i32 3
  %data = getelementptr inbounds %struct.gs_mapping_closure_s, %struct.gs_mapping_closure_s* %transfer_closure5, i32 0, i32 1
  %10 = load i8*, i8** %data, align 8, !tbaa !38
  store i8* %10, i8** %client_info, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc.addr, align 8, !tbaa !1
  %params6 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %11, i32 0, i32 3
  %threshold = bitcast %union.anon.2* %params6 to %struct.gs_threshold_halftone_s*
  %transfer_closure7 = getelementptr inbounds %struct.gs_threshold_halftone_s, %struct.gs_threshold_halftone_s* %threshold, i32 0, i32 2
  %proc8 = getelementptr inbounds %struct.gs_mapping_closure_s, %struct.gs_mapping_closure_s* %transfer_closure7, i32 0, i32 0
  %12 = load float (double, %struct.gx_transfer_map_s*, i8*)*, float (double, %struct.gx_transfer_map_s*, i8*)** %proc8, align 8, !tbaa !45
  store float (double, %struct.gx_transfer_map_s*, i8*)* %12, float (double, %struct.gx_transfer_map_s*, i8*)** %proc, align 8, !tbaa !1
  %13 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc.addr, align 8, !tbaa !1
  %params9 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %13, i32 0, i32 3
  %threshold10 = bitcast %union.anon.2* %params9 to %struct.gs_threshold_halftone_s*
  %transfer_closure11 = getelementptr inbounds %struct.gs_threshold_halftone_s, %struct.gs_threshold_halftone_s* %threshold10, i32 0, i32 2
  %data12 = getelementptr inbounds %struct.gs_mapping_closure_s, %struct.gs_mapping_closure_s* %transfer_closure11, i32 0, i32 1
  %14 = load i8*, i8** %data12, align 8, !tbaa !46
  store i8* %14, i8** %client_info, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %15 = load i32, i32* %i, align 4, !tbaa !5
  %cmp13 = icmp slt i32 %15, 256
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = bitcast float* %fval to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load float (double, %struct.gx_transfer_map_s*, i8*)*, float (double, %struct.gx_transfer_map_s*, i8*)** %proc, align 8, !tbaa !1
  %18 = load i32, i32* %i, align 4, !tbaa !5
  %conv = sitofp i32 %18 to double
  %mul = fmul double %conv, 0x3F70101010101010
  %19 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %pmap.addr, align 8, !tbaa !1
  %20 = load i8*, i8** %client_info, align 8, !tbaa !1
  %call = call float %17(double %mul, %struct.gx_transfer_map_s* %19, i8* %20) #3
  store float %call, float* %fval, align 4, !tbaa !63
  %21 = load float, float* %fval, align 4, !tbaa !63
  %conv14 = fpext float %21 to double
  %cmp15 = fcmp ole double %conv14, 0.000000e+00
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end.26

cond.false:                                       ; preds = %for.body
  %22 = load float, float* %fval, align 4, !tbaa !63
  %conv17 = fpext float %22 to double
  %cmp18 = fcmp oge double %conv17, 1.000000e+00
  br i1 %cmp18, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %cond.false
  br label %cond.end

cond.false.21:                                    ; preds = %cond.false
  %23 = load float, float* %fval, align 4, !tbaa !63
  %conv22 = fpext float %23 to double
  %add = fadd double %conv22, 0x3EF0010010010010
  %mul23 = fmul double %add, 3.276000e+04
  %conv24 = fptosi double %mul23 to i16
  %conv25 = sext i16 %conv24 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false.21, %cond.true.20
  %cond = phi i32 [ 32760, %cond.true.20 ], [ %conv25, %cond.false.21 ]
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.end, %cond.true
  %cond27 = phi i32 [ 0, %cond.true ], [ %cond, %cond.end ]
  %conv28 = trunc i32 %cond27 to i16
  %24 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %24 to i64
  %25 = load i16*, i16** %values, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %25, i64 %idxprom
  store i16 %conv28, i16* %arrayidx, align 2, !tbaa !61
  %26 = bitcast float* %fval to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  br label %for.inc

for.inc:                                          ; preds = %cond.end.26
  %27 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = bitcast i16** %values to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = bitcast i8** %client_info to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = bitcast float (double, %struct.gx_transfer_map_s*, i8*)** %proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  ret void
}

declare void @gx_ht_order_release(%struct.gx_ht_order_s*, %struct.gs_memory_s*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @create_mask_order(%struct.gx_ht_order_s* %porder, %struct.gs_state_s* %pgs, %struct.gs_client_order_halftone_s* %phcop, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %porder.addr = alloca %struct.gx_ht_order_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %phcop.addr = alloca %struct.gs_client_order_halftone_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %width_bytes = alloca i32, align 4
  %masks = alloca i8*, align 8
  %bytes_per_mask = alloca i32, align 4
  %prev_mask = alloca i8*, align 8
  %num_levels = alloca i32, align 4
  %num_bits = alloca i32, align 4
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_ht_order_s* %porder, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_client_order_halftone_s* %phcop, %struct.gs_client_order_halftone_s** %phcop.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i32* %width_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_client_order_halftone_s*, %struct.gs_client_order_halftone_s** %phcop.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gs_client_order_halftone_s, %struct.gs_client_order_halftone_s* %1, i32 0, i32 0
  %2 = load i32, i32* %width, align 4, !tbaa !84
  %add = add nsw i32 %2, 7
  %shr = ashr i32 %add, 3
  store i32 %shr, i32* %width_bytes, align 4, !tbaa !5
  %3 = bitcast i8** %masks to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_client_order_halftone_s*, %struct.gs_client_order_halftone_s** %phcop.addr, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_client_order_halftone_s, %struct.gs_client_order_halftone_s* %4, i32 0, i32 4
  %5 = load i8*, i8** %client_data, align 8, !tbaa !89
  store i8* %5, i8** %masks, align 8, !tbaa !1
  %6 = bitcast i32* %bytes_per_mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i32, i32* %width_bytes, align 4, !tbaa !5
  %8 = load %struct.gs_client_order_halftone_s*, %struct.gs_client_order_halftone_s** %phcop.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gs_client_order_halftone_s, %struct.gs_client_order_halftone_s* %8, i32 0, i32 1
  %9 = load i32, i32* %height, align 4, !tbaa !86
  %mul = mul nsw i32 %7, %9
  store i32 %mul, i32* %bytes_per_mask, align 4, !tbaa !5
  %10 = bitcast i8** %prev_mask to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i32* %num_levels to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.gs_client_order_halftone_s*, %struct.gs_client_order_halftone_s** %phcop.addr, align 8, !tbaa !1
  %num_levels1 = getelementptr inbounds %struct.gs_client_order_halftone_s, %struct.gs_client_order_halftone_s* %12, i32 0, i32 2
  %13 = load i32, i32* %num_levels1, align 4, !tbaa !87
  store i32 %13, i32* %num_levels, align 4, !tbaa !5
  %14 = bitcast i32* %num_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  store i32 0, i32* %num_bits, align 4, !tbaa !5
  %15 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load i8*, i8** %masks, align 8, !tbaa !1
  store i8* %17, i8** %prev_mask, align 8, !tbaa !1
  store i32 0, i32* %num_bits, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %18 = load i32, i32* %i, align 4, !tbaa !5
  %19 = load i32, i32* %num_levels, align 4, !tbaa !5
  %sub = sub nsw i32 %19, 1
  %cmp = icmp slt i32 %18, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i8*, i8** %prev_mask, align 8, !tbaa !1
  %21 = load i8*, i8** %prev_mask, align 8, !tbaa !1
  %22 = load i32, i32* %bytes_per_mask, align 4, !tbaa !5
  %idx.ext = sext i32 %22 to i64
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 %idx.ext
  %23 = load %struct.gs_client_order_halftone_s*, %struct.gs_client_order_halftone_s** %phcop.addr, align 8, !tbaa !1
  %width2 = getelementptr inbounds %struct.gs_client_order_halftone_s, %struct.gs_client_order_halftone_s* %23, i32 0, i32 0
  %24 = load i32, i32* %width2, align 4, !tbaa !84
  %25 = load %struct.gs_client_order_halftone_s*, %struct.gs_client_order_halftone_s** %phcop.addr, align 8, !tbaa !1
  %height3 = getelementptr inbounds %struct.gs_client_order_halftone_s, %struct.gs_client_order_halftone_s* %25, i32 0, i32 1
  %26 = load i32, i32* %height3, align 4, !tbaa !86
  %call = call i32 @create_mask_bits(i8* %20, i8* %add.ptr, i32 %24, i32 %26, %struct.gx_ht_bit_s* null) #3
  %27 = load i32, i32* %num_bits, align 4, !tbaa !5
  %add4 = add nsw i32 %27, %call
  store i32 %add4, i32* %num_bits, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  %29 = load i32, i32* %bytes_per_mask, align 4, !tbaa !5
  %30 = load i8*, i8** %prev_mask, align 8, !tbaa !1
  %idx.ext5 = sext i32 %29 to i64
  %add.ptr6 = getelementptr inbounds i8, i8* %30, i64 %idx.ext5
  store i8* %add.ptr6, i8** %prev_mask, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %32 = load %struct.gs_client_order_halftone_s*, %struct.gs_client_order_halftone_s** %phcop.addr, align 8, !tbaa !1
  %width7 = getelementptr inbounds %struct.gs_client_order_halftone_s, %struct.gs_client_order_halftone_s* %32, i32 0, i32 0
  %33 = load i32, i32* %width7, align 4, !tbaa !84
  %34 = load %struct.gs_client_order_halftone_s*, %struct.gs_client_order_halftone_s** %phcop.addr, align 8, !tbaa !1
  %height8 = getelementptr inbounds %struct.gs_client_order_halftone_s, %struct.gs_client_order_halftone_s* %34, i32 0, i32 1
  %35 = load i32, i32* %height8, align 4, !tbaa !86
  %36 = load i32, i32* %num_levels, align 4, !tbaa !5
  %37 = load i32, i32* %num_bits, align 4, !tbaa !5
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call9 = call i32 @gx_ht_alloc_client_order(%struct.gx_ht_order_s* %31, i32 %33, i32 %35, i32 %36, i32 %37, %struct.gs_memory_s* %38) #3
  store i32 %call9, i32* %code, align 4, !tbaa !5
  %39 = load i32, i32* %code, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %39, 0
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %40 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %40, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.end
  %41 = load i8*, i8** %masks, align 8, !tbaa !1
  store i8* %41, i8** %prev_mask, align 8, !tbaa !1
  store i32 0, i32* %num_bits, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.23, %if.end
  %42 = load i32, i32* %i, align 4, !tbaa !5
  %43 = load i32, i32* %num_levels, align 4, !tbaa !5
  %sub12 = sub nsw i32 %43, 1
  %cmp13 = icmp slt i32 %42, %sub12
  br i1 %cmp13, label %for.body.14, label %for.end.27

for.body.14:                                      ; preds = %for.cond.11
  %44 = load i32, i32* %num_bits, align 4, !tbaa !5
  %45 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %45 to i64
  %46 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %levels = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %46, i32 0, i32 12
  %47 = load i32*, i32** %levels, align 8, !tbaa !92
  %arrayidx = getelementptr inbounds i32, i32* %47, i64 %idxprom
  store i32 %44, i32* %arrayidx, align 4, !tbaa !5
  %48 = load i8*, i8** %prev_mask, align 8, !tbaa !1
  %49 = load i8*, i8** %prev_mask, align 8, !tbaa !1
  %50 = load i32, i32* %bytes_per_mask, align 4, !tbaa !5
  %idx.ext15 = sext i32 %50 to i64
  %add.ptr16 = getelementptr inbounds i8, i8* %49, i64 %idx.ext15
  %51 = load %struct.gs_client_order_halftone_s*, %struct.gs_client_order_halftone_s** %phcop.addr, align 8, !tbaa !1
  %width17 = getelementptr inbounds %struct.gs_client_order_halftone_s, %struct.gs_client_order_halftone_s* %51, i32 0, i32 0
  %52 = load i32, i32* %width17, align 4, !tbaa !84
  %53 = load %struct.gs_client_order_halftone_s*, %struct.gs_client_order_halftone_s** %phcop.addr, align 8, !tbaa !1
  %height18 = getelementptr inbounds %struct.gs_client_order_halftone_s, %struct.gs_client_order_halftone_s* %53, i32 0, i32 1
  %54 = load i32, i32* %height18, align 4, !tbaa !86
  %55 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %bit_data = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %55, i32 0, i32 13
  %56 = load i8*, i8** %bit_data, align 8, !tbaa !93
  %57 = bitcast i8* %56 to %struct.gx_ht_bit_s*
  %58 = load i32, i32* %num_bits, align 4, !tbaa !5
  %idx.ext19 = sext i32 %58 to i64
  %add.ptr20 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %57, i64 %idx.ext19
  %call21 = call i32 @create_mask_bits(i8* %48, i8* %add.ptr16, i32 %52, i32 %54, %struct.gx_ht_bit_s* %add.ptr20) #3
  %59 = load i32, i32* %num_bits, align 4, !tbaa !5
  %add22 = add nsw i32 %59, %call21
  store i32 %add22, i32* %num_bits, align 4, !tbaa !5
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.body.14
  %60 = load i32, i32* %i, align 4, !tbaa !5
  %inc24 = add nsw i32 %60, 1
  store i32 %inc24, i32* %i, align 4, !tbaa !5
  %61 = load i32, i32* %bytes_per_mask, align 4, !tbaa !5
  %62 = load i8*, i8** %prev_mask, align 8, !tbaa !1
  %idx.ext25 = sext i32 %61 to i64
  %add.ptr26 = getelementptr inbounds i8, i8* %62, i64 %idx.ext25
  store i8* %add.ptr26, i8** %prev_mask, align 8, !tbaa !1
  br label %for.cond.11

for.end.27:                                       ; preds = %for.cond.11
  %63 = load i32, i32* %num_bits, align 4, !tbaa !5
  %64 = load i32, i32* %num_levels, align 4, !tbaa !5
  %sub28 = sub nsw i32 %64, 1
  %idxprom29 = sext i32 %sub28 to i64
  %65 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %levels30 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %65, i32 0, i32 12
  %66 = load i32*, i32** %levels30, align 8, !tbaa !92
  %arrayidx31 = getelementptr inbounds i32, i32* %66, i64 %idxprom29
  store i32 %63, i32* %arrayidx31, align 4, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.27, %if.then
  %67 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = bitcast i32* %num_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  %70 = bitcast i32* %num_levels to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %71 = bitcast i8** %prev_mask to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = bitcast i32* %bytes_per_mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = bitcast i8** %masks to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  %74 = bitcast i32* %width_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = load i32, i32* %retval
  ret i32 %75
}

; Function Attrs: nounwind uwtable
define internal i32 @create_mask_bits(i8* %mask1, i8* %mask2, i32 %width, i32 %height, %struct.gx_ht_bit_s* %bits) #0 {
entry:
  %mask1.addr = alloca i8*, align 8
  %mask2.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %bits.addr = alloca %struct.gx_ht_bit_s*, align 8
  %width_bytes = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %count = alloca i32, align 4
  %offset = alloca i32, align 4
  %bit_mask = alloca i8, align 1
  store i8* %mask1, i8** %mask1.addr, align 8, !tbaa !1
  store i8* %mask2, i8** %mask2.addr, align 8, !tbaa !1
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store %struct.gx_ht_bit_s* %bits, %struct.gx_ht_bit_s** %bits.addr, align 8, !tbaa !1
  %0 = bitcast i32* %width_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %width.addr, align 4, !tbaa !5
  %add = add nsw i32 %1, 7
  %shr = ashr i32 %add, 3
  store i32 %shr, i32* %width_bytes, align 4, !tbaa !5
  %2 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %count, align 4, !tbaa !5
  store i32 0, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.21, %entry
  %5 = load i32, i32* %y, align 4, !tbaa !5
  %6 = load i32, i32* %height.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end.23

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4, !tbaa !5
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %7 = load i32, i32* %x, align 4, !tbaa !5
  %8 = load i32, i32* %width.addr, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %7, %8
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %9 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load i32, i32* %y, align 4, !tbaa !5
  %11 = load i32, i32* %width_bytes, align 4, !tbaa !5
  %mul = mul nsw i32 %10, %11
  %12 = load i32, i32* %x, align 4, !tbaa !5
  %shr4 = ashr i32 %12, 3
  %add5 = add nsw i32 %mul, %shr4
  store i32 %add5, i32* %offset, align 4, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %bit_mask) #1
  %13 = load i32, i32* %x, align 4, !tbaa !5
  %and = and i32 %13, 7
  %shr6 = ashr i32 128, %and
  %conv = trunc i32 %shr6 to i8
  store i8 %conv, i8* %bit_mask, align 1, !tbaa !47
  %14 = load i32, i32* %offset, align 4, !tbaa !5
  %idxprom = sext i32 %14 to i64
  %15 = load i8*, i8** %mask1.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %idxprom
  %16 = load i8, i8* %arrayidx, align 1, !tbaa !47
  %conv7 = zext i8 %16 to i32
  %17 = load i32, i32* %offset, align 4, !tbaa !5
  %idxprom8 = sext i32 %17 to i64
  %18 = load i8*, i8** %mask2.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i8, i8* %18, i64 %idxprom8
  %19 = load i8, i8* %arrayidx9, align 1, !tbaa !47
  %conv10 = zext i8 %19 to i32
  %xor = xor i32 %conv7, %conv10
  %20 = load i8, i8* %bit_mask, align 1, !tbaa !47
  %conv11 = zext i8 %20 to i32
  %and12 = and i32 %xor, %conv11
  %tobool = icmp ne i32 %and12, 0
  br i1 %tobool, label %if.then, label %if.end.19

if.then:                                          ; preds = %for.body.3
  %21 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %bits.addr, align 8, !tbaa !1
  %tobool13 = icmp ne %struct.gx_ht_bit_s* %21, null
  br i1 %tobool13, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %if.then
  %22 = load i32, i32* %count, align 4, !tbaa !5
  %idxprom15 = sext i32 %22 to i64
  %23 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %bits.addr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %23, i64 %idxprom15
  %24 = load i32, i32* %width.addr, align 4, !tbaa !5
  %25 = load i32, i32* %y, align 4, !tbaa !5
  %26 = load i32, i32* %width.addr, align 4, !tbaa !5
  %mul17 = mul nsw i32 %25, %26
  %27 = load i32, i32* %x, align 4, !tbaa !5
  %add18 = add nsw i32 %mul17, %27
  call void @gx_ht_construct_bit(%struct.gx_ht_bit_s* %arrayidx16, i32 %24, i32 %add18) #3
  br label %if.end

if.end:                                           ; preds = %if.then.14, %if.then
  %28 = load i32, i32* %count, align 4, !tbaa !5
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %count, align 4, !tbaa !5
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %for.body.3
  call void @llvm.lifetime.end(i64 1, i8* %bit_mask) #1
  %29 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %30 = load i32, i32* %x, align 4, !tbaa !5
  %inc20 = add nsw i32 %30, 1
  store i32 %inc20, i32* %x, align 4, !tbaa !5
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.end
  %31 = load i32, i32* %y, align 4, !tbaa !5
  %inc22 = add nsw i32 %31, 1
  store i32 %inc22, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.end.23:                                       ; preds = %for.cond
  %32 = load i32, i32* %count, align 4, !tbaa !5
  %33 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast i32* %width_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  ret i32 %32
}

declare i32 @gx_ht_alloc_client_order(%struct.gx_ht_order_s*, i32, i32, i32, i32, %struct.gs_memory_s*) #2

declare void @gx_ht_construct_bit(%struct.gx_ht_bit_s*, i32, i32) #2

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
!7 = !{!8, !2, i64 72}
!8 = !{!"gs_memory_s", !2, i64 0, !9, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!9 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!10 = !{!11, !13, i64 8}
!11 = !{!"gs_halftone_s", !3, i64 0, !12, i64 8, !3, i64 32}
!12 = !{!"rc_header_s", !13, i64 0, !2, i64 8, !2, i64 16}
!13 = !{!"long", !3, i64 0}
!14 = !{!11, !2, i64 16}
!15 = !{!11, !2, i64 24}
!16 = !{!8, !2, i64 104}
!17 = !{!8, !2, i64 24}
!18 = !{!11, !3, i64 0}
!19 = !{!20, !2, i64 0}
!20 = !{!"gs_multiple_halftone_s", !2, i64 0, !6, i64 8, !2, i64 16}
!21 = !{!20, !6, i64 8}
!22 = !{!23, !6, i64 0}
!23 = !{!"gs_halftone_component_s", !6, i64 0, !6, i64 4, !3, i64 8, !3, i64 16}
!24 = !{!23, !6, i64 4}
!25 = !{!23, !3, i64 8}
!26 = !{!27, !27, i64 0}
!27 = !{!"double", !3, i64 0}
!28 = !{!29, !31, i64 0}
!29 = !{!"gs_spot_halftone_s", !30, i64 0, !6, i64 24, !2, i64 32, !32, i64 40}
!30 = !{!"gs_screen_halftone_s", !31, i64 0, !31, i64 4, !2, i64 8, !31, i64 16, !31, i64 20}
!31 = !{!"float", !3, i64 0}
!32 = !{!"gs_mapping_closure_s", !2, i64 0, !2, i64 8}
!33 = !{!29, !31, i64 4}
!34 = !{!29, !2, i64 8}
!35 = !{!29, !6, i64 24}
!36 = !{!29, !2, i64 32}
!37 = !{!29, !2, i64 40}
!38 = !{!29, !2, i64 48}
!39 = !{!40, !6, i64 0}
!40 = !{!"gs_threshold_halftone_s", !6, i64 0, !6, i64 4, !32, i64 8, !41, i64 24, !2, i64 40}
!41 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!42 = !{!40, !6, i64 4}
!43 = !{i64 0, i64 8, !1, i64 8, i64 4, !5}
!44 = !{!40, !2, i64 40}
!45 = !{!40, !2, i64 8}
!46 = !{!40, !2, i64 16}
!47 = !{!3, !3, i64 0}
!48 = !{!49, !52, i64 44}
!49 = !{!"gx_ht_order_component_s", !50, i64 0, !6, i64 160, !6, i64 164}
!50 = !{!"gx_ht_order_s", !51, i64 0, !52, i64 40, !52, i64 42, !52, i64 44, !52, i64 46, !52, i64 48, !52, i64 50, !6, i64 52, !6, i64 56, !6, i64 60, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !53, i64 112, !2, i64 144, !6, i64 152}
!51 = !{!"gx_ht_cell_params_s", !52, i64 0, !52, i64 2, !52, i64 4, !52, i64 6, !52, i64 8, !52, i64 10, !13, i64 16, !52, i64 24, !52, i64 26, !6, i64 28, !6, i64 32, !6, i64 36}
!52 = !{!"short", !3, i64 0}
!53 = !{!"gx_ht_order_screen_params_s", !54, i64 0, !13, i64 24}
!54 = !{!"gs_matrix_s", !31, i64 0, !31, i64 4, !31, i64 8, !31, i64 12, !31, i64 16, !31, i64 20}
!55 = !{!49, !6, i64 60}
!56 = !{!49, !52, i64 40}
!57 = !{!49, !2, i64 96}
!58 = !{!59, !2, i64 168}
!59 = !{!"gx_device_halftone_s", !50, i64 0, !12, i64 160, !13, i64 184, !3, i64 192, !2, i64 200, !6, i64 208, !6, i64 212, !6, i64 216, !6, i64 220}
!60 = !{i64 0, i64 2, !61, i64 2, i64 2, !61, i64 4, i64 2, !61, i64 6, i64 2, !61, i64 8, i64 2, !61, i64 10, i64 2, !61, i64 16, i64 8, !62, i64 24, i64 2, !61, i64 26, i64 2, !61, i64 28, i64 4, !5, i64 32, i64 4, !5, i64 36, i64 4, !5, i64 40, i64 2, !61, i64 42, i64 2, !61, i64 44, i64 2, !61, i64 46, i64 2, !61, i64 48, i64 2, !61, i64 50, i64 2, !61, i64 52, i64 4, !5, i64 56, i64 4, !5, i64 60, i64 4, !5, i64 64, i64 8, !1, i64 72, i64 8, !1, i64 80, i64 8, !1, i64 88, i64 8, !1, i64 96, i64 8, !1, i64 104, i64 8, !1, i64 112, i64 4, !63, i64 116, i64 4, !63, i64 120, i64 4, !63, i64 124, i64 4, !63, i64 128, i64 4, !63, i64 132, i64 4, !63, i64 136, i64 8, !62, i64 144, i64 8, !1, i64 152, i64 4, !5}
!61 = !{!52, !52, i64 0}
!62 = !{!13, !13, i64 0}
!63 = !{!31, !31, i64 0}
!64 = !{!59, !2, i64 200}
!65 = !{!59, !6, i64 208}
!66 = !{!49, !2, i64 104}
!67 = !{!68, !2, i64 24}
!68 = !{!"gx_transfer_map_s", !12, i64 0, !2, i64 24, !32, i64 32, !13, i64 48, !3, i64 56}
!69 = !{!68, !13, i64 48}
!70 = !{!49, !2, i64 80}
!71 = !{!49, !2, i64 88}
!72 = !{!49, !6, i64 164}
!73 = !{!49, !6, i64 160}
!74 = !{!50, !2, i64 104}
!75 = !{!76, !2, i64 232}
!76 = !{!"gs_screen_enum_s", !11, i64 0, !50, i64 128, !54, i64 288, !54, i64 312, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !2, i64 352}
!77 = !{!50, !52, i64 0}
!78 = !{!50, !52, i64 2}
!79 = !{!50, !52, i64 4}
!80 = !{!50, !52, i64 6}
!81 = !{!50, !52, i64 8}
!82 = !{!50, !52, i64 10}
!83 = !{!40, !2, i64 24}
!84 = !{!85, !6, i64 0}
!85 = !{!"gs_client_order_halftone_s", !6, i64 0, !6, i64 4, !6, i64 8, !2, i64 16, !2, i64 24, !32, i64 32}
!86 = !{!85, !6, i64 4}
!87 = !{!85, !6, i64 8}
!88 = !{!85, !2, i64 16}
!89 = !{!85, !2, i64 24}
!90 = !{!85, !2, i64 32}
!91 = !{!85, !2, i64 40}
!92 = !{!50, !2, i64 80}
!93 = !{!50, !2, i64 88}
