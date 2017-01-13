; ModuleID = './gshtscr.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, {}* }
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
%struct.gx_ht_cell_params_s = type { i16, i16, i16, i16, i16, i16, i64, i16, i16, i32, i32, i32 }
%struct.gs_screen_enum_s = type { %struct.gs_halftone_s, %struct.gx_ht_order_s, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, %struct.gs_state_s* }
%struct.gs_halftone_s = type { i32, %struct.rc_header_s, %union.anon }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%union.anon = type { %struct.gs_colorscreen_halftone_s }
%struct.gs_colorscreen_halftone_s = type { %union._css }
%union._css = type { [4 x %struct.gs_screen_halftone_s] }
%struct.gs_screen_halftone_s = type { float, float, float (double, double)*, float, float }
%struct.gx_ht_order_s = type { %struct.gx_ht_cell_params_s, i16, i16, i16, i16, i16, i16, i32, i32, i32, %struct.gx_ht_order_procs_s*, %struct.gs_memory_s*, i32*, i8*, %struct.gx_ht_cache_s*, %struct.gx_transfer_map_s*, %struct.gx_ht_order_screen_params_s, i8*, i32 }
%struct.gx_ht_order_procs_s = type { i32, i32 (%struct.gx_ht_order_s*, i8*)*, i32 (%struct.gx_ht_order_s*, i32, %struct.gs_int_point_s*)*, i32 (%struct.gx_ht_tile_s*, i32, %struct.gx_ht_order_s*)*, i32 (%struct.gx_ht_order_s*, i16, i8*, i32, i32, i32, i32, i32)* }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gx_ht_tile_s = type { %struct.gx_strip_bitmap_s, i32, i32 }
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gx_ht_cache_s = type { i8*, i32, %struct.gx_ht_tile_s*, i32, %struct.gx_ht_order_s, i32, i32, i32, i64, %struct.gx_ht_tile_s* (%struct.gx_ht_cache_s*, i32)* }
%struct.gx_transfer_map_s = type { %struct.rc_header_s, {}*, %struct.gs_mapping_closure_s, i64, [256 x i16] }
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
%struct.gx_cm_color_map_procs_s = type { void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* }
%struct.gs_pattern1_instance_s = type opaque
%struct.gs_fill_attributes_s = type { %struct.gs_fixed_rect_s*, i32, %struct.gx_device_halftone_s*, i32, i32, i32, %struct.patch_fill_state_s* }
%struct.patch_fill_state_s = type opaque
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gs_device_filter_stack_s = type { %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_s*, %struct.gx_device_s*, %struct.rc_header_s }
%struct.gs_device_filter_s = type opaque
%struct.gs_state_client_procs_s = type { i8* (%struct.gs_memory_s*)*, i32 (i8*, i8*)*, void (i8*, %struct.gs_memory_s*)*, i32 (i8*, i8*, i32)* }
%struct.gx_ht_bit_s = type { i32, i32 }
%struct.gc_procs_common_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)* }
%struct.gs_string_s = type { i8*, i32 }
%struct.gs_const_string_s = type { i8*, i32 }

@st_gs_screen_enum = internal constant %struct.gs_memory_struct_type_s { i32 360, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @screen_enum_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @screen_enum_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str = private unnamed_addr constant [15 x i8] c"gs_screen_enum\00", align 1
@st_ht_order = external constant %struct.gs_memory_struct_type_s, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@st_halftone = external constant %struct.gs_memory_struct_type_s, align 8

; Function Attrs: nounwind uwtable
define void @gs_setaccuratescreens(%struct.gs_memory_s* %mem, i32 %accurate) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %accurate.addr = alloca i32, align 4
  %ctx = alloca %struct.gs_lib_ctx_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %accurate, i32* %accurate.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gs_lib_ctx_s** %ctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call %struct.gs_lib_ctx_s* @gs_lib_ctx_get_interp_instance(%struct.gs_memory_s* %1) #5
  store %struct.gs_lib_ctx_s* %call, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %2 = load i32, i32* %accurate.addr, align 4, !tbaa !5
  %3 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %screen_accurate_screens = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %3, i32 0, i32 19
  store i32 %2, i32* %screen_accurate_screens, align 4, !tbaa !7
  %4 = bitcast %struct.gs_lib_ctx_s** %ctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare %struct.gs_lib_ctx_s* @gs_lib_ctx_get_interp_instance(%struct.gs_memory_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @gs_currentaccuratescreens(%struct.gs_memory_s* %mem) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %ctx = alloca %struct.gs_lib_ctx_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_lib_ctx_s** %ctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call %struct.gs_lib_ctx_s* @gs_lib_ctx_get_interp_instance(%struct.gs_memory_s* %1) #5
  store %struct.gs_lib_ctx_s* %call, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %2 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %screen_accurate_screens = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %2, i32 0, i32 19
  %3 = load i32, i32* %screen_accurate_screens, align 4, !tbaa !7
  %4 = bitcast %struct.gs_lib_ctx_s** %ctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4) #1
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define void @gs_setminscreenlevels(%struct.gs_memory_s* %mem, i32 %levels) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %levels.addr = alloca i32, align 4
  %ctx = alloca %struct.gs_lib_ctx_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %levels, i32* %levels.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gs_lib_ctx_s** %ctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call %struct.gs_lib_ctx_s* @gs_lib_ctx_get_interp_instance(%struct.gs_memory_s* %1) #5
  store %struct.gs_lib_ctx_s* %call, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %2 = load i32, i32* %levels.addr, align 4, !tbaa !5
  %3 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %screen_min_screen_levels = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %3, i32 0, i32 20
  store i32 %2, i32* %screen_min_screen_levels, align 4, !tbaa !10
  %4 = bitcast %struct.gs_lib_ctx_s** %ctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_currentminscreenlevels(%struct.gs_memory_s* %mem) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %ctx = alloca %struct.gs_lib_ctx_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_lib_ctx_s** %ctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call %struct.gs_lib_ctx_s* @gs_lib_ctx_get_interp_instance(%struct.gs_memory_s* %1) #5
  store %struct.gs_lib_ctx_s* %call, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %2 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %screen_min_screen_levels = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %2, i32 0, i32 20
  %3 = load i32, i32* %screen_min_screen_levels, align 4, !tbaa !10
  %4 = bitcast %struct.gs_lib_ctx_s** %ctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4) #1
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @gs_gshtscr_init(%struct.gs_memory_s* %mem) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @gs_setaccuratescreens(%struct.gs_memory_s* %0, i32 0) #5
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @gs_setminscreenlevels(%struct.gs_memory_s* %1, i32 1) #5
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @gx_compute_cell_values(%struct.gx_ht_cell_params_s* %phcp) #0 {
entry:
  %phcp.addr = alloca %struct.gx_ht_cell_params_s*, align 8
  %M = alloca i32, align 4
  %N = alloca i32, align 4
  %M14 = alloca i32, align 4
  %N1 = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %m1 = alloca i32, align 4
  %n1 = alloca i32, align 4
  %C = alloca i64, align 8
  %D = alloca i32, align 4
  %D1 = alloca i32, align 4
  %h = alloca i32, align 4
  %k = alloca i32, align 4
  %dy = alloca i32, align 4
  %shift = alloca i32, align 4
  store %struct.gx_ht_cell_params_s* %phcp, %struct.gx_ht_cell_params_s** %phcp.addr, align 8, !tbaa !1
  %0 = bitcast i32* %M to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_ht_cell_params_s*, %struct.gx_ht_cell_params_s** %phcp.addr, align 8, !tbaa !1
  %M1 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %1, i32 0, i32 0
  %2 = load i16, i16* %M1, align 2, !tbaa !11
  %conv = sext i16 %2 to i32
  store i32 %conv, i32* %M, align 4, !tbaa !5
  %3 = bitcast i32* %N to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gx_ht_cell_params_s*, %struct.gx_ht_cell_params_s** %phcp.addr, align 8, !tbaa !1
  %N2 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %4, i32 0, i32 1
  %5 = load i16, i16* %N2, align 2, !tbaa !14
  %conv3 = sext i16 %5 to i32
  store i32 %conv3, i32* %N, align 4, !tbaa !5
  %6 = bitcast i32* %M14 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gx_ht_cell_params_s*, %struct.gx_ht_cell_params_s** %phcp.addr, align 8, !tbaa !1
  %M15 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %7, i32 0, i32 3
  %8 = load i16, i16* %M15, align 2, !tbaa !15
  %conv6 = sext i16 %8 to i32
  store i32 %conv6, i32* %M14, align 4, !tbaa !5
  %9 = bitcast i32* %N1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.gx_ht_cell_params_s*, %struct.gx_ht_cell_params_s** %phcp.addr, align 8, !tbaa !1
  %N17 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %10, i32 0, i32 4
  %11 = load i16, i16* %N17, align 2, !tbaa !16
  %conv8 = sext i16 %11 to i32
  store i32 %conv8, i32* %N1, align 4, !tbaa !5
  %12 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load i32, i32* %M, align 4, !tbaa !5
  %cmp = icmp slt i32 %13, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %14 = load i32, i32* %M, align 4, !tbaa !5
  %sub = sub nsw i32 0, %14
  br label %cond.end

cond.false:                                       ; preds = %entry
  %15 = load i32, i32* %M, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %15, %cond.false ]
  store i32 %cond, i32* %m, align 4, !tbaa !5
  %16 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load i32, i32* %N, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %17, 0
  br i1 %cmp10, label %cond.true.12, label %cond.false.14

cond.true.12:                                     ; preds = %cond.end
  %18 = load i32, i32* %N, align 4, !tbaa !5
  %sub13 = sub nsw i32 0, %18
  br label %cond.end.15

cond.false.14:                                    ; preds = %cond.end
  %19 = load i32, i32* %N, align 4, !tbaa !5
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.14, %cond.true.12
  %cond16 = phi i32 [ %sub13, %cond.true.12 ], [ %19, %cond.false.14 ]
  store i32 %cond16, i32* %n, align 4, !tbaa !5
  %20 = bitcast i32* %m1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = load i32, i32* %M14, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %21, 0
  br i1 %cmp17, label %cond.true.19, label %cond.false.21

cond.true.19:                                     ; preds = %cond.end.15
  %22 = load i32, i32* %M14, align 4, !tbaa !5
  %sub20 = sub nsw i32 0, %22
  br label %cond.end.22

cond.false.21:                                    ; preds = %cond.end.15
  %23 = load i32, i32* %M14, align 4, !tbaa !5
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.21, %cond.true.19
  %cond23 = phi i32 [ %sub20, %cond.true.19 ], [ %23, %cond.false.21 ]
  store i32 %cond23, i32* %m1, align 4, !tbaa !5
  %24 = bitcast i32* %n1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load i32, i32* %N1, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %25, 0
  br i1 %cmp24, label %cond.true.26, label %cond.false.28

cond.true.26:                                     ; preds = %cond.end.22
  %26 = load i32, i32* %N1, align 4, !tbaa !5
  %sub27 = sub nsw i32 0, %26
  br label %cond.end.29

cond.false.28:                                    ; preds = %cond.end.22
  %27 = load i32, i32* %N1, align 4, !tbaa !5
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.false.28, %cond.true.26
  %cond30 = phi i32 [ %sub27, %cond.true.26 ], [ %27, %cond.false.28 ]
  store i32 %cond30, i32* %n1, align 4, !tbaa !5
  %28 = bitcast i64* %C to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  %29 = load i32, i32* %m, align 4, !tbaa !5
  %conv31 = zext i32 %29 to i64
  %30 = load i32, i32* %m1, align 4, !tbaa !5
  %conv32 = zext i32 %30 to i64
  %mul = mul i64 %conv31, %conv32
  %31 = load i32, i32* %n, align 4, !tbaa !5
  %conv33 = zext i32 %31 to i64
  %32 = load i32, i32* %n1, align 4, !tbaa !5
  %conv34 = zext i32 %32 to i64
  %mul35 = mul i64 %conv33, %conv34
  %add = add i64 %mul, %mul35
  %33 = load %struct.gx_ht_cell_params_s*, %struct.gx_ht_cell_params_s** %phcp.addr, align 8, !tbaa !1
  %C36 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %33, i32 0, i32 6
  store i64 %add, i64* %C36, align 8, !tbaa !17
  store i64 %add, i64* %C, align 8, !tbaa !18
  %34 = bitcast i32* %D to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  %35 = load i32, i32* %m1, align 4, !tbaa !5
  %36 = load i32, i32* %n, align 4, !tbaa !5
  %call = call i32 @igcd(i32 %35, i32 %36) #5
  %conv37 = trunc i32 %call to i16
  %37 = load %struct.gx_ht_cell_params_s*, %struct.gx_ht_cell_params_s** %phcp.addr, align 8, !tbaa !1
  %D38 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %37, i32 0, i32 7
  store i16 %conv37, i16* %D38, align 2, !tbaa !19
  %conv39 = sext i16 %conv37 to i32
  store i32 %conv39, i32* %D, align 4, !tbaa !5
  %38 = bitcast i32* %D1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #1
  %39 = load i32, i32* %m, align 4, !tbaa !5
  %40 = load i32, i32* %n1, align 4, !tbaa !5
  %call40 = call i32 @igcd(i32 %39, i32 %40) #5
  %conv41 = trunc i32 %call40 to i16
  %41 = load %struct.gx_ht_cell_params_s*, %struct.gx_ht_cell_params_s** %phcp.addr, align 8, !tbaa !1
  %D142 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %41, i32 0, i32 8
  store i16 %conv41, i16* %D142, align 2, !tbaa !20
  %conv43 = sext i16 %conv41 to i32
  store i32 %conv43, i32* %D1, align 4, !tbaa !5
  %42 = load i64, i64* %C, align 8, !tbaa !18
  %43 = load i32, i32* %D, align 4, !tbaa !5
  %conv44 = sext i32 %43 to i64
  %div = udiv i64 %42, %conv44
  %conv45 = trunc i64 %div to i32
  %44 = load %struct.gx_ht_cell_params_s*, %struct.gx_ht_cell_params_s** %phcp.addr, align 8, !tbaa !1
  %W = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %44, i32 0, i32 9
  store i32 %conv45, i32* %W, align 4, !tbaa !21
  %45 = load i64, i64* %C, align 8, !tbaa !18
  %46 = load i32, i32* %D1, align 4, !tbaa !5
  %conv46 = sext i32 %46 to i64
  %div47 = udiv i64 %45, %conv46
  %conv48 = trunc i64 %div47 to i32
  %47 = load %struct.gx_ht_cell_params_s*, %struct.gx_ht_cell_params_s** %phcp.addr, align 8, !tbaa !1
  %W1 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %47, i32 0, i32 10
  store i32 %conv48, i32* %W1, align 4, !tbaa !22
  %48 = load i32, i32* %M14, align 4, !tbaa !5
  %tobool = icmp ne i32 %48, 0
  br i1 %tobool, label %land.lhs.true, label %if.else.75

land.lhs.true:                                    ; preds = %cond.end.29
  %49 = load i32, i32* %N, align 4, !tbaa !5
  %tobool49 = icmp ne i32 %49, 0
  br i1 %tobool49, label %if.then, label %if.else.75

if.then:                                          ; preds = %land.lhs.true
  %50 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #1
  store i32 0, i32* %h, align 4, !tbaa !5
  %51 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #1
  store i32 0, i32* %k, align 4, !tbaa !5
  %52 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %52) #1
  store i32 0, i32* %dy, align 4, !tbaa !5
  %53 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %53) #1
  br label %while.cond

while.cond:                                       ; preds = %if.end.68, %if.then
  %54 = load i32, i32* %dy, align 4, !tbaa !5
  %55 = load i32, i32* %D, align 4, !tbaa !5
  %cmp50 = icmp ne i32 %54, %55
  br i1 %cmp50, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %56 = load i32, i32* %dy, align 4, !tbaa !5
  %57 = load i32, i32* %D, align 4, !tbaa !5
  %cmp52 = icmp sgt i32 %56, %57
  br i1 %cmp52, label %if.then.54, label %if.else.59

if.then.54:                                       ; preds = %while.body
  %58 = load i32, i32* %M14, align 4, !tbaa !5
  %cmp55 = icmp sgt i32 %58, 0
  br i1 %cmp55, label %if.then.57, label %if.else

if.then.57:                                       ; preds = %if.then.54
  %59 = load i32, i32* %k, align 4, !tbaa !5
  %inc = add nsw i32 %59, 1
  store i32 %inc, i32* %k, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %if.then.54
  %60 = load i32, i32* %k, align 4, !tbaa !5
  %dec = add nsw i32 %60, -1
  store i32 %dec, i32* %k, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.57
  %61 = load i32, i32* %m1, align 4, !tbaa !5
  %62 = load i32, i32* %dy, align 4, !tbaa !5
  %sub58 = sub i32 %62, %61
  store i32 %sub58, i32* %dy, align 4, !tbaa !5
  br label %if.end.68

if.else.59:                                       ; preds = %while.body
  %63 = load i32, i32* %N, align 4, !tbaa !5
  %cmp60 = icmp sgt i32 %63, 0
  br i1 %cmp60, label %if.then.62, label %if.else.64

if.then.62:                                       ; preds = %if.else.59
  %64 = load i32, i32* %h, align 4, !tbaa !5
  %inc63 = add nsw i32 %64, 1
  store i32 %inc63, i32* %h, align 4, !tbaa !5
  br label %if.end.66

if.else.64:                                       ; preds = %if.else.59
  %65 = load i32, i32* %h, align 4, !tbaa !5
  %dec65 = add nsw i32 %65, -1
  store i32 %dec65, i32* %h, align 4, !tbaa !5
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.64, %if.then.62
  %66 = load i32, i32* %n, align 4, !tbaa !5
  %67 = load i32, i32* %dy, align 4, !tbaa !5
  %add67 = add i32 %67, %66
  store i32 %add67, i32* %dy, align 4, !tbaa !5
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.66, %if.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %68 = load i32, i32* %h, align 4, !tbaa !5
  %69 = load i32, i32* %M, align 4, !tbaa !5
  %mul69 = mul nsw i32 %68, %69
  %70 = load i32, i32* %k, align 4, !tbaa !5
  %71 = load i32, i32* %N1, align 4, !tbaa !5
  %mul70 = mul nsw i32 %70, %71
  %add71 = add nsw i32 %mul69, %mul70
  store i32 %add71, i32* %shift, align 4, !tbaa !5
  %72 = load i32, i32* %shift, align 4, !tbaa !5
  %sub72 = sub nsw i32 0, %72
  %73 = load %struct.gx_ht_cell_params_s*, %struct.gx_ht_cell_params_s** %phcp.addr, align 8, !tbaa !1
  %W73 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %73, i32 0, i32 9
  %74 = load i32, i32* %W73, align 4, !tbaa !21
  %call74 = call i32 @imod(i32 %sub72, i32 %74) #5
  %75 = load %struct.gx_ht_cell_params_s*, %struct.gx_ht_cell_params_s** %phcp.addr, align 8, !tbaa !1
  %S = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %75, i32 0, i32 11
  store i32 %call74, i32* %S, align 4, !tbaa !23
  %76 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %77 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  %78 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %79 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #1
  br label %if.end.77

if.else.75:                                       ; preds = %land.lhs.true, %cond.end.29
  %80 = load %struct.gx_ht_cell_params_s*, %struct.gx_ht_cell_params_s** %phcp.addr, align 8, !tbaa !1
  %S76 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %80, i32 0, i32 11
  store i32 0, i32* %S76, align 4, !tbaa !23
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.75, %while.end
  br label %do.body

do.body:                                          ; preds = %if.end.77
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %81 = bitcast i32* %D1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #1
  %82 = bitcast i32* %D to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  %83 = bitcast i64* %C to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #1
  %84 = bitcast i32* %n1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #1
  %85 = bitcast i32* %m1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #1
  %86 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #1
  %87 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #1
  %88 = bitcast i32* %N1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #1
  %89 = bitcast i32* %M14 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #1
  %90 = bitcast i32* %N to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  %91 = bitcast i32* %M to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #1
  ret void
}

declare i32 @igcd(i32, i32) #2

declare i32 @imod(i32, i32) #2

; Function Attrs: nounwind uwtable
define %struct.gs_screen_enum_s* @gs_screen_enum_alloc(%struct.gs_memory_s* %mem, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %cname.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %0, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %1 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !24
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* %1(%struct.gs_memory_s* %2, %struct.gs_memory_struct_type_s* @st_gs_screen_enum, i8* %3) #5
  %4 = bitcast i8* %call to %struct.gs_screen_enum_s*
  ret %struct.gs_screen_enum_s* %4
}

; Function Attrs: nounwind uwtable
define i32 @gs_screen_init(%struct.gs_screen_enum_s* %penum, %struct.gs_state_s* %pgs, %struct.gs_screen_halftone_s* %phsp) #0 {
entry:
  %penum.addr = alloca %struct.gs_screen_enum_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %phsp.addr = alloca %struct.gs_screen_halftone_s*, align 8
  %ctx = alloca %struct.gs_lib_ctx_s*, align 8
  store %struct.gs_screen_enum_s* %penum, %struct.gs_screen_enum_s** %penum.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_screen_halftone_s* %phsp, %struct.gs_screen_halftone_s** %phsp.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_lib_ctx_s** %ctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 1
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !27
  %call = call %struct.gs_lib_ctx_s* @gs_lib_ctx_get_interp_instance(%struct.gs_memory_s* %2) #5
  store %struct.gs_lib_ctx_s* %call, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %3 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8, !tbaa !1
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %5 = load %struct.gs_screen_halftone_s*, %struct.gs_screen_halftone_s** %phsp.addr, align 8, !tbaa !1
  %6 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %screen_accurate_screens = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %6, i32 0, i32 19
  %7 = load i32, i32* %screen_accurate_screens, align 4, !tbaa !7
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 1
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !27
  %call2 = call i32 @gs_screen_init_memory(%struct.gs_screen_enum_s* %3, %struct.gs_state_s* %4, %struct.gs_screen_halftone_s* %5, i32 %7, %struct.gs_memory_s* %9) #5
  %10 = bitcast %struct.gs_lib_ctx_s** %ctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  ret i32 %call2
}

; Function Attrs: nounwind uwtable
define i32 @gs_screen_init_memory(%struct.gs_screen_enum_s* %penum, %struct.gs_state_s* %pgs, %struct.gs_screen_halftone_s* %phsp, i32 %accurate, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_screen_enum_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %phsp.addr = alloca %struct.gs_screen_halftone_s*, align 8
  %accurate.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_screen_enum_s* %penum, %struct.gs_screen_enum_s** %penum.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_screen_halftone_s* %phsp, %struct.gs_screen_halftone_s** %phsp.addr, align 8, !tbaa !1
  store i32 %accurate, i32* %accurate.addr, align 4, !tbaa !5
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8, !tbaa !1
  %order = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %1, i32 0, i32 1
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %3 = load %struct.gs_screen_halftone_s*, %struct.gs_screen_halftone_s** %phsp.addr, align 8, !tbaa !1
  %4 = load i32, i32* %accurate.addr, align 4, !tbaa !5
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i32 @gs_screen_order_init_memory(%struct.gx_ht_order_s* %order, %struct.gs_state_s* %2, %struct.gs_screen_halftone_s* %3, i32 %4, %struct.gs_memory_s* %5) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %6 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8, !tbaa !1
  %9 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8, !tbaa !1
  %order1 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %9, i32 0, i32 1
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %11 = load %struct.gs_screen_halftone_s*, %struct.gs_screen_halftone_s** %phsp.addr, align 8, !tbaa !1
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call2 = call i32 @gs_screen_enum_init_memory(%struct.gs_screen_enum_s* %8, %struct.gx_ht_order_s* %order1, %struct.gs_state_s* %10, %struct.gs_screen_halftone_s* %11, %struct.gs_memory_s* %12) #5
  store i32 %call2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define i32 @gs_screen_order_init_memory(%struct.gx_ht_order_s* %porder, %struct.gs_state_s* %pgs, %struct.gs_screen_halftone_s* %phsp, i32 %accurate, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %porder.addr = alloca %struct.gx_ht_order_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %phsp.addr = alloca %struct.gs_screen_halftone_s*, align 8
  %accurate.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %imat = alloca %struct.gs_matrix_s, align 4
  %max_size = alloca i64, align 8
  %code = alloca i32, align 4
  %ctx = alloca %struct.gs_lib_ctx_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_ht_order_s* %porder, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_screen_halftone_s* %phsp, %struct.gs_screen_halftone_s** %phsp.addr, align 8, !tbaa !1
  store i32 %accurate, i32* %accurate.addr, align 4, !tbaa !5
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_matrix_s* %imat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = bitcast i64* %max_size to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %call = call i32 @gx_ht_cache_default_bits_size() #5
  %conv = zext i32 %call to i64
  store i64 %conv, i64* %max_size, align 8, !tbaa !18
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast %struct.gs_lib_ctx_s** %ctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call1 = call %struct.gs_lib_ctx_s* @gs_lib_ctx_get_interp_instance(%struct.gs_memory_s* %4) #5
  store %struct.gs_lib_ctx_s* %call1, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %5 = load %struct.gs_screen_halftone_s*, %struct.gs_screen_halftone_s** %phsp.addr, align 8, !tbaa !1
  %frequency = getelementptr inbounds %struct.gs_screen_halftone_s, %struct.gs_screen_halftone_s* %5, i32 0, i32 0
  %6 = load float, float* %frequency, align 4, !tbaa !42
  %conv2 = fpext float %6 to double
  %cmp = fcmp olt double %conv2, 1.000000e-01
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call4 = call %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s* %7) #5
  call void @gs_deviceinitialmatrix(%struct.gx_device_s* %call4, %struct.gs_matrix_s* %imat) #5
  %8 = load %struct.gs_screen_halftone_s*, %struct.gs_screen_halftone_s** %phsp.addr, align 8, !tbaa !1
  %9 = load i64, i64* %max_size, align 8, !tbaa !18
  %10 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %screen_min_screen_levels = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %10, i32 0, i32 20
  %11 = load i32, i32* %screen_min_screen_levels, align 4, !tbaa !10
  %12 = load i32, i32* %accurate.addr, align 4, !tbaa !5
  %13 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %13, i32 0, i32 0
  %call5 = call i32 @pick_cell_size(%struct.gs_screen_halftone_s* %8, %struct.gs_matrix_s* %imat, i64 %9, i32 %11, i32 %12, %struct.gx_ht_cell_params_s* %params) #5
  store i32 %call5, i32* %code, align 4, !tbaa !5
  %14 = load i32, i32* %code, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %14, 0
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %15 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end
  %16 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %params10 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %16, i32 0, i32 0
  call void @gx_compute_cell_values(%struct.gx_ht_cell_params_s* %params10) #5
  %17 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %screen_params = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %17, i32 0, i32 16
  %matrix = getelementptr inbounds %struct.gx_ht_order_screen_params_s, %struct.gx_ht_order_screen_params_s* %screen_params, i32 0, i32 0
  %18 = bitcast %struct.gs_matrix_s* %matrix to i8*
  %19 = bitcast %struct.gs_matrix_s* %imat to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 24, i32 4, i1 false), !tbaa.struct !44
  %20 = load i64, i64* %max_size, align 8, !tbaa !18
  %21 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %screen_params11 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %21, i32 0, i32 16
  %max_size12 = getelementptr inbounds %struct.gx_ht_order_screen_params_s, %struct.gx_ht_order_screen_params_s* %screen_params11, i32 0, i32 1
  store i64 %20, i64* %max_size12, align 8, !tbaa !46
  %22 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call13 = call i32 @gs_screen_order_alloc(%struct.gx_ht_order_s* %22, %struct.gs_memory_s* %23) #5
  store i32 %call13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.then.8, %if.then
  %24 = bitcast %struct.gs_lib_ctx_s** %ctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast i64* %max_size to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = bitcast %struct.gs_matrix_s* %imat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %27) #1
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define i32 @gs_screen_enum_init_memory(%struct.gs_screen_enum_s* %penum, %struct.gx_ht_order_s* %porder, %struct.gs_state_s* %pgs, %struct.gs_screen_halftone_s* %phsp, %struct.gs_memory_s* %mem) #0 {
entry:
  %penum.addr = alloca %struct.gs_screen_enum_s*, align 8
  %porder.addr = alloca %struct.gx_ht_order_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %phsp.addr = alloca %struct.gs_screen_halftone_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %M = alloca i32, align 4
  %N = alloca i32, align 4
  %R = alloca i32, align 4
  %M1 = alloca i32, align 4
  %N1 = alloca i32, align 4
  %R1 = alloca i32, align 4
  %Q = alloca double, align 8
  store %struct.gs_screen_enum_s* %penum, %struct.gs_screen_enum_s** %penum.addr, align 8, !tbaa !1
  store %struct.gx_ht_order_s* %porder, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_screen_halftone_s* %phsp, %struct.gs_screen_halftone_s** %phsp.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %1 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8, !tbaa !1
  %pgs1 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %1, i32 0, i32 8
  store %struct.gs_state_s* %0, %struct.gs_state_s** %pgs1, align 8, !tbaa !49
  %2 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8, !tbaa !1
  %order = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %2, i32 0, i32 1
  %3 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.gx_ht_order_s* %order, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8, !tbaa !1
  %order2 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %4, i32 0, i32 1
  %5 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gx_ht_order_s* %order2 to i8*
  %7 = bitcast %struct.gx_ht_order_s* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 160, i32 8, i1 false), !tbaa.struct !53
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %9 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8, !tbaa !1
  %halftone = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %9, i32 0, i32 0
  %rc = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %halftone, i32 0, i32 1
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 1
  store %struct.gs_memory_s* %8, %struct.gs_memory_s** %memory, align 8, !tbaa !55
  %10 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8, !tbaa !1
  %halftone3 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %10, i32 0, i32 0
  %type = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %halftone3, i32 0, i32 0
  store i32 1, i32* %type, align 4, !tbaa !56
  %11 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8, !tbaa !1
  %halftone4 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %11, i32 0, i32 0
  %params = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %halftone4, i32 0, i32 2
  %screen = bitcast %union.anon* %params to %struct.gs_screen_halftone_s*
  %12 = load %struct.gs_screen_halftone_s*, %struct.gs_screen_halftone_s** %phsp.addr, align 8, !tbaa !1
  %13 = bitcast %struct.gs_screen_halftone_s* %screen to i8*
  %14 = bitcast %struct.gs_screen_halftone_s* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 24, i32 8, i1 false), !tbaa.struct !57
  %15 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %15, i32 0, i32 5
  store i32 0, i32* %y, align 4, !tbaa !58
  %16 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %16, i32 0, i32 4
  store i32 0, i32* %x, align 4, !tbaa !59
  %17 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %num_levels = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %17, i32 0, i32 8
  %18 = load i32, i32* %num_levels, align 4, !tbaa !60
  %19 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %19, i32 0, i32 1
  %20 = load i16, i16* %width, align 2, !tbaa !61
  %conv = zext i16 %20 to i32
  %div = udiv i32 %18, %conv
  %21 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8, !tbaa !1
  %strip = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %21, i32 0, i32 6
  store i32 %div, i32* %strip, align 4, !tbaa !62
  %22 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %shift = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %22, i32 0, i32 4
  %23 = load i16, i16* %shift, align 2, !tbaa !63
  %conv5 = zext i16 %23 to i32
  %24 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8, !tbaa !1
  %shift6 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %24, i32 0, i32 7
  store i32 %conv5, i32* %shift6, align 4, !tbaa !64
  %25 = bitcast i32* %M to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  %26 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %params7 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %26, i32 0, i32 0
  %M8 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %params7, i32 0, i32 0
  %27 = load i16, i16* %M8, align 2, !tbaa !65
  %conv9 = sext i16 %27 to i32
  store i32 %conv9, i32* %M, align 4, !tbaa !5
  %28 = bitcast i32* %N to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  %29 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %params10 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %29, i32 0, i32 0
  %N11 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %params10, i32 0, i32 1
  %30 = load i16, i16* %N11, align 2, !tbaa !66
  %conv12 = sext i16 %30 to i32
  store i32 %conv12, i32* %N, align 4, !tbaa !5
  %31 = bitcast i32* %R to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  %32 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %params13 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %32, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %params13, i32 0, i32 2
  %33 = load i16, i16* %R14, align 2, !tbaa !67
  %conv15 = sext i16 %33 to i32
  store i32 %conv15, i32* %R, align 4, !tbaa !5
  %34 = bitcast i32* %M1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  %35 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %params16 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %35, i32 0, i32 0
  %M117 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %params16, i32 0, i32 3
  %36 = load i16, i16* %M117, align 2, !tbaa !68
  %conv18 = sext i16 %36 to i32
  store i32 %conv18, i32* %M1, align 4, !tbaa !5
  %37 = bitcast i32* %N1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %params19 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %38, i32 0, i32 0
  %N120 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %params19, i32 0, i32 4
  %39 = load i16, i16* %N120, align 2, !tbaa !69
  %conv21 = sext i16 %39 to i32
  store i32 %conv21, i32* %N1, align 4, !tbaa !5
  %40 = bitcast i32* %R1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #1
  %41 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %params22 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %41, i32 0, i32 0
  %R123 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %params22, i32 0, i32 5
  %42 = load i16, i16* %R123, align 2, !tbaa !70
  %conv24 = sext i16 %42 to i32
  store i32 %conv24, i32* %R1, align 4, !tbaa !5
  %43 = bitcast double* %Q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #1
  %44 = load i32, i32* %M, align 4, !tbaa !5
  %conv25 = sext i32 %44 to i64
  %45 = load i32, i32* %M1, align 4, !tbaa !5
  %conv26 = sext i32 %45 to i64
  %mul = mul nsw i64 %conv25, %conv26
  %46 = load i32, i32* %N, align 4, !tbaa !5
  %conv27 = sext i32 %46 to i64
  %47 = load i32, i32* %N1, align 4, !tbaa !5
  %conv28 = sext i32 %47 to i64
  %mul29 = mul nsw i64 %conv27, %conv28
  %add = add nsw i64 %mul, %mul29
  %conv30 = sitofp i64 %add to double
  %div31 = fdiv double 2.000000e+00, %conv30
  store double %div31, double* %Q, align 8, !tbaa !71
  %48 = load double, double* %Q, align 8, !tbaa !71
  %49 = load i32, i32* %R, align 4, !tbaa !5
  %50 = load i32, i32* %M1, align 4, !tbaa !5
  %mul32 = mul nsw i32 %49, %50
  %conv33 = sitofp i32 %mul32 to double
  %mul34 = fmul double %48, %conv33
  %conv35 = fptrunc double %mul34 to float
  %51 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8, !tbaa !1
  %mat = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %51, i32 0, i32 2
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 0
  store float %conv35, float* %xx, align 4, !tbaa !72
  %52 = load double, double* %Q, align 8, !tbaa !71
  %53 = load i32, i32* %R1, align 4, !tbaa !5
  %sub = sub nsw i32 0, %53
  %54 = load i32, i32* %N, align 4, !tbaa !5
  %mul36 = mul nsw i32 %sub, %54
  %conv37 = sitofp i32 %mul36 to double
  %mul38 = fmul double %52, %conv37
  %conv39 = fptrunc double %mul38 to float
  %55 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8, !tbaa !1
  %mat40 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %55, i32 0, i32 2
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat40, i32 0, i32 1
  store float %conv39, float* %xy, align 4, !tbaa !73
  %56 = load double, double* %Q, align 8, !tbaa !71
  %57 = load i32, i32* %R, align 4, !tbaa !5
  %58 = load i32, i32* %N1, align 4, !tbaa !5
  %mul41 = mul nsw i32 %57, %58
  %conv42 = sitofp i32 %mul41 to double
  %mul43 = fmul double %56, %conv42
  %conv44 = fptrunc double %mul43 to float
  %59 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8, !tbaa !1
  %mat45 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %59, i32 0, i32 2
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat45, i32 0, i32 2
  store float %conv44, float* %yx, align 4, !tbaa !74
  %60 = load double, double* %Q, align 8, !tbaa !71
  %61 = load i32, i32* %R1, align 4, !tbaa !5
  %62 = load i32, i32* %M, align 4, !tbaa !5
  %mul46 = mul nsw i32 %61, %62
  %conv47 = sitofp i32 %mul46 to double
  %mul48 = fmul double %60, %conv47
  %conv49 = fptrunc double %mul48 to float
  %63 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8, !tbaa !1
  %mat50 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %63, i32 0, i32 2
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat50, i32 0, i32 3
  store float %conv49, float* %yy, align 4, !tbaa !75
  %64 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8, !tbaa !1
  %mat51 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %64, i32 0, i32 2
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat51, i32 0, i32 4
  store float -1.000000e+00, float* %tx, align 4, !tbaa !76
  %65 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8, !tbaa !1
  %mat52 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %65, i32 0, i32 2
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat52, i32 0, i32 5
  store float -1.000000e+00, float* %ty, align 4, !tbaa !77
  %66 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8, !tbaa !1
  %mat53 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %66, i32 0, i32 2
  %67 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8, !tbaa !1
  %mat_inv = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %67, i32 0, i32 3
  %call = call i32 @gs_matrix_invert(%struct.gs_matrix_s* %mat53, %struct.gs_matrix_s* %mat_inv) #5
  %68 = bitcast double* %Q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %69 = bitcast i32* %R1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  %70 = bitcast i32* %N1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %71 = bitcast i32* %M1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %72 = bitcast i32* %R to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = bitcast i32* %N to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = bitcast i32* %M to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.body
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_screen_order_alloc(%struct.gx_ht_order_s* %porder, %struct.gs_memory_s* %mem) #0 {
entry:
  %porder.addr = alloca %struct.gx_ht_order_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %num_levels = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.gx_ht_order_s* %porder, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i32* %num_levels to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %1, i32 0, i32 0
  %W = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %params, i32 0, i32 9
  %2 = load i32, i32* %W, align 4, !tbaa !78
  %3 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %3, i32 0, i32 0
  %D = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %params1, i32 0, i32 7
  %4 = load i16, i16* %D, align 2, !tbaa !79
  %conv = sext i16 %4 to i32
  %mul = mul i32 %2, %conv
  store i32 %mul, i32* %num_levels, align 4, !tbaa !5
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %params2 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %6, i32 0, i32 0
  %W1 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %params2, i32 0, i32 10
  %7 = load i32, i32* %W1, align 4, !tbaa !80
  %conv3 = zext i32 %7 to i64
  %8 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %params4 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %8, i32 0, i32 0
  %W5 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %params4, i32 0, i32 9
  %9 = load i32, i32* %W5, align 4, !tbaa !78
  %add = add i32 %9, 63
  %shr = lshr i32 %add, 6
  %shl = shl i32 %shr, 3
  %conv6 = zext i32 %shl to i64
  %mul7 = mul i64 %conv3, %conv6
  %10 = load i32, i32* %num_levels, align 4, !tbaa !5
  %conv8 = zext i32 %10 to i64
  %mul9 = mul i64 %conv8, 4
  %add10 = add i64 %mul7, %mul9
  %11 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %params11 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %11, i32 0, i32 0
  %W12 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %params11, i32 0, i32 9
  %12 = load i32, i32* %W12, align 4, !tbaa !78
  %13 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %params13 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %13, i32 0, i32 0
  %W114 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %params13, i32 0, i32 10
  %14 = load i32, i32* %W114, align 4, !tbaa !80
  %mul15 = mul i32 %12, %14
  %conv16 = zext i32 %mul15 to i64
  %mul17 = mul i64 %conv16, 8
  %add18 = add i64 %add10, %mul17
  %15 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %screen_params = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %15, i32 0, i32 16
  %max_size = getelementptr inbounds %struct.gx_ht_order_screen_params_s, %struct.gx_ht_order_screen_params_s* %screen_params, i32 0, i32 1
  %16 = load i64, i64* %max_size, align 8, !tbaa !46
  %cmp = icmp ule i64 %add18, %16
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %17 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %18 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %params20 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %18, i32 0, i32 0
  %W21 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %params20, i32 0, i32 9
  %19 = load i32, i32* %W21, align 4, !tbaa !78
  %20 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %params22 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %20, i32 0, i32 0
  %W123 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %params22, i32 0, i32 10
  %21 = load i32, i32* %W123, align 4, !tbaa !80
  %22 = load i32, i32* %num_levels, align 4, !tbaa !5
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i32 @gx_ht_alloc_order(%struct.gx_ht_order_s* %17, i32 %19, i32 %21, i32 0, i32 %22, %struct.gs_memory_s* %23) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %24 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %params24 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %24, i32 0, i32 0
  %D25 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %params24, i32 0, i32 7
  %25 = load i16, i16* %D25, align 2, !tbaa !79
  %26 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %orig_height = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %26, i32 0, i32 5
  store i16 %25, i16* %orig_height, align 2, !tbaa !81
  %27 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %27, i32 0, i32 2
  store i16 %25, i16* %height, align 2, !tbaa !82
  %28 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %params26 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %28, i32 0, i32 0
  %S = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %params26, i32 0, i32 11
  %29 = load i32, i32* %S, align 4, !tbaa !83
  %conv27 = trunc i32 %29 to i16
  %30 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %orig_shift = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %30, i32 0, i32 6
  store i16 %conv27, i16* %orig_shift, align 2, !tbaa !84
  %31 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %shift = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %31, i32 0, i32 4
  store i16 %conv27, i16* %shift, align 2, !tbaa !63
  br label %if.end

if.else:                                          ; preds = %entry
  %32 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %33 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %params28 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %33, i32 0, i32 0
  %W29 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %params28, i32 0, i32 9
  %34 = load i32, i32* %W29, align 4, !tbaa !78
  %35 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %params30 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %35, i32 0, i32 0
  %D31 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %params30, i32 0, i32 7
  %36 = load i16, i16* %D31, align 2, !tbaa !79
  %conv32 = sext i16 %36 to i32
  %37 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %params33 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %37, i32 0, i32 0
  %S34 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %params33, i32 0, i32 11
  %38 = load i32, i32* %S34, align 4, !tbaa !83
  %39 = load i32, i32* %num_levels, align 4, !tbaa !5
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call35 = call i32 @gx_ht_alloc_order(%struct.gx_ht_order_s* %32, i32 %34, i32 %conv32, i32 %38, i32 %39, %struct.gs_memory_s* %40) #5
  store i32 %call35, i32* %code, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %41 = load i32, i32* %code, align 4, !tbaa !5
  %42 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast i32* %num_levels to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  ret i32 %41
}

declare i32 @gx_ht_alloc_order(%struct.gx_ht_order_s*, i32, i32, i32, i32, %struct.gs_memory_s*) #2

declare i32 @gx_ht_cache_default_bits_size() #2

declare void @gs_deviceinitialmatrix(%struct.gx_device_s*, %struct.gs_matrix_s*) #2

declare %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @pick_cell_size(%struct.gs_screen_halftone_s* %ph, %struct.gs_matrix_s* %pmat, i64 %max_size, i32 %min_levels, i32 %accurate, %struct.gx_ht_cell_params_s* %phcp) #0 {
entry:
  %retval = alloca i32, align 4
  %ph.addr = alloca %struct.gs_screen_halftone_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %max_size.addr = alloca i64, align 8
  %min_levels.addr = alloca i32, align 4
  %accurate.addr = alloca i32, align 4
  %phcp.addr = alloca %struct.gx_ht_cell_params_s*, align 8
  %landscape = alloca i32, align 4
  %reflected = alloca i32, align 4
  %reflection = alloca i32, align 4
  %rotation = alloca i32, align 4
  %f0 = alloca double, align 8
  %a0 = alloca double, align 8
  %T = alloca double, align 8
  %uv0 = alloca %struct.gs_point_s, align 8
  %rt = alloca i32, align 4
  %f = alloca double, align 8
  %a = alloca double, align 8
  %e_best = alloca double, align 8
  %better = alloca i32, align 4
  %rmat = alloca %struct.gs_matrix_s, align 4
  %cleanup.dest.slot = alloca i32
  %fm0 = alloca double, align 8
  %fn0 = alloca double, align 8
  %m0 = alloca i32, align 4
  %n0 = alloca i32, align 4
  %p = alloca %struct.gx_ht_cell_params_s, align 8
  %raster = alloca i64, align 8
  %wt = alloca i64, align 8
  %wt_size = alloca i64, align 8
  %fr = alloca double, align 8
  %ar = alloca double, align 8
  %ft = alloca double, align 8
  %at = alloca double, align 8
  %f_diff = alloca double, align 8
  %a_diff = alloca double, align 8
  %f_err = alloca double, align 8
  %a_err = alloca double, align 8
  %error = alloca double, align 8
  store %struct.gs_screen_halftone_s* %ph, %struct.gs_screen_halftone_s** %ph.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store i64 %max_size, i64* %max_size.addr, align 8, !tbaa !18
  store i32 %min_levels, i32* %min_levels.addr, align 4, !tbaa !5
  store i32 %accurate, i32* %accurate.addr, align 4, !tbaa !5
  store %struct.gx_ht_cell_params_s* %phcp, %struct.gx_ht_cell_params_s** %phcp.addr, align 8, !tbaa !1
  %0 = bitcast i32* %landscape to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %1, i32 0, i32 1
  %2 = load float, float* %xy, align 4, !tbaa !85
  %conv = fpext float %2 to double
  %cmp = fcmp une double %conv, 0.000000e+00
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %3 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %3, i32 0, i32 2
  %4 = load float, float* %yx, align 4, !tbaa !86
  %conv2 = fpext float %4 to double
  %cmp3 = fcmp une double %conv2, 0.000000e+00
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %cmp3, %lor.rhs ]
  %lor.ext = zext i1 %5 to i32
  store i32 %lor.ext, i32* %landscape, align 4, !tbaa !5
  %6 = bitcast i32* %reflected to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xy5 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %7, i32 0, i32 1
  %8 = load float, float* %xy5, align 4, !tbaa !85
  %9 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yx6 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %9, i32 0, i32 2
  %10 = load float, float* %yx6, align 4, !tbaa !86
  %mul = fmul float %8, %10
  %11 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %11, i32 0, i32 0
  %12 = load float, float* %xx, align 4, !tbaa !87
  %13 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %13, i32 0, i32 3
  %14 = load float, float* %yy, align 4, !tbaa !88
  %mul7 = fmul float %12, %14
  %cmp8 = fcmp ogt float %mul, %mul7
  %conv9 = zext i1 %cmp8 to i32
  store i32 %conv9, i32* %reflected, align 4, !tbaa !5
  %15 = bitcast i32* %reflection to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load i32, i32* %reflected, align 4, !tbaa !5
  %tobool = icmp ne i32 %16, 0
  %cond = select i1 %tobool, i32 -1, i32 1
  store i32 %cond, i32* %reflection, align 4, !tbaa !5
  %17 = bitcast i32* %rotation to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load i32, i32* %landscape, align 4, !tbaa !5
  %tobool10 = icmp ne i32 %18, 0
  br i1 %tobool10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.end
  %19 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yx11 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %19, i32 0, i32 2
  %20 = load float, float* %yx11, align 4, !tbaa !86
  %cmp12 = fcmp olt float %20, 0.000000e+00
  %cond14 = select i1 %cmp12, i32 90, i32 -90
  br label %cond.end

cond.false:                                       ; preds = %lor.end
  %21 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xx15 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %21, i32 0, i32 0
  %22 = load float, float* %xx15, align 4, !tbaa !87
  %cmp16 = fcmp olt float %22, 0.000000e+00
  %cond18 = select i1 %cmp16, i32 180, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond19 = phi i32 [ %cond14, %cond.true ], [ %cond18, %cond.false ]
  store i32 %cond19, i32* %rotation, align 4, !tbaa !5
  %23 = bitcast double* %f0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  %24 = load %struct.gs_screen_halftone_s*, %struct.gs_screen_halftone_s** %ph.addr, align 8, !tbaa !1
  %frequency = getelementptr inbounds %struct.gs_screen_halftone_s, %struct.gs_screen_halftone_s* %24, i32 0, i32 0
  %25 = load float, float* %frequency, align 4, !tbaa !42
  %conv20 = fpext float %25 to double
  store double %conv20, double* %f0, align 8, !tbaa !71
  %26 = bitcast double* %a0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  %27 = load %struct.gs_screen_halftone_s*, %struct.gs_screen_halftone_s** %ph.addr, align 8, !tbaa !1
  %angle = getelementptr inbounds %struct.gs_screen_halftone_s, %struct.gs_screen_halftone_s* %27, i32 0, i32 1
  %28 = load float, float* %angle, align 4, !tbaa !89
  %conv21 = fpext float %28 to double
  store double %conv21, double* %a0, align 8, !tbaa !71
  %29 = bitcast double* %T to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  %30 = load i32, i32* %landscape, align 4, !tbaa !5
  %tobool22 = icmp ne i32 %30, 0
  br i1 %tobool22, label %cond.true.23, label %cond.false.26

cond.true.23:                                     ; preds = %cond.end
  %31 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yx24 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %31, i32 0, i32 2
  %32 = load float, float* %yx24, align 4, !tbaa !86
  %33 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xy25 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %33, i32 0, i32 1
  %34 = load float, float* %xy25, align 4, !tbaa !85
  %div = fdiv float %32, %34
  br label %cond.end.30

cond.false.26:                                    ; preds = %cond.end
  %35 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xx27 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %35, i32 0, i32 0
  %36 = load float, float* %xx27, align 4, !tbaa !87
  %37 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yy28 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %37, i32 0, i32 3
  %38 = load float, float* %yy28, align 4, !tbaa !88
  %div29 = fdiv float %36, %38
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.26, %cond.true.23
  %cond31 = phi float [ %div, %cond.true.23 ], [ %div29, %cond.false.26 ]
  %conv32 = fpext float %cond31 to double
  %call = call double @fabs(double %conv32) #6
  store double %call, double* %T, align 8, !tbaa !71
  %39 = bitcast %struct.gs_point_s* %uv0 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %39) #1
  %40 = bitcast i32* %rt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #1
  store i32 1, i32* %rt, align 4, !tbaa !5
  %41 = bitcast double* %f to i8*
  call void @llvm.lifetime.start(i64 8, i8* %41) #1
  store double 0.000000e+00, double* %f, align 8, !tbaa !71
  %42 = bitcast double* %a to i8*
  call void @llvm.lifetime.start(i64 8, i8* %42) #1
  store double 0.000000e+00, double* %a, align 8, !tbaa !71
  %43 = bitcast double* %e_best to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #1
  store double 1.000000e+03, double* %e_best, align 8, !tbaa !71
  %44 = bitcast i32* %better to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  %45 = bitcast %struct.gs_matrix_s* %rmat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %45) #1
  %46 = load double, double* %a0, align 8, !tbaa !71
  %47 = load i32, i32* %reflection, align 4, !tbaa !5
  %conv33 = sitofp i32 %47 to double
  %mul34 = fmul double %46, %conv33
  %48 = load i32, i32* %rotation, align 4, !tbaa !5
  %conv35 = sitofp i32 %48 to double
  %add = fadd double %mul34, %conv35
  %call36 = call i32 @gs_make_rotation(double %add, %struct.gs_matrix_s* %rmat) #5
  %49 = load double, double* %f0, align 8, !tbaa !71
  %div37 = fdiv double 7.200000e+01, %49
  %call38 = call i32 @gs_distance_transform(double %div37, double 0.000000e+00, %struct.gs_matrix_s* %rmat, %struct.gs_point_s* %uv0) #5
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %uv0, i32 0, i32 0
  %50 = load double, double* %x, align 8, !tbaa !90
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %uv0, i32 0, i32 1
  %51 = load double, double* %y, align 8, !tbaa !91
  %52 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %call39 = call i32 @gs_distance_transform(double %50, double %51, %struct.gs_matrix_s* %52, %struct.gs_point_s* %uv0) #5
  br label %do.body

do.body:                                          ; preds = %cond.end.30
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %53 = bitcast %struct.gs_matrix_s* %rmat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %53) #1
  %x40 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %uv0, i32 0, i32 0
  %54 = load double, double* %x40, align 8, !tbaa !90
  %cmp41 = fcmp oeq double %54, 0.000000e+00
  br i1 %cmp41, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.end
  %y43 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %uv0, i32 0, i32 1
  %55 = load double, double* %y43, align 8, !tbaa !91
  %cmp44 = fcmp oeq double %55, 0.000000e+00
  br i1 %cmp44, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.323

if.end:                                           ; preds = %land.lhs.true, %do.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %x46 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %uv0, i32 0, i32 0
  %56 = load double, double* %x46, align 8, !tbaa !90
  %call47 = call double @fabs(double %56) #6
  %y48 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %uv0, i32 0, i32 1
  %57 = load double, double* %y48, align 8, !tbaa !91
  %call49 = call double @fabs(double %57) #6
  %add50 = fadd double %call47, %call49
  %58 = load i32, i32* %rt, align 4, !tbaa !5
  %conv51 = sitofp i32 %58 to double
  %mul52 = fmul double %add50, %conv51
  %cmp53 = fcmp olt double %mul52, 4.000000e+00
  br i1 %cmp53, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %59 = load i32, i32* %rt, align 4, !tbaa !5
  %inc = add nsw i32 %59, 1
  store i32 %inc, i32* %rt, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %try_size

try_size:                                         ; preds = %if.then.309, %if.then.303, %while.end
  store i32 0, i32* %better, align 4, !tbaa !5
  %60 = bitcast double* %fm0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %60) #1
  %x55 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %uv0, i32 0, i32 0
  %61 = load double, double* %x55, align 8, !tbaa !90
  %62 = load i32, i32* %rt, align 4, !tbaa !5
  %conv56 = sitofp i32 %62 to double
  %mul57 = fmul double %61, %conv56
  store double %mul57, double* %fm0, align 8, !tbaa !71
  %63 = bitcast double* %fn0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %63) #1
  %y58 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %uv0, i32 0, i32 1
  %64 = load double, double* %y58, align 8, !tbaa !91
  %65 = load i32, i32* %rt, align 4, !tbaa !5
  %conv59 = sitofp i32 %65 to double
  %mul60 = fmul double %64, %conv59
  store double %mul60, double* %fn0, align 8, !tbaa !71
  %66 = bitcast i32* %m0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %66) #1
  %x61 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %uv0, i32 0, i32 0
  %67 = load double, double* %x61, align 8, !tbaa !90
  %68 = load i32, i32* %rt, align 4, !tbaa !5
  %conv62 = sitofp i32 %68 to double
  %mul63 = fmul double %67, %conv62
  %add64 = fadd double %mul63, 1.000000e-04
  %call65 = call double @floor(double %add64) #6
  %conv66 = fptosi double %call65 to i32
  store i32 %conv66, i32* %m0, align 4, !tbaa !5
  %69 = bitcast i32* %n0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %69) #1
  %y67 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %uv0, i32 0, i32 1
  %70 = load double, double* %y67, align 8, !tbaa !91
  %71 = load i32, i32* %rt, align 4, !tbaa !5
  %conv68 = sitofp i32 %71 to double
  %mul69 = fmul double %70, %conv68
  %add70 = fadd double %mul69, 1.000000e-04
  %call71 = call double @floor(double %add70) #6
  %conv72 = fptosi double %call71 to i32
  store i32 %conv72, i32* %n0, align 4, !tbaa !5
  %72 = bitcast %struct.gx_ht_cell_params_s* %p to i8*
  call void @llvm.lifetime.start(i64 40, i8* %72) #1
  %73 = load i32, i32* %rt, align 4, !tbaa !5
  %conv73 = trunc i32 %73 to i16
  %R1 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %p, i32 0, i32 5
  store i16 %conv73, i16* %R1, align 2, !tbaa !92
  %R = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %p, i32 0, i32 2
  store i16 %conv73, i16* %R, align 2, !tbaa !93
  %74 = load i32, i32* %m0, align 4, !tbaa !5
  %add74 = add nsw i32 %74, 1
  %conv75 = trunc i32 %add74 to i16
  %M = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %p, i32 0, i32 0
  store i16 %conv75, i16* %M, align 2, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc.289, %try_size
  %M76 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %p, i32 0, i32 0
  %75 = load i16, i16* %M76, align 2, !tbaa !11
  %conv77 = sext i16 %75 to i32
  %76 = load i32, i32* %m0, align 4, !tbaa !5
  %cmp78 = icmp sge i32 %conv77, %76
  br i1 %cmp78, label %for.body, label %for.end.292

for.body:                                         ; preds = %for.cond
  %77 = load i32, i32* %n0, align 4, !tbaa !5
  %add80 = add nsw i32 %77, 1
  %conv81 = trunc i32 %add80 to i16
  %N = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %p, i32 0, i32 1
  store i16 %conv81, i16* %N, align 2, !tbaa !14
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc, %for.body
  %N83 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %p, i32 0, i32 1
  %78 = load i16, i16* %N83, align 2, !tbaa !14
  %conv84 = sext i16 %78 to i32
  %79 = load i32, i32* %n0, align 4, !tbaa !5
  %cmp85 = icmp sge i32 %conv84, %79
  br i1 %cmp85, label %for.body.87, label %for.end

for.body.87:                                      ; preds = %for.cond.82
  %80 = bitcast i64* %raster to i8*
  call void @llvm.lifetime.start(i64 8, i8* %80) #1
  %81 = bitcast i64* %wt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %81) #1
  %82 = bitcast i64* %wt_size to i8*
  call void @llvm.lifetime.start(i64 8, i8* %82) #1
  %83 = bitcast double* %fr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %83) #1
  %84 = bitcast double* %ar to i8*
  call void @llvm.lifetime.start(i64 8, i8* %84) #1
  %85 = bitcast double* %ft to i8*
  call void @llvm.lifetime.start(i64 8, i8* %85) #1
  %86 = bitcast double* %at to i8*
  call void @llvm.lifetime.start(i64 8, i8* %86) #1
  %87 = bitcast double* %f_diff to i8*
  call void @llvm.lifetime.start(i64 8, i8* %87) #1
  %88 = bitcast double* %a_diff to i8*
  call void @llvm.lifetime.start(i64 8, i8* %88) #1
  %89 = bitcast double* %f_err to i8*
  call void @llvm.lifetime.start(i64 8, i8* %89) #1
  %90 = bitcast double* %a_err to i8*
  call void @llvm.lifetime.start(i64 8, i8* %90) #1
  %M88 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %p, i32 0, i32 0
  %91 = load i16, i16* %M88, align 2, !tbaa !11
  %conv89 = sext i16 %91 to i32
  %conv90 = sitofp i32 %conv89 to double
  %92 = load double, double* %T, align 8, !tbaa !71
  %div91 = fdiv double %conv90, %92
  %add92 = fadd double %div91, 5.000000e-01
  %call93 = call double @floor(double %add92) #6
  %conv94 = fptosi double %call93 to i32
  %conv95 = trunc i32 %conv94 to i16
  %M1 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %p, i32 0, i32 3
  store i16 %conv95, i16* %M1, align 2, !tbaa !15
  %N96 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %p, i32 0, i32 1
  %93 = load i16, i16* %N96, align 2, !tbaa !14
  %conv97 = sext i16 %93 to i32
  %conv98 = sitofp i32 %conv97 to double
  %94 = load double, double* %T, align 8, !tbaa !71
  %mul99 = fmul double %conv98, %94
  %add100 = fadd double %mul99, 5.000000e-01
  %call101 = call double @floor(double %add100) #6
  %conv102 = fptosi double %call101 to i32
  %conv103 = trunc i32 %conv102 to i16
  %N1 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %p, i32 0, i32 4
  store i16 %conv103, i16* %N1, align 2, !tbaa !16
  call void @gx_compute_cell_values(%struct.gx_ht_cell_params_s* %p) #5
  br label %do.body.104

do.body.104:                                      ; preds = %for.body.87
  br label %do.cond.105

do.cond.105:                                      ; preds = %do.body.104
  br label %do.end.106

do.end.106:                                       ; preds = %do.cond.105
  %W = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %p, i32 0, i32 9
  %95 = load i32, i32* %W, align 4, !tbaa !21
  %conv107 = zext i32 %95 to i64
  store i64 %conv107, i64* %wt, align 8, !tbaa !18
  %96 = load i64, i64* %wt, align 8, !tbaa !18
  %cmp108 = icmp sge i64 %96, 32767
  br i1 %cmp108, label %if.then.110, label %if.end.111

if.then.110:                                      ; preds = %do.end.106
  store i32 12, i32* %cleanup.dest.slot
  br label %cleanup.275

if.end.111:                                       ; preds = %do.end.106
  %97 = load i64, i64* %wt, align 8, !tbaa !18
  %add112 = add nsw i64 %97, 63
  %shr = ashr i64 %add112, 6
  %shl = shl i64 %shr, 3
  %conv113 = trunc i64 %shl to i32
  %conv114 = zext i32 %conv113 to i64
  store i64 %conv114, i64* %raster, align 8, !tbaa !18
  %98 = load i64, i64* %raster, align 8, !tbaa !18
  %99 = load i64, i64* %max_size.addr, align 8, !tbaa !18
  %D = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %p, i32 0, i32 7
  %100 = load i16, i16* %D, align 2, !tbaa !19
  %conv115 = sext i16 %100 to i64
  %div116 = udiv i64 %99, %conv115
  %cmp117 = icmp ugt i64 %98, %div116
  br i1 %cmp117, label %if.then.122, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.111
  %101 = load i64, i64* %raster, align 8, !tbaa !18
  %102 = load i64, i64* %wt, align 8, !tbaa !18
  %div119 = sdiv i64 9223372036854775807, %102
  %cmp120 = icmp sgt i64 %101, %div119
  br i1 %cmp120, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %lor.lhs.false, %if.end.111
  store i32 12, i32* %cleanup.dest.slot
  br label %cleanup.275

if.end.123:                                       ; preds = %lor.lhs.false
  %103 = load i64, i64* %raster, align 8, !tbaa !18
  %104 = load i64, i64* %wt, align 8, !tbaa !18
  %mul124 = mul nsw i64 %103, %104
  store i64 %mul124, i64* %wt_size, align 8, !tbaa !18
  %105 = load i32, i32* %landscape, align 4, !tbaa !5
  %tobool125 = icmp ne i32 %105, 0
  br i1 %tobool125, label %if.then.126, label %if.else

if.then.126:                                      ; preds = %if.end.123
  %M127 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %p, i32 0, i32 0
  %106 = load i16, i16* %M127, align 2, !tbaa !11
  %conv128 = sext i16 %106 to i32
  %conv129 = sitofp i32 %conv128 to float
  %107 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xy130 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %107, i32 0, i32 1
  %108 = load float, float* %xy130, align 4, !tbaa !85
  %mul131 = fmul float %conv129, %108
  %conv132 = fpext float %mul131 to double
  %N133 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %p, i32 0, i32 1
  %109 = load i16, i16* %N133, align 2, !tbaa !14
  %conv134 = sext i16 %109 to i32
  %conv135 = sitofp i32 %conv134 to float
  %110 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yx136 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %110, i32 0, i32 2
  %111 = load float, float* %yx136, align 4, !tbaa !86
  %mul137 = fmul float %conv135, %111
  %conv138 = fpext float %mul137 to double
  %call139 = call double @atan2(double %conv132, double %conv138) #7
  store double %call139, double* %ar, align 8, !tbaa !71
  %M140 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %p, i32 0, i32 0
  %112 = load i16, i16* %M140, align 2, !tbaa !11
  %conv141 = sext i16 %112 to i32
  %cmp142 = icmp eq i32 %conv141, 0
  br i1 %cmp142, label %cond.true.144, label %cond.false.153

cond.true.144:                                    ; preds = %if.then.126
  %113 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xy145 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %113, i32 0, i32 1
  %114 = load float, float* %xy145, align 4, !tbaa !85
  %N146 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %p, i32 0, i32 1
  %115 = load i16, i16* %N146, align 2, !tbaa !14
  %conv147 = sext i16 %115 to i32
  %conv148 = sitofp i32 %conv147 to float
  %div149 = fdiv float %114, %conv148
  %conv150 = fpext float %div149 to double
  %116 = load double, double* %ar, align 8, !tbaa !71
  %call151 = call double @cos(double %116) #7
  %mul152 = fmul double %conv150, %call151
  br label %cond.end.162

cond.false.153:                                   ; preds = %if.then.126
  %117 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yx154 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %117, i32 0, i32 2
  %118 = load float, float* %yx154, align 4, !tbaa !86
  %M155 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %p, i32 0, i32 0
  %119 = load i16, i16* %M155, align 2, !tbaa !11
  %conv156 = sext i16 %119 to i32
  %conv157 = sitofp i32 %conv156 to float
  %div158 = fdiv float %118, %conv157
  %conv159 = fpext float %div158 to double
  %120 = load double, double* %ar, align 8, !tbaa !71
  %call160 = call double @sin(double %120) #7
  %mul161 = fmul double %conv159, %call160
  br label %cond.end.162

cond.end.162:                                     ; preds = %cond.false.153, %cond.true.144
  %cond163 = phi double [ %mul152, %cond.true.144 ], [ %mul161, %cond.false.153 ]
  %mul164 = fmul double 7.200000e+01, %cond163
  store double %mul164, double* %fr, align 8, !tbaa !71
  br label %if.end.203

if.else:                                          ; preds = %if.end.123
  %N165 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %p, i32 0, i32 1
  %121 = load i16, i16* %N165, align 2, !tbaa !14
  %conv166 = sext i16 %121 to i32
  %conv167 = sitofp i32 %conv166 to float
  %122 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xx168 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %122, i32 0, i32 0
  %123 = load float, float* %xx168, align 4, !tbaa !87
  %mul169 = fmul float %conv167, %123
  %conv170 = fpext float %mul169 to double
  %M171 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %p, i32 0, i32 0
  %124 = load i16, i16* %M171, align 2, !tbaa !11
  %conv172 = sext i16 %124 to i32
  %conv173 = sitofp i32 %conv172 to float
  %125 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yy174 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %125, i32 0, i32 3
  %126 = load float, float* %yy174, align 4, !tbaa !88
  %mul175 = fmul float %conv173, %126
  %conv176 = fpext float %mul175 to double
  %call177 = call double @atan2(double %conv170, double %conv176) #7
  store double %call177, double* %ar, align 8, !tbaa !71
  %M178 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %p, i32 0, i32 0
  %127 = load i16, i16* %M178, align 2, !tbaa !11
  %conv179 = sext i16 %127 to i32
  %cmp180 = icmp eq i32 %conv179, 0
  br i1 %cmp180, label %cond.true.182, label %cond.false.191

cond.true.182:                                    ; preds = %if.else
  %128 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yy183 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %128, i32 0, i32 3
  %129 = load float, float* %yy183, align 4, !tbaa !88
  %N184 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %p, i32 0, i32 1
  %130 = load i16, i16* %N184, align 2, !tbaa !14
  %conv185 = sext i16 %130 to i32
  %conv186 = sitofp i32 %conv185 to float
  %div187 = fdiv float %129, %conv186
  %conv188 = fpext float %div187 to double
  %131 = load double, double* %ar, align 8, !tbaa !71
  %call189 = call double @sin(double %131) #7
  %mul190 = fmul double %conv188, %call189
  br label %cond.end.200

cond.false.191:                                   ; preds = %if.else
  %132 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xx192 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %132, i32 0, i32 0
  %133 = load float, float* %xx192, align 4, !tbaa !87
  %M193 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %p, i32 0, i32 0
  %134 = load i16, i16* %M193, align 2, !tbaa !11
  %conv194 = sext i16 %134 to i32
  %conv195 = sitofp i32 %conv194 to float
  %div196 = fdiv float %133, %conv195
  %conv197 = fpext float %div196 to double
  %135 = load double, double* %ar, align 8, !tbaa !71
  %call198 = call double @cos(double %135) #7
  %mul199 = fmul double %conv197, %call198
  br label %cond.end.200

cond.end.200:                                     ; preds = %cond.false.191, %cond.true.182
  %cond201 = phi double [ %mul190, %cond.true.182 ], [ %mul199, %cond.false.191 ]
  %mul202 = fmul double 7.200000e+01, %cond201
  store double %mul202, double* %fr, align 8, !tbaa !71
  br label %if.end.203

if.end.203:                                       ; preds = %cond.end.200, %cond.end.162
  %136 = load double, double* %fr, align 8, !tbaa !71
  %call204 = call double @fabs(double %136) #6
  %137 = load i32, i32* %rt, align 4, !tbaa !5
  %conv205 = sitofp i32 %137 to double
  %mul206 = fmul double %call204, %conv205
  store double %mul206, double* %ft, align 8, !tbaa !71
  %138 = load double, double* %ar, align 8, !tbaa !71
  %mul207 = fmul double %138, 0x404CA5DC1A63C1F8
  %139 = load i32, i32* %rotation, align 4, !tbaa !5
  %conv208 = sitofp i32 %139 to double
  %sub = fsub double %mul207, %conv208
  %140 = load i32, i32* %reflection, align 4, !tbaa !5
  %conv209 = sitofp i32 %140 to double
  %mul210 = fmul double %sub, %conv209
  store double %mul210, double* %at, align 8, !tbaa !71
  %141 = load double, double* %at, align 8, !tbaa !71
  %div211 = fdiv double %141, 1.800000e+02
  %call212 = call double @floor(double %div211) #6
  %mul213 = fmul double %call212, 1.800000e+02
  %142 = load double, double* %at, align 8, !tbaa !71
  %sub214 = fsub double %142, %mul213
  store double %sub214, double* %at, align 8, !tbaa !71
  %143 = load double, double* %a0, align 8, !tbaa !71
  %div215 = fdiv double %143, 1.800000e+02
  %call216 = call double @floor(double %div215) #6
  %mul217 = fmul double %call216, 1.800000e+02
  %144 = load double, double* %at, align 8, !tbaa !71
  %add218 = fadd double %144, %mul217
  store double %add218, double* %at, align 8, !tbaa !71
  %145 = load double, double* %ft, align 8, !tbaa !71
  %146 = load double, double* %f0, align 8, !tbaa !71
  %sub219 = fsub double %145, %146
  %call220 = call double @fabs(double %sub219) #6
  store double %call220, double* %f_diff, align 8, !tbaa !71
  %147 = load double, double* %at, align 8, !tbaa !71
  %148 = load double, double* %a0, align 8, !tbaa !71
  %sub221 = fsub double %147, %148
  %call222 = call double @fabs(double %sub221) #6
  store double %call222, double* %a_diff, align 8, !tbaa !71
  %149 = load double, double* %f_diff, align 8, !tbaa !71
  %150 = load double, double* %f0, align 8, !tbaa !71
  %call223 = call double @fabs(double %150) #6
  %div224 = fdiv double %149, %call223
  store double %div224, double* %f_err, align 8, !tbaa !71
  %151 = load double, double* %a_diff, align 8, !tbaa !71
  store double %151, double* %a_err, align 8, !tbaa !71
  br label %do.body.225

do.body.225:                                      ; preds = %if.end.203
  br label %do.cond.226

do.cond.226:                                      ; preds = %do.body.225
  br label %do.end.227

do.end.227:                                       ; preds = %do.cond.226
  %152 = bitcast double* %error to i8*
  call void @llvm.lifetime.start(i64 8, i8* %152) #1
  %153 = load double, double* %fn0, align 8, !tbaa !71
  %N228 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %p, i32 0, i32 1
  %154 = load i16, i16* %N228, align 2, !tbaa !14
  %conv229 = sext i16 %154 to i32
  %conv230 = sitofp i32 %conv229 to double
  %sub231 = fsub double %153, %conv230
  %155 = load double, double* %fn0, align 8, !tbaa !71
  %N232 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %p, i32 0, i32 1
  %156 = load i16, i16* %N232, align 2, !tbaa !14
  %conv233 = sext i16 %156 to i32
  %conv234 = sitofp i32 %conv233 to double
  %sub235 = fsub double %155, %conv234
  %mul236 = fmul double %sub231, %sub235
  %157 = load double, double* %fm0, align 8, !tbaa !71
  %M237 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %p, i32 0, i32 0
  %158 = load i16, i16* %M237, align 2, !tbaa !11
  %conv238 = sext i16 %158 to i32
  %conv239 = sitofp i32 %conv238 to double
  %sub240 = fsub double %157, %conv239
  %159 = load double, double* %fm0, align 8, !tbaa !71
  %M241 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %p, i32 0, i32 0
  %160 = load i16, i16* %M241, align 2, !tbaa !11
  %conv242 = sext i16 %160 to i32
  %conv243 = sitofp i32 %conv242 to double
  %sub244 = fsub double %159, %conv243
  %mul245 = fmul double %sub240, %sub244
  %add246 = fadd double %mul236, %mul245
  store double %add246, double* %error, align 8, !tbaa !71
  %N247 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %p, i32 0, i32 1
  %161 = load i16, i16* %N247, align 2, !tbaa !14
  %conv248 = sext i16 %161 to i32
  %N249 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %p, i32 0, i32 1
  %162 = load i16, i16* %N249, align 2, !tbaa !14
  %conv250 = sext i16 %162 to i32
  %mul251 = mul nsw i32 %conv248, %conv250
  %M252 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %p, i32 0, i32 0
  %163 = load i16, i16* %M252, align 2, !tbaa !11
  %conv253 = sext i16 %163 to i32
  %M254 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %p, i32 0, i32 0
  %164 = load i16, i16* %M254, align 2, !tbaa !11
  %conv255 = sext i16 %164 to i32
  %mul256 = mul nsw i32 %conv253, %conv255
  %add257 = add nsw i32 %mul251, %mul256
  %conv258 = sitofp i32 %add257 to double
  %165 = load double, double* %error, align 8, !tbaa !71
  %div259 = fdiv double %165, %conv258
  store double %div259, double* %error, align 8, !tbaa !71
  %166 = load double, double* %error, align 8, !tbaa !71
  %call260 = call double @sqrt(double %166) #7
  store double %call260, double* %error, align 8, !tbaa !71
  %167 = load double, double* %error, align 8, !tbaa !71
  %168 = load double, double* %e_best, align 8, !tbaa !71
  %cmp261 = fcmp ogt double %167, %168
  br i1 %cmp261, label %if.then.263, label %if.end.264

if.then.263:                                      ; preds = %do.end.227
  store i32 12, i32* %cleanup.dest.slot
  br label %cleanup

if.end.264:                                       ; preds = %do.end.227
  %169 = load double, double* %error, align 8, !tbaa !71
  store double %169, double* %e_best, align 8, !tbaa !71
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.264, %if.then.263
  %170 = bitcast double* %error to i8*
  call void @llvm.lifetime.end(i64 8, i8* %170) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.275 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %171 = load %struct.gx_ht_cell_params_s*, %struct.gx_ht_cell_params_s** %phcp.addr, align 8, !tbaa !1
  %172 = bitcast %struct.gx_ht_cell_params_s* %171 to i8*
  %173 = bitcast %struct.gx_ht_cell_params_s* %p to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %172, i8* %173, i64 40, i32 8, i1 false), !tbaa.struct !94
  %174 = load double, double* %ft, align 8, !tbaa !71
  store double %174, double* %f, align 8, !tbaa !71
  %175 = load double, double* %at, align 8, !tbaa !71
  store double %175, double* %a, align 8, !tbaa !71
  store i32 1, i32* %better, align 4, !tbaa !5
  br label %do.body.265

do.body.265:                                      ; preds = %cleanup.cont
  br label %do.cond.266

do.cond.266:                                      ; preds = %do.body.265
  br label %do.end.267

do.end.267:                                       ; preds = %do.cond.266
  %176 = load double, double* %f_err, align 8, !tbaa !71
  %cmp268 = fcmp ole double %176, 1.000000e-02
  br i1 %cmp268, label %land.lhs.true.270, label %if.end.274

land.lhs.true.270:                                ; preds = %do.end.267
  %177 = load double, double* %a_err, align 8, !tbaa !71
  %cmp271 = fcmp ole double %177, 9.000000e-01
  br i1 %cmp271, label %if.then.273, label %if.end.274

if.then.273:                                      ; preds = %land.lhs.true.270
  store i32 19, i32* %cleanup.dest.slot
  br label %cleanup.275

if.end.274:                                       ; preds = %land.lhs.true.270, %do.end.267
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.275

cleanup.275:                                      ; preds = %if.then.273, %if.end.274, %cleanup, %if.then.122, %if.then.110
  %178 = bitcast double* %a_err to i8*
  call void @llvm.lifetime.end(i64 8, i8* %178) #1
  %179 = bitcast double* %f_err to i8*
  call void @llvm.lifetime.end(i64 8, i8* %179) #1
  %180 = bitcast double* %a_diff to i8*
  call void @llvm.lifetime.end(i64 8, i8* %180) #1
  %181 = bitcast double* %f_diff to i8*
  call void @llvm.lifetime.end(i64 8, i8* %181) #1
  %182 = bitcast double* %at to i8*
  call void @llvm.lifetime.end(i64 8, i8* %182) #1
  %183 = bitcast double* %ft to i8*
  call void @llvm.lifetime.end(i64 8, i8* %183) #1
  %184 = bitcast double* %ar to i8*
  call void @llvm.lifetime.end(i64 8, i8* %184) #1
  %185 = bitcast double* %fr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %185) #1
  %186 = bitcast i64* %wt_size to i8*
  call void @llvm.lifetime.end(i64 8, i8* %186) #1
  %187 = bitcast i64* %wt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %187) #1
  %188 = bitcast i64* %raster to i8*
  call void @llvm.lifetime.end(i64 8, i8* %188) #1
  %cleanup.dest.286 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.286, label %cleanup.293 [
    i32 0, label %cleanup.cont.287
    i32 12, label %for.inc
  ]

cleanup.cont.287:                                 ; preds = %cleanup.275
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont.287, %cleanup.275
  %N288 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %p, i32 0, i32 1
  %189 = load i16, i16* %N288, align 2, !tbaa !14
  %dec = add i16 %189, -1
  store i16 %dec, i16* %N288, align 2, !tbaa !14
  br label %for.cond.82

for.end:                                          ; preds = %for.cond.82
  br label %for.inc.289

for.inc.289:                                      ; preds = %for.end
  %M290 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %p, i32 0, i32 0
  %190 = load i16, i16* %M290, align 2, !tbaa !11
  %dec291 = add i16 %190, -1
  store i16 %dec291, i16* %M290, align 2, !tbaa !11
  br label %for.cond

for.end.292:                                      ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.293

cleanup.293:                                      ; preds = %for.end.292, %cleanup.275
  %191 = bitcast %struct.gx_ht_cell_params_s* %p to i8*
  call void @llvm.lifetime.end(i64 40, i8* %191) #1
  %192 = bitcast i32* %n0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %192) #1
  %193 = bitcast i32* %m0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %193) #1
  %194 = bitcast double* %fn0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %194) #1
  %195 = bitcast double* %fm0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %195) #1
  %cleanup.dest.298 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.298, label %cleanup.323 [
    i32 0, label %cleanup.cont.299
    i32 19, label %done
  ]

cleanup.cont.299:                                 ; preds = %cleanup.293
  %196 = load %struct.gx_ht_cell_params_s*, %struct.gx_ht_cell_params_s** %phcp.addr, align 8, !tbaa !1
  %C = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %196, i32 0, i32 6
  %197 = load i64, i64* %C, align 8, !tbaa !17
  %198 = load i32, i32* %min_levels.addr, align 4, !tbaa !5
  %conv300 = zext i32 %198 to i64
  %cmp301 = icmp ult i64 %197, %conv300
  br i1 %cmp301, label %if.then.303, label %if.end.305

if.then.303:                                      ; preds = %cleanup.cont.299
  %199 = load i32, i32* %rt, align 4, !tbaa !5
  %inc304 = add nsw i32 %199, 1
  store i32 %inc304, i32* %rt, align 4, !tbaa !5
  br label %try_size

if.end.305:                                       ; preds = %cleanup.cont.299
  %200 = load i32, i32* %better, align 4, !tbaa !5
  %tobool306 = icmp ne i32 %200, 0
  br i1 %tobool306, label %if.then.307, label %if.else.312

if.then.307:                                      ; preds = %if.end.305
  %201 = load i32, i32* %accurate.addr, align 4, !tbaa !5
  %tobool308 = icmp ne i32 %201, 0
  br i1 %tobool308, label %if.then.309, label %if.end.311

if.then.309:                                      ; preds = %if.then.307
  %202 = load i32, i32* %rt, align 4, !tbaa !5
  %inc310 = add nsw i32 %202, 1
  store i32 %inc310, i32* %rt, align 4, !tbaa !5
  br label %try_size

if.end.311:                                       ; preds = %if.then.307
  br label %if.end.317

if.else.312:                                      ; preds = %if.end.305
  %203 = load i32, i32* %rt, align 4, !tbaa !5
  %cmp313 = icmp eq i32 %203, 1
  br i1 %cmp313, label %if.then.315, label %if.end.316

if.then.315:                                      ; preds = %if.else.312
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.323

if.end.316:                                       ; preds = %if.else.312
  br label %if.end.317

if.end.317:                                       ; preds = %if.end.316, %if.end.311
  br label %done

done:                                             ; preds = %if.end.317, %cleanup.293
  br label %do.body.318

do.body.318:                                      ; preds = %done
  br label %do.cond.319

do.cond.319:                                      ; preds = %do.body.318
  br label %do.end.320

do.end.320:                                       ; preds = %do.cond.319
  %204 = load double, double* %f, align 8, !tbaa !71
  %conv321 = fptrunc double %204 to float
  %205 = load %struct.gs_screen_halftone_s*, %struct.gs_screen_halftone_s** %ph.addr, align 8, !tbaa !1
  %actual_frequency = getelementptr inbounds %struct.gs_screen_halftone_s, %struct.gs_screen_halftone_s* %205, i32 0, i32 3
  store float %conv321, float* %actual_frequency, align 4, !tbaa !95
  %206 = load double, double* %a, align 8, !tbaa !71
  %conv322 = fptrunc double %206 to float
  %207 = load %struct.gs_screen_halftone_s*, %struct.gs_screen_halftone_s** %ph.addr, align 8, !tbaa !1
  %actual_angle = getelementptr inbounds %struct.gs_screen_halftone_s, %struct.gs_screen_halftone_s* %207, i32 0, i32 4
  store float %conv322, float* %actual_angle, align 4, !tbaa !96
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.323

cleanup.323:                                      ; preds = %do.end.320, %if.then.315, %cleanup.293, %if.then
  %208 = bitcast i32* %better to i8*
  call void @llvm.lifetime.end(i64 4, i8* %208) #1
  %209 = bitcast double* %e_best to i8*
  call void @llvm.lifetime.end(i64 8, i8* %209) #1
  %210 = bitcast double* %a to i8*
  call void @llvm.lifetime.end(i64 8, i8* %210) #1
  %211 = bitcast double* %f to i8*
  call void @llvm.lifetime.end(i64 8, i8* %211) #1
  %212 = bitcast i32* %rt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %212) #1
  %213 = bitcast %struct.gs_point_s* %uv0 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %213) #1
  %214 = bitcast double* %T to i8*
  call void @llvm.lifetime.end(i64 8, i8* %214) #1
  %215 = bitcast double* %a0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %215) #1
  %216 = bitcast double* %f0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %216) #1
  %217 = bitcast i32* %rotation to i8*
  call void @llvm.lifetime.end(i64 4, i8* %217) #1
  %218 = bitcast i32* %reflection to i8*
  call void @llvm.lifetime.end(i64 4, i8* %218) #1
  %219 = bitcast i32* %reflected to i8*
  call void @llvm.lifetime.end(i64 4, i8* %219) #1
  %220 = bitcast i32* %landscape to i8*
  call void @llvm.lifetime.end(i64 4, i8* %220) #1
  %221 = load i32, i32* %retval
  ret i32 %221
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @gs_matrix_invert(%struct.gs_matrix_s*, %struct.gs_matrix_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gs_screen_currentpoint(%struct.gs_screen_enum_s* %penum, %struct.gs_point_s* %ppt) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_screen_enum_s*, align 8
  %ppt.addr = alloca %struct.gs_point_s*, align 8
  %pt = alloca %struct.gs_point_s, align 8
  %code = alloca i32, align 4
  %sx = alloca double, align 8
  %sy = alloca double, align 8
  %spot_center = alloca %struct.gs_point_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_screen_enum_s* %penum, %struct.gs_screen_enum_s** %penum.addr, align 8, !tbaa !1
  store %struct.gs_point_s* %ppt, %struct.gs_point_s** %ppt.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_point_s* %pt to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast double* %sx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast double* %sy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.gs_point_s* %spot_center to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #1
  %5 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %5, i32 0, i32 5
  %6 = load i32, i32* %y, align 4, !tbaa !58
  %7 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8, !tbaa !1
  %strip = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %7, i32 0, i32 6
  %8 = load i32, i32* %strip, align 4, !tbaa !62
  %cmp = icmp sge i32 %6, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8, !tbaa !1
  %order = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %9, i32 0, i32 1
  call void @gx_ht_construct_spot_order(%struct.gx_ht_order_s* %order) #5
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %10, i32 0, i32 4
  %11 = load i32, i32* %x, align 4, !tbaa !59
  %conv = sitofp i32 %11 to double
  %add = fadd double %conv, 5.010000e-01
  %12 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8, !tbaa !1
  %y1 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %12, i32 0, i32 5
  %13 = load i32, i32* %y1, align 4, !tbaa !58
  %conv2 = sitofp i32 %13 to double
  %add3 = fadd double %conv2, 4.980000e-01
  %14 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8, !tbaa !1
  %mat = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %14, i32 0, i32 2
  %call = call i32 @gs_point_transform(double %add, double %add3, %struct.gs_matrix_s* %mat, %struct.gs_point_s* %pt) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %call, 0
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %15 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end
  %x8 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 0
  %16 = load double, double* %x8, align 8, !tbaa !90
  %div = fdiv double %16, 2.000000e+00
  %call9 = call double @ceil(double %div) #6
  %mul = fmul double %call9, 2.000000e+00
  store double %mul, double* %sx, align 8, !tbaa !71
  %y10 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 1
  %17 = load double, double* %y10, align 8, !tbaa !91
  %div11 = fdiv double %17, 2.000000e+00
  %call12 = call double @ceil(double %div11) #6
  %mul13 = fmul double %call12, 2.000000e+00
  store double %mul13, double* %sy, align 8, !tbaa !71
  %18 = load double, double* %sx, align 8, !tbaa !71
  %19 = load double, double* %sy, align 8, !tbaa !71
  %20 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8, !tbaa !1
  %mat_inv = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %20, i32 0, i32 3
  %call14 = call i32 @gs_point_transform(double %18, double %19, %struct.gs_matrix_s* %mat_inv, %struct.gs_point_s* %spot_center) #5
  store i32 %call14, i32* %code, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.7
  %21 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.end.7
  %x19 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %spot_center, i32 0, i32 0
  %22 = load double, double* %x19, align 8, !tbaa !90
  %call20 = call double @floor(double %22) #6
  %add21 = fadd double %call20, 5.000000e-01
  %x22 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %spot_center, i32 0, i32 0
  store double %add21, double* %x22, align 8, !tbaa !90
  %y23 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %spot_center, i32 0, i32 1
  %23 = load double, double* %y23, align 8, !tbaa !91
  %call24 = call double @floor(double %23) #6
  %add25 = fadd double %call24, 5.000000e-01
  %y26 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %spot_center, i32 0, i32 1
  store double %add25, double* %y26, align 8, !tbaa !91
  %24 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8, !tbaa !1
  %x27 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %24, i32 0, i32 4
  %25 = load i32, i32* %x27, align 4, !tbaa !59
  %conv28 = sitofp i32 %25 to double
  %x29 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %spot_center, i32 0, i32 0
  %26 = load double, double* %x29, align 8, !tbaa !90
  %sub = fsub double %conv28, %26
  %add30 = fadd double %sub, 5.010000e-01
  %27 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8, !tbaa !1
  %y31 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %27, i32 0, i32 5
  %28 = load i32, i32* %y31, align 4, !tbaa !58
  %conv32 = sitofp i32 %28 to double
  %y33 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %spot_center, i32 0, i32 1
  %29 = load double, double* %y33, align 8, !tbaa !91
  %sub34 = fsub double %conv32, %29
  %add35 = fadd double %sub34, 4.980000e-01
  %30 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8, !tbaa !1
  %mat36 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %30, i32 0, i32 2
  %call37 = call i32 @gs_distance_transform(double %add30, double %add35, %struct.gs_matrix_s* %mat36, %struct.gs_point_s* %pt) #5
  store i32 %call37, i32* %code, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end.18
  %31 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.41:                                        ; preds = %if.end.18
  %x42 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 0
  %32 = load double, double* %x42, align 8, !tbaa !90
  %add43 = fadd double %32, 1.000000e+00
  store double %add43, double* %x42, align 8, !tbaa !90
  %y44 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 1
  %33 = load double, double* %y44, align 8, !tbaa !91
  %add45 = fadd double %33, 1.000000e+00
  store double %add45, double* %y44, align 8, !tbaa !91
  %x46 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 0
  %34 = load double, double* %x46, align 8, !tbaa !90
  %cmp47 = fcmp olt double %34, -1.000000e+00
  br i1 %cmp47, label %if.then.49, label %if.else

if.then.49:                                       ; preds = %if.end.41
  %x50 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 0
  %35 = load double, double* %x50, align 8, !tbaa !90
  %call51 = call double @ceil(double %35) #6
  %sub52 = fsub double -0.000000e+00, %call51
  %conv53 = fptosi double %sub52 to i32
  %add54 = add nsw i32 %conv53, 1
  %and = and i32 %add54, -2
  %conv55 = sitofp i32 %and to double
  %x56 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 0
  %36 = load double, double* %x56, align 8, !tbaa !90
  %add57 = fadd double %36, %conv55
  store double %add57, double* %x56, align 8, !tbaa !90
  br label %if.end.70

if.else:                                          ; preds = %if.end.41
  %x58 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 0
  %37 = load double, double* %x58, align 8, !tbaa !90
  %cmp59 = fcmp oge double %37, 1.000000e+00
  br i1 %cmp59, label %if.then.61, label %if.end.69

if.then.61:                                       ; preds = %if.else
  %x62 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 0
  %38 = load double, double* %x62, align 8, !tbaa !90
  %conv63 = fptosi double %38 to i32
  %add64 = add nsw i32 %conv63, 1
  %and65 = and i32 %add64, -2
  %conv66 = sitofp i32 %and65 to double
  %x67 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 0
  %39 = load double, double* %x67, align 8, !tbaa !90
  %sub68 = fsub double %39, %conv66
  store double %sub68, double* %x67, align 8, !tbaa !90
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.61, %if.else
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.then.49
  %y71 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 1
  %40 = load double, double* %y71, align 8, !tbaa !91
  %cmp72 = fcmp olt double %40, -1.000000e+00
  br i1 %cmp72, label %if.then.74, label %if.else.84

if.then.74:                                       ; preds = %if.end.70
  %y75 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 1
  %41 = load double, double* %y75, align 8, !tbaa !91
  %call76 = call double @ceil(double %41) #6
  %sub77 = fsub double -0.000000e+00, %call76
  %conv78 = fptosi double %sub77 to i32
  %add79 = add nsw i32 %conv78, 1
  %and80 = and i32 %add79, -2
  %conv81 = sitofp i32 %and80 to double
  %y82 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 1
  %42 = load double, double* %y82, align 8, !tbaa !91
  %add83 = fadd double %42, %conv81
  store double %add83, double* %y82, align 8, !tbaa !91
  br label %if.end.97

if.else.84:                                       ; preds = %if.end.70
  %y85 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 1
  %43 = load double, double* %y85, align 8, !tbaa !91
  %cmp86 = fcmp oge double %43, 1.000000e+00
  br i1 %cmp86, label %if.then.88, label %if.end.96

if.then.88:                                       ; preds = %if.else.84
  %y89 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 1
  %44 = load double, double* %y89, align 8, !tbaa !91
  %conv90 = fptosi double %44 to i32
  %add91 = add nsw i32 %conv90, 1
  %and92 = and i32 %add91, -2
  %conv93 = sitofp i32 %and92 to double
  %y94 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 1
  %45 = load double, double* %y94, align 8, !tbaa !91
  %sub95 = fsub double %45, %conv93
  store double %sub95, double* %y94, align 8, !tbaa !91
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.88, %if.else.84
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.then.74
  %46 = load %struct.gs_point_s*, %struct.gs_point_s** %ppt.addr, align 8, !tbaa !1
  %47 = bitcast %struct.gs_point_s* %46 to i8*
  %48 = bitcast %struct.gs_point_s* %pt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %48, i64 16, i32 8, i1 false), !tbaa.struct !97
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.97, %if.then.40, %if.then.17, %if.then.6, %if.then
  %49 = bitcast %struct.gs_point_s* %spot_center to i8*
  call void @llvm.lifetime.end(i64 16, i8* %49) #1
  %50 = bitcast double* %sy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = bitcast double* %sx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast %struct.gs_point_s* %pt to i8*
  call void @llvm.lifetime.end(i64 16, i8* %53) #1
  %54 = load i32, i32* %retval
  ret i32 %54
}

declare void @gx_ht_construct_spot_order(%struct.gx_ht_order_s*) #2

declare i32 @gs_point_transform(double, double, %struct.gs_matrix_s*, %struct.gs_point_s*) #2

; Function Attrs: nounwind readnone
declare double @ceil(double) #3

; Function Attrs: nounwind readnone
declare double @floor(double) #3

declare i32 @gs_distance_transform(double, double, %struct.gs_matrix_s*, %struct.gs_point_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gs_screen_next(%struct.gs_screen_enum_s* %penum, double %value) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_screen_enum_s*, align 8
  %value.addr = alloca double, align 8
  %sample = alloca i32, align 4
  %width = alloca i32, align 4
  %bits = alloca %struct.gx_ht_bit_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_screen_enum_s* %penum, %struct.gs_screen_enum_s** %penum.addr, align 8, !tbaa !1
  store double %value, double* %value.addr, align 8, !tbaa !71
  %0 = bitcast i32* %sample to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8, !tbaa !1
  %order = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %2, i32 0, i32 1
  %width1 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %order, i32 0, i32 1
  %3 = load i16, i16* %width1, align 2, !tbaa !98
  %conv = zext i16 %3 to i32
  store i32 %conv, i32* %width, align 4, !tbaa !5
  %4 = bitcast %struct.gx_ht_bit_s** %bits to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8, !tbaa !1
  %order2 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %5, i32 0, i32 1
  %bit_data = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %order2, i32 0, i32 13
  %6 = load i8*, i8** %bit_data, align 8, !tbaa !99
  %7 = bitcast i8* %6 to %struct.gx_ht_bit_s*
  store %struct.gx_ht_bit_s* %7, %struct.gx_ht_bit_s** %bits, align 8, !tbaa !1
  %8 = load double, double* %value.addr, align 8, !tbaa !71
  %cmp = fcmp olt double %8, -1.000000e+00
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load double, double* %value.addr, align 8, !tbaa !71
  %cmp4 = fcmp ogt double %9, 1.000000e+00
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %10 = load double, double* %value.addr, align 8, !tbaa !71
  %add = fadd double %10, 1.000000e+00
  %mul = fmul double %add, 0x41DFFFFFFFC00000
  %conv6 = fptoui double %mul to i32
  store i32 %conv6, i32* %sample, align 4, !tbaa !5
  %11 = load i32, i32* %sample, align 4, !tbaa !5
  %12 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %12, i32 0, i32 5
  %13 = load i32, i32* %y, align 4, !tbaa !58
  %14 = load i32, i32* %width, align 4, !tbaa !5
  %mul7 = mul nsw i32 %13, %14
  %15 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %15, i32 0, i32 4
  %16 = load i32, i32* %x, align 4, !tbaa !59
  %add8 = add nsw i32 %mul7, %16
  %idxprom = sext i32 %add8 to i64
  %17 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %bits, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %17, i64 %idxprom
  %mask = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %arrayidx, i32 0, i32 1
  store i32 %11, i32* %mask, align 4, !tbaa !100
  %18 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8, !tbaa !1
  %x9 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %18, i32 0, i32 4
  %19 = load i32, i32* %x9, align 4, !tbaa !59
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %x9, align 4, !tbaa !59
  %20 = load i32, i32* %width, align 4, !tbaa !5
  %cmp10 = icmp sge i32 %inc, %20
  br i1 %cmp10, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %if.end
  %21 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8, !tbaa !1
  %x13 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %21, i32 0, i32 4
  store i32 0, i32* %x13, align 4, !tbaa !59
  %22 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8, !tbaa !1
  %y14 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %22, i32 0, i32 5
  %23 = load i32, i32* %y14, align 4, !tbaa !58
  %inc15 = add nsw i32 %23, 1
  store i32 %inc15, i32* %y14, align 4, !tbaa !58
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.12, %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.16, %if.then
  %24 = bitcast %struct.gx_ht_bit_s** %bits to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast i32* %sample to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define i32 @gs_screen_install(%struct.gs_screen_enum_s* %penum) #0 {
entry:
  %penum.addr = alloca %struct.gs_screen_enum_s*, align 8
  %dev_ht = alloca %struct.gx_device_halftone_s, align 8
  %code = alloca i32, align 4
  store %struct.gs_screen_enum_s* %penum, %struct.gs_screen_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_halftone_s* %dev_ht to i8*
  call void @llvm.lifetime.start(i64 224, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8, !tbaa !1
  %halftone = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %2, i32 0, i32 0
  %rc = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %halftone, i32 0, i32 1
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 1
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !55
  %rc1 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %dev_ht, i32 0, i32 1
  %memory2 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc1, i32 0, i32 1
  store %struct.gs_memory_s* %3, %struct.gs_memory_s** %memory2, align 8, !tbaa !102
  %order = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %dev_ht, i32 0, i32 0
  %4 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8, !tbaa !1
  %order3 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %4, i32 0, i32 1
  %5 = bitcast %struct.gx_ht_order_s* %order to i8*
  %6 = bitcast %struct.gx_ht_order_s* %order3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 160, i32 8, i1 false), !tbaa.struct !53
  %components = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %dev_ht, i32 0, i32 4
  store %struct.gx_ht_order_component_s* null, %struct.gx_ht_order_component_s** %components, align 8, !tbaa !104
  %7 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %7, i32 0, i32 8
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !49
  %9 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8, !tbaa !1
  %halftone4 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %9, i32 0, i32 0
  %call = call i32 @gx_ht_install(%struct.gs_state_s* %8, %struct.gs_halftone_s* %halftone4, %struct.gx_device_halftone_s* %dev_ht) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %rc5 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %dev_ht, i32 0, i32 1
  %memory6 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc5, i32 0, i32 1
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory6, align 8, !tbaa !102
  call void @gx_device_halftone_release(%struct.gx_device_halftone_s* %dev_ht, %struct.gs_memory_s* %10) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i32, i32* %code, align 4, !tbaa !5
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  %13 = bitcast %struct.gx_device_halftone_s* %dev_ht to i8*
  call void @llvm.lifetime.end(i64 224, i8* %13) #1
  ret i32 %11
}

declare i32 @gx_ht_install(%struct.gs_state_s*, %struct.gs_halftone_s*, %struct.gx_device_halftone_s*) #2

declare void @gx_device_halftone_release(%struct.gx_device_halftone_s*, %struct.gs_memory_s*) #2

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @screen_enum_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %eptr = alloca %struct.gs_screen_enum_s*, align 8
  %ret = alloca %struct.gs_ptr_procs_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_screen_enum_s** %eptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_screen_enum_s*
  store %struct.gs_screen_enum_s* %2, %struct.gs_screen_enum_s** %eptr, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !5
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.default:                                       ; preds = %entry
  %4 = load i32, i32* %index.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %4, 5
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %sw.default
  %5 = bitcast %struct.gs_ptr_procs_s** %ret to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_ht_order, i32 0, i32 4), align 8, !tbaa !105
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %8 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %eptr, align 8, !tbaa !1
  %order = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %8, i32 0, i32 1
  %9 = bitcast %struct.gx_ht_order_s* %order to i8*
  %10 = load i32, i32* %index.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %10, 1
  %11 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %12 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %6(%struct.gs_memory_s* %7, i8* %9, i32 160, i32 %sub, %struct.enum_ptr_s* %11, %struct.gs_memory_struct_type_s* @st_ht_order, %struct.gc_state_s* %12) #5
  store %struct.gs_ptr_procs_s* %call, %struct.gs_ptr_procs_s** %ret, align 8, !tbaa !1
  %13 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %ret, align 8, !tbaa !1
  %cmp1 = icmp eq %struct.gs_ptr_procs_s* %13, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %14 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %14, i32 0, i32 0
  store i8* null, i8** %ptr, align 8, !tbaa !107
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %15 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %ret, align 8, !tbaa !1
  store %struct.gs_ptr_procs_s* %15, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.2
  %16 = bitcast %struct.gs_ptr_procs_s** %ret to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  br label %cleanup.7

if.end.3:                                         ; preds = %sw.default
  %17 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_halftone, i32 0, i32 4), align 8, !tbaa !105
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %19 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %eptr, align 8, !tbaa !1
  %halftone = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %19, i32 0, i32 0
  %20 = bitcast %struct.gs_halftone_s* %halftone to i8*
  %21 = load i32, i32* %index.addr, align 4, !tbaa !5
  %sub4 = sub nsw i32 %21, 5
  %22 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %23 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call5 = call %struct.gs_ptr_procs_s* %17(%struct.gs_memory_s* %18, i8* %20, i32 128, i32 %sub4, %struct.enum_ptr_s* %22, %struct.gs_memory_struct_type_s* @st_halftone, %struct.gc_state_s* %23) #5
  store %struct.gs_ptr_procs_s* %call5, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.7

sw.bb:                                            ; preds = %entry
  %24 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %25 = bitcast i8* %24 to %struct.gs_screen_enum_s*
  %pgs = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %25, i32 0, i32 8
  %26 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !49
  %27 = bitcast %struct.gs_state_s* %26 to i8*
  %28 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr6 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %28, i32 0, i32 0
  store i8* %27, i8** %ptr6, align 8, !tbaa !107
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.7

cleanup.7:                                        ; preds = %sw.bb, %if.end.3, %cleanup
  %29 = bitcast %struct.gs_screen_enum_s** %eptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %30
}

; Function Attrs: nounwind uwtable
define internal void @screen_enum_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %eptr = alloca %struct.gs_screen_enum_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_screen_enum_s** %eptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_screen_enum_s*
  store %struct.gs_screen_enum_s* %2, %struct.gs_screen_enum_s** %eptr, align 8, !tbaa !1
  %3 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gc_state_s* %3 to %struct.gc_procs_common_s**
  %5 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %4, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %5, i32 0, i32 0
  %6 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !109
  %7 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %8 = bitcast i8* %7 to %struct.gs_screen_enum_s*
  %pgs = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %8, i32 0, i32 8
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !49
  %10 = bitcast %struct.gs_state_s* %9 to i8*
  %11 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %6(i8* %10, %struct.gc_state_s* %11) #5
  %12 = bitcast i8* %call to %struct.gs_state_s*
  %13 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %14 = bitcast i8* %13 to %struct.gs_screen_enum_s*
  %pgs1 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %14, i32 0, i32 8
  store %struct.gs_state_s* %12, %struct.gs_state_s** %pgs1, align 8, !tbaa !49
  %15 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_halftone, i32 0, i32 5), align 8, !tbaa !111
  %16 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %eptr, align 8, !tbaa !1
  %halftone = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %16, i32 0, i32 0
  %17 = bitcast %struct.gs_halftone_s* %halftone to i8*
  %18 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %15(i8* %17, i32 128, %struct.gs_memory_struct_type_s* @st_halftone, %struct.gc_state_s* %18) #5
  %19 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_ht_order, i32 0, i32 5), align 8, !tbaa !111
  %20 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %eptr, align 8, !tbaa !1
  %order = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %20, i32 0, i32 1
  %21 = bitcast %struct.gx_ht_order_s* %order to i8*
  %22 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %19(i8* %21, i32 160, %struct.gs_memory_struct_type_s* @st_ht_order, %struct.gc_state_s* %22) #5
  %23 = bitcast %struct.gs_screen_enum_s** %eptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  ret void
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

declare i32 @gs_make_rotation(double, %struct.gs_matrix_s*) #2

; Function Attrs: nounwind
declare double @atan2(double, double) #4

; Function Attrs: nounwind
declare double @cos(double) #4

; Function Attrs: nounwind
declare double @sin(double) #4

; Function Attrs: nounwind
declare double @sqrt(double) #4

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
!7 = !{!8, !6, i64 144}
!8 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !9, i64 104, !2, i64 112, !2, i64 120, !6, i64 128, !2, i64 136, !6, i64 144, !6, i64 148, !3, i64 152, !2, i64 168, !6, i64 176, !2, i64 184, !6, i64 192, !2, i64 200, !2, i64 208}
!9 = !{!"long", !3, i64 0}
!10 = !{!8, !6, i64 148}
!11 = !{!12, !13, i64 0}
!12 = !{!"gx_ht_cell_params_s", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6, !13, i64 8, !13, i64 10, !9, i64 16, !13, i64 24, !13, i64 26, !6, i64 28, !6, i64 32, !6, i64 36}
!13 = !{!"short", !3, i64 0}
!14 = !{!12, !13, i64 2}
!15 = !{!12, !13, i64 6}
!16 = !{!12, !13, i64 8}
!17 = !{!12, !9, i64 16}
!18 = !{!9, !9, i64 0}
!19 = !{!12, !13, i64 24}
!20 = !{!12, !13, i64 26}
!21 = !{!12, !6, i64 28}
!22 = !{!12, !6, i64 32}
!23 = !{!12, !6, i64 36}
!24 = !{!25, !2, i64 72}
!25 = !{!"gs_memory_s", !2, i64 0, !26, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!26 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!27 = !{!28, !2, i64 8}
!28 = !{!"gs_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !29, i64 24, !6, i64 128, !33, i64 132, !6, i64 168, !34, i64 176, !34, i64 192, !6, i64 208, !6, i64 212, !13, i64 216, !3, i64 220, !36, i64 224, !36, i64 228, !37, i64 232, !9, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !30, i64 296, !38, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !30, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !39, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !40, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !40, i64 1336, !2, i64 1616, !31, i64 1624, !6, i64 1648, !31, i64 1652, !6, i64 1676, !2, i64 1680, !2, i64 1688, !2, i64 1696, !2, i64 1704, !9, i64 1712, !9, i64 1720, !2, i64 1728, !6, i64 1736, !3, i64 1744, !2, i64 1792, !2, i64 1800, !33, i64 1808, !6, i64 1844, !3, i64 1848, !3, i64 1852, !2, i64 1856, !6, i64 1864, !2, i64 1872, !2, i64 1880, !41, i64 1888}
!29 = !{!"gx_line_params_s", !30, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20, !30, i64 24, !30, i64 28, !30, i64 32, !6, i64 36, !31, i64 40, !32, i64 64}
!30 = !{!"float", !3, i64 0}
!31 = !{!"gs_matrix_s", !30, i64 0, !30, i64 4, !30, i64 8, !30, i64 12, !30, i64 16, !30, i64 20}
!32 = !{!"gx_dash_params_s", !2, i64 0, !6, i64 8, !30, i64 12, !6, i64 16, !30, i64 20, !6, i64 24, !6, i64 28, !30, i64 32}
!33 = !{!"gs_matrix_fixed_s", !30, i64 0, !30, i64 4, !30, i64 8, !30, i64 12, !30, i64 16, !30, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!34 = !{!"gs_point_s", !35, i64 0, !35, i64 8}
!35 = !{!"double", !3, i64 0}
!36 = !{!"gs_transparency_source_s", !30, i64 0}
!37 = !{!"gs_xstate_trans_flags", !6, i64 0, !6, i64 4}
!38 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!39 = !{!"gx_transfer_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !2, i64 56}
!40 = !{!"gs_devicen_color_map_s", !6, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !9, i64 16, !3, i64 24}
!41 = !{!"gs_state_client_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!42 = !{!43, !30, i64 0}
!43 = !{!"gs_screen_halftone_s", !30, i64 0, !30, i64 4, !2, i64 8, !30, i64 16, !30, i64 20}
!44 = !{i64 0, i64 4, !45, i64 4, i64 4, !45, i64 8, i64 4, !45, i64 12, i64 4, !45, i64 16, i64 4, !45, i64 20, i64 4, !45}
!45 = !{!30, !30, i64 0}
!46 = !{!47, !9, i64 136}
!47 = !{!"gx_ht_order_s", !12, i64 0, !13, i64 40, !13, i64 42, !13, i64 44, !13, i64 46, !13, i64 48, !13, i64 50, !6, i64 52, !6, i64 56, !6, i64 60, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !48, i64 112, !2, i64 144, !6, i64 152}
!48 = !{!"gx_ht_order_screen_params_s", !31, i64 0, !9, i64 24}
!49 = !{!50, !2, i64 352}
!50 = !{!"gs_screen_enum_s", !51, i64 0, !47, i64 128, !31, i64 288, !31, i64 312, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !2, i64 352}
!51 = !{!"gs_halftone_s", !3, i64 0, !52, i64 8, !3, i64 32}
!52 = !{!"rc_header_s", !9, i64 0, !2, i64 8, !2, i64 16}
!53 = !{i64 0, i64 2, !54, i64 2, i64 2, !54, i64 4, i64 2, !54, i64 6, i64 2, !54, i64 8, i64 2, !54, i64 10, i64 2, !54, i64 16, i64 8, !18, i64 24, i64 2, !54, i64 26, i64 2, !54, i64 28, i64 4, !5, i64 32, i64 4, !5, i64 36, i64 4, !5, i64 40, i64 2, !54, i64 42, i64 2, !54, i64 44, i64 2, !54, i64 46, i64 2, !54, i64 48, i64 2, !54, i64 50, i64 2, !54, i64 52, i64 4, !5, i64 56, i64 4, !5, i64 60, i64 4, !5, i64 64, i64 8, !1, i64 72, i64 8, !1, i64 80, i64 8, !1, i64 88, i64 8, !1, i64 96, i64 8, !1, i64 104, i64 8, !1, i64 112, i64 4, !45, i64 116, i64 4, !45, i64 120, i64 4, !45, i64 124, i64 4, !45, i64 128, i64 4, !45, i64 132, i64 4, !45, i64 136, i64 8, !18, i64 144, i64 8, !1, i64 152, i64 4, !5}
!54 = !{!13, !13, i64 0}
!55 = !{!50, !2, i64 16}
!56 = !{!50, !3, i64 0}
!57 = !{i64 0, i64 4, !45, i64 4, i64 4, !45, i64 8, i64 8, !1, i64 16, i64 4, !45, i64 20, i64 4, !45}
!58 = !{!50, !6, i64 340}
!59 = !{!50, !6, i64 336}
!60 = !{!47, !6, i64 56}
!61 = !{!47, !13, i64 40}
!62 = !{!50, !6, i64 344}
!63 = !{!47, !13, i64 46}
!64 = !{!50, !6, i64 348}
!65 = !{!47, !13, i64 0}
!66 = !{!47, !13, i64 2}
!67 = !{!47, !13, i64 4}
!68 = !{!47, !13, i64 6}
!69 = !{!47, !13, i64 8}
!70 = !{!47, !13, i64 10}
!71 = !{!35, !35, i64 0}
!72 = !{!50, !30, i64 288}
!73 = !{!50, !30, i64 292}
!74 = !{!50, !30, i64 296}
!75 = !{!50, !30, i64 300}
!76 = !{!50, !30, i64 304}
!77 = !{!50, !30, i64 308}
!78 = !{!47, !6, i64 28}
!79 = !{!47, !13, i64 24}
!80 = !{!47, !6, i64 32}
!81 = !{!47, !13, i64 48}
!82 = !{!47, !13, i64 42}
!83 = !{!47, !6, i64 36}
!84 = !{!47, !13, i64 50}
!85 = !{!31, !30, i64 4}
!86 = !{!31, !30, i64 8}
!87 = !{!31, !30, i64 0}
!88 = !{!31, !30, i64 12}
!89 = !{!43, !30, i64 4}
!90 = !{!34, !35, i64 0}
!91 = !{!34, !35, i64 8}
!92 = !{!12, !13, i64 10}
!93 = !{!12, !13, i64 4}
!94 = !{i64 0, i64 2, !54, i64 2, i64 2, !54, i64 4, i64 2, !54, i64 6, i64 2, !54, i64 8, i64 2, !54, i64 10, i64 2, !54, i64 16, i64 8, !18, i64 24, i64 2, !54, i64 26, i64 2, !54, i64 28, i64 4, !5, i64 32, i64 4, !5, i64 36, i64 4, !5}
!95 = !{!43, !30, i64 16}
!96 = !{!43, !30, i64 20}
!97 = !{i64 0, i64 8, !71, i64 8, i64 8, !71}
!98 = !{!50, !13, i64 168}
!99 = !{!50, !2, i64 216}
!100 = !{!101, !6, i64 4}
!101 = !{!"gx_ht_bit_s", !6, i64 0, !6, i64 4}
!102 = !{!103, !2, i64 168}
!103 = !{!"gx_device_halftone_s", !47, i64 0, !52, i64 160, !9, i64 184, !3, i64 192, !2, i64 200, !6, i64 208, !6, i64 212, !6, i64 216, !6, i64 220}
!104 = !{!103, !2, i64 200}
!105 = !{!106, !2, i64 32}
!106 = !{!"gs_memory_struct_type_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!107 = !{!108, !2, i64 0}
!108 = !{!"enum_ptr_s", !2, i64 0, !6, i64 8}
!109 = !{!110, !2, i64 0}
!110 = !{!"gc_procs_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!111 = !{!106, !2, i64 40}
