; ModuleID = './gxht.bc'
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
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
%struct.gx_device_color_type_s = type { %struct.gs_memory_struct_type_s*, {}*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* }
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
%struct.gs_state_s = type opaque
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
%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gc_ptr_element_s = type { i16, i16 }
%struct._bin = type { %struct.gx_device_halftone_s*, [2 x i64], i32, i32, %struct.gx_ht_tile_s* }
%struct.gc_procs_common_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)* }
%struct.gs_string_s = type { i8*, i32 }
%struct.gs_const_string_s = type { i8*, i32 }

@.str = private unnamed_addr constant [13 x i8] c"dc_ht_binary\00", align 1
@st_dc_ht_binary = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 656, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @dc_ht_binary_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @dc_ht_binary_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@gx_dc_type_data_ht_binary = constant { %struct.gs_memory_struct_type_s*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* } { %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_dc_ht_binary to %struct.gs_memory_struct_type_s*), void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)* @gx_dc_ht_binary_save_dc, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)* @gx_dc_ht_binary_get_dev_halftone, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)* @gx_dc_ht_get_phase, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* @gx_dc_ht_binary_load, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)* @gx_dc_ht_binary_fill_rectangle, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)* @gx_dc_ht_binary_fill_masked, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)* @gx_dc_ht_binary_equal, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)* @gx_dc_ht_binary_write, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)* @gx_dc_ht_binary_read, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* @gx_dc_ht_binary_get_nonzero_comps }, align 8
@gx_dc_type_ht_binary = constant %struct.gx_device_color_type_s* bitcast ({ %struct.gs_memory_struct_type_s*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* }* @gx_dc_type_data_ht_binary to %struct.gx_device_color_type_s*), align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"alloc_ht_cache(struct)\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"alloc_ht_cache(bits)\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"alloc_ht_cache(ht_tiles)\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"free_ht_cache(ht_tiles)\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"free_ht_cache(bits)\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"free_ht_cache(struct)\00", align 1
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"ht cache\00", align 1
@ht_cache_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 2, i16 32, %struct.gs_memory_struct_type_s* @st_ht_order, %struct.gc_ptr_element_s* getelementptr inbounds ([2 x %struct.gc_ptr_element_s], [2 x %struct.gc_ptr_element_s]* @ht_cache_enum_ptrs, i32 0, i32 0) }, align 8
@st_ht_cache = internal constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 224, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @ht_cache_reloc_ptrs to i8*) }, align 8
@st_ht_order = external constant %struct.gs_memory_struct_type_s, align 8
@ht_cache_enum_ptrs = internal constant [2 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s zeroinitializer, %struct.gc_ptr_element_s { i16 0, i16 16 }], align 2
@.str.8 = private unnamed_addr constant [9 x i8] c"ht tiles\00", align 1
@st_ht_tiles = internal constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @ht_tiles_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @ht_tiles_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @dc_ht_binary_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %cptr = alloca %struct.gx_device_color_s*, align 8
  %cleanup.dest.slot = alloca i32
  %tile = alloca %struct.gx_ht_tile_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_color_s** %cptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_device_color_s*
  store %struct.gx_device_color_s* %2, %struct.gx_device_color_s** %cptr, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !5
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
  ]

sw.default:                                       ; preds = %entry
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %4 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %5 = bitcast i8* %4 to %struct.gx_device_color_s*
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %5, i32 0, i32 1
  %binary = bitcast %union._c* %colors to %struct._bin*
  %b_ht = getelementptr inbounds %struct._bin, %struct._bin* %binary, i32 0, i32 0
  %6 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %b_ht, align 8, !tbaa !7
  %7 = bitcast %struct.gx_device_halftone_s* %6 to i8*
  %8 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %8, i32 0, i32 0
  store i8* %7, i8** %ptr, align 8, !tbaa !9
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.1:                                          ; preds = %entry
  %9 = bitcast %struct.gx_ht_tile_s** %tile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %cptr, align 8, !tbaa !1
  %colors2 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %10, i32 0, i32 1
  %binary3 = bitcast %union._c* %colors2 to %struct._bin*
  %b_tile = getelementptr inbounds %struct._bin, %struct._bin* %binary3, i32 0, i32 4
  %11 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %b_tile, align 8, !tbaa !11
  store %struct.gx_ht_tile_s* %11, %struct.gx_ht_tile_s** %tile, align 8, !tbaa !1
  %12 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %tile, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_ht_tile_s* %12, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.1
  %13 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %tile, align 8, !tbaa !1
  %14 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %tile, align 8, !tbaa !1
  %index4 = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %14, i32 0, i32 2
  %15 = load i32, i32* %index4, align 4, !tbaa !12
  %idx.ext = zext i32 %15 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %13, i64 %idx.neg
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gx_ht_tile_s* [ %add.ptr, %cond.true ], [ null, %cond.false ]
  %16 = bitcast %struct.gx_ht_tile_s* %cond to i8*
  %17 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr5 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %17, i32 0, i32 0
  store i8* %16, i8** %ptr5, align 8, !tbaa !9
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  %18 = bitcast %struct.gx_ht_tile_s** %tile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #2
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %sw.bb, %sw.default
  %19 = bitcast %struct.gx_device_color_s** %cptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #2
  %20 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %20
}

; Function Attrs: nounwind uwtable
define internal void @dc_ht_binary_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %cptr = alloca %struct.gx_device_color_s*, align 8
  %tile = alloca %struct.gx_ht_tile_s*, align 8
  %index = alloca i32, align 4
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_color_s** %cptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_device_color_s*
  store %struct.gx_device_color_s* %2, %struct.gx_device_color_s** %cptr, align 8, !tbaa !1
  %3 = bitcast %struct.gx_ht_tile_s** %tile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %cptr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %4, i32 0, i32 1
  %binary = bitcast %union._c* %colors to %struct._bin*
  %b_tile = getelementptr inbounds %struct._bin, %struct._bin* %binary, i32 0, i32 4
  %5 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %b_tile, align 8, !tbaa !11
  store %struct.gx_ht_tile_s* %5, %struct.gx_ht_tile_s** %tile, align 8, !tbaa !1
  %6 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %tile, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_ht_tile_s* %7, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %tile, align 8, !tbaa !1
  %index1 = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %8, i32 0, i32 2
  %9 = load i32, i32* %index1, align 4, !tbaa !12
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %9, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %index, align 4, !tbaa !5
  %10 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %11 = bitcast %struct.gc_state_s* %10 to %struct.gc_procs_common_s**
  %12 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %11, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %12, i32 0, i32 0
  %13 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !18
  %14 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %15 = bitcast i8* %14 to %struct.gx_device_color_s*
  %colors2 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %15, i32 0, i32 1
  %binary3 = bitcast %union._c* %colors2 to %struct._bin*
  %b_ht = getelementptr inbounds %struct._bin, %struct._bin* %binary3, i32 0, i32 0
  %16 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %b_ht, align 8, !tbaa !7
  %17 = bitcast %struct.gx_device_halftone_s* %16 to i8*
  %18 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %13(i8* %17, %struct.gc_state_s* %18) #4
  %19 = bitcast i8* %call to %struct.gx_device_halftone_s*
  %20 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %21 = bitcast i8* %20 to %struct.gx_device_color_s*
  %colors4 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %21, i32 0, i32 1
  %binary5 = bitcast %union._c* %colors4 to %struct._bin*
  %b_ht6 = getelementptr inbounds %struct._bin, %struct._bin* %binary5, i32 0, i32 0
  store %struct.gx_device_halftone_s* %19, %struct.gx_device_halftone_s** %b_ht6, align 8, !tbaa !7
  %22 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %23 = bitcast %struct.gc_state_s* %22 to %struct.gc_procs_common_s**
  %24 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %23, align 8, !tbaa !1
  %reloc_struct_ptr7 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %24, i32 0, i32 0
  %25 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr7, align 8, !tbaa !18
  %26 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %27 = bitcast i8* %26 to %struct.gx_device_color_s*
  %colors8 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %27, i32 0, i32 1
  %binary9 = bitcast %union._c* %colors8 to %struct._bin*
  %b_tile10 = getelementptr inbounds %struct._bin, %struct._bin* %binary9, i32 0, i32 4
  %28 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %b_tile10, align 8, !tbaa !11
  %29 = load i32, i32* %index, align 4, !tbaa !5
  %idx.ext = zext i32 %29 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %28, i64 %idx.neg
  %30 = bitcast %struct.gx_ht_tile_s* %add.ptr to i8*
  %31 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call11 = call i8* %25(i8* %30, %struct.gc_state_s* %31) #4
  %32 = bitcast i8* %call11 to %struct.gx_ht_tile_s*
  %33 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %34 = bitcast i8* %33 to %struct.gx_device_color_s*
  %colors12 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %34, i32 0, i32 1
  %binary13 = bitcast %union._c* %colors12 to %struct._bin*
  %b_tile14 = getelementptr inbounds %struct._bin, %struct._bin* %binary13, i32 0, i32 4
  store %struct.gx_ht_tile_s* %32, %struct.gx_ht_tile_s** %b_tile14, align 8, !tbaa !11
  %35 = load i32, i32* %index, align 4, !tbaa !5
  %36 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %37 = bitcast i8* %36 to %struct.gx_device_color_s*
  %colors15 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %37, i32 0, i32 1
  %binary16 = bitcast %union._c* %colors15 to %struct._bin*
  %b_tile17 = getelementptr inbounds %struct._bin, %struct._bin* %binary16, i32 0, i32 4
  %38 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %b_tile17, align 8, !tbaa !11
  %idx.ext18 = zext i32 %35 to i64
  %add.ptr19 = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %38, i64 %idx.ext18
  store %struct.gx_ht_tile_s* %add.ptr19, %struct.gx_ht_tile_s** %b_tile17, align 8, !tbaa !11
  %39 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #2
  %40 = bitcast %struct.gx_ht_tile_s** %tile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #2
  %41 = bitcast %struct.gx_device_color_s** %cptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gx_dc_ht_binary_save_dc(%struct.gx_device_color_s* %pdevc, %struct.gx_device_color_saved_s* %psdc) #0 {
entry:
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %psdc.addr = alloca %struct.gx_device_color_saved_s*, align 8
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gx_device_color_saved_s* %psdc, %struct.gx_device_color_saved_s** %psdc.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %0, i32 0, i32 0
  %1 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !20
  %2 = load %struct.gx_device_color_saved_s*, %struct.gx_device_color_saved_s** %psdc.addr, align 8, !tbaa !1
  %type1 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %2, i32 0, i32 0
  store %struct.gx_device_color_type_s* %1, %struct.gx_device_color_type_s** %type1, align 8, !tbaa !26
  %3 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %3, i32 0, i32 1
  %binary = bitcast %union._c* %colors to %struct._bin*
  %color = getelementptr inbounds %struct._bin, %struct._bin* %binary, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %color, i32 0, i64 0
  %4 = load i64, i64* %arrayidx, align 8, !tbaa !28
  %5 = load %struct.gx_device_color_saved_s*, %struct.gx_device_color_saved_s** %psdc.addr, align 8, !tbaa !1
  %colors2 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %5, i32 0, i32 1
  %binary3 = bitcast %union._svc* %colors2 to %struct._svbin*
  %b_color = getelementptr inbounds %struct._svbin, %struct._svbin* %binary3, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [2 x i64], [2 x i64]* %b_color, i32 0, i64 0
  store i64 %4, i64* %arrayidx4, align 8, !tbaa !28
  %6 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors5 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %6, i32 0, i32 1
  %binary6 = bitcast %union._c* %colors5 to %struct._bin*
  %color7 = getelementptr inbounds %struct._bin, %struct._bin* %binary6, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [2 x i64], [2 x i64]* %color7, i32 0, i64 1
  %7 = load i64, i64* %arrayidx8, align 8, !tbaa !28
  %8 = load %struct.gx_device_color_saved_s*, %struct.gx_device_color_saved_s** %psdc.addr, align 8, !tbaa !1
  %colors9 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %8, i32 0, i32 1
  %binary10 = bitcast %union._svc* %colors9 to %struct._svbin*
  %b_color11 = getelementptr inbounds %struct._svbin, %struct._svbin* %binary10, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [2 x i64], [2 x i64]* %b_color11, i32 0, i64 1
  store i64 %7, i64* %arrayidx12, align 8, !tbaa !28
  %9 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors13 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %9, i32 0, i32 1
  %binary14 = bitcast %union._c* %colors13 to %struct._bin*
  %b_level = getelementptr inbounds %struct._bin, %struct._bin* %binary14, i32 0, i32 2
  %10 = load i32, i32* %b_level, align 4, !tbaa !29
  %11 = load %struct.gx_device_color_saved_s*, %struct.gx_device_color_saved_s** %psdc.addr, align 8, !tbaa !1
  %colors15 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %11, i32 0, i32 1
  %binary16 = bitcast %union._svc* %colors15 to %struct._svbin*
  %b_level17 = getelementptr inbounds %struct._svbin, %struct._svbin* %binary16, i32 0, i32 1
  store i32 %10, i32* %b_level17, align 4, !tbaa !30
  %12 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors18 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %12, i32 0, i32 1
  %binary19 = bitcast %union._c* %colors18 to %struct._bin*
  %b_index = getelementptr inbounds %struct._bin, %struct._bin* %binary19, i32 0, i32 3
  %13 = load i32, i32* %b_index, align 4, !tbaa !32
  %14 = load %struct.gx_device_color_saved_s*, %struct.gx_device_color_saved_s** %psdc.addr, align 8, !tbaa !1
  %colors20 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %14, i32 0, i32 1
  %binary21 = bitcast %union._svc* %colors20 to %struct._svbin*
  %b_index22 = getelementptr inbounds %struct._svbin, %struct._svbin* %binary21, i32 0, i32 2
  store i32 %13, i32* %b_index22, align 4, !tbaa !33
  %15 = load %struct.gx_device_color_saved_s*, %struct.gx_device_color_saved_s** %psdc.addr, align 8, !tbaa !1
  %phase = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %15, i32 0, i32 2
  %16 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %phase23 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %16, i32 0, i32 2
  %17 = bitcast %struct.gs_int_point_s* %phase to i8*
  %18 = bitcast %struct.gs_int_point_s* %phase23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 4, i1 false), !tbaa.struct !34
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.gx_device_halftone_s* @gx_dc_ht_binary_get_dev_halftone(%struct.gx_device_color_s* %pdevc) #0 {
entry:
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %0, i32 0, i32 1
  %binary = bitcast %union._c* %colors to %struct._bin*
  %b_ht = getelementptr inbounds %struct._bin, %struct._bin* %binary, i32 0, i32 0
  %1 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %b_ht, align 8, !tbaa !7
  ret %struct.gx_device_halftone_s* %1
}

declare i32 @gx_dc_ht_get_phase(%struct.gx_device_color_s*, %struct.gs_int_point_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_ht_binary_load(%struct.gx_device_color_s* %pdevc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, i32 %select) #0 {
entry:
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %select.addr = alloca i32, align 4
  %component_index = alloca i32, align 4
  %porder = alloca %struct.gx_ht_order_s*, align 8
  %pcache = alloca %struct.gx_ht_cache_s*, align 8
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %select, i32* %select.addr, align 4, !tbaa !35
  %0 = bitcast i32* %component_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i32 0, i32 1
  %binary = bitcast %union._c* %colors to %struct._bin*
  %b_index = getelementptr inbounds %struct._bin, %struct._bin* %binary, i32 0, i32 3
  %2 = load i32, i32* %b_index, align 4, !tbaa !32
  store i32 %2, i32* %component_index, align 4, !tbaa !5
  %3 = bitcast %struct.gx_ht_order_s** %porder to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load i32, i32* %component_index, align 4, !tbaa !5
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors1 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %5, i32 0, i32 1
  %binary2 = bitcast %union._c* %colors1 to %struct._bin*
  %b_ht = getelementptr inbounds %struct._bin, %struct._bin* %binary2, i32 0, i32 0
  %6 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %b_ht, align 8, !tbaa !7
  %order = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %6, i32 0, i32 0
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load i32, i32* %component_index, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors3 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %8, i32 0, i32 1
  %binary4 = bitcast %union._c* %colors3 to %struct._bin*
  %b_ht5 = getelementptr inbounds %struct._bin, %struct._bin* %binary4, i32 0, i32 0
  %9 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %b_ht5, align 8, !tbaa !7
  %components = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %9, i32 0, i32 4
  %10 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components, align 8, !tbaa !36
  %arrayidx = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %10, i64 %idxprom
  %corder = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx, i32 0, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gx_ht_order_s* [ %order, %cond.true ], [ %corder, %cond.false ]
  store %struct.gx_ht_order_s* %cond, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %11 = bitcast %struct.gx_ht_cache_s** %pcache to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %cache = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %12, i32 0, i32 14
  %13 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %cache, align 8, !tbaa !44
  store %struct.gx_ht_cache_s* %13, %struct.gx_ht_cache_s** %pcache, align 8, !tbaa !1
  %14 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %pcache, align 8, !tbaa !1
  %order6 = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %14, i32 0, i32 4
  %bit_data = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %order6, i32 0, i32 13
  %15 = load i8*, i8** %bit_data, align 8, !tbaa !45
  %16 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %bit_data7 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %16, i32 0, i32 13
  %17 = load i8*, i8** %bit_data7, align 8, !tbaa !47
  %cmp8 = icmp ne i8* %15, %17
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %18 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %18, i32 0, i32 1
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !48
  %20 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %pcache, align 8, !tbaa !1
  %21 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  call void @gx_ht_init_cache(%struct.gs_memory_s* %19, %struct.gx_ht_cache_s* %20, %struct.gx_ht_order_s* %21) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %22 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors9 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %22, i32 0, i32 1
  %binary10 = bitcast %union._c* %colors9 to %struct._bin*
  %b_tile = getelementptr inbounds %struct._bin, %struct._bin* %binary10, i32 0, i32 4
  store %struct.gx_ht_tile_s* null, %struct.gx_ht_tile_s** %b_tile, align 8, !tbaa !11
  %23 = bitcast %struct.gx_ht_cache_s** %pcache to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #2
  %24 = bitcast %struct.gx_ht_order_s** %porder to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #2
  %25 = bitcast i32* %component_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_ht_binary_fill_rectangle(%struct.gx_device_color_s* %pdevc, i32 %x, i32 %y, i32 %w, i32 %h, %struct.gx_device_s* %dev, i32 %lop, %struct.gx_rop_source_s* %source) #0 {
entry:
  %retval = alloca i32, align 4
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %lop.addr = alloca i32, align 4
  %source.addr = alloca %struct.gx_rop_source_s*, align 8
  %no_source = alloca %struct.gx_rop_source_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !5
  store %struct.gx_rop_source_s* %source, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_rop_source_s* %no_source to i8*
  call void @llvm.lifetime.start(i64 48, i8* %0) #2
  %1 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %call = call i32 @gx_dc_ht_binary_load_cache(%struct.gx_device_color_s* %1) #4
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %3 = load i16, i16* %depth, align 2, !tbaa !60
  %conv = zext i16 %3 to i32
  %cmp = icmp sgt i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %and = and i32 %4, -513
  store i32 %and, i32* %lop.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %cmp2 = icmp eq %struct.gx_rop_source_s* %5, null
  br i1 %cmp2, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %if.end
  %6 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %and4 = and i32 %6, 563
  %cmp5 = icmp eq i32 %and4, 48
  br i1 %cmp5, label %if.then.7, label %if.end.18

if.then.7:                                        ; preds = %land.lhs.true
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 42
  %strip_tile_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 34
  %8 = load i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)** %strip_tile_rectangle, align 8, !tbaa !70
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %10 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %10, i32 0, i32 1
  %binary = bitcast %union._c* %colors to %struct._bin*
  %b_tile = getelementptr inbounds %struct._bin, %struct._bin* %binary, i32 0, i32 4
  %11 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %b_tile, align 8, !tbaa !11
  %tiles = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %11, i32 0, i32 0
  %12 = load i32, i32* %x.addr, align 4, !tbaa !5
  %13 = load i32, i32* %y.addr, align 4, !tbaa !5
  %14 = load i32, i32* %w.addr, align 4, !tbaa !5
  %15 = load i32, i32* %h.addr, align 4, !tbaa !5
  %16 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors8 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %16, i32 0, i32 1
  %binary9 = bitcast %union._c* %colors8 to %struct._bin*
  %color = getelementptr inbounds %struct._bin, %struct._bin* %binary9, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %color, i32 0, i64 0
  %17 = load i64, i64* %arrayidx, align 8, !tbaa !28
  %18 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors10 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %18, i32 0, i32 1
  %binary11 = bitcast %union._c* %colors10 to %struct._bin*
  %color12 = getelementptr inbounds %struct._bin, %struct._bin* %binary11, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [2 x i64], [2 x i64]* %color12, i32 0, i64 1
  %19 = load i64, i64* %arrayidx13, align 8, !tbaa !28
  %20 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %phase = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %20, i32 0, i32 2
  %x14 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 0
  %21 = load i32, i32* %x14, align 4, !tbaa !71
  %22 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %phase15 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %22, i32 0, i32 2
  %y16 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase15, i32 0, i32 1
  %23 = load i32, i32* %y16, align 4, !tbaa !72
  %call17 = call i32 %8(%struct.gx_device_s* %9, %struct.gx_strip_bitmap_s* %tiles, i32 %12, i32 %13, i32 %14, i32 %15, i64 %17, i64 %19, i32 %21, i32 %23) #4
  store i32 %call17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %land.lhs.true, %if.end
  %24 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors19 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %24, i32 0, i32 1
  %binary20 = bitcast %union._c* %colors19 to %struct._bin*
  %color21 = getelementptr inbounds %struct._bin, %struct._bin* %binary20, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [2 x i64], [2 x i64]* %color21, i32 0, i64 0
  %25 = load i64, i64* %arrayidx22, align 8, !tbaa !28
  %cmp23 = icmp eq i64 %25, -1
  br i1 %cmp23, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.end.18
  %26 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %and26 = and i32 %26, -16
  %or = or i32 %and26, 10
  store i32 %or, i32* %lop.addr, align 4, !tbaa !5
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.end.18
  %27 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors28 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %27, i32 0, i32 1
  %binary29 = bitcast %union._c* %colors28 to %struct._bin*
  %color30 = getelementptr inbounds %struct._bin, %struct._bin* %binary29, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [2 x i64], [2 x i64]* %color30, i32 0, i64 1
  %28 = load i64, i64* %arrayidx31, align 8, !tbaa !28
  %cmp32 = icmp eq i64 %28, -1
  br i1 %cmp32, label %if.then.34, label %if.end.37

if.then.34:                                       ; preds = %if.end.27
  %29 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %and35 = and i32 %29, -241
  %or36 = or i32 %and35, 160
  store i32 %or36, i32* %lop.addr, align 4, !tbaa !5
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.34, %if.end.27
  %30 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %cmp38 = icmp eq %struct.gx_rop_source_s* %30, null
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end.37
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  call void @gx_set_rop_no_source(%struct.gx_rop_source_s** %source.addr, %struct.gx_rop_source_s* %no_source, %struct.gx_device_s* %31) #4
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %if.end.37
  %32 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %planar_height = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %32, i32 0, i32 5
  %33 = load i32, i32* %planar_height, align 4, !tbaa !73
  %cmp42 = icmp eq i32 %33, 0
  br i1 %cmp42, label %if.then.44, label %if.else

if.then.44:                                       ; preds = %if.end.41
  %34 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs45 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %34, i32 0, i32 42
  %strip_copy_rop = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs45, i32 0, i32 35
  %35 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)** %strip_copy_rop, align 8, !tbaa !75
  %36 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %37 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %sdata = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %37, i32 0, i32 0
  %38 = load i8*, i8** %sdata, align 8, !tbaa !76
  %39 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %sourcex = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %39, i32 0, i32 1
  %40 = load i32, i32* %sourcex, align 4, !tbaa !77
  %41 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %sraster = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %41, i32 0, i32 2
  %42 = load i32, i32* %sraster, align 4, !tbaa !78
  %43 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %43, i32 0, i32 3
  %44 = load i64, i64* %id, align 8, !tbaa !79
  %45 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %use_scolors = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %45, i32 0, i32 6
  %46 = load i32, i32* %use_scolors, align 4, !tbaa !80
  %tobool = icmp ne i32 %46, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.44
  %47 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %scolors = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %47, i32 0, i32 4
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %scolors, i32 0, i32 0
  br label %cond.end

cond.false:                                       ; preds = %if.then.44
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64* [ %arraydecay, %cond.true ], [ null, %cond.false ]
  %48 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors46 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %48, i32 0, i32 1
  %binary47 = bitcast %union._c* %colors46 to %struct._bin*
  %b_tile48 = getelementptr inbounds %struct._bin, %struct._bin* %binary47, i32 0, i32 4
  %49 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %b_tile48, align 8, !tbaa !11
  %tiles49 = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %49, i32 0, i32 0
  %50 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors50 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %50, i32 0, i32 1
  %binary51 = bitcast %union._c* %colors50 to %struct._bin*
  %color52 = getelementptr inbounds %struct._bin, %struct._bin* %binary51, i32 0, i32 1
  %arraydecay53 = getelementptr inbounds [2 x i64], [2 x i64]* %color52, i32 0, i32 0
  %51 = load i32, i32* %x.addr, align 4, !tbaa !5
  %52 = load i32, i32* %y.addr, align 4, !tbaa !5
  %53 = load i32, i32* %w.addr, align 4, !tbaa !5
  %54 = load i32, i32* %h.addr, align 4, !tbaa !5
  %55 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %phase54 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %55, i32 0, i32 2
  %x55 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase54, i32 0, i32 0
  %56 = load i32, i32* %x55, align 4, !tbaa !71
  %57 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %phase56 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %57, i32 0, i32 2
  %y57 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase56, i32 0, i32 1
  %58 = load i32, i32* %y57, align 4, !tbaa !72
  %59 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call58 = call i32 %35(%struct.gx_device_s* %36, i8* %38, i32 %40, i32 %42, i64 %44, i64* %cond, %struct.gx_strip_bitmap_s* %tiles49, i64* %arraydecay53, i32 %51, i32 %52, i32 %53, i32 %54, i32 %56, i32 %58, i32 %59) #4
  store i32 %call58, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.end.41
  %60 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs59 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %60, i32 0, i32 42
  %strip_copy_rop2 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs59, i32 0, i32 69
  %61 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)** %strip_copy_rop2, align 8, !tbaa !81
  %62 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %63 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %sdata60 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %63, i32 0, i32 0
  %64 = load i8*, i8** %sdata60, align 8, !tbaa !76
  %65 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %sourcex61 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %65, i32 0, i32 1
  %66 = load i32, i32* %sourcex61, align 4, !tbaa !77
  %67 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %sraster62 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %67, i32 0, i32 2
  %68 = load i32, i32* %sraster62, align 4, !tbaa !78
  %69 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %id63 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %69, i32 0, i32 3
  %70 = load i64, i64* %id63, align 8, !tbaa !79
  %71 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %use_scolors64 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %71, i32 0, i32 6
  %72 = load i32, i32* %use_scolors64, align 4, !tbaa !80
  %tobool65 = icmp ne i32 %72, 0
  br i1 %tobool65, label %cond.true.66, label %cond.false.69

cond.true.66:                                     ; preds = %if.else
  %73 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %scolors67 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %73, i32 0, i32 4
  %arraydecay68 = getelementptr inbounds [2 x i64], [2 x i64]* %scolors67, i32 0, i32 0
  br label %cond.end.70

cond.false.69:                                    ; preds = %if.else
  br label %cond.end.70

cond.end.70:                                      ; preds = %cond.false.69, %cond.true.66
  %cond71 = phi i64* [ %arraydecay68, %cond.true.66 ], [ null, %cond.false.69 ]
  %74 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors72 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %74, i32 0, i32 1
  %binary73 = bitcast %union._c* %colors72 to %struct._bin*
  %b_tile74 = getelementptr inbounds %struct._bin, %struct._bin* %binary73, i32 0, i32 4
  %75 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %b_tile74, align 8, !tbaa !11
  %tiles75 = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %75, i32 0, i32 0
  %76 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors76 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %76, i32 0, i32 1
  %binary77 = bitcast %union._c* %colors76 to %struct._bin*
  %color78 = getelementptr inbounds %struct._bin, %struct._bin* %binary77, i32 0, i32 1
  %arraydecay79 = getelementptr inbounds [2 x i64], [2 x i64]* %color78, i32 0, i32 0
  %77 = load i32, i32* %x.addr, align 4, !tbaa !5
  %78 = load i32, i32* %y.addr, align 4, !tbaa !5
  %79 = load i32, i32* %w.addr, align 4, !tbaa !5
  %80 = load i32, i32* %h.addr, align 4, !tbaa !5
  %81 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %phase80 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %81, i32 0, i32 2
  %x81 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase80, i32 0, i32 0
  %82 = load i32, i32* %x81, align 4, !tbaa !71
  %83 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %phase82 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %83, i32 0, i32 2
  %y83 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase82, i32 0, i32 1
  %84 = load i32, i32* %y83, align 4, !tbaa !72
  %85 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %86 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %planar_height84 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %86, i32 0, i32 5
  %87 = load i32, i32* %planar_height84, align 4, !tbaa !73
  %call85 = call i32 %61(%struct.gx_device_s* %62, i8* %64, i32 %66, i32 %68, i64 %70, i64* %cond71, %struct.gx_strip_bitmap_s* %tiles75, i64* %arraydecay79, i32 %77, i32 %78, i32 %79, i32 %80, i32 %82, i32 %84, i32 %85, i32 %87) #4
  store i32 %call85, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end.70, %cond.end, %if.then.7
  %88 = bitcast %struct.gx_rop_source_s* %no_source to i8*
  call void @llvm.lifetime.end(i64 48, i8* %88) #2
  %89 = load i32, i32* %retval
  ret i32 %89
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_ht_binary_fill_masked(%struct.gx_device_color_s* %pdevc, i8* %data, i32 %data_x, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, %struct.gx_device_s* %dev, i32 %lop, i32 %invert) #0 {
entry:
  %retval = alloca i32, align 4
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %data.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %lop.addr = alloca i32, align 4
  %invert.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !28
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !5
  store i32 %invert, i32* %invert.addr, align 4, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %call = call i32 @gx_dc_ht_binary_load_cache(%struct.gx_device_color_s* %1) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %2 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %6 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %7 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %8 = load i64, i64* %id.addr, align 8, !tbaa !28
  %9 = load i32, i32* %x.addr, align 4, !tbaa !5
  %10 = load i32, i32* %y.addr, align 4, !tbaa !5
  %11 = load i32, i32* %w.addr, align 4, !tbaa !5
  %12 = load i32, i32* %h.addr, align 4, !tbaa !5
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %14 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %15 = load i32, i32* %invert.addr, align 4, !tbaa !5
  %call1 = call i32 @gx_dc_default_fill_masked(%struct.gx_device_color_s* %4, i8* %5, i32 %6, i32 %7, i64 %8, i32 %9, i32 %10, i32 %11, i32 %12, %struct.gx_device_s* %13, i32 %14, i32 %15) #4
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #2
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_ht_binary_equal(%struct.gx_device_color_s* %pdevc1, %struct.gx_device_color_s* %pdevc2) #0 {
entry:
  %pdevc1.addr = alloca %struct.gx_device_color_s*, align 8
  %pdevc2.addr = alloca %struct.gx_device_color_s*, align 8
  store %struct.gx_device_color_s* %pdevc1, %struct.gx_device_color_s** %pdevc1.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdevc2, %struct.gx_device_color_s** %pdevc2.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc2.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %0, i32 0, i32 0
  %1 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !20
  %2 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc1.addr, align 8, !tbaa !1
  %type1 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %2, i32 0, i32 0
  %3 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type1, align 8, !tbaa !20
  %cmp = icmp eq %struct.gx_device_color_type_s* %1, %3
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc1.addr, align 8, !tbaa !1
  %phase = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %4, i32 0, i32 2
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 0
  %5 = load i32, i32* %x, align 4, !tbaa !71
  %6 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc2.addr, align 8, !tbaa !1
  %phase2 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %6, i32 0, i32 2
  %x3 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase2, i32 0, i32 0
  %7 = load i32, i32* %x3, align 4, !tbaa !71
  %cmp4 = icmp eq i32 %5, %7
  br i1 %cmp4, label %land.lhs.true.5, label %land.end

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %8 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc1.addr, align 8, !tbaa !1
  %phase6 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %8, i32 0, i32 2
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase6, i32 0, i32 1
  %9 = load i32, i32* %y, align 4, !tbaa !72
  %10 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc2.addr, align 8, !tbaa !1
  %phase7 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %10, i32 0, i32 2
  %y8 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase7, i32 0, i32 1
  %11 = load i32, i32* %y8, align 4, !tbaa !72
  %cmp9 = icmp eq i32 %9, %11
  br i1 %cmp9, label %land.lhs.true.10, label %land.end

land.lhs.true.10:                                 ; preds = %land.lhs.true.5
  %12 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc1.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %12, i32 0, i32 1
  %binary = bitcast %union._c* %colors to %struct._bin*
  %color = getelementptr inbounds %struct._bin, %struct._bin* %binary, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %color, i32 0, i64 0
  %13 = load i64, i64* %arrayidx, align 8, !tbaa !28
  %14 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc2.addr, align 8, !tbaa !1
  %colors11 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %14, i32 0, i32 1
  %binary12 = bitcast %union._c* %colors11 to %struct._bin*
  %color13 = getelementptr inbounds %struct._bin, %struct._bin* %binary12, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [2 x i64], [2 x i64]* %color13, i32 0, i64 0
  %15 = load i64, i64* %arrayidx14, align 8, !tbaa !28
  %cmp15 = icmp eq i64 %13, %15
  br i1 %cmp15, label %land.lhs.true.16, label %land.end

land.lhs.true.16:                                 ; preds = %land.lhs.true.10
  %16 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc1.addr, align 8, !tbaa !1
  %colors17 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %16, i32 0, i32 1
  %binary18 = bitcast %union._c* %colors17 to %struct._bin*
  %color19 = getelementptr inbounds %struct._bin, %struct._bin* %binary18, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [2 x i64], [2 x i64]* %color19, i32 0, i64 1
  %17 = load i64, i64* %arrayidx20, align 8, !tbaa !28
  %18 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc2.addr, align 8, !tbaa !1
  %colors21 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %18, i32 0, i32 1
  %binary22 = bitcast %union._c* %colors21 to %struct._bin*
  %color23 = getelementptr inbounds %struct._bin, %struct._bin* %binary22, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [2 x i64], [2 x i64]* %color23, i32 0, i64 1
  %19 = load i64, i64* %arrayidx24, align 8, !tbaa !28
  %cmp25 = icmp eq i64 %17, %19
  br i1 %cmp25, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.16
  %20 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc1.addr, align 8, !tbaa !1
  %colors26 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %20, i32 0, i32 1
  %binary27 = bitcast %union._c* %colors26 to %struct._bin*
  %b_level = getelementptr inbounds %struct._bin, %struct._bin* %binary27, i32 0, i32 2
  %21 = load i32, i32* %b_level, align 4, !tbaa !29
  %22 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc2.addr, align 8, !tbaa !1
  %colors28 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %22, i32 0, i32 1
  %binary29 = bitcast %union._c* %colors28 to %struct._bin*
  %b_level30 = getelementptr inbounds %struct._bin, %struct._bin* %binary29, i32 0, i32 2
  %23 = load i32, i32* %b_level30, align 4, !tbaa !29
  %cmp31 = icmp eq i32 %21, %23
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.16, %land.lhs.true.10, %land.lhs.true.5, %land.lhs.true, %entry
  %24 = phi i1 [ false, %land.lhs.true.16 ], [ false, %land.lhs.true.10 ], [ false, %land.lhs.true.5 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp31, %land.rhs ]
  %land.ext = zext i1 %24 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_ht_binary_write(%struct.gx_device_color_s* %pdevc, %struct.gx_device_color_saved_s* %psdc0, %struct.gx_device_s* %dev, i64 %offset, i8* %pdata, i32* %psize) #0 {
entry:
  %retval = alloca i32, align 4
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %psdc0.addr = alloca %struct.gx_device_color_saved_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %offset.addr = alloca i64, align 8
  %pdata.addr = alloca i8*, align 8
  %psize.addr = alloca i32*, align 8
  %req_size = alloca i32, align 4
  %flag_bits = alloca i32, align 4
  %tmp_size = alloca i32, align 4
  %pdata0 = alloca i8*, align 8
  %psdc = alloca %struct.gx_device_color_saved_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gx_device_color_saved_s* %psdc0, %struct.gx_device_color_saved_s** %psdc0.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %offset, i64* %offset.addr, align 8, !tbaa !28
  store i8* %pdata, i8** %pdata.addr, align 8, !tbaa !1
  store i32* %psize, i32** %psize.addr, align 8, !tbaa !1
  %0 = bitcast i32* %req_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 1, i32* %req_size, align 4, !tbaa !5
  %1 = bitcast i32* %flag_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 0, i32* %flag_bits, align 4, !tbaa !5
  %2 = bitcast i32* %tmp_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i8** %pdata0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  store i8* %4, i8** %pdata0, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_color_saved_s** %psdc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load %struct.gx_device_color_saved_s*, %struct.gx_device_color_saved_s** %psdc0.addr, align 8, !tbaa !1
  store %struct.gx_device_color_saved_s* %6, %struct.gx_device_color_saved_s** %psdc, align 8, !tbaa !1
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load i64, i64* %offset.addr, align 8, !tbaa !28
  %cmp = icmp ne i64 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.gx_device_color_saved_s*, %struct.gx_device_color_saved_s** %psdc, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.gx_device_color_saved_s* %9, null
  br i1 %cmp1, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %if.end
  %10 = load %struct.gx_device_color_saved_s*, %struct.gx_device_color_saved_s** %psdc, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %10, i32 0, i32 0
  %11 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !26
  %12 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type2 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %12, i32 0, i32 0
  %13 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type2, align 8, !tbaa !20
  %cmp3 = icmp ne %struct.gx_device_color_type_s* %11, %13
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %land.lhs.true
  store %struct.gx_device_color_saved_s* null, %struct.gx_device_color_saved_s** %psdc, align 8, !tbaa !1
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %land.lhs.true, %if.end
  %14 = load %struct.gx_device_color_saved_s*, %struct.gx_device_color_saved_s** %psdc, align 8, !tbaa !1
  %cmp6 = icmp eq %struct.gx_device_color_saved_s* %14, null
  br i1 %cmp6, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.5
  %15 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %15, i32 0, i32 1
  %binary = bitcast %union._c* %colors to %struct._bin*
  %color = getelementptr inbounds %struct._bin, %struct._bin* %binary, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %color, i32 0, i64 0
  %16 = load i64, i64* %arrayidx, align 8, !tbaa !28
  %17 = load %struct.gx_device_color_saved_s*, %struct.gx_device_color_saved_s** %psdc, align 8, !tbaa !1
  %colors7 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %17, i32 0, i32 1
  %binary8 = bitcast %union._svc* %colors7 to %struct._svbin*
  %b_color = getelementptr inbounds %struct._svbin, %struct._svbin* %binary8, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [2 x i64], [2 x i64]* %b_color, i32 0, i64 0
  %18 = load i64, i64* %arrayidx9, align 8, !tbaa !28
  %cmp10 = icmp ne i64 %16, %18
  br i1 %cmp10, label %if.then.11, label %if.end.16

if.then.11:                                       ; preds = %lor.lhs.false, %if.end.5
  %19 = load i32, i32* %flag_bits, align 4, !tbaa !5
  %or = or i32 %19, 1
  store i32 %or, i32* %flag_bits, align 4, !tbaa !5
  store i32 0, i32* %tmp_size, align 4, !tbaa !5
  %20 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors12 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %20, i32 0, i32 1
  %binary13 = bitcast %union._c* %colors12 to %struct._bin*
  %color14 = getelementptr inbounds %struct._bin, %struct._bin* %binary13, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [2 x i64], [2 x i64]* %color14, i32 0, i64 0
  %21 = load i64, i64* %arrayidx15, align 8, !tbaa !28
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %23 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %call = call i32 @gx_dc_write_color(i64 %21, %struct.gx_device_s* %22, i8* %23, i32* %tmp_size) #4
  %24 = load i32, i32* %tmp_size, align 4, !tbaa !5
  %25 = load i32, i32* %req_size, align 4, !tbaa !5
  %add = add i32 %25, %24
  store i32 %add, i32* %req_size, align 4, !tbaa !5
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.11, %lor.lhs.false
  %26 = load %struct.gx_device_color_saved_s*, %struct.gx_device_color_saved_s** %psdc, align 8, !tbaa !1
  %cmp17 = icmp eq %struct.gx_device_color_saved_s* %26, null
  br i1 %cmp17, label %if.then.28, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %if.end.16
  %27 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors19 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %27, i32 0, i32 1
  %binary20 = bitcast %union._c* %colors19 to %struct._bin*
  %color21 = getelementptr inbounds %struct._bin, %struct._bin* %binary20, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [2 x i64], [2 x i64]* %color21, i32 0, i64 1
  %28 = load i64, i64* %arrayidx22, align 8, !tbaa !28
  %29 = load %struct.gx_device_color_saved_s*, %struct.gx_device_color_saved_s** %psdc, align 8, !tbaa !1
  %colors23 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %29, i32 0, i32 1
  %binary24 = bitcast %union._svc* %colors23 to %struct._svbin*
  %b_color25 = getelementptr inbounds %struct._svbin, %struct._svbin* %binary24, i32 0, i32 0
  %arrayidx26 = getelementptr inbounds [2 x i64], [2 x i64]* %b_color25, i32 0, i64 1
  %30 = load i64, i64* %arrayidx26, align 8, !tbaa !28
  %cmp27 = icmp ne i64 %28, %30
  br i1 %cmp27, label %if.then.28, label %if.end.36

if.then.28:                                       ; preds = %lor.lhs.false.18, %if.end.16
  %31 = load i32, i32* %flag_bits, align 4, !tbaa !5
  %or29 = or i32 %31, 2
  store i32 %or29, i32* %flag_bits, align 4, !tbaa !5
  store i32 0, i32* %tmp_size, align 4, !tbaa !5
  %32 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors30 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %32, i32 0, i32 1
  %binary31 = bitcast %union._c* %colors30 to %struct._bin*
  %color32 = getelementptr inbounds %struct._bin, %struct._bin* %binary31, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [2 x i64], [2 x i64]* %color32, i32 0, i64 1
  %33 = load i64, i64* %arrayidx33, align 8, !tbaa !28
  %34 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %35 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %call34 = call i32 @gx_dc_write_color(i64 %33, %struct.gx_device_s* %34, i8* %35, i32* %tmp_size) #4
  %36 = load i32, i32* %tmp_size, align 4, !tbaa !5
  %37 = load i32, i32* %req_size, align 4, !tbaa !5
  %add35 = add i32 %37, %36
  store i32 %add35, i32* %req_size, align 4, !tbaa !5
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.28, %lor.lhs.false.18
  %38 = load %struct.gx_device_color_saved_s*, %struct.gx_device_color_saved_s** %psdc, align 8, !tbaa !1
  %cmp37 = icmp eq %struct.gx_device_color_saved_s* %38, null
  br i1 %cmp37, label %if.then.45, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %if.end.36
  %39 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors39 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %39, i32 0, i32 1
  %binary40 = bitcast %union._c* %colors39 to %struct._bin*
  %b_level = getelementptr inbounds %struct._bin, %struct._bin* %binary40, i32 0, i32 2
  %40 = load i32, i32* %b_level, align 4, !tbaa !29
  %41 = load %struct.gx_device_color_saved_s*, %struct.gx_device_color_saved_s** %psdc, align 8, !tbaa !1
  %colors41 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %41, i32 0, i32 1
  %binary42 = bitcast %union._svc* %colors41 to %struct._svbin*
  %b_level43 = getelementptr inbounds %struct._svbin, %struct._svbin* %binary42, i32 0, i32 1
  %42 = load i32, i32* %b_level43, align 4, !tbaa !30
  %cmp44 = icmp ne i32 %40, %42
  br i1 %cmp44, label %if.then.45, label %if.end.64

if.then.45:                                       ; preds = %lor.lhs.false.38, %if.end.36
  %43 = load i32, i32* %flag_bits, align 4, !tbaa !5
  %or46 = or i32 %43, 4
  store i32 %or46, i32* %flag_bits, align 4, !tbaa !5
  %44 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors47 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %44, i32 0, i32 1
  %binary48 = bitcast %union._c* %colors47 to %struct._bin*
  %b_level49 = getelementptr inbounds %struct._bin, %struct._bin* %binary48, i32 0, i32 2
  %45 = load i32, i32* %b_level49, align 4, !tbaa !29
  %cmp50 = icmp ult i32 %45, 128
  br i1 %cmp50, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.45
  br label %cond.end.61

cond.false:                                       ; preds = %if.then.45
  %46 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors51 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %46, i32 0, i32 1
  %binary52 = bitcast %union._c* %colors51 to %struct._bin*
  %b_level53 = getelementptr inbounds %struct._bin, %struct._bin* %binary52, i32 0, i32 2
  %47 = load i32, i32* %b_level53, align 4, !tbaa !29
  %cmp54 = icmp ult i32 %47, 16384
  br i1 %cmp54, label %cond.true.55, label %cond.false.56

cond.true.55:                                     ; preds = %cond.false
  br label %cond.end

cond.false.56:                                    ; preds = %cond.false
  %48 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors57 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %48, i32 0, i32 1
  %binary58 = bitcast %union._c* %colors57 to %struct._bin*
  %b_level59 = getelementptr inbounds %struct._bin, %struct._bin* %binary58, i32 0, i32 2
  %49 = load i32, i32* %b_level59, align 4, !tbaa !29
  %call60 = call i32 @enc_u_size_uint(i32 %49) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.56, %cond.true.55
  %cond = phi i32 [ 2, %cond.true.55 ], [ %call60, %cond.false.56 ]
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.end, %cond.true
  %cond62 = phi i32 [ 1, %cond.true ], [ %cond, %cond.end ]
  %50 = load i32, i32* %req_size, align 4, !tbaa !5
  %add63 = add nsw i32 %50, %cond62
  store i32 %add63, i32* %req_size, align 4, !tbaa !5
  br label %if.end.64

if.end.64:                                        ; preds = %cond.end.61, %lor.lhs.false.38
  %51 = load %struct.gx_device_color_saved_s*, %struct.gx_device_color_saved_s** %psdc, align 8, !tbaa !1
  %cmp65 = icmp eq %struct.gx_device_color_saved_s* %51, null
  br i1 %cmp65, label %if.then.73, label %lor.lhs.false.66

lor.lhs.false.66:                                 ; preds = %if.end.64
  %52 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors67 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %52, i32 0, i32 1
  %binary68 = bitcast %union._c* %colors67 to %struct._bin*
  %b_index = getelementptr inbounds %struct._bin, %struct._bin* %binary68, i32 0, i32 3
  %53 = load i32, i32* %b_index, align 4, !tbaa !32
  %54 = load %struct.gx_device_color_saved_s*, %struct.gx_device_color_saved_s** %psdc, align 8, !tbaa !1
  %colors69 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %54, i32 0, i32 1
  %binary70 = bitcast %union._svc* %colors69 to %struct._svbin*
  %b_index71 = getelementptr inbounds %struct._svbin, %struct._svbin* %binary70, i32 0, i32 2
  %55 = load i32, i32* %b_index71, align 4, !tbaa !33
  %cmp72 = icmp ne i32 %53, %55
  br i1 %cmp72, label %if.then.73, label %if.end.76

if.then.73:                                       ; preds = %lor.lhs.false.66, %if.end.64
  %56 = load i32, i32* %flag_bits, align 4, !tbaa !5
  %or74 = or i32 %56, 8
  store i32 %or74, i32* %flag_bits, align 4, !tbaa !5
  %57 = load i32, i32* %req_size, align 4, !tbaa !5
  %add75 = add nsw i32 %57, 1
  store i32 %add75, i32* %req_size, align 4, !tbaa !5
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.73, %lor.lhs.false.66
  %58 = load i32, i32* %flag_bits, align 4, !tbaa !5
  %cmp77 = icmp eq i32 %58, 0
  br i1 %cmp77, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.end.76
  %59 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  store i32 0, i32* %59, align 4, !tbaa !5
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.79:                                        ; preds = %if.end.76
  %60 = load i32, i32* %req_size, align 4, !tbaa !5
  %61 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  %62 = load i32, i32* %61, align 4, !tbaa !5
  %cmp80 = icmp ugt i32 %60, %62
  br i1 %cmp80, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %if.end.79
  %63 = load i32, i32* %req_size, align 4, !tbaa !5
  %64 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  store i32 %63, i32* %64, align 4, !tbaa !5
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.82:                                        ; preds = %if.end.79
  %65 = load i32, i32* %flag_bits, align 4, !tbaa !5
  %conv = trunc i32 %65 to i8
  %66 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %incdec.ptr, i8** %pdata.addr, align 8, !tbaa !1
  store i8 %conv, i8* %66, align 1, !tbaa !35
  %67 = load i32, i32* %flag_bits, align 4, !tbaa !5
  %and = and i32 %67, 1
  %cmp83 = icmp ne i32 %and, 0
  br i1 %cmp83, label %if.then.85, label %if.end.97

if.then.85:                                       ; preds = %if.end.82
  %68 = load i32, i32* %req_size, align 4, !tbaa !5
  %conv86 = sext i32 %68 to i64
  %69 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %70 = load i8*, i8** %pdata0, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %69 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %70 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = sub nsw i64 %conv86, %sub.ptr.sub
  %conv87 = trunc i64 %sub to i32
  store i32 %conv87, i32* %tmp_size, align 4, !tbaa !5
  %71 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors88 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %71, i32 0, i32 1
  %binary89 = bitcast %union._c* %colors88 to %struct._bin*
  %color90 = getelementptr inbounds %struct._bin, %struct._bin* %binary89, i32 0, i32 1
  %arrayidx91 = getelementptr inbounds [2 x i64], [2 x i64]* %color90, i32 0, i64 0
  %72 = load i64, i64* %arrayidx91, align 8, !tbaa !28
  %73 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %74 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %call92 = call i32 @gx_dc_write_color(i64 %72, %struct.gx_device_s* %73, i8* %74, i32* %tmp_size) #4
  store i32 %call92, i32* %code, align 4, !tbaa !5
  %75 = load i32, i32* %code, align 4, !tbaa !5
  %cmp93 = icmp slt i32 %75, 0
  br i1 %cmp93, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %if.then.85
  %76 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %76, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.96:                                        ; preds = %if.then.85
  %77 = load i32, i32* %tmp_size, align 4, !tbaa !5
  %78 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %idx.ext = zext i32 %77 to i64
  %add.ptr = getelementptr inbounds i8, i8* %78, i64 %idx.ext
  store i8* %add.ptr, i8** %pdata.addr, align 8, !tbaa !1
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.end.82
  %79 = load i32, i32* %flag_bits, align 4, !tbaa !5
  %and98 = and i32 %79, 2
  %cmp99 = icmp ne i32 %and98, 0
  br i1 %cmp99, label %if.then.101, label %if.end.119

if.then.101:                                      ; preds = %if.end.97
  %80 = load i32, i32* %req_size, align 4, !tbaa !5
  %conv102 = sext i32 %80 to i64
  %81 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %82 = load i8*, i8** %pdata0, align 8, !tbaa !1
  %sub.ptr.lhs.cast103 = ptrtoint i8* %81 to i64
  %sub.ptr.rhs.cast104 = ptrtoint i8* %82 to i64
  %sub.ptr.sub105 = sub i64 %sub.ptr.lhs.cast103, %sub.ptr.rhs.cast104
  %sub106 = sub nsw i64 %conv102, %sub.ptr.sub105
  %conv107 = trunc i64 %sub106 to i32
  store i32 %conv107, i32* %tmp_size, align 4, !tbaa !5
  %83 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors108 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %83, i32 0, i32 1
  %binary109 = bitcast %union._c* %colors108 to %struct._bin*
  %color110 = getelementptr inbounds %struct._bin, %struct._bin* %binary109, i32 0, i32 1
  %arrayidx111 = getelementptr inbounds [2 x i64], [2 x i64]* %color110, i32 0, i64 1
  %84 = load i64, i64* %arrayidx111, align 8, !tbaa !28
  %85 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %86 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %call112 = call i32 @gx_dc_write_color(i64 %84, %struct.gx_device_s* %85, i8* %86, i32* %tmp_size) #4
  store i32 %call112, i32* %code, align 4, !tbaa !5
  %87 = load i32, i32* %code, align 4, !tbaa !5
  %cmp113 = icmp slt i32 %87, 0
  br i1 %cmp113, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %if.then.101
  %88 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %88, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.116:                                       ; preds = %if.then.101
  %89 = load i32, i32* %tmp_size, align 4, !tbaa !5
  %90 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %idx.ext117 = zext i32 %89 to i64
  %add.ptr118 = getelementptr inbounds i8, i8* %90, i64 %idx.ext117
  store i8* %add.ptr118, i8** %pdata.addr, align 8, !tbaa !1
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.116, %if.end.97
  %91 = load i32, i32* %flag_bits, align 4, !tbaa !5
  %and120 = and i32 %91, 4
  %cmp121 = icmp ne i32 %and120, 0
  br i1 %cmp121, label %if.then.123, label %if.end.160

if.then.123:                                      ; preds = %if.end.119
  br label %do.body

do.body:                                          ; preds = %if.then.123
  %92 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors124 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %92, i32 0, i32 1
  %binary125 = bitcast %union._c* %colors124 to %struct._bin*
  %b_level126 = getelementptr inbounds %struct._bin, %struct._bin* %binary125, i32 0, i32 2
  %93 = load i32, i32* %b_level126, align 4, !tbaa !29
  %cmp127 = icmp ult i32 %93, 128
  br i1 %cmp127, label %if.then.129, label %if.else

if.then.129:                                      ; preds = %do.body
  %94 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors130 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %94, i32 0, i32 1
  %binary131 = bitcast %union._c* %colors130 to %struct._bin*
  %b_level132 = getelementptr inbounds %struct._bin, %struct._bin* %binary131, i32 0, i32 2
  %95 = load i32, i32* %b_level132, align 4, !tbaa !29
  %conv133 = trunc i32 %95 to i8
  %96 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %incdec.ptr134 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %incdec.ptr134, i8** %pdata.addr, align 8, !tbaa !1
  store i8 %conv133, i8* %96, align 1, !tbaa !35
  br label %if.end.159

if.else:                                          ; preds = %do.body
  %97 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors135 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %97, i32 0, i32 1
  %binary136 = bitcast %union._c* %colors135 to %struct._bin*
  %b_level137 = getelementptr inbounds %struct._bin, %struct._bin* %binary136, i32 0, i32 2
  %98 = load i32, i32* %b_level137, align 4, !tbaa !29
  %cmp138 = icmp ult i32 %98, 16384
  br i1 %cmp138, label %if.then.140, label %if.else.153

if.then.140:                                      ; preds = %if.else
  %99 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors141 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %99, i32 0, i32 1
  %binary142 = bitcast %union._c* %colors141 to %struct._bin*
  %b_level143 = getelementptr inbounds %struct._bin, %struct._bin* %binary142, i32 0, i32 2
  %100 = load i32, i32* %b_level143, align 4, !tbaa !29
  %and144 = and i32 %100, 127
  %or145 = or i32 128, %and144
  %conv146 = trunc i32 %or145 to i8
  %101 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %incdec.ptr147 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %incdec.ptr147, i8** %pdata.addr, align 8, !tbaa !1
  store i8 %conv146, i8* %101, align 1, !tbaa !35
  %102 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors148 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %102, i32 0, i32 1
  %binary149 = bitcast %union._c* %colors148 to %struct._bin*
  %b_level150 = getelementptr inbounds %struct._bin, %struct._bin* %binary149, i32 0, i32 2
  %103 = load i32, i32* %b_level150, align 4, !tbaa !29
  %shr = lshr i32 %103, 7
  %conv151 = trunc i32 %shr to i8
  %104 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %incdec.ptr152 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %incdec.ptr152, i8** %pdata.addr, align 8, !tbaa !1
  store i8 %conv151, i8* %104, align 1, !tbaa !35
  br label %if.end.158

if.else.153:                                      ; preds = %if.else
  %105 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors154 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %105, i32 0, i32 1
  %binary155 = bitcast %union._c* %colors154 to %struct._bin*
  %b_level156 = getelementptr inbounds %struct._bin, %struct._bin* %binary155, i32 0, i32 2
  %106 = load i32, i32* %b_level156, align 4, !tbaa !29
  %107 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %call157 = call i8* @enc_u_put_uint(i32 %106, i8* %107) #4
  store i8* %call157, i8** %pdata.addr, align 8, !tbaa !1
  br label %if.end.158

if.end.158:                                       ; preds = %if.else.153, %if.then.140
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.158, %if.then.129
  br label %do.cond

do.cond:                                          ; preds = %if.end.159
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.160

if.end.160:                                       ; preds = %do.end, %if.end.119
  %108 = load i32, i32* %flag_bits, align 4, !tbaa !5
  %and161 = and i32 %108, 8
  %cmp162 = icmp ne i32 %and161, 0
  br i1 %cmp162, label %if.then.164, label %if.end.170

if.then.164:                                      ; preds = %if.end.160
  %109 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors165 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %109, i32 0, i32 1
  %binary166 = bitcast %union._c* %colors165 to %struct._bin*
  %b_index167 = getelementptr inbounds %struct._bin, %struct._bin* %binary166, i32 0, i32 3
  %110 = load i32, i32* %b_index167, align 4, !tbaa !32
  %conv168 = trunc i32 %110 to i8
  %111 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %incdec.ptr169 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %incdec.ptr169, i8** %pdata.addr, align 8, !tbaa !1
  store i8 %conv168, i8* %111, align 1, !tbaa !35
  br label %if.end.170

if.end.170:                                       ; preds = %if.then.164, %if.end.160
  %112 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %113 = load i8*, i8** %pdata0, align 8, !tbaa !1
  %sub.ptr.lhs.cast171 = ptrtoint i8* %112 to i64
  %sub.ptr.rhs.cast172 = ptrtoint i8* %113 to i64
  %sub.ptr.sub173 = sub i64 %sub.ptr.lhs.cast171, %sub.ptr.rhs.cast172
  %conv174 = trunc i64 %sub.ptr.sub173 to i32
  %114 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  store i32 %conv174, i32* %114, align 4, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.170, %if.then.115, %if.then.95, %if.then.81, %if.then.78, %if.then
  %115 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #2
  %116 = bitcast %struct.gx_device_color_saved_s** %psdc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %116) #2
  %117 = bitcast i8** %pdata0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #2
  %118 = bitcast i32* %tmp_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #2
  %119 = bitcast i32* %flag_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #2
  %120 = bitcast i32* %req_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #2
  %121 = load i32, i32* %retval
  ret i32 %121
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_ht_binary_read(%struct.gx_device_color_s* %pdevc, %struct.gs_imager_state_s* %pis, %struct.gx_device_color_s* %prior_devc, %struct.gx_device_s* %dev, i64 %offset, i8* %pdata, i32 %size, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %prior_devc.addr = alloca %struct.gx_device_color_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %offset.addr = alloca i64, align 8
  %pdata.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %devc = alloca %struct.gx_device_color_s, align 8
  %pdata0 = alloca i8*, align 8
  %code = alloca i32, align 4
  %flag_bits = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pdata_start = alloca i8*, align 8
  %tmp_w = alloca i32, align 4
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %prior_devc, %struct.gx_device_color_s** %prior_devc.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %offset, i64* %offset.addr, align 8, !tbaa !28
  store i8* %pdata, i8** %pdata.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_color_s* %devc to i8*
  call void @llvm.lifetime.start(i64 656, i8* %0) #2
  %1 = bitcast i8** %pdata0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  store i8* %2, i8** %pdata0, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %flag_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load i64, i64* %offset.addr, align 8, !tbaa !28
  %cmp = icmp ne i64 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.99

if.end:                                           ; preds = %entry
  %6 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %prior_devc.addr, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.gx_device_color_s* %6, null
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %7 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %prior_devc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %7, i32 0, i32 0
  %8 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !20
  %cmp2 = icmp eq %struct.gx_device_color_type_s* %8, bitcast ({ %struct.gs_memory_struct_type_s*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* }* @gx_dc_type_data_ht_binary to %struct.gx_device_color_type_s*)
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %land.lhs.true
  %9 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %prior_devc.addr, align 8, !tbaa !1
  %10 = bitcast %struct.gx_device_color_s* %devc to i8*
  %11 = bitcast %struct.gx_device_color_s* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 656, i32 8, i1 false), !tbaa.struct !82
  br label %if.end.4

if.else:                                          ; preds = %land.lhs.true, %if.end
  %12 = bitcast %struct.gx_device_color_s* %devc to i8*
  %call = call i8* @memset(i8* %12, i32 0, i64 656) #5
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  %type5 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 0
  store %struct.gx_device_color_type_s* bitcast ({ %struct.gs_memory_struct_type_s*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* }* @gx_dc_type_data_ht_binary to %struct.gx_device_color_type_s*), %struct.gx_device_color_type_s** %type5, align 8, !tbaa !20
  %13 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %dev_ht = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %13, i32 0, i32 41
  %14 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht, align 8, !tbaa !84
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 1
  %binary = bitcast %union._c* %colors to %struct._bin*
  %b_ht = getelementptr inbounds %struct._bin, %struct._bin* %binary, i32 0, i32 0
  store %struct.gx_device_halftone_s* %14, %struct.gx_device_halftone_s** %b_ht, align 8, !tbaa !7
  %colors6 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 1
  %binary7 = bitcast %union._c* %colors6 to %struct._bin*
  %b_tile = getelementptr inbounds %struct._bin, %struct._bin* %binary7, i32 0, i32 4
  store %struct.gx_ht_tile_s* null, %struct.gx_ht_tile_s** %b_tile, align 8, !tbaa !11
  %15 = load i32, i32* %size.addr, align 4, !tbaa !5
  %cmp8 = icmp eq i32 %15, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.4
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.99

if.end.10:                                        ; preds = %if.end.4
  %16 = load i32, i32* %size.addr, align 4, !tbaa !5
  %dec = add i32 %16, -1
  store i32 %dec, i32* %size.addr, align 4, !tbaa !5
  %17 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr, i8** %pdata.addr, align 8, !tbaa !1
  %18 = load i8, i8* %17, align 1, !tbaa !35
  %conv = zext i8 %18 to i32
  store i32 %conv, i32* %flag_bits, align 4, !tbaa !5
  %19 = load i32, i32* %flag_bits, align 4, !tbaa !5
  %and = and i32 %19, 1
  %cmp11 = icmp ne i32 %and, 0
  br i1 %cmp11, label %if.then.13, label %if.end.21

if.then.13:                                       ; preds = %if.end.10
  %colors14 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 1
  %binary15 = bitcast %union._c* %colors14 to %struct._bin*
  %color = getelementptr inbounds %struct._bin, %struct._bin* %binary15, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %color, i32 0, i64 0
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %21 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %22 = load i32, i32* %size.addr, align 4, !tbaa !5
  %call16 = call i32 @gx_dc_read_color(i64* %arrayidx, %struct.gx_device_s* %20, i8* %21, i32 %22) #4
  store i32 %call16, i32* %code, align 4, !tbaa !5
  %23 = load i32, i32* %code, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %23, 0
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.13
  %24 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.99

if.end.20:                                        ; preds = %if.then.13
  %25 = load i32, i32* %code, align 4, !tbaa !5
  %26 = load i32, i32* %size.addr, align 4, !tbaa !5
  %sub = sub i32 %26, %25
  store i32 %sub, i32* %size.addr, align 4, !tbaa !5
  %27 = load i32, i32* %code, align 4, !tbaa !5
  %28 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %27 to i64
  %add.ptr = getelementptr inbounds i8, i8* %28, i64 %idx.ext
  store i8* %add.ptr, i8** %pdata.addr, align 8, !tbaa !1
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end.10
  %29 = load i32, i32* %flag_bits, align 4, !tbaa !5
  %and22 = and i32 %29, 2
  %cmp23 = icmp ne i32 %and22, 0
  br i1 %cmp23, label %if.then.25, label %if.end.38

if.then.25:                                       ; preds = %if.end.21
  %colors26 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 1
  %binary27 = bitcast %union._c* %colors26 to %struct._bin*
  %color28 = getelementptr inbounds %struct._bin, %struct._bin* %binary27, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [2 x i64], [2 x i64]* %color28, i32 0, i64 1
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %31 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %32 = load i32, i32* %size.addr, align 4, !tbaa !5
  %call30 = call i32 @gx_dc_read_color(i64* %arrayidx29, %struct.gx_device_s* %30, i8* %31, i32 %32) #4
  store i32 %call30, i32* %code, align 4, !tbaa !5
  %33 = load i32, i32* %code, align 4, !tbaa !5
  %cmp31 = icmp slt i32 %33, 0
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.then.25
  %34 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %34, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.99

if.end.34:                                        ; preds = %if.then.25
  %35 = load i32, i32* %code, align 4, !tbaa !5
  %36 = load i32, i32* %size.addr, align 4, !tbaa !5
  %sub35 = sub i32 %36, %35
  store i32 %sub35, i32* %size.addr, align 4, !tbaa !5
  %37 = load i32, i32* %code, align 4, !tbaa !5
  %38 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %idx.ext36 = sext i32 %37 to i64
  %add.ptr37 = getelementptr inbounds i8, i8* %38, i64 %idx.ext36
  store i8* %add.ptr37, i8** %pdata.addr, align 8, !tbaa !1
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.34, %if.end.21
  %39 = load i32, i32* %flag_bits, align 4, !tbaa !5
  %and39 = and i32 %39, 4
  %cmp40 = icmp ne i32 %and39, 0
  br i1 %cmp40, label %if.then.42, label %if.end.63

if.then.42:                                       ; preds = %if.end.38
  %40 = bitcast i8** %pdata_start to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #2
  %41 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  store i8* %41, i8** %pdata_start, align 8, !tbaa !1
  %42 = load i32, i32* %size.addr, align 4, !tbaa !5
  %cmp43 = icmp ult i32 %42, 1
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.then.42
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.46:                                        ; preds = %if.then.42
  br label %do.body

do.body:                                          ; preds = %if.end.46
  %43 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %44 = load i8, i8* %43, align 1, !tbaa !35
  %conv47 = zext i8 %44 to i32
  %colors48 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 1
  %binary49 = bitcast %union._c* %colors48 to %struct._bin*
  %b_level = getelementptr inbounds %struct._bin, %struct._bin* %binary49, i32 0, i32 2
  store i32 %conv47, i32* %b_level, align 4, !tbaa !29
  %cmp50 = icmp uge i32 %conv47, 128
  br i1 %cmp50, label %if.then.52, label %if.else.57

if.then.52:                                       ; preds = %do.body
  %45 = bitcast i32* %tmp_w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #2
  %46 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %call53 = call i8* @enc_u_get_uint(i32* %tmp_w, i8* %46) #4
  store i8* %call53, i8** %pdata.addr, align 8, !tbaa !1
  %47 = load i32, i32* %tmp_w, align 4, !tbaa !5
  %colors54 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 1
  %binary55 = bitcast %union._c* %colors54 to %struct._bin*
  %b_level56 = getelementptr inbounds %struct._bin, %struct._bin* %binary55, i32 0, i32 2
  store i32 %47, i32* %b_level56, align 4, !tbaa !29
  %48 = bitcast i32* %tmp_w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #2
  br label %if.end.59

if.else.57:                                       ; preds = %do.body
  %49 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %incdec.ptr58 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr58, i8** %pdata.addr, align 8, !tbaa !1
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.57, %if.then.52
  br label %do.cond

do.cond:                                          ; preds = %if.end.59
  br label %do.end

do.end:                                           ; preds = %do.cond
  %50 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %51 = load i8*, i8** %pdata_start, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %50 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %51 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %52 = load i32, i32* %size.addr, align 4, !tbaa !5
  %conv60 = zext i32 %52 to i64
  %sub61 = sub nsw i64 %conv60, %sub.ptr.sub
  %conv62 = trunc i64 %sub61 to i32
  store i32 %conv62, i32* %size.addr, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.45
  %53 = bitcast i8** %pdata_start to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.99 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.63

if.end.63:                                        ; preds = %cleanup.cont, %if.end.38
  %54 = load i32, i32* %flag_bits, align 4, !tbaa !5
  %and64 = and i32 %54, 8
  %cmp65 = icmp ne i32 %and64, 0
  br i1 %cmp65, label %if.then.67, label %if.end.77

if.then.67:                                       ; preds = %if.end.63
  %55 = load i32, i32* %size.addr, align 4, !tbaa !5
  %cmp68 = icmp eq i32 %55, 0
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.then.67
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.99

if.end.71:                                        ; preds = %if.then.67
  %56 = load i32, i32* %size.addr, align 4, !tbaa !5
  %dec72 = add i32 %56, -1
  store i32 %dec72, i32* %size.addr, align 4, !tbaa !5
  %57 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %incdec.ptr73 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %incdec.ptr73, i8** %pdata.addr, align 8, !tbaa !1
  %58 = load i8, i8* %57, align 1, !tbaa !35
  %conv74 = zext i8 %58 to i32
  %colors75 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 1
  %binary76 = bitcast %union._c* %colors75 to %struct._bin*
  %b_index = getelementptr inbounds %struct._bin, %struct._bin* %binary76, i32 0, i32 3
  store i32 %conv74, i32* %b_index, align 4, !tbaa !32
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.71, %if.end.63
  %59 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %dev_ht78 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %59, i32 0, i32 41
  %60 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht78, align 8, !tbaa !84
  %cmp79 = icmp eq %struct.gx_device_halftone_s* %60, null
  br i1 %cmp79, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %if.end.77
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.99

if.end.82:                                        ; preds = %if.end.77
  %61 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %screen_phase = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %61, i32 0, i32 40
  %arrayidx83 = getelementptr inbounds [2 x %struct.gs_int_point_s], [2 x %struct.gs_int_point_s]* %screen_phase, i32 0, i64 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %arrayidx83, i32 0, i32 0
  %62 = load i32, i32* %x, align 4, !tbaa !85
  %sub84 = sub nsw i32 0, %62
  %63 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %dev_ht85 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %63, i32 0, i32 41
  %64 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht85, align 8, !tbaa !84
  %lcm_width = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %64, i32 0, i32 7
  %65 = load i32, i32* %lcm_width, align 4, !tbaa !86
  %call86 = call i32 @imod(i32 %sub84, i32 %65) #4
  %phase = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 2
  %x87 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 0
  store i32 %call86, i32* %x87, align 4, !tbaa !71
  %66 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %screen_phase88 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %66, i32 0, i32 40
  %arrayidx89 = getelementptr inbounds [2 x %struct.gs_int_point_s], [2 x %struct.gs_int_point_s]* %screen_phase88, i32 0, i64 0
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %arrayidx89, i32 0, i32 1
  %67 = load i32, i32* %y, align 4, !tbaa !87
  %sub90 = sub nsw i32 0, %67
  %68 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %dev_ht91 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %68, i32 0, i32 41
  %69 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht91, align 8, !tbaa !84
  %lcm_height = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %69, i32 0, i32 8
  %70 = load i32, i32* %lcm_height, align 4, !tbaa !88
  %call92 = call i32 @imod(i32 %sub90, i32 %70) #4
  %phase93 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 2
  %y94 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase93, i32 0, i32 1
  store i32 %call92, i32* %y94, align 4, !tbaa !72
  %71 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %72 = bitcast %struct.gx_device_color_s* %71 to i8*
  %73 = bitcast %struct.gx_device_color_s* %devc to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %72, i8* %73, i64 656, i32 8, i1 false), !tbaa.struct !82
  %74 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %75 = load i8*, i8** %pdata0, align 8, !tbaa !1
  %sub.ptr.lhs.cast95 = ptrtoint i8* %74 to i64
  %sub.ptr.rhs.cast96 = ptrtoint i8* %75 to i64
  %sub.ptr.sub97 = sub i64 %sub.ptr.lhs.cast95, %sub.ptr.rhs.cast96
  %conv98 = trunc i64 %sub.ptr.sub97 to i32
  store i32 %conv98, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.99

cleanup.99:                                       ; preds = %if.end.82, %if.then.81, %if.then.70, %cleanup, %if.then.33, %if.then.19, %if.then.9, %if.then
  %76 = bitcast i32* %flag_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #2
  %77 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #2
  %78 = bitcast i8** %pdata0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #2
  %79 = bitcast %struct.gx_device_color_s* %devc to i8*
  call void @llvm.lifetime.end(i64 656, i8* %79) #2
  %80 = load i32, i32* %retval
  ret i32 %80
}

; Function Attrs: nounwind uwtable
define i32 @gx_dc_ht_binary_get_nonzero_comps(%struct.gx_device_color_s* %pdevc, %struct.gx_device_s* %dev, i64* %pcomp_bits) #0 {
entry:
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pcomp_bits.addr = alloca i64*, align 8
  %code = alloca i32, align 4
  %cvals_0 = alloca [64 x i16], align 16
  %cvals_1 = alloca [64 x i16], align 16
  %i = alloca i32, align 4
  %ncomps = alloca i32, align 4
  %mask = alloca i32, align 4
  %comp_bits = alloca i32, align 4
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64* %pcomp_bits, i64** %pcomp_bits.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast [64 x i16]* %cvals_0 to i8*
  call void @llvm.lifetime.start(i64 128, i8* %1) #2
  %2 = bitcast [64 x i16]* %cvals_1 to i8*
  call void @llvm.lifetime.start(i64 128, i8* %2) #2
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 42
  %decode_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 52
  %4 = load i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)** %decode_color, align 8, !tbaa !89
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %6 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %6, i32 0, i32 1
  %binary = bitcast %union._c* %colors to %struct._bin*
  %color = getelementptr inbounds %struct._bin, %struct._bin* %binary, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %color, i32 0, i64 0
  %7 = load i64, i64* %arrayidx, align 8, !tbaa !28
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %cvals_0, i32 0, i32 0
  %call = call i32 %4(%struct.gx_device_s* %5, i64 %7, i16* %arraydecay) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp = icmp sge i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 42
  %decode_color2 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1, i32 0, i32 52
  %9 = load i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)** %decode_color2, align 8, !tbaa !89
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %11 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors3 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %11, i32 0, i32 1
  %binary4 = bitcast %union._c* %colors3 to %struct._bin*
  %color5 = getelementptr inbounds %struct._bin, %struct._bin* %binary4, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [2 x i64], [2 x i64]* %color5, i32 0, i64 1
  %12 = load i64, i64* %arrayidx6, align 8, !tbaa !28
  %arraydecay7 = getelementptr inbounds [64 x i16], [64 x i16]* %cvals_1, i32 0, i32 0
  %call8 = call i32 %9(%struct.gx_device_s* %10, i64 %12, i16* %arraydecay7) #4
  store i32 %call8, i32* %code, align 4, !tbaa !5
  %cmp9 = icmp sge i32 %call8, 0
  br i1 %cmp9, label %if.then, label %if.end.21

if.then:                                          ; preds = %land.lhs.true
  %13 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %15, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %16 = load i32, i32* %num_components, align 4, !tbaa !90
  store i32 %16, i32* %ncomps, align 4, !tbaa !5
  %17 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  store i32 1, i32* %mask, align 4, !tbaa !5
  %18 = bitcast i32* %comp_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  store i32 0, i32* %comp_bits, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %19 = load i32, i32* %i, align 4, !tbaa !5
  %20 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %19, %20
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %21 to i64
  %arrayidx11 = getelementptr inbounds [64 x i16], [64 x i16]* %cvals_0, i32 0, i64 %idxprom
  %22 = load i16, i16* %arrayidx11, align 2, !tbaa !83
  %conv = zext i16 %22 to i32
  %cmp12 = icmp ne i32 %conv, 0
  br i1 %cmp12, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %23 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom14 = sext i32 %23 to i64
  %arrayidx15 = getelementptr inbounds [64 x i16], [64 x i16]* %cvals_1, i32 0, i64 %idxprom14
  %24 = load i16, i16* %arrayidx15, align 2, !tbaa !83
  %conv16 = zext i16 %24 to i32
  %cmp17 = icmp ne i32 %conv16, 0
  br i1 %cmp17, label %if.then.19, label %if.end

if.then.19:                                       ; preds = %lor.lhs.false, %for.body
  %25 = load i32, i32* %mask, align 4, !tbaa !5
  %26 = load i32, i32* %comp_bits, align 4, !tbaa !5
  %or = or i32 %26, %25
  store i32 %or, i32* %comp_bits, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.19, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %27 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  %28 = load i32, i32* %mask, align 4, !tbaa !5
  %shl = shl i32 %28, 1
  store i32 %shl, i32* %mask, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load i32, i32* %comp_bits, align 4, !tbaa !5
  %conv20 = sext i32 %29 to i64
  %30 = load i64*, i64** %pcomp_bits.addr, align 8, !tbaa !1
  store i64 %conv20, i64* %30, align 8, !tbaa !28
  store i32 0, i32* %code, align 4, !tbaa !5
  %31 = bitcast i32* %comp_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #2
  %32 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #2
  %33 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #2
  %34 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #2
  br label %if.end.21

if.end.21:                                        ; preds = %for.end, %land.lhs.true, %entry
  %35 = load i32, i32* %code, align 4, !tbaa !5
  %36 = bitcast [64 x i16]* %cvals_1 to i8*
  call void @llvm.lifetime.end(i64 128, i8* %36) #2
  %37 = bitcast [64 x i16]* %cvals_0 to i8*
  call void @llvm.lifetime.end(i64 128, i8* %37) #2
  %38 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #2
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define i32 @gx_ht_cache_default_tiles() #0 {
entry:
  ret i32 8192
}

; Function Attrs: nounwind uwtable
define i32 @gx_ht_cache_default_bits_size() #0 {
entry:
  ret i32 1048576
}

; Function Attrs: nounwind uwtable
define %struct.gx_ht_cache_s* @gx_ht_alloc_cache(%struct.gs_memory_s* %mem, i32 %max_tiles, i32 %max_bits_size) #0 {
entry:
  %retval = alloca %struct.gx_ht_cache_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %max_tiles.addr = alloca i32, align 4
  %max_bits_size.addr = alloca i32, align 4
  %pcache = alloca %struct.gx_ht_cache_s*, align 8
  %tbits = alloca i8*, align 8
  %ht_tiles = alloca %struct.gx_ht_tile_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %max_tiles, i32* %max_tiles.addr, align 4, !tbaa !5
  store i32 %max_bits_size, i32* %max_bits_size.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_ht_cache_s** %pcache to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %2 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !91
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i8* %2(%struct.gs_memory_s* %3, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_ht_cache to %struct.gs_memory_struct_type_s*), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0)) #4
  %4 = bitcast i8* %call to %struct.gx_ht_cache_s*
  store %struct.gx_ht_cache_s* %4, %struct.gx_ht_cache_s** %pcache, align 8, !tbaa !1
  %5 = bitcast i8** %tbits to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs1, i32 0, i32 7
  %7 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !94
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %9 = load i32, i32* %max_bits_size.addr, align 4, !tbaa !5
  %call2 = call i8* %7(%struct.gs_memory_s* %8, i32 %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0)) #4
  store i8* %call2, i8** %tbits, align 8, !tbaa !1
  %10 = bitcast %struct.gx_ht_tile_s** %ht_tiles to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs3 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %11, i32 0, i32 1
  %alloc_struct_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs3, i32 0, i32 12
  %12 = load i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct_array, align 8, !tbaa !95
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %14 = load i32, i32* %max_tiles.addr, align 4, !tbaa !5
  %call4 = call i8* %12(%struct.gs_memory_s* %13, i32 %14, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_ht_tiles to %struct.gs_memory_struct_type_s*), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0)) #4
  %15 = bitcast i8* %call4 to %struct.gx_ht_tile_s*
  store %struct.gx_ht_tile_s* %15, %struct.gx_ht_tile_s** %ht_tiles, align 8, !tbaa !1
  %16 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %pcache, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_ht_cache_s* %16, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %17 = load i8*, i8** %tbits, align 8, !tbaa !1
  %cmp5 = icmp eq i8* %17, null
  br i1 %cmp5, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %18 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %ht_tiles, align 8, !tbaa !1
  %cmp7 = icmp eq %struct.gx_ht_tile_s* %18, null
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.6, %lor.lhs.false, %entry
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs8 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %19, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs8, i32 0, i32 2
  %20 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !96
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %22 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %ht_tiles, align 8, !tbaa !1
  %23 = bitcast %struct.gx_ht_tile_s* %22 to i8*
  call void %20(%struct.gs_memory_s* %21, i8* %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0)) #4
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs9 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %24, i32 0, i32 1
  %free_object10 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs9, i32 0, i32 2
  %25 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object10, align 8, !tbaa !96
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %27 = load i8*, i8** %tbits, align 8, !tbaa !1
  call void %25(%struct.gs_memory_s* %26, i8* %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0)) #4
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs11 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %28, i32 0, i32 1
  %free_object12 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs11, i32 0, i32 2
  %29 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object12, align 8, !tbaa !96
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %31 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %pcache, align 8, !tbaa !1
  %32 = bitcast %struct.gx_ht_cache_s* %31 to i8*
  call void %29(%struct.gs_memory_s* %30, i8* %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0)) #4
  store %struct.gx_ht_cache_s* null, %struct.gx_ht_cache_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.6
  %33 = load i8*, i8** %tbits, align 8, !tbaa !1
  %34 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %pcache, align 8, !tbaa !1
  %bits = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %34, i32 0, i32 0
  store i8* %33, i8** %bits, align 8, !tbaa !97
  %35 = load i32, i32* %max_bits_size.addr, align 4, !tbaa !5
  %36 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %pcache, align 8, !tbaa !1
  %bits_size = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %36, i32 0, i32 1
  store i32 %35, i32* %bits_size, align 4, !tbaa !98
  %37 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %ht_tiles, align 8, !tbaa !1
  %38 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %pcache, align 8, !tbaa !1
  %ht_tiles13 = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %38, i32 0, i32 2
  store %struct.gx_ht_tile_s* %37, %struct.gx_ht_tile_s** %ht_tiles13, align 8, !tbaa !99
  %39 = load i32, i32* %max_tiles.addr, align 4, !tbaa !5
  %40 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %pcache, align 8, !tbaa !1
  %num_tiles = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %40, i32 0, i32 3
  store i32 %39, i32* %num_tiles, align 4, !tbaa !100
  %41 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %pcache, align 8, !tbaa !1
  %42 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %pcache, align 8, !tbaa !1
  %order = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %42, i32 0, i32 4
  %cache = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %order, i32 0, i32 14
  store %struct.gx_ht_cache_s* %41, %struct.gx_ht_cache_s** %cache, align 8, !tbaa !101
  %43 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %pcache, align 8, !tbaa !1
  %order14 = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %43, i32 0, i32 4
  %transfer = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %order14, i32 0, i32 15
  store %struct.gx_transfer_map_s* null, %struct.gx_transfer_map_s** %transfer, align 8, !tbaa !102
  %44 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %pcache, align 8, !tbaa !1
  %order15 = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %44, i32 0, i32 4
  %levels = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %order15, i32 0, i32 12
  store i32* null, i32** %levels, align 8, !tbaa !103
  %45 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %pcache, align 8, !tbaa !1
  %order16 = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %45, i32 0, i32 4
  %bit_data = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %order16, i32 0, i32 13
  store i8* null, i8** %bit_data, align 8, !tbaa !45
  %46 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %pcache, align 8, !tbaa !1
  %ht_tiles17 = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %46, i32 0, i32 2
  %47 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %ht_tiles17, align 8, !tbaa !99
  %arrayidx = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %47, i64 0
  %tiles = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %arrayidx, i32 0, i32 0
  %data = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles, i32 0, i32 0
  store i8* null, i8** %data, align 8, !tbaa !104
  %48 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %pcache, align 8, !tbaa !1
  store %struct.gx_ht_cache_s* %48, %struct.gx_ht_cache_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %49 = bitcast %struct.gx_ht_tile_s** %ht_tiles to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #2
  %50 = bitcast i8** %tbits to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #2
  %51 = bitcast %struct.gx_ht_cache_s** %pcache to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #2
  %52 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %retval
  ret %struct.gx_ht_cache_s* %52
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define void @gx_ht_free_cache(%struct.gs_memory_s* %mem, %struct.gx_ht_cache_s* %pcache) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pcache.addr = alloca %struct.gx_ht_cache_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gx_ht_cache_s* %pcache, %struct.gx_ht_cache_s** %pcache.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %0, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %1 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !96
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %3 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %pcache.addr, align 8, !tbaa !1
  %ht_tiles = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %3, i32 0, i32 2
  %4 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %ht_tiles, align 8, !tbaa !99
  %5 = bitcast %struct.gx_ht_tile_s* %4 to i8*
  call void %1(%struct.gs_memory_s* %2, i8* %5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0)) #4
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 1
  %free_object2 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs1, i32 0, i32 2
  %7 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object2, align 8, !tbaa !96
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %9 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %pcache.addr, align 8, !tbaa !1
  %bits = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %9, i32 0, i32 0
  %10 = load i8*, i8** %bits, align 8, !tbaa !97
  call void %7(%struct.gs_memory_s* %8, i8* %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0)) #4
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs3 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %11, i32 0, i32 1
  %free_object4 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs3, i32 0, i32 2
  %12 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object4, align 8, !tbaa !96
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %14 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %pcache.addr, align 8, !tbaa !1
  %15 = bitcast %struct.gx_ht_cache_s* %14 to i8*
  call void %12(%struct.gs_memory_s* %13, i8* %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0)) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @gx_ht_init_cache(%struct.gs_memory_s* %mem, %struct.gx_ht_cache_s* %pcache, %struct.gx_ht_order_s* %porder) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pcache.addr = alloca %struct.gx_ht_cache_s*, align 8
  %porder.addr = alloca %struct.gx_ht_order_s*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %size = alloca i32, align 4
  %width_unit = alloca i32, align 4
  %height_unit = alloca i32, align 4
  %raster = alloca i32, align 4
  %tile_bytes = alloca i32, align 4
  %shift = alloca i32, align 4
  %num_cached = alloca i32, align 4
  %i = alloca i32, align 4
  %tbits = alloca i8*, align 8
  %rep_raster = alloca i32, align 4
  %rep_count = alloca i32, align 4
  %bt = alloca %struct.gx_ht_tile_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gx_ht_cache_s* %pcache, %struct.gx_ht_cache_s** %pcache.addr, align 8, !tbaa !1
  store %struct.gx_ht_order_s* %porder, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %0 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %width1 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %1, i32 0, i32 1
  %2 = load i16, i16* %width1, align 2, !tbaa !105
  %conv = zext i16 %2 to i32
  store i32 %conv, i32* %width, align 4, !tbaa !5
  %3 = bitcast i32* %height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %height2 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %4, i32 0, i32 2
  %5 = load i16, i16* %height2, align 2, !tbaa !106
  %conv3 = zext i16 %5 to i32
  store i32 %conv3, i32* %height, align 4, !tbaa !5
  %6 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load i32, i32* %width, align 4, !tbaa !5
  %8 = load i32, i32* %height, align 4, !tbaa !5
  %mul = mul i32 %7, %8
  %add = add i32 %mul, 1
  store i32 %add, i32* %size, align 4, !tbaa !5
  %9 = bitcast i32* %width_unit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load i32, i32* %width, align 4, !tbaa !5
  %conv4 = zext i32 %10 to i64
  %cmp = icmp ule i64 %conv4, 16
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %11 = load i32, i32* %width, align 4, !tbaa !5
  %conv6 = zext i32 %11 to i64
  %div = udiv i64 32, %conv6
  %12 = load i32, i32* %width, align 4, !tbaa !5
  %conv7 = zext i32 %12 to i64
  %mul8 = mul i64 %div, %conv7
  br label %cond.end

cond.false:                                       ; preds = %entry
  %13 = load i32, i32* %width, align 4, !tbaa !5
  %conv9 = zext i32 %13 to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %mul8, %cond.true ], [ %conv9, %cond.false ]
  %conv10 = trunc i64 %cond to i32
  store i32 %conv10, i32* %width_unit, align 4, !tbaa !5
  %14 = bitcast i32* %height_unit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = load i32, i32* %height, align 4, !tbaa !5
  store i32 %15, i32* %height_unit, align 4, !tbaa !5
  %16 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %raster11 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %17, i32 0, i32 3
  %18 = load i16, i16* %raster11, align 2, !tbaa !107
  %conv12 = zext i16 %18 to i32
  store i32 %conv12, i32* %raster, align 4, !tbaa !5
  %19 = bitcast i32* %tile_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #2
  %20 = load i32, i32* %raster, align 4, !tbaa !5
  %21 = load i32, i32* %height, align 4, !tbaa !5
  %mul13 = mul i32 %20, %21
  store i32 %mul13, i32* %tile_bytes, align 4, !tbaa !5
  %22 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #2
  %23 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %shift14 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %23, i32 0, i32 4
  %24 = load i16, i16* %shift14, align 2, !tbaa !108
  %conv15 = zext i16 %24 to i32
  store i32 %conv15, i32* %shift, align 4, !tbaa !5
  %25 = bitcast i32* %num_cached to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #2
  %26 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #2
  %27 = bitcast i8** %tbits to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #2
  %28 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %pcache.addr, align 8, !tbaa !1
  %bits = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %28, i32 0, i32 0
  %29 = load i8*, i8** %bits, align 8, !tbaa !97
  store i8* %29, i8** %tbits, align 8, !tbaa !1
  %30 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %num_bits = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %30, i32 0, i32 9
  %31 = load i32, i32* %num_bits, align 4, !tbaa !109
  %32 = load i32, i32* %size, align 4, !tbaa !5
  %cmp16 = icmp uge i32 %31, %32
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %33 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %num_bits18 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %33, i32 0, i32 9
  %34 = load i32, i32* %num_bits18, align 4, !tbaa !109
  %add19 = add i32 %34, 1
  store i32 %add19, i32* %size, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %35 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %pcache.addr, align 8, !tbaa !1
  %bits_size = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %35, i32 0, i32 1
  %36 = load i32, i32* %bits_size, align 4, !tbaa !98
  %37 = load i32, i32* %tile_bytes, align 4, !tbaa !5
  %div20 = udiv i32 %36, %37
  store i32 %div20, i32* %num_cached, align 4, !tbaa !5
  %38 = load i32, i32* %num_cached, align 4, !tbaa !5
  %39 = load i32, i32* %size, align 4, !tbaa !5
  %cmp21 = icmp ugt i32 %38, %39
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end
  %40 = load i32, i32* %size, align 4, !tbaa !5
  store i32 %40, i32* %num_cached, align 4, !tbaa !5
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %if.end
  %41 = load i32, i32* %num_cached, align 4, !tbaa !5
  %42 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %pcache.addr, align 8, !tbaa !1
  %num_tiles = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %42, i32 0, i32 3
  %43 = load i32, i32* %num_tiles, align 4, !tbaa !100
  %cmp25 = icmp ugt i32 %41, %43
  br i1 %cmp25, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.end.24
  %44 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %pcache.addr, align 8, !tbaa !1
  %num_tiles28 = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %44, i32 0, i32 3
  %45 = load i32, i32* %num_tiles28, align 4, !tbaa !100
  store i32 %45, i32* %num_cached, align 4, !tbaa !5
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %if.end.24
  %46 = load i32, i32* %num_cached, align 4, !tbaa !5
  %47 = load i32, i32* %size, align 4, !tbaa !5
  %cmp30 = icmp eq i32 %46, %47
  br i1 %cmp30, label %land.lhs.true, label %if.end.51

land.lhs.true:                                    ; preds = %if.end.29
  %48 = load i32, i32* %tile_bytes, align 4, !tbaa !5
  %49 = load i32, i32* %num_cached, align 4, !tbaa !5
  %mul32 = mul i32 %48, %49
  %50 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %pcache.addr, align 8, !tbaa !1
  %bits_size33 = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %50, i32 0, i32 1
  %51 = load i32, i32* %bits_size33, align 4, !tbaa !98
  %div34 = udiv i32 %51, 2
  %cmp35 = icmp ule i32 %mul32, %div34
  br i1 %cmp35, label %if.then.37, label %if.end.51

if.then.37:                                       ; preds = %land.lhs.true
  %52 = bitcast i32* %rep_raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %52) #2
  %53 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %pcache.addr, align 8, !tbaa !1
  %bits_size38 = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %53, i32 0, i32 1
  %54 = load i32, i32* %bits_size38, align 4, !tbaa !98
  %55 = load i32, i32* %num_cached, align 4, !tbaa !5
  %div39 = udiv i32 %54, %55
  %56 = load i32, i32* %height, align 4, !tbaa !5
  %div40 = udiv i32 %div39, %56
  %and = and i32 %div40, -8
  store i32 %and, i32* %rep_raster, align 4, !tbaa !5
  %57 = bitcast i32* %rep_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %57) #2
  %58 = load i32, i32* %rep_raster, align 4, !tbaa !5
  %mul41 = mul i32 %58, 8
  %59 = load i32, i32* %width, align 4, !tbaa !5
  %div42 = udiv i32 %mul41, %59
  store i32 %div42, i32* %rep_count, align 4, !tbaa !5
  %60 = load i32, i32* %rep_count, align 4, !tbaa !5
  %conv43 = zext i32 %60 to i64
  %cmp44 = icmp ugt i64 %conv43, 64
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.then.37
  store i32 64, i32* %rep_count, align 4, !tbaa !5
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %if.then.37
  %61 = load i32, i32* %width, align 4, !tbaa !5
  %62 = load i32, i32* %rep_count, align 4, !tbaa !5
  %mul48 = mul i32 %61, %62
  store i32 %mul48, i32* %width_unit, align 4, !tbaa !5
  %63 = load i32, i32* %width_unit, align 4, !tbaa !5
  %add49 = add nsw i32 %63, 63
  %shr = ashr i32 %add49, 6
  %shl = shl i32 %shr, 3
  store i32 %shl, i32* %raster, align 4, !tbaa !5
  %64 = load i32, i32* %raster, align 4, !tbaa !5
  %65 = load i32, i32* %height, align 4, !tbaa !5
  %mul50 = mul i32 %64, %65
  store i32 %mul50, i32* %tile_bytes, align 4, !tbaa !5
  %66 = bitcast i32* %rep_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #2
  %67 = bitcast i32* %rep_raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #2
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.47, %land.lhs.true, %if.end.29
  %68 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %69 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %num_levels = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %69, i32 0, i32 8
  %70 = load i32, i32* %num_levels, align 4, !tbaa !110
  %add52 = add i32 %70, 1
  %call = call i64 @gs_next_ids(%struct.gs_memory_s* %68, i32 %add52) #4
  %71 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %pcache.addr, align 8, !tbaa !1
  %base_id = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %71, i32 0, i32 8
  store i64 %call, i64* %base_id, align 8, !tbaa !111
  %72 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %pcache.addr, align 8, !tbaa !1
  %order = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %72, i32 0, i32 4
  %73 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %74 = bitcast %struct.gx_ht_order_s* %order to i8*
  %75 = bitcast %struct.gx_ht_order_s* %73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %74, i8* %75, i64 160, i32 8, i1 false), !tbaa.struct !112
  %76 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %pcache.addr, align 8, !tbaa !1
  %order53 = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %76, i32 0, i32 4
  %transfer = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %order53, i32 0, i32 15
  store %struct.gx_transfer_map_s* null, %struct.gx_transfer_map_s** %transfer, align 8, !tbaa !102
  %77 = load i32, i32* %num_cached, align 4, !tbaa !5
  %78 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %pcache.addr, align 8, !tbaa !1
  %num_cached54 = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %78, i32 0, i32 5
  store i32 %77, i32* %num_cached54, align 4, !tbaa !114
  %79 = load i32, i32* %size, align 4, !tbaa !5
  %80 = load i32, i32* %num_cached, align 4, !tbaa !5
  %add55 = add i32 %79, %80
  %sub = sub i32 %add55, 1
  %81 = load i32, i32* %num_cached, align 4, !tbaa !5
  %div56 = udiv i32 %sub, %81
  %82 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %pcache.addr, align 8, !tbaa !1
  %levels_per_tile = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %82, i32 0, i32 6
  store i32 %div56, i32* %levels_per_tile, align 4, !tbaa !115
  %83 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %pcache.addr, align 8, !tbaa !1
  %tiles_fit = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %83, i32 0, i32 7
  store i32 -1, i32* %tiles_fit, align 4, !tbaa !116
  %84 = load i8*, i8** %tbits, align 8, !tbaa !1
  %85 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %pcache.addr, align 8, !tbaa !1
  %bits_size57 = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %85, i32 0, i32 1
  %86 = load i32, i32* %bits_size57, align 4, !tbaa !98
  %conv58 = zext i32 %86 to i64
  %call59 = call i8* @memset(i8* %84, i32 0, i64 %conv58) #5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.51
  %87 = load i32, i32* %i, align 4, !tbaa !5
  %88 = load i32, i32* %num_cached, align 4, !tbaa !5
  %cmp60 = icmp slt i32 %87, %88
  br i1 %cmp60, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %89 = bitcast %struct.gx_ht_tile_s** %bt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %89) #2
  %90 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %90 to i64
  %91 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %pcache.addr, align 8, !tbaa !1
  %ht_tiles = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %91, i32 0, i32 2
  %92 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %ht_tiles, align 8, !tbaa !99
  %arrayidx = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %92, i64 %idxprom
  store %struct.gx_ht_tile_s* %arrayidx, %struct.gx_ht_tile_s** %bt, align 8, !tbaa !1
  %93 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %bt, align 8, !tbaa !1
  %level = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %93, i32 0, i32 1
  store i32 0, i32* %level, align 4, !tbaa !117
  %94 = load i32, i32* %i, align 4, !tbaa !5
  %95 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %bt, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %95, i32 0, i32 2
  store i32 %94, i32* %index, align 4, !tbaa !12
  %96 = load i8*, i8** %tbits, align 8, !tbaa !1
  %97 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %bt, align 8, !tbaa !1
  %tiles = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %97, i32 0, i32 0
  %data = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles, i32 0, i32 0
  store i8* %96, i8** %data, align 8, !tbaa !104
  %98 = load i32, i32* %raster, align 4, !tbaa !5
  %99 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %bt, align 8, !tbaa !1
  %tiles62 = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %99, i32 0, i32 0
  %raster63 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles62, i32 0, i32 1
  store i32 %98, i32* %raster63, align 4, !tbaa !118
  %100 = load i32, i32* %width_unit, align 4, !tbaa !5
  %101 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %bt, align 8, !tbaa !1
  %tiles64 = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %101, i32 0, i32 0
  %size65 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles64, i32 0, i32 2
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size65, i32 0, i32 0
  store i32 %100, i32* %x, align 4, !tbaa !119
  %102 = load i32, i32* %height_unit, align 4, !tbaa !5
  %103 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %bt, align 8, !tbaa !1
  %tiles66 = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %103, i32 0, i32 0
  %size67 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles66, i32 0, i32 2
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size67, i32 0, i32 1
  store i32 %102, i32* %y, align 4, !tbaa !120
  %104 = load i32, i32* %width, align 4, !tbaa !5
  %conv68 = trunc i32 %104 to i16
  %105 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %bt, align 8, !tbaa !1
  %tiles69 = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %105, i32 0, i32 0
  %rep_width = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles69, i32 0, i32 4
  store i16 %conv68, i16* %rep_width, align 2, !tbaa !121
  %106 = load i32, i32* %height, align 4, !tbaa !5
  %conv70 = trunc i32 %106 to i16
  %107 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %bt, align 8, !tbaa !1
  %tiles71 = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %107, i32 0, i32 0
  %rep_height = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles71, i32 0, i32 5
  store i16 %conv70, i16* %rep_height, align 2, !tbaa !122
  %108 = load i32, i32* %shift, align 4, !tbaa !5
  %conv72 = trunc i32 %108 to i16
  %109 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %bt, align 8, !tbaa !1
  %tiles73 = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %109, i32 0, i32 0
  %rep_shift = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles73, i32 0, i32 6
  store i16 %conv72, i16* %rep_shift, align 2, !tbaa !123
  %110 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %bt, align 8, !tbaa !1
  %tiles74 = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %110, i32 0, i32 0
  %shift75 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles74, i32 0, i32 7
  store i16 %conv72, i16* %shift75, align 2, !tbaa !124
  %111 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %bt, align 8, !tbaa !1
  %tiles76 = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %111, i32 0, i32 0
  %num_planes = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles76, i32 0, i32 8
  store i32 1, i32* %num_planes, align 4, !tbaa !125
  %112 = bitcast %struct.gx_ht_tile_s** %bt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %113 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %113, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  %114 = load i32, i32* %tile_bytes, align 4, !tbaa !5
  %115 = load i8*, i8** %tbits, align 8, !tbaa !1
  %idx.ext = zext i32 %114 to i64
  %add.ptr = getelementptr inbounds i8, i8* %115, i64 %idx.ext
  store i8* %add.ptr, i8** %tbits, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %116 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %pcache.addr, align 8, !tbaa !1
  %render_ht = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %116, i32 0, i32 9
  store %struct.gx_ht_tile_s* (%struct.gx_ht_cache_s*, i32)* @gx_render_ht_default, %struct.gx_ht_tile_s* (%struct.gx_ht_cache_s*, i32)** %render_ht, align 8, !tbaa !126
  %117 = bitcast i8** %tbits to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #2
  %118 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #2
  %119 = bitcast i32* %num_cached to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #2
  %120 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #2
  %121 = bitcast i32* %tile_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #2
  %122 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %122) #2
  %123 = bitcast i32* %height_unit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #2
  %124 = bitcast i32* %width_unit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #2
  %125 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #2
  %126 = bitcast i32* %height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #2
  %127 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #2
  ret void
}

declare i64 @gs_next_ids(%struct.gs_memory_s*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

; Function Attrs: nounwind uwtable
define internal %struct.gx_ht_tile_s* @gx_render_ht_default(%struct.gx_ht_cache_s* %pcache, i32 %b_level) #0 {
entry:
  %retval = alloca %struct.gx_ht_tile_s*, align 8
  %pcache.addr = alloca %struct.gx_ht_cache_s*, align 8
  %b_level.addr = alloca i32, align 4
  %porder = alloca %struct.gx_ht_order_s*, align 8
  %level = alloca i32, align 4
  %bt = alloca %struct.gx_ht_tile_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_ht_cache_s* %pcache, %struct.gx_ht_cache_s** %pcache.addr, align 8, !tbaa !1
  store i32 %b_level, i32* %b_level.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_ht_order_s** %porder to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %pcache.addr, align 8, !tbaa !1
  %order = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %1, i32 0, i32 4
  store %struct.gx_ht_order_s* %order, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %2 = bitcast i32* %level to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load i32, i32* %b_level.addr, align 4, !tbaa !5
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %levels = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %4, i32 0, i32 12
  %5 = load i32*, i32** %levels, align 8, !tbaa !127
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4, !tbaa !5
  store i32 %6, i32* %level, align 4, !tbaa !5
  %7 = bitcast %struct.gx_ht_tile_s** %bt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %pcache.addr, align 8, !tbaa !1
  %num_cached = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %8, i32 0, i32 5
  %9 = load i32, i32* %num_cached, align 4, !tbaa !114
  %10 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %num_levels = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %10, i32 0, i32 8
  %11 = load i32, i32* %num_levels, align 4, !tbaa !110
  %cmp = icmp ult i32 %9, %11
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %12 = load i32, i32* %level, align 4, !tbaa !5
  %13 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %pcache.addr, align 8, !tbaa !1
  %levels_per_tile = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %13, i32 0, i32 6
  %14 = load i32, i32* %levels_per_tile, align 4, !tbaa !115
  %div = sdiv i32 %12, %14
  %idxprom1 = sext i32 %div to i64
  %15 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %pcache.addr, align 8, !tbaa !1
  %ht_tiles = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %15, i32 0, i32 2
  %16 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %ht_tiles, align 8, !tbaa !99
  %arrayidx2 = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %16, i64 %idxprom1
  store %struct.gx_ht_tile_s* %arrayidx2, %struct.gx_ht_tile_s** %bt, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %entry
  %17 = load i32, i32* %b_level.addr, align 4, !tbaa !5
  %idxprom3 = sext i32 %17 to i64
  %18 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %pcache.addr, align 8, !tbaa !1
  %ht_tiles4 = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %18, i32 0, i32 2
  %19 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %ht_tiles4, align 8, !tbaa !99
  %arrayidx5 = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %19, i64 %idxprom3
  store %struct.gx_ht_tile_s* %arrayidx5, %struct.gx_ht_tile_s** %bt, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %20 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %bt, align 8, !tbaa !1
  %level6 = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %20, i32 0, i32 1
  %21 = load i32, i32* %level6, align 4, !tbaa !117
  %22 = load i32, i32* %level, align 4, !tbaa !5
  %cmp7 = icmp ne i32 %21, %22
  br i1 %cmp7, label %if.then.8, label %if.end.13

if.then.8:                                        ; preds = %if.end
  %23 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #2
  %24 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %bt, align 8, !tbaa !1
  %25 = load i32, i32* %level, align 4, !tbaa !5
  %26 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %27 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %pcache.addr, align 8, !tbaa !1
  %base_id = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %27, i32 0, i32 8
  %28 = load i64, i64* %base_id, align 8, !tbaa !111
  %29 = load i32, i32* %b_level.addr, align 4, !tbaa !5
  %conv = sext i32 %29 to i64
  %add = add i64 %28, %conv
  %call = call i32 @render_ht(%struct.gx_ht_tile_s* %24, i32 %25, %struct.gx_ht_order_s* %26, i64 %add) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %30 = load i32, i32* %code, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %30, 0
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.8
  store %struct.gx_ht_tile_s* null, %struct.gx_ht_tile_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.then.8
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.12, %if.then.11
  %31 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.14 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.13

if.end.13:                                        ; preds = %cleanup.cont, %if.end
  %32 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %bt, align 8, !tbaa !1
  store %struct.gx_ht_tile_s* %32, %struct.gx_ht_tile_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.14

cleanup.14:                                       ; preds = %if.end.13, %cleanup
  %33 = bitcast %struct.gx_ht_tile_s** %bt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #2
  %34 = bitcast i32* %level to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #2
  %35 = bitcast %struct.gx_ht_order_s** %porder to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #2
  %36 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %retval
  ret %struct.gx_ht_tile_s* %36
}

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @ht_tiles_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
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
  ret %struct.gs_ptr_procs_s* null
}

; Function Attrs: nounwind uwtable
define internal void @ht_tiles_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %ht_tiles = alloca %struct.gx_ht_tile_s*, align 8
  %bits = alloca i8*, align 8
  %diff = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_ht_tile_s** %ht_tiles to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_ht_tile_s*
  store %struct.gx_ht_tile_s* %2, %struct.gx_ht_tile_s** %ht_tiles, align 8, !tbaa !1
  %3 = bitcast i8** %bits to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %ht_tiles, align 8, !tbaa !1
  %tiles = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %4, i32 0, i32 0
  %data = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8, !tbaa !104
  store i8* %5, i8** %bits, align 8, !tbaa !1
  %6 = bitcast i32* %diff to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load i8*, i8** %bits, align 8, !tbaa !1
  %cmp = icmp eq i8* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %9 = bitcast %struct.gc_state_s* %8 to %struct.gc_procs_common_s**
  %10 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %9, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %10, i32 0, i32 0
  %11 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !18
  %12 = load i8*, i8** %bits, align 8, !tbaa !1
  %13 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %11(i8* %12, %struct.gc_state_s* %13) #4
  store i8* %call, i8** %bits, align 8, !tbaa !1
  %14 = load i32, i32* %size.addr, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %14, 56
  br i1 %cmp1, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  %15 = load i8*, i8** %bits, align 8, !tbaa !1
  %16 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %ht_tiles, align 8, !tbaa !1
  %tiles3 = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %16, i32 0, i32 0
  %data4 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles3, i32 0, i32 0
  store i8* %15, i8** %data4, align 8, !tbaa !104
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %17 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %ht_tiles, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %17, i64 1
  %tiles6 = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %arrayidx, i32 0, i32 0
  %data7 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles6, i32 0, i32 0
  %18 = load i8*, i8** %data7, align 8, !tbaa !104
  %19 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %ht_tiles, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %19, i64 0
  %tiles9 = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %arrayidx8, i32 0, i32 0
  %data10 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles9, i32 0, i32 0
  %20 = load i8*, i8** %data10, align 8, !tbaa !104
  %sub.ptr.lhs.cast = ptrtoint i8* %18 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %20 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %diff, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %21 = load i32, i32* %size.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i8*, i8** %bits, align 8, !tbaa !1
  %23 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %ht_tiles, align 8, !tbaa !1
  %tiles11 = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %23, i32 0, i32 0
  %data12 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles11, i32 0, i32 0
  store i8* %22, i8** %data12, align 8, !tbaa !104
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %ht_tiles, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %24, i32 1
  store %struct.gx_ht_tile_s* %incdec.ptr, %struct.gx_ht_tile_s** %ht_tiles, align 8, !tbaa !1
  %25 = load i32, i32* %size.addr, align 4, !tbaa !5
  %sub = sub i32 %25, 56
  store i32 %sub, i32* %size.addr, align 4, !tbaa !5
  %26 = load i32, i32* %diff, align 4, !tbaa !5
  %27 = load i8*, i8** %bits, align 8, !tbaa !1
  %idx.ext = zext i32 %26 to i64
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 %idx.ext
  store i8* %add.ptr, i8** %bits, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.2, %if.then
  %28 = bitcast i32* %diff to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #2
  %29 = bitcast i8** %bits to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #2
  %30 = bitcast %struct.gx_ht_tile_s** %ht_tiles to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #2
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
define internal i32 @gx_dc_ht_binary_load_cache(%struct.gx_device_color_s* %pdevc) #0 {
entry:
  %retval = alloca i32, align 4
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %component_index = alloca i32, align 4
  %porder = alloca %struct.gx_ht_order_s*, align 8
  %pcache = alloca %struct.gx_ht_cache_s*, align 8
  %b_level = alloca i32, align 4
  %level = alloca i32, align 4
  %bt = alloca %struct.gx_ht_tile_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %0 = bitcast i32* %component_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i32 0, i32 1
  %binary = bitcast %union._c* %colors to %struct._bin*
  %b_index = getelementptr inbounds %struct._bin, %struct._bin* %binary, i32 0, i32 3
  %2 = load i32, i32* %b_index, align 4, !tbaa !32
  store i32 %2, i32* %component_index, align 4, !tbaa !5
  %3 = bitcast %struct.gx_ht_order_s** %porder to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load i32, i32* %component_index, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors1 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %5, i32 0, i32 1
  %binary2 = bitcast %union._c* %colors1 to %struct._bin*
  %b_ht = getelementptr inbounds %struct._bin, %struct._bin* %binary2, i32 0, i32 0
  %6 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %b_ht, align 8, !tbaa !7
  %components = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %6, i32 0, i32 4
  %7 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components, align 8, !tbaa !36
  %arrayidx = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %7, i64 %idxprom
  %corder = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx, i32 0, i32 0
  store %struct.gx_ht_order_s* %corder, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %8 = bitcast %struct.gx_ht_cache_s** %pcache to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %cache = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %9, i32 0, i32 14
  %10 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %cache, align 8, !tbaa !44
  store %struct.gx_ht_cache_s* %10, %struct.gx_ht_cache_s** %pcache, align 8, !tbaa !1
  %11 = bitcast i32* %b_level to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors3 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %12, i32 0, i32 1
  %binary4 = bitcast %union._c* %colors3 to %struct._bin*
  %b_level5 = getelementptr inbounds %struct._bin, %struct._bin* %binary4, i32 0, i32 2
  %13 = load i32, i32* %b_level5, align 4, !tbaa !29
  store i32 %13, i32* %b_level, align 4, !tbaa !5
  %14 = bitcast i32* %level to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = load i32, i32* %b_level, align 4, !tbaa !5
  %idxprom6 = sext i32 %15 to i64
  %16 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %levels = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %16, i32 0, i32 12
  %17 = load i32*, i32** %levels, align 8, !tbaa !127
  %arrayidx7 = getelementptr inbounds i32, i32* %17, i64 %idxprom6
  %18 = load i32, i32* %arrayidx7, align 4, !tbaa !5
  store i32 %18, i32* %level, align 4, !tbaa !5
  %19 = bitcast %struct.gx_ht_tile_s** %bt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #2
  %20 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %pcache, align 8, !tbaa !1
  %num_cached = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %20, i32 0, i32 5
  %21 = load i32, i32* %num_cached, align 4, !tbaa !114
  %22 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %num_levels = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %22, i32 0, i32 8
  %23 = load i32, i32* %num_levels, align 4, !tbaa !110
  %cmp = icmp ult i32 %21, %23
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %24 = load i32, i32* %level, align 4, !tbaa !5
  %25 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %pcache, align 8, !tbaa !1
  %levels_per_tile = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %25, i32 0, i32 6
  %26 = load i32, i32* %levels_per_tile, align 4, !tbaa !115
  %div = sdiv i32 %24, %26
  %idxprom8 = sext i32 %div to i64
  %27 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %pcache, align 8, !tbaa !1
  %ht_tiles = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %27, i32 0, i32 2
  %28 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %ht_tiles, align 8, !tbaa !99
  %arrayidx9 = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %28, i64 %idxprom8
  store %struct.gx_ht_tile_s* %arrayidx9, %struct.gx_ht_tile_s** %bt, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %entry
  %29 = load i32, i32* %b_level, align 4, !tbaa !5
  %idxprom10 = sext i32 %29 to i64
  %30 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %pcache, align 8, !tbaa !1
  %ht_tiles11 = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %30, i32 0, i32 2
  %31 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %ht_tiles11, align 8, !tbaa !99
  %arrayidx12 = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %31, i64 %idxprom10
  store %struct.gx_ht_tile_s* %arrayidx12, %struct.gx_ht_tile_s** %bt, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %32 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %bt, align 8, !tbaa !1
  %level13 = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %32, i32 0, i32 1
  %33 = load i32, i32* %level13, align 4, !tbaa !117
  %34 = load i32, i32* %level, align 4, !tbaa !5
  %cmp14 = icmp ne i32 %33, %34
  br i1 %cmp14, label %if.then.15, label %if.end.20

if.then.15:                                       ; preds = %if.end
  %35 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #2
  %36 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %bt, align 8, !tbaa !1
  %37 = load i32, i32* %level, align 4, !tbaa !5
  %38 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %39 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %pcache, align 8, !tbaa !1
  %base_id = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %39, i32 0, i32 8
  %40 = load i64, i64* %base_id, align 8, !tbaa !111
  %41 = load i32, i32* %b_level, align 4, !tbaa !5
  %conv = sext i32 %41 to i64
  %add = add i64 %40, %conv
  %call = call i32 @render_ht(%struct.gx_ht_tile_s* %36, i32 %37, %struct.gx_ht_order_s* %38, i64 %add) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %42 = load i32, i32* %code, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %42, 0
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.then.15
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.then.15
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.19, %if.then.18
  %43 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.23 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.20

if.end.20:                                        ; preds = %cleanup.cont, %if.end
  %44 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %bt, align 8, !tbaa !1
  %45 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors21 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %45, i32 0, i32 1
  %binary22 = bitcast %union._c* %colors21 to %struct._bin*
  %b_tile = getelementptr inbounds %struct._bin, %struct._bin* %binary22, i32 0, i32 4
  store %struct.gx_ht_tile_s* %44, %struct.gx_ht_tile_s** %b_tile, align 8, !tbaa !11
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.23

cleanup.23:                                       ; preds = %if.end.20, %cleanup
  %46 = bitcast %struct.gx_ht_tile_s** %bt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #2
  %47 = bitcast i32* %level to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #2
  %48 = bitcast i32* %b_level to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #2
  %49 = bitcast %struct.gx_ht_cache_s** %pcache to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #2
  %50 = bitcast %struct.gx_ht_order_s** %porder to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #2
  %51 = bitcast i32* %component_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #2
  %52 = load i32, i32* %retval
  ret i32 %52
}

declare void @gx_set_rop_no_source(%struct.gx_rop_source_s**, %struct.gx_rop_source_s*, %struct.gx_device_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @render_ht(%struct.gx_ht_tile_s* %pbt, i32 %level, %struct.gx_ht_order_s* %porder, i64 %new_id) #0 {
entry:
  %retval = alloca i32, align 4
  %pbt.addr = alloca %struct.gx_ht_tile_s*, align 8
  %level.addr = alloca i32, align 4
  %porder.addr = alloca %struct.gx_ht_order_s*, align 8
  %new_id.addr = alloca i64, align 8
  %data = alloca i8*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_ht_tile_s* %pbt, %struct.gx_ht_tile_s** %pbt.addr, align 8, !tbaa !1
  store i32 %level, i32* %level.addr, align 4, !tbaa !5
  store %struct.gx_ht_order_s* %porder, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  store i64 %new_id, i64* %new_id.addr, align 8, !tbaa !28
  %0 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %pbt.addr, align 8, !tbaa !1
  %tiles = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %1, i32 0, i32 0
  %data1 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles, i32 0, i32 0
  %2 = load i8*, i8** %data1, align 8, !tbaa !104
  store i8* %2, i8** %data, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %4 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %4, i32 0, i32 10
  %5 = load %struct.gx_ht_order_procs_s*, %struct.gx_ht_order_procs_s** %procs, align 8, !tbaa !128
  %render = getelementptr inbounds %struct.gx_ht_order_procs_s, %struct.gx_ht_order_procs_s* %5, i32 0, i32 3
  %6 = load i32 (%struct.gx_ht_tile_s*, i32, %struct.gx_ht_order_s*)*, i32 (%struct.gx_ht_tile_s*, i32, %struct.gx_ht_order_s*)** %render, align 8, !tbaa !129
  %7 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %pbt.addr, align 8, !tbaa !1
  %8 = load i32, i32* %level.addr, align 4, !tbaa !5
  %9 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %call = call i32 %6(%struct.gx_ht_tile_s* %7, i32 %8, %struct.gx_ht_order_s* %9) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %10 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %11 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.end
  %12 = load i32, i32* %level.addr, align 4, !tbaa !5
  %13 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %pbt.addr, align 8, !tbaa !1
  %level2 = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %13, i32 0, i32 1
  store i32 %12, i32* %level2, align 4, !tbaa !117
  %14 = load i64, i64* %new_id.addr, align 8, !tbaa !28
  %15 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %pbt.addr, align 8, !tbaa !1
  %tiles3 = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %15, i32 0, i32 0
  %id = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles3, i32 0, i32 3
  store i64 %14, i64* %id, align 8, !tbaa !131
  %16 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %pbt.addr, align 8, !tbaa !1
  %tiles4 = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %16, i32 0, i32 0
  %num_planes = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles4, i32 0, i32 8
  store i32 1, i32* %num_planes, align 4, !tbaa !125
  %17 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %pbt.addr, align 8, !tbaa !1
  %tiles5 = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %17, i32 0, i32 0
  %raster = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles5, i32 0, i32 1
  %18 = load i32, i32* %raster, align 4, !tbaa !118
  %19 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %raster6 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %19, i32 0, i32 3
  %20 = load i16, i16* %raster6, align 2, !tbaa !107
  %conv = zext i16 %20 to i32
  %cmp7 = icmp sgt i32 %18, %conv
  br i1 %cmp7, label %if.then.9, label %if.end.19

if.then.9:                                        ; preds = %if.end
  %21 = load i8*, i8** %data, align 8, !tbaa !1
  %22 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %pbt.addr, align 8, !tbaa !1
  %tiles10 = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %22, i32 0, i32 0
  %rep_width = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles10, i32 0, i32 4
  %23 = load i16, i16* %rep_width, align 2, !tbaa !121
  %conv11 = zext i16 %23 to i32
  %24 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %pbt.addr, align 8, !tbaa !1
  %tiles12 = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %24, i32 0, i32 0
  %rep_height = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles12, i32 0, i32 5
  %25 = load i16, i16* %rep_height, align 2, !tbaa !122
  %conv13 = zext i16 %25 to i32
  %26 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %raster14 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %26, i32 0, i32 3
  %27 = load i16, i16* %raster14, align 2, !tbaa !107
  %conv15 = zext i16 %27 to i32
  %28 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %pbt.addr, align 8, !tbaa !1
  %tiles16 = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %28, i32 0, i32 0
  %size = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles16, i32 0, i32 2
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 0
  %29 = load i32, i32* %x, align 4, !tbaa !119
  %30 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %pbt.addr, align 8, !tbaa !1
  %tiles17 = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %30, i32 0, i32 0
  %raster18 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles17, i32 0, i32 1
  %31 = load i32, i32* %raster18, align 4, !tbaa !118
  call void @bits_replicate_horizontally(i8* %21, i32 %conv11, i32 %conv13, i32 %conv15, i32 %29, i32 %31) #4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.9, %if.end
  %32 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %pbt.addr, align 8, !tbaa !1
  %tiles20 = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %32, i32 0, i32 0
  %size21 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles20, i32 0, i32 2
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size21, i32 0, i32 1
  %33 = load i32, i32* %y, align 4, !tbaa !120
  %34 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %pbt.addr, align 8, !tbaa !1
  %tiles22 = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %34, i32 0, i32 0
  %rep_height23 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles22, i32 0, i32 5
  %35 = load i16, i16* %rep_height23, align 2, !tbaa !122
  %conv24 = zext i16 %35 to i32
  %cmp25 = icmp sgt i32 %33, %conv24
  br i1 %cmp25, label %land.lhs.true, label %if.end.40

land.lhs.true:                                    ; preds = %if.end.19
  %36 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %pbt.addr, align 8, !tbaa !1
  %tiles27 = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %36, i32 0, i32 0
  %shift = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles27, i32 0, i32 7
  %37 = load i16, i16* %shift, align 2, !tbaa !124
  %conv28 = zext i16 %37 to i32
  %cmp29 = icmp eq i32 %conv28, 0
  br i1 %cmp29, label %if.then.31, label %if.end.40

if.then.31:                                       ; preds = %land.lhs.true
  %38 = load i8*, i8** %data, align 8, !tbaa !1
  %39 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %pbt.addr, align 8, !tbaa !1
  %tiles32 = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %39, i32 0, i32 0
  %rep_height33 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles32, i32 0, i32 5
  %40 = load i16, i16* %rep_height33, align 2, !tbaa !122
  %conv34 = zext i16 %40 to i32
  %41 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %pbt.addr, align 8, !tbaa !1
  %tiles35 = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %41, i32 0, i32 0
  %raster36 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles35, i32 0, i32 1
  %42 = load i32, i32* %raster36, align 4, !tbaa !118
  %43 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %pbt.addr, align 8, !tbaa !1
  %tiles37 = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %43, i32 0, i32 0
  %size38 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles37, i32 0, i32 2
  %y39 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size38, i32 0, i32 1
  %44 = load i32, i32* %y39, align 4, !tbaa !120
  call void @bits_replicate_vertically(i8* %38, i32 %conv34, i32 %42, i32 %44) #4
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.31, %land.lhs.true, %if.end.19
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.40, %if.then
  %45 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #2
  %46 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #2
  %47 = load i32, i32* %retval
  ret i32 %47
}

declare void @bits_replicate_horizontally(i8*, i32, i32, i32, i32, i32) #1

declare void @bits_replicate_vertically(i8*, i32, i32, i32) #1

declare i32 @gx_dc_default_fill_masked(%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32) #1

declare i32 @gx_dc_write_color(i64, %struct.gx_device_s*, i8*, i32*) #1

declare i32 @enc_u_size_uint(i32) #1

declare i8* @enc_u_put_uint(i32, i8*) #1

declare i32 @gx_dc_read_color(i64*, %struct.gx_device_s*, i8*, i32) #1

declare i8* @enc_u_get_uint(i32*, i8*) #1

declare i32 @imod(i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 0}
!8 = !{!"_bin", !2, i64 0, !3, i64 8, !6, i64 24, !6, i64 28, !2, i64 32}
!9 = !{!10, !2, i64 0}
!10 = !{!"enum_ptr_s", !2, i64 0, !6, i64 8}
!11 = !{!8, !2, i64 32}
!12 = !{!13, !6, i64 52}
!13 = !{!"gx_ht_tile_s", !14, i64 0, !6, i64 48, !6, i64 52}
!14 = !{!"gx_strip_bitmap_s", !2, i64 0, !6, i64 8, !15, i64 12, !16, i64 24, !17, i64 32, !17, i64 34, !17, i64 36, !17, i64 38, !6, i64 40}
!15 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!16 = !{!"long", !3, i64 0}
!17 = !{!"short", !3, i64 0}
!18 = !{!19, !2, i64 0}
!19 = !{!"gc_procs_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!20 = !{!21, !2, i64 0}
!21 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !15, i64 352, !6, i64 360, !22, i64 368, !24, i64 632}
!22 = !{!"gs_client_color_s", !2, i64 0, !23, i64 8}
!23 = !{!"gs_paint_color_s", !3, i64 0}
!24 = !{!"_mask", !25, i64 0, !16, i64 8, !2, i64 16}
!25 = !{!"mp_", !6, i64 0, !6, i64 4}
!26 = !{!27, !2, i64 0}
!27 = !{!"gx_device_color_saved_s", !2, i64 0, !3, i64 8, !15, i64 336}
!28 = !{!16, !16, i64 0}
!29 = !{!8, !6, i64 24}
!30 = !{!31, !6, i64 16}
!31 = !{!"_svbin", !3, i64 0, !6, i64 16, !6, i64 20}
!32 = !{!8, !6, i64 28}
!33 = !{!31, !6, i64 20}
!34 = !{i64 0, i64 4, !5, i64 4, i64 4, !5}
!35 = !{!3, !3, i64 0}
!36 = !{!37, !2, i64 200}
!37 = !{!"gx_device_halftone_s", !38, i64 0, !43, i64 160, !16, i64 184, !3, i64 192, !2, i64 200, !6, i64 208, !6, i64 212, !6, i64 216, !6, i64 220}
!38 = !{!"gx_ht_order_s", !39, i64 0, !17, i64 40, !17, i64 42, !17, i64 44, !17, i64 46, !17, i64 48, !17, i64 50, !6, i64 52, !6, i64 56, !6, i64 60, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !40, i64 112, !2, i64 144, !6, i64 152}
!39 = !{!"gx_ht_cell_params_s", !17, i64 0, !17, i64 2, !17, i64 4, !17, i64 6, !17, i64 8, !17, i64 10, !16, i64 16, !17, i64 24, !17, i64 26, !6, i64 28, !6, i64 32, !6, i64 36}
!40 = !{!"gx_ht_order_screen_params_s", !41, i64 0, !16, i64 24}
!41 = !{!"gs_matrix_s", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20}
!42 = !{!"float", !3, i64 0}
!43 = !{!"rc_header_s", !16, i64 0, !2, i64 8, !2, i64 16}
!44 = !{!38, !2, i64 96}
!45 = !{!46, !2, i64 120}
!46 = !{!"gx_ht_cache_s", !2, i64 0, !6, i64 8, !2, i64 16, !6, i64 24, !38, i64 32, !6, i64 192, !6, i64 196, !6, i64 200, !16, i64 208, !2, i64 216}
!47 = !{!38, !2, i64 88}
!48 = !{!49, !2, i64 8}
!49 = !{!"gs_imager_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !50, i64 24, !6, i64 128, !52, i64 132, !6, i64 168, !53, i64 176, !53, i64 192, !6, i64 208, !6, i64 212, !17, i64 216, !3, i64 220, !55, i64 224, !55, i64 228, !56, i64 232, !16, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !42, i64 296, !57, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !42, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !58, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !59, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !59, i64 1336}
!50 = !{!"gx_line_params_s", !42, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !6, i64 36, !41, i64 40, !51, i64 64}
!51 = !{!"gx_dash_params_s", !2, i64 0, !6, i64 8, !42, i64 12, !6, i64 16, !42, i64 20, !6, i64 24, !6, i64 28, !42, i64 32}
!52 = !{!"gs_matrix_fixed_s", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!53 = !{!"gs_point_s", !54, i64 0, !54, i64 8}
!54 = !{!"double", !3, i64 0}
!55 = !{!"gs_transparency_source_s", !42, i64 0}
!56 = !{!"gs_xstate_trans_flags", !6, i64 0, !6, i64 4}
!57 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!58 = !{!"gx_transfer_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !2, i64 56}
!59 = !{!"gs_devicen_color_map_s", !6, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !16, i64 16, !3, i64 24}
!60 = !{!61, !17, i64 108}
!61 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !43, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !62, i64 96, !64, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !16, i64 928, !16, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !16, i64 968, !16, i64 976, !65, i64 984, !6, i64 1052, !6, i64 1056, !66, i64 1064, !2, i64 1104, !3, i64 1112, !68, i64 1120, !69, i64 1144}
!62 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !17, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !63, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !16, i64 704, !6, i64 712}
!63 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!64 = !{!"gx_device_cached_colors_s", !16, i64 0, !16, i64 8}
!65 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!66 = !{!"gdev_space_params_s", !16, i64 0, !16, i64 8, !67, i64 16, !6, i64 32, !3, i64 36}
!67 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !16, i64 8}
!68 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!69 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!70 = !{!61, !2, i64 1416}
!71 = !{!21, !6, i64 352}
!72 = !{!21, !6, i64 356}
!73 = !{!74, !6, i64 40}
!74 = !{!"gx_rop_source_s", !2, i64 0, !6, i64 8, !6, i64 12, !16, i64 16, !3, i64 24, !6, i64 40, !6, i64 44}
!75 = !{!61, !2, i64 1424}
!76 = !{!74, !2, i64 0}
!77 = !{!74, !6, i64 8}
!78 = !{!74, !6, i64 12}
!79 = !{!74, !16, i64 16}
!80 = !{!74, !6, i64 44}
!81 = !{!61, !2, i64 1696}
!82 = !{i64 0, i64 8, !1, i64 8, i64 8, !28, i64 8, i64 8, !1, i64 16, i64 16, !35, i64 32, i64 4, !5, i64 36, i64 4, !5, i64 40, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 2, !83, i64 18, i64 64, !35, i64 84, i64 256, !35, i64 340, i64 2, !83, i64 344, i64 8, !28, i64 8, i64 8, !1, i64 8, i64 128, !35, i64 352, i64 4, !5, i64 356, i64 4, !5, i64 360, i64 4, !5, i64 368, i64 8, !1, i64 376, i64 256, !35, i64 632, i64 4, !5, i64 636, i64 4, !5, i64 640, i64 8, !28, i64 648, i64 8, !1}
!83 = !{!17, !17, i64 0}
!84 = !{!49, !2, i64 392}
!85 = !{!15, !6, i64 0}
!86 = !{!37, !6, i64 216}
!87 = !{!15, !6, i64 4}
!88 = !{!37, !6, i64 220}
!89 = !{!61, !2, i64 1560}
!90 = !{!61, !6, i64 100}
!91 = !{!92, !2, i64 72}
!92 = !{!"gs_memory_s", !2, i64 0, !93, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!93 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!94 = !{!92, !2, i64 64}
!95 = !{!92, !2, i64 104}
!96 = !{!92, !2, i64 24}
!97 = !{!46, !2, i64 0}
!98 = !{!46, !6, i64 8}
!99 = !{!46, !2, i64 16}
!100 = !{!46, !6, i64 24}
!101 = !{!46, !2, i64 128}
!102 = !{!46, !2, i64 136}
!103 = !{!46, !2, i64 112}
!104 = !{!13, !2, i64 0}
!105 = !{!38, !17, i64 40}
!106 = !{!38, !17, i64 42}
!107 = !{!38, !17, i64 44}
!108 = !{!38, !17, i64 46}
!109 = !{!38, !6, i64 60}
!110 = !{!38, !6, i64 56}
!111 = !{!46, !16, i64 208}
!112 = !{i64 0, i64 2, !83, i64 2, i64 2, !83, i64 4, i64 2, !83, i64 6, i64 2, !83, i64 8, i64 2, !83, i64 10, i64 2, !83, i64 16, i64 8, !28, i64 24, i64 2, !83, i64 26, i64 2, !83, i64 28, i64 4, !5, i64 32, i64 4, !5, i64 36, i64 4, !5, i64 40, i64 2, !83, i64 42, i64 2, !83, i64 44, i64 2, !83, i64 46, i64 2, !83, i64 48, i64 2, !83, i64 50, i64 2, !83, i64 52, i64 4, !5, i64 56, i64 4, !5, i64 60, i64 4, !5, i64 64, i64 8, !1, i64 72, i64 8, !1, i64 80, i64 8, !1, i64 88, i64 8, !1, i64 96, i64 8, !1, i64 104, i64 8, !1, i64 112, i64 4, !113, i64 116, i64 4, !113, i64 120, i64 4, !113, i64 124, i64 4, !113, i64 128, i64 4, !113, i64 132, i64 4, !113, i64 136, i64 8, !28, i64 144, i64 8, !1, i64 152, i64 4, !5}
!113 = !{!42, !42, i64 0}
!114 = !{!46, !6, i64 192}
!115 = !{!46, !6, i64 196}
!116 = !{!46, !6, i64 200}
!117 = !{!13, !6, i64 48}
!118 = !{!13, !6, i64 8}
!119 = !{!13, !6, i64 12}
!120 = !{!13, !6, i64 16}
!121 = !{!13, !17, i64 32}
!122 = !{!13, !17, i64 34}
!123 = !{!13, !17, i64 36}
!124 = !{!13, !17, i64 38}
!125 = !{!13, !6, i64 40}
!126 = !{!46, !2, i64 216}
!127 = !{!38, !2, i64 80}
!128 = !{!38, !2, i64 64}
!129 = !{!130, !2, i64 24}
!130 = !{!"gx_ht_order_procs_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32}
!131 = !{!13, !16, i64 24}
