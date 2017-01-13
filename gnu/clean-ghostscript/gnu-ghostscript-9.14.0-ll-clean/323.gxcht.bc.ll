; ModuleID = './gxcht.bc'
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
%struct.gx_const_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.anon = type { i64, [64 x i8] }
%struct._svcol = type { [64 x i8], [64 x i32], i16 }
%struct.color_values_pair_s = type { [2 x [64 x i16]] }
%struct.tile_cursor_s = type { i32, i32, i32, i32, i32, i8*, i8*, i32, i8*, i32 }

@st_dc_ht_colored = internal constant %struct.gs_memory_struct_type_s { i32 656, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @dc_ht_colored_reloc_ptrs to i8*) }, align 8
@gx_dc_type_data_ht_colored = constant { %struct.gs_memory_struct_type_s*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* } { %struct.gs_memory_struct_type_s* @st_dc_ht_colored, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)* @gx_dc_ht_colored_save_dc, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)* @gx_dc_ht_colored_get_dev_halftone, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)* @gx_dc_ht_get_phase, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* @gx_dc_ht_colored_load, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)* @gx_dc_ht_colored_fill_rectangle, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)* @gx_dc_default_fill_masked, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)* @gx_dc_ht_colored_equal, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)* @gx_dc_ht_colored_write, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)* @gx_dc_ht_colored_read, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* @gx_dc_ht_colored_get_nonzero_comps }, align 8
@gx_dc_type_ht_colored = constant %struct.gx_device_color_type_s* bitcast ({ %struct.gs_memory_struct_type_s*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* }* @gx_dc_type_data_ht_colored to %struct.gx_device_color_type_s*), align 8
@.str = private unnamed_addr constant [14 x i8] c"dc_ht_colored\00", align 1
@dc_ht_colored_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @dc_ht_colored_enum_ptrs, i32 0, i32 0) }, align 8
@dc_ht_colored_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 8 }], align 2
@ht_no_bitmap = internal constant %struct.gx_const_strip_bitmap_s { i8* getelementptr (i8, i8* bitcast (%struct.anon* @ht_no_bitmap_data to i8*), i64 8), i32 8, %struct.gs_int_point_s { i32 64, i32 8 }, i64 0, i16 1, i16 1, i16 0, i16 0, i32 0 }, align 8
@ht_no_bitmap_data = internal constant %struct.anon zeroinitializer, align 8
@fc_color_quo = external constant [8 x i16*], align 16
@.str.1 = private unnamed_addr constant [17 x i8] c"\00\08\04\0C\02\0A\06\0E\01\09\05\0D\03\0B\07\0F\00", align 1
@expand_8x1_to_8x4 = internal constant [256 x i32] [i32 0, i32 1, i32 16, i32 17, i32 256, i32 257, i32 272, i32 273, i32 4096, i32 4097, i32 4112, i32 4113, i32 4352, i32 4353, i32 4368, i32 4369, i32 65536, i32 65537, i32 65552, i32 65553, i32 65792, i32 65793, i32 65808, i32 65809, i32 69632, i32 69633, i32 69648, i32 69649, i32 69888, i32 69889, i32 69904, i32 69905, i32 1048576, i32 1048577, i32 1048592, i32 1048593, i32 1048832, i32 1048833, i32 1048848, i32 1048849, i32 1052672, i32 1052673, i32 1052688, i32 1052689, i32 1052928, i32 1052929, i32 1052944, i32 1052945, i32 1114112, i32 1114113, i32 1114128, i32 1114129, i32 1114368, i32 1114369, i32 1114384, i32 1114385, i32 1118208, i32 1118209, i32 1118224, i32 1118225, i32 1118464, i32 1118465, i32 1118480, i32 1118481, i32 16777216, i32 16777217, i32 16777232, i32 16777233, i32 16777472, i32 16777473, i32 16777488, i32 16777489, i32 16781312, i32 16781313, i32 16781328, i32 16781329, i32 16781568, i32 16781569, i32 16781584, i32 16781585, i32 16842752, i32 16842753, i32 16842768, i32 16842769, i32 16843008, i32 16843009, i32 16843024, i32 16843025, i32 16846848, i32 16846849, i32 16846864, i32 16846865, i32 16847104, i32 16847105, i32 16847120, i32 16847121, i32 17825792, i32 17825793, i32 17825808, i32 17825809, i32 17826048, i32 17826049, i32 17826064, i32 17826065, i32 17829888, i32 17829889, i32 17829904, i32 17829905, i32 17830144, i32 17830145, i32 17830160, i32 17830161, i32 17891328, i32 17891329, i32 17891344, i32 17891345, i32 17891584, i32 17891585, i32 17891600, i32 17891601, i32 17895424, i32 17895425, i32 17895440, i32 17895441, i32 17895680, i32 17895681, i32 17895696, i32 17895697, i32 268435456, i32 268435457, i32 268435472, i32 268435473, i32 268435712, i32 268435713, i32 268435728, i32 268435729, i32 268439552, i32 268439553, i32 268439568, i32 268439569, i32 268439808, i32 268439809, i32 268439824, i32 268439825, i32 268500992, i32 268500993, i32 268501008, i32 268501009, i32 268501248, i32 268501249, i32 268501264, i32 268501265, i32 268505088, i32 268505089, i32 268505104, i32 268505105, i32 268505344, i32 268505345, i32 268505360, i32 268505361, i32 269484032, i32 269484033, i32 269484048, i32 269484049, i32 269484288, i32 269484289, i32 269484304, i32 269484305, i32 269488128, i32 269488129, i32 269488144, i32 269488145, i32 269488384, i32 269488385, i32 269488400, i32 269488401, i32 269549568, i32 269549569, i32 269549584, i32 269549585, i32 269549824, i32 269549825, i32 269549840, i32 269549841, i32 269553664, i32 269553665, i32 269553680, i32 269553681, i32 269553920, i32 269553921, i32 269553936, i32 269553937, i32 285212672, i32 285212673, i32 285212688, i32 285212689, i32 285212928, i32 285212929, i32 285212944, i32 285212945, i32 285216768, i32 285216769, i32 285216784, i32 285216785, i32 285217024, i32 285217025, i32 285217040, i32 285217041, i32 285278208, i32 285278209, i32 285278224, i32 285278225, i32 285278464, i32 285278465, i32 285278480, i32 285278481, i32 285282304, i32 285282305, i32 285282320, i32 285282321, i32 285282560, i32 285282561, i32 285282576, i32 285282577, i32 286261248, i32 286261249, i32 286261264, i32 286261265, i32 286261504, i32 286261505, i32 286261520, i32 286261521, i32 286265344, i32 286265345, i32 286265360, i32 286265361, i32 286265600, i32 286265601, i32 286265616, i32 286265617, i32 286326784, i32 286326785, i32 286326800, i32 286326801, i32 286327040, i32 286327041, i32 286327056, i32 286327057, i32 286330880, i32 286330881, i32 286330896, i32 286330897, i32 286331136, i32 286331137, i32 286331152, i32 286331153], align 16

; Function Attrs: nounwind uwtable
define internal void @gx_dc_ht_colored_save_dc(%struct.gx_device_color_s* %pdevc, %struct.gx_device_color_saved_s* %psdc) #0 {
entry:
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %psdc.addr = alloca %struct.gx_device_color_saved_s*, align 8
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gx_device_color_saved_s* %psdc, %struct.gx_device_color_saved_s** %psdc.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %0, i32 0, i32 0
  %1 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !5
  %2 = load %struct.gx_device_color_saved_s*, %struct.gx_device_color_saved_s** %psdc.addr, align 8, !tbaa !1
  %type1 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %2, i32 0, i32 0
  store %struct.gx_device_color_type_s* %1, %struct.gx_device_color_type_s** %type1, align 8, !tbaa !14
  %3 = load %struct.gx_device_color_saved_s*, %struct.gx_device_color_saved_s** %psdc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %3, i32 0, i32 1
  %colored = bitcast %union._svc* %colors to %struct._svcol*
  %c_base = getelementptr inbounds %struct._svcol, %struct._svcol* %colored, i32 0, i32 0
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %c_base, i32 0, i32 0
  %4 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors2 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %4, i32 0, i32 1
  %colored3 = bitcast %union._c* %colors2 to %struct._col*
  %c_base4 = getelementptr inbounds %struct._col, %struct._col* %colored3, i32 0, i32 2
  %arraydecay5 = getelementptr inbounds [64 x i8], [64 x i8]* %c_base4, i32 0, i32 0
  %call = call i8* @memcpy(i8* %arraydecay, i8* %arraydecay5, i64 64) #5
  %5 = load %struct.gx_device_color_saved_s*, %struct.gx_device_color_saved_s** %psdc.addr, align 8, !tbaa !1
  %colors6 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %5, i32 0, i32 1
  %colored7 = bitcast %union._svc* %colors6 to %struct._svcol*
  %c_level = getelementptr inbounds %struct._svcol, %struct._svcol* %colored7, i32 0, i32 1
  %arraydecay8 = getelementptr inbounds [64 x i32], [64 x i32]* %c_level, i32 0, i32 0
  %6 = bitcast i32* %arraydecay8 to i8*
  %7 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors9 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %7, i32 0, i32 1
  %colored10 = bitcast %union._c* %colors9 to %struct._col*
  %c_level11 = getelementptr inbounds %struct._col, %struct._col* %colored10, i32 0, i32 3
  %arraydecay12 = getelementptr inbounds [64 x i32], [64 x i32]* %c_level11, i32 0, i32 0
  %8 = bitcast i32* %arraydecay12 to i8*
  %call13 = call i8* @memcpy(i8* %6, i8* %8, i64 64) #5
  %9 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors14 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %9, i32 0, i32 1
  %colored15 = bitcast %union._c* %colors14 to %struct._col*
  %alpha = getelementptr inbounds %struct._col, %struct._col* %colored15, i32 0, i32 4
  %10 = load i16, i16* %alpha, align 2, !tbaa !16
  %11 = load %struct.gx_device_color_saved_s*, %struct.gx_device_color_saved_s** %psdc.addr, align 8, !tbaa !1
  %colors16 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %11, i32 0, i32 1
  %colored17 = bitcast %union._svc* %colors16 to %struct._svcol*
  %alpha18 = getelementptr inbounds %struct._svcol, %struct._svcol* %colored17, i32 0, i32 2
  store i16 %10, i16* %alpha18, align 2, !tbaa !19
  %12 = load %struct.gx_device_color_saved_s*, %struct.gx_device_color_saved_s** %psdc.addr, align 8, !tbaa !1
  %phase = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %12, i32 0, i32 2
  %13 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %phase19 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %13, i32 0, i32 2
  %14 = bitcast %struct.gs_int_point_s* %phase to i8*
  %15 = bitcast %struct.gs_int_point_s* %phase19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 8, i32 4, i1 false), !tbaa.struct !21
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.gx_device_halftone_s* @gx_dc_ht_colored_get_dev_halftone(%struct.gx_device_color_s* %pdevc) #0 {
entry:
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %0, i32 0, i32 1
  %colored = bitcast %union._c* %colors to %struct._col*
  %c_ht = getelementptr inbounds %struct._col, %struct._col* %colored, i32 0, i32 0
  %1 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %c_ht, align 8, !tbaa !23
  ret %struct.gx_device_halftone_s* %1
}

declare i32 @gx_dc_ht_get_phase(%struct.gx_device_color_s*, %struct.gs_int_point_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_ht_colored_load(%struct.gx_device_color_s* %pdevc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %ignore_dev, i32 %select) #0 {
entry:
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %ignore_dev.addr = alloca %struct.gx_device_s*, align 8
  %select.addr = alloca i32, align 4
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %ignore_dev, %struct.gx_device_s** %ignore_dev.addr, align 8, !tbaa !1
  store i32 %select, i32* %select.addr, align 4, !tbaa !24
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_ht_colored_fill_rectangle(%struct.gx_device_color_s* %pdevc, i32 %x, i32 %y, i32 %w, i32 %h, %struct.gx_device_s* %dev, i32 %lop, %struct.gx_rop_source_s* %source) #0 {
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
  %tbits = alloca [256 x i64], align 16
  %tile_bytes = alloca i32, align 4
  %tiles = alloca %struct.gx_strip_bitmap_s, align 8
  %no_source = alloca %struct.gx_rop_source_s, align 8
  %pdht = alloca %struct.gx_device_halftone_s*, align 8
  %depth = alloca i32, align 4
  %nplanes = alloca i32, align 4
  %set_ht_colors = alloca i32 (%struct.color_values_pair_s*, i64*, %struct.gx_const_strip_bitmap_s**, %struct.gx_device_color_s*, %struct.gx_device_s*, %struct.gx_ht_cache_s**, i32)*, align 8
  %set_color_ht = alloca void (i8*, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.gx_device_s*, %struct.color_values_pair_s*, i64*, %struct.gx_const_strip_bitmap_s**)*, align 8
  %vp = alloca %struct.color_values_pair_s, align 2
  %colors12 = alloca [128 x i64], align 16
  %sbits = alloca [64 x %struct.gx_const_strip_bitmap_s*], align 16
  %caches = alloca [64 x %struct.gx_ht_cache_s*], align 16
  %special = alloca i32, align 4
  %code = alloca i32, align 4
  %raster = alloca i32, align 4
  %size_x = alloca i32, align 4
  %dw = alloca i32, align 4
  %dh = alloca i32, align 4
  %lw = alloca i32, align 4
  %lh = alloca i32, align 4
  %no_rop = alloca i32, align 4
  %i = alloca i32, align 4
  %origx = alloca i32, align 4
  %origy = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %cbox = alloca %struct.gs_fixed_rect_s, align 4
  %t = alloca i32, align 4
  %pocs = alloca %struct.gx_ht_order_component_s*, align 8
  %cy = alloca i32, align 4
  %ch = alloca i32, align 4
  %left = alloca i32, align 4
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !22
  store i32 %y, i32* %y.addr, align 4, !tbaa !22
  store i32 %w, i32* %w.addr, align 4, !tbaa !22
  store i32 %h, i32* %h.addr, align 4, !tbaa !22
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !22
  store %struct.gx_rop_source_s* %source, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %0 = bitcast [256 x i64]* %tbits to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %0) #2
  %1 = bitcast i32* %tile_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 2048, i32* %tile_bytes, align 4, !tbaa !22
  %2 = bitcast %struct.gx_strip_bitmap_s* %tiles to i8*
  call void @llvm.lifetime.start(i64 48, i8* %2) #2
  %3 = bitcast %struct.gx_rop_source_s* %no_source to i8*
  call void @llvm.lifetime.start(i64 48, i8* %3) #2
  %4 = bitcast %struct.gx_device_halftone_s** %pdht to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %5, i32 0, i32 1
  %colored = bitcast %union._c* %colors to %struct._col*
  %c_ht = getelementptr inbounds %struct._col, %struct._col* %colored, i32 0, i32 0
  %6 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %c_ht, align 8, !tbaa !23
  store %struct.gx_device_halftone_s* %6, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %7 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 11
  %depth1 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %9 = load i16, i16* %depth1, align 2, !tbaa !25
  %conv = zext i16 %9 to i32
  store i32 %conv, i32* %depth, align 4, !tbaa !22
  %10 = bitcast i32* %nplanes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info2, i32 0, i32 1
  %12 = load i32, i32* %num_components, align 4, !tbaa !36
  store i32 %12, i32* %nplanes, align 4, !tbaa !22
  %13 = bitcast i32 (%struct.color_values_pair_s*, i64*, %struct.gx_const_strip_bitmap_s**, %struct.gx_device_color_s*, %struct.gx_device_s*, %struct.gx_ht_cache_s**, i32)** %set_ht_colors to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %14, i32 0, i32 42
  %dev_spec_op = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 65
  %15 = load i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)** %dev_spec_op, align 8, !tbaa !37
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 %15(%struct.gx_device_s* %16, i32 8, i8* null, i32 0) #6
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %17 = load i32, i32* %nplanes, align 4, !tbaa !22
  %cmp4 = icmp sle i32 %17, 4
  %cond = select i1 %cmp4, i32 (%struct.color_values_pair_s*, i64*, %struct.gx_const_strip_bitmap_s**, %struct.gx_device_color_s*, %struct.gx_device_s*, %struct.gx_ht_cache_s**, i32)* @set_ht_colors_le_4, i32 (%struct.color_values_pair_s*, i64*, %struct.gx_const_strip_bitmap_s**, %struct.gx_device_color_s*, %struct.gx_device_s*, %struct.gx_ht_cache_s**, i32)* @set_ht_colors_gt_4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond6 = phi i32 (%struct.color_values_pair_s*, i64*, %struct.gx_const_strip_bitmap_s**, %struct.gx_device_color_s*, %struct.gx_device_s*, %struct.gx_ht_cache_s**, i32)* [ @set_cmyk_1bit_colors, %cond.true ], [ %cond, %cond.false ]
  store i32 (%struct.color_values_pair_s*, i64*, %struct.gx_const_strip_bitmap_s**, %struct.gx_device_color_s*, %struct.gx_device_s*, %struct.gx_ht_cache_s**, i32)* %cond6, i32 (%struct.color_values_pair_s*, i64*, %struct.gx_const_strip_bitmap_s**, %struct.gx_device_color_s*, %struct.gx_device_s*, %struct.gx_ht_cache_s**, i32)** %set_ht_colors, align 8, !tbaa !1
  %18 = bitcast void (i8*, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.gx_device_s*, %struct.color_values_pair_s*, i64*, %struct.gx_const_strip_bitmap_s**)** %set_color_ht to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #2
  %19 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors7 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %19, i32 0, i32 1
  %colored8 = bitcast %union._c* %colors7 to %struct._col*
  %plane_mask = getelementptr inbounds %struct._col, %struct._col* %colored8, i32 0, i32 5
  %20 = load i64, i64* %plane_mask, align 8, !tbaa !38
  %and = and i64 %20, -16
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %cond.end
  %21 = load i32 (%struct.color_values_pair_s*, i64*, %struct.gx_const_strip_bitmap_s**, %struct.gx_device_color_s*, %struct.gx_device_s*, %struct.gx_ht_cache_s**, i32)*, i32 (%struct.color_values_pair_s*, i64*, %struct.gx_const_strip_bitmap_s**, %struct.gx_device_color_s*, %struct.gx_device_s*, %struct.gx_ht_cache_s**, i32)** %set_ht_colors, align 8, !tbaa !1
  %cmp9 = icmp ne i32 (%struct.color_values_pair_s*, i64*, %struct.gx_const_strip_bitmap_s**, %struct.gx_device_color_s*, %struct.gx_device_s*, %struct.gx_ht_cache_s**, i32)* %21, @set_ht_colors_gt_4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end
  %22 = phi i1 [ false, %cond.end ], [ %cmp9, %land.rhs ]
  %cond11 = select i1 %22, void (i8*, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.gx_device_s*, %struct.color_values_pair_s*, i64*, %struct.gx_const_strip_bitmap_s**)* @set_color_ht_le_4, void (i8*, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.gx_device_s*, %struct.color_values_pair_s*, i64*, %struct.gx_const_strip_bitmap_s**)* @set_color_ht_gt_4
  store void (i8*, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.gx_device_s*, %struct.color_values_pair_s*, i64*, %struct.gx_const_strip_bitmap_s**)* %cond11, void (i8*, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.gx_device_s*, %struct.color_values_pair_s*, i64*, %struct.gx_const_strip_bitmap_s**)** %set_color_ht, align 8, !tbaa !1
  %23 = bitcast %struct.color_values_pair_s* %vp to i8*
  call void @llvm.lifetime.start(i64 256, i8* %23) #2
  %24 = bitcast [128 x i64]* %colors12 to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %24) #2
  %25 = bitcast [64 x %struct.gx_const_strip_bitmap_s*]* %sbits to i8*
  call void @llvm.lifetime.start(i64 512, i8* %25) #2
  %26 = bitcast [64 x %struct.gx_ht_cache_s*]* %caches to i8*
  call void @llvm.lifetime.start(i64 512, i8* %26) #2
  %27 = bitcast i32* %special to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #2
  %28 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #2
  store i32 0, i32* %code, align 4, !tbaa !22
  %29 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #2
  %30 = bitcast i32* %size_x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #2
  %31 = bitcast i32* %dw to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #2
  %32 = bitcast i32* %dh to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #2
  %33 = bitcast i32* %lw to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #2
  %34 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %lcm_width = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %34, i32 0, i32 7
  %35 = load i32, i32* %lcm_width, align 4, !tbaa !39
  store i32 %35, i32* %lw, align 4, !tbaa !22
  %36 = bitcast i32* %lh to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #2
  %37 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %lcm_height = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %37, i32 0, i32 8
  %38 = load i32, i32* %lcm_height, align 4, !tbaa !46
  store i32 %38, i32* %lh, align 4, !tbaa !22
  %39 = bitcast i32* %no_rop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #2
  %40 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #2
  %41 = bitcast i32* %origx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #2
  %42 = bitcast i32* %origy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #2
  %43 = load i32, i32* %w.addr, align 4, !tbaa !22
  %cmp13 = icmp sle i32 %43, 0
  br i1 %cmp13, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.end
  %44 = load i32, i32* %h.addr, align 4, !tbaa !22
  %cmp15 = icmp sle i32 %44, 0
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.410

if.end:                                           ; preds = %lor.lhs.false
  %45 = load i32, i32* %x.addr, align 4, !tbaa !22
  store i32 %45, i32* %origx, align 4, !tbaa !22
  %46 = load i32, i32* %y.addr, align 4, !tbaa !22
  store i32 %46, i32* %origy, align 4, !tbaa !22
  %47 = load i32, i32* %w.addr, align 4, !tbaa !22
  %48 = load i32, i32* %h.addr, align 4, !tbaa !22
  %or = or i32 %47, %48
  %cmp17 = icmp sge i32 %or, 16
  br i1 %cmp17, label %if.then.19, label %if.end.69

if.then.19:                                       ; preds = %if.end
  %49 = bitcast %struct.gs_fixed_rect_s* %cbox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %49) #2
  %50 = bitcast i32* %t to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #2
  %51 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs20 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %51, i32 0, i32 42
  %get_clipping_box = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs20, i32 0, i32 36
  %52 = load void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)** %get_clipping_box, align 8, !tbaa !47
  %53 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  call void %52(%struct.gx_device_s* %53, %struct.gs_fixed_rect_s* %cbox) #6
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 0
  %x21 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %54 = load i32, i32* %x21, align 4, !tbaa !48
  %shr = ashr i32 %54, 8
  store i32 %shr, i32* %t, align 4, !tbaa !22
  %55 = load i32, i32* %x.addr, align 4, !tbaa !22
  %cmp22 = icmp sgt i32 %shr, %55
  br i1 %cmp22, label %if.then.24, label %if.end.29

if.then.24:                                       ; preds = %if.then.19
  %56 = load i32, i32* %x.addr, align 4, !tbaa !22
  %57 = load i32, i32* %t, align 4, !tbaa !22
  %sub = sub nsw i32 %56, %57
  %58 = load i32, i32* %w.addr, align 4, !tbaa !22
  %add = add nsw i32 %58, %sub
  store i32 %add, i32* %w.addr, align 4, !tbaa !22
  %cmp25 = icmp sle i32 %add, 0
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.then.24
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %if.then.24
  %59 = load i32, i32* %t, align 4, !tbaa !22
  store i32 %59, i32* %x.addr, align 4, !tbaa !22
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then.19
  %p30 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 0
  %y31 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p30, i32 0, i32 1
  %60 = load i32, i32* %y31, align 4, !tbaa !51
  %shr32 = ashr i32 %60, 8
  store i32 %shr32, i32* %t, align 4, !tbaa !22
  %61 = load i32, i32* %y.addr, align 4, !tbaa !22
  %cmp33 = icmp sgt i32 %shr32, %61
  br i1 %cmp33, label %if.then.35, label %if.end.42

if.then.35:                                       ; preds = %if.end.29
  %62 = load i32, i32* %y.addr, align 4, !tbaa !22
  %63 = load i32, i32* %t, align 4, !tbaa !22
  %sub36 = sub nsw i32 %62, %63
  %64 = load i32, i32* %h.addr, align 4, !tbaa !22
  %add37 = add nsw i32 %64, %sub36
  store i32 %add37, i32* %h.addr, align 4, !tbaa !22
  %cmp38 = icmp sle i32 %add37, 0
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.then.35
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.41:                                        ; preds = %if.then.35
  %65 = load i32, i32* %t, align 4, !tbaa !22
  store i32 %65, i32* %y.addr, align 4, !tbaa !22
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.end.29
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 1
  %x43 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %66 = load i32, i32* %x43, align 4, !tbaa !52
  %shr44 = ashr i32 %66, 8
  store i32 %shr44, i32* %t, align 4, !tbaa !22
  %67 = load i32, i32* %x.addr, align 4, !tbaa !22
  %68 = load i32, i32* %w.addr, align 4, !tbaa !22
  %add45 = add nsw i32 %67, %68
  %cmp46 = icmp slt i32 %shr44, %add45
  br i1 %cmp46, label %if.then.48, label %if.end.54

if.then.48:                                       ; preds = %if.end.42
  %69 = load i32, i32* %t, align 4, !tbaa !22
  %70 = load i32, i32* %x.addr, align 4, !tbaa !22
  %sub49 = sub nsw i32 %69, %70
  store i32 %sub49, i32* %w.addr, align 4, !tbaa !22
  %cmp50 = icmp sle i32 %sub49, 0
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.then.48
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.53:                                        ; preds = %if.then.48
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.end.42
  %q55 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 1
  %y56 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q55, i32 0, i32 1
  %71 = load i32, i32* %y56, align 4, !tbaa !53
  %shr57 = ashr i32 %71, 8
  store i32 %shr57, i32* %t, align 4, !tbaa !22
  %72 = load i32, i32* %y.addr, align 4, !tbaa !22
  %73 = load i32, i32* %h.addr, align 4, !tbaa !22
  %add58 = add nsw i32 %72, %73
  %cmp59 = icmp slt i32 %shr57, %add58
  br i1 %cmp59, label %if.then.61, label %if.end.67

if.then.61:                                       ; preds = %if.end.54
  %74 = load i32, i32* %t, align 4, !tbaa !22
  %75 = load i32, i32* %y.addr, align 4, !tbaa !22
  %sub62 = sub nsw i32 %74, %75
  store i32 %sub62, i32* %h.addr, align 4, !tbaa !22
  %cmp63 = icmp sle i32 %sub62, 0
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.then.61
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.66:                                        ; preds = %if.then.61
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.end.54
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.67, %if.then.65, %if.then.52, %if.then.40, %if.then.27
  %76 = bitcast i32* %t to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #2
  %77 = bitcast %struct.gs_fixed_rect_s* %cbox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %77) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.410 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.69

if.end.69:                                        ; preds = %cleanup.cont, %if.end
  %78 = load i32, i32* %lop.addr, align 4, !tbaa !22
  %and70 = and i32 %78, -513
  store i32 %and70, i32* %lop.addr, align 4, !tbaa !22
  %79 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %components = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %79, i32 0, i32 4
  %80 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components, align 8, !tbaa !54
  %cmp71 = icmp eq %struct.gx_ht_order_component_s* %80, null
  br i1 %cmp71, label %if.then.73, label %if.else

if.then.73:                                       ; preds = %if.end.69
  %81 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %order = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %81, i32 0, i32 0
  %cache = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %order, i32 0, i32 14
  %82 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %cache, align 8, !tbaa !55
  %arrayidx = getelementptr inbounds [64 x %struct.gx_ht_cache_s*], [64 x %struct.gx_ht_cache_s*]* %caches, i32 0, i64 3
  store %struct.gx_ht_cache_s* %82, %struct.gx_ht_cache_s** %arrayidx, align 8, !tbaa !1
  %arrayidx74 = getelementptr inbounds [64 x %struct.gx_ht_cache_s*], [64 x %struct.gx_ht_cache_s*]* %caches, i32 0, i64 2
  store %struct.gx_ht_cache_s* %82, %struct.gx_ht_cache_s** %arrayidx74, align 8, !tbaa !1
  %arrayidx75 = getelementptr inbounds [64 x %struct.gx_ht_cache_s*], [64 x %struct.gx_ht_cache_s*]* %caches, i32 0, i64 1
  store %struct.gx_ht_cache_s* %82, %struct.gx_ht_cache_s** %arrayidx75, align 8, !tbaa !1
  %arrayidx76 = getelementptr inbounds [64 x %struct.gx_ht_cache_s*], [64 x %struct.gx_ht_cache_s*]* %caches, i32 0, i64 0
  store %struct.gx_ht_cache_s* %82, %struct.gx_ht_cache_s** %arrayidx76, align 8, !tbaa !1
  store i32 4, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.73
  %83 = load i32, i32* %i, align 4, !tbaa !22
  %84 = load i32, i32* %nplanes, align 4, !tbaa !22
  %cmp77 = icmp slt i32 %83, %84
  br i1 %cmp77, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %85 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %order79 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %85, i32 0, i32 0
  %cache80 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %order79, i32 0, i32 14
  %86 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %cache80, align 8, !tbaa !55
  %87 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom = sext i32 %87 to i64
  %arrayidx81 = getelementptr inbounds [64 x %struct.gx_ht_cache_s*], [64 x %struct.gx_ht_cache_s*]* %caches, i32 0, i64 %idxprom
  store %struct.gx_ht_cache_s* %86, %struct.gx_ht_cache_s** %arrayidx81, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %88 = load i32, i32* %i, align 4, !tbaa !22
  %inc = add nsw i32 %88, 1
  store i32 %inc, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.95

if.else:                                          ; preds = %if.end.69
  %89 = bitcast %struct.gx_ht_order_component_s** %pocs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %89) #2
  %90 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %components82 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %90, i32 0, i32 4
  %91 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components82, align 8, !tbaa !54
  store %struct.gx_ht_order_component_s* %91, %struct.gx_ht_order_component_s** %pocs, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond.83

for.cond.83:                                      ; preds = %for.inc.92, %if.else
  %92 = load i32, i32* %i, align 4, !tbaa !22
  %93 = load i32, i32* %nplanes, align 4, !tbaa !22
  %cmp84 = icmp slt i32 %92, %93
  br i1 %cmp84, label %for.body.86, label %for.end.94

for.body.86:                                      ; preds = %for.cond.83
  %94 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom87 = sext i32 %94 to i64
  %95 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %pocs, align 8, !tbaa !1
  %arrayidx88 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %95, i64 %idxprom87
  %corder = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx88, i32 0, i32 0
  %cache89 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %corder, i32 0, i32 14
  %96 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %cache89, align 8, !tbaa !56
  %97 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom90 = sext i32 %97 to i64
  %arrayidx91 = getelementptr inbounds [64 x %struct.gx_ht_cache_s*], [64 x %struct.gx_ht_cache_s*]* %caches, i32 0, i64 %idxprom90
  store %struct.gx_ht_cache_s* %96, %struct.gx_ht_cache_s** %arrayidx91, align 8, !tbaa !1
  br label %for.inc.92

for.inc.92:                                       ; preds = %for.body.86
  %98 = load i32, i32* %i, align 4, !tbaa !22
  %inc93 = add nsw i32 %98, 1
  store i32 %inc93, i32* %i, align 4, !tbaa !22
  br label %for.cond.83

for.end.94:                                       ; preds = %for.cond.83
  %99 = bitcast %struct.gx_ht_order_component_s** %pocs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #2
  br label %if.end.95

if.end.95:                                        ; preds = %for.end.94, %for.end
  %100 = load i32 (%struct.color_values_pair_s*, i64*, %struct.gx_const_strip_bitmap_s**, %struct.gx_device_color_s*, %struct.gx_device_s*, %struct.gx_ht_cache_s**, i32)*, i32 (%struct.color_values_pair_s*, i64*, %struct.gx_const_strip_bitmap_s**, %struct.gx_device_color_s*, %struct.gx_device_s*, %struct.gx_ht_cache_s**, i32)** %set_ht_colors, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [128 x i64], [128 x i64]* %colors12, i32 0, i32 0
  %arraydecay96 = getelementptr inbounds [64 x %struct.gx_const_strip_bitmap_s*], [64 x %struct.gx_const_strip_bitmap_s*]* %sbits, i32 0, i32 0
  %101 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %102 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay97 = getelementptr inbounds [64 x %struct.gx_ht_cache_s*], [64 x %struct.gx_ht_cache_s*]* %caches, i32 0, i32 0
  %103 = load i32, i32* %nplanes, align 4, !tbaa !22
  %call98 = call i32 %100(%struct.color_values_pair_s* %vp, i64* %arraydecay, %struct.gx_const_strip_bitmap_s** %arraydecay96, %struct.gx_device_color_s* %101, %struct.gx_device_s* %102, %struct.gx_ht_cache_s** %arraydecay97, i32 %103) #6
  store i32 %call98, i32* %special, align 4, !tbaa !22
  %104 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %cmp99 = icmp eq %struct.gx_rop_source_s* %104, null
  br i1 %cmp99, label %land.rhs.101, label %land.end.105

land.rhs.101:                                     ; preds = %if.end.95
  %105 = load i32, i32* %lop.addr, align 4, !tbaa !22
  %and102 = and i32 %105, 563
  %cmp103 = icmp eq i32 %and102, 48
  br label %land.end.105

land.end.105:                                     ; preds = %land.rhs.101, %if.end.95
  %106 = phi i1 [ false, %if.end.95 ], [ %cmp103, %land.rhs.101 ]
  %land.ext = zext i1 %106 to i32
  store i32 %land.ext, i32* %no_rop, align 4, !tbaa !22
  %107 = load i32, i32* %no_rop, align 4, !tbaa !22
  %tobool106 = icmp ne i32 %107, 0
  br i1 %tobool106, label %if.end.110, label %land.lhs.true

land.lhs.true:                                    ; preds = %land.end.105
  %108 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %cmp107 = icmp eq %struct.gx_rop_source_s* %108, null
  br i1 %cmp107, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %land.lhs.true
  %109 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  call void @gx_set_rop_no_source(%struct.gx_rop_source_s** %source.addr, %struct.gx_rop_source_s* %no_source, %struct.gx_device_s* %109) #6
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.109, %land.lhs.true, %land.end.105
  %110 = load i32, i32* %w.addr, align 4, !tbaa !22
  %111 = load i32, i32* %lw, align 4, !tbaa !22
  %cmp111 = icmp sgt i32 %110, %111
  br i1 %cmp111, label %land.lhs.true.116, label %lor.lhs.false.113

lor.lhs.false.113:                                ; preds = %if.end.110
  %112 = load i32, i32* %h.addr, align 4, !tbaa !22
  %113 = load i32, i32* %lh, align 4, !tbaa !22
  %cmp114 = icmp sgt i32 %112, %113
  br i1 %cmp114, label %land.lhs.true.116, label %if.end.247

land.lhs.true.116:                                ; preds = %lor.lhs.false.113, %if.end.110
  %114 = load i32, i32* %lw, align 4, !tbaa !22
  %115 = load i32, i32* %depth, align 4, !tbaa !22
  %mul = mul nsw i32 %114, %115
  %add117 = add nsw i32 %mul, 63
  %shr118 = ashr i32 %add117, 6
  %shl = shl i32 %shr118, 3
  store i32 %shl, i32* %raster, align 4, !tbaa !22
  %116 = load i32, i32* %lh, align 4, !tbaa !22
  %div = udiv i32 2048, %116
  %cmp119 = icmp ule i32 %shl, %div
  br i1 %cmp119, label %if.then.121, label %if.end.247

if.then.121:                                      ; preds = %land.lhs.true.116
  br label %do.body

do.body:                                          ; preds = %if.then.121
  br label %do.body.122

do.body.122:                                      ; preds = %do.body
  br label %do.body.123

do.body.123:                                      ; preds = %do.body.122
  %117 = load i32, i32* %x.addr, align 4, !tbaa !22
  %118 = load i32, i32* %y.addr, align 4, !tbaa !22
  %or124 = or i32 %117, %118
  %cmp125 = icmp slt i32 %or124, 0
  br i1 %cmp125, label %if.then.127, label %if.end.138

if.then.127:                                      ; preds = %do.body.123
  %119 = load i32, i32* %x.addr, align 4, !tbaa !22
  %cmp128 = icmp slt i32 %119, 0
  br i1 %cmp128, label %if.then.130, label %if.end.132

if.then.130:                                      ; preds = %if.then.127
  %120 = load i32, i32* %x.addr, align 4, !tbaa !22
  %121 = load i32, i32* %w.addr, align 4, !tbaa !22
  %add131 = add nsw i32 %121, %120
  store i32 %add131, i32* %w.addr, align 4, !tbaa !22
  store i32 0, i32* %x.addr, align 4, !tbaa !22
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.130, %if.then.127
  %122 = load i32, i32* %y.addr, align 4, !tbaa !22
  %cmp133 = icmp slt i32 %122, 0
  br i1 %cmp133, label %if.then.135, label %if.end.137

if.then.135:                                      ; preds = %if.end.132
  %123 = load i32, i32* %y.addr, align 4, !tbaa !22
  %124 = load i32, i32* %h.addr, align 4, !tbaa !22
  %add136 = add nsw i32 %124, %123
  store i32 %add136, i32* %h.addr, align 4, !tbaa !22
  store i32 0, i32* %y.addr, align 4, !tbaa !22
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.135, %if.end.132
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %do.body.123
  br label %do.cond

do.cond:                                          ; preds = %if.end.138
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.139

do.body.139:                                      ; preds = %do.end
  %125 = load i32, i32* %w.addr, align 4, !tbaa !22
  %126 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %126, i32 0, i32 13
  %127 = load i32, i32* %width, align 4, !tbaa !58
  %128 = load i32, i32* %x.addr, align 4, !tbaa !22
  %sub140 = sub nsw i32 %127, %128
  %cmp141 = icmp sgt i32 %125, %sub140
  br i1 %cmp141, label %if.then.143, label %if.end.146

if.then.143:                                      ; preds = %do.body.139
  %129 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width144 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %129, i32 0, i32 13
  %130 = load i32, i32* %width144, align 4, !tbaa !58
  %131 = load i32, i32* %x.addr, align 4, !tbaa !22
  %sub145 = sub nsw i32 %130, %131
  store i32 %sub145, i32* %w.addr, align 4, !tbaa !22
  br label %if.end.146

if.end.146:                                       ; preds = %if.then.143, %do.body.139
  br label %do.cond.147

do.cond.147:                                      ; preds = %if.end.146
  br label %do.end.148

do.end.148:                                       ; preds = %do.cond.147
  br label %do.body.149

do.body.149:                                      ; preds = %do.end.148
  %132 = load i32, i32* %h.addr, align 4, !tbaa !22
  %133 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %133, i32 0, i32 14
  %134 = load i32, i32* %height, align 4, !tbaa !59
  %135 = load i32, i32* %y.addr, align 4, !tbaa !22
  %sub150 = sub nsw i32 %134, %135
  %cmp151 = icmp sgt i32 %132, %sub150
  br i1 %cmp151, label %if.then.153, label %if.end.156

if.then.153:                                      ; preds = %do.body.149
  %136 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height154 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %136, i32 0, i32 14
  %137 = load i32, i32* %height154, align 4, !tbaa !59
  %138 = load i32, i32* %y.addr, align 4, !tbaa !22
  %sub155 = sub nsw i32 %137, %138
  store i32 %sub155, i32* %h.addr, align 4, !tbaa !22
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.153, %do.body.149
  br label %do.cond.157

do.cond.157:                                      ; preds = %if.end.156
  br label %do.end.158

do.end.158:                                       ; preds = %do.cond.157
  br label %do.cond.159

do.cond.159:                                      ; preds = %do.end.158
  br label %do.end.160

do.end.160:                                       ; preds = %do.cond.159
  %139 = load i32, i32* %w.addr, align 4, !tbaa !22
  %cmp161 = icmp sle i32 %139, 0
  br i1 %cmp161, label %if.then.166, label %lor.lhs.false.163

lor.lhs.false.163:                                ; preds = %do.end.160
  %140 = load i32, i32* %h.addr, align 4, !tbaa !22
  %cmp164 = icmp sle i32 %140, 0
  br i1 %cmp164, label %if.then.166, label %if.end.167

if.then.166:                                      ; preds = %lor.lhs.false.163, %do.end.160
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.410

if.end.167:                                       ; preds = %lor.lhs.false.163
  br label %do.cond.168

do.cond.168:                                      ; preds = %if.end.167
  br label %do.end.169

do.end.169:                                       ; preds = %do.cond.168
  %141 = load i32, i32* %w.addr, align 4, !tbaa !22
  %142 = load i32, i32* %lw, align 4, !tbaa !22
  %cmp170 = icmp sgt i32 %141, %142
  br i1 %cmp170, label %if.then.175, label %lor.lhs.false.172

lor.lhs.false.172:                                ; preds = %do.end.169
  %143 = load i32, i32* %h.addr, align 4, !tbaa !22
  %144 = load i32, i32* %lh, align 4, !tbaa !22
  %cmp173 = icmp sgt i32 %143, %144
  br i1 %cmp173, label %if.then.175, label %if.end.246

if.then.175:                                      ; preds = %lor.lhs.false.172, %do.end.169
  %arraydecay176 = getelementptr inbounds [256 x i64], [256 x i64]* %tbits, i32 0, i32 0
  %145 = bitcast i64* %arraydecay176 to i8*
  %data = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles, i32 0, i32 0
  store i8* %145, i8** %data, align 8, !tbaa !60
  %146 = load i32, i32* %raster, align 4, !tbaa !22
  %raster177 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles, i32 0, i32 1
  store i32 %146, i32* %raster177, align 4, !tbaa !62
  %147 = load i32, i32* %lw, align 4, !tbaa !22
  %size = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles, i32 0, i32 2
  %x178 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 0
  store i32 %147, i32* %x178, align 4, !tbaa !63
  %conv179 = trunc i32 %147 to i16
  %rep_width = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles, i32 0, i32 4
  store i16 %conv179, i16* %rep_width, align 2, !tbaa !64
  %148 = load i32, i32* %lh, align 4, !tbaa !22
  %size180 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles, i32 0, i32 2
  %y181 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size180, i32 0, i32 1
  store i32 %148, i32* %y181, align 4, !tbaa !65
  %conv182 = trunc i32 %148 to i16
  %rep_height = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles, i32 0, i32 5
  store i16 %conv182, i16* %rep_height, align 2, !tbaa !66
  %149 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %149, i32 0, i32 1
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 1
  %150 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !67
  %call183 = call i64 @gs_next_ids(%struct.gs_memory_s* %150, i32 1) #6
  %id = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles, i32 0, i32 3
  store i64 %call183, i64* %id, align 8, !tbaa !68
  %shift = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles, i32 0, i32 7
  store i16 0, i16* %shift, align 2, !tbaa !69
  %rep_shift = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles, i32 0, i32 6
  store i16 0, i16* %rep_shift, align 2, !tbaa !70
  %num_planes = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles, i32 0, i32 8
  store i32 1, i32* %num_planes, align 4, !tbaa !71
  %151 = load void (i8*, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.gx_device_s*, %struct.color_values_pair_s*, i64*, %struct.gx_const_strip_bitmap_s**)*, void (i8*, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.gx_device_s*, %struct.color_values_pair_s*, i64*, %struct.gx_const_strip_bitmap_s**)** %set_color_ht, align 8, !tbaa !1
  %arraydecay184 = getelementptr inbounds [256 x i64], [256 x i64]* %tbits, i32 0, i32 0
  %152 = bitcast i64* %arraydecay184 to i8*
  %153 = load i32, i32* %raster, align 4, !tbaa !22
  %154 = load i32, i32* %lw, align 4, !tbaa !22
  %155 = load i32, i32* %lh, align 4, !tbaa !22
  %156 = load i32, i32* %depth, align 4, !tbaa !22
  %157 = load i32, i32* %special, align 4, !tbaa !22
  %158 = load i32, i32* %nplanes, align 4, !tbaa !22
  %159 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors185 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %159, i32 0, i32 1
  %colored186 = bitcast %union._c* %colors185 to %struct._col*
  %plane_mask187 = getelementptr inbounds %struct._col, %struct._col* %colored186, i32 0, i32 5
  %160 = load i64, i64* %plane_mask187, align 8, !tbaa !38
  %161 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay188 = getelementptr inbounds [128 x i64], [128 x i64]* %colors12, i32 0, i32 0
  %arraydecay189 = getelementptr inbounds [64 x %struct.gx_const_strip_bitmap_s*], [64 x %struct.gx_const_strip_bitmap_s*]* %sbits, i32 0, i32 0
  call void %151(i8* %152, i32 %153, i32 0, i32 0, i32 %154, i32 %155, i32 %156, i32 %157, i32 %158, i64 %160, %struct.gx_device_s* %161, %struct.color_values_pair_s* %vp, i64* %arraydecay188, %struct.gx_const_strip_bitmap_s** %arraydecay189) #6
  %162 = load i32, i32* %no_rop, align 4, !tbaa !22
  %tobool190 = icmp ne i32 %162, 0
  br i1 %tobool190, label %if.then.191, label %if.end.197

if.then.191:                                      ; preds = %if.then.175
  %163 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs192 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %163, i32 0, i32 42
  %strip_tile_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs192, i32 0, i32 34
  %164 = load i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)** %strip_tile_rectangle, align 8, !tbaa !72
  %165 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %166 = load i32, i32* %x.addr, align 4, !tbaa !22
  %167 = load i32, i32* %y.addr, align 4, !tbaa !22
  %168 = load i32, i32* %w.addr, align 4, !tbaa !22
  %169 = load i32, i32* %h.addr, align 4, !tbaa !22
  %170 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %phase = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %170, i32 0, i32 2
  %x193 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 0
  %171 = load i32, i32* %x193, align 4, !tbaa !73
  %172 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %phase194 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %172, i32 0, i32 2
  %y195 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase194, i32 0, i32 1
  %173 = load i32, i32* %y195, align 4, !tbaa !74
  %call196 = call i32 %164(%struct.gx_device_s* %165, %struct.gx_strip_bitmap_s* %tiles, i32 %166, i32 %167, i32 %168, i32 %169, i64 -1, i64 -1, i32 %171, i32 %173) #6
  store i32 %call196, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.410

if.end.197:                                       ; preds = %if.then.175
  %174 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %planar_height = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %174, i32 0, i32 5
  %175 = load i32, i32* %planar_height, align 4, !tbaa !75
  %cmp198 = icmp eq i32 %175, 0
  br i1 %cmp198, label %if.then.200, label %if.else.219

if.then.200:                                      ; preds = %if.end.197
  %176 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs201 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %176, i32 0, i32 42
  %strip_copy_rop = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs201, i32 0, i32 35
  %177 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)** %strip_copy_rop, align 8, !tbaa !77
  %178 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %179 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %sdata = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %179, i32 0, i32 0
  %180 = load i8*, i8** %sdata, align 8, !tbaa !78
  %181 = load i32, i32* %y.addr, align 4, !tbaa !22
  %182 = load i32, i32* %origy, align 4, !tbaa !22
  %sub202 = sub nsw i32 %181, %182
  %183 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %sraster = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %183, i32 0, i32 2
  %184 = load i32, i32* %sraster, align 4, !tbaa !79
  %mul203 = mul i32 %sub202, %184
  %idx.ext = zext i32 %mul203 to i64
  %add.ptr = getelementptr inbounds i8, i8* %180, i64 %idx.ext
  %185 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %sourcex = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %185, i32 0, i32 1
  %186 = load i32, i32* %sourcex, align 4, !tbaa !80
  %187 = load i32, i32* %x.addr, align 4, !tbaa !22
  %188 = load i32, i32* %origx, align 4, !tbaa !22
  %sub204 = sub nsw i32 %187, %188
  %add205 = add nsw i32 %186, %sub204
  %189 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %sraster206 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %189, i32 0, i32 2
  %190 = load i32, i32* %sraster206, align 4, !tbaa !79
  %191 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %id207 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %191, i32 0, i32 3
  %192 = load i64, i64* %id207, align 8, !tbaa !81
  %193 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %use_scolors = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %193, i32 0, i32 6
  %194 = load i32, i32* %use_scolors, align 4, !tbaa !82
  %tobool208 = icmp ne i32 %194, 0
  br i1 %tobool208, label %cond.true.209, label %cond.false.211

cond.true.209:                                    ; preds = %if.then.200
  %195 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %scolors = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %195, i32 0, i32 4
  %arraydecay210 = getelementptr inbounds [2 x i64], [2 x i64]* %scolors, i32 0, i32 0
  br label %cond.end.212

cond.false.211:                                   ; preds = %if.then.200
  br label %cond.end.212

cond.end.212:                                     ; preds = %cond.false.211, %cond.true.209
  %cond213 = phi i64* [ %arraydecay210, %cond.true.209 ], [ null, %cond.false.211 ]
  %196 = load i32, i32* %x.addr, align 4, !tbaa !22
  %197 = load i32, i32* %y.addr, align 4, !tbaa !22
  %198 = load i32, i32* %w.addr, align 4, !tbaa !22
  %199 = load i32, i32* %h.addr, align 4, !tbaa !22
  %200 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %phase214 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %200, i32 0, i32 2
  %x215 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase214, i32 0, i32 0
  %201 = load i32, i32* %x215, align 4, !tbaa !73
  %202 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %phase216 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %202, i32 0, i32 2
  %y217 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase216, i32 0, i32 1
  %203 = load i32, i32* %y217, align 4, !tbaa !74
  %204 = load i32, i32* %lop.addr, align 4, !tbaa !22
  %call218 = call i32 %177(%struct.gx_device_s* %178, i8* %add.ptr, i32 %add205, i32 %190, i64 %192, i64* %cond213, %struct.gx_strip_bitmap_s* %tiles, i64* null, i32 %196, i32 %197, i32 %198, i32 %199, i32 %201, i32 %203, i32 %204) #6
  store i32 %call218, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.410

if.else.219:                                      ; preds = %if.end.197
  %205 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs220 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %205, i32 0, i32 42
  %strip_copy_rop2 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs220, i32 0, i32 69
  %206 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)** %strip_copy_rop2, align 8, !tbaa !83
  %207 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %208 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %sdata221 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %208, i32 0, i32 0
  %209 = load i8*, i8** %sdata221, align 8, !tbaa !78
  %210 = load i32, i32* %y.addr, align 4, !tbaa !22
  %211 = load i32, i32* %origy, align 4, !tbaa !22
  %sub222 = sub nsw i32 %210, %211
  %212 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %sraster223 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %212, i32 0, i32 2
  %213 = load i32, i32* %sraster223, align 4, !tbaa !79
  %mul224 = mul i32 %sub222, %213
  %idx.ext225 = zext i32 %mul224 to i64
  %add.ptr226 = getelementptr inbounds i8, i8* %209, i64 %idx.ext225
  %214 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %sourcex227 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %214, i32 0, i32 1
  %215 = load i32, i32* %sourcex227, align 4, !tbaa !80
  %216 = load i32, i32* %x.addr, align 4, !tbaa !22
  %217 = load i32, i32* %origx, align 4, !tbaa !22
  %sub228 = sub nsw i32 %216, %217
  %add229 = add nsw i32 %215, %sub228
  %218 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %sraster230 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %218, i32 0, i32 2
  %219 = load i32, i32* %sraster230, align 4, !tbaa !79
  %220 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %id231 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %220, i32 0, i32 3
  %221 = load i64, i64* %id231, align 8, !tbaa !81
  %222 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %use_scolors232 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %222, i32 0, i32 6
  %223 = load i32, i32* %use_scolors232, align 4, !tbaa !82
  %tobool233 = icmp ne i32 %223, 0
  br i1 %tobool233, label %cond.true.234, label %cond.false.237

cond.true.234:                                    ; preds = %if.else.219
  %224 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %scolors235 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %224, i32 0, i32 4
  %arraydecay236 = getelementptr inbounds [2 x i64], [2 x i64]* %scolors235, i32 0, i32 0
  br label %cond.end.238

cond.false.237:                                   ; preds = %if.else.219
  br label %cond.end.238

cond.end.238:                                     ; preds = %cond.false.237, %cond.true.234
  %cond239 = phi i64* [ %arraydecay236, %cond.true.234 ], [ null, %cond.false.237 ]
  %225 = load i32, i32* %x.addr, align 4, !tbaa !22
  %226 = load i32, i32* %y.addr, align 4, !tbaa !22
  %227 = load i32, i32* %w.addr, align 4, !tbaa !22
  %228 = load i32, i32* %h.addr, align 4, !tbaa !22
  %229 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %phase240 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %229, i32 0, i32 2
  %x241 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase240, i32 0, i32 0
  %230 = load i32, i32* %x241, align 4, !tbaa !73
  %231 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %phase242 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %231, i32 0, i32 2
  %y243 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase242, i32 0, i32 1
  %232 = load i32, i32* %y243, align 4, !tbaa !74
  %233 = load i32, i32* %lop.addr, align 4, !tbaa !22
  %234 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %planar_height244 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %234, i32 0, i32 5
  %235 = load i32, i32* %planar_height244, align 4, !tbaa !75
  %call245 = call i32 %206(%struct.gx_device_s* %207, i8* %add.ptr226, i32 %add229, i32 %219, i64 %221, i64* %cond239, %struct.gx_strip_bitmap_s* %tiles, i64* null, i32 %225, i32 %226, i32 %227, i32 %228, i32 %230, i32 %232, i32 %233, i32 %235) #6
  store i32 %call245, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.410

if.end.246:                                       ; preds = %lor.lhs.false.172
  br label %if.end.247

if.end.247:                                       ; preds = %if.end.246, %land.lhs.true.116, %lor.lhs.false.113
  %236 = load i32, i32* %w.addr, align 4, !tbaa !22
  %237 = load i32, i32* %depth, align 4, !tbaa !22
  %mul248 = mul nsw i32 %236, %237
  store i32 %mul248, i32* %size_x, align 4, !tbaa !22
  %238 = load i32, i32* %size_x, align 4, !tbaa !22
  %add249 = add i32 %238, 63
  %shr250 = lshr i32 %add249, 6
  %shl251 = shl i32 %shr250, 3
  store i32 %shl251, i32* %raster, align 4, !tbaa !22
  %239 = load i32, i32* %raster, align 4, !tbaa !22
  %cmp252 = icmp ugt i32 %239, 2048
  br i1 %cmp252, label %if.then.254, label %if.end.285

if.then.254:                                      ; preds = %if.end.247
  %240 = load i32, i32* %x.addr, align 4, !tbaa !22
  %cmp255 = icmp slt i32 %240, 0
  br i1 %cmp255, label %if.then.257, label %if.end.259

if.then.257:                                      ; preds = %if.then.254
  %241 = load i32, i32* %x.addr, align 4, !tbaa !22
  %242 = load i32, i32* %w.addr, align 4, !tbaa !22
  %add258 = add nsw i32 %242, %241
  store i32 %add258, i32* %w.addr, align 4, !tbaa !22
  store i32 0, i32* %x.addr, align 4, !tbaa !22
  br label %if.end.259

if.end.259:                                       ; preds = %if.then.257, %if.then.254
  %243 = load i32, i32* %x.addr, align 4, !tbaa !22
  %244 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width260 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %244, i32 0, i32 13
  %245 = load i32, i32* %width260, align 4, !tbaa !58
  %246 = load i32, i32* %w.addr, align 4, !tbaa !22
  %sub261 = sub nsw i32 %245, %246
  %cmp262 = icmp sgt i32 %243, %sub261
  br i1 %cmp262, label %if.then.264, label %if.end.267

if.then.264:                                      ; preds = %if.end.259
  %247 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width265 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %247, i32 0, i32 13
  %248 = load i32, i32* %width265, align 4, !tbaa !58
  %249 = load i32, i32* %x.addr, align 4, !tbaa !22
  %sub266 = sub nsw i32 %248, %249
  store i32 %sub266, i32* %w.addr, align 4, !tbaa !22
  br label %if.end.267

if.end.267:                                       ; preds = %if.then.264, %if.end.259
  %250 = load i32, i32* %w.addr, align 4, !tbaa !22
  %cmp268 = icmp sle i32 %250, 0
  br i1 %cmp268, label %if.then.270, label %if.end.271

if.then.270:                                      ; preds = %if.end.267
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.410

if.end.271:                                       ; preds = %if.end.267
  %251 = load i32, i32* %w.addr, align 4, !tbaa !22
  %252 = load i32, i32* %depth, align 4, !tbaa !22
  %mul272 = mul nsw i32 %251, %252
  store i32 %mul272, i32* %size_x, align 4, !tbaa !22
  %253 = load i32, i32* %size_x, align 4, !tbaa !22
  %add273 = add i32 %253, 63
  %shr274 = lshr i32 %add273, 6
  %shl275 = shl i32 %shr274, 3
  store i32 %shl275, i32* %raster, align 4, !tbaa !22
  %254 = load i32, i32* %raster, align 4, !tbaa !22
  %cmp276 = icmp ugt i32 %254, 2048
  br i1 %cmp276, label %if.then.278, label %if.end.284

if.then.278:                                      ; preds = %if.end.271
  %255 = load i32, i32* %depth, align 4, !tbaa !22
  %div279 = udiv i32 16384, %255
  store i32 %div279, i32* %dw, align 4, !tbaa !22
  %256 = load i32, i32* %dw, align 4, !tbaa !22
  %257 = load i32, i32* %depth, align 4, !tbaa !22
  %mul280 = mul nsw i32 %256, %257
  store i32 %mul280, i32* %size_x, align 4, !tbaa !22
  %258 = load i32, i32* %size_x, align 4, !tbaa !22
  %add281 = add i32 %258, 63
  %shr282 = lshr i32 %add281, 6
  %shl283 = shl i32 %shr282, 3
  store i32 %shl283, i32* %raster, align 4, !tbaa !22
  store i32 1, i32* %dh, align 4, !tbaa !22
  br label %fit

if.end.284:                                       ; preds = %if.end.271
  br label %if.end.285

if.end.285:                                       ; preds = %if.end.284, %if.end.247
  %259 = load i32, i32* %w.addr, align 4, !tbaa !22
  store i32 %259, i32* %dw, align 4, !tbaa !22
  %260 = load i32, i32* %raster, align 4, !tbaa !22
  %div286 = udiv i32 2048, %260
  store i32 %div286, i32* %dh, align 4, !tbaa !22
  %261 = load i32, i32* %dh, align 4, !tbaa !22
  %262 = load i32, i32* %h.addr, align 4, !tbaa !22
  %cmp287 = icmp sgt i32 %261, %262
  br i1 %cmp287, label %if.then.289, label %if.end.290

if.then.289:                                      ; preds = %if.end.285
  %263 = load i32, i32* %h.addr, align 4, !tbaa !22
  store i32 %263, i32* %dh, align 4, !tbaa !22
  br label %if.end.290

if.end.290:                                       ; preds = %if.then.289, %if.end.285
  br label %fit

fit:                                              ; preds = %if.end.290, %if.then.278
  %264 = load i32, i32* %no_rop, align 4, !tbaa !22
  %tobool291 = icmp ne i32 %264, 0
  br i1 %tobool291, label %if.end.305, label %if.then.292

if.then.292:                                      ; preds = %fit
  %arraydecay293 = getelementptr inbounds [256 x i64], [256 x i64]* %tbits, i32 0, i32 0
  %265 = bitcast i64* %arraydecay293 to i8*
  %data294 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles, i32 0, i32 0
  store i8* %265, i8** %data294, align 8, !tbaa !60
  %id295 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles, i32 0, i32 3
  store i64 0, i64* %id295, align 8, !tbaa !68
  %266 = load i32, i32* %raster, align 4, !tbaa !22
  %raster296 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles, i32 0, i32 1
  store i32 %266, i32* %raster296, align 4, !tbaa !62
  %267 = load i32, i32* %size_x, align 4, !tbaa !22
  %268 = load i32, i32* %depth, align 4, !tbaa !22
  %div297 = udiv i32 %267, %268
  %size298 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles, i32 0, i32 2
  %x299 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size298, i32 0, i32 0
  store i32 %div297, i32* %x299, align 4, !tbaa !63
  %conv300 = trunc i32 %div297 to i16
  %rep_width301 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles, i32 0, i32 4
  store i16 %conv300, i16* %rep_width301, align 2, !tbaa !64
  %shift302 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles, i32 0, i32 7
  store i16 0, i16* %shift302, align 2, !tbaa !69
  %rep_shift303 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles, i32 0, i32 6
  store i16 0, i16* %rep_shift303, align 2, !tbaa !70
  %num_planes304 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles, i32 0, i32 8
  store i32 1, i32* %num_planes304, align 4, !tbaa !71
  br label %if.end.305

if.end.305:                                       ; preds = %if.then.292, %fit
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont.409, %if.end.305
  %269 = load i32, i32* %w.addr, align 4, !tbaa !22
  %tobool306 = icmp ne i32 %269, 0
  br i1 %tobool306, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %270 = bitcast i32* %cy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %270) #2
  %271 = load i32, i32* %y.addr, align 4, !tbaa !22
  store i32 %271, i32* %cy, align 4, !tbaa !22
  %272 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.start(i64 4, i8* %272) #2
  %273 = load i32, i32* %dh, align 4, !tbaa !22
  store i32 %273, i32* %ch, align 4, !tbaa !22
  %274 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %274) #2
  %275 = load i32, i32* %h.addr, align 4, !tbaa !22
  store i32 %275, i32* %left, align 4, !tbaa !22
  br label %for.cond.307

for.cond.307:                                     ; preds = %if.end.394, %while.body
  %276 = load void (i8*, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.gx_device_s*, %struct.color_values_pair_s*, i64*, %struct.gx_const_strip_bitmap_s**)*, void (i8*, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.gx_device_s*, %struct.color_values_pair_s*, i64*, %struct.gx_const_strip_bitmap_s**)** %set_color_ht, align 8, !tbaa !1
  %arraydecay308 = getelementptr inbounds [256 x i64], [256 x i64]* %tbits, i32 0, i32 0
  %277 = bitcast i64* %arraydecay308 to i8*
  %278 = load i32, i32* %raster, align 4, !tbaa !22
  %279 = load i32, i32* %x.addr, align 4, !tbaa !22
  %280 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %phase309 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %280, i32 0, i32 2
  %x310 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase309, i32 0, i32 0
  %281 = load i32, i32* %x310, align 4, !tbaa !73
  %add311 = add nsw i32 %279, %281
  %282 = load i32, i32* %cy, align 4, !tbaa !22
  %283 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %phase312 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %283, i32 0, i32 2
  %y313 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase312, i32 0, i32 1
  %284 = load i32, i32* %y313, align 4, !tbaa !74
  %add314 = add nsw i32 %282, %284
  %285 = load i32, i32* %dw, align 4, !tbaa !22
  %286 = load i32, i32* %ch, align 4, !tbaa !22
  %287 = load i32, i32* %depth, align 4, !tbaa !22
  %288 = load i32, i32* %special, align 4, !tbaa !22
  %289 = load i32, i32* %nplanes, align 4, !tbaa !22
  %290 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors315 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %290, i32 0, i32 1
  %colored316 = bitcast %union._c* %colors315 to %struct._col*
  %plane_mask317 = getelementptr inbounds %struct._col, %struct._col* %colored316, i32 0, i32 5
  %291 = load i64, i64* %plane_mask317, align 8, !tbaa !38
  %292 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay318 = getelementptr inbounds [128 x i64], [128 x i64]* %colors12, i32 0, i32 0
  %arraydecay319 = getelementptr inbounds [64 x %struct.gx_const_strip_bitmap_s*], [64 x %struct.gx_const_strip_bitmap_s*]* %sbits, i32 0, i32 0
  call void %276(i8* %277, i32 %278, i32 %add311, i32 %add314, i32 %285, i32 %286, i32 %287, i32 %288, i32 %289, i64 %291, %struct.gx_device_s* %292, %struct.color_values_pair_s* %vp, i64* %arraydecay318, %struct.gx_const_strip_bitmap_s** %arraydecay319) #6
  %293 = load i32, i32* %no_rop, align 4, !tbaa !22
  %tobool320 = icmp ne i32 %293, 0
  br i1 %tobool320, label %if.then.321, label %if.else.325

if.then.321:                                      ; preds = %for.cond.307
  %294 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs322 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %294, i32 0, i32 42
  %copy_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs322, i32 0, i32 10
  %295 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %copy_color, align 8, !tbaa !84
  %296 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay323 = getelementptr inbounds [256 x i64], [256 x i64]* %tbits, i32 0, i32 0
  %297 = bitcast i64* %arraydecay323 to i8*
  %298 = load i32, i32* %raster, align 4, !tbaa !22
  %299 = load i32, i32* %x.addr, align 4, !tbaa !22
  %300 = load i32, i32* %cy, align 4, !tbaa !22
  %301 = load i32, i32* %dw, align 4, !tbaa !22
  %302 = load i32, i32* %ch, align 4, !tbaa !22
  %call324 = call i32 %295(%struct.gx_device_s* %296, i8* %297, i32 0, i32 %298, i64 0, i32 %299, i32 %300, i32 %301, i32 %302) #6
  store i32 %call324, i32* %code, align 4, !tbaa !22
  br label %if.end.381

if.else.325:                                      ; preds = %for.cond.307
  %303 = load i32, i32* %ch, align 4, !tbaa !22
  %size326 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles, i32 0, i32 2
  %y327 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size326, i32 0, i32 1
  store i32 %303, i32* %y327, align 4, !tbaa !65
  %conv328 = trunc i32 %303 to i16
  %rep_height329 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles, i32 0, i32 5
  store i16 %conv328, i16* %rep_height329, align 2, !tbaa !66
  %304 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %planar_height330 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %304, i32 0, i32 5
  %305 = load i32, i32* %planar_height330, align 4, !tbaa !75
  %cmp331 = icmp eq i32 %305, 0
  br i1 %cmp331, label %if.then.333, label %if.else.356

if.then.333:                                      ; preds = %if.else.325
  %306 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs334 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %306, i32 0, i32 42
  %strip_copy_rop335 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs334, i32 0, i32 35
  %307 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)** %strip_copy_rop335, align 8, !tbaa !77
  %308 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %309 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %sdata336 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %309, i32 0, i32 0
  %310 = load i8*, i8** %sdata336, align 8, !tbaa !78
  %311 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %sraster337 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %311, i32 0, i32 2
  %312 = load i32, i32* %sraster337, align 4, !tbaa !79
  %313 = load i32, i32* %cy, align 4, !tbaa !22
  %314 = load i32, i32* %origy, align 4, !tbaa !22
  %sub338 = sub nsw i32 %313, %314
  %mul339 = mul i32 %312, %sub338
  %idx.ext340 = zext i32 %mul339 to i64
  %add.ptr341 = getelementptr inbounds i8, i8* %310, i64 %idx.ext340
  %315 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %sourcex342 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %315, i32 0, i32 1
  %316 = load i32, i32* %sourcex342, align 4, !tbaa !80
  %317 = load i32, i32* %x.addr, align 4, !tbaa !22
  %318 = load i32, i32* %origx, align 4, !tbaa !22
  %sub343 = sub nsw i32 %317, %318
  %add344 = add nsw i32 %316, %sub343
  %319 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %sraster345 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %319, i32 0, i32 2
  %320 = load i32, i32* %sraster345, align 4, !tbaa !79
  %321 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %id346 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %321, i32 0, i32 3
  %322 = load i64, i64* %id346, align 8, !tbaa !81
  %323 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %use_scolors347 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %323, i32 0, i32 6
  %324 = load i32, i32* %use_scolors347, align 4, !tbaa !82
  %tobool348 = icmp ne i32 %324, 0
  br i1 %tobool348, label %cond.true.349, label %cond.false.352

cond.true.349:                                    ; preds = %if.then.333
  %325 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %scolors350 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %325, i32 0, i32 4
  %arraydecay351 = getelementptr inbounds [2 x i64], [2 x i64]* %scolors350, i32 0, i32 0
  br label %cond.end.353

cond.false.352:                                   ; preds = %if.then.333
  br label %cond.end.353

cond.end.353:                                     ; preds = %cond.false.352, %cond.true.349
  %cond354 = phi i64* [ %arraydecay351, %cond.true.349 ], [ null, %cond.false.352 ]
  %326 = load i32, i32* %x.addr, align 4, !tbaa !22
  %327 = load i32, i32* %cy, align 4, !tbaa !22
  %328 = load i32, i32* %dw, align 4, !tbaa !22
  %329 = load i32, i32* %ch, align 4, !tbaa !22
  %330 = load i32, i32* %lop.addr, align 4, !tbaa !22
  %call355 = call i32 %307(%struct.gx_device_s* %308, i8* %add.ptr341, i32 %add344, i32 %320, i64 %322, i64* %cond354, %struct.gx_strip_bitmap_s* %tiles, i64* null, i32 %326, i32 %327, i32 %328, i32 %329, i32 0, i32 0, i32 %330) #6
  store i32 %call355, i32* %code, align 4, !tbaa !22
  br label %if.end.380

if.else.356:                                      ; preds = %if.else.325
  %331 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs357 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %331, i32 0, i32 42
  %strip_copy_rop2358 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs357, i32 0, i32 69
  %332 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)** %strip_copy_rop2358, align 8, !tbaa !83
  %333 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %334 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %sdata359 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %334, i32 0, i32 0
  %335 = load i8*, i8** %sdata359, align 8, !tbaa !78
  %336 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %sraster360 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %336, i32 0, i32 2
  %337 = load i32, i32* %sraster360, align 4, !tbaa !79
  %338 = load i32, i32* %cy, align 4, !tbaa !22
  %339 = load i32, i32* %origy, align 4, !tbaa !22
  %sub361 = sub nsw i32 %338, %339
  %mul362 = mul i32 %337, %sub361
  %idx.ext363 = zext i32 %mul362 to i64
  %add.ptr364 = getelementptr inbounds i8, i8* %335, i64 %idx.ext363
  %340 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %sourcex365 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %340, i32 0, i32 1
  %341 = load i32, i32* %sourcex365, align 4, !tbaa !80
  %342 = load i32, i32* %x.addr, align 4, !tbaa !22
  %343 = load i32, i32* %origx, align 4, !tbaa !22
  %sub366 = sub nsw i32 %342, %343
  %add367 = add nsw i32 %341, %sub366
  %344 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %sraster368 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %344, i32 0, i32 2
  %345 = load i32, i32* %sraster368, align 4, !tbaa !79
  %346 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %id369 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %346, i32 0, i32 3
  %347 = load i64, i64* %id369, align 8, !tbaa !81
  %348 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %use_scolors370 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %348, i32 0, i32 6
  %349 = load i32, i32* %use_scolors370, align 4, !tbaa !82
  %tobool371 = icmp ne i32 %349, 0
  br i1 %tobool371, label %cond.true.372, label %cond.false.375

cond.true.372:                                    ; preds = %if.else.356
  %350 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %scolors373 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %350, i32 0, i32 4
  %arraydecay374 = getelementptr inbounds [2 x i64], [2 x i64]* %scolors373, i32 0, i32 0
  br label %cond.end.376

cond.false.375:                                   ; preds = %if.else.356
  br label %cond.end.376

cond.end.376:                                     ; preds = %cond.false.375, %cond.true.372
  %cond377 = phi i64* [ %arraydecay374, %cond.true.372 ], [ null, %cond.false.375 ]
  %351 = load i32, i32* %x.addr, align 4, !tbaa !22
  %352 = load i32, i32* %cy, align 4, !tbaa !22
  %353 = load i32, i32* %dw, align 4, !tbaa !22
  %354 = load i32, i32* %ch, align 4, !tbaa !22
  %355 = load i32, i32* %lop.addr, align 4, !tbaa !22
  %356 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %planar_height378 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %356, i32 0, i32 5
  %357 = load i32, i32* %planar_height378, align 4, !tbaa !75
  %call379 = call i32 %332(%struct.gx_device_s* %333, i8* %add.ptr364, i32 %add367, i32 %345, i64 %347, i64* %cond377, %struct.gx_strip_bitmap_s* %tiles, i64* null, i32 %351, i32 %352, i32 %353, i32 %354, i32 0, i32 0, i32 %355, i32 %357) #6
  store i32 %call379, i32* %code, align 4, !tbaa !22
  br label %if.end.380

if.end.380:                                       ; preds = %cond.end.376, %cond.end.353
  br label %if.end.381

if.end.381:                                       ; preds = %if.end.380, %if.then.321
  %358 = load i32, i32* %code, align 4, !tbaa !22
  %cmp382 = icmp slt i32 %358, 0
  br i1 %cmp382, label %if.then.384, label %if.end.385

if.then.384:                                      ; preds = %if.end.381
  %359 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %359, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.405

if.end.385:                                       ; preds = %if.end.381
  %360 = load i32, i32* %ch, align 4, !tbaa !22
  %361 = load i32, i32* %left, align 4, !tbaa !22
  %sub386 = sub nsw i32 %361, %360
  store i32 %sub386, i32* %left, align 4, !tbaa !22
  %tobool387 = icmp ne i32 %sub386, 0
  br i1 %tobool387, label %if.end.389, label %if.then.388

if.then.388:                                      ; preds = %if.end.385
  br label %for.end.395

if.end.389:                                       ; preds = %if.end.385
  %362 = load i32, i32* %ch, align 4, !tbaa !22
  %363 = load i32, i32* %cy, align 4, !tbaa !22
  %add390 = add nsw i32 %363, %362
  store i32 %add390, i32* %cy, align 4, !tbaa !22
  %364 = load i32, i32* %ch, align 4, !tbaa !22
  %365 = load i32, i32* %left, align 4, !tbaa !22
  %cmp391 = icmp sgt i32 %364, %365
  br i1 %cmp391, label %if.then.393, label %if.end.394

if.then.393:                                      ; preds = %if.end.389
  %366 = load i32, i32* %left, align 4, !tbaa !22
  store i32 %366, i32* %ch, align 4, !tbaa !22
  br label %if.end.394

if.end.394:                                       ; preds = %if.then.393, %if.end.389
  br label %for.cond.307

for.end.395:                                      ; preds = %if.then.388
  %367 = load i32, i32* %dw, align 4, !tbaa !22
  %368 = load i32, i32* %w.addr, align 4, !tbaa !22
  %sub396 = sub nsw i32 %368, %367
  store i32 %sub396, i32* %w.addr, align 4, !tbaa !22
  %tobool397 = icmp ne i32 %sub396, 0
  br i1 %tobool397, label %if.end.399, label %if.then.398

if.then.398:                                      ; preds = %for.end.395
  store i32 20, i32* %cleanup.dest.slot
  br label %cleanup.405

if.end.399:                                       ; preds = %for.end.395
  %369 = load i32, i32* %dw, align 4, !tbaa !22
  %370 = load i32, i32* %x.addr, align 4, !tbaa !22
  %add400 = add nsw i32 %370, %369
  store i32 %add400, i32* %x.addr, align 4, !tbaa !22
  %371 = load i32, i32* %dw, align 4, !tbaa !22
  %372 = load i32, i32* %w.addr, align 4, !tbaa !22
  %cmp401 = icmp sgt i32 %371, %372
  br i1 %cmp401, label %if.then.403, label %if.end.404

if.then.403:                                      ; preds = %if.end.399
  %373 = load i32, i32* %w.addr, align 4, !tbaa !22
  store i32 %373, i32* %dw, align 4, !tbaa !22
  br label %if.end.404

if.end.404:                                       ; preds = %if.then.403, %if.end.399
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.405

cleanup.405:                                      ; preds = %if.end.404, %if.then.398, %if.then.384
  %374 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %374) #2
  %375 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.end(i64 4, i8* %375) #2
  %376 = bitcast i32* %cy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %376) #2
  %cleanup.dest.408 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.408, label %cleanup.410 [
    i32 0, label %cleanup.cont.409
    i32 20, label %while.end
  ]

cleanup.cont.409:                                 ; preds = %cleanup.405
  br label %while.cond

while.end:                                        ; preds = %cleanup.405, %while.cond
  %377 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %377, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.410

cleanup.410:                                      ; preds = %while.end, %cleanup.405, %if.then.270, %cond.end.238, %cond.end.212, %if.then.191, %if.then.166, %cleanup, %if.then
  %378 = bitcast i32* %origy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %378) #2
  %379 = bitcast i32* %origx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %379) #2
  %380 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %380) #2
  %381 = bitcast i32* %no_rop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %381) #2
  %382 = bitcast i32* %lh to i8*
  call void @llvm.lifetime.end(i64 4, i8* %382) #2
  %383 = bitcast i32* %lw to i8*
  call void @llvm.lifetime.end(i64 4, i8* %383) #2
  %384 = bitcast i32* %dh to i8*
  call void @llvm.lifetime.end(i64 4, i8* %384) #2
  %385 = bitcast i32* %dw to i8*
  call void @llvm.lifetime.end(i64 4, i8* %385) #2
  %386 = bitcast i32* %size_x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %386) #2
  %387 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %387) #2
  %388 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %388) #2
  %389 = bitcast i32* %special to i8*
  call void @llvm.lifetime.end(i64 4, i8* %389) #2
  %390 = bitcast [64 x %struct.gx_ht_cache_s*]* %caches to i8*
  call void @llvm.lifetime.end(i64 512, i8* %390) #2
  %391 = bitcast [64 x %struct.gx_const_strip_bitmap_s*]* %sbits to i8*
  call void @llvm.lifetime.end(i64 512, i8* %391) #2
  %392 = bitcast [128 x i64]* %colors12 to i8*
  call void @llvm.lifetime.end(i64 1024, i8* %392) #2
  %393 = bitcast %struct.color_values_pair_s* %vp to i8*
  call void @llvm.lifetime.end(i64 256, i8* %393) #2
  %394 = bitcast void (i8*, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.gx_device_s*, %struct.color_values_pair_s*, i64*, %struct.gx_const_strip_bitmap_s**)** %set_color_ht to i8*
  call void @llvm.lifetime.end(i64 8, i8* %394) #2
  %395 = bitcast i32 (%struct.color_values_pair_s*, i64*, %struct.gx_const_strip_bitmap_s**, %struct.gx_device_color_s*, %struct.gx_device_s*, %struct.gx_ht_cache_s**, i32)** %set_ht_colors to i8*
  call void @llvm.lifetime.end(i64 8, i8* %395) #2
  %396 = bitcast i32* %nplanes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %396) #2
  %397 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %397) #2
  %398 = bitcast %struct.gx_device_halftone_s** %pdht to i8*
  call void @llvm.lifetime.end(i64 8, i8* %398) #2
  %399 = bitcast %struct.gx_rop_source_s* %no_source to i8*
  call void @llvm.lifetime.end(i64 48, i8* %399) #2
  %400 = bitcast %struct.gx_strip_bitmap_s* %tiles to i8*
  call void @llvm.lifetime.end(i64 48, i8* %400) #2
  %401 = bitcast i32* %tile_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %401) #2
  %402 = bitcast [256 x i64]* %tbits to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %402) #2
  %403 = load i32, i32* %retval
  ret i32 %403
}

declare i32 @gx_dc_default_fill_masked(%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_ht_colored_equal(%struct.gx_device_color_s* %pdevc1, %struct.gx_device_color_s* %pdevc2) #0 {
entry:
  %retval = alloca i32, align 4
  %pdevc1.addr = alloca %struct.gx_device_color_s*, align 8
  %pdevc2.addr = alloca %struct.gx_device_color_s*, align 8
  %num_comp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_color_s* %pdevc1, %struct.gx_device_color_s** %pdevc1.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdevc2, %struct.gx_device_color_s** %pdevc2.addr, align 8, !tbaa !1
  %0 = bitcast i32* %num_comp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc1.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i32 0, i32 1
  %colored = bitcast %union._c* %colors to %struct._col*
  %num_components = getelementptr inbounds %struct._col, %struct._col* %colored, i32 0, i32 1
  %2 = load i16, i16* %num_components, align 2, !tbaa !85
  %conv = zext i16 %2 to i32
  store i32 %conv, i32* %num_comp, align 4, !tbaa !22
  %3 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc2.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %3, i32 0, i32 0
  %4 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !5
  %5 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc1.addr, align 8, !tbaa !1
  %type1 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %5, i32 0, i32 0
  %6 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type1, align 8, !tbaa !5
  %cmp = icmp ne %struct.gx_device_color_type_s* %4, %6
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc1.addr, align 8, !tbaa !1
  %colors3 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %7, i32 0, i32 1
  %colored4 = bitcast %union._c* %colors3 to %struct._col*
  %c_ht = getelementptr inbounds %struct._col, %struct._col* %colored4, i32 0, i32 0
  %8 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %c_ht, align 8, !tbaa !23
  %9 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc2.addr, align 8, !tbaa !1
  %colors5 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %9, i32 0, i32 1
  %colored6 = bitcast %union._c* %colors5 to %struct._col*
  %c_ht7 = getelementptr inbounds %struct._col, %struct._col* %colored6, i32 0, i32 0
  %10 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %c_ht7, align 8, !tbaa !23
  %cmp8 = icmp ne %struct.gx_device_halftone_s* %8, %10
  br i1 %cmp8, label %if.then, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false
  %11 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc1.addr, align 8, !tbaa !1
  %colors11 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %11, i32 0, i32 1
  %colored12 = bitcast %union._c* %colors11 to %struct._col*
  %alpha = getelementptr inbounds %struct._col, %struct._col* %colored12, i32 0, i32 4
  %12 = load i16, i16* %alpha, align 2, !tbaa !16
  %conv13 = zext i16 %12 to i32
  %13 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc2.addr, align 8, !tbaa !1
  %colors14 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %13, i32 0, i32 1
  %colored15 = bitcast %union._c* %colors14 to %struct._col*
  %alpha16 = getelementptr inbounds %struct._col, %struct._col* %colored15, i32 0, i32 4
  %14 = load i16, i16* %alpha16, align 2, !tbaa !16
  %conv17 = zext i16 %14 to i32
  %cmp18 = icmp ne i32 %conv13, %conv17
  br i1 %cmp18, label %if.then, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %lor.lhs.false.10
  %15 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc1.addr, align 8, !tbaa !1
  %phase = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %15, i32 0, i32 2
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 0
  %16 = load i32, i32* %x, align 4, !tbaa !73
  %17 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc2.addr, align 8, !tbaa !1
  %phase21 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %17, i32 0, i32 2
  %x22 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase21, i32 0, i32 0
  %18 = load i32, i32* %x22, align 4, !tbaa !73
  %cmp23 = icmp ne i32 %16, %18
  br i1 %cmp23, label %if.then, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %lor.lhs.false.20
  %19 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc1.addr, align 8, !tbaa !1
  %phase26 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %19, i32 0, i32 2
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase26, i32 0, i32 1
  %20 = load i32, i32* %y, align 4, !tbaa !74
  %21 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc2.addr, align 8, !tbaa !1
  %phase27 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %21, i32 0, i32 2
  %y28 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase27, i32 0, i32 1
  %22 = load i32, i32* %y28, align 4, !tbaa !74
  %cmp29 = icmp ne i32 %20, %22
  br i1 %cmp29, label %if.then, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %lor.lhs.false.25
  %23 = load i32, i32* %num_comp, align 4, !tbaa !22
  %24 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc2.addr, align 8, !tbaa !1
  %colors32 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %24, i32 0, i32 1
  %colored33 = bitcast %union._c* %colors32 to %struct._col*
  %num_components34 = getelementptr inbounds %struct._col, %struct._col* %colored33, i32 0, i32 1
  %25 = load i16, i16* %num_components34, align 2, !tbaa !85
  %conv35 = zext i16 %25 to i32
  %cmp36 = icmp ne i32 %23, %conv35
  br i1 %cmp36, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.31, %lor.lhs.false.25, %lor.lhs.false.20, %lor.lhs.false.10, %lor.lhs.false, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.31
  %26 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc1.addr, align 8, !tbaa !1
  %colors38 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %26, i32 0, i32 1
  %colored39 = bitcast %union._c* %colors38 to %struct._col*
  %c_base = getelementptr inbounds %struct._col, %struct._col* %colored39, i32 0, i32 2
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %c_base, i32 0, i32 0
  %27 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc2.addr, align 8, !tbaa !1
  %colors40 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %27, i32 0, i32 1
  %colored41 = bitcast %union._c* %colors40 to %struct._col*
  %c_base42 = getelementptr inbounds %struct._col, %struct._col* %colored41, i32 0, i32 2
  %arraydecay43 = getelementptr inbounds [64 x i8], [64 x i8]* %c_base42, i32 0, i32 0
  %28 = load i32, i32* %num_comp, align 4, !tbaa !22
  %conv44 = zext i32 %28 to i64
  %mul = mul i64 %conv44, 1
  %call = call i32 @memcmp(i8* %arraydecay, i8* %arraydecay43, i64 %mul) #7
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.end
  %29 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc1.addr, align 8, !tbaa !1
  %colors45 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %29, i32 0, i32 1
  %colored46 = bitcast %union._c* %colors45 to %struct._col*
  %c_level = getelementptr inbounds %struct._col, %struct._col* %colored46, i32 0, i32 3
  %arraydecay47 = getelementptr inbounds [64 x i32], [64 x i32]* %c_level, i32 0, i32 0
  %30 = bitcast i32* %arraydecay47 to i8*
  %31 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc2.addr, align 8, !tbaa !1
  %colors48 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %31, i32 0, i32 1
  %colored49 = bitcast %union._c* %colors48 to %struct._col*
  %c_level50 = getelementptr inbounds %struct._col, %struct._col* %colored49, i32 0, i32 3
  %arraydecay51 = getelementptr inbounds [64 x i32], [64 x i32]* %c_level50, i32 0, i32 0
  %32 = bitcast i32* %arraydecay51 to i8*
  %33 = load i32, i32* %num_comp, align 4, !tbaa !22
  %conv52 = zext i32 %33 to i64
  %mul53 = mul i64 %conv52, 4
  %call54 = call i32 @memcmp(i8* %30, i8* %32, i64 %mul53) #7
  %tobool55 = icmp ne i32 %call54, 0
  %lnot = xor i1 %tobool55, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %34 = phi i1 [ false, %if.end ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %34 to i32
  store i32 %land.ext, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %land.end, %if.then
  %35 = bitcast i32* %num_comp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #2
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_ht_colored_write(%struct.gx_device_color_s* %pdevc, %struct.gx_device_color_saved_s* %psdc0, %struct.gx_device_s* %dev, i64 %offset, i8* %pdata, i32* %psize) #0 {
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
  %num_comps = alloca i32, align 4
  %depth = alloca i32, align 4
  %plane_mask = alloca i64, align 8
  %alpha = alloca i16, align 2
  %psdc = alloca %struct.gx_device_color_saved_s*, align 8
  %pdata0 = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %comp_bit = alloca i64, align 8
  %i = alloca i32, align 4
  %tmp_mask = alloca i32, align 4
  %base_mask = alloca i64, align 8
  %num_bytes = alloca i32, align 4
  %i204 = alloca i32, align 4
  %code_bit = alloca i64, align 8
  %i250 = alloca i32, align 4
  %tmp_mask251 = alloca i32, align 4
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gx_device_color_saved_s* %psdc0, %struct.gx_device_color_saved_s** %psdc0.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %offset, i64* %offset.addr, align 8, !tbaa !86
  store i8* %pdata, i8** %pdata.addr, align 8, !tbaa !1
  store i32* %psize, i32** %psize.addr, align 8, !tbaa !1
  %0 = bitcast i32* %req_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 1, i32* %req_size, align 4, !tbaa !22
  %1 = bitcast i32* %flag_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 0, i32* %flag_bits, align 4, !tbaa !22
  %2 = bitcast i32* %num_comps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %4 = load i32, i32* %num_components, align 4, !tbaa !36
  store i32 %4, i32* %num_comps, align 4, !tbaa !22
  %5 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 11
  %depth2 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info1, i32 0, i32 3
  %7 = load i16, i16* %depth2, align 2, !tbaa !25
  %conv = zext i16 %7 to i32
  store i32 %conv, i32* %depth, align 4, !tbaa !22
  %8 = bitcast i64* %plane_mask to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %9, i32 0, i32 1
  %colored = bitcast %union._c* %colors to %struct._col*
  %plane_mask3 = getelementptr inbounds %struct._col, %struct._col* %colored, i32 0, i32 5
  %10 = load i64, i64* %plane_mask3, align 8, !tbaa !38
  store i64 %10, i64* %plane_mask, align 8, !tbaa !86
  %11 = bitcast i16* %alpha to i8*
  call void @llvm.lifetime.start(i64 2, i8* %11) #2
  %12 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors4 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %12, i32 0, i32 1
  %colored5 = bitcast %union._c* %colors4 to %struct._col*
  %alpha6 = getelementptr inbounds %struct._col, %struct._col* %colored5, i32 0, i32 4
  %13 = load i16, i16* %alpha6, align 2, !tbaa !16
  store i16 %13, i16* %alpha, align 2, !tbaa !87
  %14 = bitcast %struct.gx_device_color_saved_s** %psdc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #2
  %15 = load %struct.gx_device_color_saved_s*, %struct.gx_device_color_saved_s** %psdc0.addr, align 8, !tbaa !1
  store %struct.gx_device_color_saved_s* %15, %struct.gx_device_color_saved_s** %psdc, align 8, !tbaa !1
  %16 = bitcast i8** %pdata0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #2
  %17 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  store i8* %17, i8** %pdata0, align 8, !tbaa !1
  %18 = load i64, i64* %offset.addr, align 8, !tbaa !86
  %cmp = icmp ne i64 %18, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %19 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors8 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %19, i32 0, i32 1
  %colored9 = bitcast %union._c* %colors8 to %struct._col*
  %num_components10 = getelementptr inbounds %struct._col, %struct._col* %colored9, i32 0, i32 1
  %20 = load i16, i16* %num_components10, align 2, !tbaa !85
  %conv11 = zext i16 %20 to i32
  %21 = load i32, i32* %num_comps, align 4, !tbaa !22
  %cmp12 = icmp ne i32 %conv11, %21
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.end
  %22 = load %struct.gx_device_color_saved_s*, %struct.gx_device_color_saved_s** %psdc, align 8, !tbaa !1
  %cmp16 = icmp ne %struct.gx_device_color_saved_s* %22, null
  br i1 %cmp16, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %if.end.15
  %23 = load %struct.gx_device_color_saved_s*, %struct.gx_device_color_saved_s** %psdc, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %23, i32 0, i32 0
  %24 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !14
  %25 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type18 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %25, i32 0, i32 0
  %26 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type18, align 8, !tbaa !5
  %cmp19 = icmp ne %struct.gx_device_color_type_s* %24, %26
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %land.lhs.true
  store %struct.gx_device_color_saved_s* null, %struct.gx_device_color_saved_s** %psdc, align 8, !tbaa !1
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %land.lhs.true, %if.end.15
  %27 = load %struct.gx_device_color_saved_s*, %struct.gx_device_color_saved_s** %psdc, align 8, !tbaa !1
  %cmp23 = icmp eq %struct.gx_device_color_saved_s* %27, null
  br i1 %cmp23, label %if.then.34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.22
  %28 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors25 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %28, i32 0, i32 1
  %colored26 = bitcast %union._c* %colors25 to %struct._col*
  %c_base = getelementptr inbounds %struct._col, %struct._col* %colored26, i32 0, i32 2
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %c_base, i32 0, i32 0
  %29 = load %struct.gx_device_color_saved_s*, %struct.gx_device_color_saved_s** %psdc, align 8, !tbaa !1
  %colors27 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %29, i32 0, i32 1
  %colored28 = bitcast %union._svc* %colors27 to %struct._svcol*
  %c_base29 = getelementptr inbounds %struct._svcol, %struct._svcol* %colored28, i32 0, i32 0
  %arraydecay30 = getelementptr inbounds [64 x i8], [64 x i8]* %c_base29, i32 0, i32 0
  %30 = load i32, i32* %num_comps, align 4, !tbaa !22
  %conv31 = sext i32 %30 to i64
  %mul = mul i64 %conv31, 1
  %call = call i32 @memcmp(i8* %arraydecay, i8* %arraydecay30, i64 %mul) #7
  %cmp32 = icmp ne i32 %call, 0
  br i1 %cmp32, label %if.then.34, label %if.end.45

if.then.34:                                       ; preds = %lor.lhs.false, %if.end.22
  %31 = load i32, i32* %flag_bits, align 4, !tbaa !22
  %or = or i32 %31, 1
  store i32 %or, i32* %flag_bits, align 4, !tbaa !22
  %32 = load i32, i32* %num_comps, align 4, !tbaa !22
  %33 = load i32, i32* %depth, align 4, !tbaa !22
  %cmp35 = icmp eq i32 %32, %33
  br i1 %cmp35, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %if.then.34
  %34 = load i32, i32* %num_comps, align 4, !tbaa !22
  %add = add nsw i32 %34, 7
  %shr = ashr i32 %add, 3
  %35 = load i32, i32* %req_size, align 4, !tbaa !22
  %add38 = add nsw i32 %35, %shr
  store i32 %add38, i32* %req_size, align 4, !tbaa !22
  br label %if.end.44

if.else:                                          ; preds = %if.then.34
  %36 = load i32, i32* %num_comps, align 4, !tbaa !22
  %conv39 = sext i32 %36 to i64
  %mul40 = mul i64 %conv39, 1
  %37 = load i32, i32* %req_size, align 4, !tbaa !22
  %conv41 = sext i32 %37 to i64
  %add42 = add i64 %conv41, %mul40
  %conv43 = trunc i64 %add42 to i32
  store i32 %conv43, i32* %req_size, align 4, !tbaa !22
  br label %if.end.44

if.end.44:                                        ; preds = %if.else, %if.then.37
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %lor.lhs.false
  %38 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors46 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %38, i32 0, i32 1
  %colored47 = bitcast %union._c* %colors46 to %struct._col*
  %plane_mask48 = getelementptr inbounds %struct._col, %struct._col* %colored47, i32 0, i32 5
  %39 = load i64, i64* %plane_mask48, align 8, !tbaa !38
  store i64 %39, i64* %plane_mask, align 8, !tbaa !86
  %40 = load %struct.gx_device_color_saved_s*, %struct.gx_device_color_saved_s** %psdc, align 8, !tbaa !1
  %cmp49 = icmp eq %struct.gx_device_color_saved_s* %40, null
  br i1 %cmp49, label %if.then.64, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %if.end.45
  %41 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors52 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %41, i32 0, i32 1
  %colored53 = bitcast %union._c* %colors52 to %struct._col*
  %c_level = getelementptr inbounds %struct._col, %struct._col* %colored53, i32 0, i32 3
  %arraydecay54 = getelementptr inbounds [64 x i32], [64 x i32]* %c_level, i32 0, i32 0
  %42 = bitcast i32* %arraydecay54 to i8*
  %43 = load %struct.gx_device_color_saved_s*, %struct.gx_device_color_saved_s** %psdc, align 8, !tbaa !1
  %colors55 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %43, i32 0, i32 1
  %colored56 = bitcast %union._svc* %colors55 to %struct._svcol*
  %c_level57 = getelementptr inbounds %struct._svcol, %struct._svcol* %colored56, i32 0, i32 1
  %arraydecay58 = getelementptr inbounds [64 x i32], [64 x i32]* %c_level57, i32 0, i32 0
  %44 = bitcast i32* %arraydecay58 to i8*
  %45 = load i32, i32* %num_comps, align 4, !tbaa !22
  %conv59 = sext i32 %45 to i64
  %mul60 = mul i64 %conv59, 4
  %call61 = call i32 @memcmp(i8* %42, i8* %44, i64 %mul60) #7
  %cmp62 = icmp ne i32 %call61, 0
  br i1 %cmp62, label %if.then.64, label %if.end.148

if.then.64:                                       ; preds = %lor.lhs.false.51, %if.end.45
  %46 = bitcast i64* %comp_bit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %46) #2
  %47 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #2
  %48 = bitcast i32* %tmp_mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #2
  %49 = load i32, i32* %flag_bits, align 4, !tbaa !22
  %or65 = or i32 %49, 2
  store i32 %or65, i32* %flag_bits, align 4, !tbaa !22
  %50 = load i32, i32* %num_comps, align 4, !tbaa !22
  %conv66 = sext i32 %50 to i64
  %cmp67 = icmp ugt i64 %conv66, 32
  br i1 %cmp67, label %if.then.69, label %if.else.98

if.then.69:                                       ; preds = %if.then.64
  %51 = load i64, i64* %plane_mask, align 8, !tbaa !86
  %conv70 = trunc i64 %51 to i32
  store i32 %conv70, i32* %tmp_mask, align 4, !tbaa !22
  %52 = load i32, i32* %tmp_mask, align 4, !tbaa !22
  %cmp71 = icmp ult i32 %52, 128
  br i1 %cmp71, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.69
  br label %cond.end.78

cond.false:                                       ; preds = %if.then.69
  %53 = load i32, i32* %tmp_mask, align 4, !tbaa !22
  %cmp73 = icmp ult i32 %53, 16384
  br i1 %cmp73, label %cond.true.75, label %cond.false.76

cond.true.75:                                     ; preds = %cond.false
  br label %cond.end

cond.false.76:                                    ; preds = %cond.false
  %54 = load i32, i32* %tmp_mask, align 4, !tbaa !22
  %call77 = call i32 @enc_u_size_uint(i32 %54) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false.76, %cond.true.75
  %cond = phi i32 [ 2, %cond.true.75 ], [ %call77, %cond.false.76 ]
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.end, %cond.true
  %cond79 = phi i32 [ 1, %cond.true ], [ %cond, %cond.end ]
  %55 = load i32, i32* %req_size, align 4, !tbaa !22
  %add80 = add nsw i32 %55, %cond79
  store i32 %add80, i32* %req_size, align 4, !tbaa !22
  %56 = load i64, i64* %plane_mask, align 8, !tbaa !86
  %shr81 = lshr i64 %56, 31
  %shr82 = lshr i64 %shr81, 1
  %conv83 = trunc i64 %shr82 to i32
  store i32 %conv83, i32* %tmp_mask, align 4, !tbaa !22
  %57 = load i32, i32* %tmp_mask, align 4, !tbaa !22
  %cmp84 = icmp ult i32 %57, 128
  br i1 %cmp84, label %cond.true.86, label %cond.false.87

cond.true.86:                                     ; preds = %cond.end.78
  br label %cond.end.95

cond.false.87:                                    ; preds = %cond.end.78
  %58 = load i32, i32* %tmp_mask, align 4, !tbaa !22
  %cmp88 = icmp ult i32 %58, 16384
  br i1 %cmp88, label %cond.true.90, label %cond.false.91

cond.true.90:                                     ; preds = %cond.false.87
  br label %cond.end.93

cond.false.91:                                    ; preds = %cond.false.87
  %59 = load i32, i32* %tmp_mask, align 4, !tbaa !22
  %call92 = call i32 @enc_u_size_uint(i32 %59) #6
  br label %cond.end.93

cond.end.93:                                      ; preds = %cond.false.91, %cond.true.90
  %cond94 = phi i32 [ 2, %cond.true.90 ], [ %call92, %cond.false.91 ]
  br label %cond.end.95

cond.end.95:                                      ; preds = %cond.end.93, %cond.true.86
  %cond96 = phi i32 [ 1, %cond.true.86 ], [ %cond94, %cond.end.93 ]
  %60 = load i32, i32* %req_size, align 4, !tbaa !22
  %add97 = add nsw i32 %60, %cond96
  store i32 %add97, i32* %req_size, align 4, !tbaa !22
  br label %if.end.114

if.else.98:                                       ; preds = %if.then.64
  %61 = load i64, i64* %plane_mask, align 8, !tbaa !86
  %conv99 = trunc i64 %61 to i32
  store i32 %conv99, i32* %tmp_mask, align 4, !tbaa !22
  %62 = load i32, i32* %tmp_mask, align 4, !tbaa !22
  %cmp100 = icmp ult i32 %62, 128
  br i1 %cmp100, label %cond.true.102, label %cond.false.103

cond.true.102:                                    ; preds = %if.else.98
  br label %cond.end.111

cond.false.103:                                   ; preds = %if.else.98
  %63 = load i32, i32* %tmp_mask, align 4, !tbaa !22
  %cmp104 = icmp ult i32 %63, 16384
  br i1 %cmp104, label %cond.true.106, label %cond.false.107

cond.true.106:                                    ; preds = %cond.false.103
  br label %cond.end.109

cond.false.107:                                   ; preds = %cond.false.103
  %64 = load i32, i32* %tmp_mask, align 4, !tbaa !22
  %call108 = call i32 @enc_u_size_uint(i32 %64) #6
  br label %cond.end.109

cond.end.109:                                     ; preds = %cond.false.107, %cond.true.106
  %cond110 = phi i32 [ 2, %cond.true.106 ], [ %call108, %cond.false.107 ]
  br label %cond.end.111

cond.end.111:                                     ; preds = %cond.end.109, %cond.true.102
  %cond112 = phi i32 [ 1, %cond.true.102 ], [ %cond110, %cond.end.109 ]
  %65 = load i32, i32* %req_size, align 4, !tbaa !22
  %add113 = add nsw i32 %65, %cond112
  store i32 %add113, i32* %req_size, align 4, !tbaa !22
  br label %if.end.114

if.end.114:                                       ; preds = %cond.end.111, %cond.end.95
  store i32 0, i32* %i, align 4, !tbaa !22
  store i64 1, i64* %comp_bit, align 8, !tbaa !86
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.114
  %66 = load i32, i32* %i, align 4, !tbaa !22
  %67 = load i32, i32* %num_comps, align 4, !tbaa !22
  %cmp115 = icmp slt i32 %66, %67
  br i1 %cmp115, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %68 = load i64, i64* %plane_mask, align 8, !tbaa !86
  %69 = load i64, i64* %comp_bit, align 8, !tbaa !86
  %and = and i64 %68, %69
  %cmp117 = icmp ne i64 %and, 0
  br i1 %cmp117, label %if.then.119, label %if.end.147

if.then.119:                                      ; preds = %for.body
  %70 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom = sext i32 %70 to i64
  %71 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors120 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %71, i32 0, i32 1
  %colored121 = bitcast %union._c* %colors120 to %struct._col*
  %c_level122 = getelementptr inbounds %struct._col, %struct._col* %colored121, i32 0, i32 3
  %arrayidx = getelementptr inbounds [64 x i32], [64 x i32]* %c_level122, i32 0, i64 %idxprom
  %72 = load i32, i32* %arrayidx, align 4, !tbaa !22
  %cmp123 = icmp ult i32 %72, 128
  br i1 %cmp123, label %cond.true.125, label %cond.false.126

cond.true.125:                                    ; preds = %if.then.119
  br label %cond.end.144

cond.false.126:                                   ; preds = %if.then.119
  %73 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom127 = sext i32 %73 to i64
  %74 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors128 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %74, i32 0, i32 1
  %colored129 = bitcast %union._c* %colors128 to %struct._col*
  %c_level130 = getelementptr inbounds %struct._col, %struct._col* %colored129, i32 0, i32 3
  %arrayidx131 = getelementptr inbounds [64 x i32], [64 x i32]* %c_level130, i32 0, i64 %idxprom127
  %75 = load i32, i32* %arrayidx131, align 4, !tbaa !22
  %cmp132 = icmp ult i32 %75, 16384
  br i1 %cmp132, label %cond.true.134, label %cond.false.135

cond.true.134:                                    ; preds = %cond.false.126
  br label %cond.end.142

cond.false.135:                                   ; preds = %cond.false.126
  %76 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom136 = sext i32 %76 to i64
  %77 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors137 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %77, i32 0, i32 1
  %colored138 = bitcast %union._c* %colors137 to %struct._col*
  %c_level139 = getelementptr inbounds %struct._col, %struct._col* %colored138, i32 0, i32 3
  %arrayidx140 = getelementptr inbounds [64 x i32], [64 x i32]* %c_level139, i32 0, i64 %idxprom136
  %78 = load i32, i32* %arrayidx140, align 4, !tbaa !22
  %call141 = call i32 @enc_u_size_uint(i32 %78) #6
  br label %cond.end.142

cond.end.142:                                     ; preds = %cond.false.135, %cond.true.134
  %cond143 = phi i32 [ 2, %cond.true.134 ], [ %call141, %cond.false.135 ]
  br label %cond.end.144

cond.end.144:                                     ; preds = %cond.end.142, %cond.true.125
  %cond145 = phi i32 [ 1, %cond.true.125 ], [ %cond143, %cond.end.142 ]
  %79 = load i32, i32* %req_size, align 4, !tbaa !22
  %add146 = add nsw i32 %79, %cond145
  store i32 %add146, i32* %req_size, align 4, !tbaa !22
  br label %if.end.147

if.end.147:                                       ; preds = %cond.end.144, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.147
  %80 = load i32, i32* %i, align 4, !tbaa !22
  %inc = add nsw i32 %80, 1
  store i32 %inc, i32* %i, align 4, !tbaa !22
  %81 = load i64, i64* %comp_bit, align 8, !tbaa !86
  %shl = shl i64 %81, 1
  store i64 %shl, i64* %comp_bit, align 8, !tbaa !86
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %82 = bitcast i32* %tmp_mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #2
  %83 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #2
  %84 = bitcast i64* %comp_bit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #2
  br label %if.end.148

if.end.148:                                       ; preds = %for.end, %lor.lhs.false.51
  %85 = load %struct.gx_device_color_saved_s*, %struct.gx_device_color_saved_s** %psdc, align 8, !tbaa !1
  %cmp149 = icmp eq %struct.gx_device_color_saved_s* %85, null
  br i1 %cmp149, label %if.then.159, label %lor.lhs.false.151

lor.lhs.false.151:                                ; preds = %if.end.148
  %86 = load i16, i16* %alpha, align 2, !tbaa !87
  %conv152 = zext i16 %86 to i32
  %87 = load %struct.gx_device_color_saved_s*, %struct.gx_device_color_saved_s** %psdc, align 8, !tbaa !1
  %colors153 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %87, i32 0, i32 1
  %colored154 = bitcast %union._svc* %colors153 to %struct._svcol*
  %alpha155 = getelementptr inbounds %struct._svcol, %struct._svcol* %colored154, i32 0, i32 2
  %88 = load i16, i16* %alpha155, align 2, !tbaa !19
  %conv156 = zext i16 %88 to i32
  %cmp157 = icmp ne i32 %conv152, %conv156
  br i1 %cmp157, label %if.then.159, label %if.end.185

if.then.159:                                      ; preds = %lor.lhs.false.151, %if.end.148
  %89 = load i16, i16* %alpha, align 2, !tbaa !87
  %conv160 = zext i16 %89 to i32
  %cmp161 = icmp eq i32 %conv160, 65535
  br i1 %cmp161, label %if.then.163, label %if.else.165

if.then.163:                                      ; preds = %if.then.159
  %90 = load i32, i32* %flag_bits, align 4, !tbaa !22
  %or164 = or i32 %90, 8
  store i32 %or164, i32* %flag_bits, align 4, !tbaa !22
  br label %if.end.184

if.else.165:                                      ; preds = %if.then.159
  %91 = load i32, i32* %flag_bits, align 4, !tbaa !22
  %or166 = or i32 %91, 4
  store i32 %or166, i32* %flag_bits, align 4, !tbaa !22
  %92 = load i16, i16* %alpha, align 2, !tbaa !87
  %conv167 = zext i16 %92 to i32
  %cmp168 = icmp ult i32 %conv167, 128
  br i1 %cmp168, label %cond.true.170, label %cond.false.171

cond.true.170:                                    ; preds = %if.else.165
  br label %cond.end.181

cond.false.171:                                   ; preds = %if.else.165
  %93 = load i16, i16* %alpha, align 2, !tbaa !87
  %conv172 = zext i16 %93 to i32
  %cmp173 = icmp ult i32 %conv172, 16384
  br i1 %cmp173, label %cond.true.175, label %cond.false.176

cond.true.175:                                    ; preds = %cond.false.171
  br label %cond.end.179

cond.false.176:                                   ; preds = %cond.false.171
  %94 = load i16, i16* %alpha, align 2, !tbaa !87
  %conv177 = zext i16 %94 to i32
  %call178 = call i32 @enc_u_size_uint(i32 %conv177) #6
  br label %cond.end.179

cond.end.179:                                     ; preds = %cond.false.176, %cond.true.175
  %cond180 = phi i32 [ 2, %cond.true.175 ], [ %call178, %cond.false.176 ]
  br label %cond.end.181

cond.end.181:                                     ; preds = %cond.end.179, %cond.true.170
  %cond182 = phi i32 [ 1, %cond.true.170 ], [ %cond180, %cond.end.179 ]
  %95 = load i32, i32* %req_size, align 4, !tbaa !22
  %add183 = add nsw i32 %95, %cond182
  store i32 %add183, i32* %req_size, align 4, !tbaa !22
  br label %if.end.184

if.end.184:                                       ; preds = %cond.end.181, %if.then.163
  br label %if.end.185

if.end.185:                                       ; preds = %if.end.184, %lor.lhs.false.151
  %96 = load i32, i32* %flag_bits, align 4, !tbaa !22
  %cmp186 = icmp eq i32 %96, 0
  br i1 %cmp186, label %if.then.188, label %if.end.189

if.then.188:                                      ; preds = %if.end.185
  %97 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  store i32 0, i32* %97, align 4, !tbaa !22
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.189:                                       ; preds = %if.end.185
  %98 = load i32, i32* %req_size, align 4, !tbaa !22
  %99 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  %100 = load i32, i32* %99, align 4, !tbaa !22
  %cmp190 = icmp ugt i32 %98, %100
  br i1 %cmp190, label %if.then.192, label %if.end.193

if.then.192:                                      ; preds = %if.end.189
  %101 = load i32, i32* %req_size, align 4, !tbaa !22
  %102 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  store i32 %101, i32* %102, align 4, !tbaa !22
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.193:                                       ; preds = %if.end.189
  %103 = load i32, i32* %flag_bits, align 4, !tbaa !22
  %conv194 = trunc i32 %103 to i8
  %104 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %incdec.ptr, i8** %pdata.addr, align 8, !tbaa !1
  store i8 %conv194, i8* %104, align 1, !tbaa !24
  %105 = load i32, i32* %flag_bits, align 4, !tbaa !22
  %and195 = and i32 %105, 1
  %cmp196 = icmp ne i32 %and195, 0
  br i1 %cmp196, label %if.then.198, label %if.end.245

if.then.198:                                      ; preds = %if.end.193
  %106 = load i32, i32* %num_comps, align 4, !tbaa !22
  %107 = load i32, i32* %depth, align 4, !tbaa !22
  %cmp199 = icmp eq i32 %106, %107
  br i1 %cmp199, label %if.then.201, label %if.else.234

if.then.201:                                      ; preds = %if.then.198
  %108 = bitcast i64* %base_mask to i8*
  call void @llvm.lifetime.start(i64 8, i8* %108) #2
  store i64 0, i64* %base_mask, align 8, !tbaa !86
  %109 = bitcast i32* %num_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %109) #2
  %110 = load i32, i32* %num_comps, align 4, !tbaa !22
  %add202 = add nsw i32 %110, 7
  %shr203 = ashr i32 %add202, 3
  store i32 %shr203, i32* %num_bytes, align 4, !tbaa !22
  %111 = bitcast i32* %i204 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %111) #2
  store i32 0, i32* %i204, align 4, !tbaa !22
  br label %for.cond.205

for.cond.205:                                     ; preds = %for.inc.221, %if.then.201
  %112 = load i32, i32* %i204, align 4, !tbaa !22
  %113 = load i32, i32* %num_comps, align 4, !tbaa !22
  %cmp206 = icmp slt i32 %112, %113
  br i1 %cmp206, label %for.body.208, label %for.end.223

for.body.208:                                     ; preds = %for.cond.205
  %114 = load i32, i32* %i204, align 4, !tbaa !22
  %idxprom209 = sext i32 %114 to i64
  %115 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors210 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %115, i32 0, i32 1
  %colored211 = bitcast %union._c* %colors210 to %struct._col*
  %c_base212 = getelementptr inbounds %struct._col, %struct._col* %colored211, i32 0, i32 2
  %arrayidx213 = getelementptr inbounds [64 x i8], [64 x i8]* %c_base212, i32 0, i64 %idxprom209
  %116 = load i8, i8* %arrayidx213, align 1, !tbaa !24
  %conv214 = zext i8 %116 to i32
  %cmp215 = icmp ne i32 %conv214, 0
  br i1 %cmp215, label %if.then.217, label %if.end.220

if.then.217:                                      ; preds = %for.body.208
  %117 = load i32, i32* %i204, align 4, !tbaa !22
  %sh_prom = zext i32 %117 to i64
  %shl218 = shl i64 1, %sh_prom
  %118 = load i64, i64* %base_mask, align 8, !tbaa !86
  %or219 = or i64 %118, %shl218
  store i64 %or219, i64* %base_mask, align 8, !tbaa !86
  br label %if.end.220

if.end.220:                                       ; preds = %if.then.217, %for.body.208
  br label %for.inc.221

for.inc.221:                                      ; preds = %if.end.220
  %119 = load i32, i32* %i204, align 4, !tbaa !22
  %inc222 = add nsw i32 %119, 1
  store i32 %inc222, i32* %i204, align 4, !tbaa !22
  br label %for.cond.205

for.end.223:                                      ; preds = %for.cond.205
  store i32 0, i32* %i204, align 4, !tbaa !22
  br label %for.cond.224

for.cond.224:                                     ; preds = %for.inc.230, %for.end.223
  %120 = load i32, i32* %i204, align 4, !tbaa !22
  %121 = load i32, i32* %num_bytes, align 4, !tbaa !22
  %cmp225 = icmp slt i32 %120, %121
  br i1 %cmp225, label %for.body.227, label %for.end.233

for.body.227:                                     ; preds = %for.cond.224
  %122 = load i64, i64* %base_mask, align 8, !tbaa !86
  %conv228 = trunc i64 %122 to i8
  %123 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %incdec.ptr229 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %incdec.ptr229, i8** %pdata.addr, align 8, !tbaa !1
  store i8 %conv228, i8* %123, align 1, !tbaa !24
  br label %for.inc.230

for.inc.230:                                      ; preds = %for.body.227
  %124 = load i32, i32* %i204, align 4, !tbaa !22
  %inc231 = add nsw i32 %124, 1
  store i32 %inc231, i32* %i204, align 4, !tbaa !22
  %125 = load i64, i64* %base_mask, align 8, !tbaa !86
  %shr232 = lshr i64 %125, 8
  store i64 %shr232, i64* %base_mask, align 8, !tbaa !86
  br label %for.cond.224

for.end.233:                                      ; preds = %for.cond.224
  %126 = bitcast i32* %i204 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #2
  %127 = bitcast i32* %num_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #2
  %128 = bitcast i64* %base_mask to i8*
  call void @llvm.lifetime.end(i64 8, i8* %128) #2
  br label %if.end.244

if.else.234:                                      ; preds = %if.then.198
  %129 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %130 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors235 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %130, i32 0, i32 1
  %colored236 = bitcast %union._c* %colors235 to %struct._col*
  %c_base237 = getelementptr inbounds %struct._col, %struct._col* %colored236, i32 0, i32 2
  %arraydecay238 = getelementptr inbounds [64 x i8], [64 x i8]* %c_base237, i32 0, i32 0
  %131 = load i32, i32* %num_comps, align 4, !tbaa !22
  %conv239 = sext i32 %131 to i64
  %mul240 = mul i64 %conv239, 1
  %call241 = call i8* @memcpy(i8* %129, i8* %arraydecay238, i64 %mul240) #5
  %132 = load i32, i32* %num_comps, align 4, !tbaa !22
  %conv242 = sext i32 %132 to i64
  %mul243 = mul i64 %conv242, 1
  %133 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %133, i64 %mul243
  store i8* %add.ptr, i8** %pdata.addr, align 8, !tbaa !1
  br label %if.end.244

if.end.244:                                       ; preds = %if.else.234, %for.end.233
  br label %if.end.245

if.end.245:                                       ; preds = %if.end.244, %if.end.193
  %134 = load i32, i32* %flag_bits, align 4, !tbaa !22
  %and246 = and i32 %134, 2
  %cmp247 = icmp ne i32 %and246, 0
  br i1 %cmp247, label %if.then.249, label %if.end.395

if.then.249:                                      ; preds = %if.end.245
  %135 = bitcast i64* %code_bit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %135) #2
  %136 = bitcast i32* %i250 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %136) #2
  %137 = bitcast i32* %tmp_mask251 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %137) #2
  %138 = load i32, i32* %num_comps, align 4, !tbaa !22
  %conv252 = sext i32 %138 to i64
  %cmp253 = icmp ugt i64 %conv252, 32
  br i1 %cmp253, label %if.then.255, label %if.else.303

if.then.255:                                      ; preds = %if.then.249
  %139 = load i64, i64* %plane_mask, align 8, !tbaa !86
  %conv256 = trunc i64 %139 to i32
  store i32 %conv256, i32* %tmp_mask251, align 4, !tbaa !22
  br label %do.body

do.body:                                          ; preds = %if.then.255
  %140 = load i32, i32* %tmp_mask251, align 4, !tbaa !22
  %cmp257 = icmp ult i32 %140, 128
  br i1 %cmp257, label %if.then.259, label %if.else.262

if.then.259:                                      ; preds = %do.body
  %141 = load i32, i32* %tmp_mask251, align 4, !tbaa !22
  %conv260 = trunc i32 %141 to i8
  %142 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %incdec.ptr261 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %incdec.ptr261, i8** %pdata.addr, align 8, !tbaa !1
  store i8 %conv260, i8* %142, align 1, !tbaa !24
  br label %if.end.276

if.else.262:                                      ; preds = %do.body
  %143 = load i32, i32* %tmp_mask251, align 4, !tbaa !22
  %cmp263 = icmp ult i32 %143, 16384
  br i1 %cmp263, label %if.then.265, label %if.else.273

if.then.265:                                      ; preds = %if.else.262
  %144 = load i32, i32* %tmp_mask251, align 4, !tbaa !22
  %and266 = and i32 %144, 127
  %or267 = or i32 128, %and266
  %conv268 = trunc i32 %or267 to i8
  %145 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %incdec.ptr269 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %incdec.ptr269, i8** %pdata.addr, align 8, !tbaa !1
  store i8 %conv268, i8* %145, align 1, !tbaa !24
  %146 = load i32, i32* %tmp_mask251, align 4, !tbaa !22
  %shr270 = lshr i32 %146, 7
  %conv271 = trunc i32 %shr270 to i8
  %147 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %incdec.ptr272 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %incdec.ptr272, i8** %pdata.addr, align 8, !tbaa !1
  store i8 %conv271, i8* %147, align 1, !tbaa !24
  br label %if.end.275

if.else.273:                                      ; preds = %if.else.262
  %148 = load i32, i32* %tmp_mask251, align 4, !tbaa !22
  %149 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %call274 = call i8* @enc_u_put_uint(i32 %148, i8* %149) #6
  store i8* %call274, i8** %pdata.addr, align 8, !tbaa !1
  br label %if.end.275

if.end.275:                                       ; preds = %if.else.273, %if.then.265
  br label %if.end.276

if.end.276:                                       ; preds = %if.end.275, %if.then.259
  br label %do.cond

do.cond:                                          ; preds = %if.end.276
  br label %do.end

do.end:                                           ; preds = %do.cond
  %150 = load i64, i64* %plane_mask, align 8, !tbaa !86
  %shr277 = lshr i64 %150, 31
  %shr278 = lshr i64 %shr277, 1
  %conv279 = trunc i64 %shr278 to i32
  store i32 %conv279, i32* %tmp_mask251, align 4, !tbaa !22
  br label %do.body.280

do.body.280:                                      ; preds = %do.end
  %151 = load i32, i32* %tmp_mask251, align 4, !tbaa !22
  %cmp281 = icmp ult i32 %151, 128
  br i1 %cmp281, label %if.then.283, label %if.else.286

if.then.283:                                      ; preds = %do.body.280
  %152 = load i32, i32* %tmp_mask251, align 4, !tbaa !22
  %conv284 = trunc i32 %152 to i8
  %153 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %incdec.ptr285 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %incdec.ptr285, i8** %pdata.addr, align 8, !tbaa !1
  store i8 %conv284, i8* %153, align 1, !tbaa !24
  br label %if.end.300

if.else.286:                                      ; preds = %do.body.280
  %154 = load i32, i32* %tmp_mask251, align 4, !tbaa !22
  %cmp287 = icmp ult i32 %154, 16384
  br i1 %cmp287, label %if.then.289, label %if.else.297

if.then.289:                                      ; preds = %if.else.286
  %155 = load i32, i32* %tmp_mask251, align 4, !tbaa !22
  %and290 = and i32 %155, 127
  %or291 = or i32 128, %and290
  %conv292 = trunc i32 %or291 to i8
  %156 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %incdec.ptr293 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %incdec.ptr293, i8** %pdata.addr, align 8, !tbaa !1
  store i8 %conv292, i8* %156, align 1, !tbaa !24
  %157 = load i32, i32* %tmp_mask251, align 4, !tbaa !22
  %shr294 = lshr i32 %157, 7
  %conv295 = trunc i32 %shr294 to i8
  %158 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %incdec.ptr296 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %incdec.ptr296, i8** %pdata.addr, align 8, !tbaa !1
  store i8 %conv295, i8* %158, align 1, !tbaa !24
  br label %if.end.299

if.else.297:                                      ; preds = %if.else.286
  %159 = load i32, i32* %tmp_mask251, align 4, !tbaa !22
  %160 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %call298 = call i8* @enc_u_put_uint(i32 %159, i8* %160) #6
  store i8* %call298, i8** %pdata.addr, align 8, !tbaa !1
  br label %if.end.299

if.end.299:                                       ; preds = %if.else.297, %if.then.289
  br label %if.end.300

if.end.300:                                       ; preds = %if.end.299, %if.then.283
  br label %do.cond.301

do.cond.301:                                      ; preds = %if.end.300
  br label %do.end.302

do.end.302:                                       ; preds = %do.cond.301
  br label %if.end.328

if.else.303:                                      ; preds = %if.then.249
  %161 = load i64, i64* %plane_mask, align 8, !tbaa !86
  %conv304 = trunc i64 %161 to i32
  store i32 %conv304, i32* %tmp_mask251, align 4, !tbaa !22
  br label %do.body.305

do.body.305:                                      ; preds = %if.else.303
  %162 = load i32, i32* %tmp_mask251, align 4, !tbaa !22
  %cmp306 = icmp ult i32 %162, 128
  br i1 %cmp306, label %if.then.308, label %if.else.311

if.then.308:                                      ; preds = %do.body.305
  %163 = load i32, i32* %tmp_mask251, align 4, !tbaa !22
  %conv309 = trunc i32 %163 to i8
  %164 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %incdec.ptr310 = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %incdec.ptr310, i8** %pdata.addr, align 8, !tbaa !1
  store i8 %conv309, i8* %164, align 1, !tbaa !24
  br label %if.end.325

if.else.311:                                      ; preds = %do.body.305
  %165 = load i32, i32* %tmp_mask251, align 4, !tbaa !22
  %cmp312 = icmp ult i32 %165, 16384
  br i1 %cmp312, label %if.then.314, label %if.else.322

if.then.314:                                      ; preds = %if.else.311
  %166 = load i32, i32* %tmp_mask251, align 4, !tbaa !22
  %and315 = and i32 %166, 127
  %or316 = or i32 128, %and315
  %conv317 = trunc i32 %or316 to i8
  %167 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %incdec.ptr318 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %incdec.ptr318, i8** %pdata.addr, align 8, !tbaa !1
  store i8 %conv317, i8* %167, align 1, !tbaa !24
  %168 = load i32, i32* %tmp_mask251, align 4, !tbaa !22
  %shr319 = lshr i32 %168, 7
  %conv320 = trunc i32 %shr319 to i8
  %169 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %incdec.ptr321 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %incdec.ptr321, i8** %pdata.addr, align 8, !tbaa !1
  store i8 %conv320, i8* %169, align 1, !tbaa !24
  br label %if.end.324

if.else.322:                                      ; preds = %if.else.311
  %170 = load i32, i32* %tmp_mask251, align 4, !tbaa !22
  %171 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %call323 = call i8* @enc_u_put_uint(i32 %170, i8* %171) #6
  store i8* %call323, i8** %pdata.addr, align 8, !tbaa !1
  br label %if.end.324

if.end.324:                                       ; preds = %if.else.322, %if.then.314
  br label %if.end.325

if.end.325:                                       ; preds = %if.end.324, %if.then.308
  br label %do.cond.326

do.cond.326:                                      ; preds = %if.end.325
  br label %do.end.327

do.end.327:                                       ; preds = %do.cond.326
  br label %if.end.328

if.end.328:                                       ; preds = %do.end.327, %do.end.302
  store i32 0, i32* %i250, align 4, !tbaa !22
  store i64 1, i64* %code_bit, align 8, !tbaa !86
  br label %for.cond.329

for.cond.329:                                     ; preds = %for.inc.391, %if.end.328
  %172 = load i32, i32* %i250, align 4, !tbaa !22
  %173 = load i32, i32* %num_comps, align 4, !tbaa !22
  %cmp330 = icmp slt i32 %172, %173
  br i1 %cmp330, label %for.body.332, label %for.end.394

for.body.332:                                     ; preds = %for.cond.329
  %174 = load i64, i64* %plane_mask, align 8, !tbaa !86
  %175 = load i64, i64* %code_bit, align 8, !tbaa !86
  %and333 = and i64 %174, %175
  %cmp334 = icmp ne i64 %and333, 0
  br i1 %cmp334, label %if.then.336, label %if.end.390

if.then.336:                                      ; preds = %for.body.332
  br label %do.body.337

do.body.337:                                      ; preds = %if.then.336
  %176 = load i32, i32* %i250, align 4, !tbaa !22
  %idxprom338 = sext i32 %176 to i64
  %177 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors339 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %177, i32 0, i32 1
  %colored340 = bitcast %union._c* %colors339 to %struct._col*
  %c_level341 = getelementptr inbounds %struct._col, %struct._col* %colored340, i32 0, i32 3
  %arrayidx342 = getelementptr inbounds [64 x i32], [64 x i32]* %c_level341, i32 0, i64 %idxprom338
  %178 = load i32, i32* %arrayidx342, align 4, !tbaa !22
  %cmp343 = icmp ult i32 %178, 128
  br i1 %cmp343, label %if.then.345, label %if.else.353

if.then.345:                                      ; preds = %do.body.337
  %179 = load i32, i32* %i250, align 4, !tbaa !22
  %idxprom346 = sext i32 %179 to i64
  %180 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors347 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %180, i32 0, i32 1
  %colored348 = bitcast %union._c* %colors347 to %struct._col*
  %c_level349 = getelementptr inbounds %struct._col, %struct._col* %colored348, i32 0, i32 3
  %arrayidx350 = getelementptr inbounds [64 x i32], [64 x i32]* %c_level349, i32 0, i64 %idxprom346
  %181 = load i32, i32* %arrayidx350, align 4, !tbaa !22
  %conv351 = trunc i32 %181 to i8
  %182 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %incdec.ptr352 = getelementptr inbounds i8, i8* %182, i32 1
  store i8* %incdec.ptr352, i8** %pdata.addr, align 8, !tbaa !1
  store i8 %conv351, i8* %182, align 1, !tbaa !24
  br label %if.end.387

if.else.353:                                      ; preds = %do.body.337
  %183 = load i32, i32* %i250, align 4, !tbaa !22
  %idxprom354 = sext i32 %183 to i64
  %184 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors355 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %184, i32 0, i32 1
  %colored356 = bitcast %union._c* %colors355 to %struct._col*
  %c_level357 = getelementptr inbounds %struct._col, %struct._col* %colored356, i32 0, i32 3
  %arrayidx358 = getelementptr inbounds [64 x i32], [64 x i32]* %c_level357, i32 0, i64 %idxprom354
  %185 = load i32, i32* %arrayidx358, align 4, !tbaa !22
  %cmp359 = icmp ult i32 %185, 16384
  br i1 %cmp359, label %if.then.361, label %if.else.379

if.then.361:                                      ; preds = %if.else.353
  %186 = load i32, i32* %i250, align 4, !tbaa !22
  %idxprom362 = sext i32 %186 to i64
  %187 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors363 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %187, i32 0, i32 1
  %colored364 = bitcast %union._c* %colors363 to %struct._col*
  %c_level365 = getelementptr inbounds %struct._col, %struct._col* %colored364, i32 0, i32 3
  %arrayidx366 = getelementptr inbounds [64 x i32], [64 x i32]* %c_level365, i32 0, i64 %idxprom362
  %188 = load i32, i32* %arrayidx366, align 4, !tbaa !22
  %and367 = and i32 %188, 127
  %or368 = or i32 128, %and367
  %conv369 = trunc i32 %or368 to i8
  %189 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %incdec.ptr370 = getelementptr inbounds i8, i8* %189, i32 1
  store i8* %incdec.ptr370, i8** %pdata.addr, align 8, !tbaa !1
  store i8 %conv369, i8* %189, align 1, !tbaa !24
  %190 = load i32, i32* %i250, align 4, !tbaa !22
  %idxprom371 = sext i32 %190 to i64
  %191 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors372 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %191, i32 0, i32 1
  %colored373 = bitcast %union._c* %colors372 to %struct._col*
  %c_level374 = getelementptr inbounds %struct._col, %struct._col* %colored373, i32 0, i32 3
  %arrayidx375 = getelementptr inbounds [64 x i32], [64 x i32]* %c_level374, i32 0, i64 %idxprom371
  %192 = load i32, i32* %arrayidx375, align 4, !tbaa !22
  %shr376 = lshr i32 %192, 7
  %conv377 = trunc i32 %shr376 to i8
  %193 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %incdec.ptr378 = getelementptr inbounds i8, i8* %193, i32 1
  store i8* %incdec.ptr378, i8** %pdata.addr, align 8, !tbaa !1
  store i8 %conv377, i8* %193, align 1, !tbaa !24
  br label %if.end.386

if.else.379:                                      ; preds = %if.else.353
  %194 = load i32, i32* %i250, align 4, !tbaa !22
  %idxprom380 = sext i32 %194 to i64
  %195 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors381 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %195, i32 0, i32 1
  %colored382 = bitcast %union._c* %colors381 to %struct._col*
  %c_level383 = getelementptr inbounds %struct._col, %struct._col* %colored382, i32 0, i32 3
  %arrayidx384 = getelementptr inbounds [64 x i32], [64 x i32]* %c_level383, i32 0, i64 %idxprom380
  %196 = load i32, i32* %arrayidx384, align 4, !tbaa !22
  %197 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %call385 = call i8* @enc_u_put_uint(i32 %196, i8* %197) #6
  store i8* %call385, i8** %pdata.addr, align 8, !tbaa !1
  br label %if.end.386

if.end.386:                                       ; preds = %if.else.379, %if.then.361
  br label %if.end.387

if.end.387:                                       ; preds = %if.end.386, %if.then.345
  br label %do.cond.388

do.cond.388:                                      ; preds = %if.end.387
  br label %do.end.389

do.end.389:                                       ; preds = %do.cond.388
  br label %if.end.390

if.end.390:                                       ; preds = %do.end.389, %for.body.332
  br label %for.inc.391

for.inc.391:                                      ; preds = %if.end.390
  %198 = load i32, i32* %i250, align 4, !tbaa !22
  %inc392 = add nsw i32 %198, 1
  store i32 %inc392, i32* %i250, align 4, !tbaa !22
  %199 = load i64, i64* %code_bit, align 8, !tbaa !86
  %shl393 = shl i64 %199, 1
  store i64 %shl393, i64* %code_bit, align 8, !tbaa !86
  br label %for.cond.329

for.end.394:                                      ; preds = %for.cond.329
  %200 = bitcast i32* %tmp_mask251 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %200) #2
  %201 = bitcast i32* %i250 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %201) #2
  %202 = bitcast i64* %code_bit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %202) #2
  br label %if.end.395

if.end.395:                                       ; preds = %for.end.394, %if.end.245
  %203 = load i32, i32* %flag_bits, align 4, !tbaa !22
  %and396 = and i32 %203, 4
  %cmp397 = icmp ne i32 %and396, 0
  br i1 %cmp397, label %if.then.399, label %if.end.428

if.then.399:                                      ; preds = %if.end.395
  br label %do.body.400

do.body.400:                                      ; preds = %if.then.399
  %204 = load i16, i16* %alpha, align 2, !tbaa !87
  %conv401 = zext i16 %204 to i32
  %cmp402 = icmp ult i32 %conv401, 128
  br i1 %cmp402, label %if.then.404, label %if.else.407

if.then.404:                                      ; preds = %do.body.400
  %205 = load i16, i16* %alpha, align 2, !tbaa !87
  %conv405 = trunc i16 %205 to i8
  %206 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %incdec.ptr406 = getelementptr inbounds i8, i8* %206, i32 1
  store i8* %incdec.ptr406, i8** %pdata.addr, align 8, !tbaa !1
  store i8 %conv405, i8* %206, align 1, !tbaa !24
  br label %if.end.425

if.else.407:                                      ; preds = %do.body.400
  %207 = load i16, i16* %alpha, align 2, !tbaa !87
  %conv408 = zext i16 %207 to i32
  %cmp409 = icmp ult i32 %conv408, 16384
  br i1 %cmp409, label %if.then.411, label %if.else.421

if.then.411:                                      ; preds = %if.else.407
  %208 = load i16, i16* %alpha, align 2, !tbaa !87
  %conv412 = zext i16 %208 to i32
  %and413 = and i32 %conv412, 127
  %or414 = or i32 128, %and413
  %conv415 = trunc i32 %or414 to i8
  %209 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %incdec.ptr416 = getelementptr inbounds i8, i8* %209, i32 1
  store i8* %incdec.ptr416, i8** %pdata.addr, align 8, !tbaa !1
  store i8 %conv415, i8* %209, align 1, !tbaa !24
  %210 = load i16, i16* %alpha, align 2, !tbaa !87
  %conv417 = zext i16 %210 to i32
  %shr418 = ashr i32 %conv417, 7
  %conv419 = trunc i32 %shr418 to i8
  %211 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %incdec.ptr420 = getelementptr inbounds i8, i8* %211, i32 1
  store i8* %incdec.ptr420, i8** %pdata.addr, align 8, !tbaa !1
  store i8 %conv419, i8* %211, align 1, !tbaa !24
  br label %if.end.424

if.else.421:                                      ; preds = %if.else.407
  %212 = load i16, i16* %alpha, align 2, !tbaa !87
  %conv422 = zext i16 %212 to i32
  %213 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %call423 = call i8* @enc_u_put_uint(i32 %conv422, i8* %213) #6
  store i8* %call423, i8** %pdata.addr, align 8, !tbaa !1
  br label %if.end.424

if.end.424:                                       ; preds = %if.else.421, %if.then.411
  br label %if.end.425

if.end.425:                                       ; preds = %if.end.424, %if.then.404
  br label %do.cond.426

do.cond.426:                                      ; preds = %if.end.425
  br label %do.end.427

do.end.427:                                       ; preds = %do.cond.426
  br label %if.end.428

if.end.428:                                       ; preds = %do.end.427, %if.end.395
  %214 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %215 = load i8*, i8** %pdata0, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %214 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %215 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv429 = trunc i64 %sub.ptr.sub to i32
  %216 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  store i32 %conv429, i32* %216, align 4, !tbaa !22
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.428, %if.then.192, %if.then.188, %if.then.14, %if.then
  %217 = bitcast i8** %pdata0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %217) #2
  %218 = bitcast %struct.gx_device_color_saved_s** %psdc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %218) #2
  %219 = bitcast i16* %alpha to i8*
  call void @llvm.lifetime.end(i64 2, i8* %219) #2
  %220 = bitcast i64* %plane_mask to i8*
  call void @llvm.lifetime.end(i64 8, i8* %220) #2
  %221 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %221) #2
  %222 = bitcast i32* %num_comps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %222) #2
  %223 = bitcast i32* %flag_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %223) #2
  %224 = bitcast i32* %req_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %224) #2
  %225 = load i32, i32* %retval
  ret i32 %225
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_ht_colored_read(%struct.gx_device_color_s* %pdevc, %struct.gs_imager_state_s* %pis, %struct.gx_device_color_s* %prior_devc, %struct.gx_device_s* %dev, i64 %offset, i8* %pdata, i32 %size, %struct.gs_memory_s* %mem) #0 {
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
  %num_comps = alloca i32, align 4
  %depth = alloca i32, align 4
  %pdata0 = alloca i8*, align 8
  %flag_bits = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %base_mask = alloca i64, align 8
  %num_bytes = alloca i32, align 4
  %i = alloca i32, align 4
  %shift = alloca i32, align 4
  %pdata_start = alloca i8*, align 8
  %plane_mask = alloca i64, align 8
  %tmp_mask = alloca i32, align 4
  %i67 = alloca i32, align 4
  %tmp_w = alloca i32, align 4
  %tmp_w90 = alloca i32, align 4
  %tmp_w106 = alloca i32, align 4
  %tmp_w141 = alloca i32, align 4
  %pdata_start188 = alloca i8*, align 8
  %tmp_w202 = alloca i32, align 4
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %prior_devc, %struct.gx_device_color_s** %prior_devc.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %offset, i64* %offset.addr, align 8, !tbaa !86
  store i8* %pdata, i8** %pdata.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !22
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_color_s* %devc to i8*
  call void @llvm.lifetime.start(i64 656, i8* %0) #2
  %1 = bitcast i32* %num_comps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %3 = load i32, i32* %num_components, align 4, !tbaa !36
  store i32 %3, i32* %num_comps, align 4, !tbaa !22
  %4 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 11
  %depth2 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info1, i32 0, i32 3
  %6 = load i16, i16* %depth2, align 2, !tbaa !25
  %conv = zext i16 %6 to i32
  store i32 %conv, i32* %depth, align 4, !tbaa !22
  %7 = bitcast i8** %pdata0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  store i8* %8, i8** %pdata0, align 8, !tbaa !1
  %9 = bitcast i32* %flag_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load i64, i64* %offset.addr, align 8, !tbaa !86
  %cmp = icmp ne i64 %10, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.240

if.end:                                           ; preds = %entry
  %11 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %prior_devc.addr, align 8, !tbaa !1
  %cmp4 = icmp ne %struct.gx_device_color_s* %11, null
  br i1 %cmp4, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %12 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %prior_devc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %12, i32 0, i32 0
  %13 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !5
  %cmp6 = icmp eq %struct.gx_device_color_type_s* %13, bitcast ({ %struct.gs_memory_struct_type_s*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* }* @gx_dc_type_data_ht_colored to %struct.gx_device_color_type_s*)
  br i1 %cmp6, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %land.lhs.true
  %14 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %prior_devc.addr, align 8, !tbaa !1
  %15 = bitcast %struct.gx_device_color_s* %devc to i8*
  %16 = bitcast %struct.gx_device_color_s* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 656, i32 8, i1 false), !tbaa.struct !88
  br label %if.end.9

if.else:                                          ; preds = %land.lhs.true, %if.end
  %17 = bitcast %struct.gx_device_color_s* %devc to i8*
  %call = call i8* @memset(i8* %17, i32 0, i64 656) #5
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  %type10 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 0
  store %struct.gx_device_color_type_s* bitcast ({ %struct.gs_memory_struct_type_s*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* }* @gx_dc_type_data_ht_colored to %struct.gx_device_color_type_s*), %struct.gx_device_color_type_s** %type10, align 8, !tbaa !5
  %18 = load i32, i32* %num_comps, align 4, !tbaa !22
  %conv11 = trunc i32 %18 to i16
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 1
  %colored = bitcast %union._c* %colors to %struct._col*
  %num_components12 = getelementptr inbounds %struct._col, %struct._col* %colored, i32 0, i32 1
  store i16 %conv11, i16* %num_components12, align 2, !tbaa !85
  %19 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %dev_ht = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %19, i32 0, i32 41
  %20 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht, align 8, !tbaa !89
  %colors13 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 1
  %colored14 = bitcast %union._c* %colors13 to %struct._col*
  %c_ht = getelementptr inbounds %struct._col, %struct._col* %colored14, i32 0, i32 0
  store %struct.gx_device_halftone_s* %20, %struct.gx_device_halftone_s** %c_ht, align 8, !tbaa !23
  %21 = load i32, i32* %size.addr, align 4, !tbaa !22
  %cmp15 = icmp eq i32 %21, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.9
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.240

if.end.18:                                        ; preds = %if.end.9
  %22 = load i32, i32* %size.addr, align 4, !tbaa !22
  %dec = add i32 %22, -1
  store i32 %dec, i32* %size.addr, align 4, !tbaa !22
  %23 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr, i8** %pdata.addr, align 8, !tbaa !1
  %24 = load i8, i8* %23, align 1, !tbaa !24
  %conv19 = zext i8 %24 to i32
  store i32 %conv19, i32* %flag_bits, align 4, !tbaa !22
  %25 = load i32, i32* %flag_bits, align 4, !tbaa !22
  %and = and i32 %25, 1
  %cmp20 = icmp ne i32 %and, 0
  br i1 %cmp20, label %if.then.22, label %if.end.62

if.then.22:                                       ; preds = %if.end.18
  %26 = load i32, i32* %depth, align 4, !tbaa !22
  %27 = load i32, i32* %num_comps, align 4, !tbaa !22
  %cmp23 = icmp eq i32 %26, %27
  br i1 %cmp23, label %if.then.25, label %if.else.50

if.then.25:                                       ; preds = %if.then.22
  %28 = bitcast i64* %base_mask to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #2
  store i64 0, i64* %base_mask, align 8, !tbaa !86
  %29 = bitcast i32* %num_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #2
  %30 = load i32, i32* %num_comps, align 4, !tbaa !22
  %add = add nsw i32 %30, 7
  %shr = ashr i32 %add, 3
  store i32 %shr, i32* %num_bytes, align 4, !tbaa !22
  %31 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #2
  %32 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #2
  store i32 0, i32* %shift, align 4, !tbaa !22
  %33 = load i32, i32* %size.addr, align 4, !tbaa !22
  %34 = load i32, i32* %num_bytes, align 4, !tbaa !22
  %cmp26 = icmp ult i32 %33, %34
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.then.25
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %if.then.25
  %35 = load i32, i32* %num_bytes, align 4, !tbaa !22
  %36 = load i32, i32* %size.addr, align 4, !tbaa !22
  %sub = sub i32 %36, %35
  store i32 %sub, i32* %size.addr, align 4, !tbaa !22
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.29
  %37 = load i32, i32* %i, align 4, !tbaa !22
  %38 = load i32, i32* %num_bytes, align 4, !tbaa !22
  %cmp30 = icmp slt i32 %37, %38
  br i1 %cmp30, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %39 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %incdec.ptr32 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr32, i8** %pdata.addr, align 8, !tbaa !1
  %40 = load i8, i8* %39, align 1, !tbaa !24
  %conv33 = zext i8 %40 to i64
  %41 = load i32, i32* %shift, align 4, !tbaa !22
  %sh_prom = zext i32 %41 to i64
  %shl = shl i64 %conv33, %sh_prom
  %42 = load i64, i64* %base_mask, align 8, !tbaa !86
  %or = or i64 %42, %shl
  store i64 %or, i64* %base_mask, align 8, !tbaa !86
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %43 = load i32, i32* %i, align 4, !tbaa !22
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %i, align 4, !tbaa !22
  %44 = load i32, i32* %shift, align 4, !tbaa !22
  %add34 = add nsw i32 %44, 8
  store i32 %add34, i32* %shift, align 4, !tbaa !22
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.43, %for.end
  %45 = load i32, i32* %i, align 4, !tbaa !22
  %46 = load i32, i32* %num_comps, align 4, !tbaa !22
  %cmp36 = icmp slt i32 %45, %46
  br i1 %cmp36, label %for.body.38, label %for.end.46

for.body.38:                                      ; preds = %for.cond.35
  %47 = load i64, i64* %base_mask, align 8, !tbaa !86
  %and39 = and i64 %47, 1
  %conv40 = trunc i64 %and39 to i8
  %48 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom = sext i32 %48 to i64
  %colors41 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 1
  %colored42 = bitcast %union._c* %colors41 to %struct._col*
  %c_base = getelementptr inbounds %struct._col, %struct._col* %colored42, i32 0, i32 2
  %arrayidx = getelementptr inbounds [64 x i8], [64 x i8]* %c_base, i32 0, i64 %idxprom
  store i8 %conv40, i8* %arrayidx, align 1, !tbaa !24
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.body.38
  %49 = load i32, i32* %i, align 4, !tbaa !22
  %inc44 = add nsw i32 %49, 1
  store i32 %inc44, i32* %i, align 4, !tbaa !22
  %50 = load i64, i64* %base_mask, align 8, !tbaa !86
  %shr45 = lshr i64 %50, 1
  store i64 %shr45, i64* %base_mask, align 8, !tbaa !86
  br label %for.cond.35

for.end.46:                                       ; preds = %for.cond.35
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.46, %if.then.28
  %51 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #2
  %52 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #2
  %53 = bitcast i32* %num_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #2
  %54 = bitcast i64* %base_mask to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.240 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.61

if.else.50:                                       ; preds = %if.then.22
  %55 = load i32, i32* %size.addr, align 4, !tbaa !22
  %56 = load i32, i32* %num_comps, align 4, !tbaa !22
  %cmp51 = icmp ult i32 %55, %56
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.else.50
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.240

if.end.54:                                        ; preds = %if.else.50
  %57 = load i32, i32* %num_comps, align 4, !tbaa !22
  %58 = load i32, i32* %size.addr, align 4, !tbaa !22
  %sub55 = sub i32 %58, %57
  store i32 %sub55, i32* %size.addr, align 4, !tbaa !22
  %colors56 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 1
  %colored57 = bitcast %union._c* %colors56 to %struct._col*
  %c_base58 = getelementptr inbounds %struct._col, %struct._col* %colored57, i32 0, i32 2
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %c_base58, i32 0, i32 0
  %59 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %60 = load i32, i32* %num_comps, align 4, !tbaa !22
  %conv59 = sext i32 %60 to i64
  %call60 = call i8* @memcpy(i8* %arraydecay, i8* %59, i64 %conv59) #5
  %61 = load i32, i32* %num_comps, align 4, !tbaa !22
  %62 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %61 to i64
  %add.ptr = getelementptr inbounds i8, i8* %62, i64 %idx.ext
  store i8* %add.ptr, i8** %pdata.addr, align 8, !tbaa !1
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.54, %cleanup.cont
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.end.18
  %63 = load i32, i32* %flag_bits, align 4, !tbaa !22
  %and63 = and i32 %63, 2
  %cmp64 = icmp ne i32 %and63, 0
  br i1 %cmp64, label %if.then.66, label %if.end.176

if.then.66:                                       ; preds = %if.end.62
  %64 = bitcast i8** %pdata_start to i8*
  call void @llvm.lifetime.start(i64 8, i8* %64) #2
  %65 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  store i8* %65, i8** %pdata_start, align 8, !tbaa !1
  %66 = bitcast i64* %plane_mask to i8*
  call void @llvm.lifetime.start(i64 8, i8* %66) #2
  %67 = bitcast i32* %tmp_mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %67) #2
  %68 = bitcast i32* %i67 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %68) #2
  %69 = load i32, i32* %size.addr, align 4, !tbaa !22
  %cmp68 = icmp ult i32 %69, 1
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.then.66
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.170

if.end.71:                                        ; preds = %if.then.66
  %70 = load i32, i32* %num_comps, align 4, !tbaa !22
  %conv72 = sext i32 %70 to i64
  %cmp73 = icmp ugt i64 %conv72, 32
  br i1 %cmp73, label %if.then.75, label %if.else.100

if.then.75:                                       ; preds = %if.end.71
  br label %do.body

do.body:                                          ; preds = %if.then.75
  %71 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %72 = load i8, i8* %71, align 1, !tbaa !24
  %conv76 = zext i8 %72 to i32
  store i32 %conv76, i32* %tmp_mask, align 4, !tbaa !22
  %cmp77 = icmp uge i32 %conv76, 128
  br i1 %cmp77, label %if.then.79, label %if.else.81

if.then.79:                                       ; preds = %do.body
  %73 = bitcast i32* %tmp_w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %73) #2
  %74 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %call80 = call i8* @enc_u_get_uint(i32* %tmp_w, i8* %74) #6
  store i8* %call80, i8** %pdata.addr, align 8, !tbaa !1
  %75 = load i32, i32* %tmp_w, align 4, !tbaa !22
  store i32 %75, i32* %tmp_mask, align 4, !tbaa !22
  %76 = bitcast i32* %tmp_w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #2
  br label %if.end.83

if.else.81:                                       ; preds = %do.body
  %77 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %incdec.ptr82 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %incdec.ptr82, i8** %pdata.addr, align 8, !tbaa !1
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.81, %if.then.79
  br label %do.cond

do.cond:                                          ; preds = %if.end.83
  br label %do.end

do.end:                                           ; preds = %do.cond
  %78 = load i32, i32* %tmp_mask, align 4, !tbaa !22
  %conv84 = zext i32 %78 to i64
  store i64 %conv84, i64* %plane_mask, align 8, !tbaa !86
  br label %do.body.85

do.body.85:                                       ; preds = %do.end
  %79 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %80 = load i8, i8* %79, align 1, !tbaa !24
  %conv86 = zext i8 %80 to i32
  store i32 %conv86, i32* %tmp_mask, align 4, !tbaa !22
  %cmp87 = icmp uge i32 %conv86, 128
  br i1 %cmp87, label %if.then.89, label %if.else.92

if.then.89:                                       ; preds = %do.body.85
  %81 = bitcast i32* %tmp_w90 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %81) #2
  %82 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %call91 = call i8* @enc_u_get_uint(i32* %tmp_w90, i8* %82) #6
  store i8* %call91, i8** %pdata.addr, align 8, !tbaa !1
  %83 = load i32, i32* %tmp_w90, align 4, !tbaa !22
  store i32 %83, i32* %tmp_mask, align 4, !tbaa !22
  %84 = bitcast i32* %tmp_w90 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #2
  br label %if.end.94

if.else.92:                                       ; preds = %do.body.85
  %85 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %incdec.ptr93 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %incdec.ptr93, i8** %pdata.addr, align 8, !tbaa !1
  br label %if.end.94

if.end.94:                                        ; preds = %if.else.92, %if.then.89
  br label %do.cond.95

do.cond.95:                                       ; preds = %if.end.94
  br label %do.end.96

do.end.96:                                        ; preds = %do.cond.95
  %86 = load i32, i32* %tmp_mask, align 4, !tbaa !22
  %conv97 = zext i32 %86 to i64
  %shl98 = shl i64 %conv97, 31
  %shl99 = shl i64 %shl98, 1
  store i64 %shl99, i64* %plane_mask, align 8, !tbaa !86
  br label %if.end.114

if.else.100:                                      ; preds = %if.end.71
  br label %do.body.101

do.body.101:                                      ; preds = %if.else.100
  %87 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %88 = load i8, i8* %87, align 1, !tbaa !24
  %conv102 = zext i8 %88 to i32
  store i32 %conv102, i32* %tmp_mask, align 4, !tbaa !22
  %cmp103 = icmp uge i32 %conv102, 128
  br i1 %cmp103, label %if.then.105, label %if.else.108

if.then.105:                                      ; preds = %do.body.101
  %89 = bitcast i32* %tmp_w106 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %89) #2
  %90 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %call107 = call i8* @enc_u_get_uint(i32* %tmp_w106, i8* %90) #6
  store i8* %call107, i8** %pdata.addr, align 8, !tbaa !1
  %91 = load i32, i32* %tmp_w106, align 4, !tbaa !22
  store i32 %91, i32* %tmp_mask, align 4, !tbaa !22
  %92 = bitcast i32* %tmp_w106 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #2
  br label %if.end.110

if.else.108:                                      ; preds = %do.body.101
  %93 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %incdec.ptr109 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %incdec.ptr109, i8** %pdata.addr, align 8, !tbaa !1
  br label %if.end.110

if.end.110:                                       ; preds = %if.else.108, %if.then.105
  br label %do.cond.111

do.cond.111:                                      ; preds = %if.end.110
  br label %do.end.112

do.end.112:                                       ; preds = %do.cond.111
  %94 = load i32, i32* %tmp_mask, align 4, !tbaa !22
  %conv113 = zext i32 %94 to i64
  store i64 %conv113, i64* %plane_mask, align 8, !tbaa !86
  br label %if.end.114

if.end.114:                                       ; preds = %do.end.112, %do.end.96
  %95 = load i64, i64* %plane_mask, align 8, !tbaa !86
  %colors115 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 1
  %colored116 = bitcast %union._c* %colors115 to %struct._col*
  %plane_mask117 = getelementptr inbounds %struct._col, %struct._col* %colored116, i32 0, i32 5
  store i64 %95, i64* %plane_mask117, align 8, !tbaa !38
  store i32 0, i32* %i67, align 4, !tbaa !22
  br label %for.cond.118

for.cond.118:                                     ; preds = %for.inc.160, %if.end.114
  %96 = load i32, i32* %i67, align 4, !tbaa !22
  %97 = load i32, i32* %num_comps, align 4, !tbaa !22
  %cmp119 = icmp slt i32 %96, %97
  br i1 %cmp119, label %for.body.121, label %for.end.163

for.body.121:                                     ; preds = %for.cond.118
  %98 = load i64, i64* %plane_mask, align 8, !tbaa !86
  %and122 = and i64 %98, 1
  %cmp123 = icmp ne i64 %and122, 0
  br i1 %cmp123, label %if.then.125, label %if.else.153

if.then.125:                                      ; preds = %for.body.121
  %99 = load i32, i32* %size.addr, align 4, !tbaa !22
  %conv126 = zext i32 %99 to i64
  %100 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %101 = load i8*, i8** %pdata_start, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %100 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %101 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub127 = sub nsw i64 %conv126, %sub.ptr.sub
  %cmp128 = icmp slt i64 %sub127, 1
  br i1 %cmp128, label %if.then.130, label %if.end.131

if.then.130:                                      ; preds = %if.then.125
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.170

if.end.131:                                       ; preds = %if.then.125
  br label %do.body.132

do.body.132:                                      ; preds = %if.end.131
  %102 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %103 = load i8, i8* %102, align 1, !tbaa !24
  %conv133 = zext i8 %103 to i32
  %104 = load i32, i32* %i67, align 4, !tbaa !22
  %idxprom134 = sext i32 %104 to i64
  %colors135 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 1
  %colored136 = bitcast %union._c* %colors135 to %struct._col*
  %c_level = getelementptr inbounds %struct._col, %struct._col* %colored136, i32 0, i32 3
  %arrayidx137 = getelementptr inbounds [64 x i32], [64 x i32]* %c_level, i32 0, i64 %idxprom134
  store i32 %conv133, i32* %arrayidx137, align 4, !tbaa !22
  %cmp138 = icmp uge i32 %conv133, 128
  br i1 %cmp138, label %if.then.140, label %if.else.148

if.then.140:                                      ; preds = %do.body.132
  %105 = bitcast i32* %tmp_w141 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %105) #2
  %106 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %call142 = call i8* @enc_u_get_uint(i32* %tmp_w141, i8* %106) #6
  store i8* %call142, i8** %pdata.addr, align 8, !tbaa !1
  %107 = load i32, i32* %tmp_w141, align 4, !tbaa !22
  %108 = load i32, i32* %i67, align 4, !tbaa !22
  %idxprom143 = sext i32 %108 to i64
  %colors144 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 1
  %colored145 = bitcast %union._c* %colors144 to %struct._col*
  %c_level146 = getelementptr inbounds %struct._col, %struct._col* %colored145, i32 0, i32 3
  %arrayidx147 = getelementptr inbounds [64 x i32], [64 x i32]* %c_level146, i32 0, i64 %idxprom143
  store i32 %107, i32* %arrayidx147, align 4, !tbaa !22
  %109 = bitcast i32* %tmp_w141 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #2
  br label %if.end.150

if.else.148:                                      ; preds = %do.body.132
  %110 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %incdec.ptr149 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %incdec.ptr149, i8** %pdata.addr, align 8, !tbaa !1
  br label %if.end.150

if.end.150:                                       ; preds = %if.else.148, %if.then.140
  br label %do.cond.151

do.cond.151:                                      ; preds = %if.end.150
  br label %do.end.152

do.end.152:                                       ; preds = %do.cond.151
  br label %if.end.159

if.else.153:                                      ; preds = %for.body.121
  %111 = load i32, i32* %i67, align 4, !tbaa !22
  %idxprom154 = sext i32 %111 to i64
  %colors155 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 1
  %colored156 = bitcast %union._c* %colors155 to %struct._col*
  %c_level157 = getelementptr inbounds %struct._col, %struct._col* %colored156, i32 0, i32 3
  %arrayidx158 = getelementptr inbounds [64 x i32], [64 x i32]* %c_level157, i32 0, i64 %idxprom154
  store i32 0, i32* %arrayidx158, align 4, !tbaa !22
  br label %if.end.159

if.end.159:                                       ; preds = %if.else.153, %do.end.152
  br label %for.inc.160

for.inc.160:                                      ; preds = %if.end.159
  %112 = load i32, i32* %i67, align 4, !tbaa !22
  %inc161 = add nsw i32 %112, 1
  store i32 %inc161, i32* %i67, align 4, !tbaa !22
  %113 = load i64, i64* %plane_mask, align 8, !tbaa !86
  %shr162 = lshr i64 %113, 1
  store i64 %shr162, i64* %plane_mask, align 8, !tbaa !86
  br label %for.cond.118

for.end.163:                                      ; preds = %for.cond.118
  %114 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %115 = load i8*, i8** %pdata_start, align 8, !tbaa !1
  %sub.ptr.lhs.cast164 = ptrtoint i8* %114 to i64
  %sub.ptr.rhs.cast165 = ptrtoint i8* %115 to i64
  %sub.ptr.sub166 = sub i64 %sub.ptr.lhs.cast164, %sub.ptr.rhs.cast165
  %116 = load i32, i32* %size.addr, align 4, !tbaa !22
  %conv167 = zext i32 %116 to i64
  %sub168 = sub nsw i64 %conv167, %sub.ptr.sub166
  %conv169 = trunc i64 %sub168 to i32
  store i32 %conv169, i32* %size.addr, align 4, !tbaa !22
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.170

cleanup.170:                                      ; preds = %for.end.163, %if.then.130, %if.then.70
  %117 = bitcast i32* %i67 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #2
  %118 = bitcast i32* %tmp_mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #2
  %119 = bitcast i64* %plane_mask to i8*
  call void @llvm.lifetime.end(i64 8, i8* %119) #2
  %120 = bitcast i8** %pdata_start to i8*
  call void @llvm.lifetime.end(i64 8, i8* %120) #2
  %cleanup.dest.174 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.174, label %cleanup.240 [
    i32 0, label %cleanup.cont.175
  ]

cleanup.cont.175:                                 ; preds = %cleanup.170
  br label %if.end.176

if.end.176:                                       ; preds = %cleanup.cont.175, %if.end.62
  %121 = load i32, i32* %flag_bits, align 4, !tbaa !22
  %and177 = and i32 %121, 8
  %cmp178 = icmp ne i32 %and177, 0
  br i1 %cmp178, label %if.then.180, label %if.else.183

if.then.180:                                      ; preds = %if.end.176
  %colors181 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 1
  %colored182 = bitcast %union._c* %colors181 to %struct._col*
  %alpha = getelementptr inbounds %struct._col, %struct._col* %colored182, i32 0, i32 4
  store i16 -1, i16* %alpha, align 2, !tbaa !16
  br label %if.end.223

if.else.183:                                      ; preds = %if.end.176
  %122 = load i32, i32* %flag_bits, align 4, !tbaa !22
  %and184 = and i32 %122, 4
  %cmp185 = icmp ne i32 %and184, 0
  br i1 %cmp185, label %if.then.187, label %if.end.222

if.then.187:                                      ; preds = %if.else.183
  %123 = bitcast i8** %pdata_start188 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %123) #2
  %124 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  store i8* %124, i8** %pdata_start188, align 8, !tbaa !1
  %125 = load i32, i32* %size.addr, align 4, !tbaa !22
  %cmp189 = icmp ult i32 %125, 1
  br i1 %cmp189, label %if.then.191, label %if.end.192

if.then.191:                                      ; preds = %if.then.187
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.219

if.end.192:                                       ; preds = %if.then.187
  br label %do.body.193

do.body.193:                                      ; preds = %if.end.192
  %126 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %127 = load i8, i8* %126, align 1, !tbaa !24
  %conv194 = zext i8 %127 to i16
  %colors195 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 1
  %colored196 = bitcast %union._c* %colors195 to %struct._col*
  %alpha197 = getelementptr inbounds %struct._col, %struct._col* %colored196, i32 0, i32 4
  store i16 %conv194, i16* %alpha197, align 2, !tbaa !16
  %conv198 = zext i16 %conv194 to i32
  %cmp199 = icmp uge i32 %conv198, 128
  br i1 %cmp199, label %if.then.201, label %if.else.208

if.then.201:                                      ; preds = %do.body.193
  %128 = bitcast i32* %tmp_w202 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %128) #2
  %129 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %call203 = call i8* @enc_u_get_uint(i32* %tmp_w202, i8* %129) #6
  store i8* %call203, i8** %pdata.addr, align 8, !tbaa !1
  %130 = load i32, i32* %tmp_w202, align 4, !tbaa !22
  %conv204 = trunc i32 %130 to i16
  %colors205 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 1
  %colored206 = bitcast %union._c* %colors205 to %struct._col*
  %alpha207 = getelementptr inbounds %struct._col, %struct._col* %colored206, i32 0, i32 4
  store i16 %conv204, i16* %alpha207, align 2, !tbaa !16
  %131 = bitcast i32* %tmp_w202 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %131) #2
  br label %if.end.210

if.else.208:                                      ; preds = %do.body.193
  %132 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %incdec.ptr209 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %incdec.ptr209, i8** %pdata.addr, align 8, !tbaa !1
  br label %if.end.210

if.end.210:                                       ; preds = %if.else.208, %if.then.201
  br label %do.cond.211

do.cond.211:                                      ; preds = %if.end.210
  br label %do.end.212

do.end.212:                                       ; preds = %do.cond.211
  %133 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %134 = load i8*, i8** %pdata_start188, align 8, !tbaa !1
  %sub.ptr.lhs.cast213 = ptrtoint i8* %133 to i64
  %sub.ptr.rhs.cast214 = ptrtoint i8* %134 to i64
  %sub.ptr.sub215 = sub i64 %sub.ptr.lhs.cast213, %sub.ptr.rhs.cast214
  %135 = load i32, i32* %size.addr, align 4, !tbaa !22
  %conv216 = zext i32 %135 to i64
  %sub217 = sub nsw i64 %conv216, %sub.ptr.sub215
  %conv218 = trunc i64 %sub217 to i32
  store i32 %conv218, i32* %size.addr, align 4, !tbaa !22
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.219

cleanup.219:                                      ; preds = %do.end.212, %if.then.191
  %136 = bitcast i8** %pdata_start188 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %136) #2
  %cleanup.dest.220 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.220, label %cleanup.240 [
    i32 0, label %cleanup.cont.221
  ]

cleanup.cont.221:                                 ; preds = %cleanup.219
  br label %if.end.222

if.end.222:                                       ; preds = %cleanup.cont.221, %if.else.183
  br label %if.end.223

if.end.223:                                       ; preds = %if.end.222, %if.then.180
  %137 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %screen_phase = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %137, i32 0, i32 40
  %arrayidx224 = getelementptr inbounds [2 x %struct.gs_int_point_s], [2 x %struct.gs_int_point_s]* %screen_phase, i32 0, i64 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %arrayidx224, i32 0, i32 0
  %138 = load i32, i32* %x, align 4, !tbaa !100
  %sub225 = sub nsw i32 0, %138
  %139 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %dev_ht226 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %139, i32 0, i32 41
  %140 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht226, align 8, !tbaa !89
  %lcm_width = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %140, i32 0, i32 7
  %141 = load i32, i32* %lcm_width, align 4, !tbaa !39
  %call227 = call i32 @imod(i32 %sub225, i32 %141) #6
  %phase = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 2
  %x228 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 0
  store i32 %call227, i32* %x228, align 4, !tbaa !73
  %142 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %screen_phase229 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %142, i32 0, i32 40
  %arrayidx230 = getelementptr inbounds [2 x %struct.gs_int_point_s], [2 x %struct.gs_int_point_s]* %screen_phase229, i32 0, i64 0
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %arrayidx230, i32 0, i32 1
  %143 = load i32, i32* %y, align 4, !tbaa !101
  %sub231 = sub nsw i32 0, %143
  %144 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %dev_ht232 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %144, i32 0, i32 41
  %145 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht232, align 8, !tbaa !89
  %lcm_height = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %145, i32 0, i32 8
  %146 = load i32, i32* %lcm_height, align 4, !tbaa !46
  %call233 = call i32 @imod(i32 %sub231, i32 %146) #6
  %phase234 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 2
  %y235 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase234, i32 0, i32 1
  store i32 %call233, i32* %y235, align 4, !tbaa !74
  %147 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %148 = bitcast %struct.gx_device_color_s* %147 to i8*
  %149 = bitcast %struct.gx_device_color_s* %devc to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %148, i8* %149, i64 656, i32 8, i1 false), !tbaa.struct !88
  %150 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %151 = load i8*, i8** %pdata0, align 8, !tbaa !1
  %sub.ptr.lhs.cast236 = ptrtoint i8* %150 to i64
  %sub.ptr.rhs.cast237 = ptrtoint i8* %151 to i64
  %sub.ptr.sub238 = sub i64 %sub.ptr.lhs.cast236, %sub.ptr.rhs.cast237
  %conv239 = trunc i64 %sub.ptr.sub238 to i32
  store i32 %conv239, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.240

cleanup.240:                                      ; preds = %if.end.223, %cleanup.219, %cleanup.170, %if.then.53, %cleanup, %if.then.17, %if.then
  %152 = bitcast i32* %flag_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %152) #2
  %153 = bitcast i8** %pdata0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %153) #2
  %154 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %154) #2
  %155 = bitcast i32* %num_comps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %155) #2
  %156 = bitcast %struct.gx_device_color_s* %devc to i8*
  call void @llvm.lifetime.end(i64 656, i8* %156) #2
  %157 = load i32, i32* %retval
  ret i32 %157
}

; Function Attrs: nounwind uwtable
define i32 @gx_dc_ht_colored_get_nonzero_comps(%struct.gx_device_color_s* %pdevc, %struct.gx_device_s* %dev_ignored, i64* %pcomp_bits) #0 {
entry:
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %dev_ignored.addr = alloca %struct.gx_device_s*, align 8
  %pcomp_bits.addr = alloca i64*, align 8
  %i = alloca i32, align 4
  %ncomps = alloca i32, align 4
  %comp_bits = alloca i64, align 8
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev_ignored, %struct.gx_device_s** %dev_ignored.addr, align 8, !tbaa !1
  store i64* %pcomp_bits, i64** %pcomp_bits.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %2, i32 0, i32 1
  %colored = bitcast %union._c* %colors to %struct._col*
  %num_components = getelementptr inbounds %struct._col, %struct._col* %colored, i32 0, i32 1
  %3 = load i16, i16* %num_components, align 2, !tbaa !85
  %conv = zext i16 %3 to i32
  store i32 %conv, i32* %ncomps, align 4, !tbaa !22
  %4 = bitcast i64* %comp_bits to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors1 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %5, i32 0, i32 1
  %colored2 = bitcast %union._c* %colors1 to %struct._col*
  %plane_mask = getelementptr inbounds %struct._col, %struct._col* %colored2, i32 0, i32 5
  %6 = load i64, i64* %plane_mask, align 8, !tbaa !38
  store i64 %6, i64* %comp_bits, align 8, !tbaa !86
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4, !tbaa !22
  %8 = load i32, i32* %ncomps, align 4, !tbaa !22
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors4 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %10, i32 0, i32 1
  %colored5 = bitcast %union._c* %colors4 to %struct._col*
  %c_base = getelementptr inbounds %struct._col, %struct._col* %colored5, i32 0, i32 2
  %arrayidx = getelementptr inbounds [64 x i8], [64 x i8]* %c_base, i32 0, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1, !tbaa !24
  %conv6 = zext i8 %11 to i32
  %cmp7 = icmp ne i32 %conv6, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !tbaa !22
  %sh_prom = zext i32 %12 to i64
  %shl = shl i64 1, %sh_prom
  %13 = load i64, i64* %comp_bits, align 8, !tbaa !86
  %or = or i64 %13, %shl
  store i64 %or, i64* %comp_bits, align 8, !tbaa !86
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %i, align 4, !tbaa !22
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i64, i64* %comp_bits, align 8, !tbaa !86
  %16 = load i64*, i64** %pcomp_bits.addr, align 8, !tbaa !1
  store i64 %15, i64* %16, align 8, !tbaa !86
  %17 = bitcast i64* %comp_bits to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #2
  %18 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #2
  %19 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #2
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

declare i32 @enc_u_size_uint(i32) #1

declare i8* @enc_u_put_uint(i32, i8*) #1

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

declare i8* @enc_u_get_uint(i32*, i8*) #1

declare i32 @imod(i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @set_cmyk_1bit_colors(%struct.color_values_pair_s* %ignore_pvp, i64* %colors, %struct.gx_const_strip_bitmap_s** %sbits, %struct.gx_device_color_s* %pdc, %struct.gx_device_s* %dev, %struct.gx_ht_cache_s** %caches, i32 %nplanes) #0 {
entry:
  %ignore_pvp.addr = alloca %struct.color_values_pair_s*, align 8
  %colors.addr = alloca i64*, align 8
  %sbits.addr = alloca %struct.gx_const_strip_bitmap_s**, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %caches.addr = alloca %struct.gx_ht_cache_s**, align 8
  %nplanes.addr = alloca i32, align 4
  %pdht = alloca %struct.gx_device_halftone_s*, align 8
  %mask0 = alloca i32, align 4
  %mask1 = alloca i32, align 4
  %r = alloca i32, align 4
  %nlevels = alloca i32, align 4
  %r20 = alloca i32, align 4
  %nlevels38 = alloca i32, align 4
  %r63 = alloca i32, align 4
  %nlevels81 = alloca i32, align 4
  %r106 = alloca i32, align 4
  %nlevels124 = alloca i32, align 4
  %ctemp = alloca %struct.gx_ht_cache_s*, align 8
  store %struct.color_values_pair_s* %ignore_pvp, %struct.color_values_pair_s** %ignore_pvp.addr, align 8, !tbaa !1
  store i64* %colors, i64** %colors.addr, align 8, !tbaa !1
  store %struct.gx_const_strip_bitmap_s** %sbits, %struct.gx_const_strip_bitmap_s*** %sbits.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_ht_cache_s** %caches, %struct.gx_ht_cache_s*** %caches.addr, align 8, !tbaa !1
  store i32 %nplanes, i32* %nplanes.addr, align 4, !tbaa !22
  %0 = bitcast %struct.gx_device_halftone_s** %pdht to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %colors1 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i32 0, i32 1
  %colored = bitcast %union._c* %colors1 to %struct._col*
  %c_ht = getelementptr inbounds %struct._col, %struct._col* %colored, i32 0, i32 0
  %2 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %c_ht, align 8, !tbaa !23
  store %struct.gx_device_halftone_s* %2, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %3 = bitcast i32* %mask0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 0, i32* %mask0, align 4, !tbaa !22
  %4 = bitcast i32* %mask1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  store i32 0, i32* %mask1, align 4, !tbaa !22
  br label %do.body

do.body:                                          ; preds = %entry
  %5 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %colors2 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %6, i32 0, i32 1
  %colored3 = bitcast %union._c* %colors2 to %struct._col*
  %c_level = getelementptr inbounds %struct._col, %struct._col* %colored3, i32 0, i32 3
  %arrayidx = getelementptr inbounds [64 x i32], [64 x i32]* %c_level, i32 0, i64 0
  %7 = load i32, i32* %arrayidx, align 4, !tbaa !22
  store i32 %7, i32* %r, align 4, !tbaa !22
  %8 = load i32, i32* %r, align 4, !tbaa !22
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %9 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %colors4 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %9, i32 0, i32 1
  %colored5 = bitcast %union._c* %colors4 to %struct._col*
  %c_base = getelementptr inbounds %struct._col, %struct._col* %colored5, i32 0, i32 2
  %arrayidx6 = getelementptr inbounds [64 x i8], [64 x i8]* %c_base, i32 0, i64 0
  %10 = load i8, i8* %arrayidx6, align 1, !tbaa !24
  %tobool = icmp ne i8 %10, 0
  br i1 %tobool, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %11 = load i32, i32* %mask0, align 4, !tbaa !22
  %or = or i32 %11, -2004318072
  store i32 %or, i32* %mask0, align 4, !tbaa !22
  %12 = load i32, i32* %mask1, align 4, !tbaa !22
  %or8 = or i32 %12, -2004318072
  store i32 %or8, i32* %mask1, align 4, !tbaa !22
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  %13 = load %struct.gx_const_strip_bitmap_s**, %struct.gx_const_strip_bitmap_s*** %sbits.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds %struct.gx_const_strip_bitmap_s*, %struct.gx_const_strip_bitmap_s** %13, i64 3
  store %struct.gx_const_strip_bitmap_s* @ht_no_bitmap, %struct.gx_const_strip_bitmap_s** %arrayidx9, align 8, !tbaa !1
  br label %if.end.18

if.else:                                          ; preds = %do.body
  %14 = bitcast i32* %nlevels to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %components = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %15, i32 0, i32 4
  %16 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components, align 8, !tbaa !54
  %tobool10 = icmp ne %struct.gx_ht_order_component_s* %16, null
  br i1 %tobool10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %17 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %components11 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %17, i32 0, i32 4
  %18 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components11, align 8, !tbaa !54
  %arrayidx12 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %18, i64 0
  %corder = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx12, i32 0, i32 0
  %num_levels = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %corder, i32 0, i32 8
  %19 = load i32, i32* %num_levels, align 4, !tbaa !102
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %20 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %order = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %20, i32 0, i32 0
  %num_levels13 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %order, i32 0, i32 8
  %21 = load i32, i32* %num_levels13, align 4, !tbaa !103
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ %21, %cond.false ]
  store i32 %cond, i32* %nlevels, align 4, !tbaa !22
  %22 = load i32, i32* %mask0, align 4, !tbaa !22
  %or14 = or i32 %22, -2004318072
  store i32 %or14, i32* %mask0, align 4, !tbaa !22
  %23 = load %struct.gx_ht_cache_s**, %struct.gx_ht_cache_s*** %caches.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %23, i64 0
  %24 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %arrayidx15, align 8, !tbaa !1
  %render_ht = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %24, i32 0, i32 9
  %25 = load %struct.gx_ht_tile_s* (%struct.gx_ht_cache_s*, i32)*, %struct.gx_ht_tile_s* (%struct.gx_ht_cache_s*, i32)** %render_ht, align 8, !tbaa !104
  %26 = load %struct.gx_ht_cache_s**, %struct.gx_ht_cache_s*** %caches.addr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %26, i64 0
  %27 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %arrayidx16, align 8, !tbaa !1
  %28 = load i32, i32* %nlevels, align 4, !tbaa !22
  %29 = load i32, i32* %r, align 4, !tbaa !22
  %sub = sub i32 %28, %29
  %call = call %struct.gx_ht_tile_s* %25(%struct.gx_ht_cache_s* %27, i32 %sub) #6
  %tiles = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %call, i32 0, i32 0
  %30 = bitcast %struct.gx_strip_bitmap_s* %tiles to %struct.gx_const_strip_bitmap_s*
  %31 = load %struct.gx_const_strip_bitmap_s**, %struct.gx_const_strip_bitmap_s*** %sbits.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds %struct.gx_const_strip_bitmap_s*, %struct.gx_const_strip_bitmap_s** %31, i64 3
  store %struct.gx_const_strip_bitmap_s* %30, %struct.gx_const_strip_bitmap_s** %arrayidx17, align 8, !tbaa !1
  %32 = bitcast i32* %nlevels to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #2
  br label %if.end.18

if.end.18:                                        ; preds = %cond.end, %if.end
  %33 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #2
  br label %do.cond

do.cond:                                          ; preds = %if.end.18
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.19

do.body.19:                                       ; preds = %do.end
  %34 = bitcast i32* %r20 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #2
  %35 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %colors21 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %35, i32 0, i32 1
  %colored22 = bitcast %union._c* %colors21 to %struct._col*
  %c_level23 = getelementptr inbounds %struct._col, %struct._col* %colored22, i32 0, i32 3
  %arrayidx24 = getelementptr inbounds [64 x i32], [64 x i32]* %c_level23, i32 0, i64 1
  %36 = load i32, i32* %arrayidx24, align 4, !tbaa !22
  store i32 %36, i32* %r20, align 4, !tbaa !22
  %37 = load i32, i32* %r20, align 4, !tbaa !22
  %cmp25 = icmp eq i32 %37, 0
  br i1 %cmp25, label %if.then.26, label %if.else.37

if.then.26:                                       ; preds = %do.body.19
  %38 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %colors27 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %38, i32 0, i32 1
  %colored28 = bitcast %union._c* %colors27 to %struct._col*
  %c_base29 = getelementptr inbounds %struct._col, %struct._col* %colored28, i32 0, i32 2
  %arrayidx30 = getelementptr inbounds [64 x i8], [64 x i8]* %c_base29, i32 0, i64 1
  %39 = load i8, i8* %arrayidx30, align 1, !tbaa !24
  %tobool31 = icmp ne i8 %39, 0
  br i1 %tobool31, label %if.then.32, label %if.end.35

if.then.32:                                       ; preds = %if.then.26
  %40 = load i32, i32* %mask0, align 4, !tbaa !22
  %or33 = or i32 %40, 1145324612
  store i32 %or33, i32* %mask0, align 4, !tbaa !22
  %41 = load i32, i32* %mask1, align 4, !tbaa !22
  %or34 = or i32 %41, 1145324612
  store i32 %or34, i32* %mask1, align 4, !tbaa !22
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.32, %if.then.26
  %42 = load %struct.gx_const_strip_bitmap_s**, %struct.gx_const_strip_bitmap_s*** %sbits.addr, align 8, !tbaa !1
  %arrayidx36 = getelementptr inbounds %struct.gx_const_strip_bitmap_s*, %struct.gx_const_strip_bitmap_s** %42, i64 2
  store %struct.gx_const_strip_bitmap_s* @ht_no_bitmap, %struct.gx_const_strip_bitmap_s** %arrayidx36, align 8, !tbaa !1
  br label %if.end.59

if.else.37:                                       ; preds = %do.body.19
  %43 = bitcast i32* %nlevels38 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #2
  %44 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %components39 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %44, i32 0, i32 4
  %45 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components39, align 8, !tbaa !54
  %tobool40 = icmp ne %struct.gx_ht_order_component_s* %45, null
  br i1 %tobool40, label %cond.true.41, label %cond.false.46

cond.true.41:                                     ; preds = %if.else.37
  %46 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %components42 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %46, i32 0, i32 4
  %47 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components42, align 8, !tbaa !54
  %arrayidx43 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %47, i64 1
  %corder44 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx43, i32 0, i32 0
  %num_levels45 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %corder44, i32 0, i32 8
  %48 = load i32, i32* %num_levels45, align 4, !tbaa !102
  br label %cond.end.49

cond.false.46:                                    ; preds = %if.else.37
  %49 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %order47 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %49, i32 0, i32 0
  %num_levels48 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %order47, i32 0, i32 8
  %50 = load i32, i32* %num_levels48, align 4, !tbaa !103
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.false.46, %cond.true.41
  %cond50 = phi i32 [ %48, %cond.true.41 ], [ %50, %cond.false.46 ]
  store i32 %cond50, i32* %nlevels38, align 4, !tbaa !22
  %51 = load i32, i32* %mask0, align 4, !tbaa !22
  %or51 = or i32 %51, 1145324612
  store i32 %or51, i32* %mask0, align 4, !tbaa !22
  %52 = load %struct.gx_ht_cache_s**, %struct.gx_ht_cache_s*** %caches.addr, align 8, !tbaa !1
  %arrayidx52 = getelementptr inbounds %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %52, i64 1
  %53 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %arrayidx52, align 8, !tbaa !1
  %render_ht53 = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %53, i32 0, i32 9
  %54 = load %struct.gx_ht_tile_s* (%struct.gx_ht_cache_s*, i32)*, %struct.gx_ht_tile_s* (%struct.gx_ht_cache_s*, i32)** %render_ht53, align 8, !tbaa !104
  %55 = load %struct.gx_ht_cache_s**, %struct.gx_ht_cache_s*** %caches.addr, align 8, !tbaa !1
  %arrayidx54 = getelementptr inbounds %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %55, i64 1
  %56 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %arrayidx54, align 8, !tbaa !1
  %57 = load i32, i32* %nlevels38, align 4, !tbaa !22
  %58 = load i32, i32* %r20, align 4, !tbaa !22
  %sub55 = sub i32 %57, %58
  %call56 = call %struct.gx_ht_tile_s* %54(%struct.gx_ht_cache_s* %56, i32 %sub55) #6
  %tiles57 = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %call56, i32 0, i32 0
  %59 = bitcast %struct.gx_strip_bitmap_s* %tiles57 to %struct.gx_const_strip_bitmap_s*
  %60 = load %struct.gx_const_strip_bitmap_s**, %struct.gx_const_strip_bitmap_s*** %sbits.addr, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds %struct.gx_const_strip_bitmap_s*, %struct.gx_const_strip_bitmap_s** %60, i64 2
  store %struct.gx_const_strip_bitmap_s* %59, %struct.gx_const_strip_bitmap_s** %arrayidx58, align 8, !tbaa !1
  %61 = bitcast i32* %nlevels38 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #2
  br label %if.end.59

if.end.59:                                        ; preds = %cond.end.49, %if.end.35
  %62 = bitcast i32* %r20 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #2
  br label %do.cond.60

do.cond.60:                                       ; preds = %if.end.59
  br label %do.end.61

do.end.61:                                        ; preds = %do.cond.60
  br label %do.body.62

do.body.62:                                       ; preds = %do.end.61
  %63 = bitcast i32* %r63 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %63) #2
  %64 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %colors64 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %64, i32 0, i32 1
  %colored65 = bitcast %union._c* %colors64 to %struct._col*
  %c_level66 = getelementptr inbounds %struct._col, %struct._col* %colored65, i32 0, i32 3
  %arrayidx67 = getelementptr inbounds [64 x i32], [64 x i32]* %c_level66, i32 0, i64 2
  %65 = load i32, i32* %arrayidx67, align 4, !tbaa !22
  store i32 %65, i32* %r63, align 4, !tbaa !22
  %66 = load i32, i32* %r63, align 4, !tbaa !22
  %cmp68 = icmp eq i32 %66, 0
  br i1 %cmp68, label %if.then.69, label %if.else.80

if.then.69:                                       ; preds = %do.body.62
  %67 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %colors70 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %67, i32 0, i32 1
  %colored71 = bitcast %union._c* %colors70 to %struct._col*
  %c_base72 = getelementptr inbounds %struct._col, %struct._col* %colored71, i32 0, i32 2
  %arrayidx73 = getelementptr inbounds [64 x i8], [64 x i8]* %c_base72, i32 0, i64 2
  %68 = load i8, i8* %arrayidx73, align 1, !tbaa !24
  %tobool74 = icmp ne i8 %68, 0
  br i1 %tobool74, label %if.then.75, label %if.end.78

if.then.75:                                       ; preds = %if.then.69
  %69 = load i32, i32* %mask0, align 4, !tbaa !22
  %or76 = or i32 %69, 572662306
  store i32 %or76, i32* %mask0, align 4, !tbaa !22
  %70 = load i32, i32* %mask1, align 4, !tbaa !22
  %or77 = or i32 %70, 572662306
  store i32 %or77, i32* %mask1, align 4, !tbaa !22
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.75, %if.then.69
  %71 = load %struct.gx_const_strip_bitmap_s**, %struct.gx_const_strip_bitmap_s*** %sbits.addr, align 8, !tbaa !1
  %arrayidx79 = getelementptr inbounds %struct.gx_const_strip_bitmap_s*, %struct.gx_const_strip_bitmap_s** %71, i64 1
  store %struct.gx_const_strip_bitmap_s* @ht_no_bitmap, %struct.gx_const_strip_bitmap_s** %arrayidx79, align 8, !tbaa !1
  br label %if.end.102

if.else.80:                                       ; preds = %do.body.62
  %72 = bitcast i32* %nlevels81 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %72) #2
  %73 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %components82 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %73, i32 0, i32 4
  %74 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components82, align 8, !tbaa !54
  %tobool83 = icmp ne %struct.gx_ht_order_component_s* %74, null
  br i1 %tobool83, label %cond.true.84, label %cond.false.89

cond.true.84:                                     ; preds = %if.else.80
  %75 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %components85 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %75, i32 0, i32 4
  %76 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components85, align 8, !tbaa !54
  %arrayidx86 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %76, i64 2
  %corder87 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx86, i32 0, i32 0
  %num_levels88 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %corder87, i32 0, i32 8
  %77 = load i32, i32* %num_levels88, align 4, !tbaa !102
  br label %cond.end.92

cond.false.89:                                    ; preds = %if.else.80
  %78 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %order90 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %78, i32 0, i32 0
  %num_levels91 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %order90, i32 0, i32 8
  %79 = load i32, i32* %num_levels91, align 4, !tbaa !103
  br label %cond.end.92

cond.end.92:                                      ; preds = %cond.false.89, %cond.true.84
  %cond93 = phi i32 [ %77, %cond.true.84 ], [ %79, %cond.false.89 ]
  store i32 %cond93, i32* %nlevels81, align 4, !tbaa !22
  %80 = load i32, i32* %mask0, align 4, !tbaa !22
  %or94 = or i32 %80, 572662306
  store i32 %or94, i32* %mask0, align 4, !tbaa !22
  %81 = load %struct.gx_ht_cache_s**, %struct.gx_ht_cache_s*** %caches.addr, align 8, !tbaa !1
  %arrayidx95 = getelementptr inbounds %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %81, i64 2
  %82 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %arrayidx95, align 8, !tbaa !1
  %render_ht96 = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %82, i32 0, i32 9
  %83 = load %struct.gx_ht_tile_s* (%struct.gx_ht_cache_s*, i32)*, %struct.gx_ht_tile_s* (%struct.gx_ht_cache_s*, i32)** %render_ht96, align 8, !tbaa !104
  %84 = load %struct.gx_ht_cache_s**, %struct.gx_ht_cache_s*** %caches.addr, align 8, !tbaa !1
  %arrayidx97 = getelementptr inbounds %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %84, i64 2
  %85 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %arrayidx97, align 8, !tbaa !1
  %86 = load i32, i32* %nlevels81, align 4, !tbaa !22
  %87 = load i32, i32* %r63, align 4, !tbaa !22
  %sub98 = sub i32 %86, %87
  %call99 = call %struct.gx_ht_tile_s* %83(%struct.gx_ht_cache_s* %85, i32 %sub98) #6
  %tiles100 = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %call99, i32 0, i32 0
  %88 = bitcast %struct.gx_strip_bitmap_s* %tiles100 to %struct.gx_const_strip_bitmap_s*
  %89 = load %struct.gx_const_strip_bitmap_s**, %struct.gx_const_strip_bitmap_s*** %sbits.addr, align 8, !tbaa !1
  %arrayidx101 = getelementptr inbounds %struct.gx_const_strip_bitmap_s*, %struct.gx_const_strip_bitmap_s** %89, i64 1
  store %struct.gx_const_strip_bitmap_s* %88, %struct.gx_const_strip_bitmap_s** %arrayidx101, align 8, !tbaa !1
  %90 = bitcast i32* %nlevels81 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #2
  br label %if.end.102

if.end.102:                                       ; preds = %cond.end.92, %if.end.78
  %91 = bitcast i32* %r63 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #2
  br label %do.cond.103

do.cond.103:                                      ; preds = %if.end.102
  br label %do.end.104

do.end.104:                                       ; preds = %do.cond.103
  br label %do.body.105

do.body.105:                                      ; preds = %do.end.104
  %92 = bitcast i32* %r106 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %92) #2
  %93 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %colors107 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %93, i32 0, i32 1
  %colored108 = bitcast %union._c* %colors107 to %struct._col*
  %c_level109 = getelementptr inbounds %struct._col, %struct._col* %colored108, i32 0, i32 3
  %arrayidx110 = getelementptr inbounds [64 x i32], [64 x i32]* %c_level109, i32 0, i64 3
  %94 = load i32, i32* %arrayidx110, align 4, !tbaa !22
  store i32 %94, i32* %r106, align 4, !tbaa !22
  %95 = load i32, i32* %r106, align 4, !tbaa !22
  %cmp111 = icmp eq i32 %95, 0
  br i1 %cmp111, label %if.then.112, label %if.else.123

if.then.112:                                      ; preds = %do.body.105
  %96 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %colors113 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %96, i32 0, i32 1
  %colored114 = bitcast %union._c* %colors113 to %struct._col*
  %c_base115 = getelementptr inbounds %struct._col, %struct._col* %colored114, i32 0, i32 2
  %arrayidx116 = getelementptr inbounds [64 x i8], [64 x i8]* %c_base115, i32 0, i64 3
  %97 = load i8, i8* %arrayidx116, align 1, !tbaa !24
  %tobool117 = icmp ne i8 %97, 0
  br i1 %tobool117, label %if.then.118, label %if.end.121

if.then.118:                                      ; preds = %if.then.112
  %98 = load i32, i32* %mask0, align 4, !tbaa !22
  %or119 = or i32 %98, 286331153
  store i32 %or119, i32* %mask0, align 4, !tbaa !22
  %99 = load i32, i32* %mask1, align 4, !tbaa !22
  %or120 = or i32 %99, 286331153
  store i32 %or120, i32* %mask1, align 4, !tbaa !22
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.118, %if.then.112
  %100 = load %struct.gx_const_strip_bitmap_s**, %struct.gx_const_strip_bitmap_s*** %sbits.addr, align 8, !tbaa !1
  %arrayidx122 = getelementptr inbounds %struct.gx_const_strip_bitmap_s*, %struct.gx_const_strip_bitmap_s** %100, i64 0
  store %struct.gx_const_strip_bitmap_s* @ht_no_bitmap, %struct.gx_const_strip_bitmap_s** %arrayidx122, align 8, !tbaa !1
  br label %if.end.145

if.else.123:                                      ; preds = %do.body.105
  %101 = bitcast i32* %nlevels124 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %101) #2
  %102 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %components125 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %102, i32 0, i32 4
  %103 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components125, align 8, !tbaa !54
  %tobool126 = icmp ne %struct.gx_ht_order_component_s* %103, null
  br i1 %tobool126, label %cond.true.127, label %cond.false.132

cond.true.127:                                    ; preds = %if.else.123
  %104 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %components128 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %104, i32 0, i32 4
  %105 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components128, align 8, !tbaa !54
  %arrayidx129 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %105, i64 3
  %corder130 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx129, i32 0, i32 0
  %num_levels131 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %corder130, i32 0, i32 8
  %106 = load i32, i32* %num_levels131, align 4, !tbaa !102
  br label %cond.end.135

cond.false.132:                                   ; preds = %if.else.123
  %107 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %order133 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %107, i32 0, i32 0
  %num_levels134 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %order133, i32 0, i32 8
  %108 = load i32, i32* %num_levels134, align 4, !tbaa !103
  br label %cond.end.135

cond.end.135:                                     ; preds = %cond.false.132, %cond.true.127
  %cond136 = phi i32 [ %106, %cond.true.127 ], [ %108, %cond.false.132 ]
  store i32 %cond136, i32* %nlevels124, align 4, !tbaa !22
  %109 = load i32, i32* %mask0, align 4, !tbaa !22
  %or137 = or i32 %109, 286331153
  store i32 %or137, i32* %mask0, align 4, !tbaa !22
  %110 = load %struct.gx_ht_cache_s**, %struct.gx_ht_cache_s*** %caches.addr, align 8, !tbaa !1
  %arrayidx138 = getelementptr inbounds %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %110, i64 3
  %111 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %arrayidx138, align 8, !tbaa !1
  %render_ht139 = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %111, i32 0, i32 9
  %112 = load %struct.gx_ht_tile_s* (%struct.gx_ht_cache_s*, i32)*, %struct.gx_ht_tile_s* (%struct.gx_ht_cache_s*, i32)** %render_ht139, align 8, !tbaa !104
  %113 = load %struct.gx_ht_cache_s**, %struct.gx_ht_cache_s*** %caches.addr, align 8, !tbaa !1
  %arrayidx140 = getelementptr inbounds %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %113, i64 3
  %114 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %arrayidx140, align 8, !tbaa !1
  %115 = load i32, i32* %nlevels124, align 4, !tbaa !22
  %116 = load i32, i32* %r106, align 4, !tbaa !22
  %sub141 = sub i32 %115, %116
  %call142 = call %struct.gx_ht_tile_s* %112(%struct.gx_ht_cache_s* %114, i32 %sub141) #6
  %tiles143 = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %call142, i32 0, i32 0
  %117 = bitcast %struct.gx_strip_bitmap_s* %tiles143 to %struct.gx_const_strip_bitmap_s*
  %118 = load %struct.gx_const_strip_bitmap_s**, %struct.gx_const_strip_bitmap_s*** %sbits.addr, align 8, !tbaa !1
  %arrayidx144 = getelementptr inbounds %struct.gx_const_strip_bitmap_s*, %struct.gx_const_strip_bitmap_s** %118, i64 0
  store %struct.gx_const_strip_bitmap_s* %117, %struct.gx_const_strip_bitmap_s** %arrayidx144, align 8, !tbaa !1
  %119 = bitcast i32* %nlevels124 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #2
  br label %if.end.145

if.end.145:                                       ; preds = %cond.end.135, %if.end.121
  %120 = bitcast i32* %r106 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #2
  br label %do.cond.146

do.cond.146:                                      ; preds = %if.end.145
  br label %do.end.147

do.end.147:                                       ; preds = %do.cond.146
  %121 = bitcast %struct.gx_ht_cache_s** %ctemp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %121) #2
  %122 = load %struct.gx_ht_cache_s**, %struct.gx_ht_cache_s*** %caches.addr, align 8, !tbaa !1
  %arrayidx148 = getelementptr inbounds %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %122, i64 0
  %123 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %arrayidx148, align 8, !tbaa !1
  store %struct.gx_ht_cache_s* %123, %struct.gx_ht_cache_s** %ctemp, align 8, !tbaa !1
  %124 = load %struct.gx_ht_cache_s**, %struct.gx_ht_cache_s*** %caches.addr, align 8, !tbaa !1
  %arrayidx149 = getelementptr inbounds %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %124, i64 3
  %125 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %arrayidx149, align 8, !tbaa !1
  %126 = load %struct.gx_ht_cache_s**, %struct.gx_ht_cache_s*** %caches.addr, align 8, !tbaa !1
  %arrayidx150 = getelementptr inbounds %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %126, i64 0
  store %struct.gx_ht_cache_s* %125, %struct.gx_ht_cache_s** %arrayidx150, align 8, !tbaa !1
  %127 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %ctemp, align 8, !tbaa !1
  %128 = load %struct.gx_ht_cache_s**, %struct.gx_ht_cache_s*** %caches.addr, align 8, !tbaa !1
  %arrayidx151 = getelementptr inbounds %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %128, i64 3
  store %struct.gx_ht_cache_s* %127, %struct.gx_ht_cache_s** %arrayidx151, align 8, !tbaa !1
  %129 = load %struct.gx_ht_cache_s**, %struct.gx_ht_cache_s*** %caches.addr, align 8, !tbaa !1
  %arrayidx152 = getelementptr inbounds %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %129, i64 1
  %130 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %arrayidx152, align 8, !tbaa !1
  store %struct.gx_ht_cache_s* %130, %struct.gx_ht_cache_s** %ctemp, align 8, !tbaa !1
  %131 = load %struct.gx_ht_cache_s**, %struct.gx_ht_cache_s*** %caches.addr, align 8, !tbaa !1
  %arrayidx153 = getelementptr inbounds %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %131, i64 2
  %132 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %arrayidx153, align 8, !tbaa !1
  %133 = load %struct.gx_ht_cache_s**, %struct.gx_ht_cache_s*** %caches.addr, align 8, !tbaa !1
  %arrayidx154 = getelementptr inbounds %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %133, i64 1
  store %struct.gx_ht_cache_s* %132, %struct.gx_ht_cache_s** %arrayidx154, align 8, !tbaa !1
  %134 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %ctemp, align 8, !tbaa !1
  %135 = load %struct.gx_ht_cache_s**, %struct.gx_ht_cache_s*** %caches.addr, align 8, !tbaa !1
  %arrayidx155 = getelementptr inbounds %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %135, i64 2
  store %struct.gx_ht_cache_s* %134, %struct.gx_ht_cache_s** %arrayidx155, align 8, !tbaa !1
  %136 = bitcast %struct.gx_ht_cache_s** %ctemp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %136) #2
  %137 = load i32, i32* %mask0, align 4, !tbaa !22
  %conv = zext i32 %137 to i64
  %138 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx156 = getelementptr inbounds i64, i64* %138, i64 0
  store i64 %conv, i64* %arrayidx156, align 8, !tbaa !86
  %139 = load i32, i32* %mask1, align 4, !tbaa !22
  %conv157 = zext i32 %139 to i64
  %140 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx158 = getelementptr inbounds i64, i64* %140, i64 1
  store i64 %conv157, i64* %arrayidx158, align 8, !tbaa !86
  %141 = bitcast i32* %mask1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #2
  %142 = bitcast i32* %mask0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %142) #2
  %143 = bitcast %struct.gx_device_halftone_s** %pdht to i8*
  call void @llvm.lifetime.end(i64 8, i8* %143) #2
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @set_ht_colors_le_4(%struct.color_values_pair_s* %pvp, i64* %colors, %struct.gx_const_strip_bitmap_s** %sbits, %struct.gx_device_color_s* %pdc, %struct.gx_device_s* %dev, %struct.gx_ht_cache_s** %caches, i32 %nplanes) #0 {
entry:
  %pvp.addr = alloca %struct.color_values_pair_s*, align 8
  %colors.addr = alloca i64*, align 8
  %sbits.addr = alloca %struct.gx_const_strip_bitmap_s**, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %caches.addr = alloca %struct.gx_ht_cache_s**, align 8
  %nplanes.addr = alloca i32, align 4
  %max_color = alloca i16, align 2
  %cvalues = alloca [4 x i16], align 2
  %invert = alloca i32, align 4
  %q = alloca i32, align 4
  %r = alloca i32, align 4
  %pdht = alloca %struct.gx_device_halftone_s*, align 8
  %nlevels = alloca i32, align 4
  %q123 = alloca i32, align 4
  %r129 = alloca i32, align 4
  %pdht208 = alloca %struct.gx_device_halftone_s*, align 8
  %nlevels212 = alloca i32, align 4
  %q275 = alloca i32, align 4
  %r281 = alloca i32, align 4
  %pdht360 = alloca %struct.gx_device_halftone_s*, align 8
  %nlevels364 = alloca i32, align 4
  %alpha = alloca i16, align 2
  %q676 = alloca i32, align 4
  %r682 = alloca i32, align 4
  %pdht761 = alloca %struct.gx_device_halftone_s*, align 8
  %nlevels765 = alloca i32, align 4
  %pi = alloca i32, align 4
  store %struct.color_values_pair_s* %pvp, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  store i64* %colors, i64** %colors.addr, align 8, !tbaa !1
  store %struct.gx_const_strip_bitmap_s** %sbits, %struct.gx_const_strip_bitmap_s*** %sbits.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_ht_cache_s** %caches, %struct.gx_ht_cache_s*** %caches.addr, align 8, !tbaa !1
  store i32 %nplanes, i32* %nplanes.addr, align 4, !tbaa !22
  %0 = bitcast i16* %max_color to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 11
  %dither_colors = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 8
  %2 = load i32, i32* %dither_colors, align 4, !tbaa !106
  %sub = sub i32 %2, 1
  %conv = trunc i32 %sub to i16
  store i16 %conv, i16* %max_color, align 2, !tbaa !87
  %3 = bitcast [4 x i16]* %cvalues to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i32* %invert to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 11
  %polarity = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info1, i32 0, i32 2
  %6 = load i32, i32* %polarity, align 4, !tbaa !107
  %cmp = icmp eq i32 %6, 0
  %conv2 = zext i1 %cmp to i32
  store i32 %conv2, i32* %invert, align 4, !tbaa !22
  br label %do.body

do.body:                                          ; preds = %entry
  %7 = bitcast i32* %q to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %colors3 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %8, i32 0, i32 1
  %colored = bitcast %union._c* %colors3 to %struct._col*
  %c_base = getelementptr inbounds %struct._col, %struct._col* %colored, i32 0, i32 2
  %arrayidx = getelementptr inbounds [64 x i8], [64 x i8]* %c_base, i32 0, i64 0
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !24
  %conv4 = zext i8 %9 to i32
  store i32 %conv4, i32* %q, align 4, !tbaa !22
  %10 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %colors5 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %11, i32 0, i32 1
  %colored6 = bitcast %union._c* %colors5 to %struct._col*
  %c_level = getelementptr inbounds %struct._col, %struct._col* %colored6, i32 0, i32 3
  %arrayidx7 = getelementptr inbounds [64 x i32], [64 x i32]* %c_level, i32 0, i64 0
  %12 = load i32, i32* %arrayidx7, align 4, !tbaa !22
  store i32 %12, i32* %r, align 4, !tbaa !22
  %13 = load i16, i16* %max_color, align 2, !tbaa !87
  %conv8 = zext i16 %13 to i32
  %cmp9 = icmp sle i32 %conv8, 7
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body
  %14 = load i32, i32* %q, align 4, !tbaa !22
  %idxprom = zext i32 %14 to i64
  %15 = load i16, i16* %max_color, align 2, !tbaa !87
  %idxprom11 = zext i16 %15 to i64
  %arrayidx12 = getelementptr inbounds [8 x i16*], [8 x i16*]* @fc_color_quo, i32 0, i64 %idxprom11
  %16 = load i16*, i16** %arrayidx12, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i16, i16* %16, i64 %idxprom
  %17 = load i16, i16* %arrayidx13, align 2, !tbaa !87
  %conv14 = zext i16 %17 to i32
  br label %cond.end

cond.false:                                       ; preds = %do.body
  %18 = load i32, i32* %q, align 4, !tbaa !22
  %conv15 = zext i32 %18 to i64
  %mul = mul nsw i64 %conv15, 131070
  %19 = load i16, i16* %max_color, align 2, !tbaa !87
  %conv16 = zext i16 %19 to i64
  %add = add nsw i64 %mul, %conv16
  %20 = load i16, i16* %max_color, align 2, !tbaa !87
  %conv17 = zext i16 %20 to i32
  %mul18 = mul nsw i32 %conv17, 2
  %conv19 = sext i32 %mul18 to i64
  %div = sdiv i64 %add, %conv19
  %conv20 = trunc i64 %div to i16
  %conv21 = zext i16 %conv20 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv14, %cond.true ], [ %conv21, %cond.false ]
  %conv22 = trunc i32 %cond to i16
  %21 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %21, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values, i32 0, i64 0
  %arrayidx24 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx23, i32 0, i64 0
  store i16 %conv22, i16* %arrayidx24, align 2, !tbaa !87
  %22 = load i32, i32* %r, align 4, !tbaa !22
  %cmp25 = icmp eq i32 %22, 0
  br i1 %cmp25, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %23 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values27 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %23, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values27, i32 0, i64 0
  %arrayidx29 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx28, i32 0, i64 0
  %24 = load i16, i16* %arrayidx29, align 2, !tbaa !87
  %25 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values30 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %25, i32 0, i32 0
  %arrayidx31 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values30, i32 0, i64 1
  %arrayidx32 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx31, i32 0, i64 0
  store i16 %24, i16* %arrayidx32, align 2, !tbaa !87
  %26 = load %struct.gx_const_strip_bitmap_s**, %struct.gx_const_strip_bitmap_s*** %sbits.addr, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds %struct.gx_const_strip_bitmap_s*, %struct.gx_const_strip_bitmap_s** %26, i64 0
  store %struct.gx_const_strip_bitmap_s* @ht_no_bitmap, %struct.gx_const_strip_bitmap_s** %arrayidx33, align 8, !tbaa !1
  br label %if.end.118

if.else:                                          ; preds = %cond.end
  %27 = load i32, i32* %invert, align 4, !tbaa !22
  %tobool = icmp ne i32 %27, 0
  br i1 %tobool, label %if.else.66, label %if.then.34

if.then.34:                                       ; preds = %if.else
  %28 = load i16, i16* %max_color, align 2, !tbaa !87
  %conv35 = zext i16 %28 to i32
  %cmp36 = icmp sle i32 %conv35, 7
  br i1 %cmp36, label %cond.true.38, label %cond.false.45

cond.true.38:                                     ; preds = %if.then.34
  %29 = load i32, i32* %q, align 4, !tbaa !22
  %add39 = add i32 %29, 1
  %idxprom40 = zext i32 %add39 to i64
  %30 = load i16, i16* %max_color, align 2, !tbaa !87
  %idxprom41 = zext i16 %30 to i64
  %arrayidx42 = getelementptr inbounds [8 x i16*], [8 x i16*]* @fc_color_quo, i32 0, i64 %idxprom41
  %31 = load i16*, i16** %arrayidx42, align 8, !tbaa !1
  %arrayidx43 = getelementptr inbounds i16, i16* %31, i64 %idxprom40
  %32 = load i16, i16* %arrayidx43, align 2, !tbaa !87
  %conv44 = zext i16 %32 to i32
  br label %cond.end.57

cond.false.45:                                    ; preds = %if.then.34
  %33 = load i32, i32* %q, align 4, !tbaa !22
  %add46 = add i32 %33, 1
  %conv47 = zext i32 %add46 to i64
  %mul48 = mul nsw i64 %conv47, 131070
  %34 = load i16, i16* %max_color, align 2, !tbaa !87
  %conv49 = zext i16 %34 to i64
  %add50 = add nsw i64 %mul48, %conv49
  %35 = load i16, i16* %max_color, align 2, !tbaa !87
  %conv51 = zext i16 %35 to i32
  %mul52 = mul nsw i32 %conv51, 2
  %conv53 = sext i32 %mul52 to i64
  %div54 = sdiv i64 %add50, %conv53
  %conv55 = trunc i64 %div54 to i16
  %conv56 = zext i16 %conv55 to i32
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.45, %cond.true.38
  %cond58 = phi i32 [ %conv44, %cond.true.38 ], [ %conv56, %cond.false.45 ]
  %conv59 = trunc i32 %cond58 to i16
  %36 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values60 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %36, i32 0, i32 0
  %arrayidx61 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values60, i32 0, i64 1
  %arrayidx62 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx61, i32 0, i64 0
  store i16 %conv59, i16* %arrayidx62, align 2, !tbaa !87
  %37 = load %struct.gx_ht_cache_s**, %struct.gx_ht_cache_s*** %caches.addr, align 8, !tbaa !1
  %arrayidx63 = getelementptr inbounds %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %37, i64 0
  %38 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %arrayidx63, align 8, !tbaa !1
  %render_ht = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %38, i32 0, i32 9
  %39 = load %struct.gx_ht_tile_s* (%struct.gx_ht_cache_s*, i32)*, %struct.gx_ht_tile_s* (%struct.gx_ht_cache_s*, i32)** %render_ht, align 8, !tbaa !104
  %40 = load %struct.gx_ht_cache_s**, %struct.gx_ht_cache_s*** %caches.addr, align 8, !tbaa !1
  %arrayidx64 = getelementptr inbounds %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %40, i64 0
  %41 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %arrayidx64, align 8, !tbaa !1
  %42 = load i32, i32* %r, align 4, !tbaa !22
  %call = call %struct.gx_ht_tile_s* %39(%struct.gx_ht_cache_s* %41, i32 %42) #6
  %tiles = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %call, i32 0, i32 0
  %43 = bitcast %struct.gx_strip_bitmap_s* %tiles to %struct.gx_const_strip_bitmap_s*
  %44 = load %struct.gx_const_strip_bitmap_s**, %struct.gx_const_strip_bitmap_s*** %sbits.addr, align 8, !tbaa !1
  %arrayidx65 = getelementptr inbounds %struct.gx_const_strip_bitmap_s*, %struct.gx_const_strip_bitmap_s** %44, i64 0
  store %struct.gx_const_strip_bitmap_s* %43, %struct.gx_const_strip_bitmap_s** %arrayidx65, align 8, !tbaa !1
  br label %if.end

if.else.66:                                       ; preds = %if.else
  %45 = bitcast %struct.gx_device_halftone_s** %pdht to i8*
  call void @llvm.lifetime.start(i64 8, i8* %45) #2
  %46 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %colors67 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %46, i32 0, i32 1
  %colored68 = bitcast %union._c* %colors67 to %struct._col*
  %c_ht = getelementptr inbounds %struct._col, %struct._col* %colored68, i32 0, i32 0
  %47 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %c_ht, align 8, !tbaa !23
  store %struct.gx_device_halftone_s* %47, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %48 = bitcast i32* %nlevels to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #2
  %49 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %components = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %49, i32 0, i32 4
  %50 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components, align 8, !tbaa !54
  %tobool69 = icmp ne %struct.gx_ht_order_component_s* %50, null
  br i1 %tobool69, label %cond.true.70, label %cond.false.73

cond.true.70:                                     ; preds = %if.else.66
  %51 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %components71 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %51, i32 0, i32 4
  %52 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components71, align 8, !tbaa !54
  %arrayidx72 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %52, i64 0
  %corder = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx72, i32 0, i32 0
  %num_levels = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %corder, i32 0, i32 8
  %53 = load i32, i32* %num_levels, align 4, !tbaa !102
  br label %cond.end.75

cond.false.73:                                    ; preds = %if.else.66
  %54 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %order = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %54, i32 0, i32 0
  %num_levels74 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %order, i32 0, i32 8
  %55 = load i32, i32* %num_levels74, align 4, !tbaa !103
  br label %cond.end.75

cond.end.75:                                      ; preds = %cond.false.73, %cond.true.70
  %cond76 = phi i32 [ %53, %cond.true.70 ], [ %55, %cond.false.73 ]
  store i32 %cond76, i32* %nlevels, align 4, !tbaa !22
  %56 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values77 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %56, i32 0, i32 0
  %arrayidx78 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values77, i32 0, i64 0
  %arrayidx79 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx78, i32 0, i64 0
  %57 = load i16, i16* %arrayidx79, align 2, !tbaa !87
  %58 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values80 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %58, i32 0, i32 0
  %arrayidx81 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values80, i32 0, i64 1
  %arrayidx82 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx81, i32 0, i64 0
  store i16 %57, i16* %arrayidx82, align 2, !tbaa !87
  %59 = load i16, i16* %max_color, align 2, !tbaa !87
  %conv83 = zext i16 %59 to i32
  %cmp84 = icmp sle i32 %conv83, 7
  br i1 %cmp84, label %cond.true.86, label %cond.false.93

cond.true.86:                                     ; preds = %cond.end.75
  %60 = load i32, i32* %q, align 4, !tbaa !22
  %add87 = add i32 %60, 1
  %idxprom88 = zext i32 %add87 to i64
  %61 = load i16, i16* %max_color, align 2, !tbaa !87
  %idxprom89 = zext i16 %61 to i64
  %arrayidx90 = getelementptr inbounds [8 x i16*], [8 x i16*]* @fc_color_quo, i32 0, i64 %idxprom89
  %62 = load i16*, i16** %arrayidx90, align 8, !tbaa !1
  %arrayidx91 = getelementptr inbounds i16, i16* %62, i64 %idxprom88
  %63 = load i16, i16* %arrayidx91, align 2, !tbaa !87
  %conv92 = zext i16 %63 to i32
  br label %cond.end.105

cond.false.93:                                    ; preds = %cond.end.75
  %64 = load i32, i32* %q, align 4, !tbaa !22
  %add94 = add i32 %64, 1
  %conv95 = zext i32 %add94 to i64
  %mul96 = mul nsw i64 %conv95, 131070
  %65 = load i16, i16* %max_color, align 2, !tbaa !87
  %conv97 = zext i16 %65 to i64
  %add98 = add nsw i64 %mul96, %conv97
  %66 = load i16, i16* %max_color, align 2, !tbaa !87
  %conv99 = zext i16 %66 to i32
  %mul100 = mul nsw i32 %conv99, 2
  %conv101 = sext i32 %mul100 to i64
  %div102 = sdiv i64 %add98, %conv101
  %conv103 = trunc i64 %div102 to i16
  %conv104 = zext i16 %conv103 to i32
  br label %cond.end.105

cond.end.105:                                     ; preds = %cond.false.93, %cond.true.86
  %cond106 = phi i32 [ %conv92, %cond.true.86 ], [ %conv104, %cond.false.93 ]
  %conv107 = trunc i32 %cond106 to i16
  %67 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values108 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %67, i32 0, i32 0
  %arrayidx109 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values108, i32 0, i64 0
  %arrayidx110 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx109, i32 0, i64 0
  store i16 %conv107, i16* %arrayidx110, align 2, !tbaa !87
  %68 = load %struct.gx_ht_cache_s**, %struct.gx_ht_cache_s*** %caches.addr, align 8, !tbaa !1
  %arrayidx111 = getelementptr inbounds %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %68, i64 0
  %69 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %arrayidx111, align 8, !tbaa !1
  %render_ht112 = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %69, i32 0, i32 9
  %70 = load %struct.gx_ht_tile_s* (%struct.gx_ht_cache_s*, i32)*, %struct.gx_ht_tile_s* (%struct.gx_ht_cache_s*, i32)** %render_ht112, align 8, !tbaa !104
  %71 = load %struct.gx_ht_cache_s**, %struct.gx_ht_cache_s*** %caches.addr, align 8, !tbaa !1
  %arrayidx113 = getelementptr inbounds %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %71, i64 0
  %72 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %arrayidx113, align 8, !tbaa !1
  %73 = load i32, i32* %nlevels, align 4, !tbaa !22
  %74 = load i32, i32* %r, align 4, !tbaa !22
  %sub114 = sub i32 %73, %74
  %call115 = call %struct.gx_ht_tile_s* %70(%struct.gx_ht_cache_s* %72, i32 %sub114) #6
  %tiles116 = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %call115, i32 0, i32 0
  %75 = bitcast %struct.gx_strip_bitmap_s* %tiles116 to %struct.gx_const_strip_bitmap_s*
  %76 = load %struct.gx_const_strip_bitmap_s**, %struct.gx_const_strip_bitmap_s*** %sbits.addr, align 8, !tbaa !1
  %arrayidx117 = getelementptr inbounds %struct.gx_const_strip_bitmap_s*, %struct.gx_const_strip_bitmap_s** %76, i64 0
  store %struct.gx_const_strip_bitmap_s* %75, %struct.gx_const_strip_bitmap_s** %arrayidx117, align 8, !tbaa !1
  %77 = bitcast i32* %nlevels to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #2
  %78 = bitcast %struct.gx_device_halftone_s** %pdht to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #2
  br label %if.end

if.end:                                           ; preds = %cond.end.105, %cond.end.57
  br label %if.end.118

if.end.118:                                       ; preds = %if.end, %if.then
  %79 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #2
  %80 = bitcast i32* %q to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #2
  br label %do.cond

do.cond:                                          ; preds = %if.end.118
  br label %do.end

do.end:                                           ; preds = %do.cond
  %81 = load i32, i32* %nplanes.addr, align 4, !tbaa !22
  %cmp119 = icmp sge i32 %81, 2
  br i1 %cmp119, label %if.then.121, label %if.end.270

if.then.121:                                      ; preds = %do.end
  br label %do.body.122

do.body.122:                                      ; preds = %if.then.121
  %82 = bitcast i32* %q123 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %82) #2
  %83 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %colors124 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %83, i32 0, i32 1
  %colored125 = bitcast %union._c* %colors124 to %struct._col*
  %c_base126 = getelementptr inbounds %struct._col, %struct._col* %colored125, i32 0, i32 2
  %arrayidx127 = getelementptr inbounds [64 x i8], [64 x i8]* %c_base126, i32 0, i64 1
  %84 = load i8, i8* %arrayidx127, align 1, !tbaa !24
  %conv128 = zext i8 %84 to i32
  store i32 %conv128, i32* %q123, align 4, !tbaa !22
  %85 = bitcast i32* %r129 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %85) #2
  %86 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %colors130 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %86, i32 0, i32 1
  %colored131 = bitcast %union._c* %colors130 to %struct._col*
  %c_level132 = getelementptr inbounds %struct._col, %struct._col* %colored131, i32 0, i32 3
  %arrayidx133 = getelementptr inbounds [64 x i32], [64 x i32]* %c_level132, i32 0, i64 1
  %87 = load i32, i32* %arrayidx133, align 4, !tbaa !22
  store i32 %87, i32* %r129, align 4, !tbaa !22
  %88 = load i16, i16* %max_color, align 2, !tbaa !87
  %conv134 = zext i16 %88 to i32
  %cmp135 = icmp sle i32 %conv134, 7
  br i1 %cmp135, label %cond.true.137, label %cond.false.143

cond.true.137:                                    ; preds = %do.body.122
  %89 = load i32, i32* %q123, align 4, !tbaa !22
  %idxprom138 = zext i32 %89 to i64
  %90 = load i16, i16* %max_color, align 2, !tbaa !87
  %idxprom139 = zext i16 %90 to i64
  %arrayidx140 = getelementptr inbounds [8 x i16*], [8 x i16*]* @fc_color_quo, i32 0, i64 %idxprom139
  %91 = load i16*, i16** %arrayidx140, align 8, !tbaa !1
  %arrayidx141 = getelementptr inbounds i16, i16* %91, i64 %idxprom138
  %92 = load i16, i16* %arrayidx141, align 2, !tbaa !87
  %conv142 = zext i16 %92 to i32
  br label %cond.end.154

cond.false.143:                                   ; preds = %do.body.122
  %93 = load i32, i32* %q123, align 4, !tbaa !22
  %conv144 = zext i32 %93 to i64
  %mul145 = mul nsw i64 %conv144, 131070
  %94 = load i16, i16* %max_color, align 2, !tbaa !87
  %conv146 = zext i16 %94 to i64
  %add147 = add nsw i64 %mul145, %conv146
  %95 = load i16, i16* %max_color, align 2, !tbaa !87
  %conv148 = zext i16 %95 to i32
  %mul149 = mul nsw i32 %conv148, 2
  %conv150 = sext i32 %mul149 to i64
  %div151 = sdiv i64 %add147, %conv150
  %conv152 = trunc i64 %div151 to i16
  %conv153 = zext i16 %conv152 to i32
  br label %cond.end.154

cond.end.154:                                     ; preds = %cond.false.143, %cond.true.137
  %cond155 = phi i32 [ %conv142, %cond.true.137 ], [ %conv153, %cond.false.143 ]
  %conv156 = trunc i32 %cond155 to i16
  %96 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values157 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %96, i32 0, i32 0
  %arrayidx158 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values157, i32 0, i64 0
  %arrayidx159 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx158, i32 0, i64 1
  store i16 %conv156, i16* %arrayidx159, align 2, !tbaa !87
  %97 = load i32, i32* %r129, align 4, !tbaa !22
  %cmp160 = icmp eq i32 %97, 0
  br i1 %cmp160, label %if.then.162, label %if.else.170

if.then.162:                                      ; preds = %cond.end.154
  %98 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values163 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %98, i32 0, i32 0
  %arrayidx164 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values163, i32 0, i64 0
  %arrayidx165 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx164, i32 0, i64 1
  %99 = load i16, i16* %arrayidx165, align 2, !tbaa !87
  %100 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values166 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %100, i32 0, i32 0
  %arrayidx167 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values166, i32 0, i64 1
  %arrayidx168 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx167, i32 0, i64 1
  store i16 %99, i16* %arrayidx168, align 2, !tbaa !87
  %101 = load %struct.gx_const_strip_bitmap_s**, %struct.gx_const_strip_bitmap_s*** %sbits.addr, align 8, !tbaa !1
  %arrayidx169 = getelementptr inbounds %struct.gx_const_strip_bitmap_s*, %struct.gx_const_strip_bitmap_s** %101, i64 1
  store %struct.gx_const_strip_bitmap_s* @ht_no_bitmap, %struct.gx_const_strip_bitmap_s** %arrayidx169, align 8, !tbaa !1
  br label %if.end.267

if.else.170:                                      ; preds = %cond.end.154
  %102 = load i32, i32* %invert, align 4, !tbaa !22
  %tobool171 = icmp ne i32 %102, 0
  br i1 %tobool171, label %if.else.207, label %if.then.172

if.then.172:                                      ; preds = %if.else.170
  %103 = load i16, i16* %max_color, align 2, !tbaa !87
  %conv173 = zext i16 %103 to i32
  %cmp174 = icmp sle i32 %conv173, 7
  br i1 %cmp174, label %cond.true.176, label %cond.false.183

cond.true.176:                                    ; preds = %if.then.172
  %104 = load i32, i32* %q123, align 4, !tbaa !22
  %add177 = add i32 %104, 1
  %idxprom178 = zext i32 %add177 to i64
  %105 = load i16, i16* %max_color, align 2, !tbaa !87
  %idxprom179 = zext i16 %105 to i64
  %arrayidx180 = getelementptr inbounds [8 x i16*], [8 x i16*]* @fc_color_quo, i32 0, i64 %idxprom179
  %106 = load i16*, i16** %arrayidx180, align 8, !tbaa !1
  %arrayidx181 = getelementptr inbounds i16, i16* %106, i64 %idxprom178
  %107 = load i16, i16* %arrayidx181, align 2, !tbaa !87
  %conv182 = zext i16 %107 to i32
  br label %cond.end.195

cond.false.183:                                   ; preds = %if.then.172
  %108 = load i32, i32* %q123, align 4, !tbaa !22
  %add184 = add i32 %108, 1
  %conv185 = zext i32 %add184 to i64
  %mul186 = mul nsw i64 %conv185, 131070
  %109 = load i16, i16* %max_color, align 2, !tbaa !87
  %conv187 = zext i16 %109 to i64
  %add188 = add nsw i64 %mul186, %conv187
  %110 = load i16, i16* %max_color, align 2, !tbaa !87
  %conv189 = zext i16 %110 to i32
  %mul190 = mul nsw i32 %conv189, 2
  %conv191 = sext i32 %mul190 to i64
  %div192 = sdiv i64 %add188, %conv191
  %conv193 = trunc i64 %div192 to i16
  %conv194 = zext i16 %conv193 to i32
  br label %cond.end.195

cond.end.195:                                     ; preds = %cond.false.183, %cond.true.176
  %cond196 = phi i32 [ %conv182, %cond.true.176 ], [ %conv194, %cond.false.183 ]
  %conv197 = trunc i32 %cond196 to i16
  %111 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values198 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %111, i32 0, i32 0
  %arrayidx199 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values198, i32 0, i64 1
  %arrayidx200 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx199, i32 0, i64 1
  store i16 %conv197, i16* %arrayidx200, align 2, !tbaa !87
  %112 = load %struct.gx_ht_cache_s**, %struct.gx_ht_cache_s*** %caches.addr, align 8, !tbaa !1
  %arrayidx201 = getelementptr inbounds %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %112, i64 1
  %113 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %arrayidx201, align 8, !tbaa !1
  %render_ht202 = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %113, i32 0, i32 9
  %114 = load %struct.gx_ht_tile_s* (%struct.gx_ht_cache_s*, i32)*, %struct.gx_ht_tile_s* (%struct.gx_ht_cache_s*, i32)** %render_ht202, align 8, !tbaa !104
  %115 = load %struct.gx_ht_cache_s**, %struct.gx_ht_cache_s*** %caches.addr, align 8, !tbaa !1
  %arrayidx203 = getelementptr inbounds %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %115, i64 1
  %116 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %arrayidx203, align 8, !tbaa !1
  %117 = load i32, i32* %r129, align 4, !tbaa !22
  %call204 = call %struct.gx_ht_tile_s* %114(%struct.gx_ht_cache_s* %116, i32 %117) #6
  %tiles205 = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %call204, i32 0, i32 0
  %118 = bitcast %struct.gx_strip_bitmap_s* %tiles205 to %struct.gx_const_strip_bitmap_s*
  %119 = load %struct.gx_const_strip_bitmap_s**, %struct.gx_const_strip_bitmap_s*** %sbits.addr, align 8, !tbaa !1
  %arrayidx206 = getelementptr inbounds %struct.gx_const_strip_bitmap_s*, %struct.gx_const_strip_bitmap_s** %119, i64 1
  store %struct.gx_const_strip_bitmap_s* %118, %struct.gx_const_strip_bitmap_s** %arrayidx206, align 8, !tbaa !1
  br label %if.end.266

if.else.207:                                      ; preds = %if.else.170
  %120 = bitcast %struct.gx_device_halftone_s** %pdht208 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %120) #2
  %121 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %colors209 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %121, i32 0, i32 1
  %colored210 = bitcast %union._c* %colors209 to %struct._col*
  %c_ht211 = getelementptr inbounds %struct._col, %struct._col* %colored210, i32 0, i32 0
  %122 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %c_ht211, align 8, !tbaa !23
  store %struct.gx_device_halftone_s* %122, %struct.gx_device_halftone_s** %pdht208, align 8, !tbaa !1
  %123 = bitcast i32* %nlevels212 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %123) #2
  %124 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht208, align 8, !tbaa !1
  %components213 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %124, i32 0, i32 4
  %125 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components213, align 8, !tbaa !54
  %tobool214 = icmp ne %struct.gx_ht_order_component_s* %125, null
  br i1 %tobool214, label %cond.true.215, label %cond.false.220

cond.true.215:                                    ; preds = %if.else.207
  %126 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht208, align 8, !tbaa !1
  %components216 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %126, i32 0, i32 4
  %127 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components216, align 8, !tbaa !54
  %arrayidx217 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %127, i64 1
  %corder218 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx217, i32 0, i32 0
  %num_levels219 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %corder218, i32 0, i32 8
  %128 = load i32, i32* %num_levels219, align 4, !tbaa !102
  br label %cond.end.223

cond.false.220:                                   ; preds = %if.else.207
  %129 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht208, align 8, !tbaa !1
  %order221 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %129, i32 0, i32 0
  %num_levels222 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %order221, i32 0, i32 8
  %130 = load i32, i32* %num_levels222, align 4, !tbaa !103
  br label %cond.end.223

cond.end.223:                                     ; preds = %cond.false.220, %cond.true.215
  %cond224 = phi i32 [ %128, %cond.true.215 ], [ %130, %cond.false.220 ]
  store i32 %cond224, i32* %nlevels212, align 4, !tbaa !22
  %131 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values225 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %131, i32 0, i32 0
  %arrayidx226 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values225, i32 0, i64 0
  %arrayidx227 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx226, i32 0, i64 1
  %132 = load i16, i16* %arrayidx227, align 2, !tbaa !87
  %133 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values228 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %133, i32 0, i32 0
  %arrayidx229 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values228, i32 0, i64 1
  %arrayidx230 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx229, i32 0, i64 1
  store i16 %132, i16* %arrayidx230, align 2, !tbaa !87
  %134 = load i16, i16* %max_color, align 2, !tbaa !87
  %conv231 = zext i16 %134 to i32
  %cmp232 = icmp sle i32 %conv231, 7
  br i1 %cmp232, label %cond.true.234, label %cond.false.241

cond.true.234:                                    ; preds = %cond.end.223
  %135 = load i32, i32* %q123, align 4, !tbaa !22
  %add235 = add i32 %135, 1
  %idxprom236 = zext i32 %add235 to i64
  %136 = load i16, i16* %max_color, align 2, !tbaa !87
  %idxprom237 = zext i16 %136 to i64
  %arrayidx238 = getelementptr inbounds [8 x i16*], [8 x i16*]* @fc_color_quo, i32 0, i64 %idxprom237
  %137 = load i16*, i16** %arrayidx238, align 8, !tbaa !1
  %arrayidx239 = getelementptr inbounds i16, i16* %137, i64 %idxprom236
  %138 = load i16, i16* %arrayidx239, align 2, !tbaa !87
  %conv240 = zext i16 %138 to i32
  br label %cond.end.253

cond.false.241:                                   ; preds = %cond.end.223
  %139 = load i32, i32* %q123, align 4, !tbaa !22
  %add242 = add i32 %139, 1
  %conv243 = zext i32 %add242 to i64
  %mul244 = mul nsw i64 %conv243, 131070
  %140 = load i16, i16* %max_color, align 2, !tbaa !87
  %conv245 = zext i16 %140 to i64
  %add246 = add nsw i64 %mul244, %conv245
  %141 = load i16, i16* %max_color, align 2, !tbaa !87
  %conv247 = zext i16 %141 to i32
  %mul248 = mul nsw i32 %conv247, 2
  %conv249 = sext i32 %mul248 to i64
  %div250 = sdiv i64 %add246, %conv249
  %conv251 = trunc i64 %div250 to i16
  %conv252 = zext i16 %conv251 to i32
  br label %cond.end.253

cond.end.253:                                     ; preds = %cond.false.241, %cond.true.234
  %cond254 = phi i32 [ %conv240, %cond.true.234 ], [ %conv252, %cond.false.241 ]
  %conv255 = trunc i32 %cond254 to i16
  %142 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values256 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %142, i32 0, i32 0
  %arrayidx257 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values256, i32 0, i64 0
  %arrayidx258 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx257, i32 0, i64 1
  store i16 %conv255, i16* %arrayidx258, align 2, !tbaa !87
  %143 = load %struct.gx_ht_cache_s**, %struct.gx_ht_cache_s*** %caches.addr, align 8, !tbaa !1
  %arrayidx259 = getelementptr inbounds %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %143, i64 1
  %144 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %arrayidx259, align 8, !tbaa !1
  %render_ht260 = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %144, i32 0, i32 9
  %145 = load %struct.gx_ht_tile_s* (%struct.gx_ht_cache_s*, i32)*, %struct.gx_ht_tile_s* (%struct.gx_ht_cache_s*, i32)** %render_ht260, align 8, !tbaa !104
  %146 = load %struct.gx_ht_cache_s**, %struct.gx_ht_cache_s*** %caches.addr, align 8, !tbaa !1
  %arrayidx261 = getelementptr inbounds %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %146, i64 1
  %147 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %arrayidx261, align 8, !tbaa !1
  %148 = load i32, i32* %nlevels212, align 4, !tbaa !22
  %149 = load i32, i32* %r129, align 4, !tbaa !22
  %sub262 = sub i32 %148, %149
  %call263 = call %struct.gx_ht_tile_s* %145(%struct.gx_ht_cache_s* %147, i32 %sub262) #6
  %tiles264 = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %call263, i32 0, i32 0
  %150 = bitcast %struct.gx_strip_bitmap_s* %tiles264 to %struct.gx_const_strip_bitmap_s*
  %151 = load %struct.gx_const_strip_bitmap_s**, %struct.gx_const_strip_bitmap_s*** %sbits.addr, align 8, !tbaa !1
  %arrayidx265 = getelementptr inbounds %struct.gx_const_strip_bitmap_s*, %struct.gx_const_strip_bitmap_s** %151, i64 1
  store %struct.gx_const_strip_bitmap_s* %150, %struct.gx_const_strip_bitmap_s** %arrayidx265, align 8, !tbaa !1
  %152 = bitcast i32* %nlevels212 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %152) #2
  %153 = bitcast %struct.gx_device_halftone_s** %pdht208 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %153) #2
  br label %if.end.266

if.end.266:                                       ; preds = %cond.end.253, %cond.end.195
  br label %if.end.267

if.end.267:                                       ; preds = %if.end.266, %if.then.162
  %154 = bitcast i32* %r129 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %154) #2
  %155 = bitcast i32* %q123 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %155) #2
  br label %do.cond.268

do.cond.268:                                      ; preds = %if.end.267
  br label %do.end.269

do.end.269:                                       ; preds = %do.cond.268
  br label %if.end.270

if.end.270:                                       ; preds = %do.end.269, %do.end
  %156 = load i32, i32* %nplanes.addr, align 4, !tbaa !22
  %cmp271 = icmp sge i32 %156, 3
  br i1 %cmp271, label %if.then.273, label %if.end.422

if.then.273:                                      ; preds = %if.end.270
  br label %do.body.274

do.body.274:                                      ; preds = %if.then.273
  %157 = bitcast i32* %q275 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %157) #2
  %158 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %colors276 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %158, i32 0, i32 1
  %colored277 = bitcast %union._c* %colors276 to %struct._col*
  %c_base278 = getelementptr inbounds %struct._col, %struct._col* %colored277, i32 0, i32 2
  %arrayidx279 = getelementptr inbounds [64 x i8], [64 x i8]* %c_base278, i32 0, i64 2
  %159 = load i8, i8* %arrayidx279, align 1, !tbaa !24
  %conv280 = zext i8 %159 to i32
  store i32 %conv280, i32* %q275, align 4, !tbaa !22
  %160 = bitcast i32* %r281 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %160) #2
  %161 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %colors282 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %161, i32 0, i32 1
  %colored283 = bitcast %union._c* %colors282 to %struct._col*
  %c_level284 = getelementptr inbounds %struct._col, %struct._col* %colored283, i32 0, i32 3
  %arrayidx285 = getelementptr inbounds [64 x i32], [64 x i32]* %c_level284, i32 0, i64 2
  %162 = load i32, i32* %arrayidx285, align 4, !tbaa !22
  store i32 %162, i32* %r281, align 4, !tbaa !22
  %163 = load i16, i16* %max_color, align 2, !tbaa !87
  %conv286 = zext i16 %163 to i32
  %cmp287 = icmp sle i32 %conv286, 7
  br i1 %cmp287, label %cond.true.289, label %cond.false.295

cond.true.289:                                    ; preds = %do.body.274
  %164 = load i32, i32* %q275, align 4, !tbaa !22
  %idxprom290 = zext i32 %164 to i64
  %165 = load i16, i16* %max_color, align 2, !tbaa !87
  %idxprom291 = zext i16 %165 to i64
  %arrayidx292 = getelementptr inbounds [8 x i16*], [8 x i16*]* @fc_color_quo, i32 0, i64 %idxprom291
  %166 = load i16*, i16** %arrayidx292, align 8, !tbaa !1
  %arrayidx293 = getelementptr inbounds i16, i16* %166, i64 %idxprom290
  %167 = load i16, i16* %arrayidx293, align 2, !tbaa !87
  %conv294 = zext i16 %167 to i32
  br label %cond.end.306

cond.false.295:                                   ; preds = %do.body.274
  %168 = load i32, i32* %q275, align 4, !tbaa !22
  %conv296 = zext i32 %168 to i64
  %mul297 = mul nsw i64 %conv296, 131070
  %169 = load i16, i16* %max_color, align 2, !tbaa !87
  %conv298 = zext i16 %169 to i64
  %add299 = add nsw i64 %mul297, %conv298
  %170 = load i16, i16* %max_color, align 2, !tbaa !87
  %conv300 = zext i16 %170 to i32
  %mul301 = mul nsw i32 %conv300, 2
  %conv302 = sext i32 %mul301 to i64
  %div303 = sdiv i64 %add299, %conv302
  %conv304 = trunc i64 %div303 to i16
  %conv305 = zext i16 %conv304 to i32
  br label %cond.end.306

cond.end.306:                                     ; preds = %cond.false.295, %cond.true.289
  %cond307 = phi i32 [ %conv294, %cond.true.289 ], [ %conv305, %cond.false.295 ]
  %conv308 = trunc i32 %cond307 to i16
  %171 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values309 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %171, i32 0, i32 0
  %arrayidx310 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values309, i32 0, i64 0
  %arrayidx311 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx310, i32 0, i64 2
  store i16 %conv308, i16* %arrayidx311, align 2, !tbaa !87
  %172 = load i32, i32* %r281, align 4, !tbaa !22
  %cmp312 = icmp eq i32 %172, 0
  br i1 %cmp312, label %if.then.314, label %if.else.322

if.then.314:                                      ; preds = %cond.end.306
  %173 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values315 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %173, i32 0, i32 0
  %arrayidx316 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values315, i32 0, i64 0
  %arrayidx317 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx316, i32 0, i64 2
  %174 = load i16, i16* %arrayidx317, align 2, !tbaa !87
  %175 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values318 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %175, i32 0, i32 0
  %arrayidx319 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values318, i32 0, i64 1
  %arrayidx320 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx319, i32 0, i64 2
  store i16 %174, i16* %arrayidx320, align 2, !tbaa !87
  %176 = load %struct.gx_const_strip_bitmap_s**, %struct.gx_const_strip_bitmap_s*** %sbits.addr, align 8, !tbaa !1
  %arrayidx321 = getelementptr inbounds %struct.gx_const_strip_bitmap_s*, %struct.gx_const_strip_bitmap_s** %176, i64 2
  store %struct.gx_const_strip_bitmap_s* @ht_no_bitmap, %struct.gx_const_strip_bitmap_s** %arrayidx321, align 8, !tbaa !1
  br label %if.end.419

if.else.322:                                      ; preds = %cond.end.306
  %177 = load i32, i32* %invert, align 4, !tbaa !22
  %tobool323 = icmp ne i32 %177, 0
  br i1 %tobool323, label %if.else.359, label %if.then.324

if.then.324:                                      ; preds = %if.else.322
  %178 = load i16, i16* %max_color, align 2, !tbaa !87
  %conv325 = zext i16 %178 to i32
  %cmp326 = icmp sle i32 %conv325, 7
  br i1 %cmp326, label %cond.true.328, label %cond.false.335

cond.true.328:                                    ; preds = %if.then.324
  %179 = load i32, i32* %q275, align 4, !tbaa !22
  %add329 = add i32 %179, 1
  %idxprom330 = zext i32 %add329 to i64
  %180 = load i16, i16* %max_color, align 2, !tbaa !87
  %idxprom331 = zext i16 %180 to i64
  %arrayidx332 = getelementptr inbounds [8 x i16*], [8 x i16*]* @fc_color_quo, i32 0, i64 %idxprom331
  %181 = load i16*, i16** %arrayidx332, align 8, !tbaa !1
  %arrayidx333 = getelementptr inbounds i16, i16* %181, i64 %idxprom330
  %182 = load i16, i16* %arrayidx333, align 2, !tbaa !87
  %conv334 = zext i16 %182 to i32
  br label %cond.end.347

cond.false.335:                                   ; preds = %if.then.324
  %183 = load i32, i32* %q275, align 4, !tbaa !22
  %add336 = add i32 %183, 1
  %conv337 = zext i32 %add336 to i64
  %mul338 = mul nsw i64 %conv337, 131070
  %184 = load i16, i16* %max_color, align 2, !tbaa !87
  %conv339 = zext i16 %184 to i64
  %add340 = add nsw i64 %mul338, %conv339
  %185 = load i16, i16* %max_color, align 2, !tbaa !87
  %conv341 = zext i16 %185 to i32
  %mul342 = mul nsw i32 %conv341, 2
  %conv343 = sext i32 %mul342 to i64
  %div344 = sdiv i64 %add340, %conv343
  %conv345 = trunc i64 %div344 to i16
  %conv346 = zext i16 %conv345 to i32
  br label %cond.end.347

cond.end.347:                                     ; preds = %cond.false.335, %cond.true.328
  %cond348 = phi i32 [ %conv334, %cond.true.328 ], [ %conv346, %cond.false.335 ]
  %conv349 = trunc i32 %cond348 to i16
  %186 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values350 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %186, i32 0, i32 0
  %arrayidx351 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values350, i32 0, i64 1
  %arrayidx352 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx351, i32 0, i64 2
  store i16 %conv349, i16* %arrayidx352, align 2, !tbaa !87
  %187 = load %struct.gx_ht_cache_s**, %struct.gx_ht_cache_s*** %caches.addr, align 8, !tbaa !1
  %arrayidx353 = getelementptr inbounds %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %187, i64 2
  %188 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %arrayidx353, align 8, !tbaa !1
  %render_ht354 = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %188, i32 0, i32 9
  %189 = load %struct.gx_ht_tile_s* (%struct.gx_ht_cache_s*, i32)*, %struct.gx_ht_tile_s* (%struct.gx_ht_cache_s*, i32)** %render_ht354, align 8, !tbaa !104
  %190 = load %struct.gx_ht_cache_s**, %struct.gx_ht_cache_s*** %caches.addr, align 8, !tbaa !1
  %arrayidx355 = getelementptr inbounds %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %190, i64 2
  %191 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %arrayidx355, align 8, !tbaa !1
  %192 = load i32, i32* %r281, align 4, !tbaa !22
  %call356 = call %struct.gx_ht_tile_s* %189(%struct.gx_ht_cache_s* %191, i32 %192) #6
  %tiles357 = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %call356, i32 0, i32 0
  %193 = bitcast %struct.gx_strip_bitmap_s* %tiles357 to %struct.gx_const_strip_bitmap_s*
  %194 = load %struct.gx_const_strip_bitmap_s**, %struct.gx_const_strip_bitmap_s*** %sbits.addr, align 8, !tbaa !1
  %arrayidx358 = getelementptr inbounds %struct.gx_const_strip_bitmap_s*, %struct.gx_const_strip_bitmap_s** %194, i64 2
  store %struct.gx_const_strip_bitmap_s* %193, %struct.gx_const_strip_bitmap_s** %arrayidx358, align 8, !tbaa !1
  br label %if.end.418

if.else.359:                                      ; preds = %if.else.322
  %195 = bitcast %struct.gx_device_halftone_s** %pdht360 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %195) #2
  %196 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %colors361 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %196, i32 0, i32 1
  %colored362 = bitcast %union._c* %colors361 to %struct._col*
  %c_ht363 = getelementptr inbounds %struct._col, %struct._col* %colored362, i32 0, i32 0
  %197 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %c_ht363, align 8, !tbaa !23
  store %struct.gx_device_halftone_s* %197, %struct.gx_device_halftone_s** %pdht360, align 8, !tbaa !1
  %198 = bitcast i32* %nlevels364 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %198) #2
  %199 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht360, align 8, !tbaa !1
  %components365 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %199, i32 0, i32 4
  %200 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components365, align 8, !tbaa !54
  %tobool366 = icmp ne %struct.gx_ht_order_component_s* %200, null
  br i1 %tobool366, label %cond.true.367, label %cond.false.372

cond.true.367:                                    ; preds = %if.else.359
  %201 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht360, align 8, !tbaa !1
  %components368 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %201, i32 0, i32 4
  %202 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components368, align 8, !tbaa !54
  %arrayidx369 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %202, i64 2
  %corder370 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx369, i32 0, i32 0
  %num_levels371 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %corder370, i32 0, i32 8
  %203 = load i32, i32* %num_levels371, align 4, !tbaa !102
  br label %cond.end.375

cond.false.372:                                   ; preds = %if.else.359
  %204 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht360, align 8, !tbaa !1
  %order373 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %204, i32 0, i32 0
  %num_levels374 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %order373, i32 0, i32 8
  %205 = load i32, i32* %num_levels374, align 4, !tbaa !103
  br label %cond.end.375

cond.end.375:                                     ; preds = %cond.false.372, %cond.true.367
  %cond376 = phi i32 [ %203, %cond.true.367 ], [ %205, %cond.false.372 ]
  store i32 %cond376, i32* %nlevels364, align 4, !tbaa !22
  %206 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values377 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %206, i32 0, i32 0
  %arrayidx378 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values377, i32 0, i64 0
  %arrayidx379 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx378, i32 0, i64 2
  %207 = load i16, i16* %arrayidx379, align 2, !tbaa !87
  %208 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values380 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %208, i32 0, i32 0
  %arrayidx381 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values380, i32 0, i64 1
  %arrayidx382 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx381, i32 0, i64 2
  store i16 %207, i16* %arrayidx382, align 2, !tbaa !87
  %209 = load i16, i16* %max_color, align 2, !tbaa !87
  %conv383 = zext i16 %209 to i32
  %cmp384 = icmp sle i32 %conv383, 7
  br i1 %cmp384, label %cond.true.386, label %cond.false.393

cond.true.386:                                    ; preds = %cond.end.375
  %210 = load i32, i32* %q275, align 4, !tbaa !22
  %add387 = add i32 %210, 1
  %idxprom388 = zext i32 %add387 to i64
  %211 = load i16, i16* %max_color, align 2, !tbaa !87
  %idxprom389 = zext i16 %211 to i64
  %arrayidx390 = getelementptr inbounds [8 x i16*], [8 x i16*]* @fc_color_quo, i32 0, i64 %idxprom389
  %212 = load i16*, i16** %arrayidx390, align 8, !tbaa !1
  %arrayidx391 = getelementptr inbounds i16, i16* %212, i64 %idxprom388
  %213 = load i16, i16* %arrayidx391, align 2, !tbaa !87
  %conv392 = zext i16 %213 to i32
  br label %cond.end.405

cond.false.393:                                   ; preds = %cond.end.375
  %214 = load i32, i32* %q275, align 4, !tbaa !22
  %add394 = add i32 %214, 1
  %conv395 = zext i32 %add394 to i64
  %mul396 = mul nsw i64 %conv395, 131070
  %215 = load i16, i16* %max_color, align 2, !tbaa !87
  %conv397 = zext i16 %215 to i64
  %add398 = add nsw i64 %mul396, %conv397
  %216 = load i16, i16* %max_color, align 2, !tbaa !87
  %conv399 = zext i16 %216 to i32
  %mul400 = mul nsw i32 %conv399, 2
  %conv401 = sext i32 %mul400 to i64
  %div402 = sdiv i64 %add398, %conv401
  %conv403 = trunc i64 %div402 to i16
  %conv404 = zext i16 %conv403 to i32
  br label %cond.end.405

cond.end.405:                                     ; preds = %cond.false.393, %cond.true.386
  %cond406 = phi i32 [ %conv392, %cond.true.386 ], [ %conv404, %cond.false.393 ]
  %conv407 = trunc i32 %cond406 to i16
  %217 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values408 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %217, i32 0, i32 0
  %arrayidx409 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values408, i32 0, i64 0
  %arrayidx410 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx409, i32 0, i64 2
  store i16 %conv407, i16* %arrayidx410, align 2, !tbaa !87
  %218 = load %struct.gx_ht_cache_s**, %struct.gx_ht_cache_s*** %caches.addr, align 8, !tbaa !1
  %arrayidx411 = getelementptr inbounds %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %218, i64 2
  %219 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %arrayidx411, align 8, !tbaa !1
  %render_ht412 = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %219, i32 0, i32 9
  %220 = load %struct.gx_ht_tile_s* (%struct.gx_ht_cache_s*, i32)*, %struct.gx_ht_tile_s* (%struct.gx_ht_cache_s*, i32)** %render_ht412, align 8, !tbaa !104
  %221 = load %struct.gx_ht_cache_s**, %struct.gx_ht_cache_s*** %caches.addr, align 8, !tbaa !1
  %arrayidx413 = getelementptr inbounds %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %221, i64 2
  %222 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %arrayidx413, align 8, !tbaa !1
  %223 = load i32, i32* %nlevels364, align 4, !tbaa !22
  %224 = load i32, i32* %r281, align 4, !tbaa !22
  %sub414 = sub i32 %223, %224
  %call415 = call %struct.gx_ht_tile_s* %220(%struct.gx_ht_cache_s* %222, i32 %sub414) #6
  %tiles416 = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %call415, i32 0, i32 0
  %225 = bitcast %struct.gx_strip_bitmap_s* %tiles416 to %struct.gx_const_strip_bitmap_s*
  %226 = load %struct.gx_const_strip_bitmap_s**, %struct.gx_const_strip_bitmap_s*** %sbits.addr, align 8, !tbaa !1
  %arrayidx417 = getelementptr inbounds %struct.gx_const_strip_bitmap_s*, %struct.gx_const_strip_bitmap_s** %226, i64 2
  store %struct.gx_const_strip_bitmap_s* %225, %struct.gx_const_strip_bitmap_s** %arrayidx417, align 8, !tbaa !1
  %227 = bitcast i32* %nlevels364 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %227) #2
  %228 = bitcast %struct.gx_device_halftone_s** %pdht360 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %228) #2
  br label %if.end.418

if.end.418:                                       ; preds = %cond.end.405, %cond.end.347
  br label %if.end.419

if.end.419:                                       ; preds = %if.end.418, %if.then.314
  %229 = bitcast i32* %r281 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %229) #2
  %230 = bitcast i32* %q275 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %230) #2
  br label %do.cond.420

do.cond.420:                                      ; preds = %if.end.419
  br label %do.end.421

do.end.421:                                       ; preds = %do.cond.420
  br label %if.end.422

if.end.422:                                       ; preds = %do.end.421, %if.end.270
  %231 = load i32, i32* %nplanes.addr, align 4, !tbaa !22
  %cmp423 = icmp eq i32 %231, 3
  br i1 %cmp423, label %if.then.425, label %if.else.671

if.then.425:                                      ; preds = %if.end.422
  %232 = bitcast i16* %alpha to i8*
  call void @llvm.lifetime.start(i64 2, i8* %232) #2
  %233 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %colors426 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %233, i32 0, i32 1
  %colored427 = bitcast %union._c* %colors426 to %struct._col*
  %alpha428 = getelementptr inbounds %struct._col, %struct._col* %colored427, i32 0, i32 4
  %234 = load i16, i16* %alpha428, align 2, !tbaa !16
  store i16 %234, i16* %alpha, align 2, !tbaa !87
  %235 = load i16, i16* %alpha, align 2, !tbaa !87
  %conv429 = zext i16 %235 to i32
  %cmp430 = icmp eq i32 %conv429, 65535
  br i1 %cmp430, label %if.then.432, label %if.else.566

if.then.432:                                      ; preds = %if.then.425
  %236 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values433 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %236, i32 0, i32 0
  %arrayidx434 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values433, i32 0, i64 0
  %arrayidx435 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx434, i32 0, i64 0
  %237 = load i16, i16* %arrayidx435, align 2, !tbaa !87
  %arrayidx436 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 0
  store i16 %237, i16* %arrayidx436, align 2, !tbaa !87
  %238 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values437 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %238, i32 0, i32 0
  %arrayidx438 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values437, i32 0, i64 0
  %arrayidx439 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx438, i32 0, i64 1
  %239 = load i16, i16* %arrayidx439, align 2, !tbaa !87
  %arrayidx440 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 1
  store i16 %239, i16* %arrayidx440, align 2, !tbaa !87
  %240 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values441 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %240, i32 0, i32 0
  %arrayidx442 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values441, i32 0, i64 0
  %arrayidx443 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx442, i32 0, i64 2
  %241 = load i16, i16* %arrayidx443, align 2, !tbaa !87
  %arrayidx444 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 2
  store i16 %241, i16* %arrayidx444, align 2, !tbaa !87
  %242 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %242, i32 0, i32 42
  %encode_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 51
  %243 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color, align 8, !tbaa !108
  %244 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i32 0
  %call445 = call i64 %243(%struct.gx_device_s* %244, i16* %arraydecay) #6
  %245 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx446 = getelementptr inbounds i64, i64* %245, i64 0
  store i64 %call445, i64* %arrayidx446, align 8, !tbaa !86
  %246 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values447 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %246, i32 0, i32 0
  %arrayidx448 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values447, i32 0, i64 1
  %arrayidx449 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx448, i32 0, i64 0
  %247 = load i16, i16* %arrayidx449, align 2, !tbaa !87
  %arrayidx450 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 0
  store i16 %247, i16* %arrayidx450, align 2, !tbaa !87
  %248 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values451 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %248, i32 0, i32 0
  %arrayidx452 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values451, i32 0, i64 0
  %arrayidx453 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx452, i32 0, i64 1
  %249 = load i16, i16* %arrayidx453, align 2, !tbaa !87
  %arrayidx454 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 1
  store i16 %249, i16* %arrayidx454, align 2, !tbaa !87
  %250 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values455 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %250, i32 0, i32 0
  %arrayidx456 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values455, i32 0, i64 0
  %arrayidx457 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx456, i32 0, i64 2
  %251 = load i16, i16* %arrayidx457, align 2, !tbaa !87
  %arrayidx458 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 2
  store i16 %251, i16* %arrayidx458, align 2, !tbaa !87
  %252 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs459 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %252, i32 0, i32 42
  %encode_color460 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs459, i32 0, i32 51
  %253 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color460, align 8, !tbaa !108
  %254 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay461 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i32 0
  %call462 = call i64 %253(%struct.gx_device_s* %254, i16* %arraydecay461) #6
  %255 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx463 = getelementptr inbounds i64, i64* %255, i64 1
  store i64 %call462, i64* %arrayidx463, align 8, !tbaa !86
  %256 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values464 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %256, i32 0, i32 0
  %arrayidx465 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values464, i32 0, i64 0
  %arrayidx466 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx465, i32 0, i64 0
  %257 = load i16, i16* %arrayidx466, align 2, !tbaa !87
  %arrayidx467 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 0
  store i16 %257, i16* %arrayidx467, align 2, !tbaa !87
  %258 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values468 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %258, i32 0, i32 0
  %arrayidx469 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values468, i32 0, i64 1
  %arrayidx470 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx469, i32 0, i64 1
  %259 = load i16, i16* %arrayidx470, align 2, !tbaa !87
  %arrayidx471 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 1
  store i16 %259, i16* %arrayidx471, align 2, !tbaa !87
  %260 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values472 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %260, i32 0, i32 0
  %arrayidx473 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values472, i32 0, i64 0
  %arrayidx474 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx473, i32 0, i64 2
  %261 = load i16, i16* %arrayidx474, align 2, !tbaa !87
  %arrayidx475 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 2
  store i16 %261, i16* %arrayidx475, align 2, !tbaa !87
  %262 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs476 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %262, i32 0, i32 42
  %encode_color477 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs476, i32 0, i32 51
  %263 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color477, align 8, !tbaa !108
  %264 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay478 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i32 0
  %call479 = call i64 %263(%struct.gx_device_s* %264, i16* %arraydecay478) #6
  %265 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx480 = getelementptr inbounds i64, i64* %265, i64 2
  store i64 %call479, i64* %arrayidx480, align 8, !tbaa !86
  %266 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values481 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %266, i32 0, i32 0
  %arrayidx482 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values481, i32 0, i64 1
  %arrayidx483 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx482, i32 0, i64 0
  %267 = load i16, i16* %arrayidx483, align 2, !tbaa !87
  %arrayidx484 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 0
  store i16 %267, i16* %arrayidx484, align 2, !tbaa !87
  %268 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values485 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %268, i32 0, i32 0
  %arrayidx486 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values485, i32 0, i64 1
  %arrayidx487 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx486, i32 0, i64 1
  %269 = load i16, i16* %arrayidx487, align 2, !tbaa !87
  %arrayidx488 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 1
  store i16 %269, i16* %arrayidx488, align 2, !tbaa !87
  %270 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values489 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %270, i32 0, i32 0
  %arrayidx490 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values489, i32 0, i64 0
  %arrayidx491 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx490, i32 0, i64 2
  %271 = load i16, i16* %arrayidx491, align 2, !tbaa !87
  %arrayidx492 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 2
  store i16 %271, i16* %arrayidx492, align 2, !tbaa !87
  %272 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs493 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %272, i32 0, i32 42
  %encode_color494 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs493, i32 0, i32 51
  %273 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color494, align 8, !tbaa !108
  %274 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay495 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i32 0
  %call496 = call i64 %273(%struct.gx_device_s* %274, i16* %arraydecay495) #6
  %275 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx497 = getelementptr inbounds i64, i64* %275, i64 3
  store i64 %call496, i64* %arrayidx497, align 8, !tbaa !86
  %276 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values498 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %276, i32 0, i32 0
  %arrayidx499 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values498, i32 0, i64 0
  %arrayidx500 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx499, i32 0, i64 0
  %277 = load i16, i16* %arrayidx500, align 2, !tbaa !87
  %arrayidx501 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 0
  store i16 %277, i16* %arrayidx501, align 2, !tbaa !87
  %278 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values502 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %278, i32 0, i32 0
  %arrayidx503 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values502, i32 0, i64 0
  %arrayidx504 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx503, i32 0, i64 1
  %279 = load i16, i16* %arrayidx504, align 2, !tbaa !87
  %arrayidx505 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 1
  store i16 %279, i16* %arrayidx505, align 2, !tbaa !87
  %280 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values506 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %280, i32 0, i32 0
  %arrayidx507 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values506, i32 0, i64 1
  %arrayidx508 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx507, i32 0, i64 2
  %281 = load i16, i16* %arrayidx508, align 2, !tbaa !87
  %arrayidx509 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 2
  store i16 %281, i16* %arrayidx509, align 2, !tbaa !87
  %282 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs510 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %282, i32 0, i32 42
  %encode_color511 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs510, i32 0, i32 51
  %283 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color511, align 8, !tbaa !108
  %284 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay512 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i32 0
  %call513 = call i64 %283(%struct.gx_device_s* %284, i16* %arraydecay512) #6
  %285 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx514 = getelementptr inbounds i64, i64* %285, i64 4
  store i64 %call513, i64* %arrayidx514, align 8, !tbaa !86
  %286 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values515 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %286, i32 0, i32 0
  %arrayidx516 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values515, i32 0, i64 1
  %arrayidx517 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx516, i32 0, i64 0
  %287 = load i16, i16* %arrayidx517, align 2, !tbaa !87
  %arrayidx518 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 0
  store i16 %287, i16* %arrayidx518, align 2, !tbaa !87
  %288 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values519 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %288, i32 0, i32 0
  %arrayidx520 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values519, i32 0, i64 0
  %arrayidx521 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx520, i32 0, i64 1
  %289 = load i16, i16* %arrayidx521, align 2, !tbaa !87
  %arrayidx522 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 1
  store i16 %289, i16* %arrayidx522, align 2, !tbaa !87
  %290 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values523 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %290, i32 0, i32 0
  %arrayidx524 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values523, i32 0, i64 1
  %arrayidx525 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx524, i32 0, i64 2
  %291 = load i16, i16* %arrayidx525, align 2, !tbaa !87
  %arrayidx526 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 2
  store i16 %291, i16* %arrayidx526, align 2, !tbaa !87
  %292 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs527 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %292, i32 0, i32 42
  %encode_color528 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs527, i32 0, i32 51
  %293 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color528, align 8, !tbaa !108
  %294 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay529 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i32 0
  %call530 = call i64 %293(%struct.gx_device_s* %294, i16* %arraydecay529) #6
  %295 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx531 = getelementptr inbounds i64, i64* %295, i64 5
  store i64 %call530, i64* %arrayidx531, align 8, !tbaa !86
  %296 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values532 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %296, i32 0, i32 0
  %arrayidx533 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values532, i32 0, i64 0
  %arrayidx534 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx533, i32 0, i64 0
  %297 = load i16, i16* %arrayidx534, align 2, !tbaa !87
  %arrayidx535 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 0
  store i16 %297, i16* %arrayidx535, align 2, !tbaa !87
  %298 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values536 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %298, i32 0, i32 0
  %arrayidx537 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values536, i32 0, i64 1
  %arrayidx538 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx537, i32 0, i64 1
  %299 = load i16, i16* %arrayidx538, align 2, !tbaa !87
  %arrayidx539 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 1
  store i16 %299, i16* %arrayidx539, align 2, !tbaa !87
  %300 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values540 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %300, i32 0, i32 0
  %arrayidx541 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values540, i32 0, i64 1
  %arrayidx542 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx541, i32 0, i64 2
  %301 = load i16, i16* %arrayidx542, align 2, !tbaa !87
  %arrayidx543 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 2
  store i16 %301, i16* %arrayidx543, align 2, !tbaa !87
  %302 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs544 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %302, i32 0, i32 42
  %encode_color545 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs544, i32 0, i32 51
  %303 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color545, align 8, !tbaa !108
  %304 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay546 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i32 0
  %call547 = call i64 %303(%struct.gx_device_s* %304, i16* %arraydecay546) #6
  %305 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx548 = getelementptr inbounds i64, i64* %305, i64 6
  store i64 %call547, i64* %arrayidx548, align 8, !tbaa !86
  %306 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values549 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %306, i32 0, i32 0
  %arrayidx550 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values549, i32 0, i64 1
  %arrayidx551 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx550, i32 0, i64 0
  %307 = load i16, i16* %arrayidx551, align 2, !tbaa !87
  %arrayidx552 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 0
  store i16 %307, i16* %arrayidx552, align 2, !tbaa !87
  %308 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values553 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %308, i32 0, i32 0
  %arrayidx554 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values553, i32 0, i64 1
  %arrayidx555 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx554, i32 0, i64 1
  %309 = load i16, i16* %arrayidx555, align 2, !tbaa !87
  %arrayidx556 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 1
  store i16 %309, i16* %arrayidx556, align 2, !tbaa !87
  %310 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values557 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %310, i32 0, i32 0
  %arrayidx558 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values557, i32 0, i64 1
  %arrayidx559 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx558, i32 0, i64 2
  %311 = load i16, i16* %arrayidx559, align 2, !tbaa !87
  %arrayidx560 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 2
  store i16 %311, i16* %arrayidx560, align 2, !tbaa !87
  %312 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs561 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %312, i32 0, i32 42
  %encode_color562 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs561, i32 0, i32 51
  %313 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color562, align 8, !tbaa !108
  %314 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay563 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i32 0
  %call564 = call i64 %313(%struct.gx_device_s* %314, i16* %arraydecay563) #6
  %315 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx565 = getelementptr inbounds i64, i64* %315, i64 7
  store i64 %call564, i64* %arrayidx565, align 8, !tbaa !86
  br label %if.end.670

if.else.566:                                      ; preds = %if.then.425
  %316 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs567 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %316, i32 0, i32 42
  %map_rgb_alpha_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs567, i32 0, i32 18
  %317 = load i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)** %map_rgb_alpha_color, align 8, !tbaa !109
  %318 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %319 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values568 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %319, i32 0, i32 0
  %arrayidx569 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values568, i32 0, i64 0
  %arrayidx570 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx569, i32 0, i64 0
  %320 = load i16, i16* %arrayidx570, align 2, !tbaa !87
  %321 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values571 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %321, i32 0, i32 0
  %arrayidx572 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values571, i32 0, i64 0
  %arrayidx573 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx572, i32 0, i64 1
  %322 = load i16, i16* %arrayidx573, align 2, !tbaa !87
  %323 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values574 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %323, i32 0, i32 0
  %arrayidx575 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values574, i32 0, i64 0
  %arrayidx576 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx575, i32 0, i64 2
  %324 = load i16, i16* %arrayidx576, align 2, !tbaa !87
  %325 = load i16, i16* %alpha, align 2, !tbaa !87
  %call577 = call i64 %317(%struct.gx_device_s* %318, i16 zeroext %320, i16 zeroext %322, i16 zeroext %324, i16 zeroext %325) #6
  %326 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx578 = getelementptr inbounds i64, i64* %326, i64 0
  store i64 %call577, i64* %arrayidx578, align 8, !tbaa !86
  %327 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs579 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %327, i32 0, i32 42
  %map_rgb_alpha_color580 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs579, i32 0, i32 18
  %328 = load i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)** %map_rgb_alpha_color580, align 8, !tbaa !109
  %329 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %330 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values581 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %330, i32 0, i32 0
  %arrayidx582 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values581, i32 0, i64 1
  %arrayidx583 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx582, i32 0, i64 0
  %331 = load i16, i16* %arrayidx583, align 2, !tbaa !87
  %332 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values584 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %332, i32 0, i32 0
  %arrayidx585 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values584, i32 0, i64 0
  %arrayidx586 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx585, i32 0, i64 1
  %333 = load i16, i16* %arrayidx586, align 2, !tbaa !87
  %334 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values587 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %334, i32 0, i32 0
  %arrayidx588 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values587, i32 0, i64 0
  %arrayidx589 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx588, i32 0, i64 2
  %335 = load i16, i16* %arrayidx589, align 2, !tbaa !87
  %336 = load i16, i16* %alpha, align 2, !tbaa !87
  %call590 = call i64 %328(%struct.gx_device_s* %329, i16 zeroext %331, i16 zeroext %333, i16 zeroext %335, i16 zeroext %336) #6
  %337 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx591 = getelementptr inbounds i64, i64* %337, i64 1
  store i64 %call590, i64* %arrayidx591, align 8, !tbaa !86
  %338 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs592 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %338, i32 0, i32 42
  %map_rgb_alpha_color593 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs592, i32 0, i32 18
  %339 = load i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)** %map_rgb_alpha_color593, align 8, !tbaa !109
  %340 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %341 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values594 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %341, i32 0, i32 0
  %arrayidx595 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values594, i32 0, i64 0
  %arrayidx596 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx595, i32 0, i64 0
  %342 = load i16, i16* %arrayidx596, align 2, !tbaa !87
  %343 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values597 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %343, i32 0, i32 0
  %arrayidx598 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values597, i32 0, i64 1
  %arrayidx599 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx598, i32 0, i64 1
  %344 = load i16, i16* %arrayidx599, align 2, !tbaa !87
  %345 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values600 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %345, i32 0, i32 0
  %arrayidx601 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values600, i32 0, i64 0
  %arrayidx602 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx601, i32 0, i64 2
  %346 = load i16, i16* %arrayidx602, align 2, !tbaa !87
  %347 = load i16, i16* %alpha, align 2, !tbaa !87
  %call603 = call i64 %339(%struct.gx_device_s* %340, i16 zeroext %342, i16 zeroext %344, i16 zeroext %346, i16 zeroext %347) #6
  %348 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx604 = getelementptr inbounds i64, i64* %348, i64 2
  store i64 %call603, i64* %arrayidx604, align 8, !tbaa !86
  %349 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs605 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %349, i32 0, i32 42
  %map_rgb_alpha_color606 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs605, i32 0, i32 18
  %350 = load i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)** %map_rgb_alpha_color606, align 8, !tbaa !109
  %351 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %352 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values607 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %352, i32 0, i32 0
  %arrayidx608 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values607, i32 0, i64 1
  %arrayidx609 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx608, i32 0, i64 0
  %353 = load i16, i16* %arrayidx609, align 2, !tbaa !87
  %354 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values610 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %354, i32 0, i32 0
  %arrayidx611 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values610, i32 0, i64 1
  %arrayidx612 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx611, i32 0, i64 1
  %355 = load i16, i16* %arrayidx612, align 2, !tbaa !87
  %356 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values613 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %356, i32 0, i32 0
  %arrayidx614 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values613, i32 0, i64 0
  %arrayidx615 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx614, i32 0, i64 2
  %357 = load i16, i16* %arrayidx615, align 2, !tbaa !87
  %358 = load i16, i16* %alpha, align 2, !tbaa !87
  %call616 = call i64 %350(%struct.gx_device_s* %351, i16 zeroext %353, i16 zeroext %355, i16 zeroext %357, i16 zeroext %358) #6
  %359 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx617 = getelementptr inbounds i64, i64* %359, i64 3
  store i64 %call616, i64* %arrayidx617, align 8, !tbaa !86
  %360 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs618 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %360, i32 0, i32 42
  %map_rgb_alpha_color619 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs618, i32 0, i32 18
  %361 = load i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)** %map_rgb_alpha_color619, align 8, !tbaa !109
  %362 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %363 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values620 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %363, i32 0, i32 0
  %arrayidx621 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values620, i32 0, i64 0
  %arrayidx622 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx621, i32 0, i64 0
  %364 = load i16, i16* %arrayidx622, align 2, !tbaa !87
  %365 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values623 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %365, i32 0, i32 0
  %arrayidx624 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values623, i32 0, i64 0
  %arrayidx625 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx624, i32 0, i64 1
  %366 = load i16, i16* %arrayidx625, align 2, !tbaa !87
  %367 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values626 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %367, i32 0, i32 0
  %arrayidx627 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values626, i32 0, i64 1
  %arrayidx628 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx627, i32 0, i64 2
  %368 = load i16, i16* %arrayidx628, align 2, !tbaa !87
  %369 = load i16, i16* %alpha, align 2, !tbaa !87
  %call629 = call i64 %361(%struct.gx_device_s* %362, i16 zeroext %364, i16 zeroext %366, i16 zeroext %368, i16 zeroext %369) #6
  %370 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx630 = getelementptr inbounds i64, i64* %370, i64 4
  store i64 %call629, i64* %arrayidx630, align 8, !tbaa !86
  %371 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs631 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %371, i32 0, i32 42
  %map_rgb_alpha_color632 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs631, i32 0, i32 18
  %372 = load i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)** %map_rgb_alpha_color632, align 8, !tbaa !109
  %373 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %374 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values633 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %374, i32 0, i32 0
  %arrayidx634 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values633, i32 0, i64 1
  %arrayidx635 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx634, i32 0, i64 0
  %375 = load i16, i16* %arrayidx635, align 2, !tbaa !87
  %376 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values636 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %376, i32 0, i32 0
  %arrayidx637 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values636, i32 0, i64 0
  %arrayidx638 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx637, i32 0, i64 1
  %377 = load i16, i16* %arrayidx638, align 2, !tbaa !87
  %378 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values639 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %378, i32 0, i32 0
  %arrayidx640 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values639, i32 0, i64 1
  %arrayidx641 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx640, i32 0, i64 2
  %379 = load i16, i16* %arrayidx641, align 2, !tbaa !87
  %380 = load i16, i16* %alpha, align 2, !tbaa !87
  %call642 = call i64 %372(%struct.gx_device_s* %373, i16 zeroext %375, i16 zeroext %377, i16 zeroext %379, i16 zeroext %380) #6
  %381 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx643 = getelementptr inbounds i64, i64* %381, i64 5
  store i64 %call642, i64* %arrayidx643, align 8, !tbaa !86
  %382 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs644 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %382, i32 0, i32 42
  %map_rgb_alpha_color645 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs644, i32 0, i32 18
  %383 = load i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)** %map_rgb_alpha_color645, align 8, !tbaa !109
  %384 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %385 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values646 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %385, i32 0, i32 0
  %arrayidx647 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values646, i32 0, i64 0
  %arrayidx648 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx647, i32 0, i64 0
  %386 = load i16, i16* %arrayidx648, align 2, !tbaa !87
  %387 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values649 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %387, i32 0, i32 0
  %arrayidx650 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values649, i32 0, i64 1
  %arrayidx651 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx650, i32 0, i64 1
  %388 = load i16, i16* %arrayidx651, align 2, !tbaa !87
  %389 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values652 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %389, i32 0, i32 0
  %arrayidx653 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values652, i32 0, i64 1
  %arrayidx654 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx653, i32 0, i64 2
  %390 = load i16, i16* %arrayidx654, align 2, !tbaa !87
  %391 = load i16, i16* %alpha, align 2, !tbaa !87
  %call655 = call i64 %383(%struct.gx_device_s* %384, i16 zeroext %386, i16 zeroext %388, i16 zeroext %390, i16 zeroext %391) #6
  %392 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx656 = getelementptr inbounds i64, i64* %392, i64 6
  store i64 %call655, i64* %arrayidx656, align 8, !tbaa !86
  %393 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs657 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %393, i32 0, i32 42
  %map_rgb_alpha_color658 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs657, i32 0, i32 18
  %394 = load i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)** %map_rgb_alpha_color658, align 8, !tbaa !109
  %395 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %396 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values659 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %396, i32 0, i32 0
  %arrayidx660 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values659, i32 0, i64 1
  %arrayidx661 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx660, i32 0, i64 0
  %397 = load i16, i16* %arrayidx661, align 2, !tbaa !87
  %398 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values662 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %398, i32 0, i32 0
  %arrayidx663 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values662, i32 0, i64 1
  %arrayidx664 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx663, i32 0, i64 1
  %399 = load i16, i16* %arrayidx664, align 2, !tbaa !87
  %400 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values665 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %400, i32 0, i32 0
  %arrayidx666 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values665, i32 0, i64 1
  %arrayidx667 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx666, i32 0, i64 2
  %401 = load i16, i16* %arrayidx667, align 2, !tbaa !87
  %402 = load i16, i16* %alpha, align 2, !tbaa !87
  %call668 = call i64 %394(%struct.gx_device_s* %395, i16 zeroext %397, i16 zeroext %399, i16 zeroext %401, i16 zeroext %402) #6
  %403 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx669 = getelementptr inbounds i64, i64* %403, i64 7
  store i64 %call668, i64* %arrayidx669, align 8, !tbaa !86
  br label %if.end.670

if.end.670:                                       ; preds = %if.else.566, %if.then.432
  %404 = bitcast i16* %alpha to i8*
  call void @llvm.lifetime.end(i64 2, i8* %404) #2
  br label %if.end.1755

if.else.671:                                      ; preds = %if.end.422
  %405 = load i32, i32* %nplanes.addr, align 4, !tbaa !22
  %cmp672 = icmp sgt i32 %405, 3
  br i1 %cmp672, label %if.then.674, label %if.end.1754

if.then.674:                                      ; preds = %if.else.671
  br label %do.body.675

do.body.675:                                      ; preds = %if.then.674
  %406 = bitcast i32* %q676 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %406) #2
  %407 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %colors677 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %407, i32 0, i32 1
  %colored678 = bitcast %union._c* %colors677 to %struct._col*
  %c_base679 = getelementptr inbounds %struct._col, %struct._col* %colored678, i32 0, i32 2
  %arrayidx680 = getelementptr inbounds [64 x i8], [64 x i8]* %c_base679, i32 0, i64 3
  %408 = load i8, i8* %arrayidx680, align 1, !tbaa !24
  %conv681 = zext i8 %408 to i32
  store i32 %conv681, i32* %q676, align 4, !tbaa !22
  %409 = bitcast i32* %r682 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %409) #2
  %410 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %colors683 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %410, i32 0, i32 1
  %colored684 = bitcast %union._c* %colors683 to %struct._col*
  %c_level685 = getelementptr inbounds %struct._col, %struct._col* %colored684, i32 0, i32 3
  %arrayidx686 = getelementptr inbounds [64 x i32], [64 x i32]* %c_level685, i32 0, i64 3
  %411 = load i32, i32* %arrayidx686, align 4, !tbaa !22
  store i32 %411, i32* %r682, align 4, !tbaa !22
  %412 = load i16, i16* %max_color, align 2, !tbaa !87
  %conv687 = zext i16 %412 to i32
  %cmp688 = icmp sle i32 %conv687, 7
  br i1 %cmp688, label %cond.true.690, label %cond.false.696

cond.true.690:                                    ; preds = %do.body.675
  %413 = load i32, i32* %q676, align 4, !tbaa !22
  %idxprom691 = zext i32 %413 to i64
  %414 = load i16, i16* %max_color, align 2, !tbaa !87
  %idxprom692 = zext i16 %414 to i64
  %arrayidx693 = getelementptr inbounds [8 x i16*], [8 x i16*]* @fc_color_quo, i32 0, i64 %idxprom692
  %415 = load i16*, i16** %arrayidx693, align 8, !tbaa !1
  %arrayidx694 = getelementptr inbounds i16, i16* %415, i64 %idxprom691
  %416 = load i16, i16* %arrayidx694, align 2, !tbaa !87
  %conv695 = zext i16 %416 to i32
  br label %cond.end.707

cond.false.696:                                   ; preds = %do.body.675
  %417 = load i32, i32* %q676, align 4, !tbaa !22
  %conv697 = zext i32 %417 to i64
  %mul698 = mul nsw i64 %conv697, 131070
  %418 = load i16, i16* %max_color, align 2, !tbaa !87
  %conv699 = zext i16 %418 to i64
  %add700 = add nsw i64 %mul698, %conv699
  %419 = load i16, i16* %max_color, align 2, !tbaa !87
  %conv701 = zext i16 %419 to i32
  %mul702 = mul nsw i32 %conv701, 2
  %conv703 = sext i32 %mul702 to i64
  %div704 = sdiv i64 %add700, %conv703
  %conv705 = trunc i64 %div704 to i16
  %conv706 = zext i16 %conv705 to i32
  br label %cond.end.707

cond.end.707:                                     ; preds = %cond.false.696, %cond.true.690
  %cond708 = phi i32 [ %conv695, %cond.true.690 ], [ %conv706, %cond.false.696 ]
  %conv709 = trunc i32 %cond708 to i16
  %420 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values710 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %420, i32 0, i32 0
  %arrayidx711 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values710, i32 0, i64 0
  %arrayidx712 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx711, i32 0, i64 3
  store i16 %conv709, i16* %arrayidx712, align 2, !tbaa !87
  %421 = load i32, i32* %r682, align 4, !tbaa !22
  %cmp713 = icmp eq i32 %421, 0
  br i1 %cmp713, label %if.then.715, label %if.else.723

if.then.715:                                      ; preds = %cond.end.707
  %422 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values716 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %422, i32 0, i32 0
  %arrayidx717 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values716, i32 0, i64 0
  %arrayidx718 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx717, i32 0, i64 3
  %423 = load i16, i16* %arrayidx718, align 2, !tbaa !87
  %424 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values719 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %424, i32 0, i32 0
  %arrayidx720 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values719, i32 0, i64 1
  %arrayidx721 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx720, i32 0, i64 3
  store i16 %423, i16* %arrayidx721, align 2, !tbaa !87
  %425 = load %struct.gx_const_strip_bitmap_s**, %struct.gx_const_strip_bitmap_s*** %sbits.addr, align 8, !tbaa !1
  %arrayidx722 = getelementptr inbounds %struct.gx_const_strip_bitmap_s*, %struct.gx_const_strip_bitmap_s** %425, i64 3
  store %struct.gx_const_strip_bitmap_s* @ht_no_bitmap, %struct.gx_const_strip_bitmap_s** %arrayidx722, align 8, !tbaa !1
  br label %if.end.820

if.else.723:                                      ; preds = %cond.end.707
  %426 = load i32, i32* %invert, align 4, !tbaa !22
  %tobool724 = icmp ne i32 %426, 0
  br i1 %tobool724, label %if.else.760, label %if.then.725

if.then.725:                                      ; preds = %if.else.723
  %427 = load i16, i16* %max_color, align 2, !tbaa !87
  %conv726 = zext i16 %427 to i32
  %cmp727 = icmp sle i32 %conv726, 7
  br i1 %cmp727, label %cond.true.729, label %cond.false.736

cond.true.729:                                    ; preds = %if.then.725
  %428 = load i32, i32* %q676, align 4, !tbaa !22
  %add730 = add i32 %428, 1
  %idxprom731 = zext i32 %add730 to i64
  %429 = load i16, i16* %max_color, align 2, !tbaa !87
  %idxprom732 = zext i16 %429 to i64
  %arrayidx733 = getelementptr inbounds [8 x i16*], [8 x i16*]* @fc_color_quo, i32 0, i64 %idxprom732
  %430 = load i16*, i16** %arrayidx733, align 8, !tbaa !1
  %arrayidx734 = getelementptr inbounds i16, i16* %430, i64 %idxprom731
  %431 = load i16, i16* %arrayidx734, align 2, !tbaa !87
  %conv735 = zext i16 %431 to i32
  br label %cond.end.748

cond.false.736:                                   ; preds = %if.then.725
  %432 = load i32, i32* %q676, align 4, !tbaa !22
  %add737 = add i32 %432, 1
  %conv738 = zext i32 %add737 to i64
  %mul739 = mul nsw i64 %conv738, 131070
  %433 = load i16, i16* %max_color, align 2, !tbaa !87
  %conv740 = zext i16 %433 to i64
  %add741 = add nsw i64 %mul739, %conv740
  %434 = load i16, i16* %max_color, align 2, !tbaa !87
  %conv742 = zext i16 %434 to i32
  %mul743 = mul nsw i32 %conv742, 2
  %conv744 = sext i32 %mul743 to i64
  %div745 = sdiv i64 %add741, %conv744
  %conv746 = trunc i64 %div745 to i16
  %conv747 = zext i16 %conv746 to i32
  br label %cond.end.748

cond.end.748:                                     ; preds = %cond.false.736, %cond.true.729
  %cond749 = phi i32 [ %conv735, %cond.true.729 ], [ %conv747, %cond.false.736 ]
  %conv750 = trunc i32 %cond749 to i16
  %435 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values751 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %435, i32 0, i32 0
  %arrayidx752 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values751, i32 0, i64 1
  %arrayidx753 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx752, i32 0, i64 3
  store i16 %conv750, i16* %arrayidx753, align 2, !tbaa !87
  %436 = load %struct.gx_ht_cache_s**, %struct.gx_ht_cache_s*** %caches.addr, align 8, !tbaa !1
  %arrayidx754 = getelementptr inbounds %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %436, i64 3
  %437 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %arrayidx754, align 8, !tbaa !1
  %render_ht755 = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %437, i32 0, i32 9
  %438 = load %struct.gx_ht_tile_s* (%struct.gx_ht_cache_s*, i32)*, %struct.gx_ht_tile_s* (%struct.gx_ht_cache_s*, i32)** %render_ht755, align 8, !tbaa !104
  %439 = load %struct.gx_ht_cache_s**, %struct.gx_ht_cache_s*** %caches.addr, align 8, !tbaa !1
  %arrayidx756 = getelementptr inbounds %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %439, i64 3
  %440 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %arrayidx756, align 8, !tbaa !1
  %441 = load i32, i32* %r682, align 4, !tbaa !22
  %call757 = call %struct.gx_ht_tile_s* %438(%struct.gx_ht_cache_s* %440, i32 %441) #6
  %tiles758 = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %call757, i32 0, i32 0
  %442 = bitcast %struct.gx_strip_bitmap_s* %tiles758 to %struct.gx_const_strip_bitmap_s*
  %443 = load %struct.gx_const_strip_bitmap_s**, %struct.gx_const_strip_bitmap_s*** %sbits.addr, align 8, !tbaa !1
  %arrayidx759 = getelementptr inbounds %struct.gx_const_strip_bitmap_s*, %struct.gx_const_strip_bitmap_s** %443, i64 3
  store %struct.gx_const_strip_bitmap_s* %442, %struct.gx_const_strip_bitmap_s** %arrayidx759, align 8, !tbaa !1
  br label %if.end.819

if.else.760:                                      ; preds = %if.else.723
  %444 = bitcast %struct.gx_device_halftone_s** %pdht761 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %444) #2
  %445 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %colors762 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %445, i32 0, i32 1
  %colored763 = bitcast %union._c* %colors762 to %struct._col*
  %c_ht764 = getelementptr inbounds %struct._col, %struct._col* %colored763, i32 0, i32 0
  %446 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %c_ht764, align 8, !tbaa !23
  store %struct.gx_device_halftone_s* %446, %struct.gx_device_halftone_s** %pdht761, align 8, !tbaa !1
  %447 = bitcast i32* %nlevels765 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %447) #2
  %448 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht761, align 8, !tbaa !1
  %components766 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %448, i32 0, i32 4
  %449 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components766, align 8, !tbaa !54
  %tobool767 = icmp ne %struct.gx_ht_order_component_s* %449, null
  br i1 %tobool767, label %cond.true.768, label %cond.false.773

cond.true.768:                                    ; preds = %if.else.760
  %450 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht761, align 8, !tbaa !1
  %components769 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %450, i32 0, i32 4
  %451 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components769, align 8, !tbaa !54
  %arrayidx770 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %451, i64 3
  %corder771 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx770, i32 0, i32 0
  %num_levels772 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %corder771, i32 0, i32 8
  %452 = load i32, i32* %num_levels772, align 4, !tbaa !102
  br label %cond.end.776

cond.false.773:                                   ; preds = %if.else.760
  %453 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht761, align 8, !tbaa !1
  %order774 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %453, i32 0, i32 0
  %num_levels775 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %order774, i32 0, i32 8
  %454 = load i32, i32* %num_levels775, align 4, !tbaa !103
  br label %cond.end.776

cond.end.776:                                     ; preds = %cond.false.773, %cond.true.768
  %cond777 = phi i32 [ %452, %cond.true.768 ], [ %454, %cond.false.773 ]
  store i32 %cond777, i32* %nlevels765, align 4, !tbaa !22
  %455 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values778 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %455, i32 0, i32 0
  %arrayidx779 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values778, i32 0, i64 0
  %arrayidx780 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx779, i32 0, i64 3
  %456 = load i16, i16* %arrayidx780, align 2, !tbaa !87
  %457 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values781 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %457, i32 0, i32 0
  %arrayidx782 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values781, i32 0, i64 1
  %arrayidx783 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx782, i32 0, i64 3
  store i16 %456, i16* %arrayidx783, align 2, !tbaa !87
  %458 = load i16, i16* %max_color, align 2, !tbaa !87
  %conv784 = zext i16 %458 to i32
  %cmp785 = icmp sle i32 %conv784, 7
  br i1 %cmp785, label %cond.true.787, label %cond.false.794

cond.true.787:                                    ; preds = %cond.end.776
  %459 = load i32, i32* %q676, align 4, !tbaa !22
  %add788 = add i32 %459, 1
  %idxprom789 = zext i32 %add788 to i64
  %460 = load i16, i16* %max_color, align 2, !tbaa !87
  %idxprom790 = zext i16 %460 to i64
  %arrayidx791 = getelementptr inbounds [8 x i16*], [8 x i16*]* @fc_color_quo, i32 0, i64 %idxprom790
  %461 = load i16*, i16** %arrayidx791, align 8, !tbaa !1
  %arrayidx792 = getelementptr inbounds i16, i16* %461, i64 %idxprom789
  %462 = load i16, i16* %arrayidx792, align 2, !tbaa !87
  %conv793 = zext i16 %462 to i32
  br label %cond.end.806

cond.false.794:                                   ; preds = %cond.end.776
  %463 = load i32, i32* %q676, align 4, !tbaa !22
  %add795 = add i32 %463, 1
  %conv796 = zext i32 %add795 to i64
  %mul797 = mul nsw i64 %conv796, 131070
  %464 = load i16, i16* %max_color, align 2, !tbaa !87
  %conv798 = zext i16 %464 to i64
  %add799 = add nsw i64 %mul797, %conv798
  %465 = load i16, i16* %max_color, align 2, !tbaa !87
  %conv800 = zext i16 %465 to i32
  %mul801 = mul nsw i32 %conv800, 2
  %conv802 = sext i32 %mul801 to i64
  %div803 = sdiv i64 %add799, %conv802
  %conv804 = trunc i64 %div803 to i16
  %conv805 = zext i16 %conv804 to i32
  br label %cond.end.806

cond.end.806:                                     ; preds = %cond.false.794, %cond.true.787
  %cond807 = phi i32 [ %conv793, %cond.true.787 ], [ %conv805, %cond.false.794 ]
  %conv808 = trunc i32 %cond807 to i16
  %466 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values809 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %466, i32 0, i32 0
  %arrayidx810 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values809, i32 0, i64 0
  %arrayidx811 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx810, i32 0, i64 3
  store i16 %conv808, i16* %arrayidx811, align 2, !tbaa !87
  %467 = load %struct.gx_ht_cache_s**, %struct.gx_ht_cache_s*** %caches.addr, align 8, !tbaa !1
  %arrayidx812 = getelementptr inbounds %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %467, i64 3
  %468 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %arrayidx812, align 8, !tbaa !1
  %render_ht813 = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %468, i32 0, i32 9
  %469 = load %struct.gx_ht_tile_s* (%struct.gx_ht_cache_s*, i32)*, %struct.gx_ht_tile_s* (%struct.gx_ht_cache_s*, i32)** %render_ht813, align 8, !tbaa !104
  %470 = load %struct.gx_ht_cache_s**, %struct.gx_ht_cache_s*** %caches.addr, align 8, !tbaa !1
  %arrayidx814 = getelementptr inbounds %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %470, i64 3
  %471 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %arrayidx814, align 8, !tbaa !1
  %472 = load i32, i32* %nlevels765, align 4, !tbaa !22
  %473 = load i32, i32* %r682, align 4, !tbaa !22
  %sub815 = sub i32 %472, %473
  %call816 = call %struct.gx_ht_tile_s* %469(%struct.gx_ht_cache_s* %471, i32 %sub815) #6
  %tiles817 = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %call816, i32 0, i32 0
  %474 = bitcast %struct.gx_strip_bitmap_s* %tiles817 to %struct.gx_const_strip_bitmap_s*
  %475 = load %struct.gx_const_strip_bitmap_s**, %struct.gx_const_strip_bitmap_s*** %sbits.addr, align 8, !tbaa !1
  %arrayidx818 = getelementptr inbounds %struct.gx_const_strip_bitmap_s*, %struct.gx_const_strip_bitmap_s** %475, i64 3
  store %struct.gx_const_strip_bitmap_s* %474, %struct.gx_const_strip_bitmap_s** %arrayidx818, align 8, !tbaa !1
  %476 = bitcast i32* %nlevels765 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %476) #2
  %477 = bitcast %struct.gx_device_halftone_s** %pdht761 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %477) #2
  br label %if.end.819

if.end.819:                                       ; preds = %cond.end.806, %cond.end.748
  br label %if.end.820

if.end.820:                                       ; preds = %if.end.819, %if.then.715
  %478 = bitcast i32* %r682 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %478) #2
  %479 = bitcast i32* %q676 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %479) #2
  br label %do.cond.821

do.cond.821:                                      ; preds = %if.end.820
  br label %do.end.822

do.end.822:                                       ; preds = %do.cond.821
  %480 = load i32, i32* %nplanes.addr, align 4, !tbaa !22
  %cmp823 = icmp sgt i32 %480, 4
  br i1 %cmp823, label %if.then.825, label %if.end.874

if.then.825:                                      ; preds = %do.end.822
  %481 = bitcast i32* %pi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %481) #2
  store i32 4, i32* %pi, align 4, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.825
  %482 = load i32, i32* %pi, align 4, !tbaa !22
  %483 = load i32, i32* %nplanes.addr, align 4, !tbaa !22
  %cmp826 = icmp slt i32 %482, %483
  br i1 %cmp826, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body.828

do.body.828:                                      ; preds = %for.body
  %484 = load i16, i16* %max_color, align 2, !tbaa !87
  %conv829 = zext i16 %484 to i32
  %cmp830 = icmp sle i32 %conv829, 7
  br i1 %cmp830, label %cond.true.832, label %cond.false.843

cond.true.832:                                    ; preds = %do.body.828
  %485 = load i32, i32* %pi, align 4, !tbaa !22
  %idxprom833 = sext i32 %485 to i64
  %486 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %colors834 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %486, i32 0, i32 1
  %colored835 = bitcast %union._c* %colors834 to %struct._col*
  %c_base836 = getelementptr inbounds %struct._col, %struct._col* %colored835, i32 0, i32 2
  %arrayidx837 = getelementptr inbounds [64 x i8], [64 x i8]* %c_base836, i32 0, i64 %idxprom833
  %487 = load i8, i8* %arrayidx837, align 1, !tbaa !24
  %idxprom838 = zext i8 %487 to i64
  %488 = load i16, i16* %max_color, align 2, !tbaa !87
  %idxprom839 = zext i16 %488 to i64
  %arrayidx840 = getelementptr inbounds [8 x i16*], [8 x i16*]* @fc_color_quo, i32 0, i64 %idxprom839
  %489 = load i16*, i16** %arrayidx840, align 8, !tbaa !1
  %arrayidx841 = getelementptr inbounds i16, i16* %489, i64 %idxprom838
  %490 = load i16, i16* %arrayidx841, align 2, !tbaa !87
  %conv842 = zext i16 %490 to i32
  br label %cond.end.859

cond.false.843:                                   ; preds = %do.body.828
  %491 = load i32, i32* %pi, align 4, !tbaa !22
  %idxprom844 = sext i32 %491 to i64
  %492 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %colors845 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %492, i32 0, i32 1
  %colored846 = bitcast %union._c* %colors845 to %struct._col*
  %c_base847 = getelementptr inbounds %struct._col, %struct._col* %colored846, i32 0, i32 2
  %arrayidx848 = getelementptr inbounds [64 x i8], [64 x i8]* %c_base847, i32 0, i64 %idxprom844
  %493 = load i8, i8* %arrayidx848, align 1, !tbaa !24
  %conv849 = zext i8 %493 to i64
  %mul850 = mul nsw i64 %conv849, 131070
  %494 = load i16, i16* %max_color, align 2, !tbaa !87
  %conv851 = zext i16 %494 to i64
  %add852 = add nsw i64 %mul850, %conv851
  %495 = load i16, i16* %max_color, align 2, !tbaa !87
  %conv853 = zext i16 %495 to i32
  %mul854 = mul nsw i32 %conv853, 2
  %conv855 = sext i32 %mul854 to i64
  %div856 = sdiv i64 %add852, %conv855
  %conv857 = trunc i64 %div856 to i16
  %conv858 = zext i16 %conv857 to i32
  br label %cond.end.859

cond.end.859:                                     ; preds = %cond.false.843, %cond.true.832
  %cond860 = phi i32 [ %conv842, %cond.true.832 ], [ %conv858, %cond.false.843 ]
  %conv861 = trunc i32 %cond860 to i16
  %496 = load i32, i32* %pi, align 4, !tbaa !22
  %idxprom862 = sext i32 %496 to i64
  %497 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values863 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %497, i32 0, i32 0
  %arrayidx864 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values863, i32 0, i64 0
  %arrayidx865 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx864, i32 0, i64 %idxprom862
  store i16 %conv861, i16* %arrayidx865, align 2, !tbaa !87
  %498 = load i32, i32* %pi, align 4, !tbaa !22
  %idxprom866 = sext i32 %498 to i64
  %499 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values867 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %499, i32 0, i32 0
  %arrayidx868 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values867, i32 0, i64 1
  %arrayidx869 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx868, i32 0, i64 %idxprom866
  store i16 %conv861, i16* %arrayidx869, align 2, !tbaa !87
  %500 = load i32, i32* %pi, align 4, !tbaa !22
  %idxprom870 = sext i32 %500 to i64
  %501 = load %struct.gx_const_strip_bitmap_s**, %struct.gx_const_strip_bitmap_s*** %sbits.addr, align 8, !tbaa !1
  %arrayidx871 = getelementptr inbounds %struct.gx_const_strip_bitmap_s*, %struct.gx_const_strip_bitmap_s** %501, i64 %idxprom870
  store %struct.gx_const_strip_bitmap_s* @ht_no_bitmap, %struct.gx_const_strip_bitmap_s** %arrayidx871, align 8, !tbaa !1
  br label %do.cond.872

do.cond.872:                                      ; preds = %cond.end.859
  br label %do.end.873

do.end.873:                                       ; preds = %do.cond.872
  br label %for.inc

for.inc:                                          ; preds = %do.end.873
  %502 = load i32, i32* %pi, align 4, !tbaa !22
  %inc = add nsw i32 %502, 1
  store i32 %inc, i32* %pi, align 4, !tbaa !22
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %503 = bitcast i32* %pi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %503) #2
  br label %if.end.874

if.end.874:                                       ; preds = %for.end, %do.end.822
  %504 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %colors875 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %504, i32 0, i32 1
  %colored876 = bitcast %union._c* %colors875 to %struct._col*
  %plane_mask = getelementptr inbounds %struct._col, %struct._col* %colored876, i32 0, i32 5
  %505 = load i64, i64* %plane_mask, align 8, !tbaa !38
  %conv877 = trunc i64 %505 to i32
  switch i32 %conv877, label %sw.epilog [
    i32 15, label %sw.bb
    i32 7, label %sw.bb.1046
    i32 3, label %sw.bb.1131
    i32 1, label %sw.bb.1174
    i32 14, label %sw.bb.1196
    i32 6, label %sw.bb.1281
    i32 2, label %sw.bb.1324
    i32 13, label %sw.bb.1346
    i32 5, label %sw.bb.1431
    i32 12, label %sw.bb.1474
    i32 4, label %sw.bb.1517
    i32 11, label %sw.bb.1539
    i32 10, label %sw.bb.1624
    i32 9, label %sw.bb.1667
    i32 8, label %sw.bb.1710
    i32 0, label %sw.bb.1732
  ]

sw.bb:                                            ; preds = %if.end.874
  %506 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values878 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %506, i32 0, i32 0
  %arrayidx879 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values878, i32 0, i64 1
  %arrayidx880 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx879, i32 0, i64 0
  %507 = load i16, i16* %arrayidx880, align 2, !tbaa !87
  %arrayidx881 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 0
  store i16 %507, i16* %arrayidx881, align 2, !tbaa !87
  %508 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values882 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %508, i32 0, i32 0
  %arrayidx883 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values882, i32 0, i64 1
  %arrayidx884 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx883, i32 0, i64 1
  %509 = load i16, i16* %arrayidx884, align 2, !tbaa !87
  %arrayidx885 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 1
  store i16 %509, i16* %arrayidx885, align 2, !tbaa !87
  %510 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values886 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %510, i32 0, i32 0
  %arrayidx887 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values886, i32 0, i64 1
  %arrayidx888 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx887, i32 0, i64 2
  %511 = load i16, i16* %arrayidx888, align 2, !tbaa !87
  %arrayidx889 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 2
  store i16 %511, i16* %arrayidx889, align 2, !tbaa !87
  %512 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values890 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %512, i32 0, i32 0
  %arrayidx891 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values890, i32 0, i64 1
  %arrayidx892 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx891, i32 0, i64 3
  %513 = load i16, i16* %arrayidx892, align 2, !tbaa !87
  %arrayidx893 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 3
  store i16 %513, i16* %arrayidx893, align 2, !tbaa !87
  %514 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs894 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %514, i32 0, i32 42
  %encode_color895 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs894, i32 0, i32 51
  %515 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color895, align 8, !tbaa !108
  %516 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay896 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i32 0
  %call897 = call i64 %515(%struct.gx_device_s* %516, i16* %arraydecay896) #6
  %517 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx898 = getelementptr inbounds i64, i64* %517, i64 15
  store i64 %call897, i64* %arrayidx898, align 8, !tbaa !86
  %518 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values899 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %518, i32 0, i32 0
  %arrayidx900 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values899, i32 0, i64 0
  %arrayidx901 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx900, i32 0, i64 0
  %519 = load i16, i16* %arrayidx901, align 2, !tbaa !87
  %arrayidx902 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 0
  store i16 %519, i16* %arrayidx902, align 2, !tbaa !87
  %520 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values903 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %520, i32 0, i32 0
  %arrayidx904 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values903, i32 0, i64 1
  %arrayidx905 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx904, i32 0, i64 1
  %521 = load i16, i16* %arrayidx905, align 2, !tbaa !87
  %arrayidx906 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 1
  store i16 %521, i16* %arrayidx906, align 2, !tbaa !87
  %522 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values907 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %522, i32 0, i32 0
  %arrayidx908 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values907, i32 0, i64 1
  %arrayidx909 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx908, i32 0, i64 2
  %523 = load i16, i16* %arrayidx909, align 2, !tbaa !87
  %arrayidx910 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 2
  store i16 %523, i16* %arrayidx910, align 2, !tbaa !87
  %524 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values911 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %524, i32 0, i32 0
  %arrayidx912 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values911, i32 0, i64 1
  %arrayidx913 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx912, i32 0, i64 3
  %525 = load i16, i16* %arrayidx913, align 2, !tbaa !87
  %arrayidx914 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 3
  store i16 %525, i16* %arrayidx914, align 2, !tbaa !87
  %526 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs915 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %526, i32 0, i32 42
  %encode_color916 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs915, i32 0, i32 51
  %527 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color916, align 8, !tbaa !108
  %528 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay917 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i32 0
  %call918 = call i64 %527(%struct.gx_device_s* %528, i16* %arraydecay917) #6
  %529 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx919 = getelementptr inbounds i64, i64* %529, i64 14
  store i64 %call918, i64* %arrayidx919, align 8, !tbaa !86
  %530 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values920 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %530, i32 0, i32 0
  %arrayidx921 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values920, i32 0, i64 1
  %arrayidx922 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx921, i32 0, i64 0
  %531 = load i16, i16* %arrayidx922, align 2, !tbaa !87
  %arrayidx923 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 0
  store i16 %531, i16* %arrayidx923, align 2, !tbaa !87
  %532 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values924 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %532, i32 0, i32 0
  %arrayidx925 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values924, i32 0, i64 0
  %arrayidx926 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx925, i32 0, i64 1
  %533 = load i16, i16* %arrayidx926, align 2, !tbaa !87
  %arrayidx927 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 1
  store i16 %533, i16* %arrayidx927, align 2, !tbaa !87
  %534 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values928 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %534, i32 0, i32 0
  %arrayidx929 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values928, i32 0, i64 1
  %arrayidx930 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx929, i32 0, i64 2
  %535 = load i16, i16* %arrayidx930, align 2, !tbaa !87
  %arrayidx931 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 2
  store i16 %535, i16* %arrayidx931, align 2, !tbaa !87
  %536 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values932 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %536, i32 0, i32 0
  %arrayidx933 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values932, i32 0, i64 1
  %arrayidx934 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx933, i32 0, i64 3
  %537 = load i16, i16* %arrayidx934, align 2, !tbaa !87
  %arrayidx935 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 3
  store i16 %537, i16* %arrayidx935, align 2, !tbaa !87
  %538 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs936 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %538, i32 0, i32 42
  %encode_color937 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs936, i32 0, i32 51
  %539 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color937, align 8, !tbaa !108
  %540 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay938 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i32 0
  %call939 = call i64 %539(%struct.gx_device_s* %540, i16* %arraydecay938) #6
  %541 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx940 = getelementptr inbounds i64, i64* %541, i64 13
  store i64 %call939, i64* %arrayidx940, align 8, !tbaa !86
  %542 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values941 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %542, i32 0, i32 0
  %arrayidx942 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values941, i32 0, i64 0
  %arrayidx943 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx942, i32 0, i64 0
  %543 = load i16, i16* %arrayidx943, align 2, !tbaa !87
  %arrayidx944 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 0
  store i16 %543, i16* %arrayidx944, align 2, !tbaa !87
  %544 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values945 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %544, i32 0, i32 0
  %arrayidx946 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values945, i32 0, i64 0
  %arrayidx947 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx946, i32 0, i64 1
  %545 = load i16, i16* %arrayidx947, align 2, !tbaa !87
  %arrayidx948 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 1
  store i16 %545, i16* %arrayidx948, align 2, !tbaa !87
  %546 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values949 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %546, i32 0, i32 0
  %arrayidx950 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values949, i32 0, i64 1
  %arrayidx951 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx950, i32 0, i64 2
  %547 = load i16, i16* %arrayidx951, align 2, !tbaa !87
  %arrayidx952 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 2
  store i16 %547, i16* %arrayidx952, align 2, !tbaa !87
  %548 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values953 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %548, i32 0, i32 0
  %arrayidx954 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values953, i32 0, i64 1
  %arrayidx955 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx954, i32 0, i64 3
  %549 = load i16, i16* %arrayidx955, align 2, !tbaa !87
  %arrayidx956 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 3
  store i16 %549, i16* %arrayidx956, align 2, !tbaa !87
  %550 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs957 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %550, i32 0, i32 42
  %encode_color958 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs957, i32 0, i32 51
  %551 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color958, align 8, !tbaa !108
  %552 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay959 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i32 0
  %call960 = call i64 %551(%struct.gx_device_s* %552, i16* %arraydecay959) #6
  %553 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx961 = getelementptr inbounds i64, i64* %553, i64 12
  store i64 %call960, i64* %arrayidx961, align 8, !tbaa !86
  %554 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values962 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %554, i32 0, i32 0
  %arrayidx963 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values962, i32 0, i64 1
  %arrayidx964 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx963, i32 0, i64 0
  %555 = load i16, i16* %arrayidx964, align 2, !tbaa !87
  %arrayidx965 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 0
  store i16 %555, i16* %arrayidx965, align 2, !tbaa !87
  %556 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values966 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %556, i32 0, i32 0
  %arrayidx967 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values966, i32 0, i64 1
  %arrayidx968 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx967, i32 0, i64 1
  %557 = load i16, i16* %arrayidx968, align 2, !tbaa !87
  %arrayidx969 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 1
  store i16 %557, i16* %arrayidx969, align 2, !tbaa !87
  %558 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values970 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %558, i32 0, i32 0
  %arrayidx971 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values970, i32 0, i64 0
  %arrayidx972 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx971, i32 0, i64 2
  %559 = load i16, i16* %arrayidx972, align 2, !tbaa !87
  %arrayidx973 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 2
  store i16 %559, i16* %arrayidx973, align 2, !tbaa !87
  %560 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values974 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %560, i32 0, i32 0
  %arrayidx975 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values974, i32 0, i64 1
  %arrayidx976 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx975, i32 0, i64 3
  %561 = load i16, i16* %arrayidx976, align 2, !tbaa !87
  %arrayidx977 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 3
  store i16 %561, i16* %arrayidx977, align 2, !tbaa !87
  %562 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs978 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %562, i32 0, i32 42
  %encode_color979 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs978, i32 0, i32 51
  %563 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color979, align 8, !tbaa !108
  %564 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay980 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i32 0
  %call981 = call i64 %563(%struct.gx_device_s* %564, i16* %arraydecay980) #6
  %565 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx982 = getelementptr inbounds i64, i64* %565, i64 11
  store i64 %call981, i64* %arrayidx982, align 8, !tbaa !86
  %566 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values983 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %566, i32 0, i32 0
  %arrayidx984 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values983, i32 0, i64 0
  %arrayidx985 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx984, i32 0, i64 0
  %567 = load i16, i16* %arrayidx985, align 2, !tbaa !87
  %arrayidx986 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 0
  store i16 %567, i16* %arrayidx986, align 2, !tbaa !87
  %568 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values987 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %568, i32 0, i32 0
  %arrayidx988 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values987, i32 0, i64 1
  %arrayidx989 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx988, i32 0, i64 1
  %569 = load i16, i16* %arrayidx989, align 2, !tbaa !87
  %arrayidx990 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 1
  store i16 %569, i16* %arrayidx990, align 2, !tbaa !87
  %570 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values991 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %570, i32 0, i32 0
  %arrayidx992 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values991, i32 0, i64 0
  %arrayidx993 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx992, i32 0, i64 2
  %571 = load i16, i16* %arrayidx993, align 2, !tbaa !87
  %arrayidx994 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 2
  store i16 %571, i16* %arrayidx994, align 2, !tbaa !87
  %572 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values995 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %572, i32 0, i32 0
  %arrayidx996 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values995, i32 0, i64 1
  %arrayidx997 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx996, i32 0, i64 3
  %573 = load i16, i16* %arrayidx997, align 2, !tbaa !87
  %arrayidx998 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 3
  store i16 %573, i16* %arrayidx998, align 2, !tbaa !87
  %574 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs999 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %574, i32 0, i32 42
  %encode_color1000 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs999, i32 0, i32 51
  %575 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color1000, align 8, !tbaa !108
  %576 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay1001 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i32 0
  %call1002 = call i64 %575(%struct.gx_device_s* %576, i16* %arraydecay1001) #6
  %577 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx1003 = getelementptr inbounds i64, i64* %577, i64 10
  store i64 %call1002, i64* %arrayidx1003, align 8, !tbaa !86
  %578 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1004 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %578, i32 0, i32 0
  %arrayidx1005 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1004, i32 0, i64 1
  %arrayidx1006 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1005, i32 0, i64 0
  %579 = load i16, i16* %arrayidx1006, align 2, !tbaa !87
  %arrayidx1007 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 0
  store i16 %579, i16* %arrayidx1007, align 2, !tbaa !87
  %580 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1008 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %580, i32 0, i32 0
  %arrayidx1009 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1008, i32 0, i64 0
  %arrayidx1010 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1009, i32 0, i64 1
  %581 = load i16, i16* %arrayidx1010, align 2, !tbaa !87
  %arrayidx1011 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 1
  store i16 %581, i16* %arrayidx1011, align 2, !tbaa !87
  %582 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1012 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %582, i32 0, i32 0
  %arrayidx1013 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1012, i32 0, i64 0
  %arrayidx1014 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1013, i32 0, i64 2
  %583 = load i16, i16* %arrayidx1014, align 2, !tbaa !87
  %arrayidx1015 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 2
  store i16 %583, i16* %arrayidx1015, align 2, !tbaa !87
  %584 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1016 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %584, i32 0, i32 0
  %arrayidx1017 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1016, i32 0, i64 1
  %arrayidx1018 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1017, i32 0, i64 3
  %585 = load i16, i16* %arrayidx1018, align 2, !tbaa !87
  %arrayidx1019 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 3
  store i16 %585, i16* %arrayidx1019, align 2, !tbaa !87
  %586 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs1020 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %586, i32 0, i32 42
  %encode_color1021 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1020, i32 0, i32 51
  %587 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color1021, align 8, !tbaa !108
  %588 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay1022 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i32 0
  %call1023 = call i64 %587(%struct.gx_device_s* %588, i16* %arraydecay1022) #6
  %589 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx1024 = getelementptr inbounds i64, i64* %589, i64 9
  store i64 %call1023, i64* %arrayidx1024, align 8, !tbaa !86
  %590 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1025 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %590, i32 0, i32 0
  %arrayidx1026 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1025, i32 0, i64 0
  %arrayidx1027 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1026, i32 0, i64 0
  %591 = load i16, i16* %arrayidx1027, align 2, !tbaa !87
  %arrayidx1028 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 0
  store i16 %591, i16* %arrayidx1028, align 2, !tbaa !87
  %592 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1029 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %592, i32 0, i32 0
  %arrayidx1030 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1029, i32 0, i64 0
  %arrayidx1031 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1030, i32 0, i64 1
  %593 = load i16, i16* %arrayidx1031, align 2, !tbaa !87
  %arrayidx1032 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 1
  store i16 %593, i16* %arrayidx1032, align 2, !tbaa !87
  %594 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1033 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %594, i32 0, i32 0
  %arrayidx1034 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1033, i32 0, i64 0
  %arrayidx1035 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1034, i32 0, i64 2
  %595 = load i16, i16* %arrayidx1035, align 2, !tbaa !87
  %arrayidx1036 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 2
  store i16 %595, i16* %arrayidx1036, align 2, !tbaa !87
  %596 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1037 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %596, i32 0, i32 0
  %arrayidx1038 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1037, i32 0, i64 1
  %arrayidx1039 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1038, i32 0, i64 3
  %597 = load i16, i16* %arrayidx1039, align 2, !tbaa !87
  %arrayidx1040 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 3
  store i16 %597, i16* %arrayidx1040, align 2, !tbaa !87
  %598 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs1041 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %598, i32 0, i32 42
  %encode_color1042 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1041, i32 0, i32 51
  %599 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color1042, align 8, !tbaa !108
  %600 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay1043 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i32 0
  %call1044 = call i64 %599(%struct.gx_device_s* %600, i16* %arraydecay1043) #6
  %601 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx1045 = getelementptr inbounds i64, i64* %601, i64 8
  store i64 %call1044, i64* %arrayidx1045, align 8, !tbaa !86
  br label %sw.bb.1046

sw.bb.1046:                                       ; preds = %if.end.874, %sw.bb
  %602 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1047 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %602, i32 0, i32 0
  %arrayidx1048 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1047, i32 0, i64 1
  %arrayidx1049 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1048, i32 0, i64 0
  %603 = load i16, i16* %arrayidx1049, align 2, !tbaa !87
  %arrayidx1050 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 0
  store i16 %603, i16* %arrayidx1050, align 2, !tbaa !87
  %604 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1051 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %604, i32 0, i32 0
  %arrayidx1052 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1051, i32 0, i64 1
  %arrayidx1053 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1052, i32 0, i64 1
  %605 = load i16, i16* %arrayidx1053, align 2, !tbaa !87
  %arrayidx1054 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 1
  store i16 %605, i16* %arrayidx1054, align 2, !tbaa !87
  %606 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1055 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %606, i32 0, i32 0
  %arrayidx1056 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1055, i32 0, i64 1
  %arrayidx1057 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1056, i32 0, i64 2
  %607 = load i16, i16* %arrayidx1057, align 2, !tbaa !87
  %arrayidx1058 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 2
  store i16 %607, i16* %arrayidx1058, align 2, !tbaa !87
  %608 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1059 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %608, i32 0, i32 0
  %arrayidx1060 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1059, i32 0, i64 0
  %arrayidx1061 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1060, i32 0, i64 3
  %609 = load i16, i16* %arrayidx1061, align 2, !tbaa !87
  %arrayidx1062 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 3
  store i16 %609, i16* %arrayidx1062, align 2, !tbaa !87
  %610 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs1063 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %610, i32 0, i32 42
  %encode_color1064 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1063, i32 0, i32 51
  %611 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color1064, align 8, !tbaa !108
  %612 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay1065 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i32 0
  %call1066 = call i64 %611(%struct.gx_device_s* %612, i16* %arraydecay1065) #6
  %613 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx1067 = getelementptr inbounds i64, i64* %613, i64 7
  store i64 %call1066, i64* %arrayidx1067, align 8, !tbaa !86
  %614 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1068 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %614, i32 0, i32 0
  %arrayidx1069 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1068, i32 0, i64 0
  %arrayidx1070 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1069, i32 0, i64 0
  %615 = load i16, i16* %arrayidx1070, align 2, !tbaa !87
  %arrayidx1071 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 0
  store i16 %615, i16* %arrayidx1071, align 2, !tbaa !87
  %616 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1072 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %616, i32 0, i32 0
  %arrayidx1073 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1072, i32 0, i64 1
  %arrayidx1074 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1073, i32 0, i64 1
  %617 = load i16, i16* %arrayidx1074, align 2, !tbaa !87
  %arrayidx1075 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 1
  store i16 %617, i16* %arrayidx1075, align 2, !tbaa !87
  %618 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1076 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %618, i32 0, i32 0
  %arrayidx1077 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1076, i32 0, i64 1
  %arrayidx1078 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1077, i32 0, i64 2
  %619 = load i16, i16* %arrayidx1078, align 2, !tbaa !87
  %arrayidx1079 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 2
  store i16 %619, i16* %arrayidx1079, align 2, !tbaa !87
  %620 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1080 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %620, i32 0, i32 0
  %arrayidx1081 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1080, i32 0, i64 0
  %arrayidx1082 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1081, i32 0, i64 3
  %621 = load i16, i16* %arrayidx1082, align 2, !tbaa !87
  %arrayidx1083 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 3
  store i16 %621, i16* %arrayidx1083, align 2, !tbaa !87
  %622 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs1084 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %622, i32 0, i32 42
  %encode_color1085 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1084, i32 0, i32 51
  %623 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color1085, align 8, !tbaa !108
  %624 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay1086 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i32 0
  %call1087 = call i64 %623(%struct.gx_device_s* %624, i16* %arraydecay1086) #6
  %625 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx1088 = getelementptr inbounds i64, i64* %625, i64 6
  store i64 %call1087, i64* %arrayidx1088, align 8, !tbaa !86
  %626 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1089 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %626, i32 0, i32 0
  %arrayidx1090 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1089, i32 0, i64 1
  %arrayidx1091 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1090, i32 0, i64 0
  %627 = load i16, i16* %arrayidx1091, align 2, !tbaa !87
  %arrayidx1092 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 0
  store i16 %627, i16* %arrayidx1092, align 2, !tbaa !87
  %628 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1093 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %628, i32 0, i32 0
  %arrayidx1094 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1093, i32 0, i64 0
  %arrayidx1095 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1094, i32 0, i64 1
  %629 = load i16, i16* %arrayidx1095, align 2, !tbaa !87
  %arrayidx1096 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 1
  store i16 %629, i16* %arrayidx1096, align 2, !tbaa !87
  %630 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1097 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %630, i32 0, i32 0
  %arrayidx1098 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1097, i32 0, i64 1
  %arrayidx1099 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1098, i32 0, i64 2
  %631 = load i16, i16* %arrayidx1099, align 2, !tbaa !87
  %arrayidx1100 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 2
  store i16 %631, i16* %arrayidx1100, align 2, !tbaa !87
  %632 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1101 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %632, i32 0, i32 0
  %arrayidx1102 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1101, i32 0, i64 0
  %arrayidx1103 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1102, i32 0, i64 3
  %633 = load i16, i16* %arrayidx1103, align 2, !tbaa !87
  %arrayidx1104 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 3
  store i16 %633, i16* %arrayidx1104, align 2, !tbaa !87
  %634 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs1105 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %634, i32 0, i32 42
  %encode_color1106 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1105, i32 0, i32 51
  %635 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color1106, align 8, !tbaa !108
  %636 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay1107 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i32 0
  %call1108 = call i64 %635(%struct.gx_device_s* %636, i16* %arraydecay1107) #6
  %637 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx1109 = getelementptr inbounds i64, i64* %637, i64 5
  store i64 %call1108, i64* %arrayidx1109, align 8, !tbaa !86
  %638 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1110 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %638, i32 0, i32 0
  %arrayidx1111 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1110, i32 0, i64 0
  %arrayidx1112 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1111, i32 0, i64 0
  %639 = load i16, i16* %arrayidx1112, align 2, !tbaa !87
  %arrayidx1113 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 0
  store i16 %639, i16* %arrayidx1113, align 2, !tbaa !87
  %640 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1114 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %640, i32 0, i32 0
  %arrayidx1115 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1114, i32 0, i64 0
  %arrayidx1116 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1115, i32 0, i64 1
  %641 = load i16, i16* %arrayidx1116, align 2, !tbaa !87
  %arrayidx1117 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 1
  store i16 %641, i16* %arrayidx1117, align 2, !tbaa !87
  %642 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1118 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %642, i32 0, i32 0
  %arrayidx1119 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1118, i32 0, i64 1
  %arrayidx1120 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1119, i32 0, i64 2
  %643 = load i16, i16* %arrayidx1120, align 2, !tbaa !87
  %arrayidx1121 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 2
  store i16 %643, i16* %arrayidx1121, align 2, !tbaa !87
  %644 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1122 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %644, i32 0, i32 0
  %arrayidx1123 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1122, i32 0, i64 0
  %arrayidx1124 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1123, i32 0, i64 3
  %645 = load i16, i16* %arrayidx1124, align 2, !tbaa !87
  %arrayidx1125 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 3
  store i16 %645, i16* %arrayidx1125, align 2, !tbaa !87
  %646 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs1126 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %646, i32 0, i32 42
  %encode_color1127 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1126, i32 0, i32 51
  %647 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color1127, align 8, !tbaa !108
  %648 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay1128 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i32 0
  %call1129 = call i64 %647(%struct.gx_device_s* %648, i16* %arraydecay1128) #6
  %649 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx1130 = getelementptr inbounds i64, i64* %649, i64 4
  store i64 %call1129, i64* %arrayidx1130, align 8, !tbaa !86
  br label %c3

c3:                                               ; preds = %sw.bb.1539, %sw.bb.1046
  br label %sw.bb.1131

sw.bb.1131:                                       ; preds = %if.end.874, %c3
  %650 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1132 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %650, i32 0, i32 0
  %arrayidx1133 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1132, i32 0, i64 1
  %arrayidx1134 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1133, i32 0, i64 0
  %651 = load i16, i16* %arrayidx1134, align 2, !tbaa !87
  %arrayidx1135 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 0
  store i16 %651, i16* %arrayidx1135, align 2, !tbaa !87
  %652 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1136 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %652, i32 0, i32 0
  %arrayidx1137 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1136, i32 0, i64 1
  %arrayidx1138 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1137, i32 0, i64 1
  %653 = load i16, i16* %arrayidx1138, align 2, !tbaa !87
  %arrayidx1139 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 1
  store i16 %653, i16* %arrayidx1139, align 2, !tbaa !87
  %654 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1140 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %654, i32 0, i32 0
  %arrayidx1141 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1140, i32 0, i64 0
  %arrayidx1142 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1141, i32 0, i64 2
  %655 = load i16, i16* %arrayidx1142, align 2, !tbaa !87
  %arrayidx1143 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 2
  store i16 %655, i16* %arrayidx1143, align 2, !tbaa !87
  %656 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1144 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %656, i32 0, i32 0
  %arrayidx1145 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1144, i32 0, i64 0
  %arrayidx1146 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1145, i32 0, i64 3
  %657 = load i16, i16* %arrayidx1146, align 2, !tbaa !87
  %arrayidx1147 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 3
  store i16 %657, i16* %arrayidx1147, align 2, !tbaa !87
  %658 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs1148 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %658, i32 0, i32 42
  %encode_color1149 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1148, i32 0, i32 51
  %659 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color1149, align 8, !tbaa !108
  %660 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay1150 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i32 0
  %call1151 = call i64 %659(%struct.gx_device_s* %660, i16* %arraydecay1150) #6
  %661 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx1152 = getelementptr inbounds i64, i64* %661, i64 3
  store i64 %call1151, i64* %arrayidx1152, align 8, !tbaa !86
  %662 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1153 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %662, i32 0, i32 0
  %arrayidx1154 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1153, i32 0, i64 0
  %arrayidx1155 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1154, i32 0, i64 0
  %663 = load i16, i16* %arrayidx1155, align 2, !tbaa !87
  %arrayidx1156 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 0
  store i16 %663, i16* %arrayidx1156, align 2, !tbaa !87
  %664 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1157 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %664, i32 0, i32 0
  %arrayidx1158 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1157, i32 0, i64 1
  %arrayidx1159 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1158, i32 0, i64 1
  %665 = load i16, i16* %arrayidx1159, align 2, !tbaa !87
  %arrayidx1160 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 1
  store i16 %665, i16* %arrayidx1160, align 2, !tbaa !87
  %666 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1161 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %666, i32 0, i32 0
  %arrayidx1162 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1161, i32 0, i64 0
  %arrayidx1163 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1162, i32 0, i64 2
  %667 = load i16, i16* %arrayidx1163, align 2, !tbaa !87
  %arrayidx1164 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 2
  store i16 %667, i16* %arrayidx1164, align 2, !tbaa !87
  %668 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1165 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %668, i32 0, i32 0
  %arrayidx1166 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1165, i32 0, i64 0
  %arrayidx1167 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1166, i32 0, i64 3
  %669 = load i16, i16* %arrayidx1167, align 2, !tbaa !87
  %arrayidx1168 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 3
  store i16 %669, i16* %arrayidx1168, align 2, !tbaa !87
  %670 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs1169 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %670, i32 0, i32 42
  %encode_color1170 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1169, i32 0, i32 51
  %671 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color1170, align 8, !tbaa !108
  %672 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay1171 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i32 0
  %call1172 = call i64 %671(%struct.gx_device_s* %672, i16* %arraydecay1171) #6
  %673 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx1173 = getelementptr inbounds i64, i64* %673, i64 2
  store i64 %call1172, i64* %arrayidx1173, align 8, !tbaa !86
  br label %c1

c1:                                               ; preds = %sw.bb.1667, %sw.bb.1431, %sw.bb.1131
  br label %sw.bb.1174

sw.bb.1174:                                       ; preds = %if.end.874, %c1
  %674 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1175 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %674, i32 0, i32 0
  %arrayidx1176 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1175, i32 0, i64 1
  %arrayidx1177 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1176, i32 0, i64 0
  %675 = load i16, i16* %arrayidx1177, align 2, !tbaa !87
  %arrayidx1178 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 0
  store i16 %675, i16* %arrayidx1178, align 2, !tbaa !87
  %676 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1179 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %676, i32 0, i32 0
  %arrayidx1180 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1179, i32 0, i64 0
  %arrayidx1181 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1180, i32 0, i64 1
  %677 = load i16, i16* %arrayidx1181, align 2, !tbaa !87
  %arrayidx1182 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 1
  store i16 %677, i16* %arrayidx1182, align 2, !tbaa !87
  %678 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1183 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %678, i32 0, i32 0
  %arrayidx1184 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1183, i32 0, i64 0
  %arrayidx1185 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1184, i32 0, i64 2
  %679 = load i16, i16* %arrayidx1185, align 2, !tbaa !87
  %arrayidx1186 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 2
  store i16 %679, i16* %arrayidx1186, align 2, !tbaa !87
  %680 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1187 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %680, i32 0, i32 0
  %arrayidx1188 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1187, i32 0, i64 0
  %arrayidx1189 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1188, i32 0, i64 3
  %681 = load i16, i16* %arrayidx1189, align 2, !tbaa !87
  %arrayidx1190 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 3
  store i16 %681, i16* %arrayidx1190, align 2, !tbaa !87
  %682 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs1191 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %682, i32 0, i32 42
  %encode_color1192 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1191, i32 0, i32 51
  %683 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color1192, align 8, !tbaa !108
  %684 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay1193 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i32 0
  %call1194 = call i64 %683(%struct.gx_device_s* %684, i16* %arraydecay1193) #6
  %685 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx1195 = getelementptr inbounds i64, i64* %685, i64 1
  store i64 %call1194, i64* %arrayidx1195, align 8, !tbaa !86
  br label %sw.epilog

sw.bb.1196:                                       ; preds = %if.end.874
  %686 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1197 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %686, i32 0, i32 0
  %arrayidx1198 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1197, i32 0, i64 0
  %arrayidx1199 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1198, i32 0, i64 0
  %687 = load i16, i16* %arrayidx1199, align 2, !tbaa !87
  %arrayidx1200 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 0
  store i16 %687, i16* %arrayidx1200, align 2, !tbaa !87
  %688 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1201 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %688, i32 0, i32 0
  %arrayidx1202 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1201, i32 0, i64 1
  %arrayidx1203 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1202, i32 0, i64 1
  %689 = load i16, i16* %arrayidx1203, align 2, !tbaa !87
  %arrayidx1204 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 1
  store i16 %689, i16* %arrayidx1204, align 2, !tbaa !87
  %690 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1205 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %690, i32 0, i32 0
  %arrayidx1206 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1205, i32 0, i64 1
  %arrayidx1207 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1206, i32 0, i64 2
  %691 = load i16, i16* %arrayidx1207, align 2, !tbaa !87
  %arrayidx1208 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 2
  store i16 %691, i16* %arrayidx1208, align 2, !tbaa !87
  %692 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1209 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %692, i32 0, i32 0
  %arrayidx1210 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1209, i32 0, i64 1
  %arrayidx1211 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1210, i32 0, i64 3
  %693 = load i16, i16* %arrayidx1211, align 2, !tbaa !87
  %arrayidx1212 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 3
  store i16 %693, i16* %arrayidx1212, align 2, !tbaa !87
  %694 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs1213 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %694, i32 0, i32 42
  %encode_color1214 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1213, i32 0, i32 51
  %695 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color1214, align 8, !tbaa !108
  %696 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay1215 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i32 0
  %call1216 = call i64 %695(%struct.gx_device_s* %696, i16* %arraydecay1215) #6
  %697 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx1217 = getelementptr inbounds i64, i64* %697, i64 14
  store i64 %call1216, i64* %arrayidx1217, align 8, !tbaa !86
  %698 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1218 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %698, i32 0, i32 0
  %arrayidx1219 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1218, i32 0, i64 0
  %arrayidx1220 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1219, i32 0, i64 0
  %699 = load i16, i16* %arrayidx1220, align 2, !tbaa !87
  %arrayidx1221 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 0
  store i16 %699, i16* %arrayidx1221, align 2, !tbaa !87
  %700 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1222 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %700, i32 0, i32 0
  %arrayidx1223 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1222, i32 0, i64 0
  %arrayidx1224 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1223, i32 0, i64 1
  %701 = load i16, i16* %arrayidx1224, align 2, !tbaa !87
  %arrayidx1225 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 1
  store i16 %701, i16* %arrayidx1225, align 2, !tbaa !87
  %702 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1226 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %702, i32 0, i32 0
  %arrayidx1227 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1226, i32 0, i64 1
  %arrayidx1228 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1227, i32 0, i64 2
  %703 = load i16, i16* %arrayidx1228, align 2, !tbaa !87
  %arrayidx1229 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 2
  store i16 %703, i16* %arrayidx1229, align 2, !tbaa !87
  %704 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1230 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %704, i32 0, i32 0
  %arrayidx1231 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1230, i32 0, i64 1
  %arrayidx1232 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1231, i32 0, i64 3
  %705 = load i16, i16* %arrayidx1232, align 2, !tbaa !87
  %arrayidx1233 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 3
  store i16 %705, i16* %arrayidx1233, align 2, !tbaa !87
  %706 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs1234 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %706, i32 0, i32 42
  %encode_color1235 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1234, i32 0, i32 51
  %707 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color1235, align 8, !tbaa !108
  %708 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay1236 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i32 0
  %call1237 = call i64 %707(%struct.gx_device_s* %708, i16* %arraydecay1236) #6
  %709 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx1238 = getelementptr inbounds i64, i64* %709, i64 12
  store i64 %call1237, i64* %arrayidx1238, align 8, !tbaa !86
  %710 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1239 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %710, i32 0, i32 0
  %arrayidx1240 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1239, i32 0, i64 0
  %arrayidx1241 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1240, i32 0, i64 0
  %711 = load i16, i16* %arrayidx1241, align 2, !tbaa !87
  %arrayidx1242 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 0
  store i16 %711, i16* %arrayidx1242, align 2, !tbaa !87
  %712 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1243 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %712, i32 0, i32 0
  %arrayidx1244 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1243, i32 0, i64 1
  %arrayidx1245 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1244, i32 0, i64 1
  %713 = load i16, i16* %arrayidx1245, align 2, !tbaa !87
  %arrayidx1246 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 1
  store i16 %713, i16* %arrayidx1246, align 2, !tbaa !87
  %714 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1247 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %714, i32 0, i32 0
  %arrayidx1248 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1247, i32 0, i64 0
  %arrayidx1249 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1248, i32 0, i64 2
  %715 = load i16, i16* %arrayidx1249, align 2, !tbaa !87
  %arrayidx1250 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 2
  store i16 %715, i16* %arrayidx1250, align 2, !tbaa !87
  %716 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1251 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %716, i32 0, i32 0
  %arrayidx1252 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1251, i32 0, i64 1
  %arrayidx1253 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1252, i32 0, i64 3
  %717 = load i16, i16* %arrayidx1253, align 2, !tbaa !87
  %arrayidx1254 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 3
  store i16 %717, i16* %arrayidx1254, align 2, !tbaa !87
  %718 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs1255 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %718, i32 0, i32 42
  %encode_color1256 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1255, i32 0, i32 51
  %719 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color1256, align 8, !tbaa !108
  %720 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay1257 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i32 0
  %call1258 = call i64 %719(%struct.gx_device_s* %720, i16* %arraydecay1257) #6
  %721 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx1259 = getelementptr inbounds i64, i64* %721, i64 10
  store i64 %call1258, i64* %arrayidx1259, align 8, !tbaa !86
  %722 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1260 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %722, i32 0, i32 0
  %arrayidx1261 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1260, i32 0, i64 0
  %arrayidx1262 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1261, i32 0, i64 0
  %723 = load i16, i16* %arrayidx1262, align 2, !tbaa !87
  %arrayidx1263 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 0
  store i16 %723, i16* %arrayidx1263, align 2, !tbaa !87
  %724 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1264 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %724, i32 0, i32 0
  %arrayidx1265 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1264, i32 0, i64 0
  %arrayidx1266 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1265, i32 0, i64 1
  %725 = load i16, i16* %arrayidx1266, align 2, !tbaa !87
  %arrayidx1267 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 1
  store i16 %725, i16* %arrayidx1267, align 2, !tbaa !87
  %726 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1268 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %726, i32 0, i32 0
  %arrayidx1269 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1268, i32 0, i64 0
  %arrayidx1270 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1269, i32 0, i64 2
  %727 = load i16, i16* %arrayidx1270, align 2, !tbaa !87
  %arrayidx1271 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 2
  store i16 %727, i16* %arrayidx1271, align 2, !tbaa !87
  %728 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1272 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %728, i32 0, i32 0
  %arrayidx1273 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1272, i32 0, i64 1
  %arrayidx1274 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1273, i32 0, i64 3
  %729 = load i16, i16* %arrayidx1274, align 2, !tbaa !87
  %arrayidx1275 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 3
  store i16 %729, i16* %arrayidx1275, align 2, !tbaa !87
  %730 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs1276 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %730, i32 0, i32 42
  %encode_color1277 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1276, i32 0, i32 51
  %731 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color1277, align 8, !tbaa !108
  %732 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay1278 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i32 0
  %call1279 = call i64 %731(%struct.gx_device_s* %732, i16* %arraydecay1278) #6
  %733 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx1280 = getelementptr inbounds i64, i64* %733, i64 8
  store i64 %call1279, i64* %arrayidx1280, align 8, !tbaa !86
  br label %sw.bb.1281

sw.bb.1281:                                       ; preds = %if.end.874, %sw.bb.1196
  %734 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1282 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %734, i32 0, i32 0
  %arrayidx1283 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1282, i32 0, i64 0
  %arrayidx1284 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1283, i32 0, i64 0
  %735 = load i16, i16* %arrayidx1284, align 2, !tbaa !87
  %arrayidx1285 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 0
  store i16 %735, i16* %arrayidx1285, align 2, !tbaa !87
  %736 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1286 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %736, i32 0, i32 0
  %arrayidx1287 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1286, i32 0, i64 1
  %arrayidx1288 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1287, i32 0, i64 1
  %737 = load i16, i16* %arrayidx1288, align 2, !tbaa !87
  %arrayidx1289 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 1
  store i16 %737, i16* %arrayidx1289, align 2, !tbaa !87
  %738 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1290 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %738, i32 0, i32 0
  %arrayidx1291 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1290, i32 0, i64 1
  %arrayidx1292 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1291, i32 0, i64 2
  %739 = load i16, i16* %arrayidx1292, align 2, !tbaa !87
  %arrayidx1293 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 2
  store i16 %739, i16* %arrayidx1293, align 2, !tbaa !87
  %740 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1294 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %740, i32 0, i32 0
  %arrayidx1295 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1294, i32 0, i64 0
  %arrayidx1296 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1295, i32 0, i64 3
  %741 = load i16, i16* %arrayidx1296, align 2, !tbaa !87
  %arrayidx1297 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 3
  store i16 %741, i16* %arrayidx1297, align 2, !tbaa !87
  %742 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs1298 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %742, i32 0, i32 42
  %encode_color1299 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1298, i32 0, i32 51
  %743 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color1299, align 8, !tbaa !108
  %744 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay1300 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i32 0
  %call1301 = call i64 %743(%struct.gx_device_s* %744, i16* %arraydecay1300) #6
  %745 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx1302 = getelementptr inbounds i64, i64* %745, i64 6
  store i64 %call1301, i64* %arrayidx1302, align 8, !tbaa !86
  %746 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1303 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %746, i32 0, i32 0
  %arrayidx1304 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1303, i32 0, i64 0
  %arrayidx1305 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1304, i32 0, i64 0
  %747 = load i16, i16* %arrayidx1305, align 2, !tbaa !87
  %arrayidx1306 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 0
  store i16 %747, i16* %arrayidx1306, align 2, !tbaa !87
  %748 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1307 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %748, i32 0, i32 0
  %arrayidx1308 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1307, i32 0, i64 0
  %arrayidx1309 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1308, i32 0, i64 1
  %749 = load i16, i16* %arrayidx1309, align 2, !tbaa !87
  %arrayidx1310 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 1
  store i16 %749, i16* %arrayidx1310, align 2, !tbaa !87
  %750 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1311 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %750, i32 0, i32 0
  %arrayidx1312 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1311, i32 0, i64 1
  %arrayidx1313 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1312, i32 0, i64 2
  %751 = load i16, i16* %arrayidx1313, align 2, !tbaa !87
  %arrayidx1314 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 2
  store i16 %751, i16* %arrayidx1314, align 2, !tbaa !87
  %752 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1315 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %752, i32 0, i32 0
  %arrayidx1316 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1315, i32 0, i64 0
  %arrayidx1317 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1316, i32 0, i64 3
  %753 = load i16, i16* %arrayidx1317, align 2, !tbaa !87
  %arrayidx1318 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 3
  store i16 %753, i16* %arrayidx1318, align 2, !tbaa !87
  %754 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs1319 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %754, i32 0, i32 42
  %encode_color1320 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1319, i32 0, i32 51
  %755 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color1320, align 8, !tbaa !108
  %756 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay1321 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i32 0
  %call1322 = call i64 %755(%struct.gx_device_s* %756, i16* %arraydecay1321) #6
  %757 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx1323 = getelementptr inbounds i64, i64* %757, i64 4
  store i64 %call1322, i64* %arrayidx1323, align 8, !tbaa !86
  br label %c2

c2:                                               ; preds = %sw.bb.1624, %sw.bb.1281
  br label %sw.bb.1324

sw.bb.1324:                                       ; preds = %if.end.874, %c2
  %758 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1325 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %758, i32 0, i32 0
  %arrayidx1326 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1325, i32 0, i64 0
  %arrayidx1327 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1326, i32 0, i64 0
  %759 = load i16, i16* %arrayidx1327, align 2, !tbaa !87
  %arrayidx1328 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 0
  store i16 %759, i16* %arrayidx1328, align 2, !tbaa !87
  %760 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1329 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %760, i32 0, i32 0
  %arrayidx1330 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1329, i32 0, i64 1
  %arrayidx1331 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1330, i32 0, i64 1
  %761 = load i16, i16* %arrayidx1331, align 2, !tbaa !87
  %arrayidx1332 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 1
  store i16 %761, i16* %arrayidx1332, align 2, !tbaa !87
  %762 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1333 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %762, i32 0, i32 0
  %arrayidx1334 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1333, i32 0, i64 0
  %arrayidx1335 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1334, i32 0, i64 2
  %763 = load i16, i16* %arrayidx1335, align 2, !tbaa !87
  %arrayidx1336 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 2
  store i16 %763, i16* %arrayidx1336, align 2, !tbaa !87
  %764 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1337 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %764, i32 0, i32 0
  %arrayidx1338 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1337, i32 0, i64 0
  %arrayidx1339 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1338, i32 0, i64 3
  %765 = load i16, i16* %arrayidx1339, align 2, !tbaa !87
  %arrayidx1340 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 3
  store i16 %765, i16* %arrayidx1340, align 2, !tbaa !87
  %766 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs1341 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %766, i32 0, i32 42
  %encode_color1342 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1341, i32 0, i32 51
  %767 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color1342, align 8, !tbaa !108
  %768 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay1343 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i32 0
  %call1344 = call i64 %767(%struct.gx_device_s* %768, i16* %arraydecay1343) #6
  %769 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx1345 = getelementptr inbounds i64, i64* %769, i64 2
  store i64 %call1344, i64* %arrayidx1345, align 8, !tbaa !86
  br label %sw.epilog

sw.bb.1346:                                       ; preds = %if.end.874
  %770 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1347 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %770, i32 0, i32 0
  %arrayidx1348 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1347, i32 0, i64 1
  %arrayidx1349 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1348, i32 0, i64 0
  %771 = load i16, i16* %arrayidx1349, align 2, !tbaa !87
  %arrayidx1350 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 0
  store i16 %771, i16* %arrayidx1350, align 2, !tbaa !87
  %772 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1351 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %772, i32 0, i32 0
  %arrayidx1352 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1351, i32 0, i64 0
  %arrayidx1353 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1352, i32 0, i64 1
  %773 = load i16, i16* %arrayidx1353, align 2, !tbaa !87
  %arrayidx1354 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 1
  store i16 %773, i16* %arrayidx1354, align 2, !tbaa !87
  %774 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1355 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %774, i32 0, i32 0
  %arrayidx1356 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1355, i32 0, i64 1
  %arrayidx1357 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1356, i32 0, i64 2
  %775 = load i16, i16* %arrayidx1357, align 2, !tbaa !87
  %arrayidx1358 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 2
  store i16 %775, i16* %arrayidx1358, align 2, !tbaa !87
  %776 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1359 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %776, i32 0, i32 0
  %arrayidx1360 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1359, i32 0, i64 1
  %arrayidx1361 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1360, i32 0, i64 3
  %777 = load i16, i16* %arrayidx1361, align 2, !tbaa !87
  %arrayidx1362 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 3
  store i16 %777, i16* %arrayidx1362, align 2, !tbaa !87
  %778 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs1363 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %778, i32 0, i32 42
  %encode_color1364 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1363, i32 0, i32 51
  %779 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color1364, align 8, !tbaa !108
  %780 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay1365 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i32 0
  %call1366 = call i64 %779(%struct.gx_device_s* %780, i16* %arraydecay1365) #6
  %781 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx1367 = getelementptr inbounds i64, i64* %781, i64 13
  store i64 %call1366, i64* %arrayidx1367, align 8, !tbaa !86
  %782 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1368 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %782, i32 0, i32 0
  %arrayidx1369 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1368, i32 0, i64 0
  %arrayidx1370 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1369, i32 0, i64 0
  %783 = load i16, i16* %arrayidx1370, align 2, !tbaa !87
  %arrayidx1371 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 0
  store i16 %783, i16* %arrayidx1371, align 2, !tbaa !87
  %784 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1372 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %784, i32 0, i32 0
  %arrayidx1373 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1372, i32 0, i64 0
  %arrayidx1374 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1373, i32 0, i64 1
  %785 = load i16, i16* %arrayidx1374, align 2, !tbaa !87
  %arrayidx1375 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 1
  store i16 %785, i16* %arrayidx1375, align 2, !tbaa !87
  %786 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1376 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %786, i32 0, i32 0
  %arrayidx1377 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1376, i32 0, i64 1
  %arrayidx1378 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1377, i32 0, i64 2
  %787 = load i16, i16* %arrayidx1378, align 2, !tbaa !87
  %arrayidx1379 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 2
  store i16 %787, i16* %arrayidx1379, align 2, !tbaa !87
  %788 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1380 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %788, i32 0, i32 0
  %arrayidx1381 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1380, i32 0, i64 1
  %arrayidx1382 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1381, i32 0, i64 3
  %789 = load i16, i16* %arrayidx1382, align 2, !tbaa !87
  %arrayidx1383 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 3
  store i16 %789, i16* %arrayidx1383, align 2, !tbaa !87
  %790 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs1384 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %790, i32 0, i32 42
  %encode_color1385 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1384, i32 0, i32 51
  %791 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color1385, align 8, !tbaa !108
  %792 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay1386 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i32 0
  %call1387 = call i64 %791(%struct.gx_device_s* %792, i16* %arraydecay1386) #6
  %793 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx1388 = getelementptr inbounds i64, i64* %793, i64 12
  store i64 %call1387, i64* %arrayidx1388, align 8, !tbaa !86
  %794 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1389 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %794, i32 0, i32 0
  %arrayidx1390 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1389, i32 0, i64 1
  %arrayidx1391 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1390, i32 0, i64 0
  %795 = load i16, i16* %arrayidx1391, align 2, !tbaa !87
  %arrayidx1392 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 0
  store i16 %795, i16* %arrayidx1392, align 2, !tbaa !87
  %796 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1393 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %796, i32 0, i32 0
  %arrayidx1394 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1393, i32 0, i64 0
  %arrayidx1395 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1394, i32 0, i64 1
  %797 = load i16, i16* %arrayidx1395, align 2, !tbaa !87
  %arrayidx1396 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 1
  store i16 %797, i16* %arrayidx1396, align 2, !tbaa !87
  %798 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1397 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %798, i32 0, i32 0
  %arrayidx1398 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1397, i32 0, i64 0
  %arrayidx1399 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1398, i32 0, i64 2
  %799 = load i16, i16* %arrayidx1399, align 2, !tbaa !87
  %arrayidx1400 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 2
  store i16 %799, i16* %arrayidx1400, align 2, !tbaa !87
  %800 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1401 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %800, i32 0, i32 0
  %arrayidx1402 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1401, i32 0, i64 1
  %arrayidx1403 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1402, i32 0, i64 3
  %801 = load i16, i16* %arrayidx1403, align 2, !tbaa !87
  %arrayidx1404 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 3
  store i16 %801, i16* %arrayidx1404, align 2, !tbaa !87
  %802 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs1405 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %802, i32 0, i32 42
  %encode_color1406 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1405, i32 0, i32 51
  %803 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color1406, align 8, !tbaa !108
  %804 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay1407 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i32 0
  %call1408 = call i64 %803(%struct.gx_device_s* %804, i16* %arraydecay1407) #6
  %805 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx1409 = getelementptr inbounds i64, i64* %805, i64 9
  store i64 %call1408, i64* %arrayidx1409, align 8, !tbaa !86
  %806 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1410 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %806, i32 0, i32 0
  %arrayidx1411 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1410, i32 0, i64 0
  %arrayidx1412 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1411, i32 0, i64 0
  %807 = load i16, i16* %arrayidx1412, align 2, !tbaa !87
  %arrayidx1413 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 0
  store i16 %807, i16* %arrayidx1413, align 2, !tbaa !87
  %808 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1414 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %808, i32 0, i32 0
  %arrayidx1415 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1414, i32 0, i64 0
  %arrayidx1416 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1415, i32 0, i64 1
  %809 = load i16, i16* %arrayidx1416, align 2, !tbaa !87
  %arrayidx1417 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 1
  store i16 %809, i16* %arrayidx1417, align 2, !tbaa !87
  %810 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1418 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %810, i32 0, i32 0
  %arrayidx1419 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1418, i32 0, i64 0
  %arrayidx1420 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1419, i32 0, i64 2
  %811 = load i16, i16* %arrayidx1420, align 2, !tbaa !87
  %arrayidx1421 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 2
  store i16 %811, i16* %arrayidx1421, align 2, !tbaa !87
  %812 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1422 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %812, i32 0, i32 0
  %arrayidx1423 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1422, i32 0, i64 1
  %arrayidx1424 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1423, i32 0, i64 3
  %813 = load i16, i16* %arrayidx1424, align 2, !tbaa !87
  %arrayidx1425 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 3
  store i16 %813, i16* %arrayidx1425, align 2, !tbaa !87
  %814 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs1426 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %814, i32 0, i32 42
  %encode_color1427 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1426, i32 0, i32 51
  %815 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color1427, align 8, !tbaa !108
  %816 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay1428 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i32 0
  %call1429 = call i64 %815(%struct.gx_device_s* %816, i16* %arraydecay1428) #6
  %817 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx1430 = getelementptr inbounds i64, i64* %817, i64 8
  store i64 %call1429, i64* %arrayidx1430, align 8, !tbaa !86
  br label %sw.bb.1431

sw.bb.1431:                                       ; preds = %if.end.874, %sw.bb.1346
  %818 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1432 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %818, i32 0, i32 0
  %arrayidx1433 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1432, i32 0, i64 1
  %arrayidx1434 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1433, i32 0, i64 0
  %819 = load i16, i16* %arrayidx1434, align 2, !tbaa !87
  %arrayidx1435 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 0
  store i16 %819, i16* %arrayidx1435, align 2, !tbaa !87
  %820 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1436 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %820, i32 0, i32 0
  %arrayidx1437 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1436, i32 0, i64 0
  %arrayidx1438 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1437, i32 0, i64 1
  %821 = load i16, i16* %arrayidx1438, align 2, !tbaa !87
  %arrayidx1439 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 1
  store i16 %821, i16* %arrayidx1439, align 2, !tbaa !87
  %822 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1440 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %822, i32 0, i32 0
  %arrayidx1441 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1440, i32 0, i64 1
  %arrayidx1442 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1441, i32 0, i64 2
  %823 = load i16, i16* %arrayidx1442, align 2, !tbaa !87
  %arrayidx1443 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 2
  store i16 %823, i16* %arrayidx1443, align 2, !tbaa !87
  %824 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1444 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %824, i32 0, i32 0
  %arrayidx1445 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1444, i32 0, i64 0
  %arrayidx1446 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1445, i32 0, i64 3
  %825 = load i16, i16* %arrayidx1446, align 2, !tbaa !87
  %arrayidx1447 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 3
  store i16 %825, i16* %arrayidx1447, align 2, !tbaa !87
  %826 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs1448 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %826, i32 0, i32 42
  %encode_color1449 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1448, i32 0, i32 51
  %827 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color1449, align 8, !tbaa !108
  %828 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay1450 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i32 0
  %call1451 = call i64 %827(%struct.gx_device_s* %828, i16* %arraydecay1450) #6
  %829 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx1452 = getelementptr inbounds i64, i64* %829, i64 5
  store i64 %call1451, i64* %arrayidx1452, align 8, !tbaa !86
  %830 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1453 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %830, i32 0, i32 0
  %arrayidx1454 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1453, i32 0, i64 0
  %arrayidx1455 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1454, i32 0, i64 0
  %831 = load i16, i16* %arrayidx1455, align 2, !tbaa !87
  %arrayidx1456 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 0
  store i16 %831, i16* %arrayidx1456, align 2, !tbaa !87
  %832 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1457 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %832, i32 0, i32 0
  %arrayidx1458 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1457, i32 0, i64 0
  %arrayidx1459 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1458, i32 0, i64 1
  %833 = load i16, i16* %arrayidx1459, align 2, !tbaa !87
  %arrayidx1460 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 1
  store i16 %833, i16* %arrayidx1460, align 2, !tbaa !87
  %834 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1461 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %834, i32 0, i32 0
  %arrayidx1462 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1461, i32 0, i64 1
  %arrayidx1463 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1462, i32 0, i64 2
  %835 = load i16, i16* %arrayidx1463, align 2, !tbaa !87
  %arrayidx1464 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 2
  store i16 %835, i16* %arrayidx1464, align 2, !tbaa !87
  %836 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1465 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %836, i32 0, i32 0
  %arrayidx1466 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1465, i32 0, i64 0
  %arrayidx1467 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1466, i32 0, i64 3
  %837 = load i16, i16* %arrayidx1467, align 2, !tbaa !87
  %arrayidx1468 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 3
  store i16 %837, i16* %arrayidx1468, align 2, !tbaa !87
  %838 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs1469 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %838, i32 0, i32 42
  %encode_color1470 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1469, i32 0, i32 51
  %839 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color1470, align 8, !tbaa !108
  %840 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay1471 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i32 0
  %call1472 = call i64 %839(%struct.gx_device_s* %840, i16* %arraydecay1471) #6
  %841 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx1473 = getelementptr inbounds i64, i64* %841, i64 4
  store i64 %call1472, i64* %arrayidx1473, align 8, !tbaa !86
  br label %c1

sw.bb.1474:                                       ; preds = %if.end.874
  %842 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1475 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %842, i32 0, i32 0
  %arrayidx1476 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1475, i32 0, i64 0
  %arrayidx1477 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1476, i32 0, i64 0
  %843 = load i16, i16* %arrayidx1477, align 2, !tbaa !87
  %arrayidx1478 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 0
  store i16 %843, i16* %arrayidx1478, align 2, !tbaa !87
  %844 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1479 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %844, i32 0, i32 0
  %arrayidx1480 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1479, i32 0, i64 0
  %arrayidx1481 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1480, i32 0, i64 1
  %845 = load i16, i16* %arrayidx1481, align 2, !tbaa !87
  %arrayidx1482 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 1
  store i16 %845, i16* %arrayidx1482, align 2, !tbaa !87
  %846 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1483 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %846, i32 0, i32 0
  %arrayidx1484 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1483, i32 0, i64 1
  %arrayidx1485 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1484, i32 0, i64 2
  %847 = load i16, i16* %arrayidx1485, align 2, !tbaa !87
  %arrayidx1486 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 2
  store i16 %847, i16* %arrayidx1486, align 2, !tbaa !87
  %848 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1487 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %848, i32 0, i32 0
  %arrayidx1488 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1487, i32 0, i64 1
  %arrayidx1489 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1488, i32 0, i64 3
  %849 = load i16, i16* %arrayidx1489, align 2, !tbaa !87
  %arrayidx1490 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 3
  store i16 %849, i16* %arrayidx1490, align 2, !tbaa !87
  %850 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs1491 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %850, i32 0, i32 42
  %encode_color1492 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1491, i32 0, i32 51
  %851 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color1492, align 8, !tbaa !108
  %852 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay1493 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i32 0
  %call1494 = call i64 %851(%struct.gx_device_s* %852, i16* %arraydecay1493) #6
  %853 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx1495 = getelementptr inbounds i64, i64* %853, i64 12
  store i64 %call1494, i64* %arrayidx1495, align 8, !tbaa !86
  %854 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1496 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %854, i32 0, i32 0
  %arrayidx1497 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1496, i32 0, i64 0
  %arrayidx1498 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1497, i32 0, i64 0
  %855 = load i16, i16* %arrayidx1498, align 2, !tbaa !87
  %arrayidx1499 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 0
  store i16 %855, i16* %arrayidx1499, align 2, !tbaa !87
  %856 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1500 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %856, i32 0, i32 0
  %arrayidx1501 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1500, i32 0, i64 0
  %arrayidx1502 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1501, i32 0, i64 1
  %857 = load i16, i16* %arrayidx1502, align 2, !tbaa !87
  %arrayidx1503 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 1
  store i16 %857, i16* %arrayidx1503, align 2, !tbaa !87
  %858 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1504 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %858, i32 0, i32 0
  %arrayidx1505 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1504, i32 0, i64 0
  %arrayidx1506 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1505, i32 0, i64 2
  %859 = load i16, i16* %arrayidx1506, align 2, !tbaa !87
  %arrayidx1507 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 2
  store i16 %859, i16* %arrayidx1507, align 2, !tbaa !87
  %860 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1508 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %860, i32 0, i32 0
  %arrayidx1509 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1508, i32 0, i64 1
  %arrayidx1510 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1509, i32 0, i64 3
  %861 = load i16, i16* %arrayidx1510, align 2, !tbaa !87
  %arrayidx1511 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 3
  store i16 %861, i16* %arrayidx1511, align 2, !tbaa !87
  %862 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs1512 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %862, i32 0, i32 42
  %encode_color1513 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1512, i32 0, i32 51
  %863 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color1513, align 8, !tbaa !108
  %864 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay1514 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i32 0
  %call1515 = call i64 %863(%struct.gx_device_s* %864, i16* %arraydecay1514) #6
  %865 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx1516 = getelementptr inbounds i64, i64* %865, i64 8
  store i64 %call1515, i64* %arrayidx1516, align 8, !tbaa !86
  br label %sw.bb.1517

sw.bb.1517:                                       ; preds = %if.end.874, %sw.bb.1474
  %866 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1518 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %866, i32 0, i32 0
  %arrayidx1519 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1518, i32 0, i64 0
  %arrayidx1520 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1519, i32 0, i64 0
  %867 = load i16, i16* %arrayidx1520, align 2, !tbaa !87
  %arrayidx1521 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 0
  store i16 %867, i16* %arrayidx1521, align 2, !tbaa !87
  %868 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1522 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %868, i32 0, i32 0
  %arrayidx1523 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1522, i32 0, i64 0
  %arrayidx1524 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1523, i32 0, i64 1
  %869 = load i16, i16* %arrayidx1524, align 2, !tbaa !87
  %arrayidx1525 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 1
  store i16 %869, i16* %arrayidx1525, align 2, !tbaa !87
  %870 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1526 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %870, i32 0, i32 0
  %arrayidx1527 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1526, i32 0, i64 1
  %arrayidx1528 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1527, i32 0, i64 2
  %871 = load i16, i16* %arrayidx1528, align 2, !tbaa !87
  %arrayidx1529 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 2
  store i16 %871, i16* %arrayidx1529, align 2, !tbaa !87
  %872 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1530 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %872, i32 0, i32 0
  %arrayidx1531 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1530, i32 0, i64 0
  %arrayidx1532 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1531, i32 0, i64 3
  %873 = load i16, i16* %arrayidx1532, align 2, !tbaa !87
  %arrayidx1533 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 3
  store i16 %873, i16* %arrayidx1533, align 2, !tbaa !87
  %874 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs1534 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %874, i32 0, i32 42
  %encode_color1535 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1534, i32 0, i32 51
  %875 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color1535, align 8, !tbaa !108
  %876 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay1536 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i32 0
  %call1537 = call i64 %875(%struct.gx_device_s* %876, i16* %arraydecay1536) #6
  %877 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx1538 = getelementptr inbounds i64, i64* %877, i64 4
  store i64 %call1537, i64* %arrayidx1538, align 8, !tbaa !86
  br label %sw.epilog

sw.bb.1539:                                       ; preds = %if.end.874
  %878 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1540 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %878, i32 0, i32 0
  %arrayidx1541 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1540, i32 0, i64 1
  %arrayidx1542 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1541, i32 0, i64 0
  %879 = load i16, i16* %arrayidx1542, align 2, !tbaa !87
  %arrayidx1543 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 0
  store i16 %879, i16* %arrayidx1543, align 2, !tbaa !87
  %880 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1544 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %880, i32 0, i32 0
  %arrayidx1545 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1544, i32 0, i64 1
  %arrayidx1546 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1545, i32 0, i64 1
  %881 = load i16, i16* %arrayidx1546, align 2, !tbaa !87
  %arrayidx1547 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 1
  store i16 %881, i16* %arrayidx1547, align 2, !tbaa !87
  %882 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1548 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %882, i32 0, i32 0
  %arrayidx1549 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1548, i32 0, i64 0
  %arrayidx1550 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1549, i32 0, i64 2
  %883 = load i16, i16* %arrayidx1550, align 2, !tbaa !87
  %arrayidx1551 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 2
  store i16 %883, i16* %arrayidx1551, align 2, !tbaa !87
  %884 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1552 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %884, i32 0, i32 0
  %arrayidx1553 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1552, i32 0, i64 1
  %arrayidx1554 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1553, i32 0, i64 3
  %885 = load i16, i16* %arrayidx1554, align 2, !tbaa !87
  %arrayidx1555 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 3
  store i16 %885, i16* %arrayidx1555, align 2, !tbaa !87
  %886 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs1556 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %886, i32 0, i32 42
  %encode_color1557 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1556, i32 0, i32 51
  %887 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color1557, align 8, !tbaa !108
  %888 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay1558 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i32 0
  %call1559 = call i64 %887(%struct.gx_device_s* %888, i16* %arraydecay1558) #6
  %889 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx1560 = getelementptr inbounds i64, i64* %889, i64 11
  store i64 %call1559, i64* %arrayidx1560, align 8, !tbaa !86
  %890 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1561 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %890, i32 0, i32 0
  %arrayidx1562 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1561, i32 0, i64 0
  %arrayidx1563 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1562, i32 0, i64 0
  %891 = load i16, i16* %arrayidx1563, align 2, !tbaa !87
  %arrayidx1564 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 0
  store i16 %891, i16* %arrayidx1564, align 2, !tbaa !87
  %892 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1565 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %892, i32 0, i32 0
  %arrayidx1566 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1565, i32 0, i64 1
  %arrayidx1567 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1566, i32 0, i64 1
  %893 = load i16, i16* %arrayidx1567, align 2, !tbaa !87
  %arrayidx1568 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 1
  store i16 %893, i16* %arrayidx1568, align 2, !tbaa !87
  %894 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1569 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %894, i32 0, i32 0
  %arrayidx1570 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1569, i32 0, i64 0
  %arrayidx1571 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1570, i32 0, i64 2
  %895 = load i16, i16* %arrayidx1571, align 2, !tbaa !87
  %arrayidx1572 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 2
  store i16 %895, i16* %arrayidx1572, align 2, !tbaa !87
  %896 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1573 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %896, i32 0, i32 0
  %arrayidx1574 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1573, i32 0, i64 1
  %arrayidx1575 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1574, i32 0, i64 3
  %897 = load i16, i16* %arrayidx1575, align 2, !tbaa !87
  %arrayidx1576 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 3
  store i16 %897, i16* %arrayidx1576, align 2, !tbaa !87
  %898 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs1577 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %898, i32 0, i32 42
  %encode_color1578 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1577, i32 0, i32 51
  %899 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color1578, align 8, !tbaa !108
  %900 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay1579 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i32 0
  %call1580 = call i64 %899(%struct.gx_device_s* %900, i16* %arraydecay1579) #6
  %901 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx1581 = getelementptr inbounds i64, i64* %901, i64 10
  store i64 %call1580, i64* %arrayidx1581, align 8, !tbaa !86
  %902 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1582 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %902, i32 0, i32 0
  %arrayidx1583 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1582, i32 0, i64 1
  %arrayidx1584 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1583, i32 0, i64 0
  %903 = load i16, i16* %arrayidx1584, align 2, !tbaa !87
  %arrayidx1585 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 0
  store i16 %903, i16* %arrayidx1585, align 2, !tbaa !87
  %904 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1586 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %904, i32 0, i32 0
  %arrayidx1587 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1586, i32 0, i64 0
  %arrayidx1588 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1587, i32 0, i64 1
  %905 = load i16, i16* %arrayidx1588, align 2, !tbaa !87
  %arrayidx1589 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 1
  store i16 %905, i16* %arrayidx1589, align 2, !tbaa !87
  %906 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1590 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %906, i32 0, i32 0
  %arrayidx1591 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1590, i32 0, i64 0
  %arrayidx1592 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1591, i32 0, i64 2
  %907 = load i16, i16* %arrayidx1592, align 2, !tbaa !87
  %arrayidx1593 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 2
  store i16 %907, i16* %arrayidx1593, align 2, !tbaa !87
  %908 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1594 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %908, i32 0, i32 0
  %arrayidx1595 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1594, i32 0, i64 1
  %arrayidx1596 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1595, i32 0, i64 3
  %909 = load i16, i16* %arrayidx1596, align 2, !tbaa !87
  %arrayidx1597 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 3
  store i16 %909, i16* %arrayidx1597, align 2, !tbaa !87
  %910 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs1598 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %910, i32 0, i32 42
  %encode_color1599 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1598, i32 0, i32 51
  %911 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color1599, align 8, !tbaa !108
  %912 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay1600 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i32 0
  %call1601 = call i64 %911(%struct.gx_device_s* %912, i16* %arraydecay1600) #6
  %913 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx1602 = getelementptr inbounds i64, i64* %913, i64 9
  store i64 %call1601, i64* %arrayidx1602, align 8, !tbaa !86
  %914 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1603 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %914, i32 0, i32 0
  %arrayidx1604 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1603, i32 0, i64 0
  %arrayidx1605 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1604, i32 0, i64 0
  %915 = load i16, i16* %arrayidx1605, align 2, !tbaa !87
  %arrayidx1606 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 0
  store i16 %915, i16* %arrayidx1606, align 2, !tbaa !87
  %916 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1607 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %916, i32 0, i32 0
  %arrayidx1608 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1607, i32 0, i64 0
  %arrayidx1609 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1608, i32 0, i64 1
  %917 = load i16, i16* %arrayidx1609, align 2, !tbaa !87
  %arrayidx1610 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 1
  store i16 %917, i16* %arrayidx1610, align 2, !tbaa !87
  %918 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1611 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %918, i32 0, i32 0
  %arrayidx1612 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1611, i32 0, i64 0
  %arrayidx1613 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1612, i32 0, i64 2
  %919 = load i16, i16* %arrayidx1613, align 2, !tbaa !87
  %arrayidx1614 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 2
  store i16 %919, i16* %arrayidx1614, align 2, !tbaa !87
  %920 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1615 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %920, i32 0, i32 0
  %arrayidx1616 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1615, i32 0, i64 1
  %arrayidx1617 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1616, i32 0, i64 3
  %921 = load i16, i16* %arrayidx1617, align 2, !tbaa !87
  %arrayidx1618 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 3
  store i16 %921, i16* %arrayidx1618, align 2, !tbaa !87
  %922 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs1619 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %922, i32 0, i32 42
  %encode_color1620 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1619, i32 0, i32 51
  %923 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color1620, align 8, !tbaa !108
  %924 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay1621 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i32 0
  %call1622 = call i64 %923(%struct.gx_device_s* %924, i16* %arraydecay1621) #6
  %925 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx1623 = getelementptr inbounds i64, i64* %925, i64 8
  store i64 %call1622, i64* %arrayidx1623, align 8, !tbaa !86
  br label %c3

sw.bb.1624:                                       ; preds = %if.end.874
  %926 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1625 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %926, i32 0, i32 0
  %arrayidx1626 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1625, i32 0, i64 0
  %arrayidx1627 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1626, i32 0, i64 0
  %927 = load i16, i16* %arrayidx1627, align 2, !tbaa !87
  %arrayidx1628 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 0
  store i16 %927, i16* %arrayidx1628, align 2, !tbaa !87
  %928 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1629 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %928, i32 0, i32 0
  %arrayidx1630 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1629, i32 0, i64 1
  %arrayidx1631 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1630, i32 0, i64 1
  %929 = load i16, i16* %arrayidx1631, align 2, !tbaa !87
  %arrayidx1632 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 1
  store i16 %929, i16* %arrayidx1632, align 2, !tbaa !87
  %930 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1633 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %930, i32 0, i32 0
  %arrayidx1634 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1633, i32 0, i64 0
  %arrayidx1635 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1634, i32 0, i64 2
  %931 = load i16, i16* %arrayidx1635, align 2, !tbaa !87
  %arrayidx1636 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 2
  store i16 %931, i16* %arrayidx1636, align 2, !tbaa !87
  %932 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1637 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %932, i32 0, i32 0
  %arrayidx1638 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1637, i32 0, i64 1
  %arrayidx1639 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1638, i32 0, i64 3
  %933 = load i16, i16* %arrayidx1639, align 2, !tbaa !87
  %arrayidx1640 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 3
  store i16 %933, i16* %arrayidx1640, align 2, !tbaa !87
  %934 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs1641 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %934, i32 0, i32 42
  %encode_color1642 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1641, i32 0, i32 51
  %935 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color1642, align 8, !tbaa !108
  %936 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay1643 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i32 0
  %call1644 = call i64 %935(%struct.gx_device_s* %936, i16* %arraydecay1643) #6
  %937 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx1645 = getelementptr inbounds i64, i64* %937, i64 10
  store i64 %call1644, i64* %arrayidx1645, align 8, !tbaa !86
  %938 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1646 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %938, i32 0, i32 0
  %arrayidx1647 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1646, i32 0, i64 0
  %arrayidx1648 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1647, i32 0, i64 0
  %939 = load i16, i16* %arrayidx1648, align 2, !tbaa !87
  %arrayidx1649 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 0
  store i16 %939, i16* %arrayidx1649, align 2, !tbaa !87
  %940 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1650 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %940, i32 0, i32 0
  %arrayidx1651 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1650, i32 0, i64 0
  %arrayidx1652 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1651, i32 0, i64 1
  %941 = load i16, i16* %arrayidx1652, align 2, !tbaa !87
  %arrayidx1653 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 1
  store i16 %941, i16* %arrayidx1653, align 2, !tbaa !87
  %942 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1654 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %942, i32 0, i32 0
  %arrayidx1655 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1654, i32 0, i64 0
  %arrayidx1656 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1655, i32 0, i64 2
  %943 = load i16, i16* %arrayidx1656, align 2, !tbaa !87
  %arrayidx1657 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 2
  store i16 %943, i16* %arrayidx1657, align 2, !tbaa !87
  %944 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1658 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %944, i32 0, i32 0
  %arrayidx1659 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1658, i32 0, i64 1
  %arrayidx1660 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1659, i32 0, i64 3
  %945 = load i16, i16* %arrayidx1660, align 2, !tbaa !87
  %arrayidx1661 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 3
  store i16 %945, i16* %arrayidx1661, align 2, !tbaa !87
  %946 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs1662 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %946, i32 0, i32 42
  %encode_color1663 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1662, i32 0, i32 51
  %947 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color1663, align 8, !tbaa !108
  %948 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay1664 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i32 0
  %call1665 = call i64 %947(%struct.gx_device_s* %948, i16* %arraydecay1664) #6
  %949 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx1666 = getelementptr inbounds i64, i64* %949, i64 8
  store i64 %call1665, i64* %arrayidx1666, align 8, !tbaa !86
  br label %c2

sw.bb.1667:                                       ; preds = %if.end.874
  %950 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1668 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %950, i32 0, i32 0
  %arrayidx1669 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1668, i32 0, i64 1
  %arrayidx1670 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1669, i32 0, i64 0
  %951 = load i16, i16* %arrayidx1670, align 2, !tbaa !87
  %arrayidx1671 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 0
  store i16 %951, i16* %arrayidx1671, align 2, !tbaa !87
  %952 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1672 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %952, i32 0, i32 0
  %arrayidx1673 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1672, i32 0, i64 0
  %arrayidx1674 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1673, i32 0, i64 1
  %953 = load i16, i16* %arrayidx1674, align 2, !tbaa !87
  %arrayidx1675 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 1
  store i16 %953, i16* %arrayidx1675, align 2, !tbaa !87
  %954 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1676 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %954, i32 0, i32 0
  %arrayidx1677 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1676, i32 0, i64 0
  %arrayidx1678 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1677, i32 0, i64 2
  %955 = load i16, i16* %arrayidx1678, align 2, !tbaa !87
  %arrayidx1679 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 2
  store i16 %955, i16* %arrayidx1679, align 2, !tbaa !87
  %956 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1680 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %956, i32 0, i32 0
  %arrayidx1681 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1680, i32 0, i64 1
  %arrayidx1682 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1681, i32 0, i64 3
  %957 = load i16, i16* %arrayidx1682, align 2, !tbaa !87
  %arrayidx1683 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 3
  store i16 %957, i16* %arrayidx1683, align 2, !tbaa !87
  %958 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs1684 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %958, i32 0, i32 42
  %encode_color1685 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1684, i32 0, i32 51
  %959 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color1685, align 8, !tbaa !108
  %960 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay1686 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i32 0
  %call1687 = call i64 %959(%struct.gx_device_s* %960, i16* %arraydecay1686) #6
  %961 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx1688 = getelementptr inbounds i64, i64* %961, i64 9
  store i64 %call1687, i64* %arrayidx1688, align 8, !tbaa !86
  %962 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1689 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %962, i32 0, i32 0
  %arrayidx1690 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1689, i32 0, i64 0
  %arrayidx1691 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1690, i32 0, i64 0
  %963 = load i16, i16* %arrayidx1691, align 2, !tbaa !87
  %arrayidx1692 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 0
  store i16 %963, i16* %arrayidx1692, align 2, !tbaa !87
  %964 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1693 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %964, i32 0, i32 0
  %arrayidx1694 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1693, i32 0, i64 0
  %arrayidx1695 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1694, i32 0, i64 1
  %965 = load i16, i16* %arrayidx1695, align 2, !tbaa !87
  %arrayidx1696 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 1
  store i16 %965, i16* %arrayidx1696, align 2, !tbaa !87
  %966 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1697 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %966, i32 0, i32 0
  %arrayidx1698 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1697, i32 0, i64 0
  %arrayidx1699 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1698, i32 0, i64 2
  %967 = load i16, i16* %arrayidx1699, align 2, !tbaa !87
  %arrayidx1700 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 2
  store i16 %967, i16* %arrayidx1700, align 2, !tbaa !87
  %968 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1701 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %968, i32 0, i32 0
  %arrayidx1702 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1701, i32 0, i64 1
  %arrayidx1703 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1702, i32 0, i64 3
  %969 = load i16, i16* %arrayidx1703, align 2, !tbaa !87
  %arrayidx1704 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 3
  store i16 %969, i16* %arrayidx1704, align 2, !tbaa !87
  %970 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs1705 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %970, i32 0, i32 42
  %encode_color1706 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1705, i32 0, i32 51
  %971 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color1706, align 8, !tbaa !108
  %972 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay1707 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i32 0
  %call1708 = call i64 %971(%struct.gx_device_s* %972, i16* %arraydecay1707) #6
  %973 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx1709 = getelementptr inbounds i64, i64* %973, i64 8
  store i64 %call1708, i64* %arrayidx1709, align 8, !tbaa !86
  br label %c1

sw.bb.1710:                                       ; preds = %if.end.874
  %974 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1711 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %974, i32 0, i32 0
  %arrayidx1712 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1711, i32 0, i64 0
  %arrayidx1713 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1712, i32 0, i64 0
  %975 = load i16, i16* %arrayidx1713, align 2, !tbaa !87
  %arrayidx1714 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 0
  store i16 %975, i16* %arrayidx1714, align 2, !tbaa !87
  %976 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1715 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %976, i32 0, i32 0
  %arrayidx1716 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1715, i32 0, i64 0
  %arrayidx1717 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1716, i32 0, i64 1
  %977 = load i16, i16* %arrayidx1717, align 2, !tbaa !87
  %arrayidx1718 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 1
  store i16 %977, i16* %arrayidx1718, align 2, !tbaa !87
  %978 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1719 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %978, i32 0, i32 0
  %arrayidx1720 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1719, i32 0, i64 0
  %arrayidx1721 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1720, i32 0, i64 2
  %979 = load i16, i16* %arrayidx1721, align 2, !tbaa !87
  %arrayidx1722 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 2
  store i16 %979, i16* %arrayidx1722, align 2, !tbaa !87
  %980 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1723 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %980, i32 0, i32 0
  %arrayidx1724 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1723, i32 0, i64 1
  %arrayidx1725 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1724, i32 0, i64 3
  %981 = load i16, i16* %arrayidx1725, align 2, !tbaa !87
  %arrayidx1726 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 3
  store i16 %981, i16* %arrayidx1726, align 2, !tbaa !87
  %982 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs1727 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %982, i32 0, i32 42
  %encode_color1728 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1727, i32 0, i32 51
  %983 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color1728, align 8, !tbaa !108
  %984 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay1729 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i32 0
  %call1730 = call i64 %983(%struct.gx_device_s* %984, i16* %arraydecay1729) #6
  %985 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx1731 = getelementptr inbounds i64, i64* %985, i64 8
  store i64 %call1730, i64* %arrayidx1731, align 8, !tbaa !86
  br label %sw.epilog

sw.bb.1732:                                       ; preds = %if.end.874
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.1732, %if.end.874, %sw.bb.1710, %sw.bb.1517, %sw.bb.1324, %sw.bb.1174
  %986 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1733 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %986, i32 0, i32 0
  %arrayidx1734 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1733, i32 0, i64 0
  %arrayidx1735 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1734, i32 0, i64 0
  %987 = load i16, i16* %arrayidx1735, align 2, !tbaa !87
  %arrayidx1736 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 0
  store i16 %987, i16* %arrayidx1736, align 2, !tbaa !87
  %988 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1737 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %988, i32 0, i32 0
  %arrayidx1738 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1737, i32 0, i64 0
  %arrayidx1739 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1738, i32 0, i64 1
  %989 = load i16, i16* %arrayidx1739, align 2, !tbaa !87
  %arrayidx1740 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 1
  store i16 %989, i16* %arrayidx1740, align 2, !tbaa !87
  %990 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1741 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %990, i32 0, i32 0
  %arrayidx1742 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1741, i32 0, i64 0
  %arrayidx1743 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1742, i32 0, i64 2
  %991 = load i16, i16* %arrayidx1743, align 2, !tbaa !87
  %arrayidx1744 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 2
  store i16 %991, i16* %arrayidx1744, align 2, !tbaa !87
  %992 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values1745 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %992, i32 0, i32 0
  %arrayidx1746 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values1745, i32 0, i64 0
  %arrayidx1747 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx1746, i32 0, i64 3
  %993 = load i16, i16* %arrayidx1747, align 2, !tbaa !87
  %arrayidx1748 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i64 3
  store i16 %993, i16* %arrayidx1748, align 2, !tbaa !87
  %994 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs1749 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %994, i32 0, i32 42
  %encode_color1750 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1749, i32 0, i32 51
  %995 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color1750, align 8, !tbaa !108
  %996 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay1751 = getelementptr inbounds [4 x i16], [4 x i16]* %cvalues, i32 0, i32 0
  %call1752 = call i64 %995(%struct.gx_device_s* %996, i16* %arraydecay1751) #6
  %997 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx1753 = getelementptr inbounds i64, i64* %997, i64 0
  store i64 %call1752, i64* %arrayidx1753, align 8, !tbaa !86
  br label %if.end.1754

if.end.1754:                                      ; preds = %sw.epilog, %if.else.671
  br label %if.end.1755

if.end.1755:                                      ; preds = %if.end.1754, %if.end.670
  %998 = bitcast i32* %invert to i8*
  call void @llvm.lifetime.end(i64 4, i8* %998) #2
  %999 = bitcast [4 x i16]* %cvalues to i8*
  call void @llvm.lifetime.end(i64 8, i8* %999) #2
  %1000 = bitcast i16* %max_color to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1000) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @set_ht_colors_gt_4(%struct.color_values_pair_s* %pvp, i64* %colors, %struct.gx_const_strip_bitmap_s** %sbits, %struct.gx_device_color_s* %pdc, %struct.gx_device_s* %dev, %struct.gx_ht_cache_s** %caches, i32 %nplanes) #0 {
entry:
  %pvp.addr = alloca %struct.color_values_pair_s*, align 8
  %colors.addr = alloca i64*, align 8
  %sbits.addr = alloca %struct.gx_const_strip_bitmap_s**, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %caches.addr = alloca %struct.gx_ht_cache_s**, align 8
  %nplanes.addr = alloca i32, align 4
  %max_color = alloca i16, align 2
  %invert = alloca i32, align 4
  %plane_mask = alloca i64, align 8
  %i = alloca i32, align 4
  %cv = alloca [64 x i16], align 16
  %q = alloca i32, align 4
  %r = alloca i32, align 4
  %pdht = alloca %struct.gx_device_halftone_s*, align 8
  %nlevels = alloca i32, align 4
  store %struct.color_values_pair_s* %pvp, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  store i64* %colors, i64** %colors.addr, align 8, !tbaa !1
  store %struct.gx_const_strip_bitmap_s** %sbits, %struct.gx_const_strip_bitmap_s*** %sbits.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_ht_cache_s** %caches, %struct.gx_ht_cache_s*** %caches.addr, align 8, !tbaa !1
  store i32 %nplanes, i32* %nplanes.addr, align 4, !tbaa !22
  %0 = bitcast i16* %max_color to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 11
  %dither_colors = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 8
  %2 = load i32, i32* %dither_colors, align 4, !tbaa !106
  %sub = sub i32 %2, 1
  %conv = trunc i32 %sub to i16
  store i16 %conv, i16* %max_color, align 2, !tbaa !87
  %3 = bitcast i32* %invert to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 11
  %polarity = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info1, i32 0, i32 2
  %5 = load i32, i32* %polarity, align 4, !tbaa !107
  %cmp = icmp eq i32 %5, 0
  %conv2 = zext i1 %cmp to i32
  store i32 %conv2, i32* %invert, align 4, !tbaa !22
  %6 = bitcast i64* %plane_mask to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %colors3 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %7, i32 0, i32 1
  %colored = bitcast %union._c* %colors3 to %struct._col*
  %plane_mask4 = getelementptr inbounds %struct._col, %struct._col* %colored, i32 0, i32 5
  %8 = load i64, i64* %plane_mask4, align 8, !tbaa !38
  store i64 %8, i64* %plane_mask, align 8, !tbaa !86
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast [64 x i16]* %cv to i8*
  call void @llvm.lifetime.start(i64 128, i8* %10) #2
  %11 = bitcast [64 x i16]* %cv to i8*
  call void @llvm.memset.p0i8.i64(i8* %11, i8 0, i64 128, i32 16, i1 false)
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, i32* %i, align 4, !tbaa !22
  %13 = load i32, i32* %nplanes.addr, align 4, !tbaa !22
  %cmp5 = icmp slt i32 %12, %13
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i64, i64* %plane_mask, align 8, !tbaa !86
  %15 = load i32, i32* %i, align 4, !tbaa !22
  %sh_prom = zext i32 %15 to i64
  %shr = lshr i64 %14, %sh_prom
  %and = and i64 %shr, 1
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.else.143

if.then:                                          ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %if.then
  %16 = bitcast i32* %q to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom = sext i32 %17 to i64
  %18 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %colors7 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %18, i32 0, i32 1
  %colored8 = bitcast %union._c* %colors7 to %struct._col*
  %c_base = getelementptr inbounds %struct._col, %struct._col* %colored8, i32 0, i32 2
  %arrayidx = getelementptr inbounds [64 x i8], [64 x i8]* %c_base, i32 0, i64 %idxprom
  %19 = load i8, i8* %arrayidx, align 1, !tbaa !24
  %conv9 = zext i8 %19 to i32
  store i32 %conv9, i32* %q, align 4, !tbaa !22
  %20 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #2
  %21 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom10 = sext i32 %21 to i64
  %22 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %colors11 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %22, i32 0, i32 1
  %colored12 = bitcast %union._c* %colors11 to %struct._col*
  %c_level = getelementptr inbounds %struct._col, %struct._col* %colored12, i32 0, i32 3
  %arrayidx13 = getelementptr inbounds [64 x i32], [64 x i32]* %c_level, i32 0, i64 %idxprom10
  %23 = load i32, i32* %arrayidx13, align 4, !tbaa !22
  store i32 %23, i32* %r, align 4, !tbaa !22
  %24 = load i16, i16* %max_color, align 2, !tbaa !87
  %conv14 = zext i16 %24 to i32
  %cmp15 = icmp sle i32 %conv14, 7
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body
  %25 = load i32, i32* %q, align 4, !tbaa !22
  %idxprom17 = zext i32 %25 to i64
  %26 = load i16, i16* %max_color, align 2, !tbaa !87
  %idxprom18 = zext i16 %26 to i64
  %arrayidx19 = getelementptr inbounds [8 x i16*], [8 x i16*]* @fc_color_quo, i32 0, i64 %idxprom18
  %27 = load i16*, i16** %arrayidx19, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i16, i16* %27, i64 %idxprom17
  %28 = load i16, i16* %arrayidx20, align 2, !tbaa !87
  %conv21 = zext i16 %28 to i32
  br label %cond.end

cond.false:                                       ; preds = %do.body
  %29 = load i32, i32* %q, align 4, !tbaa !22
  %conv22 = zext i32 %29 to i64
  %mul = mul nsw i64 %conv22, 131070
  %30 = load i16, i16* %max_color, align 2, !tbaa !87
  %conv23 = zext i16 %30 to i64
  %add = add nsw i64 %mul, %conv23
  %31 = load i16, i16* %max_color, align 2, !tbaa !87
  %conv24 = zext i16 %31 to i32
  %mul25 = mul nsw i32 %conv24, 2
  %conv26 = sext i32 %mul25 to i64
  %div = sdiv i64 %add, %conv26
  %conv27 = trunc i64 %div to i16
  %conv28 = zext i16 %conv27 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv21, %cond.true ], [ %conv28, %cond.false ]
  %conv29 = trunc i32 %cond to i16
  %32 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom30 = sext i32 %32 to i64
  %33 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %33, i32 0, i32 0
  %arrayidx31 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values, i32 0, i64 0
  %arrayidx32 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx31, i32 0, i64 %idxprom30
  store i16 %conv29, i16* %arrayidx32, align 2, !tbaa !87
  %34 = load i32, i32* %r, align 4, !tbaa !22
  %cmp33 = icmp eq i32 %34, 0
  br i1 %cmp33, label %if.then.35, label %if.else

if.then.35:                                       ; preds = %cond.end
  %35 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom36 = sext i32 %35 to i64
  %36 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values37 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %36, i32 0, i32 0
  %arrayidx38 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values37, i32 0, i64 0
  %arrayidx39 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx38, i32 0, i64 %idxprom36
  %37 = load i16, i16* %arrayidx39, align 2, !tbaa !87
  %38 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom40 = sext i32 %38 to i64
  %39 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values41 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %39, i32 0, i32 0
  %arrayidx42 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values41, i32 0, i64 1
  %arrayidx43 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx42, i32 0, i64 %idxprom40
  store i16 %37, i16* %arrayidx43, align 2, !tbaa !87
  %40 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom44 = sext i32 %40 to i64
  %41 = load %struct.gx_const_strip_bitmap_s**, %struct.gx_const_strip_bitmap_s*** %sbits.addr, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds %struct.gx_const_strip_bitmap_s*, %struct.gx_const_strip_bitmap_s** %41, i64 %idxprom44
  store %struct.gx_const_strip_bitmap_s* @ht_no_bitmap, %struct.gx_const_strip_bitmap_s** %arrayidx45, align 8, !tbaa !1
  br label %if.end.142

if.else:                                          ; preds = %cond.end
  %42 = load i32, i32* %invert, align 4, !tbaa !22
  %tobool46 = icmp ne i32 %42, 0
  br i1 %tobool46, label %if.else.83, label %if.then.47

if.then.47:                                       ; preds = %if.else
  %43 = load i16, i16* %max_color, align 2, !tbaa !87
  %conv48 = zext i16 %43 to i32
  %cmp49 = icmp sle i32 %conv48, 7
  br i1 %cmp49, label %cond.true.51, label %cond.false.58

cond.true.51:                                     ; preds = %if.then.47
  %44 = load i32, i32* %q, align 4, !tbaa !22
  %add52 = add i32 %44, 1
  %idxprom53 = zext i32 %add52 to i64
  %45 = load i16, i16* %max_color, align 2, !tbaa !87
  %idxprom54 = zext i16 %45 to i64
  %arrayidx55 = getelementptr inbounds [8 x i16*], [8 x i16*]* @fc_color_quo, i32 0, i64 %idxprom54
  %46 = load i16*, i16** %arrayidx55, align 8, !tbaa !1
  %arrayidx56 = getelementptr inbounds i16, i16* %46, i64 %idxprom53
  %47 = load i16, i16* %arrayidx56, align 2, !tbaa !87
  %conv57 = zext i16 %47 to i32
  br label %cond.end.70

cond.false.58:                                    ; preds = %if.then.47
  %48 = load i32, i32* %q, align 4, !tbaa !22
  %add59 = add i32 %48, 1
  %conv60 = zext i32 %add59 to i64
  %mul61 = mul nsw i64 %conv60, 131070
  %49 = load i16, i16* %max_color, align 2, !tbaa !87
  %conv62 = zext i16 %49 to i64
  %add63 = add nsw i64 %mul61, %conv62
  %50 = load i16, i16* %max_color, align 2, !tbaa !87
  %conv64 = zext i16 %50 to i32
  %mul65 = mul nsw i32 %conv64, 2
  %conv66 = sext i32 %mul65 to i64
  %div67 = sdiv i64 %add63, %conv66
  %conv68 = trunc i64 %div67 to i16
  %conv69 = zext i16 %conv68 to i32
  br label %cond.end.70

cond.end.70:                                      ; preds = %cond.false.58, %cond.true.51
  %cond71 = phi i32 [ %conv57, %cond.true.51 ], [ %conv69, %cond.false.58 ]
  %conv72 = trunc i32 %cond71 to i16
  %51 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom73 = sext i32 %51 to i64
  %52 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values74 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %52, i32 0, i32 0
  %arrayidx75 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values74, i32 0, i64 1
  %arrayidx76 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx75, i32 0, i64 %idxprom73
  store i16 %conv72, i16* %arrayidx76, align 2, !tbaa !87
  %53 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom77 = sext i32 %53 to i64
  %54 = load %struct.gx_ht_cache_s**, %struct.gx_ht_cache_s*** %caches.addr, align 8, !tbaa !1
  %arrayidx78 = getelementptr inbounds %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %54, i64 %idxprom77
  %55 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %arrayidx78, align 8, !tbaa !1
  %render_ht = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %55, i32 0, i32 9
  %56 = load %struct.gx_ht_tile_s* (%struct.gx_ht_cache_s*, i32)*, %struct.gx_ht_tile_s* (%struct.gx_ht_cache_s*, i32)** %render_ht, align 8, !tbaa !104
  %57 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom79 = sext i32 %57 to i64
  %58 = load %struct.gx_ht_cache_s**, %struct.gx_ht_cache_s*** %caches.addr, align 8, !tbaa !1
  %arrayidx80 = getelementptr inbounds %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %58, i64 %idxprom79
  %59 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %arrayidx80, align 8, !tbaa !1
  %60 = load i32, i32* %r, align 4, !tbaa !22
  %call = call %struct.gx_ht_tile_s* %56(%struct.gx_ht_cache_s* %59, i32 %60) #6
  %tiles = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %call, i32 0, i32 0
  %61 = bitcast %struct.gx_strip_bitmap_s* %tiles to %struct.gx_const_strip_bitmap_s*
  %62 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom81 = sext i32 %62 to i64
  %63 = load %struct.gx_const_strip_bitmap_s**, %struct.gx_const_strip_bitmap_s*** %sbits.addr, align 8, !tbaa !1
  %arrayidx82 = getelementptr inbounds %struct.gx_const_strip_bitmap_s*, %struct.gx_const_strip_bitmap_s** %63, i64 %idxprom81
  store %struct.gx_const_strip_bitmap_s* %61, %struct.gx_const_strip_bitmap_s** %arrayidx82, align 8, !tbaa !1
  br label %if.end

if.else.83:                                       ; preds = %if.else
  %64 = bitcast %struct.gx_device_halftone_s** %pdht to i8*
  call void @llvm.lifetime.start(i64 8, i8* %64) #2
  %65 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %colors84 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %65, i32 0, i32 1
  %colored85 = bitcast %union._c* %colors84 to %struct._col*
  %c_ht = getelementptr inbounds %struct._col, %struct._col* %colored85, i32 0, i32 0
  %66 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %c_ht, align 8, !tbaa !23
  store %struct.gx_device_halftone_s* %66, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %67 = bitcast i32* %nlevels to i8*
  call void @llvm.lifetime.start(i64 4, i8* %67) #2
  %68 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %components = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %68, i32 0, i32 4
  %69 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components, align 8, !tbaa !54
  %tobool86 = icmp ne %struct.gx_ht_order_component_s* %69, null
  br i1 %tobool86, label %cond.true.87, label %cond.false.91

cond.true.87:                                     ; preds = %if.else.83
  %70 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom88 = sext i32 %70 to i64
  %71 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %components89 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %71, i32 0, i32 4
  %72 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components89, align 8, !tbaa !54
  %arrayidx90 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %72, i64 %idxprom88
  %corder = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx90, i32 0, i32 0
  %num_levels = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %corder, i32 0, i32 8
  %73 = load i32, i32* %num_levels, align 4, !tbaa !102
  br label %cond.end.93

cond.false.91:                                    ; preds = %if.else.83
  %74 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %order = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %74, i32 0, i32 0
  %num_levels92 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %order, i32 0, i32 8
  %75 = load i32, i32* %num_levels92, align 4, !tbaa !103
  br label %cond.end.93

cond.end.93:                                      ; preds = %cond.false.91, %cond.true.87
  %cond94 = phi i32 [ %73, %cond.true.87 ], [ %75, %cond.false.91 ]
  store i32 %cond94, i32* %nlevels, align 4, !tbaa !22
  %76 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom95 = sext i32 %76 to i64
  %77 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values96 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %77, i32 0, i32 0
  %arrayidx97 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values96, i32 0, i64 0
  %arrayidx98 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx97, i32 0, i64 %idxprom95
  %78 = load i16, i16* %arrayidx98, align 2, !tbaa !87
  %79 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom99 = sext i32 %79 to i64
  %80 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values100 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %80, i32 0, i32 0
  %arrayidx101 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values100, i32 0, i64 1
  %arrayidx102 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx101, i32 0, i64 %idxprom99
  store i16 %78, i16* %arrayidx102, align 2, !tbaa !87
  %81 = load i16, i16* %max_color, align 2, !tbaa !87
  %conv103 = zext i16 %81 to i32
  %cmp104 = icmp sle i32 %conv103, 7
  br i1 %cmp104, label %cond.true.106, label %cond.false.113

cond.true.106:                                    ; preds = %cond.end.93
  %82 = load i32, i32* %q, align 4, !tbaa !22
  %add107 = add i32 %82, 1
  %idxprom108 = zext i32 %add107 to i64
  %83 = load i16, i16* %max_color, align 2, !tbaa !87
  %idxprom109 = zext i16 %83 to i64
  %arrayidx110 = getelementptr inbounds [8 x i16*], [8 x i16*]* @fc_color_quo, i32 0, i64 %idxprom109
  %84 = load i16*, i16** %arrayidx110, align 8, !tbaa !1
  %arrayidx111 = getelementptr inbounds i16, i16* %84, i64 %idxprom108
  %85 = load i16, i16* %arrayidx111, align 2, !tbaa !87
  %conv112 = zext i16 %85 to i32
  br label %cond.end.125

cond.false.113:                                   ; preds = %cond.end.93
  %86 = load i32, i32* %q, align 4, !tbaa !22
  %add114 = add i32 %86, 1
  %conv115 = zext i32 %add114 to i64
  %mul116 = mul nsw i64 %conv115, 131070
  %87 = load i16, i16* %max_color, align 2, !tbaa !87
  %conv117 = zext i16 %87 to i64
  %add118 = add nsw i64 %mul116, %conv117
  %88 = load i16, i16* %max_color, align 2, !tbaa !87
  %conv119 = zext i16 %88 to i32
  %mul120 = mul nsw i32 %conv119, 2
  %conv121 = sext i32 %mul120 to i64
  %div122 = sdiv i64 %add118, %conv121
  %conv123 = trunc i64 %div122 to i16
  %conv124 = zext i16 %conv123 to i32
  br label %cond.end.125

cond.end.125:                                     ; preds = %cond.false.113, %cond.true.106
  %cond126 = phi i32 [ %conv112, %cond.true.106 ], [ %conv124, %cond.false.113 ]
  %conv127 = trunc i32 %cond126 to i16
  %89 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom128 = sext i32 %89 to i64
  %90 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values129 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %90, i32 0, i32 0
  %arrayidx130 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values129, i32 0, i64 0
  %arrayidx131 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx130, i32 0, i64 %idxprom128
  store i16 %conv127, i16* %arrayidx131, align 2, !tbaa !87
  %91 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom132 = sext i32 %91 to i64
  %92 = load %struct.gx_ht_cache_s**, %struct.gx_ht_cache_s*** %caches.addr, align 8, !tbaa !1
  %arrayidx133 = getelementptr inbounds %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %92, i64 %idxprom132
  %93 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %arrayidx133, align 8, !tbaa !1
  %render_ht134 = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %93, i32 0, i32 9
  %94 = load %struct.gx_ht_tile_s* (%struct.gx_ht_cache_s*, i32)*, %struct.gx_ht_tile_s* (%struct.gx_ht_cache_s*, i32)** %render_ht134, align 8, !tbaa !104
  %95 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom135 = sext i32 %95 to i64
  %96 = load %struct.gx_ht_cache_s**, %struct.gx_ht_cache_s*** %caches.addr, align 8, !tbaa !1
  %arrayidx136 = getelementptr inbounds %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %96, i64 %idxprom135
  %97 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %arrayidx136, align 8, !tbaa !1
  %98 = load i32, i32* %nlevels, align 4, !tbaa !22
  %99 = load i32, i32* %r, align 4, !tbaa !22
  %sub137 = sub i32 %98, %99
  %call138 = call %struct.gx_ht_tile_s* %94(%struct.gx_ht_cache_s* %97, i32 %sub137) #6
  %tiles139 = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %call138, i32 0, i32 0
  %100 = bitcast %struct.gx_strip_bitmap_s* %tiles139 to %struct.gx_const_strip_bitmap_s*
  %101 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom140 = sext i32 %101 to i64
  %102 = load %struct.gx_const_strip_bitmap_s**, %struct.gx_const_strip_bitmap_s*** %sbits.addr, align 8, !tbaa !1
  %arrayidx141 = getelementptr inbounds %struct.gx_const_strip_bitmap_s*, %struct.gx_const_strip_bitmap_s** %102, i64 %idxprom140
  store %struct.gx_const_strip_bitmap_s* %100, %struct.gx_const_strip_bitmap_s** %arrayidx141, align 8, !tbaa !1
  %103 = bitcast i32* %nlevels to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #2
  %104 = bitcast %struct.gx_device_halftone_s** %pdht to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #2
  br label %if.end

if.end:                                           ; preds = %cond.end.125, %cond.end.70
  br label %if.end.142

if.end.142:                                       ; preds = %if.end, %if.then.35
  %105 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #2
  %106 = bitcast i32* %q to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #2
  br label %do.cond

do.cond:                                          ; preds = %if.end.142
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.190

if.else.143:                                      ; preds = %for.body
  br label %do.body.144

do.body.144:                                      ; preds = %if.else.143
  %107 = load i16, i16* %max_color, align 2, !tbaa !87
  %conv145 = zext i16 %107 to i32
  %cmp146 = icmp sle i32 %conv145, 7
  br i1 %cmp146, label %cond.true.148, label %cond.false.159

cond.true.148:                                    ; preds = %do.body.144
  %108 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom149 = sext i32 %108 to i64
  %109 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %colors150 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %109, i32 0, i32 1
  %colored151 = bitcast %union._c* %colors150 to %struct._col*
  %c_base152 = getelementptr inbounds %struct._col, %struct._col* %colored151, i32 0, i32 2
  %arrayidx153 = getelementptr inbounds [64 x i8], [64 x i8]* %c_base152, i32 0, i64 %idxprom149
  %110 = load i8, i8* %arrayidx153, align 1, !tbaa !24
  %idxprom154 = zext i8 %110 to i64
  %111 = load i16, i16* %max_color, align 2, !tbaa !87
  %idxprom155 = zext i16 %111 to i64
  %arrayidx156 = getelementptr inbounds [8 x i16*], [8 x i16*]* @fc_color_quo, i32 0, i64 %idxprom155
  %112 = load i16*, i16** %arrayidx156, align 8, !tbaa !1
  %arrayidx157 = getelementptr inbounds i16, i16* %112, i64 %idxprom154
  %113 = load i16, i16* %arrayidx157, align 2, !tbaa !87
  %conv158 = zext i16 %113 to i32
  br label %cond.end.175

cond.false.159:                                   ; preds = %do.body.144
  %114 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom160 = sext i32 %114 to i64
  %115 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %colors161 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %115, i32 0, i32 1
  %colored162 = bitcast %union._c* %colors161 to %struct._col*
  %c_base163 = getelementptr inbounds %struct._col, %struct._col* %colored162, i32 0, i32 2
  %arrayidx164 = getelementptr inbounds [64 x i8], [64 x i8]* %c_base163, i32 0, i64 %idxprom160
  %116 = load i8, i8* %arrayidx164, align 1, !tbaa !24
  %conv165 = zext i8 %116 to i64
  %mul166 = mul nsw i64 %conv165, 131070
  %117 = load i16, i16* %max_color, align 2, !tbaa !87
  %conv167 = zext i16 %117 to i64
  %add168 = add nsw i64 %mul166, %conv167
  %118 = load i16, i16* %max_color, align 2, !tbaa !87
  %conv169 = zext i16 %118 to i32
  %mul170 = mul nsw i32 %conv169, 2
  %conv171 = sext i32 %mul170 to i64
  %div172 = sdiv i64 %add168, %conv171
  %conv173 = trunc i64 %div172 to i16
  %conv174 = zext i16 %conv173 to i32
  br label %cond.end.175

cond.end.175:                                     ; preds = %cond.false.159, %cond.true.148
  %cond176 = phi i32 [ %conv158, %cond.true.148 ], [ %conv174, %cond.false.159 ]
  %conv177 = trunc i32 %cond176 to i16
  %119 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom178 = sext i32 %119 to i64
  %120 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values179 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %120, i32 0, i32 0
  %arrayidx180 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values179, i32 0, i64 0
  %arrayidx181 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx180, i32 0, i64 %idxprom178
  store i16 %conv177, i16* %arrayidx181, align 2, !tbaa !87
  %121 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom182 = sext i32 %121 to i64
  %122 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values183 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %122, i32 0, i32 0
  %arrayidx184 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values183, i32 0, i64 1
  %arrayidx185 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx184, i32 0, i64 %idxprom182
  store i16 %conv177, i16* %arrayidx185, align 2, !tbaa !87
  %123 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom186 = sext i32 %123 to i64
  %124 = load %struct.gx_const_strip_bitmap_s**, %struct.gx_const_strip_bitmap_s*** %sbits.addr, align 8, !tbaa !1
  %arrayidx187 = getelementptr inbounds %struct.gx_const_strip_bitmap_s*, %struct.gx_const_strip_bitmap_s** %124, i64 %idxprom186
  store %struct.gx_const_strip_bitmap_s* @ht_no_bitmap, %struct.gx_const_strip_bitmap_s** %arrayidx187, align 8, !tbaa !1
  br label %do.cond.188

do.cond.188:                                      ; preds = %cond.end.175
  br label %do.end.189

do.end.189:                                       ; preds = %do.cond.188
  br label %if.end.190

if.end.190:                                       ; preds = %do.end.189, %do.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.190
  %125 = load i32, i32* %i, align 4, !tbaa !22
  %inc = add nsw i32 %125, 1
  store i32 %inc, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond.191

for.cond.191:                                     ; preds = %for.inc.227, %for.end
  %126 = load i32, i32* %i, align 4, !tbaa !22
  %127 = load i32, i32* %nplanes.addr, align 4, !tbaa !22
  %cmp192 = icmp slt i32 %126, %127
  br i1 %cmp192, label %for.body.194, label %for.end.229

for.body.194:                                     ; preds = %for.cond.191
  %128 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom195 = sext i32 %128 to i64
  %129 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values196 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %129, i32 0, i32 0
  %arrayidx197 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values196, i32 0, i64 0
  %arrayidx198 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx197, i32 0, i64 %idxprom195
  %130 = load i16, i16* %arrayidx198, align 2, !tbaa !87
  %131 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom199 = sext i32 %131 to i64
  %arrayidx200 = getelementptr inbounds [64 x i16], [64 x i16]* %cv, i32 0, i64 %idxprom199
  store i16 %130, i16* %arrayidx200, align 2, !tbaa !87
  %132 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %132, i32 0, i32 42
  %encode_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 51
  %133 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color, align 8, !tbaa !108
  %134 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %cv, i32 0, i32 0
  %call201 = call i64 %133(%struct.gx_device_s* %134, i16* %arraydecay) #6
  %135 = load i32, i32* %i, align 4, !tbaa !22
  %mul202 = mul nsw i32 2, %135
  %idxprom203 = sext i32 %mul202 to i64
  %136 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx204 = getelementptr inbounds i64, i64* %136, i64 %idxprom203
  store i64 %call201, i64* %arrayidx204, align 8, !tbaa !86
  %137 = load i64, i64* %plane_mask, align 8, !tbaa !86
  %138 = load i32, i32* %i, align 4, !tbaa !22
  %sh_prom205 = zext i32 %138 to i64
  %shr206 = lshr i64 %137, %sh_prom205
  %and207 = and i64 %shr206, 1
  %tobool208 = icmp ne i64 %and207, 0
  br i1 %tobool208, label %if.then.209, label %if.end.224

if.then.209:                                      ; preds = %for.body.194
  %139 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom210 = sext i32 %139 to i64
  %140 = load %struct.color_values_pair_s*, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  %values211 = getelementptr inbounds %struct.color_values_pair_s, %struct.color_values_pair_s* %140, i32 0, i32 0
  %arrayidx212 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* %values211, i32 0, i64 1
  %arrayidx213 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx212, i32 0, i64 %idxprom210
  %141 = load i16, i16* %arrayidx213, align 2, !tbaa !87
  %142 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom214 = sext i32 %142 to i64
  %arrayidx215 = getelementptr inbounds [64 x i16], [64 x i16]* %cv, i32 0, i64 %idxprom214
  store i16 %141, i16* %arrayidx215, align 2, !tbaa !87
  %143 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs216 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %143, i32 0, i32 42
  %encode_color217 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs216, i32 0, i32 51
  %144 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color217, align 8, !tbaa !108
  %145 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay218 = getelementptr inbounds [64 x i16], [64 x i16]* %cv, i32 0, i32 0
  %call219 = call i64 %144(%struct.gx_device_s* %145, i16* %arraydecay218) #6
  %146 = load i32, i32* %i, align 4, !tbaa !22
  %mul220 = mul nsw i32 2, %146
  %add221 = add nsw i32 %mul220, 1
  %idxprom222 = sext i32 %add221 to i64
  %147 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx223 = getelementptr inbounds i64, i64* %147, i64 %idxprom222
  store i64 %call219, i64* %arrayidx223, align 8, !tbaa !86
  br label %if.end.224

if.end.224:                                       ; preds = %if.then.209, %for.body.194
  %148 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom225 = sext i32 %148 to i64
  %arrayidx226 = getelementptr inbounds [64 x i16], [64 x i16]* %cv, i32 0, i64 %idxprom225
  store i16 0, i16* %arrayidx226, align 2, !tbaa !87
  br label %for.inc.227

for.inc.227:                                      ; preds = %if.end.224
  %149 = load i32, i32* %i, align 4, !tbaa !22
  %inc228 = add nsw i32 %149, 1
  store i32 %inc228, i32* %i, align 4, !tbaa !22
  br label %for.cond.191

for.end.229:                                      ; preds = %for.cond.191
  %150 = bitcast [64 x i16]* %cv to i8*
  call void @llvm.lifetime.end(i64 128, i8* %150) #2
  %151 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %151) #2
  %152 = bitcast i64* %plane_mask to i8*
  call void @llvm.lifetime.end(i64 8, i8* %152) #2
  %153 = bitcast i32* %invert to i8*
  call void @llvm.lifetime.end(i64 4, i8* %153) #2
  %154 = bitcast i16* %max_color to i8*
  call void @llvm.lifetime.end(i64 2, i8* %154) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @set_color_ht_le_4(i8* %dest_data, i32 %dest_raster, i32 %px, i32 %py, i32 %w, i32 %h, i32 %depth, i32 %special, i32 %nplanes, i64 %plane_mask, %struct.gx_device_s* %ignore_dev, %struct.color_values_pair_s* %ignore_pvp, i64* %colors, %struct.gx_const_strip_bitmap_s** %sbits) #0 {
entry:
  %dest_data.addr = alloca i8*, align 8
  %dest_raster.addr = alloca i32, align 4
  %px.addr = alloca i32, align 4
  %py.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %special.addr = alloca i32, align 4
  %nplanes.addr = alloca i32, align 4
  %plane_mask.addr = alloca i64, align 8
  %ignore_dev.addr = alloca %struct.gx_device_s*, align 8
  %ignore_pvp.addr = alloca %struct.color_values_pair_s*, align 8
  %colors.addr = alloca i64*, align 8
  %sbits.addr = alloca %struct.gx_const_strip_bitmap_s**, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %cursor = alloca [64 x %struct.tile_cursor_s], align 16
  %dbytes = alloca i32, align 4
  %dest_row = alloca i8*, align 8
  %endx = alloca i32, align 4
  %lasty = alloca i32, align 4
  %dest = alloca i8*, align 8
  %indices = alloca i32, align 4
  %nx = alloca i32, align 4
  %i = alloca i32, align 4
  %bits = alloca i32, align 4
  %tcolor = alloca i32, align 4
  %tcolor484 = alloca i32, align 4
  %tcolor507 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %dest_data, i8** %dest_data.addr, align 8, !tbaa !1
  store i32 %dest_raster, i32* %dest_raster.addr, align 4, !tbaa !22
  store i32 %px, i32* %px.addr, align 4, !tbaa !22
  store i32 %py, i32* %py.addr, align 4, !tbaa !22
  store i32 %w, i32* %w.addr, align 4, !tbaa !22
  store i32 %h, i32* %h.addr, align 4, !tbaa !22
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !22
  store i32 %special, i32* %special.addr, align 4, !tbaa !22
  store i32 %nplanes, i32* %nplanes.addr, align 4, !tbaa !22
  store i64 %plane_mask, i64* %plane_mask.addr, align 8, !tbaa !86
  store %struct.gx_device_s* %ignore_dev, %struct.gx_device_s** %ignore_dev.addr, align 8, !tbaa !1
  store %struct.color_values_pair_s* %ignore_pvp, %struct.color_values_pair_s** %ignore_pvp.addr, align 8, !tbaa !1
  store i64* %colors, i64** %colors.addr, align 8, !tbaa !1
  store %struct.gx_const_strip_bitmap_s** %sbits, %struct.gx_const_strip_bitmap_s*** %sbits.addr, align 8, !tbaa !1
  %0 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast [64 x %struct.tile_cursor_s]* %cursor to i8*
  call void @llvm.lifetime.start(i64 4096, i8* %2) #2
  %3 = bitcast i32* %dbytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load i32, i32* %depth.addr, align 4, !tbaa !22
  %shr = ashr i32 %4, 3
  store i32 %shr, i32* %dbytes, align 4, !tbaa !22
  %5 = bitcast i8** %dest_row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load i8*, i8** %dest_data.addr, align 8, !tbaa !1
  %7 = load i32, i32* %dest_raster.addr, align 4, !tbaa !22
  %8 = load i32, i32* %h.addr, align 4, !tbaa !22
  %sub = sub nsw i32 %8, 1
  %mul = mul i32 %7, %sub
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %idx.ext
  %9 = load i32, i32* %w.addr, align 4, !tbaa !22
  %10 = load i32, i32* %depth.addr, align 4, !tbaa !22
  %mul1 = mul nsw i32 %9, %10
  %div = sdiv i32 %mul1, 8
  %idx.ext2 = sext i32 %div to i64
  %add.ptr3 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext2
  store i8* %add.ptr3, i8** %dest_row, align 8, !tbaa !1
  %11 = load i32, i32* %special.addr, align 4, !tbaa !22
  %cmp = icmp sgt i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load i64, i64* %plane_mask.addr, align 8, !tbaa !86
  %arrayidx = getelementptr inbounds [17 x i8], [17 x i8]* @.str.1, i32 0, i64 %12
  %13 = load i8, i8* %arrayidx, align 1, !tbaa !24
  %conv = sext i8 %13 to i64
  store i64 %conv, i64* %plane_mask.addr, align 8, !tbaa !86
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %14 = bitcast i32* %endx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = load i32, i32* %w.addr, align 4, !tbaa !22
  %16 = load i32, i32* %px.addr, align 4, !tbaa !22
  %add = add nsw i32 %15, %16
  store i32 %add, i32* %endx, align 4, !tbaa !22
  %17 = bitcast i32* %lasty to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = load i32, i32* %h.addr, align 4, !tbaa !22
  %sub4 = sub nsw i32 %18, 1
  %19 = load i32, i32* %py.addr, align 4, !tbaa !22
  %add5 = add nsw i32 %sub4, %19
  store i32 %add5, i32* %lasty, align 4, !tbaa !22
  %20 = load i64, i64* %plane_mask.addr, align 8, !tbaa !86
  %and = and i64 %20, 1
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %do.end
  %arrayidx7 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 0
  %21 = load %struct.gx_const_strip_bitmap_s**, %struct.gx_const_strip_bitmap_s*** %sbits.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds %struct.gx_const_strip_bitmap_s*, %struct.gx_const_strip_bitmap_s** %21, i64 0
  %22 = load %struct.gx_const_strip_bitmap_s*, %struct.gx_const_strip_bitmap_s** %arrayidx8, align 8, !tbaa !1
  %23 = load i32, i32* %endx, align 4, !tbaa !22
  %24 = load i32, i32* %lasty, align 4, !tbaa !22
  call void @init_tile_cursor(i32 0, %struct.tile_cursor_s* %arrayidx7, %struct.gx_const_strip_bitmap_s* %22, i32 %23, i32 %24) #6
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %do.end
  %25 = load i64, i64* %plane_mask.addr, align 8, !tbaa !86
  %and10 = and i64 %25, 2
  %tobool11 = icmp ne i64 %and10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %if.end.9
  %arrayidx13 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 1
  %26 = load %struct.gx_const_strip_bitmap_s**, %struct.gx_const_strip_bitmap_s*** %sbits.addr, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds %struct.gx_const_strip_bitmap_s*, %struct.gx_const_strip_bitmap_s** %26, i64 1
  %27 = load %struct.gx_const_strip_bitmap_s*, %struct.gx_const_strip_bitmap_s** %arrayidx14, align 8, !tbaa !1
  %28 = load i32, i32* %endx, align 4, !tbaa !22
  %29 = load i32, i32* %lasty, align 4, !tbaa !22
  call void @init_tile_cursor(i32 1, %struct.tile_cursor_s* %arrayidx13, %struct.gx_const_strip_bitmap_s* %27, i32 %28, i32 %29) #6
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %if.end.9
  %30 = load i64, i64* %plane_mask.addr, align 8, !tbaa !86
  %and16 = and i64 %30, 4
  %tobool17 = icmp ne i64 %and16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %if.end.15
  %arrayidx19 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 2
  %31 = load %struct.gx_const_strip_bitmap_s**, %struct.gx_const_strip_bitmap_s*** %sbits.addr, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds %struct.gx_const_strip_bitmap_s*, %struct.gx_const_strip_bitmap_s** %31, i64 2
  %32 = load %struct.gx_const_strip_bitmap_s*, %struct.gx_const_strip_bitmap_s** %arrayidx20, align 8, !tbaa !1
  %33 = load i32, i32* %endx, align 4, !tbaa !22
  %34 = load i32, i32* %lasty, align 4, !tbaa !22
  call void @init_tile_cursor(i32 2, %struct.tile_cursor_s* %arrayidx19, %struct.gx_const_strip_bitmap_s* %32, i32 %33, i32 %34) #6
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %if.end.15
  %35 = load i64, i64* %plane_mask.addr, align 8, !tbaa !86
  %and22 = and i64 %35, 8
  %tobool23 = icmp ne i64 %and22, 0
  br i1 %tobool23, label %if.then.24, label %if.end.27

if.then.24:                                       ; preds = %if.end.21
  %arrayidx25 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 3
  %36 = load %struct.gx_const_strip_bitmap_s**, %struct.gx_const_strip_bitmap_s*** %sbits.addr, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds %struct.gx_const_strip_bitmap_s*, %struct.gx_const_strip_bitmap_s** %36, i64 3
  %37 = load %struct.gx_const_strip_bitmap_s*, %struct.gx_const_strip_bitmap_s** %arrayidx26, align 8, !tbaa !1
  %38 = load i32, i32* %endx, align 4, !tbaa !22
  %39 = load i32, i32* %lasty, align 4, !tbaa !22
  call void @init_tile_cursor(i32 3, %struct.tile_cursor_s* %arrayidx25, %struct.gx_const_strip_bitmap_s* %37, i32 %38, i32 %39) #6
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.24, %if.end.21
  %40 = bitcast i32* %lasty to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #2
  %41 = bitcast i32* %endx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #2
  %42 = load i32, i32* %h.addr, align 4, !tbaa !22
  store i32 %42, i32* %y, align 4, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc.683, %if.end.27
  %43 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #2
  %44 = load i8*, i8** %dest_row, align 8, !tbaa !1
  store i8* %44, i8** %dest, align 8, !tbaa !1
  %45 = load i32, i32* %y, align 4, !tbaa !22
  %dec = add nsw i32 %45, -1
  store i32 %dec, i32* %y, align 4, !tbaa !22
  %46 = load i32, i32* %w.addr, align 4, !tbaa !22
  store i32 %46, i32* %x, align 4, !tbaa !22
  br label %for.cond.28

for.cond.28:                                      ; preds = %sw.epilog, %for.cond
  %47 = load i32, i32* %x, align 4, !tbaa !22
  %cmp29 = icmp sgt i32 %47, 0
  br i1 %cmp29, label %for.body, label %for.end.535

for.body:                                         ; preds = %for.cond.28
  %48 = bitcast i32* %indices to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #2
  %49 = bitcast i32* %nx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %49) #2
  %50 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #2
  %51 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #2
  %52 = load i64, i64* %plane_mask.addr, align 8, !tbaa !86
  %and31 = and i64 %52, 1
  %tobool32 = icmp ne i64 %and31, 0
  br i1 %tobool32, label %if.then.33, label %if.else.103

if.then.33:                                       ; preds = %for.body
  br label %do.body.34

do.body.34:                                       ; preds = %if.then.33
  %arrayidx35 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 0
  %data = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx35, i32 0, i32 8
  %53 = load i8*, i8** %data, align 8, !tbaa !110
  %arrayidx36 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 0
  %row = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx36, i32 0, i32 5
  %54 = load i8*, i8** %row, align 8, !tbaa !112
  %cmp37 = icmp ugt i8* %53, %54
  br i1 %cmp37, label %if.then.39, label %if.else

if.then.39:                                       ; preds = %do.body.34
  %arrayidx40 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 0
  %data41 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx40, i32 0, i32 8
  %55 = load i8*, i8** %data41, align 8, !tbaa !110
  %arrayidx42 = getelementptr inbounds i8, i8* %55, i64 -1
  %56 = load i8, i8* %arrayidx42, align 1, !tbaa !24
  %conv43 = zext i8 %56 to i32
  %shl = shl i32 %conv43, 8
  %arrayidx44 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 0
  %data45 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx44, i32 0, i32 8
  %57 = load i8*, i8** %data45, align 8, !tbaa !110
  %58 = load i8, i8* %57, align 1, !tbaa !24
  %conv46 = zext i8 %58 to i32
  %or = or i32 %shl, %conv46
  %arrayidx47 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 0
  %bit_shift = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx47, i32 0, i32 9
  %59 = load i32, i32* %bit_shift, align 4, !tbaa !113
  %shr48 = ashr i32 %or, %59
  store i32 %shr48, i32* %bits, align 4, !tbaa !22
  %arrayidx49 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 0
  %data50 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx49, i32 0, i32 8
  %60 = load i8*, i8** %data50, align 8, !tbaa !110
  %incdec.ptr = getelementptr inbounds i8, i8* %60, i32 -1
  store i8* %incdec.ptr, i8** %data50, align 8, !tbaa !110
  br label %if.end.98

if.else:                                          ; preds = %do.body.34
  %arrayidx51 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 0
  %data52 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx51, i32 0, i32 8
  %61 = load i8*, i8** %data52, align 8, !tbaa !110
  %62 = load i8, i8* %61, align 1, !tbaa !24
  %conv53 = zext i8 %62 to i32
  %arrayidx54 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 0
  %bit_shift55 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx54, i32 0, i32 9
  %63 = load i32, i32* %bit_shift55, align 4, !tbaa !113
  %shr56 = ashr i32 %conv53, %63
  store i32 %shr56, i32* %bits, align 4, !tbaa !22
  %arrayidx57 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 0
  %xbytes = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx57, i32 0, i32 3
  %64 = load i32, i32* %xbytes, align 4, !tbaa !114
  %arrayidx58 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 0
  %data59 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx58, i32 0, i32 8
  %65 = load i8*, i8** %data59, align 8, !tbaa !110
  %idx.ext60 = zext i32 %64 to i64
  %add.ptr61 = getelementptr inbounds i8, i8* %65, i64 %idx.ext60
  store i8* %add.ptr61, i8** %data59, align 8, !tbaa !110
  %arrayidx62 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 0
  %xbits = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx62, i32 0, i32 4
  %66 = load i32, i32* %xbits, align 4, !tbaa !115
  %arrayidx63 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 0
  %bit_shift64 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx63, i32 0, i32 9
  %67 = load i32, i32* %bit_shift64, align 4, !tbaa !113
  %sub65 = sub nsw i32 %67, %66
  store i32 %sub65, i32* %bit_shift64, align 4, !tbaa !113
  %cmp66 = icmp slt i32 %sub65, 0
  br i1 %cmp66, label %if.then.68, label %if.else.80

if.then.68:                                       ; preds = %if.else
  %arrayidx69 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 0
  %data70 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx69, i32 0, i32 8
  %68 = load i8*, i8** %data70, align 8, !tbaa !110
  %69 = load i8, i8* %68, align 1, !tbaa !24
  %conv71 = zext i8 %69 to i32
  %arrayidx72 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 0
  %bit_shift73 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx72, i32 0, i32 9
  %70 = load i32, i32* %bit_shift73, align 4, !tbaa !113
  %sub74 = sub nsw i32 0, %70
  %shl75 = shl i32 %conv71, %sub74
  %71 = load i32, i32* %bits, align 4, !tbaa !22
  %or76 = or i32 %71, %shl75
  store i32 %or76, i32* %bits, align 4, !tbaa !22
  %arrayidx77 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 0
  %bit_shift78 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx77, i32 0, i32 9
  %72 = load i32, i32* %bit_shift78, align 4, !tbaa !113
  %add79 = add nsw i32 %72, 8
  store i32 %add79, i32* %bit_shift78, align 4, !tbaa !113
  br label %if.end.97

if.else.80:                                       ; preds = %if.else
  %arrayidx81 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 0
  %data82 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx81, i32 0, i32 8
  %73 = load i8*, i8** %data82, align 8, !tbaa !110
  %arrayidx83 = getelementptr inbounds i8, i8* %73, i64 -1
  %74 = load i8, i8* %arrayidx83, align 1, !tbaa !24
  %conv84 = zext i8 %74 to i32
  %shl85 = shl i32 %conv84, 8
  %arrayidx86 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 0
  %data87 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx86, i32 0, i32 8
  %75 = load i8*, i8** %data87, align 8, !tbaa !110
  %76 = load i8, i8* %75, align 1, !tbaa !24
  %conv88 = zext i8 %76 to i32
  %or89 = or i32 %shl85, %conv88
  %arrayidx90 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 0
  %bit_shift91 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx90, i32 0, i32 9
  %77 = load i32, i32* %bit_shift91, align 4, !tbaa !113
  %shr92 = ashr i32 %or89, %77
  %78 = load i32, i32* %bits, align 4, !tbaa !22
  %or93 = or i32 %78, %shr92
  store i32 %or93, i32* %bits, align 4, !tbaa !22
  %arrayidx94 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 0
  %data95 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx94, i32 0, i32 8
  %79 = load i8*, i8** %data95, align 8, !tbaa !110
  %incdec.ptr96 = getelementptr inbounds i8, i8* %79, i32 -1
  store i8* %incdec.ptr96, i8** %data95, align 8, !tbaa !110
  br label %if.end.97

if.end.97:                                        ; preds = %if.else.80, %if.then.68
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.then.39
  br label %do.cond.99

do.cond.99:                                       ; preds = %if.end.98
  br label %do.end.100

do.end.100:                                       ; preds = %do.cond.99
  %80 = load i32, i32* %bits, align 4, !tbaa !22
  %and101 = and i32 %80, 255
  %idxprom = zext i32 %and101 to i64
  %arrayidx102 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_8x1_to_8x4, i32 0, i64 %idxprom
  %81 = load i32, i32* %arrayidx102, align 4, !tbaa !22
  store i32 %81, i32* %indices, align 4, !tbaa !22
  br label %if.end.104

if.else.103:                                      ; preds = %for.body
  store i32 0, i32* %indices, align 4, !tbaa !22
  br label %if.end.104

if.end.104:                                       ; preds = %if.else.103, %do.end.100
  %82 = load i64, i64* %plane_mask.addr, align 8, !tbaa !86
  %and105 = and i64 %82, 2
  %tobool106 = icmp ne i64 %and105, 0
  br i1 %tobool106, label %if.then.107, label %if.end.189

if.then.107:                                      ; preds = %if.end.104
  br label %do.body.108

do.body.108:                                      ; preds = %if.then.107
  %arrayidx109 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 1
  %data110 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx109, i32 0, i32 8
  %83 = load i8*, i8** %data110, align 8, !tbaa !110
  %arrayidx111 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 1
  %row112 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx111, i32 0, i32 5
  %84 = load i8*, i8** %row112, align 8, !tbaa !112
  %cmp113 = icmp ugt i8* %83, %84
  br i1 %cmp113, label %if.then.115, label %if.else.131

if.then.115:                                      ; preds = %do.body.108
  %arrayidx116 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 1
  %data117 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx116, i32 0, i32 8
  %85 = load i8*, i8** %data117, align 8, !tbaa !110
  %arrayidx118 = getelementptr inbounds i8, i8* %85, i64 -1
  %86 = load i8, i8* %arrayidx118, align 1, !tbaa !24
  %conv119 = zext i8 %86 to i32
  %shl120 = shl i32 %conv119, 8
  %arrayidx121 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 1
  %data122 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx121, i32 0, i32 8
  %87 = load i8*, i8** %data122, align 8, !tbaa !110
  %88 = load i8, i8* %87, align 1, !tbaa !24
  %conv123 = zext i8 %88 to i32
  %or124 = or i32 %shl120, %conv123
  %arrayidx125 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 1
  %bit_shift126 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx125, i32 0, i32 9
  %89 = load i32, i32* %bit_shift126, align 4, !tbaa !113
  %shr127 = ashr i32 %or124, %89
  store i32 %shr127, i32* %bits, align 4, !tbaa !22
  %arrayidx128 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 1
  %data129 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx128, i32 0, i32 8
  %90 = load i8*, i8** %data129, align 8, !tbaa !110
  %incdec.ptr130 = getelementptr inbounds i8, i8* %90, i32 -1
  store i8* %incdec.ptr130, i8** %data129, align 8, !tbaa !110
  br label %if.end.181

if.else.131:                                      ; preds = %do.body.108
  %arrayidx132 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 1
  %data133 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx132, i32 0, i32 8
  %91 = load i8*, i8** %data133, align 8, !tbaa !110
  %92 = load i8, i8* %91, align 1, !tbaa !24
  %conv134 = zext i8 %92 to i32
  %arrayidx135 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 1
  %bit_shift136 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx135, i32 0, i32 9
  %93 = load i32, i32* %bit_shift136, align 4, !tbaa !113
  %shr137 = ashr i32 %conv134, %93
  store i32 %shr137, i32* %bits, align 4, !tbaa !22
  %arrayidx138 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 1
  %xbytes139 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx138, i32 0, i32 3
  %94 = load i32, i32* %xbytes139, align 4, !tbaa !114
  %arrayidx140 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 1
  %data141 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx140, i32 0, i32 8
  %95 = load i8*, i8** %data141, align 8, !tbaa !110
  %idx.ext142 = zext i32 %94 to i64
  %add.ptr143 = getelementptr inbounds i8, i8* %95, i64 %idx.ext142
  store i8* %add.ptr143, i8** %data141, align 8, !tbaa !110
  %arrayidx144 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 1
  %xbits145 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx144, i32 0, i32 4
  %96 = load i32, i32* %xbits145, align 4, !tbaa !115
  %arrayidx146 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 1
  %bit_shift147 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx146, i32 0, i32 9
  %97 = load i32, i32* %bit_shift147, align 4, !tbaa !113
  %sub148 = sub nsw i32 %97, %96
  store i32 %sub148, i32* %bit_shift147, align 4, !tbaa !113
  %cmp149 = icmp slt i32 %sub148, 0
  br i1 %cmp149, label %if.then.151, label %if.else.163

if.then.151:                                      ; preds = %if.else.131
  %arrayidx152 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 1
  %data153 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx152, i32 0, i32 8
  %98 = load i8*, i8** %data153, align 8, !tbaa !110
  %99 = load i8, i8* %98, align 1, !tbaa !24
  %conv154 = zext i8 %99 to i32
  %arrayidx155 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 1
  %bit_shift156 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx155, i32 0, i32 9
  %100 = load i32, i32* %bit_shift156, align 4, !tbaa !113
  %sub157 = sub nsw i32 0, %100
  %shl158 = shl i32 %conv154, %sub157
  %101 = load i32, i32* %bits, align 4, !tbaa !22
  %or159 = or i32 %101, %shl158
  store i32 %or159, i32* %bits, align 4, !tbaa !22
  %arrayidx160 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 1
  %bit_shift161 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx160, i32 0, i32 9
  %102 = load i32, i32* %bit_shift161, align 4, !tbaa !113
  %add162 = add nsw i32 %102, 8
  store i32 %add162, i32* %bit_shift161, align 4, !tbaa !113
  br label %if.end.180

if.else.163:                                      ; preds = %if.else.131
  %arrayidx164 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 1
  %data165 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx164, i32 0, i32 8
  %103 = load i8*, i8** %data165, align 8, !tbaa !110
  %arrayidx166 = getelementptr inbounds i8, i8* %103, i64 -1
  %104 = load i8, i8* %arrayidx166, align 1, !tbaa !24
  %conv167 = zext i8 %104 to i32
  %shl168 = shl i32 %conv167, 8
  %arrayidx169 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 1
  %data170 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx169, i32 0, i32 8
  %105 = load i8*, i8** %data170, align 8, !tbaa !110
  %106 = load i8, i8* %105, align 1, !tbaa !24
  %conv171 = zext i8 %106 to i32
  %or172 = or i32 %shl168, %conv171
  %arrayidx173 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 1
  %bit_shift174 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx173, i32 0, i32 9
  %107 = load i32, i32* %bit_shift174, align 4, !tbaa !113
  %shr175 = ashr i32 %or172, %107
  %108 = load i32, i32* %bits, align 4, !tbaa !22
  %or176 = or i32 %108, %shr175
  store i32 %or176, i32* %bits, align 4, !tbaa !22
  %arrayidx177 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 1
  %data178 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx177, i32 0, i32 8
  %109 = load i8*, i8** %data178, align 8, !tbaa !110
  %incdec.ptr179 = getelementptr inbounds i8, i8* %109, i32 -1
  store i8* %incdec.ptr179, i8** %data178, align 8, !tbaa !110
  br label %if.end.180

if.end.180:                                       ; preds = %if.else.163, %if.then.151
  br label %if.end.181

if.end.181:                                       ; preds = %if.end.180, %if.then.115
  br label %do.cond.182

do.cond.182:                                      ; preds = %if.end.181
  br label %do.end.183

do.end.183:                                       ; preds = %do.cond.182
  %110 = load i32, i32* %bits, align 4, !tbaa !22
  %and184 = and i32 %110, 255
  %idxprom185 = zext i32 %and184 to i64
  %arrayidx186 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_8x1_to_8x4, i32 0, i64 %idxprom185
  %111 = load i32, i32* %arrayidx186, align 4, !tbaa !22
  %shl187 = shl i32 %111, 1
  %112 = load i32, i32* %indices, align 4, !tbaa !22
  %or188 = or i32 %112, %shl187
  store i32 %or188, i32* %indices, align 4, !tbaa !22
  br label %if.end.189

if.end.189:                                       ; preds = %do.end.183, %if.end.104
  %113 = load i64, i64* %plane_mask.addr, align 8, !tbaa !86
  %and190 = and i64 %113, 4
  %tobool191 = icmp ne i64 %and190, 0
  br i1 %tobool191, label %if.then.192, label %if.end.274

if.then.192:                                      ; preds = %if.end.189
  br label %do.body.193

do.body.193:                                      ; preds = %if.then.192
  %arrayidx194 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 2
  %data195 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx194, i32 0, i32 8
  %114 = load i8*, i8** %data195, align 8, !tbaa !110
  %arrayidx196 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 2
  %row197 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx196, i32 0, i32 5
  %115 = load i8*, i8** %row197, align 8, !tbaa !112
  %cmp198 = icmp ugt i8* %114, %115
  br i1 %cmp198, label %if.then.200, label %if.else.216

if.then.200:                                      ; preds = %do.body.193
  %arrayidx201 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 2
  %data202 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx201, i32 0, i32 8
  %116 = load i8*, i8** %data202, align 8, !tbaa !110
  %arrayidx203 = getelementptr inbounds i8, i8* %116, i64 -1
  %117 = load i8, i8* %arrayidx203, align 1, !tbaa !24
  %conv204 = zext i8 %117 to i32
  %shl205 = shl i32 %conv204, 8
  %arrayidx206 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 2
  %data207 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx206, i32 0, i32 8
  %118 = load i8*, i8** %data207, align 8, !tbaa !110
  %119 = load i8, i8* %118, align 1, !tbaa !24
  %conv208 = zext i8 %119 to i32
  %or209 = or i32 %shl205, %conv208
  %arrayidx210 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 2
  %bit_shift211 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx210, i32 0, i32 9
  %120 = load i32, i32* %bit_shift211, align 4, !tbaa !113
  %shr212 = ashr i32 %or209, %120
  store i32 %shr212, i32* %bits, align 4, !tbaa !22
  %arrayidx213 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 2
  %data214 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx213, i32 0, i32 8
  %121 = load i8*, i8** %data214, align 8, !tbaa !110
  %incdec.ptr215 = getelementptr inbounds i8, i8* %121, i32 -1
  store i8* %incdec.ptr215, i8** %data214, align 8, !tbaa !110
  br label %if.end.266

if.else.216:                                      ; preds = %do.body.193
  %arrayidx217 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 2
  %data218 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx217, i32 0, i32 8
  %122 = load i8*, i8** %data218, align 8, !tbaa !110
  %123 = load i8, i8* %122, align 1, !tbaa !24
  %conv219 = zext i8 %123 to i32
  %arrayidx220 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 2
  %bit_shift221 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx220, i32 0, i32 9
  %124 = load i32, i32* %bit_shift221, align 4, !tbaa !113
  %shr222 = ashr i32 %conv219, %124
  store i32 %shr222, i32* %bits, align 4, !tbaa !22
  %arrayidx223 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 2
  %xbytes224 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx223, i32 0, i32 3
  %125 = load i32, i32* %xbytes224, align 4, !tbaa !114
  %arrayidx225 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 2
  %data226 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx225, i32 0, i32 8
  %126 = load i8*, i8** %data226, align 8, !tbaa !110
  %idx.ext227 = zext i32 %125 to i64
  %add.ptr228 = getelementptr inbounds i8, i8* %126, i64 %idx.ext227
  store i8* %add.ptr228, i8** %data226, align 8, !tbaa !110
  %arrayidx229 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 2
  %xbits230 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx229, i32 0, i32 4
  %127 = load i32, i32* %xbits230, align 4, !tbaa !115
  %arrayidx231 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 2
  %bit_shift232 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx231, i32 0, i32 9
  %128 = load i32, i32* %bit_shift232, align 4, !tbaa !113
  %sub233 = sub nsw i32 %128, %127
  store i32 %sub233, i32* %bit_shift232, align 4, !tbaa !113
  %cmp234 = icmp slt i32 %sub233, 0
  br i1 %cmp234, label %if.then.236, label %if.else.248

if.then.236:                                      ; preds = %if.else.216
  %arrayidx237 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 2
  %data238 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx237, i32 0, i32 8
  %129 = load i8*, i8** %data238, align 8, !tbaa !110
  %130 = load i8, i8* %129, align 1, !tbaa !24
  %conv239 = zext i8 %130 to i32
  %arrayidx240 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 2
  %bit_shift241 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx240, i32 0, i32 9
  %131 = load i32, i32* %bit_shift241, align 4, !tbaa !113
  %sub242 = sub nsw i32 0, %131
  %shl243 = shl i32 %conv239, %sub242
  %132 = load i32, i32* %bits, align 4, !tbaa !22
  %or244 = or i32 %132, %shl243
  store i32 %or244, i32* %bits, align 4, !tbaa !22
  %arrayidx245 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 2
  %bit_shift246 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx245, i32 0, i32 9
  %133 = load i32, i32* %bit_shift246, align 4, !tbaa !113
  %add247 = add nsw i32 %133, 8
  store i32 %add247, i32* %bit_shift246, align 4, !tbaa !113
  br label %if.end.265

if.else.248:                                      ; preds = %if.else.216
  %arrayidx249 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 2
  %data250 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx249, i32 0, i32 8
  %134 = load i8*, i8** %data250, align 8, !tbaa !110
  %arrayidx251 = getelementptr inbounds i8, i8* %134, i64 -1
  %135 = load i8, i8* %arrayidx251, align 1, !tbaa !24
  %conv252 = zext i8 %135 to i32
  %shl253 = shl i32 %conv252, 8
  %arrayidx254 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 2
  %data255 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx254, i32 0, i32 8
  %136 = load i8*, i8** %data255, align 8, !tbaa !110
  %137 = load i8, i8* %136, align 1, !tbaa !24
  %conv256 = zext i8 %137 to i32
  %or257 = or i32 %shl253, %conv256
  %arrayidx258 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 2
  %bit_shift259 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx258, i32 0, i32 9
  %138 = load i32, i32* %bit_shift259, align 4, !tbaa !113
  %shr260 = ashr i32 %or257, %138
  %139 = load i32, i32* %bits, align 4, !tbaa !22
  %or261 = or i32 %139, %shr260
  store i32 %or261, i32* %bits, align 4, !tbaa !22
  %arrayidx262 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 2
  %data263 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx262, i32 0, i32 8
  %140 = load i8*, i8** %data263, align 8, !tbaa !110
  %incdec.ptr264 = getelementptr inbounds i8, i8* %140, i32 -1
  store i8* %incdec.ptr264, i8** %data263, align 8, !tbaa !110
  br label %if.end.265

if.end.265:                                       ; preds = %if.else.248, %if.then.236
  br label %if.end.266

if.end.266:                                       ; preds = %if.end.265, %if.then.200
  br label %do.cond.267

do.cond.267:                                      ; preds = %if.end.266
  br label %do.end.268

do.end.268:                                       ; preds = %do.cond.267
  %141 = load i32, i32* %bits, align 4, !tbaa !22
  %and269 = and i32 %141, 255
  %idxprom270 = zext i32 %and269 to i64
  %arrayidx271 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_8x1_to_8x4, i32 0, i64 %idxprom270
  %142 = load i32, i32* %arrayidx271, align 4, !tbaa !22
  %shl272 = shl i32 %142, 2
  %143 = load i32, i32* %indices, align 4, !tbaa !22
  %or273 = or i32 %143, %shl272
  store i32 %or273, i32* %indices, align 4, !tbaa !22
  br label %if.end.274

if.end.274:                                       ; preds = %do.end.268, %if.end.189
  %144 = load i64, i64* %plane_mask.addr, align 8, !tbaa !86
  %and275 = and i64 %144, 8
  %tobool276 = icmp ne i64 %and275, 0
  br i1 %tobool276, label %if.then.277, label %if.end.359

if.then.277:                                      ; preds = %if.end.274
  br label %do.body.278

do.body.278:                                      ; preds = %if.then.277
  %arrayidx279 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 3
  %data280 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx279, i32 0, i32 8
  %145 = load i8*, i8** %data280, align 8, !tbaa !110
  %arrayidx281 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 3
  %row282 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx281, i32 0, i32 5
  %146 = load i8*, i8** %row282, align 8, !tbaa !112
  %cmp283 = icmp ugt i8* %145, %146
  br i1 %cmp283, label %if.then.285, label %if.else.301

if.then.285:                                      ; preds = %do.body.278
  %arrayidx286 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 3
  %data287 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx286, i32 0, i32 8
  %147 = load i8*, i8** %data287, align 8, !tbaa !110
  %arrayidx288 = getelementptr inbounds i8, i8* %147, i64 -1
  %148 = load i8, i8* %arrayidx288, align 1, !tbaa !24
  %conv289 = zext i8 %148 to i32
  %shl290 = shl i32 %conv289, 8
  %arrayidx291 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 3
  %data292 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx291, i32 0, i32 8
  %149 = load i8*, i8** %data292, align 8, !tbaa !110
  %150 = load i8, i8* %149, align 1, !tbaa !24
  %conv293 = zext i8 %150 to i32
  %or294 = or i32 %shl290, %conv293
  %arrayidx295 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 3
  %bit_shift296 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx295, i32 0, i32 9
  %151 = load i32, i32* %bit_shift296, align 4, !tbaa !113
  %shr297 = ashr i32 %or294, %151
  store i32 %shr297, i32* %bits, align 4, !tbaa !22
  %arrayidx298 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 3
  %data299 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx298, i32 0, i32 8
  %152 = load i8*, i8** %data299, align 8, !tbaa !110
  %incdec.ptr300 = getelementptr inbounds i8, i8* %152, i32 -1
  store i8* %incdec.ptr300, i8** %data299, align 8, !tbaa !110
  br label %if.end.351

if.else.301:                                      ; preds = %do.body.278
  %arrayidx302 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 3
  %data303 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx302, i32 0, i32 8
  %153 = load i8*, i8** %data303, align 8, !tbaa !110
  %154 = load i8, i8* %153, align 1, !tbaa !24
  %conv304 = zext i8 %154 to i32
  %arrayidx305 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 3
  %bit_shift306 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx305, i32 0, i32 9
  %155 = load i32, i32* %bit_shift306, align 4, !tbaa !113
  %shr307 = ashr i32 %conv304, %155
  store i32 %shr307, i32* %bits, align 4, !tbaa !22
  %arrayidx308 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 3
  %xbytes309 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx308, i32 0, i32 3
  %156 = load i32, i32* %xbytes309, align 4, !tbaa !114
  %arrayidx310 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 3
  %data311 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx310, i32 0, i32 8
  %157 = load i8*, i8** %data311, align 8, !tbaa !110
  %idx.ext312 = zext i32 %156 to i64
  %add.ptr313 = getelementptr inbounds i8, i8* %157, i64 %idx.ext312
  store i8* %add.ptr313, i8** %data311, align 8, !tbaa !110
  %arrayidx314 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 3
  %xbits315 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx314, i32 0, i32 4
  %158 = load i32, i32* %xbits315, align 4, !tbaa !115
  %arrayidx316 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 3
  %bit_shift317 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx316, i32 0, i32 9
  %159 = load i32, i32* %bit_shift317, align 4, !tbaa !113
  %sub318 = sub nsw i32 %159, %158
  store i32 %sub318, i32* %bit_shift317, align 4, !tbaa !113
  %cmp319 = icmp slt i32 %sub318, 0
  br i1 %cmp319, label %if.then.321, label %if.else.333

if.then.321:                                      ; preds = %if.else.301
  %arrayidx322 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 3
  %data323 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx322, i32 0, i32 8
  %160 = load i8*, i8** %data323, align 8, !tbaa !110
  %161 = load i8, i8* %160, align 1, !tbaa !24
  %conv324 = zext i8 %161 to i32
  %arrayidx325 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 3
  %bit_shift326 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx325, i32 0, i32 9
  %162 = load i32, i32* %bit_shift326, align 4, !tbaa !113
  %sub327 = sub nsw i32 0, %162
  %shl328 = shl i32 %conv324, %sub327
  %163 = load i32, i32* %bits, align 4, !tbaa !22
  %or329 = or i32 %163, %shl328
  store i32 %or329, i32* %bits, align 4, !tbaa !22
  %arrayidx330 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 3
  %bit_shift331 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx330, i32 0, i32 9
  %164 = load i32, i32* %bit_shift331, align 4, !tbaa !113
  %add332 = add nsw i32 %164, 8
  store i32 %add332, i32* %bit_shift331, align 4, !tbaa !113
  br label %if.end.350

if.else.333:                                      ; preds = %if.else.301
  %arrayidx334 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 3
  %data335 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx334, i32 0, i32 8
  %165 = load i8*, i8** %data335, align 8, !tbaa !110
  %arrayidx336 = getelementptr inbounds i8, i8* %165, i64 -1
  %166 = load i8, i8* %arrayidx336, align 1, !tbaa !24
  %conv337 = zext i8 %166 to i32
  %shl338 = shl i32 %conv337, 8
  %arrayidx339 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 3
  %data340 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx339, i32 0, i32 8
  %167 = load i8*, i8** %data340, align 8, !tbaa !110
  %168 = load i8, i8* %167, align 1, !tbaa !24
  %conv341 = zext i8 %168 to i32
  %or342 = or i32 %shl338, %conv341
  %arrayidx343 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 3
  %bit_shift344 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx343, i32 0, i32 9
  %169 = load i32, i32* %bit_shift344, align 4, !tbaa !113
  %shr345 = ashr i32 %or342, %169
  %170 = load i32, i32* %bits, align 4, !tbaa !22
  %or346 = or i32 %170, %shr345
  store i32 %or346, i32* %bits, align 4, !tbaa !22
  %arrayidx347 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 3
  %data348 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx347, i32 0, i32 8
  %171 = load i8*, i8** %data348, align 8, !tbaa !110
  %incdec.ptr349 = getelementptr inbounds i8, i8* %171, i32 -1
  store i8* %incdec.ptr349, i8** %data348, align 8, !tbaa !110
  br label %if.end.350

if.end.350:                                       ; preds = %if.else.333, %if.then.321
  br label %if.end.351

if.end.351:                                       ; preds = %if.end.350, %if.then.285
  br label %do.cond.352

do.cond.352:                                      ; preds = %if.end.351
  br label %do.end.353

do.end.353:                                       ; preds = %do.cond.352
  %172 = load i32, i32* %bits, align 4, !tbaa !22
  %and354 = and i32 %172, 255
  %idxprom355 = zext i32 %and354 to i64
  %arrayidx356 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_8x1_to_8x4, i32 0, i64 %idxprom355
  %173 = load i32, i32* %arrayidx356, align 4, !tbaa !22
  %shl357 = shl i32 %173, 3
  %174 = load i32, i32* %indices, align 4, !tbaa !22
  %or358 = or i32 %174, %shl357
  store i32 %or358, i32* %indices, align 4, !tbaa !22
  br label %if.end.359

if.end.359:                                       ; preds = %do.end.353, %if.end.274
  %175 = load i32, i32* %x, align 4, !tbaa !22
  %cmp360 = icmp slt i32 %175, 8
  br i1 %cmp360, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.359
  %176 = load i32, i32* %x, align 4, !tbaa !22
  br label %cond.end

cond.false:                                       ; preds = %if.end.359
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %176, %cond.true ], [ 8, %cond.false ]
  store i32 %cond, i32* %nx, align 4, !tbaa !22
  %177 = load i32, i32* %nx, align 4, !tbaa !22
  %178 = load i32, i32* %x, align 4, !tbaa !22
  %sub362 = sub nsw i32 %178, %177
  store i32 %sub362, i32* %x, align 4, !tbaa !22
  %179 = load i32, i32* %dbytes, align 4, !tbaa !22
  switch i32 %179, label %sw.epilog [
    i32 0, label %sw.bb
    i32 4, label %sw.bb.453
    i32 3, label %sw.bb.478
    i32 2, label %sw.bb.501
    i32 1, label %sw.bb.521
  ]

sw.bb:                                            ; preds = %cond.end
  %180 = load i32, i32* %special.addr, align 4, !tbaa !22
  %cmp363 = icmp sgt i32 %180, 0
  br i1 %cmp363, label %if.then.365, label %if.else.402

if.then.365:                                      ; preds = %sw.bb
  %181 = load i32, i32* %indices, align 4, !tbaa !22
  %conv366 = zext i32 %181 to i64
  %182 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx367 = getelementptr inbounds i64, i64* %182, i64 1
  %183 = load i64, i64* %arrayidx367, align 8, !tbaa !86
  %and368 = and i64 %conv366, %183
  %184 = load i32, i32* %indices, align 4, !tbaa !22
  %neg = xor i32 %184, -1
  %conv369 = zext i32 %neg to i64
  %185 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx370 = getelementptr inbounds i64, i64* %185, i64 0
  %186 = load i64, i64* %arrayidx370, align 8, !tbaa !86
  %and371 = and i64 %conv369, %186
  %or372 = or i64 %and368, %and371
  %conv373 = trunc i64 %or372 to i32
  store i32 %conv373, i32* %indices, align 4, !tbaa !22
  %187 = load i32, i32* %nx, align 4, !tbaa !22
  store i32 %187, i32* %i, align 4, !tbaa !22
  %188 = load i32, i32* %x, align 4, !tbaa !22
  %189 = load i32, i32* %nx, align 4, !tbaa !22
  %add374 = add nsw i32 %188, %189
  %and375 = and i32 %add374, 1
  %tobool376 = icmp ne i32 %and375, 0
  br i1 %tobool376, label %if.then.377, label %if.end.386

if.then.377:                                      ; preds = %if.then.365
  %190 = load i8*, i8** %dest, align 8, !tbaa !1
  %191 = load i8, i8* %190, align 1, !tbaa !24
  %conv378 = zext i8 %191 to i32
  %and379 = and i32 %conv378, 15
  %192 = load i32, i32* %indices, align 4, !tbaa !22
  %and380 = and i32 %192, 15
  %shl381 = shl i32 %and380, 4
  %add382 = add i32 %and379, %shl381
  %conv383 = trunc i32 %add382 to i8
  %193 = load i8*, i8** %dest, align 8, !tbaa !1
  store i8 %conv383, i8* %193, align 1, !tbaa !24
  %194 = load i32, i32* %indices, align 4, !tbaa !22
  %shr384 = lshr i32 %194, 4
  store i32 %shr384, i32* %indices, align 4, !tbaa !22
  %195 = load i32, i32* %i, align 4, !tbaa !22
  %dec385 = add nsw i32 %195, -1
  store i32 %dec385, i32* %i, align 4, !tbaa !22
  br label %if.end.386

if.end.386:                                       ; preds = %if.then.377, %if.then.365
  br label %for.cond.387

for.cond.387:                                     ; preds = %for.inc, %if.end.386
  %196 = load i32, i32* %i, align 4, !tbaa !22
  %sub388 = sub nsw i32 %196, 2
  store i32 %sub388, i32* %i, align 4, !tbaa !22
  %cmp389 = icmp sge i32 %sub388, 0
  br i1 %cmp389, label %for.body.391, label %for.end

for.body.391:                                     ; preds = %for.cond.387
  %197 = load i32, i32* %indices, align 4, !tbaa !22
  %conv392 = trunc i32 %197 to i8
  %198 = load i8*, i8** %dest, align 8, !tbaa !1
  %incdec.ptr393 = getelementptr inbounds i8, i8* %198, i32 -1
  store i8* %incdec.ptr393, i8** %dest, align 8, !tbaa !1
  store i8 %conv392, i8* %incdec.ptr393, align 1, !tbaa !24
  br label %for.inc

for.inc:                                          ; preds = %for.body.391
  %199 = load i32, i32* %indices, align 4, !tbaa !22
  %shr394 = lshr i32 %199, 8
  store i32 %shr394, i32* %indices, align 4, !tbaa !22
  br label %for.cond.387

for.end:                                          ; preds = %for.cond.387
  %200 = load i32, i32* %i, align 4, !tbaa !22
  %and395 = and i32 %200, 1
  %tobool396 = icmp ne i32 %and395, 0
  br i1 %tobool396, label %if.then.397, label %if.end.401

if.then.397:                                      ; preds = %for.end
  %201 = load i32, i32* %indices, align 4, !tbaa !22
  %and398 = and i32 %201, 15
  %conv399 = trunc i32 %and398 to i8
  %202 = load i8*, i8** %dest, align 8, !tbaa !1
  %incdec.ptr400 = getelementptr inbounds i8, i8* %202, i32 -1
  store i8* %incdec.ptr400, i8** %dest, align 8, !tbaa !1
  store i8 %conv399, i8* %incdec.ptr400, align 1, !tbaa !24
  br label %if.end.401

if.end.401:                                       ; preds = %if.then.397, %for.end
  br label %if.end.452

if.else.402:                                      ; preds = %sw.bb
  %203 = load i32, i32* %nx, align 4, !tbaa !22
  store i32 %203, i32* %i, align 4, !tbaa !22
  %204 = load i32, i32* %x, align 4, !tbaa !22
  %205 = load i32, i32* %nx, align 4, !tbaa !22
  %add403 = add nsw i32 %204, %205
  %and404 = and i32 %add403, 1
  %tobool405 = icmp ne i32 %and404, 0
  br i1 %tobool405, label %if.then.406, label %if.end.419

if.then.406:                                      ; preds = %if.else.402
  %206 = load i8*, i8** %dest, align 8, !tbaa !1
  %207 = load i8, i8* %206, align 1, !tbaa !24
  %conv407 = zext i8 %207 to i32
  %and408 = and i32 %conv407, 15
  %208 = load i32, i32* %indices, align 4, !tbaa !22
  %and409 = and i32 %208, 15
  %idxprom410 = zext i32 %and409 to i64
  %209 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx411 = getelementptr inbounds i64, i64* %209, i64 %idxprom410
  %210 = load i64, i64* %arrayidx411, align 8, !tbaa !86
  %conv412 = trunc i64 %210 to i8
  %conv413 = zext i8 %conv412 to i32
  %shl414 = shl i32 %conv413, 4
  %add415 = add nsw i32 %and408, %shl414
  %conv416 = trunc i32 %add415 to i8
  %211 = load i8*, i8** %dest, align 8, !tbaa !1
  store i8 %conv416, i8* %211, align 1, !tbaa !24
  %212 = load i32, i32* %indices, align 4, !tbaa !22
  %shr417 = lshr i32 %212, 4
  store i32 %shr417, i32* %indices, align 4, !tbaa !22
  %213 = load i32, i32* %i, align 4, !tbaa !22
  %dec418 = add nsw i32 %213, -1
  store i32 %dec418, i32* %i, align 4, !tbaa !22
  br label %if.end.419

if.end.419:                                       ; preds = %if.then.406, %if.else.402
  br label %for.cond.420

for.cond.420:                                     ; preds = %for.inc.440, %if.end.419
  %214 = load i32, i32* %i, align 4, !tbaa !22
  %sub421 = sub nsw i32 %214, 2
  store i32 %sub421, i32* %i, align 4, !tbaa !22
  %cmp422 = icmp sge i32 %sub421, 0
  br i1 %cmp422, label %for.body.424, label %for.end.442

for.body.424:                                     ; preds = %for.cond.420
  %215 = load i32, i32* %indices, align 4, !tbaa !22
  %and425 = and i32 %215, 15
  %idxprom426 = zext i32 %and425 to i64
  %216 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx427 = getelementptr inbounds i64, i64* %216, i64 %idxprom426
  %217 = load i64, i64* %arrayidx427, align 8, !tbaa !86
  %conv428 = trunc i64 %217 to i8
  %conv429 = zext i8 %conv428 to i32
  %218 = load i32, i32* %indices, align 4, !tbaa !22
  %shr430 = lshr i32 %218, 4
  %and431 = and i32 %shr430, 15
  %idxprom432 = zext i32 %and431 to i64
  %219 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx433 = getelementptr inbounds i64, i64* %219, i64 %idxprom432
  %220 = load i64, i64* %arrayidx433, align 8, !tbaa !86
  %conv434 = trunc i64 %220 to i8
  %conv435 = zext i8 %conv434 to i32
  %shl436 = shl i32 %conv435, 4
  %add437 = add nsw i32 %conv429, %shl436
  %conv438 = trunc i32 %add437 to i8
  %221 = load i8*, i8** %dest, align 8, !tbaa !1
  %incdec.ptr439 = getelementptr inbounds i8, i8* %221, i32 -1
  store i8* %incdec.ptr439, i8** %dest, align 8, !tbaa !1
  store i8 %conv438, i8* %incdec.ptr439, align 1, !tbaa !24
  br label %for.inc.440

for.inc.440:                                      ; preds = %for.body.424
  %222 = load i32, i32* %indices, align 4, !tbaa !22
  %shr441 = lshr i32 %222, 8
  store i32 %shr441, i32* %indices, align 4, !tbaa !22
  br label %for.cond.420

for.end.442:                                      ; preds = %for.cond.420
  %223 = load i32, i32* %i, align 4, !tbaa !22
  %and443 = and i32 %223, 1
  %tobool444 = icmp ne i32 %and443, 0
  br i1 %tobool444, label %if.then.445, label %if.end.451

if.then.445:                                      ; preds = %for.end.442
  %224 = load i32, i32* %indices, align 4, !tbaa !22
  %and446 = and i32 %224, 15
  %idxprom447 = zext i32 %and446 to i64
  %225 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx448 = getelementptr inbounds i64, i64* %225, i64 %idxprom447
  %226 = load i64, i64* %arrayidx448, align 8, !tbaa !86
  %conv449 = trunc i64 %226 to i8
  %227 = load i8*, i8** %dest, align 8, !tbaa !1
  %incdec.ptr450 = getelementptr inbounds i8, i8* %227, i32 -1
  store i8* %incdec.ptr450, i8** %dest, align 8, !tbaa !1
  store i8 %conv449, i8* %incdec.ptr450, align 1, !tbaa !24
  br label %if.end.451

if.end.451:                                       ; preds = %if.then.445, %for.end.442
  br label %if.end.452

if.end.452:                                       ; preds = %if.end.451, %if.end.401
  br label %sw.epilog

sw.bb.453:                                        ; preds = %cond.end
  %228 = load i32, i32* %nx, align 4, !tbaa !22
  store i32 %228, i32* %i, align 4, !tbaa !22
  br label %for.cond.454

for.cond.454:                                     ; preds = %for.inc.475, %sw.bb.453
  %229 = load i32, i32* %i, align 4, !tbaa !22
  %dec455 = add nsw i32 %229, -1
  store i32 %dec455, i32* %i, align 4, !tbaa !22
  %cmp456 = icmp sge i32 %dec455, 0
  br i1 %cmp456, label %for.body.458, label %for.end.477

for.body.458:                                     ; preds = %for.cond.454
  %230 = bitcast i32* %tcolor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %230) #2
  %231 = load i32, i32* %indices, align 4, !tbaa !22
  %and459 = and i32 %231, 15
  %idxprom460 = zext i32 %and459 to i64
  %232 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx461 = getelementptr inbounds i64, i64* %232, i64 %idxprom460
  %233 = load i64, i64* %arrayidx461, align 8, !tbaa !86
  %conv462 = trunc i64 %233 to i32
  store i32 %conv462, i32* %tcolor, align 4, !tbaa !22
  %234 = load i8*, i8** %dest, align 8, !tbaa !1
  %add.ptr463 = getelementptr inbounds i8, i8* %234, i64 -4
  store i8* %add.ptr463, i8** %dest, align 8, !tbaa !1
  %235 = load i32, i32* %tcolor, align 4, !tbaa !22
  %conv464 = trunc i32 %235 to i8
  %236 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx465 = getelementptr inbounds i8, i8* %236, i64 3
  store i8 %conv464, i8* %arrayidx465, align 1, !tbaa !24
  %237 = load i32, i32* %tcolor, align 4, !tbaa !22
  %shr466 = lshr i32 %237, 8
  %conv467 = trunc i32 %shr466 to i8
  %238 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx468 = getelementptr inbounds i8, i8* %238, i64 2
  store i8 %conv467, i8* %arrayidx468, align 1, !tbaa !24
  %239 = load i32, i32* %tcolor, align 4, !tbaa !22
  %shr469 = lshr i32 %239, 16
  store i32 %shr469, i32* %tcolor, align 4, !tbaa !22
  %240 = load i32, i32* %tcolor, align 4, !tbaa !22
  %conv470 = trunc i32 %240 to i8
  %241 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx471 = getelementptr inbounds i8, i8* %241, i64 1
  store i8 %conv470, i8* %arrayidx471, align 1, !tbaa !24
  %242 = load i32, i32* %tcolor, align 4, !tbaa !22
  %shr472 = lshr i32 %242, 8
  %conv473 = trunc i32 %shr472 to i8
  %243 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx474 = getelementptr inbounds i8, i8* %243, i64 0
  store i8 %conv473, i8* %arrayidx474, align 1, !tbaa !24
  %244 = bitcast i32* %tcolor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %244) #2
  br label %for.inc.475

for.inc.475:                                      ; preds = %for.body.458
  %245 = load i32, i32* %indices, align 4, !tbaa !22
  %shr476 = lshr i32 %245, 4
  store i32 %shr476, i32* %indices, align 4, !tbaa !22
  br label %for.cond.454

for.end.477:                                      ; preds = %for.cond.454
  br label %sw.epilog

sw.bb.478:                                        ; preds = %cond.end
  %246 = load i32, i32* %nx, align 4, !tbaa !22
  store i32 %246, i32* %i, align 4, !tbaa !22
  br label %for.cond.479

for.cond.479:                                     ; preds = %for.inc.498, %sw.bb.478
  %247 = load i32, i32* %i, align 4, !tbaa !22
  %dec480 = add nsw i32 %247, -1
  store i32 %dec480, i32* %i, align 4, !tbaa !22
  %cmp481 = icmp sge i32 %dec480, 0
  br i1 %cmp481, label %for.body.483, label %for.end.500

for.body.483:                                     ; preds = %for.cond.479
  %248 = bitcast i32* %tcolor484 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %248) #2
  %249 = load i32, i32* %indices, align 4, !tbaa !22
  %and485 = and i32 %249, 15
  %idxprom486 = zext i32 %and485 to i64
  %250 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx487 = getelementptr inbounds i64, i64* %250, i64 %idxprom486
  %251 = load i64, i64* %arrayidx487, align 8, !tbaa !86
  %conv488 = trunc i64 %251 to i32
  store i32 %conv488, i32* %tcolor484, align 4, !tbaa !22
  %252 = load i8*, i8** %dest, align 8, !tbaa !1
  %add.ptr489 = getelementptr inbounds i8, i8* %252, i64 -3
  store i8* %add.ptr489, i8** %dest, align 8, !tbaa !1
  %253 = load i32, i32* %tcolor484, align 4, !tbaa !22
  %conv490 = trunc i32 %253 to i8
  %254 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx491 = getelementptr inbounds i8, i8* %254, i64 2
  store i8 %conv490, i8* %arrayidx491, align 1, !tbaa !24
  %255 = load i32, i32* %tcolor484, align 4, !tbaa !22
  %shr492 = lshr i32 %255, 8
  %conv493 = trunc i32 %shr492 to i8
  %256 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx494 = getelementptr inbounds i8, i8* %256, i64 1
  store i8 %conv493, i8* %arrayidx494, align 1, !tbaa !24
  %257 = load i32, i32* %tcolor484, align 4, !tbaa !22
  %shr495 = lshr i32 %257, 16
  %conv496 = trunc i32 %shr495 to i8
  %258 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx497 = getelementptr inbounds i8, i8* %258, i64 0
  store i8 %conv496, i8* %arrayidx497, align 1, !tbaa !24
  %259 = bitcast i32* %tcolor484 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %259) #2
  br label %for.inc.498

for.inc.498:                                      ; preds = %for.body.483
  %260 = load i32, i32* %indices, align 4, !tbaa !22
  %shr499 = lshr i32 %260, 4
  store i32 %shr499, i32* %indices, align 4, !tbaa !22
  br label %for.cond.479

for.end.500:                                      ; preds = %for.cond.479
  br label %sw.epilog

sw.bb.501:                                        ; preds = %cond.end
  %261 = load i32, i32* %nx, align 4, !tbaa !22
  store i32 %261, i32* %i, align 4, !tbaa !22
  br label %for.cond.502

for.cond.502:                                     ; preds = %for.inc.518, %sw.bb.501
  %262 = load i32, i32* %i, align 4, !tbaa !22
  %dec503 = add nsw i32 %262, -1
  store i32 %dec503, i32* %i, align 4, !tbaa !22
  %cmp504 = icmp sge i32 %dec503, 0
  br i1 %cmp504, label %for.body.506, label %for.end.520

for.body.506:                                     ; preds = %for.cond.502
  %263 = bitcast i32* %tcolor507 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %263) #2
  %264 = load i32, i32* %indices, align 4, !tbaa !22
  %and508 = and i32 %264, 15
  %idxprom509 = zext i32 %and508 to i64
  %265 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx510 = getelementptr inbounds i64, i64* %265, i64 %idxprom509
  %266 = load i64, i64* %arrayidx510, align 8, !tbaa !86
  %conv511 = trunc i64 %266 to i32
  store i32 %conv511, i32* %tcolor507, align 4, !tbaa !22
  %267 = load i8*, i8** %dest, align 8, !tbaa !1
  %add.ptr512 = getelementptr inbounds i8, i8* %267, i64 -2
  store i8* %add.ptr512, i8** %dest, align 8, !tbaa !1
  %268 = load i32, i32* %tcolor507, align 4, !tbaa !22
  %conv513 = trunc i32 %268 to i8
  %269 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx514 = getelementptr inbounds i8, i8* %269, i64 1
  store i8 %conv513, i8* %arrayidx514, align 1, !tbaa !24
  %270 = load i32, i32* %tcolor507, align 4, !tbaa !22
  %shr515 = lshr i32 %270, 8
  %conv516 = trunc i32 %shr515 to i8
  %271 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx517 = getelementptr inbounds i8, i8* %271, i64 0
  store i8 %conv516, i8* %arrayidx517, align 1, !tbaa !24
  %272 = bitcast i32* %tcolor507 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %272) #2
  br label %for.inc.518

for.inc.518:                                      ; preds = %for.body.506
  %273 = load i32, i32* %indices, align 4, !tbaa !22
  %shr519 = lshr i32 %273, 4
  store i32 %shr519, i32* %indices, align 4, !tbaa !22
  br label %for.cond.502

for.end.520:                                      ; preds = %for.cond.502
  br label %sw.epilog

sw.bb.521:                                        ; preds = %cond.end
  %274 = load i32, i32* %nx, align 4, !tbaa !22
  store i32 %274, i32* %i, align 4, !tbaa !22
  br label %for.cond.522

for.cond.522:                                     ; preds = %for.inc.532, %sw.bb.521
  %275 = load i32, i32* %i, align 4, !tbaa !22
  %dec523 = add nsw i32 %275, -1
  store i32 %dec523, i32* %i, align 4, !tbaa !22
  %cmp524 = icmp sge i32 %dec523, 0
  br i1 %cmp524, label %for.body.526, label %for.end.534

for.body.526:                                     ; preds = %for.cond.522
  %276 = load i32, i32* %indices, align 4, !tbaa !22
  %and527 = and i32 %276, 15
  %idxprom528 = zext i32 %and527 to i64
  %277 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx529 = getelementptr inbounds i64, i64* %277, i64 %idxprom528
  %278 = load i64, i64* %arrayidx529, align 8, !tbaa !86
  %conv530 = trunc i64 %278 to i8
  %279 = load i8*, i8** %dest, align 8, !tbaa !1
  %incdec.ptr531 = getelementptr inbounds i8, i8* %279, i32 -1
  store i8* %incdec.ptr531, i8** %dest, align 8, !tbaa !1
  store i8 %conv530, i8* %incdec.ptr531, align 1, !tbaa !24
  br label %for.inc.532

for.inc.532:                                      ; preds = %for.body.526
  %280 = load i32, i32* %indices, align 4, !tbaa !22
  %shr533 = lshr i32 %280, 4
  store i32 %shr533, i32* %indices, align 4, !tbaa !22
  br label %for.cond.522

for.end.534:                                      ; preds = %for.cond.522
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end, %for.end.534, %for.end.520, %for.end.500, %for.end.477, %if.end.452
  %281 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %281) #2
  %282 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %282) #2
  %283 = bitcast i32* %nx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %283) #2
  %284 = bitcast i32* %indices to i8*
  call void @llvm.lifetime.end(i64 4, i8* %284) #2
  br label %for.cond.28

for.end.535:                                      ; preds = %for.cond.28
  %285 = load i32, i32* %y, align 4, !tbaa !22
  %cmp536 = icmp eq i32 %285, 0
  br i1 %cmp536, label %if.then.538, label %if.end.539

if.then.538:                                      ; preds = %for.end.535
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.539:                                       ; preds = %for.end.535
  %286 = load i64, i64* %plane_mask.addr, align 8, !tbaa !86
  %and540 = and i64 %286, 1
  %tobool541 = icmp ne i64 %and540, 0
  br i1 %tobool541, label %if.then.542, label %if.end.571

if.then.542:                                      ; preds = %if.end.539
  br label %do.body.543

do.body.543:                                      ; preds = %if.then.542
  %arrayidx544 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 0
  %row545 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx544, i32 0, i32 5
  %287 = load i8*, i8** %row545, align 8, !tbaa !112
  %arrayidx546 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 0
  %tdata = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx546, i32 0, i32 6
  %288 = load i8*, i8** %tdata, align 8, !tbaa !116
  %cmp547 = icmp ugt i8* %287, %288
  br i1 %cmp547, label %if.then.549, label %if.else.555

if.then.549:                                      ; preds = %do.body.543
  %arrayidx550 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 0
  %raster = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx550, i32 0, i32 7
  %289 = load i32, i32* %raster, align 4, !tbaa !117
  %arrayidx551 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 0
  %row552 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx551, i32 0, i32 5
  %290 = load i8*, i8** %row552, align 8, !tbaa !112
  %idx.ext553 = zext i32 %289 to i64
  %idx.neg = sub i64 0, %idx.ext553
  %add.ptr554 = getelementptr inbounds i8, i8* %290, i64 %idx.neg
  store i8* %add.ptr554, i8** %row552, align 8, !tbaa !112
  br label %if.end.558

if.else.555:                                      ; preds = %do.body.543
  %arrayidx556 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 0
  %291 = load %struct.gx_const_strip_bitmap_s**, %struct.gx_const_strip_bitmap_s*** %sbits.addr, align 8, !tbaa !1
  %arrayidx557 = getelementptr inbounds %struct.gx_const_strip_bitmap_s*, %struct.gx_const_strip_bitmap_s** %291, i64 0
  %292 = load %struct.gx_const_strip_bitmap_s*, %struct.gx_const_strip_bitmap_s** %arrayidx557, align 8, !tbaa !1
  call void @wrap_shifted_cursor(%struct.tile_cursor_s* %arrayidx556, %struct.gx_const_strip_bitmap_s* %292) #6
  br label %if.end.558

if.end.558:                                       ; preds = %if.else.555, %if.then.549
  %arrayidx559 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 0
  %row560 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx559, i32 0, i32 5
  %293 = load i8*, i8** %row560, align 8, !tbaa !112
  %arrayidx561 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 0
  %xoffset = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx561, i32 0, i32 1
  %294 = load i32, i32* %xoffset, align 4, !tbaa !118
  %idx.ext562 = sext i32 %294 to i64
  %add.ptr563 = getelementptr inbounds i8, i8* %293, i64 %idx.ext562
  %arrayidx564 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 0
  %data565 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx564, i32 0, i32 8
  store i8* %add.ptr563, i8** %data565, align 8, !tbaa !110
  %arrayidx566 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 0
  %xshift = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx566, i32 0, i32 2
  %295 = load i32, i32* %xshift, align 4, !tbaa !119
  %arrayidx567 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 0
  %bit_shift568 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx567, i32 0, i32 9
  store i32 %295, i32* %bit_shift568, align 4, !tbaa !113
  br label %do.cond.569

do.cond.569:                                      ; preds = %if.end.558
  br label %do.end.570

do.end.570:                                       ; preds = %do.cond.569
  br label %if.end.571

if.end.571:                                       ; preds = %do.end.570, %if.end.539
  %296 = load i64, i64* %plane_mask.addr, align 8, !tbaa !86
  %and572 = and i64 %296, 2
  %tobool573 = icmp ne i64 %and572, 0
  br i1 %tobool573, label %if.then.574, label %if.end.608

if.then.574:                                      ; preds = %if.end.571
  br label %do.body.575

do.body.575:                                      ; preds = %if.then.574
  %arrayidx576 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 1
  %row577 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx576, i32 0, i32 5
  %297 = load i8*, i8** %row577, align 8, !tbaa !112
  %arrayidx578 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 1
  %tdata579 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx578, i32 0, i32 6
  %298 = load i8*, i8** %tdata579, align 8, !tbaa !116
  %cmp580 = icmp ugt i8* %297, %298
  br i1 %cmp580, label %if.then.582, label %if.else.590

if.then.582:                                      ; preds = %do.body.575
  %arrayidx583 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 1
  %raster584 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx583, i32 0, i32 7
  %299 = load i32, i32* %raster584, align 4, !tbaa !117
  %arrayidx585 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 1
  %row586 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx585, i32 0, i32 5
  %300 = load i8*, i8** %row586, align 8, !tbaa !112
  %idx.ext587 = zext i32 %299 to i64
  %idx.neg588 = sub i64 0, %idx.ext587
  %add.ptr589 = getelementptr inbounds i8, i8* %300, i64 %idx.neg588
  store i8* %add.ptr589, i8** %row586, align 8, !tbaa !112
  br label %if.end.593

if.else.590:                                      ; preds = %do.body.575
  %arrayidx591 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 1
  %301 = load %struct.gx_const_strip_bitmap_s**, %struct.gx_const_strip_bitmap_s*** %sbits.addr, align 8, !tbaa !1
  %arrayidx592 = getelementptr inbounds %struct.gx_const_strip_bitmap_s*, %struct.gx_const_strip_bitmap_s** %301, i64 1
  %302 = load %struct.gx_const_strip_bitmap_s*, %struct.gx_const_strip_bitmap_s** %arrayidx592, align 8, !tbaa !1
  call void @wrap_shifted_cursor(%struct.tile_cursor_s* %arrayidx591, %struct.gx_const_strip_bitmap_s* %302) #6
  br label %if.end.593

if.end.593:                                       ; preds = %if.else.590, %if.then.582
  %arrayidx594 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 1
  %row595 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx594, i32 0, i32 5
  %303 = load i8*, i8** %row595, align 8, !tbaa !112
  %arrayidx596 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 1
  %xoffset597 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx596, i32 0, i32 1
  %304 = load i32, i32* %xoffset597, align 4, !tbaa !118
  %idx.ext598 = sext i32 %304 to i64
  %add.ptr599 = getelementptr inbounds i8, i8* %303, i64 %idx.ext598
  %arrayidx600 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 1
  %data601 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx600, i32 0, i32 8
  store i8* %add.ptr599, i8** %data601, align 8, !tbaa !110
  %arrayidx602 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 1
  %xshift603 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx602, i32 0, i32 2
  %305 = load i32, i32* %xshift603, align 4, !tbaa !119
  %arrayidx604 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 1
  %bit_shift605 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx604, i32 0, i32 9
  store i32 %305, i32* %bit_shift605, align 4, !tbaa !113
  br label %do.cond.606

do.cond.606:                                      ; preds = %if.end.593
  br label %do.end.607

do.end.607:                                       ; preds = %do.cond.606
  br label %if.end.608

if.end.608:                                       ; preds = %do.end.607, %if.end.571
  %306 = load i64, i64* %plane_mask.addr, align 8, !tbaa !86
  %and609 = and i64 %306, 4
  %tobool610 = icmp ne i64 %and609, 0
  br i1 %tobool610, label %if.then.611, label %if.end.645

if.then.611:                                      ; preds = %if.end.608
  br label %do.body.612

do.body.612:                                      ; preds = %if.then.611
  %arrayidx613 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 2
  %row614 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx613, i32 0, i32 5
  %307 = load i8*, i8** %row614, align 8, !tbaa !112
  %arrayidx615 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 2
  %tdata616 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx615, i32 0, i32 6
  %308 = load i8*, i8** %tdata616, align 8, !tbaa !116
  %cmp617 = icmp ugt i8* %307, %308
  br i1 %cmp617, label %if.then.619, label %if.else.627

if.then.619:                                      ; preds = %do.body.612
  %arrayidx620 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 2
  %raster621 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx620, i32 0, i32 7
  %309 = load i32, i32* %raster621, align 4, !tbaa !117
  %arrayidx622 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 2
  %row623 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx622, i32 0, i32 5
  %310 = load i8*, i8** %row623, align 8, !tbaa !112
  %idx.ext624 = zext i32 %309 to i64
  %idx.neg625 = sub i64 0, %idx.ext624
  %add.ptr626 = getelementptr inbounds i8, i8* %310, i64 %idx.neg625
  store i8* %add.ptr626, i8** %row623, align 8, !tbaa !112
  br label %if.end.630

if.else.627:                                      ; preds = %do.body.612
  %arrayidx628 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 2
  %311 = load %struct.gx_const_strip_bitmap_s**, %struct.gx_const_strip_bitmap_s*** %sbits.addr, align 8, !tbaa !1
  %arrayidx629 = getelementptr inbounds %struct.gx_const_strip_bitmap_s*, %struct.gx_const_strip_bitmap_s** %311, i64 2
  %312 = load %struct.gx_const_strip_bitmap_s*, %struct.gx_const_strip_bitmap_s** %arrayidx629, align 8, !tbaa !1
  call void @wrap_shifted_cursor(%struct.tile_cursor_s* %arrayidx628, %struct.gx_const_strip_bitmap_s* %312) #6
  br label %if.end.630

if.end.630:                                       ; preds = %if.else.627, %if.then.619
  %arrayidx631 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 2
  %row632 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx631, i32 0, i32 5
  %313 = load i8*, i8** %row632, align 8, !tbaa !112
  %arrayidx633 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 2
  %xoffset634 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx633, i32 0, i32 1
  %314 = load i32, i32* %xoffset634, align 4, !tbaa !118
  %idx.ext635 = sext i32 %314 to i64
  %add.ptr636 = getelementptr inbounds i8, i8* %313, i64 %idx.ext635
  %arrayidx637 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 2
  %data638 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx637, i32 0, i32 8
  store i8* %add.ptr636, i8** %data638, align 8, !tbaa !110
  %arrayidx639 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 2
  %xshift640 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx639, i32 0, i32 2
  %315 = load i32, i32* %xshift640, align 4, !tbaa !119
  %arrayidx641 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 2
  %bit_shift642 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx641, i32 0, i32 9
  store i32 %315, i32* %bit_shift642, align 4, !tbaa !113
  br label %do.cond.643

do.cond.643:                                      ; preds = %if.end.630
  br label %do.end.644

do.end.644:                                       ; preds = %do.cond.643
  br label %if.end.645

if.end.645:                                       ; preds = %do.end.644, %if.end.608
  %316 = load i64, i64* %plane_mask.addr, align 8, !tbaa !86
  %and646 = and i64 %316, 8
  %tobool647 = icmp ne i64 %and646, 0
  br i1 %tobool647, label %if.then.648, label %if.end.682

if.then.648:                                      ; preds = %if.end.645
  br label %do.body.649

do.body.649:                                      ; preds = %if.then.648
  %arrayidx650 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 3
  %row651 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx650, i32 0, i32 5
  %317 = load i8*, i8** %row651, align 8, !tbaa !112
  %arrayidx652 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 3
  %tdata653 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx652, i32 0, i32 6
  %318 = load i8*, i8** %tdata653, align 8, !tbaa !116
  %cmp654 = icmp ugt i8* %317, %318
  br i1 %cmp654, label %if.then.656, label %if.else.664

if.then.656:                                      ; preds = %do.body.649
  %arrayidx657 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 3
  %raster658 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx657, i32 0, i32 7
  %319 = load i32, i32* %raster658, align 4, !tbaa !117
  %arrayidx659 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 3
  %row660 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx659, i32 0, i32 5
  %320 = load i8*, i8** %row660, align 8, !tbaa !112
  %idx.ext661 = zext i32 %319 to i64
  %idx.neg662 = sub i64 0, %idx.ext661
  %add.ptr663 = getelementptr inbounds i8, i8* %320, i64 %idx.neg662
  store i8* %add.ptr663, i8** %row660, align 8, !tbaa !112
  br label %if.end.667

if.else.664:                                      ; preds = %do.body.649
  %arrayidx665 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 3
  %321 = load %struct.gx_const_strip_bitmap_s**, %struct.gx_const_strip_bitmap_s*** %sbits.addr, align 8, !tbaa !1
  %arrayidx666 = getelementptr inbounds %struct.gx_const_strip_bitmap_s*, %struct.gx_const_strip_bitmap_s** %321, i64 3
  %322 = load %struct.gx_const_strip_bitmap_s*, %struct.gx_const_strip_bitmap_s** %arrayidx666, align 8, !tbaa !1
  call void @wrap_shifted_cursor(%struct.tile_cursor_s* %arrayidx665, %struct.gx_const_strip_bitmap_s* %322) #6
  br label %if.end.667

if.end.667:                                       ; preds = %if.else.664, %if.then.656
  %arrayidx668 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 3
  %row669 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx668, i32 0, i32 5
  %323 = load i8*, i8** %row669, align 8, !tbaa !112
  %arrayidx670 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 3
  %xoffset671 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx670, i32 0, i32 1
  %324 = load i32, i32* %xoffset671, align 4, !tbaa !118
  %idx.ext672 = sext i32 %324 to i64
  %add.ptr673 = getelementptr inbounds i8, i8* %323, i64 %idx.ext672
  %arrayidx674 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 3
  %data675 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx674, i32 0, i32 8
  store i8* %add.ptr673, i8** %data675, align 8, !tbaa !110
  %arrayidx676 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 3
  %xshift677 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx676, i32 0, i32 2
  %325 = load i32, i32* %xshift677, align 4, !tbaa !119
  %arrayidx678 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 3
  %bit_shift679 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx678, i32 0, i32 9
  store i32 %325, i32* %bit_shift679, align 4, !tbaa !113
  br label %do.cond.680

do.cond.680:                                      ; preds = %if.end.667
  br label %do.end.681

do.end.681:                                       ; preds = %do.cond.680
  br label %if.end.682

if.end.682:                                       ; preds = %do.end.681, %if.end.645
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.682, %if.then.538
  %326 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %326) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.end.687
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.683

for.inc.683:                                      ; preds = %cleanup.cont
  %327 = load i32, i32* %dest_raster.addr, align 4, !tbaa !22
  %328 = load i8*, i8** %dest_row, align 8, !tbaa !1
  %idx.ext684 = zext i32 %327 to i64
  %idx.neg685 = sub i64 0, %idx.ext684
  %add.ptr686 = getelementptr inbounds i8, i8* %328, i64 %idx.neg685
  store i8* %add.ptr686, i8** %dest_row, align 8, !tbaa !1
  br label %for.cond

for.end.687:                                      ; preds = %cleanup
  %329 = bitcast i8** %dest_row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %329) #2
  %330 = bitcast i32* %dbytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %330) #2
  %331 = bitcast [64 x %struct.tile_cursor_s]* %cursor to i8*
  call void @llvm.lifetime.end(i64 4096, i8* %331) #2
  %332 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %332) #2
  %333 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %333) #2
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @set_color_ht_gt_4(i8* %dest_data, i32 %dest_raster, i32 %px, i32 %py, i32 %w, i32 %h, i32 %depth, i32 %special, i32 %num_planes, i64 %plane_mask, %struct.gx_device_s* %dev, %struct.color_values_pair_s* %pvp, i64* %colors, %struct.gx_const_strip_bitmap_s** %sbits) #0 {
entry:
  %dest_data.addr = alloca i8*, align 8
  %dest_raster.addr = alloca i32, align 4
  %px.addr = alloca i32, align 4
  %py.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %special.addr = alloca i32, align 4
  %num_planes.addr = alloca i32, align 4
  %plane_mask.addr = alloca i64, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pvp.addr = alloca %struct.color_values_pair_s*, align 8
  %colors.addr = alloca i64*, align 8
  %sbits.addr = alloca %struct.gx_const_strip_bitmap_s**, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %cursor = alloca [64 x %struct.tile_cursor_s], align 16
  %dbytes = alloca i32, align 4
  %dest_row = alloca i8*, align 8
  %pmin = alloca i32, align 4
  %pmax = alloca i32, align 4
  %base_color = alloca i64, align 8
  %endx = alloca i32, align 4
  %lasty = alloca i32, align 4
  %i = alloca i32, align 4
  %i27 = alloca i32, align 4
  %dest = alloca i8*, align 8
  %i44 = alloca i32, align 4
  %tcolor = alloca i64, align 8
  %ptc = alloca %struct.tile_cursor_s*, align 8
  %tile_bit = alloca i8, align 1
  %cleanup.dest.slot = alloca i32
  store i8* %dest_data, i8** %dest_data.addr, align 8, !tbaa !1
  store i32 %dest_raster, i32* %dest_raster.addr, align 4, !tbaa !22
  store i32 %px, i32* %px.addr, align 4, !tbaa !22
  store i32 %py, i32* %py.addr, align 4, !tbaa !22
  store i32 %w, i32* %w.addr, align 4, !tbaa !22
  store i32 %h, i32* %h.addr, align 4, !tbaa !22
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !22
  store i32 %special, i32* %special.addr, align 4, !tbaa !22
  store i32 %num_planes, i32* %num_planes.addr, align 4, !tbaa !22
  store i64 %plane_mask, i64* %plane_mask.addr, align 8, !tbaa !86
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.color_values_pair_s* %pvp, %struct.color_values_pair_s** %pvp.addr, align 8, !tbaa !1
  store i64* %colors, i64** %colors.addr, align 8, !tbaa !1
  store %struct.gx_const_strip_bitmap_s** %sbits, %struct.gx_const_strip_bitmap_s*** %sbits.addr, align 8, !tbaa !1
  %0 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast [64 x %struct.tile_cursor_s]* %cursor to i8*
  call void @llvm.lifetime.start(i64 4096, i8* %2) #2
  %3 = bitcast i32* %dbytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load i32, i32* %depth.addr, align 4, !tbaa !22
  %shr = ashr i32 %4, 3
  store i32 %shr, i32* %dbytes, align 4, !tbaa !22
  %5 = bitcast i8** %dest_row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load i8*, i8** %dest_data.addr, align 8, !tbaa !1
  %7 = load i32, i32* %dest_raster.addr, align 4, !tbaa !22
  %8 = load i32, i32* %h.addr, align 4, !tbaa !22
  %sub = sub nsw i32 %8, 1
  %mul = mul i32 %7, %sub
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %idx.ext
  %9 = load i32, i32* %w.addr, align 4, !tbaa !22
  %10 = load i32, i32* %depth.addr, align 4, !tbaa !22
  %mul1 = mul nsw i32 %9, %10
  %div = sdiv i32 %mul1, 8
  %idx.ext2 = sext i32 %div to i64
  %add.ptr3 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext2
  store i8* %add.ptr3, i8** %dest_row, align 8, !tbaa !1
  %11 = bitcast i32* %pmin to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = bitcast i32* %pmax to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = bitcast i64* %base_color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  store i64 0, i64* %base_color, align 8, !tbaa !86
  %14 = load i64, i64* %plane_mask.addr, align 8, !tbaa !86
  %cmp = icmp eq i64 %14, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %pmin, align 4, !tbaa !22
  store i32 -1, i32* %pmax, align 4, !tbaa !22
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %pmin, align 4, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.else
  %15 = load i64, i64* %plane_mask.addr, align 8, !tbaa !86
  %16 = load i32, i32* %pmin, align 4, !tbaa !22
  %sh_prom = zext i32 %16 to i64
  %shr4 = lshr i64 %15, %sh_prom
  %and = and i64 %shr4, 1
  %tobool = icmp ne i64 %and, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %pmin, align 4, !tbaa !22
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %pmin, align 4, !tbaa !22
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %pmax, align 4, !tbaa !22
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.body.9, %for.end
  %18 = load i64, i64* %plane_mask.addr, align 8, !tbaa !86
  %19 = load i32, i32* %pmax, align 4, !tbaa !22
  %sh_prom6 = zext i32 %19 to i64
  %shr7 = lshr i64 %18, %sh_prom6
  %cmp8 = icmp ugt i64 %shr7, 1
  br i1 %cmp8, label %for.body.9, label %for.end.11

for.body.9:                                       ; preds = %for.cond.5
  %20 = load i32, i32* %pmax, align 4, !tbaa !22
  %inc10 = add nsw i32 %20, 1
  store i32 %inc10, i32* %pmax, align 4, !tbaa !22
  br label %for.cond.5

for.end.11:                                       ; preds = %for.cond.5
  br label %if.end

if.end:                                           ; preds = %for.end.11, %if.then
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %21 = bitcast i32* %endx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #2
  %22 = load i32, i32* %w.addr, align 4, !tbaa !22
  %23 = load i32, i32* %px.addr, align 4, !tbaa !22
  %add = add nsw i32 %22, %23
  store i32 %add, i32* %endx, align 4, !tbaa !22
  %24 = bitcast i32* %lasty to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #2
  %25 = load i32, i32* %h.addr, align 4, !tbaa !22
  %sub12 = sub nsw i32 %25, 1
  %26 = load i32, i32* %py.addr, align 4, !tbaa !22
  %add13 = add nsw i32 %sub12, %26
  store i32 %add13, i32* %lasty, align 4, !tbaa !22
  %27 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #2
  %28 = load i32, i32* %pmin, align 4, !tbaa !22
  store i32 %28, i32* %i, align 4, !tbaa !22
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc, %do.end
  %29 = load i32, i32* %i, align 4, !tbaa !22
  %30 = load i32, i32* %pmax, align 4, !tbaa !22
  %cmp15 = icmp sle i32 %29, %30
  br i1 %cmp15, label %for.body.16, label %for.end.26

for.body.16:                                      ; preds = %for.cond.14
  %31 = load i64, i64* %plane_mask.addr, align 8, !tbaa !86
  %32 = load i32, i32* %i, align 4, !tbaa !22
  %sh_prom17 = zext i32 %32 to i64
  %shr18 = lshr i64 %31, %sh_prom17
  %and19 = and i64 %shr18, 1
  %tobool20 = icmp ne i64 %and19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %for.body.16
  %33 = load i32, i32* %i, align 4, !tbaa !22
  %34 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom = sext i32 %34 to i64
  %arrayidx = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 %idxprom
  %35 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom22 = sext i32 %35 to i64
  %36 = load %struct.gx_const_strip_bitmap_s**, %struct.gx_const_strip_bitmap_s*** %sbits.addr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds %struct.gx_const_strip_bitmap_s*, %struct.gx_const_strip_bitmap_s** %36, i64 %idxprom22
  %37 = load %struct.gx_const_strip_bitmap_s*, %struct.gx_const_strip_bitmap_s** %arrayidx23, align 8, !tbaa !1
  %38 = load i32, i32* %endx, align 4, !tbaa !22
  %39 = load i32, i32* %lasty, align 4, !tbaa !22
  call void @init_tile_cursor(i32 %33, %struct.tile_cursor_s* %arrayidx, %struct.gx_const_strip_bitmap_s* %37, i32 %38, i32 %39) #6
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.21, %for.body.16
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %40 = load i32, i32* %i, align 4, !tbaa !22
  %inc25 = add nsw i32 %40, 1
  store i32 %inc25, i32* %i, align 4, !tbaa !22
  br label %for.cond.14

for.end.26:                                       ; preds = %for.cond.14
  %41 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #2
  %42 = bitcast i32* %lasty to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #2
  %43 = bitcast i32* %endx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #2
  %44 = bitcast i32* %i27 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #2
  store i32 0, i32* %i27, align 4, !tbaa !22
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.40, %for.end.26
  %45 = load i32, i32* %i27, align 4, !tbaa !22
  %46 = load i32, i32* %num_planes.addr, align 4, !tbaa !22
  %cmp29 = icmp slt i32 %45, %46
  br i1 %cmp29, label %for.body.30, label %for.end.42

for.body.30:                                      ; preds = %for.cond.28
  %47 = load i64, i64* %plane_mask.addr, align 8, !tbaa !86
  %neg = xor i64 %47, -1
  %48 = load i32, i32* %i27, align 4, !tbaa !22
  %sh_prom31 = zext i32 %48 to i64
  %shr32 = lshr i64 %neg, %sh_prom31
  %and33 = and i64 %shr32, 1
  %tobool34 = icmp ne i64 %and33, 0
  br i1 %tobool34, label %if.then.35, label %if.end.39

if.then.35:                                       ; preds = %for.body.30
  %49 = load i32, i32* %i27, align 4, !tbaa !22
  %mul36 = mul nsw i32 2, %49
  %idxprom37 = sext i32 %mul36 to i64
  %50 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds i64, i64* %50, i64 %idxprom37
  %51 = load i64, i64* %arrayidx38, align 8, !tbaa !86
  %52 = load i64, i64* %base_color, align 8, !tbaa !86
  %or = or i64 %52, %51
  store i64 %or, i64* %base_color, align 8, !tbaa !86
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.35, %for.body.30
  br label %for.inc.40

for.inc.40:                                       ; preds = %if.end.39
  %53 = load i32, i32* %i27, align 4, !tbaa !22
  %inc41 = add nsw i32 %53, 1
  store i32 %inc41, i32* %i27, align 4, !tbaa !22
  br label %for.cond.28

for.end.42:                                       ; preds = %for.cond.28
  %54 = bitcast i32* %i27 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #2
  %55 = load i32, i32* %h.addr, align 4, !tbaa !22
  store i32 %55, i32* %y, align 4, !tbaa !22
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.180, %for.end.42
  %56 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %56) #2
  %57 = load i8*, i8** %dest_row, align 8, !tbaa !1
  store i8* %57, i8** %dest, align 8, !tbaa !1
  %58 = bitcast i32* %i44 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %58) #2
  %59 = load i32, i32* %y, align 4, !tbaa !22
  %dec = add nsw i32 %59, -1
  store i32 %dec, i32* %y, align 4, !tbaa !22
  %60 = load i32, i32* %w.addr, align 4, !tbaa !22
  store i32 %60, i32* %x, align 4, !tbaa !22
  br label %for.cond.45

for.cond.45:                                      ; preds = %sw.epilog, %for.cond.43
  %61 = load i32, i32* %x, align 4, !tbaa !22
  %cmp46 = icmp sgt i32 %61, 0
  br i1 %cmp46, label %for.body.47, label %for.end.121

for.body.47:                                      ; preds = %for.cond.45
  %62 = bitcast i64* %tcolor to i8*
  call void @llvm.lifetime.start(i64 8, i8* %62) #2
  %63 = load i64, i64* %base_color, align 8, !tbaa !86
  store i64 %63, i64* %tcolor, align 8, !tbaa !86
  %64 = load i32, i32* %pmin, align 4, !tbaa !22
  store i32 %64, i32* %i44, align 4, !tbaa !22
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.87, %for.body.47
  %65 = load i32, i32* %i44, align 4, !tbaa !22
  %66 = load i32, i32* %pmax, align 4, !tbaa !22
  %cmp49 = icmp sle i32 %65, %66
  br i1 %cmp49, label %for.body.50, label %for.end.89

for.body.50:                                      ; preds = %for.cond.48
  %67 = load i64, i64* %plane_mask.addr, align 8, !tbaa !86
  %68 = load i32, i32* %i44, align 4, !tbaa !22
  %sh_prom51 = zext i32 %68 to i64
  %shr52 = lshr i64 %67, %sh_prom51
  %and53 = and i64 %shr52, 1
  %tobool54 = icmp ne i64 %and53, 0
  br i1 %tobool54, label %if.then.55, label %if.end.86

if.then.55:                                       ; preds = %for.body.50
  %69 = bitcast %struct.tile_cursor_s** %ptc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %69) #2
  %70 = load i32, i32* %i44, align 4, !tbaa !22
  %idxprom56 = sext i32 %70 to i64
  %arrayidx57 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 %idxprom56
  store %struct.tile_cursor_s* %arrayidx57, %struct.tile_cursor_s** %ptc, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %tile_bit) #2
  br label %b

b:                                                ; preds = %if.else.71, %if.then.55
  %71 = load %struct.tile_cursor_s*, %struct.tile_cursor_s** %ptc, align 8, !tbaa !1
  %bit_shift = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %71, i32 0, i32 9
  %72 = load i32, i32* %bit_shift, align 4, !tbaa !113
  %cmp58 = icmp slt i32 %72, 8
  br i1 %cmp58, label %if.then.59, label %if.else.64

if.then.59:                                       ; preds = %b
  %73 = load %struct.tile_cursor_s*, %struct.tile_cursor_s** %ptc, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %73, i32 0, i32 8
  %74 = load i8*, i8** %data, align 8, !tbaa !110
  %75 = load i8, i8* %74, align 1, !tbaa !24
  %conv = zext i8 %75 to i32
  %76 = load %struct.tile_cursor_s*, %struct.tile_cursor_s** %ptc, align 8, !tbaa !1
  %bit_shift60 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %76, i32 0, i32 9
  %77 = load i32, i32* %bit_shift60, align 4, !tbaa !113
  %inc61 = add nsw i32 %77, 1
  store i32 %inc61, i32* %bit_shift60, align 4, !tbaa !113
  %shr62 = ashr i32 %conv, %77
  %conv63 = trunc i32 %shr62 to i8
  store i8 %conv63, i8* %tile_bit, align 1, !tbaa !24
  br label %if.end.78

if.else.64:                                       ; preds = %b
  %78 = load %struct.tile_cursor_s*, %struct.tile_cursor_s** %ptc, align 8, !tbaa !1
  %data65 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %78, i32 0, i32 8
  %79 = load i8*, i8** %data65, align 8, !tbaa !110
  %80 = load %struct.tile_cursor_s*, %struct.tile_cursor_s** %ptc, align 8, !tbaa !1
  %row = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %80, i32 0, i32 5
  %81 = load i8*, i8** %row, align 8, !tbaa !112
  %cmp66 = icmp ugt i8* %79, %81
  br i1 %cmp66, label %if.then.68, label %if.else.71

if.then.68:                                       ; preds = %if.else.64
  %82 = load %struct.tile_cursor_s*, %struct.tile_cursor_s** %ptc, align 8, !tbaa !1
  %data69 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %82, i32 0, i32 8
  %83 = load i8*, i8** %data69, align 8, !tbaa !110
  %incdec.ptr = getelementptr inbounds i8, i8* %83, i32 -1
  store i8* %incdec.ptr, i8** %data69, align 8, !tbaa !110
  %84 = load i8, i8* %incdec.ptr, align 1, !tbaa !24
  store i8 %84, i8* %tile_bit, align 1, !tbaa !24
  %85 = load %struct.tile_cursor_s*, %struct.tile_cursor_s** %ptc, align 8, !tbaa !1
  %bit_shift70 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %85, i32 0, i32 9
  store i32 1, i32* %bit_shift70, align 4, !tbaa !113
  br label %if.end.77

if.else.71:                                       ; preds = %if.else.64
  %86 = load %struct.tile_cursor_s*, %struct.tile_cursor_s** %ptc, align 8, !tbaa !1
  %xbytes = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %86, i32 0, i32 3
  %87 = load i32, i32* %xbytes, align 4, !tbaa !114
  %88 = load %struct.tile_cursor_s*, %struct.tile_cursor_s** %ptc, align 8, !tbaa !1
  %data72 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %88, i32 0, i32 8
  %89 = load i8*, i8** %data72, align 8, !tbaa !110
  %idx.ext73 = zext i32 %87 to i64
  %add.ptr74 = getelementptr inbounds i8, i8* %89, i64 %idx.ext73
  store i8* %add.ptr74, i8** %data72, align 8, !tbaa !110
  %90 = load %struct.tile_cursor_s*, %struct.tile_cursor_s** %ptc, align 8, !tbaa !1
  %xbits = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %90, i32 0, i32 4
  %91 = load i32, i32* %xbits, align 4, !tbaa !115
  %sub75 = sub nsw i32 8, %91
  %92 = load %struct.tile_cursor_s*, %struct.tile_cursor_s** %ptc, align 8, !tbaa !1
  %bit_shift76 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %92, i32 0, i32 9
  store i32 %sub75, i32* %bit_shift76, align 4, !tbaa !113
  br label %b

if.end.77:                                        ; preds = %if.then.68
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.then.59
  %93 = load i32, i32* %i44, align 4, !tbaa !22
  %mul79 = mul nsw i32 2, %93
  %94 = load i8, i8* %tile_bit, align 1, !tbaa !24
  %conv80 = zext i8 %94 to i32
  %and81 = and i32 %conv80, 1
  %add82 = add nsw i32 %mul79, %and81
  %idxprom83 = sext i32 %add82 to i64
  %95 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx84 = getelementptr inbounds i64, i64* %95, i64 %idxprom83
  %96 = load i64, i64* %arrayidx84, align 8, !tbaa !86
  %97 = load i64, i64* %tcolor, align 8, !tbaa !86
  %or85 = or i64 %97, %96
  store i64 %or85, i64* %tcolor, align 8, !tbaa !86
  call void @llvm.lifetime.end(i64 1, i8* %tile_bit) #2
  %98 = bitcast %struct.tile_cursor_s** %ptc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #2
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.78, %for.body.50
  br label %for.inc.87

for.inc.87:                                       ; preds = %if.end.86
  %99 = load i32, i32* %i44, align 4, !tbaa !22
  %inc88 = add nsw i32 %99, 1
  store i32 %inc88, i32* %i44, align 4, !tbaa !22
  br label %for.cond.48

for.end.89:                                       ; preds = %for.cond.48
  %100 = load i32, i32* %x, align 4, !tbaa !22
  %dec90 = add nsw i32 %100, -1
  store i32 %dec90, i32* %x, align 4, !tbaa !22
  %101 = load i32, i32* %dbytes, align 4, !tbaa !22
  switch i32 %101, label %sw.epilog [
    i32 0, label %sw.bb
    i32 4, label %sw.bb.104
    i32 3, label %sw.bb.108
    i32 2, label %sw.bb.112
    i32 1, label %sw.bb.116
  ]

sw.bb:                                            ; preds = %for.end.89
  %102 = load i32, i32* %x, align 4, !tbaa !22
  %and91 = and i32 %102, 1
  %tobool92 = icmp ne i32 %and91, 0
  br i1 %tobool92, label %if.then.93, label %if.else.96

if.then.93:                                       ; preds = %sw.bb
  %103 = load i64, i64* %tcolor, align 8, !tbaa !86
  %conv94 = trunc i64 %103 to i8
  %104 = load i8*, i8** %dest, align 8, !tbaa !1
  %incdec.ptr95 = getelementptr inbounds i8, i8* %104, i32 -1
  store i8* %incdec.ptr95, i8** %dest, align 8, !tbaa !1
  store i8 %conv94, i8* %incdec.ptr95, align 1, !tbaa !24
  br label %if.end.103

if.else.96:                                       ; preds = %sw.bb
  %105 = load i8*, i8** %dest, align 8, !tbaa !1
  %106 = load i8, i8* %105, align 1, !tbaa !24
  %conv97 = zext i8 %106 to i32
  %and98 = and i32 %conv97, 15
  %107 = load i64, i64* %tcolor, align 8, !tbaa !86
  %conv99 = trunc i64 %107 to i8
  %conv100 = zext i8 %conv99 to i32
  %shl = shl i32 %conv100, 4
  %add101 = add nsw i32 %and98, %shl
  %conv102 = trunc i32 %add101 to i8
  %108 = load i8*, i8** %dest, align 8, !tbaa !1
  store i8 %conv102, i8* %108, align 1, !tbaa !24
  br label %if.end.103

if.end.103:                                       ; preds = %if.else.96, %if.then.93
  br label %sw.epilog

sw.bb.104:                                        ; preds = %for.end.89
  %109 = load i64, i64* %tcolor, align 8, !tbaa !86
  %shr105 = lshr i64 %109, 24
  %conv106 = trunc i64 %shr105 to i8
  %110 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx107 = getelementptr inbounds i8, i8* %110, i64 -4
  store i8 %conv106, i8* %arrayidx107, align 1, !tbaa !24
  br label %sw.bb.108

sw.bb.108:                                        ; preds = %for.end.89, %sw.bb.104
  %111 = load i64, i64* %tcolor, align 8, !tbaa !86
  %shr109 = lshr i64 %111, 16
  %conv110 = trunc i64 %shr109 to i8
  %112 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx111 = getelementptr inbounds i8, i8* %112, i64 -3
  store i8 %conv110, i8* %arrayidx111, align 1, !tbaa !24
  br label %sw.bb.112

sw.bb.112:                                        ; preds = %for.end.89, %sw.bb.108
  %113 = load i64, i64* %tcolor, align 8, !tbaa !86
  %shr113 = lshr i64 %113, 8
  %conv114 = trunc i64 %shr113 to i8
  %114 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx115 = getelementptr inbounds i8, i8* %114, i64 -2
  store i8 %conv114, i8* %arrayidx115, align 1, !tbaa !24
  br label %sw.bb.116

sw.bb.116:                                        ; preds = %for.end.89, %sw.bb.112
  %115 = load i64, i64* %tcolor, align 8, !tbaa !86
  %conv117 = trunc i64 %115 to i8
  %116 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx118 = getelementptr inbounds i8, i8* %116, i64 -1
  store i8 %conv117, i8* %arrayidx118, align 1, !tbaa !24
  %117 = load i32, i32* %dbytes, align 4, !tbaa !22
  %118 = load i8*, i8** %dest, align 8, !tbaa !1
  %idx.ext119 = sext i32 %117 to i64
  %idx.neg = sub i64 0, %idx.ext119
  %add.ptr120 = getelementptr inbounds i8, i8* %118, i64 %idx.neg
  store i8* %add.ptr120, i8** %dest, align 8, !tbaa !1
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end.89, %sw.bb.116, %if.end.103
  %119 = bitcast i64* %tcolor to i8*
  call void @llvm.lifetime.end(i64 8, i8* %119) #2
  br label %for.cond.45

for.end.121:                                      ; preds = %for.cond.45
  %120 = load i32, i32* %y, align 4, !tbaa !22
  %cmp122 = icmp eq i32 %120, 0
  br i1 %cmp122, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %for.end.121
  store i32 14, i32* %cleanup.dest.slot
  br label %cleanup

if.end.125:                                       ; preds = %for.end.121
  %121 = load i32, i32* %pmin, align 4, !tbaa !22
  store i32 %121, i32* %i44, align 4, !tbaa !22
  br label %for.cond.126

for.cond.126:                                     ; preds = %for.inc.176, %if.end.125
  %122 = load i32, i32* %i44, align 4, !tbaa !22
  %123 = load i32, i32* %pmax, align 4, !tbaa !22
  %cmp127 = icmp sle i32 %122, %123
  br i1 %cmp127, label %for.body.129, label %for.end.178

for.body.129:                                     ; preds = %for.cond.126
  %124 = load i64, i64* %plane_mask.addr, align 8, !tbaa !86
  %125 = load i32, i32* %i44, align 4, !tbaa !22
  %sh_prom130 = zext i32 %125 to i64
  %shr131 = lshr i64 %124, %sh_prom130
  %and132 = and i64 %shr131, 1
  %tobool133 = icmp ne i64 %and132, 0
  br i1 %tobool133, label %if.then.134, label %if.end.175

if.then.134:                                      ; preds = %for.body.129
  br label %do.body.135

do.body.135:                                      ; preds = %if.then.134
  %126 = load i32, i32* %i44, align 4, !tbaa !22
  %idxprom136 = sext i32 %126 to i64
  %arrayidx137 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 %idxprom136
  %row138 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx137, i32 0, i32 5
  %127 = load i8*, i8** %row138, align 8, !tbaa !112
  %128 = load i32, i32* %i44, align 4, !tbaa !22
  %idxprom139 = sext i32 %128 to i64
  %arrayidx140 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 %idxprom139
  %tdata = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx140, i32 0, i32 6
  %129 = load i8*, i8** %tdata, align 8, !tbaa !116
  %cmp141 = icmp ugt i8* %127, %129
  br i1 %cmp141, label %if.then.143, label %if.else.152

if.then.143:                                      ; preds = %do.body.135
  %130 = load i32, i32* %i44, align 4, !tbaa !22
  %idxprom144 = sext i32 %130 to i64
  %arrayidx145 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 %idxprom144
  %raster = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx145, i32 0, i32 7
  %131 = load i32, i32* %raster, align 4, !tbaa !117
  %132 = load i32, i32* %i44, align 4, !tbaa !22
  %idxprom146 = sext i32 %132 to i64
  %arrayidx147 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 %idxprom146
  %row148 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx147, i32 0, i32 5
  %133 = load i8*, i8** %row148, align 8, !tbaa !112
  %idx.ext149 = zext i32 %131 to i64
  %idx.neg150 = sub i64 0, %idx.ext149
  %add.ptr151 = getelementptr inbounds i8, i8* %133, i64 %idx.neg150
  store i8* %add.ptr151, i8** %row148, align 8, !tbaa !112
  br label %if.end.157

if.else.152:                                      ; preds = %do.body.135
  %134 = load i32, i32* %i44, align 4, !tbaa !22
  %idxprom153 = sext i32 %134 to i64
  %arrayidx154 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 %idxprom153
  %135 = load i32, i32* %i44, align 4, !tbaa !22
  %idxprom155 = sext i32 %135 to i64
  %136 = load %struct.gx_const_strip_bitmap_s**, %struct.gx_const_strip_bitmap_s*** %sbits.addr, align 8, !tbaa !1
  %arrayidx156 = getelementptr inbounds %struct.gx_const_strip_bitmap_s*, %struct.gx_const_strip_bitmap_s** %136, i64 %idxprom155
  %137 = load %struct.gx_const_strip_bitmap_s*, %struct.gx_const_strip_bitmap_s** %arrayidx156, align 8, !tbaa !1
  call void @wrap_shifted_cursor(%struct.tile_cursor_s* %arrayidx154, %struct.gx_const_strip_bitmap_s* %137) #6
  br label %if.end.157

if.end.157:                                       ; preds = %if.else.152, %if.then.143
  %138 = load i32, i32* %i44, align 4, !tbaa !22
  %idxprom158 = sext i32 %138 to i64
  %arrayidx159 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 %idxprom158
  %row160 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx159, i32 0, i32 5
  %139 = load i8*, i8** %row160, align 8, !tbaa !112
  %140 = load i32, i32* %i44, align 4, !tbaa !22
  %idxprom161 = sext i32 %140 to i64
  %arrayidx162 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 %idxprom161
  %xoffset = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx162, i32 0, i32 1
  %141 = load i32, i32* %xoffset, align 4, !tbaa !118
  %idx.ext163 = sext i32 %141 to i64
  %add.ptr164 = getelementptr inbounds i8, i8* %139, i64 %idx.ext163
  %142 = load i32, i32* %i44, align 4, !tbaa !22
  %idxprom165 = sext i32 %142 to i64
  %arrayidx166 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 %idxprom165
  %data167 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx166, i32 0, i32 8
  store i8* %add.ptr164, i8** %data167, align 8, !tbaa !110
  %143 = load i32, i32* %i44, align 4, !tbaa !22
  %idxprom168 = sext i32 %143 to i64
  %arrayidx169 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 %idxprom168
  %xshift = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx169, i32 0, i32 2
  %144 = load i32, i32* %xshift, align 4, !tbaa !119
  %145 = load i32, i32* %i44, align 4, !tbaa !22
  %idxprom170 = sext i32 %145 to i64
  %arrayidx171 = getelementptr inbounds [64 x %struct.tile_cursor_s], [64 x %struct.tile_cursor_s]* %cursor, i32 0, i64 %idxprom170
  %bit_shift172 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %arrayidx171, i32 0, i32 9
  store i32 %144, i32* %bit_shift172, align 4, !tbaa !113
  br label %do.cond.173

do.cond.173:                                      ; preds = %if.end.157
  br label %do.end.174

do.end.174:                                       ; preds = %do.cond.173
  br label %if.end.175

if.end.175:                                       ; preds = %do.end.174, %for.body.129
  br label %for.inc.176

for.inc.176:                                      ; preds = %if.end.175
  %146 = load i32, i32* %i44, align 4, !tbaa !22
  %inc177 = add nsw i32 %146, 1
  store i32 %inc177, i32* %i44, align 4, !tbaa !22
  br label %for.cond.126

for.end.178:                                      ; preds = %for.cond.126
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.178, %if.then.124
  %147 = bitcast i32* %i44 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %147) #2
  %148 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %148) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 14, label %for.end.184
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.180

for.inc.180:                                      ; preds = %cleanup.cont
  %149 = load i32, i32* %dest_raster.addr, align 4, !tbaa !22
  %150 = load i8*, i8** %dest_row, align 8, !tbaa !1
  %idx.ext181 = zext i32 %149 to i64
  %idx.neg182 = sub i64 0, %idx.ext181
  %add.ptr183 = getelementptr inbounds i8, i8* %150, i64 %idx.neg182
  store i8* %add.ptr183, i8** %dest_row, align 8, !tbaa !1
  br label %for.cond.43

for.end.184:                                      ; preds = %cleanup
  %151 = bitcast i64* %base_color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %151) #2
  %152 = bitcast i32* %pmax to i8*
  call void @llvm.lifetime.end(i64 4, i8* %152) #2
  %153 = bitcast i32* %pmin to i8*
  call void @llvm.lifetime.end(i64 4, i8* %153) #2
  %154 = bitcast i8** %dest_row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %154) #2
  %155 = bitcast i32* %dbytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %155) #2
  %156 = bitcast [64 x %struct.tile_cursor_s]* %cursor to i8*
  call void @llvm.lifetime.end(i64 4096, i8* %156) #2
  %157 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %157) #2
  %158 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %158) #2
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare void @gx_set_rop_no_source(%struct.gx_rop_source_s**, %struct.gx_rop_source_s*, %struct.gx_device_s*) #1

declare i64 @gs_next_ids(%struct.gs_memory_s*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal void @init_tile_cursor(i32 %i, %struct.tile_cursor_s* %ptc, %struct.gx_const_strip_bitmap_s* %btile, i32 %endx, i32 %lasty) #0 {
entry:
  %i.addr = alloca i32, align 4
  %ptc.addr = alloca %struct.tile_cursor_s*, align 8
  %btile.addr = alloca %struct.gx_const_strip_bitmap_s*, align 8
  %endx.addr = alloca i32, align 4
  %lasty.addr = alloca i32, align 4
  %tw = alloca i32, align 4
  %bx = alloca i32, align 4
  %by = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4, !tbaa !22
  store %struct.tile_cursor_s* %ptc, %struct.tile_cursor_s** %ptc.addr, align 8, !tbaa !1
  store %struct.gx_const_strip_bitmap_s* %btile, %struct.gx_const_strip_bitmap_s** %btile.addr, align 8, !tbaa !1
  store i32 %endx, i32* %endx.addr, align 4, !tbaa !22
  store i32 %lasty, i32* %lasty.addr, align 4, !tbaa !22
  %0 = bitcast i32* %tw to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_const_strip_bitmap_s*, %struct.gx_const_strip_bitmap_s** %btile.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gx_const_strip_bitmap_s, %struct.gx_const_strip_bitmap_s* %1, i32 0, i32 2
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 0
  %2 = load i32, i32* %x, align 4, !tbaa !120
  store i32 %2, i32* %tw, align 4, !tbaa !22
  %3 = bitcast i32* %bx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_const_strip_bitmap_s*, %struct.gx_const_strip_bitmap_s** %btile.addr, align 8, !tbaa !1
  %shift = getelementptr inbounds %struct.gx_const_strip_bitmap_s, %struct.gx_const_strip_bitmap_s* %4, i32 0, i32 7
  %5 = load i16, i16* %shift, align 2, !tbaa !122
  %conv = zext i16 %5 to i32
  %6 = load %struct.tile_cursor_s*, %struct.tile_cursor_s** %ptc.addr, align 8, !tbaa !1
  %tile_shift = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %6, i32 0, i32 0
  store i32 %conv, i32* %tile_shift, align 4, !tbaa !123
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load i32, i32* %endx.addr, align 4, !tbaa !22
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load i32, i32* %endx.addr, align 4, !tbaa !22
  %9 = load i32, i32* %lasty.addr, align 4, !tbaa !22
  %10 = load %struct.gx_const_strip_bitmap_s*, %struct.gx_const_strip_bitmap_s** %btile.addr, align 8, !tbaa !1
  %size2 = getelementptr inbounds %struct.gx_const_strip_bitmap_s, %struct.gx_const_strip_bitmap_s* %10, i32 0, i32 2
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size2, i32 0, i32 1
  %11 = load i32, i32* %y, align 4, !tbaa !124
  %div = sdiv i32 %9, %11
  %12 = load %struct.tile_cursor_s*, %struct.tile_cursor_s** %ptc.addr, align 8, !tbaa !1
  %tile_shift3 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %12, i32 0, i32 0
  %13 = load i32, i32* %tile_shift3, align 4, !tbaa !123
  %mul = mul nsw i32 %div, %13
  %add = add nsw i32 %8, %mul
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ %add, %cond.false ]
  %14 = load i32, i32* %tw, align 4, !tbaa !22
  %rem = srem i32 %cond, %14
  store i32 %rem, i32* %bx, align 4, !tbaa !22
  %15 = bitcast i32* %by to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = load i32, i32* %lasty.addr, align 4, !tbaa !22
  %17 = load %struct.gx_const_strip_bitmap_s*, %struct.gx_const_strip_bitmap_s** %btile.addr, align 8, !tbaa !1
  %size4 = getelementptr inbounds %struct.gx_const_strip_bitmap_s, %struct.gx_const_strip_bitmap_s* %17, i32 0, i32 2
  %y5 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size4, i32 0, i32 1
  %18 = load i32, i32* %y5, align 4, !tbaa !124
  %rem6 = srem i32 %16, %18
  store i32 %rem6, i32* %by, align 4, !tbaa !22
  %19 = load i32, i32* %bx, align 4, !tbaa !22
  %shr = ashr i32 %19, 3
  %20 = load %struct.tile_cursor_s*, %struct.tile_cursor_s** %ptc.addr, align 8, !tbaa !1
  %xoffset = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %20, i32 0, i32 1
  store i32 %shr, i32* %xoffset, align 4, !tbaa !118
  %21 = load i32, i32* %bx, align 4, !tbaa !22
  %and = and i32 %21, 7
  %sub = sub nsw i32 8, %and
  %22 = load %struct.tile_cursor_s*, %struct.tile_cursor_s** %ptc.addr, align 8, !tbaa !1
  %xshift = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %22, i32 0, i32 2
  store i32 %sub, i32* %xshift, align 4, !tbaa !119
  %23 = load i32, i32* %tw, align 4, !tbaa !22
  %sub7 = sub nsw i32 %23, 1
  %shr8 = ashr i32 %sub7, 3
  %24 = load %struct.tile_cursor_s*, %struct.tile_cursor_s** %ptc.addr, align 8, !tbaa !1
  %xbytes = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %24, i32 0, i32 3
  store i32 %shr8, i32* %xbytes, align 4, !tbaa !114
  %25 = load i32, i32* %tw, align 4, !tbaa !22
  %sub9 = sub nsw i32 %25, 1
  %and10 = and i32 %sub9, 7
  %add11 = add nsw i32 %and10, 1
  %26 = load %struct.tile_cursor_s*, %struct.tile_cursor_s** %ptc.addr, align 8, !tbaa !1
  %xbits = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %26, i32 0, i32 4
  store i32 %add11, i32* %xbits, align 4, !tbaa !115
  %27 = load %struct.gx_const_strip_bitmap_s*, %struct.gx_const_strip_bitmap_s** %btile.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gx_const_strip_bitmap_s, %struct.gx_const_strip_bitmap_s* %27, i32 0, i32 0
  %28 = load i8*, i8** %data, align 8, !tbaa !125
  %29 = load %struct.tile_cursor_s*, %struct.tile_cursor_s** %ptc.addr, align 8, !tbaa !1
  %tdata = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %29, i32 0, i32 6
  store i8* %28, i8** %tdata, align 8, !tbaa !116
  %30 = load %struct.gx_const_strip_bitmap_s*, %struct.gx_const_strip_bitmap_s** %btile.addr, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_const_strip_bitmap_s, %struct.gx_const_strip_bitmap_s* %30, i32 0, i32 1
  %31 = load i32, i32* %raster, align 4, !tbaa !126
  %32 = load %struct.tile_cursor_s*, %struct.tile_cursor_s** %ptc.addr, align 8, !tbaa !1
  %raster12 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %32, i32 0, i32 7
  store i32 %31, i32* %raster12, align 4, !tbaa !117
  %33 = load %struct.tile_cursor_s*, %struct.tile_cursor_s** %ptc.addr, align 8, !tbaa !1
  %tdata13 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %33, i32 0, i32 6
  %34 = load i8*, i8** %tdata13, align 8, !tbaa !116
  %35 = load i32, i32* %by, align 4, !tbaa !22
  %36 = load %struct.tile_cursor_s*, %struct.tile_cursor_s** %ptc.addr, align 8, !tbaa !1
  %raster14 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %36, i32 0, i32 7
  %37 = load i32, i32* %raster14, align 4, !tbaa !117
  %mul15 = mul nsw i32 %35, %37
  %idx.ext = sext i32 %mul15 to i64
  %add.ptr = getelementptr inbounds i8, i8* %34, i64 %idx.ext
  %38 = load %struct.tile_cursor_s*, %struct.tile_cursor_s** %ptc.addr, align 8, !tbaa !1
  %row = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %38, i32 0, i32 5
  store i8* %add.ptr, i8** %row, align 8, !tbaa !112
  %39 = load %struct.tile_cursor_s*, %struct.tile_cursor_s** %ptc.addr, align 8, !tbaa !1
  %row16 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %39, i32 0, i32 5
  %40 = load i8*, i8** %row16, align 8, !tbaa !112
  %41 = load %struct.tile_cursor_s*, %struct.tile_cursor_s** %ptc.addr, align 8, !tbaa !1
  %xoffset17 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %41, i32 0, i32 1
  %42 = load i32, i32* %xoffset17, align 4, !tbaa !118
  %idx.ext18 = sext i32 %42 to i64
  %add.ptr19 = getelementptr inbounds i8, i8* %40, i64 %idx.ext18
  %43 = load %struct.tile_cursor_s*, %struct.tile_cursor_s** %ptc.addr, align 8, !tbaa !1
  %data20 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %43, i32 0, i32 8
  store i8* %add.ptr19, i8** %data20, align 8, !tbaa !110
  %44 = load %struct.tile_cursor_s*, %struct.tile_cursor_s** %ptc.addr, align 8, !tbaa !1
  %xshift21 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %44, i32 0, i32 2
  %45 = load i32, i32* %xshift21, align 4, !tbaa !119
  %46 = load %struct.tile_cursor_s*, %struct.tile_cursor_s** %ptc.addr, align 8, !tbaa !1
  %bit_shift = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %46, i32 0, i32 9
  store i32 %45, i32* %bit_shift, align 4, !tbaa !113
  br label %do.body

do.body:                                          ; preds = %cond.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %47 = bitcast i32* %by to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #2
  %48 = bitcast i32* %bx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #2
  %49 = bitcast i32* %tw to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @wrap_shifted_cursor(%struct.tile_cursor_s* %ptc, %struct.gx_const_strip_bitmap_s* %psbit) #0 {
entry:
  %ptc.addr = alloca %struct.tile_cursor_s*, align 8
  %psbit.addr = alloca %struct.gx_const_strip_bitmap_s*, align 8
  %bx = alloca i32, align 4
  store %struct.tile_cursor_s* %ptc, %struct.tile_cursor_s** %ptc.addr, align 8, !tbaa !1
  store %struct.gx_const_strip_bitmap_s* %psbit, %struct.gx_const_strip_bitmap_s** %psbit.addr, align 8, !tbaa !1
  %0 = load %struct.tile_cursor_s*, %struct.tile_cursor_s** %ptc.addr, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %0, i32 0, i32 7
  %1 = load i32, i32* %raster, align 4, !tbaa !117
  %2 = load %struct.gx_const_strip_bitmap_s*, %struct.gx_const_strip_bitmap_s** %psbit.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gx_const_strip_bitmap_s, %struct.gx_const_strip_bitmap_s* %2, i32 0, i32 2
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 1
  %3 = load i32, i32* %y, align 4, !tbaa !124
  %sub = sub nsw i32 %3, 1
  %mul = mul i32 %1, %sub
  %4 = load %struct.tile_cursor_s*, %struct.tile_cursor_s** %ptc.addr, align 8, !tbaa !1
  %row = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %4, i32 0, i32 5
  %5 = load i8*, i8** %row, align 8, !tbaa !112
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %idx.ext
  store i8* %add.ptr, i8** %row, align 8, !tbaa !112
  %6 = load %struct.tile_cursor_s*, %struct.tile_cursor_s** %ptc.addr, align 8, !tbaa !1
  %tile_shift = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %6, i32 0, i32 0
  %7 = load i32, i32* %tile_shift, align 4, !tbaa !123
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end.21

if.then:                                          ; preds = %entry
  %8 = load %struct.tile_cursor_s*, %struct.tile_cursor_s** %ptc.addr, align 8, !tbaa !1
  %tile_shift1 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %8, i32 0, i32 0
  %9 = load i32, i32* %tile_shift1, align 4, !tbaa !123
  %10 = load %struct.tile_cursor_s*, %struct.tile_cursor_s** %ptc.addr, align 8, !tbaa !1
  %xshift = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %10, i32 0, i32 2
  %11 = load i32, i32* %xshift, align 4, !tbaa !119
  %add = add nsw i32 %11, %9
  store i32 %add, i32* %xshift, align 4, !tbaa !119
  %cmp = icmp sge i32 %add, 8
  br i1 %cmp, label %if.then.2, label %if.end.20

if.then.2:                                        ; preds = %if.then
  %12 = load %struct.tile_cursor_s*, %struct.tile_cursor_s** %ptc.addr, align 8, !tbaa !1
  %xshift3 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %12, i32 0, i32 2
  %13 = load i32, i32* %xshift3, align 4, !tbaa !119
  %shr = ashr i32 %13, 3
  %14 = load %struct.tile_cursor_s*, %struct.tile_cursor_s** %ptc.addr, align 8, !tbaa !1
  %xoffset = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %14, i32 0, i32 1
  %15 = load i32, i32* %xoffset, align 4, !tbaa !118
  %sub4 = sub nsw i32 %15, %shr
  store i32 %sub4, i32* %xoffset, align 4, !tbaa !118
  %cmp5 = icmp slt i32 %sub4, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then.2
  %16 = bitcast i32* %bx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = load %struct.tile_cursor_s*, %struct.tile_cursor_s** %ptc.addr, align 8, !tbaa !1
  %xoffset7 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %17, i32 0, i32 1
  %18 = load i32, i32* %xoffset7, align 4, !tbaa !118
  %shl = shl i32 %18, 3
  %add8 = add nsw i32 %shl, 8
  %19 = load %struct.tile_cursor_s*, %struct.tile_cursor_s** %ptc.addr, align 8, !tbaa !1
  %xshift9 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %19, i32 0, i32 2
  %20 = load i32, i32* %xshift9, align 4, !tbaa !119
  %and = and i32 %20, 7
  %sub10 = sub nsw i32 %add8, %and
  %21 = load %struct.gx_const_strip_bitmap_s*, %struct.gx_const_strip_bitmap_s** %psbit.addr, align 8, !tbaa !1
  %size11 = getelementptr inbounds %struct.gx_const_strip_bitmap_s, %struct.gx_const_strip_bitmap_s* %21, i32 0, i32 2
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size11, i32 0, i32 0
  %22 = load i32, i32* %x, align 4, !tbaa !120
  %add12 = add nsw i32 %sub10, %22
  store i32 %add12, i32* %bx, align 4, !tbaa !22
  %23 = load i32, i32* %bx, align 4, !tbaa !22
  %shr13 = ashr i32 %23, 3
  %24 = load %struct.tile_cursor_s*, %struct.tile_cursor_s** %ptc.addr, align 8, !tbaa !1
  %xoffset14 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %24, i32 0, i32 1
  store i32 %shr13, i32* %xoffset14, align 4, !tbaa !118
  %25 = load i32, i32* %bx, align 4, !tbaa !22
  %and15 = and i32 %25, 7
  %sub16 = sub nsw i32 8, %and15
  %26 = load %struct.tile_cursor_s*, %struct.tile_cursor_s** %ptc.addr, align 8, !tbaa !1
  %xshift17 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %26, i32 0, i32 2
  store i32 %sub16, i32* %xshift17, align 4, !tbaa !119
  %27 = bitcast i32* %bx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #2
  br label %if.end

if.else:                                          ; preds = %if.then.2
  %28 = load %struct.tile_cursor_s*, %struct.tile_cursor_s** %ptc.addr, align 8, !tbaa !1
  %xshift18 = getelementptr inbounds %struct.tile_cursor_s, %struct.tile_cursor_s* %28, i32 0, i32 2
  %29 = load i32, i32* %xshift18, align 4, !tbaa !119
  %and19 = and i32 %29, 7
  store i32 %and19, i32* %xshift18, align 4, !tbaa !119
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.20

if.end.20:                                        ; preds = %if.end, %if.then
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %entry
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin nounwind }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 0}
!6 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !7, i64 352, !8, i64 360, !9, i64 368, !11, i64 632}
!7 = !{!"gs_int_point_s", !8, i64 0, !8, i64 4}
!8 = !{!"int", !3, i64 0}
!9 = !{!"gs_client_color_s", !2, i64 0, !10, i64 8}
!10 = !{!"gs_paint_color_s", !3, i64 0}
!11 = !{!"_mask", !12, i64 0, !13, i64 8, !2, i64 16}
!12 = !{!"mp_", !8, i64 0, !8, i64 4}
!13 = !{!"long", !3, i64 0}
!14 = !{!15, !2, i64 0}
!15 = !{!"gx_device_color_saved_s", !2, i64 0, !3, i64 8, !7, i64 336}
!16 = !{!17, !18, i64 332}
!17 = !{!"_col", !2, i64 0, !18, i64 8, !3, i64 10, !3, i64 76, !18, i64 332, !13, i64 336}
!18 = !{!"short", !3, i64 0}
!19 = !{!20, !18, i64 320}
!20 = !{!"_svcol", !3, i64 0, !3, i64 64, !18, i64 320}
!21 = !{i64 0, i64 4, !22, i64 4, i64 4, !22}
!22 = !{!8, !8, i64 0}
!23 = !{!17, !2, i64 0}
!24 = !{!3, !3, i64 0}
!25 = !{!26, !18, i64 108}
!26 = !{!"gx_device_s", !8, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !8, i64 40, !2, i64 48, !27, i64 56, !8, i64 80, !8, i64 84, !8, i64 88, !28, i64 96, !30, i64 816, !8, i64 832, !8, i64 836, !8, i64 840, !8, i64 844, !8, i64 848, !8, i64 852, !3, i64 856, !3, i64 864, !8, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !13, i64 928, !13, i64 936, !8, i64 944, !8, i64 948, !8, i64 952, !8, i64 956, !8, i64 960, !13, i64 968, !13, i64 976, !31, i64 984, !8, i64 1052, !8, i64 1056, !32, i64 1064, !2, i64 1104, !3, i64 1112, !34, i64 1120, !35, i64 1144}
!27 = !{!"rc_header_s", !13, i64 0, !2, i64 8, !2, i64 16}
!28 = !{!"gx_device_color_info_s", !8, i64 0, !8, i64 4, !3, i64 8, !18, i64 12, !3, i64 14, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !29, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !13, i64 704, !8, i64 712}
!29 = !{!"gx_device_anti_alias_info_s", !8, i64 0, !8, i64 4}
!30 = !{!"gx_device_cached_colors_s", !13, i64 0, !13, i64 8}
!31 = !{!"gx_stroked_gradient_recognizer_s", !8, i64 0, !3, i64 4, !3, i64 36}
!32 = !{!"gdev_space_params_s", !13, i64 0, !13, i64 8, !33, i64 16, !8, i64 32, !3, i64 36}
!33 = !{!"gx_band_params_s", !8, i64 0, !8, i64 4, !13, i64 8}
!34 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!35 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!36 = !{!26, !8, i64 100}
!37 = !{!26, !2, i64 1664}
!38 = !{!17, !13, i64 336}
!39 = !{!40, !8, i64 216}
!40 = !{!"gx_device_halftone_s", !41, i64 0, !27, i64 160, !13, i64 184, !3, i64 192, !2, i64 200, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220}
!41 = !{!"gx_ht_order_s", !42, i64 0, !18, i64 40, !18, i64 42, !18, i64 44, !18, i64 46, !18, i64 48, !18, i64 50, !8, i64 52, !8, i64 56, !8, i64 60, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !43, i64 112, !2, i64 144, !8, i64 152}
!42 = !{!"gx_ht_cell_params_s", !18, i64 0, !18, i64 2, !18, i64 4, !18, i64 6, !18, i64 8, !18, i64 10, !13, i64 16, !18, i64 24, !18, i64 26, !8, i64 28, !8, i64 32, !8, i64 36}
!43 = !{!"gx_ht_order_screen_params_s", !44, i64 0, !13, i64 24}
!44 = !{!"gs_matrix_s", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !45, i64 16, !45, i64 20}
!45 = !{!"float", !3, i64 0}
!46 = !{!40, !8, i64 220}
!47 = !{!26, !2, i64 1432}
!48 = !{!49, !8, i64 0}
!49 = !{!"gs_fixed_rect_s", !50, i64 0, !50, i64 8}
!50 = !{!"gs_fixed_point_s", !8, i64 0, !8, i64 4}
!51 = !{!49, !8, i64 4}
!52 = !{!49, !8, i64 8}
!53 = !{!49, !8, i64 12}
!54 = !{!40, !2, i64 200}
!55 = !{!40, !2, i64 96}
!56 = !{!57, !2, i64 96}
!57 = !{!"gx_ht_order_component_s", !41, i64 0, !8, i64 160, !8, i64 164}
!58 = !{!26, !8, i64 832}
!59 = !{!26, !8, i64 836}
!60 = !{!61, !2, i64 0}
!61 = !{!"gx_strip_bitmap_s", !2, i64 0, !8, i64 8, !7, i64 12, !13, i64 24, !18, i64 32, !18, i64 34, !18, i64 36, !18, i64 38, !8, i64 40}
!62 = !{!61, !8, i64 8}
!63 = !{!61, !8, i64 12}
!64 = !{!61, !18, i64 32}
!65 = !{!61, !8, i64 16}
!66 = !{!61, !18, i64 34}
!67 = !{!40, !2, i64 168}
!68 = !{!61, !13, i64 24}
!69 = !{!61, !18, i64 38}
!70 = !{!61, !18, i64 36}
!71 = !{!61, !8, i64 40}
!72 = !{!26, !2, i64 1416}
!73 = !{!6, !8, i64 352}
!74 = !{!6, !8, i64 356}
!75 = !{!76, !8, i64 40}
!76 = !{!"gx_rop_source_s", !2, i64 0, !8, i64 8, !8, i64 12, !13, i64 16, !3, i64 24, !8, i64 40, !8, i64 44}
!77 = !{!26, !2, i64 1424}
!78 = !{!76, !2, i64 0}
!79 = !{!76, !8, i64 12}
!80 = !{!76, !8, i64 8}
!81 = !{!76, !13, i64 16}
!82 = !{!76, !8, i64 44}
!83 = !{!26, !2, i64 1696}
!84 = !{!26, !2, i64 1224}
!85 = !{!17, !18, i64 8}
!86 = !{!13, !13, i64 0}
!87 = !{!18, !18, i64 0}
!88 = !{i64 0, i64 8, !1, i64 8, i64 8, !86, i64 8, i64 8, !1, i64 16, i64 16, !24, i64 32, i64 4, !22, i64 36, i64 4, !22, i64 40, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 2, !87, i64 18, i64 64, !24, i64 84, i64 256, !24, i64 340, i64 2, !87, i64 344, i64 8, !86, i64 8, i64 8, !1, i64 8, i64 128, !24, i64 352, i64 4, !22, i64 356, i64 4, !22, i64 360, i64 4, !22, i64 368, i64 8, !1, i64 376, i64 256, !24, i64 632, i64 4, !22, i64 636, i64 4, !22, i64 640, i64 8, !86, i64 648, i64 8, !1}
!89 = !{!90, !2, i64 392}
!90 = !{!"gs_imager_state_s", !8, i64 0, !2, i64 8, !2, i64 16, !91, i64 24, !8, i64 128, !93, i64 132, !8, i64 168, !94, i64 176, !94, i64 192, !8, i64 208, !8, i64 212, !18, i64 216, !3, i64 220, !96, i64 224, !96, i64 228, !97, i64 232, !13, i64 240, !8, i64 248, !8, i64 252, !8, i64 256, !2, i64 264, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !8, i64 288, !8, i64 292, !45, i64 296, !50, i64 300, !8, i64 308, !8, i64 312, !8, i64 316, !45, i64 320, !8, i64 324, !8, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !8, i64 408, !2, i64 416, !2, i64 424, !98, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !99, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !99, i64 1336}
!91 = !{!"gx_line_params_s", !45, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !8, i64 20, !45, i64 24, !45, i64 28, !45, i64 32, !8, i64 36, !44, i64 40, !92, i64 64}
!92 = !{!"gx_dash_params_s", !2, i64 0, !8, i64 8, !45, i64 12, !8, i64 16, !45, i64 20, !8, i64 24, !8, i64 28, !45, i64 32}
!93 = !{!"gs_matrix_fixed_s", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !45, i64 16, !45, i64 20, !8, i64 24, !8, i64 28, !8, i64 32}
!94 = !{!"gs_point_s", !95, i64 0, !95, i64 8}
!95 = !{!"double", !3, i64 0}
!96 = !{!"gs_transparency_source_s", !45, i64 0}
!97 = !{!"gs_xstate_trans_flags", !8, i64 0, !8, i64 4}
!98 = !{!"gx_transfer_s", !8, i64 0, !2, i64 8, !8, i64 16, !2, i64 24, !8, i64 32, !2, i64 40, !8, i64 48, !2, i64 56}
!99 = !{!"gs_devicen_color_map_s", !8, i64 0, !3, i64 4, !8, i64 8, !8, i64 12, !13, i64 16, !3, i64 24}
!100 = !{!7, !8, i64 0}
!101 = !{!7, !8, i64 4}
!102 = !{!57, !8, i64 56}
!103 = !{!40, !8, i64 56}
!104 = !{!105, !2, i64 216}
!105 = !{!"gx_ht_cache_s", !2, i64 0, !8, i64 8, !2, i64 16, !8, i64 24, !41, i64 32, !8, i64 192, !8, i64 196, !8, i64 200, !13, i64 208, !2, i64 216}
!106 = !{!26, !8, i64 124}
!107 = !{!26, !3, i64 104}
!108 = !{!26, !2, i64 1552}
!109 = !{!26, !2, i64 1288}
!110 = !{!111, !2, i64 48}
!111 = !{!"tile_cursor_s", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !2, i64 24, !2, i64 32, !8, i64 40, !2, i64 48, !8, i64 56}
!112 = !{!111, !2, i64 24}
!113 = !{!111, !8, i64 56}
!114 = !{!111, !8, i64 12}
!115 = !{!111, !8, i64 16}
!116 = !{!111, !2, i64 32}
!117 = !{!111, !8, i64 40}
!118 = !{!111, !8, i64 4}
!119 = !{!111, !8, i64 8}
!120 = !{!121, !8, i64 12}
!121 = !{!"gx_const_strip_bitmap_s", !2, i64 0, !8, i64 8, !7, i64 12, !13, i64 24, !18, i64 32, !18, i64 34, !18, i64 36, !18, i64 38, !8, i64 40}
!122 = !{!121, !18, i64 38}
!123 = !{!111, !8, i64 0}
!124 = !{!121, !8, i64 16}
!125 = !{!121, !2, i64 0}
!126 = !{!121, !8, i64 8}
