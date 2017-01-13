; ModuleID = './gsht1.bc'
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
%struct.gx_ht_order_procs_s = type { i32, i32 (%struct.gx_ht_order_s*, i8*)*, i32 (%struct.gx_ht_order_s*, i32, %struct.gs_int_point_s*)*, i32 (%struct.gx_ht_tile_s*, i32, %struct.gx_ht_order_s*)*, i32 (%struct.gx_ht_order_s*, i16, i8*, i32, i32, i32, i32, i32)* }
%struct.gx_ht_order_s = type { %struct.gx_ht_cell_params_s, i16, i16, i16, i16, i16, i16, i32, i32, i32, %struct.gx_ht_order_procs_s*, %struct.gs_memory_s*, i32*, i8*, %struct.gx_ht_cache_s*, %struct.gx_transfer_map_s*, %struct.gx_ht_order_screen_params_s, i8*, i32 }
%struct.gx_ht_cell_params_s = type { i16, i16, i16, i16, i16, i16, i64, i16, i16, i32, i32, i32 }
%struct.gx_ht_cache_s = type { i8*, i32, %struct.gx_ht_tile_s*, i32, %struct.gx_ht_order_s, i32, i32, i32, i64, %struct.gx_ht_tile_s* (%struct.gx_ht_cache_s*, i32)* }
%struct.gx_ht_tile_s = type { %struct.gx_strip_bitmap_s, i32, i32 }
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gx_transfer_map_s = type { %struct.rc_header_s, float (double, %struct.gx_transfer_map_s*)*, %struct.gs_mapping_closure_s, i64, [256 x i16] }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.gs_mapping_closure_s = type { float (double, %struct.gx_transfer_map_s*, i8*)*, i8* }
%struct.gx_ht_order_screen_params_s = type { %struct.gs_matrix_s, i64 }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_halftone_component_s = type { i32, i32, i32, %union.anon.2 }
%union.anon.2 = type { %struct.gs_threshold2_halftone_s }
%struct.gs_threshold2_halftone_s = type { i32, i32, %struct.gs_mapping_closure_s, i32, i32, i32, %struct.gs_const_bytestring_s }
%struct.gs_const_bytestring_s = type { i8*, i32, i8* }
%struct.gs_spot_halftone_s = type { %struct.gs_screen_halftone_s, i32, float (double, %struct.gx_transfer_map_s*)*, %struct.gs_mapping_closure_s }
%struct.gs_screen_halftone_s = type { float, float, float (double, double)*, float, float }
%struct.gs_threshold_halftone_s = type { i32, i32, %struct.gs_mapping_closure_s, %struct.gs_const_string_s, float (double, %struct.gx_transfer_map_s*)* }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gs_client_order_halftone_s = type { i32, i32, i32, %struct.gs_client_order_ht_procs_s*, i8*, %struct.gs_mapping_closure_s }
%struct.gs_client_order_ht_procs_s = type { i32 (%struct.gx_ht_order_s*, %struct.gs_state_s*, %struct.gs_client_order_halftone_s*, %struct.gs_memory_s*)* }
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
%struct.gc_procs_common_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)* }
%struct.gs_string_s = type { i8*, i32 }
%struct._csc = type { %struct.gs_screen_halftone_s, %struct.gs_screen_halftone_s, %struct.gs_screen_halftone_s, %struct.gs_screen_halftone_s }
%struct.gs_screen_enum_s = type { %struct.gs_halftone_s, %struct.gx_ht_order_s, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, %struct.gs_state_s* }
%struct.gs_multiple_halftone_s = type { %struct.gs_halftone_component_s*, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gx_ht_bit_s = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"gs_halftone_component\00", align 1
@st_halftone_component = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 80, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @halftone_component_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @halftone_component_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"gs_halftone_component[]\00", align 1
@st_ht_component_element = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 80, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @ht_comp_elt_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @ht_comp_elt_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@gs_sethalftone_prepare.cindex = internal constant [4 x i32] [i32 3, i32 0, i32 1, i32 2], align 16
@gs_sethalftone_prepare.color_names = internal global [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0)], align 16
@.str.2 = private unnamed_addr constant [5 x i8] c"Gray\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"Red\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Green\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Blue\00", align 1
@st_ht_order_component_element = external constant %struct.gs_memory_struct_type_s, align 8
@.str.6 = private unnamed_addr constant [15 x i8] c"gs_sethalftone\00", align 1
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@ptr_const_string_procs = external constant %struct.gs_ptr_procs_s, align 8
@st_transfer_map = external constant %struct.gs_memory_struct_type_s, align 8
@.str.7 = private unnamed_addr constant [17 x i8] c"process_transfer\00", align 1
@ht_order_procs_table = external constant [2 x %struct.gx_ht_order_procs_s], align 16

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @halftone_component_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %hptr = alloca %struct.gs_halftone_component_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_halftone_component_s** %hptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_halftone_component_s*
  store %struct.gs_halftone_component_s* %2, %struct.gs_halftone_component_s** %hptr, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !5
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.20
  ]

sw.default:                                       ; preds = %entry
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %4 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %hptr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %4, i32 0, i32 2
  %5 = load i32, i32* %type, align 4, !tbaa !7
  switch i32 %5, label %sw.default.19 [
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.4
    i32 5, label %sw.bb.13
    i32 8, label %sw.bb.16
  ]

sw.bb.1:                                          ; preds = %sw.bb
  %6 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %hptr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %6, i32 0, i32 3
  %spot = bitcast %union.anon.2* %params to %struct.gs_spot_halftone_s*
  %transfer = getelementptr inbounds %struct.gs_spot_halftone_s, %struct.gs_spot_halftone_s* %spot, i32 0, i32 2
  %7 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %transfer, align 8, !tbaa !9
  %cmp = icmp eq float (double, %struct.gx_transfer_map_s*)* %7, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.1
  %8 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %hptr, align 8, !tbaa !1
  %params2 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %8, i32 0, i32 3
  %spot3 = bitcast %union.anon.2* %params2 to %struct.gs_spot_halftone_s*
  %transfer_closure = getelementptr inbounds %struct.gs_spot_halftone_s, %struct.gs_spot_halftone_s* %spot3, i32 0, i32 3
  %data = getelementptr inbounds %struct.gs_mapping_closure_s, %struct.gs_mapping_closure_s* %transfer_closure, i32 0, i32 1
  %9 = load i8*, i8** %data, align 8, !tbaa !14
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %9, %cond.true ], [ null, %cond.false ]
  %10 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %10, i32 0, i32 0
  store i8* %cond, i8** %ptr, align 8, !tbaa !15
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.4:                                          ; preds = %sw.bb
  %11 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %12 = bitcast i8* %11 to %struct.gs_halftone_component_s*
  %params5 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %12, i32 0, i32 3
  %threshold = bitcast %union.anon.2* %params5 to %struct.gs_threshold_halftone_s*
  %thresholds = getelementptr inbounds %struct.gs_threshold_halftone_s, %struct.gs_threshold_halftone_s* %threshold, i32 0, i32 3
  %data6 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %thresholds, i32 0, i32 0
  %13 = load i8*, i8** %data6, align 8, !tbaa !17
  %14 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr7 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %14, i32 0, i32 0
  store i8* %13, i8** %ptr7, align 8, !tbaa !15
  %15 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %16 = bitcast i8* %15 to %struct.gs_halftone_component_s*
  %params8 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %16, i32 0, i32 3
  %threshold9 = bitcast %union.anon.2* %params8 to %struct.gs_threshold_halftone_s*
  %thresholds10 = getelementptr inbounds %struct.gs_threshold_halftone_s, %struct.gs_threshold_halftone_s* %threshold9, i32 0, i32 3
  %size11 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %thresholds10, i32 0, i32 1
  %17 = load i32, i32* %size11, align 4, !tbaa !19
  %18 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %size12 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %18, i32 0, i32 1
  store i32 %17, i32* %size12, align 4, !tbaa !20
  store %struct.gs_ptr_procs_s* @ptr_const_string_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.13:                                         ; preds = %sw.bb
  %19 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %20 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %hptr, align 8, !tbaa !1
  %params14 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %20, i32 0, i32 3
  %threshold2 = bitcast %union.anon.2* %params14 to %struct.gs_threshold2_halftone_s*
  %thresholds15 = getelementptr inbounds %struct.gs_threshold2_halftone_s, %struct.gs_threshold2_halftone_s* %threshold2, i32 0, i32 6
  %call = call %struct.gs_ptr_procs_s* @enum_const_bytestring(%struct.enum_ptr_s* %19, %struct.gs_const_bytestring_s* %thresholds15) #4
  store %struct.gs_ptr_procs_s* %call, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.16:                                         ; preds = %sw.bb
  %21 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %hptr, align 8, !tbaa !1
  %params17 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %21, i32 0, i32 3
  %client_order = bitcast %union.anon.2* %params17 to %struct.gs_client_order_halftone_s*
  %client_data = getelementptr inbounds %struct.gs_client_order_halftone_s, %struct.gs_client_order_halftone_s* %client_order, i32 0, i32 4
  %22 = load i8*, i8** %client_data, align 8, !tbaa !21
  %23 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr18 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %23, i32 0, i32 0
  store i8* %22, i8** %ptr18, align 8, !tbaa !15
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default.19:                                    ; preds = %sw.bb
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.20:                                         ; preds = %entry
  %24 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %hptr, align 8, !tbaa !1
  %type21 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %24, i32 0, i32 2
  %25 = load i32, i32* %type21, align 4, !tbaa !7
  switch i32 %25, label %sw.default.48 [
    i32 4, label %sw.bb.22
    i32 5, label %sw.bb.36
    i32 8, label %sw.bb.42
  ]

sw.bb.22:                                         ; preds = %sw.bb.20
  %26 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %hptr, align 8, !tbaa !1
  %params23 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %26, i32 0, i32 3
  %threshold24 = bitcast %union.anon.2* %params23 to %struct.gs_threshold_halftone_s*
  %transfer25 = getelementptr inbounds %struct.gs_threshold_halftone_s, %struct.gs_threshold_halftone_s* %threshold24, i32 0, i32 4
  %27 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %transfer25, align 8, !tbaa !23
  %cmp26 = icmp eq float (double, %struct.gx_transfer_map_s*)* %27, null
  br i1 %cmp26, label %cond.true.27, label %cond.false.32

cond.true.27:                                     ; preds = %sw.bb.22
  %28 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %hptr, align 8, !tbaa !1
  %params28 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %28, i32 0, i32 3
  %threshold29 = bitcast %union.anon.2* %params28 to %struct.gs_threshold_halftone_s*
  %transfer_closure30 = getelementptr inbounds %struct.gs_threshold_halftone_s, %struct.gs_threshold_halftone_s* %threshold29, i32 0, i32 2
  %data31 = getelementptr inbounds %struct.gs_mapping_closure_s, %struct.gs_mapping_closure_s* %transfer_closure30, i32 0, i32 1
  %29 = load i8*, i8** %data31, align 8, !tbaa !25
  br label %cond.end.33

cond.false.32:                                    ; preds = %sw.bb.22
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.false.32, %cond.true.27
  %cond34 = phi i8* [ %29, %cond.true.27 ], [ null, %cond.false.32 ]
  %30 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr35 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %30, i32 0, i32 0
  store i8* %cond34, i8** %ptr35, align 8, !tbaa !15
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.36:                                         ; preds = %sw.bb.20
  %31 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %hptr, align 8, !tbaa !1
  %params37 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %31, i32 0, i32 3
  %threshold238 = bitcast %union.anon.2* %params37 to %struct.gs_threshold2_halftone_s*
  %transfer_closure39 = getelementptr inbounds %struct.gs_threshold2_halftone_s, %struct.gs_threshold2_halftone_s* %threshold238, i32 0, i32 2
  %data40 = getelementptr inbounds %struct.gs_mapping_closure_s, %struct.gs_mapping_closure_s* %transfer_closure39, i32 0, i32 1
  %32 = load i8*, i8** %data40, align 8, !tbaa !26
  %33 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr41 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %33, i32 0, i32 0
  store i8* %32, i8** %ptr41, align 8, !tbaa !15
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.42:                                         ; preds = %sw.bb.20
  %34 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %hptr, align 8, !tbaa !1
  %params43 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %34, i32 0, i32 3
  %client_order44 = bitcast %union.anon.2* %params43 to %struct.gs_client_order_halftone_s*
  %transfer_closure45 = getelementptr inbounds %struct.gs_client_order_halftone_s, %struct.gs_client_order_halftone_s* %client_order44, i32 0, i32 5
  %data46 = getelementptr inbounds %struct.gs_mapping_closure_s, %struct.gs_mapping_closure_s* %transfer_closure45, i32 0, i32 1
  %35 = load i8*, i8** %data46, align 8, !tbaa !29
  %36 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr47 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %36, i32 0, i32 0
  store i8* %35, i8** %ptr47, align 8, !tbaa !15
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default.48:                                    ; preds = %sw.bb.20
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.default.48, %sw.bb.42, %sw.bb.36, %cond.end.33, %sw.default.19, %sw.bb.16, %sw.bb.13, %sw.bb.4, %cond.end, %sw.default
  %37 = bitcast %struct.gs_halftone_component_s** %hptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %38
}

; Function Attrs: nounwind uwtable
define internal void @halftone_component_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %hptr = alloca %struct.gs_halftone_component_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_halftone_component_s** %hptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_halftone_component_s*
  store %struct.gs_halftone_component_s* %2, %struct.gs_halftone_component_s** %hptr, align 8, !tbaa !1
  %3 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %hptr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %3, i32 0, i32 2
  %4 = load i32, i32* %type, align 4, !tbaa !7
  switch i32 %4, label %sw.default [
    i32 3, label %sw.bb
    i32 4, label %sw.bb.7
    i32 5, label %sw.bb.25
    i32 8, label %sw.bb.38
  ]

sw.bb:                                            ; preds = %entry
  %5 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %hptr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %5, i32 0, i32 3
  %spot = bitcast %union.anon.2* %params to %struct.gs_spot_halftone_s*
  %transfer = getelementptr inbounds %struct.gs_spot_halftone_s, %struct.gs_spot_halftone_s* %spot, i32 0, i32 2
  %6 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %transfer, align 8, !tbaa !9
  %cmp = icmp eq float (double, %struct.gx_transfer_map_s*)* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %7 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gc_state_s* %7 to %struct.gc_procs_common_s**
  %9 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %8, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %9, i32 0, i32 0
  %10 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !30
  %11 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %hptr, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %11, i32 0, i32 3
  %spot2 = bitcast %union.anon.2* %params1 to %struct.gs_spot_halftone_s*
  %transfer_closure = getelementptr inbounds %struct.gs_spot_halftone_s, %struct.gs_spot_halftone_s* %spot2, i32 0, i32 3
  %data = getelementptr inbounds %struct.gs_mapping_closure_s, %struct.gs_mapping_closure_s* %transfer_closure, i32 0, i32 1
  %12 = load i8*, i8** %data, align 8, !tbaa !14
  %13 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %10(i8* %12, %struct.gc_state_s* %13) #4
  %14 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %hptr, align 8, !tbaa !1
  %params3 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %14, i32 0, i32 3
  %spot4 = bitcast %union.anon.2* %params3 to %struct.gs_spot_halftone_s*
  %transfer_closure5 = getelementptr inbounds %struct.gs_spot_halftone_s, %struct.gs_spot_halftone_s* %spot4, i32 0, i32 3
  %data6 = getelementptr inbounds %struct.gs_mapping_closure_s, %struct.gs_mapping_closure_s* %transfer_closure5, i32 0, i32 1
  store i8* %call, i8** %data6, align 8, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %15 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %16 = bitcast %struct.gc_state_s* %15 to %struct.gc_procs_common_s**
  %17 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %16, align 8, !tbaa !1
  %reloc_const_string = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %17, i32 0, i32 2
  %18 = load void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)** %reloc_const_string, align 8, !tbaa !32
  %19 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %hptr, align 8, !tbaa !1
  %params8 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %19, i32 0, i32 3
  %threshold = bitcast %union.anon.2* %params8 to %struct.gs_threshold_halftone_s*
  %thresholds = getelementptr inbounds %struct.gs_threshold_halftone_s, %struct.gs_threshold_halftone_s* %threshold, i32 0, i32 3
  %20 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %18(%struct.gs_const_string_s* %thresholds, %struct.gc_state_s* %20) #4
  %21 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %hptr, align 8, !tbaa !1
  %params9 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %21, i32 0, i32 3
  %threshold10 = bitcast %union.anon.2* %params9 to %struct.gs_threshold_halftone_s*
  %transfer11 = getelementptr inbounds %struct.gs_threshold_halftone_s, %struct.gs_threshold_halftone_s* %threshold10, i32 0, i32 4
  %22 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %transfer11, align 8, !tbaa !23
  %cmp12 = icmp eq float (double, %struct.gx_transfer_map_s*)* %22, null
  br i1 %cmp12, label %if.then.13, label %if.end.24

if.then.13:                                       ; preds = %sw.bb.7
  %23 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %24 = bitcast %struct.gc_state_s* %23 to %struct.gc_procs_common_s**
  %25 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %24, align 8, !tbaa !1
  %reloc_struct_ptr14 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %25, i32 0, i32 0
  %26 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr14, align 8, !tbaa !30
  %27 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %hptr, align 8, !tbaa !1
  %params15 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %27, i32 0, i32 3
  %threshold16 = bitcast %union.anon.2* %params15 to %struct.gs_threshold_halftone_s*
  %transfer_closure17 = getelementptr inbounds %struct.gs_threshold_halftone_s, %struct.gs_threshold_halftone_s* %threshold16, i32 0, i32 2
  %data18 = getelementptr inbounds %struct.gs_mapping_closure_s, %struct.gs_mapping_closure_s* %transfer_closure17, i32 0, i32 1
  %28 = load i8*, i8** %data18, align 8, !tbaa !25
  %29 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call19 = call i8* %26(i8* %28, %struct.gc_state_s* %29) #4
  %30 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %hptr, align 8, !tbaa !1
  %params20 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %30, i32 0, i32 3
  %threshold21 = bitcast %union.anon.2* %params20 to %struct.gs_threshold_halftone_s*
  %transfer_closure22 = getelementptr inbounds %struct.gs_threshold_halftone_s, %struct.gs_threshold_halftone_s* %threshold21, i32 0, i32 2
  %data23 = getelementptr inbounds %struct.gs_mapping_closure_s, %struct.gs_mapping_closure_s* %transfer_closure22, i32 0, i32 1
  store i8* %call19, i8** %data23, align 8, !tbaa !25
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.13, %sw.bb.7
  br label %sw.epilog

sw.bb.25:                                         ; preds = %entry
  %31 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %hptr, align 8, !tbaa !1
  %params26 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %31, i32 0, i32 3
  %threshold2 = bitcast %union.anon.2* %params26 to %struct.gs_threshold2_halftone_s*
  %thresholds27 = getelementptr inbounds %struct.gs_threshold2_halftone_s, %struct.gs_threshold2_halftone_s* %threshold2, i32 0, i32 6
  %32 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void @reloc_const_bytestring(%struct.gs_const_bytestring_s* %thresholds27, %struct.gc_state_s* %32) #4
  %33 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %34 = bitcast %struct.gc_state_s* %33 to %struct.gc_procs_common_s**
  %35 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %34, align 8, !tbaa !1
  %reloc_struct_ptr28 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %35, i32 0, i32 0
  %36 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr28, align 8, !tbaa !30
  %37 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %hptr, align 8, !tbaa !1
  %params29 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %37, i32 0, i32 3
  %threshold230 = bitcast %union.anon.2* %params29 to %struct.gs_threshold2_halftone_s*
  %transfer_closure31 = getelementptr inbounds %struct.gs_threshold2_halftone_s, %struct.gs_threshold2_halftone_s* %threshold230, i32 0, i32 2
  %data32 = getelementptr inbounds %struct.gs_mapping_closure_s, %struct.gs_mapping_closure_s* %transfer_closure31, i32 0, i32 1
  %38 = load i8*, i8** %data32, align 8, !tbaa !26
  %39 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call33 = call i8* %36(i8* %38, %struct.gc_state_s* %39) #4
  %40 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %hptr, align 8, !tbaa !1
  %params34 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %40, i32 0, i32 3
  %threshold235 = bitcast %union.anon.2* %params34 to %struct.gs_threshold2_halftone_s*
  %transfer_closure36 = getelementptr inbounds %struct.gs_threshold2_halftone_s, %struct.gs_threshold2_halftone_s* %threshold235, i32 0, i32 2
  %data37 = getelementptr inbounds %struct.gs_mapping_closure_s, %struct.gs_mapping_closure_s* %transfer_closure36, i32 0, i32 1
  store i8* %call33, i8** %data37, align 8, !tbaa !26
  br label %sw.epilog

sw.bb.38:                                         ; preds = %entry
  %41 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %42 = bitcast %struct.gc_state_s* %41 to %struct.gc_procs_common_s**
  %43 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %42, align 8, !tbaa !1
  %reloc_struct_ptr39 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %43, i32 0, i32 0
  %44 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr39, align 8, !tbaa !30
  %45 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %hptr, align 8, !tbaa !1
  %params40 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %45, i32 0, i32 3
  %client_order = bitcast %union.anon.2* %params40 to %struct.gs_client_order_halftone_s*
  %client_data = getelementptr inbounds %struct.gs_client_order_halftone_s, %struct.gs_client_order_halftone_s* %client_order, i32 0, i32 4
  %46 = load i8*, i8** %client_data, align 8, !tbaa !21
  %47 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call41 = call i8* %44(i8* %46, %struct.gc_state_s* %47) #4
  %48 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %hptr, align 8, !tbaa !1
  %params42 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %48, i32 0, i32 3
  %client_order43 = bitcast %union.anon.2* %params42 to %struct.gs_client_order_halftone_s*
  %client_data44 = getelementptr inbounds %struct.gs_client_order_halftone_s, %struct.gs_client_order_halftone_s* %client_order43, i32 0, i32 4
  store i8* %call41, i8** %client_data44, align 8, !tbaa !21
  %49 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %50 = bitcast %struct.gc_state_s* %49 to %struct.gc_procs_common_s**
  %51 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %50, align 8, !tbaa !1
  %reloc_struct_ptr45 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %51, i32 0, i32 0
  %52 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr45, align 8, !tbaa !30
  %53 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %hptr, align 8, !tbaa !1
  %params46 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %53, i32 0, i32 3
  %client_order47 = bitcast %union.anon.2* %params46 to %struct.gs_client_order_halftone_s*
  %transfer_closure48 = getelementptr inbounds %struct.gs_client_order_halftone_s, %struct.gs_client_order_halftone_s* %client_order47, i32 0, i32 5
  %data49 = getelementptr inbounds %struct.gs_mapping_closure_s, %struct.gs_mapping_closure_s* %transfer_closure48, i32 0, i32 1
  %54 = load i8*, i8** %data49, align 8, !tbaa !29
  %55 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call50 = call i8* %52(i8* %54, %struct.gc_state_s* %55) #4
  %56 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %hptr, align 8, !tbaa !1
  %params51 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %56, i32 0, i32 3
  %client_order52 = bitcast %union.anon.2* %params51 to %struct.gs_client_order_halftone_s*
  %transfer_closure53 = getelementptr inbounds %struct.gs_client_order_halftone_s, %struct.gs_client_order_halftone_s* %client_order52, i32 0, i32 5
  %data54 = getelementptr inbounds %struct.gs_mapping_closure_s, %struct.gs_mapping_closure_s* %transfer_closure53, i32 0, i32 1
  store i8* %call50, i8** %data54, align 8, !tbaa !29
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.38, %sw.bb.25, %if.end.24, %if.end
  %57 = bitcast %struct.gs_halftone_component_s** %hptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @ht_comp_elt_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
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
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %size.addr, align 4, !tbaa !5
  %div = udiv i32 %1, 80
  store i32 %div, i32* %count, align 4, !tbaa !5
  %2 = load i32, i32* %count, align 4, !tbaa !5
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_halftone_component to %struct.gs_memory_struct_type_s*), i32 0, i32 4), align 8, !tbaa !33
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %6 = load i32, i32* %index.addr, align 4, !tbaa !5
  %7 = load i32, i32* %count, align 4, !tbaa !5
  %rem = urem i32 %6, %7
  %conv = zext i32 %rem to i64
  %mul = mul i64 %conv, 80
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %mul
  %8 = load i32, i32* %index.addr, align 4, !tbaa !5
  %9 = load i32, i32* %count, align 4, !tbaa !5
  %div1 = udiv i32 %8, %9
  %10 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %11 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %3(%struct.gs_memory_s* %4, i8* %add.ptr, i32 80, i32 %div1, %struct.enum_ptr_s* %10, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_halftone_component to %struct.gs_memory_struct_type_s*), %struct.gc_state_s* %11) #4
  store %struct.gs_ptr_procs_s* %call, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %12 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  %13 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %13
}

; Function Attrs: nounwind uwtable
define internal void @ht_comp_elt_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
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
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %size.addr, align 4, !tbaa !5
  %div = udiv i32 %1, 80
  store i32 %div, i32* %count, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %count, align 4, !tbaa !5
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_halftone_component to %struct.gs_memory_struct_type_s*), i32 0, i32 5), align 8, !tbaa !35
  %4 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %5 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %3(i8* %4, i32 80, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_halftone_component to %struct.gs_memory_struct_type_s*), %struct.gc_state_s* %5) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %count, align 4, !tbaa !5
  %dec = add i32 %6, -1
  store i32 %dec, i32* %count, align 4, !tbaa !5
  %7 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 80
  store i8* %add.ptr, i8** %vptr.addr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_setcolorscreen(%struct.gs_state_s* %pgs, %struct.gs_colorscreen_halftone_s* %pht) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pht.addr = alloca %struct.gs_colorscreen_halftone_s*, align 8
  %ht = alloca %struct.gs_halftone_s, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_colorscreen_halftone_s* %pht, %struct.gs_colorscreen_halftone_s** %pht.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_halftone_s* %ht to i8*
  call void @llvm.lifetime.start(i64 128, i8* %0) #1
  %type = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %ht, i32 0, i32 0
  store i32 2, i32* %type, align 4, !tbaa !36
  %params = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %ht, i32 0, i32 2
  %colorscreen = bitcast %union.anon.1* %params to %struct.gs_colorscreen_halftone_s*
  %1 = load %struct.gs_colorscreen_halftone_s*, %struct.gs_colorscreen_halftone_s** %pht.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_colorscreen_halftone_s* %colorscreen to i8*
  %3 = bitcast %struct.gs_colorscreen_halftone_s* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 96, i32 8, i1 false), !tbaa.struct !40
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 @gs_sethalftone(%struct.gs_state_s* %4, %struct.gs_halftone_s* %ht) #4
  %5 = bitcast %struct.gs_halftone_s* %ht to i8*
  call void @llvm.lifetime.end(i64 128, i8* %5) #1
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define i32 @gs_sethalftone(%struct.gs_state_s* %pgs, %struct.gs_halftone_s* %pht) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pht.addr = alloca %struct.gs_halftone_s*, align 8
  %ht = alloca %struct.gs_halftone_s, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_halftone_s* %pht, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_halftone_s* %ht to i8*
  call void @llvm.lifetime.start(i64 128, i8* %0) #1
  %1 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_halftone_s* %ht to i8*
  %3 = bitcast %struct.gs_halftone_s* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 128, i32 8, i1 false), !tbaa.struct !43
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 1
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !45
  %rc = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %ht, i32 0, i32 1
  %memory1 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 1
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %memory1, align 8, !tbaa !60
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 @gs_sethalftone_allocated(%struct.gs_state_s* %6, %struct.gs_halftone_s* %ht) #4
  %7 = bitcast %struct.gs_halftone_s* %ht to i8*
  call void @llvm.lifetime.end(i64 128, i8* %7) #1
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @gs_currentcolorscreen(%struct.gs_state_s* %pgs, %struct.gs_colorscreen_halftone_s* %pht) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pht.addr = alloca %struct.gs_colorscreen_halftone_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_colorscreen_halftone_s* %pht, %struct.gs_colorscreen_halftone_s** %pht.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %halftone = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 39
  %2 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %halftone, align 8, !tbaa !61
  %type = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %2, i32 0, i32 0
  %3 = load i32, i32* %type, align 4, !tbaa !36
  switch i32 %3, label %sw.default [
    i32 2, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct.gs_colorscreen_halftone_s*, %struct.gs_colorscreen_halftone_s** %pht.addr, align 8, !tbaa !1
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %halftone1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %5, i32 0, i32 39
  %6 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %halftone1, align 8, !tbaa !61
  %params = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %6, i32 0, i32 2
  %colorscreen = bitcast %union.anon.1* %params to %struct.gs_colorscreen_halftone_s*
  %7 = bitcast %struct.gs_colorscreen_halftone_s* %4 to i8*
  %8 = bitcast %struct.gs_colorscreen_halftone_s* %colorscreen to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 96, i32 8, i1 false), !tbaa.struct !40
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %entry
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %10 = load %struct.gs_colorscreen_halftone_s*, %struct.gs_colorscreen_halftone_s** %pht.addr, align 8, !tbaa !1
  %screens = getelementptr inbounds %struct.gs_colorscreen_halftone_s, %struct.gs_colorscreen_halftone_s* %10, i32 0, i32 0
  %colored = bitcast %union._css* %screens to %struct._csc*
  %gray = getelementptr inbounds %struct._csc, %struct._csc* %colored, i32 0, i32 3
  %call = call i32 @gs_currentscreen(%struct.gs_state_s* %9, %struct.gs_screen_halftone_s* %gray) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %11 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.default
  %12 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %sw.default
  %13 = load %struct.gs_colorscreen_halftone_s*, %struct.gs_colorscreen_halftone_s** %pht.addr, align 8, !tbaa !1
  %screens2 = getelementptr inbounds %struct.gs_colorscreen_halftone_s, %struct.gs_colorscreen_halftone_s* %13, i32 0, i32 0
  %colored3 = bitcast %union._css* %screens2 to %struct._csc*
  %red = getelementptr inbounds %struct._csc, %struct._csc* %colored3, i32 0, i32 0
  %14 = load %struct.gs_colorscreen_halftone_s*, %struct.gs_colorscreen_halftone_s** %pht.addr, align 8, !tbaa !1
  %screens4 = getelementptr inbounds %struct.gs_colorscreen_halftone_s, %struct.gs_colorscreen_halftone_s* %14, i32 0, i32 0
  %colored5 = bitcast %union._css* %screens4 to %struct._csc*
  %gray6 = getelementptr inbounds %struct._csc, %struct._csc* %colored5, i32 0, i32 3
  %15 = bitcast %struct.gs_screen_halftone_s* %red to i8*
  %16 = bitcast %struct.gs_screen_halftone_s* %gray6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 24, i32 8, i1 false), !tbaa.struct !62
  %17 = load %struct.gs_colorscreen_halftone_s*, %struct.gs_colorscreen_halftone_s** %pht.addr, align 8, !tbaa !1
  %screens7 = getelementptr inbounds %struct.gs_colorscreen_halftone_s, %struct.gs_colorscreen_halftone_s* %17, i32 0, i32 0
  %colored8 = bitcast %union._css* %screens7 to %struct._csc*
  %green = getelementptr inbounds %struct._csc, %struct._csc* %colored8, i32 0, i32 1
  %18 = load %struct.gs_colorscreen_halftone_s*, %struct.gs_colorscreen_halftone_s** %pht.addr, align 8, !tbaa !1
  %screens9 = getelementptr inbounds %struct.gs_colorscreen_halftone_s, %struct.gs_colorscreen_halftone_s* %18, i32 0, i32 0
  %colored10 = bitcast %union._css* %screens9 to %struct._csc*
  %gray11 = getelementptr inbounds %struct._csc, %struct._csc* %colored10, i32 0, i32 3
  %19 = bitcast %struct.gs_screen_halftone_s* %green to i8*
  %20 = bitcast %struct.gs_screen_halftone_s* %gray11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 24, i32 8, i1 false), !tbaa.struct !62
  %21 = load %struct.gs_colorscreen_halftone_s*, %struct.gs_colorscreen_halftone_s** %pht.addr, align 8, !tbaa !1
  %screens12 = getelementptr inbounds %struct.gs_colorscreen_halftone_s, %struct.gs_colorscreen_halftone_s* %21, i32 0, i32 0
  %colored13 = bitcast %union._css* %screens12 to %struct._csc*
  %blue = getelementptr inbounds %struct._csc, %struct._csc* %colored13, i32 0, i32 2
  %22 = load %struct.gs_colorscreen_halftone_s*, %struct.gs_colorscreen_halftone_s** %pht.addr, align 8, !tbaa !1
  %screens14 = getelementptr inbounds %struct.gs_colorscreen_halftone_s, %struct.gs_colorscreen_halftone_s* %22, i32 0, i32 0
  %colored15 = bitcast %union._css* %screens14 to %struct._csc*
  %gray16 = getelementptr inbounds %struct._csc, %struct._csc* %colored15, i32 0, i32 3
  %23 = bitcast %struct.gs_screen_halftone_s* %blue to i8*
  %24 = bitcast %struct.gs_screen_halftone_s* %gray16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 24, i32 8, i1 false), !tbaa.struct !62
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then, %sw.bb
  %25 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = load i32, i32* %retval
  ret i32 %26
}

declare i32 @gs_currentscreen(%struct.gs_state_s*, %struct.gs_screen_halftone_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gs_sethalftone_allocated(%struct.gs_state_s* %pgs, %struct.gs_halftone_s* %pht) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pht.addr = alloca %struct.gs_halftone_s*, align 8
  %dev_ht = alloca %struct.gx_device_halftone_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_halftone_s* %pht, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_halftone_s* %dev_ht to i8*
  call void @llvm.lifetime.start(i64 224, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %3 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  %call = call i32 @gs_sethalftone_prepare(%struct.gs_state_s* %2, %struct.gs_halftone_s* %3, %struct.gx_device_halftone_s* %dev_ht) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %4 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %6, i32 0, i32 1
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 1
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !60
  %rc1 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %dev_ht, i32 0, i32 1
  %memory2 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc1, i32 0, i32 1
  store %struct.gs_memory_s* %7, %struct.gs_memory_s** %memory2, align 8, !tbaa !63
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %9 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  %call3 = call i32 @gx_ht_install(%struct.gs_state_s* %8, %struct.gs_halftone_s* %9, %struct.gx_device_halftone_s* %dev_ht) #4
  store i32 %call3, i32* %code, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %10 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  %rc6 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %10, i32 0, i32 1
  %memory7 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc6, i32 0, i32 1
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory7, align 8, !tbaa !60
  call void @gx_device_halftone_release(%struct.gx_device_halftone_s* %dev_ht, %struct.gs_memory_s* %11) #4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %12 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.8, %if.then
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = bitcast %struct.gx_device_halftone_s* %dev_ht to i8*
  call void @llvm.lifetime.end(i64 224, i8* %14) #1
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @gs_sethalftone_prepare(%struct.gs_state_s* %pgs, %struct.gs_halftone_s* %pht, %struct.gx_device_halftone_s* %pdht) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pht.addr = alloca %struct.gs_halftone_s*, align 8
  %pdht.addr = alloca %struct.gx_device_halftone_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %pocs = alloca %struct.gx_ht_order_component_s*, align 8
  %code = alloca i32, align 4
  %phc = alloca %struct.gs_screen_halftone_s*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %senum = alloca %struct.gs_screen_enum_s, align 8
  %ci = alloca i32, align 4
  %poc = alloca %struct.gx_ht_order_component_s*, align 8
  %count = alloca i32, align 4
  %have_Default = alloca i32, align 4
  %i73 = alloca i32, align 4
  %phc74 = alloca %struct.gs_halftone_component_s*, align 8
  %poc_next = alloca %struct.gx_ht_order_component_s*, align 8
  %poc89 = alloca %struct.gx_ht_order_component_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_halftone_s* %pht, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  store %struct.gx_device_halftone_s* %pdht, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %1, i32 0, i32 1
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 1
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !60
  store %struct.gs_memory_s* %2, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %3 = bitcast %struct.gx_ht_order_component_s** %pocs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store %struct.gx_ht_order_component_s* null, %struct.gx_ht_order_component_s** %pocs, align 8, !tbaa !1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %5 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %5, i32 0, i32 0
  %6 = load i32, i32* %type, align 4, !tbaa !36
  switch i32 %6, label %sw.default.163 [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.34
    i32 4, label %sw.bb.43
    i32 5, label %sw.bb.52
    i32 8, label %sw.bb.61
    i32 6, label %sw.bb.70
    i32 7, label %sw.bb.70
  ]

sw.bb:                                            ; preds = %entry
  %7 = bitcast %struct.gs_screen_halftone_s** %phc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %8, i32 0, i32 2
  %colorscreen = bitcast %union.anon.1* %params to %struct.gs_colorscreen_halftone_s*
  %screens = getelementptr inbounds %struct.gs_colorscreen_halftone_s, %struct.gs_colorscreen_halftone_s* %colorscreen, i32 0, i32 0
  %indexed = bitcast %union._css* %screens to [4 x %struct.gs_screen_halftone_s]*
  %arraydecay = getelementptr inbounds [4 x %struct.gs_screen_halftone_s], [4 x %struct.gs_screen_halftone_s]* %indexed, i32 0, i32 0
  store %struct.gs_screen_halftone_s* %arraydecay, %struct.gs_screen_halftone_s** %phc, align 8, !tbaa !1
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %10, i32 0, i32 1
  %alloc_struct_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 12
  %11 = load i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct_array, align 8, !tbaa !68
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call = call i8* %11(%struct.gs_memory_s* %12, i32 4, %struct.gs_memory_struct_type_s* @st_ht_order_component_element, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0)) #4
  %13 = bitcast i8* %call to %struct.gx_ht_order_component_s*
  store %struct.gx_ht_order_component_s* %13, %struct.gx_ht_order_component_s** %pocs, align 8, !tbaa !1
  %14 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %pocs, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_ht_order_component_s* %14, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.30

if.end:                                           ; preds = %sw.bb
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %15 = load i32, i32* %i, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %15, 4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = bitcast %struct.gs_screen_enum_s* %senum to i8*
  call void @llvm.lifetime.start(i64 360, i8* %16) #1
  %17 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %18 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* @gs_sethalftone_prepare.cindex, i32 0, i64 %idxprom
  %19 = load i32, i32* %arrayidx, align 4, !tbaa !5
  store i32 %19, i32* %ci, align 4, !tbaa !5
  %20 = bitcast %struct.gx_ht_order_component_s** %poc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom2 = sext i32 %21 to i64
  %22 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %pocs, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %22, i64 %idxprom2
  store %struct.gx_ht_order_component_s* %arrayidx3, %struct.gx_ht_order_component_s** %poc, align 8, !tbaa !1
  %23 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %24 = load i32, i32* %ci, align 4, !tbaa !5
  %idxprom4 = sext i32 %24 to i64
  %25 = load %struct.gs_screen_halftone_s*, %struct.gs_screen_halftone_s** %phc, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds %struct.gs_screen_halftone_s, %struct.gs_screen_halftone_s* %25, i64 %idxprom4
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call6 = call i32 @gs_currentaccuratescreens(%struct.gs_memory_s* %26) #4
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call7 = call i32 @gx_ht_process_screen_memory(%struct.gs_screen_enum_s* %senum, %struct.gs_state_s* %23, %struct.gs_screen_halftone_s* %arrayidx5, i32 %call6, %struct.gs_memory_s* %27) #4
  store i32 %call7, i32* %code, align 4, !tbaa !5
  %28 = load i32, i32* %code, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %28, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %for.body
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %for.body
  %29 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %poc, align 8, !tbaa !1
  %corder = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %29, i32 0, i32 0
  %order = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %senum, i32 0, i32 1
  %30 = bitcast %struct.gx_ht_order_s* %corder to i8*
  %31 = bitcast %struct.gx_ht_order_s* %order to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 160, i32 8, i1 false), !tbaa.struct !71
  %32 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %32, i32 0, i32 78
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !73
  %34 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %34 to i64
  %arrayidx12 = getelementptr inbounds [4 x i8*], [4 x i8*]* @gs_sethalftone_prepare.color_names, i32 0, i64 %idxprom11
  %35 = load i8*, i8** %arrayidx12, align 8, !tbaa !1
  %36 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom13 = sext i32 %36 to i64
  %arrayidx14 = getelementptr inbounds [4 x i8*], [4 x i8*]* @gs_sethalftone_prepare.color_names, i32 0, i64 %idxprom13
  %37 = load i8*, i8** %arrayidx14, align 8, !tbaa !1
  %call15 = call i64 @strlen(i8* %37) #5
  %conv = trunc i64 %call15 to i32
  %38 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  %type16 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %38, i32 0, i32 0
  %39 = load i32, i32* %type16, align 4, !tbaa !36
  %call17 = call i32 @gs_color_name_component_number(%struct.gx_device_s* %33, i8* %35, i32 %conv, i32 %39) #4
  %40 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %poc, align 8, !tbaa !1
  %comp_number = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %40, i32 0, i32 1
  store i32 %call17, i32* %comp_number, align 4, !tbaa !74
  %41 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %poc, align 8, !tbaa !1
  %cname = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %41, i32 0, i32 2
  store i32 0, i32* %cname, align 4, !tbaa !76
  %42 = load i32, i32* %i, align 4, !tbaa !5
  %cmp18 = icmp eq i32 %42, 0
  br i1 %cmp18, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.end.10
  %43 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %order21 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %43, i32 0, i32 0
  %44 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %poc, align 8, !tbaa !1
  %corder22 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %44, i32 0, i32 0
  %45 = bitcast %struct.gx_ht_order_s* %order21 to i8*
  %46 = bitcast %struct.gx_ht_order_s* %corder22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 160, i32 8, i1 false), !tbaa.struct !71
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %if.end.10
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.23, %if.then.9
  %47 = bitcast %struct.gx_ht_order_component_s** %poc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast %struct.gs_screen_enum_s* %senum to i8*
  call void @llvm.lifetime.end(i64 360, i8* %49) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %50 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %50, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %cleanup, %for.cond
  %51 = load i32, i32* %code, align 4, !tbaa !5
  %cmp26 = icmp slt i32 %51, 0
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %for.end
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.30

if.end.29:                                        ; preds = %for.end
  %52 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %pocs, align 8, !tbaa !1
  %53 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %components = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %53, i32 0, i32 4
  store %struct.gx_ht_order_component_s* %52, %struct.gx_ht_order_component_s** %components, align 8, !tbaa !77
  %54 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %num_comp = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %54, i32 0, i32 5
  store i32 4, i32* %num_comp, align 4, !tbaa !78
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.30

cleanup.30:                                       ; preds = %if.end.29, %if.then.28, %if.then
  %55 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  %56 = bitcast %struct.gs_screen_halftone_s** %phc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  %cleanup.dest.32 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.32, label %cleanup.171 [
    i32 0, label %cleanup.cont.33
    i32 2, label %sw.epilog.164
  ]

cleanup.cont.33:                                  ; preds = %cleanup.30
  br label %sw.epilog.164

sw.bb.34:                                         ; preds = %entry
  %57 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %order35 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %57, i32 0, i32 0
  %58 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %59 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  %params36 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %59, i32 0, i32 2
  %spot = bitcast %union.anon.1* %params36 to %struct.gs_spot_halftone_s*
  %60 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call37 = call i32 @process_spot(%struct.gx_ht_order_s* %order35, %struct.gs_state_s* %58, %struct.gs_spot_halftone_s* %spot, %struct.gs_memory_s* %60) #4
  store i32 %call37, i32* %code, align 4, !tbaa !5
  %61 = load i32, i32* %code, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %61, 0
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %sw.bb.34
  %62 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %62, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.171

if.end.41:                                        ; preds = %sw.bb.34
  %63 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %components42 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %63, i32 0, i32 4
  store %struct.gx_ht_order_component_s* null, %struct.gx_ht_order_component_s** %components42, align 8, !tbaa !77
  br label %sw.epilog.164

sw.bb.43:                                         ; preds = %entry
  %64 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %order44 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %64, i32 0, i32 0
  %65 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %66 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  %params45 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %66, i32 0, i32 2
  %threshold = bitcast %union.anon.1* %params45 to %struct.gs_threshold_halftone_s*
  %67 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call46 = call i32 @process_threshold(%struct.gx_ht_order_s* %order44, %struct.gs_state_s* %65, %struct.gs_threshold_halftone_s* %threshold, %struct.gs_memory_s* %67) #4
  store i32 %call46, i32* %code, align 4, !tbaa !5
  %68 = load i32, i32* %code, align 4, !tbaa !5
  %cmp47 = icmp slt i32 %68, 0
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %sw.bb.43
  %69 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %69, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.171

if.end.50:                                        ; preds = %sw.bb.43
  %70 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %components51 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %70, i32 0, i32 4
  store %struct.gx_ht_order_component_s* null, %struct.gx_ht_order_component_s** %components51, align 8, !tbaa !77
  br label %sw.epilog.164

sw.bb.52:                                         ; preds = %entry
  %71 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %order53 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %71, i32 0, i32 0
  %72 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %73 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  %params54 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %73, i32 0, i32 2
  %threshold2 = bitcast %union.anon.1* %params54 to %struct.gs_threshold2_halftone_s*
  %74 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call55 = call i32 @process_threshold2(%struct.gx_ht_order_s* %order53, %struct.gs_state_s* %72, %struct.gs_threshold2_halftone_s* %threshold2, %struct.gs_memory_s* %74) #4
  store i32 %call55, i32* %code, align 4, !tbaa !5
  %75 = load i32, i32* %code, align 4, !tbaa !5
  %cmp56 = icmp slt i32 %75, 0
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %sw.bb.52
  %76 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %76, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.171

if.end.59:                                        ; preds = %sw.bb.52
  %77 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %components60 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %77, i32 0, i32 4
  store %struct.gx_ht_order_component_s* null, %struct.gx_ht_order_component_s** %components60, align 8, !tbaa !77
  br label %sw.epilog.164

sw.bb.61:                                         ; preds = %entry
  %78 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %order62 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %78, i32 0, i32 0
  %79 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %80 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  %params63 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %80, i32 0, i32 2
  %client_order = bitcast %union.anon.1* %params63 to %struct.gs_client_order_halftone_s*
  %81 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call64 = call i32 @process_client_order(%struct.gx_ht_order_s* %order62, %struct.gs_state_s* %79, %struct.gs_client_order_halftone_s* %client_order, %struct.gs_memory_s* %81) #4
  store i32 %call64, i32* %code, align 4, !tbaa !5
  %82 = load i32, i32* %code, align 4, !tbaa !5
  %cmp65 = icmp slt i32 %82, 0
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %sw.bb.61
  %83 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %83, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.171

if.end.68:                                        ; preds = %sw.bb.61
  %84 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %components69 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %84, i32 0, i32 4
  store %struct.gx_ht_order_component_s* null, %struct.gx_ht_order_component_s** %components69, align 8, !tbaa !77
  br label %sw.epilog.164

sw.bb.70:                                         ; preds = %entry, %entry
  %85 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %85) #1
  %86 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  %params71 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %86, i32 0, i32 2
  %multiple = bitcast %union.anon.1* %params71 to %struct.gs_multiple_halftone_s*
  %num_comp72 = getelementptr inbounds %struct.gs_multiple_halftone_s, %struct.gs_multiple_halftone_s* %multiple, i32 0, i32 1
  %87 = load i32, i32* %num_comp72, align 4, !tbaa !79
  store i32 %87, i32* %count, align 4, !tbaa !5
  %88 = bitcast i32* %have_Default to i8*
  call void @llvm.lifetime.start(i64 4, i8* %88) #1
  store i32 0, i32* %have_Default, align 4, !tbaa !5
  %89 = bitcast i32* %i73 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %89) #1
  %90 = bitcast %struct.gs_halftone_component_s** %phc74 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %90) #1
  %91 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht.addr, align 8, !tbaa !1
  %params75 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %91, i32 0, i32 2
  %multiple76 = bitcast %union.anon.1* %params75 to %struct.gs_multiple_halftone_s*
  %components77 = getelementptr inbounds %struct.gs_multiple_halftone_s, %struct.gs_multiple_halftone_s* %multiple76, i32 0, i32 0
  %92 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %components77, align 8, !tbaa !81
  store %struct.gs_halftone_component_s* %92, %struct.gs_halftone_component_s** %phc74, align 8, !tbaa !1
  %93 = bitcast %struct.gx_ht_order_component_s** %poc_next to i8*
  call void @llvm.lifetime.start(i64 8, i8* %93) #1
  %94 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs78 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %94, i32 0, i32 1
  %alloc_struct_array79 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs78, i32 0, i32 12
  %95 = load i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct_array79, align 8, !tbaa !68
  %96 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %97 = load i32, i32* %count, align 4, !tbaa !5
  %call80 = call i8* %95(%struct.gs_memory_s* %96, i32 %97, %struct.gs_memory_struct_type_s* @st_ht_order_component_element, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0)) #4
  %98 = bitcast i8* %call80 to %struct.gx_ht_order_component_s*
  store %struct.gx_ht_order_component_s* %98, %struct.gx_ht_order_component_s** %pocs, align 8, !tbaa !1
  %99 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %pocs, align 8, !tbaa !1
  %cmp81 = icmp eq %struct.gx_ht_order_component_s* %99, null
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %sw.bb.70
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.156

if.end.84:                                        ; preds = %sw.bb.70
  %100 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %pocs, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %100, i64 1
  store %struct.gx_ht_order_component_s* %add.ptr, %struct.gx_ht_order_component_s** %poc_next, align 8, !tbaa !1
  store i32 0, i32* %i73, align 4, !tbaa !5
  br label %for.cond.85

for.cond.85:                                      ; preds = %for.inc.135, %if.end.84
  %101 = load i32, i32* %i73, align 4, !tbaa !5
  %102 = load i32, i32* %count, align 4, !tbaa !5
  %cmp86 = icmp ult i32 %101, %102
  br i1 %cmp86, label %for.body.88, label %for.end.138

for.body.88:                                      ; preds = %for.cond.85
  %103 = bitcast %struct.gx_ht_order_component_s** %poc89 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %103) #1
  %104 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %poc_next, align 8, !tbaa !1
  store %struct.gx_ht_order_component_s* %104, %struct.gx_ht_order_component_s** %poc89, align 8, !tbaa !1
  %105 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phc74, align 8, !tbaa !1
  %comp_number90 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %105, i32 0, i32 0
  %106 = load i32, i32* %comp_number90, align 4, !tbaa !82
  %cmp91 = icmp eq i32 %106, 64
  br i1 %cmp91, label %if.then.93, label %if.else

if.then.93:                                       ; preds = %for.body.88
  %107 = load i32, i32* %have_Default, align 4, !tbaa !5
  %tobool = icmp ne i32 %107, 0
  br i1 %tobool, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %if.then.93
  store i32 -15, i32* %code, align 4, !tbaa !5
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.132

if.end.95:                                        ; preds = %if.then.93
  %108 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %pocs, align 8, !tbaa !1
  store %struct.gx_ht_order_component_s* %108, %struct.gx_ht_order_component_s** %poc89, align 8, !tbaa !1
  store i32 1, i32* %have_Default, align 4, !tbaa !5
  br label %if.end.102

if.else:                                          ; preds = %for.body.88
  %109 = load i32, i32* %i73, align 4, !tbaa !5
  %110 = load i32, i32* %count, align 4, !tbaa !5
  %sub = sub i32 %110, 1
  %cmp96 = icmp eq i32 %109, %sub
  br i1 %cmp96, label %land.lhs.true, label %if.else.100

land.lhs.true:                                    ; preds = %if.else
  %111 = load i32, i32* %have_Default, align 4, !tbaa !5
  %tobool98 = icmp ne i32 %111, 0
  br i1 %tobool98, label %if.else.100, label %if.then.99

if.then.99:                                       ; preds = %land.lhs.true
  store i32 -15, i32* %code, align 4, !tbaa !5
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.132

if.else.100:                                      ; preds = %land.lhs.true, %if.else
  %112 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %poc_next, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %112, i32 1
  store %struct.gx_ht_order_component_s* %incdec.ptr, %struct.gx_ht_order_component_s** %poc_next, align 8, !tbaa !1
  store %struct.gx_ht_order_component_s* %112, %struct.gx_ht_order_component_s** %poc89, align 8, !tbaa !1
  br label %if.end.101

if.end.101:                                       ; preds = %if.else.100
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %if.end.95
  %113 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phc74, align 8, !tbaa !1
  %comp_number103 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %113, i32 0, i32 0
  %114 = load i32, i32* %comp_number103, align 4, !tbaa !82
  %115 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %poc89, align 8, !tbaa !1
  %comp_number104 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %115, i32 0, i32 1
  store i32 %114, i32* %comp_number104, align 4, !tbaa !74
  %116 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phc74, align 8, !tbaa !1
  %cname105 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %116, i32 0, i32 1
  %117 = load i32, i32* %cname105, align 4, !tbaa !83
  %118 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %poc89, align 8, !tbaa !1
  %cname106 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %118, i32 0, i32 2
  store i32 %117, i32* %cname106, align 4, !tbaa !76
  %119 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phc74, align 8, !tbaa !1
  %type107 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %119, i32 0, i32 2
  %120 = load i32, i32* %type107, align 4, !tbaa !7
  switch i32 %120, label %sw.default [
    i32 3, label %sw.bb.108
    i32 4, label %sw.bb.113
    i32 5, label %sw.bb.118
    i32 8, label %sw.bb.123
  ]

sw.bb.108:                                        ; preds = %if.end.102
  %121 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %poc89, align 8, !tbaa !1
  %corder109 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %121, i32 0, i32 0
  %122 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %123 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phc74, align 8, !tbaa !1
  %params110 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %123, i32 0, i32 3
  %spot111 = bitcast %union.anon.2* %params110 to %struct.gs_spot_halftone_s*
  %124 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call112 = call i32 @process_spot(%struct.gx_ht_order_s* %corder109, %struct.gs_state_s* %122, %struct.gs_spot_halftone_s* %spot111, %struct.gs_memory_s* %124) #4
  store i32 %call112, i32* %code, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.113:                                        ; preds = %if.end.102
  %125 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %poc89, align 8, !tbaa !1
  %corder114 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %125, i32 0, i32 0
  %126 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %127 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phc74, align 8, !tbaa !1
  %params115 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %127, i32 0, i32 3
  %threshold116 = bitcast %union.anon.2* %params115 to %struct.gs_threshold_halftone_s*
  %128 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call117 = call i32 @process_threshold(%struct.gx_ht_order_s* %corder114, %struct.gs_state_s* %126, %struct.gs_threshold_halftone_s* %threshold116, %struct.gs_memory_s* %128) #4
  store i32 %call117, i32* %code, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.118:                                        ; preds = %if.end.102
  %129 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %poc89, align 8, !tbaa !1
  %corder119 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %129, i32 0, i32 0
  %130 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %131 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phc74, align 8, !tbaa !1
  %params120 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %131, i32 0, i32 3
  %threshold2121 = bitcast %union.anon.2* %params120 to %struct.gs_threshold2_halftone_s*
  %132 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call122 = call i32 @process_threshold2(%struct.gx_ht_order_s* %corder119, %struct.gs_state_s* %130, %struct.gs_threshold2_halftone_s* %threshold2121, %struct.gs_memory_s* %132) #4
  store i32 %call122, i32* %code, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.123:                                        ; preds = %if.end.102
  %133 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %poc89, align 8, !tbaa !1
  %corder124 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %133, i32 0, i32 0
  %134 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %135 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phc74, align 8, !tbaa !1
  %params125 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %135, i32 0, i32 3
  %client_order126 = bitcast %union.anon.2* %params125 to %struct.gs_client_order_halftone_s*
  %136 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call127 = call i32 @process_client_order(%struct.gx_ht_order_s* %corder124, %struct.gs_state_s* %134, %struct.gs_client_order_halftone_s* %client_order126, %struct.gs_memory_s* %136) #4
  store i32 %call127, i32* %code, align 4, !tbaa !5
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.102
  store i32 -15, i32* %code, align 4, !tbaa !5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.123, %sw.bb.118, %sw.bb.113, %sw.bb.108
  %137 = load i32, i32* %code, align 4, !tbaa !5
  %cmp128 = icmp slt i32 %137, 0
  br i1 %cmp128, label %if.then.130, label %if.end.131

if.then.130:                                      ; preds = %sw.epilog
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.132

if.end.131:                                       ; preds = %sw.epilog
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.132

cleanup.132:                                      ; preds = %if.end.131, %if.then.130, %if.then.99, %if.then.94
  %138 = bitcast %struct.gx_ht_order_component_s** %poc89 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %138) #1
  %cleanup.dest.133 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.133, label %unreachable [
    i32 0, label %cleanup.cont.134
    i32 6, label %for.end.138
  ]

cleanup.cont.134:                                 ; preds = %cleanup.132
  br label %for.inc.135

for.inc.135:                                      ; preds = %cleanup.cont.134
  %139 = load i32, i32* %i73, align 4, !tbaa !5
  %inc136 = add i32 %139, 1
  store i32 %inc136, i32* %i73, align 4, !tbaa !5
  %140 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phc74, align 8, !tbaa !1
  %incdec.ptr137 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %140, i32 1
  store %struct.gs_halftone_component_s* %incdec.ptr137, %struct.gs_halftone_component_s** %phc74, align 8, !tbaa !1
  br label %for.cond.85

for.end.138:                                      ; preds = %cleanup.132, %for.cond.85
  %141 = load i32, i32* %code, align 4, !tbaa !5
  %cmp139 = icmp slt i32 %141, 0
  br i1 %cmp139, label %if.then.141, label %if.end.142

if.then.141:                                      ; preds = %for.end.138
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.156

if.end.142:                                       ; preds = %for.end.138
  %142 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %order143 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %142, i32 0, i32 0
  %143 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %pocs, align 8, !tbaa !1
  %arrayidx144 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %143, i64 0
  %corder145 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx144, i32 0, i32 0
  %144 = bitcast %struct.gx_ht_order_s* %order143 to i8*
  %145 = bitcast %struct.gx_ht_order_s* %corder145 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %144, i8* %145, i64 160, i32 8, i1 false), !tbaa.struct !71
  %146 = load i32, i32* %count, align 4, !tbaa !5
  %cmp146 = icmp eq i32 %146, 1
  br i1 %cmp146, label %if.then.148, label %if.else.152

if.then.148:                                      ; preds = %if.end.142
  %147 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs149 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %147, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs149, i32 0, i32 2
  %148 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !84
  %149 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %150 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %pocs, align 8, !tbaa !1
  %151 = bitcast %struct.gx_ht_order_component_s* %150 to i8*
  call void %148(%struct.gs_memory_s* %149, i8* %151, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0)) #4
  %152 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %components150 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %152, i32 0, i32 4
  store %struct.gx_ht_order_component_s* null, %struct.gx_ht_order_component_s** %components150, align 8, !tbaa !77
  %153 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %num_comp151 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %153, i32 0, i32 5
  store i32 0, i32* %num_comp151, align 4, !tbaa !78
  br label %if.end.155

if.else.152:                                      ; preds = %if.end.142
  %154 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %pocs, align 8, !tbaa !1
  %155 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %components153 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %155, i32 0, i32 4
  store %struct.gx_ht_order_component_s* %154, %struct.gx_ht_order_component_s** %components153, align 8, !tbaa !77
  %156 = load i32, i32* %count, align 4, !tbaa !5
  %157 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %num_comp154 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %157, i32 0, i32 5
  store i32 %156, i32* %num_comp154, align 4, !tbaa !78
  br label %if.end.155

if.end.155:                                       ; preds = %if.else.152, %if.then.148
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.156

cleanup.156:                                      ; preds = %if.end.155, %if.then.141, %if.then.83
  %158 = bitcast %struct.gx_ht_order_component_s** %poc_next to i8*
  call void @llvm.lifetime.end(i64 8, i8* %158) #1
  %159 = bitcast %struct.gs_halftone_component_s** %phc74 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %159) #1
  %160 = bitcast i32* %i73 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %160) #1
  %161 = bitcast i32* %have_Default to i8*
  call void @llvm.lifetime.end(i64 4, i8* %161) #1
  %162 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %162) #1
  %cleanup.dest.161 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.161, label %cleanup.171 [
    i32 0, label %cleanup.cont.162
    i32 2, label %sw.epilog.164
  ]

cleanup.cont.162:                                 ; preds = %cleanup.156
  br label %sw.epilog.164

sw.default.163:                                   ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.171

sw.epilog.164:                                    ; preds = %cleanup.cont.162, %cleanup.156, %if.end.68, %if.end.59, %if.end.50, %if.end.41, %cleanup.cont.33, %cleanup.30
  %163 = load i32, i32* %code, align 4, !tbaa !5
  %cmp165 = icmp slt i32 %163, 0
  br i1 %cmp165, label %if.then.167, label %if.end.170

if.then.167:                                      ; preds = %sw.epilog.164
  %164 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs168 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %164, i32 0, i32 1
  %free_object169 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs168, i32 0, i32 2
  %165 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object169, align 8, !tbaa !84
  %166 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %167 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %pocs, align 8, !tbaa !1
  %168 = bitcast %struct.gx_ht_order_component_s* %167 to i8*
  call void %165(%struct.gs_memory_s* %166, i8* %168, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0)) #4
  br label %if.end.170

if.end.170:                                       ; preds = %if.then.167, %sw.epilog.164
  %169 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %169, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.171

cleanup.171:                                      ; preds = %if.end.170, %sw.default.163, %cleanup.156, %if.then.67, %if.then.58, %if.then.49, %if.then.40, %cleanup.30
  %170 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %170) #1
  %171 = bitcast %struct.gx_ht_order_component_s** %pocs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %171) #1
  %172 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %172) #1
  %173 = load i32, i32* %retval
  ret i32 %173

unreachable:                                      ; preds = %cleanup.132, %cleanup
  unreachable
}

declare i32 @gx_ht_install(%struct.gs_state_s*, %struct.gs_halftone_s*, %struct.gx_device_halftone_s*) #2

declare void @gx_device_halftone_release(%struct.gx_device_halftone_s*, %struct.gs_memory_s*) #2

declare i32 @gx_ht_process_screen_memory(%struct.gs_screen_enum_s*, %struct.gs_state_s*, %struct.gs_screen_halftone_s*, i32, %struct.gs_memory_s*) #2

declare i32 @gs_currentaccuratescreens(%struct.gs_memory_s*) #2

declare i32 @gs_color_name_component_number(%struct.gx_device_s*, i8*, i32, i32) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @process_spot(%struct.gx_ht_order_s* %porder, %struct.gs_state_s* %pgs, %struct.gs_spot_halftone_s* %phsp, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %porder.addr = alloca %struct.gx_ht_order_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %phsp.addr = alloca %struct.gs_spot_halftone_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %senum = alloca %struct.gs_screen_enum_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_ht_order_s* %porder, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_spot_halftone_s* %phsp, %struct.gs_spot_halftone_s** %phsp.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_screen_enum_s* %senum to i8*
  call void @llvm.lifetime.start(i64 360, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %3 = load %struct.gs_spot_halftone_s*, %struct.gs_spot_halftone_s** %phsp.addr, align 8, !tbaa !1
  %screen = getelementptr inbounds %struct.gs_spot_halftone_s, %struct.gs_spot_halftone_s* %3, i32 0, i32 0
  %4 = load %struct.gs_spot_halftone_s*, %struct.gs_spot_halftone_s** %phsp.addr, align 8, !tbaa !1
  %accurate_screens = getelementptr inbounds %struct.gs_spot_halftone_s, %struct.gs_spot_halftone_s* %4, i32 0, i32 1
  %5 = load i32, i32* %accurate_screens, align 4, !tbaa !85
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i32 @gx_ht_process_screen_memory(%struct.gs_screen_enum_s* %senum, %struct.gs_state_s* %2, %struct.gs_screen_halftone_s* %screen, i32 %5, %struct.gs_memory_s* %6) #4
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
  %9 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %order = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %senum, i32 0, i32 1
  %10 = bitcast %struct.gx_ht_order_s* %9 to i8*
  %11 = bitcast %struct.gx_ht_order_s* %order to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 160, i32 8, i1 false), !tbaa.struct !71
  %12 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %14 = load %struct.gs_spot_halftone_s*, %struct.gs_spot_halftone_s** %phsp.addr, align 8, !tbaa !1
  %transfer = getelementptr inbounds %struct.gs_spot_halftone_s, %struct.gs_spot_halftone_s* %14, i32 0, i32 2
  %15 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %transfer, align 8, !tbaa !9
  %16 = load %struct.gs_spot_halftone_s*, %struct.gs_spot_halftone_s** %phsp.addr, align 8, !tbaa !1
  %transfer_closure = getelementptr inbounds %struct.gs_spot_halftone_s, %struct.gs_spot_halftone_s* %16, i32 0, i32 3
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call1 = call i32 @process_transfer(%struct.gx_ht_order_s* %12, %struct.gs_state_s* %13, float (double, %struct.gx_transfer_map_s*)* %15, %struct.gs_mapping_closure_s* %transfer_closure, %struct.gs_memory_s* %17) #4
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %18 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %19 = bitcast %struct.gs_screen_enum_s* %senum to i8*
  call void @llvm.lifetime.end(i64 360, i8* %19) #1
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @process_threshold(%struct.gx_ht_order_s* %porder, %struct.gs_state_s* %pgs, %struct.gs_threshold_halftone_s* %phtp, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %porder.addr = alloca %struct.gx_ht_order_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %phtp.addr = alloca %struct.gs_threshold_halftone_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_ht_order_s* %porder, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_threshold_halftone_s* %phtp, %struct.gs_threshold_halftone_s** %phtp.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_threshold_halftone_s*, %struct.gs_threshold_halftone_s** %phtp.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gs_threshold_halftone_s, %struct.gs_threshold_halftone_s* %1, i32 0, i32 0
  %2 = load i32, i32* %width, align 4, !tbaa !86
  %conv = trunc i32 %2 to i16
  %3 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %3, i32 0, i32 0
  %M = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %params, i32 0, i32 0
  store i16 %conv, i16* %M, align 2, !tbaa !87
  %4 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %4, i32 0, i32 0
  %N = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %params1, i32 0, i32 1
  store i16 0, i16* %N, align 2, !tbaa !88
  %5 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %params2 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %5, i32 0, i32 0
  %R = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %params2, i32 0, i32 2
  store i16 1, i16* %R, align 2, !tbaa !89
  %6 = load %struct.gs_threshold_halftone_s*, %struct.gs_threshold_halftone_s** %phtp.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gs_threshold_halftone_s, %struct.gs_threshold_halftone_s* %6, i32 0, i32 1
  %7 = load i32, i32* %height, align 4, !tbaa !90
  %conv3 = trunc i32 %7 to i16
  %8 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %params4 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %8, i32 0, i32 0
  %M1 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %params4, i32 0, i32 3
  store i16 %conv3, i16* %M1, align 2, !tbaa !91
  %9 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %params5 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %9, i32 0, i32 0
  %N1 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %params5, i32 0, i32 4
  store i16 0, i16* %N1, align 2, !tbaa !92
  %10 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %params6 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %10, i32 0, i32 0
  %R1 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %params6, i32 0, i32 5
  store i16 1, i16* %R1, align 2, !tbaa !93
  %11 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %12 = load %struct.gs_threshold_halftone_s*, %struct.gs_threshold_halftone_s** %phtp.addr, align 8, !tbaa !1
  %width7 = getelementptr inbounds %struct.gs_threshold_halftone_s, %struct.gs_threshold_halftone_s* %12, i32 0, i32 0
  %13 = load i32, i32* %width7, align 4, !tbaa !86
  %14 = load %struct.gs_threshold_halftone_s*, %struct.gs_threshold_halftone_s** %phtp.addr, align 8, !tbaa !1
  %height8 = getelementptr inbounds %struct.gs_threshold_halftone_s, %struct.gs_threshold_halftone_s* %14, i32 0, i32 1
  %15 = load i32, i32* %height8, align 4, !tbaa !90
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i32 @gx_ht_alloc_threshold_order(%struct.gx_ht_order_s* %11, i32 %13, i32 %15, i32 256, %struct.gs_memory_s* %16) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %17 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %17, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %18 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %19 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %20 = load %struct.gs_threshold_halftone_s*, %struct.gs_threshold_halftone_s** %phtp.addr, align 8, !tbaa !1
  %thresholds = getelementptr inbounds %struct.gs_threshold_halftone_s, %struct.gs_threshold_halftone_s* %20, i32 0, i32 3
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %thresholds, i32 0, i32 0
  %21 = load i8*, i8** %data, align 8, !tbaa !94
  %call10 = call i32 @gx_ht_construct_threshold_order(%struct.gx_ht_order_s* %19, i8* %21) #4
  %22 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %23 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %24 = load %struct.gs_threshold_halftone_s*, %struct.gs_threshold_halftone_s** %phtp.addr, align 8, !tbaa !1
  %transfer = getelementptr inbounds %struct.gs_threshold_halftone_s, %struct.gs_threshold_halftone_s* %24, i32 0, i32 4
  %25 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %transfer, align 8, !tbaa !23
  %26 = load %struct.gs_threshold_halftone_s*, %struct.gs_threshold_halftone_s** %phtp.addr, align 8, !tbaa !1
  %transfer_closure = getelementptr inbounds %struct.gs_threshold_halftone_s, %struct.gs_threshold_halftone_s* %26, i32 0, i32 2
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call11 = call i32 @process_transfer(%struct.gx_ht_order_s* %22, %struct.gs_state_s* %23, float (double, %struct.gx_transfer_map_s*)* %25, %struct.gs_mapping_closure_s* %transfer_closure, %struct.gs_memory_s* %27) #4
  store i32 %call11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %28 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal i32 @process_threshold2(%struct.gx_ht_order_s* %porder, %struct.gs_state_s* %pgs, %struct.gs_threshold2_halftone_s* %phtp, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %porder.addr = alloca %struct.gx_ht_order_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %phtp.addr = alloca %struct.gs_threshold2_halftone_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %code = alloca i32, align 4
  %bps = alloca i32, align 4
  %data = alloca i8*, align 8
  %w1 = alloca i32, align 4
  %h1 = alloca i32, align 4
  %size1 = alloca i32, align 4
  %w2 = alloca i32, align 4
  %h2 = alloca i32, align 4
  %size2 = alloca i32, align 4
  %size = alloca i32, align 4
  %d = alloca i32, align 4
  %sod = alloca i32, align 4
  %num_levels = alloca i32, align 4
  %i = alloca i32, align 4
  %rshift = alloca i32, align 4
  %shift = alloca i32, align 4
  %mask = alloca i32, align 4
  %max_thr = alloca i32, align 4
  %thr = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %bits = alloca %struct.gx_ht_bit_s*, align 8
  %row = alloca i32, align 4
  %di = alloca i32, align 4
  %dx = alloca i32, align 4
  %sy = alloca i32, align 4
  %w = alloca i32, align 4
  %si = alloca i32, align 4
  %j = alloca i32, align 4
  %thr84 = alloca i32, align 4
  store %struct.gx_ht_order_s* %porder, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_threshold2_halftone_s* %phtp, %struct.gs_threshold2_halftone_s** %phtp.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %bps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_threshold2_halftone_s*, %struct.gs_threshold2_halftone_s** %phtp.addr, align 8, !tbaa !1
  %bytes_per_sample = getelementptr inbounds %struct.gs_threshold2_halftone_s, %struct.gs_threshold2_halftone_s* %2, i32 0, i32 5
  %3 = load i32, i32* %bytes_per_sample, align 4, !tbaa !95
  store i32 %3, i32* %bps, align 4, !tbaa !5
  %4 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_threshold2_halftone_s*, %struct.gs_threshold2_halftone_s** %phtp.addr, align 8, !tbaa !1
  %thresholds = getelementptr inbounds %struct.gs_threshold2_halftone_s, %struct.gs_threshold2_halftone_s* %5, i32 0, i32 6
  %data1 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %thresholds, i32 0, i32 0
  %6 = load i8*, i8** %data1, align 8, !tbaa !96
  store i8* %6, i8** %data, align 8, !tbaa !1
  %7 = bitcast i32* %w1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.gs_threshold2_halftone_s*, %struct.gs_threshold2_halftone_s** %phtp.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gs_threshold2_halftone_s, %struct.gs_threshold2_halftone_s* %8, i32 0, i32 0
  %9 = load i32, i32* %width, align 4, !tbaa !97
  store i32 %9, i32* %w1, align 4, !tbaa !5
  %10 = bitcast i32* %h1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.gs_threshold2_halftone_s*, %struct.gs_threshold2_halftone_s** %phtp.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gs_threshold2_halftone_s, %struct.gs_threshold2_halftone_s* %11, i32 0, i32 1
  %12 = load i32, i32* %height, align 4, !tbaa !98
  store i32 %12, i32* %h1, align 4, !tbaa !5
  %13 = bitcast i32* %size1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load i32, i32* %w1, align 4, !tbaa !5
  %15 = load i32, i32* %h1, align 4, !tbaa !5
  %mul = mul nsw i32 %14, %15
  store i32 %mul, i32* %size1, align 4, !tbaa !5
  %16 = bitcast i32* %w2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load %struct.gs_threshold2_halftone_s*, %struct.gs_threshold2_halftone_s** %phtp.addr, align 8, !tbaa !1
  %width2 = getelementptr inbounds %struct.gs_threshold2_halftone_s, %struct.gs_threshold2_halftone_s* %17, i32 0, i32 3
  %18 = load i32, i32* %width2, align 4, !tbaa !99
  store i32 %18, i32* %w2, align 4, !tbaa !5
  %19 = bitcast i32* %h2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = load %struct.gs_threshold2_halftone_s*, %struct.gs_threshold2_halftone_s** %phtp.addr, align 8, !tbaa !1
  %height2 = getelementptr inbounds %struct.gs_threshold2_halftone_s, %struct.gs_threshold2_halftone_s* %20, i32 0, i32 4
  %21 = load i32, i32* %height2, align 4, !tbaa !100
  store i32 %21, i32* %h2, align 4, !tbaa !5
  %22 = bitcast i32* %size2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = load i32, i32* %w2, align 4, !tbaa !5
  %24 = load i32, i32* %h2, align 4, !tbaa !5
  %mul2 = mul nsw i32 %23, %24
  store i32 %mul2, i32* %size2, align 4, !tbaa !5
  %25 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  %26 = load i32, i32* %size1, align 4, !tbaa !5
  %27 = load i32, i32* %size2, align 4, !tbaa !5
  %add = add nsw i32 %26, %27
  store i32 %add, i32* %size, align 4, !tbaa !5
  %28 = bitcast i32* %d to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  %29 = load i32, i32* %h2, align 4, !tbaa !5
  %cmp = icmp eq i32 %29, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %30 = load i32, i32* %h1, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %entry
  %31 = load i32, i32* %h1, align 4, !tbaa !5
  %32 = load i32, i32* %h2, align 4, !tbaa !5
  %call = call i32 @igcd(i32 %31, i32 %32) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %30, %cond.true ], [ %call, %cond.false ]
  store i32 %cond, i32* %d, align 4, !tbaa !5
  %33 = bitcast i32* %sod to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = load i32, i32* %size, align 4, !tbaa !5
  %35 = load i32, i32* %d, align 4, !tbaa !5
  %div = udiv i32 %34, %35
  store i32 %div, i32* %sod, align 4, !tbaa !5
  %36 = bitcast i32* %num_levels to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  %37 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = bitcast i32* %rshift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #1
  store i32 0, i32* %rshift, align 4, !tbaa !5
  %39 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  %40 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #1
  store i32 0, i32* %mask, align 4, !tbaa !5
  %41 = bitcast i32* %max_thr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #1
  store i32 0, i32* %max_thr, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %42 = load i32, i32* %i, align 4, !tbaa !5
  %43 = load i32, i32* %size, align 4, !tbaa !5
  %cmp3 = icmp ult i32 %42, %43
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %44 = bitcast i32* %thr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  %45 = load i32, i32* %bps, align 4, !tbaa !5
  %cmp4 = icmp eq i32 %45, 1
  br i1 %cmp4, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %for.body
  %46 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = zext i32 %46 to i64
  %47 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %47, i64 %idxprom
  %48 = load i8, i8* %arrayidx, align 1, !tbaa !41
  %conv = zext i8 %48 to i32
  br label %cond.end.17

cond.false.6:                                     ; preds = %for.body
  %49 = load i32, i32* %i, align 4, !tbaa !5
  %mul7 = mul i32 %49, 2
  %idxprom8 = zext i32 %mul7 to i64
  %50 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i8, i8* %50, i64 %idxprom8
  %51 = load i8, i8* %arrayidx9, align 1, !tbaa !41
  %conv10 = zext i8 %51 to i32
  %shl = shl i32 %conv10, 8
  %52 = load i32, i32* %i, align 4, !tbaa !5
  %mul11 = mul i32 %52, 2
  %add12 = add i32 %mul11, 1
  %idxprom13 = zext i32 %add12 to i64
  %53 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i8, i8* %53, i64 %idxprom13
  %54 = load i8, i8* %arrayidx14, align 1, !tbaa !41
  %conv15 = zext i8 %54 to i32
  %add16 = add nsw i32 %shl, %conv15
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.6, %cond.true.5
  %cond18 = phi i32 [ %conv, %cond.true.5 ], [ %add16, %cond.false.6 ]
  store i32 %cond18, i32* %thr, align 4, !tbaa !5
  %55 = load i32, i32* %thr, align 4, !tbaa !5
  %56 = load i32, i32* %mask, align 4, !tbaa !5
  %or = or i32 %56, %55
  store i32 %or, i32* %mask, align 4, !tbaa !5
  %57 = load i32, i32* %max_thr, align 4, !tbaa !5
  %58 = load i32, i32* %thr, align 4, !tbaa !5
  %cmp19 = icmp ugt i32 %57, %58
  br i1 %cmp19, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %cond.end.17
  %59 = load i32, i32* %max_thr, align 4, !tbaa !5
  br label %cond.end.23

cond.false.22:                                    ; preds = %cond.end.17
  %60 = load i32, i32* %thr, align 4, !tbaa !5
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.21
  %cond24 = phi i32 [ %59, %cond.true.21 ], [ %60, %cond.false.22 ]
  store i32 %cond24, i32* %max_thr, align 4, !tbaa !5
  %61 = bitcast i32* %thr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  br label %for.inc

for.inc:                                          ; preds = %cond.end.23
  %62 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %62, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %63 = load i32, i32* %mask, align 4, !tbaa !5
  %cmp25 = icmp eq i32 %63, 0
  br i1 %cmp25, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  store i32 1, i32* %mask, align 4, !tbaa !5
  store i32 1, i32* %max_thr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %64 = load i32, i32* %mask, align 4, !tbaa !5
  %and = and i32 %64, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %while.cond
  %65 = load i32, i32* %max_thr, align 4, !tbaa !5
  %cmp27 = icmp ugt i32 %65, 16384
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %66 = phi i1 [ true, %while.cond ], [ %cmp27, %lor.rhs ]
  br i1 %66, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %67 = load i32, i32* %mask, align 4, !tbaa !5
  %shr = lshr i32 %67, 1
  store i32 %shr, i32* %mask, align 4, !tbaa !5
  %68 = load i32, i32* %max_thr, align 4, !tbaa !5
  %shr29 = lshr i32 %68, 1
  store i32 %shr29, i32* %max_thr, align 4, !tbaa !5
  %69 = load i32, i32* %rshift, align 4, !tbaa !5
  %inc30 = add nsw i32 %69, 1
  store i32 %inc30, i32* %rshift, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %70 = load i32, i32* %max_thr, align 4, !tbaa !5
  %add31 = add i32 %70, 1
  store i32 %add31, i32* %num_levels, align 4, !tbaa !5
  %71 = bitcast i32* %max_thr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %72 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = load i32, i32* %sod, align 4, !tbaa !5
  %conv32 = trunc i32 %73 to i16
  %74 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %74, i32 0, i32 0
  %M = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %params, i32 0, i32 0
  store i16 %conv32, i16* %M, align 2, !tbaa !87
  %75 = load i32, i32* %d, align 4, !tbaa !5
  %conv33 = trunc i32 %75 to i16
  %76 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %params34 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %76, i32 0, i32 0
  %N = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %params34, i32 0, i32 1
  store i16 %conv33, i16* %N, align 2, !tbaa !88
  %77 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %params35 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %77, i32 0, i32 0
  %R = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %params35, i32 0, i32 2
  store i16 1, i16* %R, align 2, !tbaa !89
  %78 = load i32, i32* %d, align 4, !tbaa !5
  %conv36 = trunc i32 %78 to i16
  %79 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %params37 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %79, i32 0, i32 0
  %M1 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %params37, i32 0, i32 3
  store i16 %conv36, i16* %M1, align 2, !tbaa !91
  %80 = load i32, i32* %sod, align 4, !tbaa !5
  %conv38 = trunc i32 %80 to i16
  %81 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %params39 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %81, i32 0, i32 0
  %N1 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %params39, i32 0, i32 4
  store i16 %conv38, i16* %N1, align 2, !tbaa !92
  %82 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %params40 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %82, i32 0, i32 0
  %R1 = getelementptr inbounds %struct.gx_ht_cell_params_s, %struct.gx_ht_cell_params_s* %params40, i32 0, i32 5
  store i16 1, i16* %R1, align 2, !tbaa !93
  store i32 0, i32* %shift, align 4, !tbaa !5
  %83 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %83) #1
  store i32 0, i32* %x, align 4, !tbaa !5
  %84 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %84) #1
  store i32 0, i32* %y, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %do.cond, %while.end
  %85 = load i32, i32* %y, align 4, !tbaa !5
  %86 = load i32, i32* %h1, align 4, !tbaa !5
  %cmp41 = icmp slt i32 %85, %86
  br i1 %cmp41, label %if.then.43, label %if.else

if.then.43:                                       ; preds = %do.body
  %87 = load i32, i32* %w1, align 4, !tbaa !5
  %88 = load i32, i32* %x, align 4, !tbaa !5
  %add44 = add nsw i32 %88, %87
  store i32 %add44, i32* %x, align 4, !tbaa !5
  %89 = load i32, i32* %h2, align 4, !tbaa !5
  %90 = load i32, i32* %y, align 4, !tbaa !5
  %add45 = add nsw i32 %90, %89
  store i32 %add45, i32* %y, align 4, !tbaa !5
  br label %if.end.47

if.else:                                          ; preds = %do.body
  %91 = load i32, i32* %w2, align 4, !tbaa !5
  %92 = load i32, i32* %x, align 4, !tbaa !5
  %add46 = add nsw i32 %92, %91
  store i32 %add46, i32* %x, align 4, !tbaa !5
  %93 = load i32, i32* %h1, align 4, !tbaa !5
  %94 = load i32, i32* %y, align 4, !tbaa !5
  %sub = sub nsw i32 %94, %93
  store i32 %sub, i32* %y, align 4, !tbaa !5
  br label %if.end.47

if.end.47:                                        ; preds = %if.else, %if.then.43
  br label %do.cond

do.cond:                                          ; preds = %if.end.47
  %95 = load i32, i32* %y, align 4, !tbaa !5
  %96 = load i32, i32* %d, align 4, !tbaa !5
  %cmp48 = icmp sgt i32 %95, %96
  br i1 %cmp48, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %97 = load i32, i32* %y, align 4, !tbaa !5
  %tobool50 = icmp ne i32 %97, 0
  br i1 %tobool50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %do.end
  %98 = load i32, i32* %x, align 4, !tbaa !5
  store i32 %98, i32* %shift, align 4, !tbaa !5
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %do.end
  %99 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #1
  %100 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  %101 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %102 = load i32, i32* %sod, align 4, !tbaa !5
  %103 = load i32, i32* %d, align 4, !tbaa !5
  %104 = load i32, i32* %num_levels, align 4, !tbaa !5
  %105 = load i32, i32* %size, align 4, !tbaa !5
  %106 = load i32, i32* %shift, align 4, !tbaa !5
  %107 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call53 = call i32 @gx_ht_alloc_ht_order(%struct.gx_ht_order_s* %101, i32 %102, i32 %103, i32 %104, i32 %105, i32 %106, %struct.gx_ht_order_procs_s* getelementptr inbounds ([2 x %struct.gx_ht_order_procs_s], [2 x %struct.gx_ht_order_procs_s]* @ht_order_procs_table, i32 0, i64 0), %struct.gs_memory_s* %107) #4
  store i32 %call53, i32* %code, align 4, !tbaa !5
  %108 = load i32, i32* %code, align 4, !tbaa !5
  %cmp54 = icmp slt i32 %108, 0
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.end.52
  %109 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %109, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.57:                                        ; preds = %if.end.52
  %110 = bitcast %struct.gx_ht_bit_s** %bits to i8*
  call void @llvm.lifetime.start(i64 8, i8* %110) #1
  %111 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %bit_data = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %111, i32 0, i32 13
  %112 = load i8*, i8** %bit_data, align 8, !tbaa !101
  %113 = bitcast i8* %112 to %struct.gx_ht_bit_s*
  store %struct.gx_ht_bit_s* %113, %struct.gx_ht_bit_s** %bits, align 8, !tbaa !1
  %114 = bitcast i32* %row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %114) #1
  %115 = bitcast i32* %di to i8*
  call void @llvm.lifetime.start(i64 4, i8* %115) #1
  br label %do.body.58

do.body.58:                                       ; preds = %if.end.57
  br label %do.cond.59

do.cond.59:                                       ; preds = %do.body.58
  br label %do.end.60

do.end.60:                                        ; preds = %do.cond.59
  store i32 0, i32* %row, align 4, !tbaa !5
  store i32 0, i32* %di, align 4, !tbaa !5
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.126, %do.end.60
  %116 = load i32, i32* %row, align 4, !tbaa !5
  %117 = load i32, i32* %d, align 4, !tbaa !5
  %cmp62 = icmp slt i32 %116, %117
  br i1 %cmp62, label %for.body.64, label %for.end.128

for.body.64:                                      ; preds = %for.cond.61
  %118 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %118) #1
  %119 = bitcast i32* %sy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %119) #1
  %120 = load i32, i32* %row, align 4, !tbaa !5
  store i32 %120, i32* %sy, align 4, !tbaa !5
  %121 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %121) #1
  store i32 0, i32* %dx, align 4, !tbaa !5
  br label %for.cond.65

for.cond.65:                                      ; preds = %for.inc.123, %for.body.64
  %122 = load i32, i32* %dx, align 4, !tbaa !5
  %123 = load i32, i32* %sod, align 4, !tbaa !5
  %cmp66 = icmp slt i32 %122, %123
  br i1 %cmp66, label %for.body.68, label %for.end.125

for.body.68:                                      ; preds = %for.cond.65
  %124 = bitcast i32* %si to i8*
  call void @llvm.lifetime.start(i64 4, i8* %124) #1
  %125 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %125) #1
  %126 = load i32, i32* %sy, align 4, !tbaa !5
  %127 = load i32, i32* %h1, align 4, !tbaa !5
  %cmp69 = icmp slt i32 %126, %127
  br i1 %cmp69, label %if.then.71, label %if.else.74

if.then.71:                                       ; preds = %for.body.68
  %128 = load i32, i32* %sy, align 4, !tbaa !5
  %129 = load i32, i32* %w1, align 4, !tbaa !5
  %mul72 = mul nsw i32 %128, %129
  store i32 %mul72, i32* %si, align 4, !tbaa !5
  %130 = load i32, i32* %w1, align 4, !tbaa !5
  store i32 %130, i32* %w, align 4, !tbaa !5
  %131 = load i32, i32* %h2, align 4, !tbaa !5
  %132 = load i32, i32* %sy, align 4, !tbaa !5
  %add73 = add nsw i32 %132, %131
  store i32 %add73, i32* %sy, align 4, !tbaa !5
  br label %if.end.79

if.else.74:                                       ; preds = %for.body.68
  %133 = load i32, i32* %size1, align 4, !tbaa !5
  %134 = load i32, i32* %sy, align 4, !tbaa !5
  %135 = load i32, i32* %h1, align 4, !tbaa !5
  %sub75 = sub nsw i32 %134, %135
  %136 = load i32, i32* %w2, align 4, !tbaa !5
  %mul76 = mul nsw i32 %sub75, %136
  %add77 = add nsw i32 %133, %mul76
  store i32 %add77, i32* %si, align 4, !tbaa !5
  %137 = load i32, i32* %w2, align 4, !tbaa !5
  store i32 %137, i32* %w, align 4, !tbaa !5
  %138 = load i32, i32* %h1, align 4, !tbaa !5
  %139 = load i32, i32* %sy, align 4, !tbaa !5
  %sub78 = sub nsw i32 %139, %138
  store i32 %sub78, i32* %sy, align 4, !tbaa !5
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.74, %if.then.71
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc.118, %if.end.79
  %140 = load i32, i32* %j, align 4, !tbaa !5
  %141 = load i32, i32* %w, align 4, !tbaa !5
  %cmp81 = icmp slt i32 %140, %141
  br i1 %cmp81, label %for.body.83, label %for.end.122

for.body.83:                                      ; preds = %for.cond.80
  %142 = bitcast i32* %thr84 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %142) #1
  %143 = load i32, i32* %bps, align 4, !tbaa !5
  %cmp85 = icmp eq i32 %143, 1
  br i1 %cmp85, label %cond.true.87, label %cond.false.91

cond.true.87:                                     ; preds = %for.body.83
  %144 = load i32, i32* %si, align 4, !tbaa !5
  %idxprom88 = sext i32 %144 to i64
  %145 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx89 = getelementptr inbounds i8, i8* %145, i64 %idxprom88
  %146 = load i8, i8* %arrayidx89, align 1, !tbaa !41
  %conv90 = zext i8 %146 to i32
  br label %cond.end.103

cond.false.91:                                    ; preds = %for.body.83
  %147 = load i32, i32* %si, align 4, !tbaa !5
  %mul92 = mul nsw i32 %147, 2
  %idxprom93 = sext i32 %mul92 to i64
  %148 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx94 = getelementptr inbounds i8, i8* %148, i64 %idxprom93
  %149 = load i8, i8* %arrayidx94, align 1, !tbaa !41
  %conv95 = zext i8 %149 to i32
  %shl96 = shl i32 %conv95, 8
  %150 = load i32, i32* %si, align 4, !tbaa !5
  %mul97 = mul nsw i32 %150, 2
  %add98 = add nsw i32 %mul97, 1
  %idxprom99 = sext i32 %add98 to i64
  %151 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx100 = getelementptr inbounds i8, i8* %151, i64 %idxprom99
  %152 = load i8, i8* %arrayidx100, align 1, !tbaa !41
  %conv101 = zext i8 %152 to i32
  %add102 = add nsw i32 %shl96, %conv101
  br label %cond.end.103

cond.end.103:                                     ; preds = %cond.false.91, %cond.true.87
  %cond104 = phi i32 [ %conv90, %cond.true.87 ], [ %add102, %cond.false.91 ]
  %153 = load i32, i32* %rshift, align 4, !tbaa !5
  %shr105 = ashr i32 %cond104, %153
  store i32 %shr105, i32* %thr84, align 4, !tbaa !5
  br label %do.body.106

do.body.106:                                      ; preds = %cond.end.103
  br label %do.cond.107

do.cond.107:                                      ; preds = %do.body.106
  br label %do.end.108

do.end.108:                                       ; preds = %do.cond.107
  %154 = load i32, i32* %thr84, align 4, !tbaa !5
  %cmp109 = icmp ugt i32 %154, 1
  br i1 %cmp109, label %cond.true.111, label %cond.false.112

cond.true.111:                                    ; preds = %do.end.108
  %155 = load i32, i32* %thr84, align 4, !tbaa !5
  br label %cond.end.113

cond.false.112:                                   ; preds = %do.end.108
  br label %cond.end.113

cond.end.113:                                     ; preds = %cond.false.112, %cond.true.111
  %cond114 = phi i32 [ %155, %cond.true.111 ], [ 1, %cond.false.112 ]
  %156 = load i32, i32* %di, align 4, !tbaa !5
  %idxprom115 = sext i32 %156 to i64
  %157 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %bits, align 8, !tbaa !1
  %arrayidx116 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %157, i64 %idxprom115
  %mask117 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %arrayidx116, i32 0, i32 1
  store i32 %cond114, i32* %mask117, align 4, !tbaa !102
  %158 = bitcast i32* %thr84 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %158) #1
  br label %for.inc.118

for.inc.118:                                      ; preds = %cond.end.113
  %159 = load i32, i32* %j, align 4, !tbaa !5
  %inc119 = add nsw i32 %159, 1
  store i32 %inc119, i32* %j, align 4, !tbaa !5
  %160 = load i32, i32* %si, align 4, !tbaa !5
  %inc120 = add nsw i32 %160, 1
  store i32 %inc120, i32* %si, align 4, !tbaa !5
  %161 = load i32, i32* %di, align 4, !tbaa !5
  %inc121 = add nsw i32 %161, 1
  store i32 %inc121, i32* %di, align 4, !tbaa !5
  br label %for.cond.80

for.end.122:                                      ; preds = %for.cond.80
  %162 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %162) #1
  %163 = bitcast i32* %si to i8*
  call void @llvm.lifetime.end(i64 4, i8* %163) #1
  br label %for.inc.123

for.inc.123:                                      ; preds = %for.end.122
  %164 = load i32, i32* %w, align 4, !tbaa !5
  %165 = load i32, i32* %dx, align 4, !tbaa !5
  %add124 = add nsw i32 %165, %164
  store i32 %add124, i32* %dx, align 4, !tbaa !5
  br label %for.cond.65

for.end.125:                                      ; preds = %for.cond.65
  %166 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %166) #1
  %167 = bitcast i32* %sy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %167) #1
  %168 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %168) #1
  br label %for.inc.126

for.inc.126:                                      ; preds = %for.end.125
  %169 = load i32, i32* %row, align 4, !tbaa !5
  %inc127 = add nsw i32 %169, 1
  store i32 %inc127, i32* %row, align 4, !tbaa !5
  br label %for.cond.61

for.end.128:                                      ; preds = %for.cond.61
  %170 = bitcast i32* %di to i8*
  call void @llvm.lifetime.end(i64 4, i8* %170) #1
  %171 = bitcast i32* %row to i8*
  call void @llvm.lifetime.end(i64 4, i8* %171) #1
  %172 = bitcast %struct.gx_ht_bit_s** %bits to i8*
  call void @llvm.lifetime.end(i64 8, i8* %172) #1
  %173 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  call void @gx_ht_complete_threshold_order(%struct.gx_ht_order_s* %173) #4
  %174 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %175 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %176 = load %struct.gs_threshold2_halftone_s*, %struct.gs_threshold2_halftone_s** %phtp.addr, align 8, !tbaa !1
  %transfer_closure = getelementptr inbounds %struct.gs_threshold2_halftone_s, %struct.gs_threshold2_halftone_s* %176, i32 0, i32 2
  %177 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call129 = call i32 @process_transfer(%struct.gx_ht_order_s* %174, %struct.gs_state_s* %175, float (double, %struct.gx_transfer_map_s*)* null, %struct.gs_mapping_closure_s* %transfer_closure, %struct.gs_memory_s* %177) #4
  store i32 %call129, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.128, %if.then.56
  %178 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %178) #1
  %179 = bitcast i32* %rshift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %179) #1
  %180 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %180) #1
  %181 = bitcast i32* %num_levels to i8*
  call void @llvm.lifetime.end(i64 4, i8* %181) #1
  %182 = bitcast i32* %sod to i8*
  call void @llvm.lifetime.end(i64 4, i8* %182) #1
  %183 = bitcast i32* %d to i8*
  call void @llvm.lifetime.end(i64 4, i8* %183) #1
  %184 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %184) #1
  %185 = bitcast i32* %size2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %185) #1
  %186 = bitcast i32* %h2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %186) #1
  %187 = bitcast i32* %w2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %187) #1
  %188 = bitcast i32* %size1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %188) #1
  %189 = bitcast i32* %h1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %189) #1
  %190 = bitcast i32* %w1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %190) #1
  %191 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %191) #1
  %192 = bitcast i32* %bps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %192) #1
  %193 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %193) #1
  %194 = load i32, i32* %retval
  ret i32 %194
}

; Function Attrs: nounwind uwtable
define internal i32 @process_client_order(%struct.gx_ht_order_s* %porder, %struct.gs_state_s* %pgs, %struct.gs_client_order_halftone_s* %phcop, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %porder.addr = alloca %struct.gx_ht_order_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %phcop.addr = alloca %struct.gs_client_order_halftone_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_ht_order_s* %porder, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_client_order_halftone_s* %phcop, %struct.gs_client_order_halftone_s** %phcop.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_client_order_halftone_s*, %struct.gs_client_order_halftone_s** %phcop.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_client_order_halftone_s, %struct.gs_client_order_halftone_s* %1, i32 0, i32 3
  %2 = load %struct.gs_client_order_ht_procs_s*, %struct.gs_client_order_ht_procs_s** %procs, align 8, !tbaa !104
  %create_order = getelementptr inbounds %struct.gs_client_order_ht_procs_s, %struct.gs_client_order_ht_procs_s* %2, i32 0, i32 0
  %3 = load i32 (%struct.gx_ht_order_s*, %struct.gs_state_s*, %struct.gs_client_order_halftone_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_ht_order_s*, %struct.gs_state_s*, %struct.gs_client_order_halftone_s*, %struct.gs_memory_s*)** %create_order, align 8, !tbaa !105
  %4 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %6 = load %struct.gs_client_order_halftone_s*, %struct.gs_client_order_halftone_s** %phcop.addr, align 8, !tbaa !1
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i32 %3(%struct.gx_ht_order_s* %4, %struct.gs_state_s* %5, %struct.gs_client_order_halftone_s* %6, %struct.gs_memory_s* %7) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %8 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %12 = load %struct.gs_client_order_halftone_s*, %struct.gs_client_order_halftone_s** %phcop.addr, align 8, !tbaa !1
  %transfer_closure = getelementptr inbounds %struct.gs_client_order_halftone_s, %struct.gs_client_order_halftone_s* %12, i32 0, i32 5
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call1 = call i32 @process_transfer(%struct.gx_ht_order_s* %10, %struct.gs_state_s* %11, float (double, %struct.gx_transfer_map_s*)* null, %struct.gs_mapping_closure_s* %transfer_closure, %struct.gs_memory_s* %13) #4
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define void @gx_ht_complete_threshold_order(%struct.gx_ht_order_s* %porder) #0 {
entry:
  %porder.addr = alloca %struct.gx_ht_order_s*, align 8
  %num_levels = alloca i32, align 4
  %levels = alloca i32*, align 8
  %size = alloca i32, align 4
  %bits = alloca %struct.gx_ht_bit_s*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.gx_ht_order_s* %porder, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %0 = bitcast i32* %num_levels to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %num_levels1 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %1, i32 0, i32 8
  %2 = load i32, i32* %num_levels1, align 4, !tbaa !107
  store i32 %2, i32* %num_levels, align 4, !tbaa !5
  %3 = bitcast i32** %levels to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %levels2 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %4, i32 0, i32 12
  %5 = load i32*, i32** %levels2, align 8, !tbaa !108
  store i32* %5, i32** %levels, align 8, !tbaa !1
  %6 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %num_bits = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %7, i32 0, i32 9
  %8 = load i32, i32* %num_bits, align 4, !tbaa !109
  store i32 %8, i32* %size, align 4, !tbaa !5
  %9 = bitcast %struct.gx_ht_bit_s** %bits to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %bit_data = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %10, i32 0, i32 13
  %11 = load i8*, i8** %bit_data, align 8, !tbaa !101
  %12 = bitcast i8* %11 to %struct.gx_ht_bit_s*
  store %struct.gx_ht_bit_s* %12, %struct.gx_ht_bit_s** %bits, align 8, !tbaa !1
  %13 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %bits, align 8, !tbaa !1
  %16 = load i32, i32* %size, align 4, !tbaa !5
  call void @gx_sort_ht_order(%struct.gx_ht_bit_s* %15, i32 %16) #4
  store i32 0, i32* %i, align 4, !tbaa !5
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %17 = load i32, i32* %i, align 4, !tbaa !5
  %18 = load i32, i32* %size, align 4, !tbaa !5
  %cmp = icmp ult i32 %17, %18
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = zext i32 %19 to i64
  %20 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %bits, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %20, i64 %idxprom
  %mask = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %arrayidx, i32 0, i32 1
  %21 = load i32, i32* %mask, align 4, !tbaa !102
  %22 = load i32, i32* %j, align 4, !tbaa !5
  %cmp3 = icmp ne i32 %21, %22
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end
  %23 = load i32, i32* %j, align 4, !tbaa !5
  %24 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom4 = zext i32 %24 to i64
  %25 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %bits, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %25, i64 %idxprom4
  %mask6 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %arrayidx5, i32 0, i32 1
  %26 = load i32, i32* %mask6, align 4, !tbaa !102
  %cmp7 = icmp ult i32 %23, %26
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %27 = load i32, i32* %i, align 4, !tbaa !5
  %28 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add i32 %28, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  %idxprom8 = zext i32 %28 to i64
  %29 = load i32*, i32** %levels, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i32, i32* %29, i64 %idxprom8
  store i32 %27, i32* %arrayidx9, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %30 = load i32, i32* %i, align 4, !tbaa !5
  %inc10 = add i32 %30, 1
  store i32 %inc10, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond.11

while.cond.11:                                    ; preds = %while.body.13, %for.end
  %31 = load i32, i32* %j, align 4, !tbaa !5
  %32 = load i32, i32* %num_levels, align 4, !tbaa !5
  %cmp12 = icmp ult i32 %31, %32
  br i1 %cmp12, label %while.body.13, label %while.end.17

while.body.13:                                    ; preds = %while.cond.11
  %33 = load i32, i32* %size, align 4, !tbaa !5
  %34 = load i32, i32* %j, align 4, !tbaa !5
  %inc14 = add i32 %34, 1
  store i32 %inc14, i32* %j, align 4, !tbaa !5
  %idxprom15 = zext i32 %34 to i64
  %35 = load i32*, i32** %levels, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i32, i32* %35, i64 %idxprom15
  store i32 %33, i32* %arrayidx16, align 4, !tbaa !5
  br label %while.cond.11

while.end.17:                                     ; preds = %while.cond.11
  %36 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  call void @gx_ht_construct_bits(%struct.gx_ht_order_s* %36) #4
  %37 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast %struct.gx_ht_bit_s** %bits to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast i32** %levels to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast i32* %num_levels to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  ret void
}

declare void @gx_sort_ht_order(%struct.gx_ht_bit_s*, i32) #2

declare void @gx_ht_construct_bits(%struct.gx_ht_order_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gx_ht_construct_threshold_order(%struct.gx_ht_order_s* %porder, i8* %thresholds) #0 {
entry:
  %porder.addr = alloca %struct.gx_ht_order_s*, align 8
  %thresholds.addr = alloca i8*, align 8
  store %struct.gx_ht_order_s* %porder, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  store i8* %thresholds, i8** %thresholds.addr, align 8, !tbaa !1
  %0 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %0, i32 0, i32 10
  %1 = load %struct.gx_ht_order_procs_s*, %struct.gx_ht_order_procs_s** %procs, align 8, !tbaa !110
  %construct_order = getelementptr inbounds %struct.gx_ht_order_procs_s, %struct.gx_ht_order_procs_s* %1, i32 0, i32 1
  %2 = load i32 (%struct.gx_ht_order_s*, i8*)*, i32 (%struct.gx_ht_order_s*, i8*)** %construct_order, align 8, !tbaa !111
  %3 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %thresholds.addr, align 8, !tbaa !1
  %call = call i32 %2(%struct.gx_ht_order_s* %3, i8* %4) #4
  ret i32 %call
}

declare %struct.gs_ptr_procs_s* @enum_const_bytestring(%struct.enum_ptr_s*, %struct.gs_const_bytestring_s*) #2

declare void @reloc_const_bytestring(%struct.gs_const_bytestring_s*, %struct.gc_state_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @process_transfer(%struct.gx_ht_order_s* %porder, %struct.gs_state_s* %pgs, float (double, %struct.gx_transfer_map_s*)* %proc, %struct.gs_mapping_closure_s* %pmc, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %porder.addr = alloca %struct.gx_ht_order_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %proc.addr = alloca float (double, %struct.gx_transfer_map_s*)*, align 8
  %pmc.addr = alloca %struct.gs_mapping_closure_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pmap = alloca %struct.gx_transfer_map_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_ht_order_s* %porder, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store float (double, %struct.gx_transfer_map_s*)* %proc, float (double, %struct.gx_transfer_map_s*)** %proc.addr, align 8, !tbaa !1
  store %struct.gs_mapping_closure_s* %pmc, %struct.gs_mapping_closure_s** %pmc.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_transfer_map_s** %pmap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc.addr, align 8, !tbaa !1
  %cmp = icmp eq float (double, %struct.gx_transfer_map_s*)* %1, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.gs_mapping_closure_s*, %struct.gs_mapping_closure_s** %pmc.addr, align 8, !tbaa !1
  %proc1 = getelementptr inbounds %struct.gs_mapping_closure_s, %struct.gs_mapping_closure_s* %2, i32 0, i32 0
  %3 = load float (double, %struct.gx_transfer_map_s*, i8*)*, float (double, %struct.gx_transfer_map_s*, i8*)** %proc1, align 8, !tbaa !113
  %cmp2 = icmp eq float (double, %struct.gx_transfer_map_s*, i8*)* %3, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %5 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !114
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i8* %5(%struct.gs_memory_s* %6, %struct.gs_memory_struct_type_s* @st_transfer_map, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0)) #4
  %7 = bitcast i8* %call to %struct.gx_transfer_map_s*
  store %struct.gx_transfer_map_s* %7, %struct.gx_transfer_map_s** %pmap, align 8, !tbaa !1
  %cmp3 = icmp eq %struct.gx_transfer_map_s* %7, null
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  br label %do.body.5

do.body.5:                                        ; preds = %if.else
  %8 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %pmap, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %8, i32 0, i32 0
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  store i64 1, i64* %ref_count, align 8, !tbaa !115
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %10 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %pmap, align 8, !tbaa !1
  %rc6 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %10, i32 0, i32 0
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc6, i32 0, i32 1
  store %struct.gs_memory_s* %9, %struct.gs_memory_s** %memory, align 8, !tbaa !117
  %11 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %pmap, align 8, !tbaa !1
  %rc7 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %11, i32 0, i32 0
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc7, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @rc_free_struct_only, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !118
  br label %do.body.8

do.body.8:                                        ; preds = %do.body.5
  br label %do.cond

do.cond:                                          ; preds = %do.body.8
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.9

do.cond.9:                                        ; preds = %do.end
  br label %do.end.10

do.end.10:                                        ; preds = %do.cond.9
  br label %if.end.11

if.end.11:                                        ; preds = %do.end.10
  br label %do.cond.12

do.cond.12:                                       ; preds = %if.end.11
  br label %do.end.13

do.end.13:                                        ; preds = %do.cond.12
  %12 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc.addr, align 8, !tbaa !1
  %13 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %pmap, align 8, !tbaa !1
  %proc14 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %13, i32 0, i32 1
  store float (double, %struct.gx_transfer_map_s*)* %12, float (double, %struct.gx_transfer_map_s*)** %proc14, align 8, !tbaa !119
  %14 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %pmap, align 8, !tbaa !1
  %closure = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %14, i32 0, i32 2
  %15 = load %struct.gs_mapping_closure_s*, %struct.gs_mapping_closure_s** %pmc.addr, align 8, !tbaa !1
  %16 = bitcast %struct.gs_mapping_closure_s* %closure to i8*
  %17 = bitcast %struct.gs_mapping_closure_s* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 16, i32 8, i1 false), !tbaa.struct !120
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call15 = call i64 @gs_next_ids(%struct.gs_memory_s* %18, i32 1) #4
  %19 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %pmap, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %19, i32 0, i32 3
  store i64 %call15, i64* %id, align 8, !tbaa !121
  %20 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %pmap, align 8, !tbaa !1
  %21 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %transfer = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %21, i32 0, i32 15
  store %struct.gx_transfer_map_s* %20, %struct.gx_transfer_map_s** %transfer, align 8, !tbaa !122
  %22 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc.addr, align 8, !tbaa !1
  %cmp16 = icmp eq float (double, %struct.gx_transfer_map_s*)* %22, @gs_mapped_transfer
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %do.end.13
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %do.end.13
  %23 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %24 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %pmap, align 8, !tbaa !1
  call void @load_transfer_map(%struct.gs_state_s* %23, %struct.gx_transfer_map_s* %24, double 0.000000e+00) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.18, %if.then.17, %if.then.4, %if.then
  %25 = bitcast %struct.gx_transfer_map_s** %pmap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = load i32, i32* %retval
  ret i32 %26
}

declare void @rc_free_struct_only(%struct.gs_memory_s*, i8*, i8*) #2

declare i64 @gs_next_ids(%struct.gs_memory_s*, i32) #2

declare float @gs_mapped_transfer(double, %struct.gx_transfer_map_s*) #2

declare void @load_transfer_map(%struct.gs_state_s*, %struct.gx_transfer_map_s*, double) #2

declare i32 @gx_ht_alloc_threshold_order(%struct.gx_ht_order_s*, i32, i32, i32, %struct.gs_memory_s*) #2

declare i32 @igcd(i32, i32) #2

declare i32 @gx_ht_alloc_ht_order(%struct.gx_ht_order_s*, i32, i32, i32, i32, i32, %struct.gx_ht_order_procs_s*, %struct.gs_memory_s*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !3, i64 8}
!8 = !{!"gs_halftone_component_s", !6, i64 0, !6, i64 4, !3, i64 8, !3, i64 16}
!9 = !{!10, !2, i64 32}
!10 = !{!"gs_spot_halftone_s", !11, i64 0, !6, i64 24, !2, i64 32, !13, i64 40}
!11 = !{!"gs_screen_halftone_s", !12, i64 0, !12, i64 4, !2, i64 8, !12, i64 16, !12, i64 20}
!12 = !{!"float", !3, i64 0}
!13 = !{!"gs_mapping_closure_s", !2, i64 0, !2, i64 8}
!14 = !{!10, !2, i64 48}
!15 = !{!16, !2, i64 0}
!16 = !{!"enum_ptr_s", !2, i64 0, !6, i64 8}
!17 = !{!18, !2, i64 0}
!18 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!19 = !{!18, !6, i64 8}
!20 = !{!16, !6, i64 8}
!21 = !{!22, !2, i64 24}
!22 = !{!"gs_client_order_halftone_s", !6, i64 0, !6, i64 4, !6, i64 8, !2, i64 16, !2, i64 24, !13, i64 32}
!23 = !{!24, !2, i64 40}
!24 = !{!"gs_threshold_halftone_s", !6, i64 0, !6, i64 4, !13, i64 8, !18, i64 24, !2, i64 40}
!25 = !{!24, !2, i64 16}
!26 = !{!27, !2, i64 16}
!27 = !{!"gs_threshold2_halftone_s", !6, i64 0, !6, i64 4, !13, i64 8, !6, i64 24, !6, i64 28, !6, i64 32, !28, i64 40}
!28 = !{!"gs_const_bytestring_s", !2, i64 0, !6, i64 8, !2, i64 16}
!29 = !{!22, !2, i64 40}
!30 = !{!31, !2, i64 0}
!31 = !{!"gc_procs_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!32 = !{!31, !2, i64 16}
!33 = !{!34, !2, i64 32}
!34 = !{!"gs_memory_struct_type_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!35 = !{!34, !2, i64 40}
!36 = !{!37, !3, i64 0}
!37 = !{!"gs_halftone_s", !3, i64 0, !38, i64 8, !3, i64 32}
!38 = !{!"rc_header_s", !39, i64 0, !2, i64 8, !2, i64 16}
!39 = !{!"long", !3, i64 0}
!40 = !{i64 0, i64 96, !41, i64 0, i64 4, !42, i64 4, i64 4, !42, i64 8, i64 8, !1, i64 16, i64 4, !42, i64 20, i64 4, !42, i64 24, i64 4, !42, i64 28, i64 4, !42, i64 32, i64 8, !1, i64 40, i64 4, !42, i64 44, i64 4, !42, i64 48, i64 4, !42, i64 52, i64 4, !42, i64 56, i64 8, !1, i64 64, i64 4, !42, i64 68, i64 4, !42, i64 72, i64 4, !42, i64 76, i64 4, !42, i64 80, i64 8, !1, i64 88, i64 4, !42, i64 92, i64 4, !42}
!41 = !{!3, !3, i64 0}
!42 = !{!12, !12, i64 0}
!43 = !{i64 0, i64 4, !41, i64 8, i64 8, !44, i64 16, i64 8, !1, i64 24, i64 8, !1, i64 32, i64 4, !42, i64 36, i64 4, !42, i64 40, i64 8, !1, i64 48, i64 4, !42, i64 52, i64 4, !42, i64 32, i64 96, !41, i64 32, i64 4, !42, i64 36, i64 4, !42, i64 40, i64 8, !1, i64 48, i64 4, !42, i64 52, i64 4, !42, i64 56, i64 4, !42, i64 60, i64 4, !42, i64 64, i64 8, !1, i64 72, i64 4, !42, i64 76, i64 4, !42, i64 80, i64 4, !42, i64 84, i64 4, !42, i64 88, i64 8, !1, i64 96, i64 4, !42, i64 100, i64 4, !42, i64 104, i64 4, !42, i64 108, i64 4, !42, i64 112, i64 8, !1, i64 120, i64 4, !42, i64 124, i64 4, !42, i64 32, i64 4, !42, i64 36, i64 4, !42, i64 40, i64 8, !1, i64 48, i64 4, !42, i64 52, i64 4, !42, i64 56, i64 4, !5, i64 64, i64 8, !1, i64 72, i64 8, !1, i64 80, i64 8, !1, i64 32, i64 4, !5, i64 36, i64 4, !5, i64 40, i64 8, !1, i64 48, i64 8, !1, i64 56, i64 8, !1, i64 64, i64 4, !5, i64 72, i64 8, !1, i64 32, i64 4, !5, i64 36, i64 4, !5, i64 40, i64 8, !1, i64 48, i64 8, !1, i64 56, i64 4, !5, i64 60, i64 4, !5, i64 64, i64 4, !5, i64 72, i64 8, !1, i64 80, i64 4, !5, i64 88, i64 8, !1, i64 32, i64 4, !5, i64 36, i64 4, !5, i64 40, i64 4, !5, i64 48, i64 8, !1, i64 56, i64 8, !1, i64 64, i64 8, !1, i64 72, i64 8, !1, i64 32, i64 8, !1, i64 40, i64 4, !5, i64 48, i64 8, !1}
!44 = !{!39, !39, i64 0}
!45 = !{!46, !2, i64 8}
!46 = !{!"gs_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !47, i64 24, !6, i64 128, !50, i64 132, !6, i64 168, !51, i64 176, !51, i64 192, !6, i64 208, !6, i64 212, !53, i64 216, !3, i64 220, !54, i64 224, !54, i64 228, !55, i64 232, !39, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !12, i64 296, !56, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !12, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !57, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !58, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !58, i64 1336, !2, i64 1616, !48, i64 1624, !6, i64 1648, !48, i64 1652, !6, i64 1676, !2, i64 1680, !2, i64 1688, !2, i64 1696, !2, i64 1704, !39, i64 1712, !39, i64 1720, !2, i64 1728, !6, i64 1736, !3, i64 1744, !2, i64 1792, !2, i64 1800, !50, i64 1808, !6, i64 1844, !3, i64 1848, !3, i64 1852, !2, i64 1856, !6, i64 1864, !2, i64 1872, !2, i64 1880, !59, i64 1888}
!47 = !{!"gx_line_params_s", !12, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !6, i64 36, !48, i64 40, !49, i64 64}
!48 = !{!"gs_matrix_s", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20}
!49 = !{!"gx_dash_params_s", !2, i64 0, !6, i64 8, !12, i64 12, !6, i64 16, !12, i64 20, !6, i64 24, !6, i64 28, !12, i64 32}
!50 = !{!"gs_matrix_fixed_s", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!51 = !{!"gs_point_s", !52, i64 0, !52, i64 8}
!52 = !{!"double", !3, i64 0}
!53 = !{!"short", !3, i64 0}
!54 = !{!"gs_transparency_source_s", !12, i64 0}
!55 = !{!"gs_xstate_trans_flags", !6, i64 0, !6, i64 4}
!56 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!57 = !{!"gx_transfer_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !2, i64 56}
!58 = !{!"gs_devicen_color_map_s", !6, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !39, i64 16, !3, i64 24}
!59 = !{!"gs_state_client_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!60 = !{!37, !2, i64 16}
!61 = !{!46, !2, i64 368}
!62 = !{i64 0, i64 4, !42, i64 4, i64 4, !42, i64 8, i64 8, !1, i64 16, i64 4, !42, i64 20, i64 4, !42}
!63 = !{!64, !2, i64 168}
!64 = !{!"gx_device_halftone_s", !65, i64 0, !38, i64 160, !39, i64 184, !3, i64 192, !2, i64 200, !6, i64 208, !6, i64 212, !6, i64 216, !6, i64 220}
!65 = !{!"gx_ht_order_s", !66, i64 0, !53, i64 40, !53, i64 42, !53, i64 44, !53, i64 46, !53, i64 48, !53, i64 50, !6, i64 52, !6, i64 56, !6, i64 60, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !67, i64 112, !2, i64 144, !6, i64 152}
!66 = !{!"gx_ht_cell_params_s", !53, i64 0, !53, i64 2, !53, i64 4, !53, i64 6, !53, i64 8, !53, i64 10, !39, i64 16, !53, i64 24, !53, i64 26, !6, i64 28, !6, i64 32, !6, i64 36}
!67 = !{!"gx_ht_order_screen_params_s", !48, i64 0, !39, i64 24}
!68 = !{!69, !2, i64 104}
!69 = !{!"gs_memory_s", !2, i64 0, !70, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!70 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!71 = !{i64 0, i64 2, !72, i64 2, i64 2, !72, i64 4, i64 2, !72, i64 6, i64 2, !72, i64 8, i64 2, !72, i64 10, i64 2, !72, i64 16, i64 8, !44, i64 24, i64 2, !72, i64 26, i64 2, !72, i64 28, i64 4, !5, i64 32, i64 4, !5, i64 36, i64 4, !5, i64 40, i64 2, !72, i64 42, i64 2, !72, i64 44, i64 2, !72, i64 46, i64 2, !72, i64 48, i64 2, !72, i64 50, i64 2, !72, i64 52, i64 4, !5, i64 56, i64 4, !5, i64 60, i64 4, !5, i64 64, i64 8, !1, i64 72, i64 8, !1, i64 80, i64 8, !1, i64 88, i64 8, !1, i64 96, i64 8, !1, i64 104, i64 8, !1, i64 112, i64 4, !42, i64 116, i64 4, !42, i64 120, i64 4, !42, i64 124, i64 4, !42, i64 128, i64 4, !42, i64 132, i64 4, !42, i64 136, i64 8, !44, i64 144, i64 8, !1, i64 152, i64 4, !5}
!72 = !{!53, !53, i64 0}
!73 = !{!46, !2, i64 1872}
!74 = !{!75, !6, i64 160}
!75 = !{!"gx_ht_order_component_s", !65, i64 0, !6, i64 160, !6, i64 164}
!76 = !{!75, !6, i64 164}
!77 = !{!64, !2, i64 200}
!78 = !{!64, !6, i64 208}
!79 = !{!80, !6, i64 8}
!80 = !{!"gs_multiple_halftone_s", !2, i64 0, !6, i64 8, !2, i64 16}
!81 = !{!80, !2, i64 0}
!82 = !{!8, !6, i64 0}
!83 = !{!8, !6, i64 4}
!84 = !{!69, !2, i64 24}
!85 = !{!10, !6, i64 24}
!86 = !{!24, !6, i64 0}
!87 = !{!65, !53, i64 0}
!88 = !{!65, !53, i64 2}
!89 = !{!65, !53, i64 4}
!90 = !{!24, !6, i64 4}
!91 = !{!65, !53, i64 6}
!92 = !{!65, !53, i64 8}
!93 = !{!65, !53, i64 10}
!94 = !{!24, !2, i64 24}
!95 = !{!27, !6, i64 32}
!96 = !{!27, !2, i64 40}
!97 = !{!27, !6, i64 0}
!98 = !{!27, !6, i64 4}
!99 = !{!27, !6, i64 24}
!100 = !{!27, !6, i64 28}
!101 = !{!65, !2, i64 88}
!102 = !{!103, !6, i64 4}
!103 = !{!"gx_ht_bit_s", !6, i64 0, !6, i64 4}
!104 = !{!22, !2, i64 16}
!105 = !{!106, !2, i64 0}
!106 = !{!"gs_client_order_ht_procs_s", !2, i64 0}
!107 = !{!65, !6, i64 56}
!108 = !{!65, !2, i64 80}
!109 = !{!65, !6, i64 60}
!110 = !{!65, !2, i64 64}
!111 = !{!112, !2, i64 8}
!112 = !{!"gx_ht_order_procs_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32}
!113 = !{!13, !2, i64 0}
!114 = !{!69, !2, i64 72}
!115 = !{!116, !39, i64 0}
!116 = !{!"gx_transfer_map_s", !38, i64 0, !2, i64 24, !13, i64 32, !39, i64 48, !3, i64 56}
!117 = !{!116, !2, i64 8}
!118 = !{!116, !2, i64 16}
!119 = !{!116, !2, i64 24}
!120 = !{i64 0, i64 8, !1, i64 8, i64 8, !1}
!121 = !{!116, !39, i64 48}
!122 = !{!65, !2, i64 104}
