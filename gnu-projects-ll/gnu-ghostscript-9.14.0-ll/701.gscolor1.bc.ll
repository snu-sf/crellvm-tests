; ModuleID = './gscolor1.bc'
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
%struct.gs_pattern_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64 }
%struct.gs_pattern_type_s = type opaque
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
%struct.stream_s = type opaque
%struct.client_color_space_data_s = type { void (%struct.gs_color_space_s*, i32)* }
%union.anon = type { %struct.gs_device_n_params_s }
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
%struct.gs_paint_color_s = type { [64 x float] }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type opaque
%struct.gx_device_color_saved_s = type { %struct.gx_device_color_type_s*, %union._svc, %struct.gs_int_point_s }
%union._svc = type { %struct._svbin, [304 x i8] }
%struct._svbin = type { [2 x i64], i32, i32 }
%struct.gx_rop_source_s = type { i8*, i32, i32, i64, [2 x i64], i32, i32 }

@gx_dc_type_data_none = external constant %struct.gx_device_color_type_s, align 8
@.str = private unnamed_addr constant [16 x i8] c"gs_setcmykcolor\00", align 1
@st_transfer_map = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"gs_setblackgeneration\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"gs_setundercolorremoval\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"gs_setcolortransfer\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"Red\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Green\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"Blue\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"Gray\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"setcolortransfer\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gs_setcmykcolor(%struct.gs_state_s* %pgs, double %c, double %m, double %y, double %k) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %c.addr = alloca double, align 8
  %m.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %k.addr = alloca double, align 8
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pcc = alloca %struct.gs_client_color_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store double %c, double* %c.addr, align 8, !tbaa !5
  store double %m, double* %m.addr, align 8, !tbaa !5
  store double %y, double* %y.addr, align 8, !tbaa !5
  store double %k, double* %k.addr, align 8, !tbaa !5
  %0 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 1
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  %call = call %struct.gs_color_space_s* @gs_cspace_new_DeviceCMYK(%struct.gs_memory_s* %3) #3
  store %struct.gs_color_space_s* %call, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_color_space_s* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call1 = call i32 @gs_setcolorspace(%struct.gs_state_s* %5, %struct.gs_color_space_s* %6) #3
  store i32 %call1, i32* %code, align 4, !tbaa !24
  %cmp2 = icmp sge i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.70

if.then.3:                                        ; preds = %if.end
  %7 = bitcast %struct.gs_client_color_s** %pcc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color, i32 0, i64 0
  %ccolor = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 1
  %9 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %ccolor, align 8, !tbaa !25
  store %struct.gs_client_color_s* %9, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %10, i32 0, i32 69
  %arrayidx5 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color4, i32 0, i64 0
  %color_space = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx5, i32 0, i32 0
  %11 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space, align 8, !tbaa !27
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %11, i32 0, i32 0
  %12 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !28
  %adjust_color_count = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %12, i32 0, i32 14
  %13 = load void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)** %adjust_color_count, align 8, !tbaa !31
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %14, i32 0, i32 69
  %arrayidx7 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color6, i32 0, i64 0
  %ccolor8 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx7, i32 0, i32 1
  %15 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %ccolor8, align 8, !tbaa !25
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color9 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %16, i32 0, i32 69
  %arrayidx10 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color9, i32 0, i64 0
  %color_space11 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx10, i32 0, i32 0
  %17 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space11, align 8, !tbaa !27
  call void %13(%struct.gs_client_color_s* %15, %struct.gs_color_space_s* %17, i32 -1) #3
  %18 = load double, double* %c.addr, align 8, !tbaa !5
  %cmp12 = fcmp olt double %18, 0.000000e+00
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.3
  br label %cond.end.16

cond.false:                                       ; preds = %if.then.3
  %19 = load double, double* %c.addr, align 8, !tbaa !5
  %cmp13 = fcmp ogt double %19, 1.000000e+00
  br i1 %cmp13, label %cond.true.14, label %cond.false.15

cond.true.14:                                     ; preds = %cond.false
  br label %cond.end

cond.false.15:                                    ; preds = %cond.false
  %20 = load double, double* %c.addr, align 8, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false.15, %cond.true.14
  %cond = phi double [ 1.000000e+00, %cond.true.14 ], [ %20, %cond.false.15 ]
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.end, %cond.true
  %cond17 = phi double [ 0.000000e+00, %cond.true ], [ %cond, %cond.end ]
  %conv = fptrunc double %cond17 to float
  %21 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %21, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 0
  store float %conv, float* %arrayidx18, align 4, !tbaa !33
  %22 = load double, double* %m.addr, align 8, !tbaa !5
  %cmp19 = fcmp olt double %22, 0.000000e+00
  br i1 %cmp19, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %cond.end.16
  br label %cond.end.29

cond.false.22:                                    ; preds = %cond.end.16
  %23 = load double, double* %m.addr, align 8, !tbaa !5
  %cmp23 = fcmp ogt double %23, 1.000000e+00
  br i1 %cmp23, label %cond.true.25, label %cond.false.26

cond.true.25:                                     ; preds = %cond.false.22
  br label %cond.end.27

cond.false.26:                                    ; preds = %cond.false.22
  %24 = load double, double* %m.addr, align 8, !tbaa !5
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.26, %cond.true.25
  %cond28 = phi double [ 1.000000e+00, %cond.true.25 ], [ %24, %cond.false.26 ]
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.end.27, %cond.true.21
  %cond30 = phi double [ 0.000000e+00, %cond.true.21 ], [ %cond28, %cond.end.27 ]
  %conv31 = fptrunc double %cond30 to float
  %25 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %paint32 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %25, i32 0, i32 1
  %values33 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint32, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds [64 x float], [64 x float]* %values33, i32 0, i64 1
  store float %conv31, float* %arrayidx34, align 4, !tbaa !33
  %26 = load double, double* %y.addr, align 8, !tbaa !5
  %cmp35 = fcmp olt double %26, 0.000000e+00
  br i1 %cmp35, label %cond.true.37, label %cond.false.38

cond.true.37:                                     ; preds = %cond.end.29
  br label %cond.end.45

cond.false.38:                                    ; preds = %cond.end.29
  %27 = load double, double* %y.addr, align 8, !tbaa !5
  %cmp39 = fcmp ogt double %27, 1.000000e+00
  br i1 %cmp39, label %cond.true.41, label %cond.false.42

cond.true.41:                                     ; preds = %cond.false.38
  br label %cond.end.43

cond.false.42:                                    ; preds = %cond.false.38
  %28 = load double, double* %y.addr, align 8, !tbaa !5
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.42, %cond.true.41
  %cond44 = phi double [ 1.000000e+00, %cond.true.41 ], [ %28, %cond.false.42 ]
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.end.43, %cond.true.37
  %cond46 = phi double [ 0.000000e+00, %cond.true.37 ], [ %cond44, %cond.end.43 ]
  %conv47 = fptrunc double %cond46 to float
  %29 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %paint48 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %29, i32 0, i32 1
  %values49 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint48, i32 0, i32 0
  %arrayidx50 = getelementptr inbounds [64 x float], [64 x float]* %values49, i32 0, i64 2
  store float %conv47, float* %arrayidx50, align 4, !tbaa !33
  %30 = load double, double* %k.addr, align 8, !tbaa !5
  %cmp51 = fcmp olt double %30, 0.000000e+00
  br i1 %cmp51, label %cond.true.53, label %cond.false.54

cond.true.53:                                     ; preds = %cond.end.45
  br label %cond.end.61

cond.false.54:                                    ; preds = %cond.end.45
  %31 = load double, double* %k.addr, align 8, !tbaa !5
  %cmp55 = fcmp ogt double %31, 1.000000e+00
  br i1 %cmp55, label %cond.true.57, label %cond.false.58

cond.true.57:                                     ; preds = %cond.false.54
  br label %cond.end.59

cond.false.58:                                    ; preds = %cond.false.54
  %32 = load double, double* %k.addr, align 8, !tbaa !5
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.false.58, %cond.true.57
  %cond60 = phi double [ 1.000000e+00, %cond.true.57 ], [ %32, %cond.false.58 ]
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.end.59, %cond.true.53
  %cond62 = phi double [ 0.000000e+00, %cond.true.53 ], [ %cond60, %cond.end.59 ]
  %conv63 = fptrunc double %cond62 to float
  %33 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %paint64 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %33, i32 0, i32 1
  %values65 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint64, i32 0, i32 0
  %arrayidx66 = getelementptr inbounds [64 x float], [64 x float]* %values65, i32 0, i64 3
  store float %conv63, float* %arrayidx66, align 4, !tbaa !33
  %34 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %pattern = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %34, i32 0, i32 0
  store %struct.gs_pattern_instance_s* null, %struct.gs_pattern_instance_s** %pattern, align 8, !tbaa !34
  %35 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color67 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %35, i32 0, i32 69
  %arrayidx68 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color67, i32 0, i64 0
  %dev_color = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx68, i32 0, i32 2
  %36 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color, align 8, !tbaa !37
  %type69 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %36, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_none, %struct.gx_device_color_type_s** %type69, align 8, !tbaa !38
  %37 = bitcast %struct.gs_client_color_s** %pcc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  br label %if.end.70

if.end.70:                                        ; preds = %cond.end.61, %if.end
  %38 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  call void @rc_decrement_only_cs(%struct.gs_color_space_s* %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0)) #3
  %39 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.70, %if.then
  %40 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = load i32, i32* %retval
  ret i32 %42
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare %struct.gs_color_space_s* @gs_cspace_new_DeviceCMYK(%struct.gs_memory_s*) #2

declare i32 @gs_setcolorspace(%struct.gs_state_s*, %struct.gs_color_space_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare void @rc_decrement_only_cs(%struct.gs_color_space_s*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @gs_setblackgeneration(%struct.gs_state_s* %pgs, float (double, %struct.gx_transfer_map_s*)* %proc) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %proc.addr = alloca float (double, %struct.gx_transfer_map_s*)*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store float (double, %struct.gx_transfer_map_s*)* %proc, float (double, %struct.gx_transfer_map_s*)** %proc.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %1 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc.addr, align 8, !tbaa !1
  %call = call i32 @gs_setblackgeneration_remap(%struct.gs_state_s* %0, float (double, %struct.gx_transfer_map_s*)* %1, i32 1) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gs_setblackgeneration_remap(%struct.gs_state_s* %pgs, float (double, %struct.gx_transfer_map_s*)* %proc, i32 %remap) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %proc.addr = alloca float (double, %struct.gx_transfer_map_s*)*, align 8
  %remap.addr = alloca i32, align 4
  %new = alloca %struct.gx_transfer_map_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store float (double, %struct.gx_transfer_map_s*)* %proc, float (double, %struct.gx_transfer_map_s*)** %proc.addr, align 8, !tbaa !1
  store i32 %remap, i32* %remap.addr, align 4, !tbaa !24
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %black_generation = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 44
  %1 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %black_generation, align 8, !tbaa !43
  %cmp = icmp eq %struct.gx_transfer_map_s* %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %black_generation1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 44
  %3 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %black_generation1, align 8, !tbaa !43
  %rc = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %3, i32 0, i32 0
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %4 = load i64, i64* %ref_count, align 8, !tbaa !44
  %cmp2 = icmp sgt i64 %4, 1
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %black_generation4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %5, i32 0, i32 44
  %6 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %black_generation4, align 8, !tbaa !43
  %rc5 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %6, i32 0, i32 0
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc5, i32 0, i32 1
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !47
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 1
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory6, align 8, !tbaa !7
  %cmp7 = icmp ne %struct.gs_memory_s* %7, %9
  br i1 %cmp7, label %if.then, label %if.end.38

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %do.body
  %10 = bitcast %struct.gx_transfer_map_s** %new to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  br label %do.body.8

do.body.8:                                        ; preds = %if.then
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory9 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %11, i32 0, i32 1
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory9, align 8, !tbaa !7
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %12, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %13 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !48
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory10 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %14, i32 0, i32 1
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory10, align 8, !tbaa !7
  %call = call i8* %13(%struct.gs_memory_s* %15, %struct.gs_memory_struct_type_s* @st_transfer_map, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0)) #3
  %16 = bitcast i8* %call to %struct.gx_transfer_map_s*
  store %struct.gx_transfer_map_s* %16, %struct.gx_transfer_map_s** %new, align 8, !tbaa !1
  %cmp11 = icmp eq %struct.gx_transfer_map_s* %16, null
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %do.body.8
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body.8
  br label %do.body.13

do.body.13:                                       ; preds = %if.else
  %17 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %new, align 8, !tbaa !1
  %rc14 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %17, i32 0, i32 0
  %ref_count15 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc14, i32 0, i32 0
  store i64 1, i64* %ref_count15, align 8, !tbaa !44
  %18 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory16 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %18, i32 0, i32 1
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory16, align 8, !tbaa !7
  %20 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %new, align 8, !tbaa !1
  %rc17 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %20, i32 0, i32 0
  %memory18 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc17, i32 0, i32 1
  store %struct.gs_memory_s* %19, %struct.gs_memory_s** %memory18, align 8, !tbaa !47
  %21 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %new, align 8, !tbaa !1
  %rc19 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %21, i32 0, i32 0
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc19, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @rc_free_struct_only, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !51
  br label %do.body.20

do.body.20:                                       ; preds = %do.body.13
  br label %do.cond

do.cond:                                          ; preds = %do.body.20
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.21

do.cond.21:                                       ; preds = %do.end
  br label %do.end.22

do.end.22:                                        ; preds = %do.cond.21
  br label %if.end

if.end:                                           ; preds = %do.end.22
  br label %do.cond.23

do.cond.23:                                       ; preds = %if.end
  br label %do.end.24

do.end.24:                                        ; preds = %do.cond.23
  %22 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %black_generation25 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %22, i32 0, i32 44
  %23 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %black_generation25, align 8, !tbaa !43
  %tobool = icmp ne %struct.gx_transfer_map_s* %23, null
  br i1 %tobool, label %if.then.26, label %if.end.36

if.then.26:                                       ; preds = %do.end.24
  br label %do.body.27

do.body.27:                                       ; preds = %if.then.26
  br label %do.body.28

do.body.28:                                       ; preds = %do.body.27
  br label %do.cond.29

do.cond.29:                                       ; preds = %do.body.28
  br label %do.end.30

do.end.30:                                        ; preds = %do.cond.29
  %24 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %black_generation31 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %24, i32 0, i32 44
  %25 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %black_generation31, align 8, !tbaa !43
  %rc32 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %25, i32 0, i32 0
  %ref_count33 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc32, i32 0, i32 0
  %26 = load i64, i64* %ref_count33, align 8, !tbaa !44
  %add = add nsw i64 %26, -1
  store i64 %add, i64* %ref_count33, align 8, !tbaa !44
  br label %do.cond.34

do.cond.34:                                       ; preds = %do.end.30
  br label %do.end.35

do.end.35:                                        ; preds = %do.cond.34
  br label %if.end.36

if.end.36:                                        ; preds = %do.end.35, %do.end.24
  %27 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %new, align 8, !tbaa !1
  %28 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %black_generation37 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %28, i32 0, i32 44
  store %struct.gx_transfer_map_s* %27, %struct.gx_transfer_map_s** %black_generation37, align 8, !tbaa !43
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.36, %if.then.12
  %29 = bitcast %struct.gx_transfer_map_s** %new to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.38

if.end.38:                                        ; preds = %cleanup.cont, %lor.lhs.false.3
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.38
  %30 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc.addr, align 8, !tbaa !1
  %31 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %black_generation41 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %31, i32 0, i32 44
  %32 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %black_generation41, align 8, !tbaa !43
  %proc42 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %32, i32 0, i32 1
  store float (double, %struct.gx_transfer_map_s*)* %30, float (double, %struct.gx_transfer_map_s*)** %proc42, align 8, !tbaa !52
  %33 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory43 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %33, i32 0, i32 1
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory43, align 8, !tbaa !7
  %call44 = call i64 @gs_next_ids(%struct.gs_memory_s* %34, i32 1) #3
  %35 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %black_generation45 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %35, i32 0, i32 44
  %36 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %black_generation45, align 8, !tbaa !43
  %id = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %36, i32 0, i32 3
  store i64 %call44, i64* %id, align 8, !tbaa !53
  %37 = load i32, i32* %remap.addr, align 4, !tbaa !24
  %tobool46 = icmp ne i32 %37, 0
  br i1 %tobool46, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %do.end.40
  %38 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %39 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %black_generation48 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %39, i32 0, i32 44
  %40 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %black_generation48, align 8, !tbaa !43
  call void @load_transfer_map(%struct.gs_state_s* %38, %struct.gx_transfer_map_s* %40, double 0.000000e+00) #3
  %41 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %41, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color, i32 0, i64 0
  %dev_color = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 2
  %42 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color, align 8, !tbaa !37
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %42, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_none, %struct.gx_device_color_type_s** %type, align 8, !tbaa !38
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %do.end.40
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.49, %cleanup
  %43 = load i32, i32* %retval
  ret i32 %43

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare void @rc_free_struct_only(%struct.gs_memory_s*, i8*, i8*) #2

declare i64 @gs_next_ids(%struct.gs_memory_s*, i32) #2

declare void @load_transfer_map(%struct.gs_state_s*, %struct.gx_transfer_map_s*, double) #2

; Function Attrs: nounwind uwtable
define float (double, %struct.gx_transfer_map_s*)* @gs_currentblackgeneration(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %black_generation = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 44
  %1 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %black_generation, align 8, !tbaa !43
  %proc = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %1, i32 0, i32 1
  %2 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc, align 8, !tbaa !52
  ret float (double, %struct.gx_transfer_map_s*)* %2
}

; Function Attrs: nounwind uwtable
define i32 @gs_setundercolorremoval(%struct.gs_state_s* %pgs, float (double, %struct.gx_transfer_map_s*)* %proc) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %proc.addr = alloca float (double, %struct.gx_transfer_map_s*)*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store float (double, %struct.gx_transfer_map_s*)* %proc, float (double, %struct.gx_transfer_map_s*)** %proc.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %1 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc.addr, align 8, !tbaa !1
  %call = call i32 @gs_setundercolorremoval_remap(%struct.gs_state_s* %0, float (double, %struct.gx_transfer_map_s*)* %1, i32 1) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gs_setundercolorremoval_remap(%struct.gs_state_s* %pgs, float (double, %struct.gx_transfer_map_s*)* %proc, i32 %remap) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %proc.addr = alloca float (double, %struct.gx_transfer_map_s*)*, align 8
  %remap.addr = alloca i32, align 4
  %new = alloca %struct.gx_transfer_map_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store float (double, %struct.gx_transfer_map_s*)* %proc, float (double, %struct.gx_transfer_map_s*)** %proc.addr, align 8, !tbaa !1
  store i32 %remap, i32* %remap.addr, align 4, !tbaa !24
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %undercolor_removal = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 45
  %1 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %undercolor_removal, align 8, !tbaa !54
  %cmp = icmp eq %struct.gx_transfer_map_s* %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %undercolor_removal1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 45
  %3 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %undercolor_removal1, align 8, !tbaa !54
  %rc = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %3, i32 0, i32 0
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %4 = load i64, i64* %ref_count, align 8, !tbaa !44
  %cmp2 = icmp sgt i64 %4, 1
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %undercolor_removal4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %5, i32 0, i32 45
  %6 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %undercolor_removal4, align 8, !tbaa !54
  %rc5 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %6, i32 0, i32 0
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc5, i32 0, i32 1
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !47
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 1
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory6, align 8, !tbaa !7
  %cmp7 = icmp ne %struct.gs_memory_s* %7, %9
  br i1 %cmp7, label %if.then, label %if.end.38

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %do.body
  %10 = bitcast %struct.gx_transfer_map_s** %new to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  br label %do.body.8

do.body.8:                                        ; preds = %if.then
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory9 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %11, i32 0, i32 1
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory9, align 8, !tbaa !7
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %12, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %13 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !48
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory10 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %14, i32 0, i32 1
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory10, align 8, !tbaa !7
  %call = call i8* %13(%struct.gs_memory_s* %15, %struct.gs_memory_struct_type_s* @st_transfer_map, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0)) #3
  %16 = bitcast i8* %call to %struct.gx_transfer_map_s*
  store %struct.gx_transfer_map_s* %16, %struct.gx_transfer_map_s** %new, align 8, !tbaa !1
  %cmp11 = icmp eq %struct.gx_transfer_map_s* %16, null
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %do.body.8
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body.8
  br label %do.body.13

do.body.13:                                       ; preds = %if.else
  %17 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %new, align 8, !tbaa !1
  %rc14 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %17, i32 0, i32 0
  %ref_count15 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc14, i32 0, i32 0
  store i64 1, i64* %ref_count15, align 8, !tbaa !44
  %18 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory16 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %18, i32 0, i32 1
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory16, align 8, !tbaa !7
  %20 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %new, align 8, !tbaa !1
  %rc17 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %20, i32 0, i32 0
  %memory18 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc17, i32 0, i32 1
  store %struct.gs_memory_s* %19, %struct.gs_memory_s** %memory18, align 8, !tbaa !47
  %21 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %new, align 8, !tbaa !1
  %rc19 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %21, i32 0, i32 0
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc19, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @rc_free_struct_only, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !51
  br label %do.body.20

do.body.20:                                       ; preds = %do.body.13
  br label %do.cond

do.cond:                                          ; preds = %do.body.20
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.21

do.cond.21:                                       ; preds = %do.end
  br label %do.end.22

do.end.22:                                        ; preds = %do.cond.21
  br label %if.end

if.end:                                           ; preds = %do.end.22
  br label %do.cond.23

do.cond.23:                                       ; preds = %if.end
  br label %do.end.24

do.end.24:                                        ; preds = %do.cond.23
  %22 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %undercolor_removal25 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %22, i32 0, i32 45
  %23 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %undercolor_removal25, align 8, !tbaa !54
  %tobool = icmp ne %struct.gx_transfer_map_s* %23, null
  br i1 %tobool, label %if.then.26, label %if.end.36

if.then.26:                                       ; preds = %do.end.24
  br label %do.body.27

do.body.27:                                       ; preds = %if.then.26
  br label %do.body.28

do.body.28:                                       ; preds = %do.body.27
  br label %do.cond.29

do.cond.29:                                       ; preds = %do.body.28
  br label %do.end.30

do.end.30:                                        ; preds = %do.cond.29
  %24 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %undercolor_removal31 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %24, i32 0, i32 45
  %25 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %undercolor_removal31, align 8, !tbaa !54
  %rc32 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %25, i32 0, i32 0
  %ref_count33 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc32, i32 0, i32 0
  %26 = load i64, i64* %ref_count33, align 8, !tbaa !44
  %add = add nsw i64 %26, -1
  store i64 %add, i64* %ref_count33, align 8, !tbaa !44
  br label %do.cond.34

do.cond.34:                                       ; preds = %do.end.30
  br label %do.end.35

do.end.35:                                        ; preds = %do.cond.34
  br label %if.end.36

if.end.36:                                        ; preds = %do.end.35, %do.end.24
  %27 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %new, align 8, !tbaa !1
  %28 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %undercolor_removal37 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %28, i32 0, i32 45
  store %struct.gx_transfer_map_s* %27, %struct.gx_transfer_map_s** %undercolor_removal37, align 8, !tbaa !54
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.36, %if.then.12
  %29 = bitcast %struct.gx_transfer_map_s** %new to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.38

if.end.38:                                        ; preds = %cleanup.cont, %lor.lhs.false.3
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.38
  %30 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc.addr, align 8, !tbaa !1
  %31 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %undercolor_removal41 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %31, i32 0, i32 45
  %32 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %undercolor_removal41, align 8, !tbaa !54
  %proc42 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %32, i32 0, i32 1
  store float (double, %struct.gx_transfer_map_s*)* %30, float (double, %struct.gx_transfer_map_s*)** %proc42, align 8, !tbaa !52
  %33 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory43 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %33, i32 0, i32 1
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory43, align 8, !tbaa !7
  %call44 = call i64 @gs_next_ids(%struct.gs_memory_s* %34, i32 1) #3
  %35 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %undercolor_removal45 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %35, i32 0, i32 45
  %36 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %undercolor_removal45, align 8, !tbaa !54
  %id = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %36, i32 0, i32 3
  store i64 %call44, i64* %id, align 8, !tbaa !53
  %37 = load i32, i32* %remap.addr, align 4, !tbaa !24
  %tobool46 = icmp ne i32 %37, 0
  br i1 %tobool46, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %do.end.40
  %38 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %39 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %undercolor_removal48 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %39, i32 0, i32 45
  %40 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %undercolor_removal48, align 8, !tbaa !54
  call void @load_transfer_map(%struct.gs_state_s* %38, %struct.gx_transfer_map_s* %40, double -1.000000e+00) #3
  %41 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %41, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color, i32 0, i64 0
  %dev_color = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 2
  %42 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color, align 8, !tbaa !37
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %42, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_none, %struct.gx_device_color_type_s** %type, align 8, !tbaa !38
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %do.end.40
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.49, %cleanup
  %43 = load i32, i32* %retval
  ret i32 %43

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define float (double, %struct.gx_transfer_map_s*)* @gs_currentundercolorremoval(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %undercolor_removal = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 45
  %1 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %undercolor_removal, align 8, !tbaa !54
  %proc = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %1, i32 0, i32 1
  %2 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc, align 8, !tbaa !52
  ret float (double, %struct.gx_transfer_map_s*)* %2
}

; Function Attrs: nounwind uwtable
define i32 @gs_setcolortransfer_remap(%struct.gs_state_s* %pgs, float (double, %struct.gx_transfer_map_s*)* %red_proc, float (double, %struct.gx_transfer_map_s*)* %green_proc, float (double, %struct.gx_transfer_map_s*)* %blue_proc, float (double, %struct.gx_transfer_map_s*)* %gray_proc, i32 %remap) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %red_proc.addr = alloca float (double, %struct.gx_transfer_map_s*)*, align 8
  %green_proc.addr = alloca float (double, %struct.gx_transfer_map_s*)*, align 8
  %blue_proc.addr = alloca float (double, %struct.gx_transfer_map_s*)*, align 8
  %gray_proc.addr = alloca float (double, %struct.gx_transfer_map_s*)*, align 8
  %remap.addr = alloca i32, align 4
  %ptran = alloca %struct.gx_transfer_s*, align 8
  %old = alloca %struct.gx_transfer_s, align 8
  %new_ids = alloca i64, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  %new = alloca %struct.gx_transfer_map_s*, align 8
  %cleanup.dest.slot = alloca i32
  %new57 = alloca %struct.gx_transfer_map_s*, align 8
  %new118 = alloca %struct.gx_transfer_map_s*, align 8
  %new179 = alloca %struct.gx_transfer_map_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store float (double, %struct.gx_transfer_map_s*)* %red_proc, float (double, %struct.gx_transfer_map_s*)** %red_proc.addr, align 8, !tbaa !1
  store float (double, %struct.gx_transfer_map_s*)* %green_proc, float (double, %struct.gx_transfer_map_s*)** %green_proc.addr, align 8, !tbaa !1
  store float (double, %struct.gx_transfer_map_s*)* %blue_proc, float (double, %struct.gx_transfer_map_s*)** %blue_proc.addr, align 8, !tbaa !1
  store float (double, %struct.gx_transfer_map_s*)* %gray_proc, float (double, %struct.gx_transfer_map_s*)** %gray_proc.addr, align 8, !tbaa !1
  store i32 %remap, i32* %remap.addr, align 4, !tbaa !24
  %0 = bitcast %struct.gx_transfer_s** %ptran to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %set_transfer = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 46
  store %struct.gx_transfer_s* %set_transfer, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %2 = bitcast %struct.gx_transfer_s* %old to i8*
  call void @llvm.lifetime.start(i64 64, i8* %2) #1
  %3 = bitcast i64* %new_ids to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 1
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  %call = call i64 @gs_next_ids(%struct.gs_memory_s* %5, i32 4) #3
  store i64 %call, i64* %new_ids, align 8, !tbaa !55
  %6 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %7, i32 0, i32 78
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !56
  store %struct.gx_device_s* %8, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %9 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %10 = bitcast %struct.gx_transfer_s* %old to i8*
  %11 = bitcast %struct.gx_transfer_s* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 64, i32 8, i1 false), !tbaa.struct !57
  br label %do.body

do.body:                                          ; preds = %entry
  %12 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %gray = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %12, i32 0, i32 7
  %13 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray, align 8, !tbaa !58
  %cmp = icmp eq %struct.gx_transfer_map_s* %13, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %14 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %gray1 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %14, i32 0, i32 7
  %15 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray1, align 8, !tbaa !58
  %rc = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %15, i32 0, i32 0
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %16 = load i64, i64* %ref_count, align 8, !tbaa !44
  %cmp2 = icmp sgt i64 %16, 1
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %17 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %gray4 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %17, i32 0, i32 7
  %18 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray4, align 8, !tbaa !58
  %rc5 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %18, i32 0, i32 0
  %memory6 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc5, i32 0, i32 1
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory6, align 8, !tbaa !47
  %20 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory7 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %20, i32 0, i32 1
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory7, align 8, !tbaa !7
  %cmp8 = icmp ne %struct.gs_memory_s* %19, %21
  br i1 %cmp8, label %if.then, label %if.end.40

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %do.body
  %22 = bitcast %struct.gx_transfer_map_s** %new to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  br label %do.body.9

do.body.9:                                        ; preds = %if.then
  %23 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory10 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %23, i32 0, i32 1
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory10, align 8, !tbaa !7
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %24, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %25 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !48
  %26 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory11 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %26, i32 0, i32 1
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory11, align 8, !tbaa !7
  %call12 = call i8* %25(%struct.gs_memory_s* %27, %struct.gs_memory_struct_type_s* @st_transfer_map, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0)) #3
  %28 = bitcast i8* %call12 to %struct.gx_transfer_map_s*
  store %struct.gx_transfer_map_s* %28, %struct.gx_transfer_map_s** %new, align 8, !tbaa !1
  %cmp13 = icmp eq %struct.gx_transfer_map_s* %28, null
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %do.body.9
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body.9
  br label %do.body.15

do.body.15:                                       ; preds = %if.else
  %29 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %new, align 8, !tbaa !1
  %rc16 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %29, i32 0, i32 0
  %ref_count17 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc16, i32 0, i32 0
  store i64 1, i64* %ref_count17, align 8, !tbaa !44
  %30 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory18 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %30, i32 0, i32 1
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory18, align 8, !tbaa !7
  %32 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %new, align 8, !tbaa !1
  %rc19 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %32, i32 0, i32 0
  %memory20 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc19, i32 0, i32 1
  store %struct.gs_memory_s* %31, %struct.gs_memory_s** %memory20, align 8, !tbaa !47
  %33 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %new, align 8, !tbaa !1
  %rc21 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %33, i32 0, i32 0
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc21, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @rc_free_struct_only, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !51
  br label %do.body.22

do.body.22:                                       ; preds = %do.body.15
  br label %do.cond

do.cond:                                          ; preds = %do.body.22
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.23

do.cond.23:                                       ; preds = %do.end
  br label %do.end.24

do.end.24:                                        ; preds = %do.cond.23
  br label %if.end

if.end:                                           ; preds = %do.end.24
  br label %do.cond.25

do.cond.25:                                       ; preds = %if.end
  br label %do.end.26

do.end.26:                                        ; preds = %do.cond.25
  %34 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %gray27 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %34, i32 0, i32 7
  %35 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray27, align 8, !tbaa !58
  %tobool = icmp ne %struct.gx_transfer_map_s* %35, null
  br i1 %tobool, label %if.then.28, label %if.end.38

if.then.28:                                       ; preds = %do.end.26
  br label %do.body.29

do.body.29:                                       ; preds = %if.then.28
  br label %do.body.30

do.body.30:                                       ; preds = %do.body.29
  br label %do.cond.31

do.cond.31:                                       ; preds = %do.body.30
  br label %do.end.32

do.end.32:                                        ; preds = %do.cond.31
  %36 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %gray33 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %36, i32 0, i32 7
  %37 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray33, align 8, !tbaa !58
  %rc34 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %37, i32 0, i32 0
  %ref_count35 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc34, i32 0, i32 0
  %38 = load i64, i64* %ref_count35, align 8, !tbaa !44
  %add = add nsw i64 %38, -1
  store i64 %add, i64* %ref_count35, align 8, !tbaa !44
  br label %do.cond.36

do.cond.36:                                       ; preds = %do.end.32
  br label %do.end.37

do.end.37:                                        ; preds = %do.cond.36
  br label %if.end.38

if.end.38:                                        ; preds = %do.end.37, %do.end.26
  %39 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %new, align 8, !tbaa !1
  %40 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %gray39 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %40, i32 0, i32 7
  store %struct.gx_transfer_map_s* %39, %struct.gx_transfer_map_s** %gray39, align 8, !tbaa !58
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.14, %if.end.38
  %41 = bitcast %struct.gx_transfer_map_s** %new to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.464 [
    i32 0, label %cleanup.cont
    i32 6, label %fgray
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.40

if.end.40:                                        ; preds = %cleanup.cont, %lor.lhs.false.3
  br label %do.cond.41

do.cond.41:                                       ; preds = %if.end.40
  br label %do.end.42

do.end.42:                                        ; preds = %do.cond.41
  br label %do.body.43

do.body.43:                                       ; preds = %do.end.42
  %42 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %red = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %42, i32 0, i32 1
  %43 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red, align 8, !tbaa !59
  %cmp44 = icmp eq %struct.gx_transfer_map_s* %43, null
  br i1 %cmp44, label %if.then.56, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %do.body.43
  %44 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %red46 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %44, i32 0, i32 1
  %45 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red46, align 8, !tbaa !59
  %rc47 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %45, i32 0, i32 0
  %ref_count48 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc47, i32 0, i32 0
  %46 = load i64, i64* %ref_count48, align 8, !tbaa !44
  %cmp49 = icmp sgt i64 %46, 1
  br i1 %cmp49, label %if.then.56, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %lor.lhs.false.45
  %47 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %red51 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %47, i32 0, i32 1
  %48 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red51, align 8, !tbaa !59
  %rc52 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %48, i32 0, i32 0
  %memory53 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc52, i32 0, i32 1
  %49 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory53, align 8, !tbaa !47
  %50 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory54 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %50, i32 0, i32 1
  %51 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory54, align 8, !tbaa !7
  %cmp55 = icmp ne %struct.gs_memory_s* %49, %51
  br i1 %cmp55, label %if.then.56, label %if.end.101

if.then.56:                                       ; preds = %lor.lhs.false.50, %lor.lhs.false.45, %do.body.43
  %52 = bitcast %struct.gx_transfer_map_s** %new57 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %52) #1
  br label %do.body.58

do.body.58:                                       ; preds = %if.then.56
  %53 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory59 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %53, i32 0, i32 1
  %54 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory59, align 8, !tbaa !7
  %procs60 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %54, i32 0, i32 1
  %alloc_struct61 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs60, i32 0, i32 8
  %55 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct61, align 8, !tbaa !48
  %56 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory62 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %56, i32 0, i32 1
  %57 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory62, align 8, !tbaa !7
  %call63 = call i8* %55(%struct.gs_memory_s* %57, %struct.gs_memory_struct_type_s* @st_transfer_map, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0)) #3
  %58 = bitcast i8* %call63 to %struct.gx_transfer_map_s*
  store %struct.gx_transfer_map_s* %58, %struct.gx_transfer_map_s** %new57, align 8, !tbaa !1
  %cmp64 = icmp eq %struct.gx_transfer_map_s* %58, null
  br i1 %cmp64, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %do.body.58
  store i32 19, i32* %cleanup.dest.slot
  br label %cleanup.98

if.else.66:                                       ; preds = %do.body.58
  br label %do.body.67

do.body.67:                                       ; preds = %if.else.66
  %59 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %new57, align 8, !tbaa !1
  %rc68 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %59, i32 0, i32 0
  %ref_count69 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc68, i32 0, i32 0
  store i64 1, i64* %ref_count69, align 8, !tbaa !44
  %60 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory70 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %60, i32 0, i32 1
  %61 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory70, align 8, !tbaa !7
  %62 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %new57, align 8, !tbaa !1
  %rc71 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %62, i32 0, i32 0
  %memory72 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc71, i32 0, i32 1
  store %struct.gs_memory_s* %61, %struct.gs_memory_s** %memory72, align 8, !tbaa !47
  %63 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %new57, align 8, !tbaa !1
  %rc73 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %63, i32 0, i32 0
  %free74 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc73, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @rc_free_struct_only, void (%struct.gs_memory_s*, i8*, i8*)** %free74, align 8, !tbaa !51
  br label %do.body.75

do.body.75:                                       ; preds = %do.body.67
  br label %do.cond.76

do.cond.76:                                       ; preds = %do.body.75
  br label %do.end.77

do.end.77:                                        ; preds = %do.cond.76
  br label %do.cond.78

do.cond.78:                                       ; preds = %do.end.77
  br label %do.end.79

do.end.79:                                        ; preds = %do.cond.78
  br label %if.end.80

if.end.80:                                        ; preds = %do.end.79
  br label %do.cond.81

do.cond.81:                                       ; preds = %if.end.80
  br label %do.end.82

do.end.82:                                        ; preds = %do.cond.81
  %64 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %red83 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %64, i32 0, i32 1
  %65 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red83, align 8, !tbaa !59
  %tobool84 = icmp ne %struct.gx_transfer_map_s* %65, null
  br i1 %tobool84, label %if.then.85, label %if.end.96

if.then.85:                                       ; preds = %do.end.82
  br label %do.body.86

do.body.86:                                       ; preds = %if.then.85
  br label %do.body.87

do.body.87:                                       ; preds = %do.body.86
  br label %do.cond.88

do.cond.88:                                       ; preds = %do.body.87
  br label %do.end.89

do.end.89:                                        ; preds = %do.cond.88
  %66 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %red90 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %66, i32 0, i32 1
  %67 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red90, align 8, !tbaa !59
  %rc91 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %67, i32 0, i32 0
  %ref_count92 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc91, i32 0, i32 0
  %68 = load i64, i64* %ref_count92, align 8, !tbaa !44
  %add93 = add nsw i64 %68, -1
  store i64 %add93, i64* %ref_count92, align 8, !tbaa !44
  br label %do.cond.94

do.cond.94:                                       ; preds = %do.end.89
  br label %do.end.95

do.end.95:                                        ; preds = %do.cond.94
  br label %if.end.96

if.end.96:                                        ; preds = %do.end.95, %do.end.82
  %69 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %new57, align 8, !tbaa !1
  %70 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %red97 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %70, i32 0, i32 1
  store %struct.gx_transfer_map_s* %69, %struct.gx_transfer_map_s** %red97, align 8, !tbaa !59
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.98

cleanup.98:                                       ; preds = %if.then.65, %if.end.96
  %71 = bitcast %struct.gx_transfer_map_s** %new57 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %cleanup.dest.99 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.99, label %cleanup.464 [
    i32 0, label %cleanup.cont.100
    i32 19, label %fred
  ]

cleanup.cont.100:                                 ; preds = %cleanup.98
  br label %if.end.101

if.end.101:                                       ; preds = %cleanup.cont.100, %lor.lhs.false.50
  br label %do.cond.102

do.cond.102:                                      ; preds = %if.end.101
  br label %do.end.103

do.end.103:                                       ; preds = %do.cond.102
  br label %do.body.104

do.body.104:                                      ; preds = %do.end.103
  %72 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %green = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %72, i32 0, i32 3
  %73 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green, align 8, !tbaa !60
  %cmp105 = icmp eq %struct.gx_transfer_map_s* %73, null
  br i1 %cmp105, label %if.then.117, label %lor.lhs.false.106

lor.lhs.false.106:                                ; preds = %do.body.104
  %74 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %green107 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %74, i32 0, i32 3
  %75 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green107, align 8, !tbaa !60
  %rc108 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %75, i32 0, i32 0
  %ref_count109 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc108, i32 0, i32 0
  %76 = load i64, i64* %ref_count109, align 8, !tbaa !44
  %cmp110 = icmp sgt i64 %76, 1
  br i1 %cmp110, label %if.then.117, label %lor.lhs.false.111

lor.lhs.false.111:                                ; preds = %lor.lhs.false.106
  %77 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %green112 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %77, i32 0, i32 3
  %78 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green112, align 8, !tbaa !60
  %rc113 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %78, i32 0, i32 0
  %memory114 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc113, i32 0, i32 1
  %79 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory114, align 8, !tbaa !47
  %80 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory115 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %80, i32 0, i32 1
  %81 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory115, align 8, !tbaa !7
  %cmp116 = icmp ne %struct.gs_memory_s* %79, %81
  br i1 %cmp116, label %if.then.117, label %if.end.162

if.then.117:                                      ; preds = %lor.lhs.false.111, %lor.lhs.false.106, %do.body.104
  %82 = bitcast %struct.gx_transfer_map_s** %new118 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %82) #1
  br label %do.body.119

do.body.119:                                      ; preds = %if.then.117
  %83 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory120 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %83, i32 0, i32 1
  %84 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory120, align 8, !tbaa !7
  %procs121 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %84, i32 0, i32 1
  %alloc_struct122 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs121, i32 0, i32 8
  %85 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct122, align 8, !tbaa !48
  %86 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory123 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %86, i32 0, i32 1
  %87 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory123, align 8, !tbaa !7
  %call124 = call i8* %85(%struct.gs_memory_s* %87, %struct.gs_memory_struct_type_s* @st_transfer_map, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0)) #3
  %88 = bitcast i8* %call124 to %struct.gx_transfer_map_s*
  store %struct.gx_transfer_map_s* %88, %struct.gx_transfer_map_s** %new118, align 8, !tbaa !1
  %cmp125 = icmp eq %struct.gx_transfer_map_s* %88, null
  br i1 %cmp125, label %if.then.126, label %if.else.127

if.then.126:                                      ; preds = %do.body.119
  store i32 32, i32* %cleanup.dest.slot
  br label %cleanup.159

if.else.127:                                      ; preds = %do.body.119
  br label %do.body.128

do.body.128:                                      ; preds = %if.else.127
  %89 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %new118, align 8, !tbaa !1
  %rc129 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %89, i32 0, i32 0
  %ref_count130 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc129, i32 0, i32 0
  store i64 1, i64* %ref_count130, align 8, !tbaa !44
  %90 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory131 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %90, i32 0, i32 1
  %91 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory131, align 8, !tbaa !7
  %92 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %new118, align 8, !tbaa !1
  %rc132 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %92, i32 0, i32 0
  %memory133 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc132, i32 0, i32 1
  store %struct.gs_memory_s* %91, %struct.gs_memory_s** %memory133, align 8, !tbaa !47
  %93 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %new118, align 8, !tbaa !1
  %rc134 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %93, i32 0, i32 0
  %free135 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc134, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @rc_free_struct_only, void (%struct.gs_memory_s*, i8*, i8*)** %free135, align 8, !tbaa !51
  br label %do.body.136

do.body.136:                                      ; preds = %do.body.128
  br label %do.cond.137

do.cond.137:                                      ; preds = %do.body.136
  br label %do.end.138

do.end.138:                                       ; preds = %do.cond.137
  br label %do.cond.139

do.cond.139:                                      ; preds = %do.end.138
  br label %do.end.140

do.end.140:                                       ; preds = %do.cond.139
  br label %if.end.141

if.end.141:                                       ; preds = %do.end.140
  br label %do.cond.142

do.cond.142:                                      ; preds = %if.end.141
  br label %do.end.143

do.end.143:                                       ; preds = %do.cond.142
  %94 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %green144 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %94, i32 0, i32 3
  %95 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green144, align 8, !tbaa !60
  %tobool145 = icmp ne %struct.gx_transfer_map_s* %95, null
  br i1 %tobool145, label %if.then.146, label %if.end.157

if.then.146:                                      ; preds = %do.end.143
  br label %do.body.147

do.body.147:                                      ; preds = %if.then.146
  br label %do.body.148

do.body.148:                                      ; preds = %do.body.147
  br label %do.cond.149

do.cond.149:                                      ; preds = %do.body.148
  br label %do.end.150

do.end.150:                                       ; preds = %do.cond.149
  %96 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %green151 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %96, i32 0, i32 3
  %97 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green151, align 8, !tbaa !60
  %rc152 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %97, i32 0, i32 0
  %ref_count153 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc152, i32 0, i32 0
  %98 = load i64, i64* %ref_count153, align 8, !tbaa !44
  %add154 = add nsw i64 %98, -1
  store i64 %add154, i64* %ref_count153, align 8, !tbaa !44
  br label %do.cond.155

do.cond.155:                                      ; preds = %do.end.150
  br label %do.end.156

do.end.156:                                       ; preds = %do.cond.155
  br label %if.end.157

if.end.157:                                       ; preds = %do.end.156, %do.end.143
  %99 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %new118, align 8, !tbaa !1
  %100 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %green158 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %100, i32 0, i32 3
  store %struct.gx_transfer_map_s* %99, %struct.gx_transfer_map_s** %green158, align 8, !tbaa !60
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.159

cleanup.159:                                      ; preds = %if.then.126, %if.end.157
  %101 = bitcast %struct.gx_transfer_map_s** %new118 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #1
  %cleanup.dest.160 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.160, label %cleanup.464 [
    i32 0, label %cleanup.cont.161
    i32 32, label %fgreen
  ]

cleanup.cont.161:                                 ; preds = %cleanup.159
  br label %if.end.162

if.end.162:                                       ; preds = %cleanup.cont.161, %lor.lhs.false.111
  br label %do.cond.163

do.cond.163:                                      ; preds = %if.end.162
  br label %do.end.164

do.end.164:                                       ; preds = %do.cond.163
  br label %do.body.165

do.body.165:                                      ; preds = %do.end.164
  %102 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %blue = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %102, i32 0, i32 5
  %103 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %blue, align 8, !tbaa !61
  %cmp166 = icmp eq %struct.gx_transfer_map_s* %103, null
  br i1 %cmp166, label %if.then.178, label %lor.lhs.false.167

lor.lhs.false.167:                                ; preds = %do.body.165
  %104 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %blue168 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %104, i32 0, i32 5
  %105 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %blue168, align 8, !tbaa !61
  %rc169 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %105, i32 0, i32 0
  %ref_count170 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc169, i32 0, i32 0
  %106 = load i64, i64* %ref_count170, align 8, !tbaa !44
  %cmp171 = icmp sgt i64 %106, 1
  br i1 %cmp171, label %if.then.178, label %lor.lhs.false.172

lor.lhs.false.172:                                ; preds = %lor.lhs.false.167
  %107 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %blue173 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %107, i32 0, i32 5
  %108 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %blue173, align 8, !tbaa !61
  %rc174 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %108, i32 0, i32 0
  %memory175 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc174, i32 0, i32 1
  %109 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory175, align 8, !tbaa !47
  %110 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory176 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %110, i32 0, i32 1
  %111 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory176, align 8, !tbaa !7
  %cmp177 = icmp ne %struct.gs_memory_s* %109, %111
  br i1 %cmp177, label %if.then.178, label %if.end.223

if.then.178:                                      ; preds = %lor.lhs.false.172, %lor.lhs.false.167, %do.body.165
  %112 = bitcast %struct.gx_transfer_map_s** %new179 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %112) #1
  br label %do.body.180

do.body.180:                                      ; preds = %if.then.178
  %113 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory181 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %113, i32 0, i32 1
  %114 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory181, align 8, !tbaa !7
  %procs182 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %114, i32 0, i32 1
  %alloc_struct183 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs182, i32 0, i32 8
  %115 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct183, align 8, !tbaa !48
  %116 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory184 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %116, i32 0, i32 1
  %117 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory184, align 8, !tbaa !7
  %call185 = call i8* %115(%struct.gs_memory_s* %117, %struct.gs_memory_struct_type_s* @st_transfer_map, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0)) #3
  %118 = bitcast i8* %call185 to %struct.gx_transfer_map_s*
  store %struct.gx_transfer_map_s* %118, %struct.gx_transfer_map_s** %new179, align 8, !tbaa !1
  %cmp186 = icmp eq %struct.gx_transfer_map_s* %118, null
  br i1 %cmp186, label %if.then.187, label %if.else.188

if.then.187:                                      ; preds = %do.body.180
  store i32 45, i32* %cleanup.dest.slot
  br label %cleanup.220

if.else.188:                                      ; preds = %do.body.180
  br label %do.body.189

do.body.189:                                      ; preds = %if.else.188
  %119 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %new179, align 8, !tbaa !1
  %rc190 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %119, i32 0, i32 0
  %ref_count191 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc190, i32 0, i32 0
  store i64 1, i64* %ref_count191, align 8, !tbaa !44
  %120 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory192 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %120, i32 0, i32 1
  %121 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory192, align 8, !tbaa !7
  %122 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %new179, align 8, !tbaa !1
  %rc193 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %122, i32 0, i32 0
  %memory194 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc193, i32 0, i32 1
  store %struct.gs_memory_s* %121, %struct.gs_memory_s** %memory194, align 8, !tbaa !47
  %123 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %new179, align 8, !tbaa !1
  %rc195 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %123, i32 0, i32 0
  %free196 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc195, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @rc_free_struct_only, void (%struct.gs_memory_s*, i8*, i8*)** %free196, align 8, !tbaa !51
  br label %do.body.197

do.body.197:                                      ; preds = %do.body.189
  br label %do.cond.198

do.cond.198:                                      ; preds = %do.body.197
  br label %do.end.199

do.end.199:                                       ; preds = %do.cond.198
  br label %do.cond.200

do.cond.200:                                      ; preds = %do.end.199
  br label %do.end.201

do.end.201:                                       ; preds = %do.cond.200
  br label %if.end.202

if.end.202:                                       ; preds = %do.end.201
  br label %do.cond.203

do.cond.203:                                      ; preds = %if.end.202
  br label %do.end.204

do.end.204:                                       ; preds = %do.cond.203
  %124 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %blue205 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %124, i32 0, i32 5
  %125 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %blue205, align 8, !tbaa !61
  %tobool206 = icmp ne %struct.gx_transfer_map_s* %125, null
  br i1 %tobool206, label %if.then.207, label %if.end.218

if.then.207:                                      ; preds = %do.end.204
  br label %do.body.208

do.body.208:                                      ; preds = %if.then.207
  br label %do.body.209

do.body.209:                                      ; preds = %do.body.208
  br label %do.cond.210

do.cond.210:                                      ; preds = %do.body.209
  br label %do.end.211

do.end.211:                                       ; preds = %do.cond.210
  %126 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %blue212 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %126, i32 0, i32 5
  %127 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %blue212, align 8, !tbaa !61
  %rc213 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %127, i32 0, i32 0
  %ref_count214 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc213, i32 0, i32 0
  %128 = load i64, i64* %ref_count214, align 8, !tbaa !44
  %add215 = add nsw i64 %128, -1
  store i64 %add215, i64* %ref_count214, align 8, !tbaa !44
  br label %do.cond.216

do.cond.216:                                      ; preds = %do.end.211
  br label %do.end.217

do.end.217:                                       ; preds = %do.cond.216
  br label %if.end.218

if.end.218:                                       ; preds = %do.end.217, %do.end.204
  %129 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %new179, align 8, !tbaa !1
  %130 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %blue219 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %130, i32 0, i32 5
  store %struct.gx_transfer_map_s* %129, %struct.gx_transfer_map_s** %blue219, align 8, !tbaa !61
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.220

cleanup.220:                                      ; preds = %if.then.187, %if.end.218
  %131 = bitcast %struct.gx_transfer_map_s** %new179 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %131) #1
  %cleanup.dest.221 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.221, label %cleanup.464 [
    i32 0, label %cleanup.cont.222
    i32 45, label %fblue
  ]

cleanup.cont.222:                                 ; preds = %cleanup.220
  br label %if.end.223

if.end.223:                                       ; preds = %cleanup.cont.222, %lor.lhs.false.172
  br label %do.cond.224

do.cond.224:                                      ; preds = %if.end.223
  br label %do.end.225

do.end.225:                                       ; preds = %do.cond.224
  %132 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %gray_proc.addr, align 8, !tbaa !1
  %133 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %gray226 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %133, i32 0, i32 7
  %134 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray226, align 8, !tbaa !58
  %proc = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %134, i32 0, i32 1
  store float (double, %struct.gx_transfer_map_s*)* %132, float (double, %struct.gx_transfer_map_s*)** %proc, align 8, !tbaa !52
  %135 = load i64, i64* %new_ids, align 8, !tbaa !55
  %136 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %gray227 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %136, i32 0, i32 7
  %137 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray227, align 8, !tbaa !58
  %id = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %137, i32 0, i32 3
  store i64 %135, i64* %id, align 8, !tbaa !53
  %138 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %red_proc.addr, align 8, !tbaa !1
  %139 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %red228 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %139, i32 0, i32 1
  %140 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red228, align 8, !tbaa !59
  %proc229 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %140, i32 0, i32 1
  store float (double, %struct.gx_transfer_map_s*)* %138, float (double, %struct.gx_transfer_map_s*)** %proc229, align 8, !tbaa !52
  %141 = load i64, i64* %new_ids, align 8, !tbaa !55
  %add230 = add i64 %141, 1
  %142 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %red231 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %142, i32 0, i32 1
  %143 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red231, align 8, !tbaa !59
  %id232 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %143, i32 0, i32 3
  store i64 %add230, i64* %id232, align 8, !tbaa !53
  %144 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %green_proc.addr, align 8, !tbaa !1
  %145 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %green233 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %145, i32 0, i32 3
  %146 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green233, align 8, !tbaa !60
  %proc234 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %146, i32 0, i32 1
  store float (double, %struct.gx_transfer_map_s*)* %144, float (double, %struct.gx_transfer_map_s*)** %proc234, align 8, !tbaa !52
  %147 = load i64, i64* %new_ids, align 8, !tbaa !55
  %add235 = add i64 %147, 2
  %148 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %green236 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %148, i32 0, i32 3
  %149 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green236, align 8, !tbaa !60
  %id237 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %149, i32 0, i32 3
  store i64 %add235, i64* %id237, align 8, !tbaa !53
  %150 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %blue_proc.addr, align 8, !tbaa !1
  %151 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %blue238 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %151, i32 0, i32 5
  %152 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %blue238, align 8, !tbaa !61
  %proc239 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %152, i32 0, i32 1
  store float (double, %struct.gx_transfer_map_s*)* %150, float (double, %struct.gx_transfer_map_s*)** %proc239, align 8, !tbaa !52
  %153 = load i64, i64* %new_ids, align 8, !tbaa !55
  %add240 = add i64 %153, 3
  %154 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %blue241 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %154, i32 0, i32 5
  %155 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %blue241, align 8, !tbaa !61
  %id242 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %155, i32 0, i32 3
  store i64 %add240, i64* %id242, align 8, !tbaa !53
  %156 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %call243 = call i32 @gs_color_name_component_number(%struct.gx_device_s* %156, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 3, i32 2) #3
  %157 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %red_component_num = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %157, i32 0, i32 0
  store i32 %call243, i32* %red_component_num, align 4, !tbaa !62
  %158 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %call244 = call i32 @gs_color_name_component_number(%struct.gx_device_s* %158, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 5, i32 2) #3
  %159 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %green_component_num = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %159, i32 0, i32 2
  store i32 %call244, i32* %green_component_num, align 4, !tbaa !63
  %160 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %call245 = call i32 @gs_color_name_component_number(%struct.gx_device_s* %160, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 4, i32 2) #3
  %161 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %blue_component_num = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %161, i32 0, i32 4
  store i32 %call245, i32* %blue_component_num, align 4, !tbaa !64
  %162 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %call246 = call i32 @gs_color_name_component_number(%struct.gx_device_s* %162, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 4, i32 2) #3
  %163 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %gray_component_num = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %163, i32 0, i32 6
  store i32 %call246, i32* %gray_component_num, align 4, !tbaa !65
  %164 = load i32, i32* %remap.addr, align 4, !tbaa !24
  %tobool247 = icmp ne i32 %164, 0
  br i1 %tobool247, label %if.then.248, label %if.else.253

if.then.248:                                      ; preds = %do.end.225
  %165 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %166 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %red249 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %166, i32 0, i32 1
  %167 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red249, align 8, !tbaa !59
  call void @load_transfer_map(%struct.gs_state_s* %165, %struct.gx_transfer_map_s* %167, double 0.000000e+00) #3
  %168 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %169 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %green250 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %169, i32 0, i32 3
  %170 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green250, align 8, !tbaa !60
  call void @load_transfer_map(%struct.gs_state_s* %168, %struct.gx_transfer_map_s* %170, double 0.000000e+00) #3
  %171 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %172 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %blue251 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %172, i32 0, i32 5
  %173 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %blue251, align 8, !tbaa !61
  call void @load_transfer_map(%struct.gs_state_s* %171, %struct.gx_transfer_map_s* %173, double 0.000000e+00) #3
  %174 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %175 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %gray252 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %175, i32 0, i32 7
  %176 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray252, align 8, !tbaa !58
  call void @load_transfer_map(%struct.gs_state_s* %174, %struct.gx_transfer_map_s* %176, double 0.000000e+00) #3
  %177 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  call void @gx_set_effective_transfer(%struct.gs_state_s* %177) #3
  %178 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %178, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color, i32 0, i64 0
  %dev_color = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 2
  %179 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color, align 8, !tbaa !37
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %179, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_none, %struct.gx_device_color_type_s** %type, align 8, !tbaa !38
  br label %if.end.254

if.else.253:                                      ; preds = %do.end.225
  %180 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  call void @gx_set_effective_transfer(%struct.gs_state_s* %180) #3
  br label %if.end.254

if.end.254:                                       ; preds = %if.else.253, %if.then.248
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.464

fblue:                                            ; preds = %cleanup.220
  br label %do.body.255

do.body.255:                                      ; preds = %fblue
  %181 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %green256 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %181, i32 0, i32 3
  %182 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green256, align 8, !tbaa !60
  %green257 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %old, i32 0, i32 3
  %183 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green257, align 8, !tbaa !60
  %cmp258 = icmp ne %struct.gx_transfer_map_s* %182, %183
  br i1 %cmp258, label %if.then.259, label %if.end.321

if.then.259:                                      ; preds = %do.body.255
  br label %do.body.260

do.body.260:                                      ; preds = %if.then.259
  %green261 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %old, i32 0, i32 3
  %184 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green261, align 8, !tbaa !60
  %tobool262 = icmp ne %struct.gx_transfer_map_s* %184, null
  br i1 %tobool262, label %if.then.263, label %if.end.273

if.then.263:                                      ; preds = %do.body.260
  br label %do.body.264

do.body.264:                                      ; preds = %if.then.263
  %green265 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %old, i32 0, i32 3
  %185 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green265, align 8, !tbaa !60
  %rc266 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %185, i32 0, i32 0
  %ref_count267 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc266, i32 0, i32 0
  %186 = load i64, i64* %ref_count267, align 8, !tbaa !44
  %inc = add nsw i64 %186, 1
  store i64 %inc, i64* %ref_count267, align 8, !tbaa !44
  br label %do.body.268

do.body.268:                                      ; preds = %do.body.264
  br label %do.cond.269

do.cond.269:                                      ; preds = %do.body.268
  br label %do.end.270

do.end.270:                                       ; preds = %do.cond.269
  br label %do.cond.271

do.cond.271:                                      ; preds = %do.end.270
  br label %do.end.272

do.end.272:                                       ; preds = %do.cond.271
  br label %if.end.273

if.end.273:                                       ; preds = %do.end.272, %do.body.260
  br label %do.cond.274

do.cond.274:                                      ; preds = %if.end.273
  br label %do.end.275

do.end.275:                                       ; preds = %do.cond.274
  br label %do.body.276

do.body.276:                                      ; preds = %do.end.275
  %187 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %green277 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %187, i32 0, i32 3
  %188 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green277, align 8, !tbaa !60
  %tobool278 = icmp ne %struct.gx_transfer_map_s* %188, null
  br i1 %tobool278, label %if.then.279, label %if.end.316

if.then.279:                                      ; preds = %do.body.276
  br label %do.body.280

do.body.280:                                      ; preds = %if.then.279
  br label %do.body.281

do.body.281:                                      ; preds = %do.body.280
  br label %do.cond.282

do.cond.282:                                      ; preds = %do.body.281
  br label %do.end.283

do.end.283:                                       ; preds = %do.cond.282
  %189 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %green284 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %189, i32 0, i32 3
  %190 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green284, align 8, !tbaa !60
  %rc285 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %190, i32 0, i32 0
  %ref_count286 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc285, i32 0, i32 0
  %191 = load i64, i64* %ref_count286, align 8, !tbaa !44
  %add287 = add nsw i64 %191, -1
  store i64 %add287, i64* %ref_count286, align 8, !tbaa !44
  br label %do.cond.288

do.cond.288:                                      ; preds = %do.end.283
  br label %do.end.289

do.end.289:                                       ; preds = %do.cond.288
  %192 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %green290 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %192, i32 0, i32 3
  %193 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green290, align 8, !tbaa !60
  %rc291 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %193, i32 0, i32 0
  %ref_count292 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc291, i32 0, i32 0
  %194 = load i64, i64* %ref_count292, align 8, !tbaa !44
  %tobool293 = icmp ne i64 %194, 0
  br i1 %tobool293, label %if.else.311, label %if.then.294

if.then.294:                                      ; preds = %do.end.289
  br label %do.body.295

do.body.295:                                      ; preds = %if.then.294
  br label %do.body.296

do.body.296:                                      ; preds = %do.body.295
  br label %do.cond.297

do.cond.297:                                      ; preds = %do.body.296
  br label %do.end.298

do.end.298:                                       ; preds = %do.cond.297
  %195 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %green299 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %195, i32 0, i32 3
  %196 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green299, align 8, !tbaa !60
  %rc300 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %196, i32 0, i32 0
  %free301 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc300, i32 0, i32 2
  %197 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free301, align 8, !tbaa !51
  %198 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %green302 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %198, i32 0, i32 3
  %199 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green302, align 8, !tbaa !60
  %rc303 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %199, i32 0, i32 0
  %memory304 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc303, i32 0, i32 1
  %200 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory304, align 8, !tbaa !47
  %201 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %green305 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %201, i32 0, i32 3
  %202 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green305, align 8, !tbaa !60
  %203 = bitcast %struct.gx_transfer_map_s* %202 to i8*
  call void %197(%struct.gs_memory_s* %200, i8* %203, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0)) #3
  br label %do.cond.306

do.cond.306:                                      ; preds = %do.end.298
  br label %do.end.307

do.end.307:                                       ; preds = %do.cond.306
  br label %do.body.308

do.body.308:                                      ; preds = %do.end.307
  br label %do.cond.309

do.cond.309:                                      ; preds = %do.body.308
  br label %do.end.310

do.end.310:                                       ; preds = %do.cond.309
  br label %if.end.315

if.else.311:                                      ; preds = %do.end.289
  br label %do.body.312

do.body.312:                                      ; preds = %if.else.311
  br label %do.cond.313

do.cond.313:                                      ; preds = %do.body.312
  br label %do.end.314

do.end.314:                                       ; preds = %do.cond.313
  br label %if.end.315

if.end.315:                                       ; preds = %do.end.314, %do.end.310
  br label %if.end.316

if.end.316:                                       ; preds = %if.end.315, %do.body.276
  br label %do.cond.317

do.cond.317:                                      ; preds = %if.end.316
  br label %do.end.318

do.end.318:                                       ; preds = %do.cond.317
  %green319 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %old, i32 0, i32 3
  %204 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green319, align 8, !tbaa !60
  %205 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %green320 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %205, i32 0, i32 3
  store %struct.gx_transfer_map_s* %204, %struct.gx_transfer_map_s** %green320, align 8, !tbaa !60
  br label %if.end.321

if.end.321:                                       ; preds = %do.end.318, %do.body.255
  br label %do.cond.322

do.cond.322:                                      ; preds = %if.end.321
  br label %do.end.323

do.end.323:                                       ; preds = %do.cond.322
  br label %fgreen

fgreen:                                           ; preds = %do.end.323, %cleanup.159
  br label %do.body.324

do.body.324:                                      ; preds = %fgreen
  %206 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %red325 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %206, i32 0, i32 1
  %207 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red325, align 8, !tbaa !59
  %red326 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %old, i32 0, i32 1
  %208 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red326, align 8, !tbaa !59
  %cmp327 = icmp ne %struct.gx_transfer_map_s* %207, %208
  br i1 %cmp327, label %if.then.328, label %if.end.391

if.then.328:                                      ; preds = %do.body.324
  br label %do.body.329

do.body.329:                                      ; preds = %if.then.328
  %red330 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %old, i32 0, i32 1
  %209 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red330, align 8, !tbaa !59
  %tobool331 = icmp ne %struct.gx_transfer_map_s* %209, null
  br i1 %tobool331, label %if.then.332, label %if.end.343

if.then.332:                                      ; preds = %do.body.329
  br label %do.body.333

do.body.333:                                      ; preds = %if.then.332
  %red334 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %old, i32 0, i32 1
  %210 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red334, align 8, !tbaa !59
  %rc335 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %210, i32 0, i32 0
  %ref_count336 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc335, i32 0, i32 0
  %211 = load i64, i64* %ref_count336, align 8, !tbaa !44
  %inc337 = add nsw i64 %211, 1
  store i64 %inc337, i64* %ref_count336, align 8, !tbaa !44
  br label %do.body.338

do.body.338:                                      ; preds = %do.body.333
  br label %do.cond.339

do.cond.339:                                      ; preds = %do.body.338
  br label %do.end.340

do.end.340:                                       ; preds = %do.cond.339
  br label %do.cond.341

do.cond.341:                                      ; preds = %do.end.340
  br label %do.end.342

do.end.342:                                       ; preds = %do.cond.341
  br label %if.end.343

if.end.343:                                       ; preds = %do.end.342, %do.body.329
  br label %do.cond.344

do.cond.344:                                      ; preds = %if.end.343
  br label %do.end.345

do.end.345:                                       ; preds = %do.cond.344
  br label %do.body.346

do.body.346:                                      ; preds = %do.end.345
  %212 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %red347 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %212, i32 0, i32 1
  %213 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red347, align 8, !tbaa !59
  %tobool348 = icmp ne %struct.gx_transfer_map_s* %213, null
  br i1 %tobool348, label %if.then.349, label %if.end.386

if.then.349:                                      ; preds = %do.body.346
  br label %do.body.350

do.body.350:                                      ; preds = %if.then.349
  br label %do.body.351

do.body.351:                                      ; preds = %do.body.350
  br label %do.cond.352

do.cond.352:                                      ; preds = %do.body.351
  br label %do.end.353

do.end.353:                                       ; preds = %do.cond.352
  %214 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %red354 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %214, i32 0, i32 1
  %215 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red354, align 8, !tbaa !59
  %rc355 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %215, i32 0, i32 0
  %ref_count356 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc355, i32 0, i32 0
  %216 = load i64, i64* %ref_count356, align 8, !tbaa !44
  %add357 = add nsw i64 %216, -1
  store i64 %add357, i64* %ref_count356, align 8, !tbaa !44
  br label %do.cond.358

do.cond.358:                                      ; preds = %do.end.353
  br label %do.end.359

do.end.359:                                       ; preds = %do.cond.358
  %217 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %red360 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %217, i32 0, i32 1
  %218 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red360, align 8, !tbaa !59
  %rc361 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %218, i32 0, i32 0
  %ref_count362 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc361, i32 0, i32 0
  %219 = load i64, i64* %ref_count362, align 8, !tbaa !44
  %tobool363 = icmp ne i64 %219, 0
  br i1 %tobool363, label %if.else.381, label %if.then.364

if.then.364:                                      ; preds = %do.end.359
  br label %do.body.365

do.body.365:                                      ; preds = %if.then.364
  br label %do.body.366

do.body.366:                                      ; preds = %do.body.365
  br label %do.cond.367

do.cond.367:                                      ; preds = %do.body.366
  br label %do.end.368

do.end.368:                                       ; preds = %do.cond.367
  %220 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %red369 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %220, i32 0, i32 1
  %221 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red369, align 8, !tbaa !59
  %rc370 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %221, i32 0, i32 0
  %free371 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc370, i32 0, i32 2
  %222 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free371, align 8, !tbaa !51
  %223 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %red372 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %223, i32 0, i32 1
  %224 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red372, align 8, !tbaa !59
  %rc373 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %224, i32 0, i32 0
  %memory374 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc373, i32 0, i32 1
  %225 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory374, align 8, !tbaa !47
  %226 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %red375 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %226, i32 0, i32 1
  %227 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red375, align 8, !tbaa !59
  %228 = bitcast %struct.gx_transfer_map_s* %227 to i8*
  call void %222(%struct.gs_memory_s* %225, i8* %228, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0)) #3
  br label %do.cond.376

do.cond.376:                                      ; preds = %do.end.368
  br label %do.end.377

do.end.377:                                       ; preds = %do.cond.376
  br label %do.body.378

do.body.378:                                      ; preds = %do.end.377
  br label %do.cond.379

do.cond.379:                                      ; preds = %do.body.378
  br label %do.end.380

do.end.380:                                       ; preds = %do.cond.379
  br label %if.end.385

if.else.381:                                      ; preds = %do.end.359
  br label %do.body.382

do.body.382:                                      ; preds = %if.else.381
  br label %do.cond.383

do.cond.383:                                      ; preds = %do.body.382
  br label %do.end.384

do.end.384:                                       ; preds = %do.cond.383
  br label %if.end.385

if.end.385:                                       ; preds = %do.end.384, %do.end.380
  br label %if.end.386

if.end.386:                                       ; preds = %if.end.385, %do.body.346
  br label %do.cond.387

do.cond.387:                                      ; preds = %if.end.386
  br label %do.end.388

do.end.388:                                       ; preds = %do.cond.387
  %red389 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %old, i32 0, i32 1
  %229 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red389, align 8, !tbaa !59
  %230 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %red390 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %230, i32 0, i32 1
  store %struct.gx_transfer_map_s* %229, %struct.gx_transfer_map_s** %red390, align 8, !tbaa !59
  br label %if.end.391

if.end.391:                                       ; preds = %do.end.388, %do.body.324
  br label %do.cond.392

do.cond.392:                                      ; preds = %if.end.391
  br label %do.end.393

do.end.393:                                       ; preds = %do.cond.392
  br label %fred

fred:                                             ; preds = %do.end.393, %cleanup.98
  br label %do.body.394

do.body.394:                                      ; preds = %fred
  %231 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %gray395 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %231, i32 0, i32 7
  %232 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray395, align 8, !tbaa !58
  %gray396 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %old, i32 0, i32 7
  %233 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray396, align 8, !tbaa !58
  %cmp397 = icmp ne %struct.gx_transfer_map_s* %232, %233
  br i1 %cmp397, label %if.then.398, label %if.end.461

if.then.398:                                      ; preds = %do.body.394
  br label %do.body.399

do.body.399:                                      ; preds = %if.then.398
  %gray400 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %old, i32 0, i32 7
  %234 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray400, align 8, !tbaa !58
  %tobool401 = icmp ne %struct.gx_transfer_map_s* %234, null
  br i1 %tobool401, label %if.then.402, label %if.end.413

if.then.402:                                      ; preds = %do.body.399
  br label %do.body.403

do.body.403:                                      ; preds = %if.then.402
  %gray404 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %old, i32 0, i32 7
  %235 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray404, align 8, !tbaa !58
  %rc405 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %235, i32 0, i32 0
  %ref_count406 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc405, i32 0, i32 0
  %236 = load i64, i64* %ref_count406, align 8, !tbaa !44
  %inc407 = add nsw i64 %236, 1
  store i64 %inc407, i64* %ref_count406, align 8, !tbaa !44
  br label %do.body.408

do.body.408:                                      ; preds = %do.body.403
  br label %do.cond.409

do.cond.409:                                      ; preds = %do.body.408
  br label %do.end.410

do.end.410:                                       ; preds = %do.cond.409
  br label %do.cond.411

do.cond.411:                                      ; preds = %do.end.410
  br label %do.end.412

do.end.412:                                       ; preds = %do.cond.411
  br label %if.end.413

if.end.413:                                       ; preds = %do.end.412, %do.body.399
  br label %do.cond.414

do.cond.414:                                      ; preds = %if.end.413
  br label %do.end.415

do.end.415:                                       ; preds = %do.cond.414
  br label %do.body.416

do.body.416:                                      ; preds = %do.end.415
  %237 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %gray417 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %237, i32 0, i32 7
  %238 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray417, align 8, !tbaa !58
  %tobool418 = icmp ne %struct.gx_transfer_map_s* %238, null
  br i1 %tobool418, label %if.then.419, label %if.end.456

if.then.419:                                      ; preds = %do.body.416
  br label %do.body.420

do.body.420:                                      ; preds = %if.then.419
  br label %do.body.421

do.body.421:                                      ; preds = %do.body.420
  br label %do.cond.422

do.cond.422:                                      ; preds = %do.body.421
  br label %do.end.423

do.end.423:                                       ; preds = %do.cond.422
  %239 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %gray424 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %239, i32 0, i32 7
  %240 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray424, align 8, !tbaa !58
  %rc425 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %240, i32 0, i32 0
  %ref_count426 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc425, i32 0, i32 0
  %241 = load i64, i64* %ref_count426, align 8, !tbaa !44
  %add427 = add nsw i64 %241, -1
  store i64 %add427, i64* %ref_count426, align 8, !tbaa !44
  br label %do.cond.428

do.cond.428:                                      ; preds = %do.end.423
  br label %do.end.429

do.end.429:                                       ; preds = %do.cond.428
  %242 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %gray430 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %242, i32 0, i32 7
  %243 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray430, align 8, !tbaa !58
  %rc431 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %243, i32 0, i32 0
  %ref_count432 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc431, i32 0, i32 0
  %244 = load i64, i64* %ref_count432, align 8, !tbaa !44
  %tobool433 = icmp ne i64 %244, 0
  br i1 %tobool433, label %if.else.451, label %if.then.434

if.then.434:                                      ; preds = %do.end.429
  br label %do.body.435

do.body.435:                                      ; preds = %if.then.434
  br label %do.body.436

do.body.436:                                      ; preds = %do.body.435
  br label %do.cond.437

do.cond.437:                                      ; preds = %do.body.436
  br label %do.end.438

do.end.438:                                       ; preds = %do.cond.437
  %245 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %gray439 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %245, i32 0, i32 7
  %246 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray439, align 8, !tbaa !58
  %rc440 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %246, i32 0, i32 0
  %free441 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc440, i32 0, i32 2
  %247 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free441, align 8, !tbaa !51
  %248 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %gray442 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %248, i32 0, i32 7
  %249 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray442, align 8, !tbaa !58
  %rc443 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %249, i32 0, i32 0
  %memory444 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc443, i32 0, i32 1
  %250 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory444, align 8, !tbaa !47
  %251 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %gray445 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %251, i32 0, i32 7
  %252 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray445, align 8, !tbaa !58
  %253 = bitcast %struct.gx_transfer_map_s* %252 to i8*
  call void %247(%struct.gs_memory_s* %250, i8* %253, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0)) #3
  br label %do.cond.446

do.cond.446:                                      ; preds = %do.end.438
  br label %do.end.447

do.end.447:                                       ; preds = %do.cond.446
  br label %do.body.448

do.body.448:                                      ; preds = %do.end.447
  br label %do.cond.449

do.cond.449:                                      ; preds = %do.body.448
  br label %do.end.450

do.end.450:                                       ; preds = %do.cond.449
  br label %if.end.455

if.else.451:                                      ; preds = %do.end.429
  br label %do.body.452

do.body.452:                                      ; preds = %if.else.451
  br label %do.cond.453

do.cond.453:                                      ; preds = %do.body.452
  br label %do.end.454

do.end.454:                                       ; preds = %do.cond.453
  br label %if.end.455

if.end.455:                                       ; preds = %do.end.454, %do.end.450
  br label %if.end.456

if.end.456:                                       ; preds = %if.end.455, %do.body.416
  br label %do.cond.457

do.cond.457:                                      ; preds = %if.end.456
  br label %do.end.458

do.end.458:                                       ; preds = %do.cond.457
  %gray459 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %old, i32 0, i32 7
  %254 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray459, align 8, !tbaa !58
  %255 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %gray460 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %255, i32 0, i32 7
  store %struct.gx_transfer_map_s* %254, %struct.gx_transfer_map_s** %gray460, align 8, !tbaa !58
  br label %if.end.461

if.end.461:                                       ; preds = %do.end.458, %do.body.394
  br label %do.cond.462

do.cond.462:                                      ; preds = %if.end.461
  br label %do.end.463

do.end.463:                                       ; preds = %do.cond.462
  br label %fgray

fgray:                                            ; preds = %do.end.463, %cleanup
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.464

cleanup.464:                                      ; preds = %fgray, %if.end.254, %cleanup.220, %cleanup.159, %cleanup.98, %cleanup
  %256 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %256) #1
  %257 = bitcast i64* %new_ids to i8*
  call void @llvm.lifetime.end(i64 8, i8* %257) #1
  %258 = bitcast %struct.gx_transfer_s* %old to i8*
  call void @llvm.lifetime.end(i64 64, i8* %258) #1
  %259 = bitcast %struct.gx_transfer_s** %ptran to i8*
  call void @llvm.lifetime.end(i64 8, i8* %259) #1
  %260 = load i32, i32* %retval
  ret i32 %260
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @gs_color_name_component_number(%struct.gx_device_s*, i8*, i32, i32) #2

declare void @gx_set_effective_transfer(%struct.gs_state_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gs_setcolortransfer(%struct.gs_state_s* %pgs, float (double, %struct.gx_transfer_map_s*)* %red_proc, float (double, %struct.gx_transfer_map_s*)* %green_proc, float (double, %struct.gx_transfer_map_s*)* %blue_proc, float (double, %struct.gx_transfer_map_s*)* %gray_proc) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %red_proc.addr = alloca float (double, %struct.gx_transfer_map_s*)*, align 8
  %green_proc.addr = alloca float (double, %struct.gx_transfer_map_s*)*, align 8
  %blue_proc.addr = alloca float (double, %struct.gx_transfer_map_s*)*, align 8
  %gray_proc.addr = alloca float (double, %struct.gx_transfer_map_s*)*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store float (double, %struct.gx_transfer_map_s*)* %red_proc, float (double, %struct.gx_transfer_map_s*)** %red_proc.addr, align 8, !tbaa !1
  store float (double, %struct.gx_transfer_map_s*)* %green_proc, float (double, %struct.gx_transfer_map_s*)** %green_proc.addr, align 8, !tbaa !1
  store float (double, %struct.gx_transfer_map_s*)* %blue_proc, float (double, %struct.gx_transfer_map_s*)** %blue_proc.addr, align 8, !tbaa !1
  store float (double, %struct.gx_transfer_map_s*)* %gray_proc, float (double, %struct.gx_transfer_map_s*)** %gray_proc.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %1 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %red_proc.addr, align 8, !tbaa !1
  %2 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %green_proc.addr, align 8, !tbaa !1
  %3 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %blue_proc.addr, align 8, !tbaa !1
  %4 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %gray_proc.addr, align 8, !tbaa !1
  %call = call i32 @gs_setcolortransfer_remap(%struct.gs_state_s* %0, float (double, %struct.gx_transfer_map_s*)* %1, float (double, %struct.gx_transfer_map_s*)* %2, float (double, %struct.gx_transfer_map_s*)* %3, float (double, %struct.gx_transfer_map_s*)* %4, i32 1) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @gs_currentcolortransfer(%struct.gs_state_s* %pgs, float (double, %struct.gx_transfer_map_s*)** %procs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %procs.addr = alloca float (double, %struct.gx_transfer_map_s*)**, align 8
  %ptran = alloca %struct.gx_transfer_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store float (double, %struct.gx_transfer_map_s*)** %procs, float (double, %struct.gx_transfer_map_s*)*** %procs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_transfer_s** %ptran to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %set_transfer = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 46
  store %struct.gx_transfer_s* %set_transfer, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %2 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %red = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %2, i32 0, i32 1
  %3 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red, align 8, !tbaa !59
  %proc = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %3, i32 0, i32 1
  %4 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc, align 8, !tbaa !52
  %5 = load float (double, %struct.gx_transfer_map_s*)**, float (double, %struct.gx_transfer_map_s*)*** %procs.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %5, i64 0
  store float (double, %struct.gx_transfer_map_s*)* %4, float (double, %struct.gx_transfer_map_s*)** %arrayidx, align 8, !tbaa !1
  %6 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %green = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %6, i32 0, i32 3
  %7 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green, align 8, !tbaa !60
  %proc1 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %7, i32 0, i32 1
  %8 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc1, align 8, !tbaa !52
  %9 = load float (double, %struct.gx_transfer_map_s*)**, float (double, %struct.gx_transfer_map_s*)*** %procs.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %9, i64 1
  store float (double, %struct.gx_transfer_map_s*)* %8, float (double, %struct.gx_transfer_map_s*)** %arrayidx2, align 8, !tbaa !1
  %10 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %blue = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %10, i32 0, i32 5
  %11 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %blue, align 8, !tbaa !61
  %proc3 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %11, i32 0, i32 1
  %12 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc3, align 8, !tbaa !52
  %13 = load float (double, %struct.gx_transfer_map_s*)**, float (double, %struct.gx_transfer_map_s*)*** %procs.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %13, i64 2
  store float (double, %struct.gx_transfer_map_s*)* %12, float (double, %struct.gx_transfer_map_s*)** %arrayidx4, align 8, !tbaa !1
  %14 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %gray = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %14, i32 0, i32 7
  %15 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray, align 8, !tbaa !58
  %proc5 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %15, i32 0, i32 1
  %16 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc5, align 8, !tbaa !52
  %17 = load float (double, %struct.gx_transfer_map_s*)**, float (double, %struct.gx_transfer_map_s*)*** %procs.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %17, i64 3
  store float (double, %struct.gx_transfer_map_s*)* %16, float (double, %struct.gx_transfer_map_s*)** %arrayidx6, align 8, !tbaa !1
  %18 = bitcast %struct.gx_transfer_s** %ptran to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
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
!6 = !{!"double", !3, i64 0}
!7 = !{!8, !2, i64 8}
!8 = !{!"gs_state_s", !9, i64 0, !2, i64 8, !2, i64 16, !10, i64 24, !9, i64 128, !14, i64 132, !9, i64 168, !15, i64 176, !15, i64 192, !9, i64 208, !9, i64 212, !16, i64 216, !3, i64 220, !17, i64 224, !17, i64 228, !18, i64 232, !19, i64 240, !9, i64 248, !9, i64 252, !9, i64 256, !2, i64 264, !9, i64 272, !9, i64 276, !9, i64 280, !9, i64 284, !9, i64 288, !9, i64 292, !11, i64 296, !20, i64 300, !9, i64 308, !9, i64 312, !9, i64 316, !11, i64 320, !9, i64 324, !9, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !9, i64 408, !2, i64 416, !2, i64 424, !21, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !22, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !22, i64 1336, !2, i64 1616, !12, i64 1624, !9, i64 1648, !12, i64 1652, !9, i64 1676, !2, i64 1680, !2, i64 1688, !2, i64 1696, !2, i64 1704, !19, i64 1712, !19, i64 1720, !2, i64 1728, !9, i64 1736, !3, i64 1744, !2, i64 1792, !2, i64 1800, !14, i64 1808, !9, i64 1844, !3, i64 1848, !3, i64 1852, !2, i64 1856, !9, i64 1864, !2, i64 1872, !2, i64 1880, !23, i64 1888}
!9 = !{!"int", !3, i64 0}
!10 = !{!"gx_line_params_s", !11, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !9, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !9, i64 36, !12, i64 40, !13, i64 64}
!11 = !{!"float", !3, i64 0}
!12 = !{!"gs_matrix_s", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20}
!13 = !{!"gx_dash_params_s", !2, i64 0, !9, i64 8, !11, i64 12, !9, i64 16, !11, i64 20, !9, i64 24, !9, i64 28, !11, i64 32}
!14 = !{!"gs_matrix_fixed_s", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !9, i64 24, !9, i64 28, !9, i64 32}
!15 = !{!"gs_point_s", !6, i64 0, !6, i64 8}
!16 = !{!"short", !3, i64 0}
!17 = !{!"gs_transparency_source_s", !11, i64 0}
!18 = !{!"gs_xstate_trans_flags", !9, i64 0, !9, i64 4}
!19 = !{!"long", !3, i64 0}
!20 = !{!"gs_fixed_point_s", !9, i64 0, !9, i64 4}
!21 = !{!"gx_transfer_s", !9, i64 0, !2, i64 8, !9, i64 16, !2, i64 24, !9, i64 32, !2, i64 40, !9, i64 48, !2, i64 56}
!22 = !{!"gs_devicen_color_map_s", !9, i64 0, !3, i64 4, !9, i64 8, !9, i64 12, !19, i64 16, !3, i64 24}
!23 = !{!"gs_state_client_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!24 = !{!9, !9, i64 0}
!25 = !{!26, !2, i64 8}
!26 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16}
!27 = !{!26, !2, i64 0}
!28 = !{!29, !2, i64 0}
!29 = !{!"gs_color_space_s", !2, i64 0, !30, i64 8, !19, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !3, i64 72}
!30 = !{!"rc_header_s", !19, i64 0, !2, i64 8, !2, i64 16}
!31 = !{!32, !2, i64 104}
!32 = !{!"gs_color_space_type_s", !3, i64 0, !9, i64 4, !9, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128}
!33 = !{!11, !11, i64 0}
!34 = !{!35, !2, i64 0}
!35 = !{!"gs_client_color_s", !2, i64 0, !36, i64 8}
!36 = !{!"gs_paint_color_s", !3, i64 0}
!37 = !{!26, !2, i64 16}
!38 = !{!39, !2, i64 0}
!39 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !40, i64 352, !9, i64 360, !35, i64 368, !41, i64 632}
!40 = !{!"gs_int_point_s", !9, i64 0, !9, i64 4}
!41 = !{!"_mask", !42, i64 0, !19, i64 8, !2, i64 16}
!42 = !{!"mp_", !9, i64 0, !9, i64 4}
!43 = !{!8, !2, i64 416}
!44 = !{!45, !19, i64 0}
!45 = !{!"gx_transfer_map_s", !30, i64 0, !2, i64 24, !46, i64 32, !19, i64 48, !3, i64 56}
!46 = !{!"gs_mapping_closure_s", !2, i64 0, !2, i64 8}
!47 = !{!45, !2, i64 8}
!48 = !{!49, !2, i64 72}
!49 = !{!"gs_memory_s", !2, i64 0, !50, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!50 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!51 = !{!45, !2, i64 16}
!52 = !{!45, !2, i64 24}
!53 = !{!45, !19, i64 48}
!54 = !{!8, !2, i64 424}
!55 = !{!19, !19, i64 0}
!56 = !{!8, !2, i64 1872}
!57 = !{i64 0, i64 4, !24, i64 8, i64 8, !1, i64 16, i64 4, !24, i64 24, i64 8, !1, i64 32, i64 4, !24, i64 40, i64 8, !1, i64 48, i64 4, !24, i64 56, i64 8, !1}
!58 = !{!21, !2, i64 56}
!59 = !{!21, !2, i64 8}
!60 = !{!21, !2, i64 24}
!61 = !{!21, !2, i64 40}
!62 = !{!21, !9, i64 0}
!63 = !{!21, !9, i64 16}
!64 = !{!21, !9, i64 32}
!65 = !{!21, !9, i64 48}
