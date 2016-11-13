; ModuleID = './gxifast.bc'
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
%struct.gx_device_memory_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, i32, i8*, %struct.gs_memory_s*, i32, %struct.gs_memory_s*, i32, [64 x %struct.gx_render_plane_s], %struct.gs_matrix_s, i8**, %struct.gs_const_string_s, %struct._c24, %struct._c40, %struct._c48, %struct._c56, %struct._c64, %struct.gs_log2_scale_point_s, i32, i32, i32, i32, i32, i64, %struct.gx_device_color_s*, i32, i32 }
%struct.gx_render_plane_s = type { i32, i32, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct._c24 = type { i64, i32, i32, i32 }
%struct._c40 = type { i64, i32, i32, i32, i32, i32 }
%struct._c48 = type { i64, i32, i32, i32 }
%struct._c56 = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct._c64 = type { i64, i32, i32 }
%struct.gx_image_enum_s = type { %struct.gx_image_type_s*, %struct.gx_image_enum_procs_s*, %struct.gx_device_s*, %struct.gs_memory_s*, i64, i32, i32, [65 x i32], [65 x i32], i32, i32, i8, i8, i8, i8, i32, %struct.mc_, i8, i8, i8, i8, %struct.gs_matrix_s, %struct.r_, %struct.anon, i32, i32, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*, {}*, %struct.gs_imager_state_s*, %struct.gs_color_space_s*, i8*, i32, i8*, i32, i32, i32, i8, i8, i8, i8, %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s, i32, i32, i32, i32, %struct.gx_device_clip_s*, %struct.gx_device_rop_texture_s*, %struct.stream_image_scale_state_s*, i32, %struct.gs_int_point_s, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, %struct.dd_, i32, i32, %struct.gs_int_point_s, i32, i32, i32, i32, i32, [65 x %struct.sample_map_s], %struct.gx_image_clue_s*, %struct.gx_device_color_s, %struct.gx_device_color_s, %struct.gx_device_color_s*, %struct.gx_device_color_s*, %struct.gsicc_link_s*, %struct.gx_image_color_cache_s*, i8*, i32, i32, i32, i8*, i32, i32, %struct.ht_landscape_info_s, %struct.gx_image_icc_setup_s, i32 }
%struct.mc_ = type { [130 x i32], i32, i32, i32 }
%struct.r_ = type { i32, i32, i32, i32 }
%struct.anon = type { i32, i32, i32, i32 }
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

@.str = private unnamed_addr constant [11 x i8] c"image line\00", align 1
@gx_dc_type_data_pure = external constant %struct.gx_device_color_type_s, align 8
@mem_mono_device = external constant %struct.gx_device_memory_s, align 8
@byte_reverse_bits = external constant [256 x i8], align 16
@byte_bit_run_length_0 = external constant [256 x i8], align 16
@image_simple_expand.lmasks = internal constant [9 x i8] c"\FF\7F?\1F\0F\07\03\01\00", align 1
@image_simple_expand.rmasks = internal constant [9 x i8] c"\00\80\C0\E0\F0\F8\FC\FE\FF", align 1

; Function Attrs: nounwind uwtable
define i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* @gs_image_class_1_simple(%struct.gx_image_enum_s* %penum) #0 {
entry:
  %retval = alloca i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)*, align 8
  %penum.addr = alloca %struct.gx_image_enum_s*, align 8
  %rproc = alloca i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)*, align 8
  %ox = alloca i32, align 4
  %oy = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %dev_width = alloca i64, align 8
  %line_size = alloca i64, align 8
  %dev_width58 = alloca i64, align 8
  %line_size69 = alloca i64, align 8
  store %struct.gx_image_enum_s* %penum, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = bitcast i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)** %rproc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %ox to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %2, i32 0, i32 55
  %pixel0 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda, i32 0, i32 2
  %x = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pixel0, i32 0, i32 0
  %state = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x, i32 0, i32 0
  %Q = getelementptr inbounds %struct._a, %struct._a* %state, i32 0, i32 0
  %3 = load i32, i32* %Q, align 4, !tbaa !5
  store i32 %3, i32* %ox, align 4, !tbaa !29
  %4 = bitcast i32* %oy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %5, i32 0, i32 55
  %pixel02 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1, i32 0, i32 2
  %y = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pixel02, i32 0, i32 1
  %state3 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y, i32 0, i32 0
  %Q4 = getelementptr inbounds %struct._a, %struct._a* %state3, i32 0, i32 0
  %6 = load i32, i32* %Q4, align 4, !tbaa !30
  store i32 %6, i32* %oy, align 4, !tbaa !29
  %7 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %use_rop = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %7, i32 0, i32 38
  %8 = load i8, i8* %use_rop, align 1, !tbaa !31
  %conv = zext i8 %8 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %spp = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %9, i32 0, i32 14
  %10 = load i8, i8* %spp, align 1, !tbaa !32
  %conv5 = zext i8 %10 to i32
  %cmp = icmp ne i32 %conv5, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false
  %11 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %bps = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %11, i32 0, i32 11
  %12 = load i8, i8* %bps, align 1, !tbaa !33
  %conv8 = zext i8 %12 to i32
  %cmp9 = icmp ne i32 %conv8, 1
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.7, %lor.lhs.false, %entry
  store i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* null, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.210

if.end:                                           ; preds = %lor.lhs.false.7
  %13 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %posture = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %13, i32 0, i32 37
  %14 = load i32, i32* %posture, align 4, !tbaa !34
  switch i32 %14, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.57
  ]

sw.bb:                                            ; preds = %if.end
  %15 = bitcast i64* %dev_width to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load i32, i32* %ox, align 4, !tbaa !29
  %17 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %x_extent = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %17, i32 0, i32 26
  %x11 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %x_extent, i32 0, i32 0
  %18 = load i32, i32* %x11, align 4, !tbaa !35
  %add = add nsw i32 %16, %18
  %conv12 = sext i32 %add to i64
  %add13 = add nsw i64 %conv12, 127
  %shr = ashr i64 %add13, 8
  %19 = load i32, i32* %ox, align 4, !tbaa !29
  %conv14 = sext i32 %19 to i64
  %add15 = add nsw i64 %conv14, 127
  %shr16 = ashr i64 %add15, 8
  %sub = sub nsw i64 %shr, %shr16
  store i64 %sub, i64* %dev_width, align 8, !tbaa !36
  %20 = load i64, i64* %dev_width, align 8, !tbaa !36
  %21 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %21, i32 0, i32 22
  %w = getelementptr inbounds %struct.r_, %struct.r_* %rect, i32 0, i32 2
  %22 = load i32, i32* %w, align 4, !tbaa !37
  %conv17 = sext i32 %22 to i64
  %cmp18 = icmp ne i64 %20, %conv17
  br i1 %cmp18, label %if.then.20, label %if.end.54

if.then.20:                                       ; preds = %sw.bb
  %23 = bitcast i64* %line_size to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  %24 = load i64, i64* %dev_width, align 8, !tbaa !36
  %cmp21 = icmp slt i64 %24, 0
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.20
  %25 = load i64, i64* %dev_width, align 8, !tbaa !36
  %sub23 = sub nsw i64 0, %25
  br label %cond.end

cond.false:                                       ; preds = %if.then.20
  %26 = load i64, i64* %dev_width, align 8, !tbaa !36
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub23, %cond.true ], [ %26, %cond.false ]
  %add24 = add nsw i64 %cond, 63
  %shr25 = ashr i64 %add24, 6
  %shl = shl i64 %shr25, 3
  %conv26 = trunc i64 %shl to i32
  %add27 = add i32 %conv26, 8
  %conv28 = zext i32 %add27 to i64
  store i64 %conv28, i64* %line_size, align 8, !tbaa !36
  %27 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %adjust = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %27, i32 0, i32 45
  %28 = load i32, i32* %adjust, align 4, !tbaa !38
  %cmp29 = icmp ne i32 %28, 0
  br i1 %cmp29, label %if.then.34, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %cond.end
  %29 = load i64, i64* %line_size, align 8, !tbaa !36
  %cmp32 = icmp sgt i64 %29, 4294967295
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %lor.lhs.false.31, %cond.end
  store i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* null, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.35:                                        ; preds = %lor.lhs.false.31
  %30 = load i64, i64* %dev_width, align 8, !tbaa !36
  %cmp36 = icmp slt i64 %30, 0
  br i1 %cmp36, label %cond.true.38, label %cond.false.40

cond.true.38:                                     ; preds = %if.end.35
  %31 = load i64, i64* %dev_width, align 8, !tbaa !36
  %sub39 = sub nsw i64 0, %31
  br label %cond.end.41

cond.false.40:                                    ; preds = %if.end.35
  %32 = load i64, i64* %dev_width, align 8, !tbaa !36
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.40, %cond.true.38
  %cond42 = phi i64 [ %sub39, %cond.true.38 ], [ %32, %cond.false.40 ]
  %conv43 = trunc i64 %cond42 to i32
  %33 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line_width = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %33, i32 0, i32 36
  store i32 %conv43, i32* %line_width, align 4, !tbaa !39
  %34 = load i64, i64* %line_size, align 8, !tbaa !36
  %conv44 = trunc i64 %34 to i32
  %35 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line_size45 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %35, i32 0, i32 35
  store i32 %conv44, i32* %line_size45, align 4, !tbaa !40
  %36 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %36, i32 0, i32 3
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !41
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %37, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %38 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !42
  %39 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %memory46 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %39, i32 0, i32 3
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory46, align 8, !tbaa !41
  %41 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line_size47 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %41, i32 0, i32 35
  %42 = load i32, i32* %line_size47, align 4, !tbaa !40
  %call = call i8* %38(%struct.gs_memory_s* %40, i32 %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0)) #5
  %43 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %43, i32 0, i32 34
  store i8* %call, i8** %line, align 8, !tbaa !45
  %44 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line48 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %44, i32 0, i32 34
  %45 = load i8*, i8** %line48, align 8, !tbaa !45
  %cmp49 = icmp eq i8* %45, null
  br i1 %cmp49, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %cond.end.41
  %46 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %46, i32 0, i32 2
  %47 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !46
  %48 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %49 = bitcast %struct.gx_image_enum_s* %48 to %struct.gx_image_enum_common_s*
  %call52 = call i32 @gx_default_end_image(%struct.gx_device_s* %47, %struct.gx_image_enum_common_s* %49, i32 0) #5
  store i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* null, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.53:                                        ; preds = %cond.end.41
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.53, %if.then.51, %if.then.34
  %50 = bitcast i64* %line_size to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.55 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.54

if.end.54:                                        ; preds = %cleanup.cont, %sw.bb
  br label %do.body

do.body:                                          ; preds = %if.end.54
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* @image_render_simple, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)** %rproc, align 8, !tbaa !1
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.55

cleanup.55:                                       ; preds = %do.end, %cleanup
  %51 = bitcast i64* %dev_width to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %cleanup.dest.56 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.56, label %cleanup.210 [
    i32 2, label %sw.epilog
  ]

sw.bb.57:                                         ; preds = %if.end
  %52 = bitcast i64* %dev_width58 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %52) #1
  %53 = load i32, i32* %oy, align 4, !tbaa !29
  %54 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %x_extent59 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %54, i32 0, i32 26
  %y60 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %x_extent59, i32 0, i32 1
  %55 = load i32, i32* %y60, align 4, !tbaa !47
  %add61 = add nsw i32 %53, %55
  %conv62 = sext i32 %add61 to i64
  %add63 = add nsw i64 %conv62, 127
  %shr64 = ashr i64 %add63, 8
  %56 = load i32, i32* %oy, align 4, !tbaa !29
  %conv65 = sext i32 %56 to i64
  %add66 = add nsw i64 %conv65, 127
  %shr67 = ashr i64 %add66, 8
  %sub68 = sub nsw i64 %shr64, %shr67
  store i64 %sub68, i64* %dev_width58, align 8, !tbaa !36
  %57 = bitcast i64* %line_size69 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %57) #1
  %58 = load i64, i64* %dev_width58, align 8, !tbaa !36
  %cmp70 = icmp slt i64 %58, 0
  br i1 %cmp70, label %cond.true.72, label %cond.false.74

cond.true.72:                                     ; preds = %sw.bb.57
  %59 = load i64, i64* %dev_width58, align 8, !tbaa !36
  %sub73 = sub nsw i64 0, %59
  br label %cond.end.75

cond.false.74:                                    ; preds = %sw.bb.57
  %60 = load i64, i64* %dev_width58, align 8, !tbaa !36
  br label %cond.end.75

cond.end.75:                                      ; preds = %cond.false.74, %cond.true.72
  %cond76 = phi i64 [ %sub73, %cond.true.72 ], [ %60, %cond.false.74 ]
  store i64 %cond76, i64* %dev_width58, align 8, !tbaa !36
  %61 = load i64, i64* %dev_width58, align 8, !tbaa !36
  %add77 = add nsw i64 %61, 63
  %shr78 = ashr i64 %add77, 6
  %shl79 = shl i64 %shr78, 3
  %conv80 = trunc i64 %shl79 to i32
  %mul = mul i32 %conv80, 8
  %conv81 = zext i32 %mul to i64
  %62 = load i64, i64* %dev_width58, align 8, !tbaa !36
  %add82 = add nsw i64 %62, 7
  %and = and i64 %add82, -8
  %mul83 = mul nsw i64 %and, 8
  %add84 = add nsw i64 %conv81, %mul83
  store i64 %add84, i64* %line_size69, align 8, !tbaa !36
  %63 = load i64, i64* %dev_width58, align 8, !tbaa !36
  %64 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect85 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %64, i32 0, i32 22
  %w86 = getelementptr inbounds %struct.r_, %struct.r_* %rect85, i32 0, i32 2
  %65 = load i32, i32* %w86, align 4, !tbaa !37
  %conv87 = sext i32 %65 to i64
  %cmp88 = icmp ne i64 %63, %conv87
  br i1 %cmp88, label %land.lhs.true, label %lor.lhs.false.93

land.lhs.true:                                    ; preds = %cond.end.75
  %66 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %adjust90 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %66, i32 0, i32 45
  %67 = load i32, i32* %adjust90, align 4, !tbaa !38
  %cmp91 = icmp ne i32 %67, 0
  br i1 %cmp91, label %if.then.96, label %lor.lhs.false.93

lor.lhs.false.93:                                 ; preds = %land.lhs.true, %cond.end.75
  %68 = load i64, i64* %line_size69, align 8, !tbaa !36
  %cmp94 = icmp sgt i64 %68, 4294967295
  br i1 %cmp94, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %lor.lhs.false.93, %land.lhs.true
  store i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* null, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.125

if.end.97:                                        ; preds = %lor.lhs.false.93
  %69 = load i64, i64* %dev_width58, align 8, !tbaa !36
  %conv98 = trunc i64 %69 to i32
  %70 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line_width99 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %70, i32 0, i32 36
  store i32 %conv98, i32* %line_width99, align 4, !tbaa !39
  %71 = load i64, i64* %line_size69, align 8, !tbaa !36
  %conv100 = trunc i64 %71 to i32
  %72 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line_size101 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %72, i32 0, i32 35
  store i32 %conv100, i32* %line_size101, align 4, !tbaa !40
  %73 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %memory102 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %73, i32 0, i32 3
  %74 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory102, align 8, !tbaa !41
  %procs103 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %74, i32 0, i32 1
  %alloc_bytes104 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs103, i32 0, i32 7
  %75 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes104, align 8, !tbaa !42
  %76 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %memory105 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %76, i32 0, i32 3
  %77 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory105, align 8, !tbaa !41
  %78 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line_size106 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %78, i32 0, i32 35
  %79 = load i32, i32* %line_size106, align 4, !tbaa !40
  %call107 = call i8* %75(%struct.gs_memory_s* %77, i32 %79, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0)) #5
  %80 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line108 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %80, i32 0, i32 34
  store i8* %call107, i8** %line108, align 8, !tbaa !45
  %81 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line109 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %81, i32 0, i32 34
  %82 = load i8*, i8** %line109, align 8, !tbaa !45
  %cmp110 = icmp eq i8* %82, null
  br i1 %cmp110, label %if.then.112, label %if.end.115

if.then.112:                                      ; preds = %if.end.97
  %83 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev113 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %83, i32 0, i32 2
  %84 = load %struct.gx_device_s*, %struct.gx_device_s** %dev113, align 8, !tbaa !46
  %85 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %86 = bitcast %struct.gx_image_enum_s* %85 to %struct.gx_image_enum_common_s*
  %call114 = call i32 @gx_default_end_image(%struct.gx_device_s* %84, %struct.gx_image_enum_common_s* %86, i32 0) #5
  store i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* null, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.125

if.end.115:                                       ; preds = %if.end.97
  %87 = load i32, i32* %ox, align 4, !tbaa !29
  %add116 = add nsw i32 %87, 128
  %shr117 = ashr i32 %add116, 8
  %88 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line_xy = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %88, i32 0, i32 56
  store i32 %shr117, i32* %line_xy, align 4, !tbaa !48
  %89 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %xi_next = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %89, i32 0, i32 57
  store i32 %shr117, i32* %xi_next, align 4, !tbaa !49
  br label %do.body.118

do.body.118:                                      ; preds = %if.end.115
  br label %do.cond.119

do.cond.119:                                      ; preds = %do.body.118
  br label %do.end.120

do.end.120:                                       ; preds = %do.cond.119
  store i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* @image_render_landscape, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)** %rproc, align 8, !tbaa !1
  %90 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %matrix = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %90, i32 0, i32 21
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %matrix, i32 0, i32 1
  %91 = load float, float* %xy, align 4, !tbaa !50
  %conv121 = fpext float %91 to double
  %add122 = fadd double %conv121, 1.953125e-03
  %mul123 = fmul double %add122, 2.560000e+02
  %conv124 = fptosi double %mul123 to i32
  %92 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dxy = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %92, i32 0, i32 47
  store i32 %conv124, i32* %dxy, align 4, !tbaa !51
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.125

cleanup.125:                                      ; preds = %do.end.120, %if.then.112, %if.then.96
  %93 = bitcast i64* %line_size69 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #1
  %94 = bitcast i64* %dev_width58 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  %cleanup.dest.127 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.127, label %cleanup.210 [
    i32 2, label %sw.epilog
  ]

sw.default:                                       ; preds = %if.end
  store i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* null, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.210

sw.epilog:                                        ; preds = %cleanup.125, %cleanup.55
  %95 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %matrix128 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %95, i32 0, i32 21
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %matrix128, i32 0, i32 0
  %96 = load float, float* %xx, align 4, !tbaa !52
  %conv129 = fpext float %96 to double
  %add130 = fadd double %conv129, 1.953125e-03
  %mul131 = fmul double %add130, 2.560000e+02
  %conv132 = fptosi double %mul131 to i32
  %97 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dxx = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %97, i32 0, i32 46
  store i32 %conv132, i32* %dxx, align 4, !tbaa !53
  %98 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %unpack = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %98, i32 0, i32 28
  store i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)* @sample_unpack_copy, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)** %unpack, align 8, !tbaa !54
  %99 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %unpack_bps = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %99, i32 0, i32 12
  store i8 8, i8* %unpack_bps, align 1, !tbaa !55
  %100 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %use_mask_color = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %100, i32 0, i32 17
  %101 = load i8, i8* %use_mask_color, align 1, !tbaa !56
  %tobool133 = icmp ne i8 %101, 0
  br i1 %tobool133, label %if.then.134, label %if.end.209

if.then.134:                                      ; preds = %sw.epilog
  %102 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %masked = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %102, i32 0, i32 19
  store i8 1, i8* %masked, align 1, !tbaa !57
  %103 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %mask_color = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %103, i32 0, i32 16
  %values = getelementptr inbounds %struct.mc_, %struct.mc_* %mask_color, i32 0, i32 0
  %arrayidx = getelementptr inbounds [130 x i32], [130 x i32]* %values, i32 0, i64 0
  %104 = load i32, i32* %arrayidx, align 4, !tbaa !29
  %cmp135 = icmp eq i32 %104, 1
  br i1 %cmp135, label %if.then.137, label %if.else

if.then.137:                                      ; preds = %if.then.134
  %105 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %105, i32 0, i32 64
  %arrayidx138 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map, i32 0, i64 0
  %inverted = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx138, i32 0, i32 4
  %106 = load i32, i32* %inverted, align 4, !tbaa !58
  %tobool139 = icmp ne i32 %106, 0
  br i1 %tobool139, label %cond.true.140, label %cond.false.141

cond.true.140:                                    ; preds = %if.then.137
  %107 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icolor0 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %107, i32 0, i32 68
  %108 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %icolor0, align 8, !tbaa !60
  br label %cond.end.142

cond.false.141:                                   ; preds = %if.then.137
  %109 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icolor1 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %109, i32 0, i32 69
  %110 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %icolor1, align 8, !tbaa !61
  br label %cond.end.142

cond.end.142:                                     ; preds = %cond.false.141, %cond.true.140
  %cond143 = phi %struct.gx_device_color_s* [ %108, %cond.true.140 ], [ %110, %cond.false.141 ]
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %cond143, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  store i64 -1, i64* %pure, align 8, !tbaa !36
  %111 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map144 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %111, i32 0, i32 64
  %arrayidx145 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map144, i32 0, i64 0
  %inverted146 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx145, i32 0, i32 4
  %112 = load i32, i32* %inverted146, align 4, !tbaa !58
  %tobool147 = icmp ne i32 %112, 0
  br i1 %tobool147, label %cond.true.148, label %cond.false.150

cond.true.148:                                    ; preds = %cond.end.142
  %113 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icolor0149 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %113, i32 0, i32 68
  %114 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %icolor0149, align 8, !tbaa !60
  br label %cond.end.152

cond.false.150:                                   ; preds = %cond.end.142
  %115 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icolor1151 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %115, i32 0, i32 69
  %116 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %icolor1151, align 8, !tbaa !61
  br label %cond.end.152

cond.end.152:                                     ; preds = %cond.false.150, %cond.true.148
  %cond153 = phi %struct.gx_device_color_s* [ %114, %cond.true.148 ], [ %116, %cond.false.150 ]
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %cond153, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_pure, %struct.gx_device_color_type_s** %type, align 8, !tbaa !62
  %117 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map154 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %117, i32 0, i32 64
  %arrayidx155 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map154, i32 0, i64 0
  %inverted156 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx155, i32 0, i32 4
  %118 = load i32, i32* %inverted156, align 4, !tbaa !58
  %tobool157 = icmp ne i32 %118, 0
  br i1 %tobool157, label %cond.true.158, label %cond.false.160

cond.true.158:                                    ; preds = %cond.end.152
  %119 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icolor0159 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %119, i32 0, i32 68
  %120 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %icolor0159, align 8, !tbaa !60
  br label %cond.end.162

cond.false.160:                                   ; preds = %cond.end.152
  %121 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icolor1161 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %121, i32 0, i32 69
  %122 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %icolor1161, align 8, !tbaa !61
  br label %cond.end.162

cond.end.162:                                     ; preds = %cond.false.160, %cond.true.158
  %cond163 = phi %struct.gx_device_color_s* [ %120, %cond.true.158 ], [ %122, %cond.false.160 ]
  %ccolor_valid = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %cond163, i32 0, i32 3
  store i32 0, i32* %ccolor_valid, align 4, !tbaa !63
  br label %if.end.206

if.else:                                          ; preds = %if.then.134
  %123 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %mask_color164 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %123, i32 0, i32 16
  %values165 = getelementptr inbounds %struct.mc_, %struct.mc_* %mask_color164, i32 0, i32 0
  %arrayidx166 = getelementptr inbounds [130 x i32], [130 x i32]* %values165, i32 0, i64 1
  %124 = load i32, i32* %arrayidx166, align 4, !tbaa !29
  %cmp167 = icmp eq i32 %124, 0
  br i1 %cmp167, label %if.then.169, label %if.else.204

if.then.169:                                      ; preds = %if.else
  %125 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map170 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %125, i32 0, i32 64
  %arrayidx171 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map170, i32 0, i64 0
  %inverted172 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx171, i32 0, i32 4
  %126 = load i32, i32* %inverted172, align 4, !tbaa !58
  %tobool173 = icmp ne i32 %126, 0
  br i1 %tobool173, label %cond.true.174, label %cond.false.176

cond.true.174:                                    ; preds = %if.then.169
  %127 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icolor1175 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %127, i32 0, i32 69
  %128 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %icolor1175, align 8, !tbaa !61
  br label %cond.end.178

cond.false.176:                                   ; preds = %if.then.169
  %129 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icolor0177 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %129, i32 0, i32 68
  %130 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %icolor0177, align 8, !tbaa !60
  br label %cond.end.178

cond.end.178:                                     ; preds = %cond.false.176, %cond.true.174
  %cond179 = phi %struct.gx_device_color_s* [ %128, %cond.true.174 ], [ %130, %cond.false.176 ]
  %colors180 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %cond179, i32 0, i32 1
  %pure181 = bitcast %union._c* %colors180 to i64*
  store i64 -1, i64* %pure181, align 8, !tbaa !36
  %131 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map182 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %131, i32 0, i32 64
  %arrayidx183 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map182, i32 0, i64 0
  %inverted184 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx183, i32 0, i32 4
  %132 = load i32, i32* %inverted184, align 4, !tbaa !58
  %tobool185 = icmp ne i32 %132, 0
  br i1 %tobool185, label %cond.true.186, label %cond.false.188

cond.true.186:                                    ; preds = %cond.end.178
  %133 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icolor1187 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %133, i32 0, i32 69
  %134 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %icolor1187, align 8, !tbaa !61
  br label %cond.end.190

cond.false.188:                                   ; preds = %cond.end.178
  %135 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icolor0189 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %135, i32 0, i32 68
  %136 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %icolor0189, align 8, !tbaa !60
  br label %cond.end.190

cond.end.190:                                     ; preds = %cond.false.188, %cond.true.186
  %cond191 = phi %struct.gx_device_color_s* [ %134, %cond.true.186 ], [ %136, %cond.false.188 ]
  %type192 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %cond191, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_pure, %struct.gx_device_color_type_s** %type192, align 8, !tbaa !62
  %137 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map193 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %137, i32 0, i32 64
  %arrayidx194 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map193, i32 0, i64 0
  %inverted195 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx194, i32 0, i32 4
  %138 = load i32, i32* %inverted195, align 4, !tbaa !58
  %tobool196 = icmp ne i32 %138, 0
  br i1 %tobool196, label %cond.true.197, label %cond.false.199

cond.true.197:                                    ; preds = %cond.end.190
  %139 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icolor1198 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %139, i32 0, i32 69
  %140 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %icolor1198, align 8, !tbaa !61
  br label %cond.end.201

cond.false.199:                                   ; preds = %cond.end.190
  %141 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icolor0200 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %141, i32 0, i32 68
  %142 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %icolor0200, align 8, !tbaa !60
  br label %cond.end.201

cond.end.201:                                     ; preds = %cond.false.199, %cond.true.197
  %cond202 = phi %struct.gx_device_color_s* [ %140, %cond.true.197 ], [ %142, %cond.false.199 ]
  %ccolor_valid203 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %cond202, i32 0, i32 3
  store i32 0, i32* %ccolor_valid203, align 4, !tbaa !63
  br label %if.end.205

if.else.204:                                      ; preds = %if.else
  store i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* @image_render_skip, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)** %rproc, align 8, !tbaa !1
  br label %if.end.205

if.end.205:                                       ; preds = %if.else.204, %cond.end.201
  br label %if.end.206

if.end.206:                                       ; preds = %if.end.205, %cond.end.162
  %143 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map207 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %143, i32 0, i32 64
  %arrayidx208 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map207, i32 0, i64 0
  %decoding = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx208, i32 0, i32 3
  store i32 0, i32* %decoding, align 4, !tbaa !64
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.206, %sw.epilog
  %144 = load i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)*, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)** %rproc, align 8, !tbaa !1
  store i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* %144, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.210

cleanup.210:                                      ; preds = %if.end.209, %sw.default, %cleanup.125, %cleanup.55, %if.then
  %145 = bitcast i32* %oy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #1
  %146 = bitcast i32* %ox to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #1
  %147 = bitcast i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)** %rproc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #1
  %148 = load i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)*, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)** %retval
  ret i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* %148
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @gx_default_end_image(%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @image_render_simple(%struct.gx_image_enum_s* %penum, i8* %buffer, i32 %data_x, i32 %w, i32 %h, %struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gx_image_enum_s*, align 8
  %buffer.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %copy_mono = alloca i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, align 8
  %dxx = alloca i32, align 4
  %line = alloca i8*, align 8
  %line_width = alloca i32, align 4
  %line_size = alloca i32, align 4
  %line_x = alloca i32, align 4
  %xcur = alloca i32, align 4
  %ix = alloca i32, align 4
  %ixr = alloca i32, align 4
  %iy = alloca i32, align 4
  %ih = alloca i32, align 4
  %pdc0 = alloca %struct.gx_device_color_s*, align 8
  %pdc1 = alloca %struct.gx_device_color_s*, align 8
  %dy = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %line_ix = alloca i32, align 4
  %ib_left = alloca i32, align 4
  %ib_right = alloca i32, align 4
  %scan_line = alloca i8*, align 8
  %save_left = alloca i8, align 1
  %save_right = alloca i8, align 1
  %mask = alloca i8, align 1
  %code154 = alloca i32, align 4
  %code187 = alloca i32, align 4
  store %struct.gx_image_enum_s* %penum, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !29
  store i32 %w, i32* %w.addr, align 4, !tbaa !29
  store i32 %h, i32* %h.addr, align 4, !tbaa !29
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 42
  %copy_mono1 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 9
  %2 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono1, align 8, !tbaa !65
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* %2, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono, align 8, !tbaa !1
  %3 = bitcast i32* %dxx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dxx2 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %4, i32 0, i32 46
  %5 = load i32, i32* %dxx2, align 4, !tbaa !53
  store i32 %5, i32* %dxx, align 4, !tbaa !29
  %6 = bitcast i8** %line to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %line_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %line_x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %xcur to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %11, i32 0, i32 55
  %pixel0 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda, i32 0, i32 2
  %x = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pixel0, i32 0, i32 0
  %state = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x, i32 0, i32 0
  %Q = getelementptr inbounds %struct._a, %struct._a* %state, i32 0, i32 0
  %12 = load i32, i32* %Q, align 4, !tbaa !5
  store i32 %12, i32* %xcur, align 4, !tbaa !29
  %13 = bitcast i32* %ix to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load i32, i32* %xcur, align 4, !tbaa !29
  %conv = sext i32 %14 to i64
  %add = add nsw i64 %conv, 127
  %shr = ashr i64 %add, 8
  %conv3 = trunc i64 %shr to i32
  store i32 %conv3, i32* %ix, align 4, !tbaa !29
  %15 = bitcast i32* %ixr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %iy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %yci = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %17, i32 0, i32 60
  %18 = load i32, i32* %yci, align 4, !tbaa !77
  store i32 %18, i32* %iy, align 4, !tbaa !29
  %19 = bitcast i32* %ih to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %hci = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %20, i32 0, i32 61
  %21 = load i32, i32* %hci, align 4, !tbaa !78
  store i32 %21, i32* %ih, align 4, !tbaa !29
  %22 = bitcast %struct.gx_device_color_s** %pdc0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  %23 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icolor0 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %23, i32 0, i32 68
  %24 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %icolor0, align 8, !tbaa !60
  store %struct.gx_device_color_s* %24, %struct.gx_device_color_s** %pdc0, align 8, !tbaa !1
  %25 = bitcast %struct.gx_device_color_s** %pdc1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  %26 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icolor1 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %26, i32 0, i32 69
  %27 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %icolor1, align 8, !tbaa !61
  store %struct.gx_device_color_s* %27, %struct.gx_device_color_s** %pdc1, align 8, !tbaa !1
  %28 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  %29 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  %30 = load i32, i32* %h.addr, align 4, !tbaa !29
  %cmp = icmp eq i32 %30, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.200

if.end:                                           ; preds = %entry
  %31 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc0, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %31, i32 0, i32 0
  %32 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !62
  %cmp5 = icmp eq %struct.gx_device_color_type_s* %32, @gx_dc_type_data_pure
  br i1 %cmp5, label %land.lhs.true, label %land.lhs.true.9

land.lhs.true:                                    ; preds = %if.end
  %33 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc0, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %33, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  %34 = load i64, i64* %pure, align 8, !tbaa !36
  %cmp7 = icmp eq i64 %34, -1
  br i1 %cmp7, label %lor.lhs.false, label %land.lhs.true.9

land.lhs.true.9:                                  ; preds = %land.lhs.true, %if.end
  %35 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc0, align 8, !tbaa !1
  %type10 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %35, i32 0, i32 0
  %36 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type10, align 8, !tbaa !62
  %load = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %36, i32 0, i32 4
  %37 = load i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %load, align 8, !tbaa !79
  %38 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc0, align 8, !tbaa !1
  %39 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pis = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %39, i32 0, i32 30
  %40 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !81
  %41 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 %37(%struct.gx_device_color_s* %38, %struct.gs_imager_state_s* %40, %struct.gx_device_s* %41, i32 0) #5
  store i32 %call, i32* %code, align 4, !tbaa !29
  %cmp11 = icmp slt i32 %call, 0
  br i1 %cmp11, label %if.then.28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.9, %land.lhs.true
  %42 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc1, align 8, !tbaa !1
  %type13 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %42, i32 0, i32 0
  %43 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type13, align 8, !tbaa !62
  %cmp14 = icmp eq %struct.gx_device_color_type_s* %43, @gx_dc_type_data_pure
  br i1 %cmp14, label %land.lhs.true.16, label %land.lhs.true.21

land.lhs.true.16:                                 ; preds = %lor.lhs.false
  %44 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc1, align 8, !tbaa !1
  %colors17 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %44, i32 0, i32 1
  %pure18 = bitcast %union._c* %colors17 to i64*
  %45 = load i64, i64* %pure18, align 8, !tbaa !36
  %cmp19 = icmp eq i64 %45, -1
  br i1 %cmp19, label %if.end.29, label %land.lhs.true.21

land.lhs.true.21:                                 ; preds = %land.lhs.true.16, %lor.lhs.false
  %46 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc1, align 8, !tbaa !1
  %type22 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %46, i32 0, i32 0
  %47 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type22, align 8, !tbaa !62
  %load23 = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %47, i32 0, i32 4
  %48 = load i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %load23, align 8, !tbaa !79
  %49 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc1, align 8, !tbaa !1
  %50 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pis24 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %50, i32 0, i32 30
  %51 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis24, align 8, !tbaa !81
  %52 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call25 = call i32 %48(%struct.gx_device_color_s* %49, %struct.gs_imager_state_s* %51, %struct.gx_device_s* %52, i32 0) #5
  store i32 %call25, i32* %code, align 4, !tbaa !29
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %land.lhs.true.21, %land.lhs.true.9
  %53 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %53, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.200

if.end.29:                                        ; preds = %land.lhs.true.21, %land.lhs.true.16
  %54 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line30 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %54, i32 0, i32 34
  %55 = load i8*, i8** %line30, align 8, !tbaa !45
  %cmp31 = icmp eq i8* %55, null
  br i1 %cmp31, label %if.then.33, label %if.else

if.then.33:                                       ; preds = %if.end.29
  %56 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  store i8* %56, i8** %line, align 8, !tbaa !1
  %57 = load i32, i32* %w.addr, align 4, !tbaa !29
  %add34 = add i32 %57, 7
  %shr35 = lshr i32 %add34, 3
  store i32 %shr35, i32* %line_size, align 4, !tbaa !29
  %58 = load i32, i32* %w.addr, align 4, !tbaa !29
  store i32 %58, i32* %line_width, align 4, !tbaa !29
  store i32 0, i32* %line_x, align 4, !tbaa !29
  br label %if.end.177

if.else:                                          ; preds = %if.end.29
  %59 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono, align 8, !tbaa !1
  %60 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** getelementptr inbounds (%struct.gx_device_memory_s, %struct.gx_device_memory_s* @mem_mono_device, i32 0, i32 42, i32 9), align 8, !tbaa !82
  %cmp36 = icmp eq i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* %59, %60
  br i1 %cmp36, label %land.lhs.true.38, label %if.else.168

land.lhs.true.38:                                 ; preds = %if.else
  %61 = load i32, i32* %dxx, align 4, !tbaa !29
  %cmp39 = icmp sgt i32 %61, 0
  br i1 %cmp39, label %land.lhs.true.41, label %if.else.168

land.lhs.true.41:                                 ; preds = %land.lhs.true.38
  %62 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc1, align 8, !tbaa !1
  %type42 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %62, i32 0, i32 0
  %63 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type42, align 8, !tbaa !62
  %cmp43 = icmp eq %struct.gx_device_color_type_s* %63, @gx_dc_type_data_pure
  br i1 %cmp43, label %land.lhs.true.45, label %if.else.168

land.lhs.true.45:                                 ; preds = %land.lhs.true.41
  %64 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc0, align 8, !tbaa !1
  %type46 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %64, i32 0, i32 0
  %65 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type46, align 8, !tbaa !62
  %cmp47 = icmp eq %struct.gx_device_color_type_s* %65, @gx_dc_type_data_pure
  br i1 %cmp47, label %land.lhs.true.49, label %if.else.168

land.lhs.true.49:                                 ; preds = %land.lhs.true.45
  %66 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc0, align 8, !tbaa !1
  %colors50 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %66, i32 0, i32 1
  %pure51 = bitcast %union._c* %colors50 to i64*
  %67 = load i64, i64* %pure51, align 8, !tbaa !36
  %68 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc1, align 8, !tbaa !1
  %colors52 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %68, i32 0, i32 1
  %pure53 = bitcast %union._c* %colors52 to i64*
  %69 = load i64, i64* %pure53, align 8, !tbaa !36
  %xor = xor i64 %67, %69
  %cmp54 = icmp eq i64 %xor, 1
  br i1 %cmp54, label %land.lhs.true.56, label %if.else.168

land.lhs.true.56:                                 ; preds = %land.lhs.true.49
  %70 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %clip_image = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %70, i32 0, i32 39
  %71 = load i8, i8* %clip_image, align 1, !tbaa !91
  %tobool = icmp ne i8 %71, 0
  br i1 %tobool, label %if.else.168, label %land.lhs.true.57

land.lhs.true.57:                                 ; preds = %land.lhs.true.56
  %72 = load i32, i32* %ix, align 4, !tbaa !29
  %cmp58 = icmp sge i32 %72, 0
  br i1 %cmp58, label %land.lhs.true.60, label %if.else.168

land.lhs.true.60:                                 ; preds = %land.lhs.true.57
  %73 = load i32, i32* %xcur, align 4, !tbaa !29
  %74 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %x_extent = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %74, i32 0, i32 26
  %x61 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %x_extent, i32 0, i32 0
  %75 = load i32, i32* %x61, align 4, !tbaa !35
  %add62 = add nsw i32 %73, %75
  %conv63 = sext i32 %add62 to i64
  %add64 = add nsw i64 %conv63, 127
  %shr65 = ashr i64 %add64, 8
  %conv66 = trunc i64 %shr65 to i32
  %sub = sub nsw i32 %conv66, 1
  store i32 %sub, i32* %ixr, align 4, !tbaa !29
  %76 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %76, i32 0, i32 13
  %77 = load i32, i32* %width, align 4, !tbaa !92
  %cmp67 = icmp slt i32 %sub, %77
  br i1 %cmp67, label %land.lhs.true.69, label %if.else.168

land.lhs.true.69:                                 ; preds = %land.lhs.true.60
  %78 = load i32, i32* %iy, align 4, !tbaa !29
  %cmp70 = icmp sge i32 %78, 0
  br i1 %cmp70, label %land.lhs.true.72, label %if.else.168

land.lhs.true.72:                                 ; preds = %land.lhs.true.69
  %79 = load i32, i32* %iy, align 4, !tbaa !29
  %80 = load i32, i32* %ih, align 4, !tbaa !29
  %add73 = add nsw i32 %79, %80
  %81 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %81, i32 0, i32 14
  %82 = load i32, i32* %height, align 4, !tbaa !93
  %cmp74 = icmp sle i32 %add73, %82
  br i1 %cmp74, label %if.then.76, label %if.else.168

if.then.76:                                       ; preds = %land.lhs.true.72
  %83 = bitcast i32* %line_ix to i8*
  call void @llvm.lifetime.start(i64 4, i8* %83) #1
  %84 = bitcast i32* %ib_left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %84) #1
  %85 = load i32, i32* %ix, align 4, !tbaa !29
  %shr77 = ashr i32 %85, 3
  store i32 %shr77, i32* %ib_left, align 4, !tbaa !29
  %86 = bitcast i32* %ib_right to i8*
  call void @llvm.lifetime.start(i64 4, i8* %86) #1
  %87 = load i32, i32* %ixr, align 4, !tbaa !29
  %shr78 = ashr i32 %87, 3
  store i32 %shr78, i32* %ib_right, align 4, !tbaa !29
  %88 = bitcast i8** %scan_line to i8*
  call void @llvm.lifetime.start(i64 8, i8* %88) #1
  %89 = load i32, i32* %iy, align 4, !tbaa !29
  %idxprom = sext i32 %89 to i64
  %90 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %91 = bitcast %struct.gx_device_s* %90 to %struct.gx_device_memory_s*
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %91, i32 0, i32 52
  %92 = load i8**, i8*** %line_ptrs, align 8, !tbaa !94
  %arrayidx = getelementptr inbounds i8*, i8** %92, i64 %idxprom
  %93 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  store i8* %93, i8** %scan_line, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %save_left) #1
  call void @llvm.lifetime.start(i64 1, i8* %save_right) #1
  call void @llvm.lifetime.start(i64 1, i8* %mask) #1
  %94 = load i32, i32* %ix, align 4, !tbaa !29
  %and = and i32 %94, 63
  store i32 %and, i32* %line_x, align 4, !tbaa !29
  %95 = load i32, i32* %ix, align 4, !tbaa !29
  %96 = load i32, i32* %line_x, align 4, !tbaa !29
  %sub79 = sub nsw i32 %95, %96
  store i32 %sub79, i32* %line_ix, align 4, !tbaa !29
  %97 = load i32, i32* %ixr, align 4, !tbaa !29
  %shr80 = ashr i32 %97, 3
  %add81 = add nsw i32 %shr80, 1
  %98 = load i32, i32* %line_ix, align 4, !tbaa !29
  %shr82 = ashr i32 %98, 3
  %sub83 = sub nsw i32 %add81, %shr82
  store i32 %sub83, i32* %line_size, align 4, !tbaa !29
  %99 = load i32, i32* %ixr, align 4, !tbaa !29
  %add84 = add nsw i32 %99, 1
  %100 = load i32, i32* %ix, align 4, !tbaa !29
  %sub85 = sub nsw i32 %add84, %100
  store i32 %sub85, i32* %line_width, align 4, !tbaa !29
  %101 = load i32, i32* %ib_left, align 4, !tbaa !29
  %idxprom86 = sext i32 %101 to i64
  %102 = load i8*, i8** %scan_line, align 8, !tbaa !1
  %arrayidx87 = getelementptr inbounds i8, i8* %102, i64 %idxprom86
  %103 = load i8, i8* %arrayidx87, align 1, !tbaa !95
  store i8 %103, i8* %save_left, align 1, !tbaa !95
  %104 = load i32, i32* %ib_right, align 4, !tbaa !29
  %idxprom88 = sext i32 %104 to i64
  %105 = load i8*, i8** %scan_line, align 8, !tbaa !1
  %arrayidx89 = getelementptr inbounds i8, i8* %105, i64 %idxprom88
  %106 = load i8, i8* %arrayidx89, align 1, !tbaa !95
  store i8 %106, i8* %save_right, align 1, !tbaa !95
  %107 = load i8*, i8** %scan_line, align 8, !tbaa !1
  %108 = load i32, i32* %line_ix, align 4, !tbaa !29
  %shr90 = ashr i32 %108, 3
  %idx.ext = sext i32 %shr90 to i64
  %add.ptr = getelementptr inbounds i8, i8* %107, i64 %idx.ext
  %109 = load i32, i32* %line_x, align 4, !tbaa !29
  %110 = load i32, i32* %line_size, align 4, !tbaa !29
  %111 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %112 = load i32, i32* %data_x.addr, align 4, !tbaa !29
  %113 = load i32, i32* %w.addr, align 4, !tbaa !29
  %114 = load i32, i32* %xcur, align 4, !tbaa !29
  %115 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %x_extent91 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %115, i32 0, i32 26
  %x92 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %x_extent91, i32 0, i32 0
  %116 = load i32, i32* %x92, align 4, !tbaa !35
  %117 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc0, align 8, !tbaa !1
  %colors93 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %117, i32 0, i32 1
  %pure94 = bitcast %union._c* %colors93 to i64*
  %118 = load i64, i64* %pure94, align 8, !tbaa !36
  %cmp95 = icmp eq i64 %118, 0
  %conv96 = zext i1 %cmp95 to i32
  %119 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %119, i32 0, i32 64
  %arrayidx97 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map, i32 0, i64 0
  %table = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx97, i32 0, i32 0
  %lookup4x1to32 = bitcast %union.sample_lookup_s* %table to [16 x i32]*
  %arrayidx98 = getelementptr inbounds [16 x i32], [16 x i32]* %lookup4x1to32, i32 0, i64 0
  %120 = load i32, i32* %arrayidx98, align 4, !tbaa !29
  %cmp99 = icmp eq i32 %120, 0
  %conv100 = zext i1 %cmp99 to i32
  %cmp101 = icmp ne i32 %conv96, %conv100
  %cond = select i1 %cmp101, i32 255, i32 0
  %conv103 = trunc i32 %cond to i8
  call void @image_simple_expand(i8* %add.ptr, i32 %109, i32 %110, i8* %111, i32 %112, i32 %113, i32 %114, i32 %116, i8 zeroext %conv103) #5
  %121 = load i32, i32* %ix, align 4, !tbaa !29
  %and104 = and i32 %121, 7
  %tobool105 = icmp ne i32 %and104, 0
  br i1 %tobool105, label %if.then.106, label %if.end.122

if.then.106:                                      ; preds = %if.then.76
  %122 = load i32, i32* %ix, align 4, !tbaa !29
  %and107 = and i32 %122, 7
  %shr108 = ashr i32 65280, %and107
  %conv109 = trunc i32 %shr108 to i8
  store i8 %conv109, i8* %mask, align 1, !tbaa !95
  %123 = load i8, i8* %save_left, align 1, !tbaa !95
  %conv110 = zext i8 %123 to i32
  %124 = load i8, i8* %mask, align 1, !tbaa !95
  %conv111 = zext i8 %124 to i32
  %and112 = and i32 %conv110, %conv111
  %125 = load i32, i32* %ib_left, align 4, !tbaa !29
  %idxprom113 = sext i32 %125 to i64
  %126 = load i8*, i8** %scan_line, align 8, !tbaa !1
  %arrayidx114 = getelementptr inbounds i8, i8* %126, i64 %idxprom113
  %127 = load i8, i8* %arrayidx114, align 1, !tbaa !95
  %conv115 = zext i8 %127 to i32
  %128 = load i8, i8* %mask, align 1, !tbaa !95
  %conv116 = zext i8 %128 to i32
  %neg = xor i32 %conv116, -1
  %and117 = and i32 %conv115, %neg
  %add118 = add nsw i32 %and112, %and117
  %conv119 = trunc i32 %add118 to i8
  %129 = load i32, i32* %ib_left, align 4, !tbaa !29
  %idxprom120 = sext i32 %129 to i64
  %130 = load i8*, i8** %scan_line, align 8, !tbaa !1
  %arrayidx121 = getelementptr inbounds i8, i8* %130, i64 %idxprom120
  store i8 %conv119, i8* %arrayidx121, align 1, !tbaa !95
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.106, %if.then.76
  %131 = load i32, i32* %ixr, align 4, !tbaa !29
  %add123 = add nsw i32 %131, 1
  %and124 = and i32 %add123, 7
  %tobool125 = icmp ne i32 %and124, 0
  br i1 %tobool125, label %if.then.126, label %if.end.144

if.then.126:                                      ; preds = %if.end.122
  %132 = load i32, i32* %ixr, align 4, !tbaa !29
  %add127 = add nsw i32 %132, 1
  %and128 = and i32 %add127, 7
  %shr129 = ashr i32 65280, %and128
  %conv130 = trunc i32 %shr129 to i8
  store i8 %conv130, i8* %mask, align 1, !tbaa !95
  %133 = load i32, i32* %ib_right, align 4, !tbaa !29
  %idxprom131 = sext i32 %133 to i64
  %134 = load i8*, i8** %scan_line, align 8, !tbaa !1
  %arrayidx132 = getelementptr inbounds i8, i8* %134, i64 %idxprom131
  %135 = load i8, i8* %arrayidx132, align 1, !tbaa !95
  %conv133 = zext i8 %135 to i32
  %136 = load i8, i8* %mask, align 1, !tbaa !95
  %conv134 = zext i8 %136 to i32
  %and135 = and i32 %conv133, %conv134
  %137 = load i8, i8* %save_right, align 1, !tbaa !95
  %conv136 = zext i8 %137 to i32
  %138 = load i8, i8* %mask, align 1, !tbaa !95
  %conv137 = zext i8 %138 to i32
  %neg138 = xor i32 %conv137, -1
  %and139 = and i32 %conv136, %neg138
  %add140 = add nsw i32 %and135, %and139
  %conv141 = trunc i32 %add140 to i8
  %139 = load i32, i32* %ib_right, align 4, !tbaa !29
  %idxprom142 = sext i32 %139 to i64
  %140 = load i8*, i8** %scan_line, align 8, !tbaa !1
  %arrayidx143 = getelementptr inbounds i8, i8* %140, i64 %idxprom142
  store i8 %conv141, i8* %arrayidx143, align 1, !tbaa !95
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.126, %if.end.122
  %141 = load i32, i32* %ih, align 4, !tbaa !29
  %cmp145 = icmp sle i32 %141, 1
  br i1 %cmp145, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %if.end.144
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.161

if.end.148:                                       ; preds = %if.end.144
  %142 = load i8*, i8** %scan_line, align 8, !tbaa !1
  %143 = load i32, i32* %line_ix, align 4, !tbaa !29
  %shr149 = ashr i32 %143, 3
  %idx.ext150 = sext i32 %shr149 to i64
  %add.ptr151 = getelementptr inbounds i8, i8* %142, i64 %idx.ext150
  store i8* %add.ptr151, i8** %line, align 8, !tbaa !1
  store i32 1, i32* %dy, align 4, !tbaa !29
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.148
  %144 = load i32, i32* %dy, align 4, !tbaa !29
  %145 = load i32, i32* %ih, align 4, !tbaa !29
  %cmp152 = icmp slt i32 %144, %145
  br i1 %cmp152, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %146 = bitcast i32* %code154 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %146) #1
  %147 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono, align 8, !tbaa !1
  %148 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %149 = load i8*, i8** %line, align 8, !tbaa !1
  %150 = load i32, i32* %line_x, align 4, !tbaa !29
  %151 = load i32, i32* %line_size, align 4, !tbaa !29
  %152 = load i32, i32* %ix, align 4, !tbaa !29
  %153 = load i32, i32* %iy, align 4, !tbaa !29
  %154 = load i32, i32* %dy, align 4, !tbaa !29
  %add155 = add nsw i32 %153, %154
  %155 = load i32, i32* %line_width, align 4, !tbaa !29
  %call156 = call i32 %147(%struct.gx_device_s* %148, i8* %149, i32 %150, i32 %151, i64 0, i32 %152, i32 %add155, i32 %155, i32 1, i64 0, i64 1) #5
  store i32 %call156, i32* %code154, align 4, !tbaa !29
  %156 = load i32, i32* %code154, align 4, !tbaa !29
  %cmp157 = icmp slt i32 %156, 0
  br i1 %cmp157, label %if.then.159, label %if.end.160

if.then.159:                                      ; preds = %for.body
  %157 = load i32, i32* %code154, align 4, !tbaa !29
  store i32 %157, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.160:                                       ; preds = %for.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.160, %if.then.159
  %158 = bitcast i32* %code154 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %158) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.161 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %159 = load i32, i32* %dy, align 4, !tbaa !29
  %inc = add nsw i32 %159, 1
  store i32 %inc, i32* %dy, align 4, !tbaa !29
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.161

cleanup.161:                                      ; preds = %for.end, %cleanup, %if.then.147
  call void @llvm.lifetime.end(i64 1, i8* %mask) #1
  call void @llvm.lifetime.end(i64 1, i8* %save_right) #1
  call void @llvm.lifetime.end(i64 1, i8* %save_left) #1
  %160 = bitcast i8** %scan_line to i8*
  call void @llvm.lifetime.end(i64 8, i8* %160) #1
  %161 = bitcast i32* %ib_right to i8*
  call void @llvm.lifetime.end(i64 4, i8* %161) #1
  %162 = bitcast i32* %ib_left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %162) #1
  %163 = bitcast i32* %line_ix to i8*
  call void @llvm.lifetime.end(i64 4, i8* %163) #1
  br label %cleanup.200

if.else.168:                                      ; preds = %land.lhs.true.72, %land.lhs.true.69, %land.lhs.true.60, %land.lhs.true.57, %land.lhs.true.56, %land.lhs.true.49, %land.lhs.true.45, %land.lhs.true.41, %land.lhs.true.38, %if.else
  %164 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line169 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %164, i32 0, i32 34
  %165 = load i8*, i8** %line169, align 8, !tbaa !45
  store i8* %165, i8** %line, align 8, !tbaa !1
  %166 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line_size170 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %166, i32 0, i32 35
  %167 = load i32, i32* %line_size170, align 4, !tbaa !40
  store i32 %167, i32* %line_size, align 4, !tbaa !29
  %168 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line_width171 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %168, i32 0, i32 36
  %169 = load i32, i32* %line_width171, align 4, !tbaa !39
  store i32 %169, i32* %line_width, align 4, !tbaa !29
  %170 = load i32, i32* %ix, align 4, !tbaa !29
  %and172 = and i32 %170, 63
  store i32 %and172, i32* %line_x, align 4, !tbaa !29
  %171 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line173 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %171, i32 0, i32 34
  %172 = load i8*, i8** %line173, align 8, !tbaa !45
  %173 = load i32, i32* %line_x, align 4, !tbaa !29
  %174 = load i32, i32* %line_size, align 4, !tbaa !29
  %175 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %176 = load i32, i32* %data_x.addr, align 4, !tbaa !29
  %177 = load i32, i32* %w.addr, align 4, !tbaa !29
  %178 = load i32, i32* %xcur, align 4, !tbaa !29
  %179 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %x_extent174 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %179, i32 0, i32 26
  %x175 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %x_extent174, i32 0, i32 0
  %180 = load i32, i32* %x175, align 4, !tbaa !35
  call void @image_simple_expand(i8* %172, i32 %173, i32 %174, i8* %175, i32 %176, i32 %177, i32 %178, i32 %180, i8 zeroext 0) #5
  br label %if.end.176

if.end.176:                                       ; preds = %if.else.168
  br label %if.end.177

if.end.177:                                       ; preds = %if.end.176, %if.then.33
  %181 = load i32, i32* %dxx, align 4, !tbaa !29
  %cmp178 = icmp slt i32 %181, 0
  br i1 %cmp178, label %if.then.180, label %if.end.182

if.then.180:                                      ; preds = %if.end.177
  %182 = load i32, i32* %line_width, align 4, !tbaa !29
  %183 = load i32, i32* %ix, align 4, !tbaa !29
  %sub181 = sub i32 %183, %182
  store i32 %sub181, i32* %ix, align 4, !tbaa !29
  br label %if.end.182

if.end.182:                                       ; preds = %if.then.180, %if.end.177
  store i32 0, i32* %dy, align 4, !tbaa !29
  br label %for.cond.183

for.cond.183:                                     ; preds = %for.inc.197, %if.end.182
  %184 = load i32, i32* %dy, align 4, !tbaa !29
  %185 = load i32, i32* %ih, align 4, !tbaa !29
  %cmp184 = icmp slt i32 %184, %185
  br i1 %cmp184, label %for.body.186, label %for.end.199

for.body.186:                                     ; preds = %for.cond.183
  %186 = bitcast i32* %code187 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %186) #1
  %187 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %188 = load i8*, i8** %line, align 8, !tbaa !1
  %189 = load i32, i32* %line_x, align 4, !tbaa !29
  %190 = load i32, i32* %line_size, align 4, !tbaa !29
  %191 = load i32, i32* %ix, align 4, !tbaa !29
  %192 = load i32, i32* %iy, align 4, !tbaa !29
  %193 = load i32, i32* %dy, align 4, !tbaa !29
  %add188 = add nsw i32 %192, %193
  %194 = load i32, i32* %line_width, align 4, !tbaa !29
  %195 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call189 = call i32 @copy_portrait(%struct.gx_image_enum_s* %187, i8* %188, i32 %189, i32 %190, i32 %191, i32 %add188, i32 %194, i32 1, %struct.gx_device_s* %195) #5
  store i32 %call189, i32* %code187, align 4, !tbaa !29
  %196 = load i32, i32* %code187, align 4, !tbaa !29
  %cmp190 = icmp slt i32 %196, 0
  br i1 %cmp190, label %if.then.192, label %if.end.193

if.then.192:                                      ; preds = %for.body.186
  %197 = load i32, i32* %code187, align 4, !tbaa !29
  store i32 %197, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.194

if.end.193:                                       ; preds = %for.body.186
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.194

cleanup.194:                                      ; preds = %if.end.193, %if.then.192
  %198 = bitcast i32* %code187 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %198) #1
  %cleanup.dest.195 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.195, label %cleanup.200 [
    i32 0, label %cleanup.cont.196
  ]

cleanup.cont.196:                                 ; preds = %cleanup.194
  br label %for.inc.197

for.inc.197:                                      ; preds = %cleanup.cont.196
  %199 = load i32, i32* %dy, align 4, !tbaa !29
  %inc198 = add nsw i32 %199, 1
  store i32 %inc198, i32* %dy, align 4, !tbaa !29
  br label %for.cond.183

for.end.199:                                      ; preds = %for.cond.183
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.200

cleanup.200:                                      ; preds = %for.end.199, %cleanup.194, %cleanup.161, %if.then.28, %if.then
  %200 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %200) #1
  %201 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %201) #1
  %202 = bitcast %struct.gx_device_color_s** %pdc1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %202) #1
  %203 = bitcast %struct.gx_device_color_s** %pdc0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %203) #1
  %204 = bitcast i32* %ih to i8*
  call void @llvm.lifetime.end(i64 4, i8* %204) #1
  %205 = bitcast i32* %iy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %205) #1
  %206 = bitcast i32* %ixr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %206) #1
  %207 = bitcast i32* %ix to i8*
  call void @llvm.lifetime.end(i64 4, i8* %207) #1
  %208 = bitcast i32* %xcur to i8*
  call void @llvm.lifetime.end(i64 4, i8* %208) #1
  %209 = bitcast i32* %line_x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %209) #1
  %210 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %210) #1
  %211 = bitcast i32* %line_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %211) #1
  %212 = bitcast i8** %line to i8*
  call void @llvm.lifetime.end(i64 8, i8* %212) #1
  %213 = bitcast i32* %dxx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %213) #1
  %214 = bitcast i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono to i8*
  call void @llvm.lifetime.end(i64 8, i8* %214) #1
  %215 = load i32, i32* %retval
  ret i32 %215
}

; Function Attrs: nounwind uwtable
define internal i32 @image_render_landscape(%struct.gx_image_enum_s* %penum, i8* %buffer, i32 %data_x, i32 %w, i32 %h, %struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gx_image_enum_s*, align 8
  %buffer.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %line = alloca i8*, align 8
  %raster = alloca i32, align 4
  %ix = alloca i32, align 4
  %iw = alloca i32, align 4
  %xinc = alloca i32, align 4
  %xmod = alloca i32, align 4
  %row = alloca i8*, align 8
  %orig_row = alloca i8*, align 8
  %y_neg = alloca i32, align 4
  %xi = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %code48 = alloca i32, align 4
  %code64 = alloca i32, align 4
  store %struct.gx_image_enum_s* %penum, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !29
  store i32 %w, i32* %w.addr, align 4, !tbaa !29
  store i32 %h, i32* %h.addr, align 4, !tbaa !29
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast i8** %line to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line1 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1, i32 0, i32 34
  %2 = load i8*, i8** %line1, align 8, !tbaa !45
  store i8* %2, i8** %line, align 8, !tbaa !1
  %3 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line_width = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %4, i32 0, i32 36
  %5 = load i32, i32* %line_width, align 4, !tbaa !39
  %add = add i32 %5, 63
  %shr = lshr i32 %add, 6
  %shl = shl i32 %shr, 3
  store i32 %shl, i32* %raster, align 4, !tbaa !29
  %6 = bitcast i32* %ix to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %xci = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %7, i32 0, i32 62
  %8 = load i32, i32* %xci, align 4, !tbaa !96
  store i32 %8, i32* %ix, align 4, !tbaa !29
  %9 = bitcast i32* %iw to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %wci = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %10, i32 0, i32 63
  %11 = load i32, i32* %wci, align 4, !tbaa !97
  store i32 %11, i32* %iw, align 4, !tbaa !29
  %12 = bitcast i32* %xinc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %xmod to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i8** %row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast i8** %orig_row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  store i8* null, i8** %orig_row, align 8, !tbaa !1
  %16 = bitcast i32* %y_neg to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dxy = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %17, i32 0, i32 47
  %18 = load i32, i32* %dxy, align 4, !tbaa !51
  %cmp = icmp slt i32 %18, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %y_neg, align 4, !tbaa !29
  %19 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %matrix = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %19, i32 0, i32 21
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %matrix, i32 0, i32 2
  %20 = load float, float* %yx, align 4, !tbaa !98
  %conv2 = fpext float %20 to double
  %cmp3 = fcmp olt double %conv2, 0.000000e+00
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %21 = load i32, i32* %iw, align 4, !tbaa !29
  %22 = load i32, i32* %ix, align 4, !tbaa !29
  %add5 = add nsw i32 %22, %21
  store i32 %add5, i32* %ix, align 4, !tbaa !29
  %23 = load i32, i32* %iw, align 4, !tbaa !29
  %sub = sub nsw i32 0, %23
  store i32 %sub, i32* %iw, align 4, !tbaa !29
  store i32 -1, i32* %xinc, align 4, !tbaa !29
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 1, i32* %xinc, align 4, !tbaa !29
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %24 = load i32, i32* %ix, align 4, !tbaa !29
  %25 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %xi_next = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %25, i32 0, i32 57
  %26 = load i32, i32* %xi_next, align 4, !tbaa !49
  %cmp6 = icmp ne i32 %24, %26
  br i1 %cmp6, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %27 = load i32, i32* %h.addr, align 4, !tbaa !29
  %cmp8 = icmp eq i32 %27, 0
  br i1 %cmp8, label %if.then.10, label %if.end.27

if.then.10:                                       ; preds = %lor.lhs.false, %if.end
  %28 = bitcast i32* %xi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  %29 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %xi_next11 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %29, i32 0, i32 57
  %30 = load i32, i32* %xi_next11, align 4, !tbaa !49
  store i32 %30, i32* %xi, align 4, !tbaa !29
  %31 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  %32 = load i32, i32* %xinc, align 4, !tbaa !29
  %cmp12 = icmp sgt i32 %32, 0
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.10
  %33 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %34 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line_xy = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %34, i32 0, i32 56
  %35 = load i32, i32* %line_xy, align 4, !tbaa !48
  %36 = load i32, i32* %xi, align 4, !tbaa !29
  %37 = load i32, i32* %y_neg, align 4, !tbaa !29
  %38 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 @copy_landscape(%struct.gx_image_enum_s* %33, i32 %35, i32 %36, i32 %37, %struct.gx_device_s* %38) #5
  br label %cond.end

cond.false:                                       ; preds = %if.then.10
  %39 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %40 = load i32, i32* %xi, align 4, !tbaa !29
  %41 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line_xy14 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %41, i32 0, i32 56
  %42 = load i32, i32* %line_xy14, align 4, !tbaa !48
  %43 = load i32, i32* %y_neg, align 4, !tbaa !29
  %44 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call15 = call i32 @copy_landscape(%struct.gx_image_enum_s* %39, i32 %40, i32 %42, i32 %43, %struct.gx_device_s* %44) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call15, %cond.false ]
  store i32 %cond, i32* %code, align 4, !tbaa !29
  %45 = load i32, i32* %code, align 4, !tbaa !29
  %cmp16 = icmp slt i32 %45, 0
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %cond.end
  %46 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %46, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %cond.end
  %47 = load i32, i32* %ix, align 4, !tbaa !29
  %48 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %xi_next20 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %48, i32 0, i32 57
  store i32 %47, i32* %xi_next20, align 4, !tbaa !49
  %49 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line_xy21 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %49, i32 0, i32 56
  store i32 %47, i32* %line_xy21, align 4, !tbaa !48
  %50 = load i32, i32* %h.addr, align 4, !tbaa !29
  %cmp22 = icmp eq i32 %50, 0
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.19
  %51 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %51, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %if.end.19
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.25, %if.then.24, %if.then.18
  %52 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast i32* %xi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.79 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.27

if.end.27:                                        ; preds = %cleanup.cont, %lor.lhs.false
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.27
  %54 = load i32, i32* %iw, align 4, !tbaa !29
  %cmp28 = icmp ne i32 %54, 0
  br i1 %cmp28, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %55 = load i32, i32* %xinc, align 4, !tbaa !29
  %cmp30 = icmp slt i32 %55, 0
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %for.body
  %56 = load i32, i32* %ix, align 4, !tbaa !29
  %dec = add nsw i32 %56, -1
  store i32 %dec, i32* %ix, align 4, !tbaa !29
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %for.body
  %57 = load i32, i32* %ix, align 4, !tbaa !29
  %and = and i32 %57, 7
  store i32 %and, i32* %xmod, align 4, !tbaa !29
  %58 = load i8*, i8** %line, align 8, !tbaa !1
  %59 = load i32, i32* %xmod, align 4, !tbaa !29
  %60 = load i32, i32* %raster, align 4, !tbaa !29
  %mul = mul i32 %59, %60
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %58, i64 %idx.ext
  store i8* %add.ptr, i8** %row, align 8, !tbaa !1
  %61 = load i8*, i8** %orig_row, align 8, !tbaa !1
  %cmp34 = icmp eq i8* %61, null
  br i1 %cmp34, label %if.then.36, label %if.else.38

if.then.36:                                       ; preds = %if.end.33
  %62 = load i8*, i8** %row, align 8, !tbaa !1
  %63 = load i32, i32* %raster, align 4, !tbaa !29
  %64 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %65 = load i32, i32* %data_x.addr, align 4, !tbaa !29
  %66 = load i32, i32* %w.addr, align 4, !tbaa !29
  %67 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %67, i32 0, i32 55
  %pixel0 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda, i32 0, i32 2
  %y = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pixel0, i32 0, i32 1
  %state = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y, i32 0, i32 0
  %Q = getelementptr inbounds %struct._a, %struct._a* %state, i32 0, i32 0
  %68 = load i32, i32* %Q, align 4, !tbaa !30
  %69 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %x_extent = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %69, i32 0, i32 26
  %y37 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %x_extent, i32 0, i32 1
  %70 = load i32, i32* %y37, align 4, !tbaa !47
  call void @image_simple_expand(i8* %62, i32 0, i32 %63, i8* %64, i32 %65, i32 %66, i32 %68, i32 %70, i8 zeroext 0) #5
  %71 = load i8*, i8** %row, align 8, !tbaa !1
  store i8* %71, i8** %orig_row, align 8, !tbaa !1
  br label %if.end.41

if.else.38:                                       ; preds = %if.end.33
  %72 = load i8*, i8** %row, align 8, !tbaa !1
  %73 = load i8*, i8** %orig_row, align 8, !tbaa !1
  %74 = load i32, i32* %raster, align 4, !tbaa !29
  %conv39 = zext i32 %74 to i64
  %call40 = call i8* @memcpy(i8* %72, i8* %73, i64 %conv39) #6
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.38, %if.then.36
  %75 = load i32, i32* %xinc, align 4, !tbaa !29
  %cmp42 = icmp sgt i32 %75, 0
  br i1 %cmp42, label %if.then.44, label %if.else.60

if.then.44:                                       ; preds = %if.end.41
  %76 = load i32, i32* %ix, align 4, !tbaa !29
  %inc = add nsw i32 %76, 1
  store i32 %inc, i32* %ix, align 4, !tbaa !29
  %77 = load i32, i32* %xmod, align 4, !tbaa !29
  %cmp45 = icmp eq i32 %77, 7
  br i1 %cmp45, label %if.then.47, label %if.end.59

if.then.47:                                       ; preds = %if.then.44
  %78 = bitcast i32* %code48 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %78) #1
  %79 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %80 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line_xy49 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %80, i32 0, i32 56
  %81 = load i32, i32* %line_xy49, align 4, !tbaa !48
  %82 = load i32, i32* %ix, align 4, !tbaa !29
  %83 = load i32, i32* %y_neg, align 4, !tbaa !29
  %84 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call50 = call i32 @copy_landscape(%struct.gx_image_enum_s* %79, i32 %81, i32 %82, i32 %83, %struct.gx_device_s* %84) #5
  store i32 %call50, i32* %code48, align 4, !tbaa !29
  %85 = load i32, i32* %code48, align 4, !tbaa !29
  %cmp51 = icmp slt i32 %85, 0
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.then.47
  %86 = load i32, i32* %code48, align 4, !tbaa !29
  store i32 %86, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.56

if.end.54:                                        ; preds = %if.then.47
  store i8* null, i8** %orig_row, align 8, !tbaa !1
  %87 = load i32, i32* %ix, align 4, !tbaa !29
  %88 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line_xy55 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %88, i32 0, i32 56
  store i32 %87, i32* %line_xy55, align 4, !tbaa !48
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.56

cleanup.56:                                       ; preds = %if.end.54, %if.then.53
  %89 = bitcast i32* %code48 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #1
  %cleanup.dest.57 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.57, label %cleanup.79 [
    i32 0, label %cleanup.cont.58
  ]

cleanup.cont.58:                                  ; preds = %cleanup.56
  br label %if.end.59

if.end.59:                                        ; preds = %cleanup.cont.58, %if.then.44
  br label %if.end.76

if.else.60:                                       ; preds = %if.end.41
  %90 = load i32, i32* %xmod, align 4, !tbaa !29
  %cmp61 = icmp eq i32 %90, 0
  br i1 %cmp61, label %if.then.63, label %if.end.75

if.then.63:                                       ; preds = %if.else.60
  %91 = bitcast i32* %code64 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %91) #1
  %92 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %93 = load i32, i32* %ix, align 4, !tbaa !29
  %94 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line_xy65 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %94, i32 0, i32 56
  %95 = load i32, i32* %line_xy65, align 4, !tbaa !48
  %96 = load i32, i32* %y_neg, align 4, !tbaa !29
  %97 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call66 = call i32 @copy_landscape(%struct.gx_image_enum_s* %92, i32 %93, i32 %95, i32 %96, %struct.gx_device_s* %97) #5
  store i32 %call66, i32* %code64, align 4, !tbaa !29
  %98 = load i32, i32* %code64, align 4, !tbaa !29
  %cmp67 = icmp slt i32 %98, 0
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.then.63
  %99 = load i32, i32* %code64, align 4, !tbaa !29
  store i32 %99, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.72

if.end.70:                                        ; preds = %if.then.63
  store i8* null, i8** %orig_row, align 8, !tbaa !1
  %100 = load i32, i32* %ix, align 4, !tbaa !29
  %101 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line_xy71 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %101, i32 0, i32 56
  store i32 %100, i32* %line_xy71, align 4, !tbaa !48
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.72

cleanup.72:                                       ; preds = %if.end.70, %if.then.69
  %102 = bitcast i32* %code64 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #1
  %cleanup.dest.73 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.73, label %cleanup.79 [
    i32 0, label %cleanup.cont.74
  ]

cleanup.cont.74:                                  ; preds = %cleanup.72
  br label %if.end.75

if.end.75:                                        ; preds = %cleanup.cont.74, %if.else.60
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.end.59
  br label %for.inc

for.inc:                                          ; preds = %if.end.76
  %103 = load i32, i32* %xinc, align 4, !tbaa !29
  %104 = load i32, i32* %iw, align 4, !tbaa !29
  %sub77 = sub nsw i32 %104, %103
  store i32 %sub77, i32* %iw, align 4, !tbaa !29
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %105 = load i32, i32* %ix, align 4, !tbaa !29
  %106 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %xi_next78 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %106, i32 0, i32 57
  store i32 %105, i32* %xi_next78, align 4, !tbaa !49
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.79

cleanup.79:                                       ; preds = %for.end, %cleanup.72, %cleanup.56, %cleanup
  %107 = bitcast i32* %y_neg to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #1
  %108 = bitcast i8** %orig_row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #1
  %109 = bitcast i8** %row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #1
  %110 = bitcast i32* %xmod to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #1
  %111 = bitcast i32* %xinc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #1
  %112 = bitcast i32* %iw to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #1
  %113 = bitcast i32* %ix to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #1
  %114 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #1
  %115 = bitcast i8** %line to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #1
  %116 = load i32, i32* %retval
  ret i32 %116
}

declare i8* @sample_unpack_copy(i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @image_render_skip(%struct.gx_image_enum_s* %penum, i8* %buffer, i32 %data_x, i32 %w, i32 %h, %struct.gx_device_s* %dev) #0 {
entry:
  %penum.addr = alloca %struct.gx_image_enum_s*, align 8
  %buffer.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_image_enum_s* %penum, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !29
  store i32 %w, i32* %w.addr, align 4, !tbaa !29
  store i32 %h, i32* %h.addr, align 4, !tbaa !29
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = load i32, i32* %h.addr, align 4, !tbaa !29
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define internal void @image_simple_expand(i8* %line, i32 %line_x, i32 %raster, i8* %buffer, i32 %data_x, i32 %w, i32 %xcur, i32 %x_extent, i8 zeroext %zero) #0 {
entry:
  %line.addr = alloca i8*, align 8
  %line_x.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %xcur.addr = alloca i32, align 4
  %x_extent.addr = alloca i32, align 4
  %zero.addr = alloca i8, align 1
  %dbitx = alloca i32, align 4
  %sbit = alloca i8, align 1
  %sbitmask = alloca i8, align 1
  %wx = alloca i32, align 4
  %xl = alloca %struct.gx_dda_fixed_s, align 4
  %dxx4 = alloca %struct._e, align 4
  %dxx8 = alloca %struct._e, align 4
  %dxx16 = alloca %struct._e, align 4
  %dxx24 = alloca %struct._e, align 4
  %dxx32 = alloca %struct._e, align 4
  %psrc = alloca i8*, align 8
  %endp = alloca i8*, align 8
  %endx = alloca i32, align 4
  %endbit = alloca i8, align 1
  %stop = alloca i8*, align 8
  %stopx = alloca i32, align 4
  %stopbit = alloca i8, align 1
  %data = alloca i8, align 1
  %one = alloca i8, align 1
  %xl0 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %stopmask = alloca i8, align 1
  %last = alloca i8, align 1
  %x0 = alloca i32, align 4
  %n = alloca i32, align 4
  %bit = alloca i32, align 4
  %bp = alloca i8*, align 8
  %nb = alloca i32, align 4
  store i8* %line, i8** %line.addr, align 8, !tbaa !1
  store i32 %line_x, i32* %line_x.addr, align 4, !tbaa !29
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !29
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !29
  store i32 %w, i32* %w.addr, align 4, !tbaa !29
  store i32 %xcur, i32* %xcur.addr, align 4, !tbaa !29
  store i32 %x_extent, i32* %x_extent.addr, align 4, !tbaa !29
  store i8 %zero, i8* %zero.addr, align 1, !tbaa !95
  %0 = bitcast i32* %dbitx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %data_x.addr, align 4, !tbaa !29
  %and = and i32 %1, 7
  store i32 %and, i32* %dbitx, align 4, !tbaa !29
  call void @llvm.lifetime.start(i64 1, i8* %sbit) #1
  %2 = load i32, i32* %dbitx, align 4, !tbaa !29
  %shr = ashr i32 128, %2
  %conv = trunc i32 %shr to i8
  store i8 %conv, i8* %sbit, align 1, !tbaa !95
  call void @llvm.lifetime.start(i64 1, i8* %sbitmask) #1
  %3 = load i32, i32* %dbitx, align 4, !tbaa !29
  %shr1 = ashr i32 255, %3
  %conv2 = trunc i32 %shr1 to i8
  store i8 %conv2, i8* %sbitmask, align 1, !tbaa !95
  %4 = bitcast i32* %wx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i32, i32* %dbitx, align 4, !tbaa !29
  %6 = load i32, i32* %w.addr, align 4, !tbaa !29
  %add = add i32 %5, %6
  store i32 %add, i32* %wx, align 4, !tbaa !29
  %7 = bitcast %struct.gx_dda_fixed_s* %xl to i8*
  call void @llvm.lifetime.start(i64 20, i8* %7) #1
  %8 = bitcast %struct._e* %dxx4 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %8) #1
  %9 = bitcast %struct._e* %dxx8 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %9) #1
  %10 = bitcast %struct._e* %dxx16 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %10) #1
  %11 = bitcast %struct._e* %dxx24 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %11) #1
  %12 = bitcast %struct._e* %dxx32 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %12) #1
  %13 = bitcast i8** %psrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %15 = load i32, i32* %data_x.addr, align 4, !tbaa !29
  %shr3 = ashr i32 %15, 3
  %idx.ext = sext i32 %shr3 to i64
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %idx.ext
  store i8* %add.ptr, i8** %psrc, align 8, !tbaa !1
  %16 = bitcast i8** %endp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = load i8*, i8** %psrc, align 8, !tbaa !1
  %18 = load i32, i32* %wx, align 4, !tbaa !29
  %shr4 = lshr i32 %18, 3
  %idx.ext5 = zext i32 %shr4 to i64
  %add.ptr6 = getelementptr inbounds i8, i8* %17, i64 %idx.ext5
  store i8* %add.ptr6, i8** %endp, align 8, !tbaa !1
  %19 = bitcast i32* %endx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = load i32, i32* %wx, align 4, !tbaa !29
  %neg = xor i32 %20, -1
  %and7 = and i32 %neg, 7
  store i32 %and7, i32* %endx, align 4, !tbaa !29
  call void @llvm.lifetime.start(i64 1, i8* %endbit) #1
  %21 = load i32, i32* %endx, align 4, !tbaa !29
  %shl = shl i32 1, %21
  %conv8 = trunc i32 %shl to i8
  store i8 %conv8, i8* %endbit, align 1, !tbaa !95
  %22 = bitcast i8** %stop to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  %23 = load i8*, i8** %endp, align 8, !tbaa !1
  store i8* %23, i8** %stop, align 8, !tbaa !1
  %24 = bitcast i32* %stopx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  call void @llvm.lifetime.start(i64 1, i8* %stopbit) #1
  %25 = load i8, i8* %endbit, align 1, !tbaa !95
  store i8 %25, i8* %stopbit, align 1, !tbaa !95
  call void @llvm.lifetime.start(i64 1, i8* %data) #1
  call void @llvm.lifetime.start(i64 1, i8* %one) #1
  %26 = load i8, i8* %zero.addr, align 1, !tbaa !95
  %conv9 = zext i8 %26 to i32
  %neg10 = xor i32 %conv9, -1
  %conv11 = trunc i32 %neg10 to i8
  store i8 %conv11, i8* %one, align 1, !tbaa !95
  %27 = bitcast i32* %xl0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = load i32, i32* %w.addr, align 4, !tbaa !29
  %cmp = icmp eq i32 %28, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.864

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %29 = load i8, i8* %stopbit, align 1, !tbaa !95
  %conv13 = zext i8 %29 to i32
  %cmp14 = icmp eq i32 %conv13, 128
  br i1 %cmp14, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %do.end
  %30 = load i8*, i8** %stop, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %30, i32 -1
  store i8* %incdec.ptr, i8** %stop, align 8, !tbaa !1
  store i8 1, i8* %stopbit, align 1, !tbaa !95
  br label %if.end.20

if.else:                                          ; preds = %do.end
  %31 = load i8, i8* %stopbit, align 1, !tbaa !95
  %conv17 = zext i8 %31 to i32
  %shl18 = shl i32 %conv17, 1
  %conv19 = trunc i32 %shl18 to i8
  store i8 %conv19, i8* %stopbit, align 1, !tbaa !95
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.16
  call void @llvm.lifetime.start(i64 1, i8* %stopmask) #1
  %32 = load i8, i8* %stopbit, align 1, !tbaa !95
  %conv21 = zext i8 %32 to i32
  %sub = sub nsw i32 0, %conv21
  %shl22 = shl i32 %sub, 1
  %conv23 = trunc i32 %shl22 to i8
  store i8 %conv23, i8* %stopmask, align 1, !tbaa !95
  call void @llvm.lifetime.start(i64 1, i8* %last) #1
  %33 = load i8*, i8** %stop, align 8, !tbaa !1
  %34 = load i8, i8* %33, align 1, !tbaa !95
  store i8 %34, i8* %last, align 1, !tbaa !95
  %35 = load i8*, i8** %stop, align 8, !tbaa !1
  %36 = load i8*, i8** %psrc, align 8, !tbaa !1
  %cmp24 = icmp eq i8* %35, %36
  br i1 %cmp24, label %if.then.26, label %if.end.31

if.then.26:                                       ; preds = %if.end.20
  %37 = load i8, i8* %sbitmask, align 1, !tbaa !95
  %conv27 = zext i8 %37 to i32
  %38 = load i8, i8* %stopmask, align 1, !tbaa !95
  %conv28 = zext i8 %38 to i32
  %and29 = and i32 %conv28, %conv27
  %conv30 = trunc i32 %and29 to i8
  store i8 %conv30, i8* %stopmask, align 1, !tbaa !95
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.26, %if.end.20
  %39 = load i8, i8* %last, align 1, !tbaa !95
  %conv32 = zext i8 %39 to i32
  %40 = load i8, i8* %stopbit, align 1, !tbaa !95
  %conv33 = zext i8 %40 to i32
  %and34 = and i32 %conv32, %conv33
  %tobool = icmp ne i32 %and34, 0
  br i1 %tobool, label %if.then.35, label %if.else.76

if.then.35:                                       ; preds = %if.end.31
  %41 = load i8, i8* %last, align 1, !tbaa !95
  %conv36 = zext i8 %41 to i32
  %neg37 = xor i32 %conv36, -1
  %42 = load i8, i8* %stopmask, align 1, !tbaa !95
  %conv38 = zext i8 %42 to i32
  %and39 = and i32 %neg37, %conv38
  %tobool40 = icmp ne i32 %and39, 0
  br i1 %tobool40, label %if.then.41, label %if.else.46

if.then.41:                                       ; preds = %if.then.35
  %43 = load i8, i8* %stopbit, align 1, !tbaa !95
  %conv42 = zext i8 %43 to i32
  %sub43 = sub nsw i32 %conv42, 1
  %44 = load i8, i8* %last, align 1, !tbaa !95
  %conv44 = zext i8 %44 to i32
  %or = or i32 %conv44, %sub43
  %conv45 = trunc i32 %or to i8
  store i8 %conv45, i8* %last, align 1, !tbaa !95
  br label %if.end.70

if.else.46:                                       ; preds = %if.then.35
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else.46
  %45 = load i8*, i8** %stop, align 8, !tbaa !1
  %46 = load i8*, i8** %psrc, align 8, !tbaa !1
  %cmp47 = icmp ugt i8* %45, %46
  br i1 %cmp47, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %47 = load i8*, i8** %stop, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %47, i64 -1
  %48 = load i8, i8* %arrayidx, align 1, !tbaa !95
  %conv49 = zext i8 %48 to i32
  %cmp50 = icmp eq i32 %conv49, 255
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %49 = phi i1 [ false, %while.cond ], [ %cmp50, %land.rhs ]
  br i1 %49, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %50 = load i8*, i8** %stop, align 8, !tbaa !1
  %incdec.ptr52 = getelementptr inbounds i8, i8* %50, i32 -1
  store i8* %incdec.ptr52, i8** %stop, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %51 = load i8*, i8** %stop, align 8, !tbaa !1
  %52 = load i8*, i8** %psrc, align 8, !tbaa !1
  %cmp53 = icmp eq i8* %51, %52
  br i1 %cmp53, label %if.then.63, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %53 = load i8*, i8** %stop, align 8, !tbaa !1
  %54 = load i8*, i8** %psrc, align 8, !tbaa !1
  %add.ptr55 = getelementptr inbounds i8, i8* %54, i64 1
  %cmp56 = icmp eq i8* %53, %add.ptr55
  br i1 %cmp56, label %land.lhs.true, label %if.end.68

land.lhs.true:                                    ; preds = %lor.lhs.false
  %55 = load i8*, i8** %psrc, align 8, !tbaa !1
  %56 = load i8, i8* %55, align 1, !tbaa !95
  %conv58 = zext i8 %56 to i32
  %neg59 = xor i32 %conv58, -1
  %57 = load i8, i8* %sbitmask, align 1, !tbaa !95
  %conv60 = zext i8 %57 to i32
  %and61 = and i32 %neg59, %conv60
  %tobool62 = icmp ne i32 %and61, 0
  br i1 %tobool62, label %if.end.68, label %if.then.63

if.then.63:                                       ; preds = %land.lhs.true, %while.end
  br label %do.body.64

do.body.64:                                       ; preds = %if.then.63
  br label %do.cond.65

do.cond.65:                                       ; preds = %do.body.64
  br label %do.end.66

do.end.66:                                        ; preds = %do.cond.65
  %58 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %59 = load i32, i32* %line_x.addr, align 4, !tbaa !29
  %60 = load i32, i32* %raster.addr, align 4, !tbaa !29
  %61 = load i8, i8* %one, align 1, !tbaa !95
  %conv67 = zext i8 %61 to i32
  call void @fill_row(i8* %58, i32 %59, i32 %60, i32 %conv67) #5
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.68:                                        ; preds = %land.lhs.true, %lor.lhs.false
  %62 = load i8*, i8** %stop, align 8, !tbaa !1
  %incdec.ptr69 = getelementptr inbounds i8, i8* %62, i32 -1
  store i8* %incdec.ptr69, i8** %stop, align 8, !tbaa !1
  %63 = load i8, i8* %incdec.ptr69, align 1, !tbaa !95
  store i8 %63, i8* %last, align 1, !tbaa !95
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.68, %if.then.41
  %64 = load i8, i8* %last, align 1, !tbaa !95
  %idxprom = zext i8 %64 to i64
  %arrayidx71 = getelementptr inbounds [256 x i8], [256 x i8]* @byte_reverse_bits, i32 0, i64 %idxprom
  %65 = load i8, i8* %arrayidx71, align 1, !tbaa !95
  %idxprom72 = zext i8 %65 to i64
  %arrayidx73 = getelementptr inbounds [256 x i8], [256 x i8]* @byte_bit_run_length_0, i32 0, i64 %idxprom72
  %66 = load i8, i8* %arrayidx73, align 1, !tbaa !95
  %conv74 = zext i8 %66 to i32
  %sub75 = sub nsw i32 %conv74, 1
  store i32 %sub75, i32* %stopx, align 4, !tbaa !29
  br label %if.end.126

if.else.76:                                       ; preds = %if.end.31
  %67 = load i8, i8* %last, align 1, !tbaa !95
  %conv77 = zext i8 %67 to i32
  %68 = load i8, i8* %stopmask, align 1, !tbaa !95
  %conv78 = zext i8 %68 to i32
  %and79 = and i32 %conv77, %conv78
  %tobool80 = icmp ne i32 %and79, 0
  br i1 %tobool80, label %if.then.81, label %if.else.87

if.then.81:                                       ; preds = %if.else.76
  %69 = load i8, i8* %stopbit, align 1, !tbaa !95
  %conv82 = zext i8 %69 to i32
  %sub83 = sub nsw i32 0, %conv82
  %70 = load i8, i8* %last, align 1, !tbaa !95
  %conv84 = zext i8 %70 to i32
  %and85 = and i32 %conv84, %sub83
  %conv86 = trunc i32 %and85 to i8
  store i8 %conv86, i8* %last, align 1, !tbaa !95
  br label %if.end.118

if.else.87:                                       ; preds = %if.else.76
  br label %while.cond.88

while.cond.88:                                    ; preds = %while.body.97, %if.else.87
  %71 = load i8*, i8** %stop, align 8, !tbaa !1
  %72 = load i8*, i8** %psrc, align 8, !tbaa !1
  %cmp89 = icmp ugt i8* %71, %72
  br i1 %cmp89, label %land.rhs.91, label %land.end.96

land.rhs.91:                                      ; preds = %while.cond.88
  %73 = load i8*, i8** %stop, align 8, !tbaa !1
  %arrayidx92 = getelementptr inbounds i8, i8* %73, i64 -1
  %74 = load i8, i8* %arrayidx92, align 1, !tbaa !95
  %conv93 = zext i8 %74 to i32
  %cmp94 = icmp eq i32 %conv93, 0
  br label %land.end.96

land.end.96:                                      ; preds = %land.rhs.91, %while.cond.88
  %75 = phi i1 [ false, %while.cond.88 ], [ %cmp94, %land.rhs.91 ]
  br i1 %75, label %while.body.97, label %while.end.99

while.body.97:                                    ; preds = %land.end.96
  %76 = load i8*, i8** %stop, align 8, !tbaa !1
  %incdec.ptr98 = getelementptr inbounds i8, i8* %76, i32 -1
  store i8* %incdec.ptr98, i8** %stop, align 8, !tbaa !1
  br label %while.cond.88

while.end.99:                                     ; preds = %land.end.96
  %77 = load i8*, i8** %stop, align 8, !tbaa !1
  %78 = load i8*, i8** %psrc, align 8, !tbaa !1
  %cmp100 = icmp eq i8* %77, %78
  br i1 %cmp100, label %if.then.111, label %lor.lhs.false.102

lor.lhs.false.102:                                ; preds = %while.end.99
  %79 = load i8*, i8** %stop, align 8, !tbaa !1
  %80 = load i8*, i8** %psrc, align 8, !tbaa !1
  %add.ptr103 = getelementptr inbounds i8, i8* %80, i64 1
  %cmp104 = icmp eq i8* %79, %add.ptr103
  br i1 %cmp104, label %land.lhs.true.106, label %if.end.116

land.lhs.true.106:                                ; preds = %lor.lhs.false.102
  %81 = load i8*, i8** %psrc, align 8, !tbaa !1
  %82 = load i8, i8* %81, align 1, !tbaa !95
  %conv107 = zext i8 %82 to i32
  %83 = load i8, i8* %sbitmask, align 1, !tbaa !95
  %conv108 = zext i8 %83 to i32
  %and109 = and i32 %conv107, %conv108
  %tobool110 = icmp ne i32 %and109, 0
  br i1 %tobool110, label %if.end.116, label %if.then.111

if.then.111:                                      ; preds = %land.lhs.true.106, %while.end.99
  br label %do.body.112

do.body.112:                                      ; preds = %if.then.111
  br label %do.cond.113

do.cond.113:                                      ; preds = %do.body.112
  br label %do.end.114

do.end.114:                                       ; preds = %do.cond.113
  %84 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %85 = load i32, i32* %line_x.addr, align 4, !tbaa !29
  %86 = load i32, i32* %raster.addr, align 4, !tbaa !29
  %87 = load i8, i8* %zero.addr, align 1, !tbaa !95
  %conv115 = zext i8 %87 to i32
  call void @fill_row(i8* %84, i32 %85, i32 %86, i32 %conv115) #5
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.116:                                       ; preds = %land.lhs.true.106, %lor.lhs.false.102
  %88 = load i8*, i8** %stop, align 8, !tbaa !1
  %incdec.ptr117 = getelementptr inbounds i8, i8* %88, i32 -1
  store i8* %incdec.ptr117, i8** %stop, align 8, !tbaa !1
  %89 = load i8, i8* %incdec.ptr117, align 1, !tbaa !95
  store i8 %89, i8* %last, align 1, !tbaa !95
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.116, %if.then.81
  %90 = load i8, i8* %last, align 1, !tbaa !95
  %conv119 = zext i8 %90 to i32
  %xor = xor i32 %conv119, 255
  %idxprom120 = sext i32 %xor to i64
  %arrayidx121 = getelementptr inbounds [256 x i8], [256 x i8]* @byte_reverse_bits, i32 0, i64 %idxprom120
  %91 = load i8, i8* %arrayidx121, align 1, !tbaa !95
  %idxprom122 = zext i8 %91 to i64
  %arrayidx123 = getelementptr inbounds [256 x i8], [256 x i8]* @byte_bit_run_length_0, i32 0, i64 %idxprom122
  %92 = load i8, i8* %arrayidx123, align 1, !tbaa !95
  %conv124 = zext i8 %92 to i32
  %sub125 = sub nsw i32 %conv124, 1
  store i32 %sub125, i32* %stopx, align 4, !tbaa !29
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.118, %if.end.70
  %93 = load i32, i32* %stopx, align 4, !tbaa !29
  %cmp127 = icmp slt i32 %93, 0
  br i1 %cmp127, label %if.then.129, label %if.end.131

if.then.129:                                      ; preds = %if.end.126
  store i32 7, i32* %stopx, align 4, !tbaa !29
  %94 = load i8*, i8** %stop, align 8, !tbaa !1
  %incdec.ptr130 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %incdec.ptr130, i8** %stop, align 8, !tbaa !1
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.129, %if.end.126
  %95 = load i32, i32* %stopx, align 4, !tbaa !29
  %shl132 = shl i32 1, %95
  %conv133 = trunc i32 %shl132 to i8
  store i8 %conv133, i8* %stopbit, align 1, !tbaa !95
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.131, %do.end.114, %do.end.66
  call void @llvm.lifetime.end(i64 1, i8* %last) #1
  call void @llvm.lifetime.end(i64 1, i8* %stopmask) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.864 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %96 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %97 = load i32, i32* %line_x.addr, align 4, !tbaa !29
  %98 = load i32, i32* %raster.addr, align 4, !tbaa !29
  %99 = load i8, i8* %zero.addr, align 1, !tbaa !95
  %conv135 = zext i8 %99 to i32
  call void @fill_row(i8* %96, i32 %97, i32 %98, i32 %conv135) #5
  %100 = load i32, i32* %x_extent.addr, align 4, !tbaa !29
  %cmp136 = icmp sge i32 %100, 0
  br i1 %cmp136, label %cond.true, label %cond.false

cond.true:                                        ; preds = %cleanup.cont
  %101 = load i32, i32* %xcur.addr, align 4, !tbaa !29
  %conv138 = sext i32 %101 to i64
  %add139 = add nsw i64 %conv138, 127
  %conv140 = trunc i64 %add139 to i32
  %and141 = and i32 %conv140, 255
  br label %cond.end

cond.false:                                       ; preds = %cleanup.cont
  %102 = load i32, i32* %xcur.addr, align 4, !tbaa !29
  %103 = load i32, i32* %x_extent.addr, align 4, !tbaa !29
  %add142 = add nsw i32 %102, %103
  %conv143 = sext i32 %add142 to i64
  %add144 = add nsw i64 %conv143, 127
  %conv145 = trunc i64 %add144 to i32
  %and146 = and i32 %conv145, 255
  %104 = load i32, i32* %x_extent.addr, align 4, !tbaa !29
  %sub147 = sub nsw i32 %and146, %104
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %and141, %cond.true ], [ %sub147, %cond.false ]
  store i32 %cond, i32* %xl0, align 4, !tbaa !29
  %105 = load i32, i32* %line_x.addr, align 4, !tbaa !29
  %shl148 = shl i32 %105, 8
  %106 = load i32, i32* %xl0, align 4, !tbaa !29
  %add149 = add nsw i32 %106, %shl148
  store i32 %add149, i32* %xl0, align 4, !tbaa !29
  br label %do.body.150

do.body.150:                                      ; preds = %cond.end
  %107 = load i32, i32* %xl0, align 4, !tbaa !29
  %state = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %Q = getelementptr inbounds %struct._a, %struct._a* %state, i32 0, i32 0
  store i32 %107, i32* %Q, align 4, !tbaa !99
  %108 = load i32, i32* %w.addr, align 4, !tbaa !29
  %sub151 = sub i32 %108, 1
  %state152 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %R = getelementptr inbounds %struct._a, %struct._a* %state152, i32 0, i32 1
  store i32 %sub151, i32* %R, align 4, !tbaa !100
  br label %do.body.153

do.body.153:                                      ; preds = %do.body.150
  %109 = load i32, i32* %w.addr, align 4, !tbaa !29
  %cmp154 = icmp eq i32 %109, 0
  br i1 %cmp154, label %if.then.156, label %if.else.158

if.then.156:                                      ; preds = %do.body.153
  %step = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 1
  %dQ = getelementptr inbounds %struct._e, %struct._e* %step, i32 0, i32 0
  store i32 0, i32* %dQ, align 4, !tbaa !101
  %step157 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 1
  %dR = getelementptr inbounds %struct._e, %struct._e* %step157, i32 0, i32 1
  store i32 0, i32* %dR, align 4, !tbaa !102
  br label %if.end.188

if.else.158:                                      ; preds = %do.body.153
  %110 = load i32, i32* %x_extent.addr, align 4, !tbaa !29
  %cmp159 = icmp slt i32 %110, 0
  br i1 %cmp159, label %if.then.161, label %if.else.180

if.then.161:                                      ; preds = %if.else.158
  %111 = load i32, i32* %x_extent.addr, align 4, !tbaa !29
  %sub162 = sub nsw i32 0, %111
  %112 = load i32, i32* %w.addr, align 4, !tbaa !29
  %div = udiv i32 %sub162, %112
  %sub163 = sub nsw i32 0, %div
  %step164 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 1
  %dQ165 = getelementptr inbounds %struct._e, %struct._e* %step164, i32 0, i32 0
  store i32 %sub163, i32* %dQ165, align 4, !tbaa !101
  %113 = load i32, i32* %x_extent.addr, align 4, !tbaa !29
  %sub166 = sub nsw i32 0, %113
  %114 = load i32, i32* %w.addr, align 4, !tbaa !29
  %rem = urem i32 %sub166, %114
  %step167 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 1
  %dR168 = getelementptr inbounds %struct._e, %struct._e* %step167, i32 0, i32 1
  store i32 %rem, i32* %dR168, align 4, !tbaa !102
  %cmp169 = icmp ne i32 %rem, 0
  br i1 %cmp169, label %if.then.171, label %if.end.179

if.then.171:                                      ; preds = %if.then.161
  %step172 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 1
  %dQ173 = getelementptr inbounds %struct._e, %struct._e* %step172, i32 0, i32 0
  %115 = load i32, i32* %dQ173, align 4, !tbaa !101
  %dec = add nsw i32 %115, -1
  store i32 %dec, i32* %dQ173, align 4, !tbaa !101
  %116 = load i32, i32* %w.addr, align 4, !tbaa !29
  %step174 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 1
  %dR175 = getelementptr inbounds %struct._e, %struct._e* %step174, i32 0, i32 1
  %117 = load i32, i32* %dR175, align 4, !tbaa !102
  %sub176 = sub i32 %116, %117
  %step177 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 1
  %dR178 = getelementptr inbounds %struct._e, %struct._e* %step177, i32 0, i32 1
  store i32 %sub176, i32* %dR178, align 4, !tbaa !102
  br label %if.end.179

if.end.179:                                       ; preds = %if.then.171, %if.then.161
  br label %if.end.187

if.else.180:                                      ; preds = %if.else.158
  %118 = load i32, i32* %x_extent.addr, align 4, !tbaa !29
  %119 = load i32, i32* %w.addr, align 4, !tbaa !29
  %div181 = udiv i32 %118, %119
  %step182 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 1
  %dQ183 = getelementptr inbounds %struct._e, %struct._e* %step182, i32 0, i32 0
  store i32 %div181, i32* %dQ183, align 4, !tbaa !101
  %120 = load i32, i32* %x_extent.addr, align 4, !tbaa !29
  %121 = load i32, i32* %w.addr, align 4, !tbaa !29
  %rem184 = urem i32 %120, %121
  %step185 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 1
  %dR186 = getelementptr inbounds %struct._e, %struct._e* %step185, i32 0, i32 1
  store i32 %rem184, i32* %dR186, align 4, !tbaa !102
  br label %if.end.187

if.end.187:                                       ; preds = %if.else.180, %if.end.179
  br label %if.end.188

if.end.188:                                       ; preds = %if.end.187, %if.then.156
  %122 = load i32, i32* %w.addr, align 4, !tbaa !29
  %step189 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 1
  %N = getelementptr inbounds %struct._e, %struct._e* %step189, i32 0, i32 2
  store i32 %122, i32* %N, align 4, !tbaa !103
  br label %do.cond.190

do.cond.190:                                      ; preds = %if.end.188
  br label %do.end.191

do.end.191:                                       ; preds = %do.cond.190
  br label %do.cond.192

do.cond.192:                                      ; preds = %do.end.191
  br label %do.end.193

do.end.193:                                       ; preds = %do.cond.192
  %step194 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 1
  %123 = bitcast %struct._e* %dxx4 to i8*
  %124 = bitcast %struct._e* %step194 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %123, i8* %124, i64 12, i32 4, i1 false), !tbaa.struct !104
  br label %do.body.195

do.body.195:                                      ; preds = %do.end.193
  %step196 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 1
  %dR197 = getelementptr inbounds %struct._e, %struct._e* %step196, i32 0, i32 1
  %125 = load i32, i32* %dR197, align 4, !tbaa !102
  %dR198 = getelementptr inbounds %struct._e, %struct._e* %dxx4, i32 0, i32 1
  %126 = load i32, i32* %dR198, align 4, !tbaa !105
  %add199 = add i32 %126, %125
  store i32 %add199, i32* %dR198, align 4, !tbaa !105
  %dR200 = getelementptr inbounds %struct._e, %struct._e* %dxx4, i32 0, i32 1
  %127 = load i32, i32* %dR200, align 4, !tbaa !105
  %N201 = getelementptr inbounds %struct._e, %struct._e* %dxx4, i32 0, i32 2
  %128 = load i32, i32* %N201, align 4, !tbaa !106
  %cmp202 = icmp uge i32 %127, %128
  br i1 %cmp202, label %if.then.204, label %if.end.209

if.then.204:                                      ; preds = %do.body.195
  %dQ205 = getelementptr inbounds %struct._e, %struct._e* %dxx4, i32 0, i32 0
  %129 = load i32, i32* %dQ205, align 4, !tbaa !107
  %inc = add nsw i32 %129, 1
  store i32 %inc, i32* %dQ205, align 4, !tbaa !107
  %N206 = getelementptr inbounds %struct._e, %struct._e* %dxx4, i32 0, i32 2
  %130 = load i32, i32* %N206, align 4, !tbaa !106
  %dR207 = getelementptr inbounds %struct._e, %struct._e* %dxx4, i32 0, i32 1
  %131 = load i32, i32* %dR207, align 4, !tbaa !105
  %sub208 = sub i32 %131, %130
  store i32 %sub208, i32* %dR207, align 4, !tbaa !105
  br label %if.end.209

if.end.209:                                       ; preds = %if.then.204, %do.body.195
  %step210 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 1
  %dQ211 = getelementptr inbounds %struct._e, %struct._e* %step210, i32 0, i32 0
  %132 = load i32, i32* %dQ211, align 4, !tbaa !101
  %dQ212 = getelementptr inbounds %struct._e, %struct._e* %dxx4, i32 0, i32 0
  %133 = load i32, i32* %dQ212, align 4, !tbaa !107
  %add213 = add nsw i32 %133, %132
  store i32 %add213, i32* %dQ212, align 4, !tbaa !107
  br label %do.cond.214

do.cond.214:                                      ; preds = %if.end.209
  br label %do.end.215

do.end.215:                                       ; preds = %do.cond.214
  %134 = bitcast %struct._e* %dxx8 to i8*
  %135 = bitcast %struct._e* %dxx4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %134, i8* %135, i64 12, i32 4, i1 false), !tbaa.struct !104
  br label %do.body.216

do.body.216:                                      ; preds = %do.end.215
  %dR217 = getelementptr inbounds %struct._e, %struct._e* %dxx8, i32 0, i32 1
  %136 = load i32, i32* %dR217, align 4, !tbaa !105
  %dR218 = getelementptr inbounds %struct._e, %struct._e* %dxx4, i32 0, i32 1
  %137 = load i32, i32* %dR218, align 4, !tbaa !105
  %add219 = add i32 %137, %136
  store i32 %add219, i32* %dR218, align 4, !tbaa !105
  %dR220 = getelementptr inbounds %struct._e, %struct._e* %dxx4, i32 0, i32 1
  %138 = load i32, i32* %dR220, align 4, !tbaa !105
  %N221 = getelementptr inbounds %struct._e, %struct._e* %dxx4, i32 0, i32 2
  %139 = load i32, i32* %N221, align 4, !tbaa !106
  %cmp222 = icmp uge i32 %138, %139
  br i1 %cmp222, label %if.then.224, label %if.end.230

if.then.224:                                      ; preds = %do.body.216
  %dQ225 = getelementptr inbounds %struct._e, %struct._e* %dxx4, i32 0, i32 0
  %140 = load i32, i32* %dQ225, align 4, !tbaa !107
  %inc226 = add nsw i32 %140, 1
  store i32 %inc226, i32* %dQ225, align 4, !tbaa !107
  %N227 = getelementptr inbounds %struct._e, %struct._e* %dxx4, i32 0, i32 2
  %141 = load i32, i32* %N227, align 4, !tbaa !106
  %dR228 = getelementptr inbounds %struct._e, %struct._e* %dxx4, i32 0, i32 1
  %142 = load i32, i32* %dR228, align 4, !tbaa !105
  %sub229 = sub i32 %142, %141
  store i32 %sub229, i32* %dR228, align 4, !tbaa !105
  br label %if.end.230

if.end.230:                                       ; preds = %if.then.224, %do.body.216
  %dQ231 = getelementptr inbounds %struct._e, %struct._e* %dxx8, i32 0, i32 0
  %143 = load i32, i32* %dQ231, align 4, !tbaa !107
  %dQ232 = getelementptr inbounds %struct._e, %struct._e* %dxx4, i32 0, i32 0
  %144 = load i32, i32* %dQ232, align 4, !tbaa !107
  %add233 = add nsw i32 %144, %143
  store i32 %add233, i32* %dQ232, align 4, !tbaa !107
  br label %do.cond.234

do.cond.234:                                      ; preds = %if.end.230
  br label %do.end.235

do.end.235:                                       ; preds = %do.cond.234
  %145 = bitcast %struct._e* %dxx8 to i8*
  %146 = bitcast %struct._e* %dxx4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %145, i8* %146, i64 12, i32 4, i1 false), !tbaa.struct !104
  br label %do.body.236

do.body.236:                                      ; preds = %do.end.235
  %dR237 = getelementptr inbounds %struct._e, %struct._e* %dxx4, i32 0, i32 1
  %147 = load i32, i32* %dR237, align 4, !tbaa !105
  %dR238 = getelementptr inbounds %struct._e, %struct._e* %dxx8, i32 0, i32 1
  %148 = load i32, i32* %dR238, align 4, !tbaa !105
  %add239 = add i32 %148, %147
  store i32 %add239, i32* %dR238, align 4, !tbaa !105
  %dR240 = getelementptr inbounds %struct._e, %struct._e* %dxx8, i32 0, i32 1
  %149 = load i32, i32* %dR240, align 4, !tbaa !105
  %N241 = getelementptr inbounds %struct._e, %struct._e* %dxx8, i32 0, i32 2
  %150 = load i32, i32* %N241, align 4, !tbaa !106
  %cmp242 = icmp uge i32 %149, %150
  br i1 %cmp242, label %if.then.244, label %if.end.250

if.then.244:                                      ; preds = %do.body.236
  %dQ245 = getelementptr inbounds %struct._e, %struct._e* %dxx8, i32 0, i32 0
  %151 = load i32, i32* %dQ245, align 4, !tbaa !107
  %inc246 = add nsw i32 %151, 1
  store i32 %inc246, i32* %dQ245, align 4, !tbaa !107
  %N247 = getelementptr inbounds %struct._e, %struct._e* %dxx8, i32 0, i32 2
  %152 = load i32, i32* %N247, align 4, !tbaa !106
  %dR248 = getelementptr inbounds %struct._e, %struct._e* %dxx8, i32 0, i32 1
  %153 = load i32, i32* %dR248, align 4, !tbaa !105
  %sub249 = sub i32 %153, %152
  store i32 %sub249, i32* %dR248, align 4, !tbaa !105
  br label %if.end.250

if.end.250:                                       ; preds = %if.then.244, %do.body.236
  %dQ251 = getelementptr inbounds %struct._e, %struct._e* %dxx4, i32 0, i32 0
  %154 = load i32, i32* %dQ251, align 4, !tbaa !107
  %dQ252 = getelementptr inbounds %struct._e, %struct._e* %dxx8, i32 0, i32 0
  %155 = load i32, i32* %dQ252, align 4, !tbaa !107
  %add253 = add nsw i32 %155, %154
  store i32 %add253, i32* %dQ252, align 4, !tbaa !107
  br label %do.cond.254

do.cond.254:                                      ; preds = %if.end.250
  br label %do.end.255

do.end.255:                                       ; preds = %do.cond.254
  %156 = bitcast %struct._e* %dxx16 to i8*
  %157 = bitcast %struct._e* %dxx8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %156, i8* %157, i64 12, i32 4, i1 false), !tbaa.struct !104
  br label %do.body.256

do.body.256:                                      ; preds = %do.end.255
  %dR257 = getelementptr inbounds %struct._e, %struct._e* %dxx8, i32 0, i32 1
  %158 = load i32, i32* %dR257, align 4, !tbaa !105
  %dR258 = getelementptr inbounds %struct._e, %struct._e* %dxx16, i32 0, i32 1
  %159 = load i32, i32* %dR258, align 4, !tbaa !105
  %add259 = add i32 %159, %158
  store i32 %add259, i32* %dR258, align 4, !tbaa !105
  %dR260 = getelementptr inbounds %struct._e, %struct._e* %dxx16, i32 0, i32 1
  %160 = load i32, i32* %dR260, align 4, !tbaa !105
  %N261 = getelementptr inbounds %struct._e, %struct._e* %dxx16, i32 0, i32 2
  %161 = load i32, i32* %N261, align 4, !tbaa !106
  %cmp262 = icmp uge i32 %160, %161
  br i1 %cmp262, label %if.then.264, label %if.end.270

if.then.264:                                      ; preds = %do.body.256
  %dQ265 = getelementptr inbounds %struct._e, %struct._e* %dxx16, i32 0, i32 0
  %162 = load i32, i32* %dQ265, align 4, !tbaa !107
  %inc266 = add nsw i32 %162, 1
  store i32 %inc266, i32* %dQ265, align 4, !tbaa !107
  %N267 = getelementptr inbounds %struct._e, %struct._e* %dxx16, i32 0, i32 2
  %163 = load i32, i32* %N267, align 4, !tbaa !106
  %dR268 = getelementptr inbounds %struct._e, %struct._e* %dxx16, i32 0, i32 1
  %164 = load i32, i32* %dR268, align 4, !tbaa !105
  %sub269 = sub i32 %164, %163
  store i32 %sub269, i32* %dR268, align 4, !tbaa !105
  br label %if.end.270

if.end.270:                                       ; preds = %if.then.264, %do.body.256
  %dQ271 = getelementptr inbounds %struct._e, %struct._e* %dxx8, i32 0, i32 0
  %165 = load i32, i32* %dQ271, align 4, !tbaa !107
  %dQ272 = getelementptr inbounds %struct._e, %struct._e* %dxx16, i32 0, i32 0
  %166 = load i32, i32* %dQ272, align 4, !tbaa !107
  %add273 = add nsw i32 %166, %165
  store i32 %add273, i32* %dQ272, align 4, !tbaa !107
  br label %do.cond.274

do.cond.274:                                      ; preds = %if.end.270
  br label %do.end.275

do.end.275:                                       ; preds = %do.cond.274
  %167 = bitcast %struct._e* %dxx24 to i8*
  %168 = bitcast %struct._e* %dxx16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %167, i8* %168, i64 12, i32 4, i1 false), !tbaa.struct !104
  br label %do.body.276

do.body.276:                                      ; preds = %do.end.275
  %dR277 = getelementptr inbounds %struct._e, %struct._e* %dxx8, i32 0, i32 1
  %169 = load i32, i32* %dR277, align 4, !tbaa !105
  %dR278 = getelementptr inbounds %struct._e, %struct._e* %dxx24, i32 0, i32 1
  %170 = load i32, i32* %dR278, align 4, !tbaa !105
  %add279 = add i32 %170, %169
  store i32 %add279, i32* %dR278, align 4, !tbaa !105
  %dR280 = getelementptr inbounds %struct._e, %struct._e* %dxx24, i32 0, i32 1
  %171 = load i32, i32* %dR280, align 4, !tbaa !105
  %N281 = getelementptr inbounds %struct._e, %struct._e* %dxx24, i32 0, i32 2
  %172 = load i32, i32* %N281, align 4, !tbaa !106
  %cmp282 = icmp uge i32 %171, %172
  br i1 %cmp282, label %if.then.284, label %if.end.290

if.then.284:                                      ; preds = %do.body.276
  %dQ285 = getelementptr inbounds %struct._e, %struct._e* %dxx24, i32 0, i32 0
  %173 = load i32, i32* %dQ285, align 4, !tbaa !107
  %inc286 = add nsw i32 %173, 1
  store i32 %inc286, i32* %dQ285, align 4, !tbaa !107
  %N287 = getelementptr inbounds %struct._e, %struct._e* %dxx24, i32 0, i32 2
  %174 = load i32, i32* %N287, align 4, !tbaa !106
  %dR288 = getelementptr inbounds %struct._e, %struct._e* %dxx24, i32 0, i32 1
  %175 = load i32, i32* %dR288, align 4, !tbaa !105
  %sub289 = sub i32 %175, %174
  store i32 %sub289, i32* %dR288, align 4, !tbaa !105
  br label %if.end.290

if.end.290:                                       ; preds = %if.then.284, %do.body.276
  %dQ291 = getelementptr inbounds %struct._e, %struct._e* %dxx8, i32 0, i32 0
  %176 = load i32, i32* %dQ291, align 4, !tbaa !107
  %dQ292 = getelementptr inbounds %struct._e, %struct._e* %dxx24, i32 0, i32 0
  %177 = load i32, i32* %dQ292, align 4, !tbaa !107
  %add293 = add nsw i32 %177, %176
  store i32 %add293, i32* %dQ292, align 4, !tbaa !107
  br label %do.cond.294

do.cond.294:                                      ; preds = %if.end.290
  br label %do.end.295

do.end.295:                                       ; preds = %do.cond.294
  %178 = bitcast %struct._e* %dxx32 to i8*
  %179 = bitcast %struct._e* %dxx24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %178, i8* %179, i64 12, i32 4, i1 false), !tbaa.struct !104
  br label %do.body.296

do.body.296:                                      ; preds = %do.end.295
  %dR297 = getelementptr inbounds %struct._e, %struct._e* %dxx8, i32 0, i32 1
  %180 = load i32, i32* %dR297, align 4, !tbaa !105
  %dR298 = getelementptr inbounds %struct._e, %struct._e* %dxx32, i32 0, i32 1
  %181 = load i32, i32* %dR298, align 4, !tbaa !105
  %add299 = add i32 %181, %180
  store i32 %add299, i32* %dR298, align 4, !tbaa !105
  %dR300 = getelementptr inbounds %struct._e, %struct._e* %dxx32, i32 0, i32 1
  %182 = load i32, i32* %dR300, align 4, !tbaa !105
  %N301 = getelementptr inbounds %struct._e, %struct._e* %dxx32, i32 0, i32 2
  %183 = load i32, i32* %N301, align 4, !tbaa !106
  %cmp302 = icmp uge i32 %182, %183
  br i1 %cmp302, label %if.then.304, label %if.end.310

if.then.304:                                      ; preds = %do.body.296
  %dQ305 = getelementptr inbounds %struct._e, %struct._e* %dxx32, i32 0, i32 0
  %184 = load i32, i32* %dQ305, align 4, !tbaa !107
  %inc306 = add nsw i32 %184, 1
  store i32 %inc306, i32* %dQ305, align 4, !tbaa !107
  %N307 = getelementptr inbounds %struct._e, %struct._e* %dxx32, i32 0, i32 2
  %185 = load i32, i32* %N307, align 4, !tbaa !106
  %dR308 = getelementptr inbounds %struct._e, %struct._e* %dxx32, i32 0, i32 1
  %186 = load i32, i32* %dR308, align 4, !tbaa !105
  %sub309 = sub i32 %186, %185
  store i32 %sub309, i32* %dR308, align 4, !tbaa !105
  br label %if.end.310

if.end.310:                                       ; preds = %if.then.304, %do.body.296
  %dQ311 = getelementptr inbounds %struct._e, %struct._e* %dxx8, i32 0, i32 0
  %187 = load i32, i32* %dQ311, align 4, !tbaa !107
  %dQ312 = getelementptr inbounds %struct._e, %struct._e* %dxx32, i32 0, i32 0
  %188 = load i32, i32* %dQ312, align 4, !tbaa !107
  %add313 = add nsw i32 %188, %187
  store i32 %add313, i32* %dQ312, align 4, !tbaa !107
  br label %do.cond.314

do.cond.314:                                      ; preds = %if.end.310
  br label %do.end.315

do.end.315:                                       ; preds = %do.cond.314
  %189 = load i8*, i8** %psrc, align 8, !tbaa !1
  %190 = load i8, i8* %189, align 1, !tbaa !95
  store i8 %190, i8* %data, align 1, !tbaa !95
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont.863, %do.end.315
  %191 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %191) #1
  %192 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %192) #1
  %193 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %193) #1
  %194 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %194) #1
  br label %do.body.316

do.body.316:                                      ; preds = %for.cond
  br label %do.cond.317

do.cond.317:                                      ; preds = %do.body.316
  br label %do.end.318

do.end.318:                                       ; preds = %do.cond.317
  %195 = load i8, i8* %data, align 1, !tbaa !95
  %conv319 = zext i8 %195 to i32
  %xor320 = xor i32 %conv319, 255
  %conv321 = trunc i32 %xor320 to i8
  store i8 %conv321, i8* %data, align 1, !tbaa !95
  br label %while.cond.322

while.cond.322:                                   ; preds = %do.end.360, %do.end.318
  %196 = load i8, i8* %data, align 1, !tbaa !95
  %conv323 = zext i8 %196 to i32
  %197 = load i8, i8* %sbit, align 1, !tbaa !95
  %conv324 = zext i8 %197 to i32
  %and325 = and i32 %conv323, %conv324
  %tobool326 = icmp ne i32 %and325, 0
  br i1 %tobool326, label %while.body.327, label %while.end.361

while.body.327:                                   ; preds = %while.cond.322
  br label %do.body.328

do.body.328:                                      ; preds = %while.body.327
  %step329 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 1
  %dR330 = getelementptr inbounds %struct._e, %struct._e* %step329, i32 0, i32 1
  %198 = load i32, i32* %dR330, align 4, !tbaa !102
  %state331 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %R332 = getelementptr inbounds %struct._a, %struct._a* %state331, i32 0, i32 1
  %199 = load i32, i32* %R332, align 4, !tbaa !100
  %sub333 = sub i32 %199, %198
  store i32 %sub333, i32* %R332, align 4, !tbaa !100
  %state334 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %R335 = getelementptr inbounds %struct._a, %struct._a* %state334, i32 0, i32 1
  %200 = load i32, i32* %R335, align 4, !tbaa !100
  %cmp336 = icmp slt i32 %200, 0
  br i1 %cmp336, label %if.then.338, label %if.end.347

if.then.338:                                      ; preds = %do.body.328
  %state339 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %Q340 = getelementptr inbounds %struct._a, %struct._a* %state339, i32 0, i32 0
  %201 = load i32, i32* %Q340, align 4, !tbaa !99
  %inc341 = add nsw i32 %201, 1
  store i32 %inc341, i32* %Q340, align 4, !tbaa !99
  %step342 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 1
  %N343 = getelementptr inbounds %struct._e, %struct._e* %step342, i32 0, i32 2
  %202 = load i32, i32* %N343, align 4, !tbaa !103
  %state344 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %R345 = getelementptr inbounds %struct._a, %struct._a* %state344, i32 0, i32 1
  %203 = load i32, i32* %R345, align 4, !tbaa !100
  %add346 = add i32 %203, %202
  store i32 %add346, i32* %R345, align 4, !tbaa !100
  br label %if.end.347

if.end.347:                                       ; preds = %if.then.338, %do.body.328
  %step348 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 1
  %dQ349 = getelementptr inbounds %struct._e, %struct._e* %step348, i32 0, i32 0
  %204 = load i32, i32* %dQ349, align 4, !tbaa !101
  %state350 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %Q351 = getelementptr inbounds %struct._a, %struct._a* %state350, i32 0, i32 0
  %205 = load i32, i32* %Q351, align 4, !tbaa !99
  %add352 = add nsw i32 %205, %204
  store i32 %add352, i32* %Q351, align 4, !tbaa !99
  br label %do.cond.353

do.cond.353:                                      ; preds = %if.end.347
  br label %do.end.354

do.end.354:                                       ; preds = %do.cond.353
  %206 = load i8, i8* %sbit, align 1, !tbaa !95
  %conv355 = zext i8 %206 to i32
  %shr356 = ashr i32 %conv355, 1
  %conv357 = trunc i32 %shr356 to i8
  store i8 %conv357, i8* %sbit, align 1, !tbaa !95
  br label %do.body.358

do.body.358:                                      ; preds = %do.end.354
  br label %do.cond.359

do.cond.359:                                      ; preds = %do.body.358
  br label %do.end.360

do.end.360:                                       ; preds = %do.cond.359
  br label %while.cond.322

while.end.361:                                    ; preds = %while.cond.322
  %207 = load i8, i8* %sbit, align 1, !tbaa !95
  %tobool362 = icmp ne i8 %207, 0
  br i1 %tobool362, label %if.end.581, label %if.then.363

if.then.363:                                      ; preds = %while.end.361
  br label %sw

sw:                                               ; preds = %do.end.503, %if.then.363
  %208 = load i8*, i8** %psrc, align 8, !tbaa !1
  %arrayidx364 = getelementptr inbounds i8, i8* %208, i64 1
  %209 = load i8, i8* %arrayidx364, align 1, !tbaa !95
  store i8 %209, i8* %data, align 1, !tbaa !95
  %conv365 = zext i8 %209 to i32
  %cmp366 = icmp ne i32 %conv365, 0
  br i1 %cmp366, label %if.then.368, label %if.else.373

if.then.368:                                      ; preds = %sw
  %210 = load i8*, i8** %psrc, align 8, !tbaa !1
  %incdec.ptr369 = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %incdec.ptr369, i8** %psrc, align 8, !tbaa !1
  br label %do.body.370

do.body.370:                                      ; preds = %if.then.368
  br label %do.cond.371

do.cond.371:                                      ; preds = %do.body.370
  br label %do.end.372

do.end.372:                                       ; preds = %do.cond.371
  br label %if.end.507

if.else.373:                                      ; preds = %sw
  %211 = load i8*, i8** %psrc, align 8, !tbaa !1
  %arrayidx374 = getelementptr inbounds i8, i8* %211, i64 2
  %212 = load i8, i8* %arrayidx374, align 1, !tbaa !95
  store i8 %212, i8* %data, align 1, !tbaa !95
  %conv375 = zext i8 %212 to i32
  %cmp376 = icmp ne i32 %conv375, 0
  br i1 %cmp376, label %if.then.378, label %if.else.407

if.then.378:                                      ; preds = %if.else.373
  br label %do.body.379

do.body.379:                                      ; preds = %if.then.378
  %dR380 = getelementptr inbounds %struct._e, %struct._e* %dxx8, i32 0, i32 1
  %213 = load i32, i32* %dR380, align 4, !tbaa !105
  %state381 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %R382 = getelementptr inbounds %struct._a, %struct._a* %state381, i32 0, i32 1
  %214 = load i32, i32* %R382, align 4, !tbaa !100
  %sub383 = sub i32 %214, %213
  store i32 %sub383, i32* %R382, align 4, !tbaa !100
  %state384 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %R385 = getelementptr inbounds %struct._a, %struct._a* %state384, i32 0, i32 1
  %215 = load i32, i32* %R385, align 4, !tbaa !100
  %cmp386 = icmp slt i32 %215, 0
  br i1 %cmp386, label %if.then.388, label %if.end.396

if.then.388:                                      ; preds = %do.body.379
  %state389 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %Q390 = getelementptr inbounds %struct._a, %struct._a* %state389, i32 0, i32 0
  %216 = load i32, i32* %Q390, align 4, !tbaa !99
  %inc391 = add nsw i32 %216, 1
  store i32 %inc391, i32* %Q390, align 4, !tbaa !99
  %N392 = getelementptr inbounds %struct._e, %struct._e* %dxx8, i32 0, i32 2
  %217 = load i32, i32* %N392, align 4, !tbaa !106
  %state393 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %R394 = getelementptr inbounds %struct._a, %struct._a* %state393, i32 0, i32 1
  %218 = load i32, i32* %R394, align 4, !tbaa !100
  %add395 = add i32 %218, %217
  store i32 %add395, i32* %R394, align 4, !tbaa !100
  br label %if.end.396

if.end.396:                                       ; preds = %if.then.388, %do.body.379
  %dQ397 = getelementptr inbounds %struct._e, %struct._e* %dxx8, i32 0, i32 0
  %219 = load i32, i32* %dQ397, align 4, !tbaa !107
  %state398 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %Q399 = getelementptr inbounds %struct._a, %struct._a* %state398, i32 0, i32 0
  %220 = load i32, i32* %Q399, align 4, !tbaa !99
  %add400 = add nsw i32 %220, %219
  store i32 %add400, i32* %Q399, align 4, !tbaa !99
  br label %do.cond.401

do.cond.401:                                      ; preds = %if.end.396
  br label %do.end.402

do.end.402:                                       ; preds = %do.cond.401
  %221 = load i8*, i8** %psrc, align 8, !tbaa !1
  %add.ptr403 = getelementptr inbounds i8, i8* %221, i64 2
  store i8* %add.ptr403, i8** %psrc, align 8, !tbaa !1
  br label %do.body.404

do.body.404:                                      ; preds = %do.end.402
  br label %do.cond.405

do.cond.405:                                      ; preds = %do.body.404
  br label %do.end.406

do.end.406:                                       ; preds = %do.cond.405
  br label %if.end.506

if.else.407:                                      ; preds = %if.else.373
  %222 = load i8*, i8** %psrc, align 8, !tbaa !1
  %arrayidx408 = getelementptr inbounds i8, i8* %222, i64 3
  %223 = load i8, i8* %arrayidx408, align 1, !tbaa !95
  store i8 %223, i8* %data, align 1, !tbaa !95
  %conv409 = zext i8 %223 to i32
  %cmp410 = icmp ne i32 %conv409, 0
  br i1 %cmp410, label %if.then.412, label %if.else.441

if.then.412:                                      ; preds = %if.else.407
  br label %do.body.413

do.body.413:                                      ; preds = %if.then.412
  %dR414 = getelementptr inbounds %struct._e, %struct._e* %dxx16, i32 0, i32 1
  %224 = load i32, i32* %dR414, align 4, !tbaa !105
  %state415 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %R416 = getelementptr inbounds %struct._a, %struct._a* %state415, i32 0, i32 1
  %225 = load i32, i32* %R416, align 4, !tbaa !100
  %sub417 = sub i32 %225, %224
  store i32 %sub417, i32* %R416, align 4, !tbaa !100
  %state418 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %R419 = getelementptr inbounds %struct._a, %struct._a* %state418, i32 0, i32 1
  %226 = load i32, i32* %R419, align 4, !tbaa !100
  %cmp420 = icmp slt i32 %226, 0
  br i1 %cmp420, label %if.then.422, label %if.end.430

if.then.422:                                      ; preds = %do.body.413
  %state423 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %Q424 = getelementptr inbounds %struct._a, %struct._a* %state423, i32 0, i32 0
  %227 = load i32, i32* %Q424, align 4, !tbaa !99
  %inc425 = add nsw i32 %227, 1
  store i32 %inc425, i32* %Q424, align 4, !tbaa !99
  %N426 = getelementptr inbounds %struct._e, %struct._e* %dxx16, i32 0, i32 2
  %228 = load i32, i32* %N426, align 4, !tbaa !106
  %state427 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %R428 = getelementptr inbounds %struct._a, %struct._a* %state427, i32 0, i32 1
  %229 = load i32, i32* %R428, align 4, !tbaa !100
  %add429 = add i32 %229, %228
  store i32 %add429, i32* %R428, align 4, !tbaa !100
  br label %if.end.430

if.end.430:                                       ; preds = %if.then.422, %do.body.413
  %dQ431 = getelementptr inbounds %struct._e, %struct._e* %dxx16, i32 0, i32 0
  %230 = load i32, i32* %dQ431, align 4, !tbaa !107
  %state432 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %Q433 = getelementptr inbounds %struct._a, %struct._a* %state432, i32 0, i32 0
  %231 = load i32, i32* %Q433, align 4, !tbaa !99
  %add434 = add nsw i32 %231, %230
  store i32 %add434, i32* %Q433, align 4, !tbaa !99
  br label %do.cond.435

do.cond.435:                                      ; preds = %if.end.430
  br label %do.end.436

do.end.436:                                       ; preds = %do.cond.435
  %232 = load i8*, i8** %psrc, align 8, !tbaa !1
  %add.ptr437 = getelementptr inbounds i8, i8* %232, i64 3
  store i8* %add.ptr437, i8** %psrc, align 8, !tbaa !1
  br label %do.body.438

do.body.438:                                      ; preds = %do.end.436
  br label %do.cond.439

do.cond.439:                                      ; preds = %do.body.438
  br label %do.end.440

do.end.440:                                       ; preds = %do.cond.439
  br label %if.end.505

if.else.441:                                      ; preds = %if.else.407
  %233 = load i8*, i8** %psrc, align 8, !tbaa !1
  %arrayidx442 = getelementptr inbounds i8, i8* %233, i64 4
  %234 = load i8, i8* %arrayidx442, align 1, !tbaa !95
  store i8 %234, i8* %data, align 1, !tbaa !95
  %conv443 = zext i8 %234 to i32
  %cmp444 = icmp ne i32 %conv443, 0
  br i1 %cmp444, label %if.then.446, label %if.else.475

if.then.446:                                      ; preds = %if.else.441
  br label %do.body.447

do.body.447:                                      ; preds = %if.then.446
  %dR448 = getelementptr inbounds %struct._e, %struct._e* %dxx24, i32 0, i32 1
  %235 = load i32, i32* %dR448, align 4, !tbaa !105
  %state449 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %R450 = getelementptr inbounds %struct._a, %struct._a* %state449, i32 0, i32 1
  %236 = load i32, i32* %R450, align 4, !tbaa !100
  %sub451 = sub i32 %236, %235
  store i32 %sub451, i32* %R450, align 4, !tbaa !100
  %state452 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %R453 = getelementptr inbounds %struct._a, %struct._a* %state452, i32 0, i32 1
  %237 = load i32, i32* %R453, align 4, !tbaa !100
  %cmp454 = icmp slt i32 %237, 0
  br i1 %cmp454, label %if.then.456, label %if.end.464

if.then.456:                                      ; preds = %do.body.447
  %state457 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %Q458 = getelementptr inbounds %struct._a, %struct._a* %state457, i32 0, i32 0
  %238 = load i32, i32* %Q458, align 4, !tbaa !99
  %inc459 = add nsw i32 %238, 1
  store i32 %inc459, i32* %Q458, align 4, !tbaa !99
  %N460 = getelementptr inbounds %struct._e, %struct._e* %dxx24, i32 0, i32 2
  %239 = load i32, i32* %N460, align 4, !tbaa !106
  %state461 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %R462 = getelementptr inbounds %struct._a, %struct._a* %state461, i32 0, i32 1
  %240 = load i32, i32* %R462, align 4, !tbaa !100
  %add463 = add i32 %240, %239
  store i32 %add463, i32* %R462, align 4, !tbaa !100
  br label %if.end.464

if.end.464:                                       ; preds = %if.then.456, %do.body.447
  %dQ465 = getelementptr inbounds %struct._e, %struct._e* %dxx24, i32 0, i32 0
  %241 = load i32, i32* %dQ465, align 4, !tbaa !107
  %state466 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %Q467 = getelementptr inbounds %struct._a, %struct._a* %state466, i32 0, i32 0
  %242 = load i32, i32* %Q467, align 4, !tbaa !99
  %add468 = add nsw i32 %242, %241
  store i32 %add468, i32* %Q467, align 4, !tbaa !99
  br label %do.cond.469

do.cond.469:                                      ; preds = %if.end.464
  br label %do.end.470

do.end.470:                                       ; preds = %do.cond.469
  %243 = load i8*, i8** %psrc, align 8, !tbaa !1
  %add.ptr471 = getelementptr inbounds i8, i8* %243, i64 4
  store i8* %add.ptr471, i8** %psrc, align 8, !tbaa !1
  br label %do.body.472

do.body.472:                                      ; preds = %do.end.470
  br label %do.cond.473

do.cond.473:                                      ; preds = %do.body.472
  br label %do.end.474

do.end.474:                                       ; preds = %do.cond.473
  br label %if.end.504

if.else.475:                                      ; preds = %if.else.441
  br label %do.body.476

do.body.476:                                      ; preds = %if.else.475
  %dR477 = getelementptr inbounds %struct._e, %struct._e* %dxx32, i32 0, i32 1
  %244 = load i32, i32* %dR477, align 4, !tbaa !105
  %state478 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %R479 = getelementptr inbounds %struct._a, %struct._a* %state478, i32 0, i32 1
  %245 = load i32, i32* %R479, align 4, !tbaa !100
  %sub480 = sub i32 %245, %244
  store i32 %sub480, i32* %R479, align 4, !tbaa !100
  %state481 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %R482 = getelementptr inbounds %struct._a, %struct._a* %state481, i32 0, i32 1
  %246 = load i32, i32* %R482, align 4, !tbaa !100
  %cmp483 = icmp slt i32 %246, 0
  br i1 %cmp483, label %if.then.485, label %if.end.493

if.then.485:                                      ; preds = %do.body.476
  %state486 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %Q487 = getelementptr inbounds %struct._a, %struct._a* %state486, i32 0, i32 0
  %247 = load i32, i32* %Q487, align 4, !tbaa !99
  %inc488 = add nsw i32 %247, 1
  store i32 %inc488, i32* %Q487, align 4, !tbaa !99
  %N489 = getelementptr inbounds %struct._e, %struct._e* %dxx32, i32 0, i32 2
  %248 = load i32, i32* %N489, align 4, !tbaa !106
  %state490 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %R491 = getelementptr inbounds %struct._a, %struct._a* %state490, i32 0, i32 1
  %249 = load i32, i32* %R491, align 4, !tbaa !100
  %add492 = add i32 %249, %248
  store i32 %add492, i32* %R491, align 4, !tbaa !100
  br label %if.end.493

if.end.493:                                       ; preds = %if.then.485, %do.body.476
  %dQ494 = getelementptr inbounds %struct._e, %struct._e* %dxx32, i32 0, i32 0
  %250 = load i32, i32* %dQ494, align 4, !tbaa !107
  %state495 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %Q496 = getelementptr inbounds %struct._a, %struct._a* %state495, i32 0, i32 0
  %251 = load i32, i32* %Q496, align 4, !tbaa !99
  %add497 = add nsw i32 %251, %250
  store i32 %add497, i32* %Q496, align 4, !tbaa !99
  br label %do.cond.498

do.cond.498:                                      ; preds = %if.end.493
  br label %do.end.499

do.end.499:                                       ; preds = %do.cond.498
  %252 = load i8*, i8** %psrc, align 8, !tbaa !1
  %add.ptr500 = getelementptr inbounds i8, i8* %252, i64 4
  store i8* %add.ptr500, i8** %psrc, align 8, !tbaa !1
  br label %do.body.501

do.body.501:                                      ; preds = %do.end.499
  br label %do.cond.502

do.cond.502:                                      ; preds = %do.body.501
  br label %do.end.503

do.end.503:                                       ; preds = %do.cond.502
  br label %sw

if.end.504:                                       ; preds = %do.end.474
  br label %if.end.505

if.end.505:                                       ; preds = %if.end.504, %do.end.440
  br label %if.end.506

if.end.506:                                       ; preds = %if.end.505, %do.end.406
  br label %if.end.507

if.end.507:                                       ; preds = %if.end.506, %do.end.372
  %253 = load i8, i8* %data, align 1, !tbaa !95
  %conv508 = zext i8 %253 to i32
  %cmp509 = icmp sgt i32 %conv508, 15
  br i1 %cmp509, label %if.then.511, label %if.else.512

if.then.511:                                      ; preds = %if.end.507
  store i8 -128, i8* %sbit, align 1, !tbaa !95
  br label %if.end.537

if.else.512:                                      ; preds = %if.end.507
  store i8 8, i8* %sbit, align 1, !tbaa !95
  br label %do.body.513

do.body.513:                                      ; preds = %if.else.512
  %dR514 = getelementptr inbounds %struct._e, %struct._e* %dxx4, i32 0, i32 1
  %254 = load i32, i32* %dR514, align 4, !tbaa !105
  %state515 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %R516 = getelementptr inbounds %struct._a, %struct._a* %state515, i32 0, i32 1
  %255 = load i32, i32* %R516, align 4, !tbaa !100
  %sub517 = sub i32 %255, %254
  store i32 %sub517, i32* %R516, align 4, !tbaa !100
  %state518 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %R519 = getelementptr inbounds %struct._a, %struct._a* %state518, i32 0, i32 1
  %256 = load i32, i32* %R519, align 4, !tbaa !100
  %cmp520 = icmp slt i32 %256, 0
  br i1 %cmp520, label %if.then.522, label %if.end.530

if.then.522:                                      ; preds = %do.body.513
  %state523 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %Q524 = getelementptr inbounds %struct._a, %struct._a* %state523, i32 0, i32 0
  %257 = load i32, i32* %Q524, align 4, !tbaa !99
  %inc525 = add nsw i32 %257, 1
  store i32 %inc525, i32* %Q524, align 4, !tbaa !99
  %N526 = getelementptr inbounds %struct._e, %struct._e* %dxx4, i32 0, i32 2
  %258 = load i32, i32* %N526, align 4, !tbaa !106
  %state527 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %R528 = getelementptr inbounds %struct._a, %struct._a* %state527, i32 0, i32 1
  %259 = load i32, i32* %R528, align 4, !tbaa !100
  %add529 = add i32 %259, %258
  store i32 %add529, i32* %R528, align 4, !tbaa !100
  br label %if.end.530

if.end.530:                                       ; preds = %if.then.522, %do.body.513
  %dQ531 = getelementptr inbounds %struct._e, %struct._e* %dxx4, i32 0, i32 0
  %260 = load i32, i32* %dQ531, align 4, !tbaa !107
  %state532 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %Q533 = getelementptr inbounds %struct._a, %struct._a* %state532, i32 0, i32 0
  %261 = load i32, i32* %Q533, align 4, !tbaa !99
  %add534 = add nsw i32 %261, %260
  store i32 %add534, i32* %Q533, align 4, !tbaa !99
  br label %do.cond.535

do.cond.535:                                      ; preds = %if.end.530
  br label %do.end.536

do.end.536:                                       ; preds = %do.cond.535
  br label %if.end.537

if.end.537:                                       ; preds = %do.end.536, %if.then.511
  %262 = load i8, i8* %data, align 1, !tbaa !95
  %conv538 = zext i8 %262 to i32
  %xor539 = xor i32 %conv538, 255
  %conv540 = trunc i32 %xor539 to i8
  store i8 %conv540, i8* %data, align 1, !tbaa !95
  br label %while.cond.541

while.cond.541:                                   ; preds = %do.end.579, %if.end.537
  %263 = load i8, i8* %data, align 1, !tbaa !95
  %conv542 = zext i8 %263 to i32
  %264 = load i8, i8* %sbit, align 1, !tbaa !95
  %conv543 = zext i8 %264 to i32
  %and544 = and i32 %conv542, %conv543
  %tobool545 = icmp ne i32 %and544, 0
  br i1 %tobool545, label %while.body.546, label %while.end.580

while.body.546:                                   ; preds = %while.cond.541
  br label %do.body.547

do.body.547:                                      ; preds = %while.body.546
  %step548 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 1
  %dR549 = getelementptr inbounds %struct._e, %struct._e* %step548, i32 0, i32 1
  %265 = load i32, i32* %dR549, align 4, !tbaa !102
  %state550 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %R551 = getelementptr inbounds %struct._a, %struct._a* %state550, i32 0, i32 1
  %266 = load i32, i32* %R551, align 4, !tbaa !100
  %sub552 = sub i32 %266, %265
  store i32 %sub552, i32* %R551, align 4, !tbaa !100
  %state553 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %R554 = getelementptr inbounds %struct._a, %struct._a* %state553, i32 0, i32 1
  %267 = load i32, i32* %R554, align 4, !tbaa !100
  %cmp555 = icmp slt i32 %267, 0
  br i1 %cmp555, label %if.then.557, label %if.end.566

if.then.557:                                      ; preds = %do.body.547
  %state558 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %Q559 = getelementptr inbounds %struct._a, %struct._a* %state558, i32 0, i32 0
  %268 = load i32, i32* %Q559, align 4, !tbaa !99
  %inc560 = add nsw i32 %268, 1
  store i32 %inc560, i32* %Q559, align 4, !tbaa !99
  %step561 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 1
  %N562 = getelementptr inbounds %struct._e, %struct._e* %step561, i32 0, i32 2
  %269 = load i32, i32* %N562, align 4, !tbaa !103
  %state563 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %R564 = getelementptr inbounds %struct._a, %struct._a* %state563, i32 0, i32 1
  %270 = load i32, i32* %R564, align 4, !tbaa !100
  %add565 = add i32 %270, %269
  store i32 %add565, i32* %R564, align 4, !tbaa !100
  br label %if.end.566

if.end.566:                                       ; preds = %if.then.557, %do.body.547
  %step567 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 1
  %dQ568 = getelementptr inbounds %struct._e, %struct._e* %step567, i32 0, i32 0
  %271 = load i32, i32* %dQ568, align 4, !tbaa !101
  %state569 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %Q570 = getelementptr inbounds %struct._a, %struct._a* %state569, i32 0, i32 0
  %272 = load i32, i32* %Q570, align 4, !tbaa !99
  %add571 = add nsw i32 %272, %271
  store i32 %add571, i32* %Q570, align 4, !tbaa !99
  br label %do.cond.572

do.cond.572:                                      ; preds = %if.end.566
  br label %do.end.573

do.end.573:                                       ; preds = %do.cond.572
  %273 = load i8, i8* %sbit, align 1, !tbaa !95
  %conv574 = zext i8 %273 to i32
  %shr575 = ashr i32 %conv574, 1
  %conv576 = trunc i32 %shr575 to i8
  store i8 %conv576, i8* %sbit, align 1, !tbaa !95
  br label %do.body.577

do.body.577:                                      ; preds = %do.end.573
  br label %do.cond.578

do.cond.578:                                      ; preds = %do.body.577
  br label %do.end.579

do.end.579:                                       ; preds = %do.cond.578
  br label %while.cond.541

while.end.580:                                    ; preds = %while.cond.541
  br label %if.end.581

if.end.581:                                       ; preds = %while.end.580, %while.end.361
  %state582 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %Q583 = getelementptr inbounds %struct._a, %struct._a* %state582, i32 0, i32 0
  %274 = load i32, i32* %Q583, align 4, !tbaa !99
  %shr584 = ashr i32 %274, 8
  store i32 %shr584, i32* %x0, align 4, !tbaa !29
  %275 = load i8*, i8** %psrc, align 8, !tbaa !1
  %276 = load i8*, i8** %stop, align 8, !tbaa !1
  %cmp585 = icmp uge i8* %275, %276
  br i1 %cmp585, label %land.lhs.true.587, label %if.else.599

land.lhs.true.587:                                ; preds = %if.end.581
  %277 = load i8, i8* %sbit, align 1, !tbaa !95
  %conv588 = zext i8 %277 to i32
  %278 = load i8, i8* %stopbit, align 1, !tbaa !95
  %conv589 = zext i8 %278 to i32
  %cmp590 = icmp eq i32 %conv588, %conv589
  br i1 %cmp590, label %if.then.592, label %if.else.599

if.then.592:                                      ; preds = %land.lhs.true.587
  %279 = load i32, i32* %xl0, align 4, !tbaa !29
  %conv593 = sext i32 %279 to i64
  %280 = load i32, i32* %x_extent.addr, align 4, !tbaa !29
  %conv594 = sext i32 %280 to i64
  %add595 = add nsw i64 %conv593, %conv594
  %shr596 = ashr i64 %add595, 8
  %conv597 = trunc i64 %shr596 to i32
  %281 = load i32, i32* %x0, align 4, !tbaa !29
  %sub598 = sub nsw i32 %conv597, %281
  store i32 %sub598, i32* %n, align 4, !tbaa !29
  br label %if.end.754

if.else.599:                                      ; preds = %land.lhs.true.587, %if.end.581
  %282 = load i8, i8* %data, align 1, !tbaa !95
  %conv600 = zext i8 %282 to i32
  %xor601 = xor i32 %conv600, 255
  %conv602 = trunc i32 %xor601 to i8
  store i8 %conv602, i8* %data, align 1, !tbaa !95
  br label %do.body.603

do.body.603:                                      ; preds = %do.cond.637, %if.else.599
  br label %do.body.604

do.body.604:                                      ; preds = %do.body.603
  %step605 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 1
  %dR606 = getelementptr inbounds %struct._e, %struct._e* %step605, i32 0, i32 1
  %283 = load i32, i32* %dR606, align 4, !tbaa !102
  %state607 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %R608 = getelementptr inbounds %struct._a, %struct._a* %state607, i32 0, i32 1
  %284 = load i32, i32* %R608, align 4, !tbaa !100
  %sub609 = sub i32 %284, %283
  store i32 %sub609, i32* %R608, align 4, !tbaa !100
  %state610 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %R611 = getelementptr inbounds %struct._a, %struct._a* %state610, i32 0, i32 1
  %285 = load i32, i32* %R611, align 4, !tbaa !100
  %cmp612 = icmp slt i32 %285, 0
  br i1 %cmp612, label %if.then.614, label %if.end.623

if.then.614:                                      ; preds = %do.body.604
  %state615 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %Q616 = getelementptr inbounds %struct._a, %struct._a* %state615, i32 0, i32 0
  %286 = load i32, i32* %Q616, align 4, !tbaa !99
  %inc617 = add nsw i32 %286, 1
  store i32 %inc617, i32* %Q616, align 4, !tbaa !99
  %step618 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 1
  %N619 = getelementptr inbounds %struct._e, %struct._e* %step618, i32 0, i32 2
  %287 = load i32, i32* %N619, align 4, !tbaa !103
  %state620 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %R621 = getelementptr inbounds %struct._a, %struct._a* %state620, i32 0, i32 1
  %288 = load i32, i32* %R621, align 4, !tbaa !100
  %add622 = add i32 %288, %287
  store i32 %add622, i32* %R621, align 4, !tbaa !100
  br label %if.end.623

if.end.623:                                       ; preds = %if.then.614, %do.body.604
  %step624 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 1
  %dQ625 = getelementptr inbounds %struct._e, %struct._e* %step624, i32 0, i32 0
  %289 = load i32, i32* %dQ625, align 4, !tbaa !101
  %state626 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %Q627 = getelementptr inbounds %struct._a, %struct._a* %state626, i32 0, i32 0
  %290 = load i32, i32* %Q627, align 4, !tbaa !99
  %add628 = add nsw i32 %290, %289
  store i32 %add628, i32* %Q627, align 4, !tbaa !99
  br label %do.cond.629

do.cond.629:                                      ; preds = %if.end.623
  br label %do.end.630

do.end.630:                                       ; preds = %do.cond.629
  %291 = load i8, i8* %sbit, align 1, !tbaa !95
  %conv631 = zext i8 %291 to i32
  %shr632 = ashr i32 %conv631, 1
  %conv633 = trunc i32 %shr632 to i8
  store i8 %conv633, i8* %sbit, align 1, !tbaa !95
  br label %do.body.634

do.body.634:                                      ; preds = %do.end.630
  br label %do.cond.635

do.cond.635:                                      ; preds = %do.body.634
  br label %do.end.636

do.end.636:                                       ; preds = %do.cond.635
  br label %do.cond.637

do.cond.637:                                      ; preds = %do.end.636
  %292 = load i8, i8* %data, align 1, !tbaa !95
  %conv638 = zext i8 %292 to i32
  %293 = load i8, i8* %sbit, align 1, !tbaa !95
  %conv639 = zext i8 %293 to i32
  %and640 = and i32 %conv638, %conv639
  %tobool641 = icmp ne i32 %and640, 0
  br i1 %tobool641, label %do.body.603, label %do.end.642

do.end.642:                                       ; preds = %do.cond.637
  %294 = load i8, i8* %sbit, align 1, !tbaa !95
  %tobool643 = icmp ne i8 %294, 0
  br i1 %tobool643, label %if.end.749, label %if.then.644

if.then.644:                                      ; preds = %do.end.642
  br label %while.cond.645

while.cond.645:                                   ; preds = %do.end.677, %if.then.644
  %295 = load i8*, i8** %psrc, align 8, !tbaa !1
  %incdec.ptr646 = getelementptr inbounds i8, i8* %295, i32 1
  store i8* %incdec.ptr646, i8** %psrc, align 8, !tbaa !1
  %296 = load i8, i8* %incdec.ptr646, align 1, !tbaa !95
  store i8 %296, i8* %data, align 1, !tbaa !95
  %conv647 = zext i8 %296 to i32
  %cmp648 = icmp eq i32 %conv647, 255
  br i1 %cmp648, label %while.body.650, label %while.end.678

while.body.650:                                   ; preds = %while.cond.645
  br label %do.body.651

do.body.651:                                      ; preds = %while.body.650
  %dR652 = getelementptr inbounds %struct._e, %struct._e* %dxx8, i32 0, i32 1
  %297 = load i32, i32* %dR652, align 4, !tbaa !105
  %state653 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %R654 = getelementptr inbounds %struct._a, %struct._a* %state653, i32 0, i32 1
  %298 = load i32, i32* %R654, align 4, !tbaa !100
  %sub655 = sub i32 %298, %297
  store i32 %sub655, i32* %R654, align 4, !tbaa !100
  %state656 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %R657 = getelementptr inbounds %struct._a, %struct._a* %state656, i32 0, i32 1
  %299 = load i32, i32* %R657, align 4, !tbaa !100
  %cmp658 = icmp slt i32 %299, 0
  br i1 %cmp658, label %if.then.660, label %if.end.668

if.then.660:                                      ; preds = %do.body.651
  %state661 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %Q662 = getelementptr inbounds %struct._a, %struct._a* %state661, i32 0, i32 0
  %300 = load i32, i32* %Q662, align 4, !tbaa !99
  %inc663 = add nsw i32 %300, 1
  store i32 %inc663, i32* %Q662, align 4, !tbaa !99
  %N664 = getelementptr inbounds %struct._e, %struct._e* %dxx8, i32 0, i32 2
  %301 = load i32, i32* %N664, align 4, !tbaa !106
  %state665 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %R666 = getelementptr inbounds %struct._a, %struct._a* %state665, i32 0, i32 1
  %302 = load i32, i32* %R666, align 4, !tbaa !100
  %add667 = add i32 %302, %301
  store i32 %add667, i32* %R666, align 4, !tbaa !100
  br label %if.end.668

if.end.668:                                       ; preds = %if.then.660, %do.body.651
  %dQ669 = getelementptr inbounds %struct._e, %struct._e* %dxx8, i32 0, i32 0
  %303 = load i32, i32* %dQ669, align 4, !tbaa !107
  %state670 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %Q671 = getelementptr inbounds %struct._a, %struct._a* %state670, i32 0, i32 0
  %304 = load i32, i32* %Q671, align 4, !tbaa !99
  %add672 = add nsw i32 %304, %303
  store i32 %add672, i32* %Q671, align 4, !tbaa !99
  br label %do.cond.673

do.cond.673:                                      ; preds = %if.end.668
  br label %do.end.674

do.end.674:                                       ; preds = %do.cond.673
  br label %do.body.675

do.body.675:                                      ; preds = %do.end.674
  br label %do.cond.676

do.cond.676:                                      ; preds = %do.body.675
  br label %do.end.677

do.end.677:                                       ; preds = %do.cond.676
  br label %while.cond.645

while.end.678:                                    ; preds = %while.cond.645
  %305 = load i8, i8* %data, align 1, !tbaa !95
  %conv679 = zext i8 %305 to i32
  %cmp680 = icmp slt i32 %conv679, 240
  br i1 %cmp680, label %if.then.682, label %if.else.683

if.then.682:                                      ; preds = %while.end.678
  store i8 -128, i8* %sbit, align 1, !tbaa !95
  br label %if.end.708

if.else.683:                                      ; preds = %while.end.678
  store i8 8, i8* %sbit, align 1, !tbaa !95
  br label %do.body.684

do.body.684:                                      ; preds = %if.else.683
  %dR685 = getelementptr inbounds %struct._e, %struct._e* %dxx4, i32 0, i32 1
  %306 = load i32, i32* %dR685, align 4, !tbaa !105
  %state686 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %R687 = getelementptr inbounds %struct._a, %struct._a* %state686, i32 0, i32 1
  %307 = load i32, i32* %R687, align 4, !tbaa !100
  %sub688 = sub i32 %307, %306
  store i32 %sub688, i32* %R687, align 4, !tbaa !100
  %state689 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %R690 = getelementptr inbounds %struct._a, %struct._a* %state689, i32 0, i32 1
  %308 = load i32, i32* %R690, align 4, !tbaa !100
  %cmp691 = icmp slt i32 %308, 0
  br i1 %cmp691, label %if.then.693, label %if.end.701

if.then.693:                                      ; preds = %do.body.684
  %state694 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %Q695 = getelementptr inbounds %struct._a, %struct._a* %state694, i32 0, i32 0
  %309 = load i32, i32* %Q695, align 4, !tbaa !99
  %inc696 = add nsw i32 %309, 1
  store i32 %inc696, i32* %Q695, align 4, !tbaa !99
  %N697 = getelementptr inbounds %struct._e, %struct._e* %dxx4, i32 0, i32 2
  %310 = load i32, i32* %N697, align 4, !tbaa !106
  %state698 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %R699 = getelementptr inbounds %struct._a, %struct._a* %state698, i32 0, i32 1
  %311 = load i32, i32* %R699, align 4, !tbaa !100
  %add700 = add i32 %311, %310
  store i32 %add700, i32* %R699, align 4, !tbaa !100
  br label %if.end.701

if.end.701:                                       ; preds = %if.then.693, %do.body.684
  %dQ702 = getelementptr inbounds %struct._e, %struct._e* %dxx4, i32 0, i32 0
  %312 = load i32, i32* %dQ702, align 4, !tbaa !107
  %state703 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %Q704 = getelementptr inbounds %struct._a, %struct._a* %state703, i32 0, i32 0
  %313 = load i32, i32* %Q704, align 4, !tbaa !99
  %add705 = add nsw i32 %313, %312
  store i32 %add705, i32* %Q704, align 4, !tbaa !99
  br label %do.cond.706

do.cond.706:                                      ; preds = %if.end.701
  br label %do.end.707

do.end.707:                                       ; preds = %do.cond.706
  br label %if.end.708

if.end.708:                                       ; preds = %do.end.707, %if.then.682
  br label %while.cond.709

while.cond.709:                                   ; preds = %do.end.747, %if.end.708
  %314 = load i8, i8* %data, align 1, !tbaa !95
  %conv710 = zext i8 %314 to i32
  %315 = load i8, i8* %sbit, align 1, !tbaa !95
  %conv711 = zext i8 %315 to i32
  %and712 = and i32 %conv710, %conv711
  %tobool713 = icmp ne i32 %and712, 0
  br i1 %tobool713, label %while.body.714, label %while.end.748

while.body.714:                                   ; preds = %while.cond.709
  br label %do.body.715

do.body.715:                                      ; preds = %while.body.714
  %step716 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 1
  %dR717 = getelementptr inbounds %struct._e, %struct._e* %step716, i32 0, i32 1
  %316 = load i32, i32* %dR717, align 4, !tbaa !102
  %state718 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %R719 = getelementptr inbounds %struct._a, %struct._a* %state718, i32 0, i32 1
  %317 = load i32, i32* %R719, align 4, !tbaa !100
  %sub720 = sub i32 %317, %316
  store i32 %sub720, i32* %R719, align 4, !tbaa !100
  %state721 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %R722 = getelementptr inbounds %struct._a, %struct._a* %state721, i32 0, i32 1
  %318 = load i32, i32* %R722, align 4, !tbaa !100
  %cmp723 = icmp slt i32 %318, 0
  br i1 %cmp723, label %if.then.725, label %if.end.734

if.then.725:                                      ; preds = %do.body.715
  %state726 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %Q727 = getelementptr inbounds %struct._a, %struct._a* %state726, i32 0, i32 0
  %319 = load i32, i32* %Q727, align 4, !tbaa !99
  %inc728 = add nsw i32 %319, 1
  store i32 %inc728, i32* %Q727, align 4, !tbaa !99
  %step729 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 1
  %N730 = getelementptr inbounds %struct._e, %struct._e* %step729, i32 0, i32 2
  %320 = load i32, i32* %N730, align 4, !tbaa !103
  %state731 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %R732 = getelementptr inbounds %struct._a, %struct._a* %state731, i32 0, i32 1
  %321 = load i32, i32* %R732, align 4, !tbaa !100
  %add733 = add i32 %321, %320
  store i32 %add733, i32* %R732, align 4, !tbaa !100
  br label %if.end.734

if.end.734:                                       ; preds = %if.then.725, %do.body.715
  %step735 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 1
  %dQ736 = getelementptr inbounds %struct._e, %struct._e* %step735, i32 0, i32 0
  %322 = load i32, i32* %dQ736, align 4, !tbaa !101
  %state737 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %Q738 = getelementptr inbounds %struct._a, %struct._a* %state737, i32 0, i32 0
  %323 = load i32, i32* %Q738, align 4, !tbaa !99
  %add739 = add nsw i32 %323, %322
  store i32 %add739, i32* %Q738, align 4, !tbaa !99
  br label %do.cond.740

do.cond.740:                                      ; preds = %if.end.734
  br label %do.end.741

do.end.741:                                       ; preds = %do.cond.740
  %324 = load i8, i8* %sbit, align 1, !tbaa !95
  %conv742 = zext i8 %324 to i32
  %shr743 = ashr i32 %conv742, 1
  %conv744 = trunc i32 %shr743 to i8
  store i8 %conv744, i8* %sbit, align 1, !tbaa !95
  br label %do.body.745

do.body.745:                                      ; preds = %do.end.741
  br label %do.cond.746

do.cond.746:                                      ; preds = %do.body.745
  br label %do.end.747

do.end.747:                                       ; preds = %do.cond.746
  br label %while.cond.709

while.end.748:                                    ; preds = %while.cond.709
  br label %if.end.749

if.end.749:                                       ; preds = %while.end.748, %do.end.642
  %state750 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %xl, i32 0, i32 0
  %Q751 = getelementptr inbounds %struct._a, %struct._a* %state750, i32 0, i32 0
  %325 = load i32, i32* %Q751, align 4, !tbaa !99
  %shr752 = ashr i32 %325, 8
  %326 = load i32, i32* %x0, align 4, !tbaa !29
  %sub753 = sub nsw i32 %shr752, %326
  store i32 %sub753, i32* %n, align 4, !tbaa !29
  br label %if.end.754

if.end.754:                                       ; preds = %if.end.749, %if.then.592
  %327 = load i32, i32* %n, align 4, !tbaa !29
  %cmp755 = icmp slt i32 %327, 0
  br i1 %cmp755, label %if.then.757, label %if.end.760

if.then.757:                                      ; preds = %if.end.754
  %328 = load i32, i32* %n, align 4, !tbaa !29
  %329 = load i32, i32* %x0, align 4, !tbaa !29
  %add758 = add nsw i32 %329, %328
  store i32 %add758, i32* %x0, align 4, !tbaa !29
  %330 = load i32, i32* %n, align 4, !tbaa !29
  %sub759 = sub nsw i32 0, %330
  store i32 %sub759, i32* %n, align 4, !tbaa !29
  br label %if.end.760

if.end.760:                                       ; preds = %if.then.757, %if.end.754
  %331 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %332 = load i32, i32* %x0, align 4, !tbaa !29
  %shr761 = ashr i32 %332, 3
  %idx.ext762 = sext i32 %shr761 to i64
  %add.ptr763 = getelementptr inbounds i8, i8* %331, i64 %idx.ext762
  store i8* %add.ptr763, i8** %bp, align 8, !tbaa !1
  %333 = load i32, i32* %x0, align 4, !tbaa !29
  %and764 = and i32 %333, 7
  store i32 %and764, i32* %bit, align 4, !tbaa !29
  %334 = load i32, i32* %bit, align 4, !tbaa !29
  %335 = load i32, i32* %n, align 4, !tbaa !29
  %add765 = add nsw i32 %335, %334
  store i32 %add765, i32* %n, align 4, !tbaa !29
  %cmp766 = icmp sle i32 %add765, 8
  br i1 %cmp766, label %if.then.768, label %if.else.782

if.then.768:                                      ; preds = %if.end.760
  %336 = load i32, i32* %bit, align 4, !tbaa !29
  %idxprom769 = sext i32 %336 to i64
  %arrayidx770 = getelementptr inbounds [9 x i8], [9 x i8]* @image_simple_expand.lmasks, i32 0, i64 %idxprom769
  %337 = load i8, i8* %arrayidx770, align 1, !tbaa !95
  %conv771 = zext i8 %337 to i32
  %338 = load i32, i32* %n, align 4, !tbaa !29
  %idxprom772 = sext i32 %338 to i64
  %arrayidx773 = getelementptr inbounds [9 x i8], [9 x i8]* @image_simple_expand.lmasks, i32 0, i64 %idxprom772
  %339 = load i8, i8* %arrayidx773, align 1, !tbaa !95
  %conv774 = zext i8 %339 to i32
  %sub775 = sub nsw i32 %conv771, %conv774
  %340 = load i8*, i8** %bp, align 8, !tbaa !1
  %341 = load i8, i8* %340, align 1, !tbaa !95
  %conv776 = zext i8 %341 to i32
  %xor777 = xor i32 %conv776, %sub775
  %conv778 = trunc i32 %xor777 to i8
  store i8 %conv778, i8* %340, align 1, !tbaa !95
  br label %do.body.779

do.body.779:                                      ; preds = %if.then.768
  br label %do.cond.780

do.cond.780:                                      ; preds = %do.body.779
  br label %do.end.781

do.end.781:                                       ; preds = %do.cond.780
  br label %if.end.848

if.else.782:                                      ; preds = %if.end.760
  %342 = load i32, i32* %n, align 4, !tbaa !29
  %sub783 = sub nsw i32 %342, 8
  store i32 %sub783, i32* %n, align 4, !tbaa !29
  %cmp784 = icmp sle i32 %sub783, 8
  br i1 %cmp784, label %if.then.786, label %if.else.803

if.then.786:                                      ; preds = %if.else.782
  %343 = load i32, i32* %bit, align 4, !tbaa !29
  %idxprom787 = sext i32 %343 to i64
  %arrayidx788 = getelementptr inbounds [9 x i8], [9 x i8]* @image_simple_expand.lmasks, i32 0, i64 %idxprom787
  %344 = load i8, i8* %arrayidx788, align 1, !tbaa !95
  %conv789 = zext i8 %344 to i32
  %345 = load i8*, i8** %bp, align 8, !tbaa !1
  %346 = load i8, i8* %345, align 1, !tbaa !95
  %conv790 = zext i8 %346 to i32
  %xor791 = xor i32 %conv790, %conv789
  %conv792 = trunc i32 %xor791 to i8
  store i8 %conv792, i8* %345, align 1, !tbaa !95
  %347 = load i32, i32* %n, align 4, !tbaa !29
  %idxprom793 = sext i32 %347 to i64
  %arrayidx794 = getelementptr inbounds [9 x i8], [9 x i8]* @image_simple_expand.rmasks, i32 0, i64 %idxprom793
  %348 = load i8, i8* %arrayidx794, align 1, !tbaa !95
  %conv795 = zext i8 %348 to i32
  %349 = load i8*, i8** %bp, align 8, !tbaa !1
  %arrayidx796 = getelementptr inbounds i8, i8* %349, i64 1
  %350 = load i8, i8* %arrayidx796, align 1, !tbaa !95
  %conv797 = zext i8 %350 to i32
  %xor798 = xor i32 %conv797, %conv795
  %conv799 = trunc i32 %xor798 to i8
  store i8 %conv799, i8* %arrayidx796, align 1, !tbaa !95
  br label %do.body.800

do.body.800:                                      ; preds = %if.then.786
  br label %do.cond.801

do.cond.801:                                      ; preds = %do.body.800
  br label %do.end.802

do.end.802:                                       ; preds = %do.cond.801
  br label %if.end.847

if.else.803:                                      ; preds = %if.else.782
  %351 = load i32, i32* %bit, align 4, !tbaa !29
  %idxprom804 = sext i32 %351 to i64
  %arrayidx805 = getelementptr inbounds [9 x i8], [9 x i8]* @image_simple_expand.lmasks, i32 0, i64 %idxprom804
  %352 = load i8, i8* %arrayidx805, align 1, !tbaa !95
  %conv806 = zext i8 %352 to i32
  %353 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr807 = getelementptr inbounds i8, i8* %353, i32 1
  store i8* %incdec.ptr807, i8** %bp, align 8, !tbaa !1
  %354 = load i8, i8* %353, align 1, !tbaa !95
  %conv808 = zext i8 %354 to i32
  %xor809 = xor i32 %conv808, %conv806
  %conv810 = trunc i32 %xor809 to i8
  store i8 %conv810, i8* %353, align 1, !tbaa !95
  %355 = load i32, i32* %n, align 4, !tbaa !29
  %cmp811 = icmp sge i32 %355, 56
  br i1 %cmp811, label %if.then.813, label %if.else.825

if.then.813:                                      ; preds = %if.else.803
  %356 = bitcast i32* %nb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %356) #1
  %357 = load i32, i32* %n, align 4, !tbaa !29
  %shr814 = ashr i32 %357, 3
  store i32 %shr814, i32* %nb, align 4, !tbaa !29
  %358 = load i8*, i8** %bp, align 8, !tbaa !1
  %359 = load i8, i8* %one, align 1, !tbaa !95
  %conv815 = zext i8 %359 to i32
  %360 = load i32, i32* %nb, align 4, !tbaa !29
  %conv816 = sext i32 %360 to i64
  %call = call i8* @memset(i8* %358, i32 %conv815, i64 %conv816) #6
  %361 = load i32, i32* %nb, align 4, !tbaa !29
  %362 = load i8*, i8** %bp, align 8, !tbaa !1
  %idx.ext817 = sext i32 %361 to i64
  %add.ptr818 = getelementptr inbounds i8, i8* %362, i64 %idx.ext817
  store i8* %add.ptr818, i8** %bp, align 8, !tbaa !1
  br label %do.body.819

do.body.819:                                      ; preds = %if.then.813
  br label %do.cond.820

do.cond.820:                                      ; preds = %do.body.819
  br label %do.end.821

do.end.821:                                       ; preds = %do.cond.820
  br label %do.body.822

do.body.822:                                      ; preds = %do.end.821
  br label %do.cond.823

do.cond.823:                                      ; preds = %do.body.822
  br label %do.end.824

do.end.824:                                       ; preds = %do.cond.823
  %363 = bitcast i32* %nb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %363) #1
  br label %if.end.839

if.else.825:                                      ; preds = %if.else.803
  br label %do.body.826

do.body.826:                                      ; preds = %if.else.825
  br label %do.cond.827

do.cond.827:                                      ; preds = %do.body.826
  br label %do.end.828

do.end.828:                                       ; preds = %do.cond.827
  br label %while.cond.829

while.cond.829:                                   ; preds = %while.body.833, %do.end.828
  %364 = load i32, i32* %n, align 4, !tbaa !29
  %sub830 = sub nsw i32 %364, 8
  store i32 %sub830, i32* %n, align 4, !tbaa !29
  %cmp831 = icmp sge i32 %sub830, 0
  br i1 %cmp831, label %while.body.833, label %while.end.835

while.body.833:                                   ; preds = %while.cond.829
  %365 = load i8, i8* %one, align 1, !tbaa !95
  %366 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr834 = getelementptr inbounds i8, i8* %366, i32 1
  store i8* %incdec.ptr834, i8** %bp, align 8, !tbaa !1
  store i8 %365, i8* %366, align 1, !tbaa !95
  br label %while.cond.829

while.end.835:                                    ; preds = %while.cond.829
  br label %do.body.836

do.body.836:                                      ; preds = %while.end.835
  br label %do.cond.837

do.cond.837:                                      ; preds = %do.body.836
  br label %do.end.838

do.end.838:                                       ; preds = %do.cond.837
  br label %if.end.839

if.end.839:                                       ; preds = %do.end.838, %do.end.824
  %367 = load i32, i32* %n, align 4, !tbaa !29
  %and840 = and i32 %367, 7
  %idxprom841 = sext i32 %and840 to i64
  %arrayidx842 = getelementptr inbounds [9 x i8], [9 x i8]* @image_simple_expand.rmasks, i32 0, i64 %idxprom841
  %368 = load i8, i8* %arrayidx842, align 1, !tbaa !95
  %conv843 = zext i8 %368 to i32
  %369 = load i8*, i8** %bp, align 8, !tbaa !1
  %370 = load i8, i8* %369, align 1, !tbaa !95
  %conv844 = zext i8 %370 to i32
  %xor845 = xor i32 %conv844, %conv843
  %conv846 = trunc i32 %xor845 to i8
  store i8 %conv846, i8* %369, align 1, !tbaa !95
  br label %if.end.847

if.end.847:                                       ; preds = %if.end.839, %do.end.802
  br label %if.end.848

if.end.848:                                       ; preds = %if.end.847, %do.end.781
  %371 = load i8*, i8** %psrc, align 8, !tbaa !1
  %372 = load i8*, i8** %stop, align 8, !tbaa !1
  %cmp849 = icmp uge i8* %371, %372
  br i1 %cmp849, label %land.lhs.true.851, label %if.end.857

land.lhs.true.851:                                ; preds = %if.end.848
  %373 = load i8, i8* %sbit, align 1, !tbaa !95
  %conv852 = zext i8 %373 to i32
  %374 = load i8, i8* %stopbit, align 1, !tbaa !95
  %conv853 = zext i8 %374 to i32
  %cmp854 = icmp eq i32 %conv852, %conv853
  br i1 %cmp854, label %if.then.856, label %if.end.857

if.then.856:                                      ; preds = %land.lhs.true.851
  store i32 28, i32* %cleanup.dest.slot
  br label %cleanup.858

if.end.857:                                       ; preds = %land.lhs.true.851, %if.end.848
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.858

cleanup.858:                                      ; preds = %if.end.857, %if.then.856
  %375 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %375) #1
  %376 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %376) #1
  %377 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %377) #1
  %378 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %378) #1
  %cleanup.dest.862 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.862, label %unreachable [
    i32 0, label %cleanup.cont.863
    i32 28, label %for.end
  ]

cleanup.cont.863:                                 ; preds = %cleanup.858
  br label %for.cond

for.end:                                          ; preds = %cleanup.858
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.864

cleanup.864:                                      ; preds = %for.end, %cleanup, %if.then
  %379 = bitcast i32* %xl0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %379) #1
  call void @llvm.lifetime.end(i64 1, i8* %one) #1
  call void @llvm.lifetime.end(i64 1, i8* %data) #1
  call void @llvm.lifetime.end(i64 1, i8* %stopbit) #1
  %380 = bitcast i32* %stopx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %380) #1
  %381 = bitcast i8** %stop to i8*
  call void @llvm.lifetime.end(i64 8, i8* %381) #1
  call void @llvm.lifetime.end(i64 1, i8* %endbit) #1
  %382 = bitcast i32* %endx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %382) #1
  %383 = bitcast i8** %endp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %383) #1
  %384 = bitcast i8** %psrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %384) #1
  %385 = bitcast %struct._e* %dxx32 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %385) #1
  %386 = bitcast %struct._e* %dxx24 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %386) #1
  %387 = bitcast %struct._e* %dxx16 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %387) #1
  %388 = bitcast %struct._e* %dxx8 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %388) #1
  %389 = bitcast %struct._e* %dxx4 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %389) #1
  %390 = bitcast %struct.gx_dda_fixed_s* %xl to i8*
  call void @llvm.lifetime.end(i64 20, i8* %390) #1
  %391 = bitcast i32* %wx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %391) #1
  call void @llvm.lifetime.end(i64 1, i8* %sbitmask) #1
  call void @llvm.lifetime.end(i64 1, i8* %sbit) #1
  %392 = bitcast i32* %dbitx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %392) #1
  %cleanup.dest.884 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.884, label %unreachable [
    i32 0, label %cleanup.cont.885
    i32 1, label %cleanup.cont.885
  ]

cleanup.cont.885:                                 ; preds = %cleanup.864, %cleanup.864
  ret void

unreachable:                                      ; preds = %cleanup.864, %cleanup.858
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @copy_portrait(%struct.gx_image_enum_s* %penum, i8* %data, i32 %dx, i32 %raster, i32 %x, i32 %y, i32 %w, i32 %h, %struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gx_image_enum_s*, align 8
  %data.addr = alloca i8*, align 8
  %dx.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pdc0 = alloca %struct.gx_device_color_s*, align 8
  %pdc1 = alloca %struct.gx_device_color_s*, align 8
  %align = alloca i32, align 4
  %copy_mono = alloca i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, align 8
  %cleanup.dest.slot = alloca i32
  %pdc = alloca %struct.gx_device_color_s*, align 8
  %invert = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.gx_image_enum_s* %penum, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %dx, i32* %dx.addr, align 4, !tbaa !29
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !29
  store i32 %x, i32* %x.addr, align 4, !tbaa !29
  store i32 %y, i32* %y.addr, align 4, !tbaa !29
  store i32 %w, i32* %w.addr, align 4, !tbaa !29
  store i32 %h, i32* %h.addr, align 4, !tbaa !29
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_color_s** %pdc0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.gx_device_color_s** %pdc1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %align to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, 0
  %and = and i64 %sub.ptr.sub, 7
  %conv = trunc i64 %and to i32
  store i32 %conv, i32* %align, align 4, !tbaa !29
  %4 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %4, i32 0, i32 64
  %arrayidx = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map, i32 0, i64 0
  %table = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx, i32 0, i32 0
  %lookup4x1to32 = bitcast %union.sample_lookup_s* %table to [16 x i32]*
  %arrayidx1 = getelementptr inbounds [16 x i32], [16 x i32]* %lookup4x1to32, i32 0, i64 0
  %5 = load i32, i32* %arrayidx1, align 4, !tbaa !29
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icolor1 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %6, i32 0, i32 69
  %7 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %icolor1, align 8, !tbaa !61
  store %struct.gx_device_color_s* %7, %struct.gx_device_color_s** %pdc0, align 8, !tbaa !1
  %8 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icolor0 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %8, i32 0, i32 68
  %9 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %icolor0, align 8, !tbaa !60
  store %struct.gx_device_color_s* %9, %struct.gx_device_color_s** %pdc1, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icolor02 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %10, i32 0, i32 68
  %11 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %icolor02, align 8, !tbaa !60
  store %struct.gx_device_color_s* %11, %struct.gx_device_color_s** %pdc0, align 8, !tbaa !1
  %12 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icolor13 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %12, i32 0, i32 69
  %13 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %icolor13, align 8, !tbaa !61
  store %struct.gx_device_color_s* %13, %struct.gx_device_color_s** %pdc1, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load i32, i32* %align, align 4, !tbaa !29
  %15 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %idx.ext = zext i32 %14 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 %idx.neg
  store i8* %add.ptr, i8** %data.addr, align 8, !tbaa !1
  %16 = load i32, i32* %align, align 4, !tbaa !29
  %shl = shl i32 %16, 3
  %17 = load i32, i32* %dx.addr, align 4, !tbaa !29
  %add = add i32 %17, %shl
  store i32 %add, i32* %dx.addr, align 4, !tbaa !29
  %18 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc0, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %18, i32 0, i32 0
  %19 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !62
  %cmp = icmp eq %struct.gx_device_color_type_s* %19, @gx_dc_type_data_pure
  br i1 %cmp, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %if.end
  %20 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc1, align 8, !tbaa !1
  %type5 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %20, i32 0, i32 0
  %21 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type5, align 8, !tbaa !62
  %cmp6 = icmp eq %struct.gx_device_color_type_s* %21, @gx_dc_type_data_pure
  br i1 %cmp6, label %if.then.8, label %if.end.17

if.then.8:                                        ; preds = %land.lhs.true
  %22 = bitcast i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  %23 = load i32, i32* %h.addr, align 4, !tbaa !29
  %cmp9 = icmp eq i32 %23, 1
  br i1 %cmp9, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.8
  %24 = load i32, i32* %raster.addr, align 4, !tbaa !29
  %and11 = and i32 %24, 7
  %cmp12 = icmp eq i32 %and11, 0
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %if.then.8
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %25, i32 0, i32 42
  %copy_mono14 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 9
  %26 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono14, align 8, !tbaa !65
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* [ %26, %cond.true ], [ @gx_copy_mono_unaligned, %cond.false ]
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* %cond, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono, align 8, !tbaa !1
  %27 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono, align 8, !tbaa !1
  %28 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %29 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %30 = load i32, i32* %dx.addr, align 4, !tbaa !29
  %31 = load i32, i32* %raster.addr, align 4, !tbaa !29
  %32 = load i32, i32* %x.addr, align 4, !tbaa !29
  %33 = load i32, i32* %y.addr, align 4, !tbaa !29
  %34 = load i32, i32* %w.addr, align 4, !tbaa !29
  %35 = load i32, i32* %h.addr, align 4, !tbaa !29
  %36 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc0, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %36, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  %37 = load i64, i64* %pure, align 8, !tbaa !36
  %38 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc1, align 8, !tbaa !1
  %colors15 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %38, i32 0, i32 1
  %pure16 = bitcast %union._c* %colors15 to i64*
  %39 = load i64, i64* %pure16, align 8, !tbaa !36
  %call = call i32 %27(%struct.gx_device_s* %28, i8* %29, i32 %30, i32 %31, i64 0, i32 %32, i32 %33, i32 %34, i32 %35, i64 %37, i64 %39) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %40 = bitcast i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  br label %cleanup.49

if.end.17:                                        ; preds = %land.lhs.true, %if.end
  %41 = bitcast %struct.gx_device_color_s** %pdc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %41) #1
  %42 = bitcast i32* %invert to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #1
  %43 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc1, align 8, !tbaa !1
  %type18 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %43, i32 0, i32 0
  %44 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type18, align 8, !tbaa !62
  %cmp19 = icmp eq %struct.gx_device_color_type_s* %44, @gx_dc_type_data_pure
  br i1 %cmp19, label %land.lhs.true.21, label %if.else.27

land.lhs.true.21:                                 ; preds = %if.end.17
  %45 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc1, align 8, !tbaa !1
  %colors22 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %45, i32 0, i32 1
  %pure23 = bitcast %union._c* %colors22 to i64*
  %46 = load i64, i64* %pure23, align 8, !tbaa !36
  %cmp24 = icmp eq i64 %46, -1
  br i1 %cmp24, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %land.lhs.true.21
  %47 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc0, align 8, !tbaa !1
  store %struct.gx_device_color_s* %47, %struct.gx_device_color_s** %pdc, align 8, !tbaa !1
  store i32 1, i32* %invert, align 4, !tbaa !29
  br label %if.end.44

if.else.27:                                       ; preds = %land.lhs.true.21, %if.end.17
  %48 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc0, align 8, !tbaa !1
  %type28 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %48, i32 0, i32 0
  %49 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type28, align 8, !tbaa !62
  %cmp29 = icmp eq %struct.gx_device_color_type_s* %49, @gx_dc_type_data_pure
  br i1 %cmp29, label %land.lhs.true.31, label %if.then.36

land.lhs.true.31:                                 ; preds = %if.else.27
  %50 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc0, align 8, !tbaa !1
  %colors32 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %50, i32 0, i32 1
  %pure33 = bitcast %union._c* %colors32 to i64*
  %51 = load i64, i64* %pure33, align 8, !tbaa !36
  %cmp34 = icmp eq i64 %51, -1
  br i1 %cmp34, label %if.end.43, label %if.then.36

if.then.36:                                       ; preds = %land.lhs.true.31, %if.else.27
  %52 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %52) #1
  %53 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc0, align 8, !tbaa !1
  %type37 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %53, i32 0, i32 0
  %54 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type37, align 8, !tbaa !62
  %fill_rectangle = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %54, i32 0, i32 5
  %55 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle, align 8, !tbaa !108
  %56 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc0, align 8, !tbaa !1
  %57 = load i32, i32* %x.addr, align 4, !tbaa !29
  %58 = load i32, i32* %y.addr, align 4, !tbaa !29
  %59 = load i32, i32* %w.addr, align 4, !tbaa !29
  %60 = load i32, i32* %h.addr, align 4, !tbaa !29
  %61 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call38 = call i32 %55(%struct.gx_device_color_s* %56, i32 %57, i32 %58, i32 %59, i32 %60, %struct.gx_device_s* %61, i32 252, %struct.gx_rop_source_s* null) #5
  store i32 %call38, i32* %code, align 4, !tbaa !29
  %62 = load i32, i32* %code, align 4, !tbaa !29
  %cmp39 = icmp slt i32 %62, 0
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.then.36
  %63 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %63, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.42:                                        ; preds = %if.then.36
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.42, %if.then.41
  %64 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.47 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.43

if.end.43:                                        ; preds = %cleanup.cont, %land.lhs.true.31
  %65 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc1, align 8, !tbaa !1
  store %struct.gx_device_color_s* %65, %struct.gx_device_color_s** %pdc, align 8, !tbaa !1
  store i32 0, i32* %invert, align 4, !tbaa !29
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then.26
  %66 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc, align 8, !tbaa !1
  %type45 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %66, i32 0, i32 0
  %67 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type45, align 8, !tbaa !62
  %fill_masked = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %67, i32 0, i32 6
  %68 = load i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)** %fill_masked, align 8, !tbaa !109
  %69 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc, align 8, !tbaa !1
  %70 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %71 = load i32, i32* %dx.addr, align 4, !tbaa !29
  %72 = load i32, i32* %raster.addr, align 4, !tbaa !29
  %73 = load i32, i32* %x.addr, align 4, !tbaa !29
  %74 = load i32, i32* %y.addr, align 4, !tbaa !29
  %75 = load i32, i32* %w.addr, align 4, !tbaa !29
  %76 = load i32, i32* %h.addr, align 4, !tbaa !29
  %77 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %78 = load i32, i32* %invert, align 4, !tbaa !29
  %call46 = call i32 %68(%struct.gx_device_color_s* %69, i8* %70, i32 %71, i32 %72, i64 0, i32 %73, i32 %74, i32 %75, i32 %76, %struct.gx_device_s* %77, i32 252, i32 %78) #5
  store i32 %call46, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.47

cleanup.47:                                       ; preds = %if.end.44, %cleanup
  %79 = bitcast i32* %invert to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #1
  %80 = bitcast %struct.gx_device_color_s** %pdc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #1
  br label %cleanup.49

cleanup.49:                                       ; preds = %cleanup.47, %cond.end
  %81 = bitcast i32* %align to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #1
  %82 = bitcast %struct.gx_device_color_s** %pdc1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #1
  %83 = bitcast %struct.gx_device_color_s** %pdc0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #1
  %84 = load i32, i32* %retval
  ret i32 %84
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @fill_row(i8* %line, i32 %line_x, i32 %raster, i32 %value) #3 {
entry:
  %line.addr = alloca i8*, align 8
  %line_x.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store i8* %line, i8** %line.addr, align 8, !tbaa !1
  store i32 %line_x, i32* %line_x.addr, align 4, !tbaa !29
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !29
  store i32 %value, i32* %value.addr, align 4, !tbaa !29
  %0 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %1 = load i32, i32* %line_x.addr, align 4, !tbaa !29
  %shr = ashr i32 %1, 3
  %idx.ext = sext i32 %shr to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %2 = load i32, i32* %value.addr, align 4, !tbaa !29
  %3 = load i32, i32* %raster.addr, align 4, !tbaa !29
  %4 = load i32, i32* %line_x.addr, align 4, !tbaa !29
  %shr1 = ashr i32 %4, 3
  %sub = sub i32 %3, %shr1
  %conv = zext i32 %sub to i64
  %call = call i8* @memset(i8* %add.ptr, i32 %2, i64 %conv) #6
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #4

declare i32 @gx_copy_mono_unaligned(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @copy_landscape(%struct.gx_image_enum_s* %penum, i32 %x0, i32 %x1, i32 %y_neg, %struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gx_image_enum_s*, align 8
  %x0.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %y_neg.addr = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %line = alloca i8*, align 8
  %line_width = alloca i32, align 4
  %raster = alloca i32, align 4
  %flipped = alloca i8*, align 8
  %w = alloca i32, align 4
  %y = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %i = alloca i32, align 4
  store %struct.gx_image_enum_s* %penum, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  store i32 %x0, i32* %x0.addr, align 4, !tbaa !29
  store i32 %x1, i32* %x1.addr, align 4, !tbaa !29
  store i32 %y_neg, i32* %y_neg.addr, align 4, !tbaa !29
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast i8** %line to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line1 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1, i32 0, i32 34
  %2 = load i8*, i8** %line1, align 8, !tbaa !45
  store i8* %2, i8** %line, align 8, !tbaa !1
  %3 = bitcast i32* %line_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line_width2 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %4, i32 0, i32 36
  %5 = load i32, i32* %line_width2, align 4, !tbaa !39
  store i32 %5, i32* %line_width, align 4, !tbaa !29
  %6 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i32, i32* %line_width, align 4, !tbaa !29
  %add = add i32 %7, 63
  %shr = lshr i32 %add, 6
  %shl = shl i32 %shr, 3
  store i32 %shl, i32* %raster, align 4, !tbaa !29
  %8 = bitcast i8** %flipped to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load i8*, i8** %line, align 8, !tbaa !1
  %10 = load i32, i32* %raster, align 4, !tbaa !29
  %mul = mul i32 %10, 8
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %idx.ext
  store i8* %add.ptr, i8** %flipped, align 8, !tbaa !1
  %11 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load i32, i32* %x1.addr, align 4, !tbaa !29
  %13 = load i32, i32* %x0.addr, align 4, !tbaa !29
  %sub = sub nsw i32 %12, %13
  store i32 %sub, i32* %w, align 4, !tbaa !29
  %14 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %15, i32 0, i32 55
  %pixel0 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda, i32 0, i32 2
  %y3 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pixel0, i32 0, i32 1
  %state = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y3, i32 0, i32 0
  %Q = getelementptr inbounds %struct._a, %struct._a* %state, i32 0, i32 0
  %16 = load i32, i32* %Q, align 4, !tbaa !30
  %conv = sext i32 %16 to i64
  %add4 = add nsw i64 %conv, 127
  %shr5 = ashr i64 %add4, 8
  %conv6 = trunc i64 %shr5 to i32
  store i32 %conv6, i32* %y, align 4, !tbaa !29
  %17 = load i32, i32* %w, align 4, !tbaa !29
  %cmp = icmp eq i32 %17, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %18 = load i32, i32* %line_width, align 4, !tbaa !29
  %cmp8 = icmp eq i32 %18, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %19 = load i32, i32* %line_width, align 4, !tbaa !29
  %cmp10 = icmp ugt i32 %19, 0
  br i1 %cmp10, label %if.then.12, label %if.end.22

if.then.12:                                       ; preds = %if.end
  %20 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = load i32, i32* %line_width, align 4, !tbaa !29
  %sub13 = sub i32 %21, 1
  %shr14 = lshr i32 %sub13, 3
  store i32 %shr14, i32* %i, align 4, !tbaa !29
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.12
  %22 = load i32, i32* %i, align 4, !tbaa !29
  %cmp15 = icmp sge i32 %22, 0
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i8*, i8** %line, align 8, !tbaa !1
  %24 = load i32, i32* %i, align 4, !tbaa !29
  %idx.ext17 = sext i32 %24 to i64
  %add.ptr18 = getelementptr inbounds i8, i8* %23, i64 %idx.ext17
  %25 = load i32, i32* %raster, align 4, !tbaa !29
  %26 = load i8*, i8** %flipped, align 8, !tbaa !1
  %27 = load i32, i32* %i, align 4, !tbaa !29
  %shl19 = shl i32 %27, 6
  %idx.ext20 = sext i32 %shl19 to i64
  %add.ptr21 = getelementptr inbounds i8, i8* %26, i64 %idx.ext20
  call void @memflip8x8(i8* %add.ptr18, i32 %25, i8* %add.ptr21, i32 8) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %i, align 4, !tbaa !29
  %dec = add nsw i32 %28, -1
  store i32 %dec, i32* %i, align 4, !tbaa !29
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  br label %if.end.22

if.end.22:                                        ; preds = %for.end, %if.end
  %30 = load i32, i32* %w, align 4, !tbaa !29
  %cmp23 = icmp slt i32 %30, 0
  br i1 %cmp23, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.end.22
  %31 = load i32, i32* %x1.addr, align 4, !tbaa !29
  store i32 %31, i32* %x0.addr, align 4, !tbaa !29
  %32 = load i32, i32* %w, align 4, !tbaa !29
  %sub26 = sub nsw i32 0, %32
  store i32 %sub26, i32* %w, align 4, !tbaa !29
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.end.22
  %33 = load i32, i32* %y_neg.addr, align 4, !tbaa !29
  %tobool = icmp ne i32 %33, 0
  br i1 %tobool, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %if.end.27
  %34 = load i32, i32* %line_width, align 4, !tbaa !29
  %35 = load i32, i32* %y, align 4, !tbaa !29
  %sub29 = sub i32 %35, %34
  store i32 %sub29, i32* %y, align 4, !tbaa !29
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %if.end.27
  %36 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %37 = load i8*, i8** %flipped, align 8, !tbaa !1
  %38 = load i32, i32* %x0.addr, align 4, !tbaa !29
  %and = and i32 %38, 7
  %39 = load i32, i32* %x0.addr, align 4, !tbaa !29
  %40 = load i32, i32* %y, align 4, !tbaa !29
  %41 = load i32, i32* %w, align 4, !tbaa !29
  %42 = load i32, i32* %line_width, align 4, !tbaa !29
  %43 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 @copy_portrait(%struct.gx_image_enum_s* %36, i8* %37, i32 %and, i32 8, i32 %39, i32 %40, i32 %41, i32 %42, %struct.gx_device_s* %43) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.30, %if.then
  %44 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast i8** %flipped to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast i32* %line_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast i8** %line to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = load i32, i32* %retval
  ret i32 %50
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

declare void @memflip8x8(i8*, i32, i8*, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !8, i64 1452}
!6 = !{!"gx_image_enum_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !7, i64 32, !8, i64 40, !8, i64 44, !3, i64 48, !3, i64 308, !8, i64 568, !8, i64 572, !3, i64 576, !3, i64 577, !3, i64 578, !3, i64 579, !3, i64 580, !9, i64 584, !3, i64 1116, !3, i64 1117, !3, i64 1118, !3, i64 1119, !10, i64 1120, !12, i64 1144, !13, i64 1160, !8, i64 1176, !8, i64 1180, !14, i64 1184, !14, i64 1192, !2, i64 1200, !2, i64 1208, !2, i64 1216, !2, i64 1224, !2, i64 1232, !8, i64 1240, !2, i64 1248, !8, i64 1256, !8, i64 1260, !3, i64 1264, !3, i64 1268, !3, i64 1269, !3, i64 1270, !3, i64 1271, !15, i64 1272, !15, i64 1288, !8, i64 1304, !8, i64 1308, !8, i64 1312, !8, i64 1316, !2, i64 1320, !2, i64 1328, !2, i64 1336, !8, i64 1344, !16, i64 1348, !14, i64 1356, !14, i64 1364, !17, i64 1372, !8, i64 1492, !8, i64 1496, !16, i64 1500, !8, i64 1508, !8, i64 1512, !8, i64 1516, !8, i64 1520, !8, i64 1524, !3, i64 1528, !2, i64 23112, !22, i64 23120, !22, i64 23776, !2, i64 24432, !2, i64 24440, !2, i64 24448, !2, i64 24456, !2, i64 24464, !8, i64 24472, !8, i64 24476, !8, i64 24480, !2, i64 24488, !8, i64 24496, !3, i64 24500, !27, i64 24504, !28, i64 24792, !8, i64 24808}
!7 = !{!"long", !3, i64 0}
!8 = !{!"int", !3, i64 0}
!9 = !{!"mc_", !3, i64 0, !8, i64 520, !8, i64 524, !8, i64 528}
!10 = !{!"gs_matrix_s", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20}
!11 = !{!"float", !3, i64 0}
!12 = !{!"r_", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12}
!13 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12}
!14 = !{!"gs_fixed_point_s", !8, i64 0, !8, i64 4}
!15 = !{!"gs_fixed_rect_s", !14, i64 0, !14, i64 8}
!16 = !{!"gs_int_point_s", !8, i64 0, !8, i64 4}
!17 = !{!"dd_", !18, i64 0, !18, i64 40, !18, i64 80}
!18 = !{!"gx_dda_fixed_point_s", !19, i64 0, !19, i64 20}
!19 = !{!"gx_dda_fixed_s", !20, i64 0, !21, i64 8}
!20 = !{!"_a", !8, i64 0, !8, i64 4}
!21 = !{!"_e", !8, i64 0, !8, i64 4, !8, i64 8}
!22 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !16, i64 352, !8, i64 360, !23, i64 368, !25, i64 632}
!23 = !{!"gs_client_color_s", !2, i64 0, !24, i64 8}
!24 = !{!"gs_paint_color_s", !3, i64 0}
!25 = !{!"_mask", !26, i64 0, !7, i64 8, !2, i64 16}
!26 = !{!"mp_", !8, i64 0, !8, i64 4}
!27 = !{!"ht_landscape_info_s", !8, i64 0, !3, i64 4, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284}
!28 = !{!"gx_image_icc_setup_s", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12}
!29 = !{!8, !8, i64 0}
!30 = !{!6, !8, i64 1472}
!31 = !{!6, !3, i64 1268}
!32 = !{!6, !3, i64 579}
!33 = !{!6, !3, i64 576}
!34 = !{!6, !3, i64 1264}
!35 = !{!6, !8, i64 1184}
!36 = !{!7, !7, i64 0}
!37 = !{!6, !8, i64 1152}
!38 = !{!6, !8, i64 1308}
!39 = !{!6, !8, i64 1260}
!40 = !{!6, !8, i64 1256}
!41 = !{!6, !2, i64 24}
!42 = !{!43, !2, i64 64}
!43 = !{!"gs_memory_s", !2, i64 0, !44, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!44 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!45 = !{!6, !2, i64 1248}
!46 = !{!6, !2, i64 16}
!47 = !{!6, !8, i64 1188}
!48 = !{!6, !8, i64 1492}
!49 = !{!6, !8, i64 1496}
!50 = !{!6, !11, i64 1124}
!51 = !{!6, !8, i64 1316}
!52 = !{!6, !11, i64 1120}
!53 = !{!6, !8, i64 1312}
!54 = !{!6, !2, i64 1200}
!55 = !{!6, !3, i64 577}
!56 = !{!6, !3, i64 1116}
!57 = !{!6, !3, i64 1118}
!58 = !{!59, !8, i64 328}
!59 = !{!"sample_map_s", !3, i64 0, !3, i64 256, !11, i64 320, !3, i64 324, !8, i64 328}
!60 = !{!6, !2, i64 24432}
!61 = !{!6, !2, i64 24440}
!62 = !{!22, !2, i64 0}
!63 = !{!22, !8, i64 360}
!64 = !{!59, !3, i64 324}
!65 = !{!66, !2, i64 1216}
!66 = !{!"gx_device_s", !8, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !8, i64 40, !2, i64 48, !67, i64 56, !8, i64 80, !8, i64 84, !8, i64 88, !68, i64 96, !71, i64 816, !8, i64 832, !8, i64 836, !8, i64 840, !8, i64 844, !8, i64 848, !8, i64 852, !3, i64 856, !3, i64 864, !8, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !7, i64 928, !7, i64 936, !8, i64 944, !8, i64 948, !8, i64 952, !8, i64 956, !8, i64 960, !7, i64 968, !7, i64 976, !72, i64 984, !8, i64 1052, !8, i64 1056, !73, i64 1064, !2, i64 1104, !3, i64 1112, !75, i64 1120, !76, i64 1144}
!67 = !{!"rc_header_s", !7, i64 0, !2, i64 8, !2, i64 16}
!68 = !{!"gx_device_color_info_s", !8, i64 0, !8, i64 4, !3, i64 8, !69, i64 12, !3, i64 14, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !70, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !7, i64 704, !8, i64 712}
!69 = !{!"short", !3, i64 0}
!70 = !{!"gx_device_anti_alias_info_s", !8, i64 0, !8, i64 4}
!71 = !{!"gx_device_cached_colors_s", !7, i64 0, !7, i64 8}
!72 = !{!"gx_stroked_gradient_recognizer_s", !8, i64 0, !3, i64 4, !3, i64 36}
!73 = !{!"gdev_space_params_s", !7, i64 0, !7, i64 8, !74, i64 16, !8, i64 32, !3, i64 36}
!74 = !{!"gx_band_params_s", !8, i64 0, !8, i64 4, !7, i64 8}
!75 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!76 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!77 = !{!6, !8, i64 1512}
!78 = !{!6, !8, i64 1516}
!79 = !{!80, !2, i64 32}
!80 = !{!"gx_device_color_type_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!81 = !{!6, !2, i64 1216}
!82 = !{!83, !2, i64 1216}
!83 = !{!"gx_device_memory_s", !8, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !8, i64 40, !2, i64 48, !67, i64 56, !8, i64 80, !8, i64 84, !8, i64 88, !68, i64 96, !71, i64 816, !8, i64 832, !8, i64 836, !8, i64 840, !8, i64 844, !8, i64 848, !8, i64 852, !3, i64 856, !3, i64 864, !8, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !7, i64 928, !7, i64 936, !8, i64 944, !8, i64 948, !8, i64 952, !8, i64 956, !8, i64 960, !7, i64 968, !7, i64 976, !72, i64 984, !8, i64 1052, !8, i64 1056, !73, i64 1064, !2, i64 1104, !3, i64 1112, !75, i64 1120, !76, i64 1144, !2, i64 1728, !8, i64 1736, !2, i64 1744, !2, i64 1752, !8, i64 1760, !2, i64 1768, !8, i64 1776, !3, i64 1780, !10, i64 2548, !2, i64 2576, !84, i64 2584, !85, i64 2600, !86, i64 2624, !87, i64 2656, !88, i64 2680, !89, i64 2720, !90, i64 2736, !8, i64 2744, !8, i64 2748, !8, i64 2752, !8, i64 2756, !8, i64 2760, !7, i64 2768, !2, i64 2776, !8, i64 2784, !8, i64 2788}
!84 = !{!"gs_const_string_s", !2, i64 0, !8, i64 8}
!85 = !{!"_c24", !7, i64 0, !8, i64 8, !8, i64 12, !8, i64 16}
!86 = !{!"_c40", !7, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24}
!87 = !{!"_c48", !7, i64 0, !8, i64 8, !8, i64 12, !8, i64 16}
!88 = !{!"_c56", !7, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32}
!89 = !{!"_c64", !7, i64 0, !8, i64 8, !8, i64 12}
!90 = !{!"gs_log2_scale_point_s", !8, i64 0, !8, i64 4}
!91 = !{!6, !3, i64 1269}
!92 = !{!66, !8, i64 832}
!93 = !{!66, !8, i64 836}
!94 = !{!83, !2, i64 2576}
!95 = !{!3, !3, i64 0}
!96 = !{!6, !8, i64 1520}
!97 = !{!6, !8, i64 1524}
!98 = !{!6, !11, i64 1128}
!99 = !{!19, !8, i64 0}
!100 = !{!19, !8, i64 4}
!101 = !{!19, !8, i64 8}
!102 = !{!19, !8, i64 12}
!103 = !{!19, !8, i64 16}
!104 = !{i64 0, i64 4, !29, i64 4, i64 4, !29, i64 8, i64 4, !29}
!105 = !{!21, !8, i64 4}
!106 = !{!21, !8, i64 8}
!107 = !{!21, !8, i64 0}
!108 = !{!80, !2, i64 40}
!109 = !{!80, !2, i64 48}
