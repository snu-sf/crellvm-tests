; ModuleID = './gsht.bc'
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
%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.gx_device_color_type_s = type { %struct.gs_memory_struct_type_s*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* }
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
%struct.gs_halftone_s = type { i32, %struct.rc_header_s, %union.anon.1 }
%union.anon.1 = type { %struct.gs_colorscreen_halftone_s }
%struct.gs_colorscreen_halftone_s = type { %union._css }
%union._css = type { [4 x %struct.gs_screen_halftone_s] }
%struct.gs_screen_halftone_s = type { float, float, float (double, double)*, float, float }
%struct.gs_cie_render_s = type opaque
%struct.gx_transfer_s = type { i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s* }
%struct.gx_color_map_procs_s = type { void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, %struct.gs_color_space_s*)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_imager_state_s*, %struct.gx_device_s*)* }
%struct.gx_pattern_cache_s = type opaque
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.gs_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s, %struct.gs_state_s*, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, %struct.gx_path_s*, %struct.gx_clip_path_s*, %struct.gx_clip_stack_s*, %struct.gx_clip_path_s*, i64, i64, %struct.gx_clip_path_s*, i32, [2 x %struct.anon], %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_matrix_fixed_s, i32, i32, i32, %struct.gs_state_s*, i32, %struct.gx_device_s*, %struct.gs_device_filter_stack_s*, %struct.gs_state_client_procs_s }
%struct.gx_path_s = type opaque
%struct.gx_clip_stack_s = type opaque
%struct.gx_clip_path_s = type opaque
%struct.anon = type { %struct.gs_color_space_s*, %struct.gs_client_color_s*, %struct.gx_device_color_s* }
%struct.gs_font_s = type opaque
%struct.gs_device_filter_stack_s = type { %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_s*, %struct.gx_device_s*, %struct.rc_header_s }
%struct.gs_device_filter_s = type opaque
%struct.gs_state_client_procs_s = type { i8* (%struct.gs_memory_s*)*, i32 (i8*, i8*)*, void (i8*, %struct.gs_memory_s*)*, i32 (i8*, i8*, i32)* }
%struct.stream_s = type opaque
%struct.client_color_space_data_s = type { void (%struct.gs_color_space_s*, i32)* }
%union.anon = type { %struct.gs_device_n_params_s }
%struct.gs_device_n_params_s = type { i64*, i32, %struct.gs_device_n_map_s*, %struct.gs_device_n_attributes_s*, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gs_device_n_map_s = type opaque
%struct.gs_device_n_attributes_s = type opaque
%struct.gx_cie_joint_caches_s = type opaque
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
%struct.gx_rop_source_s = type { i8*, i32, i32, i64, [2 x i64], i32, i32 }
%struct.gc_procs_common_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)* }
%struct.gs_string_s = type { i8*, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gs_spot_halftone_s = type { %struct.gs_screen_halftone_s, i32, float (double, %struct.gx_transfer_map_s*)*, %struct.gs_mapping_closure_s }
%struct.gs_threshold_halftone_s = type { i32, i32, %struct.gs_mapping_closure_s, %struct.gs_const_string_s, float (double, %struct.gx_transfer_map_s*)* }
%struct.gs_threshold2_halftone_s = type { i32, i32, %struct.gs_mapping_closure_s, i32, i32, i32, %struct.gs_const_bytestring_s }
%struct.gs_const_bytestring_s = type { i8*, i32, i8* }
%struct.gs_client_order_halftone_s = type { i32, i32, i32, %struct.gs_client_order_ht_procs_s*, i8*, %struct.gs_mapping_closure_s }
%struct.gs_client_order_ht_procs_s = type { i32 (%struct.gx_ht_order_s*, %struct.gs_state_s*, %struct.gs_client_order_halftone_s*, %struct.gs_memory_s*)* }
%struct.gs_multiple_halftone_s = type { %struct.gs_halftone_component_s*, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gs_halftone_component_s = type { i32, i32, i32, %union.anon.2 }
%union.anon.2 = type { %struct.gs_threshold2_halftone_s }
%struct.gs_screen_enum_s = type { %struct.gs_halftone_s, %struct.gx_ht_order_s, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, %struct.gs_state_s* }
%struct._csc = type { %struct.gs_screen_halftone_s, %struct.gs_screen_halftone_s, %struct.gs_screen_halftone_s, %struct.gs_screen_halftone_s }
%struct.gx_ht_bit_s = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"gx_ht_order\00", align 1
@st_ht_order = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 160, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @ht_order_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @ht_order_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"gx_ht_order_component[]\00", align 1
@st_ht_order_component_element = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 168, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @ht_order_element_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @ht_order_element_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"gs_halftone\00", align 1
@st_halftone = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @halftone_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @halftone_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"gx_device_halftone\00", align 1
@device_halftone_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_ht_order to %struct.gs_memory_struct_type_s*), %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @device_halftone_enum_ptrs, i32 0, i32 0) }, align 8
@st_device_halftone = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 224, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @device_halftone_reloc_ptrs to i8*) }, align 8
@gx_dc_type_data_none = external constant %struct.gx_device_color_type_s, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"alloc_ht_order_data(levels)\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"alloc_ht_order_data(bit_data)\00", align 1
@ht_order_procs_table = external constant [2 x %struct.gx_ht_order_procs_s], align 16
@.str.6 = private unnamed_addr constant [30 x i8] c"gx_ht_order_release(transfer)\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"gx_ht_order_release(bit_data)\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"gx_ht_order_release(levels)\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"gx_ht_order_release(threshold)\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"gx_dev_ht_release(components)\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"Default\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"Red\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"Cyan\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"Green\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"Magenta\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"Blue\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"Yellow\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"Gray\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"Black\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"gx_imager_dev_ht_install(components)\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"gx_imager_dev_ht_install\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"gx_ht_install(new halftone)\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"gx_ht_install(old halftone)\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"gx_ht_construct_threshold\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"gx_ht_order_component\00", align 1
@ht_order_component_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 0, i16 0, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_ht_order to %struct.gs_memory_struct_type_s*), %struct.gc_ptr_element_s* null }, align 8
@st_ht_order_component = internal constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 168, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @ht_order_component_reloc_ptrs to i8*) }, align 8
@device_halftone_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 200 }], align 2
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@ptr_const_string_procs = external constant %struct.gs_ptr_procs_s, align 8

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @ht_order_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %porder = alloca %struct.gx_ht_order_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_ht_order_s** %porder to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_ht_order_s*
  store %struct.gx_ht_order_s* %2, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !5
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.9
    i32 3, label %sw.bb.11
  ]

sw.default:                                       ; preds = %entry
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %4 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %data_memory = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %4, i32 0, i32 11
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_memory, align 8, !tbaa !7
  %tobool = icmp ne %struct.gs_memory_s* %5, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  %6 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %levels = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %6, i32 0, i32 12
  %7 = load i32*, i32** %levels, align 8, !tbaa !15
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32* [ %7, %cond.true ], [ null, %cond.false ]
  %8 = bitcast i32* %cond to i8*
  %9 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %9, i32 0, i32 0
  store i8* %8, i8** %ptr, align 8, !tbaa !16
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.1:                                          ; preds = %entry
  %10 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %data_memory2 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %10, i32 0, i32 11
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_memory2, align 8, !tbaa !7
  %tobool3 = icmp ne %struct.gs_memory_s* %11, null
  br i1 %tobool3, label %cond.true.4, label %cond.false.5

cond.true.4:                                      ; preds = %sw.bb.1
  %12 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %bit_data = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %12, i32 0, i32 13
  %13 = load i8*, i8** %bit_data, align 8, !tbaa !18
  br label %cond.end.6

cond.false.5:                                     ; preds = %sw.bb.1
  br label %cond.end.6

cond.end.6:                                       ; preds = %cond.false.5, %cond.true.4
  %cond7 = phi i8* [ %13, %cond.true.4 ], [ null, %cond.false.5 ]
  %14 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr8 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %14, i32 0, i32 0
  store i8* %cond7, i8** %ptr8, align 8, !tbaa !16
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.9:                                          ; preds = %entry
  %15 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %cache = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %15, i32 0, i32 14
  %16 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %cache, align 8, !tbaa !19
  %17 = bitcast %struct.gx_ht_cache_s* %16 to i8*
  %18 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr10 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %18, i32 0, i32 0
  store i8* %17, i8** %ptr10, align 8, !tbaa !16
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.11:                                         ; preds = %entry
  %19 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %transfer = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %19, i32 0, i32 15
  %20 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %transfer, align 8, !tbaa !20
  %21 = bitcast %struct.gx_transfer_map_s* %20 to i8*
  %22 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr12 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %22, i32 0, i32 0
  store i8* %21, i8** %ptr12, align 8, !tbaa !16
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.bb.11, %sw.bb.9, %cond.end.6, %cond.end, %sw.default
  %23 = bitcast %struct.gx_ht_order_s** %porder to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #2
  %24 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %24
}

; Function Attrs: nounwind uwtable
define internal void @ht_order_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %porder = alloca %struct.gx_ht_order_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_ht_order_s** %porder to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_ht_order_s*
  store %struct.gx_ht_order_s* %2, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %3 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %data_memory = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %3, i32 0, i32 11
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_memory, align 8, !tbaa !7
  %tobool = icmp ne %struct.gs_memory_s* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gc_state_s* %5 to %struct.gc_procs_common_s**
  %7 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %6, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %7, i32 0, i32 0
  %8 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !21
  %9 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %levels = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %9, i32 0, i32 12
  %10 = load i32*, i32** %levels, align 8, !tbaa !15
  %11 = bitcast i32* %10 to i8*
  %12 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %8(i8* %11, %struct.gc_state_s* %12) #5
  %13 = bitcast i8* %call to i32*
  %14 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %levels1 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %14, i32 0, i32 12
  store i32* %13, i32** %levels1, align 8, !tbaa !15
  %15 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %16 = bitcast %struct.gc_state_s* %15 to %struct.gc_procs_common_s**
  %17 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %16, align 8, !tbaa !1
  %reloc_struct_ptr2 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %17, i32 0, i32 0
  %18 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr2, align 8, !tbaa !21
  %19 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %bit_data = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %19, i32 0, i32 13
  %20 = load i8*, i8** %bit_data, align 8, !tbaa !18
  %21 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call3 = call i8* %18(i8* %20, %struct.gc_state_s* %21) #5
  %22 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %bit_data4 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %22, i32 0, i32 13
  store i8* %call3, i8** %bit_data4, align 8, !tbaa !18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %23 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %24 = bitcast %struct.gc_state_s* %23 to %struct.gc_procs_common_s**
  %25 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %24, align 8, !tbaa !1
  %reloc_struct_ptr5 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %25, i32 0, i32 0
  %26 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr5, align 8, !tbaa !21
  %27 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %cache = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %27, i32 0, i32 14
  %28 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %cache, align 8, !tbaa !19
  %29 = bitcast %struct.gx_ht_cache_s* %28 to i8*
  %30 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call6 = call i8* %26(i8* %29, %struct.gc_state_s* %30) #5
  %31 = bitcast i8* %call6 to %struct.gx_ht_cache_s*
  %32 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %cache7 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %32, i32 0, i32 14
  store %struct.gx_ht_cache_s* %31, %struct.gx_ht_cache_s** %cache7, align 8, !tbaa !19
  %33 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %34 = bitcast %struct.gc_state_s* %33 to %struct.gc_procs_common_s**
  %35 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %34, align 8, !tbaa !1
  %reloc_struct_ptr8 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %35, i32 0, i32 0
  %36 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr8, align 8, !tbaa !21
  %37 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %transfer = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %37, i32 0, i32 15
  %38 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %transfer, align 8, !tbaa !20
  %39 = bitcast %struct.gx_transfer_map_s* %38 to i8*
  %40 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call9 = call i8* %36(i8* %39, %struct.gc_state_s* %40) #5
  %41 = bitcast i8* %call9 to %struct.gx_transfer_map_s*
  %42 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %transfer10 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %42, i32 0, i32 15
  store %struct.gx_transfer_map_s* %41, %struct.gx_transfer_map_s** %transfer10, align 8, !tbaa !20
  %43 = bitcast %struct.gx_ht_order_s** %porder to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @ht_order_element_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %size.addr, align 4, !tbaa !5
  %div = udiv i32 %1, 168
  store i32 %div, i32* %count, align 4, !tbaa !5
  %2 = load i32, i32* %count, align 4, !tbaa !5
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_ht_order_component to %struct.gs_memory_struct_type_s*), i32 0, i32 4), align 8, !tbaa !23
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %6 = load i32, i32* %index.addr, align 4, !tbaa !5
  %7 = load i32, i32* %count, align 4, !tbaa !5
  %rem = urem i32 %6, %7
  %conv = zext i32 %rem to i64
  %mul = mul i64 %conv, 168
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %mul
  %8 = load i32, i32* %index.addr, align 4, !tbaa !5
  %9 = load i32, i32* %count, align 4, !tbaa !5
  %div1 = udiv i32 %8, %9
  %10 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %11 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %3(%struct.gs_memory_s* %4, i8* %add.ptr, i32 168, i32 %div1, %struct.enum_ptr_s* %10, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_ht_order_component to %struct.gs_memory_struct_type_s*), %struct.gc_state_s* %11) #5
  store %struct.gs_ptr_procs_s* %call, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %12 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #2
  %13 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %13
}

; Function Attrs: nounwind uwtable
define internal void @ht_order_element_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %count = alloca i32, align 4
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %size.addr, align 4, !tbaa !5
  %div = udiv i32 %1, 168
  store i32 %div, i32* %count, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %count, align 4, !tbaa !5
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_ht_order_component to %struct.gs_memory_struct_type_s*), i32 0, i32 5), align 8, !tbaa !25
  %4 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %5 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %3(i8* %4, i32 168, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_ht_order_component to %struct.gs_memory_struct_type_s*), %struct.gc_state_s* %5) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %count, align 4, !tbaa !5
  %dec = add i32 %6, -1
  store i32 %dec, i32* %count, align 4, !tbaa !5
  %7 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 168
  store i8* %add.ptr, i8** %vptr.addr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @halftone_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %hptr = alloca %struct.gs_halftone_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_halftone_s** %hptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_halftone_s*
  store %struct.gs_halftone_s* %2, %struct.gs_halftone_s** %hptr, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !5
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.23
  ]

sw.default:                                       ; preds = %entry
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %4 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %hptr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %4, i32 0, i32 0
  %5 = load i32, i32* %type, align 4, !tbaa !26
  switch i32 %5, label %sw.epilog [
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.4
    i32 5, label %sw.bb.13
    i32 8, label %sw.bb.16
    i32 6, label %sw.bb.19
    i32 7, label %sw.bb.19
    i32 0, label %sw.bb.22
    i32 1, label %sw.bb.22
    i32 2, label %sw.bb.22
  ]

sw.bb.1:                                          ; preds = %sw.bb
  %6 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %hptr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %6, i32 0, i32 2
  %spot = bitcast %union.anon.1* %params to %struct.gs_spot_halftone_s*
  %transfer = getelementptr inbounds %struct.gs_spot_halftone_s, %struct.gs_spot_halftone_s* %spot, i32 0, i32 2
  %7 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %transfer, align 8, !tbaa !29
  %cmp = icmp eq float (double, %struct.gx_transfer_map_s*)* %7, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.1
  %8 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %hptr, align 8, !tbaa !1
  %params2 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %8, i32 0, i32 2
  %spot3 = bitcast %union.anon.1* %params2 to %struct.gs_spot_halftone_s*
  %transfer_closure = getelementptr inbounds %struct.gs_spot_halftone_s, %struct.gs_spot_halftone_s* %spot3, i32 0, i32 3
  %data = getelementptr inbounds %struct.gs_mapping_closure_s, %struct.gs_mapping_closure_s* %transfer_closure, i32 0, i32 1
  %9 = load i8*, i8** %data, align 8, !tbaa !33
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %9, %cond.true ], [ null, %cond.false ]
  %10 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %10, i32 0, i32 0
  store i8* %cond, i8** %ptr, align 8, !tbaa !16
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.4:                                          ; preds = %sw.bb
  %11 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %12 = bitcast i8* %11 to %struct.gs_halftone_s*
  %params5 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %12, i32 0, i32 2
  %threshold = bitcast %union.anon.1* %params5 to %struct.gs_threshold_halftone_s*
  %thresholds = getelementptr inbounds %struct.gs_threshold_halftone_s, %struct.gs_threshold_halftone_s* %threshold, i32 0, i32 3
  %data6 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %thresholds, i32 0, i32 0
  %13 = load i8*, i8** %data6, align 8, !tbaa !34
  %14 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr7 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %14, i32 0, i32 0
  store i8* %13, i8** %ptr7, align 8, !tbaa !16
  %15 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %16 = bitcast i8* %15 to %struct.gs_halftone_s*
  %params8 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %16, i32 0, i32 2
  %threshold9 = bitcast %union.anon.1* %params8 to %struct.gs_threshold_halftone_s*
  %thresholds10 = getelementptr inbounds %struct.gs_threshold_halftone_s, %struct.gs_threshold_halftone_s* %threshold9, i32 0, i32 3
  %size11 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %thresholds10, i32 0, i32 1
  %17 = load i32, i32* %size11, align 4, !tbaa !36
  %18 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %size12 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %18, i32 0, i32 1
  store i32 %17, i32* %size12, align 4, !tbaa !37
  store %struct.gs_ptr_procs_s* @ptr_const_string_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.13:                                         ; preds = %sw.bb
  %19 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %20 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %hptr, align 8, !tbaa !1
  %params14 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %20, i32 0, i32 2
  %threshold2 = bitcast %union.anon.1* %params14 to %struct.gs_threshold2_halftone_s*
  %thresholds15 = getelementptr inbounds %struct.gs_threshold2_halftone_s, %struct.gs_threshold2_halftone_s* %threshold2, i32 0, i32 6
  %call = call %struct.gs_ptr_procs_s* @enum_const_bytestring(%struct.enum_ptr_s* %19, %struct.gs_const_bytestring_s* %thresholds15) #5
  store %struct.gs_ptr_procs_s* %call, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.16:                                         ; preds = %sw.bb
  %21 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %hptr, align 8, !tbaa !1
  %params17 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %21, i32 0, i32 2
  %client_order = bitcast %union.anon.1* %params17 to %struct.gs_client_order_halftone_s*
  %client_data = getelementptr inbounds %struct.gs_client_order_halftone_s, %struct.gs_client_order_halftone_s* %client_order, i32 0, i32 4
  %22 = load i8*, i8** %client_data, align 8, !tbaa !38
  %23 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr18 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %23, i32 0, i32 0
  store i8* %22, i8** %ptr18, align 8, !tbaa !16
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.19:                                         ; preds = %sw.bb, %sw.bb
  %24 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %hptr, align 8, !tbaa !1
  %params20 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %24, i32 0, i32 2
  %multiple = bitcast %union.anon.1* %params20 to %struct.gs_multiple_halftone_s*
  %components = getelementptr inbounds %struct.gs_multiple_halftone_s, %struct.gs_multiple_halftone_s* %multiple, i32 0, i32 0
  %25 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %components, align 8, !tbaa !40
  %26 = bitcast %struct.gs_halftone_component_s* %25 to i8*
  %27 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr21 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %27, i32 0, i32 0
  store i8* %26, i8** %ptr21, align 8, !tbaa !16
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.22:                                         ; preds = %sw.bb, %sw.bb, %sw.bb
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb
  br label %sw.bb.23

sw.bb.23:                                         ; preds = %entry, %sw.epilog
  %28 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %hptr, align 8, !tbaa !1
  %type24 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %28, i32 0, i32 0
  %29 = load i32, i32* %type24, align 4, !tbaa !26
  switch i32 %29, label %sw.default.51 [
    i32 4, label %sw.bb.25
    i32 5, label %sw.bb.39
    i32 8, label %sw.bb.45
  ]

sw.bb.25:                                         ; preds = %sw.bb.23
  %30 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %hptr, align 8, !tbaa !1
  %params26 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %30, i32 0, i32 2
  %threshold27 = bitcast %union.anon.1* %params26 to %struct.gs_threshold_halftone_s*
  %transfer28 = getelementptr inbounds %struct.gs_threshold_halftone_s, %struct.gs_threshold_halftone_s* %threshold27, i32 0, i32 4
  %31 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %transfer28, align 8, !tbaa !42
  %cmp29 = icmp eq float (double, %struct.gx_transfer_map_s*)* %31, null
  br i1 %cmp29, label %cond.true.30, label %cond.false.35

cond.true.30:                                     ; preds = %sw.bb.25
  %32 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %hptr, align 8, !tbaa !1
  %params31 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %32, i32 0, i32 2
  %threshold32 = bitcast %union.anon.1* %params31 to %struct.gs_threshold_halftone_s*
  %transfer_closure33 = getelementptr inbounds %struct.gs_threshold_halftone_s, %struct.gs_threshold_halftone_s* %threshold32, i32 0, i32 2
  %data34 = getelementptr inbounds %struct.gs_mapping_closure_s, %struct.gs_mapping_closure_s* %transfer_closure33, i32 0, i32 1
  %33 = load i8*, i8** %data34, align 8, !tbaa !44
  br label %cond.end.36

cond.false.35:                                    ; preds = %sw.bb.25
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.false.35, %cond.true.30
  %cond37 = phi i8* [ %33, %cond.true.30 ], [ null, %cond.false.35 ]
  %34 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr38 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %34, i32 0, i32 0
  store i8* %cond37, i8** %ptr38, align 8, !tbaa !16
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.39:                                         ; preds = %sw.bb.23
  %35 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %hptr, align 8, !tbaa !1
  %params40 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %35, i32 0, i32 2
  %threshold241 = bitcast %union.anon.1* %params40 to %struct.gs_threshold2_halftone_s*
  %transfer_closure42 = getelementptr inbounds %struct.gs_threshold2_halftone_s, %struct.gs_threshold2_halftone_s* %threshold241, i32 0, i32 2
  %data43 = getelementptr inbounds %struct.gs_mapping_closure_s, %struct.gs_mapping_closure_s* %transfer_closure42, i32 0, i32 1
  %36 = load i8*, i8** %data43, align 8, !tbaa !45
  %37 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr44 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %37, i32 0, i32 0
  store i8* %36, i8** %ptr44, align 8, !tbaa !16
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.45:                                         ; preds = %sw.bb.23
  %38 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %hptr, align 8, !tbaa !1
  %params46 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %38, i32 0, i32 2
  %client_order47 = bitcast %union.anon.1* %params46 to %struct.gs_client_order_halftone_s*
  %transfer_closure48 = getelementptr inbounds %struct.gs_client_order_halftone_s, %struct.gs_client_order_halftone_s* %client_order47, i32 0, i32 5
  %data49 = getelementptr inbounds %struct.gs_mapping_closure_s, %struct.gs_mapping_closure_s* %transfer_closure48, i32 0, i32 1
  %39 = load i8*, i8** %data49, align 8, !tbaa !48
  %40 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr50 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %40, i32 0, i32 0
  store i8* %39, i8** %ptr50, align 8, !tbaa !16
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default.51:                                    ; preds = %sw.bb.23
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.default.51, %sw.bb.45, %sw.bb.39, %cond.end.36, %sw.bb.22, %sw.bb.19, %sw.bb.16, %sw.bb.13, %sw.bb.4, %cond.end, %sw.default
  %41 = bitcast %struct.gs_halftone_s** %hptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #2
  %42 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %42
}

; Function Attrs: nounwind uwtable
define internal void @halftone_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %hptr = alloca %struct.gs_halftone_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_halftone_s** %hptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_halftone_s*
  store %struct.gs_halftone_s* %2, %struct.gs_halftone_s** %hptr, align 8, !tbaa !1
  %3 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %hptr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %3, i32 0, i32 0
  %4 = load i32, i32* %type, align 4, !tbaa !26
  switch i32 %4, label %sw.epilog [
    i32 3, label %sw.bb
    i32 4, label %sw.bb.7
    i32 5, label %sw.bb.25
    i32 8, label %sw.bb.38
    i32 6, label %sw.bb.55
    i32 7, label %sw.bb.55
    i32 0, label %sw.bb.62
    i32 1, label %sw.bb.62
    i32 2, label %sw.bb.62
  ]

sw.bb:                                            ; preds = %entry
  %5 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %hptr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %5, i32 0, i32 2
  %spot = bitcast %union.anon.1* %params to %struct.gs_spot_halftone_s*
  %transfer = getelementptr inbounds %struct.gs_spot_halftone_s, %struct.gs_spot_halftone_s* %spot, i32 0, i32 2
  %6 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %transfer, align 8, !tbaa !29
  %cmp = icmp eq float (double, %struct.gx_transfer_map_s*)* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %7 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gc_state_s* %7 to %struct.gc_procs_common_s**
  %9 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %8, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %9, i32 0, i32 0
  %10 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !21
  %11 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %12 = bitcast i8* %11 to %struct.gs_halftone_s*
  %params1 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %12, i32 0, i32 2
  %spot2 = bitcast %union.anon.1* %params1 to %struct.gs_spot_halftone_s*
  %transfer_closure = getelementptr inbounds %struct.gs_spot_halftone_s, %struct.gs_spot_halftone_s* %spot2, i32 0, i32 3
  %data = getelementptr inbounds %struct.gs_mapping_closure_s, %struct.gs_mapping_closure_s* %transfer_closure, i32 0, i32 1
  %13 = load i8*, i8** %data, align 8, !tbaa !33
  %14 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %10(i8* %13, %struct.gc_state_s* %14) #5
  %15 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %16 = bitcast i8* %15 to %struct.gs_halftone_s*
  %params3 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %16, i32 0, i32 2
  %spot4 = bitcast %union.anon.1* %params3 to %struct.gs_spot_halftone_s*
  %transfer_closure5 = getelementptr inbounds %struct.gs_spot_halftone_s, %struct.gs_spot_halftone_s* %spot4, i32 0, i32 3
  %data6 = getelementptr inbounds %struct.gs_mapping_closure_s, %struct.gs_mapping_closure_s* %transfer_closure5, i32 0, i32 1
  store i8* %call, i8** %data6, align 8, !tbaa !33
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %17 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %18 = bitcast %struct.gc_state_s* %17 to %struct.gc_procs_common_s**
  %19 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %18, align 8, !tbaa !1
  %reloc_const_string = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %19, i32 0, i32 2
  %20 = load void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)** %reloc_const_string, align 8, !tbaa !49
  %21 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %22 = bitcast i8* %21 to %struct.gs_halftone_s*
  %params8 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %22, i32 0, i32 2
  %threshold = bitcast %union.anon.1* %params8 to %struct.gs_threshold_halftone_s*
  %thresholds = getelementptr inbounds %struct.gs_threshold_halftone_s, %struct.gs_threshold_halftone_s* %threshold, i32 0, i32 3
  %23 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %20(%struct.gs_const_string_s* %thresholds, %struct.gc_state_s* %23) #5
  %24 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %hptr, align 8, !tbaa !1
  %params9 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %24, i32 0, i32 2
  %threshold10 = bitcast %union.anon.1* %params9 to %struct.gs_threshold_halftone_s*
  %transfer11 = getelementptr inbounds %struct.gs_threshold_halftone_s, %struct.gs_threshold_halftone_s* %threshold10, i32 0, i32 4
  %25 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %transfer11, align 8, !tbaa !42
  %cmp12 = icmp eq float (double, %struct.gx_transfer_map_s*)* %25, null
  br i1 %cmp12, label %if.then.13, label %if.end.24

if.then.13:                                       ; preds = %sw.bb.7
  %26 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %27 = bitcast %struct.gc_state_s* %26 to %struct.gc_procs_common_s**
  %28 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %27, align 8, !tbaa !1
  %reloc_struct_ptr14 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %28, i32 0, i32 0
  %29 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr14, align 8, !tbaa !21
  %30 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %31 = bitcast i8* %30 to %struct.gs_halftone_s*
  %params15 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %31, i32 0, i32 2
  %threshold16 = bitcast %union.anon.1* %params15 to %struct.gs_threshold_halftone_s*
  %transfer_closure17 = getelementptr inbounds %struct.gs_threshold_halftone_s, %struct.gs_threshold_halftone_s* %threshold16, i32 0, i32 2
  %data18 = getelementptr inbounds %struct.gs_mapping_closure_s, %struct.gs_mapping_closure_s* %transfer_closure17, i32 0, i32 1
  %32 = load i8*, i8** %data18, align 8, !tbaa !44
  %33 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call19 = call i8* %29(i8* %32, %struct.gc_state_s* %33) #5
  %34 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %35 = bitcast i8* %34 to %struct.gs_halftone_s*
  %params20 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %35, i32 0, i32 2
  %threshold21 = bitcast %union.anon.1* %params20 to %struct.gs_threshold_halftone_s*
  %transfer_closure22 = getelementptr inbounds %struct.gs_threshold_halftone_s, %struct.gs_threshold_halftone_s* %threshold21, i32 0, i32 2
  %data23 = getelementptr inbounds %struct.gs_mapping_closure_s, %struct.gs_mapping_closure_s* %transfer_closure22, i32 0, i32 1
  store i8* %call19, i8** %data23, align 8, !tbaa !44
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.13, %sw.bb.7
  br label %sw.epilog

sw.bb.25:                                         ; preds = %entry
  %36 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %hptr, align 8, !tbaa !1
  %params26 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %36, i32 0, i32 2
  %threshold2 = bitcast %union.anon.1* %params26 to %struct.gs_threshold2_halftone_s*
  %thresholds27 = getelementptr inbounds %struct.gs_threshold2_halftone_s, %struct.gs_threshold2_halftone_s* %threshold2, i32 0, i32 6
  %37 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void @reloc_const_bytestring(%struct.gs_const_bytestring_s* %thresholds27, %struct.gc_state_s* %37) #5
  %38 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %39 = bitcast %struct.gc_state_s* %38 to %struct.gc_procs_common_s**
  %40 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %39, align 8, !tbaa !1
  %reloc_struct_ptr28 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %40, i32 0, i32 0
  %41 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr28, align 8, !tbaa !21
  %42 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %hptr, align 8, !tbaa !1
  %params29 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %42, i32 0, i32 2
  %threshold230 = bitcast %union.anon.1* %params29 to %struct.gs_threshold2_halftone_s*
  %transfer_closure31 = getelementptr inbounds %struct.gs_threshold2_halftone_s, %struct.gs_threshold2_halftone_s* %threshold230, i32 0, i32 2
  %data32 = getelementptr inbounds %struct.gs_mapping_closure_s, %struct.gs_mapping_closure_s* %transfer_closure31, i32 0, i32 1
  %43 = load i8*, i8** %data32, align 8, !tbaa !45
  %44 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call33 = call i8* %41(i8* %43, %struct.gc_state_s* %44) #5
  %45 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %hptr, align 8, !tbaa !1
  %params34 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %45, i32 0, i32 2
  %threshold235 = bitcast %union.anon.1* %params34 to %struct.gs_threshold2_halftone_s*
  %transfer_closure36 = getelementptr inbounds %struct.gs_threshold2_halftone_s, %struct.gs_threshold2_halftone_s* %threshold235, i32 0, i32 2
  %data37 = getelementptr inbounds %struct.gs_mapping_closure_s, %struct.gs_mapping_closure_s* %transfer_closure36, i32 0, i32 1
  store i8* %call33, i8** %data37, align 8, !tbaa !45
  br label %sw.epilog

sw.bb.38:                                         ; preds = %entry
  %46 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %47 = bitcast %struct.gc_state_s* %46 to %struct.gc_procs_common_s**
  %48 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %47, align 8, !tbaa !1
  %reloc_struct_ptr39 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %48, i32 0, i32 0
  %49 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr39, align 8, !tbaa !21
  %50 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %51 = bitcast i8* %50 to %struct.gs_halftone_s*
  %params40 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %51, i32 0, i32 2
  %client_order = bitcast %union.anon.1* %params40 to %struct.gs_client_order_halftone_s*
  %client_data = getelementptr inbounds %struct.gs_client_order_halftone_s, %struct.gs_client_order_halftone_s* %client_order, i32 0, i32 4
  %52 = load i8*, i8** %client_data, align 8, !tbaa !38
  %53 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call41 = call i8* %49(i8* %52, %struct.gc_state_s* %53) #5
  %54 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %55 = bitcast i8* %54 to %struct.gs_halftone_s*
  %params42 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %55, i32 0, i32 2
  %client_order43 = bitcast %union.anon.1* %params42 to %struct.gs_client_order_halftone_s*
  %client_data44 = getelementptr inbounds %struct.gs_client_order_halftone_s, %struct.gs_client_order_halftone_s* %client_order43, i32 0, i32 4
  store i8* %call41, i8** %client_data44, align 8, !tbaa !38
  %56 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %57 = bitcast %struct.gc_state_s* %56 to %struct.gc_procs_common_s**
  %58 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %57, align 8, !tbaa !1
  %reloc_struct_ptr45 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %58, i32 0, i32 0
  %59 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr45, align 8, !tbaa !21
  %60 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %61 = bitcast i8* %60 to %struct.gs_halftone_s*
  %params46 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %61, i32 0, i32 2
  %client_order47 = bitcast %union.anon.1* %params46 to %struct.gs_client_order_halftone_s*
  %transfer_closure48 = getelementptr inbounds %struct.gs_client_order_halftone_s, %struct.gs_client_order_halftone_s* %client_order47, i32 0, i32 5
  %data49 = getelementptr inbounds %struct.gs_mapping_closure_s, %struct.gs_mapping_closure_s* %transfer_closure48, i32 0, i32 1
  %62 = load i8*, i8** %data49, align 8, !tbaa !48
  %63 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call50 = call i8* %59(i8* %62, %struct.gc_state_s* %63) #5
  %64 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %65 = bitcast i8* %64 to %struct.gs_halftone_s*
  %params51 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %65, i32 0, i32 2
  %client_order52 = bitcast %union.anon.1* %params51 to %struct.gs_client_order_halftone_s*
  %transfer_closure53 = getelementptr inbounds %struct.gs_client_order_halftone_s, %struct.gs_client_order_halftone_s* %client_order52, i32 0, i32 5
  %data54 = getelementptr inbounds %struct.gs_mapping_closure_s, %struct.gs_mapping_closure_s* %transfer_closure53, i32 0, i32 1
  store i8* %call50, i8** %data54, align 8, !tbaa !48
  br label %sw.epilog

sw.bb.55:                                         ; preds = %entry, %entry
  %66 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %67 = bitcast %struct.gc_state_s* %66 to %struct.gc_procs_common_s**
  %68 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %67, align 8, !tbaa !1
  %reloc_struct_ptr56 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %68, i32 0, i32 0
  %69 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr56, align 8, !tbaa !21
  %70 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %71 = bitcast i8* %70 to %struct.gs_halftone_s*
  %params57 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %71, i32 0, i32 2
  %multiple = bitcast %union.anon.1* %params57 to %struct.gs_multiple_halftone_s*
  %components = getelementptr inbounds %struct.gs_multiple_halftone_s, %struct.gs_multiple_halftone_s* %multiple, i32 0, i32 0
  %72 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %components, align 8, !tbaa !40
  %73 = bitcast %struct.gs_halftone_component_s* %72 to i8*
  %74 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call58 = call i8* %69(i8* %73, %struct.gc_state_s* %74) #5
  %75 = bitcast i8* %call58 to %struct.gs_halftone_component_s*
  %76 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %77 = bitcast i8* %76 to %struct.gs_halftone_s*
  %params59 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %77, i32 0, i32 2
  %multiple60 = bitcast %union.anon.1* %params59 to %struct.gs_multiple_halftone_s*
  %components61 = getelementptr inbounds %struct.gs_multiple_halftone_s, %struct.gs_multiple_halftone_s* %multiple60, i32 0, i32 0
  store %struct.gs_halftone_component_s* %75, %struct.gs_halftone_component_s** %components61, align 8, !tbaa !40
  br label %sw.epilog

sw.bb.62:                                         ; preds = %entry, %entry, %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.62, %sw.bb.55, %sw.bb.38, %sw.bb.25, %if.end.24, %if.end
  %78 = bitcast %struct.gs_halftone_s** %hptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #2
  ret void
}

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

; Function Attrs: nounwind uwtable
define i32 @gs_setscreen(%struct.gs_state_s* %pgs, %struct.gs_screen_halftone_s* %phsp) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %phsp.addr = alloca %struct.gs_screen_halftone_s*, align 8
  %senum = alloca %struct.gs_screen_enum_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_screen_halftone_s* %phsp, %struct.gs_screen_halftone_s** %phsp.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_screen_enum_s* %senum to i8*
  call void @llvm.lifetime.start(i64 360, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %3 = load %struct.gs_screen_halftone_s*, %struct.gs_screen_halftone_s** %phsp.addr, align 8, !tbaa !1
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 1
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !50
  %call = call i32 @gs_currentaccuratescreens(%struct.gs_memory_s* %5) #5
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 1
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !50
  %call2 = call i32 @gx_ht_process_screen_memory(%struct.gs_screen_enum_s* %senum, %struct.gs_state_s* %2, %struct.gs_screen_halftone_s* %3, i32 %call, %struct.gs_memory_s* %7) #5
  store i32 %call2, i32* %code, align 4, !tbaa !5
  %8 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 @gs_screen_install(%struct.gs_screen_enum_s* %senum) #5
  store i32 %call3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #2
  %11 = bitcast %struct.gs_screen_enum_s* %senum to i8*
  call void @llvm.lifetime.end(i64 360, i8* %11) #2
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @gx_ht_process_screen_memory(%struct.gs_screen_enum_s* %penum, %struct.gs_state_s* %pgs, %struct.gs_screen_halftone_s* %phsp, i32 %accurate, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_screen_enum_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %phsp.addr = alloca %struct.gs_screen_halftone_s*, align 8
  %accurate.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pt = alloca %struct.gs_point_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_screen_enum_s* %penum, %struct.gs_screen_enum_s** %penum.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_screen_halftone_s* %phsp, %struct.gs_screen_halftone_s** %phsp.addr, align 8, !tbaa !1
  store i32 %accurate, i32* %accurate.addr, align 4, !tbaa !5
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_point_s* %pt to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8, !tbaa !1
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %4 = load %struct.gs_screen_halftone_s*, %struct.gs_screen_halftone_s** %phsp.addr, align 8, !tbaa !1
  %5 = load i32, i32* %accurate.addr, align 4, !tbaa !5
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i32 @gs_screen_init_memory(%struct.gs_screen_enum_s* %2, %struct.gs_state_s* %3, %struct.gs_screen_halftone_s* %4, i32 %5, %struct.gs_memory_s* %6) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %7 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.8, %if.end
  %9 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8, !tbaa !1
  %call1 = call i32 @gs_screen_currentpoint(%struct.gs_screen_enum_s* %9, %struct.gs_point_s* %pt) #5
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8, !tbaa !1
  %11 = load %struct.gs_screen_halftone_s*, %struct.gs_screen_halftone_s** %phsp.addr, align 8, !tbaa !1
  %spot_function = getelementptr inbounds %struct.gs_screen_halftone_s, %struct.gs_screen_halftone_s* %11, i32 0, i32 2
  %12 = load float (double, double)*, float (double, double)** %spot_function, align 8, !tbaa !63
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 0
  %13 = load double, double* %x, align 8, !tbaa !64
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 1
  %14 = load double, double* %y, align 8, !tbaa !65
  %call3 = call float %12(double %13, double %14) #5
  %conv = fpext float %call3 to double
  %call4 = call i32 @gs_screen_next(%struct.gs_screen_enum_s* %10, double %conv) #5
  store i32 %call4, i32* %code, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %while.body
  %15 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then.7, %if.then
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #2
  %17 = bitcast %struct.gs_point_s* %pt to i8*
  call void @llvm.lifetime.end(i64 16, i8* %17) #2
  %18 = load i32, i32* %retval
  ret i32 %18
}

declare i32 @gs_currentaccuratescreens(%struct.gs_memory_s*) #1

declare i32 @gs_screen_install(%struct.gs_screen_enum_s*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @gs_currentscreen(%struct.gs_state_s* %pgs, %struct.gs_screen_halftone_s* %phsp) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %phsp.addr = alloca %struct.gs_screen_halftone_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_screen_halftone_s* %phsp, %struct.gs_screen_halftone_s** %phsp.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %halftone = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 39
  %1 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %halftone, align 8, !tbaa !66
  %type = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %1, i32 0, i32 0
  %2 = load i32, i32* %type, align 4, !tbaa !26
  switch i32 %2, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %3 = load %struct.gs_screen_halftone_s*, %struct.gs_screen_halftone_s** %phsp.addr, align 8, !tbaa !1
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %halftone1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 39
  %5 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %halftone1, align 8, !tbaa !66
  %params = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %5, i32 0, i32 2
  %screen = bitcast %union.anon.1* %params to %struct.gs_screen_halftone_s*
  %6 = bitcast %struct.gs_screen_halftone_s* %3 to i8*
  %7 = bitcast %struct.gs_screen_halftone_s* %screen to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 24, i32 8, i1 false), !tbaa.struct !67
  store i32 0, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  %8 = load %struct.gs_screen_halftone_s*, %struct.gs_screen_halftone_s** %phsp.addr, align 8, !tbaa !1
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %halftone3 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i32 0, i32 39
  %10 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %halftone3, align 8, !tbaa !66
  %params4 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %10, i32 0, i32 2
  %colorscreen = bitcast %union.anon.1* %params4 to %struct.gs_colorscreen_halftone_s*
  %screens = getelementptr inbounds %struct.gs_colorscreen_halftone_s, %struct.gs_colorscreen_halftone_s* %colorscreen, i32 0, i32 0
  %colored = bitcast %union._css* %screens to %struct._csc*
  %gray = getelementptr inbounds %struct._csc, %struct._csc* %colored, i32 0, i32 3
  %11 = bitcast %struct.gs_screen_halftone_s* %8 to i8*
  %12 = bitcast %struct.gs_screen_halftone_s* %gray to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 24, i32 8, i1 false), !tbaa.struct !67
  store i32 0, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i32 -21, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.2, %sw.bb
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i32 @gs_currentscreenlevels(%struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %gi = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast i32* %gi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %gi, align 4, !tbaa !5
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 78
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !69
  %cmp = icmp ne %struct.gx_device_s* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 78
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %device1, align 8, !tbaa !69
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 11
  %gray_index = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 4
  %5 = load i8, i8* %gray_index, align 1, !tbaa !70
  %conv = zext i8 %5 to i32
  store i32 %conv, i32* %gi, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %gi, align 4, !tbaa !5
  %cmp2 = icmp ne i32 %6, 255
  br i1 %cmp2, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %7 = load i32, i32* %gi, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %dev_ht = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 41
  %9 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht, align 8, !tbaa !80
  %components = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %9, i32 0, i32 4
  %10 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components, align 8, !tbaa !81
  %arrayidx = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %10, i64 %idxprom
  %corder = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx, i32 0, i32 0
  %num_levels = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %corder, i32 0, i32 8
  %11 = load i32, i32* %num_levels, align 4, !tbaa !83
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.end
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %dev_ht5 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %12, i32 0, i32 41
  %13 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht5, align 8, !tbaa !80
  %components6 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %13, i32 0, i32 4
  %14 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components6, align 8, !tbaa !81
  %arrayidx7 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %14, i64 0
  %corder8 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx7, i32 0, i32 0
  %num_levels9 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %corder8, i32 0, i32 8
  %15 = load i32, i32* %num_levels9, align 4, !tbaa !83
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then.4
  %16 = bitcast i32* %gi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #2
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i32 @gx_imager_setscreenphase(%struct.gs_imager_state_s* %pis, i32 %x, i32 %y, i32 %select) #0 {
entry:
  %retval = alloca i32, align 4
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %select.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %select, i32* %select.addr, align 4, !tbaa !85
  %0 = load i32, i32* %select.addr, align 4, !tbaa !85
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %2, 2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %4 = load i32, i32* %x.addr, align 4, !tbaa !5
  %5 = load i32, i32* %y.addr, align 4, !tbaa !5
  %6 = load i32, i32* %i, align 4, !tbaa !5
  %call = call i32 @gx_imager_setscreenphase(%struct.gs_imager_state_s* %3, i32 %4, i32 %5, i32 %6) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #2
  br label %return

if.else:                                          ; preds = %entry
  %9 = load i32, i32* %select.addr, align 4, !tbaa !85
  %cmp2 = icmp slt i32 %9, 0
  br i1 %cmp2, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %10 = load i32, i32* %select.addr, align 4, !tbaa !85
  %cmp3 = icmp sge i32 %10, 2
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %lor.lhs.false, %if.else
  store i32 -15, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end.5

if.end.5:                                         ; preds = %if.end
  %11 = load i32, i32* %x.addr, align 4, !tbaa !5
  %12 = load i32, i32* %select.addr, align 4, !tbaa !85
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %screen_phase = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %13, i32 0, i32 40
  %arrayidx = getelementptr inbounds [2 x %struct.gs_int_point_s], [2 x %struct.gs_int_point_s]* %screen_phase, i32 0, i64 %idxprom
  %x6 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %arrayidx, i32 0, i32 0
  store i32 %11, i32* %x6, align 4, !tbaa !86
  %14 = load i32, i32* %y.addr, align 4, !tbaa !5
  %15 = load i32, i32* %select.addr, align 4, !tbaa !85
  %idxprom7 = sext i32 %15 to i64
  %16 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %screen_phase8 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %16, i32 0, i32 40
  %arrayidx9 = getelementptr inbounds [2 x %struct.gs_int_point_s], [2 x %struct.gs_int_point_s]* %screen_phase8, i32 0, i64 %idxprom7
  %y10 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %arrayidx9, i32 0, i32 1
  store i32 %14, i32* %y10, align 4, !tbaa !88
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %for.end
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i32 @gs_setscreenphase(%struct.gs_state_s* %pgs, i32 %x, i32 %y, i32 %select) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %select.addr = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %select, i32* %select.addr, align 4, !tbaa !85
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_state_s* %1 to %struct.gs_imager_state_s*
  %3 = load i32, i32* %x.addr, align 4, !tbaa !5
  %4 = load i32, i32* %y.addr, align 4, !tbaa !5
  %5 = load i32, i32* %select.addr, align 4, !tbaa !85
  %call = call i32 @gx_imager_setscreenphase(%struct.gs_imager_state_s* %2, i32 %3, i32 %4, i32 %5) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %6 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp sge i32 %6, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load i32, i32* %select.addr, align 4, !tbaa !85
  %cmp1 = icmp eq i32 %7, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %8 = load i32, i32* %select.addr, align 4, !tbaa !85
  %cmp2 = icmp eq i32 %8, -1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color, i32 0, i64 0
  %dev_color = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 2
  %10 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color, align 8, !tbaa !89
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %10, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_none, %struct.gx_device_color_type_s** %type, align 8, !tbaa !91
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %entry
  %11 = load i32, i32* %code, align 4, !tbaa !5
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #2
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @gs_currentscreenphase_pis(%struct.gs_imager_state_s* %pis, %struct.gs_int_point_s* %pphase, i32 %select) #0 {
entry:
  %retval = alloca i32, align 4
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pphase.addr = alloca %struct.gs_int_point_s*, align 8
  %select.addr = alloca i32, align 4
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_int_point_s* %pphase, %struct.gs_int_point_s** %pphase.addr, align 8, !tbaa !1
  store i32 %select, i32* %select.addr, align 4, !tbaa !85
  %0 = load i32, i32* %select.addr, align 4, !tbaa !85
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %select.addr, align 4, !tbaa !85
  %cmp1 = icmp sge i32 %1, 2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -15, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.gs_int_point_s*, %struct.gs_int_point_s** %pphase.addr, align 8, !tbaa !1
  %3 = load i32, i32* %select.addr, align 4, !tbaa !85
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %screen_phase = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %4, i32 0, i32 40
  %arrayidx = getelementptr inbounds [2 x %struct.gs_int_point_s], [2 x %struct.gs_int_point_s]* %screen_phase, i32 0, i64 %idxprom
  %5 = bitcast %struct.gs_int_point_s* %2 to i8*
  %6 = bitcast %struct.gs_int_point_s* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 8, i32 4, i1 false), !tbaa.struct !97
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @gs_currentscreenphase(%struct.gs_state_s* %pgs, %struct.gs_int_point_s* %pphase, i32 %select) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pphase.addr = alloca %struct.gs_int_point_s*, align 8
  %select.addr = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_int_point_s* %pphase, %struct.gs_int_point_s** %pphase.addr, align 8, !tbaa !1
  store i32 %select, i32* %select.addr, align 4, !tbaa !85
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gs_state_s* %0 to %struct.gs_imager_state_s*
  %2 = load %struct.gs_int_point_s*, %struct.gs_int_point_s** %pphase.addr, align 8, !tbaa !1
  %3 = load i32, i32* %select.addr, align 4, !tbaa !85
  %call = call i32 @gs_currentscreenphase_pis(%struct.gs_imager_state_s* %1, %struct.gs_int_point_s* %2, i32 %3) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gs_currenthalftone(%struct.gs_state_s* %pgs, %struct.gs_halftone_s* %pht) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pht.addr = alloca %struct.gs_halftone_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_halftone_s* %pht, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  %0 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %halftone = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 39
  %2 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %halftone, align 8, !tbaa !66
  %3 = bitcast %struct.gs_halftone_s* %0 to i8*
  %4 = bitcast %struct.gs_halftone_s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 128, i32 8, i1 false), !tbaa.struct !98
  ret i32 0
}

declare i32 @gs_screen_init_memory(%struct.gs_screen_enum_s*, %struct.gs_state_s*, %struct.gs_screen_halftone_s*, i32, %struct.gs_memory_s*) #1

declare i32 @gs_screen_currentpoint(%struct.gs_screen_enum_s*, %struct.gs_point_s*) #1

declare i32 @gs_screen_next(%struct.gs_screen_enum_s*, double) #1

; Function Attrs: nounwind uwtable
define i32 @gx_ht_alloc_ht_order(%struct.gx_ht_order_s* %porder, i32 %width, i32 %height, i32 %num_levels, i32 %num_bits, i32 %strip_shift, %struct.gx_ht_order_procs_s* %procs, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %porder.addr = alloca %struct.gx_ht_order_s*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %num_levels.addr = alloca i32, align 4
  %num_bits.addr = alloca i32, align 4
  %strip_shift.addr = alloca i32, align 4
  %procs.addr = alloca %struct.gx_ht_order_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gx_ht_order_s* %porder, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store i32 %num_levels, i32* %num_levels.addr, align 4, !tbaa !5
  store i32 %num_bits, i32* %num_bits.addr, align 4, !tbaa !5
  store i32 %strip_shift, i32* %strip_shift.addr, align 4, !tbaa !5
  store %struct.gx_ht_order_procs_s* %procs, %struct.gx_ht_order_procs_s** %procs.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %threshold = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %0, i32 0, i32 17
  store i8* null, i8** %threshold, align 8, !tbaa !100
  %1 = load i32, i32* %width.addr, align 4, !tbaa !5
  %conv = trunc i32 %1 to i16
  %2 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %width1 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %2, i32 0, i32 1
  store i16 %conv, i16* %width1, align 2, !tbaa !101
  %3 = load i32, i32* %height.addr, align 4, !tbaa !5
  %conv2 = trunc i32 %3 to i16
  %4 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %height3 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %4, i32 0, i32 2
  store i16 %conv2, i16* %height3, align 2, !tbaa !102
  %5 = load i32, i32* %width.addr, align 4, !tbaa !5
  %add = add i32 %5, 63
  %shr = lshr i32 %add, 6
  %shl = shl i32 %shr, 3
  %conv4 = trunc i32 %shl to i16
  %6 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %6, i32 0, i32 3
  store i16 %conv4, i16* %raster, align 2, !tbaa !103
  %7 = load i32, i32* %strip_shift.addr, align 4, !tbaa !5
  %conv5 = trunc i32 %7 to i16
  %8 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %shift = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %8, i32 0, i32 4
  store i16 %conv5, i16* %shift, align 2, !tbaa !104
  %9 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %height6 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %9, i32 0, i32 2
  %10 = load i16, i16* %height6, align 2, !tbaa !102
  %11 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %orig_height = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %11, i32 0, i32 5
  store i16 %10, i16* %orig_height, align 2, !tbaa !105
  %12 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %shift7 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %12, i32 0, i32 4
  %13 = load i16, i16* %shift7, align 2, !tbaa !104
  %14 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %orig_shift = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %14, i32 0, i32 6
  store i16 %13, i16* %orig_shift, align 2, !tbaa !106
  %15 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %shift8 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %15, i32 0, i32 4
  %16 = load i16, i16* %shift8, align 2, !tbaa !104
  %conv9 = zext i16 %16 to i32
  %cmp = icmp eq i32 %conv9, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %17 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %height11 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %17, i32 0, i32 2
  %18 = load i16, i16* %height11, align 2, !tbaa !102
  %conv12 = zext i16 %18 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %19 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %width13 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %19, i32 0, i32 1
  %20 = load i16, i16* %width13, align 2, !tbaa !101
  %conv14 = zext i16 %20 to i32
  %21 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %width15 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %21, i32 0, i32 1
  %22 = load i16, i16* %width15, align 2, !tbaa !101
  %conv16 = zext i16 %22 to i32
  %23 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %shift17 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %23, i32 0, i32 4
  %24 = load i16, i16* %shift17, align 2, !tbaa !104
  %conv18 = zext i16 %24 to i32
  %call = call i32 @igcd(i32 %conv16, i32 %conv18) #5
  %div = sdiv i32 %conv14, %call
  %25 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %height19 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %25, i32 0, i32 2
  %26 = load i16, i16* %height19, align 2, !tbaa !102
  %conv20 = zext i16 %26 to i32
  %mul = mul nsw i32 %div, %conv20
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv12, %cond.true ], [ %mul, %cond.false ]
  %27 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %full_height = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %27, i32 0, i32 7
  store i32 %cond, i32* %full_height, align 4, !tbaa !107
  %28 = load i32, i32* %num_levels.addr, align 4, !tbaa !5
  %29 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %num_levels21 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %29, i32 0, i32 8
  store i32 %28, i32* %num_levels21, align 4, !tbaa !108
  %30 = load i32, i32* %num_bits.addr, align 4, !tbaa !5
  %31 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %num_bits22 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %31, i32 0, i32 9
  store i32 %30, i32* %num_bits22, align 4, !tbaa !109
  %32 = load %struct.gx_ht_order_procs_s*, %struct.gx_ht_order_procs_s** %procs.addr, align 8, !tbaa !1
  %33 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %procs23 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %33, i32 0, i32 10
  store %struct.gx_ht_order_procs_s* %32, %struct.gx_ht_order_procs_s** %procs23, align 8, !tbaa !110
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %35 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %data_memory = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %35, i32 0, i32 11
  store %struct.gs_memory_s* %34, %struct.gs_memory_s** %data_memory, align 8, !tbaa !7
  %36 = load i32, i32* %num_levels.addr, align 4, !tbaa !5
  %cmp24 = icmp ugt i32 %36, 0
  br i1 %cmp24, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs26 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %37, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs26, i32 0, i32 10
  %38 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !111
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %40 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %num_levels27 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %40, i32 0, i32 8
  %41 = load i32, i32* %num_levels27, align 4, !tbaa !108
  %call28 = call i8* %38(%struct.gs_memory_s* %39, i32 %41, i32 4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0)) #5
  %42 = bitcast i8* %call28 to i32*
  %43 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %levels = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %43, i32 0, i32 12
  store i32* %42, i32** %levels, align 8, !tbaa !15
  %44 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %levels29 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %44, i32 0, i32 12
  %45 = load i32*, i32** %levels29, align 8, !tbaa !15
  %cmp30 = icmp eq i32* %45, null
  br i1 %cmp30, label %if.then.32, label %if.end

if.then.32:                                       ; preds = %if.then
  store i32 -25, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.34

if.else:                                          ; preds = %cond.end
  %46 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %levels33 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %46, i32 0, i32 12
  store i32* null, i32** %levels33, align 8, !tbaa !15
  br label %if.end.34

if.end.34:                                        ; preds = %if.else, %if.end
  %47 = load i32, i32* %num_bits.addr, align 4, !tbaa !5
  %cmp35 = icmp ugt i32 %47, 0
  br i1 %cmp35, label %if.then.37, label %if.else.51

if.then.37:                                       ; preds = %if.end.34
  %48 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs38 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %48, i32 0, i32 1
  %alloc_byte_array39 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs38, i32 0, i32 10
  %49 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array39, align 8, !tbaa !111
  %50 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %51 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %num_bits40 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %51, i32 0, i32 9
  %52 = load i32, i32* %num_bits40, align 4, !tbaa !109
  %53 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %procs41 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %53, i32 0, i32 10
  %54 = load %struct.gx_ht_order_procs_s*, %struct.gx_ht_order_procs_s** %procs41, align 8, !tbaa !110
  %bit_data_elt_size = getelementptr inbounds %struct.gx_ht_order_procs_s, %struct.gx_ht_order_procs_s* %54, i32 0, i32 0
  %55 = load i32, i32* %bit_data_elt_size, align 4, !tbaa !114
  %call42 = call i8* %49(%struct.gs_memory_s* %50, i32 %52, i32 %55, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0)) #5
  %56 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %bit_data = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %56, i32 0, i32 13
  store i8* %call42, i8** %bit_data, align 8, !tbaa !18
  %57 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %bit_data43 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %57, i32 0, i32 13
  %58 = load i8*, i8** %bit_data43, align 8, !tbaa !18
  %cmp44 = icmp eq i8* %58, null
  br i1 %cmp44, label %if.then.46, label %if.end.50

if.then.46:                                       ; preds = %if.then.37
  %59 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs47 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %59, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs47, i32 0, i32 2
  %60 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !116
  %61 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %62 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %levels48 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %62, i32 0, i32 12
  %63 = load i32*, i32** %levels48, align 8, !tbaa !15
  %64 = bitcast i32* %63 to i8*
  call void %60(%struct.gs_memory_s* %61, i8* %64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0)) #5
  %65 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %levels49 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %65, i32 0, i32 12
  store i32* null, i32** %levels49, align 8, !tbaa !15
  store i32 -25, i32* %retval
  br label %return

if.end.50:                                        ; preds = %if.then.37
  br label %if.end.53

if.else.51:                                       ; preds = %if.end.34
  %66 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %bit_data52 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %66, i32 0, i32 13
  store i8* null, i8** %bit_data52, align 8, !tbaa !18
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.51, %if.end.50
  %67 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %cache = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %67, i32 0, i32 14
  store %struct.gx_ht_cache_s* null, %struct.gx_ht_cache_s** %cache, align 8, !tbaa !19
  %68 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %transfer = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %68, i32 0, i32 15
  store %struct.gx_transfer_map_s* null, %struct.gx_transfer_map_s** %transfer, align 8, !tbaa !20
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.53, %if.then.46, %if.then.32
  %69 = load i32, i32* %retval
  ret i32 %69
}

declare i32 @igcd(i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gx_ht_alloc_order(%struct.gx_ht_order_s* %porder, i32 %width, i32 %height, i32 %strip_shift, i32 %num_levels, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %porder.addr = alloca %struct.gx_ht_order_s*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %strip_shift.addr = alloca i32, align 4
  %num_levels.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %order = alloca %struct.gx_ht_order_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_ht_order_s* %porder, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store i32 %strip_shift, i32* %strip_shift.addr, align 4, !tbaa !5
  store i32 %num_levels, i32* %num_levels.addr, align 4, !tbaa !5
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_ht_order_s* %order to i8*
  call void @llvm.lifetime.start(i64 160, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gx_ht_order_s* %order to i8*
  %4 = bitcast %struct.gx_ht_order_s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 160, i32 8, i1 false), !tbaa.struct !117
  %params = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %order, i32 0, i32 0
  call void @gx_compute_cell_values(%struct.gx_ht_cell_params_s* %params) #5
  %5 = load i32, i32* %width.addr, align 4, !tbaa !5
  %6 = load i32, i32* %height.addr, align 4, !tbaa !5
  %7 = load i32, i32* %num_levels.addr, align 4, !tbaa !5
  %8 = load i32, i32* %width.addr, align 4, !tbaa !5
  %9 = load i32, i32* %height.addr, align 4, !tbaa !5
  %mul = mul i32 %8, %9
  %10 = load i32, i32* %strip_shift.addr, align 4, !tbaa !5
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i32 @gx_ht_alloc_ht_order(%struct.gx_ht_order_s* %order, i32 %5, i32 %6, i32 %7, i32 %mul, i32 %10, %struct.gx_ht_order_procs_s* getelementptr inbounds ([2 x %struct.gx_ht_order_procs_s], [2 x %struct.gx_ht_order_procs_s]* @ht_order_procs_table, i32 0, i64 0), %struct.gs_memory_s* %11) #5
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
  %14 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %15 = bitcast %struct.gx_ht_order_s* %14 to i8*
  %16 = bitcast %struct.gx_ht_order_s* %order to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 160, i32 8, i1 false), !tbaa.struct !117
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %17 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #2
  %18 = bitcast %struct.gx_ht_order_s* %order to i8*
  call void @llvm.lifetime.end(i64 160, i8* %18) #2
  %19 = load i32, i32* %retval
  ret i32 %19
}

declare void @gx_compute_cell_values(%struct.gx_ht_cell_params_s*) #1

; Function Attrs: nounwind uwtable
define i32 @gx_ht_alloc_threshold_order(%struct.gx_ht_order_s* %porder, i32 %width, i32 %height, i32 %num_levels, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %porder.addr = alloca %struct.gx_ht_order_s*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %num_levels.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %order = alloca %struct.gx_ht_order_s, align 8
  %num_bits = alloca i32, align 4
  %procs = alloca %struct.gx_ht_order_procs_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_ht_order_s* %porder, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store i32 %num_levels, i32* %num_levels.addr, align 4, !tbaa !5
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_ht_order_s* %order to i8*
  call void @llvm.lifetime.start(i64 160, i8* %0) #2
  %1 = bitcast i32* %num_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load i32, i32* %width.addr, align 4, !tbaa !5
  %3 = load i32, i32* %height.addr, align 4, !tbaa !5
  %mul = mul i32 %2, %3
  store i32 %mul, i32* %num_bits, align 4, !tbaa !5
  %4 = bitcast %struct.gx_ht_order_procs_s** %procs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load i32, i32* %num_bits, align 4, !tbaa !5
  %cmp = icmp ugt i32 %5, 2000
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %6 = load i32, i32* %num_bits, align 4, !tbaa !5
  %cmp1 = icmp ule i32 %6, 65535
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %7 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  %cond = select i1 %7, %struct.gx_ht_order_procs_s* getelementptr inbounds ([2 x %struct.gx_ht_order_procs_s], [2 x %struct.gx_ht_order_procs_s]* @ht_order_procs_table, i32 0, i64 1), %struct.gx_ht_order_procs_s* getelementptr inbounds ([2 x %struct.gx_ht_order_procs_s], [2 x %struct.gx_ht_order_procs_s]* @ht_order_procs_table, i32 0, i64 0)
  store %struct.gx_ht_order_procs_s* %cond, %struct.gx_ht_order_procs_s** %procs, align 8, !tbaa !1
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %10 = bitcast %struct.gx_ht_order_s* %order to i8*
  %11 = bitcast %struct.gx_ht_order_s* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 160, i32 8, i1 false), !tbaa.struct !117
  %params = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %order, i32 0, i32 0
  call void @gx_compute_cell_values(%struct.gx_ht_cell_params_s* %params) #5
  %12 = load i32, i32* %width.addr, align 4, !tbaa !5
  %13 = load i32, i32* %height.addr, align 4, !tbaa !5
  %14 = load i32, i32* %num_levels.addr, align 4, !tbaa !5
  %15 = load i32, i32* %width.addr, align 4, !tbaa !5
  %16 = load i32, i32* %height.addr, align 4, !tbaa !5
  %mul2 = mul i32 %15, %16
  %17 = load %struct.gx_ht_order_procs_s*, %struct.gx_ht_order_procs_s** %procs, align 8, !tbaa !1
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i32 @gx_ht_alloc_ht_order(%struct.gx_ht_order_s* %order, i32 %12, i32 %13, i32 %14, i32 %mul2, i32 0, %struct.gx_ht_order_procs_s* %17, %struct.gs_memory_s* %18) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %19 = load i32, i32* %code, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %19, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  %20 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.end
  %21 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %22 = bitcast %struct.gx_ht_order_s* %21 to i8*
  %23 = bitcast %struct.gx_ht_order_s* %order to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 160, i32 8, i1 false), !tbaa.struct !117
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %24 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #2
  %25 = bitcast %struct.gx_ht_order_procs_s** %procs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #2
  %26 = bitcast i32* %num_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #2
  %27 = bitcast %struct.gx_ht_order_s* %order to i8*
  call void @llvm.lifetime.end(i64 160, i8* %27) #2
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define i32 @gx_ht_alloc_client_order(%struct.gx_ht_order_s* %porder, i32 %width, i32 %height, i32 %num_levels, i32 %num_bits, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %porder.addr = alloca %struct.gx_ht_order_s*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %num_levels.addr = alloca i32, align 4
  %num_bits.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %order = alloca %struct.gx_ht_order_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_ht_order_s* %porder, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store i32 %num_levels, i32* %num_levels.addr, align 4, !tbaa !5
  store i32 %num_bits, i32* %num_bits.addr, align 4, !tbaa !5
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_ht_order_s* %order to i8*
  call void @llvm.lifetime.start(i64 160, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gx_ht_order_s* %order to i8*
  %4 = bitcast %struct.gx_ht_order_s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 160, i32 8, i1 false), !tbaa.struct !117
  %5 = load i32, i32* %width.addr, align 4, !tbaa !5
  %conv = trunc i32 %5 to i16
  %params = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %order, i32 0, i32 0
  %M = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %params, i32 0, i32 0
  store i16 %conv, i16* %M, align 2, !tbaa !119
  %params1 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %order, i32 0, i32 0
  %N = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %params1, i32 0, i32 1
  store i16 0, i16* %N, align 2, !tbaa !120
  %params2 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %order, i32 0, i32 0
  %R = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %params2, i32 0, i32 2
  store i16 1, i16* %R, align 2, !tbaa !121
  %6 = load i32, i32* %height.addr, align 4, !tbaa !5
  %conv3 = trunc i32 %6 to i16
  %params4 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %order, i32 0, i32 0
  %M1 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %params4, i32 0, i32 3
  store i16 %conv3, i16* %M1, align 2, !tbaa !122
  %params5 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %order, i32 0, i32 0
  %N1 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %params5, i32 0, i32 4
  store i16 0, i16* %N1, align 2, !tbaa !123
  %params6 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %order, i32 0, i32 0
  %R1 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %params6, i32 0, i32 5
  store i16 1, i16* %R1, align 2, !tbaa !124
  %params7 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %order, i32 0, i32 0
  call void @gx_compute_cell_values(%struct.gx_ht_cell_params_s* %params7) #5
  %7 = load i32, i32* %width.addr, align 4, !tbaa !5
  %8 = load i32, i32* %height.addr, align 4, !tbaa !5
  %9 = load i32, i32* %num_levels.addr, align 4, !tbaa !5
  %10 = load i32, i32* %num_bits.addr, align 4, !tbaa !5
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i32 @gx_ht_alloc_ht_order(%struct.gx_ht_order_s* %order, i32 %7, i32 %8, i32 %9, i32 %10, i32 0, %struct.gx_ht_order_procs_s* getelementptr inbounds ([2 x %struct.gx_ht_order_procs_s], [2 x %struct.gx_ht_order_procs_s]* @ht_order_procs_table, i32 0, i64 0), %struct.gs_memory_s* %11) #5
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
  %14 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %15 = bitcast %struct.gx_ht_order_s* %14 to i8*
  %16 = bitcast %struct.gx_ht_order_s* %order to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 160, i32 8, i1 false), !tbaa.struct !117
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %17 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #2
  %18 = bitcast %struct.gx_ht_order_s* %order to i8*
  call void @llvm.lifetime.end(i64 160, i8* %18) #2
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define void @gx_sort_ht_order(%struct.gx_ht_bit_s* %recs, i32 %N) #0 {
entry:
  %recs.addr = alloca %struct.gx_ht_bit_s*, align 8
  %N.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.gx_ht_bit_s* %recs, %struct.gx_ht_bit_s** %recs.addr, align 8, !tbaa !1
  store i32 %N, i32* %N.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !5
  %2 = load i32, i32* %N.addr, align 4, !tbaa !5
  %cmp = icmp ult i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !tbaa !5
  %4 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %recs.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %5, i64 %idxprom
  %offset = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %arrayidx, i32 0, i32 0
  store i32 %3, i32* %offset, align 4, !tbaa !125
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %recs.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gx_ht_bit_s* %7 to i8*
  %9 = load i32, i32* %N.addr, align 4, !tbaa !5
  %conv = zext i32 %9 to i64
  call void @qsort(i8* %8, i64 %conv, i64 8, i32 (i8*, i8*)* @compare_samples) #5
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #2
  ret void
}

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @compare_samples(i8* %p1, i8* %p2) #0 {
entry:
  %p1.addr = alloca i8*, align 8
  %p2.addr = alloca i8*, align 8
  %m1 = alloca i32, align 4
  %m2 = alloca i32, align 4
  store i8* %p1, i8** %p1.addr, align 8, !tbaa !1
  store i8* %p2, i8** %p2.addr, align 8, !tbaa !1
  %0 = bitcast i32* %m1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i8*, i8** %p1.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_ht_bit_s*
  %mask = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %2, i32 0, i32 1
  %3 = load i32, i32* %mask, align 4, !tbaa !127
  store i32 %3, i32* %m1, align 4, !tbaa !5
  %4 = bitcast i32* %m2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load i8*, i8** %p2.addr, align 8, !tbaa !1
  %6 = bitcast i8* %5 to %struct.gx_ht_bit_s*
  %mask1 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %6, i32 0, i32 1
  %7 = load i32, i32* %mask1, align 4, !tbaa !127
  store i32 %7, i32* %m2, align 4, !tbaa !5
  %8 = load i32, i32* %m1, align 4, !tbaa !5
  %9 = load i32, i32* %m2, align 4, !tbaa !5
  %cmp = icmp eq i32 %8, %9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i8*, i8** %p1.addr, align 8, !tbaa !1
  %11 = bitcast i8* %10 to %struct.gx_ht_bit_s*
  %offset = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %11, i32 0, i32 0
  %12 = load i32, i32* %offset, align 4, !tbaa !125
  store i32 %12, i32* %m1, align 4, !tbaa !5
  %13 = load i8*, i8** %p2.addr, align 8, !tbaa !1
  %14 = bitcast i8* %13 to %struct.gx_ht_bit_s*
  %offset2 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %14, i32 0, i32 0
  %15 = load i32, i32* %offset2, align 4, !tbaa !125
  store i32 %15, i32* %m2, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load i32, i32* %m1, align 4, !tbaa !5
  %17 = load i32, i32* %m2, align 4, !tbaa !5
  %cmp3 = icmp ult i32 %16, %17
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %18 = load i32, i32* %m1, align 4, !tbaa !5
  %19 = load i32, i32* %m2, align 4, !tbaa !5
  %cmp4 = icmp ugt i32 %18, %19
  %cond = select i1 %cmp4, i32 1, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond5 = phi i32 [ -1, %cond.true ], [ %cond, %cond.false ]
  %20 = bitcast i32* %m2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #2
  %21 = bitcast i32* %m1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #2
  ret i32 %cond5
}

; Function Attrs: nounwind uwtable
define void @gx_ht_construct_spot_order(%struct.gx_ht_order_s* %porder) #0 {
entry:
  %porder.addr = alloca %struct.gx_ht_order_s*, align 8
  %width = alloca i32, align 4
  %num_levels = alloca i32, align 4
  %strip = alloca i32, align 4
  %bits = alloca %struct.gx_ht_bit_s*, align 8
  %levels = alloca i32*, align 8
  %shift = alloca i32, align 4
  %full_height = alloca i32, align 4
  %num_bits = alloca i32, align 4
  %copies = alloca i32, align 4
  %bp = alloca %struct.gx_ht_bit_s*, align 8
  %i = alloca i32, align 4
  %offset = alloca i32, align 4
  %x = alloca i32, align 4
  %hy = alloca i32, align 4
  %k = alloca i32, align 4
  store %struct.gx_ht_order_s* %porder, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %0 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %width1 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %1, i32 0, i32 1
  %2 = load i16, i16* %width1, align 2, !tbaa !101
  %conv = zext i16 %2 to i32
  store i32 %conv, i32* %width, align 4, !tbaa !5
  %3 = bitcast i32* %num_levels to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %num_levels2 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %4, i32 0, i32 8
  %5 = load i32, i32* %num_levels2, align 4, !tbaa !108
  store i32 %5, i32* %num_levels, align 4, !tbaa !5
  %6 = bitcast i32* %strip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load i32, i32* %num_levels, align 4, !tbaa !5
  %8 = load i32, i32* %width, align 4, !tbaa !5
  %div = udiv i32 %7, %8
  store i32 %div, i32* %strip, align 4, !tbaa !5
  %9 = bitcast %struct.gx_ht_bit_s** %bits to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %bit_data = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %10, i32 0, i32 13
  %11 = load i8*, i8** %bit_data, align 8, !tbaa !18
  %12 = bitcast i8* %11 to %struct.gx_ht_bit_s*
  store %struct.gx_ht_bit_s* %12, %struct.gx_ht_bit_s** %bits, align 8, !tbaa !1
  %13 = bitcast i32** %levels to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  %14 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %levels3 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %14, i32 0, i32 12
  %15 = load i32*, i32** %levels3, align 8, !tbaa !15
  store i32* %15, i32** %levels, align 8, !tbaa !1
  %16 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %orig_shift = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %17, i32 0, i32 6
  %18 = load i16, i16* %orig_shift, align 2, !tbaa !106
  %conv4 = zext i16 %18 to i32
  store i32 %conv4, i32* %shift, align 4, !tbaa !5
  %19 = bitcast i32* %full_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #2
  %20 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %full_height5 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %20, i32 0, i32 7
  %21 = load i32, i32* %full_height5, align 4, !tbaa !107
  store i32 %21, i32* %full_height, align 4, !tbaa !5
  %22 = bitcast i32* %num_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #2
  %23 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %num_bits6 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %23, i32 0, i32 9
  %24 = load i32, i32* %num_bits6, align 4, !tbaa !109
  store i32 %24, i32* %num_bits, align 4, !tbaa !5
  %25 = bitcast i32* %copies to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #2
  %26 = load i32, i32* %num_bits, align 4, !tbaa !5
  %27 = load i32, i32* %width, align 4, !tbaa !5
  %28 = load i32, i32* %strip, align 4, !tbaa !5
  %mul = mul i32 %27, %28
  %div7 = udiv i32 %26, %mul
  store i32 %div7, i32* %copies, align 4, !tbaa !5
  %29 = bitcast %struct.gx_ht_bit_s** %bp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #2
  %30 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %bits, align 8, !tbaa !1
  %31 = load i32, i32* %num_bits, align 4, !tbaa !5
  %idx.ext = zext i32 %31 to i64
  %add.ptr = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %30, i64 %idx.ext
  %add.ptr8 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %add.ptr, i64 -1
  store %struct.gx_ht_bit_s* %add.ptr8, %struct.gx_ht_bit_s** %bp, align 8, !tbaa !1
  %32 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #2
  %33 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %bits, align 8, !tbaa !1
  %34 = load i32, i32* %num_levels, align 4, !tbaa !5
  call void @gx_sort_ht_order(%struct.gx_ht_bit_s* %33, i32 %34) #5
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %35 = load i32, i32* %num_levels, align 4, !tbaa !5
  store i32 %35, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.end, %do.end
  %36 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp ugt i32 %36, 0
  br i1 %cmp, label %for.body, label %for.end.23

for.body:                                         ; preds = %for.cond
  %37 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #2
  %38 = load i32, i32* %i, align 4, !tbaa !5
  %dec = add i32 %38, -1
  store i32 %dec, i32* %i, align 4, !tbaa !5
  %idxprom = zext i32 %dec to i64
  %39 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %bits, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %39, i64 %idxprom
  %offset10 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %arrayidx, i32 0, i32 0
  %40 = load i32, i32* %offset10, align 4, !tbaa !125
  store i32 %40, i32* %offset, align 4, !tbaa !5
  %41 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #2
  %42 = load i32, i32* %offset, align 4, !tbaa !5
  %43 = load i32, i32* %width, align 4, !tbaa !5
  %rem = urem i32 %42, %43
  store i32 %rem, i32* %x, align 4, !tbaa !5
  %44 = bitcast i32* %hy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #2
  %45 = load i32, i32* %offset, align 4, !tbaa !5
  %46 = load i32, i32* %x, align 4, !tbaa !5
  %sub = sub i32 %45, %46
  store i32 %sub, i32* %hy, align 4, !tbaa !5
  %47 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #2
  %48 = load i32, i32* %i, align 4, !tbaa !5
  %49 = load i32, i32* %copies, align 4, !tbaa !5
  %mul11 = mul i32 %48, %49
  %50 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom12 = zext i32 %50 to i64
  %51 = load i32*, i32** %levels, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i32, i32* %51, i64 %idxprom12
  store i32 %mul11, i32* %arrayidx13, align 4, !tbaa !5
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc, %for.body
  %52 = load i32, i32* %k, align 4, !tbaa !5
  %53 = load i32, i32* %copies, align 4, !tbaa !5
  %cmp15 = icmp ult i32 %52, %53
  br i1 %cmp15, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %for.cond.14
  %54 = load i32, i32* %hy, align 4, !tbaa !5
  %55 = load i32, i32* %x, align 4, !tbaa !5
  %add = add i32 %54, %55
  %56 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %bp, align 8, !tbaa !1
  %offset18 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %56, i32 0, i32 0
  store i32 %add, i32* %offset18, align 4, !tbaa !125
  br label %for.inc

for.inc:                                          ; preds = %for.body.17
  %57 = load i32, i32* %k, align 4, !tbaa !5
  %inc = add i32 %57, 1
  store i32 %inc, i32* %k, align 4, !tbaa !5
  %58 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %bp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %58, i32 -1
  store %struct.gx_ht_bit_s* %incdec.ptr, %struct.gx_ht_bit_s** %bp, align 8, !tbaa !1
  %59 = load i32, i32* %num_levels, align 4, !tbaa !5
  %60 = load i32, i32* %hy, align 4, !tbaa !5
  %add19 = add i32 %60, %59
  store i32 %add19, i32* %hy, align 4, !tbaa !5
  %61 = load i32, i32* %x, align 4, !tbaa !5
  %62 = load i32, i32* %width, align 4, !tbaa !5
  %add20 = add i32 %61, %62
  %63 = load i32, i32* %shift, align 4, !tbaa !5
  %sub21 = sub i32 %add20, %63
  %64 = load i32, i32* %width, align 4, !tbaa !5
  %rem22 = urem i32 %sub21, %64
  store i32 %rem22, i32* %x, align 4, !tbaa !5
  br label %for.cond.14

for.end:                                          ; preds = %for.cond.14
  %65 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #2
  %66 = bitcast i32* %hy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #2
  %67 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #2
  %68 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #2
  br label %for.cond

for.end.23:                                       ; preds = %for.cond
  %69 = load i32, i32* %num_bits, align 4, !tbaa !5
  %70 = load i32, i32* %width, align 4, !tbaa !5
  %71 = load i32, i32* %full_height, align 4, !tbaa !5
  %mul24 = mul i32 %70, %71
  %cmp25 = icmp eq i32 %69, %mul24
  br i1 %cmp25, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.23
  %72 = load i32, i32* %full_height, align 4, !tbaa !5
  %conv27 = trunc i32 %72 to i16
  %73 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %73, i32 0, i32 2
  store i16 %conv27, i16* %height, align 2, !tbaa !102
  %74 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %shift28 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %74, i32 0, i32 4
  store i16 0, i16* %shift28, align 2, !tbaa !104
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.23
  %75 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  call void @gx_ht_construct_bits(%struct.gx_ht_order_s* %75) #5
  %76 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #2
  %77 = bitcast %struct.gx_ht_bit_s** %bp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #2
  %78 = bitcast i32* %copies to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #2
  %79 = bitcast i32* %num_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #2
  %80 = bitcast i32* %full_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #2
  %81 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #2
  %82 = bitcast i32** %levels to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #2
  %83 = bitcast %struct.gx_ht_bit_s** %bits to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #2
  %84 = bitcast i32* %strip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #2
  %85 = bitcast i32* %num_levels to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #2
  %86 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #2
  ret void
}

; Function Attrs: nounwind uwtable
define void @gx_ht_construct_bits(%struct.gx_ht_order_s* %porder) #0 {
entry:
  %porder.addr = alloca %struct.gx_ht_order_s*, align 8
  %i = alloca i32, align 4
  %phb = alloca %struct.gx_ht_bit_s*, align 8
  store %struct.gx_ht_order_s* %porder, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast %struct.gx_ht_bit_s** %phb to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  store i32 0, i32* %i, align 4, !tbaa !5
  %2 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %bit_data = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %2, i32 0, i32 13
  %3 = load i8*, i8** %bit_data, align 8, !tbaa !18
  %4 = bitcast i8* %3 to %struct.gx_ht_bit_s*
  store %struct.gx_ht_bit_s* %4, %struct.gx_ht_bit_s** %phb, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !tbaa !5
  %6 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %num_bits = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %6, i32 0, i32 9
  %7 = load i32, i32* %num_bits, align 4, !tbaa !109
  %cmp = icmp ult i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %phb, align 8, !tbaa !1
  %9 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %9, i32 0, i32 1
  %10 = load i16, i16* %width, align 2, !tbaa !101
  %conv = zext i16 %10 to i32
  %11 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %phb, align 8, !tbaa !1
  %offset = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %11, i32 0, i32 0
  %12 = load i32, i32* %offset, align 4, !tbaa !125
  call void @gx_ht_construct_bit(%struct.gx_ht_bit_s* %8, i32 %conv, i32 %12) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %13, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  %14 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %phb, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %14, i32 1
  store %struct.gx_ht_bit_s* %incdec.ptr, %struct.gx_ht_bit_s** %phb, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = bitcast %struct.gx_ht_bit_s** %phb to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #2
  %16 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #2
  ret void
}

; Function Attrs: nounwind uwtable
define void @gx_ht_construct_bit(%struct.gx_ht_bit_s* %bit, i32 %width, i32 %bit_num) #0 {
entry:
  %bit.addr = alloca %struct.gx_ht_bit_s*, align 8
  %width.addr = alloca i32, align 4
  %bit_num.addr = alloca i32, align 4
  %padding = alloca i32, align 4
  %pix = alloca i32, align 4
  %mask = alloca i32, align 4
  %pb = alloca i8*, align 8
  store %struct.gx_ht_bit_s* %bit, %struct.gx_ht_bit_s** %bit.addr, align 8, !tbaa !1
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %bit_num, i32* %bit_num.addr, align 4, !tbaa !5
  %0 = bitcast i32* %padding to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %width.addr, align 4, !tbaa !5
  %add = add nsw i32 %1, 63
  %shr = ashr i32 %add, 6
  %shl = shl i32 %shr, 3
  %mul = mul i32 %shl, 8
  %2 = load i32, i32* %width.addr, align 4, !tbaa !5
  %sub = sub i32 %mul, %2
  store i32 %sub, i32* %padding, align 4, !tbaa !5
  %3 = bitcast i32* %pix to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load i32, i32* %bit_num.addr, align 4, !tbaa !5
  store i32 %4, i32* %pix, align 4, !tbaa !5
  %5 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i8** %pb to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load i32, i32* %pix, align 4, !tbaa !5
  %8 = load i32, i32* %width.addr, align 4, !tbaa !5
  %div = sdiv i32 %7, %8
  %9 = load i32, i32* %padding, align 4, !tbaa !5
  %mul1 = mul i32 %div, %9
  %10 = load i32, i32* %pix, align 4, !tbaa !5
  %add2 = add i32 %10, %mul1
  store i32 %add2, i32* %pix, align 4, !tbaa !5
  %11 = load i32, i32* %pix, align 4, !tbaa !5
  %shr3 = ashr i32 %11, 3
  %and = and i32 %shr3, -4
  %12 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %bit.addr, align 8, !tbaa !1
  %offset = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %12, i32 0, i32 0
  store i32 %and, i32* %offset, align 4, !tbaa !125
  %13 = load i32, i32* %pix, align 4, !tbaa !5
  %neg = xor i32 %13, -1
  %conv = sext i32 %neg to i64
  %and4 = and i64 %conv, 31
  %sh_prom = trunc i64 %and4 to i32
  %shl5 = shl i32 1, %sh_prom
  store i32 %shl5, i32* %mask, align 4, !tbaa !5
  %14 = load i32, i32* %width.addr, align 4, !tbaa !5
  %conv6 = sext i32 %14 to i64
  %sub7 = sub i64 32, %conv6
  %conv8 = trunc i64 %sub7 to i32
  store i32 %conv8, i32* %pix, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %15 = load i32, i32* %width.addr, align 4, !tbaa !5
  %16 = load i32, i32* %pix, align 4, !tbaa !5
  %sub9 = sub nsw i32 %16, %15
  store i32 %sub9, i32* %pix, align 4, !tbaa !5
  %cmp = icmp sge i32 %sub9, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load i32, i32* %mask, align 4, !tbaa !5
  %18 = load i32, i32* %width.addr, align 4, !tbaa !5
  %shr11 = lshr i32 %17, %18
  %19 = load i32, i32* %mask, align 4, !tbaa !5
  %or = or i32 %19, %shr11
  store i32 %or, i32* %mask, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %20 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %bit.addr, align 8, !tbaa !1
  %mask12 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %20, i32 0, i32 1
  store i32 0, i32* %mask12, align 4, !tbaa !127
  %21 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %bit.addr, align 8, !tbaa !1
  %mask13 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %21, i32 0, i32 1
  %22 = bitcast i32* %mask13 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 3
  store i8* %add.ptr, i8** %pb, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %23 = load i32, i32* %mask, align 4, !tbaa !5
  %cmp14 = icmp ne i32 %23, 0
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i32, i32* %mask, align 4, !tbaa !5
  %conv16 = trunc i32 %24 to i8
  %25 = load i8*, i8** %pb, align 8, !tbaa !1
  store i8 %conv16, i8* %25, align 1, !tbaa !85
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %mask, align 4, !tbaa !5
  %shr17 = lshr i32 %26, 8
  store i32 %shr17, i32* %mask, align 4, !tbaa !5
  %27 = load i8*, i8** %pb, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %27, i32 -1
  store i8* %incdec.ptr, i8** %pb, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = bitcast i8** %pb to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #2
  %29 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #2
  %30 = bitcast i32* %pix to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #2
  %31 = bitcast i32* %padding to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #2
  ret void
}

; Function Attrs: nounwind uwtable
define void @gx_ht_order_release(%struct.gx_ht_order_s* %porder, %struct.gs_memory_s* %mem, i32 %free_cache) #0 {
entry:
  %porder.addr = alloca %struct.gx_ht_order_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %free_cache.addr = alloca i32, align 4
  store %struct.gx_ht_order_s* %porder, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %free_cache, i32* %free_cache.addr, align 4, !tbaa !5
  %0 = load i32, i32* %free_cache.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %1 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %cache = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %1, i32 0, i32 14
  %2 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %cache, align 8, !tbaa !19
  %cmp = icmp ne %struct.gx_ht_cache_s* %2, null
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %4 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %cache2 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %4, i32 0, i32 14
  %5 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %cache2, align 8, !tbaa !19
  call void @gx_ht_free_cache(%struct.gs_memory_s* %3, %struct.gx_ht_cache_s* %5) #5
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %6 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %cache4 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %6, i32 0, i32 14
  store %struct.gx_ht_cache_s* null, %struct.gx_ht_cache_s** %cache4, align 8, !tbaa !19
  br label %do.body

do.body:                                          ; preds = %if.end.3
  %7 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %transfer = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %7, i32 0, i32 15
  %8 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %transfer, align 8, !tbaa !20
  %tobool5 = icmp ne %struct.gx_transfer_map_s* %8, null
  br i1 %tobool5, label %if.then.6, label %if.end.29

if.then.6:                                        ; preds = %do.body
  br label %do.body.7

do.body.7:                                        ; preds = %if.then.6
  br label %do.body.8

do.body.8:                                        ; preds = %do.body.7
  br label %do.end

do.end:                                           ; preds = %do.body.8
  %9 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %transfer9 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %9, i32 0, i32 15
  %10 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %transfer9, align 8, !tbaa !20
  %rc = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %10, i32 0, i32 0
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %11 = load i64, i64* %ref_count, align 8, !tbaa !128
  %add = add nsw i64 %11, -1
  store i64 %add, i64* %ref_count, align 8, !tbaa !128
  br label %do.end.10

do.end.10:                                        ; preds = %do.end
  %12 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %transfer11 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %12, i32 0, i32 15
  %13 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %transfer11, align 8, !tbaa !20
  %rc12 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %13, i32 0, i32 0
  %ref_count13 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc12, i32 0, i32 0
  %14 = load i64, i64* %ref_count13, align 8, !tbaa !128
  %tobool14 = icmp ne i64 %14, 0
  br i1 %tobool14, label %if.else, label %if.then.15

if.then.15:                                       ; preds = %do.end.10
  br label %do.body.16

do.body.16:                                       ; preds = %if.then.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.body.16
  br label %do.end.18

do.end.18:                                        ; preds = %do.body.17
  %15 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %transfer19 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %15, i32 0, i32 15
  %16 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %transfer19, align 8, !tbaa !20
  %rc20 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %16, i32 0, i32 0
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc20, i32 0, i32 2
  %17 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !130
  %18 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %transfer21 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %18, i32 0, i32 15
  %19 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %transfer21, align 8, !tbaa !20
  %rc22 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %19, i32 0, i32 0
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc22, i32 0, i32 1
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !131
  %21 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %transfer23 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %21, i32 0, i32 15
  %22 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %transfer23, align 8, !tbaa !20
  %23 = bitcast %struct.gx_transfer_map_s* %22 to i8*
  call void %17(%struct.gs_memory_s* %20, i8* %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0)) #5
  br label %do.end.24

do.end.24:                                        ; preds = %do.end.18
  %24 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %transfer25 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %24, i32 0, i32 15
  store %struct.gx_transfer_map_s* null, %struct.gx_transfer_map_s** %transfer25, align 8, !tbaa !20
  br label %if.end.28

if.else:                                          ; preds = %do.end.10
  br label %do.body.26

do.body.26:                                       ; preds = %if.else
  br label %do.end.27

do.end.27:                                        ; preds = %do.body.26
  br label %if.end.28

if.end.28:                                        ; preds = %do.end.27, %do.end.24
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %do.body
  br label %do.end.30

do.end.30:                                        ; preds = %if.end.29
  %25 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %transfer31 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %25, i32 0, i32 15
  store %struct.gx_transfer_map_s* null, %struct.gx_transfer_map_s** %transfer31, align 8, !tbaa !20
  %26 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %data_memory = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %26, i32 0, i32 11
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_memory, align 8, !tbaa !7
  %cmp32 = icmp ne %struct.gs_memory_s* %27, null
  br i1 %cmp32, label %if.then.33, label %if.end.40

if.then.33:                                       ; preds = %do.end.30
  %28 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %data_memory34 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %28, i32 0, i32 11
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_memory34, align 8, !tbaa !7
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %29, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %30 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !116
  %31 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %data_memory35 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %31, i32 0, i32 11
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_memory35, align 8, !tbaa !7
  %33 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %bit_data = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %33, i32 0, i32 13
  %34 = load i8*, i8** %bit_data, align 8, !tbaa !18
  call void %30(%struct.gs_memory_s* %32, i8* %34, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i32 0, i32 0)) #5
  %35 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %data_memory36 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %35, i32 0, i32 11
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_memory36, align 8, !tbaa !7
  %procs37 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %36, i32 0, i32 1
  %free_object38 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs37, i32 0, i32 2
  %37 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object38, align 8, !tbaa !116
  %38 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %data_memory39 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %38, i32 0, i32 11
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_memory39, align 8, !tbaa !7
  %40 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %levels = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %40, i32 0, i32 12
  %41 = load i32*, i32** %levels, align 8, !tbaa !15
  %42 = bitcast i32* %41 to i8*
  call void %37(%struct.gs_memory_s* %39, i8* %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0)) #5
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.33, %do.end.30
  %43 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %threshold = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %43, i32 0, i32 17
  %44 = load i8*, i8** %threshold, align 8, !tbaa !100
  %cmp41 = icmp ne i8* %44, null
  br i1 %cmp41, label %if.then.42, label %if.end.49

if.then.42:                                       ; preds = %if.end.40
  %45 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %data_memory43 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %45, i32 0, i32 11
  %46 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_memory43, align 8, !tbaa !7
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %46, i32 0, i32 3
  %47 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !132
  %procs44 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %47, i32 0, i32 1
  %free_object45 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs44, i32 0, i32 2
  %48 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object45, align 8, !tbaa !116
  %49 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %data_memory46 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %49, i32 0, i32 11
  %50 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_memory46, align 8, !tbaa !7
  %non_gc_memory47 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %50, i32 0, i32 3
  %51 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory47, align 8, !tbaa !132
  %52 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %threshold48 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %52, i32 0, i32 17
  %53 = load i8*, i8** %threshold48, align 8, !tbaa !100
  call void %48(%struct.gs_memory_s* %51, i8* %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i32 0, i32 0)) #5
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.42, %if.end.40
  %54 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %levels50 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %54, i32 0, i32 12
  store i32* null, i32** %levels50, align 8, !tbaa !15
  %55 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %bit_data51 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %55, i32 0, i32 13
  store i8* null, i8** %bit_data51, align 8, !tbaa !18
  ret void
}

declare void @gx_ht_free_cache(%struct.gs_memory_s*, %struct.gx_ht_cache_s*) #1

; Function Attrs: nounwind uwtable
define void @gx_device_halftone_release(%struct.gx_device_halftone_s* %pdht, %struct.gs_memory_s* %mem) #0 {
entry:
  %pdht.addr = alloca %struct.gx_device_halftone_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %i = alloca i32, align 4
  store %struct.gx_device_halftone_s* %pdht, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %components = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %0, i32 0, i32 4
  %1 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components, align 8, !tbaa !81
  %tobool = icmp ne %struct.gx_ht_order_component_s* %1, null
  br i1 %tobool, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !tbaa !5
  %4 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %num_comp = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %4, i32 0, i32 5
  %5 = load i32, i32* %num_comp, align 4, !tbaa !133
  %cmp = icmp ult i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %components1 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %7, i32 0, i32 4
  %8 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components1, align 8, !tbaa !81
  %arrayidx = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %8, i64 %idxprom
  %corder = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx, i32 0, i32 0
  %bit_data = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %corder, i32 0, i32 13
  %9 = load i8*, i8** %bit_data, align 8, !tbaa !134
  %10 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %order = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %10, i32 0, i32 0
  %bit_data2 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %order, i32 0, i32 13
  %11 = load i8*, i8** %bit_data2, align 8, !tbaa !135
  %cmp3 = icmp ne i8* %9, %11
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %12 to i64
  %13 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %components6 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %13, i32 0, i32 4
  %14 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components6, align 8, !tbaa !81
  %arrayidx7 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %14, i64 %idxprom5
  %corder8 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx7, i32 0, i32 0
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @gx_ht_order_release(%struct.gx_ht_order_s* %corder8, %struct.gs_memory_s* %15, i32 1) #5
  br label %if.end

if.end:                                           ; preds = %if.then.4, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %17, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %18 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !116
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %20 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %components9 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %20, i32 0, i32 4
  %21 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components9, align 8, !tbaa !81
  %22 = bitcast %struct.gx_ht_order_component_s* %21 to i8*
  call void %18(%struct.gs_memory_s* %19, i8* %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i32 0, i32 0)) #5
  %23 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %components10 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %23, i32 0, i32 4
  store %struct.gx_ht_order_component_s* null, %struct.gx_ht_order_component_s** %components10, align 8, !tbaa !81
  %24 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %num_comp11 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %24, i32 0, i32 5
  store i32 0, i32* %num_comp11, align 4, !tbaa !133
  %25 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  br label %if.end.12

if.end.12:                                        ; preds = %for.end, %entry
  %26 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %order13 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %26, i32 0, i32 0
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @gx_ht_order_release(%struct.gx_ht_order_s* %order13, %struct.gs_memory_s* %27, i32 0) #5
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_color_name_component_number(%struct.gx_device_s* %dev, i8* %pname, i32 %name_size, i32 %halftonetype) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pname.addr = alloca i8*, align 8
  %name_size.addr = alloca i32, align 4
  %halftonetype.addr = alloca i32, align 4
  %num_colorant = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %pname, i8** %pname.addr, align 8, !tbaa !1
  store i32 %name_size, i32* %name_size.addr, align 4, !tbaa !5
  store i32 %halftonetype, i32* %halftonetype.addr, align 4, !tbaa !5
  %0 = bitcast i32* %num_colorant to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 42
  %get_color_comp_index = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 50
  %2 = load i32 (%struct.gx_device_s*, i8*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32)** %get_color_comp_index, align 8, !tbaa !136
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %5 = load i32, i32* %name_size.addr, align 4, !tbaa !5
  %call = call i32 %2(%struct.gx_device_s* %3, i8* %4, i32 %5, i32 0) #5
  store i32 %call, i32* %num_colorant, align 4, !tbaa !5
  %6 = load i32, i32* %num_colorant, align 4, !tbaa !5
  %cmp = icmp sge i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %num_colorant, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %7, 64
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i32 -1, i32* %num_colorant, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %8 = load i32, i32* %num_colorant, align 4, !tbaa !5
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %entry
  %call4 = call i64 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0)) #6
  %9 = load i32, i32* %name_size.addr, align 4, !tbaa !5
  %conv = sext i32 %9 to i64
  %cmp5 = icmp eq i64 %call4, %conv
  br i1 %cmp5, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %if.end.3
  %10 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %11 = load i32, i32* %name_size.addr, align 4, !tbaa !5
  %conv7 = sext i32 %11 to i64
  %call8 = call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i64 %conv7) #6
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %land.lhs.true
  store i32 64, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %land.lhs.true, %if.end.3
  %12 = load i32, i32* %halftonetype.addr, align 4, !tbaa !5
  %cmp13 = icmp eq i32 %12, 2
  br i1 %cmp13, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.12
  %13 = load i32, i32* %halftonetype.addr, align 4, !tbaa !5
  %cmp15 = icmp eq i32 %13, 7
  br i1 %cmp15, label %if.then.17, label %if.end.88

if.then.17:                                       ; preds = %lor.lhs.false, %if.end.12
  %call18 = call i64 @strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0)) #6
  %14 = load i32, i32* %name_size.addr, align 4, !tbaa !5
  %conv19 = sext i32 %14 to i64
  %cmp20 = icmp eq i64 %call18, %conv19
  br i1 %cmp20, label %land.lhs.true.22, label %if.else

land.lhs.true.22:                                 ; preds = %if.then.17
  %15 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %16 = load i32, i32* %name_size.addr, align 4, !tbaa !5
  %conv23 = sext i32 %16 to i64
  %call24 = call i32 @strncmp(i8* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i64 %conv23) #6
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %land.lhs.true.22
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs28 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 42
  %get_color_comp_index29 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs28, i32 0, i32 50
  %18 = load i32 (%struct.gx_device_s*, i8*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32)** %get_color_comp_index29, align 8, !tbaa !136
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call30 = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0)) #6
  %conv31 = trunc i64 %call30 to i32
  %call32 = call i32 %18(%struct.gx_device_s* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32 %conv31, i32 0) #5
  store i32 %call32, i32* %num_colorant, align 4, !tbaa !5
  br label %if.end.83

if.else:                                          ; preds = %land.lhs.true.22, %if.then.17
  %call33 = call i64 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0)) #6
  %20 = load i32, i32* %name_size.addr, align 4, !tbaa !5
  %conv34 = sext i32 %20 to i64
  %cmp35 = icmp eq i64 %call33, %conv34
  br i1 %cmp35, label %land.lhs.true.37, label %if.else.48

land.lhs.true.37:                                 ; preds = %if.else
  %21 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %22 = load i32, i32* %name_size.addr, align 4, !tbaa !5
  %conv38 = sext i32 %22 to i64
  %call39 = call i32 @strncmp(i8* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i64 %conv38) #6
  %cmp40 = icmp eq i32 %call39, 0
  br i1 %cmp40, label %if.then.42, label %if.else.48

if.then.42:                                       ; preds = %land.lhs.true.37
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs43 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %23, i32 0, i32 42
  %get_color_comp_index44 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs43, i32 0, i32 50
  %24 = load i32 (%struct.gx_device_s*, i8*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32)** %get_color_comp_index44, align 8, !tbaa !136
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call45 = call i64 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0)) #6
  %conv46 = trunc i64 %call45 to i32
  %call47 = call i32 %24(%struct.gx_device_s* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i32 %conv46, i32 0) #5
  store i32 %call47, i32* %num_colorant, align 4, !tbaa !5
  br label %if.end.82

if.else.48:                                       ; preds = %land.lhs.true.37, %if.else
  %call49 = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0)) #6
  %26 = load i32, i32* %name_size.addr, align 4, !tbaa !5
  %conv50 = sext i32 %26 to i64
  %cmp51 = icmp eq i64 %call49, %conv50
  br i1 %cmp51, label %land.lhs.true.53, label %if.else.64

land.lhs.true.53:                                 ; preds = %if.else.48
  %27 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %28 = load i32, i32* %name_size.addr, align 4, !tbaa !5
  %conv54 = sext i32 %28 to i64
  %call55 = call i32 @strncmp(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i64 %conv54) #6
  %cmp56 = icmp eq i32 %call55, 0
  br i1 %cmp56, label %if.then.58, label %if.else.64

if.then.58:                                       ; preds = %land.lhs.true.53
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs59 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %29, i32 0, i32 42
  %get_color_comp_index60 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs59, i32 0, i32 50
  %30 = load i32 (%struct.gx_device_s*, i8*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32)** %get_color_comp_index60, align 8, !tbaa !136
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call61 = call i64 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0)) #6
  %conv62 = trunc i64 %call61 to i32
  %call63 = call i32 %30(%struct.gx_device_s* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i32 %conv62, i32 0) #5
  store i32 %call63, i32* %num_colorant, align 4, !tbaa !5
  br label %if.end.81

if.else.64:                                       ; preds = %land.lhs.true.53, %if.else.48
  %call65 = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0)) #6
  %32 = load i32, i32* %name_size.addr, align 4, !tbaa !5
  %conv66 = sext i32 %32 to i64
  %cmp67 = icmp eq i64 %call65, %conv66
  br i1 %cmp67, label %land.lhs.true.69, label %if.end.80

land.lhs.true.69:                                 ; preds = %if.else.64
  %33 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %34 = load i32, i32* %name_size.addr, align 4, !tbaa !5
  %conv70 = sext i32 %34 to i64
  %call71 = call i32 @strncmp(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i64 %conv70) #6
  %cmp72 = icmp eq i32 %call71, 0
  br i1 %cmp72, label %if.then.74, label %if.end.80

if.then.74:                                       ; preds = %land.lhs.true.69
  %35 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs75 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %35, i32 0, i32 42
  %get_color_comp_index76 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs75, i32 0, i32 50
  %36 = load i32 (%struct.gx_device_s*, i8*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32)** %get_color_comp_index76, align 8, !tbaa !136
  %37 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call77 = call i64 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0)) #6
  %conv78 = trunc i64 %call77 to i32
  %call79 = call i32 %36(%struct.gx_device_s* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 %conv78, i32 0) #5
  store i32 %call79, i32* %num_colorant, align 4, !tbaa !5
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.74, %land.lhs.true.69, %if.else.64
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.then.58
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.then.42
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.then.27
  %38 = load i32, i32* %num_colorant, align 4, !tbaa !5
  %cmp84 = icmp eq i32 %38, 64
  br i1 %cmp84, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %if.end.83
  store i32 -1, i32* %num_colorant, align 4, !tbaa !5
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.86, %if.end.83
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %lor.lhs.false
  %39 = load i32, i32* %num_colorant, align 4, !tbaa !5
  store i32 %39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.88, %if.then.11, %if.end
  %40 = bitcast i32* %num_colorant to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #2
  %41 = load i32, i32* %retval
  ret i32 %41
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define i32 @gs_cname_to_colorant_number(%struct.gs_state_s* %pgs, i8* %pname, i32 %name_size, i32 %halftonetype) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pname.addr = alloca i8*, align 8
  %name_size.addr = alloca i32, align 4
  %halftonetype.addr = alloca i32, align 4
  %dev = alloca %struct.gx_device_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store i8* %pname, i8** %pname.addr, align 8, !tbaa !1
  store i32 %name_size, i32* %name_size.addr, align 4, !tbaa !5
  store i32 %halftonetype, i32* %halftonetype.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 78
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !69
  store %struct.gx_device_s* %2, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %4 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %5 = load i32, i32* %name_size.addr, align 4, !tbaa !5
  %6 = load i32, i32* %halftonetype.addr, align 4, !tbaa !5
  %call = call i32 @gs_color_name_component_number(%struct.gx_device_s* %3, i8* %4, i32 %5, i32 %6) #5
  %7 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gx_imager_dev_ht_install(%struct.gs_imager_state_s* %pis, %struct.gx_device_halftone_s* %pdht, i32 %type, %struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pdht.addr = alloca %struct.gx_device_halftone_s*, align 8
  %type.addr = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %dht = alloca %struct.gx_device_halftone_s, align 8
  %num_comps = alloca i32, align 4
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %used_default = alloca i32, align 4
  %lcm_width = alloca i32, align 4
  %lcm_height = alloca i32, align 4
  %mem_diff = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %dw = alloca i32, align 4
  %dh = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %input_ncomps = alloca i32, align 4
  %p_s_comp = alloca %struct.gx_ht_order_component_s*, align 8
  %p_s_order = alloca %struct.gx_ht_order_s*, align 8
  %comp_num = alloca i32, align 4
  %p_d_order = alloca %struct.gx_ht_order_s*, align 8
  %porder = alloca %struct.gx_ht_order_s*, align 8
  %tile_bytes = alloca i32, align 4
  %num_tiles = alloca i32, align 4
  %slots_wanted = alloca i32, align 4
  %rep_raster = alloca i32, align 4
  %rep_count = alloca i32, align 4
  %pcache = alloca %struct.gx_ht_cache_s*, align 8
  %pisdht = alloca %struct.gx_device_halftone_s*, align 8
  %tmp_rc = alloca %struct.rc_header_s, align 8
  %new = alloca %struct.gx_device_halftone_s*, align 8
  %input_ncomps254 = alloca i32, align 4
  %p_s_comp260 = alloca %struct.gx_ht_order_component_s*, align 8
  %p_s_order264 = alloca %struct.gx_ht_order_s*, align 8
  %comp_num266 = alloca i32, align 4
  %pcomp = alloca %struct.gx_ht_order_component_s*, align 8
  %porder306 = alloca %struct.gx_ht_order_s*, align 8
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_halftone_s* %pdht, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  store i32 %type, i32* %type.addr, align 4, !tbaa !85
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_halftone_s* %dht to i8*
  call void @llvm.lifetime.start(i64 224, i8* %0) #2
  %1 = bitcast i32* %num_comps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %num_dev_comp = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %2, i32 0, i32 6
  %3 = load i32, i32* %num_dev_comp, align 4, !tbaa !137
  store i32 %3, i32* %num_comps, align 4, !tbaa !5
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  store i32 0, i32* %code, align 4, !tbaa !5
  %6 = bitcast i32* %used_default to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  store i32 0, i32* %used_default, align 4, !tbaa !5
  %7 = bitcast i32* %lcm_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  store i32 1, i32* %lcm_width, align 4, !tbaa !5
  %8 = bitcast i32* %lcm_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  store i32 1, i32* %lcm_height, align 4, !tbaa !5
  %9 = bitcast i32* %mem_diff to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %10, i32 0, i32 1
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 1
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !138
  %12 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %12, i32 0, i32 1
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !139
  %cmp = icmp ne %struct.gs_memory_s* %11, %13
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %mem_diff, align 4, !tbaa !5
  %14 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = bitcast i32* %dw to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = bitcast i32* %dh to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %order = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %dht, i32 0, i32 0
  %18 = bitcast %struct.gx_ht_order_s* %order to i8*
  %call = call i8* @memset(i8* %18, i32 0, i64 160) #7
  %19 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %19, i32 0, i32 1
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory2, align 8, !tbaa !139
  %call3 = call i64 @gs_next_ids(%struct.gs_memory_s* %20, i32 1) #5
  %id = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %dht, i32 0, i32 2
  store i64 %call3, i64* %id, align 8, !tbaa !141
  %21 = load i32, i32* %type.addr, align 4, !tbaa !85
  %type4 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %dht, i32 0, i32 3
  store i32 %21, i32* %type4, align 4, !tbaa !142
  %22 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory5 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %22, i32 0, i32 1
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory5, align 8, !tbaa !139
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %23, i32 0, i32 1
  %alloc_struct_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 12
  %24 = load i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct_array, align 8, !tbaa !143
  %25 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory6 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %25, i32 0, i32 1
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory6, align 8, !tbaa !139
  %27 = load i32, i32* %num_comps, align 4, !tbaa !5
  %call7 = call i8* %24(%struct.gs_memory_s* %26, i32 %27, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_ht_order_component_element to %struct.gs_memory_struct_type_s*), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i32 0, i32 0)) #5
  %28 = bitcast i8* %call7 to %struct.gx_ht_order_component_s*
  %components = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %dht, i32 0, i32 4
  store %struct.gx_ht_order_component_s* %28, %struct.gx_ht_order_component_s** %components, align 8, !tbaa !81
  %components8 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %dht, i32 0, i32 4
  %29 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components8, align 8, !tbaa !81
  %cmp9 = icmp eq %struct.gx_ht_order_component_s* %29, null
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.321

if.end:                                           ; preds = %entry
  %30 = load i32, i32* %num_comps, align 4, !tbaa !5
  %num_dev_comp11 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %dht, i32 0, i32 6
  store i32 %30, i32* %num_dev_comp11, align 4, !tbaa !137
  %num_comp = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %dht, i32 0, i32 5
  store i32 %30, i32* %num_comp, align 4, !tbaa !133
  %components12 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %dht, i32 0, i32 4
  %31 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components12, align 8, !tbaa !81
  %32 = bitcast %struct.gx_ht_order_component_s* %31 to i8*
  %33 = load i32, i32* %num_comps, align 4, !tbaa !5
  %conv13 = sext i32 %33 to i64
  %mul = mul i64 %conv13, 168
  %call14 = call i8* @memset(i8* %32, i32 0, i64 %mul) #7
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %34 = load i32, i32* %i, align 4, !tbaa !5
  %35 = load i32, i32* %num_comps, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %34, %35
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %36 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %36 to i64
  %components17 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %dht, i32 0, i32 4
  %37 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components17, align 8, !tbaa !81
  %arrayidx = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %37, i64 %idxprom
  %comp_number = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx, i32 0, i32 1
  store i32 -1, i32* %comp_number, align 4, !tbaa !144
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %38 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %components18 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %39, i32 0, i32 4
  %40 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components18, align 8, !tbaa !81
  %cmp19 = icmp ne %struct.gx_ht_order_component_s* %40, null
  br i1 %cmp19, label %if.then.21, label %if.end.59

if.then.21:                                       ; preds = %for.end
  %41 = bitcast i32* %input_ncomps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #2
  %42 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %num_comp22 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %42, i32 0, i32 5
  %43 = load i32, i32* %num_comp22, align 4, !tbaa !133
  store i32 %43, i32* %input_ncomps, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.56, %if.then.21
  %44 = load i32, i32* %i, align 4, !tbaa !5
  %45 = load i32, i32* %input_ncomps, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %44, %45
  br i1 %cmp24, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.23
  %46 = load i32, i32* %code, align 4, !tbaa !5
  %cmp26 = icmp sge i32 %46, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.23
  %47 = phi i1 [ false, %for.cond.23 ], [ %cmp26, %land.rhs ]
  br i1 %47, label %for.body.28, label %for.end.58

for.body.28:                                      ; preds = %land.end
  %48 = bitcast %struct.gx_ht_order_component_s** %p_s_comp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %48) #2
  %49 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom29 = sext i32 %49 to i64
  %50 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %components30 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %50, i32 0, i32 4
  %51 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components30, align 8, !tbaa !81
  %arrayidx31 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %51, i64 %idxprom29
  store %struct.gx_ht_order_component_s* %arrayidx31, %struct.gx_ht_order_component_s** %p_s_comp, align 8, !tbaa !1
  %52 = bitcast %struct.gx_ht_order_s** %p_s_order to i8*
  call void @llvm.lifetime.start(i64 8, i8* %52) #2
  %53 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %p_s_comp, align 8, !tbaa !1
  %corder = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %53, i32 0, i32 0
  store %struct.gx_ht_order_s* %corder, %struct.gx_ht_order_s** %p_s_order, align 8, !tbaa !1
  %54 = bitcast i32* %comp_num to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #2
  %55 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %p_s_comp, align 8, !tbaa !1
  %comp_number32 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %55, i32 0, i32 1
  %56 = load i32, i32* %comp_number32, align 4, !tbaa !144
  store i32 %56, i32* %comp_num, align 4, !tbaa !5
  %57 = load i32, i32* %comp_num, align 4, !tbaa !5
  %cmp33 = icmp sge i32 %57, 0
  br i1 %cmp33, label %land.lhs.true, label %if.end.55

land.lhs.true:                                    ; preds = %for.body.28
  %58 = load i32, i32* %comp_num, align 4, !tbaa !5
  %cmp35 = icmp slt i32 %58, 64
  br i1 %cmp35, label %if.then.37, label %if.end.55

if.then.37:                                       ; preds = %land.lhs.true
  %59 = bitcast %struct.gx_ht_order_s** %p_d_order to i8*
  call void @llvm.lifetime.start(i64 8, i8* %59) #2
  %60 = load i32, i32* %comp_num, align 4, !tbaa !5
  %idxprom38 = sext i32 %60 to i64
  %components39 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %dht, i32 0, i32 4
  %61 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components39, align 8, !tbaa !81
  %arrayidx40 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %61, i64 %idxprom38
  %corder41 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx40, i32 0, i32 0
  store %struct.gx_ht_order_s* %corder41, %struct.gx_ht_order_s** %p_d_order, align 8, !tbaa !1
  %62 = load i32, i32* %comp_num, align 4, !tbaa !5
  %63 = load i32, i32* %comp_num, align 4, !tbaa !5
  %idxprom42 = sext i32 %63 to i64
  %components43 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %dht, i32 0, i32 4
  %64 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components43, align 8, !tbaa !81
  %arrayidx44 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %64, i64 %idxprom42
  %comp_number45 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx44, i32 0, i32 1
  store i32 %62, i32* %comp_number45, align 4, !tbaa !144
  %65 = load i32, i32* %mem_diff, align 4, !tbaa !5
  %tobool = icmp ne i32 %65, 0
  br i1 %tobool, label %if.then.46, label %if.else

if.then.46:                                       ; preds = %if.then.37
  %66 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %p_d_order, align 8, !tbaa !1
  %67 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %p_s_order, align 8, !tbaa !1
  %68 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory47 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %68, i32 0, i32 1
  %69 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory47, align 8, !tbaa !139
  %call48 = call i32 @gx_ht_copy_ht_order(%struct.gx_ht_order_s* %66, %struct.gx_ht_order_s* %67, %struct.gs_memory_s* %69) #5
  store i32 %call48, i32* %code, align 4, !tbaa !5
  br label %if.end.54

if.else:                                          ; preds = %if.then.37
  %70 = load i32, i32* %used_default, align 4, !tbaa !5
  %tobool49 = icmp ne i32 %70, 0
  br i1 %tobool49, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.else
  %71 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %p_s_order, align 8, !tbaa !1
  %bit_data = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %71, i32 0, i32 13
  %72 = load i8*, i8** %bit_data, align 8, !tbaa !18
  %73 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %order50 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %73, i32 0, i32 0
  %bit_data51 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %order50, i32 0, i32 13
  %74 = load i8*, i8** %bit_data51, align 8, !tbaa !135
  %cmp52 = icmp eq i8* %72, %74
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.else
  %75 = phi i1 [ true, %if.else ], [ %cmp52, %lor.rhs ]
  %lor.ext = zext i1 %75 to i32
  store i32 %lor.ext, i32* %used_default, align 4, !tbaa !5
  %76 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %p_d_order, align 8, !tbaa !1
  %77 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %p_s_order, align 8, !tbaa !1
  call void @gx_ht_move_ht_order(%struct.gx_ht_order_s* %76, %struct.gx_ht_order_s* %77) #5
  br label %if.end.54

if.end.54:                                        ; preds = %lor.end, %if.then.46
  %78 = bitcast %struct.gx_ht_order_s** %p_d_order to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #2
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %land.lhs.true, %for.body.28
  %79 = bitcast i32* %comp_num to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #2
  %80 = bitcast %struct.gx_ht_order_s** %p_s_order to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #2
  %81 = bitcast %struct.gx_ht_order_component_s** %p_s_comp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #2
  br label %for.inc.56

for.inc.56:                                       ; preds = %if.end.55
  %82 = load i32, i32* %i, align 4, !tbaa !5
  %inc57 = add nsw i32 %82, 1
  store i32 %inc57, i32* %i, align 4, !tbaa !5
  br label %for.cond.23

for.end.58:                                       ; preds = %land.end
  %83 = bitcast i32* %input_ncomps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #2
  br label %if.end.59

if.end.59:                                        ; preds = %for.end.58, %for.end
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.166, %if.end.59
  %84 = load i32, i32* %i, align 4, !tbaa !5
  %85 = load i32, i32* %num_comps, align 4, !tbaa !5
  %cmp61 = icmp slt i32 %84, %85
  br i1 %cmp61, label %land.rhs.63, label %land.end.66

land.rhs.63:                                      ; preds = %for.cond.60
  %86 = load i32, i32* %code, align 4, !tbaa !5
  %cmp64 = icmp sge i32 %86, 0
  br label %land.end.66

land.end.66:                                      ; preds = %land.rhs.63, %for.cond.60
  %87 = phi i1 [ false, %for.cond.60 ], [ %cmp64, %land.rhs.63 ]
  br i1 %87, label %for.body.67, label %for.end.168

for.body.67:                                      ; preds = %land.end.66
  %88 = bitcast %struct.gx_ht_order_s** %porder to i8*
  call void @llvm.lifetime.start(i64 8, i8* %88) #2
  %89 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom68 = sext i32 %89 to i64
  %components69 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %dht, i32 0, i32 4
  %90 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components69, align 8, !tbaa !81
  %arrayidx70 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %90, i64 %idxprom68
  %corder71 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx70, i32 0, i32 0
  store %struct.gx_ht_order_s* %corder71, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %91 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom72 = sext i32 %91 to i64
  %components73 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %dht, i32 0, i32 4
  %92 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components73, align 8, !tbaa !81
  %arrayidx74 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %92, i64 %idxprom72
  %comp_number75 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx74, i32 0, i32 1
  %93 = load i32, i32* %comp_number75, align 4, !tbaa !144
  %94 = load i32, i32* %i, align 4, !tbaa !5
  %cmp76 = icmp ne i32 %93, %94
  br i1 %cmp76, label %if.then.78, label %if.end.92

if.then.78:                                       ; preds = %for.body.67
  %95 = load i32, i32* %used_default, align 4, !tbaa !5
  %tobool79 = icmp ne i32 %95, 0
  br i1 %tobool79, label %if.then.81, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.78
  %96 = load i32, i32* %mem_diff, align 4, !tbaa !5
  %tobool80 = icmp ne i32 %96, 0
  br i1 %tobool80, label %if.then.81, label %if.else.85

if.then.81:                                       ; preds = %lor.lhs.false, %if.then.78
  %97 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %98 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %order82 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %98, i32 0, i32 0
  %99 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory83 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %99, i32 0, i32 1
  %100 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory83, align 8, !tbaa !139
  %call84 = call i32 @gx_ht_copy_ht_order(%struct.gx_ht_order_s* %97, %struct.gx_ht_order_s* %order82, %struct.gs_memory_s* %100) #5
  store i32 %call84, i32* %code, align 4, !tbaa !5
  br label %if.end.87

if.else.85:                                       ; preds = %lor.lhs.false
  %101 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %102 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %order86 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %102, i32 0, i32 0
  call void @gx_ht_move_ht_order(%struct.gx_ht_order_s* %101, %struct.gx_ht_order_s* %order86) #5
  store i32 1, i32* %used_default, align 4, !tbaa !5
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.85, %if.then.81
  %103 = load i32, i32* %i, align 4, !tbaa !5
  %104 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom88 = sext i32 %104 to i64
  %components89 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %dht, i32 0, i32 4
  %105 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components89, align 8, !tbaa !81
  %arrayidx90 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %105, i64 %idxprom88
  %comp_number91 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx90, i32 0, i32 1
  store i32 %103, i32* %comp_number91, align 4, !tbaa !144
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.87, %for.body.67
  %106 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %106, i32 0, i32 1
  %107 = load i16, i16* %width, align 2, !tbaa !101
  %conv93 = zext i16 %107 to i32
  store i32 %conv93, i32* %w, align 4, !tbaa !5
  %108 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %full_height = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %108, i32 0, i32 7
  %109 = load i32, i32* %full_height, align 4, !tbaa !107
  store i32 %109, i32* %h, align 4, !tbaa !5
  %110 = load i32, i32* %lcm_width, align 4, !tbaa !5
  %111 = load i32, i32* %w, align 4, !tbaa !5
  %call94 = call i32 @igcd(i32 %110, i32 %111) #5
  store i32 %call94, i32* %dw, align 4, !tbaa !5
  %112 = load i32, i32* %lcm_height, align 4, !tbaa !5
  %113 = load i32, i32* %h, align 4, !tbaa !5
  %call95 = call i32 @igcd(i32 %112, i32 %113) #5
  store i32 %call95, i32* %dh, align 4, !tbaa !5
  %114 = load i32, i32* %dw, align 4, !tbaa !5
  %115 = load i32, i32* %lcm_width, align 4, !tbaa !5
  %div = sdiv i32 %115, %114
  store i32 %div, i32* %lcm_width, align 4, !tbaa !5
  %116 = load i32, i32* %dh, align 4, !tbaa !5
  %117 = load i32, i32* %lcm_height, align 4, !tbaa !5
  %div96 = sdiv i32 %117, %116
  store i32 %div96, i32* %lcm_height, align 4, !tbaa !5
  %118 = load i32, i32* %w, align 4, !tbaa !5
  %119 = load i32, i32* %lcm_width, align 4, !tbaa !5
  %div97 = sdiv i32 2147483647, %119
  %cmp98 = icmp ugt i32 %118, %div97
  br i1 %cmp98, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.92
  br label %cond.end

cond.false:                                       ; preds = %if.end.92
  %120 = load i32, i32* %lcm_width, align 4, !tbaa !5
  %121 = load i32, i32* %w, align 4, !tbaa !5
  %mul100 = mul i32 %120, %121
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2147483647, %cond.true ], [ %mul100, %cond.false ]
  store i32 %cond, i32* %lcm_width, align 4, !tbaa !5
  %122 = load i32, i32* %h, align 4, !tbaa !5
  %123 = load i32, i32* %lcm_height, align 4, !tbaa !5
  %div101 = sdiv i32 2147483647, %123
  %cmp102 = icmp ugt i32 %122, %div101
  br i1 %cmp102, label %cond.true.104, label %cond.false.105

cond.true.104:                                    ; preds = %cond.end
  br label %cond.end.107

cond.false.105:                                   ; preds = %cond.end
  %124 = load i32, i32* %lcm_height, align 4, !tbaa !5
  %125 = load i32, i32* %h, align 4, !tbaa !5
  %mul106 = mul i32 %124, %125
  br label %cond.end.107

cond.end.107:                                     ; preds = %cond.false.105, %cond.true.104
  %cond108 = phi i32 [ 2147483647, %cond.true.104 ], [ %mul106, %cond.false.105 ]
  store i32 %cond108, i32* %lcm_height, align 4, !tbaa !5
  %126 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %cache = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %126, i32 0, i32 14
  %127 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %cache, align 8, !tbaa !19
  %cmp109 = icmp eq %struct.gx_ht_cache_s* %127, null
  br i1 %cmp109, label %if.then.111, label %if.end.165

if.then.111:                                      ; preds = %cond.end.107
  %128 = bitcast i32* %tile_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %128) #2
  %129 = bitcast i32* %num_tiles to i8*
  call void @llvm.lifetime.start(i64 4, i8* %129) #2
  %130 = bitcast i32* %slots_wanted to i8*
  call void @llvm.lifetime.start(i64 4, i8* %130) #2
  %131 = bitcast i32* %rep_raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %131) #2
  %132 = bitcast i32* %rep_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %132) #2
  %133 = bitcast %struct.gx_ht_cache_s** %pcache to i8*
  call void @llvm.lifetime.start(i64 8, i8* %133) #2
  %134 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %134, i32 0, i32 3
  %135 = load i16, i16* %raster, align 2, !tbaa !103
  %conv112 = zext i16 %135 to i32
  %136 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %num_bits = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %136, i32 0, i32 9
  %137 = load i32, i32* %num_bits, align 4, !tbaa !109
  %138 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %width113 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %138, i32 0, i32 1
  %139 = load i16, i16* %width113, align 2, !tbaa !101
  %conv114 = zext i16 %139 to i32
  %div115 = udiv i32 %137, %conv114
  %mul116 = mul i32 %conv112, %div115
  store i32 %mul116, i32* %tile_bytes, align 4, !tbaa !5
  %call117 = call i32 @gx_ht_cache_default_bits_size() #5
  %140 = load i32, i32* %tile_bytes, align 4, !tbaa !5
  %div118 = udiv i32 %call117, %140
  %add = add i32 1, %div118
  store i32 %add, i32* %num_tiles, align 4, !tbaa !5
  %141 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %width119 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %141, i32 0, i32 1
  %142 = load i16, i16* %width119, align 2, !tbaa !101
  %conv120 = zext i16 %142 to i32
  %143 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %143, i32 0, i32 2
  %144 = load i16, i16* %height, align 2, !tbaa !102
  %conv121 = zext i16 %144 to i32
  %mul122 = mul nsw i32 %conv120, %conv121
  %add123 = add nsw i32 1, %mul122
  store i32 %add123, i32* %slots_wanted, align 4, !tbaa !5
  %145 = load i32, i32* %num_tiles, align 4, !tbaa !5
  %146 = load i32, i32* %tile_bytes, align 4, !tbaa !5
  %mul124 = mul i32 %145, %146
  %147 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %height125 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %147, i32 0, i32 2
  %148 = load i16, i16* %height125, align 2, !tbaa !102
  %conv126 = zext i16 %148 to i32
  %div127 = udiv i32 %mul124, %conv126
  %149 = load i32, i32* %slots_wanted, align 4, !tbaa !5
  %div128 = udiv i32 %div127, %149
  %and = and i32 %div128, -8
  store i32 %and, i32* %rep_raster, align 4, !tbaa !5
  %150 = load i32, i32* %rep_raster, align 4, !tbaa !5
  %mul129 = mul i32 %150, 8
  %151 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %width130 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %151, i32 0, i32 1
  %152 = load i16, i16* %width130, align 2, !tbaa !101
  %conv131 = zext i16 %152 to i32
  %div132 = udiv i32 %mul129, %conv131
  store i32 %div132, i32* %rep_count, align 4, !tbaa !5
  %153 = load i32, i32* %rep_count, align 4, !tbaa !5
  %conv133 = zext i32 %153 to i64
  %cmp134 = icmp ugt i64 %conv133, 64
  br i1 %cmp134, label %land.lhs.true.136, label %if.end.154

land.lhs.true.136:                                ; preds = %if.then.111
  %154 = load i32, i32* %num_tiles, align 4, !tbaa !5
  %conv137 = zext i32 %154 to i64
  %155 = load i32, i32* %num_tiles, align 4, !tbaa !5
  %mul138 = mul i32 %155, 8
  %conv139 = zext i32 %mul138 to i64
  %mul140 = mul i64 %conv139, 8
  %156 = load i32, i32* %rep_count, align 4, !tbaa !5
  %conv141 = zext i32 %156 to i64
  %div142 = udiv i64 %mul140, %conv141
  %add143 = add i64 1, %div142
  %cmp144 = icmp ugt i64 %conv137, %add143
  br i1 %cmp144, label %if.then.146, label %if.end.154

if.then.146:                                      ; preds = %land.lhs.true.136
  %157 = load i32, i32* %num_tiles, align 4, !tbaa !5
  %mul147 = mul i32 %157, 8
  %conv148 = zext i32 %mul147 to i64
  %mul149 = mul i64 %conv148, 8
  %158 = load i32, i32* %rep_count, align 4, !tbaa !5
  %conv150 = zext i32 %158 to i64
  %div151 = udiv i64 %mul149, %conv150
  %add152 = add i64 1, %div151
  %conv153 = trunc i64 %add152 to i32
  store i32 %conv153, i32* %num_tiles, align 4, !tbaa !5
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.146, %land.lhs.true.136, %if.then.111
  %159 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory155 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %159, i32 0, i32 1
  %160 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory155, align 8, !tbaa !139
  %161 = load i32, i32* %num_tiles, align 4, !tbaa !5
  %162 = load i32, i32* %tile_bytes, align 4, !tbaa !5
  %163 = load i32, i32* %num_tiles, align 4, !tbaa !5
  %mul156 = mul i32 %162, %163
  %call157 = call %struct.gx_ht_cache_s* @gx_ht_alloc_cache(%struct.gs_memory_s* %160, i32 %161, i32 %mul156) #5
  store %struct.gx_ht_cache_s* %call157, %struct.gx_ht_cache_s** %pcache, align 8, !tbaa !1
  %164 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %pcache, align 8, !tbaa !1
  %cmp158 = icmp eq %struct.gx_ht_cache_s* %164, null
  br i1 %cmp158, label %if.then.160, label %if.else.161

if.then.160:                                      ; preds = %if.end.154
  store i32 -25, i32* %code, align 4, !tbaa !5
  br label %if.end.164

if.else.161:                                      ; preds = %if.end.154
  %165 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %pcache, align 8, !tbaa !1
  %166 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %cache162 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %166, i32 0, i32 14
  store %struct.gx_ht_cache_s* %165, %struct.gx_ht_cache_s** %cache162, align 8, !tbaa !19
  %167 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory163 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %167, i32 0, i32 1
  %168 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory163, align 8, !tbaa !139
  %169 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %pcache, align 8, !tbaa !1
  %170 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  call void @gx_ht_init_cache(%struct.gs_memory_s* %168, %struct.gx_ht_cache_s* %169, %struct.gx_ht_order_s* %170) #5
  br label %if.end.164

if.end.164:                                       ; preds = %if.else.161, %if.then.160
  %171 = bitcast %struct.gx_ht_cache_s** %pcache to i8*
  call void @llvm.lifetime.end(i64 8, i8* %171) #2
  %172 = bitcast i32* %rep_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %172) #2
  %173 = bitcast i32* %rep_raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %173) #2
  %174 = bitcast i32* %slots_wanted to i8*
  call void @llvm.lifetime.end(i64 4, i8* %174) #2
  %175 = bitcast i32* %num_tiles to i8*
  call void @llvm.lifetime.end(i64 4, i8* %175) #2
  %176 = bitcast i32* %tile_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %176) #2
  br label %if.end.165

if.end.165:                                       ; preds = %if.end.164, %cond.end.107
  %177 = bitcast %struct.gx_ht_order_s** %porder to i8*
  call void @llvm.lifetime.end(i64 8, i8* %177) #2
  br label %for.inc.166

for.inc.166:                                      ; preds = %if.end.165
  %178 = load i32, i32* %i, align 4, !tbaa !5
  %inc167 = add nsw i32 %178, 1
  store i32 %inc167, i32* %i, align 4, !tbaa !5
  br label %for.cond.60

for.end.168:                                      ; preds = %land.end.66
  %179 = load i32, i32* %lcm_width, align 4, !tbaa !5
  %lcm_width169 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %dht, i32 0, i32 7
  store i32 %179, i32* %lcm_width169, align 4, !tbaa !145
  %180 = load i32, i32* %lcm_height, align 4, !tbaa !5
  %lcm_height170 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %dht, i32 0, i32 8
  store i32 %180, i32* %lcm_height170, align 4, !tbaa !146
  %181 = load i32, i32* %code, align 4, !tbaa !5
  %cmp171 = icmp sge i32 %181, 0
  br i1 %cmp171, label %if.then.173, label %if.end.297

if.then.173:                                      ; preds = %for.end.168
  %182 = bitcast %struct.gx_device_halftone_s** %pisdht to i8*
  call void @llvm.lifetime.start(i64 8, i8* %182) #2
  %183 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %dev_ht = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %183, i32 0, i32 41
  %184 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht, align 8, !tbaa !147
  store %struct.gx_device_halftone_s* %184, %struct.gx_device_halftone_s** %pisdht, align 8, !tbaa !1
  %185 = bitcast %struct.rc_header_s* %tmp_rc to i8*
  call void @llvm.lifetime.start(i64 24, i8* %185) #2
  %186 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pisdht, align 8, !tbaa !1
  %cmp174 = icmp ne %struct.gx_device_halftone_s* %186, null
  br i1 %cmp174, label %land.lhs.true.176, label %if.else.187

land.lhs.true.176:                                ; preds = %if.then.173
  %187 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pisdht, align 8, !tbaa !1
  %rc177 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %187, i32 0, i32 1
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc177, i32 0, i32 0
  %188 = load i64, i64* %ref_count, align 8, !tbaa !148
  %cmp178 = icmp eq i64 %188, 1
  br i1 %cmp178, label %if.then.180, label %if.else.187

if.then.180:                                      ; preds = %land.lhs.true.176
  %189 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %190 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pisdht, align 8, !tbaa !1
  %cmp181 = icmp ne %struct.gx_device_halftone_s* %189, %190
  br i1 %cmp181, label %if.then.183, label %if.end.186

if.then.183:                                      ; preds = %if.then.180
  %191 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pisdht, align 8, !tbaa !1
  %192 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pisdht, align 8, !tbaa !1
  %rc184 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %192, i32 0, i32 1
  %memory185 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc184, i32 0, i32 1
  %193 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory185, align 8, !tbaa !138
  call void @gx_device_halftone_release(%struct.gx_device_halftone_s* %191, %struct.gs_memory_s* %193) #5
  br label %if.end.186

if.end.186:                                       ; preds = %if.then.183, %if.then.180
  br label %if.end.249

if.else.187:                                      ; preds = %land.lhs.true.176, %if.then.173
  br label %do.body

do.body:                                          ; preds = %if.else.187
  %194 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %dev_ht188 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %194, i32 0, i32 41
  %195 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht188, align 8, !tbaa !147
  %cmp189 = icmp eq %struct.gx_device_halftone_s* %195, null
  br i1 %cmp189, label %if.then.204, label %lor.lhs.false.191

lor.lhs.false.191:                                ; preds = %do.body
  %196 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %dev_ht192 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %196, i32 0, i32 41
  %197 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht192, align 8, !tbaa !147
  %rc193 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %197, i32 0, i32 1
  %ref_count194 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc193, i32 0, i32 0
  %198 = load i64, i64* %ref_count194, align 8, !tbaa !148
  %cmp195 = icmp sgt i64 %198, 1
  br i1 %cmp195, label %if.then.204, label %lor.lhs.false.197

lor.lhs.false.197:                                ; preds = %lor.lhs.false.191
  %199 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %dev_ht198 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %199, i32 0, i32 41
  %200 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht198, align 8, !tbaa !147
  %rc199 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %200, i32 0, i32 1
  %memory200 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc199, i32 0, i32 1
  %201 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory200, align 8, !tbaa !138
  %202 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory201 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %202, i32 0, i32 1
  %203 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory201, align 8, !tbaa !139
  %cmp202 = icmp ne %struct.gs_memory_s* %201, %203
  br i1 %cmp202, label %if.then.204, label %if.end.245

if.then.204:                                      ; preds = %lor.lhs.false.197, %lor.lhs.false.191, %do.body
  %204 = bitcast %struct.gx_device_halftone_s** %new to i8*
  call void @llvm.lifetime.start(i64 8, i8* %204) #2
  br label %do.body.205

do.body.205:                                      ; preds = %if.then.204
  %205 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory206 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %205, i32 0, i32 1
  %206 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory206, align 8, !tbaa !139
  %procs207 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %206, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs207, i32 0, i32 8
  %207 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !149
  %208 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory208 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %208, i32 0, i32 1
  %209 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory208, align 8, !tbaa !139
  %call209 = call i8* %207(%struct.gs_memory_s* %209, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_device_halftone to %struct.gs_memory_struct_type_s*), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i32 0, i32 0)) #5
  %210 = bitcast i8* %call209 to %struct.gx_device_halftone_s*
  store %struct.gx_device_halftone_s* %210, %struct.gx_device_halftone_s** %new, align 8, !tbaa !1
  %cmp210 = icmp eq %struct.gx_device_halftone_s* %210, null
  br i1 %cmp210, label %if.then.212, label %if.else.214

if.then.212:                                      ; preds = %do.body.205
  br label %do.body.213

do.body.213:                                      ; preds = %if.then.212
  store i32 -25, i32* %code, align 4, !tbaa !5
  store i32 17, i32* %cleanup.dest.slot
  br label %cleanup

do.cond:                                          ; No predecessors!
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.227

if.else.214:                                      ; preds = %do.body.205
  br label %do.body.215

do.body.215:                                      ; preds = %if.else.214
  %211 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %new, align 8, !tbaa !1
  %rc216 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %211, i32 0, i32 1
  %ref_count217 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc216, i32 0, i32 0
  store i64 1, i64* %ref_count217, align 8, !tbaa !148
  %212 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory218 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %212, i32 0, i32 1
  %213 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory218, align 8, !tbaa !139
  %214 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %new, align 8, !tbaa !1
  %rc219 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %214, i32 0, i32 1
  %memory220 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc219, i32 0, i32 1
  store %struct.gs_memory_s* %213, %struct.gs_memory_s** %memory220, align 8, !tbaa !138
  %215 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %new, align 8, !tbaa !1
  %rc221 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %215, i32 0, i32 1
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc221, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @rc_free_struct_only, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !150
  br label %do.body.222

do.body.222:                                      ; preds = %do.body.215
  br label %do.cond.223

do.cond.223:                                      ; preds = %do.body.222
  br label %do.end.224

do.end.224:                                       ; preds = %do.cond.223
  br label %do.cond.225

do.cond.225:                                      ; preds = %do.end.224
  br label %do.end.226

do.end.226:                                       ; preds = %do.cond.225
  br label %if.end.227

if.end.227:                                       ; preds = %do.end.226, %do.end
  br label %do.cond.228

do.cond.228:                                      ; preds = %if.end.227
  br label %do.end.229

do.end.229:                                       ; preds = %do.cond.228
  %216 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %dev_ht230 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %216, i32 0, i32 41
  %217 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht230, align 8, !tbaa !147
  %tobool231 = icmp ne %struct.gx_device_halftone_s* %217, null
  br i1 %tobool231, label %if.then.232, label %if.end.243

if.then.232:                                      ; preds = %do.end.229
  br label %do.body.233

do.body.233:                                      ; preds = %if.then.232
  br label %do.body.234

do.body.234:                                      ; preds = %do.body.233
  br label %do.cond.235

do.cond.235:                                      ; preds = %do.body.234
  br label %do.end.236

do.end.236:                                       ; preds = %do.cond.235
  %218 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %dev_ht237 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %218, i32 0, i32 41
  %219 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht237, align 8, !tbaa !147
  %rc238 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %219, i32 0, i32 1
  %ref_count239 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc238, i32 0, i32 0
  %220 = load i64, i64* %ref_count239, align 8, !tbaa !148
  %add240 = add nsw i64 %220, -1
  store i64 %add240, i64* %ref_count239, align 8, !tbaa !148
  br label %do.cond.241

do.cond.241:                                      ; preds = %do.end.236
  br label %do.end.242

do.end.242:                                       ; preds = %do.cond.241
  br label %if.end.243

if.end.243:                                       ; preds = %do.end.242, %do.end.229
  %221 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %new, align 8, !tbaa !1
  %222 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %dev_ht244 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %222, i32 0, i32 41
  store %struct.gx_device_halftone_s* %221, %struct.gx_device_halftone_s** %dev_ht244, align 8, !tbaa !147
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.body.213, %if.end.243
  %223 = bitcast %struct.gx_device_halftone_s** %new to i8*
  call void @llvm.lifetime.end(i64 8, i8* %223) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.295 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.245

if.end.245:                                       ; preds = %cleanup.cont, %lor.lhs.false.197
  br label %do.cond.246

do.cond.246:                                      ; preds = %if.end.245
  br label %do.end.247

do.end.247:                                       ; preds = %do.cond.246
  %224 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %dev_ht248 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %224, i32 0, i32 41
  %225 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht248, align 8, !tbaa !147
  store %struct.gx_device_halftone_s* %225, %struct.gx_device_halftone_s** %pisdht, align 8, !tbaa !1
  br label %if.end.249

if.end.249:                                       ; preds = %do.end.247, %if.end.186
  %226 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %components250 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %226, i32 0, i32 4
  %227 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components250, align 8, !tbaa !81
  %cmp251 = icmp ne %struct.gx_ht_order_component_s* %227, null
  br i1 %cmp251, label %if.then.253, label %if.end.287

if.then.253:                                      ; preds = %if.end.249
  %228 = bitcast i32* %input_ncomps254 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %228) #2
  %229 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %num_comp255 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %229, i32 0, i32 5
  %230 = load i32, i32* %num_comp255, align 4, !tbaa !133
  store i32 %230, i32* %input_ncomps254, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.256

for.cond.256:                                     ; preds = %for.inc.284, %if.then.253
  %231 = load i32, i32* %i, align 4, !tbaa !5
  %232 = load i32, i32* %input_ncomps254, align 4, !tbaa !5
  %cmp257 = icmp slt i32 %231, %232
  br i1 %cmp257, label %for.body.259, label %for.end.286

for.body.259:                                     ; preds = %for.cond.256
  %233 = bitcast %struct.gx_ht_order_component_s** %p_s_comp260 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %233) #2
  %234 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom261 = sext i32 %234 to i64
  %235 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %components262 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %235, i32 0, i32 4
  %236 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components262, align 8, !tbaa !81
  %arrayidx263 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %236, i64 %idxprom261
  store %struct.gx_ht_order_component_s* %arrayidx263, %struct.gx_ht_order_component_s** %p_s_comp260, align 8, !tbaa !1
  %237 = bitcast %struct.gx_ht_order_s** %p_s_order264 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %237) #2
  %238 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %p_s_comp260, align 8, !tbaa !1
  %corder265 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %238, i32 0, i32 0
  store %struct.gx_ht_order_s* %corder265, %struct.gx_ht_order_s** %p_s_order264, align 8, !tbaa !1
  %239 = bitcast i32* %comp_num266 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %239) #2
  %240 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %p_s_comp260, align 8, !tbaa !1
  %comp_number267 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %240, i32 0, i32 1
  %241 = load i32, i32* %comp_number267, align 4, !tbaa !144
  store i32 %241, i32* %comp_num266, align 4, !tbaa !5
  %242 = load i32, i32* %comp_num266, align 4, !tbaa !5
  %cmp268 = icmp sge i32 %242, 0
  br i1 %cmp268, label %land.lhs.true.270, label %if.else.275

land.lhs.true.270:                                ; preds = %for.body.259
  %243 = load i32, i32* %comp_num266, align 4, !tbaa !5
  %cmp271 = icmp slt i32 %243, 64
  br i1 %cmp271, label %if.then.273, label %if.else.275

if.then.273:                                      ; preds = %land.lhs.true.270
  %244 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %p_s_order264, align 8, !tbaa !1
  %245 = bitcast %struct.gx_ht_order_s* %244 to i8*
  %call274 = call i8* @memset(i8* %245, i32 0, i64 160) #7
  br label %if.end.283

if.else.275:                                      ; preds = %land.lhs.true.270, %for.body.259
  %246 = load i32, i32* %comp_num266, align 4, !tbaa !5
  %cmp276 = icmp eq i32 %246, 64
  br i1 %cmp276, label %land.lhs.true.278, label %if.end.282

land.lhs.true.278:                                ; preds = %if.else.275
  %247 = load i32, i32* %used_default, align 4, !tbaa !5
  %tobool279 = icmp ne i32 %247, 0
  br i1 %tobool279, label %if.then.280, label %if.end.282

if.then.280:                                      ; preds = %land.lhs.true.278
  %248 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %p_s_order264, align 8, !tbaa !1
  %249 = bitcast %struct.gx_ht_order_s* %248 to i8*
  %call281 = call i8* @memset(i8* %249, i32 0, i64 160) #7
  br label %if.end.282

if.end.282:                                       ; preds = %if.then.280, %land.lhs.true.278, %if.else.275
  br label %if.end.283

if.end.283:                                       ; preds = %if.end.282, %if.then.273
  %250 = bitcast i32* %comp_num266 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %250) #2
  %251 = bitcast %struct.gx_ht_order_s** %p_s_order264 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %251) #2
  %252 = bitcast %struct.gx_ht_order_component_s** %p_s_comp260 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %252) #2
  br label %for.inc.284

for.inc.284:                                      ; preds = %if.end.283
  %253 = load i32, i32* %i, align 4, !tbaa !5
  %inc285 = add nsw i32 %253, 1
  store i32 %inc285, i32* %i, align 4, !tbaa !5
  br label %for.cond.256

for.end.286:                                      ; preds = %for.cond.256
  %254 = bitcast i32* %input_ncomps254 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %254) #2
  br label %if.end.287

if.end.287:                                       ; preds = %for.end.286, %if.end.249
  %255 = load i32, i32* %used_default, align 4, !tbaa !5
  %tobool288 = icmp ne i32 %255, 0
  br i1 %tobool288, label %if.then.289, label %if.end.292

if.then.289:                                      ; preds = %if.end.287
  %256 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %order290 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %256, i32 0, i32 0
  %257 = bitcast %struct.gx_ht_order_s* %order290 to i8*
  %call291 = call i8* @memset(i8* %257, i32 0, i64 160) #7
  br label %if.end.292

if.end.292:                                       ; preds = %if.then.289, %if.end.287
  %258 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pisdht, align 8, !tbaa !1
  %rc293 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %258, i32 0, i32 1
  %259 = bitcast %struct.rc_header_s* %tmp_rc to i8*
  %260 = bitcast %struct.rc_header_s* %rc293 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %259, i8* %260, i64 24, i32 8, i1 false), !tbaa.struct !151
  %261 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pisdht, align 8, !tbaa !1
  %262 = bitcast %struct.gx_device_halftone_s* %261 to i8*
  %263 = bitcast %struct.gx_device_halftone_s* %dht to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %262, i8* %263, i64 224, i32 8, i1 false), !tbaa.struct !152
  %264 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pisdht, align 8, !tbaa !1
  %rc294 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %264, i32 0, i32 1
  %265 = bitcast %struct.rc_header_s* %rc294 to i8*
  %266 = bitcast %struct.rc_header_s* %tmp_rc to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %265, i8* %266, i64 24, i32 8, i1 false), !tbaa.struct !151
  %267 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  call void @gx_imager_set_effective_xfer(%struct.gs_imager_state_s* %267) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.295

cleanup.295:                                      ; preds = %if.end.292, %cleanup
  %268 = bitcast %struct.rc_header_s* %tmp_rc to i8*
  call void @llvm.lifetime.end(i64 24, i8* %268) #2
  %269 = bitcast %struct.gx_device_halftone_s** %pisdht to i8*
  call void @llvm.lifetime.end(i64 8, i8* %269) #2
  %cleanup.dest298 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest298, label %cleanup.321 [
    i32 17, label %err
  ]

if.end.297:                                       ; preds = %for.end.168
  br label %err

err:                                              ; preds = %if.end.297, %cleanup.295
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.299

for.cond.299:                                     ; preds = %for.inc.314, %err
  %270 = load i32, i32* %i, align 4, !tbaa !5
  %271 = load i32, i32* %num_comps, align 4, !tbaa !5
  %cmp300 = icmp slt i32 %270, %271
  br i1 %cmp300, label %for.body.302, label %for.end.316

for.body.302:                                     ; preds = %for.cond.299
  %272 = bitcast %struct.gx_ht_order_component_s** %pcomp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %272) #2
  %273 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom303 = sext i32 %273 to i64
  %components304 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %dht, i32 0, i32 4
  %274 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components304, align 8, !tbaa !81
  %arrayidx305 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %274, i64 %idxprom303
  store %struct.gx_ht_order_component_s* %arrayidx305, %struct.gx_ht_order_component_s** %pcomp, align 8, !tbaa !1
  %275 = bitcast %struct.gx_ht_order_s** %porder306 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %275) #2
  %276 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %pcomp, align 8, !tbaa !1
  %corder307 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %276, i32 0, i32 0
  store %struct.gx_ht_order_s* %corder307, %struct.gx_ht_order_s** %porder306, align 8, !tbaa !1
  %277 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %pcomp, align 8, !tbaa !1
  %comp_number308 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %277, i32 0, i32 1
  %278 = load i32, i32* %comp_number308, align 4, !tbaa !144
  %cmp309 = icmp eq i32 %278, -1
  br i1 %cmp309, label %if.then.311, label %if.end.313

if.then.311:                                      ; preds = %for.body.302
  %279 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder306, align 8, !tbaa !1
  %280 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory312 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %280, i32 0, i32 1
  %281 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory312, align 8, !tbaa !139
  call void @gx_ht_order_release(%struct.gx_ht_order_s* %279, %struct.gs_memory_s* %281, i32 1) #5
  br label %if.end.313

if.end.313:                                       ; preds = %if.then.311, %for.body.302
  %282 = bitcast %struct.gx_ht_order_s** %porder306 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %282) #2
  %283 = bitcast %struct.gx_ht_order_component_s** %pcomp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %283) #2
  br label %for.inc.314

for.inc.314:                                      ; preds = %if.end.313
  %284 = load i32, i32* %i, align 4, !tbaa !5
  %inc315 = add nsw i32 %284, 1
  store i32 %inc315, i32* %i, align 4, !tbaa !5
  br label %for.cond.299

for.end.316:                                      ; preds = %for.cond.299
  %285 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory317 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %285, i32 0, i32 1
  %286 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory317, align 8, !tbaa !139
  %procs318 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %286, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs318, i32 0, i32 2
  %287 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !116
  %288 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory319 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %288, i32 0, i32 1
  %289 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory319, align 8, !tbaa !139
  %components320 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %dht, i32 0, i32 4
  %290 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components320, align 8, !tbaa !81
  %291 = bitcast %struct.gx_ht_order_component_s* %290 to i8*
  call void %287(%struct.gs_memory_s* %289, i8* %291, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i32 0, i32 0)) #5
  %292 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %292, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.321

cleanup.321:                                      ; preds = %for.end.316, %cleanup.295, %if.then
  %293 = bitcast i32* %dh to i8*
  call void @llvm.lifetime.end(i64 4, i8* %293) #2
  %294 = bitcast i32* %dw to i8*
  call void @llvm.lifetime.end(i64 4, i8* %294) #2
  %295 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %295) #2
  %296 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %296) #2
  %297 = bitcast i32* %mem_diff to i8*
  call void @llvm.lifetime.end(i64 4, i8* %297) #2
  %298 = bitcast i32* %lcm_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %298) #2
  %299 = bitcast i32* %lcm_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %299) #2
  %300 = bitcast i32* %used_default to i8*
  call void @llvm.lifetime.end(i64 4, i8* %300) #2
  %301 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %301) #2
  %302 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %302) #2
  %303 = bitcast i32* %num_comps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %303) #2
  %304 = bitcast %struct.gx_device_halftone_s* %dht to i8*
  call void @llvm.lifetime.end(i64 224, i8* %304) #2
  %305 = load i32, i32* %retval
  ret i32 %305
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #4

declare i64 @gs_next_ids(%struct.gs_memory_s*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @gx_ht_copy_ht_order(%struct.gx_ht_order_s* %pdest, %struct.gx_ht_order_s* %psrc, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %pdest.addr = alloca %struct.gx_ht_order_s*, align 8
  %psrc.addr = alloca %struct.gx_ht_order_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_ht_order_s* %pdest, %struct.gx_ht_order_s** %pdest.addr, align 8, !tbaa !1
  store %struct.gx_ht_order_s* %psrc, %struct.gx_ht_order_s** %psrc.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %pdest.addr, align 8, !tbaa !1
  %2 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %psrc.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gx_ht_order_s* %1 to i8*
  %4 = bitcast %struct.gx_ht_order_s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 160, i32 8, i1 false), !tbaa.struct !117
  %5 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %pdest.addr, align 8, !tbaa !1
  %6 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %psrc.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %6, i32 0, i32 1
  %7 = load i16, i16* %width, align 2, !tbaa !101
  %conv = zext i16 %7 to i32
  %8 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %psrc.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %8, i32 0, i32 2
  %9 = load i16, i16* %height, align 2, !tbaa !102
  %conv1 = zext i16 %9 to i32
  %10 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %psrc.addr, align 8, !tbaa !1
  %num_levels = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %10, i32 0, i32 8
  %11 = load i32, i32* %num_levels, align 4, !tbaa !108
  %12 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %psrc.addr, align 8, !tbaa !1
  %num_bits = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %12, i32 0, i32 9
  %13 = load i32, i32* %num_bits, align 4, !tbaa !109
  %14 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %psrc.addr, align 8, !tbaa !1
  %shift = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %14, i32 0, i32 4
  %15 = load i16, i16* %shift, align 2, !tbaa !104
  %conv2 = zext i16 %15 to i32
  %16 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %psrc.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %16, i32 0, i32 10
  %17 = load %struct.gx_ht_order_procs_s*, %struct.gx_ht_order_procs_s** %procs, align 8, !tbaa !110
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i32 @gx_ht_alloc_ht_order(%struct.gx_ht_order_s* %5, i32 %conv, i32 %conv1, i32 %11, i32 %13, i32 %conv2, %struct.gx_ht_order_procs_s* %17, %struct.gs_memory_s* %18) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %19 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %19, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %20 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %21 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %pdest.addr, align 8, !tbaa !1
  %levels = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %21, i32 0, i32 12
  %22 = load i32*, i32** %levels, align 8, !tbaa !15
  %cmp4 = icmp ne i32* %22, null
  br i1 %cmp4, label %if.then.6, label %if.end.12

if.then.6:                                        ; preds = %if.end
  %23 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %pdest.addr, align 8, !tbaa !1
  %levels7 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %23, i32 0, i32 12
  %24 = load i32*, i32** %levels7, align 8, !tbaa !15
  %25 = bitcast i32* %24 to i8*
  %26 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %psrc.addr, align 8, !tbaa !1
  %levels8 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %26, i32 0, i32 12
  %27 = load i32*, i32** %levels8, align 8, !tbaa !15
  %28 = bitcast i32* %27 to i8*
  %29 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %psrc.addr, align 8, !tbaa !1
  %num_levels9 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %29, i32 0, i32 8
  %30 = load i32, i32* %num_levels9, align 4, !tbaa !108
  %conv10 = zext i32 %30 to i64
  %mul = mul i64 %conv10, 4
  %call11 = call i8* @memcpy(i8* %25, i8* %28, i64 %mul) #7
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.6, %if.end
  %31 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %pdest.addr, align 8, !tbaa !1
  %bit_data = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %31, i32 0, i32 13
  %32 = load i8*, i8** %bit_data, align 8, !tbaa !18
  %cmp13 = icmp ne i8* %32, null
  br i1 %cmp13, label %if.then.15, label %if.end.23

if.then.15:                                       ; preds = %if.end.12
  %33 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %pdest.addr, align 8, !tbaa !1
  %bit_data16 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %33, i32 0, i32 13
  %34 = load i8*, i8** %bit_data16, align 8, !tbaa !18
  %35 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %psrc.addr, align 8, !tbaa !1
  %bit_data17 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %35, i32 0, i32 13
  %36 = load i8*, i8** %bit_data17, align 8, !tbaa !18
  %37 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %psrc.addr, align 8, !tbaa !1
  %num_bits18 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %37, i32 0, i32 9
  %38 = load i32, i32* %num_bits18, align 4, !tbaa !109
  %39 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %psrc.addr, align 8, !tbaa !1
  %procs19 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %39, i32 0, i32 10
  %40 = load %struct.gx_ht_order_procs_s*, %struct.gx_ht_order_procs_s** %procs19, align 8, !tbaa !110
  %bit_data_elt_size = getelementptr inbounds %struct.gx_ht_order_procs_s, %struct.gx_ht_order_procs_s* %40, i32 0, i32 0
  %41 = load i32, i32* %bit_data_elt_size, align 4, !tbaa !114
  %mul20 = mul i32 %38, %41
  %conv21 = zext i32 %mul20 to i64
  %call22 = call i8* @memcpy(i8* %34, i8* %36, i64 %conv21) #7
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.15, %if.end.12
  %42 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %psrc.addr, align 8, !tbaa !1
  %transfer = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %42, i32 0, i32 15
  %43 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %transfer, align 8, !tbaa !20
  %44 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %pdest.addr, align 8, !tbaa !1
  %transfer24 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %44, i32 0, i32 15
  store %struct.gx_transfer_map_s* %43, %struct.gx_transfer_map_s** %transfer24, align 8, !tbaa !20
  br label %do.body

do.body:                                          ; preds = %if.end.23
  %45 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %pdest.addr, align 8, !tbaa !1
  %transfer25 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %45, i32 0, i32 15
  %46 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %transfer25, align 8, !tbaa !20
  %tobool = icmp ne %struct.gx_transfer_map_s* %46, null
  br i1 %tobool, label %if.then.26, label %if.end.32

if.then.26:                                       ; preds = %do.body
  br label %do.body.27

do.body.27:                                       ; preds = %if.then.26
  %47 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %pdest.addr, align 8, !tbaa !1
  %transfer28 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %47, i32 0, i32 15
  %48 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %transfer28, align 8, !tbaa !20
  %rc = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %48, i32 0, i32 0
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %49 = load i64, i64* %ref_count, align 8, !tbaa !128
  %inc = add nsw i64 %49, 1
  store i64 %inc, i64* %ref_count, align 8, !tbaa !128
  br label %do.body.29

do.body.29:                                       ; preds = %do.body.27
  br label %do.cond

do.cond:                                          ; preds = %do.body.29
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.30

do.cond.30:                                       ; preds = %do.end
  br label %do.end.31

do.end.31:                                        ; preds = %do.cond.30
  br label %if.end.32

if.end.32:                                        ; preds = %do.end.31, %do.body
  br label %do.cond.33

do.cond.33:                                       ; preds = %if.end.32
  br label %do.end.34

do.end.34:                                        ; preds = %do.cond.33
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.34, %if.then
  %50 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #2
  %51 = load i32, i32* %retval
  ret i32 %51
}

; Function Attrs: nounwind uwtable
define internal void @gx_ht_move_ht_order(%struct.gx_ht_order_s* %pdest, %struct.gx_ht_order_s* %psrc) #0 {
entry:
  %pdest.addr = alloca %struct.gx_ht_order_s*, align 8
  %psrc.addr = alloca %struct.gx_ht_order_s*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %shift = alloca i32, align 4
  store %struct.gx_ht_order_s* %pdest, %struct.gx_ht_order_s** %pdest.addr, align 8, !tbaa !1
  store %struct.gx_ht_order_s* %psrc, %struct.gx_ht_order_s** %psrc.addr, align 8, !tbaa !1
  %0 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %psrc.addr, align 8, !tbaa !1
  %width1 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %1, i32 0, i32 1
  %2 = load i16, i16* %width1, align 2, !tbaa !101
  %conv = zext i16 %2 to i32
  store i32 %conv, i32* %width, align 4, !tbaa !5
  %3 = bitcast i32* %height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %psrc.addr, align 8, !tbaa !1
  %height2 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %4, i32 0, i32 2
  %5 = load i16, i16* %height2, align 2, !tbaa !102
  %conv3 = zext i16 %5 to i32
  store i32 %conv3, i32* %height, align 4, !tbaa !5
  %6 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %psrc.addr, align 8, !tbaa !1
  %shift4 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %7, i32 0, i32 4
  %8 = load i16, i16* %shift4, align 2, !tbaa !104
  %conv5 = zext i16 %8 to i32
  store i32 %conv5, i32* %shift, align 4, !tbaa !5
  %9 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %pdest.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %9, i32 0, i32 0
  %10 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %psrc.addr, align 8, !tbaa !1
  %params6 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %10, i32 0, i32 0
  %11 = bitcast %struct.gx_ht_cell_params_s* %params to i8*
  %12 = bitcast %struct.gx_ht_cell_params_s* %params6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 40, i32 8, i1 false), !tbaa.struct !153
  %13 = load i32, i32* %width, align 4, !tbaa !5
  %conv7 = trunc i32 %13 to i16
  %14 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %pdest.addr, align 8, !tbaa !1
  %width8 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %14, i32 0, i32 1
  store i16 %conv7, i16* %width8, align 2, !tbaa !101
  %15 = load i32, i32* %height, align 4, !tbaa !5
  %conv9 = trunc i32 %15 to i16
  %16 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %pdest.addr, align 8, !tbaa !1
  %height10 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %16, i32 0, i32 2
  store i16 %conv9, i16* %height10, align 2, !tbaa !102
  %17 = load i32, i32* %width, align 4, !tbaa !5
  %add = add i32 %17, 63
  %shr = lshr i32 %add, 6
  %shl = shl i32 %shr, 3
  %conv11 = trunc i32 %shl to i16
  %18 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %pdest.addr, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %18, i32 0, i32 3
  store i16 %conv11, i16* %raster, align 2, !tbaa !103
  %19 = load i32, i32* %shift, align 4, !tbaa !5
  %conv12 = trunc i32 %19 to i16
  %20 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %pdest.addr, align 8, !tbaa !1
  %shift13 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %20, i32 0, i32 4
  store i16 %conv12, i16* %shift13, align 2, !tbaa !104
  %21 = load i32, i32* %height, align 4, !tbaa !5
  %conv14 = trunc i32 %21 to i16
  %22 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %pdest.addr, align 8, !tbaa !1
  %orig_height = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %22, i32 0, i32 5
  store i16 %conv14, i16* %orig_height, align 2, !tbaa !105
  %23 = load i32, i32* %shift, align 4, !tbaa !5
  %conv15 = trunc i32 %23 to i16
  %24 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %pdest.addr, align 8, !tbaa !1
  %orig_shift = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %24, i32 0, i32 6
  store i16 %conv15, i16* %orig_shift, align 2, !tbaa !106
  %25 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %pdest.addr, align 8, !tbaa !1
  %shift16 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %25, i32 0, i32 4
  %26 = load i16, i16* %shift16, align 2, !tbaa !104
  %conv17 = zext i16 %26 to i32
  %cmp = icmp eq i32 %conv17, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %27 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %pdest.addr, align 8, !tbaa !1
  %height19 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %27, i32 0, i32 2
  %28 = load i16, i16* %height19, align 2, !tbaa !102
  %conv20 = zext i16 %28 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %29 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %pdest.addr, align 8, !tbaa !1
  %width21 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %29, i32 0, i32 1
  %30 = load i16, i16* %width21, align 2, !tbaa !101
  %conv22 = zext i16 %30 to i32
  %31 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %pdest.addr, align 8, !tbaa !1
  %width23 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %31, i32 0, i32 1
  %32 = load i16, i16* %width23, align 2, !tbaa !101
  %conv24 = zext i16 %32 to i32
  %33 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %pdest.addr, align 8, !tbaa !1
  %shift25 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %33, i32 0, i32 4
  %34 = load i16, i16* %shift25, align 2, !tbaa !104
  %conv26 = zext i16 %34 to i32
  %call = call i32 @igcd(i32 %conv24, i32 %conv26) #5
  %div = sdiv i32 %conv22, %call
  %35 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %pdest.addr, align 8, !tbaa !1
  %height27 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %35, i32 0, i32 2
  %36 = load i16, i16* %height27, align 2, !tbaa !102
  %conv28 = zext i16 %36 to i32
  %mul = mul nsw i32 %div, %conv28
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv20, %cond.true ], [ %mul, %cond.false ]
  %37 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %pdest.addr, align 8, !tbaa !1
  %full_height = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %37, i32 0, i32 7
  store i32 %cond, i32* %full_height, align 4, !tbaa !107
  %38 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %psrc.addr, align 8, !tbaa !1
  %num_levels = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %38, i32 0, i32 8
  %39 = load i32, i32* %num_levels, align 4, !tbaa !108
  %40 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %pdest.addr, align 8, !tbaa !1
  %num_levels29 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %40, i32 0, i32 8
  store i32 %39, i32* %num_levels29, align 4, !tbaa !108
  %41 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %psrc.addr, align 8, !tbaa !1
  %num_bits = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %41, i32 0, i32 9
  %42 = load i32, i32* %num_bits, align 4, !tbaa !109
  %43 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %pdest.addr, align 8, !tbaa !1
  %num_bits30 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %43, i32 0, i32 9
  store i32 %42, i32* %num_bits30, align 4, !tbaa !109
  %44 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %psrc.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %44, i32 0, i32 10
  %45 = load %struct.gx_ht_order_procs_s*, %struct.gx_ht_order_procs_s** %procs, align 8, !tbaa !110
  %46 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %pdest.addr, align 8, !tbaa !1
  %procs31 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %46, i32 0, i32 10
  store %struct.gx_ht_order_procs_s* %45, %struct.gx_ht_order_procs_s** %procs31, align 8, !tbaa !110
  %47 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %psrc.addr, align 8, !tbaa !1
  %data_memory = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %47, i32 0, i32 11
  %48 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_memory, align 8, !tbaa !7
  %49 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %pdest.addr, align 8, !tbaa !1
  %data_memory32 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %49, i32 0, i32 11
  store %struct.gs_memory_s* %48, %struct.gs_memory_s** %data_memory32, align 8, !tbaa !7
  %50 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %psrc.addr, align 8, !tbaa !1
  %levels = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %50, i32 0, i32 12
  %51 = load i32*, i32** %levels, align 8, !tbaa !15
  %52 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %pdest.addr, align 8, !tbaa !1
  %levels33 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %52, i32 0, i32 12
  store i32* %51, i32** %levels33, align 8, !tbaa !15
  %53 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %psrc.addr, align 8, !tbaa !1
  %bit_data = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %53, i32 0, i32 13
  %54 = load i8*, i8** %bit_data, align 8, !tbaa !18
  %55 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %pdest.addr, align 8, !tbaa !1
  %bit_data34 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %55, i32 0, i32 13
  store i8* %54, i8** %bit_data34, align 8, !tbaa !18
  %56 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %psrc.addr, align 8, !tbaa !1
  %cache = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %56, i32 0, i32 14
  %57 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %cache, align 8, !tbaa !19
  %58 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %pdest.addr, align 8, !tbaa !1
  %cache35 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %58, i32 0, i32 14
  store %struct.gx_ht_cache_s* %57, %struct.gx_ht_cache_s** %cache35, align 8, !tbaa !19
  %59 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %psrc.addr, align 8, !tbaa !1
  %transfer = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %59, i32 0, i32 15
  %60 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %transfer, align 8, !tbaa !20
  %61 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %pdest.addr, align 8, !tbaa !1
  %transfer36 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %61, i32 0, i32 15
  store %struct.gx_transfer_map_s* %60, %struct.gx_transfer_map_s** %transfer36, align 8, !tbaa !20
  %62 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #2
  %63 = bitcast i32* %height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #2
  %64 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #2
  ret void
}

declare i32 @gx_ht_cache_default_bits_size() #1

declare %struct.gx_ht_cache_s* @gx_ht_alloc_cache(%struct.gs_memory_s*, i32, i32) #1

declare void @gx_ht_init_cache(%struct.gs_memory_s*, %struct.gx_ht_cache_s*, %struct.gx_ht_order_s*) #1

declare void @rc_free_struct_only(%struct.gs_memory_s*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gx_imager_set_effective_xfer(%struct.gs_imager_state_s* %pis) #0 {
entry:
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pdht = alloca %struct.gx_device_halftone_s*, align 8
  %pmap = alloca %struct.gx_transfer_map_s*, align 8
  %i = alloca i32, align 4
  %component_num = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_halftone_s** %pdht to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %dev_ht = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %1, i32 0, i32 41
  %2 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht, align 8, !tbaa !147
  store %struct.gx_device_halftone_s* %2, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %3 = bitcast %struct.gx_transfer_map_s** %pmap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %component_num to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %6, 64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %7, i32 0, i32 46
  %gray = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer, i32 0, i32 7
  %8 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray, align 8, !tbaa !154
  %9 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %10, i32 0, i32 47
  %arrayidx = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer, i32 0, i64 %idxprom
  store %struct.gx_transfer_map_s* %8, %struct.gx_transfer_map_s** %arrayidx, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer1 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %12, i32 0, i32 46
  %red = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer1, i32 0, i32 1
  %13 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red, align 8, !tbaa !155
  %tobool = icmp ne %struct.gx_transfer_map_s* %13, null
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %for.end
  %14 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer2 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %14, i32 0, i32 46
  %red_component_num = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer2, i32 0, i32 0
  %15 = load i32, i32* %red_component_num, align 4, !tbaa !156
  store i32 %15, i32* %component_num, align 4, !tbaa !5
  %16 = load i32, i32* %component_num, align 4, !tbaa !5
  %cmp3 = icmp sge i32 %16, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %17 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer5 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %17, i32 0, i32 46
  %red6 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer5, i32 0, i32 1
  %18 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red6, align 8, !tbaa !155
  %19 = load i32, i32* %component_num, align 4, !tbaa !5
  %idxprom7 = sext i32 %19 to i64
  %20 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer8 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %20, i32 0, i32 47
  %arrayidx9 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer8, i32 0, i64 %idxprom7
  store %struct.gx_transfer_map_s* %18, %struct.gx_transfer_map_s** %arrayidx9, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %for.end
  %21 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer11 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %21, i32 0, i32 46
  %green = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer11, i32 0, i32 3
  %22 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green, align 8, !tbaa !157
  %tobool12 = icmp ne %struct.gx_transfer_map_s* %22, null
  br i1 %tobool12, label %if.then.13, label %if.end.23

if.then.13:                                       ; preds = %if.end.10
  %23 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer14 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %23, i32 0, i32 46
  %green_component_num = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer14, i32 0, i32 2
  %24 = load i32, i32* %green_component_num, align 4, !tbaa !158
  store i32 %24, i32* %component_num, align 4, !tbaa !5
  %25 = load i32, i32* %component_num, align 4, !tbaa !5
  %cmp15 = icmp sge i32 %25, 0
  br i1 %cmp15, label %if.then.16, label %if.end.22

if.then.16:                                       ; preds = %if.then.13
  %26 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer17 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %26, i32 0, i32 46
  %green18 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer17, i32 0, i32 3
  %27 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green18, align 8, !tbaa !157
  %28 = load i32, i32* %component_num, align 4, !tbaa !5
  %idxprom19 = sext i32 %28 to i64
  %29 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer20 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %29, i32 0, i32 47
  %arrayidx21 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer20, i32 0, i64 %idxprom19
  store %struct.gx_transfer_map_s* %27, %struct.gx_transfer_map_s** %arrayidx21, align 8, !tbaa !1
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.16, %if.then.13
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end.10
  %30 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer24 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %30, i32 0, i32 46
  %blue = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer24, i32 0, i32 5
  %31 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %blue, align 8, !tbaa !159
  %tobool25 = icmp ne %struct.gx_transfer_map_s* %31, null
  br i1 %tobool25, label %if.then.26, label %if.end.36

if.then.26:                                       ; preds = %if.end.23
  %32 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer27 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %32, i32 0, i32 46
  %blue_component_num = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer27, i32 0, i32 4
  %33 = load i32, i32* %blue_component_num, align 4, !tbaa !160
  store i32 %33, i32* %component_num, align 4, !tbaa !5
  %34 = load i32, i32* %component_num, align 4, !tbaa !5
  %cmp28 = icmp sge i32 %34, 0
  br i1 %cmp28, label %if.then.29, label %if.end.35

if.then.29:                                       ; preds = %if.then.26
  %35 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer30 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %35, i32 0, i32 46
  %blue31 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer30, i32 0, i32 5
  %36 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %blue31, align 8, !tbaa !159
  %37 = load i32, i32* %component_num, align 4, !tbaa !5
  %idxprom32 = sext i32 %37 to i64
  %38 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer33 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %38, i32 0, i32 47
  %arrayidx34 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer33, i32 0, i64 %idxprom32
  store %struct.gx_transfer_map_s* %36, %struct.gx_transfer_map_s** %arrayidx34, align 8, !tbaa !1
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.29, %if.then.26
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end.23
  %39 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %cmp37 = icmp eq %struct.gx_device_halftone_s* %39, null
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.36
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.39:                                        ; preds = %if.end.36
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.51, %if.end.39
  %40 = load i32, i32* %i, align 4, !tbaa !5
  %41 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %num_comp = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %41, i32 0, i32 5
  %42 = load i32, i32* %num_comp, align 4, !tbaa !133
  %cmp41 = icmp ult i32 %40, %42
  br i1 %cmp41, label %for.body.42, label %for.end.53

for.body.42:                                      ; preds = %for.cond.40
  %43 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom43 = sext i32 %43 to i64
  %44 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %components = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %44, i32 0, i32 4
  %45 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components, align 8, !tbaa !81
  %arrayidx44 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %45, i64 %idxprom43
  %corder = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx44, i32 0, i32 0
  %transfer = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %corder, i32 0, i32 15
  %46 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %transfer, align 8, !tbaa !161
  store %struct.gx_transfer_map_s* %46, %struct.gx_transfer_map_s** %pmap, align 8, !tbaa !1
  %47 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %pmap, align 8, !tbaa !1
  %cmp45 = icmp ne %struct.gx_transfer_map_s* %47, null
  br i1 %cmp45, label %if.then.46, label %if.end.50

if.then.46:                                       ; preds = %for.body.42
  %48 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %pmap, align 8, !tbaa !1
  %49 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom47 = sext i32 %49 to i64
  %50 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer48 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %50, i32 0, i32 47
  %arrayidx49 = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer48, i32 0, i64 %idxprom47
  store %struct.gx_transfer_map_s* %48, %struct.gx_transfer_map_s** %arrayidx49, align 8, !tbaa !1
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.46, %for.body.42
  br label %for.inc.51

for.inc.51:                                       ; preds = %if.end.50
  %51 = load i32, i32* %i, align 4, !tbaa !5
  %inc52 = add nsw i32 %51, 1
  store i32 %inc52, i32* %i, align 4, !tbaa !5
  br label %for.cond.40

for.end.53:                                       ; preds = %for.cond.40
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.53, %if.then.38
  %52 = bitcast i32* %component_num to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #2
  %53 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #2
  %54 = bitcast %struct.gx_transfer_map_s** %pmap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #2
  %55 = bitcast %struct.gx_device_halftone_s** %pdht to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @gx_ht_install(%struct.gs_state_s* %pgs, %struct.gs_halftone_s* %pht, %struct.gx_device_halftone_s* %pdht) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pht.addr = alloca %struct.gs_halftone_s*, align 8
  %pdht.addr = alloca %struct.gx_device_halftone_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %old_ht = alloca %struct.gs_halftone_s*, align 8
  %new_ht = alloca %struct.gs_halftone_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %rc68 = alloca %struct.rc_header_s, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_halftone_s* %pht, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  store %struct.gx_device_halftone_s* %pdht, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %1, i32 0, i32 1
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 1
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !162
  store %struct.gs_memory_s* %2, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %3 = bitcast %struct.gs_halftone_s** %old_ht to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %halftone = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 39
  %5 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %halftone, align 8, !tbaa !66
  store %struct.gs_halftone_s* %5, %struct.gs_halftone_s** %old_ht, align 8, !tbaa !1
  %6 = bitcast %struct.gs_halftone_s** %new_ht to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 78
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !69
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %10 = load i32, i32* %num_components, align 4, !tbaa !163
  %11 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %num_dev_comp = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %11, i32 0, i32 6
  store i32 %10, i32* %num_dev_comp, align 4, !tbaa !137
  %12 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %old_ht, align 8, !tbaa !1
  %cmp = icmp ne %struct.gs_halftone_s* %12, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %13 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %old_ht, align 8, !tbaa !1
  %rc1 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %13, i32 0, i32 1
  %memory2 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc1, i32 0, i32 1
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory2, align 8, !tbaa !162
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %cmp3 = icmp eq %struct.gs_memory_s* %14, %15
  br i1 %cmp3, label %land.lhs.true.4, label %if.else

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %16 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %old_ht, align 8, !tbaa !1
  %rc5 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %16, i32 0, i32 1
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc5, i32 0, i32 0
  %17 = load i64, i64* %ref_count, align 8, !tbaa !164
  %cmp6 = icmp eq i64 %17, 1
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.4
  %18 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %old_ht, align 8, !tbaa !1
  store %struct.gs_halftone_s* %18, %struct.gs_halftone_s** %new_ht, align 8, !tbaa !1
  br label %if.end.21

if.else:                                          ; preds = %land.lhs.true.4, %land.lhs.true, %entry
  br label %do.body

do.body:                                          ; preds = %if.else
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %19, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %20 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !149
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call = call i8* %20(%struct.gs_memory_s* %21, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_halftone to %struct.gs_memory_struct_type_s*), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i32 0, i32 0)) #5
  %22 = bitcast i8* %call to %struct.gs_halftone_s*
  store %struct.gs_halftone_s* %22, %struct.gs_halftone_s** %new_ht, align 8, !tbaa !1
  %cmp7 = icmp eq %struct.gs_halftone_s* %22, null
  br i1 %cmp7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %do.body
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.9:                                        ; preds = %do.body
  br label %do.body.10

do.body.10:                                       ; preds = %if.else.9
  %23 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %new_ht, align 8, !tbaa !1
  %rc11 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %23, i32 0, i32 1
  %ref_count12 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc11, i32 0, i32 0
  store i64 1, i64* %ref_count12, align 8, !tbaa !164
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %25 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %new_ht, align 8, !tbaa !1
  %rc13 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %25, i32 0, i32 1
  %memory14 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc13, i32 0, i32 1
  store %struct.gs_memory_s* %24, %struct.gs_memory_s** %memory14, align 8, !tbaa !162
  %26 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %new_ht, align 8, !tbaa !1
  %rc15 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %26, i32 0, i32 1
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc15, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @rc_free_struct_only, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !165
  br label %do.body.16

do.body.16:                                       ; preds = %do.body.10
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
  br label %if.end.21

if.end.21:                                        ; preds = %do.end.20, %if.then
  %27 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %28 = bitcast %struct.gs_state_s* %27 to %struct.gs_imager_state_s*
  %29 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %30 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %30, i32 0, i32 0
  %31 = load i32, i32* %type, align 4, !tbaa !26
  %32 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device22 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %32, i32 0, i32 78
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %device22, align 8, !tbaa !69
  %call23 = call i32 @gx_imager_dev_ht_install(%struct.gs_imager_state_s* %28, %struct.gx_device_halftone_s* %29, i32 %31, %struct.gx_device_s* %33) #5
  store i32 %call23, i32* %code, align 4, !tbaa !5
  %34 = load i32, i32* %code, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %34, 0
  br i1 %cmp24, label %if.then.25, label %if.end.30

if.then.25:                                       ; preds = %if.end.21
  %35 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %new_ht, align 8, !tbaa !1
  %36 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %old_ht, align 8, !tbaa !1
  %cmp26 = icmp ne %struct.gs_halftone_s* %35, %36
  br i1 %cmp26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.then.25
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs28 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %37, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs28, i32 0, i32 2
  %38 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !116
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %40 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %new_ht, align 8, !tbaa !1
  %41 = bitcast %struct.gs_halftone_s* %40 to i8*
  call void %38(%struct.gs_memory_s* %39, i8* %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i32 0, i32 0)) #5
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %if.then.25
  %42 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %42, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %if.end.21
  %43 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %44 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %rc31 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %44, i32 0, i32 1
  %memory32 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc31, i32 0, i32 1
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory32, align 8, !tbaa !138
  call void @gx_device_halftone_release(%struct.gx_device_halftone_s* %43, %struct.gs_memory_s* %45) #5
  %46 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %new_ht, align 8, !tbaa !1
  %47 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %old_ht, align 8, !tbaa !1
  %cmp33 = icmp ne %struct.gs_halftone_s* %46, %47
  br i1 %cmp33, label %if.then.34, label %if.end.67

if.then.34:                                       ; preds = %if.end.30
  br label %do.body.35

do.body.35:                                       ; preds = %if.then.34
  %48 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %old_ht, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_halftone_s* %48, null
  br i1 %tobool, label %if.then.36, label %if.end.64

if.then.36:                                       ; preds = %do.body.35
  br label %do.body.37

do.body.37:                                       ; preds = %if.then.36
  br label %do.body.38

do.body.38:                                       ; preds = %do.body.37
  br label %do.cond.39

do.cond.39:                                       ; preds = %do.body.38
  br label %do.end.40

do.end.40:                                        ; preds = %do.cond.39
  %49 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %old_ht, align 8, !tbaa !1
  %rc41 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %49, i32 0, i32 1
  %ref_count42 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc41, i32 0, i32 0
  %50 = load i64, i64* %ref_count42, align 8, !tbaa !164
  %add = add nsw i64 %50, -1
  store i64 %add, i64* %ref_count42, align 8, !tbaa !164
  br label %do.cond.43

do.cond.43:                                       ; preds = %do.end.40
  br label %do.end.44

do.end.44:                                        ; preds = %do.cond.43
  %51 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %old_ht, align 8, !tbaa !1
  %rc45 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %51, i32 0, i32 1
  %ref_count46 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc45, i32 0, i32 0
  %52 = load i64, i64* %ref_count46, align 8, !tbaa !164
  %tobool47 = icmp ne i64 %52, 0
  br i1 %tobool47, label %if.else.59, label %if.then.48

if.then.48:                                       ; preds = %do.end.44
  br label %do.body.49

do.body.49:                                       ; preds = %if.then.48
  br label %do.body.50

do.body.50:                                       ; preds = %do.body.49
  br label %do.cond.51

do.cond.51:                                       ; preds = %do.body.50
  br label %do.end.52

do.end.52:                                        ; preds = %do.cond.51
  %53 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %old_ht, align 8, !tbaa !1
  %rc53 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %53, i32 0, i32 1
  %free54 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc53, i32 0, i32 2
  %54 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free54, align 8, !tbaa !165
  %55 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %old_ht, align 8, !tbaa !1
  %rc55 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %55, i32 0, i32 1
  %memory56 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc55, i32 0, i32 1
  %56 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory56, align 8, !tbaa !162
  %57 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %old_ht, align 8, !tbaa !1
  %58 = bitcast %struct.gs_halftone_s* %57 to i8*
  call void %54(%struct.gs_memory_s* %56, i8* %58, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i32 0, i32 0)) #5
  br label %do.cond.57

do.cond.57:                                       ; preds = %do.end.52
  br label %do.end.58

do.end.58:                                        ; preds = %do.cond.57
  store %struct.gs_halftone_s* null, %struct.gs_halftone_s** %old_ht, align 8, !tbaa !1
  br label %if.end.63

if.else.59:                                       ; preds = %do.end.44
  br label %do.body.60

do.body.60:                                       ; preds = %if.else.59
  br label %do.cond.61

do.cond.61:                                       ; preds = %do.body.60
  br label %do.end.62

do.end.62:                                        ; preds = %do.cond.61
  br label %if.end.63

if.end.63:                                        ; preds = %do.end.62, %do.end.58
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %do.body.35
  br label %do.cond.65

do.cond.65:                                       ; preds = %if.end.64
  br label %do.end.66

do.end.66:                                        ; preds = %do.cond.65
  br label %if.end.67

if.end.67:                                        ; preds = %do.end.66, %if.end.30
  %59 = bitcast %struct.rc_header_s* %rc68 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %59) #2
  %60 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %new_ht, align 8, !tbaa !1
  %rc69 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %60, i32 0, i32 1
  %61 = bitcast %struct.rc_header_s* %rc68 to i8*
  %62 = bitcast %struct.rc_header_s* %rc69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %61, i8* %62, i64 24, i32 8, i1 false), !tbaa.struct !151
  %63 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %new_ht, align 8, !tbaa !1
  %64 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  %65 = bitcast %struct.gs_halftone_s* %63 to i8*
  %66 = bitcast %struct.gs_halftone_s* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %65, i8* %66, i64 128, i32 8, i1 false), !tbaa.struct !98
  %67 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %new_ht, align 8, !tbaa !1
  %rc70 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %67, i32 0, i32 1
  %68 = bitcast %struct.rc_header_s* %rc70 to i8*
  %69 = bitcast %struct.rc_header_s* %rc68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %69, i64 24, i32 8, i1 false), !tbaa.struct !151
  %70 = bitcast %struct.rc_header_s* %rc68 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %70) #2
  %71 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %new_ht, align 8, !tbaa !1
  %72 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %halftone71 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %72, i32 0, i32 39
  store %struct.gs_halftone_s* %71, %struct.gs_halftone_s** %halftone71, align 8, !tbaa !66
  %73 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %73, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color, i32 0, i64 0
  %dev_color = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 2
  %74 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color, align 8, !tbaa !89
  %type72 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %74, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_none, %struct.gx_device_color_type_s** %type72, align 8, !tbaa !91
  %75 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color73 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %75, i32 0, i32 69
  %arrayidx74 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color73, i32 0, i64 1
  %dev_color75 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx74, i32 0, i32 2
  %76 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color75, align 8, !tbaa !89
  %type76 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %76, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_none, %struct.gx_device_color_type_s** %type76, align 8, !tbaa !91
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.67, %if.end.29, %if.then.8
  %77 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #2
  %78 = bitcast %struct.gs_halftone_s** %new_ht to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #2
  %79 = bitcast %struct.gs_halftone_s** %old_ht to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #2
  %80 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #2
  %81 = load i32, i32* %retval
  ret i32 %81
}

; Function Attrs: nounwind uwtable
define void @gx_set_effective_transfer(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gs_state_s* %0 to %struct.gs_imager_state_s*
  call void @gx_imager_set_effective_xfer(%struct.gs_imager_state_s* %1) #5
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gx_ht_construct_threshold(%struct.gx_ht_order_s* %d_order, %struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, i32 %plane_index) #0 {
entry:
  %retval = alloca i32, align 4
  %d_order.addr = alloca %struct.gx_ht_order_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %plane_index.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l = alloca i32, align 4
  %prev_l = alloca i32, align 4
  %thresh = alloca i8*, align 8
  %memory = alloca %struct.gs_memory_s*, align 8
  %max_value = alloca i32, align 4
  %hsize = alloca i64, align 8
  %nshades = alloca i64, align 8
  %t_level = alloca i32, align 4
  %t_level_adjust = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %delta = alloca i32, align 4
  %delta_sum = alloca i32, align 4
  %have_transfer = alloca i32, align 4
  %transfer_inverse = alloca i8*, align 8
  %code = alloca i32, align 4
  %init_value = alloca i8, align 1
  %is_inverting = alloca i32, align 4
  %num_repeat = alloca i32, align 4
  %shift = alloca i32, align 4
  %row_kk = alloca i32, align 4
  %col_kk = alloca i32, align 4
  %kk = alloca i32, align 4
  %off = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %ppt = alloca %struct.gs_int_point_s, align 4
  store %struct.gx_ht_order_s* %d_order, %struct.gx_ht_order_s** %d_order.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store i32 %plane_index, i32* %plane_index.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %prev_l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i8** %thresh to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast %struct.gs_memory_s** %memory to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %d_order.addr, align 8, !tbaa !1
  %data_memory = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %6, i32 0, i32 11
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_memory, align 8, !tbaa !7
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 3
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !132
  store %struct.gs_memory_s* %8, %struct.gs_memory_s** %memory, align 8, !tbaa !1
  %9 = bitcast i32* %max_value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast i64* %hsize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = bitcast i64* %nshades to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = bitcast i32* %t_level to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = bitcast i32* %t_level_adjust to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = bitcast i32* %row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = bitcast i32* %delta to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = bitcast i32* %delta_sum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  store i32 0, i32* %delta_sum, align 4, !tbaa !5
  %18 = bitcast i32* %have_transfer to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  store i32 0, i32* %have_transfer, align 4, !tbaa !5
  %19 = bitcast i8** %transfer_inverse to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #2
  store i8* null, i8** %transfer_inverse, align 8, !tbaa !1
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #2
  call void @llvm.lifetime.start(i64 1, i8* %init_value) #2
  store i8 -1, i8* %init_value, align 1, !tbaa !85
  %21 = bitcast i32* %is_inverting to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #2
  store i32 0, i32* %is_inverting, align 4, !tbaa !5
  %22 = bitcast i32* %num_repeat to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #2
  %23 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #2
  %24 = bitcast i32* %row_kk to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #2
  %25 = bitcast i32* %col_kk to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #2
  %26 = bitcast i32* %kk to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #2
  %27 = bitcast i32* %off to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #2
  %28 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %d_order.addr, align 8, !tbaa !1
  %full_height = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %28, i32 0, i32 7
  %29 = load i32, i32* %full_height, align 4, !tbaa !107
  %30 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %d_order.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %30, i32 0, i32 2
  %31 = load i16, i16* %height, align 2, !tbaa !102
  %conv = zext i16 %31 to i32
  %div = udiv i32 %29, %conv
  store i32 %div, i32* %num_repeat, align 4, !tbaa !5
  %32 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %d_order.addr, align 8, !tbaa !1
  %shift1 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %32, i32 0, i32 4
  %33 = load i16, i16* %shift1, align 2, !tbaa !104
  %conv2 = zext i16 %33 to i32
  store i32 %conv2, i32* %shift, align 4, !tbaa !5
  %34 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %d_order.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_ht_order_s* %34, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.170

if.end:                                           ; preds = %entry
  %35 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %d_order.addr, align 8, !tbaa !1
  %threshold = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %35, i32 0, i32 17
  %36 = load i8*, i8** %threshold, align 8, !tbaa !100
  %cmp4 = icmp ne i8* %36, null
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.170

if.end.7:                                         ; preds = %if.end
  %37 = load i32, i32* %is_inverting, align 4, !tbaa !5
  %38 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %d_order.addr, align 8, !tbaa !1
  %threshold_inverts = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %38, i32 0, i32 18
  store i32 %37, i32* %threshold_inverts, align 4, !tbaa !166
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !1
  %non_gc_memory8 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %39, i32 0, i32 3
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory8, align 8, !tbaa !132
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %40, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %41 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !111
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !1
  %non_gc_memory9 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %42, i32 0, i32 3
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory9, align 8, !tbaa !132
  %44 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %d_order.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %44, i32 0, i32 1
  %45 = load i16, i16* %width, align 2, !tbaa !101
  %conv10 = zext i16 %45 to i32
  %46 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %d_order.addr, align 8, !tbaa !1
  %full_height11 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %46, i32 0, i32 7
  %47 = load i32, i32* %full_height11, align 4, !tbaa !107
  %mul = mul i32 %conv10, %47
  %call = call i8* %41(%struct.gs_memory_s* %43, i32 %mul, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i32 0, i32 0)) #5
  store i8* %call, i8** %thresh, align 8, !tbaa !1
  %48 = load i8*, i8** %thresh, align 8, !tbaa !1
  %cmp12 = icmp eq i8* %48, null
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.7
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.170

if.end.15:                                        ; preds = %if.end.7
  %49 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %d_order.addr, align 8, !tbaa !1
  %threshold_inverts16 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %49, i32 0, i32 18
  store i32 0, i32* %threshold_inverts16, align 4, !tbaa !166
  %50 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %50, i32 0, i32 11
  %gray_index = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 4
  %51 = load i8, i8* %gray_index, align 1, !tbaa !70
  %conv17 = zext i8 %51 to i32
  %52 = load i32, i32* %plane_index.addr, align 4, !tbaa !5
  %cmp18 = icmp eq i32 %conv17, %52
  br i1 %cmp18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.15
  %53 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info20 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %53, i32 0, i32 11
  %dither_grays = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info20, i32 0, i32 7
  %54 = load i32, i32* %dither_grays, align 4, !tbaa !167
  %sub = sub i32 %54, 1
  br label %cond.end

cond.false:                                       ; preds = %if.end.15
  %55 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info21 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %55, i32 0, i32 11
  %dither_colors = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info21, i32 0, i32 8
  %56 = load i32, i32* %dither_colors, align 4, !tbaa !168
  %sub22 = sub i32 %56, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %sub22, %cond.false ]
  store i32 %cond, i32* %max_value, align 4, !tbaa !5
  %57 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %d_order.addr, align 8, !tbaa !1
  %num_levels = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %57, i32 0, i32 8
  %58 = load i32, i32* %num_levels, align 4, !tbaa !108
  %conv23 = zext i32 %58 to i64
  store i64 %conv23, i64* %hsize, align 8, !tbaa !99
  %59 = load i64, i64* %hsize, align 8, !tbaa !99
  %60 = load i32, i32* %max_value, align 4, !tbaa !5
  %conv24 = zext i32 %60 to i64
  %mul25 = mul i64 %59, %conv24
  %add = add i64 %mul25, 1
  store i64 %add, i64* %nshades, align 8, !tbaa !99
  %61 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %d_order.addr, align 8, !tbaa !1
  %num_levels26 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %61, i32 0, i32 8
  %62 = load i32, i32* %num_levels26, align 4, !tbaa !108
  %div27 = udiv i32 128, %62
  store i32 %div27, i32* %off, align 4, !tbaa !5
  %63 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %d_order.addr, align 8, !tbaa !1
  %num_levels28 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %63, i32 0, i32 8
  %64 = load i32, i32* %num_levels28, align 4, !tbaa !108
  %cmp29 = icmp ult i32 %64, 128
  br i1 %cmp29, label %if.then.31, label %if.end.36

if.then.31:                                       ; preds = %cond.end
  %65 = load i32, i32* %off, align 4, !tbaa !5
  %sub32 = sub nsw i32 %65, 1
  %66 = load i8, i8* %init_value, align 1, !tbaa !85
  %conv33 = zext i8 %66 to i32
  %sub34 = sub nsw i32 %conv33, %sub32
  %conv35 = trunc i32 %sub34 to i8
  store i8 %conv35, i8* %init_value, align 1, !tbaa !85
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.31, %cond.end
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.36
  %67 = load i32, i32* %i, align 4, !tbaa !5
  %68 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %d_order.addr, align 8, !tbaa !1
  %num_bits = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %68, i32 0, i32 9
  %69 = load i32, i32* %num_bits, align 4, !tbaa !109
  %cmp37 = icmp ult i32 %67, %69
  br i1 %cmp37, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %70 = load i8, i8* %init_value, align 1, !tbaa !85
  %71 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %71 to i64
  %72 = load i8*, i8** %thresh, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %72, i64 %idxprom
  store i8 %70, i8* %arrayidx, align 1, !tbaa !85
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %73 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %73, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %prev_l, align 4, !tbaa !5
  store i32 1, i32* %l, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end.122, %for.end
  %74 = load i32, i32* %l, align 4, !tbaa !5
  %75 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %d_order.addr, align 8, !tbaa !1
  %num_levels39 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %75, i32 0, i32 8
  %76 = load i32, i32* %num_levels39, align 4, !tbaa !108
  %cmp40 = icmp ult i32 %74, %76
  br i1 %cmp40, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %77 = load i32, i32* %l, align 4, !tbaa !5
  %idxprom42 = sext i32 %77 to i64
  %78 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %d_order.addr, align 8, !tbaa !1
  %levels = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %78, i32 0, i32 12
  %79 = load i32*, i32** %levels, align 8, !tbaa !15
  %arrayidx43 = getelementptr inbounds i32, i32* %79, i64 %idxprom42
  %80 = load i32, i32* %arrayidx43, align 4, !tbaa !5
  %81 = load i32, i32* %prev_l, align 4, !tbaa !5
  %idxprom44 = sext i32 %81 to i64
  %82 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %d_order.addr, align 8, !tbaa !1
  %levels45 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %82, i32 0, i32 12
  %83 = load i32*, i32** %levels45, align 8, !tbaa !15
  %arrayidx46 = getelementptr inbounds i32, i32* %83, i64 %idxprom44
  %84 = load i32, i32* %arrayidx46, align 4, !tbaa !5
  %cmp47 = icmp ugt i32 %80, %84
  br i1 %cmp47, label %if.then.49, label %if.end.122

if.then.49:                                       ; preds = %while.body
  %85 = load i32, i32* %l, align 4, !tbaa !5
  %mul50 = mul nsw i32 256, %85
  %86 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %d_order.addr, align 8, !tbaa !1
  %num_levels51 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %86, i32 0, i32 8
  %87 = load i32, i32* %num_levels51, align 4, !tbaa !108
  %div52 = udiv i32 %mul50, %87
  %88 = load i32, i32* %off, align 4, !tbaa !5
  %sub53 = sub i32 %div52, %88
  store i32 %sub53, i32* %t_level, align 4, !tbaa !5
  %89 = load i32, i32* %t_level, align 4, !tbaa !5
  %conv54 = trunc i32 %89 to i16
  %conv55 = sext i16 %conv54 to i32
  %shl = shl i32 %conv55, 7
  %90 = load i32, i32* %t_level, align 4, !tbaa !5
  %shr = ashr i32 %90, 1
  %add56 = add nsw i32 %shl, %shr
  %91 = load i32, i32* %t_level, align 4, !tbaa !5
  %shr57 = ashr i32 %91, 5
  %sub58 = sub nsw i32 %add56, %shr57
  %conv59 = trunc i32 %sub58 to i16
  %conv60 = sext i16 %conv59 to i64
  %92 = load i64, i64* %nshades, align 8, !tbaa !99
  %mul61 = mul i64 %conv60, %92
  %div62 = udiv i64 %mul61, 32761
  %conv63 = trunc i64 %div62 to i32
  store i32 %conv63, i32* %t_level_adjust, align 4, !tbaa !5
  %93 = load i32, i32* %t_level_adjust, align 4, !tbaa !5
  %94 = load i32, i32* %t_level, align 4, !tbaa !5
  %sub64 = sub nsw i32 %93, %94
  store i32 %sub64, i32* %delta, align 4, !tbaa !5
  %95 = load i32, i32* %delta_sum, align 4, !tbaa !5
  %96 = load i32, i32* %t_level, align 4, !tbaa !5
  %sub65 = sub nsw i32 %96, %95
  store i32 %sub65, i32* %t_level, align 4, !tbaa !5
  %97 = load i32, i32* %delta, align 4, !tbaa !5
  %98 = load i32, i32* %delta_sum, align 4, !tbaa !5
  %cmp66 = icmp sgt i32 %97, %98
  br i1 %cmp66, label %if.then.68, label %if.end.70

if.then.68:                                       ; preds = %if.then.49
  %99 = load i32, i32* %delta, align 4, !tbaa !5
  %100 = load i32, i32* %delta_sum, align 4, !tbaa !5
  %add69 = add nsw i32 %100, %99
  store i32 %add69, i32* %delta_sum, align 4, !tbaa !5
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.68, %if.then.49
  %101 = load i32, i32* %have_transfer, align 4, !tbaa !5
  %tobool = icmp ne i32 %101, 0
  br i1 %tobool, label %if.then.71, label %if.end.75

if.then.71:                                       ; preds = %if.end.70
  %102 = load i32, i32* %t_level, align 4, !tbaa !5
  %idxprom72 = sext i32 %102 to i64
  %103 = load i8*, i8** %transfer_inverse, align 8, !tbaa !1
  %arrayidx73 = getelementptr inbounds i8, i8* %103, i64 %idxprom72
  %104 = load i8, i8* %arrayidx73, align 1, !tbaa !85
  %conv74 = zext i8 %104 to i32
  store i32 %conv74, i32* %t_level, align 4, !tbaa !5
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.71, %if.end.70
  %105 = load i32, i32* %prev_l, align 4, !tbaa !5
  %idxprom76 = sext i32 %105 to i64
  %106 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %d_order.addr, align 8, !tbaa !1
  %levels77 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %106, i32 0, i32 12
  %107 = load i32*, i32** %levels77, align 8, !tbaa !15
  %arrayidx78 = getelementptr inbounds i32, i32* %107, i64 %idxprom76
  %108 = load i32, i32* %arrayidx78, align 4, !tbaa !5
  store i32 %108, i32* %j, align 4, !tbaa !5
  br label %for.cond.79

for.cond.79:                                      ; preds = %for.inc.119, %if.end.75
  %109 = load i32, i32* %j, align 4, !tbaa !5
  %110 = load i32, i32* %l, align 4, !tbaa !5
  %idxprom80 = sext i32 %110 to i64
  %111 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %d_order.addr, align 8, !tbaa !1
  %levels81 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %111, i32 0, i32 12
  %112 = load i32*, i32** %levels81, align 8, !tbaa !15
  %arrayidx82 = getelementptr inbounds i32, i32* %112, i64 %idxprom80
  %113 = load i32, i32* %arrayidx82, align 4, !tbaa !5
  %cmp83 = icmp ult i32 %109, %113
  br i1 %cmp83, label %for.body.85, label %for.end.121

for.body.85:                                      ; preds = %for.cond.79
  %114 = bitcast %struct.gs_int_point_s* %ppt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %114) #2
  %115 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %d_order.addr, align 8, !tbaa !1
  %procs86 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %115, i32 0, i32 10
  %116 = load %struct.gx_ht_order_procs_s*, %struct.gx_ht_order_procs_s** %procs86, align 8, !tbaa !110
  %bit_index = getelementptr inbounds %struct.gx_ht_order_procs_s, %struct.gx_ht_order_procs_s* %116, i32 0, i32 2
  %117 = load i32 (%struct.gx_ht_order_s*, i32, %struct.gs_int_point_s*)*, i32 (%struct.gx_ht_order_s*, i32, %struct.gs_int_point_s*)** %bit_index, align 8, !tbaa !169
  %118 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %d_order.addr, align 8, !tbaa !1
  %119 = load i32, i32* %j, align 4, !tbaa !5
  %call87 = call i32 %117(%struct.gx_ht_order_s* %118, i32 %119, %struct.gs_int_point_s* %ppt) #5
  store i32 %call87, i32* %code, align 4, !tbaa !5
  %120 = load i32, i32* %code, align 4, !tbaa !5
  %cmp88 = icmp slt i32 %120, 0
  br i1 %cmp88, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %for.body.85
  %121 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %121, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.91:                                        ; preds = %for.body.85
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %ppt, i32 0, i32 1
  %122 = load i32, i32* %y, align 4, !tbaa !88
  store i32 %122, i32* %row, align 4, !tbaa !5
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %ppt, i32 0, i32 0
  %123 = load i32, i32* %x, align 4, !tbaa !86
  store i32 %123, i32* %col, align 4, !tbaa !5
  %124 = load i32, i32* %col, align 4, !tbaa !5
  %125 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %d_order.addr, align 8, !tbaa !1
  %width92 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %125, i32 0, i32 1
  %126 = load i16, i16* %width92, align 2, !tbaa !101
  %conv93 = zext i16 %126 to i32
  %cmp94 = icmp slt i32 %124, %conv93
  br i1 %cmp94, label %if.then.96, label %if.end.118

if.then.96:                                       ; preds = %if.end.91
  store i32 0, i32* %kk, align 4, !tbaa !5
  br label %for.cond.97

for.cond.97:                                      ; preds = %for.inc.115, %if.then.96
  %127 = load i32, i32* %kk, align 4, !tbaa !5
  %128 = load i32, i32* %num_repeat, align 4, !tbaa !5
  %cmp98 = icmp slt i32 %127, %128
  br i1 %cmp98, label %for.body.100, label %for.end.117

for.body.100:                                     ; preds = %for.cond.97
  %129 = load i32, i32* %row, align 4, !tbaa !5
  %130 = load i32, i32* %kk, align 4, !tbaa !5
  %131 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %d_order.addr, align 8, !tbaa !1
  %height101 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %131, i32 0, i32 2
  %132 = load i16, i16* %height101, align 2, !tbaa !102
  %conv102 = zext i16 %132 to i32
  %mul103 = mul nsw i32 %130, %conv102
  %add104 = add nsw i32 %129, %mul103
  store i32 %add104, i32* %row_kk, align 4, !tbaa !5
  %133 = load i32, i32* %col, align 4, !tbaa !5
  %134 = load i32, i32* %kk, align 4, !tbaa !5
  %135 = load i32, i32* %shift, align 4, !tbaa !5
  %mul105 = mul nsw i32 %134, %135
  %add106 = add nsw i32 %133, %mul105
  store i32 %add106, i32* %col_kk, align 4, !tbaa !5
  %136 = load i32, i32* %col_kk, align 4, !tbaa !5
  %137 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %d_order.addr, align 8, !tbaa !1
  %width107 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %137, i32 0, i32 1
  %138 = load i16, i16* %width107, align 2, !tbaa !101
  %conv108 = zext i16 %138 to i32
  %rem = srem i32 %136, %conv108
  store i32 %rem, i32* %col_kk, align 4, !tbaa !5
  %139 = load i32, i32* %t_level, align 4, !tbaa !5
  %conv109 = trunc i32 %139 to i8
  %140 = load i8*, i8** %thresh, align 8, !tbaa !1
  %141 = load i32, i32* %col_kk, align 4, !tbaa !5
  %idx.ext = sext i32 %141 to i64
  %add.ptr = getelementptr inbounds i8, i8* %140, i64 %idx.ext
  %142 = load i32, i32* %row_kk, align 4, !tbaa !5
  %143 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %d_order.addr, align 8, !tbaa !1
  %width110 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %143, i32 0, i32 1
  %144 = load i16, i16* %width110, align 2, !tbaa !101
  %conv111 = zext i16 %144 to i32
  %mul112 = mul nsw i32 %142, %conv111
  %idx.ext113 = sext i32 %mul112 to i64
  %add.ptr114 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext113
  store i8 %conv109, i8* %add.ptr114, align 1, !tbaa !85
  br label %for.inc.115

for.inc.115:                                      ; preds = %for.body.100
  %145 = load i32, i32* %kk, align 4, !tbaa !5
  %inc116 = add nsw i32 %145, 1
  store i32 %inc116, i32* %kk, align 4, !tbaa !5
  br label %for.cond.97

for.end.117:                                      ; preds = %for.cond.97
  br label %if.end.118

if.end.118:                                       ; preds = %for.end.117, %if.end.91
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.118, %if.then.90
  %146 = bitcast %struct.gs_int_point_s* %ppt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %146) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.170 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.119

for.inc.119:                                      ; preds = %cleanup.cont
  %147 = load i32, i32* %j, align 4, !tbaa !5
  %inc120 = add nsw i32 %147, 1
  store i32 %inc120, i32* %j, align 4, !tbaa !5
  br label %for.cond.79

for.end.121:                                      ; preds = %for.cond.79
  %148 = load i32, i32* %l, align 4, !tbaa !5
  store i32 %148, i32* %prev_l, align 4, !tbaa !5
  br label %if.end.122

if.end.122:                                       ; preds = %for.end.121, %while.body
  %149 = load i32, i32* %l, align 4, !tbaa !5
  %inc123 = add nsw i32 %149, 1
  store i32 %inc123, i32* %l, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %150 = load i8*, i8** %thresh, align 8, !tbaa !1
  %151 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %d_order.addr, align 8, !tbaa !1
  %threshold124 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %151, i32 0, i32 17
  store i8* %150, i8** %threshold124, align 8, !tbaa !100
  %152 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info125 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %152, i32 0, i32 11
  %polarity = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info125, i32 0, i32 2
  %153 = load i32, i32* %polarity, align 4, !tbaa !170
  %cmp126 = icmp eq i32 %153, 0
  br i1 %cmp126, label %if.then.128, label %if.end.164

if.then.128:                                      ; preds = %while.end
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.129

for.cond.129:                                     ; preds = %for.inc.161, %if.then.128
  %154 = load i32, i32* %i, align 4, !tbaa !5
  %155 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %d_order.addr, align 8, !tbaa !1
  %height130 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %155, i32 0, i32 2
  %156 = load i16, i16* %height130, align 2, !tbaa !102
  %conv131 = zext i16 %156 to i32
  %cmp132 = icmp slt i32 %154, %conv131
  br i1 %cmp132, label %for.body.134, label %for.end.163

for.body.134:                                     ; preds = %for.cond.129
  %157 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %d_order.addr, align 8, !tbaa !1
  %width135 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %157, i32 0, i32 1
  %158 = load i16, i16* %width135, align 2, !tbaa !101
  %conv136 = zext i16 %158 to i32
  %sub137 = sub nsw i32 %conv136, 1
  store i32 %sub137, i32* %j, align 4, !tbaa !5
  br label %for.cond.138

for.cond.138:                                     ; preds = %for.inc.159, %for.body.134
  %159 = load i32, i32* %j, align 4, !tbaa !5
  %cmp139 = icmp sge i32 %159, 0
  br i1 %cmp139, label %for.body.141, label %for.end.160

for.body.141:                                     ; preds = %for.cond.138
  %160 = load i8*, i8** %thresh, align 8, !tbaa !1
  %161 = load i32, i32* %j, align 4, !tbaa !5
  %idx.ext142 = sext i32 %161 to i64
  %add.ptr143 = getelementptr inbounds i8, i8* %160, i64 %idx.ext142
  %162 = load i32, i32* %i, align 4, !tbaa !5
  %163 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %d_order.addr, align 8, !tbaa !1
  %width144 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %163, i32 0, i32 1
  %164 = load i16, i16* %width144, align 2, !tbaa !101
  %conv145 = zext i16 %164 to i32
  %mul146 = mul nsw i32 %162, %conv145
  %idx.ext147 = sext i32 %mul146 to i64
  %add.ptr148 = getelementptr inbounds i8, i8* %add.ptr143, i64 %idx.ext147
  %165 = load i8, i8* %add.ptr148, align 1, !tbaa !85
  %conv149 = zext i8 %165 to i32
  %sub150 = sub nsw i32 255, %conv149
  %conv151 = trunc i32 %sub150 to i8
  %166 = load i8*, i8** %thresh, align 8, !tbaa !1
  %167 = load i32, i32* %j, align 4, !tbaa !5
  %idx.ext152 = sext i32 %167 to i64
  %add.ptr153 = getelementptr inbounds i8, i8* %166, i64 %idx.ext152
  %168 = load i32, i32* %i, align 4, !tbaa !5
  %169 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %d_order.addr, align 8, !tbaa !1
  %width154 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %169, i32 0, i32 1
  %170 = load i16, i16* %width154, align 2, !tbaa !101
  %conv155 = zext i16 %170 to i32
  %mul156 = mul nsw i32 %168, %conv155
  %idx.ext157 = sext i32 %mul156 to i64
  %add.ptr158 = getelementptr inbounds i8, i8* %add.ptr153, i64 %idx.ext157
  store i8 %conv151, i8* %add.ptr158, align 1, !tbaa !85
  br label %for.inc.159

for.inc.159:                                      ; preds = %for.body.141
  %171 = load i32, i32* %j, align 4, !tbaa !5
  %dec = add nsw i32 %171, -1
  store i32 %dec, i32* %j, align 4, !tbaa !5
  br label %for.cond.138

for.end.160:                                      ; preds = %for.cond.138
  br label %for.inc.161

for.inc.161:                                      ; preds = %for.end.160
  %172 = load i32, i32* %i, align 4, !tbaa !5
  %inc162 = add nsw i32 %172, 1
  store i32 %inc162, i32* %i, align 4, !tbaa !5
  br label %for.cond.129

for.end.163:                                      ; preds = %for.cond.129
  br label %if.end.164

if.end.164:                                       ; preds = %for.end.163, %while.end
  %173 = load i8*, i8** %transfer_inverse, align 8, !tbaa !1
  %cmp165 = icmp ne i8* %173, null
  br i1 %cmp165, label %if.then.167, label %if.end.169

if.then.167:                                      ; preds = %if.end.164
  %174 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !1
  %procs168 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %174, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs168, i32 0, i32 2
  %175 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !116
  %176 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !1
  %177 = load i8*, i8** %transfer_inverse, align 8, !tbaa !1
  call void %175(%struct.gs_memory_s* %176, i8* %177, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i32 0, i32 0)) #5
  br label %if.end.169

if.end.169:                                       ; preds = %if.then.167, %if.end.164
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.170

cleanup.170:                                      ; preds = %if.end.169, %cleanup, %if.then.14, %if.then.6, %if.then
  %178 = bitcast i32* %off to i8*
  call void @llvm.lifetime.end(i64 4, i8* %178) #2
  %179 = bitcast i32* %kk to i8*
  call void @llvm.lifetime.end(i64 4, i8* %179) #2
  %180 = bitcast i32* %col_kk to i8*
  call void @llvm.lifetime.end(i64 4, i8* %180) #2
  %181 = bitcast i32* %row_kk to i8*
  call void @llvm.lifetime.end(i64 4, i8* %181) #2
  %182 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %182) #2
  %183 = bitcast i32* %num_repeat to i8*
  call void @llvm.lifetime.end(i64 4, i8* %183) #2
  %184 = bitcast i32* %is_inverting to i8*
  call void @llvm.lifetime.end(i64 4, i8* %184) #2
  call void @llvm.lifetime.end(i64 1, i8* %init_value) #2
  %185 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %185) #2
  %186 = bitcast i8** %transfer_inverse to i8*
  call void @llvm.lifetime.end(i64 8, i8* %186) #2
  %187 = bitcast i32* %have_transfer to i8*
  call void @llvm.lifetime.end(i64 4, i8* %187) #2
  %188 = bitcast i32* %delta_sum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %188) #2
  %189 = bitcast i32* %delta to i8*
  call void @llvm.lifetime.end(i64 4, i8* %189) #2
  %190 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %190) #2
  %191 = bitcast i32* %row to i8*
  call void @llvm.lifetime.end(i64 4, i8* %191) #2
  %192 = bitcast i32* %t_level_adjust to i8*
  call void @llvm.lifetime.end(i64 4, i8* %192) #2
  %193 = bitcast i32* %t_level to i8*
  call void @llvm.lifetime.end(i64 4, i8* %193) #2
  %194 = bitcast i64* %nshades to i8*
  call void @llvm.lifetime.end(i64 8, i8* %194) #2
  %195 = bitcast i64* %hsize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %195) #2
  %196 = bitcast i32* %max_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %196) #2
  %197 = bitcast %struct.gs_memory_s** %memory to i8*
  call void @llvm.lifetime.end(i64 8, i8* %197) #2
  %198 = bitcast i8** %thresh to i8*
  call void @llvm.lifetime.end(i64 8, i8* %198) #2
  %199 = bitcast i32* %prev_l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %199) #2
  %200 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %200) #2
  %201 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %201) #2
  %202 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %202) #2
  %203 = load i32, i32* %retval
  ret i32 %203
}

declare %struct.gs_ptr_procs_s* @enum_const_bytestring(%struct.enum_ptr_s*, %struct.gs_const_bytestring_s*) #1

declare void @reloc_const_bytestring(%struct.gs_const_bytestring_s*, %struct.gc_state_s*) #1

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind readonly }
attributes #7 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 72}
!8 = !{!"gx_ht_order_s", !9, i64 0, !10, i64 40, !10, i64 42, !10, i64 44, !10, i64 46, !10, i64 48, !10, i64 50, !6, i64 52, !6, i64 56, !6, i64 60, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !12, i64 112, !2, i64 144, !6, i64 152}
!9 = !{!"gx_ht_cell_params_s", !10, i64 0, !10, i64 2, !10, i64 4, !10, i64 6, !10, i64 8, !10, i64 10, !11, i64 16, !10, i64 24, !10, i64 26, !6, i64 28, !6, i64 32, !6, i64 36}
!10 = !{!"short", !3, i64 0}
!11 = !{!"long", !3, i64 0}
!12 = !{!"gx_ht_order_screen_params_s", !13, i64 0, !11, i64 24}
!13 = !{!"gs_matrix_s", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20}
!14 = !{!"float", !3, i64 0}
!15 = !{!8, !2, i64 80}
!16 = !{!17, !2, i64 0}
!17 = !{!"enum_ptr_s", !2, i64 0, !6, i64 8}
!18 = !{!8, !2, i64 88}
!19 = !{!8, !2, i64 96}
!20 = !{!8, !2, i64 104}
!21 = !{!22, !2, i64 0}
!22 = !{!"gc_procs_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!23 = !{!24, !2, i64 32}
!24 = !{!"gs_memory_struct_type_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!25 = !{!24, !2, i64 40}
!26 = !{!27, !3, i64 0}
!27 = !{!"gs_halftone_s", !3, i64 0, !28, i64 8, !3, i64 32}
!28 = !{!"rc_header_s", !11, i64 0, !2, i64 8, !2, i64 16}
!29 = !{!30, !2, i64 32}
!30 = !{!"gs_spot_halftone_s", !31, i64 0, !6, i64 24, !2, i64 32, !32, i64 40}
!31 = !{!"gs_screen_halftone_s", !14, i64 0, !14, i64 4, !2, i64 8, !14, i64 16, !14, i64 20}
!32 = !{!"gs_mapping_closure_s", !2, i64 0, !2, i64 8}
!33 = !{!30, !2, i64 48}
!34 = !{!35, !2, i64 0}
!35 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!36 = !{!35, !6, i64 8}
!37 = !{!17, !6, i64 8}
!38 = !{!39, !2, i64 24}
!39 = !{!"gs_client_order_halftone_s", !6, i64 0, !6, i64 4, !6, i64 8, !2, i64 16, !2, i64 24, !32, i64 32}
!40 = !{!41, !2, i64 0}
!41 = !{!"gs_multiple_halftone_s", !2, i64 0, !6, i64 8, !2, i64 16}
!42 = !{!43, !2, i64 40}
!43 = !{!"gs_threshold_halftone_s", !6, i64 0, !6, i64 4, !32, i64 8, !35, i64 24, !2, i64 40}
!44 = !{!43, !2, i64 16}
!45 = !{!46, !2, i64 16}
!46 = !{!"gs_threshold2_halftone_s", !6, i64 0, !6, i64 4, !32, i64 8, !6, i64 24, !6, i64 28, !6, i64 32, !47, i64 40}
!47 = !{!"gs_const_bytestring_s", !2, i64 0, !6, i64 8, !2, i64 16}
!48 = !{!39, !2, i64 40}
!49 = !{!22, !2, i64 16}
!50 = !{!51, !2, i64 8}
!51 = !{!"gs_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !52, i64 24, !6, i64 128, !54, i64 132, !6, i64 168, !55, i64 176, !55, i64 192, !6, i64 208, !6, i64 212, !10, i64 216, !3, i64 220, !57, i64 224, !57, i64 228, !58, i64 232, !11, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !14, i64 296, !59, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !14, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !60, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !61, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !61, i64 1336, !2, i64 1616, !13, i64 1624, !6, i64 1648, !13, i64 1652, !6, i64 1676, !2, i64 1680, !2, i64 1688, !2, i64 1696, !2, i64 1704, !11, i64 1712, !11, i64 1720, !2, i64 1728, !6, i64 1736, !3, i64 1744, !2, i64 1792, !2, i64 1800, !54, i64 1808, !6, i64 1844, !3, i64 1848, !3, i64 1852, !2, i64 1856, !6, i64 1864, !2, i64 1872, !2, i64 1880, !62, i64 1888}
!52 = !{!"gx_line_params_s", !14, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20, !14, i64 24, !14, i64 28, !14, i64 32, !6, i64 36, !13, i64 40, !53, i64 64}
!53 = !{!"gx_dash_params_s", !2, i64 0, !6, i64 8, !14, i64 12, !6, i64 16, !14, i64 20, !6, i64 24, !6, i64 28, !14, i64 32}
!54 = !{!"gs_matrix_fixed_s", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!55 = !{!"gs_point_s", !56, i64 0, !56, i64 8}
!56 = !{!"double", !3, i64 0}
!57 = !{!"gs_transparency_source_s", !14, i64 0}
!58 = !{!"gs_xstate_trans_flags", !6, i64 0, !6, i64 4}
!59 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!60 = !{!"gx_transfer_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !2, i64 56}
!61 = !{!"gs_devicen_color_map_s", !6, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !11, i64 16, !3, i64 24}
!62 = !{!"gs_state_client_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!63 = !{!31, !2, i64 8}
!64 = !{!55, !56, i64 0}
!65 = !{!55, !56, i64 8}
!66 = !{!51, !2, i64 368}
!67 = !{i64 0, i64 4, !68, i64 4, i64 4, !68, i64 8, i64 8, !1, i64 16, i64 4, !68, i64 20, i64 4, !68}
!68 = !{!14, !14, i64 0}
!69 = !{!51, !2, i64 1872}
!70 = !{!71, !3, i64 110}
!71 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !28, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !72, i64 96, !74, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !11, i64 928, !11, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !11, i64 968, !11, i64 976, !75, i64 984, !6, i64 1052, !6, i64 1056, !76, i64 1064, !2, i64 1104, !3, i64 1112, !78, i64 1120, !79, i64 1144}
!72 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !10, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !73, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !11, i64 704, !6, i64 712}
!73 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!74 = !{!"gx_device_cached_colors_s", !11, i64 0, !11, i64 8}
!75 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!76 = !{!"gdev_space_params_s", !11, i64 0, !11, i64 8, !77, i64 16, !6, i64 32, !3, i64 36}
!77 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !11, i64 8}
!78 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!79 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!80 = !{!51, !2, i64 392}
!81 = !{!82, !2, i64 200}
!82 = !{!"gx_device_halftone_s", !8, i64 0, !28, i64 160, !11, i64 184, !3, i64 192, !2, i64 200, !6, i64 208, !6, i64 212, !6, i64 216, !6, i64 220}
!83 = !{!84, !6, i64 56}
!84 = !{!"gx_ht_order_component_s", !8, i64 0, !6, i64 160, !6, i64 164}
!85 = !{!3, !3, i64 0}
!86 = !{!87, !6, i64 0}
!87 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!88 = !{!87, !6, i64 4}
!89 = !{!90, !2, i64 16}
!90 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16}
!91 = !{!92, !2, i64 0}
!92 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !87, i64 352, !6, i64 360, !93, i64 368, !95, i64 632}
!93 = !{!"gs_client_color_s", !2, i64 0, !94, i64 8}
!94 = !{!"gs_paint_color_s", !3, i64 0}
!95 = !{!"_mask", !96, i64 0, !11, i64 8, !2, i64 16}
!96 = !{!"mp_", !6, i64 0, !6, i64 4}
!97 = !{i64 0, i64 4, !5, i64 4, i64 4, !5}
!98 = !{i64 0, i64 4, !85, i64 8, i64 8, !99, i64 16, i64 8, !1, i64 24, i64 8, !1, i64 32, i64 4, !68, i64 36, i64 4, !68, i64 40, i64 8, !1, i64 48, i64 4, !68, i64 52, i64 4, !68, i64 32, i64 96, !85, i64 32, i64 4, !68, i64 36, i64 4, !68, i64 40, i64 8, !1, i64 48, i64 4, !68, i64 52, i64 4, !68, i64 56, i64 4, !68, i64 60, i64 4, !68, i64 64, i64 8, !1, i64 72, i64 4, !68, i64 76, i64 4, !68, i64 80, i64 4, !68, i64 84, i64 4, !68, i64 88, i64 8, !1, i64 96, i64 4, !68, i64 100, i64 4, !68, i64 104, i64 4, !68, i64 108, i64 4, !68, i64 112, i64 8, !1, i64 120, i64 4, !68, i64 124, i64 4, !68, i64 32, i64 4, !68, i64 36, i64 4, !68, i64 40, i64 8, !1, i64 48, i64 4, !68, i64 52, i64 4, !68, i64 56, i64 4, !5, i64 64, i64 8, !1, i64 72, i64 8, !1, i64 80, i64 8, !1, i64 32, i64 4, !5, i64 36, i64 4, !5, i64 40, i64 8, !1, i64 48, i64 8, !1, i64 56, i64 8, !1, i64 64, i64 4, !5, i64 72, i64 8, !1, i64 32, i64 4, !5, i64 36, i64 4, !5, i64 40, i64 8, !1, i64 48, i64 8, !1, i64 56, i64 4, !5, i64 60, i64 4, !5, i64 64, i64 4, !5, i64 72, i64 8, !1, i64 80, i64 4, !5, i64 88, i64 8, !1, i64 32, i64 4, !5, i64 36, i64 4, !5, i64 40, i64 4, !5, i64 48, i64 8, !1, i64 56, i64 8, !1, i64 64, i64 8, !1, i64 72, i64 8, !1, i64 32, i64 8, !1, i64 40, i64 4, !5, i64 48, i64 8, !1}
!99 = !{!11, !11, i64 0}
!100 = !{!8, !2, i64 144}
!101 = !{!8, !10, i64 40}
!102 = !{!8, !10, i64 42}
!103 = !{!8, !10, i64 44}
!104 = !{!8, !10, i64 46}
!105 = !{!8, !10, i64 48}
!106 = !{!8, !10, i64 50}
!107 = !{!8, !6, i64 52}
!108 = !{!8, !6, i64 56}
!109 = !{!8, !6, i64 60}
!110 = !{!8, !2, i64 64}
!111 = !{!112, !2, i64 88}
!112 = !{!"gs_memory_s", !2, i64 0, !113, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!113 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!114 = !{!115, !6, i64 0}
!115 = !{!"gx_ht_order_procs_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32}
!116 = !{!112, !2, i64 24}
!117 = !{i64 0, i64 2, !118, i64 2, i64 2, !118, i64 4, i64 2, !118, i64 6, i64 2, !118, i64 8, i64 2, !118, i64 10, i64 2, !118, i64 16, i64 8, !99, i64 24, i64 2, !118, i64 26, i64 2, !118, i64 28, i64 4, !5, i64 32, i64 4, !5, i64 36, i64 4, !5, i64 40, i64 2, !118, i64 42, i64 2, !118, i64 44, i64 2, !118, i64 46, i64 2, !118, i64 48, i64 2, !118, i64 50, i64 2, !118, i64 52, i64 4, !5, i64 56, i64 4, !5, i64 60, i64 4, !5, i64 64, i64 8, !1, i64 72, i64 8, !1, i64 80, i64 8, !1, i64 88, i64 8, !1, i64 96, i64 8, !1, i64 104, i64 8, !1, i64 112, i64 4, !68, i64 116, i64 4, !68, i64 120, i64 4, !68, i64 124, i64 4, !68, i64 128, i64 4, !68, i64 132, i64 4, !68, i64 136, i64 8, !99, i64 144, i64 8, !1, i64 152, i64 4, !5}
!118 = !{!10, !10, i64 0}
!119 = !{!8, !10, i64 0}
!120 = !{!8, !10, i64 2}
!121 = !{!8, !10, i64 4}
!122 = !{!8, !10, i64 6}
!123 = !{!8, !10, i64 8}
!124 = !{!8, !10, i64 10}
!125 = !{!126, !6, i64 0}
!126 = !{!"gx_ht_bit_s", !6, i64 0, !6, i64 4}
!127 = !{!126, !6, i64 4}
!128 = !{!129, !11, i64 0}
!129 = !{!"gx_transfer_map_s", !28, i64 0, !2, i64 24, !32, i64 32, !11, i64 48, !3, i64 56}
!130 = !{!129, !2, i64 16}
!131 = !{!129, !2, i64 8}
!132 = !{!112, !2, i64 200}
!133 = !{!82, !6, i64 208}
!134 = !{!84, !2, i64 88}
!135 = !{!82, !2, i64 88}
!136 = !{!71, !2, i64 1544}
!137 = !{!82, !6, i64 212}
!138 = !{!82, !2, i64 168}
!139 = !{!140, !2, i64 8}
!140 = !{!"gs_imager_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !52, i64 24, !6, i64 128, !54, i64 132, !6, i64 168, !55, i64 176, !55, i64 192, !6, i64 208, !6, i64 212, !10, i64 216, !3, i64 220, !57, i64 224, !57, i64 228, !58, i64 232, !11, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !14, i64 296, !59, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !14, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !60, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !61, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !61, i64 1336}
!141 = !{!82, !11, i64 184}
!142 = !{!82, !3, i64 192}
!143 = !{!112, !2, i64 104}
!144 = !{!84, !6, i64 160}
!145 = !{!82, !6, i64 216}
!146 = !{!82, !6, i64 220}
!147 = !{!140, !2, i64 392}
!148 = !{!82, !11, i64 160}
!149 = !{!112, !2, i64 72}
!150 = !{!82, !2, i64 176}
!151 = !{i64 0, i64 8, !99, i64 8, i64 8, !1, i64 16, i64 8, !1}
!152 = !{i64 0, i64 2, !118, i64 2, i64 2, !118, i64 4, i64 2, !118, i64 6, i64 2, !118, i64 8, i64 2, !118, i64 10, i64 2, !118, i64 16, i64 8, !99, i64 24, i64 2, !118, i64 26, i64 2, !118, i64 28, i64 4, !5, i64 32, i64 4, !5, i64 36, i64 4, !5, i64 40, i64 2, !118, i64 42, i64 2, !118, i64 44, i64 2, !118, i64 46, i64 2, !118, i64 48, i64 2, !118, i64 50, i64 2, !118, i64 52, i64 4, !5, i64 56, i64 4, !5, i64 60, i64 4, !5, i64 64, i64 8, !1, i64 72, i64 8, !1, i64 80, i64 8, !1, i64 88, i64 8, !1, i64 96, i64 8, !1, i64 104, i64 8, !1, i64 112, i64 4, !68, i64 116, i64 4, !68, i64 120, i64 4, !68, i64 124, i64 4, !68, i64 128, i64 4, !68, i64 132, i64 4, !68, i64 136, i64 8, !99, i64 144, i64 8, !1, i64 152, i64 4, !5, i64 160, i64 8, !99, i64 168, i64 8, !1, i64 176, i64 8, !1, i64 184, i64 8, !99, i64 192, i64 4, !85, i64 200, i64 8, !1, i64 208, i64 4, !5, i64 212, i64 4, !5, i64 216, i64 4, !5, i64 220, i64 4, !5}
!153 = !{i64 0, i64 2, !118, i64 2, i64 2, !118, i64 4, i64 2, !118, i64 6, i64 2, !118, i64 8, i64 2, !118, i64 10, i64 2, !118, i64 16, i64 8, !99, i64 24, i64 2, !118, i64 26, i64 2, !118, i64 28, i64 4, !5, i64 32, i64 4, !5, i64 36, i64 4, !5}
!154 = !{!140, !2, i64 488}
!155 = !{!140, !2, i64 440}
!156 = !{!140, !6, i64 432}
!157 = !{!140, !2, i64 456}
!158 = !{!140, !6, i64 448}
!159 = !{!140, !2, i64 472}
!160 = !{!140, !6, i64 464}
!161 = !{!84, !2, i64 104}
!162 = !{!27, !2, i64 16}
!163 = !{!71, !6, i64 100}
!164 = !{!27, !11, i64 8}
!165 = !{!27, !2, i64 24}
!166 = !{!8, !6, i64 152}
!167 = !{!71, !6, i64 120}
!168 = !{!71, !6, i64 124}
!169 = !{!115, !2, i64 16}
!170 = !{!71, !3, i64 104}
