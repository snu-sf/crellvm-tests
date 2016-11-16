; ModuleID = './gxdhtserial.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_ht_order_procs_s = type { i32, i32 (%struct.gx_ht_order_s*, i8*)*, i32 (%struct.gx_ht_order_s*, i32, %struct.gs_int_point_s*)*, i32 (%struct.gx_ht_tile_s*, i32, %struct.gx_ht_order_s*)*, i32 (%struct.gx_ht_order_s*, i16, i8*, i32, i32, i32, i32, i32)* }
%struct.gx_ht_order_s = type { %struct.gx_ht_cell_params_s, i16, i16, i16, i16, i16, i16, i32, i32, i32, %struct.gx_ht_order_procs_s*, %struct.gs_memory_s*, i32*, i8*, %struct.gx_ht_cache_s*, %struct.gx_transfer_map_s*, %struct.gx_ht_order_screen_params_s, i8*, i32 }
%struct.gx_ht_cell_params_s = type { i16, i16, i16, i16, i16, i16, i64, i16, i16, i32, i32, i32 }
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gs_gc_root_s = type { %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i32 }
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gx_ht_cache_s = type { i8*, i32, %struct.gx_ht_tile_s*, i32, %struct.gx_ht_order_s, i32, i32, i32, i64, %struct.gx_ht_tile_s* (%struct.gx_ht_cache_s*, i32)* }
%struct.gx_ht_tile_s = type { %struct.gx_strip_bitmap_s, i32, i32 }
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gx_transfer_map_s = type { %struct.rc_header_s, float (double, %struct.gx_transfer_map_s*)*, %struct.gs_mapping_closure_s, i64, [256 x i16] }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.gs_mapping_closure_s = type { float (double, %struct.gx_transfer_map_s*, i8*)*, i8* }
%struct.gx_ht_order_screen_params_s = type { %struct.gs_matrix_s, i64 }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gx_device_halftone_resource_s = type { i8*, i32, i32, i32, i32, i32*, i8*, i32 }
%struct.gx_device_halftone_s = type { %struct.gx_ht_order_s, %struct.rc_header_s, i64, i32, %struct.gx_ht_order_component_s*, i32, i32, i32, i32 }
%struct.gx_ht_order_component_s = type { %struct.gx_ht_order_s, i32, i32 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
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
%struct.gs_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s, %struct.gs_state_s*, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, %struct.gx_path_s*, %struct.gx_clip_path_s*, %struct.gx_clip_stack_s*, %struct.gx_clip_path_s*, i64, i64, %struct.gx_clip_path_s*, i32, [2 x %struct.anon], %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_matrix_fixed_s, i32, i32, i32, %struct.gs_state_s*, i32, %struct.gx_device_s*, %struct.gs_device_filter_stack_s*, %struct.gs_state_client_procs_s }
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
%struct.gs_halftone_s = type { i32, %struct.rc_header_s, %union.anon }
%union.anon = type { %struct.gs_colorscreen_halftone_s }
%struct.gs_colorscreen_halftone_s = type { %union._css }
%union._css = type { [4 x %struct.gs_screen_halftone_s] }
%struct.gs_screen_halftone_s = type { float, float, float (double, double)*, float, float }
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
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon.1 }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.stream_s = type opaque
%struct.client_color_space_data_s = type { void (%struct.gs_color_space_s*, i32)* }
%union.anon.1 = type { %struct.gs_device_n_params_s }
%struct.gs_device_n_params_s = type { i64*, i32, %struct.gs_device_n_map_s*, %struct.gs_device_n_attributes_s*, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gs_device_n_map_s = type opaque
%struct.gs_device_n_attributes_s = type opaque
%struct.gx_cie_joint_caches_s = type opaque
%struct.gx_path_s = type opaque
%struct.gx_clip_stack_s = type opaque
%struct.gx_clip_path_s = type opaque
%struct.anon = type { %struct.gs_color_space_s*, %struct.gs_client_color_s*, %struct.gx_device_color_s* }
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

@ht_order_procs_table = external constant [2 x %struct.gx_ht_order_procs_s], align 16
@gx_device_halftone_list = external constant [0 x %struct.gx_device_halftone_resource_s** ()*], align 8
@.str = private unnamed_addr constant [21 x i8] c"gx_ht_read_component\00", align 1
@st_transfer_map = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"gx_ht_read_tf\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gx_ht_write(%struct.gx_device_halftone_s* %pdht, %struct.gx_device_s* %dev, i8* %data, i32* %psize) #0 {
entry:
  %retval = alloca i32, align 4
  %pdht.addr = alloca %struct.gx_device_halftone_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %data.addr = alloca i8*, align 8
  %psize.addr = alloca i32*, align 8
  %num_dev_comps = alloca i32, align 4
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %req_size = alloca i32, align 4
  %used_size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %tmp_size = alloca i32, align 4
  %tmp_size28 = alloca i32, align 4
  store %struct.gx_device_halftone_s* %pdht, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32* %psize, i32** %psize.addr, align 8, !tbaa !1
  %0 = bitcast i32* %num_dev_comps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %req_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 2, i32* %req_size, align 4, !tbaa !5
  %4 = bitcast i32* %used_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 2, i32* %used_size, align 4, !tbaa !5
  %5 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_halftone_s* %5, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %components = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %6, i32 0, i32 4
  %7 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components, align 8, !tbaa !7
  %cmp1 = icmp eq %struct.gx_ht_order_component_s* %7, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.45

if.end:                                           ; preds = %lor.lhs.false
  %8 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %num_dev_comp = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %8, i32 0, i32 6
  %9 = load i32, i32* %num_dev_comp, align 4, !tbaa !17
  store i32 %9, i32* %num_dev_comps, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  store i32 -15, i32* %code, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, i32* %i, align 4, !tbaa !5
  %11 = load i32, i32* %num_dev_comps, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %10, %11
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %12 = load i32, i32* %code, align 4, !tbaa !5
  %cmp3 = icmp eq i32 %12, -15
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %13 = phi i1 [ false, %for.cond ], [ %cmp3, %land.rhs ]
  br i1 %13, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %14 = bitcast i32* %tmp_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  store i32 0, i32* %tmp_size, align 4, !tbaa !5
  %15 = load i32, i32* %i, align 4, !tbaa !5
  %16 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %16 to i64
  %17 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %components4 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %17, i32 0, i32 4
  %18 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components4, align 8, !tbaa !7
  %arrayidx = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %18, i64 %idxprom
  %comp_number = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx, i32 0, i32 1
  %19 = load i32, i32* %comp_number, align 4, !tbaa !18
  %cmp5 = icmp ne i32 %15, %19
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %for.body
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %for.body
  %20 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom8 = sext i32 %20 to i64
  %21 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %components9 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %21, i32 0, i32 4
  %22 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components9, align 8, !tbaa !7
  %arrayidx10 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %22, i64 %idxprom8
  %23 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %call = call i32 @gx_ht_write_component(%struct.gx_ht_order_component_s* %arrayidx10, i8* %23, i32* %tmp_size) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %24 = load i32, i32* %tmp_size, align 4, !tbaa !5
  %25 = load i32, i32* %req_size, align 4, !tbaa !5
  %add = add i32 %25, %24
  store i32 %add, i32* %req_size, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.7, %if.then.6
  %26 = bitcast i32* %tmp_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.45 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %27 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %land.end
  %28 = load i32, i32* %code, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %28, 0
  br i1 %cmp11, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.end
  %29 = load i32, i32* %code, align 4, !tbaa !5
  %cmp12 = icmp ne i32 %29, -15
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %land.lhs.true
  %30 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.45

if.else:                                          ; preds = %land.lhs.true, %for.end
  %31 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  %32 = load i32, i32* %31, align 4, !tbaa !5
  %33 = load i32, i32* %req_size, align 4, !tbaa !5
  %cmp14 = icmp ult i32 %32, %33
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.else
  %34 = load i32, i32* %req_size, align 4, !tbaa !5
  %35 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  store i32 %34, i32* %35, align 4, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.45

if.end.16:                                        ; preds = %if.else
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16
  %36 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  %37 = load i32, i32* %36, align 4, !tbaa !5
  store i32 %37, i32* %req_size, align 4, !tbaa !5
  %38 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %38, i32 0, i32 3
  %39 = load i32, i32* %type, align 4, !tbaa !20
  %conv = trunc i32 %39 to i8
  %40 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr, i8** %data.addr, align 8, !tbaa !1
  store i8 %conv, i8* %40, align 1, !tbaa !21
  %41 = load i32, i32* %num_dev_comps, align 4, !tbaa !5
  %conv18 = trunc i32 %41 to i8
  %42 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %incdec.ptr19 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr19, i8** %data.addr, align 8, !tbaa !1
  store i8 %conv18, i8* %42, align 1, !tbaa !21
  store i32 0, i32* %i, align 4, !tbaa !5
  store i32 0, i32* %code, align 4, !tbaa !5
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.34, %if.end.17
  %43 = load i32, i32* %i, align 4, !tbaa !5
  %44 = load i32, i32* %num_dev_comps, align 4, !tbaa !5
  %cmp21 = icmp slt i32 %43, %44
  br i1 %cmp21, label %land.rhs.23, label %land.end.26

land.rhs.23:                                      ; preds = %for.cond.20
  %45 = load i32, i32* %code, align 4, !tbaa !5
  %cmp24 = icmp eq i32 %45, 0
  br label %land.end.26

land.end.26:                                      ; preds = %land.rhs.23, %for.cond.20
  %46 = phi i1 [ false, %for.cond.20 ], [ %cmp24, %land.rhs.23 ]
  br i1 %46, label %for.body.27, label %for.end.36

for.body.27:                                      ; preds = %land.end.26
  %47 = bitcast i32* %tmp_size28 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #1
  %48 = load i32, i32* %req_size, align 4, !tbaa !5
  %49 = load i32, i32* %used_size, align 4, !tbaa !5
  %sub = sub i32 %48, %49
  store i32 %sub, i32* %tmp_size28, align 4, !tbaa !5
  %50 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom29 = sext i32 %50 to i64
  %51 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %components30 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %51, i32 0, i32 4
  %52 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components30, align 8, !tbaa !7
  %arrayidx31 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %52, i64 %idxprom29
  %53 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %call32 = call i32 @gx_ht_write_component(%struct.gx_ht_order_component_s* %arrayidx31, i8* %53, i32* %tmp_size28) #5
  store i32 %call32, i32* %code, align 4, !tbaa !5
  %54 = load i32, i32* %tmp_size28, align 4, !tbaa !5
  %55 = load i32, i32* %used_size, align 4, !tbaa !5
  %add33 = add i32 %55, %54
  store i32 %add33, i32* %used_size, align 4, !tbaa !5
  %56 = load i32, i32* %tmp_size28, align 4, !tbaa !5
  %57 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %idx.ext = zext i32 %56 to i64
  %add.ptr = getelementptr inbounds i8, i8* %57, i64 %idx.ext
  store i8* %add.ptr, i8** %data.addr, align 8, !tbaa !1
  %58 = bitcast i32* %tmp_size28 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.body.27
  %59 = load i32, i32* %i, align 4, !tbaa !5
  %inc35 = add nsw i32 %59, 1
  store i32 %inc35, i32* %i, align 4, !tbaa !5
  br label %for.cond.20

for.end.36:                                       ; preds = %land.end.26
  %60 = load i32, i32* %code, align 4, !tbaa !5
  %cmp37 = icmp slt i32 %60, 0
  br i1 %cmp37, label %if.then.39, label %if.end.44

if.then.39:                                       ; preds = %for.end.36
  %61 = load i32, i32* %code, align 4, !tbaa !5
  %cmp40 = icmp eq i32 %61, -15
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.then.39
  store i32 -1, i32* %code, align 4, !tbaa !5
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %if.then.39
  %62 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %62, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.45

if.end.44:                                        ; preds = %for.end.36
  %63 = load i32, i32* %used_size, align 4, !tbaa !5
  %64 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  store i32 %63, i32* %64, align 4, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.45

cleanup.45:                                       ; preds = %if.end.44, %if.end.43, %if.then.15, %if.then.13, %cleanup, %if.then
  %65 = bitcast i32* %used_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast i32* %req_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = bitcast i32* %num_dev_comps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  %70 = load i32, i32* %retval
  ret i32 %70
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @gx_ht_write_component(%struct.gx_ht_order_component_s* %pcomp, i8* %data, i32* %psize) #0 {
entry:
  %retval = alloca i32, align 4
  %pcomp.addr = alloca %struct.gx_ht_order_component_s*, align 8
  %data.addr = alloca i8*, align 8
  %psize.addr = alloca i32*, align 8
  %porder = alloca %struct.gx_ht_order_s*, align 8
  %data0 = alloca i8*, align 8
  %code = alloca i32, align 4
  %levels_size = alloca i32, align 4
  %bits_size = alloca i32, align 4
  %tmp_size = alloca i32, align 4
  %req_size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_ht_order_component_s* %pcomp, %struct.gx_ht_order_component_s** %pcomp.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32* %psize, i32** %psize.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_ht_order_s** %porder to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %pcomp.addr, align 8, !tbaa !1
  %corder = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %1, i32 0, i32 0
  store %struct.gx_ht_order_s* %corder, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %2 = bitcast i8** %data0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %data.addr, align 8, !tbaa !1
  store i8* %3, i8** %data0, align 8, !tbaa !1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %levels_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %bits_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %tmp_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 0, i32* %tmp_size, align 4, !tbaa !5
  %8 = bitcast i32* %req_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %num_levels = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %9, i32 0, i32 8
  %10 = load i32, i32* %num_levels, align 4, !tbaa !22
  %conv = zext i32 %10 to i64
  %mul = mul i64 %conv, 4
  %conv1 = trunc i64 %mul to i32
  store i32 %conv1, i32* %levels_size, align 4, !tbaa !5
  %11 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %num_bits = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %11, i32 0, i32 9
  %12 = load i32, i32* %num_bits, align 4, !tbaa !23
  %13 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %13, i32 0, i32 10
  %14 = load %struct.gx_ht_order_procs_s*, %struct.gx_ht_order_procs_s** %procs, align 8, !tbaa !24
  %bit_data_elt_size = getelementptr inbounds %struct.gx_ht_order_procs_s, %struct.gx_ht_order_procs_s* %14, i32 0, i32 0
  %15 = load i32, i32* %bit_data_elt_size, align 4, !tbaa !25
  %mul2 = mul i32 %12, %15
  store i32 %mul2, i32* %bits_size, align 4, !tbaa !5
  %16 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %16, i32 0, i32 1
  %17 = load i16, i16* %width, align 2, !tbaa !27
  %conv3 = zext i16 %17 to i32
  %cmp = icmp ult i32 %conv3, 128
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.13

cond.false:                                       ; preds = %entry
  %18 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %width5 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %18, i32 0, i32 1
  %19 = load i16, i16* %width5, align 2, !tbaa !27
  %conv6 = zext i16 %19 to i32
  %cmp7 = icmp ult i32 %conv6, 16384
  br i1 %cmp7, label %cond.true.9, label %cond.false.10

cond.true.9:                                      ; preds = %cond.false
  br label %cond.end

cond.false.10:                                    ; preds = %cond.false
  %20 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %width11 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %20, i32 0, i32 1
  %21 = load i16, i16* %width11, align 2, !tbaa !27
  %conv12 = zext i16 %21 to i32
  %call = call i32 @enc_u_size_uint(i32 %conv12) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false.10, %cond.true.9
  %cond = phi i32 [ 2, %cond.true.9 ], [ %call, %cond.false.10 ]
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.end, %cond.true
  %cond14 = phi i32 [ 1, %cond.true ], [ %cond, %cond.end ]
  %22 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %22, i32 0, i32 2
  %23 = load i16, i16* %height, align 2, !tbaa !28
  %conv15 = zext i16 %23 to i32
  %cmp16 = icmp ult i32 %conv15, 128
  br i1 %cmp16, label %cond.true.18, label %cond.false.19

cond.true.18:                                     ; preds = %cond.end.13
  br label %cond.end.31

cond.false.19:                                    ; preds = %cond.end.13
  %24 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %height20 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %24, i32 0, i32 2
  %25 = load i16, i16* %height20, align 2, !tbaa !28
  %conv21 = zext i16 %25 to i32
  %cmp22 = icmp ult i32 %conv21, 16384
  br i1 %cmp22, label %cond.true.24, label %cond.false.25

cond.true.24:                                     ; preds = %cond.false.19
  br label %cond.end.29

cond.false.25:                                    ; preds = %cond.false.19
  %26 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %height26 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %26, i32 0, i32 2
  %27 = load i16, i16* %height26, align 2, !tbaa !28
  %conv27 = zext i16 %27 to i32
  %call28 = call i32 @enc_u_size_uint(i32 %conv27) #5
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.false.25, %cond.true.24
  %cond30 = phi i32 [ 2, %cond.true.24 ], [ %call28, %cond.false.25 ]
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.end.29, %cond.true.18
  %cond32 = phi i32 [ 1, %cond.true.18 ], [ %cond30, %cond.end.29 ]
  %add = add nsw i32 %cond14, %cond32
  %28 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %shift = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %28, i32 0, i32 4
  %29 = load i16, i16* %shift, align 2, !tbaa !29
  %conv33 = zext i16 %29 to i32
  %cmp34 = icmp ult i32 %conv33, 128
  br i1 %cmp34, label %cond.true.36, label %cond.false.37

cond.true.36:                                     ; preds = %cond.end.31
  br label %cond.end.49

cond.false.37:                                    ; preds = %cond.end.31
  %30 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %shift38 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %30, i32 0, i32 4
  %31 = load i16, i16* %shift38, align 2, !tbaa !29
  %conv39 = zext i16 %31 to i32
  %cmp40 = icmp ult i32 %conv39, 16384
  br i1 %cmp40, label %cond.true.42, label %cond.false.43

cond.true.42:                                     ; preds = %cond.false.37
  br label %cond.end.47

cond.false.43:                                    ; preds = %cond.false.37
  %32 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %shift44 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %32, i32 0, i32 4
  %33 = load i16, i16* %shift44, align 2, !tbaa !29
  %conv45 = zext i16 %33 to i32
  %call46 = call i32 @enc_u_size_uint(i32 %conv45) #5
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.43, %cond.true.42
  %cond48 = phi i32 [ 2, %cond.true.42 ], [ %call46, %cond.false.43 ]
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.end.47, %cond.true.36
  %cond50 = phi i32 [ 1, %cond.true.36 ], [ %cond48, %cond.end.47 ]
  %add51 = add nsw i32 %add, %cond50
  %34 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %num_levels52 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %34, i32 0, i32 8
  %35 = load i32, i32* %num_levels52, align 4, !tbaa !22
  %cmp53 = icmp ult i32 %35, 128
  br i1 %cmp53, label %cond.true.55, label %cond.false.56

cond.true.55:                                     ; preds = %cond.end.49
  br label %cond.end.66

cond.false.56:                                    ; preds = %cond.end.49
  %36 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %num_levels57 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %36, i32 0, i32 8
  %37 = load i32, i32* %num_levels57, align 4, !tbaa !22
  %cmp58 = icmp ult i32 %37, 16384
  br i1 %cmp58, label %cond.true.60, label %cond.false.61

cond.true.60:                                     ; preds = %cond.false.56
  br label %cond.end.64

cond.false.61:                                    ; preds = %cond.false.56
  %38 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %num_levels62 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %38, i32 0, i32 8
  %39 = load i32, i32* %num_levels62, align 4, !tbaa !22
  %call63 = call i32 @enc_u_size_uint(i32 %39) #5
  br label %cond.end.64

cond.end.64:                                      ; preds = %cond.false.61, %cond.true.60
  %cond65 = phi i32 [ 2, %cond.true.60 ], [ %call63, %cond.false.61 ]
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.end.64, %cond.true.55
  %cond67 = phi i32 [ 1, %cond.true.55 ], [ %cond65, %cond.end.64 ]
  %add68 = add nsw i32 %add51, %cond67
  %40 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %num_bits69 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %40, i32 0, i32 9
  %41 = load i32, i32* %num_bits69, align 4, !tbaa !23
  %cmp70 = icmp ult i32 %41, 128
  br i1 %cmp70, label %cond.true.72, label %cond.false.73

cond.true.72:                                     ; preds = %cond.end.66
  br label %cond.end.83

cond.false.73:                                    ; preds = %cond.end.66
  %42 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %num_bits74 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %42, i32 0, i32 9
  %43 = load i32, i32* %num_bits74, align 4, !tbaa !23
  %cmp75 = icmp ult i32 %43, 16384
  br i1 %cmp75, label %cond.true.77, label %cond.false.78

cond.true.77:                                     ; preds = %cond.false.73
  br label %cond.end.81

cond.false.78:                                    ; preds = %cond.false.73
  %44 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %num_bits79 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %44, i32 0, i32 9
  %45 = load i32, i32* %num_bits79, align 4, !tbaa !23
  %call80 = call i32 @enc_u_size_uint(i32 %45) #5
  br label %cond.end.81

cond.end.81:                                      ; preds = %cond.false.78, %cond.true.77
  %cond82 = phi i32 [ 2, %cond.true.77 ], [ %call80, %cond.false.78 ]
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.end.81, %cond.true.72
  %cond84 = phi i32 [ 1, %cond.true.72 ], [ %cond82, %cond.end.81 ]
  %add85 = add nsw i32 %add68, %cond84
  %add86 = add nsw i32 %add85, 1
  %46 = load i32, i32* %levels_size, align 4, !tbaa !5
  %add87 = add nsw i32 %add86, %46
  %47 = load i32, i32* %bits_size, align 4, !tbaa !5
  %add88 = add nsw i32 %add87, %47
  store i32 %add88, i32* %req_size, align 4, !tbaa !5
  %48 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %transfer = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %48, i32 0, i32 15
  %49 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %transfer, align 8, !tbaa !30
  %50 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %call89 = call i32 @gx_ht_write_tf(%struct.gx_transfer_map_s* %49, i8* %50, i32* %tmp_size) #5
  store i32 %call89, i32* %code, align 4, !tbaa !5
  %51 = load i32, i32* %code, align 4, !tbaa !5
  %cmp90 = icmp slt i32 %51, 0
  br i1 %cmp90, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end.83
  %52 = load i32, i32* %code, align 4, !tbaa !5
  %cmp92 = icmp ne i32 %52, -15
  br i1 %cmp92, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %53 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %53, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %cond.end.83
  %54 = load i32, i32* %tmp_size, align 4, !tbaa !5
  %55 = load i32, i32* %req_size, align 4, !tbaa !5
  %add94 = add i32 %55, %54
  store i32 %add94, i32* %req_size, align 4, !tbaa !5
  %56 = load i32, i32* %req_size, align 4, !tbaa !5
  %57 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  %58 = load i32, i32* %57, align 4, !tbaa !5
  %cmp95 = icmp ugt i32 %56, %58
  br i1 %cmp95, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %if.end
  %59 = load i32, i32* %req_size, align 4, !tbaa !5
  %60 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  store i32 %59, i32* %60, align 4, !tbaa !5
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.98:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.98
  %61 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %width99 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %61, i32 0, i32 1
  %62 = load i16, i16* %width99, align 2, !tbaa !27
  %conv100 = zext i16 %62 to i32
  %cmp101 = icmp ult i32 %conv100, 128
  br i1 %cmp101, label %if.then.103, label %if.else

if.then.103:                                      ; preds = %do.body
  %63 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %width104 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %63, i32 0, i32 1
  %64 = load i16, i16* %width104, align 2, !tbaa !27
  %conv105 = trunc i16 %64 to i8
  %65 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %incdec.ptr, i8** %data.addr, align 8, !tbaa !1
  store i8 %conv105, i8* %65, align 1, !tbaa !21
  br label %if.end.124

if.else:                                          ; preds = %do.body
  %66 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %width106 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %66, i32 0, i32 1
  %67 = load i16, i16* %width106, align 2, !tbaa !27
  %conv107 = zext i16 %67 to i32
  %cmp108 = icmp ult i32 %conv107, 16384
  br i1 %cmp108, label %if.then.110, label %if.else.119

if.then.110:                                      ; preds = %if.else
  %68 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %width111 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %68, i32 0, i32 1
  %69 = load i16, i16* %width111, align 2, !tbaa !27
  %conv112 = zext i16 %69 to i32
  %and = and i32 %conv112, 127
  %or = or i32 128, %and
  %conv113 = trunc i32 %or to i8
  %70 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %incdec.ptr114 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %incdec.ptr114, i8** %data.addr, align 8, !tbaa !1
  store i8 %conv113, i8* %70, align 1, !tbaa !21
  %71 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %width115 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %71, i32 0, i32 1
  %72 = load i16, i16* %width115, align 2, !tbaa !27
  %conv116 = zext i16 %72 to i32
  %shr = ashr i32 %conv116, 7
  %conv117 = trunc i32 %shr to i8
  %73 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %incdec.ptr118 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %incdec.ptr118, i8** %data.addr, align 8, !tbaa !1
  store i8 %conv117, i8* %73, align 1, !tbaa !21
  br label %if.end.123

if.else.119:                                      ; preds = %if.else
  %74 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %width120 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %74, i32 0, i32 1
  %75 = load i16, i16* %width120, align 2, !tbaa !27
  %conv121 = zext i16 %75 to i32
  %76 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %call122 = call i8* @enc_u_put_uint(i32 %conv121, i8* %76) #5
  store i8* %call122, i8** %data.addr, align 8, !tbaa !1
  br label %if.end.123

if.end.123:                                       ; preds = %if.else.119, %if.then.110
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123, %if.then.103
  br label %do.cond

do.cond:                                          ; preds = %if.end.124
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.125

do.body.125:                                      ; preds = %do.end
  %77 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %height126 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %77, i32 0, i32 2
  %78 = load i16, i16* %height126, align 2, !tbaa !28
  %conv127 = zext i16 %78 to i32
  %cmp128 = icmp ult i32 %conv127, 128
  br i1 %cmp128, label %if.then.130, label %if.else.134

if.then.130:                                      ; preds = %do.body.125
  %79 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %height131 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %79, i32 0, i32 2
  %80 = load i16, i16* %height131, align 2, !tbaa !28
  %conv132 = trunc i16 %80 to i8
  %81 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %incdec.ptr133 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %incdec.ptr133, i8** %data.addr, align 8, !tbaa !1
  store i8 %conv132, i8* %81, align 1, !tbaa !21
  br label %if.end.156

if.else.134:                                      ; preds = %do.body.125
  %82 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %height135 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %82, i32 0, i32 2
  %83 = load i16, i16* %height135, align 2, !tbaa !28
  %conv136 = zext i16 %83 to i32
  %cmp137 = icmp ult i32 %conv136, 16384
  br i1 %cmp137, label %if.then.139, label %if.else.151

if.then.139:                                      ; preds = %if.else.134
  %84 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %height140 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %84, i32 0, i32 2
  %85 = load i16, i16* %height140, align 2, !tbaa !28
  %conv141 = zext i16 %85 to i32
  %and142 = and i32 %conv141, 127
  %or143 = or i32 128, %and142
  %conv144 = trunc i32 %or143 to i8
  %86 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %incdec.ptr145 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %incdec.ptr145, i8** %data.addr, align 8, !tbaa !1
  store i8 %conv144, i8* %86, align 1, !tbaa !21
  %87 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %height146 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %87, i32 0, i32 2
  %88 = load i16, i16* %height146, align 2, !tbaa !28
  %conv147 = zext i16 %88 to i32
  %shr148 = ashr i32 %conv147, 7
  %conv149 = trunc i32 %shr148 to i8
  %89 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %incdec.ptr150 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %incdec.ptr150, i8** %data.addr, align 8, !tbaa !1
  store i8 %conv149, i8* %89, align 1, !tbaa !21
  br label %if.end.155

if.else.151:                                      ; preds = %if.else.134
  %90 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %height152 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %90, i32 0, i32 2
  %91 = load i16, i16* %height152, align 2, !tbaa !28
  %conv153 = zext i16 %91 to i32
  %92 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %call154 = call i8* @enc_u_put_uint(i32 %conv153, i8* %92) #5
  store i8* %call154, i8** %data.addr, align 8, !tbaa !1
  br label %if.end.155

if.end.155:                                       ; preds = %if.else.151, %if.then.139
  br label %if.end.156

if.end.156:                                       ; preds = %if.end.155, %if.then.130
  br label %do.cond.157

do.cond.157:                                      ; preds = %if.end.156
  br label %do.end.158

do.end.158:                                       ; preds = %do.cond.157
  br label %do.body.159

do.body.159:                                      ; preds = %do.end.158
  %93 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %shift160 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %93, i32 0, i32 4
  %94 = load i16, i16* %shift160, align 2, !tbaa !29
  %conv161 = zext i16 %94 to i32
  %cmp162 = icmp ult i32 %conv161, 128
  br i1 %cmp162, label %if.then.164, label %if.else.168

if.then.164:                                      ; preds = %do.body.159
  %95 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %shift165 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %95, i32 0, i32 4
  %96 = load i16, i16* %shift165, align 2, !tbaa !29
  %conv166 = trunc i16 %96 to i8
  %97 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %incdec.ptr167 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %incdec.ptr167, i8** %data.addr, align 8, !tbaa !1
  store i8 %conv166, i8* %97, align 1, !tbaa !21
  br label %if.end.190

if.else.168:                                      ; preds = %do.body.159
  %98 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %shift169 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %98, i32 0, i32 4
  %99 = load i16, i16* %shift169, align 2, !tbaa !29
  %conv170 = zext i16 %99 to i32
  %cmp171 = icmp ult i32 %conv170, 16384
  br i1 %cmp171, label %if.then.173, label %if.else.185

if.then.173:                                      ; preds = %if.else.168
  %100 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %shift174 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %100, i32 0, i32 4
  %101 = load i16, i16* %shift174, align 2, !tbaa !29
  %conv175 = zext i16 %101 to i32
  %and176 = and i32 %conv175, 127
  %or177 = or i32 128, %and176
  %conv178 = trunc i32 %or177 to i8
  %102 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %incdec.ptr179 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %incdec.ptr179, i8** %data.addr, align 8, !tbaa !1
  store i8 %conv178, i8* %102, align 1, !tbaa !21
  %103 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %shift180 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %103, i32 0, i32 4
  %104 = load i16, i16* %shift180, align 2, !tbaa !29
  %conv181 = zext i16 %104 to i32
  %shr182 = ashr i32 %conv181, 7
  %conv183 = trunc i32 %shr182 to i8
  %105 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %incdec.ptr184 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %incdec.ptr184, i8** %data.addr, align 8, !tbaa !1
  store i8 %conv183, i8* %105, align 1, !tbaa !21
  br label %if.end.189

if.else.185:                                      ; preds = %if.else.168
  %106 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %shift186 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %106, i32 0, i32 4
  %107 = load i16, i16* %shift186, align 2, !tbaa !29
  %conv187 = zext i16 %107 to i32
  %108 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %call188 = call i8* @enc_u_put_uint(i32 %conv187, i8* %108) #5
  store i8* %call188, i8** %data.addr, align 8, !tbaa !1
  br label %if.end.189

if.end.189:                                       ; preds = %if.else.185, %if.then.173
  br label %if.end.190

if.end.190:                                       ; preds = %if.end.189, %if.then.164
  br label %do.cond.191

do.cond.191:                                      ; preds = %if.end.190
  br label %do.end.192

do.end.192:                                       ; preds = %do.cond.191
  br label %do.body.193

do.body.193:                                      ; preds = %do.end.192
  %109 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %num_levels194 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %109, i32 0, i32 8
  %110 = load i32, i32* %num_levels194, align 4, !tbaa !22
  %cmp195 = icmp ult i32 %110, 128
  br i1 %cmp195, label %if.then.197, label %if.else.201

if.then.197:                                      ; preds = %do.body.193
  %111 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %num_levels198 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %111, i32 0, i32 8
  %112 = load i32, i32* %num_levels198, align 4, !tbaa !22
  %conv199 = trunc i32 %112 to i8
  %113 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %incdec.ptr200 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %incdec.ptr200, i8** %data.addr, align 8, !tbaa !1
  store i8 %conv199, i8* %113, align 1, !tbaa !21
  br label %if.end.219

if.else.201:                                      ; preds = %do.body.193
  %114 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %num_levels202 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %114, i32 0, i32 8
  %115 = load i32, i32* %num_levels202, align 4, !tbaa !22
  %cmp203 = icmp ult i32 %115, 16384
  br i1 %cmp203, label %if.then.205, label %if.else.215

if.then.205:                                      ; preds = %if.else.201
  %116 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %num_levels206 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %116, i32 0, i32 8
  %117 = load i32, i32* %num_levels206, align 4, !tbaa !22
  %and207 = and i32 %117, 127
  %or208 = or i32 128, %and207
  %conv209 = trunc i32 %or208 to i8
  %118 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %incdec.ptr210 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %incdec.ptr210, i8** %data.addr, align 8, !tbaa !1
  store i8 %conv209, i8* %118, align 1, !tbaa !21
  %119 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %num_levels211 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %119, i32 0, i32 8
  %120 = load i32, i32* %num_levels211, align 4, !tbaa !22
  %shr212 = lshr i32 %120, 7
  %conv213 = trunc i32 %shr212 to i8
  %121 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %incdec.ptr214 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %incdec.ptr214, i8** %data.addr, align 8, !tbaa !1
  store i8 %conv213, i8* %121, align 1, !tbaa !21
  br label %if.end.218

if.else.215:                                      ; preds = %if.else.201
  %122 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %num_levels216 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %122, i32 0, i32 8
  %123 = load i32, i32* %num_levels216, align 4, !tbaa !22
  %124 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %call217 = call i8* @enc_u_put_uint(i32 %123, i8* %124) #5
  store i8* %call217, i8** %data.addr, align 8, !tbaa !1
  br label %if.end.218

if.end.218:                                       ; preds = %if.else.215, %if.then.205
  br label %if.end.219

if.end.219:                                       ; preds = %if.end.218, %if.then.197
  br label %do.cond.220

do.cond.220:                                      ; preds = %if.end.219
  br label %do.end.221

do.end.221:                                       ; preds = %do.cond.220
  br label %do.body.222

do.body.222:                                      ; preds = %do.end.221
  %125 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %num_bits223 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %125, i32 0, i32 9
  %126 = load i32, i32* %num_bits223, align 4, !tbaa !23
  %cmp224 = icmp ult i32 %126, 128
  br i1 %cmp224, label %if.then.226, label %if.else.230

if.then.226:                                      ; preds = %do.body.222
  %127 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %num_bits227 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %127, i32 0, i32 9
  %128 = load i32, i32* %num_bits227, align 4, !tbaa !23
  %conv228 = trunc i32 %128 to i8
  %129 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %incdec.ptr229 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %incdec.ptr229, i8** %data.addr, align 8, !tbaa !1
  store i8 %conv228, i8* %129, align 1, !tbaa !21
  br label %if.end.248

if.else.230:                                      ; preds = %do.body.222
  %130 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %num_bits231 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %130, i32 0, i32 9
  %131 = load i32, i32* %num_bits231, align 4, !tbaa !23
  %cmp232 = icmp ult i32 %131, 16384
  br i1 %cmp232, label %if.then.234, label %if.else.244

if.then.234:                                      ; preds = %if.else.230
  %132 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %num_bits235 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %132, i32 0, i32 9
  %133 = load i32, i32* %num_bits235, align 4, !tbaa !23
  %and236 = and i32 %133, 127
  %or237 = or i32 128, %and236
  %conv238 = trunc i32 %or237 to i8
  %134 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %incdec.ptr239 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %incdec.ptr239, i8** %data.addr, align 8, !tbaa !1
  store i8 %conv238, i8* %134, align 1, !tbaa !21
  %135 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %num_bits240 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %135, i32 0, i32 9
  %136 = load i32, i32* %num_bits240, align 4, !tbaa !23
  %shr241 = lshr i32 %136, 7
  %conv242 = trunc i32 %shr241 to i8
  %137 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %incdec.ptr243 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %incdec.ptr243, i8** %data.addr, align 8, !tbaa !1
  store i8 %conv242, i8* %137, align 1, !tbaa !21
  br label %if.end.247

if.else.244:                                      ; preds = %if.else.230
  %138 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %num_bits245 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %138, i32 0, i32 9
  %139 = load i32, i32* %num_bits245, align 4, !tbaa !23
  %140 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %call246 = call i8* @enc_u_put_uint(i32 %139, i8* %140) #5
  store i8* %call246, i8** %data.addr, align 8, !tbaa !1
  br label %if.end.247

if.end.247:                                       ; preds = %if.else.244, %if.then.234
  br label %if.end.248

if.end.248:                                       ; preds = %if.end.247, %if.then.226
  br label %do.cond.249

do.cond.249:                                      ; preds = %if.end.248
  br label %do.end.250

do.end.250:                                       ; preds = %do.cond.249
  %141 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %procs251 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %141, i32 0, i32 10
  %142 = load %struct.gx_ht_order_procs_s*, %struct.gx_ht_order_procs_s** %procs251, align 8, !tbaa !24
  %sub.ptr.lhs.cast = ptrtoint %struct.gx_ht_order_procs_s* %142 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint ([2 x %struct.gx_ht_order_procs_s]* @ht_order_procs_table to i64)
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 40
  %conv252 = trunc i64 %sub.ptr.div to i8
  %143 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %incdec.ptr253 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %incdec.ptr253, i8** %data.addr, align 8, !tbaa !1
  store i8 %conv252, i8* %143, align 1, !tbaa !21
  %144 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %145 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %levels = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %145, i32 0, i32 12
  %146 = load i32*, i32** %levels, align 8, !tbaa !31
  %147 = bitcast i32* %146 to i8*
  %148 = load i32, i32* %levels_size, align 4, !tbaa !5
  %conv254 = sext i32 %148 to i64
  %call255 = call i8* @memcpy(i8* %144, i8* %147, i64 %conv254) #6
  %149 = load i32, i32* %levels_size, align 4, !tbaa !5
  %150 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %149 to i64
  %add.ptr = getelementptr inbounds i8, i8* %150, i64 %idx.ext
  store i8* %add.ptr, i8** %data.addr, align 8, !tbaa !1
  %151 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %152 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %bit_data = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %152, i32 0, i32 13
  %153 = load i8*, i8** %bit_data, align 8, !tbaa !32
  %154 = load i32, i32* %bits_size, align 4, !tbaa !5
  %conv256 = sext i32 %154 to i64
  %call257 = call i8* @memcpy(i8* %151, i8* %153, i64 %conv256) #6
  %155 = load i32, i32* %bits_size, align 4, !tbaa !5
  %156 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %idx.ext258 = sext i32 %155 to i64
  %add.ptr259 = getelementptr inbounds i8, i8* %156, i64 %idx.ext258
  store i8* %add.ptr259, i8** %data.addr, align 8, !tbaa !1
  %157 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  %158 = load i32, i32* %157, align 4, !tbaa !5
  %conv260 = zext i32 %158 to i64
  %159 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %160 = load i8*, i8** %data0, align 8, !tbaa !1
  %sub.ptr.lhs.cast261 = ptrtoint i8* %159 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %160 to i64
  %sub.ptr.sub262 = sub i64 %sub.ptr.lhs.cast261, %sub.ptr.rhs.cast
  %sub = sub nsw i64 %conv260, %sub.ptr.sub262
  %conv263 = trunc i64 %sub to i32
  store i32 %conv263, i32* %tmp_size, align 4, !tbaa !5
  %161 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %transfer264 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %161, i32 0, i32 15
  %162 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %transfer264, align 8, !tbaa !30
  %163 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %call265 = call i32 @gx_ht_write_tf(%struct.gx_transfer_map_s* %162, i8* %163, i32* %tmp_size) #5
  store i32 %call265, i32* %code, align 4, !tbaa !5
  %cmp266 = icmp eq i32 %call265, 0
  br i1 %cmp266, label %if.then.268, label %if.end.275

if.then.268:                                      ; preds = %do.end.250
  %164 = load i32, i32* %tmp_size, align 4, !tbaa !5
  %conv269 = zext i32 %164 to i64
  %165 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %166 = load i8*, i8** %data0, align 8, !tbaa !1
  %sub.ptr.lhs.cast270 = ptrtoint i8* %165 to i64
  %sub.ptr.rhs.cast271 = ptrtoint i8* %166 to i64
  %sub.ptr.sub272 = sub i64 %sub.ptr.lhs.cast270, %sub.ptr.rhs.cast271
  %add273 = add nsw i64 %conv269, %sub.ptr.sub272
  %conv274 = trunc i64 %add273 to i32
  %167 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  store i32 %conv274, i32* %167, align 4, !tbaa !5
  br label %if.end.275

if.end.275:                                       ; preds = %if.then.268, %do.end.250
  %168 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %168, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.275, %if.then.97, %if.then
  %169 = bitcast i32* %req_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #1
  %170 = bitcast i32* %tmp_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %170) #1
  %171 = bitcast i32* %bits_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %171) #1
  %172 = bitcast i32* %levels_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %172) #1
  %173 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %173) #1
  %174 = bitcast i8** %data0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %174) #1
  %175 = bitcast %struct.gx_ht_order_s** %porder to i8*
  call void @llvm.lifetime.end(i64 8, i8* %175) #1
  %176 = load i32, i32* %retval
  ret i32 %176
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @gx_ht_read_and_install(%struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, i8* %data, i32 %size, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %components = alloca [64 x %struct.gx_ht_order_component_s], align 16
  %components_save = alloca [64 x %struct.gx_ht_order_component_s], align 16
  %data0 = alloca i8*, align 8
  %dht = alloca %struct.gx_device_halftone_s, align 8
  %num_dev_comps = alloca i32, align 4
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast [64 x %struct.gx_ht_order_component_s]* %components to i8*
  call void @llvm.lifetime.start(i64 10752, i8* %0) #1
  %1 = bitcast [64 x %struct.gx_ht_order_component_s]* %components_save to i8*
  call void @llvm.lifetime.start(i64 10752, i8* %1) #1
  %2 = bitcast i8** %data0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %data.addr, align 8, !tbaa !1
  store i8* %3, i8** %data0, align 8, !tbaa !1
  %4 = bitcast %struct.gx_device_halftone_s* %dht to i8*
  call void @llvm.lifetime.start(i64 224, i8* %4) #1
  %5 = bitcast i32* %num_dev_comps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %order = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %dht, i32 0, i32 0
  %8 = bitcast %struct.gx_ht_order_s* %order to i8*
  %call = call i8* @memset(i8* %8, i32 0, i64 160) #6
  %rc = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %dht, i32 0, i32 1
  %9 = bitcast %struct.rc_header_s* %rc to i8*
  %call1 = call i8* @memset(i8* %9, i32 0, i64 24) #6
  %id = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %dht, i32 0, i32 2
  store i64 0, i64* %id, align 8, !tbaa !33
  %arraydecay = getelementptr inbounds [64 x %struct.gx_ht_order_component_s], [64 x %struct.gx_ht_order_component_s]* %components, i32 0, i32 0
  %components2 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %dht, i32 0, i32 4
  store %struct.gx_ht_order_component_s* %arraydecay, %struct.gx_ht_order_component_s** %components2, align 8, !tbaa !7
  %lcm_width = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %dht, i32 0, i32 7
  store i32 1, i32* %lcm_width, align 4, !tbaa !34
  %lcm_height = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %dht, i32 0, i32 8
  store i32 1, i32* %lcm_height, align 4, !tbaa !35
  %arraydecay3 = getelementptr inbounds [64 x %struct.gx_ht_order_component_s], [64 x %struct.gx_ht_order_component_s]* %components, i32 0, i32 0
  %10 = bitcast %struct.gx_ht_order_component_s* %arraydecay3 to i8*
  %call4 = call i8* @memset(i8* %10, i32 0, i64 10752) #6
  %11 = load i32, i32* %size.addr, align 4, !tbaa !5
  %cmp = icmp ult i32 %11, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %data.addr, align 8, !tbaa !1
  %13 = load i8, i8* %12, align 1, !tbaa !21
  %conv = zext i8 %13 to i32
  %type = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %dht, i32 0, i32 3
  store i32 %conv, i32* %type, align 4, !tbaa !20
  %14 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %incdec.ptr5 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr5, i8** %data.addr, align 8, !tbaa !1
  %15 = load i8, i8* %14, align 1, !tbaa !21
  %conv6 = zext i8 %15 to i32
  %num_comp = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %dht, i32 0, i32 5
  store i32 %conv6, i32* %num_comp, align 4, !tbaa !36
  %num_dev_comp = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %dht, i32 0, i32 6
  store i32 %conv6, i32* %num_dev_comp, align 4, !tbaa !17
  store i32 %conv6, i32* %num_dev_comps, align 4, !tbaa !5
  %16 = load i32, i32* %size.addr, align 4, !tbaa !5
  %sub = sub i32 %16, 2
  store i32 %sub, i32* %size.addr, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  store i32 0, i32* %code, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %17 = load i32, i32* %i, align 4, !tbaa !5
  %18 = load i32, i32* %num_dev_comps, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %17, %18
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %19 = load i32, i32* %code, align 4, !tbaa !5
  %cmp9 = icmp sge i32 %19, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %20 = phi i1 [ false, %for.cond ], [ %cmp9, %land.rhs ]
  br i1 %20, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %21 = load i32, i32* %i, align 4, !tbaa !5
  %22 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %22 to i64
  %arrayidx = getelementptr inbounds [64 x %struct.gx_ht_order_component_s], [64 x %struct.gx_ht_order_component_s]* %components, i32 0, i64 %idxprom
  %comp_number = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx, i32 0, i32 1
  store i32 %21, i32* %comp_number, align 4, !tbaa !18
  %23 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %23 to i64
  %arrayidx12 = getelementptr inbounds [64 x %struct.gx_ht_order_component_s], [64 x %struct.gx_ht_order_component_s]* %components, i32 0, i64 %idxprom11
  %24 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %25 = load i32, i32* %size.addr, align 4, !tbaa !5
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call13 = call i32 @gx_ht_read_component(%struct.gx_ht_order_component_s* %arrayidx12, i8* %24, i32 %25, %struct.gs_memory_s* %26) #5
  store i32 %call13, i32* %code, align 4, !tbaa !5
  %27 = load i32, i32* %code, align 4, !tbaa !5
  %cmp14 = icmp sge i32 %27, 0
  br i1 %cmp14, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %for.body
  %28 = load i32, i32* %code, align 4, !tbaa !5
  %29 = load i32, i32* %size.addr, align 4, !tbaa !5
  %sub17 = sub i32 %29, %28
  store i32 %sub17, i32* %size.addr, align 4, !tbaa !5
  %30 = load i32, i32* %code, align 4, !tbaa !5
  %31 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %30 to i64
  %add.ptr = getelementptr inbounds i8, i8* %31, i64 %idx.ext
  store i8* %add.ptr, i8** %data.addr, align 8, !tbaa !1
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.18
  %32 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %land.end
  %33 = load i32, i32* %code, align 4, !tbaa !5
  %cmp19 = icmp sge i32 %33, 0
  br i1 %cmp19, label %if.then.21, label %if.end.44

if.then.21:                                       ; preds = %for.end
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.30, %if.then.21
  %34 = load i32, i32* %i, align 4, !tbaa !5
  %35 = load i32, i32* %num_dev_comps, align 4, !tbaa !5
  %cmp23 = icmp slt i32 %34, %35
  br i1 %cmp23, label %for.body.25, label %for.end.32

for.body.25:                                      ; preds = %for.cond.22
  %36 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom26 = sext i32 %36 to i64
  %arrayidx27 = getelementptr inbounds [64 x %struct.gx_ht_order_component_s], [64 x %struct.gx_ht_order_component_s]* %components_save, i32 0, i64 %idxprom26
  %37 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom28 = sext i32 %37 to i64
  %arrayidx29 = getelementptr inbounds [64 x %struct.gx_ht_order_component_s], [64 x %struct.gx_ht_order_component_s]* %components, i32 0, i64 %idxprom28
  %38 = bitcast %struct.gx_ht_order_component_s* %arrayidx27 to i8*
  %39 = bitcast %struct.gx_ht_order_component_s* %arrayidx29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 168, i32 8, i1 false), !tbaa.struct !37
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.body.25
  %40 = load i32, i32* %i, align 4, !tbaa !5
  %inc31 = add nsw i32 %40, 1
  store i32 %inc31, i32* %i, align 4, !tbaa !5
  br label %for.cond.22

for.end.32:                                       ; preds = %for.cond.22
  %41 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %type33 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %dht, i32 0, i32 3
  %42 = load i32, i32* %type33, align 4, !tbaa !20
  %43 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call34 = call i32 @gx_imager_dev_ht_install(%struct.gs_imager_state_s* %41, %struct.gx_device_halftone_s* %dht, i32 %42, %struct.gx_device_s* %43) #5
  store i32 %call34, i32* %code, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.41, %for.end.32
  %44 = load i32, i32* %i, align 4, !tbaa !5
  %45 = load i32, i32* %num_dev_comps, align 4, !tbaa !5
  %cmp36 = icmp slt i32 %44, %45
  br i1 %cmp36, label %for.body.38, label %for.end.43

for.body.38:                                      ; preds = %for.cond.35
  %46 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom39 = sext i32 %46 to i64
  %arrayidx40 = getelementptr inbounds [64 x %struct.gx_ht_order_component_s], [64 x %struct.gx_ht_order_component_s]* %components_save, i32 0, i64 %idxprom39
  %corder = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx40, i32 0, i32 0
  %47 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @gx_ht_order_release(%struct.gx_ht_order_s* %corder, %struct.gs_memory_s* %47, i32 0) #5
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.body.38
  %48 = load i32, i32* %i, align 4, !tbaa !5
  %inc42 = add nsw i32 %48, 1
  store i32 %inc42, i32* %i, align 4, !tbaa !5
  br label %for.cond.35

for.end.43:                                       ; preds = %for.cond.35
  br label %if.end.44

if.end.44:                                        ; preds = %for.end.43, %for.end
  %49 = load i32, i32* %code, align 4, !tbaa !5
  %cmp45 = icmp slt i32 %49, 0
  br i1 %cmp45, label %if.then.47, label %if.end.58

if.then.47:                                       ; preds = %if.end.44
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.55, %if.then.47
  %50 = load i32, i32* %i, align 4, !tbaa !5
  %51 = load i32, i32* %num_dev_comps, align 4, !tbaa !5
  %cmp49 = icmp slt i32 %50, %51
  br i1 %cmp49, label %for.body.51, label %for.end.57

for.body.51:                                      ; preds = %for.cond.48
  %52 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom52 = sext i32 %52 to i64
  %arrayidx53 = getelementptr inbounds [64 x %struct.gx_ht_order_component_s], [64 x %struct.gx_ht_order_component_s]* %components, i32 0, i64 %idxprom52
  %corder54 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx53, i32 0, i32 0
  %53 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @gx_ht_order_release(%struct.gx_ht_order_s* %corder54, %struct.gs_memory_s* %53, i32 0) #5
  br label %for.inc.55

for.inc.55:                                       ; preds = %for.body.51
  %54 = load i32, i32* %i, align 4, !tbaa !5
  %inc56 = add nsw i32 %54, 1
  store i32 %inc56, i32* %i, align 4, !tbaa !5
  br label %for.cond.48

for.end.57:                                       ; preds = %for.cond.48
  br label %if.end.58

if.end.58:                                        ; preds = %for.end.57, %if.end.44
  %55 = load i32, i32* %code, align 4, !tbaa !5
  %cmp59 = icmp slt i32 %55, 0
  br i1 %cmp59, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.58
  %56 = load i32, i32* %code, align 4, !tbaa !5
  %conv61 = sext i32 %56 to i64
  br label %cond.end

cond.false:                                       ; preds = %if.end.58
  %57 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %58 = load i8*, i8** %data0, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %57 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %58 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv61, %cond.true ], [ %sub.ptr.sub, %cond.false ]
  %conv62 = trunc i64 %cond to i32
  store i32 %conv62, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then
  %59 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast i32* %num_dev_comps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast %struct.gx_device_halftone_s* %dht to i8*
  call void @llvm.lifetime.end(i64 224, i8* %62) #1
  %63 = bitcast i8** %data0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = bitcast [64 x %struct.gx_ht_order_component_s]* %components_save to i8*
  call void @llvm.lifetime.end(i64 10752, i8* %64) #1
  %65 = bitcast [64 x %struct.gx_ht_order_component_s]* %components to i8*
  call void @llvm.lifetime.end(i64 10752, i8* %65) #1
  %66 = load i32, i32* %retval
  ret i32 %66
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @gx_ht_read_component(%struct.gx_ht_order_component_s* %pcomp, i8* %data, i32 %size, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %pcomp.addr = alloca %struct.gx_ht_order_component_s*, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %new_order = alloca %struct.gx_ht_order_s, align 8
  %data0 = alloca i8*, align 8
  %data_lim = alloca i8*, align 8
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %levels_size = alloca i32, align 4
  %bits_size = alloca i32, align 4
  %phtrp = alloca %struct.gx_device_halftone_resource_s** ()**, align 8
  %cleanup.dest.slot = alloca i32
  %tmp_w = alloca i32, align 4
  %tmp_w17 = alloca i32, align 4
  %tmp_w32 = alloca i32, align 4
  %tmp_w46 = alloca i32, align 4
  %tmp_w59 = alloca i32, align 4
  %pphtr = alloca %struct.gx_device_halftone_resource_s**, align 8
  %phtr = alloca %struct.gx_device_halftone_resource_s*, align 8
  store %struct.gx_ht_order_component_s* %pcomp, %struct.gx_ht_order_component_s** %pcomp.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_ht_order_s* %new_order to i8*
  call void @llvm.lifetime.start(i64 160, i8* %0) #1
  %1 = bitcast i8** %data0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i8*, i8** %data.addr, align 8, !tbaa !1
  store i8* %2, i8** %data0, align 8, !tbaa !1
  %3 = bitcast i8** %data_lim to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %5 = load i32, i32* %size.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  store i8* %add.ptr, i8** %data_lim, align 8, !tbaa !1
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %levels_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %bits_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast %struct.gx_device_halftone_resource_s** ()*** %phtrp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store %struct.gx_device_halftone_resource_s** ()** getelementptr inbounds ([0 x %struct.gx_device_halftone_resource_s** ()*], [0 x %struct.gx_device_halftone_resource_s** ()*]* @gx_device_halftone_list, i32 0, i32 0), %struct.gx_device_halftone_resource_s** ()*** %phtrp, align 8, !tbaa !1
  %11 = load i32, i32* %size.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.169

if.end:                                           ; preds = %entry
  %12 = load i32, i32* %size.addr, align 4, !tbaa !5
  %cmp1 = icmp ult i32 %12, 7
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.169

if.end.3:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.3
  %13 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %14 = load i8, i8* %13, align 1, !tbaa !21
  %conv = zext i8 %14 to i16
  %width = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %new_order, i32 0, i32 1
  store i16 %conv, i16* %width, align 2, !tbaa !27
  %conv4 = zext i16 %conv to i32
  %cmp5 = icmp uge i32 %conv4, 128
  br i1 %cmp5, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %do.body
  %15 = bitcast i32* %tmp_w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %call = call i8* @enc_u_get_uint(i32* %tmp_w, i8* %16) #5
  store i8* %call, i8** %data.addr, align 8, !tbaa !1
  %17 = load i32, i32* %tmp_w, align 4, !tbaa !5
  %conv8 = trunc i32 %17 to i16
  %width9 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %new_order, i32 0, i32 1
  store i16 %conv8, i16* %width9, align 2, !tbaa !27
  %18 = bitcast i32* %tmp_w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  br label %if.end.10

if.else:                                          ; preds = %do.body
  %19 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %data.addr, align 8, !tbaa !1
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.7
  br label %do.cond

do.cond:                                          ; preds = %if.end.10
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %20 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %21 = load i8, i8* %20, align 1, !tbaa !21
  %conv12 = zext i8 %21 to i16
  %height = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %new_order, i32 0, i32 2
  store i16 %conv12, i16* %height, align 2, !tbaa !28
  %conv13 = zext i16 %conv12 to i32
  %cmp14 = icmp uge i32 %conv13, 128
  br i1 %cmp14, label %if.then.16, label %if.else.21

if.then.16:                                       ; preds = %do.body.11
  %22 = bitcast i32* %tmp_w17 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %call18 = call i8* @enc_u_get_uint(i32* %tmp_w17, i8* %23) #5
  store i8* %call18, i8** %data.addr, align 8, !tbaa !1
  %24 = load i32, i32* %tmp_w17, align 4, !tbaa !5
  %conv19 = trunc i32 %24 to i16
  %height20 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %new_order, i32 0, i32 2
  store i16 %conv19, i16* %height20, align 2, !tbaa !28
  %25 = bitcast i32* %tmp_w17 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  br label %if.end.23

if.else.21:                                       ; preds = %do.body.11
  %26 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %incdec.ptr22 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr22, i8** %data.addr, align 8, !tbaa !1
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.21, %if.then.16
  br label %do.cond.24

do.cond.24:                                       ; preds = %if.end.23
  br label %do.end.25

do.end.25:                                        ; preds = %do.cond.24
  br label %do.body.26

do.body.26:                                       ; preds = %do.end.25
  %27 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %28 = load i8, i8* %27, align 1, !tbaa !21
  %conv27 = zext i8 %28 to i16
  %shift = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %new_order, i32 0, i32 4
  store i16 %conv27, i16* %shift, align 2, !tbaa !29
  %conv28 = zext i16 %conv27 to i32
  %cmp29 = icmp uge i32 %conv28, 128
  br i1 %cmp29, label %if.then.31, label %if.else.36

if.then.31:                                       ; preds = %do.body.26
  %29 = bitcast i32* %tmp_w32 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  %30 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %call33 = call i8* @enc_u_get_uint(i32* %tmp_w32, i8* %30) #5
  store i8* %call33, i8** %data.addr, align 8, !tbaa !1
  %31 = load i32, i32* %tmp_w32, align 4, !tbaa !5
  %conv34 = trunc i32 %31 to i16
  %shift35 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %new_order, i32 0, i32 4
  store i16 %conv34, i16* %shift35, align 2, !tbaa !29
  %32 = bitcast i32* %tmp_w32 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  br label %if.end.38

if.else.36:                                       ; preds = %do.body.26
  %33 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %incdec.ptr37 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr37, i8** %data.addr, align 8, !tbaa !1
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.36, %if.then.31
  br label %do.cond.39

do.cond.39:                                       ; preds = %if.end.38
  br label %do.end.40

do.end.40:                                        ; preds = %do.cond.39
  br label %do.body.41

do.body.41:                                       ; preds = %do.end.40
  %34 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %35 = load i8, i8* %34, align 1, !tbaa !21
  %conv42 = zext i8 %35 to i32
  %num_levels = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %new_order, i32 0, i32 8
  store i32 %conv42, i32* %num_levels, align 4, !tbaa !22
  %cmp43 = icmp uge i32 %conv42, 128
  br i1 %cmp43, label %if.then.45, label %if.else.49

if.then.45:                                       ; preds = %do.body.41
  %36 = bitcast i32* %tmp_w46 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  %37 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %call47 = call i8* @enc_u_get_uint(i32* %tmp_w46, i8* %37) #5
  store i8* %call47, i8** %data.addr, align 8, !tbaa !1
  %38 = load i32, i32* %tmp_w46, align 4, !tbaa !5
  %num_levels48 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %new_order, i32 0, i32 8
  store i32 %38, i32* %num_levels48, align 4, !tbaa !22
  %39 = bitcast i32* %tmp_w46 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  br label %if.end.51

if.else.49:                                       ; preds = %do.body.41
  %40 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %incdec.ptr50 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr50, i8** %data.addr, align 8, !tbaa !1
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.49, %if.then.45
  br label %do.cond.52

do.cond.52:                                       ; preds = %if.end.51
  br label %do.end.53

do.end.53:                                        ; preds = %do.cond.52
  br label %do.body.54

do.body.54:                                       ; preds = %do.end.53
  %41 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %42 = load i8, i8* %41, align 1, !tbaa !21
  %conv55 = zext i8 %42 to i32
  %num_bits = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %new_order, i32 0, i32 9
  store i32 %conv55, i32* %num_bits, align 4, !tbaa !23
  %cmp56 = icmp uge i32 %conv55, 128
  br i1 %cmp56, label %if.then.58, label %if.else.62

if.then.58:                                       ; preds = %do.body.54
  %43 = bitcast i32* %tmp_w59 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  %44 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %call60 = call i8* @enc_u_get_uint(i32* %tmp_w59, i8* %44) #5
  store i8* %call60, i8** %data.addr, align 8, !tbaa !1
  %45 = load i32, i32* %tmp_w59, align 4, !tbaa !5
  %num_bits61 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %new_order, i32 0, i32 9
  store i32 %45, i32* %num_bits61, align 4, !tbaa !23
  %46 = bitcast i32* %tmp_w59 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  br label %if.end.64

if.else.62:                                       ; preds = %do.body.54
  %47 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %incdec.ptr63 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr63, i8** %data.addr, align 8, !tbaa !1
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.62, %if.then.58
  br label %do.cond.65

do.cond.65:                                       ; preds = %if.end.64
  br label %do.end.66

do.end.66:                                        ; preds = %do.cond.65
  %48 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %49 = load i8*, i8** %data_lim, align 8, !tbaa !1
  %cmp67 = icmp uge i8* %48, %49
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %do.end.66
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.169

if.end.70:                                        ; preds = %do.end.66
  %50 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %incdec.ptr71 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr71, i8** %data.addr, align 8, !tbaa !1
  %51 = load i8, i8* %50, align 1, !tbaa !21
  %idxprom = zext i8 %51 to i64
  %arrayidx = getelementptr inbounds [2 x %struct.gx_ht_order_procs_s], [2 x %struct.gx_ht_order_procs_s]* @ht_order_procs_table, i32 0, i64 %idxprom
  %procs = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %new_order, i32 0, i32 10
  store %struct.gx_ht_order_procs_s* %arrayidx, %struct.gx_ht_order_procs_s** %procs, align 8, !tbaa !24
  %num_levels72 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %new_order, i32 0, i32 8
  %52 = load i32, i32* %num_levels72, align 4, !tbaa !22
  %conv73 = zext i32 %52 to i64
  %mul = mul i64 %conv73, 4
  %conv74 = trunc i64 %mul to i32
  store i32 %conv74, i32* %levels_size, align 4, !tbaa !5
  %num_bits75 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %new_order, i32 0, i32 9
  %53 = load i32, i32* %num_bits75, align 4, !tbaa !23
  %procs76 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %new_order, i32 0, i32 10
  %54 = load %struct.gx_ht_order_procs_s*, %struct.gx_ht_order_procs_s** %procs76, align 8, !tbaa !24
  %bit_data_elt_size = getelementptr inbounds %struct.gx_ht_order_procs_s, %struct.gx_ht_order_procs_s* %54, i32 0, i32 0
  %55 = load i32, i32* %bit_data_elt_size, align 4, !tbaa !25
  %mul77 = mul i32 %53, %55
  store i32 %mul77, i32* %bits_size, align 4, !tbaa !5
  %56 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %57 = load i32, i32* %bits_size, align 4, !tbaa !5
  %idx.ext78 = sext i32 %57 to i64
  %add.ptr79 = getelementptr inbounds i8, i8* %56, i64 %idx.ext78
  %58 = load i32, i32* %levels_size, align 4, !tbaa !5
  %idx.ext80 = sext i32 %58 to i64
  %add.ptr81 = getelementptr inbounds i8, i8* %add.ptr79, i64 %idx.ext80
  %add.ptr82 = getelementptr inbounds i8, i8* %add.ptr81, i64 1
  %59 = load i8*, i8** %data_lim, align 8, !tbaa !1
  %cmp83 = icmp ugt i8* %add.ptr82, %59
  br i1 %cmp83, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %if.end.70
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.169

if.end.86:                                        ; preds = %if.end.70
  %width87 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %new_order, i32 0, i32 1
  %60 = load i16, i16* %width87, align 2, !tbaa !27
  %conv88 = zext i16 %60 to i32
  %height89 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %new_order, i32 0, i32 2
  %61 = load i16, i16* %height89, align 2, !tbaa !28
  %conv90 = zext i16 %61 to i32
  %num_levels91 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %new_order, i32 0, i32 8
  %62 = load i32, i32* %num_levels91, align 4, !tbaa !22
  %num_bits92 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %new_order, i32 0, i32 9
  %63 = load i32, i32* %num_bits92, align 4, !tbaa !23
  %shift93 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %new_order, i32 0, i32 4
  %64 = load i16, i16* %shift93, align 2, !tbaa !29
  %conv94 = zext i16 %64 to i32
  %procs95 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %new_order, i32 0, i32 10
  %65 = load %struct.gx_ht_order_procs_s*, %struct.gx_ht_order_procs_s** %procs95, align 8, !tbaa !24
  %66 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call96 = call i32 @gx_ht_alloc_ht_order(%struct.gx_ht_order_s* %new_order, i32 %conv88, i32 %conv90, i32 %62, i32 %63, i32 %conv94, %struct.gx_ht_order_procs_s* %65, %struct.gs_memory_s* %66) #5
  store i32 %call96, i32* %code, align 4, !tbaa !5
  %67 = load i32, i32* %code, align 4, !tbaa !5
  %cmp97 = icmp slt i32 %67, 0
  br i1 %cmp97, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %if.end.86
  %68 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %68, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.169

if.end.100:                                       ; preds = %if.end.86
  %params = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %new_order, i32 0, i32 0
  %69 = bitcast %struct.gx_ht_cell_params_s* %params to i8*
  %call101 = call i8* @memset(i8* %69, i32 0, i64 40) #6
  %screen_params = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %new_order, i32 0, i32 16
  %70 = bitcast %struct.gx_ht_order_screen_params_s* %screen_params to i8*
  %call102 = call i8* @memset(i8* %70, i32 0, i64 32) #6
  %levels = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %new_order, i32 0, i32 12
  %71 = load i32*, i32** %levels, align 8, !tbaa !31
  %72 = bitcast i32* %71 to i8*
  %73 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %74 = load i32, i32* %levels_size, align 4, !tbaa !5
  %conv103 = sext i32 %74 to i64
  %call104 = call i8* @memcpy(i8* %72, i8* %73, i64 %conv103) #6
  %75 = load i32, i32* %levels_size, align 4, !tbaa !5
  %76 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %idx.ext105 = sext i32 %75 to i64
  %add.ptr106 = getelementptr inbounds i8, i8* %76, i64 %idx.ext105
  store i8* %add.ptr106, i8** %data.addr, align 8, !tbaa !1
  %bit_data = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %new_order, i32 0, i32 13
  %77 = load i8*, i8** %bit_data, align 8, !tbaa !32
  %78 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %79 = load i32, i32* %bits_size, align 4, !tbaa !5
  %conv107 = sext i32 %79 to i64
  %call108 = call i8* @memcpy(i8* %77, i8* %78, i64 %conv107) #6
  %80 = load i32, i32* %bits_size, align 4, !tbaa !5
  %81 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %idx.ext109 = sext i32 %80 to i64
  %add.ptr110 = getelementptr inbounds i8, i8* %81, i64 %idx.ext109
  store i8* %add.ptr110, i8** %data.addr, align 8, !tbaa !1
  %transfer = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %new_order, i32 0, i32 15
  %82 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %83 = load i8*, i8** %data_lim, align 8, !tbaa !1
  %84 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %83 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %84 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv111 = trunc i64 %sub.ptr.sub to i32
  %85 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call112 = call i32 @gx_ht_read_tf(%struct.gx_transfer_map_s** %transfer, i8* %82, i32 %conv111, %struct.gs_memory_s* %85) #5
  store i32 %call112, i32* %code, align 4, !tbaa !5
  %86 = load i32, i32* %code, align 4, !tbaa !5
  %cmp113 = icmp slt i32 %86, 0
  br i1 %cmp113, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %if.end.100
  %87 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @gx_ht_order_release(%struct.gx_ht_order_s* %new_order, %struct.gs_memory_s* %87, i32 0) #5
  %88 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %88, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.169

if.end.116:                                       ; preds = %if.end.100
  %89 = load i32, i32* %code, align 4, !tbaa !5
  %90 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %idx.ext117 = sext i32 %89 to i64
  %add.ptr118 = getelementptr inbounds i8, i8* %90, i64 %idx.ext117
  store i8* %add.ptr118, i8** %data.addr, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.116
  %91 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom119 = sext i32 %91 to i64
  %92 = load %struct.gx_device_halftone_resource_s** ()**, %struct.gx_device_halftone_resource_s** ()*** %phtrp, align 8, !tbaa !1
  %arrayidx120 = getelementptr inbounds %struct.gx_device_halftone_resource_s** ()*, %struct.gx_device_halftone_resource_s** ()** %92, i64 %idxprom119
  %93 = load %struct.gx_device_halftone_resource_s** ()*, %struct.gx_device_halftone_resource_s** ()** %arrayidx120, align 8, !tbaa !1
  %cmp121 = icmp ne %struct.gx_device_halftone_resource_s** ()* %93, null
  br i1 %cmp121, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %94 = bitcast %struct.gx_device_halftone_resource_s*** %pphtr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %94) #1
  %95 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom123 = sext i32 %95 to i64
  %96 = load %struct.gx_device_halftone_resource_s** ()**, %struct.gx_device_halftone_resource_s** ()*** %phtrp, align 8, !tbaa !1
  %arrayidx124 = getelementptr inbounds %struct.gx_device_halftone_resource_s** ()*, %struct.gx_device_halftone_resource_s** ()** %96, i64 %idxprom123
  %97 = load %struct.gx_device_halftone_resource_s** ()*, %struct.gx_device_halftone_resource_s** ()** %arrayidx124, align 8, !tbaa !1
  %call125 = call %struct.gx_device_halftone_resource_s** %97() #5
  store %struct.gx_device_halftone_resource_s** %call125, %struct.gx_device_halftone_resource_s*** %pphtr, align 8, !tbaa !1
  %98 = bitcast %struct.gx_device_halftone_resource_s** %phtr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %98) #1
  br label %while.cond

while.cond:                                       ; preds = %if.end.163, %for.body
  %99 = load %struct.gx_device_halftone_resource_s**, %struct.gx_device_halftone_resource_s*** %pphtr, align 8, !tbaa !1
  %incdec.ptr126 = getelementptr inbounds %struct.gx_device_halftone_resource_s*, %struct.gx_device_halftone_resource_s** %99, i32 1
  store %struct.gx_device_halftone_resource_s** %incdec.ptr126, %struct.gx_device_halftone_resource_s*** %pphtr, align 8, !tbaa !1
  %100 = load %struct.gx_device_halftone_resource_s*, %struct.gx_device_halftone_resource_s** %99, align 8, !tbaa !1
  store %struct.gx_device_halftone_resource_s* %100, %struct.gx_device_halftone_resource_s** %phtr, align 8, !tbaa !1
  %cmp127 = icmp ne %struct.gx_device_halftone_resource_s* %100, null
  br i1 %cmp127, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %101 = load %struct.gx_device_halftone_resource_s*, %struct.gx_device_halftone_resource_s** %phtr, align 8, !tbaa !1
  %num_levels129 = getelementptr inbounds %struct.gx_device_halftone_resource_s, %struct.gx_device_halftone_resource_s* %101, i32 0, i32 4
  %102 = load i32, i32* %num_levels129, align 4, !tbaa !41
  %conv130 = sext i32 %102 to i64
  %mul131 = mul i64 %conv130, 4
  %103 = load i32, i32* %levels_size, align 4, !tbaa !5
  %conv132 = sext i32 %103 to i64
  %cmp133 = icmp uge i64 %mul131, %conv132
  br i1 %cmp133, label %land.lhs.true, label %if.end.163

land.lhs.true:                                    ; preds = %while.body
  %104 = load %struct.gx_device_halftone_resource_s*, %struct.gx_device_halftone_resource_s** %phtr, align 8, !tbaa !1
  %Width = getelementptr inbounds %struct.gx_device_halftone_resource_s, %struct.gx_device_halftone_resource_s* %104, i32 0, i32 2
  %105 = load i32, i32* %Width, align 4, !tbaa !43
  %106 = load %struct.gx_device_halftone_resource_s*, %struct.gx_device_halftone_resource_s** %phtr, align 8, !tbaa !1
  %Height = getelementptr inbounds %struct.gx_device_halftone_resource_s, %struct.gx_device_halftone_resource_s* %106, i32 0, i32 3
  %107 = load i32, i32* %Height, align 4, !tbaa !44
  %mul135 = mul nsw i32 %105, %107
  %108 = load %struct.gx_device_halftone_resource_s*, %struct.gx_device_halftone_resource_s** %phtr, align 8, !tbaa !1
  %elt_size = getelementptr inbounds %struct.gx_device_halftone_resource_s, %struct.gx_device_halftone_resource_s* %108, i32 0, i32 7
  %109 = load i32, i32* %elt_size, align 4, !tbaa !45
  %mul136 = mul nsw i32 %mul135, %109
  %110 = load i32, i32* %bits_size, align 4, !tbaa !5
  %cmp137 = icmp sge i32 %mul136, %110
  br i1 %cmp137, label %land.lhs.true.139, label %if.end.163

land.lhs.true.139:                                ; preds = %land.lhs.true
  %111 = load %struct.gx_device_halftone_resource_s*, %struct.gx_device_halftone_resource_s** %phtr, align 8, !tbaa !1
  %levels140 = getelementptr inbounds %struct.gx_device_halftone_resource_s, %struct.gx_device_halftone_resource_s* %111, i32 0, i32 5
  %112 = load i32*, i32** %levels140, align 8, !tbaa !46
  %113 = bitcast i32* %112 to i8*
  %levels141 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %new_order, i32 0, i32 12
  %114 = load i32*, i32** %levels141, align 8, !tbaa !31
  %115 = bitcast i32* %114 to i8*
  %116 = load i32, i32* %levels_size, align 4, !tbaa !5
  %conv142 = sext i32 %116 to i64
  %call143 = call i32 @memcmp(i8* %113, i8* %115, i64 %conv142) #7
  %cmp144 = icmp eq i32 %call143, 0
  br i1 %cmp144, label %land.lhs.true.146, label %if.end.163

land.lhs.true.146:                                ; preds = %land.lhs.true.139
  %117 = load %struct.gx_device_halftone_resource_s*, %struct.gx_device_halftone_resource_s** %phtr, align 8, !tbaa !1
  %bit_data147 = getelementptr inbounds %struct.gx_device_halftone_resource_s, %struct.gx_device_halftone_resource_s* %117, i32 0, i32 6
  %118 = load i8*, i8** %bit_data147, align 8, !tbaa !47
  %bit_data148 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %new_order, i32 0, i32 13
  %119 = load i8*, i8** %bit_data148, align 8, !tbaa !32
  %120 = load i32, i32* %bits_size, align 4, !tbaa !5
  %conv149 = sext i32 %120 to i64
  %call150 = call i32 @memcmp(i8* %118, i8* %119, i64 %conv149) #7
  %cmp151 = icmp eq i32 %call150, 0
  br i1 %cmp151, label %if.then.153, label %if.end.163

if.then.153:                                      ; preds = %land.lhs.true.146
  %121 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs154 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %121, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs154, i32 0, i32 2
  %122 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !48
  %123 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %bit_data155 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %new_order, i32 0, i32 13
  %124 = load i8*, i8** %bit_data155, align 8, !tbaa !32
  call void %122(%struct.gs_memory_s* %123, i8* %124, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0)) #5
  %125 = load %struct.gx_device_halftone_resource_s*, %struct.gx_device_halftone_resource_s** %phtr, align 8, !tbaa !1
  %bit_data156 = getelementptr inbounds %struct.gx_device_halftone_resource_s, %struct.gx_device_halftone_resource_s* %125, i32 0, i32 6
  %126 = load i8*, i8** %bit_data156, align 8, !tbaa !47
  %bit_data157 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %new_order, i32 0, i32 13
  store i8* %126, i8** %bit_data157, align 8, !tbaa !32
  %127 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs158 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %127, i32 0, i32 1
  %free_object159 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs158, i32 0, i32 2
  %128 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object159, align 8, !tbaa !48
  %129 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %levels160 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %new_order, i32 0, i32 12
  %130 = load i32*, i32** %levels160, align 8, !tbaa !31
  %131 = bitcast i32* %130 to i8*
  call void %128(%struct.gs_memory_s* %129, i8* %131, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0)) #5
  %132 = load %struct.gx_device_halftone_resource_s*, %struct.gx_device_halftone_resource_s** %phtr, align 8, !tbaa !1
  %levels161 = getelementptr inbounds %struct.gx_device_halftone_resource_s, %struct.gx_device_halftone_resource_s* %132, i32 0, i32 5
  %133 = load i32*, i32** %levels161, align 8, !tbaa !46
  %levels162 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %new_order, i32 0, i32 12
  store i32* %133, i32** %levels162, align 8, !tbaa !31
  store i32 17, i32* %cleanup.dest.slot
  br label %cleanup

if.end.163:                                       ; preds = %land.lhs.true.146, %land.lhs.true.139, %land.lhs.true, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.153, %while.end
  %134 = bitcast %struct.gx_device_halftone_resource_s** %phtr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %134) #1
  %135 = bitcast %struct.gx_device_halftone_resource_s*** %pphtr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %135) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.169 [
    i32 0, label %cleanup.cont
    i32 17, label %done
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %136 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %136, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %done

done:                                             ; preds = %for.end, %cleanup
  %137 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %pcomp.addr, align 8, !tbaa !1
  %corder = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %137, i32 0, i32 0
  %138 = bitcast %struct.gx_ht_order_s* %corder to i8*
  %139 = bitcast %struct.gx_ht_order_s* %new_order to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %138, i8* %139, i64 160, i32 8, i1 false), !tbaa.struct !51
  %140 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %pcomp.addr, align 8, !tbaa !1
  %cname = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %140, i32 0, i32 2
  store i32 0, i32* %cname, align 4, !tbaa !52
  %141 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %142 = load i8*, i8** %data0, align 8, !tbaa !1
  %sub.ptr.lhs.cast165 = ptrtoint i8* %141 to i64
  %sub.ptr.rhs.cast166 = ptrtoint i8* %142 to i64
  %sub.ptr.sub167 = sub i64 %sub.ptr.lhs.cast165, %sub.ptr.rhs.cast166
  %conv168 = trunc i64 %sub.ptr.sub167 to i32
  store i32 %conv168, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.169

cleanup.169:                                      ; preds = %done, %cleanup, %if.then.115, %if.then.99, %if.then.85, %if.then.69, %if.then.2, %if.then
  %143 = bitcast %struct.gx_device_halftone_resource_s** ()*** %phtrp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %143) #1
  %144 = bitcast i32* %bits_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #1
  %145 = bitcast i32* %levels_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #1
  %146 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #1
  %147 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %147) #1
  %148 = bitcast i8** %data_lim to i8*
  call void @llvm.lifetime.end(i64 8, i8* %148) #1
  %149 = bitcast i8** %data0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %149) #1
  %150 = bitcast %struct.gx_ht_order_s* %new_order to i8*
  call void @llvm.lifetime.end(i64 160, i8* %150) #1
  %151 = load i32, i32* %retval
  ret i32 %151
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @gx_imager_dev_ht_install(%struct.gs_imager_state_s*, %struct.gx_device_halftone_s*, i32, %struct.gx_device_s*) #3

declare void @gx_ht_order_release(%struct.gx_ht_order_s*, %struct.gs_memory_s*, i32) #3

declare i32 @enc_u_size_uint(i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @gx_ht_write_tf(%struct.gx_transfer_map_s* %pmap, i8* %data, i32* %psize) #0 {
entry:
  %retval = alloca i32, align 4
  %pmap.addr = alloca %struct.gx_transfer_map_s*, align 8
  %data.addr = alloca i8*, align 8
  %psize.addr = alloca i32*, align 8
  %req_size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_transfer_map_s* %pmap, %struct.gx_transfer_map_s** %pmap.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32* %psize, i32** %psize.addr, align 8, !tbaa !1
  %0 = bitcast i32* %req_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 1, i32* %req_size, align 4, !tbaa !5
  %1 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %pmap.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.gx_transfer_map_s* %1, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %pmap.addr, align 8, !tbaa !1
  %proc = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %2, i32 0, i32 1
  %3 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc, align 8, !tbaa !53
  %cmp1 = icmp ne float (double, %struct.gx_transfer_map_s*)* %3, @gs_identity_transfer
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, i32* %req_size, align 4, !tbaa !5
  %conv = sext i32 %4 to i64
  %add = add i64 %conv, 512
  %conv2 = trunc i64 %add to i32
  store i32 %conv2, i32* %req_size, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %5 = load i32, i32* %req_size, align 4, !tbaa !5
  %6 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  %7 = load i32, i32* %6, align 4, !tbaa !5
  %cmp3 = icmp ugt i32 %5, %7
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %8 = load i32, i32* %req_size, align 4, !tbaa !5
  %9 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  store i32 %8, i32* %9, align 4, !tbaa !5
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %10 = load i32, i32* %req_size, align 4, !tbaa !5
  %cmp7 = icmp eq i32 %10, 1
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end.6
  %11 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %pmap.addr, align 8, !tbaa !1
  %cmp10 = icmp eq %struct.gx_transfer_map_s* %11, null
  %cond = select i1 %cmp10, i32 0, i32 1
  %conv12 = trunc i32 %cond to i8
  %12 = load i8*, i8** %data.addr, align 8, !tbaa !1
  store i8 %conv12, i8* %12, align 1, !tbaa !21
  br label %if.end.13

if.else:                                          ; preds = %if.end.6
  %13 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %data.addr, align 8, !tbaa !1
  store i8 2, i8* %13, align 1, !tbaa !21
  %14 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %15 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %pmap.addr, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %15, i32 0, i32 4
  %arraydecay = getelementptr inbounds [256 x i16], [256 x i16]* %values, i32 0, i32 0
  %16 = bitcast i16* %arraydecay to i8*
  %call = call i8* @memcpy(i8* %14, i8* %16, i64 512) #6
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.9
  %17 = load i32, i32* %req_size, align 4, !tbaa !5
  %18 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  store i32 %17, i32* %18, align 4, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.13, %if.then.5
  %19 = bitcast i32* %req_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare i8* @enc_u_put_uint(i32, i8*) #3

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #2

declare float @gs_identity_transfer(double, %struct.gx_transfer_map_s*) #3

declare i8* @enc_u_get_uint(i32*, i8*) #3

declare i32 @gx_ht_alloc_ht_order(%struct.gx_ht_order_s*, i32, i32, i32, i32, i32, %struct.gx_ht_order_procs_s*, %struct.gs_memory_s*) #3

; Function Attrs: nounwind uwtable
define internal i32 @gx_ht_read_tf(%struct.gx_transfer_map_s** %ppmap, i8* %data, i32 %size, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %ppmap.addr = alloca %struct.gx_transfer_map_s**, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %tf_type = alloca i32, align 4
  %pmap = alloca %struct.gx_transfer_map_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_transfer_map_s** %ppmap, %struct.gx_transfer_map_s*** %ppmap.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i32* %tf_type to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.gx_transfer_map_s** %pmap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i32, i32* %size.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %size.addr, align 4, !tbaa !5
  %dec = add i32 %3, -1
  store i32 %dec, i32* %size.addr, align 4, !tbaa !5
  %4 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %data.addr, align 8, !tbaa !1
  %5 = load i8, i8* %4, align 1, !tbaa !21
  %conv = zext i8 %5 to i32
  store i32 %conv, i32* %tf_type, align 4, !tbaa !21
  %6 = load i32, i32* %tf_type, align 4, !tbaa !21
  %cmp1 = icmp eq i32 %6, 0
  br i1 %cmp1, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %7 = load %struct.gx_transfer_map_s**, %struct.gx_transfer_map_s*** %ppmap.addr, align 8, !tbaa !1
  store %struct.gx_transfer_map_s* null, %struct.gx_transfer_map_s** %7, align 8, !tbaa !1
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.4
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %9 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !56
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i8* %9(%struct.gs_memory_s* %10, %struct.gs_memory_struct_type_s* @st_transfer_map, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0)) #5
  %11 = bitcast i8* %call to %struct.gx_transfer_map_s*
  store %struct.gx_transfer_map_s* %11, %struct.gx_transfer_map_s** %pmap, align 8, !tbaa !1
  %cmp5 = icmp eq %struct.gx_transfer_map_s* %11, null
  br i1 %cmp5, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %do.body
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  br label %do.body.8

do.body.8:                                        ; preds = %if.else
  %12 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %pmap, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %12, i32 0, i32 0
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  store i64 1, i64* %ref_count, align 8, !tbaa !57
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %14 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %pmap, align 8, !tbaa !1
  %rc9 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %14, i32 0, i32 0
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc9, i32 0, i32 1
  store %struct.gs_memory_s* %13, %struct.gs_memory_s** %memory, align 8, !tbaa !58
  %15 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %pmap, align 8, !tbaa !1
  %rc10 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %15, i32 0, i32 0
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc10, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @rc_free_struct_only, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !59
  br label %do.body.11

do.body.11:                                       ; preds = %do.body.8
  br label %do.cond

do.cond:                                          ; preds = %do.body.11
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.12

do.cond.12:                                       ; preds = %do.end
  br label %do.end.13

do.end.13:                                        ; preds = %do.cond.12
  br label %if.end.14

if.end.14:                                        ; preds = %do.end.13
  br label %do.cond.15

do.cond.15:                                       ; preds = %if.end.14
  br label %do.end.16

do.end.16:                                        ; preds = %do.cond.15
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call17 = call i64 @gs_next_ids(%struct.gs_memory_s* %16, i32 1) #5
  %17 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %pmap, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %17, i32 0, i32 3
  store i64 %call17, i64* %id, align 8, !tbaa !60
  %18 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %pmap, align 8, !tbaa !1
  %closure = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %18, i32 0, i32 2
  %proc = getelementptr inbounds %struct.gs_mapping_closure_s, %struct.gs_mapping_closure_s* %closure, i32 0, i32 0
  store float (double, %struct.gx_transfer_map_s*, i8*)* null, float (double, %struct.gx_transfer_map_s*, i8*)** %proc, align 8, !tbaa !61
  %19 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %pmap, align 8, !tbaa !1
  %closure18 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %19, i32 0, i32 2
  %data19 = getelementptr inbounds %struct.gs_mapping_closure_s, %struct.gs_mapping_closure_s* %closure18, i32 0, i32 1
  store i8* null, i8** %data19, align 8, !tbaa !62
  %20 = load i32, i32* %tf_type, align 4, !tbaa !21
  %cmp20 = icmp eq i32 %20, 1
  br i1 %cmp20, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %do.end.16
  %21 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %pmap, align 8, !tbaa !1
  call void @gx_set_identity_transfer(%struct.gx_transfer_map_s* %21) #5
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.23:                                       ; preds = %do.end.16
  %22 = load i32, i32* %tf_type, align 4, !tbaa !21
  %cmp24 = icmp eq i32 %22, 2
  br i1 %cmp24, label %land.lhs.true, label %if.else.32

land.lhs.true:                                    ; preds = %if.else.23
  %23 = load i32, i32* %size.addr, align 4, !tbaa !5
  %conv26 = zext i32 %23 to i64
  %cmp27 = icmp uge i64 %conv26, 512
  br i1 %cmp27, label %if.then.29, label %if.else.32

if.then.29:                                       ; preds = %land.lhs.true
  %24 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %pmap, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %24, i32 0, i32 4
  %arraydecay = getelementptr inbounds [256 x i16], [256 x i16]* %values, i32 0, i32 0
  %25 = bitcast i16* %arraydecay to i8*
  %26 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %call30 = call i8* @memcpy(i8* %25, i8* %26, i64 512) #6
  %27 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %pmap, align 8, !tbaa !1
  %proc31 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %27, i32 0, i32 1
  store float (double, %struct.gx_transfer_map_s*)* @gs_mapped_transfer, float (double, %struct.gx_transfer_map_s*)** %proc31, align 8, !tbaa !53
  %28 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %pmap, align 8, !tbaa !1
  %29 = load %struct.gx_transfer_map_s**, %struct.gx_transfer_map_s*** %ppmap.addr, align 8, !tbaa !1
  store %struct.gx_transfer_map_s* %28, %struct.gx_transfer_map_s** %29, align 8, !tbaa !1
  store i32 513, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.32:                                       ; preds = %land.lhs.true, %if.else.23
  br label %do.body.33

do.body.33:                                       ; preds = %if.else.32
  %30 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %pmap, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_transfer_map_s* %30, null
  br i1 %tobool, label %if.then.34, label %if.end.62

if.then.34:                                       ; preds = %do.body.33
  br label %do.body.35

do.body.35:                                       ; preds = %if.then.34
  br label %do.body.36

do.body.36:                                       ; preds = %do.body.35
  br label %do.cond.37

do.cond.37:                                       ; preds = %do.body.36
  br label %do.end.38

do.end.38:                                        ; preds = %do.cond.37
  %31 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %pmap, align 8, !tbaa !1
  %rc39 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %31, i32 0, i32 0
  %ref_count40 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc39, i32 0, i32 0
  %32 = load i64, i64* %ref_count40, align 8, !tbaa !57
  %add = add nsw i64 %32, -1
  store i64 %add, i64* %ref_count40, align 8, !tbaa !57
  br label %do.cond.41

do.cond.41:                                       ; preds = %do.end.38
  br label %do.end.42

do.end.42:                                        ; preds = %do.cond.41
  %33 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %pmap, align 8, !tbaa !1
  %rc43 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %33, i32 0, i32 0
  %ref_count44 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc43, i32 0, i32 0
  %34 = load i64, i64* %ref_count44, align 8, !tbaa !57
  %tobool45 = icmp ne i64 %34, 0
  br i1 %tobool45, label %if.else.57, label %if.then.46

if.then.46:                                       ; preds = %do.end.42
  br label %do.body.47

do.body.47:                                       ; preds = %if.then.46
  br label %do.body.48

do.body.48:                                       ; preds = %do.body.47
  br label %do.cond.49

do.cond.49:                                       ; preds = %do.body.48
  br label %do.end.50

do.end.50:                                        ; preds = %do.cond.49
  %35 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %pmap, align 8, !tbaa !1
  %rc51 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %35, i32 0, i32 0
  %free52 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc51, i32 0, i32 2
  %36 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free52, align 8, !tbaa !59
  %37 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %pmap, align 8, !tbaa !1
  %rc53 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %37, i32 0, i32 0
  %memory54 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc53, i32 0, i32 1
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory54, align 8, !tbaa !58
  %39 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %pmap, align 8, !tbaa !1
  %40 = bitcast %struct.gx_transfer_map_s* %39 to i8*
  call void %36(%struct.gs_memory_s* %38, i8* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0)) #5
  br label %do.cond.55

do.cond.55:                                       ; preds = %do.end.50
  br label %do.end.56

do.end.56:                                        ; preds = %do.cond.55
  store %struct.gx_transfer_map_s* null, %struct.gx_transfer_map_s** %pmap, align 8, !tbaa !1
  br label %if.end.61

if.else.57:                                       ; preds = %do.end.42
  br label %do.body.58

do.body.58:                                       ; preds = %if.else.57
  br label %do.cond.59

do.cond.59:                                       ; preds = %do.body.58
  br label %do.end.60

do.end.60:                                        ; preds = %do.cond.59
  br label %if.end.61

if.end.61:                                        ; preds = %do.end.60, %do.end.56
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %do.body.33
  br label %do.cond.63

do.cond.63:                                       ; preds = %if.end.62
  br label %do.end.64

do.end.64:                                        ; preds = %do.cond.63
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.64, %if.then.29, %if.then.22, %if.then.7, %if.then.3, %if.then
  %41 = bitcast %struct.gx_transfer_map_s** %pmap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast i32* %tf_type to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = load i32, i32* %retval
  ret i32 %43
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

declare void @rc_free_struct_only(%struct.gs_memory_s*, i8*, i8*) #3

declare i64 @gs_next_ids(%struct.gs_memory_s*, i32) #3

declare void @gx_set_identity_transfer(%struct.gx_transfer_map_s*) #3

declare float @gs_mapped_transfer(double, %struct.gx_transfer_map_s*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nobuiltin nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 200}
!8 = !{!"gx_device_halftone_s", !9, i64 0, !16, i64 160, !12, i64 184, !3, i64 192, !2, i64 200, !6, i64 208, !6, i64 212, !6, i64 216, !6, i64 220}
!9 = !{!"gx_ht_order_s", !10, i64 0, !11, i64 40, !11, i64 42, !11, i64 44, !11, i64 46, !11, i64 48, !11, i64 50, !6, i64 52, !6, i64 56, !6, i64 60, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !13, i64 112, !2, i64 144, !6, i64 152}
!10 = !{!"gx_ht_cell_params_s", !11, i64 0, !11, i64 2, !11, i64 4, !11, i64 6, !11, i64 8, !11, i64 10, !12, i64 16, !11, i64 24, !11, i64 26, !6, i64 28, !6, i64 32, !6, i64 36}
!11 = !{!"short", !3, i64 0}
!12 = !{!"long", !3, i64 0}
!13 = !{!"gx_ht_order_screen_params_s", !14, i64 0, !12, i64 24}
!14 = !{!"gs_matrix_s", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20}
!15 = !{!"float", !3, i64 0}
!16 = !{!"rc_header_s", !12, i64 0, !2, i64 8, !2, i64 16}
!17 = !{!8, !6, i64 212}
!18 = !{!19, !6, i64 160}
!19 = !{!"gx_ht_order_component_s", !9, i64 0, !6, i64 160, !6, i64 164}
!20 = !{!8, !3, i64 192}
!21 = !{!3, !3, i64 0}
!22 = !{!9, !6, i64 56}
!23 = !{!9, !6, i64 60}
!24 = !{!9, !2, i64 64}
!25 = !{!26, !6, i64 0}
!26 = !{!"gx_ht_order_procs_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32}
!27 = !{!9, !11, i64 40}
!28 = !{!9, !11, i64 42}
!29 = !{!9, !11, i64 46}
!30 = !{!9, !2, i64 104}
!31 = !{!9, !2, i64 80}
!32 = !{!9, !2, i64 88}
!33 = !{!8, !12, i64 184}
!34 = !{!8, !6, i64 216}
!35 = !{!8, !6, i64 220}
!36 = !{!8, !6, i64 208}
!37 = !{i64 0, i64 2, !38, i64 2, i64 2, !38, i64 4, i64 2, !38, i64 6, i64 2, !38, i64 8, i64 2, !38, i64 10, i64 2, !38, i64 16, i64 8, !39, i64 24, i64 2, !38, i64 26, i64 2, !38, i64 28, i64 4, !5, i64 32, i64 4, !5, i64 36, i64 4, !5, i64 40, i64 2, !38, i64 42, i64 2, !38, i64 44, i64 2, !38, i64 46, i64 2, !38, i64 48, i64 2, !38, i64 50, i64 2, !38, i64 52, i64 4, !5, i64 56, i64 4, !5, i64 60, i64 4, !5, i64 64, i64 8, !1, i64 72, i64 8, !1, i64 80, i64 8, !1, i64 88, i64 8, !1, i64 96, i64 8, !1, i64 104, i64 8, !1, i64 112, i64 4, !40, i64 116, i64 4, !40, i64 120, i64 4, !40, i64 124, i64 4, !40, i64 128, i64 4, !40, i64 132, i64 4, !40, i64 136, i64 8, !39, i64 144, i64 8, !1, i64 152, i64 4, !5, i64 160, i64 4, !5, i64 164, i64 4, !5}
!38 = !{!11, !11, i64 0}
!39 = !{!12, !12, i64 0}
!40 = !{!15, !15, i64 0}
!41 = !{!42, !6, i64 20}
!42 = !{!"gx_device_halftone_resource_s", !2, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !2, i64 24, !2, i64 32, !6, i64 40}
!43 = !{!42, !6, i64 12}
!44 = !{!42, !6, i64 16}
!45 = !{!42, !6, i64 40}
!46 = !{!42, !2, i64 24}
!47 = !{!42, !2, i64 32}
!48 = !{!49, !2, i64 24}
!49 = !{!"gs_memory_s", !2, i64 0, !50, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!50 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!51 = !{i64 0, i64 2, !38, i64 2, i64 2, !38, i64 4, i64 2, !38, i64 6, i64 2, !38, i64 8, i64 2, !38, i64 10, i64 2, !38, i64 16, i64 8, !39, i64 24, i64 2, !38, i64 26, i64 2, !38, i64 28, i64 4, !5, i64 32, i64 4, !5, i64 36, i64 4, !5, i64 40, i64 2, !38, i64 42, i64 2, !38, i64 44, i64 2, !38, i64 46, i64 2, !38, i64 48, i64 2, !38, i64 50, i64 2, !38, i64 52, i64 4, !5, i64 56, i64 4, !5, i64 60, i64 4, !5, i64 64, i64 8, !1, i64 72, i64 8, !1, i64 80, i64 8, !1, i64 88, i64 8, !1, i64 96, i64 8, !1, i64 104, i64 8, !1, i64 112, i64 4, !40, i64 116, i64 4, !40, i64 120, i64 4, !40, i64 124, i64 4, !40, i64 128, i64 4, !40, i64 132, i64 4, !40, i64 136, i64 8, !39, i64 144, i64 8, !1, i64 152, i64 4, !5}
!52 = !{!19, !6, i64 164}
!53 = !{!54, !2, i64 24}
!54 = !{!"gx_transfer_map_s", !16, i64 0, !2, i64 24, !55, i64 32, !12, i64 48, !3, i64 56}
!55 = !{!"gs_mapping_closure_s", !2, i64 0, !2, i64 8}
!56 = !{!49, !2, i64 72}
!57 = !{!54, !12, i64 0}
!58 = !{!54, !2, i64 8}
!59 = !{!54, !2, i64 16}
!60 = !{!54, !12, i64 48}
!61 = !{!54, !2, i64 32}
!62 = !{!54, !2, i64 40}
